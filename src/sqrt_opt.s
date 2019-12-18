
sqrt_opt.o:     file format pe-x86-64


Disassembly of section .text:

0000000000000000 <_Z13random_doublev>:
#include <random>
#include "measure_time.h"
#include "sqrt_opt.h"

double random_double()
{
   0:	53                   	push   %rbx
   1:	48 83 ec 50          	sub    $0x50,%rsp
   5:	c5 f8 29 74 24 30    	vmovaps %xmm6,0x30(%rsp)
   b:	c5 f8 29 7c 24 40    	vmovaps %xmm7,0x40(%rsp)
  static std::random_device device;
  11:	0f b6 05 20 00 00 00 	movzbl 0x20(%rip),%eax        # 38 <_Z13random_doublev+0x38>
  18:	84 c0                	test   %al,%al
  1a:	75 14                	jne    30 <_Z13random_doublev+0x30>
  1c:	48 8d 0d 20 00 00 00 	lea    0x20(%rip),%rcx        # 43 <_Z13random_doublev+0x43>
  23:	e8 00 00 00 00       	callq  28 <_Z13random_doublev+0x28>
  28:	85 c0                	test   %eax,%eax
  2a:	0f 85 d0 00 00 00    	jne    100 <_Z13random_doublev+0x100>
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
  30:	0f b6 05 00 00 00 00 	movzbl 0x0(%rip),%eax        # 37 <_Z13random_doublev+0x37>
  37:	84 c0                	test   %al,%al
  39:	0f 84 84 00 00 00    	je     c3 <_Z13random_doublev+0xc3>

    result_type
    operator()()
    {
#ifdef _GLIBCXX_USE_RANDOM_TR1
      return this->_M_getval();
  3f:	48 8d 0d 40 00 00 00 	lea    0x40(%rip),%rcx        # 86 <_Z13random_doublev+0x86>
  46:	e8 00 00 00 00       	callq  4b <_Z13random_doublev+0x4b>
      _RealType __ret;
      _RealType __sum = _RealType(0);
      _RealType __tmp = _RealType(1);
      for (size_t __k = __m; __k != 0; --__k)
	{
	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
  4b:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
  4f:	89 c0                	mov    %eax,%eax
  51:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  55:	48 8d 0d 40 00 00 00 	lea    0x40(%rip),%rcx        # 9c <_Z13random_doublev+0x9c>
  5c:	c4 e1 f3 2a c8       	vcvtsi2sd %rax,%xmm1,%xmm1
  61:	c5 f3 58 f7          	vaddsd %xmm7,%xmm1,%xmm6
  65:	e8 00 00 00 00       	callq  6a <_Z13random_doublev+0x6a>
  6a:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  6e:	89 c0                	mov    %eax,%eax
	  __tmp *= __r;
	}
      __ret = __sum / __tmp;
      if (__builtin_expect(__ret >= _RealType(1), 0))
  70:	c5 fb 10 05 60 01 00 	vmovsd 0x160(%rip),%xmm0        # 1d8 <_Z13random_doublev+0x1d8>
  77:	00 
	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
  78:	c4 e1 f3 2a c8       	vcvtsi2sd %rax,%xmm1,%xmm1
  7d:	c4 e2 c9 99 0d 50 01 	vfmadd132sd 0x150(%rip),%xmm6,%xmm1        # 1d6 <_Z13random_doublev+0x1d6>
  84:	00 00 
      __ret = __sum / __tmp;
  86:	c5 f3 59 0d 58 01 00 	vmulsd 0x158(%rip),%xmm1,%xmm1        # 1e6 <_Z13random_doublev+0x1e6>
  8d:	00 
      if (__builtin_expect(__ret >= _RealType(1), 0))
  8e:	c5 f9 2e c8          	vucomisd %xmm0,%xmm1
  92:	0f 83 ed 00 00 00    	jae    185 <_Z13random_doublev+0x185>
	operator()(_UniformRandomNumberGenerator& __urng,
		   const param_type& __p)
	{
	  __detail::_Adaptor<_UniformRandomNumberGenerator, result_type>
	    __aurng(__urng);
	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
  98:	c5 fb 10 15 10 00 00 	vmovsd 0x10(%rip),%xmm2        # b0 <_Z13random_doublev+0xb0>
  9f:	00 
  a0:	c5 fb 10 05 18 00 00 	vmovsd 0x18(%rip),%xmm0        # c0 <_Z13random_doublev+0xc0>
  a7:	00 
  return dist(device);
}
  a8:	c5 f8 28 74 24 30    	vmovaps 0x30(%rsp),%xmm6
  ae:	c5 fb 5c c2          	vsubsd %xmm2,%xmm0,%xmm0
  b2:	c5 f8 28 7c 24 40    	vmovaps 0x40(%rsp),%xmm7
  b8:	c4 e2 e9 99 c1       	vfmadd132sd %xmm1,%xmm2,%xmm0
  bd:	48 83 c4 50          	add    $0x50,%rsp
  c1:	5b                   	pop    %rbx
  c2:	c3                   	retq   
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
  c3:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # ca <_Z13random_doublev+0xca>
  ca:	e8 00 00 00 00       	callq  cf <_Z13random_doublev+0xcf>
  cf:	85 c0                	test   %eax,%eax
  d1:	0f 84 68 ff ff ff    	je     3f <_Z13random_doublev+0x3f>
	: _M_a(__a), _M_b(__b)
  d7:	c5 f9 28 05 40 01 00 	vmovapd 0x140(%rip),%xmm0        # 21f <_ZZ13random_doublevE6device+0x1df>
  de:	00 
  df:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # e6 <_Z13random_doublev+0xe6>
  e6:	c5 f8 29 05 10 00 00 	vmovaps %xmm0,0x10(%rip)        # fe <_Z13random_doublev+0xfe>
  ed:	00 
  ee:	e8 00 00 00 00       	callq  f3 <_Z13random_doublev+0xf3>
  f3:	e9 47 ff ff ff       	jmpq   3f <_Z13random_doublev+0x3f>
  f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  ff:	00 
  static std::random_device device;
 100:	48 8d 5c 24 28       	lea    0x28(%rsp),%rbx
 105:	4c 8d 44 24 26       	lea    0x26(%rsp),%r8
 10a:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 111 <_Z13random_doublev+0x111>
 111:	48 89 d9             	mov    %rbx,%rcx
 114:	e8 00 00 00 00       	callq  119 <_Z13random_doublev+0x119>
      _M_init(__token);
 119:	48 8d 0d 40 00 00 00 	lea    0x40(%rip),%rcx        # 160 <_Z13random_doublev+0x160>
 120:	48 89 da             	mov    %rbx,%rdx
 123:	e8 00 00 00 00       	callq  128 <_Z13random_doublev+0x128>
 128:	48 8d 0d 20 00 00 00 	lea    0x20(%rip),%rcx        # 14f <_Z13random_doublev+0x14f>
 12f:	e8 00 00 00 00       	callq  134 <_Z13random_doublev+0x134>
 134:	4c 8b 05 00 00 00 00 	mov    0x0(%rip),%r8        # 13b <_Z13random_doublev+0x13b>
 13b:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 142 <_Z13random_doublev+0x142>
 142:	48 8d 15 40 00 00 00 	lea    0x40(%rip),%rdx        # 189 <_Z13random_doublev+0x189>
 149:	e8 00 00 00 00       	callq  14e <_Z13random_doublev+0x14e>
      // Data Members (private):
      mutable _Alloc_hider	_M_dataplus;

      _CharT*
      _M_data() const _GLIBCXX_NOEXCEPT
      { return  _M_dataplus._M_p; }
 14e:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
      _M_data(_CharT* __p) _GLIBCXX_NOEXCEPT
      { return (_M_dataplus._M_p = __p); }

      _Rep*
      _M_rep() const _GLIBCXX_NOEXCEPT
      { return &((reinterpret_cast<_Rep*> (_M_data()))[-1]); }
 153:	48 8d 48 e8          	lea    -0x18(%rax),%rcx
	  if (__builtin_expect(this != &_S_empty_rep(), false))
 157:	48 3b 0d 00 00 00 00 	cmp    0x0(%rip),%rcx        # 15e <_Z13random_doublev+0x15e>
 15e:	0f 84 cc fe ff ff    	je     30 <_Z13random_doublev+0x30>
  // __exchange_and_add_dispatch
  // __atomic_add_dispatch
#ifdef _GLIBCXX_ATOMIC_BUILTINS
  static inline _Atomic_word 
  __exchange_and_add(volatile _Atomic_word* __mem, int __val)
  { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
 164:	ba ff ff ff ff       	mov    $0xffffffff,%edx
 169:	f0 0f c1 50 f8       	lock xadd %edx,-0x8(%rax)
	      if (__gnu_cxx::__exchange_and_add_dispatch(&this->_M_refcount,
 16e:	85 d2                	test   %edx,%edx
 170:	0f 8f ba fe ff ff    	jg     30 <_Z13random_doublev+0x30>
		  _M_destroy(__a);
 176:	48 8d 54 24 27       	lea    0x27(%rsp),%rdx
 17b:	e8 00 00 00 00       	callq  180 <_Z13random_doublev+0x180>
 180:	e9 ab fe ff ff       	jmpq   30 <_Z13random_doublev+0x30>
	{
#if _GLIBCXX_USE_C99_MATH_TR1
	  __ret = std::nextafter(_RealType(1), _RealType(0));
 185:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
 189:	e8 00 00 00 00       	callq  18e <_Z13random_doublev+0x18e>
 18e:	c5 f9 28 c8          	vmovapd %xmm0,%xmm1
 192:	e9 01 ff ff ff       	jmpq   98 <_Z13random_doublev+0x98>
 197:	48 89 c3             	mov    %rax,%rbx
      { return  _M_dataplus._M_p; }
 19a:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
      { return &((reinterpret_cast<_Rep*> (_M_data()))[-1]); }
 19f:	48 8d 48 e8          	lea    -0x18(%rax),%rcx
	  if (__builtin_expect(this != &_S_empty_rep(), false))
 1a3:	48 3b 0d 00 00 00 00 	cmp    0x0(%rip),%rcx        # 1aa <_Z13random_doublev+0x1aa>
 1aa:	75 1f                	jne    1cb <_Z13random_doublev+0x1cb>
 1ac:	c5 f8 77             	vzeroupper 
 1af:	48 8d 0d 20 00 00 00 	lea    0x20(%rip),%rcx        # 1d6 <_Z13random_doublev+0x1d6>
 1b6:	e8 00 00 00 00       	callq  1bb <_Z13random_doublev+0x1bb>
 1bb:	48 89 d9             	mov    %rbx,%rcx
 1be:	e8 00 00 00 00       	callq  1c3 <_Z13random_doublev+0x1c3>
 1c3:	48 89 c3             	mov    %rax,%rbx
 1c6:	c5 f8 77             	vzeroupper 
 1c9:	eb e4                	jmp    1af <_Z13random_doublev+0x1af>
 1cb:	83 ca ff             	or     $0xffffffff,%edx
 1ce:	f0 0f c1 50 f8       	lock xadd %edx,-0x8(%rax)
	      if (__gnu_cxx::__exchange_and_add_dispatch(&this->_M_refcount,
 1d3:	85 d2                	test   %edx,%edx
 1d5:	7f d5                	jg     1ac <_Z13random_doublev+0x1ac>
		  _M_destroy(__a);
 1d7:	48 8d 54 24 27       	lea    0x27(%rsp),%rdx
 1dc:	c5 f8 77             	vzeroupper 
 1df:	e8 00 00 00 00       	callq  1e4 <_Z13random_doublev+0x1e4>
 1e4:	eb c9                	jmp    1af <_Z13random_doublev+0x1af>
 1e6:	90                   	nop
 1e7:	90                   	nop
 1e8:	90                   	nop
 1e9:	90                   	nop
 1ea:	90                   	nop
 1eb:	90                   	nop
 1ec:	90                   	nop
 1ed:	90                   	nop
 1ee:	90                   	nop
 1ef:	90                   	nop

Disassembly of section .text$_ZNKSt5ctypeIcE8do_widenEc:

0000000000000000 <_ZNKSt5ctypeIcE8do_widenEc>:
       *  @param __c  The char to convert.
       *  @return  The converted character.
      */
      virtual char_type
      do_widen(char __c) const
      { return __c; }
   0:	89 d0                	mov    %edx,%eax
   2:	c3                   	retq   
	this->_M_widen_init();
   3:	90                   	nop
   4:	90                   	nop
   5:	90                   	nop
   6:	90                   	nop
   7:	90                   	nop
   8:	90                   	nop
   9:	90                   	nop
   a:	90                   	nop
   b:	90                   	nop
   c:	90                   	nop
   d:	90                   	nop
   e:	90                   	nop
   f:	90                   	nop

Disassembly of section .text$_ZNSt13random_deviceD1Ev:

0000000000000000 <_ZNSt13random_deviceD1Ev>:
    { _M_fini(); }
   0:	e9 00 00 00 00       	jmpq   5 <_ZNSt13random_deviceD1Ev+0x5>
	return this->do_widen(__c);
   5:	90                   	nop
   6:	90                   	nop
   7:	90                   	nop
   8:	90                   	nop
   9:	90                   	nop
   a:	90                   	nop
   b:	90                   	nop
   c:	90                   	nop
   d:	90                   	nop
   e:	90                   	nop
   f:	90                   	nop

Disassembly of section .text$_Z17measure_sqrt_timeILm2EEvv:

0000000000000000 <_Z17measure_sqrt_timeILm2EEvv>:

template <size_t LOOPS = 2>
void measure_sqrt_time(void) {
       0:	41 57                	push   %r15
       2:	41 56                	push   %r14
       4:	b8 d8 6a 18 00       	mov    $0x186ad8,%eax
       9:	41 55                	push   %r13
       b:	41 54                	push   %r12
       d:	55                   	push   %rbp
       e:	57                   	push   %rdi
       f:	56                   	push   %rsi
      10:	53                   	push   %rbx
      11:	e8 00 00 00 00       	callq  16 <_Z17measure_sqrt_timeILm2EEvv+0x16>
      16:	48 29 c4             	sub    %rax,%rsp
      19:	c5 f8 29 b4 24 80 6a 	vmovaps %xmm6,0x186a80(%rsp)
      20:	18 00 
      22:	c5 f8 29 bc 24 90 6a 	vmovaps %xmm7,0x186a90(%rsp)
      29:	18 00 
      2b:	c5 78 29 84 24 a0 6a 	vmovaps %xmm8,0x186aa0(%rsp)
      32:	18 00 
      34:	c5 78 29 8c 24 b0 6a 	vmovaps %xmm9,0x186ab0(%rsp)
      3b:	18 00 
      3d:	c5 78 29 94 24 c0 6a 	vmovaps %xmm10,0x186ac0(%rsp)
      44:	18 00 
      operator<<(long __n)
      { return _M_insert(__n); }

      __ostream_type&
      operator<<(unsigned long __n)
      { return _M_insert(__n); }
      46:	ba 02 00 00 00       	mov    $0x2,%edx
      4b:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 52 <_Z17measure_sqrt_timeILm2EEvv+0x52>
      52:	e8 00 00 00 00       	callq  57 <_Z17measure_sqrt_timeILm2EEvv+0x57>
    operator<<(basic_ostream<char, _Traits>& __out, const char* __s)
    {
      if (!__s)
	__out.setstate(ios_base::badbit);
      else
	__ostream_insert(__out, __s,
      57:	48 8d 15 08 00 00 00 	lea    0x8(%rip),%rdx        # 66 <_Z17measure_sqrt_timeILm2EEvv+0x66>
      { return _M_insert(__n); }
      5e:	48 89 c6             	mov    %rax,%rsi
	__ostream_insert(__out, __s,
      61:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
      67:	48 89 c1             	mov    %rax,%rcx
      6a:	e8 00 00 00 00       	callq  6f <_Z17measure_sqrt_timeILm2EEvv+0x6f>
   *  for more on this subject.
  */
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    endl(basic_ostream<_CharT, _Traits>& __os)
    { return flush(__os.put(__os.widen('\n'))); }
      6f:	48 8b 06             	mov    (%rsi),%rax
       *  Additional l10n notes are at
       *  http://gcc.gnu.org/onlinedocs/libstdc++/manual/localization.html
      */
      char_type
      widen(char __c) const
      { return __check_facet(_M_ctype).widen(__c); }
      72:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      76:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
      7d:	00 
      if (!__f)
      7e:	48 85 db             	test   %rbx,%rbx
      81:	0f 84 ea 01 00 00    	je     271 <_Z17measure_sqrt_timeILm2EEvv+0x271>
	if (_M_widen_ok)
      87:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
      8b:	0f 84 64 11 00 00    	je     11f5 <_Z17measure_sqrt_timeILm2EEvv+0x11f5>
      91:	0f be 53 43          	movsbl 0x43(%rbx),%edx
      95:	48 89 f1             	mov    %rsi,%rcx
      98:	e8 00 00 00 00       	callq  9d <_Z17measure_sqrt_timeILm2EEvv+0x9d>
   *  This manipulator simply calls the stream's @c flush() member function.
  */
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    flush(basic_ostream<_CharT, _Traits>& __os)
    { return __os.flush(); }
      9d:	48 89 c1             	mov    %rax,%rcx
      a0:	e8 00 00 00 00       	callq  a5 <_Z17measure_sqrt_timeILm2EEvv+0xa5>
	__ostream_insert(__out, __s,
      a5:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # ac <_Z17measure_sqrt_timeILm2EEvv+0xac>
      ac:	48 8d 15 14 00 00 00 	lea    0x14(%rip),%rdx        # c7 <_Z17measure_sqrt_timeILm2EEvv+0xc7>
      b3:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
      b9:	e8 00 00 00 00       	callq  be <_Z17measure_sqrt_timeILm2EEvv+0xbe>
    MeasureTime<std::chrono::nanoseconds> time;
    alignas(128) float floats[N * 4];
    alignas(128) float roots[N * 4];

    std::cout << LOOPS  << " iterations" << std::endl;
    std::cout << "generating " << (4 * N) << " random values..." << std::endl;
      be:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # c5 <_Z17measure_sqrt_timeILm2EEvv+0xc5>
      c5:	ba 40 0d 03 00       	mov    $0x30d40,%edx
      ca:	e8 00 00 00 00       	callq  cf <_Z17measure_sqrt_timeILm2EEvv+0xcf>
      cf:	48 8d 15 20 00 00 00 	lea    0x20(%rip),%rdx        # f6 <_Z17measure_sqrt_timeILm2EEvv+0xf6>
      d6:	48 89 c6             	mov    %rax,%rsi
      d9:	41 b8 11 00 00 00    	mov    $0x11,%r8d
      df:	48 89 c1             	mov    %rax,%rcx
      e2:	e8 00 00 00 00       	callq  e7 <_Z17measure_sqrt_timeILm2EEvv+0xe7>
    { return flush(__os.put(__os.widen('\n'))); }
      e7:	48 8b 06             	mov    (%rsi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
      ea:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      ee:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
      f5:	00 
      if (!__f)
      f6:	48 85 db             	test   %rbx,%rbx
      f9:	0f 84 72 01 00 00    	je     271 <_Z17measure_sqrt_timeILm2EEvv+0x271>
      ff:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     103:	0f 84 bb 10 00 00    	je     11c4 <_Z17measure_sqrt_timeILm2EEvv+0x11c4>
     109:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     10d:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
     114:	00 
     115:	48 89 f1             	mov    %rsi,%rcx
     118:	e8 00 00 00 00       	callq  11d <_Z17measure_sqrt_timeILm2EEvv+0x11d>
     11d:	48 8d 9d 00 35 0c 00 	lea    0xc3500(%rbp),%rbx
    { return __os.flush(); }
     124:	48 89 c1             	mov    %rax,%rcx
     127:	48 89 ef             	mov    %rbp,%rdi
     12a:	e8 00 00 00 00       	callq  12f <_Z17measure_sqrt_timeILm2EEvv+0x12f>
    for (int i = 0; i < 4 * N; i++) {
       floats[i] = random_double();
     12f:	e8 00 00 00 00       	callq  134 <_Z17measure_sqrt_timeILm2EEvv+0x134>
     134:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
     138:	48 83 c7 04          	add    $0x4,%rdi
     13c:	c5 d3 5a e8          	vcvtsd2ss %xmm0,%xmm5,%xmm5
     140:	c5 fa 11 6f fc       	vmovss %xmm5,-0x4(%rdi)
    for (int i = 0; i < 4 * N; i++) {
     145:	48 39 fb             	cmp    %rdi,%rbx
     148:	75 e5                	jne    12f <_Z17measure_sqrt_timeILm2EEvv+0x12f>
	__ostream_insert(__out, __s,
     14a:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 151 <_Z17measure_sqrt_timeILm2EEvv+0x151>
     151:	48 8d 15 32 00 00 00 	lea    0x32(%rip),%rdx        # 18a <_Z17measure_sqrt_timeILm2EEvv+0x18a>
     158:	41 b8 09 00 00 00    	mov    $0x9,%r8d
     15e:	e8 00 00 00 00       	callq  163 <_Z17measure_sqrt_timeILm2EEvv+0x163>
    { return flush(__os.put(__os.widen('\n'))); }
     163:	4c 8b 25 00 00 00 00 	mov    0x0(%rip),%r12        # 16a <_Z17measure_sqrt_timeILm2EEvv+0x16a>
     16a:	49 8b 04 24          	mov    (%r12),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     16e:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     172:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
     179:	00 
      if (!__f)
     17a:	48 85 db             	test   %rbx,%rbx
     17d:	0f 84 ee 00 00 00    	je     271 <_Z17measure_sqrt_timeILm2EEvv+0x271>
     183:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     187:	0f 84 99 10 00 00    	je     1226 <_Z17measure_sqrt_timeILm2EEvv+0x1226>
     18d:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     191:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 198 <_Z17measure_sqrt_timeILm2EEvv+0x198>
     198:	4c 8d ac 24 80 35 0c 	lea    0xc3580(%rsp),%r13
     19f:	00 
   DURATION time = DURATION(0);
   bool stopped = true;
public:
   void start_clock() {
     if (stopped) {
       start = steady_clock::now();
     1a0:	41 bf e8 03 00 00    	mov    $0x3e8,%r15d
     1a6:	e8 00 00 00 00       	callq  1ab <_Z17measure_sqrt_timeILm2EEvv+0x1ab>
    { return __os.flush(); }
     1ab:	48 89 c1             	mov    %rax,%rcx
     1ae:	e8 00 00 00 00       	callq  1b3 <_Z17measure_sqrt_timeILm2EEvv+0x1b3>
     1b3:	e8 00 00 00 00       	callq  1b8 <_Z17measure_sqrt_timeILm2EEvv+0x1b8>
     1b8:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
     1bc:	49 89 c6             	mov    %rax,%r14
     1bf:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
     1c4:	4c 89 ee             	mov    %r13,%rsi
     1c7:	48 89 eb             	mov    %rbp,%rbx
     1ca:	e9 82 00 00 00       	jmpq   251 <_Z17measure_sqrt_timeILm2EEvv+0x251>
     1cf:	90                   	nop
    std::cout << "math sqrt" << std::endl;
    time.start_clock();
    for (int j = 0; j < LOOP; j++) {
      for (int i = 0; i < 4 * N; i += 4) {
        for (int k = 0; k < 4; k++) {
          roots[i + k] = sqrt(floats[i + k]);
     1d0:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     1d4:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
     1d8:	c5 fa 5a 43 04       	vcvtss2sd 0x4(%rbx),%xmm0,%xmm0
     1dd:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
     1e1:	c5 fa 11 1e          	vmovss %xmm3,(%rsi)
     1e5:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     1e9:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     1ed:	0f 87 c7 0f 00 00    	ja     11ba <_Z17measure_sqrt_timeILm2EEvv+0x11ba>
     1f3:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     1f7:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
     1fb:	c5 fa 5a 43 08       	vcvtss2sd 0x8(%rbx),%xmm0,%xmm0
     200:	c5 eb 5a d7          	vcvtsd2ss %xmm7,%xmm2,%xmm2
     204:	c5 fa 11 56 04       	vmovss %xmm2,0x4(%rsi)
     209:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     20d:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     211:	0f 87 99 0f 00 00    	ja     11b0 <_Z17measure_sqrt_timeILm2EEvv+0x11b0>
     217:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     21b:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
     21f:	c5 fa 5a 43 0c       	vcvtss2sd 0xc(%rbx),%xmm0,%xmm0
     224:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
     228:	c5 fa 11 5e 08       	vmovss %xmm3,0x8(%rsi)
     22d:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     231:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     235:	77 49                	ja     280 <_Z17measure_sqrt_timeILm2EEvv+0x280>
     237:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
     23b:	48 83 c3 10          	add    $0x10,%rbx
     23f:	48 83 c6 10          	add    $0x10,%rsi
     243:	c5 eb 5a d7          	vcvtsd2ss %xmm7,%xmm2,%xmm2
     247:	c5 fa 11 56 fc       	vmovss %xmm2,-0x4(%rsi)
      for (int i = 0; i < 4 * N; i += 4) {
     24c:	48 39 fb             	cmp    %rdi,%rbx
     24f:	74 4e                	je     29f <_Z17measure_sqrt_timeILm2EEvv+0x29f>
          roots[i + k] = sqrt(floats[i + k]);
     251:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     255:	c5 fa 5a 03          	vcvtss2sd (%rbx),%xmm0,%xmm0
     259:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     25d:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     261:	0f 86 69 ff ff ff    	jbe    1d0 <_Z17measure_sqrt_timeILm2EEvv+0x1d0>
     267:	e8 00 00 00 00       	callq  26c <_Z17measure_sqrt_timeILm2EEvv+0x26c>
     26c:	e9 5f ff ff ff       	jmpq   1d0 <_Z17measure_sqrt_timeILm2EEvv+0x1d0>
	__throw_bad_cast();
     271:	e8 00 00 00 00       	callq  276 <_Z17measure_sqrt_timeILm2EEvv+0x276>
     276:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     27d:	00 00 00 
     280:	e8 00 00 00 00       	callq  285 <_Z17measure_sqrt_timeILm2EEvv+0x285>
     285:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
     289:	48 83 c3 10          	add    $0x10,%rbx
     28d:	48 83 c6 10          	add    $0x10,%rsi
     291:	c5 d3 5a ef          	vcvtsd2ss %xmm7,%xmm5,%xmm5
     295:	c5 fa 11 6e fc       	vmovss %xmm5,-0x4(%rsi)
      for (int i = 0; i < 4 * N; i += 4) {
     29a:	48 39 df             	cmp    %rbx,%rdi
     29d:	75 b2                	jne    251 <_Z17measure_sqrt_timeILm2EEvv+0x251>
    for (int j = 0; j < LOOP; j++) {
     29f:	41 83 ef 01          	sub    $0x1,%r15d
     2a3:	0f 85 1b ff ff ff    	jne    1c4 <_Z17measure_sqrt_timeILm2EEvv+0x1c4>
     }
   }

   void stop_clock() {
     if (! stopped) {
       end = steady_clock::now();
     2a9:	e8 00 00 00 00       	callq  2ae <_Z17measure_sqrt_timeILm2EEvv+0x2ae>
        }
      }    
    }
    time.stop_clock();
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
     2ae:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     2b5:	9b c4 20 
     2b8:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
		const duration<_Rep2, _Period2>& __rhs)
      {
	typedef duration<_Rep1, _Period1>			__dur1;
	typedef duration<_Rep2, _Period2>			__dur2;
	typedef typename common_type<__dur1,__dur2>::type	__cd;
	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
     2bd:	4c 29 f0             	sub    %r14,%rax
     2c0:	48 89 c1             	mov    %rax,%rcx
     2c3:	48 f7 ea             	imul   %rdx
     2c6:	48 c1 f9 3f          	sar    $0x3f,%rcx
     2ca:	48 c1 fa 07          	sar    $0x7,%rdx
     2ce:	48 29 ca             	sub    %rcx,%rdx
      { return _M_insert(__n); }
     2d1:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2d8 <_Z17measure_sqrt_timeILm2EEvv+0x2d8>
     2d8:	e8 00 00 00 00       	callq  2dd <_Z17measure_sqrt_timeILm2EEvv+0x2dd>
	__ostream_insert(__out, __s,
     2dd:	48 8d 15 3c 00 00 00 	lea    0x3c(%rip),%rdx        # 320 <_Z17measure_sqrt_timeILm2EEvv+0x320>
      { return _M_insert(__n); }
     2e4:	48 89 c6             	mov    %rax,%rsi
	__ostream_insert(__out, __s,
     2e7:	41 b8 05 00 00 00    	mov    $0x5,%r8d
     2ed:	48 89 c1             	mov    %rax,%rcx
     2f0:	e8 00 00 00 00       	callq  2f5 <_Z17measure_sqrt_timeILm2EEvv+0x2f5>
    { return flush(__os.put(__os.widen('\n'))); }
     2f5:	48 8b 06             	mov    (%rsi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     2f8:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     2fc:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
     303:	00 
      if (!__f)
     304:	48 85 db             	test   %rbx,%rbx
     307:	0f 84 64 ff ff ff    	je     271 <_Z17measure_sqrt_timeILm2EEvv+0x271>
     30d:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     311:	0f 84 31 12 00 00    	je     1548 <_Z17measure_sqrt_timeILm2EEvv+0x1548>
     317:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     31b:	48 89 f1             	mov    %rsi,%rcx
     31e:	e8 00 00 00 00       	callq  323 <_Z17measure_sqrt_timeILm2EEvv+0x323>
    { return __os.flush(); }
     323:	48 89 c1             	mov    %rax,%rcx
     326:	e8 00 00 00 00       	callq  32b <_Z17measure_sqrt_timeILm2EEvv+0x32b>
	__ostream_insert(__out, __s,
     32b:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 332 <_Z17measure_sqrt_timeILm2EEvv+0x332>
     332:	48 8d 15 48 00 00 00 	lea    0x48(%rip),%rdx        # 381 <_Z17measure_sqrt_timeILm2EEvv+0x381>
     339:	41 b8 37 00 00 00    	mov    $0x37,%r8d
     33f:	e8 00 00 00 00       	callq  344 <_Z17measure_sqrt_timeILm2EEvv+0x344>
    { return flush(__os.put(__os.widen('\n'))); }
     344:	49 8b 04 24          	mov    (%r12),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     348:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     34c:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
     353:	00 
      if (!__f)
     354:	48 85 db             	test   %rbx,%rbx
     357:	0f 84 14 ff ff ff    	je     271 <_Z17measure_sqrt_timeILm2EEvv+0x271>
     35d:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     361:	0f 84 b0 11 00 00    	je     1517 <_Z17measure_sqrt_timeILm2EEvv+0x1517>
     367:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     36b:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 372 <_Z17measure_sqrt_timeILm2EEvv+0x372>
     372:	e8 00 00 00 00       	callq  377 <_Z17measure_sqrt_timeILm2EEvv+0x377>
    { return __os.flush(); }
     377:	48 89 c1             	mov    %rax,%rcx
     37a:	e8 00 00 00 00       	callq  37f <_Z17measure_sqrt_timeILm2EEvv+0x37f>
       start = steady_clock::now();
     37f:	e8 00 00 00 00       	callq  384 <_Z17measure_sqrt_timeILm2EEvv+0x384>
     384:	48 89 e9             	mov    %rbp,%rcx
     387:	41 b9 40 0d 03 00    	mov    $0x30d40,%r9d
     38d:	c5 fd 6f 1d 80 01 00 	vmovdqa 0x180(%rip),%ymm3        # 515 <_Z17measure_sqrt_timeILm2EEvv+0x515>
     394:	00 
     395:	48 c1 e9 02          	shr    $0x2,%rcx
    // initial berechnen
    int * initial = reinterpret_cast<int *>( &root ) ;
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
    // Newton Verfahren durchfuehren
    for (unsigned int j = 0; j < LOOPS; j++) {
        root = 0.5 * ( root + (* a / root));
     399:	c5 fa 10 05 68 01 00 	vmovss 0x168(%rip),%xmm0        # 509 <_Z17measure_sqrt_timeILm2EEvv+0x509>
     3a0:	00 
     3a1:	48 f7 d9             	neg    %rcx
     3a4:	c5 fc 28 15 a0 01 00 	vmovaps 0x1a0(%rip),%ymm2        # 54c <_Z17measure_sqrt_timeILm2EEvv+0x54c>
     3ab:	00 
     3ac:	48 89 c3             	mov    %rax,%rbx
     3af:	83 e1 07             	and    $0x7,%ecx
     3b2:	c5 f8 28 c8          	vmovaps %xmm0,%xmm1
     3b6:	41 29 c9             	sub    %ecx,%r9d
     3b9:	41 89 c8             	mov    %ecx,%r8d
     3bc:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
     3c1:	49 c1 e0 02          	shl    $0x2,%r8
     3c5:	44 89 cf             	mov    %r9d,%edi
     3c8:	45 89 cb             	mov    %r9d,%r11d
     3cb:	4a 8d 74 05 00       	lea    0x0(%rbp,%r8,1),%rsi
     3d0:	c1 ef 03             	shr    $0x3,%edi
     3d3:	4d 01 e8             	add    %r13,%r8
     3d6:	41 83 e3 f8          	and    $0xfffffff8,%r11d
     3da:	41 ba e8 03 00 00    	mov    $0x3e8,%r10d
     3e0:	85 c9                	test   %ecx,%ecx
     3e2:	0f 84 23 11 00 00    	je     150b <_Z17measure_sqrt_timeILm2EEvv+0x150b>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     3e8:	ba 01 00 00 00       	mov    $0x1,%edx
     3ed:	c4 e2 6a f7 84 24 80 	sarx   %edx,0x80(%rsp),%eax
     3f4:	00 00 00 
     3f7:	c5 fa 10 a4 24 80 00 	vmovss 0x80(%rsp),%xmm4
     3fe:	00 00 
     400:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     405:	83 f9 01             	cmp    $0x1,%ecx
     408:	89 44 24 20          	mov    %eax,0x20(%rsp)
     40c:	c5 f9 6e 74 24 20    	vmovd  0x20(%rsp),%xmm6
        root = 0.5 * ( root + (* a / root));
     412:	c5 da 5e ee          	vdivss %xmm6,%xmm4,%xmm5
     416:	c5 d2 58 ee          	vaddss %xmm6,%xmm5,%xmm5
     41a:	c5 d2 59 e8          	vmulss %xmm0,%xmm5,%xmm5
     41e:	c5 da 5e e5          	vdivss %xmm5,%xmm4,%xmm4
     422:	c5 da 58 e5          	vaddss %xmm5,%xmm4,%xmm4
     426:	c5 da 59 e0          	vmulss %xmm0,%xmm4,%xmm4

    std::cout << "sqrt1 (Newton method for single float, one time a loop)" << std::endl;
    time.start_clock();
    for (int j = 0; j < LOOP; j++) {
      for (int i = 0; i < 4 * N; i++) {
        roots[i] = sqrt1<LOOPS>(floats + i);
     42a:	c5 fa 11 a4 24 80 35 	vmovss %xmm4,0xc3580(%rsp)
     431:	0c 00 
     433:	0f 84 c3 10 00 00    	je     14fc <_Z17measure_sqrt_timeILm2EEvv+0x14fc>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     439:	c4 e2 6a f7 84 24 84 	sarx   %edx,0x84(%rsp),%eax
     440:	00 00 00 
     443:	c5 fa 10 a4 24 84 00 	vmovss 0x84(%rsp),%xmm4
     44a:	00 00 
     44c:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     451:	83 f9 02             	cmp    $0x2,%ecx
     454:	89 44 24 20          	mov    %eax,0x20(%rsp)
     458:	c5 f9 6e 74 24 20    	vmovd  0x20(%rsp),%xmm6
        root = 0.5 * ( root + (* a / root));
     45e:	c5 da 5e ee          	vdivss %xmm6,%xmm4,%xmm5
     462:	c5 d2 58 ee          	vaddss %xmm6,%xmm5,%xmm5
     466:	c5 d2 59 e8          	vmulss %xmm0,%xmm5,%xmm5
     46a:	c5 da 5e e5          	vdivss %xmm5,%xmm4,%xmm4
     46e:	c5 da 58 e5          	vaddss %xmm5,%xmm4,%xmm4
     472:	c5 da 59 e0          	vmulss %xmm0,%xmm4,%xmm4
     476:	c5 fa 11 a4 24 84 35 	vmovss %xmm4,0xc3584(%rsp)
     47d:	0c 00 
     47f:	0f 84 68 10 00 00    	je     14ed <_Z17measure_sqrt_timeILm2EEvv+0x14ed>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     485:	c4 e2 6a f7 84 24 88 	sarx   %edx,0x88(%rsp),%eax
     48c:	00 00 00 
     48f:	c5 fa 10 a4 24 88 00 	vmovss 0x88(%rsp),%xmm4
     496:	00 00 
     498:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     49d:	83 f9 03             	cmp    $0x3,%ecx
     4a0:	89 44 24 20          	mov    %eax,0x20(%rsp)
     4a4:	c5 f9 6e 74 24 20    	vmovd  0x20(%rsp),%xmm6
        root = 0.5 * ( root + (* a / root));
     4aa:	c5 da 5e ee          	vdivss %xmm6,%xmm4,%xmm5
     4ae:	c5 d2 58 ee          	vaddss %xmm6,%xmm5,%xmm5
     4b2:	c5 d2 59 e8          	vmulss %xmm0,%xmm5,%xmm5
     4b6:	c5 da 5e e5          	vdivss %xmm5,%xmm4,%xmm4
     4ba:	c5 da 58 e5          	vaddss %xmm5,%xmm4,%xmm4
     4be:	c5 da 59 e0          	vmulss %xmm0,%xmm4,%xmm4
     4c2:	c5 fa 11 a4 24 88 35 	vmovss %xmm4,0xc3588(%rsp)
     4c9:	0c 00 
     4cb:	0f 84 0d 10 00 00    	je     14de <_Z17measure_sqrt_timeILm2EEvv+0x14de>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     4d1:	c4 e2 6a f7 84 24 8c 	sarx   %edx,0x8c(%rsp),%eax
     4d8:	00 00 00 
     4db:	c5 fa 10 a4 24 8c 00 	vmovss 0x8c(%rsp),%xmm4
     4e2:	00 00 
     4e4:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     4e9:	83 f9 04             	cmp    $0x4,%ecx
     4ec:	89 44 24 20          	mov    %eax,0x20(%rsp)
     4f0:	c5 f9 6e 74 24 20    	vmovd  0x20(%rsp),%xmm6
        root = 0.5 * ( root + (* a / root));
     4f6:	c5 da 5e ee          	vdivss %xmm6,%xmm4,%xmm5
     4fa:	c5 d2 58 ee          	vaddss %xmm6,%xmm5,%xmm5
     4fe:	c5 d2 59 e8          	vmulss %xmm0,%xmm5,%xmm5
     502:	c5 da 5e e5          	vdivss %xmm5,%xmm4,%xmm4
     506:	c5 da 58 e5          	vaddss %xmm5,%xmm4,%xmm4
     50a:	c5 da 59 e0          	vmulss %xmm0,%xmm4,%xmm4
     50e:	c5 fa 11 a4 24 8c 35 	vmovss %xmm4,0xc358c(%rsp)
     515:	0c 00 
     517:	0f 84 b2 0f 00 00    	je     14cf <_Z17measure_sqrt_timeILm2EEvv+0x14cf>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     51d:	c4 e2 6a f7 84 24 90 	sarx   %edx,0x90(%rsp),%eax
     524:	00 00 00 
     527:	c5 fa 10 a4 24 90 00 	vmovss 0x90(%rsp),%xmm4
     52e:	00 00 
     530:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     535:	83 f9 05             	cmp    $0x5,%ecx
     538:	89 44 24 20          	mov    %eax,0x20(%rsp)
     53c:	c5 f9 6e 74 24 20    	vmovd  0x20(%rsp),%xmm6
        root = 0.5 * ( root + (* a / root));
     542:	c5 da 5e ee          	vdivss %xmm6,%xmm4,%xmm5
     546:	c5 d2 58 ee          	vaddss %xmm6,%xmm5,%xmm5
     54a:	c5 d2 59 e8          	vmulss %xmm0,%xmm5,%xmm5
     54e:	c5 da 5e e5          	vdivss %xmm5,%xmm4,%xmm4
     552:	c5 da 58 e5          	vaddss %xmm5,%xmm4,%xmm4
     556:	c5 da 59 e0          	vmulss %xmm0,%xmm4,%xmm4
     55a:	c5 fa 11 a4 24 90 35 	vmovss %xmm4,0xc3590(%rsp)
     561:	0c 00 
     563:	0f 84 fd 0c 00 00    	je     1266 <_Z17measure_sqrt_timeILm2EEvv+0x1266>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     569:	c4 e2 6a f7 84 24 94 	sarx   %edx,0x94(%rsp),%eax
     570:	00 00 00 
     573:	c5 fa 10 a4 24 94 00 	vmovss 0x94(%rsp),%xmm4
     57a:	00 00 
     57c:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     581:	83 f9 06             	cmp    $0x6,%ecx
     584:	89 44 24 20          	mov    %eax,0x20(%rsp)
     588:	c5 f9 6e 74 24 20    	vmovd  0x20(%rsp),%xmm6
        root = 0.5 * ( root + (* a / root));
     58e:	c5 da 5e ee          	vdivss %xmm6,%xmm4,%xmm5
     592:	c5 d2 58 ee          	vaddss %xmm6,%xmm5,%xmm5
     596:	c5 d2 59 e8          	vmulss %xmm0,%xmm5,%xmm5
     59a:	c5 da 5e e5          	vdivss %xmm5,%xmm4,%xmm4
     59e:	c5 da 58 e5          	vaddss %xmm5,%xmm4,%xmm4
     5a2:	c5 da 59 e0          	vmulss %xmm0,%xmm4,%xmm4
     5a6:	c5 fa 11 a4 24 94 35 	vmovss %xmm4,0xc3594(%rsp)
     5ad:	0c 00 
     5af:	0f 84 a2 0c 00 00    	je     1257 <_Z17measure_sqrt_timeILm2EEvv+0x1257>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     5b5:	c4 e2 6a f7 84 24 98 	sarx   %edx,0x98(%rsp),%eax
     5bc:	00 00 00 
     5bf:	c5 fa 10 a4 24 98 00 	vmovss 0x98(%rsp),%xmm4
     5c6:	00 00 
     5c8:	ba 39 0d 03 00       	mov    $0x30d39,%edx
     5cd:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     5d2:	89 44 24 20          	mov    %eax,0x20(%rsp)
      for (int i = 0; i < 4 * N; i++) {
     5d6:	b8 07 00 00 00       	mov    $0x7,%eax
     5db:	c5 f9 6e 74 24 20    	vmovd  0x20(%rsp),%xmm6
        root = 0.5 * ( root + (* a / root));
     5e1:	c5 da 5e ee          	vdivss %xmm6,%xmm4,%xmm5
     5e5:	c5 d2 58 ee          	vaddss %xmm6,%xmm5,%xmm5
     5e9:	c5 d2 59 e8          	vmulss %xmm0,%xmm5,%xmm5
     5ed:	c5 da 5e e5          	vdivss %xmm5,%xmm4,%xmm4
     5f1:	c5 da 58 e5          	vaddss %xmm5,%xmm4,%xmm4
     5f5:	c5 da 59 e0          	vmulss %xmm0,%xmm4,%xmm4
        roots[i] = sqrt1<LOOPS>(floats + i);
     5f9:	c5 fa 11 a4 24 98 35 	vmovss %xmm4,0xc3598(%rsp)
     600:	0c 00 
      for (int i = 0; i < 4 * N; i++) {
     602:	45 31 ff             	xor    %r15d,%r15d
     605:	45 31 f6             	xor    %r14d,%r14d
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     608:	c4 a1 7d 6f 24 36    	vmovdqa (%rsi,%r14,1),%ymm4
     60e:	41 83 c7 01          	add    $0x1,%r15d
     612:	c5 d5 72 e4 01       	vpsrad $0x1,%ymm4,%ymm5
     617:	c5 d5 fe f3          	vpaddd %ymm3,%ymm5,%ymm6
        root = 0.5 * ( root + (* a / root));
     61b:	c5 dc 5e ee          	vdivps %ymm6,%ymm4,%ymm5
     61f:	c5 d4 58 ee          	vaddps %ymm6,%ymm5,%ymm5
     623:	c5 d4 59 ea          	vmulps %ymm2,%ymm5,%ymm5
     627:	c5 dc 5e e5          	vdivps %ymm5,%ymm4,%ymm4
     62b:	c5 dc 58 e5          	vaddps %ymm5,%ymm4,%ymm4
     62f:	c5 dc 59 e2          	vmulps %ymm2,%ymm4,%ymm4
        roots[i] = sqrt1<LOOPS>(floats + i);
     633:	c4 81 78 11 24 30    	vmovups %xmm4,(%r8,%r14,1)
     639:	c4 83 7d 19 64 30 10 	vextractf128 $0x1,%ymm4,0x10(%r8,%r14,1)
     640:	01 
     641:	49 83 c6 20          	add    $0x20,%r14
     645:	41 39 ff             	cmp    %edi,%r15d
     648:	72 be                	jb     608 <_Z17measure_sqrt_timeILm2EEvv+0x608>
     64a:	44 01 d8             	add    %r11d,%eax
     64d:	44 29 da             	sub    %r11d,%edx
     650:	45 39 cb             	cmp    %r9d,%r11d
     653:	0f 84 7b 02 00 00    	je     8d4 <_Z17measure_sqrt_timeILm2EEvv+0x8d4>
     659:	4c 63 f8             	movslq %eax,%r15
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     65c:	41 be 01 00 00 00    	mov    $0x1,%r14d
     662:	c4 22 0a f7 b4 bc 80 	sarx   %r14d,0x80(%rsp,%r15,4),%r14d
     669:	00 00 00 
     66c:	c4 a1 7a 10 a4 bc 80 	vmovss 0x80(%rsp,%r15,4),%xmm4
     673:	00 00 00 
     676:	41 81 c6 00 40 bb 1f 	add    $0x1fbb4000,%r14d
      for (int i = 0; i < 4 * N; i++) {
     67d:	83 fa 01             	cmp    $0x1,%edx
     680:	44 89 74 24 20       	mov    %r14d,0x20(%rsp)
     685:	44 8d 70 01          	lea    0x1(%rax),%r14d
     689:	c5 f9 6e 74 24 20    	vmovd  0x20(%rsp),%xmm6
        root = 0.5 * ( root + (* a / root));
     68f:	c5 da 5e ee          	vdivss %xmm6,%xmm4,%xmm5
     693:	c5 d2 58 ee          	vaddss %xmm6,%xmm5,%xmm5
     697:	c5 d2 59 e9          	vmulss %xmm1,%xmm5,%xmm5
     69b:	c5 da 5e e5          	vdivss %xmm5,%xmm4,%xmm4
     69f:	c5 da 58 e5          	vaddss %xmm5,%xmm4,%xmm4
     6a3:	c5 da 59 e1          	vmulss %xmm1,%xmm4,%xmm4
        roots[i] = sqrt1<LOOPS>(floats + i);
     6a7:	c4 a1 7a 11 a4 bc 80 	vmovss %xmm4,0xc3580(%rsp,%r15,4)
     6ae:	35 0c 00 
      for (int i = 0; i < 4 * N; i++) {
     6b1:	0f 84 1d 02 00 00    	je     8d4 <_Z17measure_sqrt_timeILm2EEvv+0x8d4>
        roots[i] = sqrt1<LOOPS>(floats + i);
     6b7:	4d 63 f6             	movslq %r14d,%r14
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     6ba:	41 bf 01 00 00 00    	mov    $0x1,%r15d
     6c0:	c4 22 02 f7 bc b4 80 	sarx   %r15d,0x80(%rsp,%r14,4),%r15d
     6c7:	00 00 00 
     6ca:	c4 a1 7a 10 a4 b4 80 	vmovss 0x80(%rsp,%r14,4),%xmm4
     6d1:	00 00 00 
     6d4:	41 81 c7 00 40 bb 1f 	add    $0x1fbb4000,%r15d
      for (int i = 0; i < 4 * N; i++) {
     6db:	83 fa 02             	cmp    $0x2,%edx
     6de:	44 89 7c 24 20       	mov    %r15d,0x20(%rsp)
     6e3:	c5 f9 6e 74 24 20    	vmovd  0x20(%rsp),%xmm6
        root = 0.5 * ( root + (* a / root));
     6e9:	c5 da 5e ee          	vdivss %xmm6,%xmm4,%xmm5
     6ed:	c5 d2 58 ee          	vaddss %xmm6,%xmm5,%xmm5
     6f1:	c5 d2 59 e9          	vmulss %xmm1,%xmm5,%xmm5
     6f5:	c5 da 5e e5          	vdivss %xmm5,%xmm4,%xmm4
     6f9:	c5 da 58 e5          	vaddss %xmm5,%xmm4,%xmm4
     6fd:	c5 da 59 e1          	vmulss %xmm1,%xmm4,%xmm4
        roots[i] = sqrt1<LOOPS>(floats + i);
     701:	c4 a1 7a 11 a4 b4 80 	vmovss %xmm4,0xc3580(%rsp,%r14,4)
     708:	35 0c 00 
      for (int i = 0; i < 4 * N; i++) {
     70b:	44 8d 70 02          	lea    0x2(%rax),%r14d
     70f:	0f 84 bf 01 00 00    	je     8d4 <_Z17measure_sqrt_timeILm2EEvv+0x8d4>
        roots[i] = sqrt1<LOOPS>(floats + i);
     715:	4d 63 f6             	movslq %r14d,%r14
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     718:	41 bf 01 00 00 00    	mov    $0x1,%r15d
     71e:	c4 22 02 f7 bc b4 80 	sarx   %r15d,0x80(%rsp,%r14,4),%r15d
     725:	00 00 00 
     728:	c4 a1 7a 10 a4 b4 80 	vmovss 0x80(%rsp,%r14,4),%xmm4
     72f:	00 00 00 
     732:	41 81 c7 00 40 bb 1f 	add    $0x1fbb4000,%r15d
      for (int i = 0; i < 4 * N; i++) {
     739:	83 fa 03             	cmp    $0x3,%edx
     73c:	44 89 7c 24 20       	mov    %r15d,0x20(%rsp)
     741:	c5 f9 6e 74 24 20    	vmovd  0x20(%rsp),%xmm6
        root = 0.5 * ( root + (* a / root));
     747:	c5 da 5e ee          	vdivss %xmm6,%xmm4,%xmm5
     74b:	c5 d2 58 ee          	vaddss %xmm6,%xmm5,%xmm5
     74f:	c5 d2 59 e9          	vmulss %xmm1,%xmm5,%xmm5
     753:	c5 da 5e e5          	vdivss %xmm5,%xmm4,%xmm4
     757:	c5 da 58 e5          	vaddss %xmm5,%xmm4,%xmm4
     75b:	c5 da 59 e1          	vmulss %xmm1,%xmm4,%xmm4
        roots[i] = sqrt1<LOOPS>(floats + i);
     75f:	c4 a1 7a 11 a4 b4 80 	vmovss %xmm4,0xc3580(%rsp,%r14,4)
     766:	35 0c 00 
      for (int i = 0; i < 4 * N; i++) {
     769:	44 8d 70 03          	lea    0x3(%rax),%r14d
     76d:	0f 84 61 01 00 00    	je     8d4 <_Z17measure_sqrt_timeILm2EEvv+0x8d4>
        roots[i] = sqrt1<LOOPS>(floats + i);
     773:	4d 63 f6             	movslq %r14d,%r14
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     776:	41 bf 01 00 00 00    	mov    $0x1,%r15d
     77c:	c4 22 02 f7 bc b4 80 	sarx   %r15d,0x80(%rsp,%r14,4),%r15d
     783:	00 00 00 
     786:	c4 a1 7a 10 a4 b4 80 	vmovss 0x80(%rsp,%r14,4),%xmm4
     78d:	00 00 00 
     790:	41 81 c7 00 40 bb 1f 	add    $0x1fbb4000,%r15d
      for (int i = 0; i < 4 * N; i++) {
     797:	83 fa 04             	cmp    $0x4,%edx
     79a:	44 89 7c 24 20       	mov    %r15d,0x20(%rsp)
     79f:	c5 f9 6e 74 24 20    	vmovd  0x20(%rsp),%xmm6
        root = 0.5 * ( root + (* a / root));
     7a5:	c5 da 5e ee          	vdivss %xmm6,%xmm4,%xmm5
     7a9:	c5 d2 58 ee          	vaddss %xmm6,%xmm5,%xmm5
     7ad:	c5 d2 59 e9          	vmulss %xmm1,%xmm5,%xmm5
     7b1:	c5 da 5e e5          	vdivss %xmm5,%xmm4,%xmm4
     7b5:	c5 da 58 e5          	vaddss %xmm5,%xmm4,%xmm4
     7b9:	c5 da 59 e1          	vmulss %xmm1,%xmm4,%xmm4
        roots[i] = sqrt1<LOOPS>(floats + i);
     7bd:	c4 a1 7a 11 a4 b4 80 	vmovss %xmm4,0xc3580(%rsp,%r14,4)
     7c4:	35 0c 00 
      for (int i = 0; i < 4 * N; i++) {
     7c7:	44 8d 70 04          	lea    0x4(%rax),%r14d
     7cb:	0f 84 03 01 00 00    	je     8d4 <_Z17measure_sqrt_timeILm2EEvv+0x8d4>
        roots[i] = sqrt1<LOOPS>(floats + i);
     7d1:	4d 63 f6             	movslq %r14d,%r14
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     7d4:	41 bf 01 00 00 00    	mov    $0x1,%r15d
     7da:	c4 22 02 f7 bc b4 80 	sarx   %r15d,0x80(%rsp,%r14,4),%r15d
     7e1:	00 00 00 
     7e4:	c4 a1 7a 10 a4 b4 80 	vmovss 0x80(%rsp,%r14,4),%xmm4
     7eb:	00 00 00 
     7ee:	41 81 c7 00 40 bb 1f 	add    $0x1fbb4000,%r15d
      for (int i = 0; i < 4 * N; i++) {
     7f5:	83 fa 05             	cmp    $0x5,%edx
     7f8:	44 89 7c 24 20       	mov    %r15d,0x20(%rsp)
     7fd:	c5 f9 6e 74 24 20    	vmovd  0x20(%rsp),%xmm6
        root = 0.5 * ( root + (* a / root));
     803:	c5 da 5e ee          	vdivss %xmm6,%xmm4,%xmm5
     807:	c5 d2 58 ee          	vaddss %xmm6,%xmm5,%xmm5
     80b:	c5 d2 59 e9          	vmulss %xmm1,%xmm5,%xmm5
     80f:	c5 da 5e e5          	vdivss %xmm5,%xmm4,%xmm4
     813:	c5 da 58 e5          	vaddss %xmm5,%xmm4,%xmm4
     817:	c5 da 59 e1          	vmulss %xmm1,%xmm4,%xmm4
        roots[i] = sqrt1<LOOPS>(floats + i);
     81b:	c4 a1 7a 11 a4 b4 80 	vmovss %xmm4,0xc3580(%rsp,%r14,4)
     822:	35 0c 00 
      for (int i = 0; i < 4 * N; i++) {
     825:	44 8d 70 05          	lea    0x5(%rax),%r14d
     829:	0f 84 a5 00 00 00    	je     8d4 <_Z17measure_sqrt_timeILm2EEvv+0x8d4>
        roots[i] = sqrt1<LOOPS>(floats + i);
     82f:	4d 63 f6             	movslq %r14d,%r14
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     832:	41 bf 01 00 00 00    	mov    $0x1,%r15d
      for (int i = 0; i < 4 * N; i++) {
     838:	83 c0 06             	add    $0x6,%eax
     83b:	c4 22 02 f7 bc b4 80 	sarx   %r15d,0x80(%rsp,%r14,4),%r15d
     842:	00 00 00 
     845:	c4 a1 7a 10 a4 b4 80 	vmovss 0x80(%rsp,%r14,4),%xmm4
     84c:	00 00 00 
     84f:	41 81 c7 00 40 bb 1f 	add    $0x1fbb4000,%r15d
     856:	83 fa 06             	cmp    $0x6,%edx
     859:	44 89 7c 24 20       	mov    %r15d,0x20(%rsp)
     85e:	c5 f9 6e 74 24 20    	vmovd  0x20(%rsp),%xmm6
        root = 0.5 * ( root + (* a / root));
     864:	c5 da 5e ee          	vdivss %xmm6,%xmm4,%xmm5
     868:	c5 d2 58 ee          	vaddss %xmm6,%xmm5,%xmm5
     86c:	c5 d2 59 e9          	vmulss %xmm1,%xmm5,%xmm5
     870:	c5 da 5e e5          	vdivss %xmm5,%xmm4,%xmm4
     874:	c5 da 58 e5          	vaddss %xmm5,%xmm4,%xmm4
     878:	c5 da 59 e1          	vmulss %xmm1,%xmm4,%xmm4
        roots[i] = sqrt1<LOOPS>(floats + i);
     87c:	c4 a1 7a 11 a4 b4 80 	vmovss %xmm4,0xc3580(%rsp,%r14,4)
     883:	35 0c 00 
      for (int i = 0; i < 4 * N; i++) {
     886:	74 4c                	je     8d4 <_Z17measure_sqrt_timeILm2EEvv+0x8d4>
        roots[i] = sqrt1<LOOPS>(floats + i);
     888:	48 98                	cltq   
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     88a:	41 bf 01 00 00 00    	mov    $0x1,%r15d
     890:	c4 e2 02 f7 94 84 80 	sarx   %r15d,0x80(%rsp,%rax,4),%edx
     897:	00 00 00 
     89a:	c5 fa 10 a4 84 80 00 	vmovss 0x80(%rsp,%rax,4),%xmm4
     8a1:	00 00 
     8a3:	81 c2 00 40 bb 1f    	add    $0x1fbb4000,%edx
     8a9:	89 54 24 20          	mov    %edx,0x20(%rsp)
     8ad:	c5 f9 6e 74 24 20    	vmovd  0x20(%rsp),%xmm6
        root = 0.5 * ( root + (* a / root));
     8b3:	c5 da 5e ee          	vdivss %xmm6,%xmm4,%xmm5
     8b7:	c5 d2 58 ee          	vaddss %xmm6,%xmm5,%xmm5
     8bb:	c5 d2 59 e9          	vmulss %xmm1,%xmm5,%xmm5
     8bf:	c5 da 5e e5          	vdivss %xmm5,%xmm4,%xmm4
     8c3:	c5 da 58 e5          	vaddss %xmm5,%xmm4,%xmm4
     8c7:	c5 da 59 e1          	vmulss %xmm1,%xmm4,%xmm4
     8cb:	c5 fa 11 a4 84 80 35 	vmovss %xmm4,0xc3580(%rsp,%rax,4)
     8d2:	0c 00 
    for (int j = 0; j < LOOP; j++) {
     8d4:	41 83 ea 01          	sub    $0x1,%r10d
     8d8:	0f 85 02 fb ff ff    	jne    3e0 <_Z17measure_sqrt_timeILm2EEvv+0x3e0>
     8de:	c5 fc 11 54 24 40    	vmovups %ymm2,0x40(%rsp)
     8e4:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
       end = steady_clock::now();
     8ea:	c5 f8 77             	vzeroupper 
     8ed:	e8 00 00 00 00       	callq  8f2 <_Z17measure_sqrt_timeILm2EEvv+0x8f2>
      }
    }
    time.stop_clock();
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
     8f2:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     8f9:	9b c4 20 
     8fc:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
     901:	48 29 d8             	sub    %rbx,%rax
     904:	48 89 c1             	mov    %rax,%rcx
     907:	48 f7 ea             	imul   %rdx
     90a:	48 c1 f9 3f          	sar    $0x3f,%rcx
     90e:	48 c1 fa 07          	sar    $0x7,%rdx
     912:	48 29 ca             	sub    %rcx,%rdx
      { return _M_insert(__n); }
     915:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 91c <_Z17measure_sqrt_timeILm2EEvv+0x91c>
     91c:	e8 00 00 00 00       	callq  921 <_Z17measure_sqrt_timeILm2EEvv+0x921>
	__ostream_insert(__out, __s,
     921:	48 8d 15 3c 00 00 00 	lea    0x3c(%rip),%rdx        # 964 <_Z17measure_sqrt_timeILm2EEvv+0x964>
      { return _M_insert(__n); }
     928:	48 89 c6             	mov    %rax,%rsi
	__ostream_insert(__out, __s,
     92b:	41 b8 05 00 00 00    	mov    $0x5,%r8d
     931:	48 89 c1             	mov    %rax,%rcx
     934:	e8 00 00 00 00       	callq  939 <_Z17measure_sqrt_timeILm2EEvv+0x939>
    { return flush(__os.put(__os.widen('\n'))); }
     939:	48 8b 06             	mov    (%rsi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     93c:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     940:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
     947:	00 
      if (!__f)
     948:	48 85 db             	test   %rbx,%rbx
     94b:	0f 84 20 f9 ff ff    	je     271 <_Z17measure_sqrt_timeILm2EEvv+0x271>
     951:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     955:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     95b:	c5 fc 10 54 24 40    	vmovups 0x40(%rsp),%ymm2
     961:	0f 84 0d 0b 00 00    	je     1474 <_Z17measure_sqrt_timeILm2EEvv+0x1474>
     967:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     96b:	48 89 f1             	mov    %rsi,%rcx
     96e:	c5 fc 11 54 24 40    	vmovups %ymm2,0x40(%rsp)
     974:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
     97a:	c5 f8 77             	vzeroupper 
     97d:	e8 00 00 00 00       	callq  982 <_Z17measure_sqrt_timeILm2EEvv+0x982>
    { return __os.flush(); }
     982:	48 89 c1             	mov    %rax,%rcx
     985:	e8 00 00 00 00       	callq  98a <_Z17measure_sqrt_timeILm2EEvv+0x98a>
	__ostream_insert(__out, __s,
     98a:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 991 <_Z17measure_sqrt_timeILm2EEvv+0x991>
     991:	48 8d 15 80 00 00 00 	lea    0x80(%rip),%rdx        # a18 <_Z17measure_sqrt_timeILm2EEvv+0xa18>
     998:	41 b8 06 00 00 00    	mov    $0x6,%r8d
     99e:	e8 00 00 00 00       	callq  9a3 <_Z17measure_sqrt_timeILm2EEvv+0x9a3>
	return _M_insert(static_cast<double>(__f));
     9a3:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
     9a7:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 9ae <_Z17measure_sqrt_timeILm2EEvv+0x9ae>
     9ae:	c5 f2 5a 8c 24 7c 35 	vcvtss2sd 0xc357c(%rsp),%xmm1,%xmm1
     9b5:	0c 00 
     9b7:	e8 00 00 00 00       	callq  9bc <_Z17measure_sqrt_timeILm2EEvv+0x9bc>
	__ostream_insert(__out, __s,
     9bc:	48 8d 15 87 00 00 00 	lea    0x87(%rip),%rdx        # a4a <_Z17measure_sqrt_timeILm2EEvv+0xa4a>
     9c3:	41 b8 04 00 00 00    	mov    $0x4,%r8d
     9c9:	48 89 c1             	mov    %rax,%rcx
	return _M_insert(static_cast<double>(__f));
     9cc:	48 89 c3             	mov    %rax,%rbx
	__ostream_insert(__out, __s,
     9cf:	e8 00 00 00 00       	callq  9d4 <_Z17measure_sqrt_timeILm2EEvv+0x9d4>
	return _M_insert(static_cast<double>(__f));
     9d4:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
     9d8:	48 89 d9             	mov    %rbx,%rcx
     9db:	c5 f2 5a 8c 24 7c 6a 	vcvtss2sd 0x186a7c(%rsp),%xmm1,%xmm1
     9e2:	18 00 
     9e4:	e8 00 00 00 00       	callq  9e9 <_Z17measure_sqrt_timeILm2EEvv+0x9e9>
     9e9:	48 89 c6             	mov    %rax,%rsi
    { return flush(__os.put(__os.widen('\n'))); }
     9ec:	48 8b 00             	mov    (%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     9ef:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     9f3:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
     9fa:	00 
      if (!__f)
     9fb:	48 85 db             	test   %rbx,%rbx
     9fe:	0f 84 6d f8 ff ff    	je     271 <_Z17measure_sqrt_timeILm2EEvv+0x271>
     a04:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     a08:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     a0e:	c5 fc 10 54 24 40    	vmovups 0x40(%rsp),%ymm2
     a14:	0f 84 ff 09 00 00    	je     1419 <_Z17measure_sqrt_timeILm2EEvv+0x1419>
     a1a:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     a1e:	48 89 f1             	mov    %rsi,%rcx
     a21:	c5 fc 11 54 24 40    	vmovups %ymm2,0x40(%rsp)
     a27:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
     a2d:	c5 f8 77             	vzeroupper 
     a30:	e8 00 00 00 00       	callq  a35 <_Z17measure_sqrt_timeILm2EEvv+0xa35>
    { return __os.flush(); }
     a35:	48 89 c1             	mov    %rax,%rcx
     a38:	e8 00 00 00 00       	callq  a3d <_Z17measure_sqrt_timeILm2EEvv+0xa3d>
	__ostream_insert(__out, __s,
     a3d:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # a44 <_Z17measure_sqrt_timeILm2EEvv+0xa44>
     a44:	48 8d 15 90 00 00 00 	lea    0x90(%rip),%rdx        # adb <_Z17measure_sqrt_timeILm2EEvv+0xadb>
     a4b:	41 b8 39 00 00 00    	mov    $0x39,%r8d
     a51:	e8 00 00 00 00       	callq  a56 <_Z17measure_sqrt_timeILm2EEvv+0xa56>
    { return flush(__os.put(__os.widen('\n'))); }
     a56:	49 8b 04 24          	mov    (%r12),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     a5a:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     a5e:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
     a65:	00 
      if (!__f)
     a66:	48 85 db             	test   %rbx,%rbx
     a69:	0f 84 02 f8 ff ff    	je     271 <_Z17measure_sqrt_timeILm2EEvv+0x271>
     a6f:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     a73:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     a79:	c5 fc 10 54 24 40    	vmovups 0x40(%rsp),%ymm2
     a7f:	0f 84 39 09 00 00    	je     13be <_Z17measure_sqrt_timeILm2EEvv+0x13be>
     a85:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     a89:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # a90 <_Z17measure_sqrt_timeILm2EEvv+0xa90>
     a90:	c5 fc 11 54 24 40    	vmovups %ymm2,0x40(%rsp)
     a96:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
     a9c:	c5 f8 77             	vzeroupper 
     a9f:	e8 00 00 00 00       	callq  aa4 <_Z17measure_sqrt_timeILm2EEvv+0xaa4>
    { return __os.flush(); }
     aa4:	48 89 c1             	mov    %rax,%rcx
     aa7:	e8 00 00 00 00       	callq  aac <_Z17measure_sqrt_timeILm2EEvv+0xaac>
       start = steady_clock::now();
     aac:	e8 00 00 00 00       	callq  ab1 <_Z17measure_sqrt_timeILm2EEvv+0xab1>
     ab1:	49 8d 8d 00 35 0c 00 	lea    0xc3500(%r13),%rcx
     ab8:	c5 fc 10 54 24 40    	vmovups 0x40(%rsp),%ymm2
     abe:	48 89 c6             	mov    %rax,%rsi
     ac1:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     ac7:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
     acc:	ba e8 03 00 00       	mov    $0x3e8,%edx
     ad1:	48 89 e8             	mov    %rbp,%rax
     ad4:	4c 89 eb             	mov    %r13,%rbx
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     ad7:	c5 fa 6f 08          	vmovdqu (%rax),%xmm1
     adb:	48 83 eb 80          	sub    $0xffffffffffffff80,%rbx
     adf:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
     ae3:	c5 fa 6f 68 a0       	vmovdqu -0x60(%rax),%xmm5
     ae8:	c4 e3 75 38 48 90 01 	vinserti128 $0x1,-0x70(%rax),%ymm1,%ymm1
     aef:	c5 fa 6f 40 c0       	vmovdqu -0x40(%rax),%xmm0
     af4:	c4 e3 55 38 68 b0 01 	vinserti128 $0x1,-0x50(%rax),%ymm5,%ymm5
     afb:	c5 fa 6f 70 e0       	vmovdqu -0x20(%rax),%xmm6
     b00:	c4 e3 7d 38 40 d0 01 	vinserti128 $0x1,-0x30(%rax),%ymm0,%ymm0
     b07:	c4 e3 4d 38 70 f0 01 	vinserti128 $0x1,-0x10(%rax),%ymm6,%ymm6
     b0e:	c4 e3 75 46 e5 20    	vperm2i128 $0x20,%ymm5,%ymm1,%ymm4
     b14:	c4 e3 75 46 cd 31    	vperm2i128 $0x31,%ymm5,%ymm1,%ymm1
     b1a:	c5 fd 70 e4 d8       	vpshufd $0xd8,%ymm4,%ymm4
     b1f:	c5 fd 70 c9 d8       	vpshufd $0xd8,%ymm1,%ymm1
     b24:	c5 dd 6c e9          	vpunpcklqdq %ymm1,%ymm4,%ymm5
     b28:	c5 dd 6d e1          	vpunpckhqdq %ymm1,%ymm4,%ymm4
     b2c:	c4 e3 7d 46 ce 20    	vperm2i128 $0x20,%ymm6,%ymm0,%ymm1
     b32:	c4 e3 7d 46 c6 31    	vperm2i128 $0x31,%ymm6,%ymm0,%ymm0
     b38:	c5 fd 70 c9 d8       	vpshufd $0xd8,%ymm1,%ymm1
     b3d:	c5 fd 70 c0 d8       	vpshufd $0xd8,%ymm0,%ymm0
     b42:	c5 f5 6c f8          	vpunpcklqdq %ymm0,%ymm1,%ymm7
     b46:	c5 f5 6d c0          	vpunpckhqdq %ymm0,%ymm1,%ymm0
     b4a:	c4 e3 55 46 f7 20    	vperm2i128 $0x20,%ymm7,%ymm5,%ymm6
     b50:	c4 e3 55 46 cf 31    	vperm2i128 $0x31,%ymm7,%ymm5,%ymm1
     b56:	c5 fd 70 ee d8       	vpshufd $0xd8,%ymm6,%ymm5
     b5b:	c5 fd 70 c9 d8       	vpshufd $0xd8,%ymm1,%ymm1
     b60:	c5 d5 6c f1          	vpunpcklqdq %ymm1,%ymm5,%ymm6
     b64:	c5 d5 6d c9          	vpunpckhqdq %ymm1,%ymm5,%ymm1
     b68:	c4 e3 5d 46 e8 20    	vperm2i128 $0x20,%ymm0,%ymm4,%ymm5
     b6e:	c4 e3 5d 46 c0 31    	vperm2i128 $0x31,%ymm0,%ymm4,%ymm0
     b74:	c5 fd 70 ed d8       	vpshufd $0xd8,%ymm5,%ymm5
     b79:	c5 fd 70 c0 d8       	vpshufd $0xd8,%ymm0,%ymm0
     b7e:	c5 d5 6c e0          	vpunpcklqdq %ymm0,%ymm5,%ymm4
     b82:	c5 d5 6d c0          	vpunpckhqdq %ymm0,%ymm5,%ymm0
     b86:	c5 d5 72 e6 01       	vpsrad $0x1,%ymm6,%ymm5
     b8b:	c5 d5 fe fb          	vpaddd %ymm3,%ymm5,%ymm7
        root = 0.5 * ( root + (* a / root));
     b8f:	c5 cc 5e ef          	vdivps %ymm7,%ymm6,%ymm5
     b93:	c5 d4 58 ef          	vaddps %ymm7,%ymm5,%ymm5
     b97:	c5 d4 59 ea          	vmulps %ymm2,%ymm5,%ymm5
     b9b:	c5 cc 5e f5          	vdivps %ymm5,%ymm6,%ymm6
     b9f:	c5 cc 58 f5          	vaddps %ymm5,%ymm6,%ymm6
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     ba3:	c5 d5 72 e4 01       	vpsrad $0x1,%ymm4,%ymm5
     ba8:	c5 d5 fe fb          	vpaddd %ymm3,%ymm5,%ymm7
        root = 0.5 * ( root + (* a / root));
     bac:	c5 dc 5e ef          	vdivps %ymm7,%ymm4,%ymm5
     bb0:	c5 cc 59 f2          	vmulps %ymm2,%ymm6,%ymm6
     bb4:	c5 d4 58 ef          	vaddps %ymm7,%ymm5,%ymm5
     bb8:	c5 d4 59 ea          	vmulps %ymm2,%ymm5,%ymm5
     bbc:	c5 dc 5e e5          	vdivps %ymm5,%ymm4,%ymm4
     bc0:	c5 dc 58 e5          	vaddps %ymm5,%ymm4,%ymm4
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     bc4:	c5 d5 72 e1 01       	vpsrad $0x1,%ymm1,%ymm5
     bc9:	c5 d5 fe fb          	vpaddd %ymm3,%ymm5,%ymm7
        root = 0.5 * ( root + (* a / root));
     bcd:	c5 f4 5e ef          	vdivps %ymm7,%ymm1,%ymm5
     bd1:	c5 dc 59 e2          	vmulps %ymm2,%ymm4,%ymm4
     bd5:	c5 d4 58 ef          	vaddps %ymm7,%ymm5,%ymm5
     bd9:	c5 d4 59 ea          	vmulps %ymm2,%ymm5,%ymm5
     bdd:	c5 f4 5e cd          	vdivps %ymm5,%ymm1,%ymm1
     be1:	c5 f4 58 cd          	vaddps %ymm5,%ymm1,%ymm1
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     be5:	c5 d5 72 e0 01       	vpsrad $0x1,%ymm0,%ymm5
     bea:	c5 d5 fe fb          	vpaddd %ymm3,%ymm5,%ymm7
        root = 0.5 * ( root + (* a / root));
     bee:	c5 fc 5e ef          	vdivps %ymm7,%ymm0,%ymm5
     bf2:	c5 f4 59 ca          	vmulps %ymm2,%ymm1,%ymm1
     bf6:	c5 d4 58 ef          	vaddps %ymm7,%ymm5,%ymm5
     bfa:	c5 d4 59 ea          	vmulps %ymm2,%ymm5,%ymm5
     bfe:	c5 fc 5e c5          	vdivps %ymm5,%ymm0,%ymm0
     c02:	c5 fc 58 c5          	vaddps %ymm5,%ymm0,%ymm0
    std::cout << "sqrt1 (Newton method for single float, four times a loop)" << std::endl;
    time.start_clock();
    for (int j = 0; j < LOOP; j++) {
      for (int i = 0; i < 4 * N; i += 4) {
        for (int k = 0; k < 4; k++) {
          roots[i + k] = sqrt1<LOOPS>(floats + i + k);
     c06:	c5 cc 14 e9          	vunpcklps %ymm1,%ymm6,%ymm5
     c0a:	c5 cc 15 c9          	vunpckhps %ymm1,%ymm6,%ymm1
     c0e:	c5 fc 59 c2          	vmulps %ymm2,%ymm0,%ymm0
     c12:	c4 e3 55 18 f9 01    	vinsertf128 $0x1,%xmm1,%ymm5,%ymm7
     c18:	c4 e3 55 06 c9 31    	vperm2f128 $0x31,%ymm1,%ymm5,%ymm1
     c1e:	c5 dc 14 e8          	vunpcklps %ymm0,%ymm4,%ymm5
     c22:	c5 dc 15 c0          	vunpckhps %ymm0,%ymm4,%ymm0
     c26:	c4 e3 55 18 f0 01    	vinsertf128 $0x1,%xmm0,%ymm5,%ymm6
     c2c:	c4 e3 55 06 c0 31    	vperm2f128 $0x31,%ymm0,%ymm5,%ymm0
     c32:	c5 c4 14 e6          	vunpcklps %ymm6,%ymm7,%ymm4
     c36:	c5 c4 15 ee          	vunpckhps %ymm6,%ymm7,%ymm5
     c3a:	c4 e3 5d 18 f5 01    	vinsertf128 $0x1,%xmm5,%ymm4,%ymm6
     c40:	c4 e3 5d 06 e5 31    	vperm2f128 $0x31,%ymm5,%ymm4,%ymm4
     c46:	c5 f8 11 73 80       	vmovups %xmm6,-0x80(%rbx)
     c4b:	c4 e3 7d 19 63 b0 01 	vextractf128 $0x1,%ymm4,-0x50(%rbx)
     c52:	c5 f8 11 63 a0       	vmovups %xmm4,-0x60(%rbx)
     c57:	c5 f4 14 e0          	vunpcklps %ymm0,%ymm1,%ymm4
     c5b:	c5 f4 15 c0          	vunpckhps %ymm0,%ymm1,%ymm0
     c5f:	c4 e3 7d 19 73 90 01 	vextractf128 $0x1,%ymm6,-0x70(%rbx)
     c66:	c4 e3 5d 18 c8 01    	vinsertf128 $0x1,%xmm0,%ymm4,%ymm1
     c6c:	c4 e3 5d 06 c0 31    	vperm2f128 $0x31,%ymm0,%ymm4,%ymm0
     c72:	c5 f8 11 4b c0       	vmovups %xmm1,-0x40(%rbx)
     c77:	c4 e3 7d 19 4b d0 01 	vextractf128 $0x1,%ymm1,-0x30(%rbx)
     c7e:	c5 f8 11 43 e0       	vmovups %xmm0,-0x20(%rbx)
     c83:	c4 e3 7d 19 43 f0 01 	vextractf128 $0x1,%ymm0,-0x10(%rbx)
     c8a:	48 39 d9             	cmp    %rbx,%rcx
     c8d:	0f 85 44 fe ff ff    	jne    ad7 <_Z17measure_sqrt_timeILm2EEvv+0xad7>
    for (int j = 0; j < LOOP; j++) {
     c93:	83 ea 01             	sub    $0x1,%edx
     c96:	0f 85 35 fe ff ff    	jne    ad1 <_Z17measure_sqrt_timeILm2EEvv+0xad1>
     c9c:	c5 fc 11 54 24 40    	vmovups %ymm2,0x40(%rsp)
     ca2:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
       end = steady_clock::now();
     ca8:	c5 f8 77             	vzeroupper 
     cab:	e8 00 00 00 00       	callq  cb0 <_Z17measure_sqrt_timeILm2EEvv+0xcb0>
        }
      }
    }    
    time.stop_clock();
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
     cb0:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     cb7:	9b c4 20 
     cba:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
     cbf:	48 29 f0             	sub    %rsi,%rax
     cc2:	48 89 c1             	mov    %rax,%rcx
     cc5:	48 f7 ea             	imul   %rdx
     cc8:	48 c1 f9 3f          	sar    $0x3f,%rcx
     ccc:	48 c1 fa 07          	sar    $0x7,%rdx
     cd0:	48 29 ca             	sub    %rcx,%rdx
      { return _M_insert(__n); }
     cd3:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # cda <_Z17measure_sqrt_timeILm2EEvv+0xcda>
     cda:	e8 00 00 00 00       	callq  cdf <_Z17measure_sqrt_timeILm2EEvv+0xcdf>
	__ostream_insert(__out, __s,
     cdf:	48 8d 15 3c 00 00 00 	lea    0x3c(%rip),%rdx        # d22 <_Z17measure_sqrt_timeILm2EEvv+0xd22>
      { return _M_insert(__n); }
     ce6:	48 89 c7             	mov    %rax,%rdi
	__ostream_insert(__out, __s,
     ce9:	41 b8 05 00 00 00    	mov    $0x5,%r8d
     cef:	48 89 c1             	mov    %rax,%rcx
     cf2:	e8 00 00 00 00       	callq  cf7 <_Z17measure_sqrt_timeILm2EEvv+0xcf7>
    { return flush(__os.put(__os.widen('\n'))); }
     cf7:	48 8b 07             	mov    (%rdi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     cfa:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     cfe:	48 8b b4 07 f0 00 00 	mov    0xf0(%rdi,%rax,1),%rsi
     d05:	00 
      if (!__f)
     d06:	48 85 f6             	test   %rsi,%rsi
     d09:	0f 84 62 f5 ff ff    	je     271 <_Z17measure_sqrt_timeILm2EEvv+0x271>
     d0f:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
     d13:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     d19:	c5 fc 10 54 24 40    	vmovups 0x40(%rsp),%ymm2
     d1f:	0f 84 3e 06 00 00    	je     1363 <_Z17measure_sqrt_timeILm2EEvv+0x1363>
     d25:	0f be 56 43          	movsbl 0x43(%rsi),%edx
     d29:	48 89 f9             	mov    %rdi,%rcx
     d2c:	c5 fc 11 54 24 40    	vmovups %ymm2,0x40(%rsp)
     d32:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
     d38:	c5 f8 77             	vzeroupper 
     d3b:	e8 00 00 00 00       	callq  d40 <_Z17measure_sqrt_timeILm2EEvv+0xd40>
    { return __os.flush(); }
     d40:	48 89 c1             	mov    %rax,%rcx
     d43:	e8 00 00 00 00       	callq  d48 <_Z17measure_sqrt_timeILm2EEvv+0xd48>
	__ostream_insert(__out, __s,
     d48:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # d4f <_Z17measure_sqrt_timeILm2EEvv+0xd4f>
     d4f:	48 8d 15 d0 00 00 00 	lea    0xd0(%rip),%rdx        # e26 <_Z17measure_sqrt_timeILm2EEvv+0xe26>
     d56:	41 b8 2e 00 00 00    	mov    $0x2e,%r8d
     d5c:	e8 00 00 00 00       	callq  d61 <_Z17measure_sqrt_timeILm2EEvv+0xd61>
    { return flush(__os.put(__os.widen('\n'))); }
     d61:	49 8b 04 24          	mov    (%r12),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     d65:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     d69:	49 8b b4 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rsi
     d70:	00 
      if (!__f)
     d71:	48 85 f6             	test   %rsi,%rsi
     d74:	0f 84 f7 f4 ff ff    	je     271 <_Z17measure_sqrt_timeILm2EEvv+0x271>
     d7a:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
     d7e:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     d84:	c5 fc 10 54 24 40    	vmovups 0x40(%rsp),%ymm2
     d8a:	0f 84 e5 04 00 00    	je     1275 <_Z17measure_sqrt_timeILm2EEvv+0x1275>
     d90:	0f be 56 43          	movsbl 0x43(%rsi),%edx
     d94:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # d9b <_Z17measure_sqrt_timeILm2EEvv+0xd9b>
     d9b:	c5 fc 11 54 24 40    	vmovups %ymm2,0x40(%rsp)
     da1:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
     da7:	c5 f8 77             	vzeroupper 
     daa:	e8 00 00 00 00       	callq  daf <_Z17measure_sqrt_timeILm2EEvv+0xdaf>
    { return __os.flush(); }
     daf:	48 89 c1             	mov    %rax,%rcx
     db2:	e8 00 00 00 00       	callq  db7 <_Z17measure_sqrt_timeILm2EEvv+0xdb7>
       start = steady_clock::now();
     db7:	e8 00 00 00 00       	callq  dbc <_Z17measure_sqrt_timeILm2EEvv+0xdbc>
     dbc:	c5 fc 10 54 24 40    	vmovups 0x40(%rsp),%ymm2
     dc2:	48 89 c6             	mov    %rax,%rsi
     dc5:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
     dca:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     dd0:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
     dd5:	48 89 ea             	mov    %rbp,%rdx
     dd8:	4c 89 e8             	mov    %r13,%rax
     ddb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
void sqrt2(float * __restrict__ a, float * __restrict__ root) {
    // a zu int casten
    int * ai = reinterpret_cast<int *>(a) ;
    // initial berechnen
    int * initial = reinterpret_cast<int *>( root ) ;
    initial[0] = (1 << 29) + (ai[0] >> 1) - (1 << 22) - 0x4C000;
     de0:	c5 fa 6f 0a          	vmovdqu (%rdx),%xmm1
     de4:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
     de8:	48 83 ea 80          	sub    $0xffffffffffffff80,%rdx
     dec:	c5 fa 6f 6a a0       	vmovdqu -0x60(%rdx),%xmm5
     df1:	c4 e3 75 38 4a 90 01 	vinserti128 $0x1,-0x70(%rdx),%ymm1,%ymm1
     df8:	c5 fa 6f 42 c0       	vmovdqu -0x40(%rdx),%xmm0
     dfd:	c4 e3 55 38 6a b0 01 	vinserti128 $0x1,-0x50(%rdx),%ymm5,%ymm5
     e04:	c5 fa 6f 72 e0       	vmovdqu -0x20(%rdx),%xmm6
     e09:	c4 e3 7d 38 42 d0 01 	vinserti128 $0x1,-0x30(%rdx),%ymm0,%ymm0
     e10:	c4 e3 4d 38 72 f0 01 	vinserti128 $0x1,-0x10(%rdx),%ymm6,%ymm6
     e17:	c4 e3 75 46 e5 20    	vperm2i128 $0x20,%ymm5,%ymm1,%ymm4
     e1d:	c4 e3 75 46 cd 31    	vperm2i128 $0x31,%ymm5,%ymm1,%ymm1
     e23:	c5 fd 70 e4 d8       	vpshufd $0xd8,%ymm4,%ymm4
     e28:	c5 fd 70 c9 d8       	vpshufd $0xd8,%ymm1,%ymm1
     e2d:	c5 dd 6c e9          	vpunpcklqdq %ymm1,%ymm4,%ymm5
     e31:	c5 dd 6d e1          	vpunpckhqdq %ymm1,%ymm4,%ymm4
     e35:	c4 e3 7d 46 ce 20    	vperm2i128 $0x20,%ymm6,%ymm0,%ymm1
     e3b:	c4 e3 7d 46 c6 31    	vperm2i128 $0x31,%ymm6,%ymm0,%ymm0
     e41:	c5 fd 70 c9 d8       	vpshufd $0xd8,%ymm1,%ymm1
     e46:	c5 fd 70 c0 d8       	vpshufd $0xd8,%ymm0,%ymm0
     e4b:	c5 f5 6c f8          	vpunpcklqdq %ymm0,%ymm1,%ymm7
     e4f:	c5 f5 6d c0          	vpunpckhqdq %ymm0,%ymm1,%ymm0
     e53:	c4 e3 55 46 f7 20    	vperm2i128 $0x20,%ymm7,%ymm5,%ymm6
     e59:	c4 e3 55 46 cf 31    	vperm2i128 $0x31,%ymm7,%ymm5,%ymm1
     e5f:	c5 fd 70 f6 d8       	vpshufd $0xd8,%ymm6,%ymm6
     e64:	c5 fd 70 c9 d8       	vpshufd $0xd8,%ymm1,%ymm1
     e69:	c5 cd 6c e9          	vpunpcklqdq %ymm1,%ymm6,%ymm5
     e6d:	c5 cd 6d c9          	vpunpckhqdq %ymm1,%ymm6,%ymm1
     e71:	c4 e3 5d 46 f0 20    	vperm2i128 $0x20,%ymm0,%ymm4,%ymm6
     e77:	c4 e3 5d 46 c0 31    	vperm2i128 $0x31,%ymm0,%ymm4,%ymm0
     e7d:	c5 fd 70 f6 d8       	vpshufd $0xd8,%ymm6,%ymm6
     e82:	c5 fd 70 c0 d8       	vpshufd $0xd8,%ymm0,%ymm0
     e87:	c5 cd 6c e0          	vpunpcklqdq %ymm0,%ymm6,%ymm4
     e8b:	c5 cd 6d c0          	vpunpckhqdq %ymm0,%ymm6,%ymm0
     e8f:	c5 cd 72 e5 01       	vpsrad $0x1,%ymm5,%ymm6
     e94:	c5 cd fe f3          	vpaddd %ymm3,%ymm6,%ymm6
    initial[1] = (1 << 29) + (ai[1] >> 1) - (1 << 22) - 0x4C000;
    initial[2] = (1 << 29) + (ai[2] >> 1) - (1 << 22) - 0x4C000;
    initial[3] = (1 << 29) + (ai[3] >> 1) - (1 << 22) - 0x4C000;
    // Newton Verfahren durchfuehren
    for (unsigned int j = 0; j < LOOPS; j++) {
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
     e98:	c5 54 5e ce          	vdivps %ymm6,%ymm5,%ymm9
     e9c:	c5 34 58 ce          	vaddps %ymm6,%ymm9,%ymm9
    initial[1] = (1 << 29) + (ai[1] >> 1) - (1 << 22) - 0x4C000;
     ea0:	c5 cd 72 e4 01       	vpsrad $0x1,%ymm4,%ymm6
     ea5:	c5 cd fe f3          	vpaddd %ymm3,%ymm6,%ymm6
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
     ea9:	c5 dc 5e fe          	vdivps %ymm6,%ymm4,%ymm7
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
     ead:	c5 34 59 ca          	vmulps %ymm2,%ymm9,%ymm9
     eb1:	c4 c1 54 5e e9       	vdivps %ymm9,%ymm5,%ymm5
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
     eb6:	c5 c4 58 f6          	vaddps %ymm6,%ymm7,%ymm6
    initial[2] = (1 << 29) + (ai[2] >> 1) - (1 << 22) - 0x4C000;
     eba:	c5 c5 72 e1 01       	vpsrad $0x1,%ymm1,%ymm7
     ebf:	c5 c5 fe fb          	vpaddd %ymm3,%ymm7,%ymm7
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
     ec3:	c5 cc 59 f2          	vmulps %ymm2,%ymm6,%ymm6
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
     ec7:	c5 74 5e c7          	vdivps %ymm7,%ymm1,%ymm8
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
     ecb:	c4 c1 54 58 e9       	vaddps %ymm9,%ymm5,%ymm5
     ed0:	c5 d4 59 ea          	vmulps %ymm2,%ymm5,%ymm5
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
     ed4:	c5 dc 5e e6          	vdivps %ymm6,%ymm4,%ymm4
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
     ed8:	c5 3c 58 c7          	vaddps %ymm7,%ymm8,%ymm8
    initial[3] = (1 << 29) + (ai[3] >> 1) - (1 << 22) - 0x4C000;
     edc:	c5 c5 72 e0 01       	vpsrad $0x1,%ymm0,%ymm7
     ee1:	c5 c5 fe fb          	vpaddd %ymm3,%ymm7,%ymm7
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
     ee5:	c5 3c 59 c2          	vmulps %ymm2,%ymm8,%ymm8
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
     ee9:	c5 7c 5e d7          	vdivps %ymm7,%ymm0,%ymm10
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
     eed:	c5 dc 58 e6          	vaddps %ymm6,%ymm4,%ymm4
     ef1:	c5 dc 59 f2          	vmulps %ymm2,%ymm4,%ymm6
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
     ef5:	c4 c1 74 5e c8       	vdivps %ymm8,%ymm1,%ymm1
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
     efa:	c5 ac 58 ff          	vaddps %ymm7,%ymm10,%ymm7
     efe:	c5 c4 59 fa          	vmulps %ymm2,%ymm7,%ymm7
     f02:	c5 fc 5e c7          	vdivps %ymm7,%ymm0,%ymm0
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
     f06:	c4 c1 74 58 c8       	vaddps %ymm8,%ymm1,%ymm1
     f0b:	c5 f4 59 ca          	vmulps %ymm2,%ymm1,%ymm1
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
     f0f:	c5 d4 14 e1          	vunpcklps %ymm1,%ymm5,%ymm4
     f13:	c5 d4 15 c9          	vunpckhps %ymm1,%ymm5,%ymm1
     f17:	c5 fc 58 c7          	vaddps %ymm7,%ymm0,%ymm0
     f1b:	c4 e3 5d 18 f9 01    	vinsertf128 $0x1,%xmm1,%ymm4,%ymm7
     f21:	c4 e3 5d 06 c9 31    	vperm2f128 $0x31,%ymm1,%ymm4,%ymm1
     f27:	c5 fc 59 c2          	vmulps %ymm2,%ymm0,%ymm0
     f2b:	c5 cc 14 e8          	vunpcklps %ymm0,%ymm6,%ymm5
     f2f:	c5 cc 15 c0          	vunpckhps %ymm0,%ymm6,%ymm0
     f33:	c4 e3 55 18 f0 01    	vinsertf128 $0x1,%xmm0,%ymm5,%ymm6
     f39:	c4 e3 55 06 c0 31    	vperm2f128 $0x31,%ymm0,%ymm5,%ymm0
     f3f:	c5 c4 14 e6          	vunpcklps %ymm6,%ymm7,%ymm4
     f43:	c5 c4 15 ee          	vunpckhps %ymm6,%ymm7,%ymm5
     f47:	c4 e3 5d 18 f5 01    	vinsertf128 $0x1,%xmm5,%ymm4,%ymm6
     f4d:	c4 e3 5d 06 e5 31    	vperm2f128 $0x31,%ymm5,%ymm4,%ymm4
     f53:	c5 f8 11 70 80       	vmovups %xmm6,-0x80(%rax)
     f58:	c4 e3 7d 19 60 b0 01 	vextractf128 $0x1,%ymm4,-0x50(%rax)
     f5f:	c5 f8 11 60 a0       	vmovups %xmm4,-0x60(%rax)
     f64:	c5 f4 14 e0          	vunpcklps %ymm0,%ymm1,%ymm4
     f68:	c5 f4 15 c0          	vunpckhps %ymm0,%ymm1,%ymm0
     f6c:	c4 e3 7d 19 70 90 01 	vextractf128 $0x1,%ymm6,-0x70(%rax)
     f73:	c4 e3 5d 18 c8 01    	vinsertf128 $0x1,%xmm0,%ymm4,%ymm1
     f79:	c4 e3 5d 06 c0 31    	vperm2f128 $0x31,%ymm0,%ymm4,%ymm0
     f7f:	c5 f8 11 48 c0       	vmovups %xmm1,-0x40(%rax)
     f84:	c4 e3 7d 19 48 d0 01 	vextractf128 $0x1,%ymm1,-0x30(%rax)
     f8b:	c5 f8 11 40 e0       	vmovups %xmm0,-0x20(%rax)
     f90:	c4 e3 7d 19 40 f0 01 	vextractf128 $0x1,%ymm0,-0x10(%rax)
     f97:	48 39 d8             	cmp    %rbx,%rax
     f9a:	0f 85 40 fe ff ff    	jne    de0 <_Z17measure_sqrt_timeILm2EEvv+0xde0>
    time.reset_clock();

    std::cout << "sqrt2 (Newton method for sequence of 4 floats)" << std::endl;
    time.start_clock();
    for (int j = 0; j < LOOP; j++) {
     fa0:	83 e9 01             	sub    $0x1,%ecx
     fa3:	0f 85 2c fe ff ff    	jne    dd5 <_Z17measure_sqrt_timeILm2EEvv+0xdd5>
       end = steady_clock::now();
     fa9:	c5 f8 77             	vzeroupper 
     fac:	e8 00 00 00 00       	callq  fb1 <_Z17measure_sqrt_timeILm2EEvv+0xfb1>
      for (int i = 0; i < 4 * N; i += 4) {
        sqrt2<LOOPS>(floats + i, roots + i);
      }
    }    
    time.stop_clock();
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
     fb1:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     fb8:	9b c4 20 
     fbb:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
     fc0:	48 29 f0             	sub    %rsi,%rax
     fc3:	48 89 c1             	mov    %rax,%rcx
     fc6:	48 f7 ea             	imul   %rdx
     fc9:	48 c1 f9 3f          	sar    $0x3f,%rcx
     fcd:	48 c1 fa 07          	sar    $0x7,%rdx
     fd1:	48 29 ca             	sub    %rcx,%rdx
      { return _M_insert(__n); }
     fd4:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # fdb <_Z17measure_sqrt_timeILm2EEvv+0xfdb>
     fdb:	e8 00 00 00 00       	callq  fe0 <_Z17measure_sqrt_timeILm2EEvv+0xfe0>
	__ostream_insert(__out, __s,
     fe0:	48 8d 15 3c 00 00 00 	lea    0x3c(%rip),%rdx        # 1023 <_Z17measure_sqrt_timeILm2EEvv+0x1023>
      { return _M_insert(__n); }
     fe7:	48 89 c6             	mov    %rax,%rsi
	__ostream_insert(__out, __s,
     fea:	41 b8 05 00 00 00    	mov    $0x5,%r8d
     ff0:	48 89 c1             	mov    %rax,%rcx
     ff3:	e8 00 00 00 00       	callq  ff8 <_Z17measure_sqrt_timeILm2EEvv+0xff8>
    { return flush(__os.put(__os.widen('\n'))); }
     ff8:	48 8b 06             	mov    (%rsi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     ffb:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     fff:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
    1006:	00 
      if (!__f)
    1007:	48 85 db             	test   %rbx,%rbx
    100a:	0f 84 61 f2 ff ff    	je     271 <_Z17measure_sqrt_timeILm2EEvv+0x271>
    1010:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    1014:	0f 84 b6 02 00 00    	je     12d0 <_Z17measure_sqrt_timeILm2EEvv+0x12d0>
    101a:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    101e:	48 89 f1             	mov    %rsi,%rcx
    1021:	e8 00 00 00 00       	callq  1026 <_Z17measure_sqrt_timeILm2EEvv+0x1026>
    { return __os.flush(); }
    1026:	48 89 c1             	mov    %rax,%rcx
    1029:	e8 00 00 00 00       	callq  102e <_Z17measure_sqrt_timeILm2EEvv+0x102e>
       start = steady_clock::now();
    102e:	e8 00 00 00 00       	callq  1033 <_Z17measure_sqrt_timeILm2EEvv+0x1033>
    1033:	c5 f9 6f 25 c0 01 00 	vmovdqa 0x1c0(%rip),%xmm4        # 11fb <_Z17measure_sqrt_timeILm2EEvv+0x11fb>
    103a:	00 
    103b:	48 89 c6             	mov    %rax,%rsi
    103e:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
    1043:	ba e8 03 00 00       	mov    $0x3e8,%edx
    1048:	c5 f8 28 1d d0 01 00 	vmovaps 0x1d0(%rip),%xmm3        # 1220 <_Z17measure_sqrt_timeILm2EEvv+0x1220>
    104f:	00 
    1050:	31 c0                	xor    %eax,%eax
void v4sf_sqrt(v4sf *  __restrict__  a, v4sf *  __restrict__  root) {
    // a zu int casten
    v4si * ai = reinterpret_cast<v4si *>(a) ;
    // initial berechnen
    v4si * initial = reinterpret_cast<v4si *>( root ) ;
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
    1052:	c5 f9 6f 44 05 00    	vmovdqa 0x0(%rbp,%rax,1),%xmm0
    1058:	c5 f1 72 e0 01       	vpsrad $0x1,%xmm0,%xmm1
    105d:	c5 f1 fe d4          	vpaddd %xmm4,%xmm1,%xmm2
    // Newton Verfahren durchfuehren
    for (unsigned int j = 0; j < LOOPS; j++) {
        * root = 0.5 * ( * root + (* a / * root));
    1061:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
    1065:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
    1069:	c5 f0 59 cb          	vmulps %xmm3,%xmm1,%xmm1
    106d:	c5 f8 5e c1          	vdivps %xmm1,%xmm0,%xmm0
    1071:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
    1075:	c5 f8 59 c3          	vmulps %xmm3,%xmm0,%xmm0
    1079:	c4 c1 78 29 44 05 00 	vmovaps %xmm0,0x0(%r13,%rax,1)
    1080:	48 83 c0 10          	add    $0x10,%rax
    time.reset_clock();

    time.start_clock();
    for (int j = 0; j < LOOP; j++) {
      for (int i = 0; i < 4 * N; i += 4) {
    1084:	48 3d 00 35 0c 00    	cmp    $0xc3500,%rax
    108a:	75 c6                	jne    1052 <_Z17measure_sqrt_timeILm2EEvv+0x1052>
    for (int j = 0; j < LOOP; j++) {
    108c:	83 ea 01             	sub    $0x1,%edx
    108f:	75 bf                	jne    1050 <_Z17measure_sqrt_timeILm2EEvv+0x1050>
       end = steady_clock::now();
    1091:	e8 00 00 00 00       	callq  1096 <_Z17measure_sqrt_timeILm2EEvv+0x1096>
	__ostream_insert(__out, __s,
    1096:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 109d <_Z17measure_sqrt_timeILm2EEvv+0x109d>
    109d:	48 8d 15 00 01 00 00 	lea    0x100(%rip),%rdx        # 11a4 <_Z17measure_sqrt_timeILm2EEvv+0x11a4>
    10a4:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    10a9:	41 b8 34 00 00 00    	mov    $0x34,%r8d
    10af:	48 29 f0             	sub    %rsi,%rax
    10b2:	48 89 c3             	mov    %rax,%rbx
    10b5:	e8 00 00 00 00       	callq  10ba <_Z17measure_sqrt_timeILm2EEvv+0x10ba>
    { return flush(__os.put(__os.widen('\n'))); }
    10ba:	49 8b 04 24          	mov    (%r12),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    10be:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    10c2:	49 8b b4 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rsi
    10c9:	00 
      if (!__f)
    10ca:	48 85 f6             	test   %rsi,%rsi
    10cd:	0f 84 9e f1 ff ff    	je     271 <_Z17measure_sqrt_timeILm2EEvv+0x271>
    10d3:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
    10d7:	0f 84 55 02 00 00    	je     1332 <_Z17measure_sqrt_timeILm2EEvv+0x1332>
    10dd:	0f be 56 43          	movsbl 0x43(%rsi),%edx
    10e1:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 10e8 <_Z17measure_sqrt_timeILm2EEvv+0x10e8>
    10e8:	e8 00 00 00 00       	callq  10ed <_Z17measure_sqrt_timeILm2EEvv+0x10ed>
    { return __os.flush(); }
    10ed:	48 89 c1             	mov    %rax,%rcx
    10f0:	e8 00 00 00 00       	callq  10f5 <_Z17measure_sqrt_timeILm2EEvv+0x10f5>
      }
    }    
    time.stop_clock();

    std::cout << "sqrt3 (Newton method for sequence of 4 floats, SIMD)" << std::endl;
    std::cout << time.time_clock().count() / LOOP  << " [ns]" << std::endl;
    10f5:	48 89 d8             	mov    %rbx,%rax
    10f8:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
    10ff:	9b c4 20 
      { return _M_insert(__n); }
    1102:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1109 <_Z17measure_sqrt_timeILm2EEvv+0x1109>
    1109:	48 f7 ea             	imul   %rdx
    110c:	48 c1 fb 3f          	sar    $0x3f,%rbx
    1110:	48 c1 fa 07          	sar    $0x7,%rdx
    1114:	48 29 da             	sub    %rbx,%rdx
    1117:	e8 00 00 00 00       	callq  111c <_Z17measure_sqrt_timeILm2EEvv+0x111c>
	__ostream_insert(__out, __s,
    111c:	48 8d 15 3c 00 00 00 	lea    0x3c(%rip),%rdx        # 115f <_Z17measure_sqrt_timeILm2EEvv+0x115f>
      { return _M_insert(__n); }
    1123:	48 89 c6             	mov    %rax,%rsi
	__ostream_insert(__out, __s,
    1126:	41 b8 05 00 00 00    	mov    $0x5,%r8d
    112c:	48 89 c1             	mov    %rax,%rcx
    112f:	e8 00 00 00 00       	callq  1134 <_Z17measure_sqrt_timeILm2EEvv+0x1134>
    { return flush(__os.put(__os.widen('\n'))); }
    1134:	48 8b 06             	mov    (%rsi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    1137:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    113b:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
    1142:	00 
      if (!__f)
    1143:	48 85 db             	test   %rbx,%rbx
    1146:	0f 84 25 f1 ff ff    	je     271 <_Z17measure_sqrt_timeILm2EEvv+0x271>
    114c:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    1150:	0f 84 ab 01 00 00    	je     1301 <_Z17measure_sqrt_timeILm2EEvv+0x1301>
    1156:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    115a:	48 89 f1             	mov    %rsi,%rcx
    115d:	e8 00 00 00 00       	callq  1162 <_Z17measure_sqrt_timeILm2EEvv+0x1162>
    1162:	90                   	nop
    time.reset_clock();
}
    1163:	c5 f8 28 b4 24 80 6a 	vmovaps 0x186a80(%rsp),%xmm6
    116a:	18 00 
    { return __os.flush(); }
    116c:	48 89 c1             	mov    %rax,%rcx
    116f:	c5 f8 28 bc 24 90 6a 	vmovaps 0x186a90(%rsp),%xmm7
    1176:	18 00 
    1178:	c5 78 28 84 24 a0 6a 	vmovaps 0x186aa0(%rsp),%xmm8
    117f:	18 00 
    1181:	c5 78 28 8c 24 b0 6a 	vmovaps 0x186ab0(%rsp),%xmm9
    1188:	18 00 
    118a:	c5 78 28 94 24 c0 6a 	vmovaps 0x186ac0(%rsp),%xmm10
    1191:	18 00 
    1193:	48 81 c4 d8 6a 18 00 	add    $0x186ad8,%rsp
    119a:	5b                   	pop    %rbx
    119b:	5e                   	pop    %rsi
    119c:	5f                   	pop    %rdi
    119d:	5d                   	pop    %rbp
    119e:	41 5c                	pop    %r12
    11a0:	41 5d                	pop    %r13
    11a2:	41 5e                	pop    %r14
    11a4:	41 5f                	pop    %r15
    11a6:	e9 00 00 00 00       	jmpq   11ab <_Z17measure_sqrt_timeILm2EEvv+0x11ab>
    11ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
          roots[i + k] = sqrt(floats[i + k]);
    11b0:	e8 00 00 00 00       	callq  11b5 <_Z17measure_sqrt_timeILm2EEvv+0x11b5>
    11b5:	e9 5d f0 ff ff       	jmpq   217 <_Z17measure_sqrt_timeILm2EEvv+0x217>
    11ba:	e8 00 00 00 00       	callq  11bf <_Z17measure_sqrt_timeILm2EEvv+0x11bf>
    11bf:	e9 2f f0 ff ff       	jmpq   1f3 <_Z17measure_sqrt_timeILm2EEvv+0x1f3>
	this->_M_widen_init();
    11c4:	48 89 d9             	mov    %rbx,%rcx
    11c7:	e8 00 00 00 00       	callq  11cc <_Z17measure_sqrt_timeILm2EEvv+0x11cc>
	return this->do_widen(__c);
    11cc:	48 8b 03             	mov    (%rbx),%rax
    11cf:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 11d6 <_Z17measure_sqrt_timeILm2EEvv+0x11d6>
    11d6:	ba 0a 00 00 00       	mov    $0xa,%edx
    11db:	48 8b 40 30          	mov    0x30(%rax),%rax
    11df:	48 39 c8             	cmp    %rcx,%rax
    11e2:	0f 84 25 ef ff ff    	je     10d <_Z17measure_sqrt_timeILm2EEvv+0x10d>
    11e8:	48 89 d9             	mov    %rbx,%rcx
    11eb:	ff d0                	callq  *%rax
    11ed:	0f be d0             	movsbl %al,%edx
    11f0:	e9 18 ef ff ff       	jmpq   10d <_Z17measure_sqrt_timeILm2EEvv+0x10d>
	this->_M_widen_init();
    11f5:	48 89 d9             	mov    %rbx,%rcx
    11f8:	e8 00 00 00 00       	callq  11fd <_Z17measure_sqrt_timeILm2EEvv+0x11fd>
	return this->do_widen(__c);
    11fd:	48 8b 03             	mov    (%rbx),%rax
    1200:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1207 <_Z17measure_sqrt_timeILm2EEvv+0x1207>
    1207:	ba 0a 00 00 00       	mov    $0xa,%edx
    120c:	48 8b 40 30          	mov    0x30(%rax),%rax
    1210:	48 39 c8             	cmp    %rcx,%rax
    1213:	0f 84 7c ee ff ff    	je     95 <_Z17measure_sqrt_timeILm2EEvv+0x95>
    1219:	48 89 d9             	mov    %rbx,%rcx
    121c:	ff d0                	callq  *%rax
    121e:	0f be d0             	movsbl %al,%edx
    1221:	e9 6f ee ff ff       	jmpq   95 <_Z17measure_sqrt_timeILm2EEvv+0x95>
	this->_M_widen_init();
    1226:	48 89 d9             	mov    %rbx,%rcx
    1229:	e8 00 00 00 00       	callq  122e <_Z17measure_sqrt_timeILm2EEvv+0x122e>
	return this->do_widen(__c);
    122e:	48 8b 03             	mov    (%rbx),%rax
    1231:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1238 <_Z17measure_sqrt_timeILm2EEvv+0x1238>
    1238:	ba 0a 00 00 00       	mov    $0xa,%edx
    123d:	48 8b 40 30          	mov    0x30(%rax),%rax
    1241:	48 39 c8             	cmp    %rcx,%rax
    1244:	0f 84 47 ef ff ff    	je     191 <_Z17measure_sqrt_timeILm2EEvv+0x191>
    124a:	48 89 d9             	mov    %rbx,%rcx
    124d:	ff d0                	callq  *%rax
    124f:	0f be d0             	movsbl %al,%edx
    1252:	e9 3a ef ff ff       	jmpq   191 <_Z17measure_sqrt_timeILm2EEvv+0x191>
        roots[i] = sqrt1<LOOPS>(floats + i);
    1257:	ba 3a 0d 03 00       	mov    $0x30d3a,%edx
      for (int i = 0; i < 4 * N; i++) {
    125c:	b8 06 00 00 00       	mov    $0x6,%eax
    1261:	e9 9c f3 ff ff       	jmpq   602 <_Z17measure_sqrt_timeILm2EEvv+0x602>
        roots[i] = sqrt1<LOOPS>(floats + i);
    1266:	ba 3b 0d 03 00       	mov    $0x30d3b,%edx
      for (int i = 0; i < 4 * N; i++) {
    126b:	b8 05 00 00 00       	mov    $0x5,%eax
    1270:	e9 8d f3 ff ff       	jmpq   602 <_Z17measure_sqrt_timeILm2EEvv+0x602>
	this->_M_widen_init();
    1275:	48 89 f1             	mov    %rsi,%rcx
    1278:	c5 fc 11 54 24 40    	vmovups %ymm2,0x40(%rsp)
    127e:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
    1284:	c5 f8 77             	vzeroupper 
    1287:	e8 00 00 00 00       	callq  128c <_Z17measure_sqrt_timeILm2EEvv+0x128c>
	return this->do_widen(__c);
    128c:	48 8b 06             	mov    (%rsi),%rax
    128f:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1296 <_Z17measure_sqrt_timeILm2EEvv+0x1296>
    1296:	ba 0a 00 00 00       	mov    $0xa,%edx
    129b:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    12a1:	c5 fc 10 54 24 40    	vmovups 0x40(%rsp),%ymm2
    12a7:	48 8b 40 30          	mov    0x30(%rax),%rax
    12ab:	48 39 c8             	cmp    %rcx,%rax
    12ae:	0f 84 e0 fa ff ff    	je     d94 <_Z17measure_sqrt_timeILm2EEvv+0xd94>
    12b4:	48 89 f1             	mov    %rsi,%rcx
    12b7:	c5 f8 77             	vzeroupper 
    12ba:	ff d0                	callq  *%rax
    12bc:	c5 fc 10 54 24 40    	vmovups 0x40(%rsp),%ymm2
    12c2:	0f be d0             	movsbl %al,%edx
    12c5:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    12cb:	e9 c4 fa ff ff       	jmpq   d94 <_Z17measure_sqrt_timeILm2EEvv+0xd94>
	this->_M_widen_init();
    12d0:	48 89 d9             	mov    %rbx,%rcx
    12d3:	e8 00 00 00 00       	callq  12d8 <_Z17measure_sqrt_timeILm2EEvv+0x12d8>
	return this->do_widen(__c);
    12d8:	48 8b 03             	mov    (%rbx),%rax
    12db:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 12e2 <_Z17measure_sqrt_timeILm2EEvv+0x12e2>
    12e2:	ba 0a 00 00 00       	mov    $0xa,%edx
    12e7:	48 8b 40 30          	mov    0x30(%rax),%rax
    12eb:	48 39 c8             	cmp    %rcx,%rax
    12ee:	0f 84 2a fd ff ff    	je     101e <_Z17measure_sqrt_timeILm2EEvv+0x101e>
    12f4:	48 89 d9             	mov    %rbx,%rcx
    12f7:	ff d0                	callq  *%rax
    12f9:	0f be d0             	movsbl %al,%edx
    12fc:	e9 1d fd ff ff       	jmpq   101e <_Z17measure_sqrt_timeILm2EEvv+0x101e>
	this->_M_widen_init();
    1301:	48 89 d9             	mov    %rbx,%rcx
    1304:	e8 00 00 00 00       	callq  1309 <_Z17measure_sqrt_timeILm2EEvv+0x1309>
	return this->do_widen(__c);
    1309:	48 8b 03             	mov    (%rbx),%rax
    130c:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1313 <_Z17measure_sqrt_timeILm2EEvv+0x1313>
    1313:	ba 0a 00 00 00       	mov    $0xa,%edx
    1318:	48 8b 40 30          	mov    0x30(%rax),%rax
    131c:	48 39 c8             	cmp    %rcx,%rax
    131f:	0f 84 35 fe ff ff    	je     115a <_Z17measure_sqrt_timeILm2EEvv+0x115a>
    1325:	48 89 d9             	mov    %rbx,%rcx
    1328:	ff d0                	callq  *%rax
    132a:	0f be d0             	movsbl %al,%edx
    132d:	e9 28 fe ff ff       	jmpq   115a <_Z17measure_sqrt_timeILm2EEvv+0x115a>
	this->_M_widen_init();
    1332:	48 89 f1             	mov    %rsi,%rcx
    1335:	e8 00 00 00 00       	callq  133a <_Z17measure_sqrt_timeILm2EEvv+0x133a>
	return this->do_widen(__c);
    133a:	48 8b 06             	mov    (%rsi),%rax
    133d:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1344 <_Z17measure_sqrt_timeILm2EEvv+0x1344>
    1344:	ba 0a 00 00 00       	mov    $0xa,%edx
    1349:	48 8b 40 30          	mov    0x30(%rax),%rax
    134d:	48 39 c8             	cmp    %rcx,%rax
    1350:	0f 84 8b fd ff ff    	je     10e1 <_Z17measure_sqrt_timeILm2EEvv+0x10e1>
    1356:	48 89 f1             	mov    %rsi,%rcx
    1359:	ff d0                	callq  *%rax
    135b:	0f be d0             	movsbl %al,%edx
    135e:	e9 7e fd ff ff       	jmpq   10e1 <_Z17measure_sqrt_timeILm2EEvv+0x10e1>
	this->_M_widen_init();
    1363:	48 89 f1             	mov    %rsi,%rcx
    1366:	c5 fc 11 54 24 40    	vmovups %ymm2,0x40(%rsp)
    136c:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
    1372:	c5 f8 77             	vzeroupper 
    1375:	e8 00 00 00 00       	callq  137a <_Z17measure_sqrt_timeILm2EEvv+0x137a>
	return this->do_widen(__c);
    137a:	48 8b 06             	mov    (%rsi),%rax
    137d:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1384 <_Z17measure_sqrt_timeILm2EEvv+0x1384>
    1384:	ba 0a 00 00 00       	mov    $0xa,%edx
    1389:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    138f:	c5 fc 10 54 24 40    	vmovups 0x40(%rsp),%ymm2
    1395:	48 8b 40 30          	mov    0x30(%rax),%rax
    1399:	48 39 c8             	cmp    %rcx,%rax
    139c:	0f 84 87 f9 ff ff    	je     d29 <_Z17measure_sqrt_timeILm2EEvv+0xd29>
    13a2:	48 89 f1             	mov    %rsi,%rcx
    13a5:	c5 f8 77             	vzeroupper 
    13a8:	ff d0                	callq  *%rax
    13aa:	c5 fc 10 54 24 40    	vmovups 0x40(%rsp),%ymm2
    13b0:	0f be d0             	movsbl %al,%edx
    13b3:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    13b9:	e9 6b f9 ff ff       	jmpq   d29 <_Z17measure_sqrt_timeILm2EEvv+0xd29>
	this->_M_widen_init();
    13be:	48 89 d9             	mov    %rbx,%rcx
    13c1:	c5 fc 11 54 24 40    	vmovups %ymm2,0x40(%rsp)
    13c7:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
    13cd:	c5 f8 77             	vzeroupper 
    13d0:	e8 00 00 00 00       	callq  13d5 <_Z17measure_sqrt_timeILm2EEvv+0x13d5>
	return this->do_widen(__c);
    13d5:	48 8b 03             	mov    (%rbx),%rax
    13d8:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 13df <_Z17measure_sqrt_timeILm2EEvv+0x13df>
    13df:	ba 0a 00 00 00       	mov    $0xa,%edx
    13e4:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    13ea:	c5 fc 10 54 24 40    	vmovups 0x40(%rsp),%ymm2
    13f0:	48 8b 40 30          	mov    0x30(%rax),%rax
    13f4:	48 39 c8             	cmp    %rcx,%rax
    13f7:	0f 84 8c f6 ff ff    	je     a89 <_Z17measure_sqrt_timeILm2EEvv+0xa89>
    13fd:	48 89 d9             	mov    %rbx,%rcx
    1400:	c5 f8 77             	vzeroupper 
    1403:	ff d0                	callq  *%rax
    1405:	c5 fc 10 54 24 40    	vmovups 0x40(%rsp),%ymm2
    140b:	0f be d0             	movsbl %al,%edx
    140e:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    1414:	e9 70 f6 ff ff       	jmpq   a89 <_Z17measure_sqrt_timeILm2EEvv+0xa89>
	this->_M_widen_init();
    1419:	48 89 d9             	mov    %rbx,%rcx
    141c:	c5 fc 11 54 24 40    	vmovups %ymm2,0x40(%rsp)
    1422:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
    1428:	c5 f8 77             	vzeroupper 
    142b:	e8 00 00 00 00       	callq  1430 <_Z17measure_sqrt_timeILm2EEvv+0x1430>
	return this->do_widen(__c);
    1430:	48 8b 03             	mov    (%rbx),%rax
    1433:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 143a <_Z17measure_sqrt_timeILm2EEvv+0x143a>
    143a:	ba 0a 00 00 00       	mov    $0xa,%edx
    143f:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    1445:	c5 fc 10 54 24 40    	vmovups 0x40(%rsp),%ymm2
    144b:	48 8b 40 30          	mov    0x30(%rax),%rax
    144f:	48 39 c8             	cmp    %rcx,%rax
    1452:	0f 84 c6 f5 ff ff    	je     a1e <_Z17measure_sqrt_timeILm2EEvv+0xa1e>
    1458:	48 89 d9             	mov    %rbx,%rcx
    145b:	c5 f8 77             	vzeroupper 
    145e:	ff d0                	callq  *%rax
    1460:	c5 fc 10 54 24 40    	vmovups 0x40(%rsp),%ymm2
    1466:	0f be d0             	movsbl %al,%edx
    1469:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    146f:	e9 aa f5 ff ff       	jmpq   a1e <_Z17measure_sqrt_timeILm2EEvv+0xa1e>
	this->_M_widen_init();
    1474:	48 89 d9             	mov    %rbx,%rcx
    1477:	c5 fc 11 54 24 40    	vmovups %ymm2,0x40(%rsp)
    147d:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
    1483:	c5 f8 77             	vzeroupper 
    1486:	e8 00 00 00 00       	callq  148b <_Z17measure_sqrt_timeILm2EEvv+0x148b>
	return this->do_widen(__c);
    148b:	48 8b 03             	mov    (%rbx),%rax
    148e:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1495 <_Z17measure_sqrt_timeILm2EEvv+0x1495>
    1495:	ba 0a 00 00 00       	mov    $0xa,%edx
    149a:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    14a0:	c5 fc 10 54 24 40    	vmovups 0x40(%rsp),%ymm2
    14a6:	48 8b 40 30          	mov    0x30(%rax),%rax
    14aa:	48 39 c8             	cmp    %rcx,%rax
    14ad:	0f 84 b8 f4 ff ff    	je     96b <_Z17measure_sqrt_timeILm2EEvv+0x96b>
    14b3:	48 89 d9             	mov    %rbx,%rcx
    14b6:	c5 f8 77             	vzeroupper 
    14b9:	ff d0                	callq  *%rax
    14bb:	c5 fc 10 54 24 40    	vmovups 0x40(%rsp),%ymm2
    14c1:	0f be d0             	movsbl %al,%edx
    14c4:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    14ca:	e9 9c f4 ff ff       	jmpq   96b <_Z17measure_sqrt_timeILm2EEvv+0x96b>
        roots[i] = sqrt1<LOOPS>(floats + i);
    14cf:	ba 3c 0d 03 00       	mov    $0x30d3c,%edx
      for (int i = 0; i < 4 * N; i++) {
    14d4:	b8 04 00 00 00       	mov    $0x4,%eax
    14d9:	e9 24 f1 ff ff       	jmpq   602 <_Z17measure_sqrt_timeILm2EEvv+0x602>
        roots[i] = sqrt1<LOOPS>(floats + i);
    14de:	ba 3d 0d 03 00       	mov    $0x30d3d,%edx
      for (int i = 0; i < 4 * N; i++) {
    14e3:	b8 03 00 00 00       	mov    $0x3,%eax
    14e8:	e9 15 f1 ff ff       	jmpq   602 <_Z17measure_sqrt_timeILm2EEvv+0x602>
        roots[i] = sqrt1<LOOPS>(floats + i);
    14ed:	ba 3e 0d 03 00       	mov    $0x30d3e,%edx
      for (int i = 0; i < 4 * N; i++) {
    14f2:	b8 02 00 00 00       	mov    $0x2,%eax
    14f7:	e9 06 f1 ff ff       	jmpq   602 <_Z17measure_sqrt_timeILm2EEvv+0x602>
        roots[i] = sqrt1<LOOPS>(floats + i);
    14fc:	ba 3f 0d 03 00       	mov    $0x30d3f,%edx
      for (int i = 0; i < 4 * N; i++) {
    1501:	b8 01 00 00 00       	mov    $0x1,%eax
    1506:	e9 f7 f0 ff ff       	jmpq   602 <_Z17measure_sqrt_timeILm2EEvv+0x602>
    150b:	ba 40 0d 03 00       	mov    $0x30d40,%edx
    1510:	31 c0                	xor    %eax,%eax
    1512:	e9 eb f0 ff ff       	jmpq   602 <_Z17measure_sqrt_timeILm2EEvv+0x602>
	this->_M_widen_init();
    1517:	48 89 d9             	mov    %rbx,%rcx
    151a:	e8 00 00 00 00       	callq  151f <_Z17measure_sqrt_timeILm2EEvv+0x151f>
	return this->do_widen(__c);
    151f:	48 8b 03             	mov    (%rbx),%rax
    1522:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1529 <_Z17measure_sqrt_timeILm2EEvv+0x1529>
    1529:	ba 0a 00 00 00       	mov    $0xa,%edx
    152e:	48 8b 40 30          	mov    0x30(%rax),%rax
    1532:	48 39 c8             	cmp    %rcx,%rax
    1535:	0f 84 30 ee ff ff    	je     36b <_Z17measure_sqrt_timeILm2EEvv+0x36b>
    153b:	48 89 d9             	mov    %rbx,%rcx
    153e:	ff d0                	callq  *%rax
    1540:	0f be d0             	movsbl %al,%edx
    1543:	e9 23 ee ff ff       	jmpq   36b <_Z17measure_sqrt_timeILm2EEvv+0x36b>
	this->_M_widen_init();
    1548:	48 89 d9             	mov    %rbx,%rcx
    154b:	e8 00 00 00 00       	callq  1550 <_Z17measure_sqrt_timeILm2EEvv+0x1550>
	return this->do_widen(__c);
    1550:	48 8b 03             	mov    (%rbx),%rax
    1553:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 155a <_Z17measure_sqrt_timeILm2EEvv+0x155a>
    155a:	ba 0a 00 00 00       	mov    $0xa,%edx
    155f:	48 8b 40 30          	mov    0x30(%rax),%rax
    1563:	48 39 c8             	cmp    %rcx,%rax
    1566:	0f 84 af ed ff ff    	je     31b <_Z17measure_sqrt_timeILm2EEvv+0x31b>
    156c:	48 89 d9             	mov    %rbx,%rcx
    156f:	ff d0                	callq  *%rax
    1571:	0f be d0             	movsbl %al,%edx
    1574:	e9 a2 ed ff ff       	jmpq   31b <_Z17measure_sqrt_timeILm2EEvv+0x31b>
    1579:	90                   	nop
    157a:	90                   	nop
    157b:	90                   	nop
    157c:	90                   	nop
    157d:	90                   	nop
    157e:	90                   	nop
    157f:	90                   	nop

Disassembly of section .text$_Z17measure_sqrt_timeILm3EEvv:

0000000000000000 <_Z17measure_sqrt_timeILm3EEvv>:
void measure_sqrt_time(void) {
       0:	41 57                	push   %r15
       2:	41 56                	push   %r14
       4:	b8 d8 6a 18 00       	mov    $0x186ad8,%eax
       9:	41 55                	push   %r13
       b:	41 54                	push   %r12
       d:	55                   	push   %rbp
       e:	57                   	push   %rdi
       f:	56                   	push   %rsi
      10:	53                   	push   %rbx
      11:	e8 00 00 00 00       	callq  16 <_Z17measure_sqrt_timeILm3EEvv+0x16>
      16:	48 29 c4             	sub    %rax,%rsp
      19:	c5 f8 29 b4 24 80 6a 	vmovaps %xmm6,0x186a80(%rsp)
      20:	18 00 
      22:	c5 f8 29 bc 24 90 6a 	vmovaps %xmm7,0x186a90(%rsp)
      29:	18 00 
      2b:	c5 78 29 84 24 a0 6a 	vmovaps %xmm8,0x186aa0(%rsp)
      32:	18 00 
      34:	c5 78 29 8c 24 b0 6a 	vmovaps %xmm9,0x186ab0(%rsp)
      3b:	18 00 
      3d:	c5 78 29 94 24 c0 6a 	vmovaps %xmm10,0x186ac0(%rsp)
      44:	18 00 
      { return _M_insert(__n); }
      46:	ba 03 00 00 00       	mov    $0x3,%edx
      4b:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 52 <_Z17measure_sqrt_timeILm3EEvv+0x52>
      52:	e8 00 00 00 00       	callq  57 <_Z17measure_sqrt_timeILm3EEvv+0x57>
	__ostream_insert(__out, __s,
      57:	48 8d 15 08 00 00 00 	lea    0x8(%rip),%rdx        # 66 <_Z17measure_sqrt_timeILm3EEvv+0x66>
      { return _M_insert(__n); }
      5e:	48 89 c6             	mov    %rax,%rsi
	__ostream_insert(__out, __s,
      61:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
      67:	48 89 c1             	mov    %rax,%rcx
      6a:	e8 00 00 00 00       	callq  6f <_Z17measure_sqrt_timeILm3EEvv+0x6f>
    { return flush(__os.put(__os.widen('\n'))); }
      6f:	48 8b 06             	mov    (%rsi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
      72:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      76:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
      7d:	00 
      if (!__f)
      7e:	48 85 db             	test   %rbx,%rbx
      81:	0f 84 ea 01 00 00    	je     271 <_Z17measure_sqrt_timeILm3EEvv+0x271>
	if (_M_widen_ok)
      87:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
      8b:	0f 84 88 12 00 00    	je     1319 <_Z17measure_sqrt_timeILm3EEvv+0x1319>
      91:	0f be 53 43          	movsbl 0x43(%rbx),%edx
      95:	48 89 f1             	mov    %rsi,%rcx
      98:	e8 00 00 00 00       	callq  9d <_Z17measure_sqrt_timeILm3EEvv+0x9d>
    { return __os.flush(); }
      9d:	48 89 c1             	mov    %rax,%rcx
      a0:	e8 00 00 00 00       	callq  a5 <_Z17measure_sqrt_timeILm3EEvv+0xa5>
	__ostream_insert(__out, __s,
      a5:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # ac <_Z17measure_sqrt_timeILm3EEvv+0xac>
      ac:	48 8d 15 14 00 00 00 	lea    0x14(%rip),%rdx        # c7 <_Z17measure_sqrt_timeILm3EEvv+0xc7>
      b3:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
      b9:	e8 00 00 00 00       	callq  be <_Z17measure_sqrt_timeILm3EEvv+0xbe>
    std::cout << "generating " << (4 * N) << " random values..." << std::endl;
      be:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # c5 <_Z17measure_sqrt_timeILm3EEvv+0xc5>
      c5:	ba 40 0d 03 00       	mov    $0x30d40,%edx
      ca:	e8 00 00 00 00       	callq  cf <_Z17measure_sqrt_timeILm3EEvv+0xcf>
      cf:	48 8d 15 20 00 00 00 	lea    0x20(%rip),%rdx        # f6 <_Z17measure_sqrt_timeILm3EEvv+0xf6>
      d6:	48 89 c6             	mov    %rax,%rsi
      d9:	41 b8 11 00 00 00    	mov    $0x11,%r8d
      df:	48 89 c1             	mov    %rax,%rcx
      e2:	e8 00 00 00 00       	callq  e7 <_Z17measure_sqrt_timeILm3EEvv+0xe7>
    { return flush(__os.put(__os.widen('\n'))); }
      e7:	48 8b 06             	mov    (%rsi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
      ea:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      ee:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
      f5:	00 
      if (!__f)
      f6:	48 85 db             	test   %rbx,%rbx
      f9:	0f 84 72 01 00 00    	je     271 <_Z17measure_sqrt_timeILm3EEvv+0x271>
      ff:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     103:	0f 84 df 11 00 00    	je     12e8 <_Z17measure_sqrt_timeILm3EEvv+0x12e8>
     109:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     10d:	4c 8d a4 24 80 00 00 	lea    0x80(%rsp),%r12
     114:	00 
     115:	48 89 f1             	mov    %rsi,%rcx
     118:	e8 00 00 00 00       	callq  11d <_Z17measure_sqrt_timeILm3EEvv+0x11d>
     11d:	49 8d 9c 24 00 35 0c 	lea    0xc3500(%r12),%rbx
     124:	00 
    { return __os.flush(); }
     125:	48 89 c1             	mov    %rax,%rcx
     128:	4c 89 e5             	mov    %r12,%rbp
     12b:	e8 00 00 00 00       	callq  130 <_Z17measure_sqrt_timeILm3EEvv+0x130>
       floats[i] = random_double();
     130:	e8 00 00 00 00       	callq  135 <_Z17measure_sqrt_timeILm3EEvv+0x135>
     135:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
     139:	48 83 c5 04          	add    $0x4,%rbp
     13d:	c5 d3 5a e8          	vcvtsd2ss %xmm0,%xmm5,%xmm5
     141:	c5 fa 11 6d fc       	vmovss %xmm5,-0x4(%rbp)
    for (int i = 0; i < 4 * N; i++) {
     146:	48 39 dd             	cmp    %rbx,%rbp
     149:	75 e5                	jne    130 <_Z17measure_sqrt_timeILm3EEvv+0x130>
	__ostream_insert(__out, __s,
     14b:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 152 <_Z17measure_sqrt_timeILm3EEvv+0x152>
     152:	48 8d 15 32 00 00 00 	lea    0x32(%rip),%rdx        # 18b <_Z17measure_sqrt_timeILm3EEvv+0x18b>
     159:	41 b8 09 00 00 00    	mov    $0x9,%r8d
     15f:	e8 00 00 00 00       	callq  164 <_Z17measure_sqrt_timeILm3EEvv+0x164>
    { return flush(__os.put(__os.widen('\n'))); }
     164:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 16b <_Z17measure_sqrt_timeILm3EEvv+0x16b>
     16b:	48 8b 07             	mov    (%rdi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     16e:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     172:	48 8b 9c 07 f0 00 00 	mov    0xf0(%rdi,%rax,1),%rbx
     179:	00 
      if (!__f)
     17a:	48 85 db             	test   %rbx,%rbx
     17d:	0f 84 ee 00 00 00    	je     271 <_Z17measure_sqrt_timeILm3EEvv+0x271>
     183:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     187:	0f 84 bd 11 00 00    	je     134a <_Z17measure_sqrt_timeILm3EEvv+0x134a>
     18d:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     191:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 198 <_Z17measure_sqrt_timeILm3EEvv+0x198>
     198:	4c 8d ac 24 80 35 0c 	lea    0xc3580(%rsp),%r13
     19f:	00 
       start = steady_clock::now();
     1a0:	41 bf e8 03 00 00    	mov    $0x3e8,%r15d
     1a6:	e8 00 00 00 00       	callq  1ab <_Z17measure_sqrt_timeILm3EEvv+0x1ab>
    { return __os.flush(); }
     1ab:	48 89 c1             	mov    %rax,%rcx
     1ae:	e8 00 00 00 00       	callq  1b3 <_Z17measure_sqrt_timeILm3EEvv+0x1b3>
     1b3:	e8 00 00 00 00       	callq  1b8 <_Z17measure_sqrt_timeILm3EEvv+0x1b8>
     1b8:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
     1bc:	49 89 c6             	mov    %rax,%r14
     1bf:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
     1c4:	4c 89 ee             	mov    %r13,%rsi
     1c7:	4c 89 e3             	mov    %r12,%rbx
     1ca:	e9 82 00 00 00       	jmpq   251 <_Z17measure_sqrt_timeILm3EEvv+0x251>
     1cf:	90                   	nop
          roots[i + k] = sqrt(floats[i + k]);
     1d0:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     1d4:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
     1d8:	c5 fa 5a 43 04       	vcvtss2sd 0x4(%rbx),%xmm0,%xmm0
     1dd:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
     1e1:	c5 fa 11 1e          	vmovss %xmm3,(%rsi)
     1e5:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     1e9:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     1ed:	0f 87 eb 10 00 00    	ja     12de <_Z17measure_sqrt_timeILm3EEvv+0x12de>
     1f3:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     1f7:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
     1fb:	c5 fa 5a 43 08       	vcvtss2sd 0x8(%rbx),%xmm0,%xmm0
     200:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
     204:	c5 fa 11 5e 04       	vmovss %xmm3,0x4(%rsi)
     209:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     20d:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     211:	0f 87 bd 10 00 00    	ja     12d4 <_Z17measure_sqrt_timeILm3EEvv+0x12d4>
     217:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     21b:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
     21f:	c5 fa 5a 43 0c       	vcvtss2sd 0xc(%rbx),%xmm0,%xmm0
     224:	c5 d3 5a ef          	vcvtsd2ss %xmm7,%xmm5,%xmm5
     228:	c5 fa 11 6e 08       	vmovss %xmm5,0x8(%rsi)
     22d:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     231:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     235:	77 49                	ja     280 <_Z17measure_sqrt_timeILm3EEvv+0x280>
     237:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
     23b:	48 83 c3 10          	add    $0x10,%rbx
     23f:	48 83 c6 10          	add    $0x10,%rsi
     243:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
     247:	c5 fa 11 5e fc       	vmovss %xmm3,-0x4(%rsi)
      for (int i = 0; i < 4 * N; i += 4) {
     24c:	48 39 eb             	cmp    %rbp,%rbx
     24f:	74 4e                	je     29f <_Z17measure_sqrt_timeILm3EEvv+0x29f>
          roots[i + k] = sqrt(floats[i + k]);
     251:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     255:	c5 fa 5a 03          	vcvtss2sd (%rbx),%xmm0,%xmm0
     259:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     25d:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     261:	0f 86 69 ff ff ff    	jbe    1d0 <_Z17measure_sqrt_timeILm3EEvv+0x1d0>
     267:	e8 00 00 00 00       	callq  26c <_Z17measure_sqrt_timeILm3EEvv+0x26c>
     26c:	e9 5f ff ff ff       	jmpq   1d0 <_Z17measure_sqrt_timeILm3EEvv+0x1d0>
	__throw_bad_cast();
     271:	e8 00 00 00 00       	callq  276 <_Z17measure_sqrt_timeILm3EEvv+0x276>
     276:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     27d:	00 00 00 
     280:	e8 00 00 00 00       	callq  285 <_Z17measure_sqrt_timeILm3EEvv+0x285>
     285:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
     289:	48 83 c3 10          	add    $0x10,%rbx
     28d:	48 83 c6 10          	add    $0x10,%rsi
     291:	c5 d3 5a ef          	vcvtsd2ss %xmm7,%xmm5,%xmm5
     295:	c5 fa 11 6e fc       	vmovss %xmm5,-0x4(%rsi)
      for (int i = 0; i < 4 * N; i += 4) {
     29a:	48 39 dd             	cmp    %rbx,%rbp
     29d:	75 b2                	jne    251 <_Z17measure_sqrt_timeILm3EEvv+0x251>
    for (int j = 0; j < LOOP; j++) {
     29f:	41 83 ef 01          	sub    $0x1,%r15d
     2a3:	0f 85 1b ff ff ff    	jne    1c4 <_Z17measure_sqrt_timeILm3EEvv+0x1c4>
       end = steady_clock::now();
     2a9:	e8 00 00 00 00       	callq  2ae <_Z17measure_sqrt_timeILm3EEvv+0x2ae>
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
     2ae:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     2b5:	9b c4 20 
     2b8:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
     2bd:	4c 29 f0             	sub    %r14,%rax
     2c0:	48 89 c1             	mov    %rax,%rcx
     2c3:	48 f7 ea             	imul   %rdx
     2c6:	48 c1 f9 3f          	sar    $0x3f,%rcx
     2ca:	48 c1 fa 07          	sar    $0x7,%rdx
     2ce:	48 29 ca             	sub    %rcx,%rdx
      { return _M_insert(__n); }
     2d1:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2d8 <_Z17measure_sqrt_timeILm3EEvv+0x2d8>
     2d8:	e8 00 00 00 00       	callq  2dd <_Z17measure_sqrt_timeILm3EEvv+0x2dd>
	__ostream_insert(__out, __s,
     2dd:	48 8d 15 3c 00 00 00 	lea    0x3c(%rip),%rdx        # 320 <_Z17measure_sqrt_timeILm3EEvv+0x320>
      { return _M_insert(__n); }
     2e4:	48 89 c6             	mov    %rax,%rsi
	__ostream_insert(__out, __s,
     2e7:	41 b8 05 00 00 00    	mov    $0x5,%r8d
     2ed:	48 89 c1             	mov    %rax,%rcx
     2f0:	e8 00 00 00 00       	callq  2f5 <_Z17measure_sqrt_timeILm3EEvv+0x2f5>
    { return flush(__os.put(__os.widen('\n'))); }
     2f5:	48 8b 06             	mov    (%rsi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     2f8:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     2fc:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
     303:	00 
      if (!__f)
     304:	48 85 db             	test   %rbx,%rbx
     307:	0f 84 64 ff ff ff    	je     271 <_Z17measure_sqrt_timeILm3EEvv+0x271>
     30d:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     311:	0f 84 9a 12 00 00    	je     15b1 <_Z17measure_sqrt_timeILm3EEvv+0x15b1>
     317:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     31b:	48 89 f1             	mov    %rsi,%rcx
     31e:	e8 00 00 00 00       	callq  323 <_Z17measure_sqrt_timeILm3EEvv+0x323>
    { return __os.flush(); }
     323:	48 89 c1             	mov    %rax,%rcx
     326:	e8 00 00 00 00       	callq  32b <_Z17measure_sqrt_timeILm3EEvv+0x32b>
	__ostream_insert(__out, __s,
     32b:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 332 <_Z17measure_sqrt_timeILm3EEvv+0x332>
     332:	48 8d 15 48 00 00 00 	lea    0x48(%rip),%rdx        # 381 <_Z17measure_sqrt_timeILm3EEvv+0x381>
     339:	41 b8 37 00 00 00    	mov    $0x37,%r8d
     33f:	e8 00 00 00 00       	callq  344 <_Z17measure_sqrt_timeILm3EEvv+0x344>
    { return flush(__os.put(__os.widen('\n'))); }
     344:	48 8b 07             	mov    (%rdi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     347:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     34b:	48 8b 9c 07 f0 00 00 	mov    0xf0(%rdi,%rax,1),%rbx
     352:	00 
      if (!__f)
     353:	48 85 db             	test   %rbx,%rbx
     356:	0f 84 15 ff ff ff    	je     271 <_Z17measure_sqrt_timeILm3EEvv+0x271>
     35c:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     360:	0f 84 5b 10 00 00    	je     13c1 <_Z17measure_sqrt_timeILm3EEvv+0x13c1>
     366:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     36a:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 371 <_Z17measure_sqrt_timeILm3EEvv+0x371>
       start = steady_clock::now();
     371:	bb e8 03 00 00       	mov    $0x3e8,%ebx
     376:	e8 00 00 00 00       	callq  37b <_Z17measure_sqrt_timeILm3EEvv+0x37b>
    { return __os.flush(); }
     37b:	48 89 c1             	mov    %rax,%rcx
     37e:	e8 00 00 00 00       	callq  383 <_Z17measure_sqrt_timeILm3EEvv+0x383>
     383:	e8 00 00 00 00       	callq  388 <_Z17measure_sqrt_timeILm3EEvv+0x388>
     388:	4d 89 e0             	mov    %r12,%r8
     38b:	41 bb 40 0d 03 00    	mov    $0x30d40,%r11d
     391:	c5 fd 6f 1d 80 01 00 	vmovdqa 0x180(%rip),%ymm3        # 519 <_Z17measure_sqrt_timeILm3EEvv+0x519>
     398:	00 
     399:	49 c1 e8 02          	shr    $0x2,%r8
        root = 0.5 * ( root + (* a / root));
     39d:	c5 fa 10 2d 68 01 00 	vmovss 0x168(%rip),%xmm5        # 50d <_Z17measure_sqrt_timeILm3EEvv+0x50d>
     3a4:	00 
     3a5:	49 f7 d8             	neg    %r8
     3a8:	c5 fc 28 05 a0 01 00 	vmovaps 0x1a0(%rip),%ymm0        # 550 <_Z17measure_sqrt_timeILm3EEvv+0x550>
     3af:	00 
     3b0:	48 89 c6             	mov    %rax,%rsi
     3b3:	41 83 e0 07          	and    $0x7,%r8d
     3b7:	c5 f8 28 f5          	vmovaps %xmm5,%xmm6
     3bb:	45 29 c3             	sub    %r8d,%r11d
     3be:	44 89 c1             	mov    %r8d,%ecx
     3c1:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
     3c6:	48 c1 e1 02          	shl    $0x2,%rcx
     3ca:	45 89 da             	mov    %r11d,%r10d
     3cd:	44 89 dd             	mov    %r11d,%ebp
     3d0:	4d 8d 0c 0c          	lea    (%r12,%rcx,1),%r9
     3d4:	41 c1 ea 03          	shr    $0x3,%r10d
     3d8:	4c 01 e9             	add    %r13,%rcx
     3db:	83 e5 f8             	and    $0xfffffff8,%ebp
     3de:	45 85 c0             	test   %r8d,%r8d
     3e1:	0f 84 aa 0f 00 00    	je     1391 <_Z17measure_sqrt_timeILm3EEvv+0x1391>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     3e7:	ba 01 00 00 00       	mov    $0x1,%edx
     3ec:	c4 e2 6a f7 84 24 80 	sarx   %edx,0x80(%rsp),%eax
     3f3:	00 00 00 
     3f6:	c5 fa 10 8c 24 80 00 	vmovss 0x80(%rsp),%xmm1
     3fd:	00 00 
     3ff:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     404:	41 83 f8 01          	cmp    $0x1,%r8d
     408:	89 44 24 20          	mov    %eax,0x20(%rsp)
     40c:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     412:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     416:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     41a:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     41e:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     422:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     426:	c5 ea 59 d5          	vmulss %xmm5,%xmm2,%xmm2
     42a:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     42e:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     432:	c5 f2 59 cd          	vmulss %xmm5,%xmm1,%xmm1
        roots[i] = sqrt1<LOOPS>(floats + i);
     436:	c5 fa 11 8c 24 80 35 	vmovss %xmm1,0xc3580(%rsp)
     43d:	0c 00 
     43f:	0f 84 6b 0f 00 00    	je     13b0 <_Z17measure_sqrt_timeILm3EEvv+0x13b0>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     445:	c4 e2 6a f7 84 24 84 	sarx   %edx,0x84(%rsp),%eax
     44c:	00 00 00 
     44f:	c5 fa 10 8c 24 84 00 	vmovss 0x84(%rsp),%xmm1
     456:	00 00 
     458:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     45d:	41 83 f8 02          	cmp    $0x2,%r8d
     461:	89 44 24 20          	mov    %eax,0x20(%rsp)
     465:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     46b:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     46f:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     473:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     477:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     47b:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     47f:	c5 ea 59 d5          	vmulss %xmm5,%xmm2,%xmm2
     483:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     487:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     48b:	c5 f2 59 cd          	vmulss %xmm5,%xmm1,%xmm1
     48f:	c5 fa 11 8c 24 84 35 	vmovss %xmm1,0xc3584(%rsp)
     496:	0c 00 
     498:	0f 84 01 0f 00 00    	je     139f <_Z17measure_sqrt_timeILm3EEvv+0x139f>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     49e:	c4 e2 6a f7 84 24 88 	sarx   %edx,0x88(%rsp),%eax
     4a5:	00 00 00 
     4a8:	c5 fa 10 8c 24 88 00 	vmovss 0x88(%rsp),%xmm1
     4af:	00 00 
     4b1:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     4b6:	41 83 f8 03          	cmp    $0x3,%r8d
     4ba:	89 44 24 20          	mov    %eax,0x20(%rsp)
     4be:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     4c4:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     4c8:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     4cc:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     4d0:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     4d4:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     4d8:	c5 ea 59 d5          	vmulss %xmm5,%xmm2,%xmm2
     4dc:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     4e0:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     4e4:	c5 f2 59 cd          	vmulss %xmm5,%xmm1,%xmm1
     4e8:	c5 fa 11 8c 24 88 35 	vmovss %xmm1,0xc3588(%rsp)
     4ef:	0c 00 
     4f1:	0f 84 89 0e 00 00    	je     1380 <_Z17measure_sqrt_timeILm3EEvv+0x1380>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     4f7:	c4 e2 6a f7 84 24 8c 	sarx   %edx,0x8c(%rsp),%eax
     4fe:	00 00 00 
     501:	c5 fa 10 8c 24 8c 00 	vmovss 0x8c(%rsp),%xmm1
     508:	00 00 
     50a:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     50f:	41 83 f8 04          	cmp    $0x4,%r8d
     513:	89 44 24 20          	mov    %eax,0x20(%rsp)
     517:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     51d:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     521:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     525:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     529:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     52d:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     531:	c5 ea 59 d5          	vmulss %xmm5,%xmm2,%xmm2
     535:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     539:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     53d:	c5 f2 59 cd          	vmulss %xmm5,%xmm1,%xmm1
     541:	c5 fa 11 8c 24 8c 35 	vmovss %xmm1,0xc358c(%rsp)
     548:	0c 00 
     54a:	0f 84 a2 0e 00 00    	je     13f2 <_Z17measure_sqrt_timeILm3EEvv+0x13f2>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     550:	c4 e2 6a f7 84 24 90 	sarx   %edx,0x90(%rsp),%eax
     557:	00 00 00 
     55a:	c5 fa 10 8c 24 90 00 	vmovss 0x90(%rsp),%xmm1
     561:	00 00 
     563:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     568:	41 83 f8 05          	cmp    $0x5,%r8d
     56c:	89 44 24 20          	mov    %eax,0x20(%rsp)
     570:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     576:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     57a:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     57e:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     582:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     586:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     58a:	c5 ea 59 d5          	vmulss %xmm5,%xmm2,%xmm2
     58e:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     592:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     596:	c5 f2 59 cd          	vmulss %xmm5,%xmm1,%xmm1
     59a:	c5 fa 11 8c 24 90 35 	vmovss %xmm1,0xc3590(%rsp)
     5a1:	0c 00 
     5a3:	0f 84 94 10 00 00    	je     163d <_Z17measure_sqrt_timeILm3EEvv+0x163d>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     5a9:	c4 e2 6a f7 84 24 94 	sarx   %edx,0x94(%rsp),%eax
     5b0:	00 00 00 
     5b3:	c5 fa 10 8c 24 94 00 	vmovss 0x94(%rsp),%xmm1
     5ba:	00 00 
     5bc:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     5c1:	41 83 f8 06          	cmp    $0x6,%r8d
     5c5:	89 44 24 20          	mov    %eax,0x20(%rsp)
     5c9:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     5cf:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     5d3:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     5d7:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     5db:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     5df:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     5e3:	c5 ea 59 d5          	vmulss %xmm5,%xmm2,%xmm2
     5e7:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     5eb:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     5ef:	c5 f2 59 cd          	vmulss %xmm5,%xmm1,%xmm1
     5f3:	c5 fa 11 8c 24 94 35 	vmovss %xmm1,0xc3594(%rsp)
     5fa:	0c 00 
     5fc:	0f 84 5c 0e 00 00    	je     145e <_Z17measure_sqrt_timeILm3EEvv+0x145e>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     602:	c4 e2 6a f7 84 24 98 	sarx   %edx,0x98(%rsp),%eax
     609:	00 00 00 
     60c:	c5 fa 10 8c 24 98 00 	vmovss 0x98(%rsp),%xmm1
     613:	00 00 
     615:	41 bf 39 0d 03 00    	mov    $0x30d39,%r15d
      for (int i = 0; i < 4 * N; i++) {
     61b:	41 be 07 00 00 00    	mov    $0x7,%r14d
     621:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     626:	89 44 24 20          	mov    %eax,0x20(%rsp)
     62a:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     630:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     634:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     638:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     63c:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     640:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     644:	c5 ea 59 d5          	vmulss %xmm5,%xmm2,%xmm2
     648:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     64c:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     650:	c5 f2 59 cd          	vmulss %xmm5,%xmm1,%xmm1
        roots[i] = sqrt1<LOOPS>(floats + i);
     654:	c5 fa 11 8c 24 98 35 	vmovss %xmm1,0xc3598(%rsp)
     65b:	0c 00 
      for (int i = 0; i < 4 * N; i++) {
     65d:	31 d2                	xor    %edx,%edx
     65f:	31 c0                	xor    %eax,%eax
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     661:	c4 c1 7d 6f 0c 01    	vmovdqa (%r9,%rax,1),%ymm1
     667:	83 c2 01             	add    $0x1,%edx
     66a:	c5 ed 72 e1 01       	vpsrad $0x1,%ymm1,%ymm2
     66f:	c5 ed fe e3          	vpaddd %ymm3,%ymm2,%ymm4
        root = 0.5 * ( root + (* a / root));
     673:	c5 f4 5e d4          	vdivps %ymm4,%ymm1,%ymm2
     677:	c5 ec 58 d4          	vaddps %ymm4,%ymm2,%ymm2
     67b:	c5 ec 59 e0          	vmulps %ymm0,%ymm2,%ymm4
     67f:	c5 f4 5e d4          	vdivps %ymm4,%ymm1,%ymm2
     683:	c5 ec 58 d4          	vaddps %ymm4,%ymm2,%ymm2
     687:	c5 ec 59 d0          	vmulps %ymm0,%ymm2,%ymm2
     68b:	c5 f4 5e ca          	vdivps %ymm2,%ymm1,%ymm1
     68f:	c5 f4 58 ca          	vaddps %ymm2,%ymm1,%ymm1
     693:	c5 f4 59 c8          	vmulps %ymm0,%ymm1,%ymm1
        roots[i] = sqrt1<LOOPS>(floats + i);
     697:	c5 f8 11 0c 01       	vmovups %xmm1,(%rcx,%rax,1)
     69c:	c4 e3 7d 19 4c 01 10 	vextractf128 $0x1,%ymm1,0x10(%rcx,%rax,1)
     6a3:	01 
     6a4:	48 83 c0 20          	add    $0x20,%rax
     6a8:	44 39 d2             	cmp    %r10d,%edx
     6ab:	72 b4                	jb     661 <_Z17measure_sqrt_timeILm3EEvv+0x661>
     6ad:	41 29 ef             	sub    %ebp,%r15d
     6b0:	44 39 dd             	cmp    %r11d,%ebp
     6b3:	42 8d 44 35 00       	lea    0x0(%rbp,%r14,1),%eax
     6b8:	0f 84 c3 02 00 00    	je     981 <_Z17measure_sqrt_timeILm3EEvv+0x981>
     6be:	4c 63 f0             	movslq %eax,%r14
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     6c1:	ba 01 00 00 00       	mov    $0x1,%edx
     6c6:	c4 a2 6a f7 94 b4 80 	sarx   %edx,0x80(%rsp,%r14,4),%edx
     6cd:	00 00 00 
     6d0:	c4 a1 7a 10 8c b4 80 	vmovss 0x80(%rsp,%r14,4),%xmm1
     6d7:	00 00 00 
     6da:	81 c2 00 40 bb 1f    	add    $0x1fbb4000,%edx
      for (int i = 0; i < 4 * N; i++) {
     6e0:	41 83 ff 01          	cmp    $0x1,%r15d
     6e4:	89 54 24 20          	mov    %edx,0x20(%rsp)
     6e8:	8d 50 01             	lea    0x1(%rax),%edx
     6eb:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     6f1:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     6f5:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     6f9:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     6fd:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     701:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     705:	c5 ea 59 d6          	vmulss %xmm6,%xmm2,%xmm2
     709:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     70d:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     711:	c5 f2 59 ce          	vmulss %xmm6,%xmm1,%xmm1
        roots[i] = sqrt1<LOOPS>(floats + i);
     715:	c4 a1 7a 11 8c b4 80 	vmovss %xmm1,0xc3580(%rsp,%r14,4)
     71c:	35 0c 00 
      for (int i = 0; i < 4 * N; i++) {
     71f:	0f 84 5c 02 00 00    	je     981 <_Z17measure_sqrt_timeILm3EEvv+0x981>
        roots[i] = sqrt1<LOOPS>(floats + i);
     725:	48 63 d2             	movslq %edx,%rdx
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     728:	41 be 01 00 00 00    	mov    $0x1,%r14d
     72e:	c4 62 0a f7 b4 94 80 	sarx   %r14d,0x80(%rsp,%rdx,4),%r14d
     735:	00 00 00 
     738:	c5 fa 10 8c 94 80 00 	vmovss 0x80(%rsp,%rdx,4),%xmm1
     73f:	00 00 
     741:	41 81 c6 00 40 bb 1f 	add    $0x1fbb4000,%r14d
      for (int i = 0; i < 4 * N; i++) {
     748:	41 83 ff 02          	cmp    $0x2,%r15d
     74c:	44 89 74 24 20       	mov    %r14d,0x20(%rsp)
     751:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     757:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     75b:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     75f:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     763:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     767:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     76b:	c5 ea 59 d6          	vmulss %xmm6,%xmm2,%xmm2
     76f:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     773:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     777:	c5 f2 59 ce          	vmulss %xmm6,%xmm1,%xmm1
        roots[i] = sqrt1<LOOPS>(floats + i);
     77b:	c5 fa 11 8c 94 80 35 	vmovss %xmm1,0xc3580(%rsp,%rdx,4)
     782:	0c 00 
      for (int i = 0; i < 4 * N; i++) {
     784:	8d 50 02             	lea    0x2(%rax),%edx
     787:	0f 84 f4 01 00 00    	je     981 <_Z17measure_sqrt_timeILm3EEvv+0x981>
        roots[i] = sqrt1<LOOPS>(floats + i);
     78d:	48 63 d2             	movslq %edx,%rdx
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     790:	41 be 01 00 00 00    	mov    $0x1,%r14d
     796:	c4 62 0a f7 b4 94 80 	sarx   %r14d,0x80(%rsp,%rdx,4),%r14d
     79d:	00 00 00 
     7a0:	c5 fa 10 8c 94 80 00 	vmovss 0x80(%rsp,%rdx,4),%xmm1
     7a7:	00 00 
     7a9:	41 81 c6 00 40 bb 1f 	add    $0x1fbb4000,%r14d
      for (int i = 0; i < 4 * N; i++) {
     7b0:	41 83 ff 03          	cmp    $0x3,%r15d
     7b4:	44 89 74 24 20       	mov    %r14d,0x20(%rsp)
     7b9:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     7bf:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     7c3:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     7c7:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     7cb:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     7cf:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     7d3:	c5 ea 59 d6          	vmulss %xmm6,%xmm2,%xmm2
     7d7:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     7db:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     7df:	c5 f2 59 ce          	vmulss %xmm6,%xmm1,%xmm1
        roots[i] = sqrt1<LOOPS>(floats + i);
     7e3:	c5 fa 11 8c 94 80 35 	vmovss %xmm1,0xc3580(%rsp,%rdx,4)
     7ea:	0c 00 
      for (int i = 0; i < 4 * N; i++) {
     7ec:	8d 50 03             	lea    0x3(%rax),%edx
     7ef:	0f 84 8c 01 00 00    	je     981 <_Z17measure_sqrt_timeILm3EEvv+0x981>
        roots[i] = sqrt1<LOOPS>(floats + i);
     7f5:	48 63 d2             	movslq %edx,%rdx
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     7f8:	41 be 01 00 00 00    	mov    $0x1,%r14d
     7fe:	c4 62 0a f7 b4 94 80 	sarx   %r14d,0x80(%rsp,%rdx,4),%r14d
     805:	00 00 00 
     808:	c5 fa 10 8c 94 80 00 	vmovss 0x80(%rsp,%rdx,4),%xmm1
     80f:	00 00 
     811:	41 81 c6 00 40 bb 1f 	add    $0x1fbb4000,%r14d
      for (int i = 0; i < 4 * N; i++) {
     818:	41 83 ff 04          	cmp    $0x4,%r15d
     81c:	44 89 74 24 20       	mov    %r14d,0x20(%rsp)
     821:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     827:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     82b:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     82f:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     833:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     837:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     83b:	c5 ea 59 d6          	vmulss %xmm6,%xmm2,%xmm2
     83f:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     843:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     847:	c5 f2 59 ce          	vmulss %xmm6,%xmm1,%xmm1
        roots[i] = sqrt1<LOOPS>(floats + i);
     84b:	c5 fa 11 8c 94 80 35 	vmovss %xmm1,0xc3580(%rsp,%rdx,4)
     852:	0c 00 
      for (int i = 0; i < 4 * N; i++) {
     854:	8d 50 04             	lea    0x4(%rax),%edx
     857:	0f 84 24 01 00 00    	je     981 <_Z17measure_sqrt_timeILm3EEvv+0x981>
        roots[i] = sqrt1<LOOPS>(floats + i);
     85d:	48 63 d2             	movslq %edx,%rdx
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     860:	41 be 01 00 00 00    	mov    $0x1,%r14d
     866:	c4 62 0a f7 b4 94 80 	sarx   %r14d,0x80(%rsp,%rdx,4),%r14d
     86d:	00 00 00 
     870:	c5 fa 10 8c 94 80 00 	vmovss 0x80(%rsp,%rdx,4),%xmm1
     877:	00 00 
     879:	41 81 c6 00 40 bb 1f 	add    $0x1fbb4000,%r14d
      for (int i = 0; i < 4 * N; i++) {
     880:	41 83 ff 05          	cmp    $0x5,%r15d
     884:	44 89 74 24 20       	mov    %r14d,0x20(%rsp)
     889:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     88f:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     893:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     897:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     89b:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     89f:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     8a3:	c5 ea 59 d6          	vmulss %xmm6,%xmm2,%xmm2
     8a7:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     8ab:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     8af:	c5 f2 59 ce          	vmulss %xmm6,%xmm1,%xmm1
        roots[i] = sqrt1<LOOPS>(floats + i);
     8b3:	c5 fa 11 8c 94 80 35 	vmovss %xmm1,0xc3580(%rsp,%rdx,4)
     8ba:	0c 00 
      for (int i = 0; i < 4 * N; i++) {
     8bc:	8d 50 05             	lea    0x5(%rax),%edx
     8bf:	0f 84 bc 00 00 00    	je     981 <_Z17measure_sqrt_timeILm3EEvv+0x981>
        roots[i] = sqrt1<LOOPS>(floats + i);
     8c5:	48 63 d2             	movslq %edx,%rdx
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     8c8:	41 be 01 00 00 00    	mov    $0x1,%r14d
      for (int i = 0; i < 4 * N; i++) {
     8ce:	83 c0 06             	add    $0x6,%eax
     8d1:	c4 62 0a f7 b4 94 80 	sarx   %r14d,0x80(%rsp,%rdx,4),%r14d
     8d8:	00 00 00 
     8db:	c5 fa 10 8c 94 80 00 	vmovss 0x80(%rsp,%rdx,4),%xmm1
     8e2:	00 00 
     8e4:	41 81 c6 00 40 bb 1f 	add    $0x1fbb4000,%r14d
     8eb:	41 83 ff 06          	cmp    $0x6,%r15d
     8ef:	44 89 74 24 20       	mov    %r14d,0x20(%rsp)
     8f4:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     8fa:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     8fe:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     902:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     906:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     90a:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     90e:	c5 ea 59 d6          	vmulss %xmm6,%xmm2,%xmm2
     912:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     916:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     91a:	c5 f2 59 ce          	vmulss %xmm6,%xmm1,%xmm1
        roots[i] = sqrt1<LOOPS>(floats + i);
     91e:	c5 fa 11 8c 94 80 35 	vmovss %xmm1,0xc3580(%rsp,%rdx,4)
     925:	0c 00 
      for (int i = 0; i < 4 * N; i++) {
     927:	74 58                	je     981 <_Z17measure_sqrt_timeILm3EEvv+0x981>
        roots[i] = sqrt1<LOOPS>(floats + i);
     929:	48 98                	cltq   
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     92b:	41 be 01 00 00 00    	mov    $0x1,%r14d
     931:	c4 e2 0a f7 94 84 80 	sarx   %r14d,0x80(%rsp,%rax,4),%edx
     938:	00 00 00 
     93b:	c5 fa 10 8c 84 80 00 	vmovss 0x80(%rsp,%rax,4),%xmm1
     942:	00 00 
     944:	81 c2 00 40 bb 1f    	add    $0x1fbb4000,%edx
     94a:	89 54 24 20          	mov    %edx,0x20(%rsp)
     94e:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     954:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     958:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     95c:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     960:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     964:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     968:	c5 ea 59 d6          	vmulss %xmm6,%xmm2,%xmm2
     96c:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     970:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     974:	c5 f2 59 ce          	vmulss %xmm6,%xmm1,%xmm1
     978:	c5 fa 11 8c 84 80 35 	vmovss %xmm1,0xc3580(%rsp,%rax,4)
     97f:	0c 00 
    for (int j = 0; j < LOOP; j++) {
     981:	83 eb 01             	sub    $0x1,%ebx
     984:	0f 85 54 fa ff ff    	jne    3de <_Z17measure_sqrt_timeILm3EEvv+0x3de>
     98a:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
     990:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
       end = steady_clock::now();
     996:	c5 f8 77             	vzeroupper 
     999:	e8 00 00 00 00       	callq  99e <_Z17measure_sqrt_timeILm3EEvv+0x99e>
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
     99e:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     9a5:	9b c4 20 
     9a8:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
     9ad:	48 29 f0             	sub    %rsi,%rax
     9b0:	48 89 c1             	mov    %rax,%rcx
     9b3:	48 f7 ea             	imul   %rdx
     9b6:	48 c1 f9 3f          	sar    $0x3f,%rcx
     9ba:	48 c1 fa 07          	sar    $0x7,%rdx
     9be:	48 29 ca             	sub    %rcx,%rdx
      { return _M_insert(__n); }
     9c1:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 9c8 <_Z17measure_sqrt_timeILm3EEvv+0x9c8>
     9c8:	e8 00 00 00 00       	callq  9cd <_Z17measure_sqrt_timeILm3EEvv+0x9cd>
	__ostream_insert(__out, __s,
     9cd:	48 8d 15 3c 00 00 00 	lea    0x3c(%rip),%rdx        # a10 <_Z17measure_sqrt_timeILm3EEvv+0xa10>
      { return _M_insert(__n); }
     9d4:	48 89 c6             	mov    %rax,%rsi
	__ostream_insert(__out, __s,
     9d7:	41 b8 05 00 00 00    	mov    $0x5,%r8d
     9dd:	48 89 c1             	mov    %rax,%rcx
     9e0:	e8 00 00 00 00       	callq  9e5 <_Z17measure_sqrt_timeILm3EEvv+0x9e5>
    { return flush(__os.put(__os.widen('\n'))); }
     9e5:	48 8b 06             	mov    (%rsi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     9e8:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     9ec:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
     9f3:	00 
      if (!__f)
     9f4:	48 85 db             	test   %rbx,%rbx
     9f7:	0f 84 74 f8 ff ff    	je     271 <_Z17measure_sqrt_timeILm3EEvv+0x271>
     9fd:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     a01:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     a07:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
     a0d:	0f 84 5c 0a 00 00    	je     146f <_Z17measure_sqrt_timeILm3EEvv+0x146f>
     a13:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     a17:	48 89 f1             	mov    %rsi,%rcx
     a1a:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
     a20:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
     a26:	c5 f8 77             	vzeroupper 
     a29:	e8 00 00 00 00       	callq  a2e <_Z17measure_sqrt_timeILm3EEvv+0xa2e>
    { return __os.flush(); }
     a2e:	48 89 c1             	mov    %rax,%rcx
     a31:	e8 00 00 00 00       	callq  a36 <_Z17measure_sqrt_timeILm3EEvv+0xa36>
	__ostream_insert(__out, __s,
     a36:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # a3d <_Z17measure_sqrt_timeILm3EEvv+0xa3d>
     a3d:	48 8d 15 80 00 00 00 	lea    0x80(%rip),%rdx        # ac4 <_Z17measure_sqrt_timeILm3EEvv+0xac4>
     a44:	41 b8 06 00 00 00    	mov    $0x6,%r8d
     a4a:	e8 00 00 00 00       	callq  a4f <_Z17measure_sqrt_timeILm3EEvv+0xa4f>
	return _M_insert(static_cast<double>(__f));
     a4f:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
     a53:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # a5a <_Z17measure_sqrt_timeILm3EEvv+0xa5a>
     a5a:	c5 f2 5a 8c 24 7c 35 	vcvtss2sd 0xc357c(%rsp),%xmm1,%xmm1
     a61:	0c 00 
     a63:	e8 00 00 00 00       	callq  a68 <_Z17measure_sqrt_timeILm3EEvv+0xa68>
	__ostream_insert(__out, __s,
     a68:	48 8d 15 87 00 00 00 	lea    0x87(%rip),%rdx        # af6 <_Z17measure_sqrt_timeILm3EEvv+0xaf6>
     a6f:	41 b8 04 00 00 00    	mov    $0x4,%r8d
     a75:	48 89 c1             	mov    %rax,%rcx
	return _M_insert(static_cast<double>(__f));
     a78:	48 89 c3             	mov    %rax,%rbx
	__ostream_insert(__out, __s,
     a7b:	e8 00 00 00 00       	callq  a80 <_Z17measure_sqrt_timeILm3EEvv+0xa80>
	return _M_insert(static_cast<double>(__f));
     a80:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
     a84:	48 89 d9             	mov    %rbx,%rcx
     a87:	c5 f2 5a 8c 24 7c 6a 	vcvtss2sd 0x186a7c(%rsp),%xmm1,%xmm1
     a8e:	18 00 
     a90:	e8 00 00 00 00       	callq  a95 <_Z17measure_sqrt_timeILm3EEvv+0xa95>
     a95:	48 89 c6             	mov    %rax,%rsi
    { return flush(__os.put(__os.widen('\n'))); }
     a98:	48 8b 00             	mov    (%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     a9b:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     a9f:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
     aa6:	00 
      if (!__f)
     aa7:	48 85 db             	test   %rbx,%rbx
     aaa:	0f 84 c1 f7 ff ff    	je     271 <_Z17measure_sqrt_timeILm3EEvv+0x271>
     ab0:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     ab4:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     aba:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
     ac0:	0f 84 04 0a 00 00    	je     14ca <_Z17measure_sqrt_timeILm3EEvv+0x14ca>
     ac6:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     aca:	48 89 f1             	mov    %rsi,%rcx
     acd:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
     ad3:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
     ad9:	c5 f8 77             	vzeroupper 
     adc:	e8 00 00 00 00       	callq  ae1 <_Z17measure_sqrt_timeILm3EEvv+0xae1>
    { return __os.flush(); }
     ae1:	48 89 c1             	mov    %rax,%rcx
     ae4:	e8 00 00 00 00       	callq  ae9 <_Z17measure_sqrt_timeILm3EEvv+0xae9>
	__ostream_insert(__out, __s,
     ae9:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # af0 <_Z17measure_sqrt_timeILm3EEvv+0xaf0>
     af0:	48 8d 15 90 00 00 00 	lea    0x90(%rip),%rdx        # b87 <_Z17measure_sqrt_timeILm3EEvv+0xb87>
     af7:	41 b8 39 00 00 00    	mov    $0x39,%r8d
     afd:	e8 00 00 00 00       	callq  b02 <_Z17measure_sqrt_timeILm3EEvv+0xb02>
    { return flush(__os.put(__os.widen('\n'))); }
     b02:	48 8b 07             	mov    (%rdi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     b05:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     b09:	48 8b 9c 07 f0 00 00 	mov    0xf0(%rdi,%rax,1),%rbx
     b10:	00 
      if (!__f)
     b11:	48 85 db             	test   %rbx,%rbx
     b14:	0f 84 57 f7 ff ff    	je     271 <_Z17measure_sqrt_timeILm3EEvv+0x271>
     b1a:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     b1e:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     b24:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
     b2a:	0f 84 d3 08 00 00    	je     1403 <_Z17measure_sqrt_timeILm3EEvv+0x1403>
     b30:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     b34:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # b3b <_Z17measure_sqrt_timeILm3EEvv+0xb3b>
     b3b:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
     b41:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
     b47:	c5 f8 77             	vzeroupper 
     b4a:	e8 00 00 00 00       	callq  b4f <_Z17measure_sqrt_timeILm3EEvv+0xb4f>
    { return __os.flush(); }
     b4f:	48 89 c1             	mov    %rax,%rcx
     b52:	e8 00 00 00 00       	callq  b57 <_Z17measure_sqrt_timeILm3EEvv+0xb57>
       start = steady_clock::now();
     b57:	e8 00 00 00 00       	callq  b5c <_Z17measure_sqrt_timeILm3EEvv+0xb5c>
     b5c:	49 8d 95 00 35 0c 00 	lea    0xc3500(%r13),%rdx
     b63:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
     b69:	48 89 c6             	mov    %rax,%rsi
     b6c:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     b72:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
     b77:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
     b7c:	4c 89 e0             	mov    %r12,%rax
     b7f:	4c 89 eb             	mov    %r13,%rbx
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     b82:	c5 fa 6f 10          	vmovdqu (%rax),%xmm2
     b86:	48 83 eb 80          	sub    $0xffffffffffffff80,%rbx
     b8a:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
     b8e:	c5 fa 6f 68 a0       	vmovdqu -0x60(%rax),%xmm5
     b93:	c4 e3 6d 38 50 90 01 	vinserti128 $0x1,-0x70(%rax),%ymm2,%ymm2
     b9a:	c5 fa 6f 48 c0       	vmovdqu -0x40(%rax),%xmm1
     b9f:	c4 e3 55 38 68 b0 01 	vinserti128 $0x1,-0x50(%rax),%ymm5,%ymm5
     ba6:	c5 fa 6f 70 e0       	vmovdqu -0x20(%rax),%xmm6
     bab:	c4 e3 75 38 48 d0 01 	vinserti128 $0x1,-0x30(%rax),%ymm1,%ymm1
     bb2:	c4 e3 4d 38 70 f0 01 	vinserti128 $0x1,-0x10(%rax),%ymm6,%ymm6
     bb9:	c4 e3 6d 46 e5 20    	vperm2i128 $0x20,%ymm5,%ymm2,%ymm4
     bbf:	c4 e3 6d 46 d5 31    	vperm2i128 $0x31,%ymm5,%ymm2,%ymm2
     bc5:	c5 fd 70 e4 d8       	vpshufd $0xd8,%ymm4,%ymm4
     bca:	c5 fd 70 d2 d8       	vpshufd $0xd8,%ymm2,%ymm2
     bcf:	c5 dd 6c ea          	vpunpcklqdq %ymm2,%ymm4,%ymm5
     bd3:	c5 dd 6d e2          	vpunpckhqdq %ymm2,%ymm4,%ymm4
     bd7:	c4 e3 75 46 d6 20    	vperm2i128 $0x20,%ymm6,%ymm1,%ymm2
     bdd:	c4 e3 75 46 ce 31    	vperm2i128 $0x31,%ymm6,%ymm1,%ymm1
     be3:	c5 fd 70 d2 d8       	vpshufd $0xd8,%ymm2,%ymm2
     be8:	c5 fd 70 c9 d8       	vpshufd $0xd8,%ymm1,%ymm1
     bed:	c5 ed 6c f9          	vpunpcklqdq %ymm1,%ymm2,%ymm7
     bf1:	c5 ed 6d c9          	vpunpckhqdq %ymm1,%ymm2,%ymm1
     bf5:	c4 e3 55 46 f7 20    	vperm2i128 $0x20,%ymm7,%ymm5,%ymm6
     bfb:	c4 e3 55 46 d7 31    	vperm2i128 $0x31,%ymm7,%ymm5,%ymm2
     c01:	c5 fd 70 f6 d8       	vpshufd $0xd8,%ymm6,%ymm6
     c06:	c5 fd 70 d2 d8       	vpshufd $0xd8,%ymm2,%ymm2
     c0b:	c5 cd 6c ea          	vpunpcklqdq %ymm2,%ymm6,%ymm5
     c0f:	c5 cd 6d d2          	vpunpckhqdq %ymm2,%ymm6,%ymm2
     c13:	c4 e3 5d 46 f1 20    	vperm2i128 $0x20,%ymm1,%ymm4,%ymm6
     c19:	c4 e3 5d 46 c9 31    	vperm2i128 $0x31,%ymm1,%ymm4,%ymm1
     c1f:	c5 fd 70 f6 d8       	vpshufd $0xd8,%ymm6,%ymm6
     c24:	c5 fd 70 c9 d8       	vpshufd $0xd8,%ymm1,%ymm1
     c29:	c5 cd 6c e1          	vpunpcklqdq %ymm1,%ymm6,%ymm4
     c2d:	c5 cd 6d c9          	vpunpckhqdq %ymm1,%ymm6,%ymm1
     c31:	c5 cd 72 e5 01       	vpsrad $0x1,%ymm5,%ymm6
     c36:	c5 cd fe fb          	vpaddd %ymm3,%ymm6,%ymm7
        root = 0.5 * ( root + (* a / root));
     c3a:	c5 d4 5e f7          	vdivps %ymm7,%ymm5,%ymm6
     c3e:	c5 cc 58 f7          	vaddps %ymm7,%ymm6,%ymm6
     c42:	c5 cc 59 f8          	vmulps %ymm0,%ymm6,%ymm7
     c46:	c5 d4 5e f7          	vdivps %ymm7,%ymm5,%ymm6
     c4a:	c5 cc 58 f7          	vaddps %ymm7,%ymm6,%ymm6
     c4e:	c5 cc 59 f0          	vmulps %ymm0,%ymm6,%ymm6
     c52:	c5 d4 5e ee          	vdivps %ymm6,%ymm5,%ymm5
     c56:	c5 d4 58 ee          	vaddps %ymm6,%ymm5,%ymm5
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     c5a:	c5 cd 72 e4 01       	vpsrad $0x1,%ymm4,%ymm6
     c5f:	c5 cd fe fb          	vpaddd %ymm3,%ymm6,%ymm7
        root = 0.5 * ( root + (* a / root));
     c63:	c5 dc 5e f7          	vdivps %ymm7,%ymm4,%ymm6
     c67:	c5 d4 59 e8          	vmulps %ymm0,%ymm5,%ymm5
     c6b:	c5 cc 58 f7          	vaddps %ymm7,%ymm6,%ymm6
     c6f:	c5 cc 59 f8          	vmulps %ymm0,%ymm6,%ymm7
     c73:	c5 dc 5e f7          	vdivps %ymm7,%ymm4,%ymm6
     c77:	c5 cc 58 f7          	vaddps %ymm7,%ymm6,%ymm6
     c7b:	c5 cc 59 f0          	vmulps %ymm0,%ymm6,%ymm6
     c7f:	c5 dc 5e e6          	vdivps %ymm6,%ymm4,%ymm4
     c83:	c5 dc 58 e6          	vaddps %ymm6,%ymm4,%ymm4
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     c87:	c5 cd 72 e2 01       	vpsrad $0x1,%ymm2,%ymm6
     c8c:	c5 cd fe fb          	vpaddd %ymm3,%ymm6,%ymm7
        root = 0.5 * ( root + (* a / root));
     c90:	c5 ec 5e f7          	vdivps %ymm7,%ymm2,%ymm6
     c94:	c5 dc 59 e0          	vmulps %ymm0,%ymm4,%ymm4
     c98:	c5 cc 58 f7          	vaddps %ymm7,%ymm6,%ymm6
     c9c:	c5 cc 59 f8          	vmulps %ymm0,%ymm6,%ymm7
     ca0:	c5 ec 5e f7          	vdivps %ymm7,%ymm2,%ymm6
     ca4:	c5 cc 58 f7          	vaddps %ymm7,%ymm6,%ymm6
     ca8:	c5 cc 59 f0          	vmulps %ymm0,%ymm6,%ymm6
     cac:	c5 ec 5e d6          	vdivps %ymm6,%ymm2,%ymm2
     cb0:	c5 ec 58 d6          	vaddps %ymm6,%ymm2,%ymm2
     cb4:	c5 ec 59 f0          	vmulps %ymm0,%ymm2,%ymm6
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     cb8:	c5 ed 72 e1 01       	vpsrad $0x1,%ymm1,%ymm2
     cbd:	c5 ed fe fb          	vpaddd %ymm3,%ymm2,%ymm7
        root = 0.5 * ( root + (* a / root));
     cc1:	c5 f4 5e d7          	vdivps %ymm7,%ymm1,%ymm2
     cc5:	c5 ec 58 d7          	vaddps %ymm7,%ymm2,%ymm2
     cc9:	c5 ec 59 f8          	vmulps %ymm0,%ymm2,%ymm7
     ccd:	c5 f4 5e d7          	vdivps %ymm7,%ymm1,%ymm2
     cd1:	c5 ec 58 d7          	vaddps %ymm7,%ymm2,%ymm2
     cd5:	c5 ec 59 d0          	vmulps %ymm0,%ymm2,%ymm2
     cd9:	c5 f4 5e ca          	vdivps %ymm2,%ymm1,%ymm1
     cdd:	c5 f4 58 ca          	vaddps %ymm2,%ymm1,%ymm1
          roots[i + k] = sqrt1<LOOPS>(floats + i + k);
     ce1:	c5 d4 14 d6          	vunpcklps %ymm6,%ymm5,%ymm2
     ce5:	c5 d4 15 ee          	vunpckhps %ymm6,%ymm5,%ymm5
     ce9:	c5 f4 59 c8          	vmulps %ymm0,%ymm1,%ymm1
     ced:	c4 e3 6d 18 f5 01    	vinsertf128 $0x1,%xmm5,%ymm2,%ymm6
     cf3:	c4 e3 6d 06 d5 31    	vperm2f128 $0x31,%ymm5,%ymm2,%ymm2
     cf9:	c5 dc 14 e9          	vunpcklps %ymm1,%ymm4,%ymm5
     cfd:	c5 dc 15 c9          	vunpckhps %ymm1,%ymm4,%ymm1
     d01:	c4 e3 55 18 f9 01    	vinsertf128 $0x1,%xmm1,%ymm5,%ymm7
     d07:	c4 e3 55 06 c9 31    	vperm2f128 $0x31,%ymm1,%ymm5,%ymm1
     d0d:	c5 cc 14 e7          	vunpcklps %ymm7,%ymm6,%ymm4
     d11:	c5 cc 15 ef          	vunpckhps %ymm7,%ymm6,%ymm5
     d15:	c4 e3 5d 18 f5 01    	vinsertf128 $0x1,%xmm5,%ymm4,%ymm6
     d1b:	c4 e3 5d 06 e5 31    	vperm2f128 $0x31,%ymm5,%ymm4,%ymm4
     d21:	c5 f8 11 73 80       	vmovups %xmm6,-0x80(%rbx)
     d26:	c4 e3 7d 19 63 b0 01 	vextractf128 $0x1,%ymm4,-0x50(%rbx)
     d2d:	c5 f8 11 63 a0       	vmovups %xmm4,-0x60(%rbx)
     d32:	c5 ec 14 e1          	vunpcklps %ymm1,%ymm2,%ymm4
     d36:	c5 ec 15 c9          	vunpckhps %ymm1,%ymm2,%ymm1
     d3a:	c4 e3 7d 19 73 90 01 	vextractf128 $0x1,%ymm6,-0x70(%rbx)
     d41:	c4 e3 5d 18 d1 01    	vinsertf128 $0x1,%xmm1,%ymm4,%ymm2
     d47:	c4 e3 5d 06 c9 31    	vperm2f128 $0x31,%ymm1,%ymm4,%ymm1
     d4d:	c5 f8 11 53 c0       	vmovups %xmm2,-0x40(%rbx)
     d52:	c4 e3 7d 19 53 d0 01 	vextractf128 $0x1,%ymm2,-0x30(%rbx)
     d59:	c5 f8 11 4b e0       	vmovups %xmm1,-0x20(%rbx)
     d5e:	c4 e3 7d 19 4b f0 01 	vextractf128 $0x1,%ymm1,-0x10(%rbx)
     d65:	48 39 d3             	cmp    %rdx,%rbx
     d68:	0f 85 14 fe ff ff    	jne    b82 <_Z17measure_sqrt_timeILm3EEvv+0xb82>
    for (int j = 0; j < LOOP; j++) {
     d6e:	83 e9 01             	sub    $0x1,%ecx
     d71:	0f 85 05 fe ff ff    	jne    b7c <_Z17measure_sqrt_timeILm3EEvv+0xb7c>
     d77:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
     d7d:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
       end = steady_clock::now();
     d83:	c5 f8 77             	vzeroupper 
     d86:	e8 00 00 00 00       	callq  d8b <_Z17measure_sqrt_timeILm3EEvv+0xd8b>
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
     d8b:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     d92:	9b c4 20 
     d95:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
     d9a:	48 29 f0             	sub    %rsi,%rax
     d9d:	48 89 c1             	mov    %rax,%rcx
     da0:	48 f7 ea             	imul   %rdx
     da3:	48 c1 f9 3f          	sar    $0x3f,%rcx
     da7:	48 c1 fa 07          	sar    $0x7,%rdx
     dab:	48 29 ca             	sub    %rcx,%rdx
      { return _M_insert(__n); }
     dae:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # db5 <_Z17measure_sqrt_timeILm3EEvv+0xdb5>
     db5:	e8 00 00 00 00       	callq  dba <_Z17measure_sqrt_timeILm3EEvv+0xdba>
	__ostream_insert(__out, __s,
     dba:	48 8d 15 3c 00 00 00 	lea    0x3c(%rip),%rdx        # dfd <_Z17measure_sqrt_timeILm3EEvv+0xdfd>
      { return _M_insert(__n); }
     dc1:	48 89 c5             	mov    %rax,%rbp
	__ostream_insert(__out, __s,
     dc4:	41 b8 05 00 00 00    	mov    $0x5,%r8d
     dca:	48 89 c1             	mov    %rax,%rcx
     dcd:	e8 00 00 00 00       	callq  dd2 <_Z17measure_sqrt_timeILm3EEvv+0xdd2>
    { return flush(__os.put(__os.widen('\n'))); }
     dd2:	48 8b 45 00          	mov    0x0(%rbp),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     dd6:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     dda:	48 8b b4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%rsi
     de1:	00 
      if (!__f)
     de2:	48 85 f6             	test   %rsi,%rsi
     de5:	0f 84 86 f4 ff ff    	je     271 <_Z17measure_sqrt_timeILm3EEvv+0x271>
     deb:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
     def:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     df5:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
     dfb:	0f 84 e1 07 00 00    	je     15e2 <_Z17measure_sqrt_timeILm3EEvv+0x15e2>
     e01:	0f be 56 43          	movsbl 0x43(%rsi),%edx
     e05:	48 89 e9             	mov    %rbp,%rcx
     e08:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
     e0e:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
     e14:	c5 f8 77             	vzeroupper 
     e17:	e8 00 00 00 00       	callq  e1c <_Z17measure_sqrt_timeILm3EEvv+0xe1c>
    { return __os.flush(); }
     e1c:	48 89 c1             	mov    %rax,%rcx
     e1f:	e8 00 00 00 00       	callq  e24 <_Z17measure_sqrt_timeILm3EEvv+0xe24>
	__ostream_insert(__out, __s,
     e24:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # e2b <_Z17measure_sqrt_timeILm3EEvv+0xe2b>
     e2b:	48 8d 15 d0 00 00 00 	lea    0xd0(%rip),%rdx        # f02 <_Z17measure_sqrt_timeILm3EEvv+0xf02>
     e32:	41 b8 2e 00 00 00    	mov    $0x2e,%r8d
     e38:	e8 00 00 00 00       	callq  e3d <_Z17measure_sqrt_timeILm3EEvv+0xe3d>
    { return flush(__os.put(__os.widen('\n'))); }
     e3d:	48 8b 07             	mov    (%rdi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     e40:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     e44:	48 8b b4 07 f0 00 00 	mov    0xf0(%rdi,%rax,1),%rsi
     e4b:	00 
      if (!__f)
     e4c:	48 85 f6             	test   %rsi,%rsi
     e4f:	0f 84 1c f4 ff ff    	je     271 <_Z17measure_sqrt_timeILm3EEvv+0x271>
     e55:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
     e59:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     e5f:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
     e65:	0f 84 ba 06 00 00    	je     1525 <_Z17measure_sqrt_timeILm3EEvv+0x1525>
     e6b:	0f be 56 43          	movsbl 0x43(%rsi),%edx
     e6f:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # e76 <_Z17measure_sqrt_timeILm3EEvv+0xe76>
     e76:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
     e7c:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
     e82:	c5 f8 77             	vzeroupper 
     e85:	e8 00 00 00 00       	callq  e8a <_Z17measure_sqrt_timeILm3EEvv+0xe8a>
    { return __os.flush(); }
     e8a:	48 89 c1             	mov    %rax,%rcx
     e8d:	e8 00 00 00 00       	callq  e92 <_Z17measure_sqrt_timeILm3EEvv+0xe92>
       start = steady_clock::now();
     e92:	e8 00 00 00 00       	callq  e97 <_Z17measure_sqrt_timeILm3EEvv+0xe97>
     e97:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
     e9d:	48 89 c6             	mov    %rax,%rsi
     ea0:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
     ea5:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     eab:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
     eb0:	4c 89 e2             	mov    %r12,%rdx
     eb3:	4c 89 e8             	mov    %r13,%rax
     eb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     ebd:	00 00 00 
    initial[0] = (1 << 29) + (ai[0] >> 1) - (1 << 22) - 0x4C000;
     ec0:	c5 fa 6f 12          	vmovdqu (%rdx),%xmm2
     ec4:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
     ec8:	48 83 ea 80          	sub    $0xffffffffffffff80,%rdx
     ecc:	c5 fa 6f 6a a0       	vmovdqu -0x60(%rdx),%xmm5
     ed1:	c4 e3 6d 38 52 90 01 	vinserti128 $0x1,-0x70(%rdx),%ymm2,%ymm2
     ed8:	c5 fa 6f 4a c0       	vmovdqu -0x40(%rdx),%xmm1
     edd:	c4 e3 55 38 6a b0 01 	vinserti128 $0x1,-0x50(%rdx),%ymm5,%ymm5
     ee4:	c5 fa 6f 72 e0       	vmovdqu -0x20(%rdx),%xmm6
     ee9:	c4 e3 75 38 4a d0 01 	vinserti128 $0x1,-0x30(%rdx),%ymm1,%ymm1
     ef0:	c4 e3 4d 38 72 f0 01 	vinserti128 $0x1,-0x10(%rdx),%ymm6,%ymm6
     ef7:	c4 e3 6d 46 e5 20    	vperm2i128 $0x20,%ymm5,%ymm2,%ymm4
     efd:	c4 e3 6d 46 d5 31    	vperm2i128 $0x31,%ymm5,%ymm2,%ymm2
     f03:	c5 fd 70 e4 d8       	vpshufd $0xd8,%ymm4,%ymm4
     f08:	c5 fd 70 d2 d8       	vpshufd $0xd8,%ymm2,%ymm2
     f0d:	c5 dd 6c ea          	vpunpcklqdq %ymm2,%ymm4,%ymm5
     f11:	c5 dd 6d d2          	vpunpckhqdq %ymm2,%ymm4,%ymm2
     f15:	c4 e3 75 46 e6 20    	vperm2i128 $0x20,%ymm6,%ymm1,%ymm4
     f1b:	c4 e3 75 46 ce 31    	vperm2i128 $0x31,%ymm6,%ymm1,%ymm1
     f21:	c5 fd 70 e4 d8       	vpshufd $0xd8,%ymm4,%ymm4
     f26:	c5 fd 70 c9 d8       	vpshufd $0xd8,%ymm1,%ymm1
     f2b:	c5 dd 6c f9          	vpunpcklqdq %ymm1,%ymm4,%ymm7
     f2f:	c5 dd 6d c9          	vpunpckhqdq %ymm1,%ymm4,%ymm1
     f33:	c4 e3 55 46 f7 20    	vperm2i128 $0x20,%ymm7,%ymm5,%ymm6
     f39:	c4 e3 55 46 e7 31    	vperm2i128 $0x31,%ymm7,%ymm5,%ymm4
     f3f:	c5 fd 70 f6 d8       	vpshufd $0xd8,%ymm6,%ymm6
     f44:	c5 fd 70 e4 d8       	vpshufd $0xd8,%ymm4,%ymm4
     f49:	c5 cd 6c ec          	vpunpcklqdq %ymm4,%ymm6,%ymm5
     f4d:	c5 cd 6d e4          	vpunpckhqdq %ymm4,%ymm6,%ymm4
     f51:	c4 e3 6d 46 f1 20    	vperm2i128 $0x20,%ymm1,%ymm2,%ymm6
     f57:	c4 e3 6d 46 d1 31    	vperm2i128 $0x31,%ymm1,%ymm2,%ymm2
     f5d:	c5 fd 70 f6 d8       	vpshufd $0xd8,%ymm6,%ymm6
     f62:	c5 fd 70 ca d8       	vpshufd $0xd8,%ymm2,%ymm1
     f67:	c5 cd 6c d1          	vpunpcklqdq %ymm1,%ymm6,%ymm2
     f6b:	c5 cd 6d c9          	vpunpckhqdq %ymm1,%ymm6,%ymm1
     f6f:	c5 cd 72 e5 01       	vpsrad $0x1,%ymm5,%ymm6
     f74:	c5 cd fe f3          	vpaddd %ymm3,%ymm6,%ymm6
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
     f78:	c5 d4 5e fe          	vdivps %ymm6,%ymm5,%ymm7
     f7c:	c5 c4 58 f6          	vaddps %ymm6,%ymm7,%ymm6
    initial[1] = (1 << 29) + (ai[1] >> 1) - (1 << 22) - 0x4C000;
     f80:	c5 c5 72 e2 01       	vpsrad $0x1,%ymm2,%ymm7
     f85:	c5 c5 fe fb          	vpaddd %ymm3,%ymm7,%ymm7
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
     f89:	c5 6c 5e cf          	vdivps %ymm7,%ymm2,%ymm9
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
     f8d:	c5 cc 59 f0          	vmulps %ymm0,%ymm6,%ymm6
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
     f91:	c5 b4 58 ff          	vaddps %ymm7,%ymm9,%ymm7
     f95:	c5 44 59 c8          	vmulps %ymm0,%ymm7,%ymm9
    initial[2] = (1 << 29) + (ai[2] >> 1) - (1 << 22) - 0x4C000;
     f99:	c5 c5 72 e4 01       	vpsrad $0x1,%ymm4,%ymm7
     f9e:	c5 c5 fe fb          	vpaddd %ymm3,%ymm7,%ymm7
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
     fa2:	c5 5c 5e c7          	vdivps %ymm7,%ymm4,%ymm8
     fa6:	c5 bc 58 ff          	vaddps %ymm7,%ymm8,%ymm7
     faa:	c5 44 59 c0          	vmulps %ymm0,%ymm7,%ymm8
    initial[3] = (1 << 29) + (ai[3] >> 1) - (1 << 22) - 0x4C000;
     fae:	c5 c5 72 e1 01       	vpsrad $0x1,%ymm1,%ymm7
     fb3:	c5 c5 fe fb          	vpaddd %ymm3,%ymm7,%ymm7
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
     fb7:	c5 74 5e d7          	vdivps %ymm7,%ymm1,%ymm10
     fbb:	c5 ac 58 ff          	vaddps %ymm7,%ymm10,%ymm7
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
     fbf:	c5 54 5e d6          	vdivps %ymm6,%ymm5,%ymm10
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
     fc3:	c5 c4 59 f8          	vmulps %ymm0,%ymm7,%ymm7
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
     fc7:	c5 ac 58 f6          	vaddps %ymm6,%ymm10,%ymm6
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
     fcb:	c4 41 6c 5e d1       	vdivps %ymm9,%ymm2,%ymm10
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
     fd0:	c5 cc 59 f0          	vmulps %ymm0,%ymm6,%ymm6
     fd4:	c5 d4 5e ee          	vdivps %ymm6,%ymm5,%ymm5
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
     fd8:	c4 41 2c 58 c9       	vaddps %ymm9,%ymm10,%ymm9
     fdd:	c5 34 59 c8          	vmulps %ymm0,%ymm9,%ymm9
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
     fe1:	c4 41 5c 5e d0       	vdivps %ymm8,%ymm4,%ymm10
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
     fe6:	c5 d4 58 ee          	vaddps %ymm6,%ymm5,%ymm5
     fea:	c5 d4 59 f0          	vmulps %ymm0,%ymm5,%ymm6
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
     fee:	c4 c1 6c 5e d1       	vdivps %ymm9,%ymm2,%ymm2
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
     ff3:	c4 41 2c 58 c0       	vaddps %ymm8,%ymm10,%ymm8
     ff8:	c5 3c 59 c0          	vmulps %ymm0,%ymm8,%ymm8
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
     ffc:	c5 74 5e d7          	vdivps %ymm7,%ymm1,%ymm10
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
    1000:	c4 c1 6c 58 d1       	vaddps %ymm9,%ymm2,%ymm2
    1005:	c5 ec 59 d0          	vmulps %ymm0,%ymm2,%ymm2
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
    1009:	c4 c1 5c 5e e0       	vdivps %ymm8,%ymm4,%ymm4
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
    100e:	c5 ac 58 ff          	vaddps %ymm7,%ymm10,%ymm7
    1012:	c5 c4 59 f8          	vmulps %ymm0,%ymm7,%ymm7
    1016:	c5 f4 5e cf          	vdivps %ymm7,%ymm1,%ymm1
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
    101a:	c4 c1 5c 58 e0       	vaddps %ymm8,%ymm4,%ymm4
    101f:	c5 dc 59 e0          	vmulps %ymm0,%ymm4,%ymm4
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
    1023:	c5 cc 14 ec          	vunpcklps %ymm4,%ymm6,%ymm5
    1027:	c5 cc 15 e4          	vunpckhps %ymm4,%ymm6,%ymm4
    102b:	c5 f4 58 cf          	vaddps %ymm7,%ymm1,%ymm1
    102f:	c4 e3 55 18 fc 01    	vinsertf128 $0x1,%xmm4,%ymm5,%ymm7
    1035:	c4 e3 55 06 e4 31    	vperm2f128 $0x31,%ymm4,%ymm5,%ymm4
    103b:	c5 f4 59 c8          	vmulps %ymm0,%ymm1,%ymm1
    103f:	c5 ec 14 e9          	vunpcklps %ymm1,%ymm2,%ymm5
    1043:	c5 ec 15 c9          	vunpckhps %ymm1,%ymm2,%ymm1
    1047:	c4 e3 55 18 f1 01    	vinsertf128 $0x1,%xmm1,%ymm5,%ymm6
    104d:	c4 e3 55 06 c9 31    	vperm2f128 $0x31,%ymm1,%ymm5,%ymm1
    1053:	c5 c4 14 d6          	vunpcklps %ymm6,%ymm7,%ymm2
    1057:	c5 c4 15 ee          	vunpckhps %ymm6,%ymm7,%ymm5
    105b:	c4 e3 6d 18 f5 01    	vinsertf128 $0x1,%xmm5,%ymm2,%ymm6
    1061:	c4 e3 6d 06 d5 31    	vperm2f128 $0x31,%ymm5,%ymm2,%ymm2
    1067:	c5 f8 11 70 80       	vmovups %xmm6,-0x80(%rax)
    106c:	c4 e3 7d 19 50 b0 01 	vextractf128 $0x1,%ymm2,-0x50(%rax)
    1073:	c5 f8 11 50 a0       	vmovups %xmm2,-0x60(%rax)
    1078:	c5 dc 14 d1          	vunpcklps %ymm1,%ymm4,%ymm2
    107c:	c5 dc 15 c9          	vunpckhps %ymm1,%ymm4,%ymm1
    1080:	c4 e3 7d 19 70 90 01 	vextractf128 $0x1,%ymm6,-0x70(%rax)
    1087:	c4 e3 6d 18 e1 01    	vinsertf128 $0x1,%xmm1,%ymm2,%ymm4
    108d:	c4 e3 6d 06 c9 31    	vperm2f128 $0x31,%ymm1,%ymm2,%ymm1
    1093:	c5 f8 11 60 c0       	vmovups %xmm4,-0x40(%rax)
    1098:	c4 e3 7d 19 60 d0 01 	vextractf128 $0x1,%ymm4,-0x30(%rax)
    109f:	c5 f8 11 48 e0       	vmovups %xmm1,-0x20(%rax)
    10a4:	c4 e3 7d 19 48 f0 01 	vextractf128 $0x1,%ymm1,-0x10(%rax)
    10ab:	48 39 c3             	cmp    %rax,%rbx
    10ae:	0f 85 0c fe ff ff    	jne    ec0 <_Z17measure_sqrt_timeILm3EEvv+0xec0>
    for (int j = 0; j < LOOP; j++) {
    10b4:	83 e9 01             	sub    $0x1,%ecx
    10b7:	0f 85 f3 fd ff ff    	jne    eb0 <_Z17measure_sqrt_timeILm3EEvv+0xeb0>
       end = steady_clock::now();
    10bd:	c5 f8 77             	vzeroupper 
    10c0:	e8 00 00 00 00       	callq  10c5 <_Z17measure_sqrt_timeILm3EEvv+0x10c5>
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
    10c5:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
    10cc:	9b c4 20 
    10cf:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    10d4:	48 29 f0             	sub    %rsi,%rax
    10d7:	48 89 c1             	mov    %rax,%rcx
    10da:	48 f7 ea             	imul   %rdx
    10dd:	48 c1 f9 3f          	sar    $0x3f,%rcx
    10e1:	48 c1 fa 07          	sar    $0x7,%rdx
    10e5:	48 29 ca             	sub    %rcx,%rdx
      { return _M_insert(__n); }
    10e8:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 10ef <_Z17measure_sqrt_timeILm3EEvv+0x10ef>
    10ef:	e8 00 00 00 00       	callq  10f4 <_Z17measure_sqrt_timeILm3EEvv+0x10f4>
	__ostream_insert(__out, __s,
    10f4:	48 8d 15 3c 00 00 00 	lea    0x3c(%rip),%rdx        # 1137 <_Z17measure_sqrt_timeILm3EEvv+0x1137>
      { return _M_insert(__n); }
    10fb:	48 89 c6             	mov    %rax,%rsi
	__ostream_insert(__out, __s,
    10fe:	41 b8 05 00 00 00    	mov    $0x5,%r8d
    1104:	48 89 c1             	mov    %rax,%rcx
    1107:	e8 00 00 00 00       	callq  110c <_Z17measure_sqrt_timeILm3EEvv+0x110c>
    { return flush(__os.put(__os.widen('\n'))); }
    110c:	48 8b 06             	mov    (%rsi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    110f:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    1113:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
    111a:	00 
      if (!__f)
    111b:	48 85 db             	test   %rbx,%rbx
    111e:	0f 84 4d f1 ff ff    	je     271 <_Z17measure_sqrt_timeILm3EEvv+0x271>
    1124:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    1128:	0f 84 52 04 00 00    	je     1580 <_Z17measure_sqrt_timeILm3EEvv+0x1580>
    112e:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    1132:	48 89 f1             	mov    %rsi,%rcx
    1135:	e8 00 00 00 00       	callq  113a <_Z17measure_sqrt_timeILm3EEvv+0x113a>
    { return __os.flush(); }
    113a:	48 89 c1             	mov    %rax,%rcx
    113d:	e8 00 00 00 00       	callq  1142 <_Z17measure_sqrt_timeILm3EEvv+0x1142>
       start = steady_clock::now();
    1142:	e8 00 00 00 00       	callq  1147 <_Z17measure_sqrt_timeILm3EEvv+0x1147>
    1147:	c5 f9 6f 25 c0 01 00 	vmovdqa 0x1c0(%rip),%xmm4        # 130f <_Z17measure_sqrt_timeILm3EEvv+0x130f>
    114e:	00 
    114f:	48 89 c6             	mov    %rax,%rsi
    1152:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
    1157:	ba e8 03 00 00       	mov    $0x3e8,%edx
    115c:	c5 f8 28 1d d0 01 00 	vmovaps 0x1d0(%rip),%xmm3        # 1334 <_Z17measure_sqrt_timeILm3EEvv+0x1334>
    1163:	00 
    1164:	31 c0                	xor    %eax,%eax
    1166:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    116d:	00 00 00 
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
    1170:	c4 c1 79 6f 04 04    	vmovdqa (%r12,%rax,1),%xmm0
    1176:	c5 e9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm2
    117b:	c5 e9 fe d4          	vpaddd %xmm4,%xmm2,%xmm2
        * root = 0.5 * ( * root + (* a / * root));
    117f:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
    1183:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
    1187:	c5 f0 59 d3          	vmulps %xmm3,%xmm1,%xmm2
    118b:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
    118f:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
    1193:	c5 f0 59 cb          	vmulps %xmm3,%xmm1,%xmm1
    1197:	c5 f8 5e c1          	vdivps %xmm1,%xmm0,%xmm0
    119b:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
    119f:	c5 f8 59 c3          	vmulps %xmm3,%xmm0,%xmm0
    11a3:	c4 c1 78 29 44 05 00 	vmovaps %xmm0,0x0(%r13,%rax,1)
    11aa:	48 83 c0 10          	add    $0x10,%rax
      for (int i = 0; i < 4 * N; i += 4) {
    11ae:	48 3d 00 35 0c 00    	cmp    $0xc3500,%rax
    11b4:	75 ba                	jne    1170 <_Z17measure_sqrt_timeILm3EEvv+0x1170>
    for (int j = 0; j < LOOP; j++) {
    11b6:	83 ea 01             	sub    $0x1,%edx
    11b9:	75 a9                	jne    1164 <_Z17measure_sqrt_timeILm3EEvv+0x1164>
       end = steady_clock::now();
    11bb:	e8 00 00 00 00       	callq  11c0 <_Z17measure_sqrt_timeILm3EEvv+0x11c0>
	__ostream_insert(__out, __s,
    11c0:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 11c7 <_Z17measure_sqrt_timeILm3EEvv+0x11c7>
    11c7:	48 8d 15 00 01 00 00 	lea    0x100(%rip),%rdx        # 12ce <_Z17measure_sqrt_timeILm3EEvv+0x12ce>
    11ce:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    11d3:	41 b8 34 00 00 00    	mov    $0x34,%r8d
    11d9:	48 29 f0             	sub    %rsi,%rax
    11dc:	48 89 c3             	mov    %rax,%rbx
    11df:	e8 00 00 00 00       	callq  11e4 <_Z17measure_sqrt_timeILm3EEvv+0x11e4>
    { return flush(__os.put(__os.widen('\n'))); }
    11e4:	48 8b 07             	mov    (%rdi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    11e7:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    11eb:	48 8b b4 07 f0 00 00 	mov    0xf0(%rdi,%rax,1),%rsi
    11f2:	00 
      if (!__f)
    11f3:	48 85 f6             	test   %rsi,%rsi
    11f6:	0f 84 75 f0 ff ff    	je     271 <_Z17measure_sqrt_timeILm3EEvv+0x271>
    11fc:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
    1200:	0f 84 79 04 00 00    	je     167f <_Z17measure_sqrt_timeILm3EEvv+0x167f>
    1206:	0f be 56 43          	movsbl 0x43(%rsi),%edx
    120a:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1211 <_Z17measure_sqrt_timeILm3EEvv+0x1211>
    1211:	e8 00 00 00 00       	callq  1216 <_Z17measure_sqrt_timeILm3EEvv+0x1216>
    { return __os.flush(); }
    1216:	48 89 c1             	mov    %rax,%rcx
    1219:	e8 00 00 00 00       	callq  121e <_Z17measure_sqrt_timeILm3EEvv+0x121e>
    std::cout << time.time_clock().count() / LOOP  << " [ns]" << std::endl;
    121e:	48 89 d8             	mov    %rbx,%rax
    1221:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
    1228:	9b c4 20 
      { return _M_insert(__n); }
    122b:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1232 <_Z17measure_sqrt_timeILm3EEvv+0x1232>
    1232:	48 f7 ea             	imul   %rdx
    1235:	48 c1 fb 3f          	sar    $0x3f,%rbx
    1239:	48 c1 fa 07          	sar    $0x7,%rdx
    123d:	48 29 da             	sub    %rbx,%rdx
    1240:	e8 00 00 00 00       	callq  1245 <_Z17measure_sqrt_timeILm3EEvv+0x1245>
	__ostream_insert(__out, __s,
    1245:	48 8d 15 3c 00 00 00 	lea    0x3c(%rip),%rdx        # 1288 <_Z17measure_sqrt_timeILm3EEvv+0x1288>
      { return _M_insert(__n); }
    124c:	48 89 c6             	mov    %rax,%rsi
	__ostream_insert(__out, __s,
    124f:	41 b8 05 00 00 00    	mov    $0x5,%r8d
    1255:	48 89 c1             	mov    %rax,%rcx
    1258:	e8 00 00 00 00       	callq  125d <_Z17measure_sqrt_timeILm3EEvv+0x125d>
    { return flush(__os.put(__os.widen('\n'))); }
    125d:	48 8b 06             	mov    (%rsi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    1260:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    1264:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
    126b:	00 
      if (!__f)
    126c:	48 85 db             	test   %rbx,%rbx
    126f:	0f 84 fc ef ff ff    	je     271 <_Z17measure_sqrt_timeILm3EEvv+0x271>
    1275:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    1279:	0f 84 cf 03 00 00    	je     164e <_Z17measure_sqrt_timeILm3EEvv+0x164e>
    127f:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    1283:	48 89 f1             	mov    %rsi,%rcx
    1286:	e8 00 00 00 00       	callq  128b <_Z17measure_sqrt_timeILm3EEvv+0x128b>
    128b:	90                   	nop
}
    128c:	c5 f8 28 b4 24 80 6a 	vmovaps 0x186a80(%rsp),%xmm6
    1293:	18 00 
    { return __os.flush(); }
    1295:	48 89 c1             	mov    %rax,%rcx
    1298:	c5 f8 28 bc 24 90 6a 	vmovaps 0x186a90(%rsp),%xmm7
    129f:	18 00 
    12a1:	c5 78 28 84 24 a0 6a 	vmovaps 0x186aa0(%rsp),%xmm8
    12a8:	18 00 
    12aa:	c5 78 28 8c 24 b0 6a 	vmovaps 0x186ab0(%rsp),%xmm9
    12b1:	18 00 
    12b3:	c5 78 28 94 24 c0 6a 	vmovaps 0x186ac0(%rsp),%xmm10
    12ba:	18 00 
    12bc:	48 81 c4 d8 6a 18 00 	add    $0x186ad8,%rsp
    12c3:	5b                   	pop    %rbx
    12c4:	5e                   	pop    %rsi
    12c5:	5f                   	pop    %rdi
    12c6:	5d                   	pop    %rbp
    12c7:	41 5c                	pop    %r12
    12c9:	41 5d                	pop    %r13
    12cb:	41 5e                	pop    %r14
    12cd:	41 5f                	pop    %r15
    12cf:	e9 00 00 00 00       	jmpq   12d4 <_Z17measure_sqrt_timeILm3EEvv+0x12d4>
          roots[i + k] = sqrt(floats[i + k]);
    12d4:	e8 00 00 00 00       	callq  12d9 <_Z17measure_sqrt_timeILm3EEvv+0x12d9>
    12d9:	e9 39 ef ff ff       	jmpq   217 <_Z17measure_sqrt_timeILm3EEvv+0x217>
    12de:	e8 00 00 00 00       	callq  12e3 <_Z17measure_sqrt_timeILm3EEvv+0x12e3>
    12e3:	e9 0b ef ff ff       	jmpq   1f3 <_Z17measure_sqrt_timeILm3EEvv+0x1f3>
	this->_M_widen_init();
    12e8:	48 89 d9             	mov    %rbx,%rcx
    12eb:	e8 00 00 00 00       	callq  12f0 <_Z17measure_sqrt_timeILm3EEvv+0x12f0>
	return this->do_widen(__c);
    12f0:	48 8b 03             	mov    (%rbx),%rax
    12f3:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 12fa <_Z17measure_sqrt_timeILm3EEvv+0x12fa>
    12fa:	ba 0a 00 00 00       	mov    $0xa,%edx
    12ff:	48 8b 40 30          	mov    0x30(%rax),%rax
    1303:	48 39 c8             	cmp    %rcx,%rax
    1306:	0f 84 01 ee ff ff    	je     10d <_Z17measure_sqrt_timeILm3EEvv+0x10d>
    130c:	48 89 d9             	mov    %rbx,%rcx
    130f:	ff d0                	callq  *%rax
    1311:	0f be d0             	movsbl %al,%edx
    1314:	e9 f4 ed ff ff       	jmpq   10d <_Z17measure_sqrt_timeILm3EEvv+0x10d>
	this->_M_widen_init();
    1319:	48 89 d9             	mov    %rbx,%rcx
    131c:	e8 00 00 00 00       	callq  1321 <_Z17measure_sqrt_timeILm3EEvv+0x1321>
	return this->do_widen(__c);
    1321:	48 8b 03             	mov    (%rbx),%rax
    1324:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 132b <_Z17measure_sqrt_timeILm3EEvv+0x132b>
    132b:	ba 0a 00 00 00       	mov    $0xa,%edx
    1330:	48 8b 40 30          	mov    0x30(%rax),%rax
    1334:	48 39 c8             	cmp    %rcx,%rax
    1337:	0f 84 58 ed ff ff    	je     95 <_Z17measure_sqrt_timeILm3EEvv+0x95>
    133d:	48 89 d9             	mov    %rbx,%rcx
    1340:	ff d0                	callq  *%rax
    1342:	0f be d0             	movsbl %al,%edx
    1345:	e9 4b ed ff ff       	jmpq   95 <_Z17measure_sqrt_timeILm3EEvv+0x95>
	this->_M_widen_init();
    134a:	48 89 d9             	mov    %rbx,%rcx
    134d:	e8 00 00 00 00       	callq  1352 <_Z17measure_sqrt_timeILm3EEvv+0x1352>
	return this->do_widen(__c);
    1352:	48 8b 03             	mov    (%rbx),%rax
    1355:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 135c <_Z17measure_sqrt_timeILm3EEvv+0x135c>
    135c:	ba 0a 00 00 00       	mov    $0xa,%edx
    1361:	48 8b 40 30          	mov    0x30(%rax),%rax
    1365:	48 39 c8             	cmp    %rcx,%rax
    1368:	0f 84 23 ee ff ff    	je     191 <_Z17measure_sqrt_timeILm3EEvv+0x191>
    136e:	48 89 d9             	mov    %rbx,%rcx
    1371:	ff d0                	callq  *%rax
    1373:	0f be d0             	movsbl %al,%edx
    1376:	e9 16 ee ff ff       	jmpq   191 <_Z17measure_sqrt_timeILm3EEvv+0x191>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
        roots[i] = sqrt1<LOOPS>(floats + i);
    1380:	41 bf 3d 0d 03 00    	mov    $0x30d3d,%r15d
      for (int i = 0; i < 4 * N; i++) {
    1386:	41 be 03 00 00 00    	mov    $0x3,%r14d
    138c:	e9 cc f2 ff ff       	jmpq   65d <_Z17measure_sqrt_timeILm3EEvv+0x65d>
    1391:	41 bf 40 0d 03 00    	mov    $0x30d40,%r15d
    1397:	45 31 f6             	xor    %r14d,%r14d
    139a:	e9 be f2 ff ff       	jmpq   65d <_Z17measure_sqrt_timeILm3EEvv+0x65d>
        roots[i] = sqrt1<LOOPS>(floats + i);
    139f:	41 bf 3e 0d 03 00    	mov    $0x30d3e,%r15d
      for (int i = 0; i < 4 * N; i++) {
    13a5:	41 be 02 00 00 00    	mov    $0x2,%r14d
    13ab:	e9 ad f2 ff ff       	jmpq   65d <_Z17measure_sqrt_timeILm3EEvv+0x65d>
        roots[i] = sqrt1<LOOPS>(floats + i);
    13b0:	41 bf 3f 0d 03 00    	mov    $0x30d3f,%r15d
      for (int i = 0; i < 4 * N; i++) {
    13b6:	41 be 01 00 00 00    	mov    $0x1,%r14d
    13bc:	e9 9c f2 ff ff       	jmpq   65d <_Z17measure_sqrt_timeILm3EEvv+0x65d>
	this->_M_widen_init();
    13c1:	48 89 d9             	mov    %rbx,%rcx
    13c4:	e8 00 00 00 00       	callq  13c9 <_Z17measure_sqrt_timeILm3EEvv+0x13c9>
	return this->do_widen(__c);
    13c9:	48 8b 03             	mov    (%rbx),%rax
    13cc:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 13d3 <_Z17measure_sqrt_timeILm3EEvv+0x13d3>
    13d3:	ba 0a 00 00 00       	mov    $0xa,%edx
    13d8:	48 8b 40 30          	mov    0x30(%rax),%rax
    13dc:	48 39 c8             	cmp    %rcx,%rax
    13df:	0f 84 85 ef ff ff    	je     36a <_Z17measure_sqrt_timeILm3EEvv+0x36a>
    13e5:	48 89 d9             	mov    %rbx,%rcx
    13e8:	ff d0                	callq  *%rax
    13ea:	0f be d0             	movsbl %al,%edx
    13ed:	e9 78 ef ff ff       	jmpq   36a <_Z17measure_sqrt_timeILm3EEvv+0x36a>
        roots[i] = sqrt1<LOOPS>(floats + i);
    13f2:	41 bf 3c 0d 03 00    	mov    $0x30d3c,%r15d
      for (int i = 0; i < 4 * N; i++) {
    13f8:	41 be 04 00 00 00    	mov    $0x4,%r14d
    13fe:	e9 5a f2 ff ff       	jmpq   65d <_Z17measure_sqrt_timeILm3EEvv+0x65d>
	this->_M_widen_init();
    1403:	48 89 d9             	mov    %rbx,%rcx
    1406:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
    140c:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
    1412:	c5 f8 77             	vzeroupper 
    1415:	e8 00 00 00 00       	callq  141a <_Z17measure_sqrt_timeILm3EEvv+0x141a>
	return this->do_widen(__c);
    141a:	48 8b 03             	mov    (%rbx),%rax
    141d:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1424 <_Z17measure_sqrt_timeILm3EEvv+0x1424>
    1424:	ba 0a 00 00 00       	mov    $0xa,%edx
    1429:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    142f:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    1435:	48 8b 40 30          	mov    0x30(%rax),%rax
    1439:	48 39 c8             	cmp    %rcx,%rax
    143c:	0f 84 f2 f6 ff ff    	je     b34 <_Z17measure_sqrt_timeILm3EEvv+0xb34>
    1442:	48 89 d9             	mov    %rbx,%rcx
    1445:	c5 f8 77             	vzeroupper 
    1448:	ff d0                	callq  *%rax
    144a:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    1450:	0f be d0             	movsbl %al,%edx
    1453:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    1459:	e9 d6 f6 ff ff       	jmpq   b34 <_Z17measure_sqrt_timeILm3EEvv+0xb34>
        roots[i] = sqrt1<LOOPS>(floats + i);
    145e:	41 bf 3a 0d 03 00    	mov    $0x30d3a,%r15d
      for (int i = 0; i < 4 * N; i++) {
    1464:	41 be 06 00 00 00    	mov    $0x6,%r14d
    146a:	e9 ee f1 ff ff       	jmpq   65d <_Z17measure_sqrt_timeILm3EEvv+0x65d>
	this->_M_widen_init();
    146f:	48 89 d9             	mov    %rbx,%rcx
    1472:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
    1478:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
    147e:	c5 f8 77             	vzeroupper 
    1481:	e8 00 00 00 00       	callq  1486 <_Z17measure_sqrt_timeILm3EEvv+0x1486>
	return this->do_widen(__c);
    1486:	48 8b 03             	mov    (%rbx),%rax
    1489:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1490 <_Z17measure_sqrt_timeILm3EEvv+0x1490>
    1490:	ba 0a 00 00 00       	mov    $0xa,%edx
    1495:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    149b:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    14a1:	48 8b 40 30          	mov    0x30(%rax),%rax
    14a5:	48 39 c8             	cmp    %rcx,%rax
    14a8:	0f 84 69 f5 ff ff    	je     a17 <_Z17measure_sqrt_timeILm3EEvv+0xa17>
    14ae:	48 89 d9             	mov    %rbx,%rcx
    14b1:	c5 f8 77             	vzeroupper 
    14b4:	ff d0                	callq  *%rax
    14b6:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    14bc:	0f be d0             	movsbl %al,%edx
    14bf:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    14c5:	e9 4d f5 ff ff       	jmpq   a17 <_Z17measure_sqrt_timeILm3EEvv+0xa17>
	this->_M_widen_init();
    14ca:	48 89 d9             	mov    %rbx,%rcx
    14cd:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
    14d3:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
    14d9:	c5 f8 77             	vzeroupper 
    14dc:	e8 00 00 00 00       	callq  14e1 <_Z17measure_sqrt_timeILm3EEvv+0x14e1>
	return this->do_widen(__c);
    14e1:	48 8b 03             	mov    (%rbx),%rax
    14e4:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 14eb <_Z17measure_sqrt_timeILm3EEvv+0x14eb>
    14eb:	ba 0a 00 00 00       	mov    $0xa,%edx
    14f0:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    14f6:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    14fc:	48 8b 40 30          	mov    0x30(%rax),%rax
    1500:	48 39 c8             	cmp    %rcx,%rax
    1503:	0f 84 c1 f5 ff ff    	je     aca <_Z17measure_sqrt_timeILm3EEvv+0xaca>
    1509:	48 89 d9             	mov    %rbx,%rcx
    150c:	c5 f8 77             	vzeroupper 
    150f:	ff d0                	callq  *%rax
    1511:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    1517:	0f be d0             	movsbl %al,%edx
    151a:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    1520:	e9 a5 f5 ff ff       	jmpq   aca <_Z17measure_sqrt_timeILm3EEvv+0xaca>
	this->_M_widen_init();
    1525:	48 89 f1             	mov    %rsi,%rcx
    1528:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
    152e:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
    1534:	c5 f8 77             	vzeroupper 
    1537:	e8 00 00 00 00       	callq  153c <_Z17measure_sqrt_timeILm3EEvv+0x153c>
	return this->do_widen(__c);
    153c:	48 8b 06             	mov    (%rsi),%rax
    153f:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1546 <_Z17measure_sqrt_timeILm3EEvv+0x1546>
    1546:	ba 0a 00 00 00       	mov    $0xa,%edx
    154b:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    1551:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    1557:	48 8b 40 30          	mov    0x30(%rax),%rax
    155b:	48 39 c8             	cmp    %rcx,%rax
    155e:	0f 84 0b f9 ff ff    	je     e6f <_Z17measure_sqrt_timeILm3EEvv+0xe6f>
    1564:	48 89 f1             	mov    %rsi,%rcx
    1567:	c5 f8 77             	vzeroupper 
    156a:	ff d0                	callq  *%rax
    156c:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    1572:	0f be d0             	movsbl %al,%edx
    1575:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    157b:	e9 ef f8 ff ff       	jmpq   e6f <_Z17measure_sqrt_timeILm3EEvv+0xe6f>
	this->_M_widen_init();
    1580:	48 89 d9             	mov    %rbx,%rcx
    1583:	e8 00 00 00 00       	callq  1588 <_Z17measure_sqrt_timeILm3EEvv+0x1588>
	return this->do_widen(__c);
    1588:	48 8b 03             	mov    (%rbx),%rax
    158b:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1592 <_Z17measure_sqrt_timeILm3EEvv+0x1592>
    1592:	ba 0a 00 00 00       	mov    $0xa,%edx
    1597:	48 8b 40 30          	mov    0x30(%rax),%rax
    159b:	48 39 c8             	cmp    %rcx,%rax
    159e:	0f 84 8e fb ff ff    	je     1132 <_Z17measure_sqrt_timeILm3EEvv+0x1132>
    15a4:	48 89 d9             	mov    %rbx,%rcx
    15a7:	ff d0                	callq  *%rax
    15a9:	0f be d0             	movsbl %al,%edx
    15ac:	e9 81 fb ff ff       	jmpq   1132 <_Z17measure_sqrt_timeILm3EEvv+0x1132>
	this->_M_widen_init();
    15b1:	48 89 d9             	mov    %rbx,%rcx
    15b4:	e8 00 00 00 00       	callq  15b9 <_Z17measure_sqrt_timeILm3EEvv+0x15b9>
	return this->do_widen(__c);
    15b9:	48 8b 03             	mov    (%rbx),%rax
    15bc:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 15c3 <_Z17measure_sqrt_timeILm3EEvv+0x15c3>
    15c3:	ba 0a 00 00 00       	mov    $0xa,%edx
    15c8:	48 8b 40 30          	mov    0x30(%rax),%rax
    15cc:	48 39 c8             	cmp    %rcx,%rax
    15cf:	0f 84 46 ed ff ff    	je     31b <_Z17measure_sqrt_timeILm3EEvv+0x31b>
    15d5:	48 89 d9             	mov    %rbx,%rcx
    15d8:	ff d0                	callq  *%rax
    15da:	0f be d0             	movsbl %al,%edx
    15dd:	e9 39 ed ff ff       	jmpq   31b <_Z17measure_sqrt_timeILm3EEvv+0x31b>
	this->_M_widen_init();
    15e2:	48 89 f1             	mov    %rsi,%rcx
    15e5:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
    15eb:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
    15f1:	c5 f8 77             	vzeroupper 
    15f4:	e8 00 00 00 00       	callq  15f9 <_Z17measure_sqrt_timeILm3EEvv+0x15f9>
	return this->do_widen(__c);
    15f9:	48 8b 06             	mov    (%rsi),%rax
    15fc:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1603 <_Z17measure_sqrt_timeILm3EEvv+0x1603>
    1603:	ba 0a 00 00 00       	mov    $0xa,%edx
    1608:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    160e:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    1614:	48 8b 40 30          	mov    0x30(%rax),%rax
    1618:	48 39 c8             	cmp    %rcx,%rax
    161b:	0f 84 e4 f7 ff ff    	je     e05 <_Z17measure_sqrt_timeILm3EEvv+0xe05>
    1621:	48 89 f1             	mov    %rsi,%rcx
    1624:	c5 f8 77             	vzeroupper 
    1627:	ff d0                	callq  *%rax
    1629:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    162f:	0f be d0             	movsbl %al,%edx
    1632:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    1638:	e9 c8 f7 ff ff       	jmpq   e05 <_Z17measure_sqrt_timeILm3EEvv+0xe05>
        roots[i] = sqrt1<LOOPS>(floats + i);
    163d:	41 bf 3b 0d 03 00    	mov    $0x30d3b,%r15d
      for (int i = 0; i < 4 * N; i++) {
    1643:	41 be 05 00 00 00    	mov    $0x5,%r14d
    1649:	e9 0f f0 ff ff       	jmpq   65d <_Z17measure_sqrt_timeILm3EEvv+0x65d>
	this->_M_widen_init();
    164e:	48 89 d9             	mov    %rbx,%rcx
    1651:	e8 00 00 00 00       	callq  1656 <_Z17measure_sqrt_timeILm3EEvv+0x1656>
	return this->do_widen(__c);
    1656:	48 8b 03             	mov    (%rbx),%rax
    1659:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1660 <_Z17measure_sqrt_timeILm3EEvv+0x1660>
    1660:	ba 0a 00 00 00       	mov    $0xa,%edx
    1665:	48 8b 40 30          	mov    0x30(%rax),%rax
    1669:	48 39 c8             	cmp    %rcx,%rax
    166c:	0f 84 11 fc ff ff    	je     1283 <_Z17measure_sqrt_timeILm3EEvv+0x1283>
    1672:	48 89 d9             	mov    %rbx,%rcx
    1675:	ff d0                	callq  *%rax
    1677:	0f be d0             	movsbl %al,%edx
    167a:	e9 04 fc ff ff       	jmpq   1283 <_Z17measure_sqrt_timeILm3EEvv+0x1283>
	this->_M_widen_init();
    167f:	48 89 f1             	mov    %rsi,%rcx
    1682:	e8 00 00 00 00       	callq  1687 <_Z17measure_sqrt_timeILm3EEvv+0x1687>
	return this->do_widen(__c);
    1687:	48 8b 06             	mov    (%rsi),%rax
    168a:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1691 <_Z17measure_sqrt_timeILm3EEvv+0x1691>
    1691:	ba 0a 00 00 00       	mov    $0xa,%edx
    1696:	48 8b 40 30          	mov    0x30(%rax),%rax
    169a:	48 39 c8             	cmp    %rcx,%rax
    169d:	0f 84 67 fb ff ff    	je     120a <_Z17measure_sqrt_timeILm3EEvv+0x120a>
    16a3:	48 89 f1             	mov    %rsi,%rcx
    16a6:	ff d0                	callq  *%rax
    16a8:	0f be d0             	movsbl %al,%edx
    16ab:	e9 5a fb ff ff       	jmpq   120a <_Z17measure_sqrt_timeILm3EEvv+0x120a>

Disassembly of section .text$_Z17measure_sqrt_timeILm4EEvv:

0000000000000000 <_Z17measure_sqrt_timeILm4EEvv>:
void measure_sqrt_time(void) {
       0:	41 57                	push   %r15
       2:	41 56                	push   %r14
       4:	b8 d8 6a 18 00       	mov    $0x186ad8,%eax
       9:	41 55                	push   %r13
       b:	41 54                	push   %r12
       d:	55                   	push   %rbp
       e:	57                   	push   %rdi
       f:	56                   	push   %rsi
      10:	53                   	push   %rbx
      11:	e8 00 00 00 00       	callq  16 <_Z17measure_sqrt_timeILm4EEvv+0x16>
      16:	48 29 c4             	sub    %rax,%rsp
      19:	c5 f8 29 b4 24 80 6a 	vmovaps %xmm6,0x186a80(%rsp)
      20:	18 00 
      22:	c5 f8 29 bc 24 90 6a 	vmovaps %xmm7,0x186a90(%rsp)
      29:	18 00 
      2b:	c5 78 29 84 24 a0 6a 	vmovaps %xmm8,0x186aa0(%rsp)
      32:	18 00 
      34:	c5 78 29 8c 24 b0 6a 	vmovaps %xmm9,0x186ab0(%rsp)
      3b:	18 00 
      3d:	c5 78 29 94 24 c0 6a 	vmovaps %xmm10,0x186ac0(%rsp)
      44:	18 00 
      { return _M_insert(__n); }
      46:	ba 04 00 00 00       	mov    $0x4,%edx
      4b:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 52 <_Z17measure_sqrt_timeILm4EEvv+0x52>
      52:	e8 00 00 00 00       	callq  57 <_Z17measure_sqrt_timeILm4EEvv+0x57>
	__ostream_insert(__out, __s,
      57:	48 8d 15 08 00 00 00 	lea    0x8(%rip),%rdx        # 66 <_Z17measure_sqrt_timeILm4EEvv+0x66>
      { return _M_insert(__n); }
      5e:	48 89 c6             	mov    %rax,%rsi
	__ostream_insert(__out, __s,
      61:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
      67:	48 89 c1             	mov    %rax,%rcx
      6a:	e8 00 00 00 00       	callq  6f <_Z17measure_sqrt_timeILm4EEvv+0x6f>
    { return flush(__os.put(__os.widen('\n'))); }
      6f:	48 8b 06             	mov    (%rsi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
      72:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      76:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
      7d:	00 
      if (!__f)
      7e:	48 85 db             	test   %rbx,%rbx
      81:	0f 84 eb 01 00 00    	je     272 <_Z17measure_sqrt_timeILm4EEvv+0x272>
	if (_M_widen_ok)
      87:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
      8b:	0f 84 b4 13 00 00    	je     1445 <_Z17measure_sqrt_timeILm4EEvv+0x1445>
      91:	0f be 53 43          	movsbl 0x43(%rbx),%edx
      95:	48 89 f1             	mov    %rsi,%rcx
      98:	e8 00 00 00 00       	callq  9d <_Z17measure_sqrt_timeILm4EEvv+0x9d>
    { return __os.flush(); }
      9d:	48 89 c1             	mov    %rax,%rcx
      a0:	e8 00 00 00 00       	callq  a5 <_Z17measure_sqrt_timeILm4EEvv+0xa5>
	__ostream_insert(__out, __s,
      a5:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # ac <_Z17measure_sqrt_timeILm4EEvv+0xac>
      ac:	48 8d 15 14 00 00 00 	lea    0x14(%rip),%rdx        # c7 <_Z17measure_sqrt_timeILm4EEvv+0xc7>
      b3:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
      b9:	e8 00 00 00 00       	callq  be <_Z17measure_sqrt_timeILm4EEvv+0xbe>
    std::cout << "generating " << (4 * N) << " random values..." << std::endl;
      be:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # c5 <_Z17measure_sqrt_timeILm4EEvv+0xc5>
      c5:	ba 40 0d 03 00       	mov    $0x30d40,%edx
      ca:	e8 00 00 00 00       	callq  cf <_Z17measure_sqrt_timeILm4EEvv+0xcf>
      cf:	48 8d 15 20 00 00 00 	lea    0x20(%rip),%rdx        # f6 <_Z17measure_sqrt_timeILm4EEvv+0xf6>
      d6:	48 89 c6             	mov    %rax,%rsi
      d9:	41 b8 11 00 00 00    	mov    $0x11,%r8d
      df:	48 89 c1             	mov    %rax,%rcx
      e2:	e8 00 00 00 00       	callq  e7 <_Z17measure_sqrt_timeILm4EEvv+0xe7>
    { return flush(__os.put(__os.widen('\n'))); }
      e7:	48 8b 06             	mov    (%rsi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
      ea:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      ee:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
      f5:	00 
      if (!__f)
      f6:	48 85 db             	test   %rbx,%rbx
      f9:	0f 84 73 01 00 00    	je     272 <_Z17measure_sqrt_timeILm4EEvv+0x272>
      ff:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     103:	0f 84 0b 13 00 00    	je     1414 <_Z17measure_sqrt_timeILm4EEvv+0x1414>
     109:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     10d:	4c 8d ac 24 80 00 00 	lea    0x80(%rsp),%r13
     114:	00 
     115:	48 89 f1             	mov    %rsi,%rcx
     118:	e8 00 00 00 00       	callq  11d <_Z17measure_sqrt_timeILm4EEvv+0x11d>
     11d:	49 8d 9d 00 35 0c 00 	lea    0xc3500(%r13),%rbx
    { return __os.flush(); }
     124:	48 89 c1             	mov    %rax,%rcx
     127:	4d 89 ec             	mov    %r13,%r12
     12a:	e8 00 00 00 00       	callq  12f <_Z17measure_sqrt_timeILm4EEvv+0x12f>
       floats[i] = random_double();
     12f:	e8 00 00 00 00       	callq  134 <_Z17measure_sqrt_timeILm4EEvv+0x134>
     134:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
     138:	49 83 c4 04          	add    $0x4,%r12
     13c:	c5 e3 5a d8          	vcvtsd2ss %xmm0,%xmm3,%xmm3
     140:	c4 c1 7a 11 5c 24 fc 	vmovss %xmm3,-0x4(%r12)
    for (int i = 0; i < 4 * N; i++) {
     147:	49 39 dc             	cmp    %rbx,%r12
     14a:	75 e3                	jne    12f <_Z17measure_sqrt_timeILm4EEvv+0x12f>
	__ostream_insert(__out, __s,
     14c:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 153 <_Z17measure_sqrt_timeILm4EEvv+0x153>
     153:	48 8d 15 32 00 00 00 	lea    0x32(%rip),%rdx        # 18c <_Z17measure_sqrt_timeILm4EEvv+0x18c>
     15a:	41 b8 09 00 00 00    	mov    $0x9,%r8d
     160:	e8 00 00 00 00       	callq  165 <_Z17measure_sqrt_timeILm4EEvv+0x165>
    { return flush(__os.put(__os.widen('\n'))); }
     165:	48 8b 2d 00 00 00 00 	mov    0x0(%rip),%rbp        # 16c <_Z17measure_sqrt_timeILm4EEvv+0x16c>
     16c:	48 8b 45 00          	mov    0x0(%rbp),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     170:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     174:	48 8b 9c 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%rbx
     17b:	00 
      if (!__f)
     17c:	48 85 db             	test   %rbx,%rbx
     17f:	0f 84 ed 00 00 00    	je     272 <_Z17measure_sqrt_timeILm4EEvv+0x272>
     185:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     189:	0f 84 e7 12 00 00    	je     1476 <_Z17measure_sqrt_timeILm4EEvv+0x1476>
     18f:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     193:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 19a <_Z17measure_sqrt_timeILm4EEvv+0x19a>
     19a:	48 8d bc 24 80 35 0c 	lea    0xc3580(%rsp),%rdi
     1a1:	00 
       start = steady_clock::now();
     1a2:	41 bf e8 03 00 00    	mov    $0x3e8,%r15d
     1a8:	e8 00 00 00 00       	callq  1ad <_Z17measure_sqrt_timeILm4EEvv+0x1ad>
    { return __os.flush(); }
     1ad:	48 89 c1             	mov    %rax,%rcx
     1b0:	e8 00 00 00 00       	callq  1b5 <_Z17measure_sqrt_timeILm4EEvv+0x1b5>
     1b5:	e8 00 00 00 00       	callq  1ba <_Z17measure_sqrt_timeILm4EEvv+0x1ba>
     1ba:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
     1be:	49 89 c6             	mov    %rax,%r14
     1c1:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
     1c6:	48 89 fe             	mov    %rdi,%rsi
     1c9:	4c 89 eb             	mov    %r13,%rbx
     1cc:	e9 81 00 00 00       	jmpq   252 <_Z17measure_sqrt_timeILm4EEvv+0x252>
          roots[i + k] = sqrt(floats[i + k]);
     1d1:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     1d5:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
     1d9:	c5 fa 5a 43 04       	vcvtss2sd 0x4(%rbx),%xmm0,%xmm0
     1de:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
     1e2:	c5 fa 11 1e          	vmovss %xmm3,(%rsi)
     1e6:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     1ea:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     1ee:	0f 87 16 12 00 00    	ja     140a <_Z17measure_sqrt_timeILm4EEvv+0x140a>
     1f4:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     1f8:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
     1fc:	c5 fa 5a 43 08       	vcvtss2sd 0x8(%rbx),%xmm0,%xmm0
     201:	c5 d3 5a ef          	vcvtsd2ss %xmm7,%xmm5,%xmm5
     205:	c5 fa 11 6e 04       	vmovss %xmm5,0x4(%rsi)
     20a:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     20e:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     212:	0f 87 e8 11 00 00    	ja     1400 <_Z17measure_sqrt_timeILm4EEvv+0x1400>
     218:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     21c:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
     220:	c5 fa 5a 43 0c       	vcvtss2sd 0xc(%rbx),%xmm0,%xmm0
     225:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
     229:	c5 fa 11 5e 08       	vmovss %xmm3,0x8(%rsi)
     22e:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     232:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     236:	77 48                	ja     280 <_Z17measure_sqrt_timeILm4EEvv+0x280>
     238:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
     23c:	48 83 c3 10          	add    $0x10,%rbx
     240:	48 83 c6 10          	add    $0x10,%rsi
     244:	c5 d3 5a ef          	vcvtsd2ss %xmm7,%xmm5,%xmm5
     248:	c5 fa 11 6e fc       	vmovss %xmm5,-0x4(%rsi)
      for (int i = 0; i < 4 * N; i += 4) {
     24d:	49 39 dc             	cmp    %rbx,%r12
     250:	74 4d                	je     29f <_Z17measure_sqrt_timeILm4EEvv+0x29f>
          roots[i + k] = sqrt(floats[i + k]);
     252:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     256:	c5 fa 5a 03          	vcvtss2sd (%rbx),%xmm0,%xmm0
     25a:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     25e:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     262:	0f 86 69 ff ff ff    	jbe    1d1 <_Z17measure_sqrt_timeILm4EEvv+0x1d1>
     268:	e8 00 00 00 00       	callq  26d <_Z17measure_sqrt_timeILm4EEvv+0x26d>
     26d:	e9 5f ff ff ff       	jmpq   1d1 <_Z17measure_sqrt_timeILm4EEvv+0x1d1>
	__throw_bad_cast();
     272:	e8 00 00 00 00       	callq  277 <_Z17measure_sqrt_timeILm4EEvv+0x277>
     277:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     27e:	00 00 
     280:	e8 00 00 00 00       	callq  285 <_Z17measure_sqrt_timeILm4EEvv+0x285>
     285:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
     289:	48 83 c3 10          	add    $0x10,%rbx
     28d:	48 83 c6 10          	add    $0x10,%rsi
     291:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
     295:	c5 fa 11 5e fc       	vmovss %xmm3,-0x4(%rsi)
      for (int i = 0; i < 4 * N; i += 4) {
     29a:	4c 39 e3             	cmp    %r12,%rbx
     29d:	75 b3                	jne    252 <_Z17measure_sqrt_timeILm4EEvv+0x252>
    for (int j = 0; j < LOOP; j++) {
     29f:	41 83 ef 01          	sub    $0x1,%r15d
     2a3:	0f 85 1d ff ff ff    	jne    1c6 <_Z17measure_sqrt_timeILm4EEvv+0x1c6>
       end = steady_clock::now();
     2a9:	e8 00 00 00 00       	callq  2ae <_Z17measure_sqrt_timeILm4EEvv+0x2ae>
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
     2ae:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     2b5:	9b c4 20 
     2b8:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
     2bd:	4c 29 f0             	sub    %r14,%rax
     2c0:	48 89 c1             	mov    %rax,%rcx
     2c3:	48 f7 ea             	imul   %rdx
     2c6:	48 c1 f9 3f          	sar    $0x3f,%rcx
     2ca:	48 c1 fa 07          	sar    $0x7,%rdx
     2ce:	48 29 ca             	sub    %rcx,%rdx
      { return _M_insert(__n); }
     2d1:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2d8 <_Z17measure_sqrt_timeILm4EEvv+0x2d8>
     2d8:	e8 00 00 00 00       	callq  2dd <_Z17measure_sqrt_timeILm4EEvv+0x2dd>
	__ostream_insert(__out, __s,
     2dd:	48 8d 15 3c 00 00 00 	lea    0x3c(%rip),%rdx        # 320 <_Z17measure_sqrt_timeILm4EEvv+0x320>
      { return _M_insert(__n); }
     2e4:	48 89 c6             	mov    %rax,%rsi
	__ostream_insert(__out, __s,
     2e7:	41 b8 05 00 00 00    	mov    $0x5,%r8d
     2ed:	48 89 c1             	mov    %rax,%rcx
     2f0:	e8 00 00 00 00       	callq  2f5 <_Z17measure_sqrt_timeILm4EEvv+0x2f5>
    { return flush(__os.put(__os.widen('\n'))); }
     2f5:	48 8b 06             	mov    (%rsi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     2f8:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     2fc:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
     303:	00 
      if (!__f)
     304:	48 85 db             	test   %rbx,%rbx
     307:	0f 84 65 ff ff ff    	je     272 <_Z17measure_sqrt_timeILm4EEvv+0x272>
     30d:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     311:	0f 84 87 14 00 00    	je     179e <_Z17measure_sqrt_timeILm4EEvv+0x179e>
     317:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     31b:	48 89 f1             	mov    %rsi,%rcx
     31e:	e8 00 00 00 00       	callq  323 <_Z17measure_sqrt_timeILm4EEvv+0x323>
    { return __os.flush(); }
     323:	48 89 c1             	mov    %rax,%rcx
     326:	e8 00 00 00 00       	callq  32b <_Z17measure_sqrt_timeILm4EEvv+0x32b>
	__ostream_insert(__out, __s,
     32b:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 332 <_Z17measure_sqrt_timeILm4EEvv+0x332>
     332:	48 8d 15 48 00 00 00 	lea    0x48(%rip),%rdx        # 381 <_Z17measure_sqrt_timeILm4EEvv+0x381>
     339:	41 b8 37 00 00 00    	mov    $0x37,%r8d
     33f:	e8 00 00 00 00       	callq  344 <_Z17measure_sqrt_timeILm4EEvv+0x344>
    { return flush(__os.put(__os.widen('\n'))); }
     344:	48 8b 45 00          	mov    0x0(%rbp),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     348:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     34c:	48 8b 9c 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%rbx
     353:	00 
      if (!__f)
     354:	48 85 db             	test   %rbx,%rbx
     357:	0f 84 15 ff ff ff    	je     272 <_Z17measure_sqrt_timeILm4EEvv+0x272>
     35d:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     361:	0f 84 68 11 00 00    	je     14cf <_Z17measure_sqrt_timeILm4EEvv+0x14cf>
     367:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     36b:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 372 <_Z17measure_sqrt_timeILm4EEvv+0x372>
       start = steady_clock::now();
     372:	bb e8 03 00 00       	mov    $0x3e8,%ebx
     377:	e8 00 00 00 00       	callq  37c <_Z17measure_sqrt_timeILm4EEvv+0x37c>
    { return __os.flush(); }
     37c:	48 89 c1             	mov    %rax,%rcx
     37f:	e8 00 00 00 00       	callq  384 <_Z17measure_sqrt_timeILm4EEvv+0x384>
     384:	e8 00 00 00 00       	callq  389 <_Z17measure_sqrt_timeILm4EEvv+0x389>
     389:	4d 89 e8             	mov    %r13,%r8
     38c:	41 bb 40 0d 03 00    	mov    $0x30d40,%r11d
     392:	c5 fd 6f 1d 80 01 00 	vmovdqa 0x180(%rip),%ymm3        # 51a <_Z17measure_sqrt_timeILm4EEvv+0x51a>
     399:	00 
     39a:	49 c1 e8 02          	shr    $0x2,%r8
        root = 0.5 * ( root + (* a / root));
     39e:	c5 fa 10 2d 68 01 00 	vmovss 0x168(%rip),%xmm5        # 50e <_Z17measure_sqrt_timeILm4EEvv+0x50e>
     3a5:	00 
     3a6:	49 f7 d8             	neg    %r8
     3a9:	c5 fc 28 05 a0 01 00 	vmovaps 0x1a0(%rip),%ymm0        # 551 <_Z17measure_sqrt_timeILm4EEvv+0x551>
     3b0:	00 
     3b1:	48 89 c6             	mov    %rax,%rsi
     3b4:	41 83 e0 07          	and    $0x7,%r8d
     3b8:	c5 f8 28 f5          	vmovaps %xmm5,%xmm6
     3bc:	45 29 c3             	sub    %r8d,%r11d
     3bf:	44 89 c1             	mov    %r8d,%ecx
     3c2:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
     3c7:	48 c1 e1 02          	shl    $0x2,%rcx
     3cb:	45 89 da             	mov    %r11d,%r10d
     3ce:	45 89 dc             	mov    %r11d,%r12d
     3d1:	4d 8d 4c 0d 00       	lea    0x0(%r13,%rcx,1),%r9
     3d6:	41 c1 ea 03          	shr    $0x3,%r10d
     3da:	48 01 f9             	add    %rdi,%rcx
     3dd:	41 83 e4 f8          	and    $0xfffffff8,%r12d
     3e1:	45 85 c0             	test   %r8d,%r8d
     3e4:	0f 84 d7 10 00 00    	je     14c1 <_Z17measure_sqrt_timeILm4EEvv+0x14c1>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     3ea:	ba 01 00 00 00       	mov    $0x1,%edx
     3ef:	c4 e2 6a f7 84 24 80 	sarx   %edx,0x80(%rsp),%eax
     3f6:	00 00 00 
     3f9:	c5 fa 10 8c 24 80 00 	vmovss 0x80(%rsp),%xmm1
     400:	00 00 
     402:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     407:	41 83 f8 01          	cmp    $0x1,%r8d
     40b:	89 44 24 20          	mov    %eax,0x20(%rsp)
     40f:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     415:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     419:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     41d:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     421:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     425:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     429:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     42d:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     431:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     435:	c5 ea 59 d5          	vmulss %xmm5,%xmm2,%xmm2
     439:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     43d:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     441:	c5 f2 59 cd          	vmulss %xmm5,%xmm1,%xmm1
        roots[i] = sqrt1<LOOPS>(floats + i);
     445:	c5 fa 11 8c 24 80 35 	vmovss %xmm1,0xc3580(%rsp)
     44c:	0c 00 
     44e:	0f 84 5c 10 00 00    	je     14b0 <_Z17measure_sqrt_timeILm4EEvv+0x14b0>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     454:	c4 e2 6a f7 84 24 84 	sarx   %edx,0x84(%rsp),%eax
     45b:	00 00 00 
     45e:	c5 fa 10 8c 24 84 00 	vmovss 0x84(%rsp),%xmm1
     465:	00 00 
     467:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     46c:	41 83 f8 02          	cmp    $0x2,%r8d
     470:	89 44 24 20          	mov    %eax,0x20(%rsp)
     474:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     47a:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     47e:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     482:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     486:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     48a:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     48e:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     492:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     496:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     49a:	c5 ea 59 d5          	vmulss %xmm5,%xmm2,%xmm2
     49e:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     4a2:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     4a6:	c5 f2 59 cd          	vmulss %xmm5,%xmm1,%xmm1
     4aa:	c5 fa 11 8c 24 84 35 	vmovss %xmm1,0xc3584(%rsp)
     4b1:	0c 00 
     4b3:	0f 84 7a 10 00 00    	je     1533 <_Z17measure_sqrt_timeILm4EEvv+0x1533>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     4b9:	c4 e2 6a f7 84 24 88 	sarx   %edx,0x88(%rsp),%eax
     4c0:	00 00 00 
     4c3:	c5 fa 10 8c 24 88 00 	vmovss 0x88(%rsp),%xmm1
     4ca:	00 00 
     4cc:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     4d1:	41 83 f8 03          	cmp    $0x3,%r8d
     4d5:	89 44 24 20          	mov    %eax,0x20(%rsp)
     4d9:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     4df:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     4e3:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     4e7:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     4eb:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     4ef:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     4f3:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     4f7:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     4fb:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     4ff:	c5 ea 59 d5          	vmulss %xmm5,%xmm2,%xmm2
     503:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     507:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     50b:	c5 f2 59 cd          	vmulss %xmm5,%xmm1,%xmm1
     50f:	c5 fa 11 8c 24 88 35 	vmovss %xmm1,0xc3588(%rsp)
     516:	0c 00 
     518:	0f 84 04 10 00 00    	je     1522 <_Z17measure_sqrt_timeILm4EEvv+0x1522>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     51e:	c4 e2 6a f7 84 24 8c 	sarx   %edx,0x8c(%rsp),%eax
     525:	00 00 00 
     528:	c5 fa 10 8c 24 8c 00 	vmovss 0x8c(%rsp),%xmm1
     52f:	00 00 
     531:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     536:	41 83 f8 04          	cmp    $0x4,%r8d
     53a:	89 44 24 20          	mov    %eax,0x20(%rsp)
     53e:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     544:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     548:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     54c:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     550:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     554:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     558:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     55c:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     560:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     564:	c5 ea 59 d5          	vmulss %xmm5,%xmm2,%xmm2
     568:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     56c:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     570:	c5 f2 59 cd          	vmulss %xmm5,%xmm1,%xmm1
     574:	c5 fa 11 8c 24 8c 35 	vmovss %xmm1,0xc358c(%rsp)
     57b:	0c 00 
     57d:	0f 84 8e 0f 00 00    	je     1511 <_Z17measure_sqrt_timeILm4EEvv+0x1511>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     583:	c4 e2 6a f7 84 24 90 	sarx   %edx,0x90(%rsp),%eax
     58a:	00 00 00 
     58d:	c5 fa 10 8c 24 90 00 	vmovss 0x90(%rsp),%xmm1
     594:	00 00 
     596:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     59b:	41 83 f8 05          	cmp    $0x5,%r8d
     59f:	89 44 24 20          	mov    %eax,0x20(%rsp)
     5a3:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     5a9:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     5ad:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     5b1:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     5b5:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     5b9:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     5bd:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     5c1:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     5c5:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     5c9:	c5 ea 59 d5          	vmulss %xmm5,%xmm2,%xmm2
     5cd:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     5d1:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     5d5:	c5 f2 59 cd          	vmulss %xmm5,%xmm1,%xmm1
     5d9:	c5 fa 11 8c 24 90 35 	vmovss %xmm1,0xc3590(%rsp)
     5e0:	0c 00 
     5e2:	0f 84 e7 11 00 00    	je     17cf <_Z17measure_sqrt_timeILm4EEvv+0x17cf>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     5e8:	c4 e2 6a f7 84 24 94 	sarx   %edx,0x94(%rsp),%eax
     5ef:	00 00 00 
     5f2:	c5 fa 10 8c 24 94 00 	vmovss 0x94(%rsp),%xmm1
     5f9:	00 00 
     5fb:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     600:	41 83 f8 06          	cmp    $0x6,%r8d
     604:	89 44 24 20          	mov    %eax,0x20(%rsp)
     608:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     60e:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     612:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     616:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     61a:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     61e:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     622:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     626:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     62a:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     62e:	c5 ea 59 d5          	vmulss %xmm5,%xmm2,%xmm2
     632:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     636:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     63a:	c5 f2 59 cd          	vmulss %xmm5,%xmm1,%xmm1
     63e:	c5 fa 11 8c 24 94 35 	vmovss %xmm1,0xc3594(%rsp)
     645:	0c 00 
     647:	0f 84 b3 0e 00 00    	je     1500 <_Z17measure_sqrt_timeILm4EEvv+0x1500>
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     64d:	c4 e2 6a f7 84 24 98 	sarx   %edx,0x98(%rsp),%eax
     654:	00 00 00 
     657:	c5 fa 10 8c 24 98 00 	vmovss 0x98(%rsp),%xmm1
     65e:	00 00 
     660:	41 bf 39 0d 03 00    	mov    $0x30d39,%r15d
      for (int i = 0; i < 4 * N; i++) {
     666:	41 be 07 00 00 00    	mov    $0x7,%r14d
     66c:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     671:	89 44 24 20          	mov    %eax,0x20(%rsp)
     675:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     67b:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     67f:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     683:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     687:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     68b:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     68f:	c5 ea 59 e5          	vmulss %xmm5,%xmm2,%xmm4
     693:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     697:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     69b:	c5 ea 59 d5          	vmulss %xmm5,%xmm2,%xmm2
     69f:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     6a3:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     6a7:	c5 f2 59 cd          	vmulss %xmm5,%xmm1,%xmm1
        roots[i] = sqrt1<LOOPS>(floats + i);
     6ab:	c5 fa 11 8c 24 98 35 	vmovss %xmm1,0xc3598(%rsp)
     6b2:	0c 00 
      for (int i = 0; i < 4 * N; i++) {
     6b4:	31 d2                	xor    %edx,%edx
     6b6:	31 c0                	xor    %eax,%eax
     6b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     6bf:	00 
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     6c0:	c4 c1 7d 6f 0c 01    	vmovdqa (%r9,%rax,1),%ymm1
     6c6:	83 c2 01             	add    $0x1,%edx
     6c9:	c5 ed 72 e1 01       	vpsrad $0x1,%ymm1,%ymm2
     6ce:	c5 ed fe e3          	vpaddd %ymm3,%ymm2,%ymm4
        root = 0.5 * ( root + (* a / root));
     6d2:	c5 f4 5e d4          	vdivps %ymm4,%ymm1,%ymm2
     6d6:	c5 ec 58 d4          	vaddps %ymm4,%ymm2,%ymm2
     6da:	c5 ec 59 e0          	vmulps %ymm0,%ymm2,%ymm4
     6de:	c5 f4 5e d4          	vdivps %ymm4,%ymm1,%ymm2
     6e2:	c5 ec 58 d4          	vaddps %ymm4,%ymm2,%ymm2
     6e6:	c5 ec 59 e0          	vmulps %ymm0,%ymm2,%ymm4
     6ea:	c5 f4 5e d4          	vdivps %ymm4,%ymm1,%ymm2
     6ee:	c5 ec 58 d4          	vaddps %ymm4,%ymm2,%ymm2
     6f2:	c5 ec 59 d0          	vmulps %ymm0,%ymm2,%ymm2
     6f6:	c5 f4 5e ca          	vdivps %ymm2,%ymm1,%ymm1
     6fa:	c5 f4 58 ca          	vaddps %ymm2,%ymm1,%ymm1
     6fe:	c5 f4 59 c8          	vmulps %ymm0,%ymm1,%ymm1
        roots[i] = sqrt1<LOOPS>(floats + i);
     702:	c5 f8 11 0c 01       	vmovups %xmm1,(%rcx,%rax,1)
     707:	c4 e3 7d 19 4c 01 10 	vextractf128 $0x1,%ymm1,0x10(%rcx,%rax,1)
     70e:	01 
     70f:	48 83 c0 20          	add    $0x20,%rax
     713:	44 39 d2             	cmp    %r10d,%edx
     716:	72 a8                	jb     6c0 <_Z17measure_sqrt_timeILm4EEvv+0x6c0>
     718:	45 29 e7             	sub    %r12d,%r15d
     71b:	45 39 dc             	cmp    %r11d,%r12d
     71e:	43 8d 04 34          	lea    (%r12,%r14,1),%eax
     722:	0f 84 17 03 00 00    	je     a3f <_Z17measure_sqrt_timeILm4EEvv+0xa3f>
     728:	4c 63 f0             	movslq %eax,%r14
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     72b:	ba 01 00 00 00       	mov    $0x1,%edx
     730:	c4 a2 6a f7 94 b4 80 	sarx   %edx,0x80(%rsp,%r14,4),%edx
     737:	00 00 00 
     73a:	c4 a1 7a 10 8c b4 80 	vmovss 0x80(%rsp,%r14,4),%xmm1
     741:	00 00 00 
     744:	81 c2 00 40 bb 1f    	add    $0x1fbb4000,%edx
      for (int i = 0; i < 4 * N; i++) {
     74a:	41 83 ff 01          	cmp    $0x1,%r15d
     74e:	89 54 24 20          	mov    %edx,0x20(%rsp)
     752:	8d 50 01             	lea    0x1(%rax),%edx
     755:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     75b:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     75f:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     763:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     767:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     76b:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     76f:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     773:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     777:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     77b:	c5 ea 59 d6          	vmulss %xmm6,%xmm2,%xmm2
     77f:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     783:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     787:	c5 f2 59 ce          	vmulss %xmm6,%xmm1,%xmm1
        roots[i] = sqrt1<LOOPS>(floats + i);
     78b:	c4 a1 7a 11 8c b4 80 	vmovss %xmm1,0xc3580(%rsp,%r14,4)
     792:	35 0c 00 
      for (int i = 0; i < 4 * N; i++) {
     795:	0f 84 a4 02 00 00    	je     a3f <_Z17measure_sqrt_timeILm4EEvv+0xa3f>
        roots[i] = sqrt1<LOOPS>(floats + i);
     79b:	48 63 d2             	movslq %edx,%rdx
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     79e:	41 be 01 00 00 00    	mov    $0x1,%r14d
     7a4:	c4 62 0a f7 b4 94 80 	sarx   %r14d,0x80(%rsp,%rdx,4),%r14d
     7ab:	00 00 00 
     7ae:	c5 fa 10 8c 94 80 00 	vmovss 0x80(%rsp,%rdx,4),%xmm1
     7b5:	00 00 
     7b7:	41 81 c6 00 40 bb 1f 	add    $0x1fbb4000,%r14d
      for (int i = 0; i < 4 * N; i++) {
     7be:	41 83 ff 02          	cmp    $0x2,%r15d
     7c2:	44 89 74 24 20       	mov    %r14d,0x20(%rsp)
     7c7:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     7cd:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     7d1:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     7d5:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     7d9:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     7dd:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     7e1:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     7e5:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     7e9:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     7ed:	c5 ea 59 d6          	vmulss %xmm6,%xmm2,%xmm2
     7f1:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     7f5:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     7f9:	c5 f2 59 ce          	vmulss %xmm6,%xmm1,%xmm1
        roots[i] = sqrt1<LOOPS>(floats + i);
     7fd:	c5 fa 11 8c 94 80 35 	vmovss %xmm1,0xc3580(%rsp,%rdx,4)
     804:	0c 00 
      for (int i = 0; i < 4 * N; i++) {
     806:	8d 50 02             	lea    0x2(%rax),%edx
     809:	0f 84 30 02 00 00    	je     a3f <_Z17measure_sqrt_timeILm4EEvv+0xa3f>
        roots[i] = sqrt1<LOOPS>(floats + i);
     80f:	48 63 d2             	movslq %edx,%rdx
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     812:	41 be 01 00 00 00    	mov    $0x1,%r14d
     818:	c4 62 0a f7 b4 94 80 	sarx   %r14d,0x80(%rsp,%rdx,4),%r14d
     81f:	00 00 00 
     822:	c5 fa 10 8c 94 80 00 	vmovss 0x80(%rsp,%rdx,4),%xmm1
     829:	00 00 
     82b:	41 81 c6 00 40 bb 1f 	add    $0x1fbb4000,%r14d
      for (int i = 0; i < 4 * N; i++) {
     832:	41 83 ff 03          	cmp    $0x3,%r15d
     836:	44 89 74 24 20       	mov    %r14d,0x20(%rsp)
     83b:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     841:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     845:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     849:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     84d:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     851:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     855:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     859:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     85d:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     861:	c5 ea 59 d6          	vmulss %xmm6,%xmm2,%xmm2
     865:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     869:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     86d:	c5 f2 59 ce          	vmulss %xmm6,%xmm1,%xmm1
        roots[i] = sqrt1<LOOPS>(floats + i);
     871:	c5 fa 11 8c 94 80 35 	vmovss %xmm1,0xc3580(%rsp,%rdx,4)
     878:	0c 00 
      for (int i = 0; i < 4 * N; i++) {
     87a:	8d 50 03             	lea    0x3(%rax),%edx
     87d:	0f 84 bc 01 00 00    	je     a3f <_Z17measure_sqrt_timeILm4EEvv+0xa3f>
        roots[i] = sqrt1<LOOPS>(floats + i);
     883:	48 63 d2             	movslq %edx,%rdx
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     886:	41 be 01 00 00 00    	mov    $0x1,%r14d
     88c:	c4 62 0a f7 b4 94 80 	sarx   %r14d,0x80(%rsp,%rdx,4),%r14d
     893:	00 00 00 
     896:	c5 fa 10 8c 94 80 00 	vmovss 0x80(%rsp,%rdx,4),%xmm1
     89d:	00 00 
     89f:	41 81 c6 00 40 bb 1f 	add    $0x1fbb4000,%r14d
      for (int i = 0; i < 4 * N; i++) {
     8a6:	41 83 ff 04          	cmp    $0x4,%r15d
     8aa:	44 89 74 24 20       	mov    %r14d,0x20(%rsp)
     8af:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     8b5:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     8b9:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     8bd:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     8c1:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     8c5:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     8c9:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     8cd:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     8d1:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     8d5:	c5 ea 59 d6          	vmulss %xmm6,%xmm2,%xmm2
     8d9:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     8dd:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     8e1:	c5 f2 59 ce          	vmulss %xmm6,%xmm1,%xmm1
        roots[i] = sqrt1<LOOPS>(floats + i);
     8e5:	c5 fa 11 8c 94 80 35 	vmovss %xmm1,0xc3580(%rsp,%rdx,4)
     8ec:	0c 00 
      for (int i = 0; i < 4 * N; i++) {
     8ee:	8d 50 04             	lea    0x4(%rax),%edx
     8f1:	0f 84 48 01 00 00    	je     a3f <_Z17measure_sqrt_timeILm4EEvv+0xa3f>
        roots[i] = sqrt1<LOOPS>(floats + i);
     8f7:	48 63 d2             	movslq %edx,%rdx
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     8fa:	41 be 01 00 00 00    	mov    $0x1,%r14d
     900:	c4 62 0a f7 b4 94 80 	sarx   %r14d,0x80(%rsp,%rdx,4),%r14d
     907:	00 00 00 
     90a:	c5 fa 10 8c 94 80 00 	vmovss 0x80(%rsp,%rdx,4),%xmm1
     911:	00 00 
     913:	41 81 c6 00 40 bb 1f 	add    $0x1fbb4000,%r14d
      for (int i = 0; i < 4 * N; i++) {
     91a:	41 83 ff 05          	cmp    $0x5,%r15d
     91e:	44 89 74 24 20       	mov    %r14d,0x20(%rsp)
     923:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     929:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     92d:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     931:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     935:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     939:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     93d:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     941:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     945:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     949:	c5 ea 59 d6          	vmulss %xmm6,%xmm2,%xmm2
     94d:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     951:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     955:	c5 f2 59 ce          	vmulss %xmm6,%xmm1,%xmm1
        roots[i] = sqrt1<LOOPS>(floats + i);
     959:	c5 fa 11 8c 94 80 35 	vmovss %xmm1,0xc3580(%rsp,%rdx,4)
     960:	0c 00 
      for (int i = 0; i < 4 * N; i++) {
     962:	8d 50 05             	lea    0x5(%rax),%edx
     965:	0f 84 d4 00 00 00    	je     a3f <_Z17measure_sqrt_timeILm4EEvv+0xa3f>
        roots[i] = sqrt1<LOOPS>(floats + i);
     96b:	48 63 d2             	movslq %edx,%rdx
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     96e:	41 be 01 00 00 00    	mov    $0x1,%r14d
      for (int i = 0; i < 4 * N; i++) {
     974:	83 c0 06             	add    $0x6,%eax
     977:	c4 62 0a f7 b4 94 80 	sarx   %r14d,0x80(%rsp,%rdx,4),%r14d
     97e:	00 00 00 
     981:	c5 fa 10 8c 94 80 00 	vmovss 0x80(%rsp,%rdx,4),%xmm1
     988:	00 00 
     98a:	41 81 c6 00 40 bb 1f 	add    $0x1fbb4000,%r14d
     991:	41 83 ff 06          	cmp    $0x6,%r15d
     995:	44 89 74 24 20       	mov    %r14d,0x20(%rsp)
     99a:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     9a0:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     9a4:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     9a8:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     9ac:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     9b0:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     9b4:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     9b8:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     9bc:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     9c0:	c5 ea 59 d6          	vmulss %xmm6,%xmm2,%xmm2
     9c4:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     9c8:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     9cc:	c5 f2 59 ce          	vmulss %xmm6,%xmm1,%xmm1
        roots[i] = sqrt1<LOOPS>(floats + i);
     9d0:	c5 fa 11 8c 94 80 35 	vmovss %xmm1,0xc3580(%rsp,%rdx,4)
     9d7:	0c 00 
      for (int i = 0; i < 4 * N; i++) {
     9d9:	74 64                	je     a3f <_Z17measure_sqrt_timeILm4EEvv+0xa3f>
        roots[i] = sqrt1<LOOPS>(floats + i);
     9db:	48 98                	cltq   
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     9dd:	41 be 01 00 00 00    	mov    $0x1,%r14d
     9e3:	c4 e2 0a f7 94 84 80 	sarx   %r14d,0x80(%rsp,%rax,4),%edx
     9ea:	00 00 00 
     9ed:	c5 fa 10 8c 84 80 00 	vmovss 0x80(%rsp,%rax,4),%xmm1
     9f4:	00 00 
     9f6:	81 c2 00 40 bb 1f    	add    $0x1fbb4000,%edx
     9fc:	89 54 24 20          	mov    %edx,0x20(%rsp)
     a00:	c5 f9 6e 64 24 20    	vmovd  0x20(%rsp),%xmm4
        root = 0.5 * ( root + (* a / root));
     a06:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     a0a:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     a0e:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     a12:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     a16:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     a1a:	c5 ea 59 e6          	vmulss %xmm6,%xmm2,%xmm4
     a1e:	c5 f2 5e d4          	vdivss %xmm4,%xmm1,%xmm2
     a22:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
     a26:	c5 ea 59 d6          	vmulss %xmm6,%xmm2,%xmm2
     a2a:	c5 f2 5e ca          	vdivss %xmm2,%xmm1,%xmm1
     a2e:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     a32:	c5 f2 59 ce          	vmulss %xmm6,%xmm1,%xmm1
     a36:	c5 fa 11 8c 84 80 35 	vmovss %xmm1,0xc3580(%rsp,%rax,4)
     a3d:	0c 00 
    for (int j = 0; j < LOOP; j++) {
     a3f:	83 eb 01             	sub    $0x1,%ebx
     a42:	0f 85 99 f9 ff ff    	jne    3e1 <_Z17measure_sqrt_timeILm4EEvv+0x3e1>
     a48:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
     a4e:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
       end = steady_clock::now();
     a54:	c5 f8 77             	vzeroupper 
     a57:	e8 00 00 00 00       	callq  a5c <_Z17measure_sqrt_timeILm4EEvv+0xa5c>
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
     a5c:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     a63:	9b c4 20 
     a66:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
     a6b:	48 29 f0             	sub    %rsi,%rax
     a6e:	48 89 c1             	mov    %rax,%rcx
     a71:	48 f7 ea             	imul   %rdx
     a74:	48 c1 f9 3f          	sar    $0x3f,%rcx
     a78:	48 c1 fa 07          	sar    $0x7,%rdx
     a7c:	48 29 ca             	sub    %rcx,%rdx
      { return _M_insert(__n); }
     a7f:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # a86 <_Z17measure_sqrt_timeILm4EEvv+0xa86>
     a86:	e8 00 00 00 00       	callq  a8b <_Z17measure_sqrt_timeILm4EEvv+0xa8b>
	__ostream_insert(__out, __s,
     a8b:	48 8d 15 3c 00 00 00 	lea    0x3c(%rip),%rdx        # ace <_Z17measure_sqrt_timeILm4EEvv+0xace>
      { return _M_insert(__n); }
     a92:	48 89 c6             	mov    %rax,%rsi
	__ostream_insert(__out, __s,
     a95:	41 b8 05 00 00 00    	mov    $0x5,%r8d
     a9b:	48 89 c1             	mov    %rax,%rcx
     a9e:	e8 00 00 00 00       	callq  aa3 <_Z17measure_sqrt_timeILm4EEvv+0xaa3>
    { return flush(__os.put(__os.widen('\n'))); }
     aa3:	48 8b 06             	mov    (%rsi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     aa6:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     aaa:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
     ab1:	00 
      if (!__f)
     ab2:	48 85 db             	test   %rbx,%rbx
     ab5:	0f 84 b7 f7 ff ff    	je     272 <_Z17measure_sqrt_timeILm4EEvv+0x272>
     abb:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     abf:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     ac5:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
     acb:	0f 84 72 0c 00 00    	je     1743 <_Z17measure_sqrt_timeILm4EEvv+0x1743>
     ad1:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     ad5:	48 89 f1             	mov    %rsi,%rcx
     ad8:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
     ade:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
     ae4:	c5 f8 77             	vzeroupper 
     ae7:	e8 00 00 00 00       	callq  aec <_Z17measure_sqrt_timeILm4EEvv+0xaec>
    { return __os.flush(); }
     aec:	48 89 c1             	mov    %rax,%rcx
     aef:	e8 00 00 00 00       	callq  af4 <_Z17measure_sqrt_timeILm4EEvv+0xaf4>
	__ostream_insert(__out, __s,
     af4:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # afb <_Z17measure_sqrt_timeILm4EEvv+0xafb>
     afb:	48 8d 15 80 00 00 00 	lea    0x80(%rip),%rdx        # b82 <_Z17measure_sqrt_timeILm4EEvv+0xb82>
     b02:	41 b8 06 00 00 00    	mov    $0x6,%r8d
     b08:	e8 00 00 00 00       	callq  b0d <_Z17measure_sqrt_timeILm4EEvv+0xb0d>
	return _M_insert(static_cast<double>(__f));
     b0d:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
     b11:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # b18 <_Z17measure_sqrt_timeILm4EEvv+0xb18>
     b18:	c5 f2 5a 8c 24 7c 35 	vcvtss2sd 0xc357c(%rsp),%xmm1,%xmm1
     b1f:	0c 00 
     b21:	e8 00 00 00 00       	callq  b26 <_Z17measure_sqrt_timeILm4EEvv+0xb26>
	__ostream_insert(__out, __s,
     b26:	48 8d 15 87 00 00 00 	lea    0x87(%rip),%rdx        # bb4 <_Z17measure_sqrt_timeILm4EEvv+0xbb4>
     b2d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
     b33:	48 89 c1             	mov    %rax,%rcx
	return _M_insert(static_cast<double>(__f));
     b36:	48 89 c3             	mov    %rax,%rbx
	__ostream_insert(__out, __s,
     b39:	e8 00 00 00 00       	callq  b3e <_Z17measure_sqrt_timeILm4EEvv+0xb3e>
	return _M_insert(static_cast<double>(__f));
     b3e:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
     b42:	48 89 d9             	mov    %rbx,%rcx
     b45:	c5 f2 5a 8c 24 7c 6a 	vcvtss2sd 0x186a7c(%rsp),%xmm1,%xmm1
     b4c:	18 00 
     b4e:	e8 00 00 00 00       	callq  b53 <_Z17measure_sqrt_timeILm4EEvv+0xb53>
     b53:	48 89 c6             	mov    %rax,%rsi
    { return flush(__os.put(__os.widen('\n'))); }
     b56:	48 8b 00             	mov    (%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     b59:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     b5d:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
     b64:	00 
      if (!__f)
     b65:	48 85 db             	test   %rbx,%rbx
     b68:	0f 84 04 f7 ff ff    	je     272 <_Z17measure_sqrt_timeILm4EEvv+0x272>
     b6e:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     b72:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     b78:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
     b7e:	0f 84 64 0b 00 00    	je     16e8 <_Z17measure_sqrt_timeILm4EEvv+0x16e8>
     b84:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     b88:	48 89 f1             	mov    %rsi,%rcx
     b8b:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
     b91:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
     b97:	c5 f8 77             	vzeroupper 
     b9a:	e8 00 00 00 00       	callq  b9f <_Z17measure_sqrt_timeILm4EEvv+0xb9f>
    { return __os.flush(); }
     b9f:	48 89 c1             	mov    %rax,%rcx
     ba2:	e8 00 00 00 00       	callq  ba7 <_Z17measure_sqrt_timeILm4EEvv+0xba7>
	__ostream_insert(__out, __s,
     ba7:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # bae <_Z17measure_sqrt_timeILm4EEvv+0xbae>
     bae:	48 8d 15 90 00 00 00 	lea    0x90(%rip),%rdx        # c45 <_Z17measure_sqrt_timeILm4EEvv+0xc45>
     bb5:	41 b8 39 00 00 00    	mov    $0x39,%r8d
     bbb:	e8 00 00 00 00       	callq  bc0 <_Z17measure_sqrt_timeILm4EEvv+0xbc0>
    { return flush(__os.put(__os.widen('\n'))); }
     bc0:	48 8b 45 00          	mov    0x0(%rbp),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     bc4:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     bc8:	48 8b 9c 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%rbx
     bcf:	00 
      if (!__f)
     bd0:	48 85 db             	test   %rbx,%rbx
     bd3:	0f 84 99 f6 ff ff    	je     272 <_Z17measure_sqrt_timeILm4EEvv+0x272>
     bd9:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     bdd:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     be3:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
     be9:	0f 84 55 09 00 00    	je     1544 <_Z17measure_sqrt_timeILm4EEvv+0x1544>
     bef:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     bf3:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # bfa <_Z17measure_sqrt_timeILm4EEvv+0xbfa>
     bfa:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
     c00:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
     c06:	c5 f8 77             	vzeroupper 
     c09:	e8 00 00 00 00       	callq  c0e <_Z17measure_sqrt_timeILm4EEvv+0xc0e>
    { return __os.flush(); }
     c0e:	48 89 c1             	mov    %rax,%rcx
     c11:	e8 00 00 00 00       	callq  c16 <_Z17measure_sqrt_timeILm4EEvv+0xc16>
       start = steady_clock::now();
     c16:	e8 00 00 00 00       	callq  c1b <_Z17measure_sqrt_timeILm4EEvv+0xc1b>
     c1b:	48 8d 97 00 35 0c 00 	lea    0xc3500(%rdi),%rdx
     c22:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
     c28:	48 89 c6             	mov    %rax,%rsi
     c2b:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     c31:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
     c36:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
     c3b:	4c 89 e8             	mov    %r13,%rax
     c3e:	48 89 fb             	mov    %rdi,%rbx
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     c41:	c5 fa 6f 10          	vmovdqu (%rax),%xmm2
     c45:	48 83 eb 80          	sub    $0xffffffffffffff80,%rbx
     c49:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
     c4d:	c5 fa 6f 68 a0       	vmovdqu -0x60(%rax),%xmm5
     c52:	c4 e3 6d 38 50 90 01 	vinserti128 $0x1,-0x70(%rax),%ymm2,%ymm2
     c59:	c5 fa 6f 48 c0       	vmovdqu -0x40(%rax),%xmm1
     c5e:	c4 e3 55 38 68 b0 01 	vinserti128 $0x1,-0x50(%rax),%ymm5,%ymm5
     c65:	c5 fa 6f 70 e0       	vmovdqu -0x20(%rax),%xmm6
     c6a:	c4 e3 75 38 48 d0 01 	vinserti128 $0x1,-0x30(%rax),%ymm1,%ymm1
     c71:	c4 e3 4d 38 70 f0 01 	vinserti128 $0x1,-0x10(%rax),%ymm6,%ymm6
     c78:	c4 e3 6d 46 e5 20    	vperm2i128 $0x20,%ymm5,%ymm2,%ymm4
     c7e:	c4 e3 6d 46 d5 31    	vperm2i128 $0x31,%ymm5,%ymm2,%ymm2
     c84:	c5 fd 70 e4 d8       	vpshufd $0xd8,%ymm4,%ymm4
     c89:	c5 fd 70 d2 d8       	vpshufd $0xd8,%ymm2,%ymm2
     c8e:	c5 dd 6c ea          	vpunpcklqdq %ymm2,%ymm4,%ymm5
     c92:	c5 dd 6d e2          	vpunpckhqdq %ymm2,%ymm4,%ymm4
     c96:	c4 e3 75 46 d6 20    	vperm2i128 $0x20,%ymm6,%ymm1,%ymm2
     c9c:	c4 e3 75 46 ce 31    	vperm2i128 $0x31,%ymm6,%ymm1,%ymm1
     ca2:	c5 fd 70 d2 d8       	vpshufd $0xd8,%ymm2,%ymm2
     ca7:	c5 fd 70 c9 d8       	vpshufd $0xd8,%ymm1,%ymm1
     cac:	c5 ed 6c f9          	vpunpcklqdq %ymm1,%ymm2,%ymm7
     cb0:	c5 ed 6d c9          	vpunpckhqdq %ymm1,%ymm2,%ymm1
     cb4:	c4 e3 55 46 f7 20    	vperm2i128 $0x20,%ymm7,%ymm5,%ymm6
     cba:	c4 e3 55 46 d7 31    	vperm2i128 $0x31,%ymm7,%ymm5,%ymm2
     cc0:	c5 fd 70 f6 d8       	vpshufd $0xd8,%ymm6,%ymm6
     cc5:	c5 fd 70 d2 d8       	vpshufd $0xd8,%ymm2,%ymm2
     cca:	c5 cd 6c ea          	vpunpcklqdq %ymm2,%ymm6,%ymm5
     cce:	c5 cd 6d d2          	vpunpckhqdq %ymm2,%ymm6,%ymm2
     cd2:	c4 e3 5d 46 f1 20    	vperm2i128 $0x20,%ymm1,%ymm4,%ymm6
     cd8:	c4 e3 5d 46 c9 31    	vperm2i128 $0x31,%ymm1,%ymm4,%ymm1
     cde:	c5 fd 70 f6 d8       	vpshufd $0xd8,%ymm6,%ymm6
     ce3:	c5 fd 70 c9 d8       	vpshufd $0xd8,%ymm1,%ymm1
     ce8:	c5 cd 6c e1          	vpunpcklqdq %ymm1,%ymm6,%ymm4
     cec:	c5 cd 6d c9          	vpunpckhqdq %ymm1,%ymm6,%ymm1
     cf0:	c5 cd 72 e5 01       	vpsrad $0x1,%ymm5,%ymm6
     cf5:	c5 cd fe fb          	vpaddd %ymm3,%ymm6,%ymm7
        root = 0.5 * ( root + (* a / root));
     cf9:	c5 d4 5e f7          	vdivps %ymm7,%ymm5,%ymm6
     cfd:	c5 cc 58 f7          	vaddps %ymm7,%ymm6,%ymm6
     d01:	c5 cc 59 f8          	vmulps %ymm0,%ymm6,%ymm7
     d05:	c5 d4 5e f7          	vdivps %ymm7,%ymm5,%ymm6
     d09:	c5 cc 58 f7          	vaddps %ymm7,%ymm6,%ymm6
     d0d:	c5 cc 59 f8          	vmulps %ymm0,%ymm6,%ymm7
     d11:	c5 d4 5e f7          	vdivps %ymm7,%ymm5,%ymm6
     d15:	c5 cc 58 f7          	vaddps %ymm7,%ymm6,%ymm6
     d19:	c5 cc 59 f0          	vmulps %ymm0,%ymm6,%ymm6
     d1d:	c5 d4 5e ee          	vdivps %ymm6,%ymm5,%ymm5
     d21:	c5 d4 58 ee          	vaddps %ymm6,%ymm5,%ymm5
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     d25:	c5 cd 72 e4 01       	vpsrad $0x1,%ymm4,%ymm6
     d2a:	c5 cd fe fb          	vpaddd %ymm3,%ymm6,%ymm7
        root = 0.5 * ( root + (* a / root));
     d2e:	c5 dc 5e f7          	vdivps %ymm7,%ymm4,%ymm6
     d32:	c5 d4 59 e8          	vmulps %ymm0,%ymm5,%ymm5
     d36:	c5 cc 58 f7          	vaddps %ymm7,%ymm6,%ymm6
     d3a:	c5 cc 59 f8          	vmulps %ymm0,%ymm6,%ymm7
     d3e:	c5 dc 5e f7          	vdivps %ymm7,%ymm4,%ymm6
     d42:	c5 cc 58 f7          	vaddps %ymm7,%ymm6,%ymm6
     d46:	c5 cc 59 f8          	vmulps %ymm0,%ymm6,%ymm7
     d4a:	c5 dc 5e f7          	vdivps %ymm7,%ymm4,%ymm6
     d4e:	c5 cc 58 f7          	vaddps %ymm7,%ymm6,%ymm6
     d52:	c5 cc 59 f0          	vmulps %ymm0,%ymm6,%ymm6
     d56:	c5 dc 5e e6          	vdivps %ymm6,%ymm4,%ymm4
     d5a:	c5 dc 58 e6          	vaddps %ymm6,%ymm4,%ymm4
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     d5e:	c5 cd 72 e2 01       	vpsrad $0x1,%ymm2,%ymm6
     d63:	c5 cd fe fb          	vpaddd %ymm3,%ymm6,%ymm7
        root = 0.5 * ( root + (* a / root));
     d67:	c5 ec 5e f7          	vdivps %ymm7,%ymm2,%ymm6
     d6b:	c5 dc 59 e0          	vmulps %ymm0,%ymm4,%ymm4
     d6f:	c5 cc 58 f7          	vaddps %ymm7,%ymm6,%ymm6
     d73:	c5 cc 59 f8          	vmulps %ymm0,%ymm6,%ymm7
     d77:	c5 ec 5e f7          	vdivps %ymm7,%ymm2,%ymm6
     d7b:	c5 cc 58 f7          	vaddps %ymm7,%ymm6,%ymm6
     d7f:	c5 cc 59 f8          	vmulps %ymm0,%ymm6,%ymm7
     d83:	c5 ec 5e f7          	vdivps %ymm7,%ymm2,%ymm6
     d87:	c5 cc 58 f7          	vaddps %ymm7,%ymm6,%ymm6
     d8b:	c5 cc 59 f0          	vmulps %ymm0,%ymm6,%ymm6
     d8f:	c5 ec 5e d6          	vdivps %ymm6,%ymm2,%ymm2
     d93:	c5 ec 58 d6          	vaddps %ymm6,%ymm2,%ymm2
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
     d97:	c5 cd 72 e1 01       	vpsrad $0x1,%ymm1,%ymm6
     d9c:	c5 cd fe fb          	vpaddd %ymm3,%ymm6,%ymm7
        root = 0.5 * ( root + (* a / root));
     da0:	c5 f4 5e f7          	vdivps %ymm7,%ymm1,%ymm6
     da4:	c5 ec 59 d0          	vmulps %ymm0,%ymm2,%ymm2
     da8:	c5 cc 58 f7          	vaddps %ymm7,%ymm6,%ymm6
     dac:	c5 cc 59 f8          	vmulps %ymm0,%ymm6,%ymm7
     db0:	c5 f4 5e f7          	vdivps %ymm7,%ymm1,%ymm6
     db4:	c5 cc 58 f7          	vaddps %ymm7,%ymm6,%ymm6
     db8:	c5 cc 59 f8          	vmulps %ymm0,%ymm6,%ymm7
     dbc:	c5 f4 5e f7          	vdivps %ymm7,%ymm1,%ymm6
     dc0:	c5 cc 58 f7          	vaddps %ymm7,%ymm6,%ymm6
     dc4:	c5 cc 59 f0          	vmulps %ymm0,%ymm6,%ymm6
     dc8:	c5 f4 5e ce          	vdivps %ymm6,%ymm1,%ymm1
     dcc:	c5 f4 58 ce          	vaddps %ymm6,%ymm1,%ymm1
          roots[i + k] = sqrt1<LOOPS>(floats + i + k);
     dd0:	c5 d4 14 f2          	vunpcklps %ymm2,%ymm5,%ymm6
     dd4:	c5 d4 15 d2          	vunpckhps %ymm2,%ymm5,%ymm2
     dd8:	c5 f4 59 c8          	vmulps %ymm0,%ymm1,%ymm1
     ddc:	c4 e3 4d 18 fa 01    	vinsertf128 $0x1,%xmm2,%ymm6,%ymm7
     de2:	c4 e3 4d 06 d2 31    	vperm2f128 $0x31,%ymm2,%ymm6,%ymm2
     de8:	c5 dc 14 e9          	vunpcklps %ymm1,%ymm4,%ymm5
     dec:	c5 dc 15 c9          	vunpckhps %ymm1,%ymm4,%ymm1
     df0:	c4 e3 55 18 f1 01    	vinsertf128 $0x1,%xmm1,%ymm5,%ymm6
     df6:	c4 e3 55 06 c9 31    	vperm2f128 $0x31,%ymm1,%ymm5,%ymm1
     dfc:	c5 c4 14 e6          	vunpcklps %ymm6,%ymm7,%ymm4
     e00:	c5 c4 15 ee          	vunpckhps %ymm6,%ymm7,%ymm5
     e04:	c4 e3 5d 18 f5 01    	vinsertf128 $0x1,%xmm5,%ymm4,%ymm6
     e0a:	c4 e3 5d 06 e5 31    	vperm2f128 $0x31,%ymm5,%ymm4,%ymm4
     e10:	c5 f8 11 73 80       	vmovups %xmm6,-0x80(%rbx)
     e15:	c4 e3 7d 19 63 b0 01 	vextractf128 $0x1,%ymm4,-0x50(%rbx)
     e1c:	c5 f8 11 63 a0       	vmovups %xmm4,-0x60(%rbx)
     e21:	c5 ec 14 e1          	vunpcklps %ymm1,%ymm2,%ymm4
     e25:	c5 ec 15 c9          	vunpckhps %ymm1,%ymm2,%ymm1
     e29:	c4 e3 7d 19 73 90 01 	vextractf128 $0x1,%ymm6,-0x70(%rbx)
     e30:	c4 e3 5d 18 d1 01    	vinsertf128 $0x1,%xmm1,%ymm4,%ymm2
     e36:	c4 e3 5d 06 c9 31    	vperm2f128 $0x31,%ymm1,%ymm4,%ymm1
     e3c:	c5 f8 11 53 c0       	vmovups %xmm2,-0x40(%rbx)
     e41:	c4 e3 7d 19 53 d0 01 	vextractf128 $0x1,%ymm2,-0x30(%rbx)
     e48:	c5 f8 11 4b e0       	vmovups %xmm1,-0x20(%rbx)
     e4d:	c4 e3 7d 19 4b f0 01 	vextractf128 $0x1,%ymm1,-0x10(%rbx)
     e54:	48 39 d3             	cmp    %rdx,%rbx
     e57:	0f 85 e4 fd ff ff    	jne    c41 <_Z17measure_sqrt_timeILm4EEvv+0xc41>
    for (int j = 0; j < LOOP; j++) {
     e5d:	83 e9 01             	sub    $0x1,%ecx
     e60:	0f 85 d5 fd ff ff    	jne    c3b <_Z17measure_sqrt_timeILm4EEvv+0xc3b>
     e66:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
     e6c:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
       end = steady_clock::now();
     e72:	c5 f8 77             	vzeroupper 
     e75:	e8 00 00 00 00       	callq  e7a <_Z17measure_sqrt_timeILm4EEvv+0xe7a>
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
     e7a:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     e81:	9b c4 20 
     e84:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
     e89:	48 29 f0             	sub    %rsi,%rax
     e8c:	48 89 c1             	mov    %rax,%rcx
     e8f:	48 f7 ea             	imul   %rdx
     e92:	48 c1 f9 3f          	sar    $0x3f,%rcx
     e96:	48 c1 fa 07          	sar    $0x7,%rdx
     e9a:	48 29 ca             	sub    %rcx,%rdx
      { return _M_insert(__n); }
     e9d:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # ea4 <_Z17measure_sqrt_timeILm4EEvv+0xea4>
     ea4:	e8 00 00 00 00       	callq  ea9 <_Z17measure_sqrt_timeILm4EEvv+0xea9>
	__ostream_insert(__out, __s,
     ea9:	48 8d 15 3c 00 00 00 	lea    0x3c(%rip),%rdx        # eec <_Z17measure_sqrt_timeILm4EEvv+0xeec>
      { return _M_insert(__n); }
     eb0:	49 89 c4             	mov    %rax,%r12
	__ostream_insert(__out, __s,
     eb3:	41 b8 05 00 00 00    	mov    $0x5,%r8d
     eb9:	48 89 c1             	mov    %rax,%rcx
     ebc:	e8 00 00 00 00       	callq  ec1 <_Z17measure_sqrt_timeILm4EEvv+0xec1>
    { return flush(__os.put(__os.widen('\n'))); }
     ec1:	49 8b 04 24          	mov    (%r12),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     ec5:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     ec9:	49 8b b4 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rsi
     ed0:	00 
      if (!__f)
     ed1:	48 85 f6             	test   %rsi,%rsi
     ed4:	0f 84 98 f3 ff ff    	je     272 <_Z17measure_sqrt_timeILm4EEvv+0x272>
     eda:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
     ede:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     ee4:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
     eea:	0f 84 9d 07 00 00    	je     168d <_Z17measure_sqrt_timeILm4EEvv+0x168d>
     ef0:	0f be 56 43          	movsbl 0x43(%rsi),%edx
     ef4:	4c 89 e1             	mov    %r12,%rcx
     ef7:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
     efd:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
     f03:	c5 f8 77             	vzeroupper 
     f06:	e8 00 00 00 00       	callq  f0b <_Z17measure_sqrt_timeILm4EEvv+0xf0b>
    { return __os.flush(); }
     f0b:	48 89 c1             	mov    %rax,%rcx
     f0e:	e8 00 00 00 00       	callq  f13 <_Z17measure_sqrt_timeILm4EEvv+0xf13>
	__ostream_insert(__out, __s,
     f13:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # f1a <_Z17measure_sqrt_timeILm4EEvv+0xf1a>
     f1a:	48 8d 15 d0 00 00 00 	lea    0xd0(%rip),%rdx        # ff1 <_Z17measure_sqrt_timeILm4EEvv+0xff1>
     f21:	41 b8 2e 00 00 00    	mov    $0x2e,%r8d
     f27:	e8 00 00 00 00       	callq  f2c <_Z17measure_sqrt_timeILm4EEvv+0xf2c>
    { return flush(__os.put(__os.widen('\n'))); }
     f2c:	48 8b 45 00          	mov    0x0(%rbp),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     f30:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     f34:	48 8b b4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%rsi
     f3b:	00 
      if (!__f)
     f3c:	48 85 f6             	test   %rsi,%rsi
     f3f:	0f 84 2d f3 ff ff    	je     272 <_Z17measure_sqrt_timeILm4EEvv+0x272>
     f45:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
     f49:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     f4f:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
     f55:	0f 84 44 06 00 00    	je     159f <_Z17measure_sqrt_timeILm4EEvv+0x159f>
     f5b:	0f be 56 43          	movsbl 0x43(%rsi),%edx
     f5f:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # f66 <_Z17measure_sqrt_timeILm4EEvv+0xf66>
     f66:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
     f6c:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
     f72:	c5 f8 77             	vzeroupper 
     f75:	e8 00 00 00 00       	callq  f7a <_Z17measure_sqrt_timeILm4EEvv+0xf7a>
    { return __os.flush(); }
     f7a:	48 89 c1             	mov    %rax,%rcx
     f7d:	e8 00 00 00 00       	callq  f82 <_Z17measure_sqrt_timeILm4EEvv+0xf82>
       start = steady_clock::now();
     f82:	e8 00 00 00 00       	callq  f87 <_Z17measure_sqrt_timeILm4EEvv+0xf87>
     f87:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
     f8d:	48 89 c6             	mov    %rax,%rsi
     f90:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
     f95:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
     f9b:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
     fa0:	4c 89 ea             	mov    %r13,%rdx
     fa3:	48 89 f8             	mov    %rdi,%rax
     fa6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     fad:	00 00 00 
    initial[0] = (1 << 29) + (ai[0] >> 1) - (1 << 22) - 0x4C000;
     fb0:	c5 fa 6f 12          	vmovdqu (%rdx),%xmm2
     fb4:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
     fb8:	48 83 ea 80          	sub    $0xffffffffffffff80,%rdx
     fbc:	c5 fa 6f 6a a0       	vmovdqu -0x60(%rdx),%xmm5
     fc1:	c4 e3 6d 38 52 90 01 	vinserti128 $0x1,-0x70(%rdx),%ymm2,%ymm2
     fc8:	c5 fa 6f 4a c0       	vmovdqu -0x40(%rdx),%xmm1
     fcd:	c4 e3 55 38 6a b0 01 	vinserti128 $0x1,-0x50(%rdx),%ymm5,%ymm5
     fd4:	c5 fa 6f 72 e0       	vmovdqu -0x20(%rdx),%xmm6
     fd9:	c4 e3 75 38 4a d0 01 	vinserti128 $0x1,-0x30(%rdx),%ymm1,%ymm1
     fe0:	c4 e3 4d 38 72 f0 01 	vinserti128 $0x1,-0x10(%rdx),%ymm6,%ymm6
     fe7:	c4 e3 6d 46 e5 20    	vperm2i128 $0x20,%ymm5,%ymm2,%ymm4
     fed:	c4 e3 6d 46 d5 31    	vperm2i128 $0x31,%ymm5,%ymm2,%ymm2
     ff3:	c5 fd 70 e4 d8       	vpshufd $0xd8,%ymm4,%ymm4
     ff8:	c5 fd 70 d2 d8       	vpshufd $0xd8,%ymm2,%ymm2
     ffd:	c5 dd 6c ea          	vpunpcklqdq %ymm2,%ymm4,%ymm5
    1001:	c5 dd 6d d2          	vpunpckhqdq %ymm2,%ymm4,%ymm2
    1005:	c4 e3 75 46 e6 20    	vperm2i128 $0x20,%ymm6,%ymm1,%ymm4
    100b:	c4 e3 75 46 ce 31    	vperm2i128 $0x31,%ymm6,%ymm1,%ymm1
    1011:	c5 fd 70 e4 d8       	vpshufd $0xd8,%ymm4,%ymm4
    1016:	c5 fd 70 c9 d8       	vpshufd $0xd8,%ymm1,%ymm1
    101b:	c5 dd 6c f9          	vpunpcklqdq %ymm1,%ymm4,%ymm7
    101f:	c5 dd 6d c9          	vpunpckhqdq %ymm1,%ymm4,%ymm1
    1023:	c4 e3 55 46 f7 20    	vperm2i128 $0x20,%ymm7,%ymm5,%ymm6
    1029:	c4 e3 55 46 e7 31    	vperm2i128 $0x31,%ymm7,%ymm5,%ymm4
    102f:	c5 fd 70 f6 d8       	vpshufd $0xd8,%ymm6,%ymm6
    1034:	c5 fd 70 e4 d8       	vpshufd $0xd8,%ymm4,%ymm4
    1039:	c5 cd 6c ec          	vpunpcklqdq %ymm4,%ymm6,%ymm5
    103d:	c5 cd 6d e4          	vpunpckhqdq %ymm4,%ymm6,%ymm4
    1041:	c4 e3 6d 46 f1 20    	vperm2i128 $0x20,%ymm1,%ymm2,%ymm6
    1047:	c4 e3 6d 46 d1 31    	vperm2i128 $0x31,%ymm1,%ymm2,%ymm2
    104d:	c5 fd 70 f6 d8       	vpshufd $0xd8,%ymm6,%ymm6
    1052:	c5 fd 70 ca d8       	vpshufd $0xd8,%ymm2,%ymm1
    1057:	c5 cd 6c d1          	vpunpcklqdq %ymm1,%ymm6,%ymm2
    105b:	c5 cd 6d c9          	vpunpckhqdq %ymm1,%ymm6,%ymm1
    105f:	c5 cd 72 e5 01       	vpsrad $0x1,%ymm5,%ymm6
    1064:	c5 cd fe f3          	vpaddd %ymm3,%ymm6,%ymm6
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
    1068:	c5 54 5e ce          	vdivps %ymm6,%ymm5,%ymm9
    106c:	c5 b4 58 f6          	vaddps %ymm6,%ymm9,%ymm6
    1070:	c5 4c 59 c8          	vmulps %ymm0,%ymm6,%ymm9
    initial[1] = (1 << 29) + (ai[1] >> 1) - (1 << 22) - 0x4C000;
    1074:	c5 cd 72 e2 01       	vpsrad $0x1,%ymm2,%ymm6
    1079:	c5 cd fe f3          	vpaddd %ymm3,%ymm6,%ymm6
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
    107d:	c5 6c 5e c6          	vdivps %ymm6,%ymm2,%ymm8
    1081:	c5 bc 58 f6          	vaddps %ymm6,%ymm8,%ymm6
    1085:	c5 4c 59 c0          	vmulps %ymm0,%ymm6,%ymm8
    initial[2] = (1 << 29) + (ai[2] >> 1) - (1 << 22) - 0x4C000;
    1089:	c5 cd 72 e4 01       	vpsrad $0x1,%ymm4,%ymm6
    108e:	c5 cd fe f3          	vpaddd %ymm3,%ymm6,%ymm6
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
    1092:	c5 dc 5e fe          	vdivps %ymm6,%ymm4,%ymm7
    1096:	c5 c4 58 f6          	vaddps %ymm6,%ymm7,%ymm6
    109a:	c5 cc 59 f8          	vmulps %ymm0,%ymm6,%ymm7
    initial[3] = (1 << 29) + (ai[3] >> 1) - (1 << 22) - 0x4C000;
    109e:	c5 cd 72 e1 01       	vpsrad $0x1,%ymm1,%ymm6
    10a3:	c5 cd fe f3          	vpaddd %ymm3,%ymm6,%ymm6
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
    10a7:	c5 74 5e d6          	vdivps %ymm6,%ymm1,%ymm10
    10ab:	c5 ac 58 f6          	vaddps %ymm6,%ymm10,%ymm6
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
    10af:	c4 41 54 5e d1       	vdivps %ymm9,%ymm5,%ymm10
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
    10b4:	c5 cc 59 f0          	vmulps %ymm0,%ymm6,%ymm6
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
    10b8:	c4 41 2c 58 c9       	vaddps %ymm9,%ymm10,%ymm9
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
    10bd:	c4 41 6c 5e d0       	vdivps %ymm8,%ymm2,%ymm10
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
    10c2:	c5 34 59 c8          	vmulps %ymm0,%ymm9,%ymm9
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
    10c6:	c4 41 2c 58 c0       	vaddps %ymm8,%ymm10,%ymm8
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
    10cb:	c5 5c 5e d7          	vdivps %ymm7,%ymm4,%ymm10
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
    10cf:	c5 3c 59 c0          	vmulps %ymm0,%ymm8,%ymm8
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
    10d3:	c5 ac 58 ff          	vaddps %ymm7,%ymm10,%ymm7
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
    10d7:	c5 74 5e d6          	vdivps %ymm6,%ymm1,%ymm10
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
    10db:	c5 c4 59 f8          	vmulps %ymm0,%ymm7,%ymm7
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
    10df:	c5 ac 58 f6          	vaddps %ymm6,%ymm10,%ymm6
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
    10e3:	c4 41 54 5e d1       	vdivps %ymm9,%ymm5,%ymm10
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
    10e8:	c5 cc 59 f0          	vmulps %ymm0,%ymm6,%ymm6
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
    10ec:	c4 41 2c 58 c9       	vaddps %ymm9,%ymm10,%ymm9
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
    10f1:	c4 41 6c 5e d0       	vdivps %ymm8,%ymm2,%ymm10
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
    10f6:	c5 34 59 c8          	vmulps %ymm0,%ymm9,%ymm9
    10fa:	c4 c1 54 5e e9       	vdivps %ymm9,%ymm5,%ymm5
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
    10ff:	c4 41 2c 58 c0       	vaddps %ymm8,%ymm10,%ymm8
    1104:	c5 3c 59 c0          	vmulps %ymm0,%ymm8,%ymm8
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
    1108:	c5 5c 5e d7          	vdivps %ymm7,%ymm4,%ymm10
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
    110c:	c4 c1 54 58 e9       	vaddps %ymm9,%ymm5,%ymm5
    1111:	c5 d4 59 e8          	vmulps %ymm0,%ymm5,%ymm5
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
    1115:	c4 c1 6c 5e d0       	vdivps %ymm8,%ymm2,%ymm2
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
    111a:	c5 ac 58 ff          	vaddps %ymm7,%ymm10,%ymm7
    111e:	c5 c4 59 f8          	vmulps %ymm0,%ymm7,%ymm7
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
    1122:	c5 74 5e d6          	vdivps %ymm6,%ymm1,%ymm10
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
    1126:	c4 c1 6c 58 d0       	vaddps %ymm8,%ymm2,%ymm2
    112b:	c5 ec 59 d0          	vmulps %ymm0,%ymm2,%ymm2
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
    112f:	c5 dc 5e e7          	vdivps %ymm7,%ymm4,%ymm4
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
    1133:	c5 ac 58 f6          	vaddps %ymm6,%ymm10,%ymm6
    1137:	c5 cc 59 f0          	vmulps %ymm0,%ymm6,%ymm6
    113b:	c5 f4 5e ce          	vdivps %ymm6,%ymm1,%ymm1
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
    113f:	c5 dc 58 e7          	vaddps %ymm7,%ymm4,%ymm4
    1143:	c5 dc 59 e0          	vmulps %ymm0,%ymm4,%ymm4
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
    1147:	c5 f4 58 ce          	vaddps %ymm6,%ymm1,%ymm1
    114b:	c5 d4 14 f4          	vunpcklps %ymm4,%ymm5,%ymm6
    114f:	c5 d4 15 e4          	vunpckhps %ymm4,%ymm5,%ymm4
    1153:	c5 f4 59 c8          	vmulps %ymm0,%ymm1,%ymm1
    1157:	c4 e3 4d 18 fc 01    	vinsertf128 $0x1,%xmm4,%ymm6,%ymm7
    115d:	c4 e3 4d 06 e4 31    	vperm2f128 $0x31,%ymm4,%ymm6,%ymm4
    1163:	c5 ec 14 e9          	vunpcklps %ymm1,%ymm2,%ymm5
    1167:	c5 ec 15 c9          	vunpckhps %ymm1,%ymm2,%ymm1
    116b:	c4 e3 55 18 f1 01    	vinsertf128 $0x1,%xmm1,%ymm5,%ymm6
    1171:	c4 e3 55 06 c9 31    	vperm2f128 $0x31,%ymm1,%ymm5,%ymm1
    1177:	c5 c4 14 d6          	vunpcklps %ymm6,%ymm7,%ymm2
    117b:	c5 c4 15 ee          	vunpckhps %ymm6,%ymm7,%ymm5
    117f:	c4 e3 6d 18 f5 01    	vinsertf128 $0x1,%xmm5,%ymm2,%ymm6
    1185:	c4 e3 6d 06 d5 31    	vperm2f128 $0x31,%ymm5,%ymm2,%ymm2
    118b:	c5 f8 11 70 80       	vmovups %xmm6,-0x80(%rax)
    1190:	c4 e3 7d 19 50 b0 01 	vextractf128 $0x1,%ymm2,-0x50(%rax)
    1197:	c5 f8 11 50 a0       	vmovups %xmm2,-0x60(%rax)
    119c:	c5 dc 14 d1          	vunpcklps %ymm1,%ymm4,%ymm2
    11a0:	c5 dc 15 c9          	vunpckhps %ymm1,%ymm4,%ymm1
    11a4:	c4 e3 7d 19 70 90 01 	vextractf128 $0x1,%ymm6,-0x70(%rax)
    11ab:	c4 e3 6d 18 e1 01    	vinsertf128 $0x1,%xmm1,%ymm2,%ymm4
    11b1:	c4 e3 6d 06 c9 31    	vperm2f128 $0x31,%ymm1,%ymm2,%ymm1
    11b7:	c5 f8 11 60 c0       	vmovups %xmm4,-0x40(%rax)
    11bc:	c4 e3 7d 19 60 d0 01 	vextractf128 $0x1,%ymm4,-0x30(%rax)
    11c3:	c5 f8 11 48 e0       	vmovups %xmm1,-0x20(%rax)
    11c8:	c4 e3 7d 19 48 f0 01 	vextractf128 $0x1,%ymm1,-0x10(%rax)
    11cf:	48 39 d8             	cmp    %rbx,%rax
    11d2:	0f 85 d8 fd ff ff    	jne    fb0 <_Z17measure_sqrt_timeILm4EEvv+0xfb0>
    for (int j = 0; j < LOOP; j++) {
    11d8:	83 e9 01             	sub    $0x1,%ecx
    11db:	0f 85 bf fd ff ff    	jne    fa0 <_Z17measure_sqrt_timeILm4EEvv+0xfa0>
       end = steady_clock::now();
    11e1:	c5 f8 77             	vzeroupper 
    11e4:	e8 00 00 00 00       	callq  11e9 <_Z17measure_sqrt_timeILm4EEvv+0x11e9>
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
    11e9:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
    11f0:	9b c4 20 
    11f3:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    11f8:	48 29 f0             	sub    %rsi,%rax
    11fb:	48 89 c1             	mov    %rax,%rcx
    11fe:	48 f7 ea             	imul   %rdx
    1201:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1205:	48 c1 fa 07          	sar    $0x7,%rdx
    1209:	48 29 ca             	sub    %rcx,%rdx
      { return _M_insert(__n); }
    120c:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1213 <_Z17measure_sqrt_timeILm4EEvv+0x1213>
    1213:	e8 00 00 00 00       	callq  1218 <_Z17measure_sqrt_timeILm4EEvv+0x1218>
	__ostream_insert(__out, __s,
    1218:	48 8d 15 3c 00 00 00 	lea    0x3c(%rip),%rdx        # 125b <_Z17measure_sqrt_timeILm4EEvv+0x125b>
      { return _M_insert(__n); }
    121f:	48 89 c6             	mov    %rax,%rsi
	__ostream_insert(__out, __s,
    1222:	41 b8 05 00 00 00    	mov    $0x5,%r8d
    1228:	48 89 c1             	mov    %rax,%rcx
    122b:	e8 00 00 00 00       	callq  1230 <_Z17measure_sqrt_timeILm4EEvv+0x1230>
    { return flush(__os.put(__os.widen('\n'))); }
    1230:	48 8b 06             	mov    (%rsi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    1233:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    1237:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
    123e:	00 
      if (!__f)
    123f:	48 85 db             	test   %rbx,%rbx
    1242:	0f 84 2a f0 ff ff    	je     272 <_Z17measure_sqrt_timeILm4EEvv+0x272>
    1248:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    124c:	0f 84 a8 03 00 00    	je     15fa <_Z17measure_sqrt_timeILm4EEvv+0x15fa>
    1252:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    1256:	48 89 f1             	mov    %rsi,%rcx
    1259:	e8 00 00 00 00       	callq  125e <_Z17measure_sqrt_timeILm4EEvv+0x125e>
    { return __os.flush(); }
    125e:	48 89 c1             	mov    %rax,%rcx
    1261:	e8 00 00 00 00       	callq  1266 <_Z17measure_sqrt_timeILm4EEvv+0x1266>
       start = steady_clock::now();
    1266:	e8 00 00 00 00       	callq  126b <_Z17measure_sqrt_timeILm4EEvv+0x126b>
    126b:	c5 f9 6f 25 c0 01 00 	vmovdqa 0x1c0(%rip),%xmm4        # 1433 <_Z17measure_sqrt_timeILm4EEvv+0x1433>
    1272:	00 
    1273:	48 89 c6             	mov    %rax,%rsi
    1276:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
    127b:	ba e8 03 00 00       	mov    $0x3e8,%edx
    1280:	c5 f8 28 1d d0 01 00 	vmovaps 0x1d0(%rip),%xmm3        # 1458 <_Z17measure_sqrt_timeILm4EEvv+0x1458>
    1287:	00 
    1288:	31 c0                	xor    %eax,%eax
    128a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    * initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
    1290:	c4 c1 79 6f 44 05 00 	vmovdqa 0x0(%r13,%rax,1),%xmm0
    1297:	c5 e9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm2
    129c:	c5 e9 fe cc          	vpaddd %xmm4,%xmm2,%xmm1
        * root = 0.5 * ( * root + (* a / * root));
    12a0:	c5 f8 5e d1          	vdivps %xmm1,%xmm0,%xmm2
    12a4:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
    12a8:	c5 e8 59 d3          	vmulps %xmm3,%xmm2,%xmm2
    12ac:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
    12b0:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
    12b4:	c5 f0 59 d3          	vmulps %xmm3,%xmm1,%xmm2
    12b8:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
    12bc:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
    12c0:	c5 f0 59 cb          	vmulps %xmm3,%xmm1,%xmm1
    12c4:	c5 f8 5e c1          	vdivps %xmm1,%xmm0,%xmm0
    12c8:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
    12cc:	c5 f8 59 c3          	vmulps %xmm3,%xmm0,%xmm0
    12d0:	c5 f8 29 04 07       	vmovaps %xmm0,(%rdi,%rax,1)
    12d5:	48 83 c0 10          	add    $0x10,%rax
      for (int i = 0; i < 4 * N; i += 4) {
    12d9:	48 3d 00 35 0c 00    	cmp    $0xc3500,%rax
    12df:	75 af                	jne    1290 <_Z17measure_sqrt_timeILm4EEvv+0x1290>
    for (int j = 0; j < LOOP; j++) {
    12e1:	83 ea 01             	sub    $0x1,%edx
    12e4:	75 a2                	jne    1288 <_Z17measure_sqrt_timeILm4EEvv+0x1288>
       end = steady_clock::now();
    12e6:	e8 00 00 00 00       	callq  12eb <_Z17measure_sqrt_timeILm4EEvv+0x12eb>
	__ostream_insert(__out, __s,
    12eb:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 12f2 <_Z17measure_sqrt_timeILm4EEvv+0x12f2>
    12f2:	48 8d 15 00 01 00 00 	lea    0x100(%rip),%rdx        # 13f9 <_Z17measure_sqrt_timeILm4EEvv+0x13f9>
    12f9:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    12fe:	41 b8 34 00 00 00    	mov    $0x34,%r8d
    1304:	48 29 f0             	sub    %rsi,%rax
    1307:	48 89 c3             	mov    %rax,%rbx
    130a:	e8 00 00 00 00       	callq  130f <_Z17measure_sqrt_timeILm4EEvv+0x130f>
    { return flush(__os.put(__os.widen('\n'))); }
    130f:	48 8b 45 00          	mov    0x0(%rbp),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    1313:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    1317:	48 8b b4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%rsi
    131e:	00 
      if (!__f)
    131f:	48 85 f6             	test   %rsi,%rsi
    1322:	0f 84 4a ef ff ff    	je     272 <_Z17measure_sqrt_timeILm4EEvv+0x272>
    1328:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
    132c:	0f 84 2a 03 00 00    	je     165c <_Z17measure_sqrt_timeILm4EEvv+0x165c>
    1332:	0f be 56 43          	movsbl 0x43(%rsi),%edx
    1336:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 133d <_Z17measure_sqrt_timeILm4EEvv+0x133d>
    133d:	e8 00 00 00 00       	callq  1342 <_Z17measure_sqrt_timeILm4EEvv+0x1342>
    { return __os.flush(); }
    1342:	48 89 c1             	mov    %rax,%rcx
    1345:	e8 00 00 00 00       	callq  134a <_Z17measure_sqrt_timeILm4EEvv+0x134a>
    std::cout << time.time_clock().count() / LOOP  << " [ns]" << std::endl;
    134a:	48 89 d8             	mov    %rbx,%rax
    134d:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
    1354:	9b c4 20 
      { return _M_insert(__n); }
    1357:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 135e <_Z17measure_sqrt_timeILm4EEvv+0x135e>
    135e:	48 f7 ea             	imul   %rdx
    1361:	48 c1 fb 3f          	sar    $0x3f,%rbx
    1365:	48 c1 fa 07          	sar    $0x7,%rdx
    1369:	48 29 da             	sub    %rbx,%rdx
    136c:	e8 00 00 00 00       	callq  1371 <_Z17measure_sqrt_timeILm4EEvv+0x1371>
	__ostream_insert(__out, __s,
    1371:	48 8d 15 3c 00 00 00 	lea    0x3c(%rip),%rdx        # 13b4 <_Z17measure_sqrt_timeILm4EEvv+0x13b4>
      { return _M_insert(__n); }
    1378:	48 89 c6             	mov    %rax,%rsi
	__ostream_insert(__out, __s,
    137b:	41 b8 05 00 00 00    	mov    $0x5,%r8d
    1381:	48 89 c1             	mov    %rax,%rcx
    1384:	e8 00 00 00 00       	callq  1389 <_Z17measure_sqrt_timeILm4EEvv+0x1389>
    { return flush(__os.put(__os.widen('\n'))); }
    1389:	48 8b 06             	mov    (%rsi),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    138c:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    1390:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
    1397:	00 
      if (!__f)
    1398:	48 85 db             	test   %rbx,%rbx
    139b:	0f 84 d1 ee ff ff    	je     272 <_Z17measure_sqrt_timeILm4EEvv+0x272>
    13a1:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    13a5:	0f 84 80 02 00 00    	je     162b <_Z17measure_sqrt_timeILm4EEvv+0x162b>
    13ab:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    13af:	48 89 f1             	mov    %rsi,%rcx
    13b2:	e8 00 00 00 00       	callq  13b7 <_Z17measure_sqrt_timeILm4EEvv+0x13b7>
    13b7:	90                   	nop
}
    13b8:	c5 f8 28 b4 24 80 6a 	vmovaps 0x186a80(%rsp),%xmm6
    13bf:	18 00 
    { return __os.flush(); }
    13c1:	48 89 c1             	mov    %rax,%rcx
    13c4:	c5 f8 28 bc 24 90 6a 	vmovaps 0x186a90(%rsp),%xmm7
    13cb:	18 00 
    13cd:	c5 78 28 84 24 a0 6a 	vmovaps 0x186aa0(%rsp),%xmm8
    13d4:	18 00 
    13d6:	c5 78 28 8c 24 b0 6a 	vmovaps 0x186ab0(%rsp),%xmm9
    13dd:	18 00 
    13df:	c5 78 28 94 24 c0 6a 	vmovaps 0x186ac0(%rsp),%xmm10
    13e6:	18 00 
    13e8:	48 81 c4 d8 6a 18 00 	add    $0x186ad8,%rsp
    13ef:	5b                   	pop    %rbx
    13f0:	5e                   	pop    %rsi
    13f1:	5f                   	pop    %rdi
    13f2:	5d                   	pop    %rbp
    13f3:	41 5c                	pop    %r12
    13f5:	41 5d                	pop    %r13
    13f7:	41 5e                	pop    %r14
    13f9:	41 5f                	pop    %r15
    13fb:	e9 00 00 00 00       	jmpq   1400 <_Z17measure_sqrt_timeILm4EEvv+0x1400>
          roots[i + k] = sqrt(floats[i + k]);
    1400:	e8 00 00 00 00       	callq  1405 <_Z17measure_sqrt_timeILm4EEvv+0x1405>
    1405:	e9 0e ee ff ff       	jmpq   218 <_Z17measure_sqrt_timeILm4EEvv+0x218>
    140a:	e8 00 00 00 00       	callq  140f <_Z17measure_sqrt_timeILm4EEvv+0x140f>
    140f:	e9 e0 ed ff ff       	jmpq   1f4 <_Z17measure_sqrt_timeILm4EEvv+0x1f4>
	this->_M_widen_init();
    1414:	48 89 d9             	mov    %rbx,%rcx
    1417:	e8 00 00 00 00       	callq  141c <_Z17measure_sqrt_timeILm4EEvv+0x141c>
	return this->do_widen(__c);
    141c:	48 8b 03             	mov    (%rbx),%rax
    141f:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1426 <_Z17measure_sqrt_timeILm4EEvv+0x1426>
    1426:	ba 0a 00 00 00       	mov    $0xa,%edx
    142b:	48 8b 40 30          	mov    0x30(%rax),%rax
    142f:	48 39 c8             	cmp    %rcx,%rax
    1432:	0f 84 d5 ec ff ff    	je     10d <_Z17measure_sqrt_timeILm4EEvv+0x10d>
    1438:	48 89 d9             	mov    %rbx,%rcx
    143b:	ff d0                	callq  *%rax
    143d:	0f be d0             	movsbl %al,%edx
    1440:	e9 c8 ec ff ff       	jmpq   10d <_Z17measure_sqrt_timeILm4EEvv+0x10d>
	this->_M_widen_init();
    1445:	48 89 d9             	mov    %rbx,%rcx
    1448:	e8 00 00 00 00       	callq  144d <_Z17measure_sqrt_timeILm4EEvv+0x144d>
	return this->do_widen(__c);
    144d:	48 8b 03             	mov    (%rbx),%rax
    1450:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1457 <_Z17measure_sqrt_timeILm4EEvv+0x1457>
    1457:	ba 0a 00 00 00       	mov    $0xa,%edx
    145c:	48 8b 40 30          	mov    0x30(%rax),%rax
    1460:	48 39 c8             	cmp    %rcx,%rax
    1463:	0f 84 2c ec ff ff    	je     95 <_Z17measure_sqrt_timeILm4EEvv+0x95>
    1469:	48 89 d9             	mov    %rbx,%rcx
    146c:	ff d0                	callq  *%rax
    146e:	0f be d0             	movsbl %al,%edx
    1471:	e9 1f ec ff ff       	jmpq   95 <_Z17measure_sqrt_timeILm4EEvv+0x95>
	this->_M_widen_init();
    1476:	48 89 d9             	mov    %rbx,%rcx
    1479:	e8 00 00 00 00       	callq  147e <_Z17measure_sqrt_timeILm4EEvv+0x147e>
	return this->do_widen(__c);
    147e:	48 8b 03             	mov    (%rbx),%rax
    1481:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1488 <_Z17measure_sqrt_timeILm4EEvv+0x1488>
    1488:	ba 0a 00 00 00       	mov    $0xa,%edx
    148d:	48 8b 40 30          	mov    0x30(%rax),%rax
    1491:	48 39 c8             	cmp    %rcx,%rax
    1494:	0f 84 f9 ec ff ff    	je     193 <_Z17measure_sqrt_timeILm4EEvv+0x193>
    149a:	48 89 d9             	mov    %rbx,%rcx
    149d:	ff d0                	callq  *%rax
    149f:	0f be d0             	movsbl %al,%edx
    14a2:	e9 ec ec ff ff       	jmpq   193 <_Z17measure_sqrt_timeILm4EEvv+0x193>
    14a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    14ae:	00 00 
        roots[i] = sqrt1<LOOPS>(floats + i);
    14b0:	41 bf 3f 0d 03 00    	mov    $0x30d3f,%r15d
      for (int i = 0; i < 4 * N; i++) {
    14b6:	41 be 01 00 00 00    	mov    $0x1,%r14d
    14bc:	e9 f3 f1 ff ff       	jmpq   6b4 <_Z17measure_sqrt_timeILm4EEvv+0x6b4>
    14c1:	41 bf 40 0d 03 00    	mov    $0x30d40,%r15d
    14c7:	45 31 f6             	xor    %r14d,%r14d
    14ca:	e9 e5 f1 ff ff       	jmpq   6b4 <_Z17measure_sqrt_timeILm4EEvv+0x6b4>
	this->_M_widen_init();
    14cf:	48 89 d9             	mov    %rbx,%rcx
    14d2:	e8 00 00 00 00       	callq  14d7 <_Z17measure_sqrt_timeILm4EEvv+0x14d7>
	return this->do_widen(__c);
    14d7:	48 8b 03             	mov    (%rbx),%rax
    14da:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 14e1 <_Z17measure_sqrt_timeILm4EEvv+0x14e1>
    14e1:	ba 0a 00 00 00       	mov    $0xa,%edx
    14e6:	48 8b 40 30          	mov    0x30(%rax),%rax
    14ea:	48 39 c8             	cmp    %rcx,%rax
    14ed:	0f 84 78 ee ff ff    	je     36b <_Z17measure_sqrt_timeILm4EEvv+0x36b>
    14f3:	48 89 d9             	mov    %rbx,%rcx
    14f6:	ff d0                	callq  *%rax
    14f8:	0f be d0             	movsbl %al,%edx
    14fb:	e9 6b ee ff ff       	jmpq   36b <_Z17measure_sqrt_timeILm4EEvv+0x36b>
        roots[i] = sqrt1<LOOPS>(floats + i);
    1500:	41 bf 3a 0d 03 00    	mov    $0x30d3a,%r15d
      for (int i = 0; i < 4 * N; i++) {
    1506:	41 be 06 00 00 00    	mov    $0x6,%r14d
    150c:	e9 a3 f1 ff ff       	jmpq   6b4 <_Z17measure_sqrt_timeILm4EEvv+0x6b4>
        roots[i] = sqrt1<LOOPS>(floats + i);
    1511:	41 bf 3c 0d 03 00    	mov    $0x30d3c,%r15d
      for (int i = 0; i < 4 * N; i++) {
    1517:	41 be 04 00 00 00    	mov    $0x4,%r14d
    151d:	e9 92 f1 ff ff       	jmpq   6b4 <_Z17measure_sqrt_timeILm4EEvv+0x6b4>
        roots[i] = sqrt1<LOOPS>(floats + i);
    1522:	41 bf 3d 0d 03 00    	mov    $0x30d3d,%r15d
      for (int i = 0; i < 4 * N; i++) {
    1528:	41 be 03 00 00 00    	mov    $0x3,%r14d
    152e:	e9 81 f1 ff ff       	jmpq   6b4 <_Z17measure_sqrt_timeILm4EEvv+0x6b4>
        roots[i] = sqrt1<LOOPS>(floats + i);
    1533:	41 bf 3e 0d 03 00    	mov    $0x30d3e,%r15d
      for (int i = 0; i < 4 * N; i++) {
    1539:	41 be 02 00 00 00    	mov    $0x2,%r14d
    153f:	e9 70 f1 ff ff       	jmpq   6b4 <_Z17measure_sqrt_timeILm4EEvv+0x6b4>
	this->_M_widen_init();
    1544:	48 89 d9             	mov    %rbx,%rcx
    1547:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
    154d:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
    1553:	c5 f8 77             	vzeroupper 
    1556:	e8 00 00 00 00       	callq  155b <_Z17measure_sqrt_timeILm4EEvv+0x155b>
	return this->do_widen(__c);
    155b:	48 8b 03             	mov    (%rbx),%rax
    155e:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1565 <_Z17measure_sqrt_timeILm4EEvv+0x1565>
    1565:	ba 0a 00 00 00       	mov    $0xa,%edx
    156a:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    1570:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    1576:	48 8b 40 30          	mov    0x30(%rax),%rax
    157a:	48 39 c8             	cmp    %rcx,%rax
    157d:	0f 84 70 f6 ff ff    	je     bf3 <_Z17measure_sqrt_timeILm4EEvv+0xbf3>
    1583:	48 89 d9             	mov    %rbx,%rcx
    1586:	c5 f8 77             	vzeroupper 
    1589:	ff d0                	callq  *%rax
    158b:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    1591:	0f be d0             	movsbl %al,%edx
    1594:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    159a:	e9 54 f6 ff ff       	jmpq   bf3 <_Z17measure_sqrt_timeILm4EEvv+0xbf3>
	this->_M_widen_init();
    159f:	48 89 f1             	mov    %rsi,%rcx
    15a2:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
    15a8:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
    15ae:	c5 f8 77             	vzeroupper 
    15b1:	e8 00 00 00 00       	callq  15b6 <_Z17measure_sqrt_timeILm4EEvv+0x15b6>
	return this->do_widen(__c);
    15b6:	48 8b 06             	mov    (%rsi),%rax
    15b9:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 15c0 <_Z17measure_sqrt_timeILm4EEvv+0x15c0>
    15c0:	ba 0a 00 00 00       	mov    $0xa,%edx
    15c5:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    15cb:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    15d1:	48 8b 40 30          	mov    0x30(%rax),%rax
    15d5:	48 39 c8             	cmp    %rcx,%rax
    15d8:	0f 84 81 f9 ff ff    	je     f5f <_Z17measure_sqrt_timeILm4EEvv+0xf5f>
    15de:	48 89 f1             	mov    %rsi,%rcx
    15e1:	c5 f8 77             	vzeroupper 
    15e4:	ff d0                	callq  *%rax
    15e6:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    15ec:	0f be d0             	movsbl %al,%edx
    15ef:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    15f5:	e9 65 f9 ff ff       	jmpq   f5f <_Z17measure_sqrt_timeILm4EEvv+0xf5f>
	this->_M_widen_init();
    15fa:	48 89 d9             	mov    %rbx,%rcx
    15fd:	e8 00 00 00 00       	callq  1602 <_Z17measure_sqrt_timeILm4EEvv+0x1602>
	return this->do_widen(__c);
    1602:	48 8b 03             	mov    (%rbx),%rax
    1605:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 160c <_Z17measure_sqrt_timeILm4EEvv+0x160c>
    160c:	ba 0a 00 00 00       	mov    $0xa,%edx
    1611:	48 8b 40 30          	mov    0x30(%rax),%rax
    1615:	48 39 c8             	cmp    %rcx,%rax
    1618:	0f 84 38 fc ff ff    	je     1256 <_Z17measure_sqrt_timeILm4EEvv+0x1256>
    161e:	48 89 d9             	mov    %rbx,%rcx
    1621:	ff d0                	callq  *%rax
    1623:	0f be d0             	movsbl %al,%edx
    1626:	e9 2b fc ff ff       	jmpq   1256 <_Z17measure_sqrt_timeILm4EEvv+0x1256>
	this->_M_widen_init();
    162b:	48 89 d9             	mov    %rbx,%rcx
    162e:	e8 00 00 00 00       	callq  1633 <_Z17measure_sqrt_timeILm4EEvv+0x1633>
	return this->do_widen(__c);
    1633:	48 8b 03             	mov    (%rbx),%rax
    1636:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 163d <_Z17measure_sqrt_timeILm4EEvv+0x163d>
    163d:	ba 0a 00 00 00       	mov    $0xa,%edx
    1642:	48 8b 40 30          	mov    0x30(%rax),%rax
    1646:	48 39 c8             	cmp    %rcx,%rax
    1649:	0f 84 60 fd ff ff    	je     13af <_Z17measure_sqrt_timeILm4EEvv+0x13af>
    164f:	48 89 d9             	mov    %rbx,%rcx
    1652:	ff d0                	callq  *%rax
    1654:	0f be d0             	movsbl %al,%edx
    1657:	e9 53 fd ff ff       	jmpq   13af <_Z17measure_sqrt_timeILm4EEvv+0x13af>
	this->_M_widen_init();
    165c:	48 89 f1             	mov    %rsi,%rcx
    165f:	e8 00 00 00 00       	callq  1664 <_Z17measure_sqrt_timeILm4EEvv+0x1664>
	return this->do_widen(__c);
    1664:	48 8b 06             	mov    (%rsi),%rax
    1667:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 166e <_Z17measure_sqrt_timeILm4EEvv+0x166e>
    166e:	ba 0a 00 00 00       	mov    $0xa,%edx
    1673:	48 8b 40 30          	mov    0x30(%rax),%rax
    1677:	48 39 c8             	cmp    %rcx,%rax
    167a:	0f 84 b6 fc ff ff    	je     1336 <_Z17measure_sqrt_timeILm4EEvv+0x1336>
    1680:	48 89 f1             	mov    %rsi,%rcx
    1683:	ff d0                	callq  *%rax
    1685:	0f be d0             	movsbl %al,%edx
    1688:	e9 a9 fc ff ff       	jmpq   1336 <_Z17measure_sqrt_timeILm4EEvv+0x1336>
	this->_M_widen_init();
    168d:	48 89 f1             	mov    %rsi,%rcx
    1690:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
    1696:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
    169c:	c5 f8 77             	vzeroupper 
    169f:	e8 00 00 00 00       	callq  16a4 <_Z17measure_sqrt_timeILm4EEvv+0x16a4>
	return this->do_widen(__c);
    16a4:	48 8b 06             	mov    (%rsi),%rax
    16a7:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 16ae <_Z17measure_sqrt_timeILm4EEvv+0x16ae>
    16ae:	ba 0a 00 00 00       	mov    $0xa,%edx
    16b3:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    16b9:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    16bf:	48 8b 40 30          	mov    0x30(%rax),%rax
    16c3:	48 39 c8             	cmp    %rcx,%rax
    16c6:	0f 84 28 f8 ff ff    	je     ef4 <_Z17measure_sqrt_timeILm4EEvv+0xef4>
    16cc:	48 89 f1             	mov    %rsi,%rcx
    16cf:	c5 f8 77             	vzeroupper 
    16d2:	ff d0                	callq  *%rax
    16d4:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    16da:	0f be d0             	movsbl %al,%edx
    16dd:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    16e3:	e9 0c f8 ff ff       	jmpq   ef4 <_Z17measure_sqrt_timeILm4EEvv+0xef4>
	this->_M_widen_init();
    16e8:	48 89 d9             	mov    %rbx,%rcx
    16eb:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
    16f1:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
    16f7:	c5 f8 77             	vzeroupper 
    16fa:	e8 00 00 00 00       	callq  16ff <_Z17measure_sqrt_timeILm4EEvv+0x16ff>
	return this->do_widen(__c);
    16ff:	48 8b 03             	mov    (%rbx),%rax
    1702:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1709 <_Z17measure_sqrt_timeILm4EEvv+0x1709>
    1709:	ba 0a 00 00 00       	mov    $0xa,%edx
    170e:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    1714:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    171a:	48 8b 40 30          	mov    0x30(%rax),%rax
    171e:	48 39 c8             	cmp    %rcx,%rax
    1721:	0f 84 61 f4 ff ff    	je     b88 <_Z17measure_sqrt_timeILm4EEvv+0xb88>
    1727:	48 89 d9             	mov    %rbx,%rcx
    172a:	c5 f8 77             	vzeroupper 
    172d:	ff d0                	callq  *%rax
    172f:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    1735:	0f be d0             	movsbl %al,%edx
    1738:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    173e:	e9 45 f4 ff ff       	jmpq   b88 <_Z17measure_sqrt_timeILm4EEvv+0xb88>
	this->_M_widen_init();
    1743:	48 89 d9             	mov    %rbx,%rcx
    1746:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
    174c:	c5 fe 7f 5c 24 20    	vmovdqu %ymm3,0x20(%rsp)
    1752:	c5 f8 77             	vzeroupper 
    1755:	e8 00 00 00 00       	callq  175a <_Z17measure_sqrt_timeILm4EEvv+0x175a>
	return this->do_widen(__c);
    175a:	48 8b 03             	mov    (%rbx),%rax
    175d:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1764 <_Z17measure_sqrt_timeILm4EEvv+0x1764>
    1764:	ba 0a 00 00 00       	mov    $0xa,%edx
    1769:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    176f:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    1775:	48 8b 40 30          	mov    0x30(%rax),%rax
    1779:	48 39 c8             	cmp    %rcx,%rax
    177c:	0f 84 53 f3 ff ff    	je     ad5 <_Z17measure_sqrt_timeILm4EEvv+0xad5>
    1782:	48 89 d9             	mov    %rbx,%rcx
    1785:	c5 f8 77             	vzeroupper 
    1788:	ff d0                	callq  *%rax
    178a:	c5 fc 10 44 24 40    	vmovups 0x40(%rsp),%ymm0
    1790:	0f be d0             	movsbl %al,%edx
    1793:	c5 fe 6f 5c 24 20    	vmovdqu 0x20(%rsp),%ymm3
    1799:	e9 37 f3 ff ff       	jmpq   ad5 <_Z17measure_sqrt_timeILm4EEvv+0xad5>
	this->_M_widen_init();
    179e:	48 89 d9             	mov    %rbx,%rcx
    17a1:	e8 00 00 00 00       	callq  17a6 <_Z17measure_sqrt_timeILm4EEvv+0x17a6>
	return this->do_widen(__c);
    17a6:	48 8b 03             	mov    (%rbx),%rax
    17a9:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 17b0 <_Z17measure_sqrt_timeILm4EEvv+0x17b0>
    17b0:	ba 0a 00 00 00       	mov    $0xa,%edx
    17b5:	48 8b 40 30          	mov    0x30(%rax),%rax
    17b9:	48 39 c8             	cmp    %rcx,%rax
    17bc:	0f 84 59 eb ff ff    	je     31b <_Z17measure_sqrt_timeILm4EEvv+0x31b>
    17c2:	48 89 d9             	mov    %rbx,%rcx
    17c5:	ff d0                	callq  *%rax
    17c7:	0f be d0             	movsbl %al,%edx
    17ca:	e9 4c eb ff ff       	jmpq   31b <_Z17measure_sqrt_timeILm4EEvv+0x31b>
        roots[i] = sqrt1<LOOPS>(floats + i);
    17cf:	41 bf 3b 0d 03 00    	mov    $0x30d3b,%r15d
      for (int i = 0; i < 4 * N; i++) {
    17d5:	41 be 05 00 00 00    	mov    $0x5,%r14d
    17db:	e9 d4 ee ff ff       	jmpq   6b4 <_Z17measure_sqrt_timeILm4EEvv+0x6b4>

Disassembly of section .text.startup:

0000000000000000 <main>:

int main(void) {
   0:	48 83 ec 28          	sub    $0x28,%rsp
   4:	e8 00 00 00 00       	callq  9 <main+0x9>
    measure_sqrt_time<2>();
   9:	e8 00 00 00 00       	callq  e <main+0xe>
    // uncomment next lines for disassembly
    measure_sqrt_time<3>();
   e:	e8 00 00 00 00       	callq  13 <main+0x13>
    measure_sqrt_time<4>();
  13:	e8 00 00 00 00       	callq  18 <main+0x18>
    return 1;
}
  18:	b8 01 00 00 00       	mov    $0x1,%eax
  1d:	48 83 c4 28          	add    $0x28,%rsp
  21:	c3                   	retq   
  22:	0f 1f 40 00          	nopl   0x0(%rax)
  26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  2d:	00 00 00 

0000000000000030 <_GLOBAL__sub_I__Z13random_doublev>:
  30:	48 83 ec 28          	sub    $0x28,%rsp
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  //@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
  34:	48 8d 0d c8 13 00 00 	lea    0x13c8(%rip),%rcx        # 1403 <_ZStL8__ioinit+0x3b>
  3b:	e8 00 00 00 00       	callq  40 <_GLOBAL__sub_I__Z13random_doublev+0x10>
  40:	4c 8b 05 00 00 00 00 	mov    0x0(%rip),%r8        # 47 <_GLOBAL__sub_I__Z13random_doublev+0x17>
  47:	48 8d 15 c8 13 00 00 	lea    0x13c8(%rip),%rdx        # 1416 <_ZStL8__ioinit+0x4e>
  4e:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 55 <_GLOBAL__sub_I__Z13random_doublev+0x25>
  55:	48 83 c4 28          	add    $0x28,%rsp
  59:	e9 00 00 00 00       	jmpq   5e <_GLOBAL__sub_I__Z13random_doublev+0x2e>
  5e:	90                   	nop
  5f:	90                   	nop
