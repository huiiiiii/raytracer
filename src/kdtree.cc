#include "kdtree.h"

BoundingBox::BoundingBox() { }

BoundingBox::BoundingBox(Vector<FLOAT,3> min, Vector<FLOAT,3> max) 
 : min(min), max(max) { }

 //Die Bounding-box wird entlang der längsten Achse in der Mitte in eine ”linke” und ”rechte” Bounding-box aufgeteilt.
void BoundingBox::split(BoundingBox & left, BoundingBox & right) {
    Vector<FLOAT,3> div = max - min;
    Vector<FLOAT,3> leftMax;
    Vector<FLOAT,3> rightMin;
    if (div[0] >= div[1] && div [0] >= div[2]) {
        FLOAT x = min[0] + 0.5 * div[0];
        leftMax = {x, max[1], max[2]};
        rightMin = {x, min[1], min[2]};
    } else if (div[1] >= div[2]) {
        FLOAT y = min[1] + 0.5 * div[1];
        leftMax = {max[0], y, max[2]};
        rightMin = {min[0], y, min[2]};
    } else {
        FLOAT z = min[2] + 0.5 * div[2];
        leftMax = {max[0], max[1], z};
        rightMin = {min[0], min[1], z};
    }
    left = *new BoundingBox(min, leftMax);
    right = *new BoundingBox(rightMin, max);
}

bool BoundingBox::contains(Vector<FLOAT, 3> v) {
    for (unsigned int i = 0; i < 3; i++) {
        if (min[i] > v[i] || v[i] > max[i]) {
            return false;
        }
    }
    return true;
}

bool BoundingBox::contains(Triangle<FLOAT> *triangle) {
    return contains(triangle->p1) || contains(triangle->p2) || contains(triangle->p3);
}

bool BoundingBox::intersects(Vector<FLOAT,3> eye, Vector<FLOAT, 3> direction) {
    // slab test implementation
    FLOAT tmin[3] = { (min[0] - eye[0]) / direction[0],
                      (min[1] - eye[1]) / direction[1],
                      (min[2] - eye[2]) / direction[2] };
    FLOAT tmax[3] = { (max[0] - eye[0]) / direction[0],
                      (max[1] - eye[1]) / direction[1],
                      (max[2] - eye[2]) / direction[2] };
    FLOAT tminimum = std::min(tmin[0], tmax[0]);
    FLOAT tmaximum = std::max(tmin[0], tmax[0]);
    tminimum = std::max(tminimum, std::min(tmin[1], tmax[1]) );
    tmaximum = std::min(tmaximum, std::max(tmin[1], tmax[1]) );
    tminimum = std::max(tminimum, std::min(tmin[2], tmax[2]) );
    tmaximum = std::min(tmaximum, std::max(tmin[2], tmax[2]) );

    return tmaximum >= tminimum;
}


KDTree::~KDTree() {
  delete left;
  delete right;
}

KDTree * KDTree::buildTree(KDTree * tree, std::vector< Triangle<FLOAT> *> & triangles) {
    if (triangles.size() <= MAX_TRIANGLES_PER_LEAF) {
        this->triangles = triangles;
        return tree;
    }
    left = new KDTree();
    right = new KDTree();
    BoundingBox *leftBox = new BoundingBox();
    BoundingBox *rightBox = new BoundingBox();
    box.split(*leftBox, *rightBox);
    left->box = *leftBox;
    right->box = *rightBox;
    std::vector< Triangle<FLOAT> *> leftTriangles;
    std::vector< Triangle<FLOAT> *> rightTriangles;
    for (unsigned int i = 0; i < triangles.size(); i++) {
        Triangle<FLOAT> *triangle = triangles[i];
        if (leftBox->contains(triangle)) {
            if (rightBox->contains(triangle)) {
                this->triangles.push_back( triangle );
            } else {
                leftTriangles.push_back( triangle );
            }
        } else {
            rightTriangles.push_back( triangle );
        }
    }
    left->buildTree(left, leftTriangles);
    right->buildTree(right, rightTriangles);
    return tree;
}

KDTree *  KDTree::buildTree(std::vector< Triangle<FLOAT> *> & triangles)  {
    KDTree * root = new KDTree();
    Triangle<FLOAT> *triangle = triangles[0];
    Vector<FLOAT,3> min = triangle->p1;
    Vector<FLOAT,3> max = triangle->p1;
    for (unsigned int i = 0; i < triangles.size(); i++) {
        triangle = triangles[i];
        for (unsigned int x = 0; x < 3; x++) {
            //(b < a && b < c) ? b : ((a < c) ? a : c)
            FLOAT minTPoint = (triangle->p1[x] < triangle->p2[x] && triangle->p1[x] < triangle->p3[x]) ? triangle->p1[x] : ((triangle->p2[x] < triangle->p3[x]) ? triangle->p2[x] : triangle->p3[x]);
            min[x] = (min[x] < minTPoint) ? min[x] : minTPoint;
            FLOAT maxTPoint = (triangle->p1[x] > triangle->p2[x] && triangle->p1[x] > triangle->p3[x]) ? triangle->p1[x] : ((triangle->p2[x] > triangle->p3[x]) ? triangle->p2[x] : triangle->p3[x]);
            max[x] = (max[x] > maxTPoint) ? max[x] : maxTPoint;
        }
    }
    root->box = *new BoundingBox(min, max);;
    return root->buildTree(root, triangles);
}

bool KDTree::hasNearestTriangle(Vector<FLOAT,3> eye, Vector<FLOAT,3> direction, Triangle<FLOAT> *  & nearest_triangle, FLOAT &t, FLOAT &u, FLOAT &v, FLOAT minimum_t) {
    if (!box.intersects(eye, direction)) {
        return false;
    }
    FLOAT minimum_u  = u, minimum_v = v;
    if (left != nullptr) {
        bool intersect = left->hasNearestTriangle(eye, direction, nearest_triangle, t, u, v, minimum_t);
        if (intersect) {
            if ( (nearest_triangle == nullptr)  || (t < minimum_t) ) {
                minimum_t = t;
                minimum_u = u;
                minimum_v = v;
            }
        }
    }
    if (right != nullptr) {
        bool intersect = right->hasNearestTriangle(eye, direction, nearest_triangle, t, u, v, minimum_t);
        if (intersect) {
            if ( (nearest_triangle == nullptr)  || (t < minimum_t) ) {
                minimum_t = t;
                minimum_u = u;
                minimum_v = v;
            }
        }
    }
    for (unsigned int i = 0; i < triangles.size(); i++) {
        Triangle<FLOAT> *triangle = triangles[i];
        //std::cerr << "hasNearestTriangle: " << triangle->p1 << " min t: " << minimum_t << std::endl;
        stats.no_ray_triangle_intersection_tests++;
        bool intersect = triangle->intersects(eye, direction, t, u, v, minimum_t);
        if (intersect) {
            stats.no_ray_triangle_intersections_found++;
            if ( (nearest_triangle == nullptr)  || (t < minimum_t) ) {
                nearest_triangle = triangle;
                minimum_t = t;
                minimum_u = u;
                minimum_v = v;
            }
        }
    }
    t = minimum_t;
    u = minimum_u;
    v = minimum_v;
    return nearest_triangle != nullptr;
}
