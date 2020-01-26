g++ -Wall -pedantic -march=native -mfpmath=sse -mavx -O3 raytracer.cc statistics.cc
g++ -Wall -pedantic -march=native -mfpmath=sse -mavx -O3 -D OPTIMIZED_INTERSECTS raytracer.cc statistics.cc
a.exe --no_ppm


Assembler:
g++ -Wall -pedantic -march=native -mfpmath=sse -mavx -O3 -D OPTIMIZED_INTERSECTS -c -g raytracer.cc statistics.cc
objdump -S raytracer.o > raytracer.s


Zeitmessung Aufgabe 1
ohne Optimierung:
 8.21939
 8.09439
 8.21939
 8.07875
 8.17247
 8.04746
 8.09433
 8.07870
 8.14120
 8.06309

Durchschnitt: 8.120917

mit Optimierung
 6.87551
 6.90676
 6.96924
 6.87547
 6.87547
 6.92238
 6.84424
 6.90674
 6.84424
 6.89112

Durchschnitt: 6.891117

Differenz: 1.229800