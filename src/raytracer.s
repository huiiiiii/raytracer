
raytracer.o:     file format pe-x86-64


Disassembly of section .text:

0000000000000000 <_ZlsRSoRK6Screen>:
  }
};


// puts out the image as PPM
std::ostream & operator<<(std::ostream & out, const Screen & screen) {
       0:	41 57                	push   %r15
       2:	41 56                	push   %r14
       4:	41 55                	push   %r13
       6:	41 54                	push   %r12
       8:	55                   	push   %rbp
       9:	57                   	push   %rdi
       a:	56                   	push   %rsi
       b:	53                   	push   %rbx
       c:	48 83 ec 38          	sub    $0x38,%rsp
      10:	c5 f8 29 74 24 20    	vmovaps %xmm6,0x20(%rsp)
    operator<<(basic_ostream<char, _Traits>& __out, const char* __s)
    {
      if (!__s)
	__out.setstate(ios_base::badbit);
      else
	__ostream_insert(__out, __s,
      16:	41 b8 02 00 00 00    	mov    $0x2,%r8d
      1c:	48 89 d3             	mov    %rdx,%rbx
      1f:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 26 <_ZlsRSoRK6Screen+0x26>
      26:	49 89 ce             	mov    %rcx,%r14
      29:	e8 00 00 00 00       	callq  2e <_ZlsRSoRK6Screen+0x2e>
   *  for more on this subject.
  */
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    endl(basic_ostream<_CharT, _Traits>& __os)
    { return flush(__os.put(__os.widen('\n'))); }
      2e:	49 8b 06             	mov    (%r14),%rax
       *  Additional l10n notes are at
       *  http://gcc.gnu.org/onlinedocs/libstdc++/manual/localization.html
      */
      char_type
      widen(char __c) const
      { return __check_facet(_M_ctype).widen(__c); }
      31:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      35:	49 8b b4 06 f0 00 00 	mov    0xf0(%r14,%rax,1),%rsi
      3c:	00 
      if (!__f)
      3d:	48 85 f6             	test   %rsi,%rsi
      40:	0f 84 6f 03 00 00    	je     3b5 <_ZlsRSoRK6Screen+0x3b5>
       *  @return  The converted character.
      */
      char_type
      widen(char __c) const
      {
	if (_M_widen_ok)
      46:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
      4a:	0f 84 34 03 00 00    	je     384 <_ZlsRSoRK6Screen+0x384>
      50:	0f be 56 43          	movsbl 0x43(%rsi),%edx
      54:	4c 89 f1             	mov    %r14,%rcx
      57:	e8 00 00 00 00       	callq  5c <_ZlsRSoRK6Screen+0x5c>
   *  This manipulator simply calls the stream's @c flush() member function.
  */
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    flush(basic_ostream<_CharT, _Traits>& __os)
    { return __os.flush(); }
      5c:	48 89 c1             	mov    %rax,%rcx
      5f:	e8 00 00 00 00       	callq  64 <_ZlsRSoRK6Screen+0x64>
      { return _M_insert(__n); }
      64:	48 8b 13             	mov    (%rbx),%rdx
      67:	4c 89 f1             	mov    %r14,%rcx
      6a:	e8 00 00 00 00       	callq  6f <_ZlsRSoRK6Screen+0x6f>
	__ostream_insert(__out, __s,
      6f:	48 8d 15 03 00 00 00 	lea    0x3(%rip),%rdx        # 79 <_ZlsRSoRK6Screen+0x79>
      76:	41 b8 01 00 00 00    	mov    $0x1,%r8d
      7c:	48 89 c1             	mov    %rax,%rcx
      { return _M_insert(__n); }
      7f:	48 89 c6             	mov    %rax,%rsi
	__ostream_insert(__out, __s,
      82:	e8 00 00 00 00       	callq  87 <_ZlsRSoRK6Screen+0x87>
      { return _M_insert(__n); }
      87:	48 8b 53 08          	mov    0x8(%rbx),%rdx
      8b:	48 89 f1             	mov    %rsi,%rcx
      8e:	e8 00 00 00 00       	callq  93 <_ZlsRSoRK6Screen+0x93>
      93:	48 89 c7             	mov    %rax,%rdi
    { return flush(__os.put(__os.widen('\n'))); }
      96:	48 8b 00             	mov    (%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
      99:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      9d:	48 8b b4 07 f0 00 00 	mov    0xf0(%rdi,%rax,1),%rsi
      a4:	00 
      if (!__f)
      a5:	48 85 f6             	test   %rsi,%rsi
      a8:	0f 84 07 03 00 00    	je     3b5 <_ZlsRSoRK6Screen+0x3b5>
      ae:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
      b2:	0f 84 9b 02 00 00    	je     353 <_ZlsRSoRK6Screen+0x353>
      b8:	0f be 56 43          	movsbl 0x43(%rsi),%edx
      bc:	48 89 f9             	mov    %rdi,%rcx
      bf:	e8 00 00 00 00       	callq  c4 <_ZlsRSoRK6Screen+0xc4>
    { return __os.flush(); }
      c4:	48 89 c1             	mov    %rax,%rcx
      c7:	e8 00 00 00 00       	callq  cc <_ZlsRSoRK6Screen+0xcc>
	__ostream_insert(__out, __s,
      cc:	48 8d 15 05 00 00 00 	lea    0x5(%rip),%rdx        # d8 <_ZlsRSoRK6Screen+0xd8>
      d3:	41 b8 03 00 00 00    	mov    $0x3,%r8d
      d9:	4c 89 f1             	mov    %r14,%rcx
      dc:	e8 00 00 00 00       	callq  e1 <_ZlsRSoRK6Screen+0xe1>
    { return flush(__os.put(__os.widen('\n'))); }
      e1:	49 8b 06             	mov    (%r14),%rax
      { return __check_facet(_M_ctype).widen(__c); }
      e4:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      e8:	49 8b b4 06 f0 00 00 	mov    0xf0(%r14,%rax,1),%rsi
      ef:	00 
      if (!__f)
      f0:	48 85 f6             	test   %rsi,%rsi
      f3:	0f 84 bc 02 00 00    	je     3b5 <_ZlsRSoRK6Screen+0x3b5>
      f9:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
      fd:	0f 84 1f 02 00 00    	je     322 <_ZlsRSoRK6Screen+0x322>
     103:	0f be 56 43          	movsbl 0x43(%rsi),%edx
     107:	4c 89 f1             	mov    %r14,%rcx
     10a:	e8 00 00 00 00       	callq  10f <_ZlsRSoRK6Screen+0x10f>
    { return __os.flush(); }
     10f:	48 89 c1             	mov    %rax,%rcx
     112:	e8 00 00 00 00       	callq  117 <_ZlsRSoRK6Screen+0x117>
  out << "P3" << std::endl;
  out << screen.getWidth() << " " << screen.getHeight() << std::endl;
  out << "255" << std::endl;
  for (size_t y = 0u; y < screen.getHeight(); y++) {
     117:	48 83 7b 08 00       	cmpq   $0x0,0x8(%rbx)
     11c:	4c 8b 2d 00 00 00 00 	mov    0x0(%rip),%r13        # 123 <_ZlsRSoRK6Screen+0x123>
     123:	0f 84 49 01 00 00    	je     272 <_ZlsRSoRK6Screen+0x272>
     129:	4c 8b 2d 00 00 00 00 	mov    0x0(%rip),%r13        # 130 <_ZlsRSoRK6Screen+0x130>
     130:	c5 fb 10 35 38 03 00 	vmovsd 0x338(%rip),%xmm6        # 470 <_Z9write_bmpRSoRK6Screen+0xb0>
     137:	00 
	__ostream_insert(__out, __s,
     138:	48 8d 2d 03 00 00 00 	lea    0x3(%rip),%rbp        # 142 <_ZlsRSoRK6Screen+0x142>
     13f:	31 ff                	xor    %edi,%edi
	return _M_insert(static_cast<unsigned long>(__n));
     141:	4d 89 ec             	mov    %r13,%r12
    for (size_t x = 0u; x < screen.getWidth(); x++) {
     144:	48 8b 03             	mov    (%rbx),%rax
     147:	48 85 c0             	test   %rax,%rax
     14a:	0f 84 dd 00 00 00    	je     22d <_ZlsRSoRK6Screen+0x22d>
     150:	31 f6                	xor    %esi,%esi
    return buffer[x + y * width];
     152:	48 0f af c7          	imul   %rdi,%rax
     156:	48 8b 53 10          	mov    0x10(%rbx),%rdx
     15a:	4c 89 e1             	mov    %r12,%rcx
      std::cout << (unsigned short) (screen.getPixel(x,y).getRed() * 255.0) << " "
     15d:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
      /// Access an element of owned array.
      typename std::add_lvalue_reference<element_type>::type
      operator[](size_t __i) const
      {
	__glibcxx_assert(get() != pointer());
	return get()[__i];
     161:	48 01 f0             	add    %rsi,%rax
    return buffer[x + y * width];
     164:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
     168:	48 8d 04 82          	lea    (%rdx,%rax,4),%rax
      std::cout << (unsigned short) (screen.getPixel(x,y).getRed() * 255.0) << " "
     16c:	c5 fa 5a 00          	vcvtss2sd (%rax),%xmm0,%xmm0
     170:	c5 fb 59 c6          	vmulsd %xmm6,%xmm0,%xmm0
     174:	c5 fb 2c d0          	vcvttsd2si %xmm0,%edx
     178:	0f b7 d2             	movzwl %dx,%edx
     17b:	e8 00 00 00 00       	callq  180 <_ZlsRSoRK6Screen+0x180>
	__ostream_insert(__out, __s,
     180:	41 b8 01 00 00 00    	mov    $0x1,%r8d
     186:	48 89 ea             	mov    %rbp,%rdx
     189:	48 89 c1             	mov    %rax,%rcx
	return _M_insert(static_cast<unsigned long>(__n));
     18c:	49 89 c7             	mov    %rax,%r15
	__ostream_insert(__out, __s,
     18f:	e8 00 00 00 00       	callq  194 <_ZlsRSoRK6Screen+0x194>
    return buffer[x + y * width];
     194:	48 8b 03             	mov    (%rbx),%rax
     197:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
                << (unsigned short) (screen.getPixel(x,y).getGreen() * 255.0) << " "
     19b:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    return buffer[x + y * width];
     19f:	48 0f af c7          	imul   %rdi,%rax
     1a3:	48 01 f0             	add    %rsi,%rax
     1a6:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
     1aa:	48 8d 04 81          	lea    (%rcx,%rax,4),%rax
	return _M_insert(static_cast<unsigned long>(__n));
     1ae:	4c 89 f9             	mov    %r15,%rcx
                << (unsigned short) (screen.getPixel(x,y).getGreen() * 255.0) << " "
     1b1:	c5 fa 5a 40 04       	vcvtss2sd 0x4(%rax),%xmm0,%xmm0
     1b6:	c5 fb 59 c6          	vmulsd %xmm6,%xmm0,%xmm0
     1ba:	c5 fb 2c d0          	vcvttsd2si %xmm0,%edx
     1be:	0f b7 d2             	movzwl %dx,%edx
     1c1:	e8 00 00 00 00       	callq  1c6 <_ZlsRSoRK6Screen+0x1c6>
	__ostream_insert(__out, __s,
     1c6:	41 b8 01 00 00 00    	mov    $0x1,%r8d
     1cc:	48 89 ea             	mov    %rbp,%rdx
     1cf:	48 89 c1             	mov    %rax,%rcx
	return _M_insert(static_cast<unsigned long>(__n));
     1d2:	49 89 c7             	mov    %rax,%r15
	__ostream_insert(__out, __s,
     1d5:	e8 00 00 00 00       	callq  1da <_ZlsRSoRK6Screen+0x1da>
    return buffer[x + y * width];
     1da:	48 8b 03             	mov    (%rbx),%rax
     1dd:	4c 8b 43 10          	mov    0x10(%rbx),%r8
	return _M_insert(static_cast<unsigned long>(__n));
     1e1:	4c 89 f9             	mov    %r15,%rcx
                << (unsigned short) (screen.getPixel(x,y).getBlue() * 255.0) << " ";
     1e4:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    return buffer[x + y * width];
     1e8:	48 0f af c7          	imul   %rdi,%rax
     1ec:	48 01 f0             	add    %rsi,%rax
    for (size_t x = 0u; x < screen.getWidth(); x++) {
     1ef:	48 83 c6 01          	add    $0x1,%rsi
    return buffer[x + y * width];
     1f3:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
     1f7:	49 8d 04 80          	lea    (%r8,%rax,4),%rax
                << (unsigned short) (screen.getPixel(x,y).getBlue() * 255.0) << " ";
     1fb:	c5 fa 5a 40 08       	vcvtss2sd 0x8(%rax),%xmm0,%xmm0
     200:	c5 fb 59 c6          	vmulsd %xmm6,%xmm0,%xmm0
     204:	c5 fb 2c d0          	vcvttsd2si %xmm0,%edx
     208:	0f b7 d2             	movzwl %dx,%edx
     20b:	e8 00 00 00 00       	callq  210 <_ZlsRSoRK6Screen+0x210>
	__ostream_insert(__out, __s,
     210:	41 b8 01 00 00 00    	mov    $0x1,%r8d
     216:	48 89 ea             	mov    %rbp,%rdx
     219:	48 89 c1             	mov    %rax,%rcx
     21c:	e8 00 00 00 00       	callq  221 <_ZlsRSoRK6Screen+0x221>
    for (size_t x = 0u; x < screen.getWidth(); x++) {
     221:	48 8b 03             	mov    (%rbx),%rax
     224:	48 39 c6             	cmp    %rax,%rsi
     227:	0f 82 25 ff ff ff    	jb     152 <_ZlsRSoRK6Screen+0x152>
    { return flush(__os.put(__os.widen('\n'))); }
     22d:	49 8b 45 00          	mov    0x0(%r13),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     231:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     235:	49 8b b4 05 f0 00 00 	mov    0xf0(%r13,%rax,1),%rsi
     23c:	00 
      if (!__f)
     23d:	48 85 f6             	test   %rsi,%rsi
     240:	0f 84 6f 01 00 00    	je     3b5 <_ZlsRSoRK6Screen+0x3b5>
     246:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
     24a:	74 78                	je     2c4 <_ZlsRSoRK6Screen+0x2c4>
     24c:	0f be 56 43          	movsbl 0x43(%rsi),%edx
     250:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 257 <_ZlsRSoRK6Screen+0x257>
  for (size_t y = 0u; y < screen.getHeight(); y++) {
     257:	48 83 c7 01          	add    $0x1,%rdi
     25b:	e8 00 00 00 00       	callq  260 <_ZlsRSoRK6Screen+0x260>
    { return __os.flush(); }
     260:	48 89 c1             	mov    %rax,%rcx
     263:	e8 00 00 00 00       	callq  268 <_ZlsRSoRK6Screen+0x268>
     268:	48 3b 7b 08          	cmp    0x8(%rbx),%rdi
     26c:	0f 82 d2 fe ff ff    	jb     144 <_ZlsRSoRK6Screen+0x144>
    { return flush(__os.put(__os.widen('\n'))); }
     272:	49 8b 45 00          	mov    0x0(%r13),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     276:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     27a:	49 8b 9c 05 f0 00 00 	mov    0xf0(%r13,%rax,1),%rbx
     281:	00 
      if (!__f)
     282:	48 85 db             	test   %rbx,%rbx
     285:	0f 84 2a 01 00 00    	je     3b5 <_ZlsRSoRK6Screen+0x3b5>
     28b:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     28f:	74 64                	je     2f5 <_ZlsRSoRK6Screen+0x2f5>
     291:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     295:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 29c <_ZlsRSoRK6Screen+0x29c>
     29c:	e8 00 00 00 00       	callq  2a1 <_ZlsRSoRK6Screen+0x2a1>
    { return __os.flush(); }
     2a1:	48 89 c1             	mov    %rax,%rcx
     2a4:	e8 00 00 00 00       	callq  2a9 <_ZlsRSoRK6Screen+0x2a9>
     2a9:	90                   	nop
    }
    std::cout << std::endl;
  }
  std::cout << std::endl;
  return out;
}
     2aa:	c5 f8 28 74 24 20    	vmovaps 0x20(%rsp),%xmm6
     2b0:	4c 89 f0             	mov    %r14,%rax
     2b3:	48 83 c4 38          	add    $0x38,%rsp
     2b7:	5b                   	pop    %rbx
     2b8:	5e                   	pop    %rsi
     2b9:	5f                   	pop    %rdi
     2ba:	5d                   	pop    %rbp
     2bb:	41 5c                	pop    %r12
     2bd:	41 5d                	pop    %r13
     2bf:	41 5e                	pop    %r14
     2c1:	41 5f                	pop    %r15
     2c3:	c3                   	retq   
	  return _M_widen[static_cast<unsigned char>(__c)];
	this->_M_widen_init();
     2c4:	48 89 f1             	mov    %rsi,%rcx
     2c7:	e8 00 00 00 00       	callq  2cc <_ZlsRSoRK6Screen+0x2cc>
	return this->do_widen(__c);
     2cc:	48 8b 06             	mov    (%rsi),%rax
     2cf:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 2d6 <_ZlsRSoRK6Screen+0x2d6>
     2d6:	ba 0a 00 00 00       	mov    $0xa,%edx
     2db:	48 8b 40 30          	mov    0x30(%rax),%rax
     2df:	48 39 c8             	cmp    %rcx,%rax
     2e2:	0f 84 68 ff ff ff    	je     250 <_ZlsRSoRK6Screen+0x250>
     2e8:	48 89 f1             	mov    %rsi,%rcx
     2eb:	ff d0                	callq  *%rax
     2ed:	0f be d0             	movsbl %al,%edx
     2f0:	e9 5b ff ff ff       	jmpq   250 <_ZlsRSoRK6Screen+0x250>
	this->_M_widen_init();
     2f5:	48 89 d9             	mov    %rbx,%rcx
     2f8:	e8 00 00 00 00       	callq  2fd <_ZlsRSoRK6Screen+0x2fd>
	return this->do_widen(__c);
     2fd:	48 8b 03             	mov    (%rbx),%rax
     300:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 307 <_ZlsRSoRK6Screen+0x307>
     307:	ba 0a 00 00 00       	mov    $0xa,%edx
     30c:	48 8b 40 30          	mov    0x30(%rax),%rax
     310:	48 39 c8             	cmp    %rcx,%rax
     313:	74 80                	je     295 <_ZlsRSoRK6Screen+0x295>
     315:	48 89 d9             	mov    %rbx,%rcx
     318:	ff d0                	callq  *%rax
     31a:	0f be d0             	movsbl %al,%edx
     31d:	e9 73 ff ff ff       	jmpq   295 <_ZlsRSoRK6Screen+0x295>
	this->_M_widen_init();
     322:	48 89 f1             	mov    %rsi,%rcx
     325:	e8 00 00 00 00       	callq  32a <_ZlsRSoRK6Screen+0x32a>
	return this->do_widen(__c);
     32a:	48 8b 06             	mov    (%rsi),%rax
     32d:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 334 <_ZlsRSoRK6Screen+0x334>
     334:	ba 0a 00 00 00       	mov    $0xa,%edx
     339:	48 8b 40 30          	mov    0x30(%rax),%rax
     33d:	48 39 c8             	cmp    %rcx,%rax
     340:	0f 84 c1 fd ff ff    	je     107 <_ZlsRSoRK6Screen+0x107>
     346:	48 89 f1             	mov    %rsi,%rcx
     349:	ff d0                	callq  *%rax
     34b:	0f be d0             	movsbl %al,%edx
     34e:	e9 b4 fd ff ff       	jmpq   107 <_ZlsRSoRK6Screen+0x107>
	this->_M_widen_init();
     353:	48 89 f1             	mov    %rsi,%rcx
     356:	e8 00 00 00 00       	callq  35b <_ZlsRSoRK6Screen+0x35b>
	return this->do_widen(__c);
     35b:	48 8b 06             	mov    (%rsi),%rax
     35e:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 365 <_ZlsRSoRK6Screen+0x365>
     365:	ba 0a 00 00 00       	mov    $0xa,%edx
     36a:	48 8b 40 30          	mov    0x30(%rax),%rax
     36e:	48 39 c8             	cmp    %rcx,%rax
     371:	0f 84 45 fd ff ff    	je     bc <_ZlsRSoRK6Screen+0xbc>
     377:	48 89 f1             	mov    %rsi,%rcx
     37a:	ff d0                	callq  *%rax
     37c:	0f be d0             	movsbl %al,%edx
     37f:	e9 38 fd ff ff       	jmpq   bc <_ZlsRSoRK6Screen+0xbc>
	this->_M_widen_init();
     384:	48 89 f1             	mov    %rsi,%rcx
     387:	e8 00 00 00 00       	callq  38c <_ZlsRSoRK6Screen+0x38c>
	return this->do_widen(__c);
     38c:	48 8b 06             	mov    (%rsi),%rax
     38f:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 396 <_ZlsRSoRK6Screen+0x396>
     396:	ba 0a 00 00 00       	mov    $0xa,%edx
     39b:	48 8b 40 30          	mov    0x30(%rax),%rax
     39f:	48 39 c8             	cmp    %rcx,%rax
     3a2:	0f 84 ac fc ff ff    	je     54 <_ZlsRSoRK6Screen+0x54>
     3a8:	48 89 f1             	mov    %rsi,%rcx
     3ab:	ff d0                	callq  *%rax
     3ad:	0f be d0             	movsbl %al,%edx
     3b0:	e9 9f fc ff ff       	jmpq   54 <_ZlsRSoRK6Screen+0x54>
	__throw_bad_cast();
     3b5:	e8 00 00 00 00       	callq  3ba <_ZlsRSoRK6Screen+0x3ba>
     3ba:	90                   	nop
     3bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000003c0 <_Z9write_bmpRSoRK6Screen>:

// writes out the image as binary BMP (for windows)
void write_bmp(std::ostream & out, const Screen & screen) {
     3c0:	41 54                	push   %r12
     3c2:	55                   	push   %rbp
     3c3:	57                   	push   %rdi
     3c4:	56                   	push   %rsi
     3c5:	53                   	push   %rbx
     3c6:	48 83 ec 30          	sub    $0x30,%rsp
     3ca:	c5 f8 29 74 24 20    	vmovaps %xmm6,0x20(%rsp)
  out.put(0x00); out.put(0x00);
  out.put(0x00); out.put(0x00);
  out.put(0x36); out.put(0x00);out.put(0x00); out.put(0x00); // offset to start of pixel array
  // Header
  out.put(0x28); out.put(0x00); out.put(0x00); out.put(0x00);  // 40 bytes Number of bytes in the DIB header (from this point)
  out.put( screen.getWidth() & 0xFF ); out.put( screen.getWidth() >> 8 & 0xFF );
     3d0:	bd 08 00 00 00       	mov    $0x8,%ebp
void write_bmp(std::ostream & out, const Screen & screen) {
     3d5:	48 89 cf             	mov    %rcx,%rdi
     3d8:	48 89 d3             	mov    %rdx,%rbx
  unsigned long long size_of_bitmap_data = screen.getWidth() * screen.getHeight() * 4;
     3db:	48 8b 32             	mov    (%rdx),%rsi
     3de:	48 0f af 72 08       	imul   0x8(%rdx),%rsi
  out.put(0x42); out.put(0x4D); // "BM"
     3e3:	ba 42 00 00 00       	mov    $0x42,%edx
     3e8:	e8 00 00 00 00       	callq  3ed <_Z9write_bmpRSoRK6Screen+0x2d>
     3ed:	ba 4d 00 00 00       	mov    $0x4d,%edx
     3f2:	48 89 f9             	mov    %rdi,%rcx
     3f5:	e8 00 00 00 00       	callq  3fa <_Z9write_bmpRSoRK6Screen+0x3a>
  out.put(0x00); out.put(0x00); out.put(0x00); out.put(0x00); // size of bmp file
     3fa:	31 d2                	xor    %edx,%edx
     3fc:	48 89 f9             	mov    %rdi,%rcx
     3ff:	e8 00 00 00 00       	callq  404 <_Z9write_bmpRSoRK6Screen+0x44>
     404:	31 d2                	xor    %edx,%edx
     406:	48 89 f9             	mov    %rdi,%rcx
  unsigned long long size_of_bitmap_data = screen.getWidth() * screen.getHeight() * 4;
     409:	48 c1 e6 02          	shl    $0x2,%rsi
  out.put(0x00); out.put(0x00); out.put(0x00); out.put(0x00); // size of bmp file
     40d:	e8 00 00 00 00       	callq  412 <_Z9write_bmpRSoRK6Screen+0x52>
     412:	31 d2                	xor    %edx,%edx
     414:	48 89 f9             	mov    %rdi,%rcx
     417:	e8 00 00 00 00       	callq  41c <_Z9write_bmpRSoRK6Screen+0x5c>
     41c:	31 d2                	xor    %edx,%edx
     41e:	48 89 f9             	mov    %rdi,%rcx
     421:	e8 00 00 00 00       	callq  426 <_Z9write_bmpRSoRK6Screen+0x66>
  out.put(0x00); out.put(0x00);
     426:	31 d2                	xor    %edx,%edx
     428:	48 89 f9             	mov    %rdi,%rcx
     42b:	e8 00 00 00 00       	callq  430 <_Z9write_bmpRSoRK6Screen+0x70>
     430:	31 d2                	xor    %edx,%edx
     432:	48 89 f9             	mov    %rdi,%rcx
     435:	e8 00 00 00 00       	callq  43a <_Z9write_bmpRSoRK6Screen+0x7a>
  out.put(0x00); out.put(0x00);
     43a:	31 d2                	xor    %edx,%edx
     43c:	48 89 f9             	mov    %rdi,%rcx
     43f:	e8 00 00 00 00       	callq  444 <_Z9write_bmpRSoRK6Screen+0x84>
     444:	31 d2                	xor    %edx,%edx
     446:	48 89 f9             	mov    %rdi,%rcx
     449:	e8 00 00 00 00       	callq  44e <_Z9write_bmpRSoRK6Screen+0x8e>
  out.put(0x36); out.put(0x00);out.put(0x00); out.put(0x00); // offset to start of pixel array
     44e:	ba 36 00 00 00       	mov    $0x36,%edx
     453:	48 89 f9             	mov    %rdi,%rcx
     456:	e8 00 00 00 00       	callq  45b <_Z9write_bmpRSoRK6Screen+0x9b>
     45b:	31 d2                	xor    %edx,%edx
     45d:	48 89 f9             	mov    %rdi,%rcx
     460:	e8 00 00 00 00       	callq  465 <_Z9write_bmpRSoRK6Screen+0xa5>
     465:	31 d2                	xor    %edx,%edx
     467:	48 89 f9             	mov    %rdi,%rcx
     46a:	e8 00 00 00 00       	callq  46f <_Z9write_bmpRSoRK6Screen+0xaf>
     46f:	31 d2                	xor    %edx,%edx
     471:	48 89 f9             	mov    %rdi,%rcx
     474:	e8 00 00 00 00       	callq  479 <_Z9write_bmpRSoRK6Screen+0xb9>
  out.put(0x28); out.put(0x00); out.put(0x00); out.put(0x00);  // 40 bytes Number of bytes in the DIB header (from this point)
     479:	ba 28 00 00 00       	mov    $0x28,%edx
     47e:	48 89 f9             	mov    %rdi,%rcx
     481:	e8 00 00 00 00       	callq  486 <_Z9write_bmpRSoRK6Screen+0xc6>
     486:	31 d2                	xor    %edx,%edx
     488:	48 89 f9             	mov    %rdi,%rcx
     48b:	e8 00 00 00 00       	callq  490 <_Z9write_bmpRSoRK6Screen+0xd0>
     490:	31 d2                	xor    %edx,%edx
     492:	48 89 f9             	mov    %rdi,%rcx
     495:	e8 00 00 00 00       	callq  49a <_Z9write_bmpRSoRK6Screen+0xda>
     49a:	31 d2                	xor    %edx,%edx
     49c:	48 89 f9             	mov    %rdi,%rcx
     49f:	e8 00 00 00 00       	callq  4a4 <_Z9write_bmpRSoRK6Screen+0xe4>
  out.put( screen.getWidth() & 0xFF ); out.put( screen.getWidth() >> 8 & 0xFF );
     4a4:	0f be 13             	movsbl (%rbx),%edx
     4a7:	48 89 f9             	mov    %rdi,%rcx
     4aa:	e8 00 00 00 00       	callq  4af <_Z9write_bmpRSoRK6Screen+0xef>
     4af:	c4 e2 d3 f7 13       	shrx   %rbp,(%rbx),%rdx
     4b4:	48 89 f9             	mov    %rdi,%rcx
     4b7:	0f be d2             	movsbl %dl,%edx
     4ba:	e8 00 00 00 00       	callq  4bf <_Z9write_bmpRSoRK6Screen+0xff>
  out.put(0x00); out.put(0x00); // width in pixel
     4bf:	31 d2                	xor    %edx,%edx
     4c1:	48 89 f9             	mov    %rdi,%rcx
     4c4:	e8 00 00 00 00       	callq  4c9 <_Z9write_bmpRSoRK6Screen+0x109>
     4c9:	31 d2                	xor    %edx,%edx
     4cb:	48 89 f9             	mov    %rdi,%rcx
     4ce:	e8 00 00 00 00       	callq  4d3 <_Z9write_bmpRSoRK6Screen+0x113>
  out.put( screen.getHeight() & 0xFF ); out.put( screen.getHeight() >> 8 & 0xFF );
     4d3:	0f be 53 08          	movsbl 0x8(%rbx),%edx
     4d7:	48 89 f9             	mov    %rdi,%rcx
     4da:	e8 00 00 00 00       	callq  4df <_Z9write_bmpRSoRK6Screen+0x11f>
     4df:	c4 e2 d3 f7 53 08    	shrx   %rbp,0x8(%rbx),%rdx
     4e5:	48 89 f9             	mov    %rdi,%rcx
     4e8:	0f be d2             	movsbl %dl,%edx
     4eb:	e8 00 00 00 00       	callq  4f0 <_Z9write_bmpRSoRK6Screen+0x130>
  out.put(0x00); out.put(0x00); // height in pixel
     4f0:	31 d2                	xor    %edx,%edx
     4f2:	48 89 f9             	mov    %rdi,%rcx
     4f5:	e8 00 00 00 00       	callq  4fa <_Z9write_bmpRSoRK6Screen+0x13a>
     4fa:	31 d2                	xor    %edx,%edx
     4fc:	48 89 f9             	mov    %rdi,%rcx
     4ff:	e8 00 00 00 00       	callq  504 <_Z9write_bmpRSoRK6Screen+0x144>
  out.put(0x01); out.put(0x00); // 1 = number of color planes used
     504:	ba 01 00 00 00       	mov    $0x1,%edx
     509:	48 89 f9             	mov    %rdi,%rcx
     50c:	e8 00 00 00 00       	callq  511 <_Z9write_bmpRSoRK6Screen+0x151>
     511:	31 d2                	xor    %edx,%edx
     513:	48 89 f9             	mov    %rdi,%rcx
     516:	e8 00 00 00 00       	callq  51b <_Z9write_bmpRSoRK6Screen+0x15b>
  out.put(0x18); out.put(0x00); // 24 bits per pixel (RGB)
     51b:	ba 18 00 00 00       	mov    $0x18,%edx
     520:	48 89 f9             	mov    %rdi,%rcx
     523:	e8 00 00 00 00       	callq  528 <_Z9write_bmpRSoRK6Screen+0x168>
     528:	31 d2                	xor    %edx,%edx
     52a:	48 89 f9             	mov    %rdi,%rcx
     52d:	e8 00 00 00 00       	callq  532 <_Z9write_bmpRSoRK6Screen+0x172>
  out.put(0x00); out.put(0x00); out.put(0x00); out.put(0x00); // 0 = no compression
     532:	31 d2                	xor    %edx,%edx
     534:	48 89 f9             	mov    %rdi,%rcx
     537:	e8 00 00 00 00       	callq  53c <_Z9write_bmpRSoRK6Screen+0x17c>
     53c:	31 d2                	xor    %edx,%edx
     53e:	48 89 f9             	mov    %rdi,%rcx
     541:	e8 00 00 00 00       	callq  546 <_Z9write_bmpRSoRK6Screen+0x186>
     546:	31 d2                	xor    %edx,%edx
     548:	48 89 f9             	mov    %rdi,%rcx
     54b:	e8 00 00 00 00       	callq  550 <_Z9write_bmpRSoRK6Screen+0x190>
     550:	31 d2                	xor    %edx,%edx
     552:	48 89 f9             	mov    %rdi,%rcx
     555:	e8 00 00 00 00       	callq  55a <_Z9write_bmpRSoRK6Screen+0x19a>
  // size of raw bitmap data 16 bytes
  out.put(size_of_bitmap_data & 0xFF); 
     55a:	40 0f be d6          	movsbl %sil,%edx
     55e:	48 89 f9             	mov    %rdi,%rcx
     561:	e8 00 00 00 00       	callq  566 <_Z9write_bmpRSoRK6Screen+0x1a6>
  out.put(size_of_bitmap_data >> 8 & 0xFF); 
     566:	48 89 f2             	mov    %rsi,%rdx
     569:	48 89 f9             	mov    %rdi,%rcx
     56c:	48 c1 ea 08          	shr    $0x8,%rdx
     570:	0f be d2             	movsbl %dl,%edx
     573:	e8 00 00 00 00       	callq  578 <_Z9write_bmpRSoRK6Screen+0x1b8>
  out.put(size_of_bitmap_data >> 16 & 0xFF); 
     578:	48 89 f2             	mov    %rsi,%rdx
     57b:	48 89 f9             	mov    %rdi,%rcx
     57e:	48 c1 ea 10          	shr    $0x10,%rdx
     582:	0f be d2             	movsbl %dl,%edx
     585:	e8 00 00 00 00       	callq  58a <_Z9write_bmpRSoRK6Screen+0x1ca>
  out.put(size_of_bitmap_data >> 32 & 0xFF); 
     58a:	48 c1 ee 20          	shr    $0x20,%rsi
     58e:	48 89 f9             	mov    %rdi,%rcx
     591:	40 0f be d6          	movsbl %sil,%edx
     595:	e8 00 00 00 00       	callq  59a <_Z9write_bmpRSoRK6Screen+0x1da>
  out.put(0x13); out.put(0x0B); out.put(0x00); out.put(0x00); // 72 DPI resolution for printing
     59a:	ba 13 00 00 00       	mov    $0x13,%edx
     59f:	48 89 f9             	mov    %rdi,%rcx
     5a2:	e8 00 00 00 00       	callq  5a7 <_Z9write_bmpRSoRK6Screen+0x1e7>
     5a7:	ba 0b 00 00 00       	mov    $0xb,%edx
     5ac:	48 89 f9             	mov    %rdi,%rcx
     5af:	e8 00 00 00 00       	callq  5b4 <_Z9write_bmpRSoRK6Screen+0x1f4>
     5b4:	31 d2                	xor    %edx,%edx
     5b6:	48 89 f9             	mov    %rdi,%rcx
     5b9:	e8 00 00 00 00       	callq  5be <_Z9write_bmpRSoRK6Screen+0x1fe>
     5be:	31 d2                	xor    %edx,%edx
     5c0:	48 89 f9             	mov    %rdi,%rcx
     5c3:	e8 00 00 00 00       	callq  5c8 <_Z9write_bmpRSoRK6Screen+0x208>
  out.put(0x13); out.put(0x0B); out.put(0x00); out.put(0x00); //           "
     5c8:	ba 13 00 00 00       	mov    $0x13,%edx
     5cd:	48 89 f9             	mov    %rdi,%rcx
     5d0:	e8 00 00 00 00       	callq  5d5 <_Z9write_bmpRSoRK6Screen+0x215>
     5d5:	ba 0b 00 00 00       	mov    $0xb,%edx
     5da:	48 89 f9             	mov    %rdi,%rcx
     5dd:	e8 00 00 00 00       	callq  5e2 <_Z9write_bmpRSoRK6Screen+0x222>
     5e2:	31 d2                	xor    %edx,%edx
     5e4:	48 89 f9             	mov    %rdi,%rcx
     5e7:	e8 00 00 00 00       	callq  5ec <_Z9write_bmpRSoRK6Screen+0x22c>
     5ec:	31 d2                	xor    %edx,%edx
     5ee:	48 89 f9             	mov    %rdi,%rcx
     5f1:	e8 00 00 00 00       	callq  5f6 <_Z9write_bmpRSoRK6Screen+0x236>
  out.put(0x00); out.put(0x00); out.put(0x00); out.put(0x00); // 0 colors in the palette
     5f6:	31 d2                	xor    %edx,%edx
     5f8:	48 89 f9             	mov    %rdi,%rcx
     5fb:	e8 00 00 00 00       	callq  600 <_Z9write_bmpRSoRK6Screen+0x240>
     600:	31 d2                	xor    %edx,%edx
     602:	48 89 f9             	mov    %rdi,%rcx
     605:	e8 00 00 00 00       	callq  60a <_Z9write_bmpRSoRK6Screen+0x24a>
     60a:	31 d2                	xor    %edx,%edx
     60c:	48 89 f9             	mov    %rdi,%rcx
     60f:	e8 00 00 00 00       	callq  614 <_Z9write_bmpRSoRK6Screen+0x254>
     614:	31 d2                	xor    %edx,%edx
     616:	48 89 f9             	mov    %rdi,%rcx
     619:	e8 00 00 00 00       	callq  61e <_Z9write_bmpRSoRK6Screen+0x25e>
  out.put(0x00); out.put(0x00); out.put(0x00); out.put(0x00); // 0 = all colors are important
     61e:	31 d2                	xor    %edx,%edx
     620:	48 89 f9             	mov    %rdi,%rcx
     623:	e8 00 00 00 00       	callq  628 <_Z9write_bmpRSoRK6Screen+0x268>
     628:	31 d2                	xor    %edx,%edx
     62a:	48 89 f9             	mov    %rdi,%rcx
     62d:	e8 00 00 00 00       	callq  632 <_Z9write_bmpRSoRK6Screen+0x272>
     632:	31 d2                	xor    %edx,%edx
     634:	48 89 f9             	mov    %rdi,%rcx
     637:	e8 00 00 00 00       	callq  63c <_Z9write_bmpRSoRK6Screen+0x27c>
     63c:	31 d2                	xor    %edx,%edx
     63e:	48 89 f9             	mov    %rdi,%rcx
     641:	e8 00 00 00 00       	callq  646 <_Z9write_bmpRSoRK6Screen+0x286>
  // start of pixel map array, 4 byte alignment padding at end of line if nedded
  for (size_t y = 0u; y < screen.getHeight(); y++ ) {
     646:	48 8b 53 08          	mov    0x8(%rbx),%rdx
     64a:	48 85 d2             	test   %rdx,%rdx
     64d:	0f 84 0b 01 00 00    	je     75e <_Z9write_bmpRSoRK6Screen+0x39e>
     653:	48 8b 03             	mov    (%rbx),%rax
     656:	c5 fb 10 35 38 03 00 	vmovsd 0x338(%rip),%xmm6        # 996 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x216>
     65d:	00 
     65e:	31 ed                	xor    %ebp,%ebp
    for (size_t x = 0u; x < screen.getWidth(); x++) {
     660:	48 85 c0             	test   %rax,%rax
     663:	0f 84 06 01 00 00    	je     76f <_Z9write_bmpRSoRK6Screen+0x3af>
     669:	49 89 ec             	mov    %rbp,%r12
     66c:	31 f6                	xor    %esi,%esi
     66e:	49 f7 d4             	not    %r12
     671:	eb 04                	jmp    677 <_Z9write_bmpRSoRK6Screen+0x2b7>
     673:	48 8b 53 08          	mov    0x8(%rbx),%rdx
      out.put( ((unsigned short) (screen.getPixel(x, screen.getHeight() - 1 - y).getRed() * 255.0) ) & 0xFF );
     677:	4c 01 e2             	add    %r12,%rdx
     67a:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    return buffer[x + y * width];
     67e:	48 0f af d0          	imul   %rax,%rdx
      out.put( ((unsigned short) (screen.getPixel(x, screen.getHeight() - 1 - y).getRed() * 255.0) ) & 0xFF );
     682:	48 89 f9             	mov    %rdi,%rcx
     685:	48 8d 04 32          	lea    (%rdx,%rsi,1),%rax
    return buffer[x + y * width];
     689:	48 8b 53 10          	mov    0x10(%rbx),%rdx
     68d:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
     691:	48 8d 04 82          	lea    (%rdx,%rax,4),%rax
      out.put( ((unsigned short) (screen.getPixel(x, screen.getHeight() - 1 - y).getRed() * 255.0) ) & 0xFF );
     695:	c5 fa 5a 00          	vcvtss2sd (%rax),%xmm0,%xmm0
     699:	c5 fb 59 c6          	vmulsd %xmm6,%xmm0,%xmm0
     69d:	c5 fb 2c d0          	vcvttsd2si %xmm0,%edx
     6a1:	0f be d2             	movsbl %dl,%edx
     6a4:	e8 00 00 00 00       	callq  6a9 <_Z9write_bmpRSoRK6Screen+0x2e9>
      out.put( ((unsigned short) (screen.getPixel(x, screen.getHeight() - 1 - y).getGreen() * 255.0) ) & 0xFF );
     6a9:	48 89 e8             	mov    %rbp,%rax
    return buffer[x + y * width];
     6ac:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
      out.put( ((unsigned short) (screen.getPixel(x, screen.getHeight() - 1 - y).getGreen() * 255.0) ) & 0xFF );
     6b0:	48 f7 d0             	not    %rax
     6b3:	48 03 43 08          	add    0x8(%rbx),%rax
    return buffer[x + y * width];
     6b7:	48 0f af 03          	imul   (%rbx),%rax
      out.put( ((unsigned short) (screen.getPixel(x, screen.getHeight() - 1 - y).getGreen() * 255.0) ) & 0xFF );
     6bb:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     6bf:	48 01 f0             	add    %rsi,%rax
    return buffer[x + y * width];
     6c2:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
     6c6:	48 8d 04 81          	lea    (%rcx,%rax,4),%rax
      out.put( ((unsigned short) (screen.getPixel(x, screen.getHeight() - 1 - y).getGreen() * 255.0) ) & 0xFF );
     6ca:	48 89 f9             	mov    %rdi,%rcx
     6cd:	c5 fa 5a 40 04       	vcvtss2sd 0x4(%rax),%xmm0,%xmm0
     6d2:	c5 fb 59 c6          	vmulsd %xmm6,%xmm0,%xmm0
     6d6:	c5 fb 2c d0          	vcvttsd2si %xmm0,%edx
     6da:	0f be d2             	movsbl %dl,%edx
     6dd:	e8 00 00 00 00       	callq  6e2 <_Z9write_bmpRSoRK6Screen+0x322>
      out.put( ((unsigned short) (screen.getPixel(x, screen.getHeight() - 1 - y).getBlue() * 255.0) ) & 0xFF );
     6e2:	48 89 e8             	mov    %rbp,%rax
    return buffer[x + y * width];
     6e5:	4c 8b 43 10          	mov    0x10(%rbx),%r8
      out.put( ((unsigned short) (screen.getPixel(x, screen.getHeight() - 1 - y).getBlue() * 255.0) ) & 0xFF );
     6e9:	48 89 f9             	mov    %rdi,%rcx
     6ec:	48 f7 d0             	not    %rax
     6ef:	48 03 43 08          	add    0x8(%rbx),%rax
    return buffer[x + y * width];
     6f3:	48 0f af 03          	imul   (%rbx),%rax
      out.put( ((unsigned short) (screen.getPixel(x, screen.getHeight() - 1 - y).getBlue() * 255.0) ) & 0xFF );
     6f7:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     6fb:	48 01 f0             	add    %rsi,%rax
    for (size_t x = 0u; x < screen.getWidth(); x++) {
     6fe:	48 83 c6 01          	add    $0x1,%rsi
    return buffer[x + y * width];
     702:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
     706:	49 8d 04 80          	lea    (%r8,%rax,4),%rax
      out.put( ((unsigned short) (screen.getPixel(x, screen.getHeight() - 1 - y).getBlue() * 255.0) ) & 0xFF );
     70a:	c5 fa 5a 40 08       	vcvtss2sd 0x8(%rax),%xmm0,%xmm0
     70f:	c5 fb 59 c6          	vmulsd %xmm6,%xmm0,%xmm0
     713:	c5 fb 2c d0          	vcvttsd2si %xmm0,%edx
     717:	0f be d2             	movsbl %dl,%edx
     71a:	e8 00 00 00 00       	callq  71f <_Z9write_bmpRSoRK6Screen+0x35f>
    for (size_t x = 0u; x < screen.getWidth(); x++) {
     71f:	48 8b 03             	mov    (%rbx),%rax
     722:	48 39 c6             	cmp    %rax,%rsi
     725:	0f 82 48 ff ff ff    	jb     673 <_Z9write_bmpRSoRK6Screen+0x2b3>
    }
    for (size_t padding_bytes = 0u; padding_bytes < screen.getWidth() % 4; padding_bytes++) {
     72b:	a8 03                	test   $0x3,%al
     72d:	74 1e                	je     74d <_Z9write_bmpRSoRK6Screen+0x38d>
     72f:	31 f6                	xor    %esi,%esi
      out.put( 0x00 );
     731:	31 d2                	xor    %edx,%edx
     733:	48 89 f9             	mov    %rdi,%rcx
    for (size_t padding_bytes = 0u; padding_bytes < screen.getWidth() % 4; padding_bytes++) {
     736:	48 83 c6 01          	add    $0x1,%rsi
      out.put( 0x00 );
     73a:	e8 00 00 00 00       	callq  73f <_Z9write_bmpRSoRK6Screen+0x37f>
    for (size_t padding_bytes = 0u; padding_bytes < screen.getWidth() % 4; padding_bytes++) {
     73f:	48 8b 03             	mov    (%rbx),%rax
     742:	48 89 c2             	mov    %rax,%rdx
     745:	83 e2 03             	and    $0x3,%edx
     748:	48 39 f2             	cmp    %rsi,%rdx
     74b:	77 e4                	ja     731 <_Z9write_bmpRSoRK6Screen+0x371>
     74d:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  for (size_t y = 0u; y < screen.getHeight(); y++ ) {
     751:	48 83 c5 01          	add    $0x1,%rbp
     755:	48 39 d5             	cmp    %rdx,%rbp
     758:	0f 82 02 ff ff ff    	jb     660 <_Z9write_bmpRSoRK6Screen+0x2a0>
    }
  } 
}
     75e:	c5 f8 28 74 24 20    	vmovaps 0x20(%rsp),%xmm6
     764:	48 83 c4 30          	add    $0x30,%rsp
     768:	5b                   	pop    %rbx
     769:	5e                   	pop    %rsi
     76a:	5f                   	pop    %rdi
     76b:	5d                   	pop    %rbp
     76c:	41 5c                	pop    %r12
     76e:	c3                   	retq   
  for (size_t y = 0u; y < screen.getHeight(); y++ ) {
     76f:	48 83 c5 01          	add    $0x1,%rbp
     773:	48 39 ea             	cmp    %rbp,%rdx
     776:	77 d9                	ja     751 <_Z9write_bmpRSoRK6Screen+0x391>
     778:	eb e4                	jmp    75e <_Z9write_bmpRSoRK6Screen+0x39e>
     77a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000780 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree>:
  std::cerr << "memory used for all triangles [byte] : " << no_of_triangles * sizeof(Triangle<FLOAT>) << std::endl;   
}


// the raytrace algorithm but without refraction and reflection
void raytrace(Camera &camera, Scene & scene, Screen & screen, KDTree *tree = nullptr) {
     780:	41 57                	push   %r15
     782:	41 56                	push   %r14
     784:	41 55                	push   %r13
     786:	41 54                	push   %r12
     788:	55                   	push   %rbp
     789:	57                   	push   %rdi
     78a:	56                   	push   %rsi
     78b:	53                   	push   %rbx
     78c:	48 81 ec 48 01 00 00 	sub    $0x148,%rsp
     793:	c5 f8 29 b4 24 a0 00 	vmovaps %xmm6,0xa0(%rsp)
     79a:	00 00 
     79c:	c5 f8 29 bc 24 b0 00 	vmovaps %xmm7,0xb0(%rsp)
     7a3:	00 00 
     7a5:	c5 78 29 84 24 c0 00 	vmovaps %xmm8,0xc0(%rsp)
     7ac:	00 00 
     7ae:	c5 78 29 8c 24 d0 00 	vmovaps %xmm9,0xd0(%rsp)
     7b5:	00 00 
     7b7:	c5 78 29 94 24 e0 00 	vmovaps %xmm10,0xe0(%rsp)
     7be:	00 00 
     7c0:	c5 78 29 9c 24 f0 00 	vmovaps %xmm11,0xf0(%rsp)
     7c7:	00 00 
     7c9:	c5 78 29 a4 24 00 01 	vmovaps %xmm12,0x100(%rsp)
     7d0:	00 00 
     7d2:	c5 78 29 ac 24 10 01 	vmovaps %xmm13,0x110(%rsp)
     7d9:	00 00 
     7db:	c5 78 29 b4 24 20 01 	vmovaps %xmm14,0x120(%rsp)
     7e2:	00 00 
     7e4:	c5 78 29 bc 24 30 01 	vmovaps %xmm15,0x130(%rsp)
     7eb:	00 00 
     7ed:	4d 89 c7             	mov    %r8,%r15
     7f0:	49 89 cd             	mov    %rcx,%r13
     7f3:	48 89 d5             	mov    %rdx,%rbp
    for (size_t x = 0u; x < getWidth(); x++) {
     7f6:	4d 8b 00             	mov    (%r8),%r8
     7f9:	4d 85 c0             	test   %r8,%r8
     7fc:	0f 84 de 05 00 00    	je     de0 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x660>
      for (size_t y = 0u; y < getHeight(); y++) {
     802:	49 8b 4f 08          	mov    0x8(%r15),%rcx
     806:	48 85 c9             	test   %rcx,%rcx
     809:	74 52                	je     85d <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xdd>
     80b:	4f 8d 0c 40          	lea    (%r8,%r8,2),%r9
      pointer    _M_ptr() const { return std::get<0>(_M_t); }
     80f:	49 8b 5f 10          	mov    0x10(%r15),%rbx
     813:	45 31 db             	xor    %r11d,%r11d
    for (size_t x = 0u; x < getWidth(); x++) {
     816:	45 31 d2             	xor    %r10d,%r10d
     819:	49 c1 e1 02          	shl    $0x2,%r9
     81d:	0f 1f 00             	nopl   (%rax)
     820:	4a 8d 04 1b          	lea    (%rbx,%r11,1),%rax
      for (size_t y = 0u; y < getHeight(); y++) {
     824:	31 d2                	xor    %edx,%edx
     826:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     82d:	00 00 00 
     830:	48 83 c2 01          	add    $0x1,%rdx
    buffer[x + y * width] = color;
     834:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
     83a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
     841:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
     848:	4c 01 c8             	add    %r9,%rax
      for (size_t y = 0u; y < getHeight(); y++) {
     84b:	48 39 ca             	cmp    %rcx,%rdx
     84e:	75 e0                	jne    830 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xb0>
    for (size_t x = 0u; x < getWidth(); x++) {
     850:	49 83 c2 01          	add    $0x1,%r10
     854:	49 83 c3 0c          	add    $0xc,%r11
     858:	4d 39 c2             	cmp    %r8,%r10
     85b:	75 c3                	jne    820 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xa0>
  screen.clear();
  Material material;
  Color color;
  for (FLOAT x = 0.0; x < screen.getWidth(); x++) {
     85d:	4d 85 c0             	test   %r8,%r8
     860:	0f 88 0b 0e 00 00    	js     1671 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xef1>
     866:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
     86a:	c4 c1 fa 2a c0       	vcvtsi2ss %r8,%xmm0,%xmm0
     86f:	c4 41 18 57 e4       	vxorps %xmm12,%xmm12,%xmm12
     874:	c4 c1 78 2e c4       	vucomiss %xmm12,%xmm0
     879:	0f 86 61 05 00 00    	jbe    de0 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x660>
     87f:	c5 7a 11 a4 24 8c 00 	vmovss %xmm12,0x8c(%rsp)
     886:	00 00 

      // [23.2.4.2] capacity
      /**  Returns the number of elements in the %vector.  */
      size_type
      size() const _GLIBCXX_NOEXCEPT
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
     888:	49 bc 39 8e e3 38 8e 	movabs $0x8e38e38e38e38e39,%r12
     88f:	e3 38 8e 
    for (FLOAT y = 0.0; y < screen.getHeight(); y++) {
     892:	48 85 c9             	test   %rcx,%rcx
     895:	0f 88 39 0d 00 00    	js     15d4 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xe54>
     89b:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
     89f:	c4 e1 fa 2a c1       	vcvtsi2ss %rcx,%xmm0,%xmm0
     8a4:	c4 c1 78 2e c4       	vucomiss %xmm12,%xmm0
     8a9:	0f 86 f6 04 00 00    	jbe    da5 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x625>
     8af:	c5 fa 10 ac 24 8c 00 	vmovss 0x8c(%rsp),%xmm5
     8b6:	00 00 
     8b8:	c5 f8 2e 2d 50 03 00 	vucomiss 0x350(%rip),%xmm5        # c10 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x490>
     8bf:	00 
     8c0:	0f 83 70 0c 00 00    	jae    1536 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xdb6>
     8c6:	c4 e1 fa 2c d5       	vcvttss2si %xmm5,%rdx
     8cb:	48 85 d2             	test   %rdx,%rdx
     8ce:	0f 88 85 0c 00 00    	js     1559 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xdd9>
     8d4:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
     8d8:	c4 e1 da 2a e2       	vcvtsi2ss %rdx,%xmm4,%xmm4
     8dd:	c5 fa 11 a4 24 88 00 	vmovss %xmm4,0x88(%rsp)
     8e4:	00 00 
     8e6:	c5 7a 11 64 24 7c    	vmovss %xmm12,0x7c(%rsp)
     8ec:	0f 1f 40 00          	nopl   0x0(%rax)
      color = Color(0.0, 0.0, 0.0);
      const Ray<FLOAT> ray = camera.getRay(x,y);
     8f0:	c5 fa 10 4c 24 7c    	vmovss 0x7c(%rsp),%xmm1
     8f6:	c5 f8 2e 0d 50 03 00 	vucomiss 0x350(%rip),%xmm1        # c4e <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x4ce>
     8fd:	00 
     8fe:	0f 83 4c 05 00 00    	jae    e50 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x6d0>
     904:	c4 61 fa 2c f1       	vcvttss2si %xmm1,%r14
                  + (y * pixelHeight) * down )
     909:	4d 85 f6             	test   %r14,%r14
     90c:	0f 88 61 05 00 00    	js     e73 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x6f3>
     912:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
     916:	c4 c1 fa 2a c6       	vcvtsi2ss %r14,%xmm0,%xmm0
                  + (x * pixelWidth) * right
     91b:	c5 fa 10 8c 24 88 00 	vmovss 0x88(%rsp),%xmm1
     922:	00 00 
                  + (y * pixelHeight) * down )
     924:	c4 c1 7a 59 45 34    	vmulss 0x34(%r13),%xmm0,%xmm0
                  + (x * pixelWidth) * right
     92a:	c4 c1 72 59 4d 30    	vmulss 0x30(%r13),%xmm1,%xmm1
     930:	c4 c1 7a 10 65 00    	vmovss 0x0(%r13),%xmm4

  Vector<T, SIZE> operator+(const Vector<T, SIZE> addend) const {
    Vector<T, SIZE> sum;
 
    for (size_t i = 0u; i < SIZE; i++) {
      sum.x[i] = this->x[i] + addend.x[i];
     936:	c4 c1 7a 10 55 24    	vmovss 0x24(%r13),%xmm2
  for (size_t i = 0u; i < triangles.size(); i++) {
     93c:	4c 8b 4d 00          	mov    0x0(%rbp),%r9
     940:	c5 fa 11 64 24 60    	vmovss %xmm4,0x60(%rsp)
     946:	4c 3b 4d 08          	cmp    0x8(%rbp),%r9
     94a:	c4 c1 7a 10 6d 04    	vmovss 0x4(%r13),%xmm5
     950:	c4 c1 7a 10 7d 08    	vmovss 0x8(%r13),%xmm7
     956:	c5 fa 11 6c 24 5c    	vmovss %xmm5,0x5c(%rsp)
     95c:	c4 c2 71 a9 55 0c    	vfmadd213ss 0xc(%r13),%xmm1,%xmm2
     962:	c4 c2 79 b9 55 18    	vfmadd231ss 0x18(%r13),%xmm0,%xmm2

  Vector<T, SIZE> operator-(const Vector<T, SIZE> subtract) const {
    Vector<T, SIZE> difference;
 
    for (size_t i = 0u; i < SIZE; i++) {
      difference.x[i] = this->x[i] - subtract.x[i];
     968:	c5 ea 5c e4          	vsubss %xmm4,%xmm2,%xmm4
      sum.x[i] = this->x[i] + addend.x[i];
     96c:	c4 c1 7a 10 55 28    	vmovss 0x28(%r13),%xmm2
     972:	c4 c2 71 a9 55 10    	vfmadd213ss 0x10(%r13),%xmm1,%xmm2
     978:	c4 c2 79 b9 55 1c    	vfmadd231ss 0x1c(%r13),%xmm0,%xmm2
     97e:	c5 fa 11 7c 24 58    	vmovss %xmm7,0x58(%rsp)
      difference.x[i] = this->x[i] - subtract.x[i];
     984:	c5 fa 11 64 24 48    	vmovss %xmm4,0x48(%rsp)
     98a:	c5 ea 5c e5          	vsubss %xmm5,%xmm2,%xmm4
     98e:	c5 fa 11 64 24 38    	vmovss %xmm4,0x38(%rsp)
      sum.x[i] = this->x[i] + addend.x[i];
     994:	c4 c1 7a 10 65 14    	vmovss 0x14(%r13),%xmm4
     99a:	c4 c2 59 99 4d 2c    	vfmadd132ss 0x2c(%r13),%xmm4,%xmm1
     9a0:	c4 c2 71 99 45 20    	vfmadd132ss 0x20(%r13),%xmm1,%xmm0
      difference.x[i] = this->x[i] - subtract.x[i];
     9a6:	c5 fa 5c cf          	vsubss %xmm7,%xmm0,%xmm1
     9aa:	c5 fa 11 4c 24 54    	vmovss %xmm1,0x54(%rsp)
     9b0:	0f 84 7c 03 00 00    	je     d32 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x5b2>
  FLOAT minimum_t = INFINITY;
     9b6:	c5 fa 10 2d 40 03 00 	vmovss 0x340(%rip),%xmm5        # cfe <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x57e>
     9bd:	00 
     9be:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 9c5 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x245>
      Triangle<FLOAT> *nearest_triangle = nullptr;
     9c5:	31 c9                	xor    %ecx,%ecx
  FLOAT minimum_u  = 0.0, minimum_v = 0.0;
     9c7:	c5 7a 11 64 24 70    	vmovss %xmm12,0x70(%rsp)
  for (size_t i = 0u; i < triangles.size(); i++) {
     9cd:	31 f6                	xor    %esi,%esi
  FLOAT minimum_u  = 0.0, minimum_v = 0.0;
     9cf:	c5 7a 11 64 24 6c    	vmovss %xmm12,0x6c(%rsp)
  FLOAT minimum_t = INFINITY;
     9d5:	c5 fa 11 6c 24 50    	vmovss %xmm5,0x50(%rsp)
     9db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
       */
      reference
      operator[](size_type __n) _GLIBCXX_NOEXCEPT
      {
	__glibcxx_requires_subscript(__n);
	return *(this->_M_impl._M_start + __n);
     9e0:	48 8d 04 f6          	lea    (%rsi,%rsi,8),%rax

  T scalar_product(Vector<T, SIZE>  factor) {
    T product = 0;

    for (size_t i = 0u; i < SIZE; i++) {
      product += this->x[i] * factor.x[i];
     9e4:	c5 7a 10 7c 24 54    	vmovss 0x54(%rsp),%xmm15
    Vector<T, 3> normal =  cross_product(p2 - p1, p3  - p1);

    T normalRayProduct = normal.scalar_product( direction );

    // Ist die Richtung parallel zum Dreieck?
    if ( fabs(normalRayProduct) < EPSILON ) {
     9ea:	c5 7b 10 35 70 03 00 	vmovsd 0x370(%rip),%xmm14        # d62 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x5e2>
     9f1:	00 
     9f2:	49 8d 1c c1          	lea    (%r9,%rax,8),%rbx
    stats.no_ray_triangle_intersection_tests++;
     9f6:	48 83 07 01          	addq   $0x1,(%rdi)
      difference.x[i] = this->x[i] - subtract.x[i];
     9fa:	c5 fa 10 6b 1c       	vmovss 0x1c(%rbx),%xmm5
     9ff:	c5 fa 10 4b 04       	vmovss 0x4(%rbx),%xmm1
     a04:	c5 d2 5c d9          	vsubss %xmm1,%xmm5,%xmm3
     a08:	c5 7a 10 43 08       	vmovss 0x8(%rbx),%xmm8
     a0d:	c5 fa 11 6c 24 40    	vmovss %xmm5,0x40(%rsp)
     a13:	c5 fa 10 6b 14       	vmovss 0x14(%rbx),%xmm5
     a18:	c4 c1 52 5c f0       	vsubss %xmm8,%xmm5,%xmm6
     a1d:	c5 7a 10 6b 18       	vmovss 0x18(%rbx),%xmm13
     a22:	c5 fa 10 53 0c       	vmovss 0xc(%rbx),%xmm2
     a27:	c5 fa 10 3b          	vmovss (%rbx),%xmm7
     a2b:	c5 12 5c df          	vsubss %xmm7,%xmm13,%xmm11
     a2f:	c5 7a 11 6c 24 28    	vmovss %xmm13,0x28(%rsp)
     a35:	c5 6a 5c cf          	vsubss %xmm7,%xmm2,%xmm9
     a39:	c5 7a 10 6b 20       	vmovss 0x20(%rbx),%xmm13
     a3e:	c5 fa 11 54 24 4c    	vmovss %xmm2,0x4c(%rsp)
     a44:	c4 c1 12 5c c0       	vsubss %xmm8,%xmm13,%xmm0

template <class T>
Vector<T, 3> cross_product(Vector<T, 3> v1, Vector<T, 3> v2) {
  Vector<T, 3> cross;

  cross[0] = v1[1] * v2[2] - v1[2] * v2[1];
     a49:	c5 ca 59 e3          	vmulss %xmm3,%xmm6,%xmm4
      difference.x[i] = this->x[i] - subtract.x[i];
     a4d:	c5 fa 10 53 10       	vmovss 0x10(%rbx),%xmm2
     a52:	c5 6a 5c d1          	vsubss %xmm1,%xmm2,%xmm10
     a56:	c5 7a 11 6c 24 30    	vmovss %xmm13,0x30(%rsp)
  cross[0] = v1[1] * v2[2] - v1[2] * v2[1];
     a5c:	c4 e2 29 bb e0       	vfmsub231ss %xmm0,%xmm10,%xmm4
  cross[1] = v1[2] * v2[0] - v1[0] * v2[2];
     a61:	c5 b2 59 c0          	vmulss %xmm0,%xmm9,%xmm0
     a65:	c4 c2 49 bb c3       	vfmsub231ss %xmm11,%xmm6,%xmm0
  cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
     a6a:	c4 41 2a 59 db       	vmulss %xmm11,%xmm10,%xmm11
     a6f:	c4 c2 21 9b d9       	vfmsub132ss %xmm9,%xmm11,%xmm3
      product += this->x[i] * factor.x[i];
     a74:	c5 7a 10 5c 24 48    	vmovss 0x48(%rsp),%xmm11
     a7a:	c4 62 19 99 dc       	vfmadd132ss %xmm4,%xmm12,%xmm11
     a7f:	c4 62 79 b9 5c 24 38 	vfmadd231ss 0x38(%rsp),%xmm0,%xmm11
     a86:	c4 42 61 b9 df       	vfmadd231ss %xmm15,%xmm3,%xmm11
     a8b:	c4 41 78 28 eb       	vmovaps %xmm11,%xmm13
     a90:	c5 10 54 2d 60 03 00 	vandps 0x360(%rip),%xmm13,%xmm13        # df8 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x678>
     a97:	00 
     a98:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
     a9d:	c4 41 79 2e f5       	vucomisd %xmm13,%xmm14
     aa2:	0f 87 5e 02 00 00    	ja     d06 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x586>
     aa8:	c5 78 28 f4          	vmovaps %xmm4,%xmm14
     aac:	c4 62 19 99 f7       	vfmadd132ss %xmm7,%xmm12,%xmm14
     ab1:	c4 41 78 28 ee       	vmovaps %xmm14,%xmm13
     ab6:	c5 7a 10 74 24 60    	vmovss 0x60(%rsp),%xmm14
     abc:	c4 62 79 b9 e9       	vfmadd231ss %xmm1,%xmm0,%xmm13
     ac1:	c4 62 19 99 f4       	vfmadd132ss %xmm4,%xmm12,%xmm14
     ac6:	c4 42 61 b9 e8       	vfmadd231ss %xmm8,%xmm3,%xmm13
     acb:	c4 62 79 b9 74 24 5c 	vfmadd231ss 0x5c(%rsp),%xmm0,%xmm14
     ad2:	c4 62 61 b9 74 24 58 	vfmadd231ss 0x58(%rsp),%xmm3,%xmm14
      return false;
    }

    T d = normal.scalar_product( p1 );
    // Wie oft wird direction benötigt, um von origin die Ebene des Dreiecks zu schneiden
    t = (d - normal.scalar_product( origin ) ) / normalRayProduct;
     ad9:	c4 41 12 5c ee       	vsubss %xmm14,%xmm13,%xmm13
     ade:	c4 41 12 5e db       	vdivss %xmm11,%xmm13,%xmm11

    // Ist das Dreieck in der falschen Richtung? Oder gibt es schon ein anderes Dreieck, welches weiter vorne liegt?
    if ( t < 0.0 || t > minimum_t) {
     ae3:	c4 41 78 2e e3       	vucomiss %xmm11,%xmm12
     ae8:	0f 87 18 02 00 00    	ja     d06 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x586>
     aee:	c5 78 2e 5c 24 50    	vucomiss 0x50(%rsp),%xmm11
     af4:	0f 87 0c 02 00 00    	ja     d06 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x586>
      sum.x[i] = this->x[i] + addend.x[i];
     afa:	c5 7a 10 6c 24 48    	vmovss 0x48(%rsp),%xmm13
     b00:	c4 62 21 a9 6c 24 60 	vfmadd213ss 0x60(%rsp),%xmm11,%xmm13
      difference.x[i] = this->x[i] - subtract.x[i];
     b07:	c5 7a 11 6c 24 74    	vmovss %xmm13,0x74(%rsp)
     b0d:	c5 12 5c ef          	vsubss %xmm7,%xmm13,%xmm13
      sum.x[i] = this->x[i] + addend.x[i];
     b11:	c5 7a 10 74 24 38    	vmovss 0x38(%rsp),%xmm14
     b17:	c4 62 21 a9 74 24 5c 	vfmadd213ss 0x5c(%rsp),%xmm11,%xmm14
     b1e:	c5 7a 11 74 24 64    	vmovss %xmm14,0x64(%rsp)
     b24:	c4 41 78 28 f7       	vmovaps %xmm15,%xmm14
      difference.x[i] = this->x[i] - subtract.x[i];
     b29:	c5 7a 11 6c 24 68    	vmovss %xmm13,0x68(%rsp)
      sum.x[i] = this->x[i] + addend.x[i];
     b2f:	c4 62 21 a9 74 24 58 	vfmadd213ss 0x58(%rsp),%xmm11,%xmm14
      difference.x[i] = this->x[i] - subtract.x[i];
     b36:	c4 41 0a 5c f8       	vsubss %xmm8,%xmm14,%xmm15
     b3b:	c5 7a 10 6c 24 64    	vmovss 0x64(%rsp),%xmm13
     b41:	c5 12 5c e9          	vsubss %xmm1,%xmm13,%xmm13
  cross[0] = v1[1] * v2[2] - v1[2] * v2[1];
     b45:	c5 7a 11 6c 24 78    	vmovss %xmm13,0x78(%rsp)
     b4b:	c4 41 4a 59 ed       	vmulss %xmm13,%xmm6,%xmm13
     b50:	c4 42 29 bb ef       	vfmsub231ss %xmm15,%xmm10,%xmm13
  cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
     b55:	c5 2a 59 54 24 68    	vmulss 0x68(%rsp),%xmm10,%xmm10
      product += this->x[i] * factor.x[i];
     b5b:	c4 62 19 99 ec       	vfmadd132ss %xmm4,%xmm12,%xmm13
  cross[1] = v1[2] * v2[0] - v1[0] * v2[2];
     b60:	c4 41 32 59 ff       	vmulss %xmm15,%xmm9,%xmm15
     b65:	c4 e2 01 9b 74 24 68 	vfmsub132ss 0x68(%rsp),%xmm15,%xmm6
      product += this->x[i] * factor.x[i];
     b6c:	c4 e2 11 99 f0       	vfmadd132ss %xmm0,%xmm13,%xmm6
  cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
     b71:	c4 62 31 bb 54 24 78 	vfmsub231ss 0x78(%rsp),%xmm9,%xmm10
      product += this->x[i] * factor.x[i];
     b78:	c4 c2 61 b9 f2       	vfmadd231ss %xmm10,%xmm3,%xmm6
    // Der Schnittpunkt der direction von origin aus mit der Ebene des Dreiecks
    Vector<T, 3> intersection = origin + t * direction;

    // Ist der Schnittpunkt innerhalb des Dreiecks?
    Vector<T, 3> vector1 = cross_product(p2 - p1,  intersection - p1 );
    if ( normal.scalar_product(vector1) < 0.0 ) {
     b7d:	c5 78 2e e6          	vucomiss %xmm6,%xmm12
     b81:	0f 87 7f 01 00 00    	ja     d06 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x586>
      difference.x[i] = this->x[i] - subtract.x[i];
     b87:	c5 7a 10 6c 24 74    	vmovss 0x74(%rsp),%xmm13
     b8d:	c5 7a 10 7c 24 4c    	vmovss 0x4c(%rsp),%xmm15
     b93:	c4 41 12 5c d7       	vsubss %xmm15,%xmm13,%xmm10
     b98:	c5 7a 10 6c 24 28    	vmovss 0x28(%rsp),%xmm13
     b9e:	c4 41 12 5c ff       	vsubss %xmm15,%xmm13,%xmm15
     ba3:	c5 fa 10 74 24 64    	vmovss 0x64(%rsp),%xmm6
     ba9:	c5 7a 10 6c 24 40    	vmovss 0x40(%rsp),%xmm13
     baf:	c5 4a 5c ca          	vsubss %xmm2,%xmm6,%xmm9
     bb3:	c5 92 5c d2          	vsubss %xmm2,%xmm13,%xmm2
     bb7:	c5 7a 10 6c 24 30    	vmovss 0x30(%rsp),%xmm13
     bbd:	c5 8a 5c f5          	vsubss %xmm5,%xmm14,%xmm6
     bc1:	c5 92 5c ed          	vsubss %xmm5,%xmm13,%xmm5
  cross[0] = v1[1] * v2[2] - v1[2] * v2[1];
     bc5:	c4 41 52 59 e9       	vmulss %xmm9,%xmm5,%xmm13
     bca:	c4 62 69 bb ee       	vfmsub231ss %xmm6,%xmm2,%xmm13
  cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
     bcf:	c4 c1 6a 59 d2       	vmulss %xmm10,%xmm2,%xmm2
  cross[1] = v1[2] * v2[0] - v1[0] * v2[2];
     bd4:	c4 c1 4a 59 f7       	vmulss %xmm15,%xmm6,%xmm6
  cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
     bd9:	c4 42 69 9b cf       	vfmsub132ss %xmm15,%xmm2,%xmm9
      product += this->x[i] * factor.x[i];
     bde:	c5 78 28 fc          	vmovaps %xmm4,%xmm15
  cross[1] = v1[2] * v2[0] - v1[0] * v2[2];
     be2:	c4 c2 49 9b ea       	vfmsub132ss %xmm10,%xmm6,%xmm5
      product += this->x[i] * factor.x[i];
     be7:	c4 42 19 99 fd       	vfmadd132ss %xmm13,%xmm12,%xmm15
     bec:	c5 78 29 fa          	vmovaps %xmm15,%xmm2
     bf0:	c4 e2 79 b9 d5       	vfmadd231ss %xmm5,%xmm0,%xmm2
     bf5:	c4 c2 61 b9 d1       	vfmadd231ss %xmm9,%xmm3,%xmm2
      return false;
    }

    vector1 = cross_product(p3 - p2,  intersection - p2 );
    if ( normal.scalar_product(vector1) < 0.0 ) {
     bfa:	c5 78 2e e2          	vucomiss %xmm2,%xmm12
     bfe:	0f 87 02 01 00 00    	ja     d06 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x586>
      difference.x[i] = this->x[i] - subtract.x[i];
     c04:	c5 fa 10 54 24 74    	vmovss 0x74(%rsp),%xmm2
     c0a:	c5 3a 5c 44 24 30    	vsubss 0x30(%rsp),%xmm8,%xmm8
     c10:	c5 ea 5c 74 24 28    	vsubss 0x28(%rsp),%xmm2,%xmm6
     c16:	c5 7a 10 7c 24 40    	vmovss 0x40(%rsp),%xmm15
     c1c:	c5 fa 10 54 24 64    	vmovss 0x64(%rsp),%xmm2
     c22:	c5 c2 5c 7c 24 28    	vsubss 0x28(%rsp),%xmm7,%xmm7
     c28:	c4 41 6a 5c d7       	vsubss %xmm15,%xmm2,%xmm10
     c2d:	c5 8a 5c 54 24 30    	vsubss 0x30(%rsp),%xmm14,%xmm2
     c33:	c4 c1 72 5c cf       	vsubss %xmm15,%xmm1,%xmm1
  cross[0] = v1[1] * v2[2] - v1[2] * v2[1];
     c38:	c4 41 3a 59 f2       	vmulss %xmm10,%xmm8,%xmm14
     c3d:	c4 62 71 bb f2       	vfmsub231ss %xmm2,%xmm1,%xmm14
  cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
     c42:	c5 f2 59 ce          	vmulss %xmm6,%xmm1,%xmm1
  cross[1] = v1[2] * v2[0] - v1[0] * v2[2];
     c46:	c5 c2 59 d2          	vmulss %xmm2,%xmm7,%xmm2
  cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
     c4a:	c4 c2 71 9b fa       	vfmsub132ss %xmm10,%xmm1,%xmm7
      product += this->x[i] * factor.x[i];
     c4f:	c5 f8 28 cc          	vmovaps %xmm4,%xmm1
  cross[1] = v1[2] * v2[0] - v1[0] * v2[2];
     c53:	c4 62 69 9b c6       	vfmsub132ss %xmm6,%xmm2,%xmm8
      product += this->x[i] * factor.x[i];
     c58:	c4 c2 19 99 ce       	vfmadd132ss %xmm14,%xmm12,%xmm1
     c5d:	c4 c2 79 b9 c8       	vfmadd231ss %xmm8,%xmm0,%xmm1
     c62:	c4 e2 61 b9 cf       	vfmadd231ss %xmm7,%xmm3,%xmm1
      return false;
    }

    Vector<T, 3> vector2 = cross_product(p1 - p3, intersection - p3 );
    if (normal.scalar_product(vector2) < 0.0 ) {
     c67:	c5 78 2e e1          	vucomiss %xmm1,%xmm12
     c6b:	0f 87 95 00 00 00    	ja     d06 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x586>
      square_of_length += ( this->x[i] * this->x[i] );
     c71:	c4 e2 19 99 e4       	vfmadd132ss %xmm4,%xmm12,%xmm4
     c76:	c4 42 19 99 ed       	vfmadd132ss %xmm13,%xmm12,%xmm13
     c7b:	c4 e2 59 99 c0       	vfmadd132ss %xmm0,%xmm4,%xmm0
     c80:	c4 e2 11 99 ed       	vfmadd132ss %xmm5,%xmm13,%xmm5
     c85:	c4 e2 79 99 db       	vfmadd132ss %xmm3,%xmm0,%xmm3
     c8a:	c4 42 51 99 c9       	vfmadd132ss %xmm9,%xmm5,%xmm9
      return false;
    }

    // u und v berechnen. Wurzel jeweils erst am Ende ziehen
    T area = normal.square_of_length();
    u = sqrt(vector1.square_of_length() / area);
     c8f:	c5 b2 5e c3          	vdivss %xmm3,%xmm9,%xmm0
     c93:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
     c97:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
     c9b:	c5 f9 2e c8          	vucomisd %xmm0,%xmm1
     c9f:	c5 cb 51 f0          	vsqrtsd %xmm0,%xmm6,%xmm6
     ca3:	0f 87 fd 08 00 00    	ja     15a6 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xe26>
     ca9:	c4 42 19 99 f6       	vfmadd132ss %xmm14,%xmm12,%xmm14
     cae:	c4 42 09 99 c0       	vfmadd132ss %xmm8,%xmm14,%xmm8
     cb3:	c4 e2 39 99 ff       	vfmadd132ss %xmm7,%xmm8,%xmm7
    v = sqrt(vector2.square_of_length() / area);
     cb8:	c5 c2 5e db          	vdivss %xmm3,%xmm7,%xmm3
    u = sqrt(vector1.square_of_length() / area);
     cbc:	c5 cb 5a f6          	vcvtsd2ss %xmm6,%xmm6,%xmm6
    v = sqrt(vector2.square_of_length() / area);
     cc0:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
     cc4:	c5 f9 2e cb          	vucomisd %xmm3,%xmm1
     cc8:	c5 c3 51 fb          	vsqrtsd %xmm3,%xmm7,%xmm7
     ccc:	0f 87 b2 08 00 00    	ja     1584 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xe04>
      stats.no_ray_triangle_intersections_found++;          
     cd2:	48 83 47 08 01       	addq   $0x1,0x8(%rdi)
      if ( (nearest_triangle == nullptr)  || (t < minimum_t) ) {      
     cd7:	48 85 c9             	test   %rcx,%rcx
     cda:	c5 c3 5a ff          	vcvtsd2ss %xmm7,%xmm7,%xmm7
     cde:	74 0d                	je     ced <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x56d>
     ce0:	c5 fa 10 64 24 50    	vmovss 0x50(%rsp),%xmm4
     ce6:	c4 c1 78 2e e3       	vucomiss %xmm11,%xmm4
     ceb:	76 15                	jbe    d02 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x582>
     ced:	c5 fa 11 7c 24 70    	vmovss %xmm7,0x70(%rsp)
     cf3:	48 89 d9             	mov    %rbx,%rcx
    u = sqrt(vector1.square_of_length() / area);
     cf6:	c5 fa 11 74 24 6c    	vmovss %xmm6,0x6c(%rsp)
    t = (d - normal.scalar_product( origin ) ) / normalRayProduct;
     cfc:	c5 7a 11 5c 24 50    	vmovss %xmm11,0x50(%rsp)
     d02:	4c 8b 4d 00          	mov    0x0(%rbp),%r9
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
     d06:	48 8b 45 08          	mov    0x8(%rbp),%rax
  for (size_t i = 0u; i < triangles.size(); i++) {
     d0a:	48 83 c6 01          	add    $0x1,%rsi
     d0e:	4c 29 c8             	sub    %r9,%rax
     d11:	48 c1 f8 03          	sar    $0x3,%rax
     d15:	49 0f af c4          	imul   %r12,%rax
     d19:	48 39 f0             	cmp    %rsi,%rax
     d1c:	0f 87 be fc ff ff    	ja     9e0 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x260>
#ifndef USE_KDTREE
      bool hasNearestTriangle = scene.hasNearestTriangle(ray, nearest_triangle, t, u, v);
#else
      bool hasNearestTriangle = tree->hasNearestTriangle(ray.getOrigin(), ray.getDirection(),  nearest_triangle, t, u, v);
#endif
      if ( hasNearestTriangle ) {
     d22:	48 85 c9             	test   %rcx,%rcx
     d25:	0f 85 95 01 00 00    	jne    ec0 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x740>
     d2b:	49 8b 4f 08          	mov    0x8(%r15),%rcx
     d2f:	4d 8b 07             	mov    (%r15),%r8
      color = Color(0.0, 0.0, 0.0);
     d32:	c5 7a 11 64 24 64    	vmovss %xmm12,0x64(%rsp)
     d38:	c5 78 29 e1          	vmovaps %xmm12,%xmm1
     d3c:	c5 7a 11 64 24 68    	vmovss %xmm12,0x68(%rsp)
     d42:	c5 78 29 e4          	vmovaps %xmm12,%xmm4
     d46:	c5 7a 11 64 24 6c    	vmovss %xmm12,0x6c(%rsp)
    buffer[x + y * width] = color;
     d4c:	4d 0f af f0          	imul   %r8,%r14
	return get()[__i];
     d50:	49 8b 47 10          	mov    0x10(%r15),%rax
     d54:	49 01 d6             	add    %rdx,%r14
    for (FLOAT y = 0.0; y < screen.getHeight(); y++) {
     d57:	48 85 c9             	test   %rcx,%rcx
     d5a:	4f 8d 0c 76          	lea    (%r14,%r14,2),%r9
     d5e:	4a 8d 04 88          	lea    (%rax,%r9,4),%rax
    buffer[x + y * width] = color;
     d62:	c5 fa 11 08          	vmovss %xmm1,(%rax)
     d66:	c5 fa 11 60 08       	vmovss %xmm4,0x8(%rax)
     d6b:	c5 fa 10 4c 24 68    	vmovss 0x68(%rsp),%xmm1
    for (FLOAT y = 0.0; y < screen.getHeight(); y++) {
     d71:	c5 fa 10 25 90 03 00 	vmovss 0x390(%rip),%xmm4        # 1109 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x989>
     d78:	00 
    buffer[x + y * width] = color;
     d79:	c5 fa 11 48 04       	vmovss %xmm1,0x4(%rax)
    for (FLOAT y = 0.0; y < screen.getHeight(); y++) {
     d7e:	c5 da 58 4c 24 7c    	vaddss 0x7c(%rsp),%xmm4,%xmm1
     d84:	c5 fa 11 4c 24 7c    	vmovss %xmm1,0x7c(%rsp)
     d8a:	0f 88 05 01 00 00    	js     e95 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x715>
     d90:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
     d94:	c4 e1 fa 2a c1       	vcvtsi2ss %rcx,%xmm0,%xmm0
     d99:	c5 f8 2e 44 24 7c    	vucomiss 0x7c(%rsp),%xmm0
     d9f:	0f 87 4b fb ff ff    	ja     8f0 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x170>
  for (FLOAT x = 0.0; x < screen.getWidth(); x++) {
     da5:	c5 fa 10 3d 90 03 00 	vmovss 0x390(%rip),%xmm7        # 113d <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x9bd>
     dac:	00 
     dad:	4d 85 c0             	test   %r8,%r8
     db0:	c5 c2 58 8c 24 8c 00 	vaddss 0x8c(%rsp),%xmm7,%xmm1
     db7:	00 00 
     db9:	c5 fa 11 8c 24 8c 00 	vmovss %xmm1,0x8c(%rsp)
     dc0:	00 00 
     dc2:	0f 88 2d 08 00 00    	js     15f5 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xe75>
     dc8:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
     dcc:	c4 c1 fa 2a c0       	vcvtsi2ss %r8,%xmm0,%xmm0
     dd1:	c5 f8 2e 84 24 8c 00 	vucomiss 0x8c(%rsp),%xmm0
     dd8:	00 00 
     dda:	0f 87 b2 fa ff ff    	ja     892 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x112>
        color = scene.shade(ray, *nearest_triangle, material, t, u, v);
      }
      screen.setPixel(x, y, color);
    }
  }
}
     de0:	c5 f8 28 b4 24 a0 00 	vmovaps 0xa0(%rsp),%xmm6
     de7:	00 00 
     de9:	c5 f8 28 bc 24 b0 00 	vmovaps 0xb0(%rsp),%xmm7
     df0:	00 00 
     df2:	c5 78 28 84 24 c0 00 	vmovaps 0xc0(%rsp),%xmm8
     df9:	00 00 
     dfb:	c5 78 28 8c 24 d0 00 	vmovaps 0xd0(%rsp),%xmm9
     e02:	00 00 
     e04:	c5 78 28 94 24 e0 00 	vmovaps 0xe0(%rsp),%xmm10
     e0b:	00 00 
     e0d:	c5 78 28 9c 24 f0 00 	vmovaps 0xf0(%rsp),%xmm11
     e14:	00 00 
     e16:	c5 78 28 a4 24 00 01 	vmovaps 0x100(%rsp),%xmm12
     e1d:	00 00 
     e1f:	c5 78 28 ac 24 10 01 	vmovaps 0x110(%rsp),%xmm13
     e26:	00 00 
     e28:	c5 78 28 b4 24 20 01 	vmovaps 0x120(%rsp),%xmm14
     e2f:	00 00 
     e31:	c5 78 28 bc 24 30 01 	vmovaps 0x130(%rsp),%xmm15
     e38:	00 00 
     e3a:	48 81 c4 48 01 00 00 	add    $0x148,%rsp
     e41:	5b                   	pop    %rbx
     e42:	5e                   	pop    %rsi
     e43:	5f                   	pop    %rdi
     e44:	5d                   	pop    %rbp
     e45:	41 5c                	pop    %r12
     e47:	41 5d                	pop    %r13
     e49:	41 5e                	pop    %r14
     e4b:	41 5f                	pop    %r15
     e4d:	c3                   	retq   
     e4e:	66 90                	xchg   %ax,%ax
      const Ray<FLOAT> ray = camera.getRay(x,y);
     e50:	c5 f2 5c 05 50 03 00 	vsubss 0x350(%rip),%xmm1,%xmm0        # 11a8 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xa28>
     e57:	00 
     e58:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
     e5f:	00 00 80 
     e62:	c4 61 fa 2c f0       	vcvttss2si %xmm0,%r14
     e67:	49 31 c6             	xor    %rax,%r14
                  + (y * pixelHeight) * down )
     e6a:	4d 85 f6             	test   %r14,%r14
     e6d:	0f 89 9f fa ff ff    	jns    912 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x192>
     e73:	4c 89 f0             	mov    %r14,%rax
     e76:	4d 89 f1             	mov    %r14,%r9
     e79:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
     e7d:	48 d1 e8             	shr    %rax
     e80:	41 83 e1 01          	and    $0x1,%r9d
     e84:	4c 09 c8             	or     %r9,%rax
     e87:	c4 e1 fa 2a c0       	vcvtsi2ss %rax,%xmm0,%xmm0
     e8c:	c5 fa 58 c0          	vaddss %xmm0,%xmm0,%xmm0
     e90:	e9 86 fa ff ff       	jmpq   91b <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x19b>
    for (FLOAT y = 0.0; y < screen.getHeight(); y++) {
     e95:	48 89 c8             	mov    %rcx,%rax
     e98:	49 89 c9             	mov    %rcx,%r9
     e9b:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
     e9f:	48 d1 e8             	shr    %rax
     ea2:	41 83 e1 01          	and    $0x1,%r9d
     ea6:	4c 09 c8             	or     %r9,%rax
     ea9:	c4 e1 fa 2a c0       	vcvtsi2ss %rax,%xmm0,%xmm0
     eae:	c5 fa 58 c0          	vaddss %xmm0,%xmm0,%xmm0
     eb2:	e9 e2 fe ff ff       	jmpq   d99 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x619>
     eb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     ebe:	00 00 
    FLOAT factor = 1.0 / lights.size();
     ec0:	4c 8b 4d 20          	mov    0x20(%rbp),%r9
     ec4:	48 8b 5d 18          	mov    0x18(%rbp),%rbx
     ec8:	4c 89 c8             	mov    %r9,%rax
     ecb:	48 29 d8             	sub    %rbx,%rax
     ece:	48 c1 f8 03          	sar    $0x3,%rax
     ed2:	49 89 c0             	mov    %rax,%r8
     ed5:	48 b8 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rax
     edc:	aa aa aa 
     edf:	49 0f af c0          	imul   %r8,%rax
     ee3:	48 85 c0             	test   %rax,%rax
     ee6:	0f 88 2c 06 00 00    	js     1518 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xd98>
     eec:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
     ef0:	c4 e1 f3 2a c8       	vcvtsi2sd %rax,%xmm1,%xmm1
     ef5:	c5 fb 10 05 78 03 00 	vmovsd 0x378(%rip),%xmm0        # 1275 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xaf5>
     efc:	00 
    Vector<FLOAT, 3> normal = (u * triangle.n1) + (v * triangle.n2) + ( (1.0 - u - v) * triangle.n3);    
     efd:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
      sum.x[i] = this->x[i] + addend.x[i];
     f02:	c5 fa 10 6c 24 54    	vmovss 0x54(%rsp),%xmm5
    FLOAT factor = 1.0 / lights.size();
     f08:	c5 fb 5e c9          	vdivsd %xmm1,%xmm0,%xmm1
     f0c:	c5 fa 10 7c 24 48    	vmovss 0x48(%rsp),%xmm7
     f12:	c5 fa 10 64 24 38    	vmovss 0x38(%rsp),%xmm4
     f18:	c5 f3 5a c9          	vcvtsd2ss %xmm1,%xmm1,%xmm1
     f1c:	c5 fa 11 8c 24 90 00 	vmovss %xmm1,0x90(%rsp)
     f23:	00 00 
    Vector<FLOAT, 3> intersection = (ray.getOrigin() + 0.9999 * t * ray.getDirection());
     f25:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
     f29:	c5 f2 5a 4c 24 50    	vcvtss2sd 0x50(%rsp),%xmm1,%xmm1
     f2f:	c5 f3 59 0d 80 03 00 	vmulsd 0x380(%rip),%xmm1,%xmm1        # 12b7 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xb37>
     f36:	00 
     f37:	c5 f3 5a c9          	vcvtsd2ss %xmm1,%xmm1,%xmm1
     f3b:	c4 e2 71 a9 7c 24 60 	vfmadd213ss 0x60(%rsp),%xmm1,%xmm7
     f42:	c4 e2 71 a9 6c 24 58 	vfmadd213ss 0x58(%rsp),%xmm1,%xmm5
     f49:	c4 e2 71 a9 64 24 5c 	vfmadd213ss 0x5c(%rsp),%xmm1,%xmm4
    Vector<FLOAT, 3> normal = (u * triangle.n1) + (v * triangle.n2) + ( (1.0 - u - v) * triangle.n3);    
     f50:	c5 fa 10 4c 24 6c    	vmovss 0x6c(%rsp),%xmm1
     f56:	c5 3a 5a c1          	vcvtss2sd %xmm1,%xmm8,%xmm8
      product[i] = factor * v[i];
     f5a:	c5 f2 59 71 28       	vmulss 0x28(%rcx),%xmm1,%xmm6
      sum.x[i] = this->x[i] + addend.x[i];
     f5f:	c5 fa 11 6c 24 54    	vmovss %xmm5,0x54(%rsp)
     f65:	c4 41 7b 5c c0       	vsubsd %xmm8,%xmm0,%xmm8
     f6a:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
     f6e:	c5 fa 10 6c 24 70    	vmovss 0x70(%rsp),%xmm5
     f74:	c5 fa 11 7c 24 50    	vmovss %xmm7,0x50(%rsp)
      product[i] = factor * v[i];
     f7a:	c5 f2 59 79 24       	vmulss 0x24(%rcx),%xmm1,%xmm7
     f7f:	c5 fa 5a c5          	vcvtss2sd %xmm5,%xmm0,%xmm0
      sum.x[i] = this->x[i] + addend.x[i];
     f83:	c4 e2 51 b9 71 34    	vfmadd231ss 0x34(%rcx),%xmm5,%xmm6
     f89:	c5 fa 11 64 24 5c    	vmovss %xmm4,0x5c(%rsp)
     f8f:	c5 3b 5c c0          	vsubsd %xmm0,%xmm8,%xmm8
      product[i] = factor * v[i];
     f93:	c5 f2 59 41 2c       	vmulss 0x2c(%rcx),%xmm1,%xmm0
     f98:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
      sum.x[i] = this->x[i] + addend.x[i];
     f9c:	c4 e2 51 b9 79 30    	vfmadd231ss 0x30(%rcx),%xmm5,%xmm7
     fa2:	c4 41 3b 5a c0       	vcvtsd2ss %xmm8,%xmm8,%xmm8
     fa7:	c4 e2 39 b9 79 3c    	vfmadd231ss 0x3c(%rcx),%xmm8,%xmm7
     fad:	c4 e2 39 b9 71 40    	vfmadd231ss 0x40(%rcx),%xmm8,%xmm6
     fb3:	c4 e2 51 b9 41 38    	vfmadd231ss 0x38(%rcx),%xmm5,%xmm0
     fb9:	c4 62 79 99 41 44    	vfmadd132ss 0x44(%rcx),%xmm0,%xmm8
      square_of_length += ( this->x[i] * this->x[i] );
     fbf:	c5 f8 28 c7          	vmovaps %xmm7,%xmm0
     fc3:	c4 e2 19 99 c7       	vfmadd132ss %xmm7,%xmm12,%xmm0
     fc8:	c4 e2 49 b9 c6       	vfmadd231ss %xmm6,%xmm6,%xmm0
     fcd:	c4 c2 39 b9 c0       	vfmadd231ss %xmm8,%xmm8,%xmm0
    return sqrt( square_of_length() );
     fd2:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
     fd6:	c5 f9 2e c8          	vucomisd %xmm0,%xmm1
     fda:	c5 33 51 c8          	vsqrtsd %xmm0,%xmm9,%xmm9
     fde:	0f 87 c2 06 00 00    	ja     16a6 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xf26>
     fe4:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    for (Light light : lights) {
     fe8:	4c 39 cb             	cmp    %r9,%rbx
     feb:	c4 c1 7b 5a c1       	vcvtsd2ss %xmm9,%xmm0,%xmm0
       this->x[i] /= length;
     ff0:	c5 c2 5e e0          	vdivss %xmm0,%xmm7,%xmm4
     ff4:	c5 ca 5e f0          	vdivss %xmm0,%xmm6,%xmm6
     ff8:	c5 fa 11 a4 24 94 00 	vmovss %xmm4,0x94(%rsp)
     fff:	00 00 
    1001:	c5 ba 5e e8          	vdivss %xmm0,%xmm8,%xmm5
    1005:	c5 fa 11 b4 24 98 00 	vmovss %xmm6,0x98(%rsp)
    100c:	00 00 
    100e:	c5 fa 11 ac 24 9c 00 	vmovss %xmm5,0x9c(%rsp)
    1015:	00 00 
    1017:	0f 84 f9 05 00 00    	je     1616 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xe96>
    101d:	48 8d 73 18          	lea    0x18(%rbx),%rsi
     : red(red), green(green), blue(blue)
    1021:	c5 fa 10 0d 44 03 00 	vmovss 0x344(%rip),%xmm1        # 136d <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xbed>
    1028:	00 
    1029:	c5 fa 10 3d 48 03 00 	vmovss 0x348(%rip),%xmm7        # 1379 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xbf9>
    1030:	00 
    1031:	49 29 f1             	sub    %rsi,%r9
    1034:	c5 fa 10 35 4c 03 00 	vmovss 0x34c(%rip),%xmm6        # 1388 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xc08>
    103b:	00 
    103c:	49 83 e1 f8          	and    $0xfffffffffffffff8,%r9
    1040:	c5 fa 11 4c 24 64    	vmovss %xmm1,0x64(%rsp)
    1046:	4c 01 ce             	add    %r9,%rsi
    1049:	c5 fa 11 7c 24 68    	vmovss %xmm7,0x68(%rsp)
    104f:	c5 fa 11 74 24 6c    	vmovss %xmm6,0x6c(%rsp)
    1055:	e9 5b 02 00 00       	jmpq   12b5 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xb35>
    105a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
      product += this->x[i] * factor.x[i];
    1060:	c4 41 78 28 de       	vmovaps %xmm14,%xmm11
    1065:	c5 7a 10 6c 24 50    	vmovss 0x50(%rsp),%xmm13
    106b:	c4 62 19 99 dd       	vfmadd132ss %xmm5,%xmm12,%xmm11
    1070:	c4 42 19 99 ee       	vfmadd132ss %xmm14,%xmm12,%xmm13
    1075:	c4 62 61 b9 d8       	vfmadd231ss %xmm0,%xmm3,%xmm11
    107a:	c4 62 61 b9 6c 24 5c 	vfmadd231ss 0x5c(%rsp),%xmm3,%xmm13
    1081:	c4 62 69 b9 d9       	vfmadd231ss %xmm1,%xmm2,%xmm11
    1086:	c4 62 69 b9 6c 24 54 	vfmadd231ss 0x54(%rsp),%xmm2,%xmm13
    108d:	c4 41 22 5c dd       	vsubss %xmm13,%xmm11,%xmm11
    1092:	c4 41 22 5e da       	vdivss %xmm10,%xmm11,%xmm11
    if ( t < 0.0 || t > minimum_t) {
    1097:	c4 41 78 2e e3       	vucomiss %xmm11,%xmm12
    109c:	0f 87 3f 03 00 00    	ja     13e1 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xc61>
      sum.x[i] = this->x[i] + addend.x[i];
    10a2:	c5 78 28 ec          	vmovaps %xmm4,%xmm13
    10a6:	c5 7a 10 54 24 30    	vmovss 0x30(%rsp),%xmm10
    10ac:	c5 78 29 dc          	vmovaps %xmm11,%xmm4
    10b0:	c4 62 21 a9 54 24 50 	vfmadd213ss 0x50(%rsp),%xmm11,%xmm10
      difference.x[i] = this->x[i] - subtract.x[i];
    10b7:	c5 7a 11 94 24 80 00 	vmovss %xmm10,0x80(%rsp)
    10be:	00 00 
      sum.x[i] = this->x[i] + addend.x[i];
    10c0:	c4 62 21 a9 6c 24 5c 	vfmadd213ss 0x5c(%rsp),%xmm11,%xmm13
    10c7:	c5 7a 11 6c 24 60    	vmovss %xmm13,0x60(%rsp)
      difference.x[i] = this->x[i] - subtract.x[i];
    10cd:	c5 2a 5c ed          	vsubss %xmm5,%xmm10,%xmm13
      sum.x[i] = this->x[i] + addend.x[i];
    10d1:	c5 7a 10 5c 24 54    	vmovss 0x54(%rsp),%xmm11
    10d7:	c4 e2 21 99 64 24 28 	vfmadd132ss 0x28(%rsp),%xmm11,%xmm4
      difference.x[i] = this->x[i] - subtract.x[i];
    10de:	c5 7a 10 5c 24 60    	vmovss 0x60(%rsp),%xmm11
    10e4:	c5 22 5c d0          	vsubss %xmm0,%xmm11,%xmm10
    10e8:	c5 fa 11 a4 24 84 00 	vmovss %xmm4,0x84(%rsp)
    10ef:	00 00 
    10f1:	c5 da 5c e1          	vsubss %xmm1,%xmm4,%xmm4
  cross[0] = v1[1] * v2[2] - v1[2] * v2[1];
    10f5:	c5 2a 59 5c 24 38    	vmulss 0x38(%rsp),%xmm10,%xmm11
    10fb:	c4 62 41 bb dc       	vfmsub231ss %xmm4,%xmm7,%xmm11
  cross[1] = v1[2] * v2[0] - v1[0] * v2[2];
    1100:	c5 ca 59 e4          	vmulss %xmm4,%xmm6,%xmm4
      product += this->x[i] * factor.x[i];
    1104:	c4 42 19 99 de       	vfmadd132ss %xmm14,%xmm12,%xmm11
  cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
    1109:	c5 92 59 ff          	vmulss %xmm7,%xmm13,%xmm7
  cross[1] = v1[2] * v2[0] - v1[0] * v2[2];
    110d:	c4 e2 11 bb 64 24 38 	vfmsub231ss 0x38(%rsp),%xmm13,%xmm4
      product += this->x[i] * factor.x[i];
    1114:	c4 e2 21 99 e3       	vfmadd132ss %xmm3,%xmm11,%xmm4
  cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
    1119:	c4 e2 29 bb fe       	vfmsub231ss %xmm6,%xmm10,%xmm7
      product += this->x[i] * factor.x[i];
    111e:	c4 e2 69 b9 e7       	vfmadd231ss %xmm7,%xmm2,%xmm4
    if ( normal.scalar_product(vector1) < 0.0 ) {
    1123:	c5 78 2e e4          	vucomiss %xmm4,%xmm12
    1127:	0f 87 b4 02 00 00    	ja     13e1 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xc61>
      difference.x[i] = this->x[i] - subtract.x[i];
    112d:	c5 7a 10 5c 24 58    	vmovss 0x58(%rsp),%xmm11
    1133:	c5 fa 10 64 24 40    	vmovss 0x40(%rsp),%xmm4
    1139:	c5 7a 10 94 24 80 00 	vmovss 0x80(%rsp),%xmm10
    1140:	00 00 
    1142:	c5 fa 10 7c 24 60    	vmovss 0x60(%rsp),%xmm7
    1148:	c4 41 2a 5c d1       	vsubss %xmm9,%xmm10,%xmm10
    114d:	c4 c1 42 5c f8       	vsubss %xmm8,%xmm7,%xmm7
    1152:	c5 7a 10 ac 24 84 00 	vmovss 0x84(%rsp),%xmm13
    1159:	00 00 
    115b:	c4 41 5a 5c c9       	vsubss %xmm9,%xmm4,%xmm9
    1160:	c4 c1 02 5c e3       	vsubss %xmm11,%xmm15,%xmm4
    1165:	c4 c1 12 5c f3       	vsubss %xmm11,%xmm13,%xmm6
    116a:	c5 7a 10 6c 24 4c    	vmovss 0x4c(%rsp),%xmm13
    1170:	c4 41 12 5c c0       	vsubss %xmm8,%xmm13,%xmm8
  cross[0] = v1[1] * v2[2] - v1[2] * v2[1];
    1175:	c5 5a 59 df          	vmulss %xmm7,%xmm4,%xmm11
    1179:	c4 62 39 bb de       	vfmsub231ss %xmm6,%xmm8,%xmm11
  cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
    117e:	c4 41 3a 59 c2       	vmulss %xmm10,%xmm8,%xmm8
  cross[0] = v1[1] * v2[2] - v1[2] * v2[1];
    1183:	c4 41 78 28 eb       	vmovaps %xmm11,%xmm13
  cross[1] = v1[2] * v2[0] - v1[0] * v2[2];
    1188:	c5 b2 59 f6          	vmulss %xmm6,%xmm9,%xmm6
  cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
    118c:	c4 62 39 9b cf       	vfmsub132ss %xmm7,%xmm8,%xmm9
    1191:	c4 41 78 28 d9       	vmovaps %xmm9,%xmm11
      product += this->x[i] * factor.x[i];
    1196:	c4 41 78 28 ce       	vmovaps %xmm14,%xmm9
  cross[1] = v1[2] * v2[0] - v1[0] * v2[2];
    119b:	c4 c2 49 9b e2       	vfmsub132ss %xmm10,%xmm6,%xmm4
      product += this->x[i] * factor.x[i];
    11a0:	c4 42 19 99 cd       	vfmadd132ss %xmm13,%xmm12,%xmm9
    11a5:	c5 78 29 ce          	vmovaps %xmm9,%xmm6
    11a9:	c4 e2 61 b9 f4       	vfmadd231ss %xmm4,%xmm3,%xmm6
    11ae:	c4 c2 69 b9 f3       	vfmadd231ss %xmm11,%xmm2,%xmm6
    if ( normal.scalar_product(vector1) < 0.0 ) {
    11b3:	c5 78 2e e6          	vucomiss %xmm6,%xmm12
    11b7:	0f 87 24 02 00 00    	ja     13e1 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xc61>
      difference.x[i] = this->x[i] - subtract.x[i];
    11bd:	c5 fa 10 74 24 40    	vmovss 0x40(%rsp),%xmm6
    11c3:	c4 c1 72 5c cf       	vsubss %xmm15,%xmm1,%xmm1
    11c8:	c5 7a 10 94 24 80 00 	vmovss 0x80(%rsp),%xmm10
    11cf:	00 00 
    11d1:	c5 d2 5c ee          	vsubss %xmm6,%xmm5,%xmm5
    11d5:	c5 2a 5c c6          	vsubss %xmm6,%xmm10,%xmm8
    11d9:	c5 fa 10 7c 24 60    	vmovss 0x60(%rsp),%xmm7
    11df:	c5 7a 10 54 24 4c    	vmovss 0x4c(%rsp),%xmm10
    11e5:	c4 41 42 5c ca       	vsubss %xmm10,%xmm7,%xmm9
    11ea:	c5 fa 10 bc 24 84 00 	vmovss 0x84(%rsp),%xmm7
    11f1:	00 00 
    11f3:	c4 c1 42 5c ff       	vsubss %xmm15,%xmm7,%xmm7
    11f8:	c4 c1 7a 5c c2       	vsubss %xmm10,%xmm0,%xmm0
  cross[0] = v1[1] * v2[2] - v1[2] * v2[1];
    11fd:	c4 c1 72 59 f1       	vmulss %xmm9,%xmm1,%xmm6
    1202:	c4 e2 79 bb f7       	vfmsub231ss %xmm7,%xmm0,%xmm6
  cross[1] = v1[2] * v2[0] - v1[0] * v2[2];
    1207:	c5 d2 59 ff          	vmulss %xmm7,%xmm5,%xmm7
  cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
    120b:	c4 c1 7a 59 c0       	vmulss %xmm8,%xmm0,%xmm0
  cross[1] = v1[2] * v2[0] - v1[0] * v2[2];
    1210:	c4 c2 71 bb f8       	vfmsub231ss %xmm8,%xmm1,%xmm7
      product += this->x[i] * factor.x[i];
    1215:	c5 78 29 f1          	vmovaps %xmm14,%xmm1
  cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
    1219:	c4 c2 79 9b e9       	vfmsub132ss %xmm9,%xmm0,%xmm5
    121e:	c5 78 28 c5          	vmovaps %xmm5,%xmm8
      product += this->x[i] * factor.x[i];
    1222:	c4 e2 19 99 ce       	vfmadd132ss %xmm6,%xmm12,%xmm1
    1227:	c4 e2 61 b9 cf       	vfmadd231ss %xmm7,%xmm3,%xmm1
    122c:	c4 e2 69 b9 cd       	vfmadd231ss %xmm5,%xmm2,%xmm1
    if (normal.scalar_product(vector2) < 0.0 ) {
    1231:	c5 78 2e e1          	vucomiss %xmm1,%xmm12
    1235:	0f 87 a6 01 00 00    	ja     13e1 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xc61>
      square_of_length += ( this->x[i] * this->x[i] );
    123b:	c4 41 78 28 fe       	vmovaps %xmm14,%xmm15
    1240:	c5 78 28 d4          	vmovaps %xmm4,%xmm10
    1244:	c4 42 19 99 ed       	vfmadd132ss %xmm13,%xmm12,%xmm13
    1249:	c4 42 19 99 fe       	vfmadd132ss %xmm14,%xmm12,%xmm15
    124e:	c4 e2 01 99 db       	vfmadd132ss %xmm3,%xmm15,%xmm3
    1253:	c5 78 28 cb          	vmovaps %xmm3,%xmm9
    1257:	c4 62 11 99 d4       	vfmadd132ss %xmm4,%xmm13,%xmm10
    125c:	c4 42 29 99 db       	vfmadd132ss %xmm11,%xmm10,%xmm11
    1261:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
    1265:	c4 62 69 b9 ca       	vfmadd231ss %xmm2,%xmm2,%xmm9
    u = sqrt(vector1.square_of_length() / area);
    126a:	c4 c1 22 5e c1       	vdivss %xmm9,%xmm11,%xmm0
    126f:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
    1273:	c5 f9 2e e0          	vucomisd %xmm0,%xmm4
    1277:	0f 87 dc 03 00 00    	ja     1659 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xed9>
    127d:	c4 e2 19 99 f6       	vfmadd132ss %xmm6,%xmm12,%xmm6
    1282:	c5 f8 28 c6          	vmovaps %xmm6,%xmm0
    1286:	c4 e2 41 b9 c7       	vfmadd231ss %xmm7,%xmm7,%xmm0
    128b:	c4 c2 39 b9 c0       	vfmadd231ss %xmm8,%xmm8,%xmm0
    v = sqrt(vector2.square_of_length() / area);
    1290:	c4 c1 7a 5e c1       	vdivss %xmm9,%xmm0,%xmm0
    1295:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
    1299:	c5 f9 2e e0          	vucomisd %xmm0,%xmm4
    129d:	0f 87 a2 03 00 00    	ja     1645 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xec5>
    12a3:	48 83 c3 18          	add    $0x18,%rbx
      stats.no_ray_triangle_intersections_found++;          
    12a7:	48 83 47 08 01       	addq   $0x1,0x8(%rdi)
    for (Light light : lights) {
    12ac:	48 39 de             	cmp    %rbx,%rsi
    12af:	0f 84 4b 02 00 00    	je     1500 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xd80>
    12b5:	c5 fa 10 63 10       	vmovss 0x10(%rbx),%xmm4
      difference.x[i] = this->x[i] - subtract.x[i];
    12ba:	c5 fa 10 03          	vmovss (%rbx),%xmm0
    12be:	c5 fa 11 64 24 74    	vmovss %xmm4,0x74(%rsp)
    12c4:	c5 fa 5c 64 24 50    	vsubss 0x50(%rsp),%xmm0,%xmm4
  for (size_t i = 0u; i < triangles.size(); i++) {
    12ca:	4c 8b 4d 00          	mov    0x0(%rbp),%r9
    12ce:	c5 fa 10 43 04       	vmovss 0x4(%rbx),%xmm0
    12d3:	4c 39 4d 08          	cmp    %r9,0x8(%rbp)
    for (Light light : lights) {
    12d7:	c5 fa 10 4b 0c       	vmovss 0xc(%rbx),%xmm1
    12dc:	c5 fa 11 4c 24 70    	vmovss %xmm1,0x70(%rsp)
    12e2:	c5 fa 10 4b 14       	vmovss 0x14(%rbx),%xmm1
    12e7:	c5 fa 11 4c 24 78    	vmovss %xmm1,0x78(%rsp)
    12ed:	c5 fa 11 64 24 30    	vmovss %xmm4,0x30(%rsp)
    12f3:	c5 fa 5c 64 24 5c    	vsubss 0x5c(%rsp),%xmm0,%xmm4
    12f9:	c5 fa 10 43 08       	vmovss 0x8(%rbx),%xmm0
    12fe:	c5 fa 11 64 24 48    	vmovss %xmm4,0x48(%rsp)
    1304:	c5 fa 5c 64 24 54    	vsubss 0x54(%rsp),%xmm0,%xmm4
    130a:	c5 fa 11 64 24 28    	vmovss %xmm4,0x28(%rsp)
  for (size_t i = 0u; i < triangles.size(); i++) {
    1310:	0f 84 f1 00 00 00    	je     1407 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xc87>
    1316:	4c 8b 17             	mov    (%rdi),%r10
    1319:	45 31 c0             	xor    %r8d,%r8d
    131c:	49 8d 4a 01          	lea    0x1(%r10),%rcx
	return *(this->_M_impl._M_start + __n);
    1320:	4b 8d 04 01          	lea    (%r9,%r8,1),%rax
    if ( fabs(normalRayProduct) < EPSILON ) {
    1324:	c5 7b 10 2d 70 03 00 	vmovsd 0x370(%rip),%xmm13        # 169c <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xf1c>
    132b:	00 
    stats.no_ray_triangle_intersection_tests++;
    132c:	48 89 0f             	mov    %rcx,(%rdi)
    132f:	c5 fa 10 78 1c       	vmovss 0x1c(%rax),%xmm7
    1334:	c5 7a 10 58 14       	vmovss 0x14(%rax),%xmm11
    1339:	c5 fa 10 40 04       	vmovss 0x4(%rax),%xmm0
    133e:	c5 fa 10 48 08       	vmovss 0x8(%rax),%xmm1
    1343:	c5 c2 5c d0          	vsubss %xmm0,%xmm7,%xmm2
    1347:	c5 a2 5c e1          	vsubss %xmm1,%xmm11,%xmm4
    134b:	c5 fa 10 70 18       	vmovss 0x18(%rax),%xmm6
    1350:	c5 fa 10 28          	vmovss (%rax),%xmm5
    1354:	c5 7a 10 78 20       	vmovss 0x20(%rax),%xmm15
    1359:	c5 4a 5c d5          	vsubss %xmm5,%xmm6,%xmm10
    135d:	c5 7a 10 48 0c       	vmovss 0xc(%rax),%xmm9
    1362:	c5 82 5c d9          	vsubss %xmm1,%xmm15,%xmm3
    1366:	c5 7a 10 40 10       	vmovss 0x10(%rax),%xmm8
  cross[0] = v1[1] * v2[2] - v1[2] * v2[1];
    136b:	c5 6a 59 f4          	vmulss %xmm4,%xmm2,%xmm14
      difference.x[i] = this->x[i] - subtract.x[i];
    136f:	c5 fa 11 74 24 40    	vmovss %xmm6,0x40(%rsp)
    1375:	c5 b2 5c f5          	vsubss %xmm5,%xmm9,%xmm6
    1379:	c5 fa 11 7c 24 4c    	vmovss %xmm7,0x4c(%rsp)
    137f:	c5 ba 5c f8          	vsubss %xmm0,%xmm8,%xmm7
  cross[1] = v1[2] * v2[0] - v1[0] * v2[2];
    1383:	c5 fa 11 64 24 38    	vmovss %xmm4,0x38(%rsp)
      difference.x[i] = this->x[i] - subtract.x[i];
    1389:	c5 7a 11 5c 24 58    	vmovss %xmm11,0x58(%rsp)
  cross[0] = v1[1] * v2[2] - v1[2] * v2[1];
    138f:	c4 62 41 bb f3       	vfmsub231ss %xmm3,%xmm7,%xmm14
  cross[1] = v1[2] * v2[0] - v1[0] * v2[2];
    1394:	c5 ca 59 db          	vmulss %xmm3,%xmm6,%xmm3
    1398:	c4 e2 29 bb dc       	vfmsub231ss %xmm4,%xmm10,%xmm3
  cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
    139d:	c4 41 42 59 d2       	vmulss %xmm10,%xmm7,%xmm10
      product += this->x[i] * factor.x[i];
    13a2:	c5 fa 10 64 24 48    	vmovss 0x48(%rsp),%xmm4
  cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
    13a8:	c4 e2 29 9b d6       	vfmsub132ss %xmm6,%xmm10,%xmm2
      product += this->x[i] * factor.x[i];
    13ad:	c5 7a 10 54 24 30    	vmovss 0x30(%rsp),%xmm10
    13b3:	c4 42 19 99 d6       	vfmadd132ss %xmm14,%xmm12,%xmm10
    13b8:	c4 62 61 b9 d4       	vfmadd231ss %xmm4,%xmm3,%xmm10
    13bd:	c4 62 69 b9 54 24 28 	vfmadd231ss 0x28(%rsp),%xmm2,%xmm10
    13c4:	c4 41 78 28 da       	vmovaps %xmm10,%xmm11
    13c9:	c5 20 54 1d 60 03 00 	vandps 0x360(%rip),%xmm11,%xmm11        # 1731 <_Z15parse_argumentsiPPc+0x61>
    13d0:	00 
    13d1:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
    13d6:	c4 41 79 2e eb       	vucomisd %xmm11,%xmm13
    13db:	0f 86 7f fc ff ff    	jbe    1060 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x8e0>
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
    13e1:	48 8b 45 08          	mov    0x8(%rbp),%rax
    13e5:	49 89 cb             	mov    %rcx,%r11
    13e8:	49 83 c0 48          	add    $0x48,%r8
    13ec:	4d 29 d3             	sub    %r10,%r11
    13ef:	48 83 c1 01          	add    $0x1,%rcx
    13f3:	4c 29 c8             	sub    %r9,%rax
    13f6:	48 c1 f8 03          	sar    $0x3,%rax
    13fa:	49 0f af c4          	imul   %r12,%rax
  for (size_t i = 0u; i < triangles.size(); i++) {
    13fe:	4c 39 d8             	cmp    %r11,%rax
    1401:	0f 87 19 ff ff ff    	ja     1320 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xba0>
      square_of_length += ( this->x[i] * this->x[i] );
    1407:	c5 fa 10 7c 24 30    	vmovss 0x30(%rsp),%xmm7
    140d:	c5 f8 28 c7          	vmovaps %xmm7,%xmm0
    1411:	c5 fa 10 4c 24 48    	vmovss 0x48(%rsp),%xmm1
    1417:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
    141b:	c4 e2 19 99 c7       	vfmadd132ss %xmm7,%xmm12,%xmm0
    1420:	c4 e2 79 99 c9       	vfmadd132ss %xmm1,%xmm0,%xmm1
    1425:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
    1429:	c5 fa 10 4c 24 28    	vmovss 0x28(%rsp),%xmm1
    142f:	c4 e2 79 99 c9       	vfmadd132ss %xmm1,%xmm0,%xmm1
    return sqrt( square_of_length() );
    1434:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    1438:	c5 fa 5a c1          	vcvtss2sd %xmm1,%xmm0,%xmm0
    143c:	c5 f9 2e e0          	vucomisd %xmm0,%xmm4
    1440:	c5 cb 51 f0          	vsqrtsd %xmm0,%xmm6,%xmm6
    1444:	0f 87 48 02 00 00    	ja     1692 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xf12>
       this->x[i] /= length;
    144a:	c5 fa 10 6c 24 30    	vmovss 0x30(%rsp),%xmm5
    return sqrt( square_of_length() );
    1450:	c5 cb 5a f6          	vcvtsd2ss %xmm6,%xmm6,%xmm6
    1454:	48 83 c3 18          	add    $0x18,%rbx
       this->x[i] /= length;
    1458:	c5 d2 5e c6          	vdivss %xmm6,%xmm5,%xmm0
    145c:	c5 fa 10 7c 24 48    	vmovss 0x48(%rsp),%xmm7
    1462:	c5 fa 10 6c 24 28    	vmovss 0x28(%rsp),%xmm5
    for (Light light : lights) {
    1468:	48 39 de             	cmp    %rbx,%rsi
    return Color(red + addend.red, green + addend.green, blue + addend.blue);
    146b:	c5 fa 10 64 24 74    	vmovss 0x74(%rsp),%xmm4
    1471:	c5 c2 5e ce          	vdivss %xmm6,%xmm7,%xmm1
    1475:	c5 fa 10 7c 24 78    	vmovss 0x78(%rsp),%xmm7
      product += this->x[i] * factor.x[i];
    147b:	c4 e2 19 99 84 24 94 	vfmadd132ss 0x94(%rsp),%xmm12,%xmm0
    1482:	00 00 00 
       this->x[i] /= length;
    1485:	c5 d2 5e f6          	vdivss %xmm6,%xmm5,%xmm6
      product += this->x[i] * factor.x[i];
    1489:	c4 e2 71 b9 84 24 98 	vfmadd231ss 0x98(%rsp),%xmm1,%xmm0
    1490:	00 00 00 
    1493:	c4 e2 49 b9 84 24 9c 	vfmadd231ss 0x9c(%rsp),%xmm6,%xmm0
    149a:	00 00 00 
      // concept requirements
      __glibcxx_function_requires(_LessThanComparableConcept<_Tp>)
      //return  __a < __b ? __b : __a;
      if (__a < __b)
	return __b;
      return __a;
    149d:	c4 c1 7a 5f c4       	vmaxss %xmm12,%xmm0,%xmm0
        color = color + angle * factor * material.getDiffuse() * material.getColor() * light.getColor();
    14a2:	c5 fa 59 84 24 90 00 	vmulss 0x90(%rsp),%xmm0,%xmm0
    14a9:	00 00 
    14ab:	c5 fa 59 05 88 03 00 	vmulss 0x388(%rip),%xmm0,%xmm0        # 183b <_Z15parse_argumentsiPPc+0x16b>
    14b2:	00 
    return Color(factor * color.red, factor * color.green, factor * color.blue);
    14b3:	c5 fa 59 0d 8c 03 00 	vmulss 0x38c(%rip),%xmm0,%xmm1        # 1847 <_Z15parse_argumentsiPPc+0x177>
    14ba:	00 
    return Color(red + addend.red, green + addend.green, blue + addend.blue);
    14bb:	c4 e2 71 a9 7c 24 64 	vfmadd213ss 0x64(%rsp),%xmm1,%xmm7
    return Color(factor * color.red, factor * color.green, factor * color.blue);
    14c2:	c5 fa 59 0d 88 03 00 	vmulss 0x388(%rip),%xmm0,%xmm1        # 1852 <_Z15parse_argumentsiPPc+0x182>
    14c9:	00 
    return Color(red + addend.red, green + addend.green, blue + addend.blue);
    14ca:	c5 fa 11 7c 24 64    	vmovss %xmm7,0x64(%rsp)
    14d0:	c4 e2 71 a9 64 24 68 	vfmadd213ss 0x68(%rsp),%xmm1,%xmm4
    14d7:	c5 fa 10 4c 24 70    	vmovss 0x70(%rsp),%xmm1
    14dd:	c4 e2 79 a9 4c 24 6c 	vfmadd213ss 0x6c(%rsp),%xmm0,%xmm1
    14e4:	c5 fa 11 64 24 68    	vmovss %xmm4,0x68(%rsp)
    14ea:	c5 fa 11 4c 24 6c    	vmovss %xmm1,0x6c(%rsp)
    for (Light light : lights) {
    14f0:	0f 85 bf fd ff ff    	jne    12b5 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xb35>
    14f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    14fd:	00 00 00 
    1500:	49 8b 4f 08          	mov    0x8(%r15),%rcx
    1504:	4d 8b 07             	mov    (%r15),%r8
    1507:	c5 fa 10 4c 24 6c    	vmovss 0x6c(%rsp),%xmm1
    150d:	c5 fa 10 64 24 64    	vmovss 0x64(%rsp),%xmm4
    1513:	e9 34 f8 ff ff       	jmpq   d4c <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x5cc>
    FLOAT factor = 1.0 / lights.size();
    1518:	49 89 c0             	mov    %rax,%r8
    151b:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    151f:	49 d1 e8             	shr    %r8
    1522:	83 e0 01             	and    $0x1,%eax
    1525:	49 09 c0             	or     %rax,%r8
    1528:	c4 c1 f3 2a c8       	vcvtsi2sd %r8,%xmm1,%xmm1
    152d:	c5 f3 58 c9          	vaddsd %xmm1,%xmm1,%xmm1
    1531:	e9 bf f9 ff ff       	jmpq   ef5 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x775>
    1536:	c5 d2 5c 05 50 03 00 	vsubss 0x350(%rip),%xmm5,%xmm0        # 188e <_Z15parse_argumentsiPPc+0x1be>
    153d:	00 
    153e:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
    1545:	00 00 80 
    1548:	c4 e1 fa 2c d0       	vcvttss2si %xmm0,%rdx
    154d:	48 31 c2             	xor    %rax,%rdx
    1550:	48 85 d2             	test   %rdx,%rdx
    1553:	0f 89 7b f3 ff ff    	jns    8d4 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x154>
    1559:	48 89 d0             	mov    %rdx,%rax
    155c:	49 89 d1             	mov    %rdx,%r9
    155f:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    1563:	48 d1 e8             	shr    %rax
    1566:	41 83 e1 01          	and    $0x1,%r9d
    156a:	4c 09 c8             	or     %r9,%rax
    156d:	c4 e1 fa 2a c0       	vcvtsi2ss %rax,%xmm0,%xmm0
    1572:	c5 fa 58 c8          	vaddss %xmm0,%xmm0,%xmm1
    1576:	c5 fa 11 8c 24 88 00 	vmovss %xmm1,0x88(%rsp)
    157d:	00 00 
    157f:	e9 62 f3 ff ff       	jmpq   8e6 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x166>
    v = sqrt(vector2.square_of_length() / area);
    1584:	c5 f9 28 c3          	vmovapd %xmm3,%xmm0
    1588:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    158d:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
    1592:	e8 00 00 00 00       	callq  1597 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xe17>
    1597:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    159c:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
    15a1:	e9 2c f7 ff ff       	jmpq   cd2 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x552>
    15a6:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
    15ab:	48 89 4c 24 30       	mov    %rcx,0x30(%rsp)
    15b0:	c5 fa 11 5c 24 28    	vmovss %xmm3,0x28(%rsp)
    u = sqrt(vector1.square_of_length() / area);
    15b6:	e8 00 00 00 00       	callq  15bb <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xe3b>
    15bb:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    15c0:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    15c4:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
    15c9:	c5 fa 10 5c 24 28    	vmovss 0x28(%rsp),%xmm3
    15cf:	e9 d5 f6 ff ff       	jmpq   ca9 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x529>
    for (FLOAT y = 0.0; y < screen.getHeight(); y++) {
    15d4:	48 89 c8             	mov    %rcx,%rax
    15d7:	48 89 ca             	mov    %rcx,%rdx
    15da:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    15de:	48 d1 e8             	shr    %rax
    15e1:	83 e2 01             	and    $0x1,%edx
    15e4:	48 09 d0             	or     %rdx,%rax
    15e7:	c4 e1 fa 2a c0       	vcvtsi2ss %rax,%xmm0,%xmm0
    15ec:	c5 fa 58 c0          	vaddss %xmm0,%xmm0,%xmm0
    15f0:	e9 af f2 ff ff       	jmpq   8a4 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x124>
  for (FLOAT x = 0.0; x < screen.getWidth(); x++) {
    15f5:	4c 89 c0             	mov    %r8,%rax
    15f8:	4c 89 c2             	mov    %r8,%rdx
    15fb:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    15ff:	48 d1 e8             	shr    %rax
    1602:	83 e2 01             	and    $0x1,%edx
    1605:	48 09 d0             	or     %rdx,%rax
    1608:	c4 e1 fa 2a c0       	vcvtsi2ss %rax,%xmm0,%xmm0
    160d:	c5 fa 58 c0          	vaddss %xmm0,%xmm0,%xmm0
    1611:	e9 bb f7 ff ff       	jmpq   dd1 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x651>
     : red(red), green(green), blue(blue)
    1616:	c5 fa 10 2d 44 03 00 	vmovss 0x344(%rip),%xmm5        # 1962 <_Z15parse_argumentsiPPc+0x292>
    161d:	00 
    161e:	c5 fa 10 3d 48 03 00 	vmovss 0x348(%rip),%xmm7        # 196e <_Z15parse_argumentsiPPc+0x29e>
    1625:	00 
    1626:	c5 fa 10 25 4c 03 00 	vmovss 0x34c(%rip),%xmm4        # 197a <_Z15parse_argumentsiPPc+0x2aa>
    162d:	00 
    162e:	c5 fa 11 6c 24 64    	vmovss %xmm5,0x64(%rsp)
    1634:	c5 fa 11 7c 24 68    	vmovss %xmm7,0x68(%rsp)
    163a:	c5 fa 11 64 24 6c    	vmovss %xmm4,0x6c(%rsp)
    1640:	e9 bb fe ff ff       	jmpq   1500 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xd80>
    1645:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    v = sqrt(vector2.square_of_length() / area);
    164a:	e8 00 00 00 00       	callq  164f <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xecf>
    164f:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
    1654:	e9 4a fc ff ff       	jmpq   12a3 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xb23>
    1659:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    u = sqrt(vector1.square_of_length() / area);
    165e:	e8 00 00 00 00       	callq  1663 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xee3>
    1663:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
    1668:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
    166c:	e9 0c fc ff ff       	jmpq   127d <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xafd>
  for (FLOAT x = 0.0; x < screen.getWidth(); x++) {
    1671:	4c 89 c0             	mov    %r8,%rax
    1674:	4c 89 c2             	mov    %r8,%rdx
    1677:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    167b:	48 d1 e8             	shr    %rax
    167e:	83 e2 01             	and    $0x1,%edx
    1681:	48 09 d0             	or     %rdx,%rax
    1684:	c4 e1 fa 2a c0       	vcvtsi2ss %rax,%xmm0,%xmm0
    1689:	c5 fa 58 c0          	vaddss %xmm0,%xmm0,%xmm0
    168d:	e9 dd f1 ff ff       	jmpq   86f <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xef>
    1692:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
    return sqrt( square_of_length() );
    1697:	e8 00 00 00 00       	callq  169c <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xf1c>
    169c:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
    16a1:	e9 a4 fd ff ff       	jmpq   144a <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xcca>
    16a6:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    16ab:	e8 00 00 00 00       	callq  16b0 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xf30>
    16b0:	48 8b 5d 18          	mov    0x18(%rbp),%rbx
    16b4:	4c 8b 4d 20          	mov    0x20(%rbp),%r9
    16b8:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
    16bd:	e9 22 f9 ff ff       	jmpq   fe4 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x864>
    16c2:	0f 1f 40 00          	nopl   0x0(%rax)
    16c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    16cd:	00 00 00 

00000000000016d0 <_Z15parse_argumentsiPPc>:




void parse_arguments(int argc, char *argv[]) {
    16d0:	41 57                	push   %r15
    16d2:	41 56                	push   %r14
    16d4:	41 55                	push   %r13
    16d6:	41 54                	push   %r12
    16d8:	55                   	push   %rbp
    16d9:	57                   	push   %rdi
    16da:	56                   	push   %rsi
    16db:	53                   	push   %rbx
    16dc:	48 83 ec 58          	sub    $0x58,%rsp
   {"no_ppm", optional_argument, 0, 'n'},
  };
  int c;
  int option_index;

  while ( (c = getopt_long (argc, argv, "ro:", long_options, &option_index)) != -1 ) {
    16e0:	4c 8d 2d 00 00 00 00 	lea    0x0(%rip),%r13        # 16e7 <_Z15parse_argumentsiPPc+0x17>
    switch (c) {
    16e7:	48 8d 1d 44 02 00 00 	lea    0x244(%rip),%rbx        # 1932 <_Z15parse_argumentsiPPc+0x262>
    16ee:	4c 8d 64 24 38       	lea    0x38(%rsp),%r12
void parse_arguments(int argc, char *argv[]) {
    16f3:	89 cd                	mov    %ecx,%ebp
    16f5:	48 89 d7             	mov    %rdx,%rdi
    16f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    16ff:	00 
  while ( (c = getopt_long (argc, argv, "ro:", long_options, &option_index)) != -1 ) {
    1700:	48 8d 35 09 00 00 00 	lea    0x9(%rip),%rsi        # 1710 <_Z15parse_argumentsiPPc+0x40>
    1707:	4c 89 64 24 20       	mov    %r12,0x20(%rsp)
    170c:	4d 89 e9             	mov    %r13,%r9
    170f:	49 89 f0             	mov    %rsi,%r8
    1712:	48 89 fa             	mov    %rdi,%rdx
    1715:	89 e9                	mov    %ebp,%ecx
    1717:	e8 00 00 00 00       	callq  171c <_Z15parse_argumentsiPPc+0x4c>
    171c:	83 f8 ff             	cmp    $0xffffffff,%eax
    171f:	0f 84 fb 06 00 00    	je     1e20 <_Z15parse_argumentsiPPc+0x750>
    switch (c) {
    1725:	83 e8 66             	sub    $0x66,%eax
    1728:	83 f8 11             	cmp    $0x11,%eax
    172b:	77 da                	ja     1707 <_Z15parse_argumentsiPPc+0x37>
    172d:	48 63 04 83          	movslq (%rbx,%rax,4),%rax
    1731:	48 01 d8             	add    %rbx,%rax
    1734:	ff e0                	jmpq   *%rax
    1736:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    173d:	00 00 00 
    case 'f': input_file_name = std::string(optarg);
              break;
    case 'r': reverse_vertice_order = true;
              break;
    case 'w': resolution_x = std::stoi(optarg);
    1740:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1747 <_Z15parse_argumentsiPPc+0x77>
    1747:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    174c:	4c 8d 44 24 36       	lea    0x36(%rsp),%r8
    1751:	48 8b 10             	mov    (%rax),%rdx
    1754:	e8 00 00 00 00       	callq  1759 <_Z15parse_argumentsiPPc+0x89>
      // Data Members (private):
      mutable _Alloc_hider	_M_dataplus;

      _CharT*
      _M_data() const _GLIBCXX_NOEXCEPT
      { return  _M_dataplus._M_p; }
    1759:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
      _Ret __ret;

      _CharT* __endptr;

      struct _Save_errno {
	_Save_errno() : _M_errno(errno) { errno = 0; }
    175e:	e8 00 00 00 00       	callq  1763 <_Z15parse_argumentsiPPc+0x93>
    1763:	8b 00                	mov    (%rax),%eax
    1765:	89 44 24 3c          	mov    %eax,0x3c(%rsp)
    1769:	e8 00 00 00 00       	callq  176e <_Z15parse_argumentsiPPc+0x9e>
	    return __val < _TRet(__numeric_traits<int>::__min)
	      || __val > _TRet(__numeric_traits<int>::__max);
	  }
      };

      const _TRet __tmp = __convf(__str, &__endptr, __base...);
    176e:	48 8d 74 24 48       	lea    0x48(%rsp),%rsi
	_Save_errno() : _M_errno(errno) { errno = 0; }
    1773:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
      const _TRet __tmp = __convf(__str, &__endptr, __base...);
    1779:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
    177f:	4c 89 f9             	mov    %r15,%rcx
    1782:	48 89 f2             	mov    %rsi,%rdx
    1785:	e8 00 00 00 00       	callq  178a <_Z15parse_argumentsiPPc+0xba>

      if (__endptr == __str)
    178a:	4c 3b 7c 24 48       	cmp    0x48(%rsp),%r15
      const _TRet __tmp = __convf(__str, &__endptr, __base...);
    178f:	49 89 c6             	mov    %rax,%r14
      if (__endptr == __str)
    1792:	0f 84 67 0a 00 00    	je     21ff <_Z15parse_argumentsiPPc+0xb2f>
	std::__throw_invalid_argument(__name);
      else if (errno == ERANGE
    1798:	e8 00 00 00 00       	callq  179d <_Z15parse_argumentsiPPc+0xcd>
	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
    179d:	83 38 22             	cmpl   $0x22,(%rax)
    17a0:	0f 84 4b 0a 00 00    	je     21f1 <_Z15parse_argumentsiPPc+0xb21>
	      || __val > _TRet(__numeric_traits<int>::__max);
    17a6:	b8 00 00 00 80       	mov    $0x80000000,%eax
	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
    17ab:	ba ff ff ff ff       	mov    $0xffffffff,%edx
	      || __val > _TRet(__numeric_traits<int>::__max);
    17b0:	4c 01 f0             	add    %r14,%rax
	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
    17b3:	48 39 d0             	cmp    %rdx,%rax
    17b6:	0f 87 35 0a 00 00    	ja     21f1 <_Z15parse_argumentsiPPc+0xb21>
	~_Save_errno() { if (errno == 0) errno = _M_errno; }
    17bc:	e8 00 00 00 00       	callq  17c1 <_Z15parse_argumentsiPPc+0xf1>
    17c1:	8b 10                	mov    (%rax),%edx
    17c3:	85 d2                	test   %edx,%edx
    17c5:	75 0b                	jne    17d2 <_Z15parse_argumentsiPPc+0x102>
    17c7:	e8 00 00 00 00       	callq  17cc <_Z15parse_argumentsiPPc+0xfc>
    17cc:	8b 54 24 3c          	mov    0x3c(%rsp),%edx
    17d0:	89 10                	mov    %edx,(%rax)
    17d2:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
    17d7:	44 89 35 a8 00 00 00 	mov    %r14d,0xa8(%rip)        # 1886 <_Z15parse_argumentsiPPc+0x1b6>
      _M_data(_CharT* __p) _GLIBCXX_NOEXCEPT
      { return (_M_dataplus._M_p = __p); }

      _Rep*
      _M_rep() const _GLIBCXX_NOEXCEPT
      { return &((reinterpret_cast<_Rep*> (_M_data()))[-1]); }
    17de:	48 8d 48 e8          	lea    -0x18(%rax),%rcx
	  if (__builtin_expect(this != &_S_empty_rep(), false))
    17e2:	48 3b 0d 00 00 00 00 	cmp    0x0(%rip),%rcx        # 17e9 <_Z15parse_argumentsiPPc+0x119>
    17e9:	0f 84 11 ff ff ff    	je     1700 <_Z15parse_argumentsiPPc+0x30>
  // __exchange_and_add_dispatch
  // __atomic_add_dispatch
#ifdef _GLIBCXX_ATOMIC_BUILTINS
  static inline _Atomic_word 
  __exchange_and_add(volatile _Atomic_word* __mem, int __val)
  { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
    17ef:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    17f4:	f0 0f c1 50 f8       	lock xadd %edx,-0x8(%rax)
	      if (__gnu_cxx::__exchange_and_add_dispatch(&this->_M_refcount,
    17f9:	85 d2                	test   %edx,%edx
    17fb:	0f 8f ff fe ff ff    	jg     1700 <_Z15parse_argumentsiPPc+0x30>
		  _M_destroy(__a);
    1801:	48 89 f2             	mov    %rsi,%rdx
    1804:	e8 00 00 00 00       	callq  1809 <_Z15parse_argumentsiPPc+0x139>
              break;
    case 'h': resolution_y = std::stoi(optarg);
              break;
    1809:	e9 f2 fe ff ff       	jmpq   1700 <_Z15parse_argumentsiPPc+0x30>
    180e:	66 90                	xchg   %ax,%ax
	__ostream_insert(__out, __s,
    1810:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1817 <_Z15parse_argumentsiPPc+0x147>
    1817:	48 8d 15 12 00 00 00 	lea    0x12(%rip),%rdx        # 1830 <_Z15parse_argumentsiPPc+0x160>
    181e:	41 b8 08 00 00 00    	mov    $0x8,%r8d
    1824:	e8 00 00 00 00       	callq  1829 <_Z15parse_argumentsiPPc+0x159>
    case 'o': output_bmp_file_name = std::string(optarg);
              break;
    case 'n': write_ppm_to_stdout = false;
              break;
    case 'u': std::cout << "Aufruf: " << argv[0] << " [options]" << std::endl;
    1829:	48 8b 1f             	mov    (%rdi),%rbx
      if (!__s)
    182c:	48 85 db             	test   %rbx,%rbx
    182f:	0f 84 bb 05 00 00    	je     1df0 <_Z15parse_argumentsiPPc+0x720>
      {
#if __cplusplus > 201402
	if (__constant_string_p(__s))
	  return __gnu_cxx::char_traits<char_type>::length(__s);
#endif
	return __builtin_strlen(__s);
    1835:	48 89 d9             	mov    %rbx,%rcx
    1838:	e8 00 00 00 00       	callq  183d <_Z15parse_argumentsiPPc+0x16d>
	__ostream_insert(__out, __s,
    183d:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1844 <_Z15parse_argumentsiPPc+0x174>
    1844:	48 89 da             	mov    %rbx,%rdx
    1847:	49 89 c0             	mov    %rax,%r8
    184a:	e8 00 00 00 00       	callq  184f <_Z15parse_argumentsiPPc+0x17f>
    184f:	48 8b 1d 00 00 00 00 	mov    0x0(%rip),%rbx        # 1856 <_Z15parse_argumentsiPPc+0x186>
    1856:	48 89 d9             	mov    %rbx,%rcx
    1859:	48 8d 15 1b 00 00 00 	lea    0x1b(%rip),%rdx        # 187b <_Z15parse_argumentsiPPc+0x1ab>
    1860:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
    1866:	e8 00 00 00 00       	callq  186b <_Z15parse_argumentsiPPc+0x19b>
    { return flush(__os.put(__os.widen('\n'))); }
    186b:	48 8b 03             	mov    (%rbx),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    186e:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    1872:	48 8b b4 03 f0 00 00 	mov    0xf0(%rbx,%rax,1),%rsi
    1879:	00 
      if (!__f)
    187a:	48 85 f6             	test   %rsi,%rsi
    187d:	0f 84 b8 09 00 00    	je     223b <_Z15parse_argumentsiPPc+0xb6b>
	if (_M_widen_ok)
    1883:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
    1887:	0f 84 c7 03 00 00    	je     1c54 <_Z15parse_argumentsiPPc+0x584>
    188d:	0f be 56 43          	movsbl 0x43(%rsi),%edx
    1891:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1898 <_Z15parse_argumentsiPPc+0x1c8>
    1898:	e8 00 00 00 00       	callq  189d <_Z15parse_argumentsiPPc+0x1cd>
    { return __os.flush(); }
    189d:	48 89 c1             	mov    %rax,%rcx
    18a0:	e8 00 00 00 00       	callq  18a5 <_Z15parse_argumentsiPPc+0x1d5>
	__ostream_insert(__out, __s,
    18a5:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 18ac <_Z15parse_argumentsiPPc+0x1dc>
    18ac:	48 8d 15 28 00 00 00 	lea    0x28(%rip),%rdx        # 18db <_Z15parse_argumentsiPPc+0x20b>
    18b3:	41 b8 46 00 00 00    	mov    $0x46,%r8d
    18b9:	e8 00 00 00 00       	callq  18be <_Z15parse_argumentsiPPc+0x1ee>
    { return flush(__os.put(__os.widen('\n'))); }
    18be:	48 8b 03             	mov    (%rbx),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    18c1:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    18c5:	48 8b b4 03 f0 00 00 	mov    0xf0(%rbx,%rax,1),%rsi
    18cc:	00 
      if (!__f)
    18cd:	48 85 f6             	test   %rsi,%rsi
    18d0:	0f 84 65 09 00 00    	je     223b <_Z15parse_argumentsiPPc+0xb6b>
    18d6:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
    18da:	0f 84 a4 04 00 00    	je     1d84 <_Z15parse_argumentsiPPc+0x6b4>
    18e0:	0f be 56 43          	movsbl 0x43(%rsi),%edx
    18e4:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 18eb <_Z15parse_argumentsiPPc+0x21b>
    18eb:	e8 00 00 00 00       	callq  18f0 <_Z15parse_argumentsiPPc+0x220>
    { return __os.flush(); }
    18f0:	48 89 c1             	mov    %rax,%rcx
    18f3:	e8 00 00 00 00       	callq  18f8 <_Z15parse_argumentsiPPc+0x228>
	__ostream_insert(__out, __s,
    18f8:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 18ff <_Z15parse_argumentsiPPc+0x22f>
    18ff:	48 8d 15 70 00 00 00 	lea    0x70(%rip),%rdx        # 1976 <_Z15parse_argumentsiPPc+0x2a6>
    1906:	41 b8 32 00 00 00    	mov    $0x32,%r8d
    190c:	e8 00 00 00 00       	callq  1911 <_Z15parse_argumentsiPPc+0x241>
    { return flush(__os.put(__os.widen('\n'))); }
    1911:	48 8b 03             	mov    (%rbx),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    1914:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    1918:	48 8b b4 03 f0 00 00 	mov    0xf0(%rbx,%rax,1),%rsi
    191f:	00 
      if (!__f)
    1920:	48 85 f6             	test   %rsi,%rsi
    1923:	0f 84 12 09 00 00    	je     223b <_Z15parse_argumentsiPPc+0xb6b>
    1929:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
    192d:	0f 84 20 04 00 00    	je     1d53 <_Z15parse_argumentsiPPc+0x683>
    1933:	0f be 56 43          	movsbl 0x43(%rsi),%edx
    1937:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 193e <_Z15parse_argumentsiPPc+0x26e>
    193e:	e8 00 00 00 00       	callq  1943 <_Z15parse_argumentsiPPc+0x273>
    { return __os.flush(); }
    1943:	48 89 c1             	mov    %rax,%rcx
    1946:	e8 00 00 00 00       	callq  194b <_Z15parse_argumentsiPPc+0x27b>
	__ostream_insert(__out, __s,
    194b:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1952 <_Z15parse_argumentsiPPc+0x282>
    1952:	48 8d 15 a8 00 00 00 	lea    0xa8(%rip),%rdx        # 1a01 <_Z15parse_argumentsiPPc+0x331>
    1959:	41 b8 30 00 00 00    	mov    $0x30,%r8d
    195f:	e8 00 00 00 00       	callq  1964 <_Z15parse_argumentsiPPc+0x294>
    { return flush(__os.put(__os.widen('\n'))); }
    1964:	48 8b 03             	mov    (%rbx),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    1967:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    196b:	48 8b b4 03 f0 00 00 	mov    0xf0(%rbx,%rax,1),%rsi
    1972:	00 
      if (!__f)
    1973:	48 85 f6             	test   %rsi,%rsi
    1976:	0f 84 bf 08 00 00    	je     223b <_Z15parse_argumentsiPPc+0xb6b>
    197c:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
    1980:	0f 84 9c 03 00 00    	je     1d22 <_Z15parse_argumentsiPPc+0x652>
    1986:	0f be 56 43          	movsbl 0x43(%rsi),%edx
    198a:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1991 <_Z15parse_argumentsiPPc+0x2c1>
    1991:	e8 00 00 00 00       	callq  1996 <_Z15parse_argumentsiPPc+0x2c6>
    { return __os.flush(); }
    1996:	48 89 c1             	mov    %rax,%rcx
    1999:	e8 00 00 00 00       	callq  199e <_Z15parse_argumentsiPPc+0x2ce>
	__ostream_insert(__out, __s,
    199e:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 19a5 <_Z15parse_argumentsiPPc+0x2d5>
    19a5:	48 8d 15 e0 00 00 00 	lea    0xe0(%rip),%rdx        # 1a8c <_Z15parse_argumentsiPPc+0x3bc>
    19ac:	41 b8 25 00 00 00    	mov    $0x25,%r8d
    19b2:	e8 00 00 00 00       	callq  19b7 <_Z15parse_argumentsiPPc+0x2e7>
    { return flush(__os.put(__os.widen('\n'))); }
    19b7:	48 8b 03             	mov    (%rbx),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    19ba:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    19be:	48 8b b4 03 f0 00 00 	mov    0xf0(%rbx,%rax,1),%rsi
    19c5:	00 
      if (!__f)
    19c6:	48 85 f6             	test   %rsi,%rsi
    19c9:	0f 84 6c 08 00 00    	je     223b <_Z15parse_argumentsiPPc+0xb6b>
    19cf:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
    19d3:	0f 84 18 03 00 00    	je     1cf1 <_Z15parse_argumentsiPPc+0x621>
    19d9:	0f be 56 43          	movsbl 0x43(%rsi),%edx
    19dd:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 19e4 <_Z15parse_argumentsiPPc+0x314>
    19e4:	e8 00 00 00 00       	callq  19e9 <_Z15parse_argumentsiPPc+0x319>
    { return __os.flush(); }
    19e9:	48 89 c1             	mov    %rax,%rcx
    19ec:	e8 00 00 00 00       	callq  19f1 <_Z15parse_argumentsiPPc+0x321>
	__ostream_insert(__out, __s,
    19f1:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 19f8 <_Z15parse_argumentsiPPc+0x328>
    19f8:	48 8d 15 08 01 00 00 	lea    0x108(%rip),%rdx        # 1b07 <_Z15parse_argumentsiPPc+0x437>
    19ff:	41 b8 31 00 00 00    	mov    $0x31,%r8d
    1a05:	e8 00 00 00 00       	callq  1a0a <_Z15parse_argumentsiPPc+0x33a>
    { return flush(__os.put(__os.widen('\n'))); }
    1a0a:	48 8b 03             	mov    (%rbx),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    1a0d:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    1a11:	48 8b b4 03 f0 00 00 	mov    0xf0(%rbx,%rax,1),%rsi
    1a18:	00 
      if (!__f)
    1a19:	48 85 f6             	test   %rsi,%rsi
    1a1c:	0f 84 19 08 00 00    	je     223b <_Z15parse_argumentsiPPc+0xb6b>
    1a22:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
    1a26:	0f 84 94 02 00 00    	je     1cc0 <_Z15parse_argumentsiPPc+0x5f0>
    1a2c:	0f be 56 43          	movsbl 0x43(%rsi),%edx
    1a30:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1a37 <_Z15parse_argumentsiPPc+0x367>
    1a37:	e8 00 00 00 00       	callq  1a3c <_Z15parse_argumentsiPPc+0x36c>
    { return __os.flush(); }
    1a3c:	48 89 c1             	mov    %rax,%rcx
    1a3f:	e8 00 00 00 00       	callq  1a44 <_Z15parse_argumentsiPPc+0x374>
	__ostream_insert(__out, __s,
    1a44:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1a4b <_Z15parse_argumentsiPPc+0x37b>
    1a4b:	48 8d 15 40 01 00 00 	lea    0x140(%rip),%rdx        # 1b92 <_Z15parse_argumentsiPPc+0x4c2>
    1a52:	41 b8 35 00 00 00    	mov    $0x35,%r8d
    1a58:	e8 00 00 00 00       	callq  1a5d <_Z15parse_argumentsiPPc+0x38d>
    { return flush(__os.put(__os.widen('\n'))); }
    1a5d:	48 8b 03             	mov    (%rbx),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    1a60:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    1a64:	48 8b b4 03 f0 00 00 	mov    0xf0(%rbx,%rax,1),%rsi
    1a6b:	00 
      if (!__f)
    1a6c:	48 85 f6             	test   %rsi,%rsi
    1a6f:	0f 84 c6 07 00 00    	je     223b <_Z15parse_argumentsiPPc+0xb6b>
    1a75:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
    1a79:	0f 84 06 02 00 00    	je     1c85 <_Z15parse_argumentsiPPc+0x5b5>
    1a7f:	0f be 56 43          	movsbl 0x43(%rsi),%edx
    1a83:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1a8a <_Z15parse_argumentsiPPc+0x3ba>
    1a8a:	e8 00 00 00 00       	callq  1a8f <_Z15parse_argumentsiPPc+0x3bf>
    { return __os.flush(); }
    1a8f:	48 89 c1             	mov    %rax,%rcx
    1a92:	e8 00 00 00 00       	callq  1a97 <_Z15parse_argumentsiPPc+0x3c7>
	__ostream_insert(__out, __s,
    1a97:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1a9e <_Z15parse_argumentsiPPc+0x3ce>
    1a9e:	48 8d 15 78 01 00 00 	lea    0x178(%rip),%rdx        # 1c1d <_Z15parse_argumentsiPPc+0x54d>
    1aa5:	41 b8 47 00 00 00    	mov    $0x47,%r8d
    1aab:	e8 00 00 00 00       	callq  1ab0 <_Z15parse_argumentsiPPc+0x3e0>
    { return flush(__os.put(__os.widen('\n'))); }
    1ab0:	48 8b 03             	mov    (%rbx),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    1ab3:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    1ab7:	48 8b 9c 03 f0 00 00 	mov    0xf0(%rbx,%rax,1),%rbx
    1abe:	00 
      if (!__f)
    1abf:	48 85 db             	test   %rbx,%rbx
    1ac2:	0f 84 73 07 00 00    	je     223b <_Z15parse_argumentsiPPc+0xb6b>
    1ac8:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    1acc:	0f 84 e3 02 00 00    	je     1db5 <_Z15parse_argumentsiPPc+0x6e5>
    1ad2:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    1ad6:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1add <_Z15parse_argumentsiPPc+0x40d>
    1add:	e8 00 00 00 00       	callq  1ae2 <_Z15parse_argumentsiPPc+0x412>
    { return __os.flush(); }
    1ae2:	48 89 c1             	mov    %rax,%rcx
    1ae5:	e8 00 00 00 00       	callq  1aea <_Z15parse_argumentsiPPc+0x41a>
              std::cout << "  --height HEIGHT      vertical resolution (256)" << std::endl;
              std::cout << "  --help               this help text" << std::endl;
              std::cout << "  --no_ppm             no PPM output is generated" << std::endl;
              std::cout << "  -o BMP               BMP output file ('output.bmp')" << std::endl;
              std::cout << "  -r                   reverse vertice order of triangles in input file" << std::endl;
              exit(0);
    1aea:	31 c9                	xor    %ecx,%ecx
    1aec:	e8 00 00 00 00       	callq  1af1 <_Z15parse_argumentsiPPc+0x421>
    case 'r': reverse_vertice_order = true;
    1af1:	c6 05 ff ff ff ff 01 	movb   $0x1,-0x1(%rip)        # 1af7 <_Z15parse_argumentsiPPc+0x427>
              break;
    1af8:	e9 03 fc ff ff       	jmpq   1700 <_Z15parse_argumentsiPPc+0x30>
    1afd:	0f 1f 00             	nopl   (%rax)
    case 'o': output_bmp_file_name = std::string(optarg);
    1b00:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1b07 <_Z15parse_argumentsiPPc+0x437>
    1b07:	48 8d 74 24 48       	lea    0x48(%rsp),%rsi
    1b0c:	4c 8d 44 24 3c       	lea    0x3c(%rsp),%r8
    1b11:	48 89 f1             	mov    %rsi,%rcx
    1b14:	48 8b 10             	mov    (%rax),%rdx
    1b17:	e8 00 00 00 00       	callq  1b1c <_Z15parse_argumentsiPPc+0x44c>
      // PR 58265, this should be noexcept.
      basic_string&
      operator=(basic_string&& __str)
      {
	// NB: DR 1204.
	this->swap(__str);
    1b1c:	48 8d 0d 08 00 00 00 	lea    0x8(%rip),%rcx        # 1b2b <_Z15parse_argumentsiPPc+0x45b>
    1b23:	48 89 f2             	mov    %rsi,%rdx
    1b26:	e8 00 00 00 00       	callq  1b2b <_Z15parse_argumentsiPPc+0x45b>
      { return  _M_dataplus._M_p; }
    1b2b:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
      { return &((reinterpret_cast<_Rep*> (_M_data()))[-1]); }
    1b30:	48 8d 48 e8          	lea    -0x18(%rax),%rcx
	  if (__builtin_expect(this != &_S_empty_rep(), false))
    1b34:	48 3b 0d 00 00 00 00 	cmp    0x0(%rip),%rcx        # 1b3b <_Z15parse_argumentsiPPc+0x46b>
    1b3b:	0f 84 bf fb ff ff    	je     1700 <_Z15parse_argumentsiPPc+0x30>
    1b41:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    1b46:	f0 0f c1 50 f8       	lock xadd %edx,-0x8(%rax)
	      if (__gnu_cxx::__exchange_and_add_dispatch(&this->_M_refcount,
    1b4b:	85 d2                	test   %edx,%edx
    1b4d:	0f 8f ad fb ff ff    	jg     1700 <_Z15parse_argumentsiPPc+0x30>
		  _M_destroy(__a);
    1b53:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    1b58:	e8 00 00 00 00       	callq  1b5d <_Z15parse_argumentsiPPc+0x48d>
              break;
    1b5d:	e9 9e fb ff ff       	jmpq   1700 <_Z15parse_argumentsiPPc+0x30>
    case 'n': write_ppm_to_stdout = false;
    1b62:	c6 05 9f 00 00 00 00 	movb   $0x0,0x9f(%rip)        # 1c08 <_Z15parse_argumentsiPPc+0x538>
              break;
    1b69:	e9 92 fb ff ff       	jmpq   1700 <_Z15parse_argumentsiPPc+0x30>
    1b6e:	66 90                	xchg   %ax,%ax
    case 'h': resolution_y = std::stoi(optarg);
    1b70:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1b77 <_Z15parse_argumentsiPPc+0x4a7>
    1b77:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    1b7c:	4c 8d 44 24 36       	lea    0x36(%rsp),%r8
    1b81:	48 8b 10             	mov    (%rax),%rdx
    1b84:	e8 00 00 00 00       	callq  1b89 <_Z15parse_argumentsiPPc+0x4b9>
      { return  _M_dataplus._M_p; }
    1b89:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
	_Save_errno() : _M_errno(errno) { errno = 0; }
    1b8e:	e8 00 00 00 00       	callq  1b93 <_Z15parse_argumentsiPPc+0x4c3>
    1b93:	8b 00                	mov    (%rax),%eax
    1b95:	89 44 24 3c          	mov    %eax,0x3c(%rsp)
    1b99:	e8 00 00 00 00       	callq  1b9e <_Z15parse_argumentsiPPc+0x4ce>
      const _TRet __tmp = __convf(__str, &__endptr, __base...);
    1b9e:	48 8d 74 24 48       	lea    0x48(%rsp),%rsi
	_Save_errno() : _M_errno(errno) { errno = 0; }
    1ba3:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
      const _TRet __tmp = __convf(__str, &__endptr, __base...);
    1ba9:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
    1baf:	4c 89 f9             	mov    %r15,%rcx
    1bb2:	48 89 f2             	mov    %rsi,%rdx
    1bb5:	e8 00 00 00 00       	callq  1bba <_Z15parse_argumentsiPPc+0x4ea>
      if (__endptr == __str)
    1bba:	4c 3b 7c 24 48       	cmp    0x48(%rsp),%r15
      const _TRet __tmp = __convf(__str, &__endptr, __base...);
    1bbf:	49 89 c6             	mov    %rax,%r14
      if (__endptr == __str)
    1bc2:	0f 84 43 06 00 00    	je     220b <_Z15parse_argumentsiPPc+0xb3b>
      else if (errno == ERANGE
    1bc8:	e8 00 00 00 00       	callq  1bcd <_Z15parse_argumentsiPPc+0x4fd>
	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
    1bcd:	83 38 22             	cmpl   $0x22,(%rax)
    1bd0:	0f 84 db 05 00 00    	je     21b1 <_Z15parse_argumentsiPPc+0xae1>
	      || __val > _TRet(__numeric_traits<int>::__max);
    1bd6:	b8 00 00 00 80       	mov    $0x80000000,%eax
	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
    1bdb:	ba ff ff ff ff       	mov    $0xffffffff,%edx
	      || __val > _TRet(__numeric_traits<int>::__max);
    1be0:	4c 01 f0             	add    %r14,%rax
	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
    1be3:	48 39 d0             	cmp    %rdx,%rax
    1be6:	0f 87 c5 05 00 00    	ja     21b1 <_Z15parse_argumentsiPPc+0xae1>
	~_Save_errno() { if (errno == 0) errno = _M_errno; }
    1bec:	e8 00 00 00 00       	callq  1bf1 <_Z15parse_argumentsiPPc+0x521>
    1bf1:	8b 00                	mov    (%rax),%eax
    1bf3:	85 c0                	test   %eax,%eax
    1bf5:	75 0b                	jne    1c02 <_Z15parse_argumentsiPPc+0x532>
    1bf7:	e8 00 00 00 00       	callq  1bfc <_Z15parse_argumentsiPPc+0x52c>
    1bfc:	8b 54 24 3c          	mov    0x3c(%rsp),%edx
    1c00:	89 10                	mov    %edx,(%rax)
    1c02:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
    1c07:	44 89 35 a4 00 00 00 	mov    %r14d,0xa4(%rip)        # 1cb2 <_Z15parse_argumentsiPPc+0x5e2>
      { return &((reinterpret_cast<_Rep*> (_M_data()))[-1]); }
    1c0e:	48 8d 48 e8          	lea    -0x18(%rax),%rcx
	  if (__builtin_expect(this != &_S_empty_rep(), false))
    1c12:	48 3b 0d 00 00 00 00 	cmp    0x0(%rip),%rcx        # 1c19 <_Z15parse_argumentsiPPc+0x549>
    1c19:	0f 84 e1 fa ff ff    	je     1700 <_Z15parse_argumentsiPPc+0x30>
    1c1f:	e9 cb fb ff ff       	jmpq   17ef <_Z15parse_argumentsiPPc+0x11f>
    case 'f': input_file_name = std::string(optarg);
    1c24:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1c2b <_Z15parse_argumentsiPPc+0x55b>
    1c2b:	48 8d 74 24 48       	lea    0x48(%rsp),%rsi
    1c30:	4c 8d 44 24 3c       	lea    0x3c(%rsp),%r8
    1c35:	48 89 f1             	mov    %rsi,%rcx
    1c38:	48 8b 10             	mov    (%rax),%rdx
    1c3b:	e8 00 00 00 00       	callq  1c40 <_Z15parse_argumentsiPPc+0x570>
	this->swap(__str);
    1c40:	48 8d 0d 10 00 00 00 	lea    0x10(%rip),%rcx        # 1c57 <_Z15parse_argumentsiPPc+0x587>
    1c47:	48 89 f2             	mov    %rsi,%rdx
    1c4a:	e8 00 00 00 00       	callq  1c4f <_Z15parse_argumentsiPPc+0x57f>
    1c4f:	e9 d7 fe ff ff       	jmpq   1b2b <_Z15parse_argumentsiPPc+0x45b>
	this->_M_widen_init();
    1c54:	48 89 f1             	mov    %rsi,%rcx
    1c57:	e8 00 00 00 00       	callq  1c5c <_Z15parse_argumentsiPPc+0x58c>
	return this->do_widen(__c);
    1c5c:	48 8b 06             	mov    (%rsi),%rax
    1c5f:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1c66 <_Z15parse_argumentsiPPc+0x596>
    1c66:	ba 0a 00 00 00       	mov    $0xa,%edx
    1c6b:	48 8b 40 30          	mov    0x30(%rax),%rax
    1c6f:	48 39 c8             	cmp    %rcx,%rax
    1c72:	0f 84 19 fc ff ff    	je     1891 <_Z15parse_argumentsiPPc+0x1c1>
    1c78:	48 89 f1             	mov    %rsi,%rcx
    1c7b:	ff d0                	callq  *%rax
    1c7d:	0f be d0             	movsbl %al,%edx
    1c80:	e9 0c fc ff ff       	jmpq   1891 <_Z15parse_argumentsiPPc+0x1c1>
	this->_M_widen_init();
    1c85:	48 89 f1             	mov    %rsi,%rcx
    1c88:	e8 00 00 00 00       	callq  1c8d <_Z15parse_argumentsiPPc+0x5bd>
	return this->do_widen(__c);
    1c8d:	48 8b 06             	mov    (%rsi),%rax
    1c90:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1c97 <_Z15parse_argumentsiPPc+0x5c7>
    1c97:	ba 0a 00 00 00       	mov    $0xa,%edx
    1c9c:	48 8b 40 30          	mov    0x30(%rax),%rax
    1ca0:	48 39 c8             	cmp    %rcx,%rax
    1ca3:	0f 84 da fd ff ff    	je     1a83 <_Z15parse_argumentsiPPc+0x3b3>
    1ca9:	48 89 f1             	mov    %rsi,%rcx
    1cac:	ff d0                	callq  *%rax
    1cae:	0f be d0             	movsbl %al,%edx
    1cb1:	e9 cd fd ff ff       	jmpq   1a83 <_Z15parse_argumentsiPPc+0x3b3>
    1cb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1cbd:	00 00 00 
	this->_M_widen_init();
    1cc0:	48 89 f1             	mov    %rsi,%rcx
    1cc3:	e8 00 00 00 00       	callq  1cc8 <_Z15parse_argumentsiPPc+0x5f8>
	return this->do_widen(__c);
    1cc8:	48 8b 06             	mov    (%rsi),%rax
    1ccb:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1cd2 <_Z15parse_argumentsiPPc+0x602>
    1cd2:	ba 0a 00 00 00       	mov    $0xa,%edx
    1cd7:	48 8b 40 30          	mov    0x30(%rax),%rax
    1cdb:	48 39 c8             	cmp    %rcx,%rax
    1cde:	0f 84 4c fd ff ff    	je     1a30 <_Z15parse_argumentsiPPc+0x360>
    1ce4:	48 89 f1             	mov    %rsi,%rcx
    1ce7:	ff d0                	callq  *%rax
    1ce9:	0f be d0             	movsbl %al,%edx
    1cec:	e9 3f fd ff ff       	jmpq   1a30 <_Z15parse_argumentsiPPc+0x360>
	this->_M_widen_init();
    1cf1:	48 89 f1             	mov    %rsi,%rcx
    1cf4:	e8 00 00 00 00       	callq  1cf9 <_Z15parse_argumentsiPPc+0x629>
	return this->do_widen(__c);
    1cf9:	48 8b 06             	mov    (%rsi),%rax
    1cfc:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1d03 <_Z15parse_argumentsiPPc+0x633>
    1d03:	ba 0a 00 00 00       	mov    $0xa,%edx
    1d08:	48 8b 40 30          	mov    0x30(%rax),%rax
    1d0c:	48 39 c8             	cmp    %rcx,%rax
    1d0f:	0f 84 c8 fc ff ff    	je     19dd <_Z15parse_argumentsiPPc+0x30d>
    1d15:	48 89 f1             	mov    %rsi,%rcx
    1d18:	ff d0                	callq  *%rax
    1d1a:	0f be d0             	movsbl %al,%edx
    1d1d:	e9 bb fc ff ff       	jmpq   19dd <_Z15parse_argumentsiPPc+0x30d>
	this->_M_widen_init();
    1d22:	48 89 f1             	mov    %rsi,%rcx
    1d25:	e8 00 00 00 00       	callq  1d2a <_Z15parse_argumentsiPPc+0x65a>
	return this->do_widen(__c);
    1d2a:	48 8b 06             	mov    (%rsi),%rax
    1d2d:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1d34 <_Z15parse_argumentsiPPc+0x664>
    1d34:	ba 0a 00 00 00       	mov    $0xa,%edx
    1d39:	48 8b 40 30          	mov    0x30(%rax),%rax
    1d3d:	48 39 c8             	cmp    %rcx,%rax
    1d40:	0f 84 44 fc ff ff    	je     198a <_Z15parse_argumentsiPPc+0x2ba>
    1d46:	48 89 f1             	mov    %rsi,%rcx
    1d49:	ff d0                	callq  *%rax
    1d4b:	0f be d0             	movsbl %al,%edx
    1d4e:	e9 37 fc ff ff       	jmpq   198a <_Z15parse_argumentsiPPc+0x2ba>
	this->_M_widen_init();
    1d53:	48 89 f1             	mov    %rsi,%rcx
    1d56:	e8 00 00 00 00       	callq  1d5b <_Z15parse_argumentsiPPc+0x68b>
	return this->do_widen(__c);
    1d5b:	48 8b 06             	mov    (%rsi),%rax
    1d5e:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1d65 <_Z15parse_argumentsiPPc+0x695>
    1d65:	ba 0a 00 00 00       	mov    $0xa,%edx
    1d6a:	48 8b 40 30          	mov    0x30(%rax),%rax
    1d6e:	48 39 c8             	cmp    %rcx,%rax
    1d71:	0f 84 c0 fb ff ff    	je     1937 <_Z15parse_argumentsiPPc+0x267>
    1d77:	48 89 f1             	mov    %rsi,%rcx
    1d7a:	ff d0                	callq  *%rax
    1d7c:	0f be d0             	movsbl %al,%edx
    1d7f:	e9 b3 fb ff ff       	jmpq   1937 <_Z15parse_argumentsiPPc+0x267>
	this->_M_widen_init();
    1d84:	48 89 f1             	mov    %rsi,%rcx
    1d87:	e8 00 00 00 00       	callq  1d8c <_Z15parse_argumentsiPPc+0x6bc>
	return this->do_widen(__c);
    1d8c:	48 8b 06             	mov    (%rsi),%rax
    1d8f:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1d96 <_Z15parse_argumentsiPPc+0x6c6>
    1d96:	ba 0a 00 00 00       	mov    $0xa,%edx
    1d9b:	48 8b 40 30          	mov    0x30(%rax),%rax
    1d9f:	48 39 c8             	cmp    %rcx,%rax
    1da2:	0f 84 3c fb ff ff    	je     18e4 <_Z15parse_argumentsiPPc+0x214>
    1da8:	48 89 f1             	mov    %rsi,%rcx
    1dab:	ff d0                	callq  *%rax
    1dad:	0f be d0             	movsbl %al,%edx
    1db0:	e9 2f fb ff ff       	jmpq   18e4 <_Z15parse_argumentsiPPc+0x214>
	this->_M_widen_init();
    1db5:	48 89 d9             	mov    %rbx,%rcx
    1db8:	e8 00 00 00 00       	callq  1dbd <_Z15parse_argumentsiPPc+0x6ed>
	return this->do_widen(__c);
    1dbd:	48 8b 03             	mov    (%rbx),%rax
    1dc0:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1dc7 <_Z15parse_argumentsiPPc+0x6f7>
    1dc7:	ba 0a 00 00 00       	mov    $0xa,%edx
    1dcc:	48 8b 40 30          	mov    0x30(%rax),%rax
    1dd0:	48 39 c8             	cmp    %rcx,%rax
    1dd3:	0f 84 fd fc ff ff    	je     1ad6 <_Z15parse_argumentsiPPc+0x406>
    1dd9:	48 89 d9             	mov    %rbx,%rcx
    1ddc:	ff d0                	callq  *%rax
    1dde:	0f be d0             	movsbl %al,%edx
    1de1:	e9 f0 fc ff ff       	jmpq   1ad6 <_Z15parse_argumentsiPPc+0x406>
    1de6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1ded:	00 00 00 
	__out.setstate(ios_base::badbit);
    1df0:	48 8b 1d 00 00 00 00 	mov    0x0(%rip),%rbx        # 1df7 <_Z15parse_argumentsiPPc+0x727>
    1df7:	48 8b 03             	mov    (%rbx),%rax
    1dfa:	48 8b 48 e8          	mov    -0x18(%rax),%rcx
    1dfe:	48 01 d9             	add    %rbx,%rcx
  operator&(_Ios_Iostate __a, _Ios_Iostate __b)
  { return _Ios_Iostate(static_cast<int>(__a) & static_cast<int>(__b)); }

  inline _GLIBCXX_CONSTEXPR _Ios_Iostate
  operator|(_Ios_Iostate __a, _Ios_Iostate __b)
  { return _Ios_Iostate(static_cast<int>(__a) | static_cast<int>(__b)); }
    1e01:	8b 51 20             	mov    0x20(%rcx),%edx
    1e04:	83 ca 01             	or     $0x1,%edx
      { this->clear(this->rdstate() | __state); }
    1e07:	e8 00 00 00 00       	callq  1e0c <_Z15parse_argumentsiPPc+0x73c>
    1e0c:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1e13 <_Z15parse_argumentsiPPc+0x743>
    1e13:	e9 41 fa ff ff       	jmpq   1859 <_Z15parse_argumentsiPPc+0x189>
    1e18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1e1f:	00 
	__ostream_insert(__out, __s,
    1e20:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1e27 <_Z15parse_argumentsiPPc+0x757>
    1e27:	48 8d 15 c0 01 00 00 	lea    0x1c0(%rip),%rdx        # 1fee <_Z15parse_argumentsiPPc+0x91e>
    1e2e:	41 b8 15 00 00 00    	mov    $0x15,%r8d
    1e34:	e8 00 00 00 00       	callq  1e39 <_Z15parse_argumentsiPPc+0x769>
      { return  _M_dataplus._M_p; }
    1e39:	48 8b 15 10 00 00 00 	mov    0x10(%rip),%rdx        # 1e50 <_Z15parse_argumentsiPPc+0x780>
    operator<<(basic_ostream<_CharT, _Traits>& __os,
	       const basic_string<_CharT, _Traits, _Alloc>& __str)
    {
      // _GLIBCXX_RESOLVE_LIB_DEFECTS
      // 586. string inserter not a formatted function
      return __ostream_insert(__os, __str.data(), __str.size());
    1e40:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1e47 <_Z15parse_argumentsiPPc+0x777>
    1e47:	4c 8b 42 e8          	mov    -0x18(%rdx),%r8
    1e4b:	e8 00 00 00 00       	callq  1e50 <_Z15parse_argumentsiPPc+0x780>
    1e50:	48 89 c6             	mov    %rax,%rsi
    { return flush(__os.put(__os.widen('\n'))); }
    1e53:	48 8b 00             	mov    (%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    1e56:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    1e5a:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
    1e61:	00 
      if (!__f)
    1e62:	48 85 db             	test   %rbx,%rbx
    1e65:	0f 84 d0 03 00 00    	je     223b <_Z15parse_argumentsiPPc+0xb6b>
	if (_M_widen_ok)
    1e6b:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    1e6f:	0f 84 1d 02 00 00    	je     2092 <_Z15parse_argumentsiPPc+0x9c2>
    1e75:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    1e79:	48 89 f1             	mov    %rsi,%rcx
    1e7c:	e8 00 00 00 00       	callq  1e81 <_Z15parse_argumentsiPPc+0x7b1>
    { return __os.flush(); }
    1e81:	48 89 c1             	mov    %rax,%rcx
    1e84:	e8 00 00 00 00       	callq  1e89 <_Z15parse_argumentsiPPc+0x7b9>
	__ostream_insert(__out, __s,
    1e89:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1e90 <_Z15parse_argumentsiPPc+0x7c0>
    1e90:	48 8d 15 d6 01 00 00 	lea    0x1d6(%rip),%rdx        # 206d <_Z15parse_argumentsiPPc+0x99d>
    1e97:	41 b8 15 00 00 00    	mov    $0x15,%r8d
    1e9d:	e8 00 00 00 00       	callq  1ea2 <_Z15parse_argumentsiPPc+0x7d2>
      { return  _M_dataplus._M_p; }
    1ea2:	48 8b 15 08 00 00 00 	mov    0x8(%rip),%rdx        # 1eb1 <_Z15parse_argumentsiPPc+0x7e1>
      return __ostream_insert(__os, __str.data(), __str.size());
    1ea9:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1eb0 <_Z15parse_argumentsiPPc+0x7e0>
    1eb0:	4c 8b 42 e8          	mov    -0x18(%rdx),%r8
    1eb4:	e8 00 00 00 00       	callq  1eb9 <_Z15parse_argumentsiPPc+0x7e9>
    1eb9:	48 89 c6             	mov    %rax,%rsi
    { return flush(__os.put(__os.widen('\n'))); }
    1ebc:	48 8b 00             	mov    (%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    1ebf:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    1ec3:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
    1eca:	00 
      if (!__f)
    1ecb:	48 85 db             	test   %rbx,%rbx
    1ece:	0f 84 67 03 00 00    	je     223b <_Z15parse_argumentsiPPc+0xb6b>
    1ed4:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    1ed8:	0f 84 a2 02 00 00    	je     2180 <_Z15parse_argumentsiPPc+0xab0>
    1ede:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    1ee2:	48 89 f1             	mov    %rsi,%rcx
    1ee5:	e8 00 00 00 00       	callq  1eea <_Z15parse_argumentsiPPc+0x81a>
    { return __os.flush(); }
    1eea:	48 89 c1             	mov    %rax,%rcx
    1eed:	e8 00 00 00 00       	callq  1ef2 <_Z15parse_argumentsiPPc+0x822>
	__ostream_insert(__out, __s,
    1ef2:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1ef9 <_Z15parse_argumentsiPPc+0x829>
    1ef9:	48 8d 15 ec 01 00 00 	lea    0x1ec(%rip),%rdx        # 20ec <_Z15parse_argumentsiPPc+0xa1c>
    1f00:	41 b8 15 00 00 00    	mov    $0x15,%r8d
    1f06:	e8 00 00 00 00       	callq  1f0b <_Z15parse_argumentsiPPc+0x83b>
    } 
  }

  std::cerr << "reading from       : " << input_file_name << std::endl;
  std::cerr << "writing bmp to     : " << output_bmp_file_name << std::endl;
  std::cerr << "resolution x set to: " << resolution_x << std::endl;
    1f0b:	8b 15 a8 00 00 00    	mov    0xa8(%rip),%edx        # 1fb9 <_Z15parse_argumentsiPPc+0x8e9>
    1f11:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1f18 <_Z15parse_argumentsiPPc+0x848>
    1f18:	e8 00 00 00 00       	callq  1f1d <_Z15parse_argumentsiPPc+0x84d>
    1f1d:	48 89 c6             	mov    %rax,%rsi
    { return flush(__os.put(__os.widen('\n'))); }
    1f20:	48 8b 00             	mov    (%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    1f23:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    1f27:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
    1f2e:	00 
      if (!__f)
    1f2f:	48 85 db             	test   %rbx,%rbx
    1f32:	0f 84 03 03 00 00    	je     223b <_Z15parse_argumentsiPPc+0xb6b>
    1f38:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    1f3c:	0f 84 0d 02 00 00    	je     214f <_Z15parse_argumentsiPPc+0xa7f>
    1f42:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    1f46:	48 89 f1             	mov    %rsi,%rcx
    1f49:	e8 00 00 00 00       	callq  1f4e <_Z15parse_argumentsiPPc+0x87e>
    { return __os.flush(); }
    1f4e:	48 89 c1             	mov    %rax,%rcx
    1f51:	e8 00 00 00 00       	callq  1f56 <_Z15parse_argumentsiPPc+0x886>
	__ostream_insert(__out, __s,
    1f56:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1f5d <_Z15parse_argumentsiPPc+0x88d>
    1f5d:	48 8d 15 02 02 00 00 	lea    0x202(%rip),%rdx        # 2166 <_Z15parse_argumentsiPPc+0xa96>
    1f64:	41 b8 15 00 00 00    	mov    $0x15,%r8d
    1f6a:	e8 00 00 00 00       	callq  1f6f <_Z15parse_argumentsiPPc+0x89f>
  std::cerr << "resolution y set to: " << resolution_y << std::endl;
    1f6f:	8b 15 a4 00 00 00    	mov    0xa4(%rip),%edx        # 2019 <_Z15parse_argumentsiPPc+0x949>
    1f75:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1f7c <_Z15parse_argumentsiPPc+0x8ac>
    1f7c:	e8 00 00 00 00       	callq  1f81 <_Z15parse_argumentsiPPc+0x8b1>
    1f81:	48 89 c6             	mov    %rax,%rsi
    { return flush(__os.put(__os.widen('\n'))); }
    1f84:	48 8b 00             	mov    (%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    1f87:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    1f8b:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
    1f92:	00 
      if (!__f)
    1f93:	48 85 db             	test   %rbx,%rbx
    1f96:	0f 84 9f 02 00 00    	je     223b <_Z15parse_argumentsiPPc+0xb6b>
    1f9c:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    1fa0:	0f 84 78 01 00 00    	je     211e <_Z15parse_argumentsiPPc+0xa4e>
    1fa6:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    1faa:	48 89 f1             	mov    %rsi,%rcx
    1fad:	e8 00 00 00 00       	callq  1fb2 <_Z15parse_argumentsiPPc+0x8e2>
    { return __os.flush(); }
    1fb2:	48 89 c1             	mov    %rax,%rcx
    1fb5:	e8 00 00 00 00       	callq  1fba <_Z15parse_argumentsiPPc+0x8ea>
	__ostream_insert(__out, __s,
    1fba:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1fc1 <_Z15parse_argumentsiPPc+0x8f1>
    1fc1:	48 8d 15 18 02 00 00 	lea    0x218(%rip),%rdx        # 21e0 <_Z15parse_argumentsiPPc+0xb10>
    1fc8:	41 b8 15 00 00 00    	mov    $0x15,%r8d
    1fce:	e8 00 00 00 00       	callq  1fd3 <_Z15parse_argumentsiPPc+0x903>
  std::cerr << "vertices reversed  : " << reverse_vertice_order << std::endl;
    1fd3:	0f b6 15 00 00 00 00 	movzbl 0x0(%rip),%edx        # 1fda <_Z15parse_argumentsiPPc+0x90a>
      { return _M_insert(__n); }
    1fda:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1fe1 <_Z15parse_argumentsiPPc+0x911>
    1fe1:	e8 00 00 00 00       	callq  1fe6 <_Z15parse_argumentsiPPc+0x916>
    1fe6:	48 89 c6             	mov    %rax,%rsi
    { return flush(__os.put(__os.widen('\n'))); }
    1fe9:	48 8b 00             	mov    (%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    1fec:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    1ff0:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
    1ff7:	00 
      if (!__f)
    1ff8:	48 85 db             	test   %rbx,%rbx
    1ffb:	0f 84 3a 02 00 00    	je     223b <_Z15parse_argumentsiPPc+0xb6b>
    2001:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    2005:	0f 84 e2 00 00 00    	je     20ed <_Z15parse_argumentsiPPc+0xa1d>
    200b:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    200f:	48 89 f1             	mov    %rsi,%rcx
    2012:	e8 00 00 00 00       	callq  2017 <_Z15parse_argumentsiPPc+0x947>
    { return __os.flush(); }
    2017:	48 89 c1             	mov    %rax,%rcx
    201a:	e8 00 00 00 00       	callq  201f <_Z15parse_argumentsiPPc+0x94f>
	__ostream_insert(__out, __s,
    201f:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2026 <_Z15parse_argumentsiPPc+0x956>
    2026:	48 8d 15 2e 02 00 00 	lea    0x22e(%rip),%rdx        # 225b <_Z15parse_argumentsiPPc+0xb8b>
    202d:	41 b8 15 00 00 00    	mov    $0x15,%r8d
    2033:	e8 00 00 00 00       	callq  2038 <_Z15parse_argumentsiPPc+0x968>
  std::cerr << "write ppm          : " << write_ppm_to_stdout << std::endl;
    2038:	0f b6 15 a0 00 00 00 	movzbl 0xa0(%rip),%edx        # 20df <_Z15parse_argumentsiPPc+0xa0f>
      { return _M_insert(__n); }
    203f:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2046 <_Z15parse_argumentsiPPc+0x976>
    2046:	e8 00 00 00 00       	callq  204b <_Z15parse_argumentsiPPc+0x97b>
    204b:	48 89 c6             	mov    %rax,%rsi
    { return flush(__os.put(__os.widen('\n'))); }
    204e:	48 8b 00             	mov    (%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    2051:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    2055:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
    205c:	00 
      if (!__f)
    205d:	48 85 db             	test   %rbx,%rbx
    2060:	0f 84 d5 01 00 00    	je     223b <_Z15parse_argumentsiPPc+0xb6b>
    2066:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    206a:	74 57                	je     20c3 <_Z15parse_argumentsiPPc+0x9f3>
    206c:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    2070:	48 89 f1             	mov    %rsi,%rcx
    2073:	e8 00 00 00 00       	callq  2078 <_Z15parse_argumentsiPPc+0x9a8>
    { return __os.flush(); }
    2078:	48 89 c1             	mov    %rax,%rcx
    207b:	e8 00 00 00 00       	callq  2080 <_Z15parse_argumentsiPPc+0x9b0>
    2080:	90                   	nop
}
    2081:	48 83 c4 58          	add    $0x58,%rsp
    2085:	5b                   	pop    %rbx
    2086:	5e                   	pop    %rsi
    2087:	5f                   	pop    %rdi
    2088:	5d                   	pop    %rbp
    2089:	41 5c                	pop    %r12
    208b:	41 5d                	pop    %r13
    208d:	41 5e                	pop    %r14
    208f:	41 5f                	pop    %r15
    2091:	c3                   	retq   
	this->_M_widen_init();
    2092:	48 89 d9             	mov    %rbx,%rcx
    2095:	e8 00 00 00 00       	callq  209a <_Z15parse_argumentsiPPc+0x9ca>
	return this->do_widen(__c);
    209a:	48 8b 03             	mov    (%rbx),%rax
    209d:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 20a4 <_Z15parse_argumentsiPPc+0x9d4>
    20a4:	ba 0a 00 00 00       	mov    $0xa,%edx
    20a9:	48 8b 40 30          	mov    0x30(%rax),%rax
    20ad:	48 39 c8             	cmp    %rcx,%rax
    20b0:	0f 84 c3 fd ff ff    	je     1e79 <_Z15parse_argumentsiPPc+0x7a9>
    20b6:	48 89 d9             	mov    %rbx,%rcx
    20b9:	ff d0                	callq  *%rax
    20bb:	0f be d0             	movsbl %al,%edx
    20be:	e9 b6 fd ff ff       	jmpq   1e79 <_Z15parse_argumentsiPPc+0x7a9>
	this->_M_widen_init();
    20c3:	48 89 d9             	mov    %rbx,%rcx
    20c6:	e8 00 00 00 00       	callq  20cb <_Z15parse_argumentsiPPc+0x9fb>
	return this->do_widen(__c);
    20cb:	48 8b 03             	mov    (%rbx),%rax
    20ce:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 20d5 <_Z15parse_argumentsiPPc+0xa05>
    20d5:	ba 0a 00 00 00       	mov    $0xa,%edx
    20da:	48 8b 40 30          	mov    0x30(%rax),%rax
    20de:	48 39 c8             	cmp    %rcx,%rax
    20e1:	74 8d                	je     2070 <_Z15parse_argumentsiPPc+0x9a0>
    20e3:	48 89 d9             	mov    %rbx,%rcx
    20e6:	ff d0                	callq  *%rax
    20e8:	0f be d0             	movsbl %al,%edx
    20eb:	eb 83                	jmp    2070 <_Z15parse_argumentsiPPc+0x9a0>
	this->_M_widen_init();
    20ed:	48 89 d9             	mov    %rbx,%rcx
    20f0:	e8 00 00 00 00       	callq  20f5 <_Z15parse_argumentsiPPc+0xa25>
	return this->do_widen(__c);
    20f5:	48 8b 03             	mov    (%rbx),%rax
    20f8:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 20ff <_Z15parse_argumentsiPPc+0xa2f>
    20ff:	ba 0a 00 00 00       	mov    $0xa,%edx
    2104:	48 8b 40 30          	mov    0x30(%rax),%rax
    2108:	48 39 c8             	cmp    %rcx,%rax
    210b:	0f 84 fe fe ff ff    	je     200f <_Z15parse_argumentsiPPc+0x93f>
    2111:	48 89 d9             	mov    %rbx,%rcx
    2114:	ff d0                	callq  *%rax
    2116:	0f be d0             	movsbl %al,%edx
    2119:	e9 f1 fe ff ff       	jmpq   200f <_Z15parse_argumentsiPPc+0x93f>
	this->_M_widen_init();
    211e:	48 89 d9             	mov    %rbx,%rcx
    2121:	e8 00 00 00 00       	callq  2126 <_Z15parse_argumentsiPPc+0xa56>
	return this->do_widen(__c);
    2126:	48 8b 03             	mov    (%rbx),%rax
    2129:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 2130 <_Z15parse_argumentsiPPc+0xa60>
    2130:	ba 0a 00 00 00       	mov    $0xa,%edx
    2135:	48 8b 40 30          	mov    0x30(%rax),%rax
    2139:	48 39 c8             	cmp    %rcx,%rax
    213c:	0f 84 68 fe ff ff    	je     1faa <_Z15parse_argumentsiPPc+0x8da>
    2142:	48 89 d9             	mov    %rbx,%rcx
    2145:	ff d0                	callq  *%rax
    2147:	0f be d0             	movsbl %al,%edx
    214a:	e9 5b fe ff ff       	jmpq   1faa <_Z15parse_argumentsiPPc+0x8da>
	this->_M_widen_init();
    214f:	48 89 d9             	mov    %rbx,%rcx
    2152:	e8 00 00 00 00       	callq  2157 <_Z15parse_argumentsiPPc+0xa87>
	return this->do_widen(__c);
    2157:	48 8b 03             	mov    (%rbx),%rax
    215a:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 2161 <_Z15parse_argumentsiPPc+0xa91>
    2161:	ba 0a 00 00 00       	mov    $0xa,%edx
    2166:	48 8b 40 30          	mov    0x30(%rax),%rax
    216a:	48 39 c8             	cmp    %rcx,%rax
    216d:	0f 84 d3 fd ff ff    	je     1f46 <_Z15parse_argumentsiPPc+0x876>
    2173:	48 89 d9             	mov    %rbx,%rcx
    2176:	ff d0                	callq  *%rax
    2178:	0f be d0             	movsbl %al,%edx
    217b:	e9 c6 fd ff ff       	jmpq   1f46 <_Z15parse_argumentsiPPc+0x876>
	this->_M_widen_init();
    2180:	48 89 d9             	mov    %rbx,%rcx
    2183:	e8 00 00 00 00       	callq  2188 <_Z15parse_argumentsiPPc+0xab8>
	return this->do_widen(__c);
    2188:	48 8b 03             	mov    (%rbx),%rax
    218b:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 2192 <_Z15parse_argumentsiPPc+0xac2>
    2192:	ba 0a 00 00 00       	mov    $0xa,%edx
    2197:	48 8b 40 30          	mov    0x30(%rax),%rax
    219b:	48 39 c8             	cmp    %rcx,%rax
    219e:	0f 84 3e fd ff ff    	je     1ee2 <_Z15parse_argumentsiPPc+0x812>
    21a4:	48 89 d9             	mov    %rbx,%rcx
    21a7:	ff d0                	callq  *%rax
    21a9:	0f be d0             	movsbl %al,%edx
    21ac:	e9 31 fd ff ff       	jmpq   1ee2 <_Z15parse_argumentsiPPc+0x812>
	std::__throw_out_of_range(__name);
    21b1:	48 8d 0d 0d 00 00 00 	lea    0xd(%rip),%rcx        # 21c5 <_Z15parse_argumentsiPPc+0xaf5>
    21b8:	e8 00 00 00 00       	callq  21bd <_Z15parse_argumentsiPPc+0xaed>
      } const __save_errno;
    21bd:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    21c2:	48 89 c3             	mov    %rax,%rbx
    21c5:	c5 f8 77             	vzeroupper 
    21c8:	e8 00 00 00 00       	callq  21cd <_Z15parse_argumentsiPPc+0xafd>
      { return &((reinterpret_cast<_Rep*> (_M_data()))[-1]); }
    21cd:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
    21d2:	48 8d 48 e8          	lea    -0x18(%rax),%rcx
	  if (__builtin_expect(this != &_S_empty_rep(), false))
    21d6:	48 3b 0d 00 00 00 00 	cmp    0x0(%rip),%rcx        # 21dd <_Z15parse_argumentsiPPc+0xb0d>
    21dd:	74 0a                	je     21e9 <_Z15parse_argumentsiPPc+0xb19>
    21df:	48 8d 54 24 37       	lea    0x37(%rsp),%rdx
    21e4:	e8 00 00 00 00       	callq  21e9 <_Z15parse_argumentsiPPc+0xb19>
    21e9:	48 89 d9             	mov    %rbx,%rcx
    21ec:	e8 00 00 00 00       	callq  21f1 <_Z15parse_argumentsiPPc+0xb21>
	std::__throw_out_of_range(__name);
    21f1:	48 8d 0d 0d 00 00 00 	lea    0xd(%rip),%rcx        # 2205 <_Z15parse_argumentsiPPc+0xb35>
    21f8:	e8 00 00 00 00       	callq  21fd <_Z15parse_argumentsiPPc+0xb2d>
    21fd:	eb be                	jmp    21bd <_Z15parse_argumentsiPPc+0xaed>
	std::__throw_invalid_argument(__name);
    21ff:	48 8d 0d 0d 00 00 00 	lea    0xd(%rip),%rcx        # 2213 <_Z15parse_argumentsiPPc+0xb43>
    2206:	e8 00 00 00 00       	callq  220b <_Z15parse_argumentsiPPc+0xb3b>
    220b:	48 8d 0d 0d 00 00 00 	lea    0xd(%rip),%rcx        # 221f <_Z15parse_argumentsiPPc+0xb4f>
    2212:	e8 00 00 00 00       	callq  2217 <_Z15parse_argumentsiPPc+0xb47>
    2217:	48 89 c3             	mov    %rax,%rbx
      { return &((reinterpret_cast<_Rep*> (_M_data()))[-1]); }
    221a:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    221f:	48 8d 48 e8          	lea    -0x18(%rax),%rcx
	  if (__builtin_expect(this != &_S_empty_rep(), false))
    2223:	48 3b 0d 00 00 00 00 	cmp    0x0(%rip),%rcx        # 222a <_Z15parse_argumentsiPPc+0xb5a>
    222a:	75 16                	jne    2242 <_Z15parse_argumentsiPPc+0xb72>
    222c:	c5 f8 77             	vzeroupper 
    222f:	eb b8                	jmp    21e9 <_Z15parse_argumentsiPPc+0xb19>
    2231:	48 89 c3             	mov    %rax,%rbx
    2234:	c5 f8 77             	vzeroupper 
    2237:	eb 94                	jmp    21cd <_Z15parse_argumentsiPPc+0xafd>
    2239:	eb dc                	jmp    2217 <_Z15parse_argumentsiPPc+0xb47>
	__throw_bad_cast();
    223b:	e8 00 00 00 00       	callq  2240 <_Z15parse_argumentsiPPc+0xb70>
    2240:	eb ef                	jmp    2231 <_Z15parse_argumentsiPPc+0xb61>
    2242:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    2247:	c5 f8 77             	vzeroupper 
    224a:	e8 00 00 00 00       	callq  224f <_Z15parse_argumentsiPPc+0xb7f>
    224f:	eb 98                	jmp    21e9 <_Z15parse_argumentsiPPc+0xb19>
    2251:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2256:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    225d:	00 00 00 

0000000000002260 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene>:
void read_wavefront(std::ifstream & in, Scene & scene) {
    2260:	41 57                	push   %r15
    2262:	41 56                	push   %r14
    2264:	41 55                	push   %r13
    2266:	41 54                	push   %r12
    2268:	55                   	push   %rbp
    2269:	57                   	push   %rdi
    226a:	56                   	push   %rsi
    226b:	53                   	push   %rbx
    226c:	48 81 ec 08 02 00 00 	sub    $0x208,%rsp
    2273:	c5 f8 29 b4 24 60 01 	vmovaps %xmm6,0x160(%rsp)
    227a:	00 00 
    227c:	c5 f8 29 bc 24 70 01 	vmovaps %xmm7,0x170(%rsp)
    2283:	00 00 
    2285:	c5 78 29 84 24 80 01 	vmovaps %xmm8,0x180(%rsp)
    228c:	00 00 
    228e:	c5 78 29 8c 24 90 01 	vmovaps %xmm9,0x190(%rsp)
    2295:	00 00 
    2297:	c5 78 29 94 24 a0 01 	vmovaps %xmm10,0x1a0(%rsp)
    229e:	00 00 
    22a0:	c5 78 29 9c 24 b0 01 	vmovaps %xmm11,0x1b0(%rsp)
    22a7:	00 00 
    22a9:	c5 78 29 a4 24 c0 01 	vmovaps %xmm12,0x1c0(%rsp)
    22b0:	00 00 
    22b2:	c5 78 29 ac 24 d0 01 	vmovaps %xmm13,0x1d0(%rsp)
    22b9:	00 00 
    22bb:	c5 78 29 b4 24 e0 01 	vmovaps %xmm14,0x1e0(%rsp)
    22c2:	00 00 
    22c4:	c5 78 29 bc 24 f0 01 	vmovaps %xmm15,0x1f0(%rsp)
    22cb:	00 00 
	: _Tp_alloc_type(), _M_start(), _M_finish(), _M_end_of_storage()
    22cd:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
    22d1:	45 31 f6             	xor    %r14d,%r14d
    22d4:	48 89 cb             	mov    %rcx,%rbx
    22d7:	49 89 d5             	mov    %rdx,%r13
    22da:	31 f6                	xor    %esi,%esi
    22dc:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
    22e3:	00 00 00 00 00 
      this->x[i] = 0;
    22e8:	48 c7 84 24 94 00 00 	movq   $0x0,0x94(%rsp)
    22ef:	00 00 00 00 00 
    22f4:	45 31 e4             	xor    %r12d,%r12d
    22f7:	c5 f8 29 84 24 a0 00 	vmovaps %xmm0,0xa0(%rsp)
    22fe:	00 00 
    2300:	c7 84 24 9c 00 00 00 	movl   $0x0,0x9c(%rsp)
    2307:	00 00 00 00 
  size_t no_of_triangles = 0u;
    230b:	31 ed                	xor    %ebp,%ebp
    230d:	48 8d 7c 24 5f       	lea    0x5f(%rsp),%rdi
    2312:	49 bf ff ff ff ff ff 	movabs $0x3fffffffffffffff,%r15
    2319:	ff ff 3f 
    231c:	eb 22                	jmp    2340 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xe0>
    231e:	66 90                	xchg   %ax,%ax
    } else if (c == 'f' && in.peek() == ' ') {
    2320:	3c 66                	cmp    $0x66,%al
    2322:	0f 84 f8 00 00 00    	je     2420 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x1c0>
    in.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
    2328:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
    232e:	48 ba ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rdx
    2335:	ff ff 7f 
    2338:	48 89 d9             	mov    %rbx,%rcx
    233b:	e8 00 00 00 00       	callq  2340 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xe0>
  while (in >> c) {
    2340:	48 89 fa             	mov    %rdi,%rdx
    2343:	48 89 d9             	mov    %rbx,%rcx
    2346:	e8 00 00 00 00       	callq  234b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xeb>
    234b:	48 8b 10             	mov    (%rax),%rdx
      { return (this->rdstate() & (badbit | failbit)) != 0; }
    234e:	48 8b 52 e8          	mov    -0x18(%rdx),%rdx
    2352:	f6 44 10 20 05       	testb  $0x5,0x20(%rax,%rdx,1)
    2357:	0f 85 e3 00 00 00    	jne    2440 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x1e0>
    if (c == 'v' && in.peek() == ' ') {
    235d:	0f b6 44 24 5f       	movzbl 0x5f(%rsp),%eax
    2362:	3c 76                	cmp    $0x76,%al
    2364:	75 ba                	jne    2320 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc0>
    2366:	48 89 d9             	mov    %rbx,%rcx
    2369:	e8 00 00 00 00       	callq  236e <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x10e>
    236e:	83 f8 20             	cmp    $0x20,%eax
    2371:	0f 84 59 09 00 00    	je     2cd0 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xa70>
    } else if (c == 'f' && in.peek() == ' ') {
    2377:	0f b6 44 24 5f       	movzbl 0x5f(%rsp),%eax
    237c:	3c 66                	cmp    $0x66,%al
    237e:	0f 84 9c 00 00 00    	je     2420 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x1c0>
    } else if (c == 'v' && in.peek() == 'n') {
    2384:	3c 76                	cmp    $0x76,%al
    2386:	75 a0                	jne    2328 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc8>
    2388:	48 89 d9             	mov    %rbx,%rcx
    238b:	e8 00 00 00 00       	callq  2390 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x130>
    2390:	83 f8 6e             	cmp    $0x6e,%eax
    2393:	75 93                	jne    2328 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc8>
       in >> c;
    2395:	48 89 fa             	mov    %rdi,%rdx
    2398:	48 89 d9             	mov    %rbx,%rcx
    239b:	e8 00 00 00 00       	callq  23a0 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x140>
       if ( in.peek() == ' ' ) {
    23a0:	48 89 d9             	mov    %rbx,%rcx
    23a3:	e8 00 00 00 00       	callq  23a8 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x148>
    23a8:	83 f8 20             	cmp    $0x20,%eax
    23ab:	0f 85 77 ff ff ff    	jne    2328 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc8>
       *  These functions use the stream's current locale (specifically, the
       *  @c num_get facet) to parse the input data.
      */
      __istream_type&
      operator>>(float& __f)
      { return _M_extract(__f); }
    23b1:	48 8d 54 24 78       	lea    0x78(%rsp),%rdx
    23b6:	48 89 d9             	mov    %rbx,%rcx
    23b9:	e8 00 00 00 00       	callq  23be <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x15e>
    23be:	48 8d 94 24 80 00 00 	lea    0x80(%rsp),%rdx
    23c5:	00 
    23c6:	48 89 d9             	mov    %rbx,%rcx
    23c9:	e8 00 00 00 00       	callq  23ce <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x16e>
    23ce:	48 8d 94 24 88 00 00 	lea    0x88(%rsp),%rdx
    23d5:	00 
    23d6:	48 89 d9             	mov    %rbx,%rcx
    23d9:	e8 00 00 00 00       	callq  23de <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x17e>
       *  available.
       */
      void
      push_back(const value_type& __x)
      {
	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
    23de:	4c 39 f6             	cmp    %r14,%rsi
         normal = Vector<FLOAT, 3>( {nx, ny, nz} );
    23e1:	c5 7a 10 44 24 78    	vmovss 0x78(%rsp),%xmm8
    23e7:	c5 fa 10 bc 24 80 00 	vmovss 0x80(%rsp),%xmm7
    23ee:	00 00 
    23f0:	c5 fa 10 b4 24 88 00 	vmovss 0x88(%rsp),%xmm6
    23f7:	00 00 
    23f9:	0f 84 d2 09 00 00    	je     2dd1 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xb71>

#if __cplusplus >= 201103L
      template<typename _Up, typename... _Args>
	void
	construct(_Up* __p, _Args&&... __args)
	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
    23ff:	48 85 f6             	test   %rsi,%rsi
    2402:	74 0e                	je     2412 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x1b2>
    2404:	c5 7a 11 06          	vmovss %xmm8,(%rsi)
    2408:	c5 fa 11 7e 04       	vmovss %xmm7,0x4(%rsi)
    240d:	c5 fa 11 76 08       	vmovss %xmm6,0x8(%rsi)
	  {
	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
				     __x);
	    ++this->_M_impl._M_finish;
    2412:	48 83 c6 0c          	add    $0xc,%rsi
    2416:	e9 0d ff ff ff       	jmpq   2328 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc8>
    241b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    } else if (c == 'f' && in.peek() == ' ') {
    2420:	48 89 d9             	mov    %rbx,%rcx
    2423:	e8 00 00 00 00       	callq  2428 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x1c8>
    2428:	83 f8 20             	cmp    $0x20,%eax
    242b:	0f 84 23 03 00 00    	je     2754 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x4f4>
    2431:	0f b6 44 24 5f       	movzbl 0x5f(%rsp),%eax
    2436:	e9 49 ff ff ff       	jmpq   2384 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x124>
    243b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
	__ostream_insert(__out, __s,
    2440:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2447 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x1e7>
    2447:	48 8d 15 8c 02 00 00 	lea    0x28c(%rip),%rdx        # 26da <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x47a>
    244e:	41 b8 12 00 00 00    	mov    $0x12,%r8d
    2454:	e8 00 00 00 00       	callq  2459 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x1f9>
      { return _M_insert(__n); }
    2459:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2460 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x200>
    2460:	48 89 ea             	mov    %rbp,%rdx
    2463:	e8 00 00 00 00       	callq  2468 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x208>
    2468:	48 89 c7             	mov    %rax,%rdi
    { return flush(__os.put(__os.widen('\n'))); }
    246b:	48 8b 00             	mov    (%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    246e:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    2472:	48 8b 9c 07 f0 00 00 	mov    0xf0(%rdi,%rax,1),%rbx
    2479:	00 
      if (!__f)
    247a:	48 85 db             	test   %rbx,%rbx
    247d:	0f 84 45 0b 00 00    	je     2fc8 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xd68>
	if (_M_widen_ok)
    2483:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    2487:	0f 84 96 02 00 00    	je     2723 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x4c3>
    248d:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    2491:	48 89 f9             	mov    %rdi,%rcx
    2494:	e8 00 00 00 00       	callq  2499 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x239>
    { return __os.flush(); }
    2499:	48 89 c1             	mov    %rax,%rcx
    249c:	e8 00 00 00 00       	callq  24a1 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x241>
	__ostream_insert(__out, __s,
    24a1:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 24a8 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x248>
    24a8:	48 8d 15 9f 02 00 00 	lea    0x29f(%rip),%rdx        # 274e <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x4ee>
    24af:	41 b8 11 00 00 00    	mov    $0x11,%r8d
    24b5:	e8 00 00 00 00       	callq  24ba <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x25a>
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
    24ba:	48 8b 94 24 a8 00 00 	mov    0xa8(%rsp),%rdx
    24c1:	00 
    24c2:	48 2b 94 24 a0 00 00 	sub    0xa0(%rsp),%rdx
    24c9:	00 
    24ca:	48 b8 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rax
    24d1:	aa aa aa 
      { return _M_insert(__n); }
    24d4:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 24db <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x27b>
    24db:	48 c1 fa 02          	sar    $0x2,%rdx
    24df:	48 0f af d0          	imul   %rax,%rdx
    24e3:	e8 00 00 00 00       	callq  24e8 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x288>
    24e8:	48 89 c7             	mov    %rax,%rdi
    { return flush(__os.put(__os.widen('\n'))); }
    24eb:	48 8b 00             	mov    (%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    24ee:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    24f2:	48 8b 9c 07 f0 00 00 	mov    0xf0(%rdi,%rax,1),%rbx
    24f9:	00 
      if (!__f)
    24fa:	48 85 db             	test   %rbx,%rbx
    24fd:	0f 84 38 0b 00 00    	je     303b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xddb>
    2503:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    2507:	0f 84 e5 01 00 00    	je     26f2 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x492>
    250d:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    2511:	48 89 f9             	mov    %rdi,%rcx
    2514:	e8 00 00 00 00       	callq  2519 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2b9>
    { return __os.flush(); }
    2519:	48 89 c1             	mov    %rax,%rcx
    251c:	e8 00 00 00 00       	callq  2521 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2c1>
	__ostream_insert(__out, __s,
    2521:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2528 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2c8>
    2528:	48 8d 15 b1 02 00 00 	lea    0x2b1(%rip),%rdx        # 27e0 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x580>
    252f:	41 b8 10 00 00 00    	mov    $0x10,%r8d
    2535:	e8 00 00 00 00       	callq  253a <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2da>
    253a:	4c 29 e6             	sub    %r12,%rsi
      { return _M_insert(__n); }
    253d:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2544 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2e4>
    2544:	48 c1 fe 02          	sar    $0x2,%rsi
    2548:	48 89 f2             	mov    %rsi,%rdx
    254b:	48 be ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rsi
    2552:	aa aa aa 
    2555:	48 0f af d6          	imul   %rsi,%rdx
    2559:	e8 00 00 00 00       	callq  255e <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2fe>
    255e:	48 89 c6             	mov    %rax,%rsi
    { return flush(__os.put(__os.widen('\n'))); }
    2561:	48 8b 00             	mov    (%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    2564:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    2568:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
    256f:	00 
      if (!__f)
    2570:	48 85 db             	test   %rbx,%rbx
    2573:	0f 84 bd 0a 00 00    	je     3036 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xdd6>
    2579:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    257d:	0f 84 3e 01 00 00    	je     26c1 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x461>
    2583:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    2587:	48 89 f1             	mov    %rsi,%rcx
    258a:	e8 00 00 00 00       	callq  258f <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x32f>
    { return __os.flush(); }
    258f:	48 89 c1             	mov    %rax,%rcx
    2592:	e8 00 00 00 00       	callq  2597 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x337>
	__ostream_insert(__out, __s,
    2597:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 259e <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x33e>
    259e:	48 8d 15 c8 02 00 00 	lea    0x2c8(%rip),%rdx        # 286d <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x60d>
    25a5:	41 b8 27 00 00 00    	mov    $0x27,%r8d
    25ab:	e8 00 00 00 00       	callq  25b0 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x350>
  std::cerr << "memory used for all triangles [byte] : " << no_of_triangles * sizeof(Triangle<FLOAT>) << std::endl;   
    25b0:	48 8d 54 ed 00       	lea    0x0(%rbp,%rbp,8),%rdx
      { return _M_insert(__n); }
    25b5:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 25bc <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x35c>
    25bc:	48 c1 e2 03          	shl    $0x3,%rdx
    25c0:	e8 00 00 00 00       	callq  25c5 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x365>
    25c5:	48 89 c6             	mov    %rax,%rsi
    { return flush(__os.put(__os.widen('\n'))); }
    25c8:	48 8b 00             	mov    (%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    25cb:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    25cf:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
    25d6:	00 
      if (!__f)
    25d7:	48 85 db             	test   %rbx,%rbx
    25da:	0f 84 1a 0a 00 00    	je     2ffa <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xd9a>
    25e0:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    25e4:	0f 84 a6 00 00 00    	je     2690 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x430>
    25ea:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    25ee:	48 89 f1             	mov    %rsi,%rcx
    25f1:	e8 00 00 00 00       	callq  25f6 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x396>
    { return __os.flush(); }
    25f6:	48 89 c1             	mov    %rax,%rcx
    25f9:	e8 00 00 00 00       	callq  25fe <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x39e>
	if (__p)
    25fe:	4d 85 e4             	test   %r12,%r12
    2601:	74 08                	je     260b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x3ab>
	::operator delete(__p);
    2603:	4c 89 e1             	mov    %r12,%rcx
    2606:	e8 00 00 00 00       	callq  260b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x3ab>
      { std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
    260b:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
    2612:	00 
	if (__p)
    2613:	48 85 c9             	test   %rcx,%rcx
    2616:	74 06                	je     261e <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x3be>
    2618:	e8 00 00 00 00       	callq  261d <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x3bd>
    261d:	90                   	nop
}
    261e:	c5 f8 28 b4 24 60 01 	vmovaps 0x160(%rsp),%xmm6
    2625:	00 00 
    2627:	c5 f8 28 bc 24 70 01 	vmovaps 0x170(%rsp),%xmm7
    262e:	00 00 
    2630:	c5 78 28 84 24 80 01 	vmovaps 0x180(%rsp),%xmm8
    2637:	00 00 
    2639:	c5 78 28 8c 24 90 01 	vmovaps 0x190(%rsp),%xmm9
    2640:	00 00 
    2642:	c5 78 28 94 24 a0 01 	vmovaps 0x1a0(%rsp),%xmm10
    2649:	00 00 
    264b:	c5 78 28 9c 24 b0 01 	vmovaps 0x1b0(%rsp),%xmm11
    2652:	00 00 
    2654:	c5 78 28 a4 24 c0 01 	vmovaps 0x1c0(%rsp),%xmm12
    265b:	00 00 
    265d:	c5 78 28 ac 24 d0 01 	vmovaps 0x1d0(%rsp),%xmm13
    2664:	00 00 
    2666:	c5 78 28 b4 24 e0 01 	vmovaps 0x1e0(%rsp),%xmm14
    266d:	00 00 
    266f:	c5 78 28 bc 24 f0 01 	vmovaps 0x1f0(%rsp),%xmm15
    2676:	00 00 
    2678:	48 81 c4 08 02 00 00 	add    $0x208,%rsp
    267f:	5b                   	pop    %rbx
    2680:	5e                   	pop    %rsi
    2681:	5f                   	pop    %rdi
    2682:	5d                   	pop    %rbp
    2683:	41 5c                	pop    %r12
    2685:	41 5d                	pop    %r13
    2687:	41 5e                	pop    %r14
    2689:	41 5f                	pop    %r15
    268b:	c3                   	retq   
    268c:	0f 1f 40 00          	nopl   0x0(%rax)
	this->_M_widen_init();
    2690:	48 89 d9             	mov    %rbx,%rcx
    2693:	e8 00 00 00 00       	callq  2698 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x438>
	return this->do_widen(__c);
    2698:	48 8b 03             	mov    (%rbx),%rax
    269b:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 26a2 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x442>
    26a2:	ba 0a 00 00 00       	mov    $0xa,%edx
    26a7:	48 8b 40 30          	mov    0x30(%rax),%rax
    26ab:	48 39 c8             	cmp    %rcx,%rax
    26ae:	0f 84 3a ff ff ff    	je     25ee <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x38e>
    26b4:	48 89 d9             	mov    %rbx,%rcx
    26b7:	ff d0                	callq  *%rax
    26b9:	0f be d0             	movsbl %al,%edx
    26bc:	e9 2d ff ff ff       	jmpq   25ee <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x38e>
	this->_M_widen_init();
    26c1:	48 89 d9             	mov    %rbx,%rcx
    26c4:	e8 00 00 00 00       	callq  26c9 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x469>
	return this->do_widen(__c);
    26c9:	48 8b 03             	mov    (%rbx),%rax
    26cc:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 26d3 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x473>
    26d3:	ba 0a 00 00 00       	mov    $0xa,%edx
    26d8:	48 8b 40 30          	mov    0x30(%rax),%rax
    26dc:	48 39 c8             	cmp    %rcx,%rax
    26df:	0f 84 a2 fe ff ff    	je     2587 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x327>
    26e5:	48 89 d9             	mov    %rbx,%rcx
    26e8:	ff d0                	callq  *%rax
    26ea:	0f be d0             	movsbl %al,%edx
    26ed:	e9 95 fe ff ff       	jmpq   2587 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x327>
	this->_M_widen_init();
    26f2:	48 89 d9             	mov    %rbx,%rcx
    26f5:	e8 00 00 00 00       	callq  26fa <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x49a>
	return this->do_widen(__c);
    26fa:	48 8b 03             	mov    (%rbx),%rax
    26fd:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 2704 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x4a4>
    2704:	ba 0a 00 00 00       	mov    $0xa,%edx
    2709:	48 8b 40 30          	mov    0x30(%rax),%rax
    270d:	48 39 c8             	cmp    %rcx,%rax
    2710:	0f 84 fb fd ff ff    	je     2511 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2b1>
    2716:	48 89 d9             	mov    %rbx,%rcx
    2719:	ff d0                	callq  *%rax
    271b:	0f be d0             	movsbl %al,%edx
    271e:	e9 ee fd ff ff       	jmpq   2511 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2b1>
	this->_M_widen_init();
    2723:	48 89 d9             	mov    %rbx,%rcx
    2726:	e8 00 00 00 00       	callq  272b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x4cb>
	return this->do_widen(__c);
    272b:	48 8b 03             	mov    (%rbx),%rax
    272e:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 2735 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x4d5>
    2735:	ba 0a 00 00 00       	mov    $0xa,%edx
    273a:	48 8b 40 30          	mov    0x30(%rax),%rax
    273e:	48 39 c8             	cmp    %rcx,%rax
    2741:	0f 84 4a fd ff ff    	je     2491 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x231>
    2747:	48 89 d9             	mov    %rbx,%rcx
    274a:	ff d0                	callq  *%rax
    274c:	0f be d0             	movsbl %al,%edx
    274f:	e9 3d fd ff ff       	jmpq   2491 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x231>
      { return _M_extract(__n); }
    2754:	48 8d 54 24 60       	lea    0x60(%rsp),%rdx
    2759:	48 89 d9             	mov    %rbx,%rcx
       size_t xn = 0, yn, zn;
    275c:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    2763:	00 00 
    2765:	e8 00 00 00 00       	callq  276a <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x50a>
       if (in.peek() == '/') in.ignore(); // no texture coordinates supported
    276a:	48 89 d9             	mov    %rbx,%rcx
    276d:	e8 00 00 00 00       	callq  2772 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x512>
    2772:	83 f8 2f             	cmp    $0x2f,%eax
    2775:	0f 84 45 05 00 00    	je     2cc0 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xa60>
       if (in.peek() == '/') { in.ignore(); in >> xn;}
    277b:	48 89 d9             	mov    %rbx,%rcx
    277e:	e8 00 00 00 00       	callq  2783 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x523>
    2783:	83 f8 2f             	cmp    $0x2f,%eax
    2786:	0f 84 14 05 00 00    	je     2ca0 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xa40>
    278c:	48 8d 54 24 68       	lea    0x68(%rsp),%rdx
    2791:	48 89 d9             	mov    %rbx,%rcx
    2794:	e8 00 00 00 00       	callq  2799 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x539>
       if (in.peek() == '/') in.ignore(); // no texture coordinates supported
    2799:	48 89 d9             	mov    %rbx,%rcx
    279c:	e8 00 00 00 00       	callq  27a1 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x541>
    27a1:	83 f8 2f             	cmp    $0x2f,%eax
    27a4:	0f 84 e6 04 00 00    	je     2c90 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xa30>
       if (in.peek() == '/') { in.ignore(); in >> yn;}
    27aa:	48 89 d9             	mov    %rbx,%rcx
    27ad:	e8 00 00 00 00       	callq  27b2 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x552>
    27b2:	83 f8 2f             	cmp    $0x2f,%eax
    27b5:	0f 84 b5 04 00 00    	je     2c70 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xa10>
    27bb:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
    27c0:	48 89 d9             	mov    %rbx,%rcx
    27c3:	e8 00 00 00 00       	callq  27c8 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x568>
       if (in.peek() == '/') in.ignore(); // no texture coordinates supported
    27c8:	48 89 d9             	mov    %rbx,%rcx
    27cb:	e8 00 00 00 00       	callq  27d0 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x570>
    27d0:	83 f8 2f             	cmp    $0x2f,%eax
    27d3:	0f 84 87 04 00 00    	je     2c60 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xa00>
       if (in.peek() == '/') { in.ignore(); in >> zn;}
    27d9:	48 89 d9             	mov    %rbx,%rcx
    27dc:	e8 00 00 00 00       	callq  27e1 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x581>
    27e1:	83 f8 2f             	cmp    $0x2f,%eax
    27e4:	0f 84 83 05 00 00    	je     2d6d <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xb0d>
       if (reverse_vertice_order) {
    27ea:	80 3d ff ff ff ff 00 	cmpb   $0x0,-0x1(%rip)        # 27f0 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x590>
    27f1:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    27f6:	48 8b 54 24 70       	mov    0x70(%rsp),%rdx
    27fb:	74 33                	je     2830 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x5d0>
#endif
    {
      // concept requirements
      __glibcxx_function_requires(_SGIAssignableConcept<_Tp>)

      _Tp __tmp = _GLIBCXX_MOVE(__a);
    27fd:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
    2804:	00 
      __a = _GLIBCXX_MOVE(__b);
    2805:	4c 8b 84 24 88 00 00 	mov    0x88(%rsp),%r8
    280c:	00 
    280d:	48 89 54 24 68       	mov    %rdx,0x68(%rsp)
      __b = _GLIBCXX_MOVE(__tmp);
    2812:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
    2817:	48 89 8c 24 88 00 00 	mov    %rcx,0x88(%rsp)
    281e:	00 
    281f:	48 89 c1             	mov    %rax,%rcx
      __a = _GLIBCXX_MOVE(__b);
    2822:	4c 89 84 24 80 00 00 	mov    %r8,0x80(%rsp)
    2829:	00 
      __b = _GLIBCXX_MOVE(__tmp);
    282a:	48 89 d0             	mov    %rdx,%rax
    282d:	48 89 ca             	mov    %rcx,%rdx
    2830:	4c 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%r8
    2837:	00 
    2838:	48 8d 44 40 fd       	lea    -0x3(%rax,%rax,2),%rax
       if (xn == 0) { // no normals 
    283d:	4c 8b 4c 24 78       	mov    0x78(%rsp),%r9
    2842:	48 8d 54 52 fd       	lea    -0x3(%rdx,%rdx,2),%rdx
    2847:	49 8d 0c 80          	lea    (%r8,%rax,4),%rcx
    284b:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
    2850:	49 8d 14 90          	lea    (%r8,%rdx,4),%rdx
    2854:	4d 85 c9             	test   %r9,%r9
    2857:	c5 7a 10 31          	vmovss (%rcx),%xmm14
    285b:	48 8d 44 40 fd       	lea    -0x3(%rax,%rax,2),%rax
    2860:	c5 7a 10 79 04       	vmovss 0x4(%rcx),%xmm15
    2865:	c5 7a 10 41 08       	vmovss 0x8(%rcx),%xmm8
    286a:	49 8d 04 80          	lea    (%r8,%rax,4),%rax
    286e:	c5 fa 10 0a          	vmovss (%rdx),%xmm1
    2872:	c5 7a 10 5a 04       	vmovss 0x4(%rdx),%xmm11
    2877:	c5 fa 10 7a 08       	vmovss 0x8(%rdx),%xmm7
    287c:	c5 fa 10 30          	vmovss (%rax),%xmm6
    2880:	c5 7a 10 68 04       	vmovss 0x4(%rax),%xmm13
    2885:	c5 7a 10 50 08       	vmovss 0x8(%rax),%xmm10
    288a:	0f 84 21 02 00 00    	je     2ab1 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x851>
	return *(this->_M_impl._M_start + __n);
    2890:	4b 8d 44 49 fd       	lea    -0x3(%r9,%r9,2),%rax
      square_of_length += ( this->x[i] * this->x[i] );
    2895:	c4 41 30 57 c9       	vxorps %xmm9,%xmm9,%xmm9
    289a:	49 8d 0c 84          	lea    (%r12,%rax,4),%rcx
         scene.add(Triangle<FLOAT> ( {vertices[xv - 1], vertices[yv - 1], vertices[zv - 1], normals[xn - 1], normals[yn - 1], normals[zn - 1]} ));
    289e:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
    28a5:	00 
    28a6:	c5 fa 10 69 04       	vmovss 0x4(%rcx),%xmm5
    28ab:	c5 fa 10 01          	vmovss (%rcx),%xmm0
    28af:	48 8d 44 40 fd       	lea    -0x3(%rax,%rax,2),%rax
    28b4:	c5 fa 11 6c 24 34    	vmovss %xmm5,0x34(%rsp)
    28ba:	c4 62 79 b9 c8       	vfmadd231ss %xmm0,%xmm0,%xmm9
    28bf:	c5 fa 10 61 08       	vmovss 0x8(%rcx),%xmm4
    28c4:	49 8d 14 84          	lea    (%r12,%rax,4),%rdx
    28c8:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    28cf:	00 
    28d0:	c5 fa 11 44 24 38    	vmovss %xmm0,0x38(%rsp)
    28d6:	c5 78 29 c8          	vmovaps %xmm9,%xmm0
    28da:	c5 fa 11 64 24 20    	vmovss %xmm4,0x20(%rsp)
    28e0:	c5 7a 10 4c 24 34    	vmovss 0x34(%rsp),%xmm9
    28e6:	48 8d 44 40 fd       	lea    -0x3(%rax,%rax,2),%rax
    28eb:	c4 42 79 99 c9       	vfmadd132ss %xmm9,%xmm0,%xmm9
    28f0:	c5 78 29 c8          	vmovaps %xmm9,%xmm0
    28f4:	c5 7a 10 4c 24 20    	vmovss 0x20(%rsp),%xmm9
    28fa:	49 8d 04 84          	lea    (%r12,%rax,4),%rax
    28fe:	c5 fa 10 2a          	vmovss (%rdx),%xmm5
    2902:	c4 42 79 99 c9       	vfmadd132ss %xmm9,%xmm0,%xmm9
    return sqrt( square_of_length() );
    2907:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    290b:	c5 fa 11 6c 24 28    	vmovss %xmm5,0x28(%rsp)
    2911:	c5 fa 10 5a 04       	vmovss 0x4(%rdx),%xmm3
    2916:	c5 7a 10 62 08       	vmovss 0x8(%rdx),%xmm12
    291b:	c4 c1 7a 5a c1       	vcvtss2sd %xmm9,%xmm0,%xmm0
    2920:	c4 41 31 57 c9       	vxorpd %xmm9,%xmm9,%xmm9
    2925:	c5 fa 10 20          	vmovss (%rax),%xmm4
    2929:	c5 fa 10 68 04       	vmovss 0x4(%rax),%xmm5
    292e:	c5 79 2e c8          	vucomisd %xmm0,%xmm9
    2932:	c5 fa 10 50 08       	vmovss 0x8(%rax),%xmm2
    2937:	0f 87 45 06 00 00    	ja     2f82 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xd22>
      square_of_length += ( this->x[i] * this->x[i] );
    293d:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    2941:	c5 7a 10 4c 24 28    	vmovss 0x28(%rsp),%xmm9
    2947:	c4 42 79 99 c9       	vfmadd132ss %xmm9,%xmm0,%xmm9
    294c:	c5 78 29 c8          	vmovaps %xmm9,%xmm0
    2950:	c4 41 31 57 c9       	vxorpd %xmm9,%xmm9,%xmm9
    2955:	c4 e2 61 b9 c3       	vfmadd231ss %xmm3,%xmm3,%xmm0
    295a:	c4 c2 19 b9 c4       	vfmadd231ss %xmm12,%xmm12,%xmm0
    return sqrt( square_of_length() );
    295f:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
    2963:	c5 79 2e c8          	vucomisd %xmm0,%xmm9
    2967:	0f 87 cf 05 00 00    	ja     2f3c <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xcdc>
      square_of_length += ( this->x[i] * this->x[i] );
    296d:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    2971:	c4 e2 59 b9 c4       	vfmadd231ss %xmm4,%xmm4,%xmm0
    2976:	c4 e2 51 b9 c5       	vfmadd231ss %xmm5,%xmm5,%xmm0
    297b:	c4 e2 69 b9 c2       	vfmadd231ss %xmm2,%xmm2,%xmm0
    return sqrt( square_of_length() );
    2980:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
    2984:	c5 79 2e c8          	vucomisd %xmm0,%xmm9
    2988:	0f 87 68 05 00 00    	ja     2ef6 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc96>
    298e:	c4 41 70 14 db       	vunpcklps %xmm11,%xmm1,%xmm11
    2993:	c5 fa 10 4c 24 28    	vmovss 0x28(%rsp),%xmm1
    2999:	c4 c1 48 14 c5       	vunpcklps %xmm13,%xmm6,%xmm0
	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
    299e:	49 8b 55 08          	mov    0x8(%r13),%rdx
    29a2:	c4 41 00 14 c0       	vunpcklps %xmm8,%xmm15,%xmm8
    29a7:	49 3b 55 10          	cmp    0x10(%r13),%rdx
    29ab:	c4 41 28 14 d6       	vunpcklps %xmm14,%xmm10,%xmm10
    29b0:	c5 fa 11 ac 24 50 01 	vmovss %xmm5,0x150(%rsp)
    29b7:	00 00 
    29b9:	c5 fa 10 74 24 34    	vmovss 0x34(%rsp),%xmm6
    29bf:	c4 41 38 16 db       	vmovlhps %xmm11,%xmm8,%xmm11
    29c4:	c5 f0 14 db          	vunpcklps %xmm3,%xmm1,%xmm3
    29c8:	c4 c1 78 16 c2       	vmovlhps %xmm10,%xmm0,%xmm0
    29cd:	c5 fa 11 94 24 54 01 	vmovss %xmm2,0x154(%rsp)
    29d4:	00 00 
    29d6:	c4 e3 49 21 4c 24 20 	vinsertps $0x10,0x20(%rsp),%xmm6,%xmm1
    29dd:	10 
    29de:	c4 c3 7d 18 c3 01    	vinsertf128 $0x1,%xmm11,%ymm0,%ymm0
    29e4:	c5 18 14 e4          	vunpcklps %xmm4,%xmm12,%xmm12
    29e8:	c5 f8 29 84 24 10 01 	vmovaps %xmm0,0x110(%rsp)
    29ef:	00 00 
    29f1:	c4 e3 7d 19 84 24 20 	vextractf128 $0x1,%ymm0,0x120(%rsp)
    29f8:	01 00 00 01 
    29fc:	c4 c1 60 16 dc       	vmovlhps %xmm12,%xmm3,%xmm3
    2a01:	c4 e3 41 21 44 24 38 	vinsertps $0x10,0x38(%rsp),%xmm7,%xmm0
    2a08:	10 
    2a09:	c5 f8 16 c1          	vmovlhps %xmm1,%xmm0,%xmm0
    2a0d:	c4 e3 7d 18 c3 01    	vinsertf128 $0x1,%xmm3,%ymm0,%ymm0
    2a13:	c5 f8 29 84 24 30 01 	vmovaps %xmm0,0x130(%rsp)
    2a1a:	00 00 
    2a1c:	c4 e3 7d 19 84 24 40 	vextractf128 $0x1,%ymm0,0x140(%rsp)
    2a23:	01 00 00 01 
    2a27:	0f 84 77 03 00 00    	je     2da4 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xb44>
	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
    2a2d:	48 85 d2             	test   %rdx,%rdx
    2a30:	74 6b                	je     2a9d <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x83d>
    2a32:	4c 8b 8c 24 10 01 00 	mov    0x110(%rsp),%r9
    2a39:	00 
    2a3a:	4c 8b 94 24 18 01 00 	mov    0x118(%rsp),%r10
    2a41:	00 
    2a42:	4c 89 0a             	mov    %r9,(%rdx)
    2a45:	4c 89 52 08          	mov    %r10,0x8(%rdx)
    2a49:	4c 8b 8c 24 20 01 00 	mov    0x120(%rsp),%r9
    2a50:	00 
    2a51:	4c 8b 94 24 28 01 00 	mov    0x128(%rsp),%r10
    2a58:	00 
    2a59:	4c 89 4a 10          	mov    %r9,0x10(%rdx)
    2a5d:	4c 89 52 18          	mov    %r10,0x18(%rdx)
    2a61:	4c 8b 8c 24 30 01 00 	mov    0x130(%rsp),%r9
    2a68:	00 
    2a69:	4c 8b 94 24 38 01 00 	mov    0x138(%rsp),%r10
    2a70:	00 
    2a71:	4c 89 4a 20          	mov    %r9,0x20(%rdx)
    2a75:	4c 89 52 28          	mov    %r10,0x28(%rdx)
    2a79:	4c 8b 8c 24 40 01 00 	mov    0x140(%rsp),%r9
    2a80:	00 
    2a81:	4c 8b 94 24 48 01 00 	mov    0x148(%rsp),%r10
    2a88:	00 
    2a89:	4c 89 4a 30          	mov    %r9,0x30(%rdx)
    2a8d:	4c 89 52 38          	mov    %r10,0x38(%rdx)
    2a91:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
    2a98:	00 
    2a99:	48 89 42 40          	mov    %rax,0x40(%rdx)
	    ++this->_M_impl._M_finish;
    2a9d:	48 83 c2 48          	add    $0x48,%rdx
    2aa1:	49 89 55 08          	mov    %rdx,0x8(%r13)
    2aa5:	c5 f8 77             	vzeroupper 
       no_of_triangles++;
    2aa8:	48 83 c5 01          	add    $0x1,%rbp
    2aac:	e9 77 f8 ff ff       	jmpq   2328 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc8>
      difference.x[i] = this->x[i] - subtract.x[i];
    2ab1:	c4 c1 22 5c e5       	vsubss %xmm13,%xmm11,%xmm4
    2ab6:	c4 41 3a 5c e2       	vsubss %xmm10,%xmm8,%xmm12
    2abb:	c5 f2 5c ee          	vsubss %xmm6,%xmm1,%xmm5
    2abf:	c4 c1 42 5c da       	vsubss %xmm10,%xmm7,%xmm3
    2ac4:	c4 c1 02 5c c5       	vsubss %xmm13,%xmm15,%xmm0
  cross[0] = v1[1] * v2[2] - v1[2] * v2[1];
    2ac9:	c5 9a 59 d4          	vmulss %xmm4,%xmm12,%xmm2
      difference.x[i] = this->x[i] - subtract.x[i];
    2acd:	c5 0a 5c ce          	vsubss %xmm6,%xmm14,%xmm9
  cross[0] = v1[1] * v2[2] - v1[2] * v2[1];
    2ad1:	c4 e2 79 bb d3       	vfmsub231ss %xmm3,%xmm0,%xmm2
  cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
    2ad6:	c5 fa 59 c5          	vmulss %xmm5,%xmm0,%xmm0
  cross[1] = v1[2] * v2[0] - v1[0] * v2[2];
    2ada:	c5 b2 59 db          	vmulss %xmm3,%xmm9,%xmm3
  cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
    2ade:	c4 62 79 9b cc       	vfmsub132ss %xmm4,%xmm0,%xmm9
      square_of_length += ( this->x[i] * this->x[i] );
    2ae3:	c5 f8 28 c2          	vmovaps %xmm2,%xmm0
    2ae7:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  cross[1] = v1[2] * v2[0] - v1[0] * v2[2];
    2aeb:	c4 62 61 9b e5       	vfmsub132ss %xmm5,%xmm3,%xmm12
      square_of_length += ( this->x[i] * this->x[i] );
    2af0:	c4 e2 69 a9 05 30 03 	vfmadd213ss 0x330(%rip),%xmm2,%xmm0        # 2e29 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xbc9>
    2af7:	00 00 
    2af9:	c4 c2 19 b9 c4       	vfmadd231ss %xmm12,%xmm12,%xmm0
    2afe:	c4 c2 31 b9 c1       	vfmadd231ss %xmm9,%xmm9,%xmm0
    return sqrt( square_of_length() );
    2b03:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
    2b07:	c5 f9 2e e0          	vucomisd %xmm0,%xmm4
    2b0b:	c5 e3 51 d8          	vsqrtsd %xmm0,%xmm3,%xmm3
    2b0f:	0f 87 b3 03 00 00    	ja     2ec8 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc68>
    2b15:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
    2b19:	49 8b 55 08          	mov    0x8(%r13),%rdx
    2b1d:	49 3b 55 10          	cmp    0x10(%r13),%rdx
    2b21:	c5 fa 11 b4 24 c0 00 	vmovss %xmm6,0xc0(%rsp)
    2b28:	00 00 
    2b2a:	c5 7a 11 ac 24 c4 00 	vmovss %xmm13,0xc4(%rsp)
    2b31:	00 00 
    2b33:	c5 fb 5a c3          	vcvtsd2ss %xmm3,%xmm0,%xmm0
       this->x[i] /= length;
    2b37:	c5 ea 5e d0          	vdivss %xmm0,%xmm2,%xmm2
    2b3b:	c5 7a 11 94 24 c8 00 	vmovss %xmm10,0xc8(%rsp)
    2b42:	00 00 
    2b44:	c5 7a 11 b4 24 cc 00 	vmovss %xmm14,0xcc(%rsp)
    2b4b:	00 00 
    2b4d:	c5 7a 11 bc 24 d0 00 	vmovss %xmm15,0xd0(%rsp)
    2b54:	00 00 
    2b56:	c5 7a 11 84 24 d4 00 	vmovss %xmm8,0xd4(%rsp)
    2b5d:	00 00 
    2b5f:	c5 fa 11 8c 24 d8 00 	vmovss %xmm1,0xd8(%rsp)
    2b66:	00 00 
    2b68:	c5 7a 11 9c 24 dc 00 	vmovss %xmm11,0xdc(%rsp)
    2b6f:	00 00 
    2b71:	c5 fa 11 bc 24 e0 00 	vmovss %xmm7,0xe0(%rsp)
    2b78:	00 00 
    2b7a:	c5 1a 5e e0          	vdivss %xmm0,%xmm12,%xmm12
    2b7e:	c5 fa 11 94 24 e4 00 	vmovss %xmm2,0xe4(%rsp)
    2b85:	00 00 
    2b87:	c5 fa 11 94 24 f0 00 	vmovss %xmm2,0xf0(%rsp)
    2b8e:	00 00 
    2b90:	c5 fa 11 94 24 fc 00 	vmovss %xmm2,0xfc(%rsp)
    2b97:	00 00 
    2b99:	c5 32 5e c8          	vdivss %xmm0,%xmm9,%xmm9
    2b9d:	c5 7a 11 a4 24 e8 00 	vmovss %xmm12,0xe8(%rsp)
    2ba4:	00 00 
    2ba6:	c5 7a 11 a4 24 f4 00 	vmovss %xmm12,0xf4(%rsp)
    2bad:	00 00 
    2baf:	c5 7a 11 a4 24 00 01 	vmovss %xmm12,0x100(%rsp)
    2bb6:	00 00 
    2bb8:	c5 7a 11 8c 24 ec 00 	vmovss %xmm9,0xec(%rsp)
    2bbf:	00 00 
    2bc1:	c5 7a 11 8c 24 f8 00 	vmovss %xmm9,0xf8(%rsp)
    2bc8:	00 00 
    2bca:	c5 7a 11 8c 24 04 01 	vmovss %xmm9,0x104(%rsp)
    2bd1:	00 00 
    2bd3:	0f 84 e3 01 00 00    	je     2dbc <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xb5c>
    2bd9:	48 85 d2             	test   %rdx,%rdx
    2bdc:	74 6b                	je     2c49 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x9e9>
    2bde:	4c 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%r9
    2be5:	00 
    2be6:	4c 8b 94 24 c8 00 00 	mov    0xc8(%rsp),%r10
    2bed:	00 
    2bee:	4c 89 0a             	mov    %r9,(%rdx)
    2bf1:	4c 89 52 08          	mov    %r10,0x8(%rdx)
    2bf5:	4c 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%r9
    2bfc:	00 
    2bfd:	4c 8b 94 24 d8 00 00 	mov    0xd8(%rsp),%r10
    2c04:	00 
    2c05:	4c 89 4a 10          	mov    %r9,0x10(%rdx)
    2c09:	4c 89 52 18          	mov    %r10,0x18(%rdx)
    2c0d:	4c 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%r9
    2c14:	00 
    2c15:	4c 8b 94 24 e8 00 00 	mov    0xe8(%rsp),%r10
    2c1c:	00 
    2c1d:	4c 89 4a 20          	mov    %r9,0x20(%rdx)
    2c21:	4c 89 52 28          	mov    %r10,0x28(%rdx)
    2c25:	4c 8b 8c 24 f0 00 00 	mov    0xf0(%rsp),%r9
    2c2c:	00 
    2c2d:	4c 8b 94 24 f8 00 00 	mov    0xf8(%rsp),%r10
    2c34:	00 
    2c35:	4c 89 4a 30          	mov    %r9,0x30(%rdx)
    2c39:	4c 89 52 38          	mov    %r10,0x38(%rdx)
    2c3d:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
    2c44:	00 
    2c45:	48 89 42 40          	mov    %rax,0x40(%rdx)
	    ++this->_M_impl._M_finish;
    2c49:	48 83 c2 48          	add    $0x48,%rdx
    2c4d:	49 89 55 08          	mov    %rdx,0x8(%r13)
    2c51:	e9 52 fe ff ff       	jmpq   2aa8 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x848>
    2c56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2c5d:	00 00 00 
       if (in.peek() == '/') in.ignore(); // no texture coordinates supported
    2c60:	48 89 d9             	mov    %rbx,%rcx
    2c63:	e8 00 00 00 00       	callq  2c68 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xa08>
    2c68:	e9 6c fb ff ff       	jmpq   27d9 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x579>
    2c6d:	0f 1f 00             	nopl   (%rax)
       if (in.peek() == '/') { in.ignore(); in >> yn;}
    2c70:	48 89 d9             	mov    %rbx,%rcx
    2c73:	e8 00 00 00 00       	callq  2c78 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xa18>
    2c78:	48 8d 94 24 80 00 00 	lea    0x80(%rsp),%rdx
    2c7f:	00 
    2c80:	48 89 d9             	mov    %rbx,%rcx
    2c83:	e8 00 00 00 00       	callq  2c88 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xa28>
    2c88:	e9 2e fb ff ff       	jmpq   27bb <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x55b>
    2c8d:	0f 1f 00             	nopl   (%rax)
       if (in.peek() == '/') in.ignore(); // no texture coordinates supported
    2c90:	48 89 d9             	mov    %rbx,%rcx
    2c93:	e8 00 00 00 00       	callq  2c98 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xa38>
    2c98:	e9 0d fb ff ff       	jmpq   27aa <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x54a>
    2c9d:	0f 1f 00             	nopl   (%rax)
       if (in.peek() == '/') { in.ignore(); in >> xn;}
    2ca0:	48 89 d9             	mov    %rbx,%rcx
    2ca3:	e8 00 00 00 00       	callq  2ca8 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xa48>
    2ca8:	48 8d 54 24 78       	lea    0x78(%rsp),%rdx
    2cad:	48 89 d9             	mov    %rbx,%rcx
    2cb0:	e8 00 00 00 00       	callq  2cb5 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xa55>
    2cb5:	e9 d2 fa ff ff       	jmpq   278c <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x52c>
    2cba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
       if (in.peek() == '/') in.ignore(); // no texture coordinates supported
    2cc0:	48 89 d9             	mov    %rbx,%rcx
    2cc3:	e8 00 00 00 00       	callq  2cc8 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xa68>
    2cc8:	e9 ae fa ff ff       	jmpq   277b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x51b>
    2ccd:	0f 1f 00             	nopl   (%rax)
      { return _M_extract(__f); }
    2cd0:	48 8d 54 24 78       	lea    0x78(%rsp),%rdx
    2cd5:	48 89 d9             	mov    %rbx,%rcx
    2cd8:	e8 00 00 00 00       	callq  2cdd <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xa7d>
    2cdd:	48 8d 94 24 80 00 00 	lea    0x80(%rsp),%rdx
    2ce4:	00 
    2ce5:	48 89 d9             	mov    %rbx,%rcx
    2ce8:	e8 00 00 00 00       	callq  2ced <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xa8d>
    2ced:	48 8d 94 24 88 00 00 	lea    0x88(%rsp),%rdx
    2cf4:	00 
    2cf5:	48 89 d9             	mov    %rbx,%rcx
    2cf8:	e8 00 00 00 00       	callq  2cfd <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xa9d>
	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
    2cfd:	48 8b 94 24 a8 00 00 	mov    0xa8(%rsp),%rdx
    2d04:	00 
    2d05:	48 3b 94 24 b0 00 00 	cmp    0xb0(%rsp),%rdx
    2d0c:	00 
       vertice = Vector<FLOAT, 3>( {x, y, z} );
    2d0d:	c5 fa 10 44 24 78    	vmovss 0x78(%rsp),%xmm0
    2d13:	c5 fa 11 84 24 94 00 	vmovss %xmm0,0x94(%rsp)
    2d1a:	00 00 
    2d1c:	c5 fa 10 84 24 80 00 	vmovss 0x80(%rsp),%xmm0
    2d23:	00 00 
    2d25:	c5 fa 11 84 24 98 00 	vmovss %xmm0,0x98(%rsp)
    2d2c:	00 00 
    2d2e:	c5 fa 10 84 24 88 00 	vmovss 0x88(%rsp),%xmm0
    2d35:	00 00 
    2d37:	c5 fa 11 84 24 9c 00 	vmovss %xmm0,0x9c(%rsp)
    2d3e:	00 00 
    2d40:	74 48                	je     2d8a <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xb2a>
    2d42:	48 85 d2             	test   %rdx,%rdx
    2d45:	74 15                	je     2d5c <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xafc>
    2d47:	48 8b 84 24 94 00 00 	mov    0x94(%rsp),%rax
    2d4e:	00 
    2d4f:	48 89 02             	mov    %rax,(%rdx)
    2d52:	8b 84 24 9c 00 00 00 	mov    0x9c(%rsp),%eax
    2d59:	89 42 08             	mov    %eax,0x8(%rdx)
	    ++this->_M_impl._M_finish;
    2d5c:	48 83 c2 0c          	add    $0xc,%rdx
    2d60:	48 89 94 24 a8 00 00 	mov    %rdx,0xa8(%rsp)
    2d67:	00 
    2d68:	e9 bb f5 ff ff       	jmpq   2328 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc8>
       if (in.peek() == '/') { in.ignore(); in >> zn;}
    2d6d:	48 89 d9             	mov    %rbx,%rcx
    2d70:	e8 00 00 00 00       	callq  2d75 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xb15>
      { return _M_extract(__n); }
    2d75:	48 8d 94 24 88 00 00 	lea    0x88(%rsp),%rdx
    2d7c:	00 
    2d7d:	48 89 d9             	mov    %rbx,%rcx
    2d80:	e8 00 00 00 00       	callq  2d85 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xb25>
    2d85:	e9 60 fa ff ff       	jmpq   27ea <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x58a>
	  }
	else
	  _M_realloc_insert(end(), __x);
    2d8a:	48 8d 8c 24 a0 00 00 	lea    0xa0(%rsp),%rcx
    2d91:	00 
    2d92:	4c 8d 84 24 94 00 00 	lea    0x94(%rsp),%r8
    2d99:	00 
    2d9a:	e8 00 00 00 00       	callq  2d9f <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xb3f>
    2d9f:	e9 84 f5 ff ff       	jmpq   2328 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc8>
    2da4:	4c 8d 84 24 10 01 00 	lea    0x110(%rsp),%r8
    2dab:	00 
    2dac:	4c 89 e9             	mov    %r13,%rcx
    2daf:	c5 f8 77             	vzeroupper 
    2db2:	e8 00 00 00 00       	callq  2db7 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xb57>
    2db7:	e9 ec fc ff ff       	jmpq   2aa8 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x848>
    2dbc:	4c 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%r8
    2dc3:	00 
    2dc4:	4c 89 e9             	mov    %r13,%rcx
    2dc7:	e8 00 00 00 00       	callq  2dcc <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xb6c>
    2dcc:	e9 d7 fc ff ff       	jmpq   2aa8 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x848>
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
    2dd1:	4c 89 f6             	mov    %r14,%rsi
    2dd4:	48 b9 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rcx
    2ddb:	aa aa aa 
    2dde:	4c 29 e6             	sub    %r12,%rsi
    2de1:	48 89 f0             	mov    %rsi,%rax
    2de4:	48 c1 f8 02          	sar    $0x2,%rax
    2de8:	48 0f af c1          	imul   %rcx,%rax
      if (__a < __b)
    2dec:	48 85 c0             	test   %rax,%rax
    2def:	0f 84 c0 00 00 00    	je     2eb5 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc55>
      _M_check_len(size_type __n, const char* __s) const
      {
	if (max_size() - size() < __n)
	  __throw_length_error(__N(__s));

	const size_type __len = size() + std::max(size(), __n);
    2df5:	48 8d 0c 00          	lea    (%rax,%rax,1),%rcx
	return (__len < size() || __len > max_size()) ? max_size() : __len;
    2df9:	48 39 c8             	cmp    %rcx,%rax
	const size_type __len = size() + std::max(size(), __n);
    2dfc:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
	return (__len < size() || __len > max_size()) ? max_size() : __len;
    2e01:	0f 86 00 02 00 00    	jbe    3007 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xda7>
    2e07:	48 c7 44 24 20 fc ff 	movq   $0xfffffffffffffffc,0x20(%rsp)
    2e0e:	ff ff 
    2e10:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
    2e15:	e8 00 00 00 00       	callq  2e1a <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xbba>
	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
    2e1a:	48 01 c6             	add    %rax,%rsi
    2e1d:	74 0e                	je     2e2d <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xbcd>
    2e1f:	c5 7a 11 06          	vmovss %xmm8,(%rsi)
    2e23:	c5 fa 11 7e 04       	vmovss %xmm7,0x4(%rsi)
    2e28:	c5 fa 11 76 08       	vmovss %xmm6,0x8(%rsi)
		      _ForwardIterator __result)
        {
	  _ForwardIterator __cur = __result;
	  __try
	    {
	      for (; __first != __last; ++__first, (void)++__cur)
    2e2d:	4d 39 e6             	cmp    %r12,%r14
    2e30:	0f 84 c9 01 00 00    	je     2fff <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xd9f>
    2e36:	49 8d 54 24 0c       	lea    0xc(%r12),%rdx
    2e3b:	48 be ab aa aa aa aa 	movabs $0x2aaaaaaaaaaaaaab,%rsi
    2e42:	aa aa 2a 
    2e45:	4c 89 e1             	mov    %r12,%rcx
    2e48:	49 29 d6             	sub    %rdx,%r14
    2e4b:	4c 89 f2             	mov    %r14,%rdx
    2e4e:	48 c1 ea 02          	shr    $0x2,%rdx
    2e52:	48 0f af d6          	imul   %rsi,%rdx
    2e56:	4c 21 fa             	and    %r15,%rdx
    2e59:	48 8d 54 52 03       	lea    0x3(%rdx,%rdx,2),%rdx
    2e5e:	48 8d 34 90          	lea    (%rax,%rdx,4),%rsi
    2e62:	48 89 c2             	mov    %rax,%rdx
   */
#if __cplusplus >= 201103L
  template<typename _T1, typename... _Args>
    inline void
    _Construct(_T1* __p, _Args&&... __args)
    { ::new(static_cast<void*>(__p)) _T1(std::forward<_Args>(__args)...); }
    2e65:	48 85 d2             	test   %rdx,%rdx
    2e68:	0f 84 d7 01 00 00    	je     3045 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xde5>
    2e6e:	4c 8b 01             	mov    (%rcx),%r8
    2e71:	48 83 c2 0c          	add    $0xc,%rdx
    2e75:	48 83 c1 0c          	add    $0xc,%rcx
    2e79:	4c 89 42 f4          	mov    %r8,-0xc(%rdx)
    2e7d:	44 8b 41 fc          	mov    -0x4(%rcx),%r8d
    2e81:	44 89 42 fc          	mov    %r8d,-0x4(%rdx)
    2e85:	48 39 f2             	cmp    %rsi,%rdx
    2e88:	75 db                	jne    2e65 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc05>
	  __new_finish
	    = std::__uninitialized_move_if_noexcept_a
	    (this->_M_impl._M_start, __position.base(),
	     __new_start, _M_get_Tp_allocator());

	  ++__new_finish;
    2e8a:	48 83 c6 0c          	add    $0xc,%rsi
	if (__p)
    2e8e:	4d 85 e4             	test   %r12,%r12
    2e91:	74 12                	je     2ea5 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc45>
	::operator delete(__p);
    2e93:	4c 89 e1             	mov    %r12,%rcx
    2e96:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    2e9b:	e8 00 00 00 00       	callq  2ea0 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc40>
    2ea0:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
      _M_deallocate(this->_M_impl._M_start,
		    this->_M_impl._M_end_of_storage
		    - this->_M_impl._M_start);
      this->_M_impl._M_start = __new_start;
      this->_M_impl._M_finish = __new_finish;
      this->_M_impl._M_end_of_storage = __new_start + __len;
    2ea5:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
      this->_M_impl._M_start = __new_start;
    2eaa:	49 89 c4             	mov    %rax,%r12
      this->_M_impl._M_end_of_storage = __new_start + __len;
    2ead:	49 01 c6             	add    %rax,%r14
    2eb0:	e9 73 f4 ff ff       	jmpq   2328 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc8>
    2eb5:	48 c7 44 24 20 0c 00 	movq   $0xc,0x20(%rsp)
    2ebc:	00 00 
    2ebe:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
    2ec3:	e9 4d ff ff ff       	jmpq   2e15 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xbb5>
    2ec8:	c5 fa 11 4c 24 34    	vmovss %xmm1,0x34(%rsp)
    2ece:	c5 fb 11 5c 24 28    	vmovsd %xmm3,0x28(%rsp)
    2ed4:	c5 fa 11 54 24 20    	vmovss %xmm2,0x20(%rsp)
    return sqrt( square_of_length() );
    2eda:	e8 00 00 00 00       	callq  2edf <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc7f>
    2edf:	c5 fa 10 4c 24 34    	vmovss 0x34(%rsp),%xmm1
    2ee5:	c5 fb 10 5c 24 28    	vmovsd 0x28(%rsp),%xmm3
    2eeb:	c5 fa 10 54 24 20    	vmovss 0x20(%rsp),%xmm2
    2ef1:	e9 1f fc ff ff       	jmpq   2b15 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8b5>
    2ef6:	c5 fa 11 5c 24 4c    	vmovss %xmm3,0x4c(%rsp)
    2efc:	c5 fa 11 6c 24 48    	vmovss %xmm5,0x48(%rsp)
    2f02:	c5 fa 11 64 24 44    	vmovss %xmm4,0x44(%rsp)
    2f08:	c5 fa 11 54 24 40    	vmovss %xmm2,0x40(%rsp)
    2f0e:	c5 fa 11 4c 24 3c    	vmovss %xmm1,0x3c(%rsp)
    2f14:	e8 00 00 00 00       	callq  2f19 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xcb9>
    2f19:	c5 fa 10 5c 24 4c    	vmovss 0x4c(%rsp),%xmm3
    2f1f:	c5 fa 10 6c 24 48    	vmovss 0x48(%rsp),%xmm5
    2f25:	c5 fa 10 64 24 44    	vmovss 0x44(%rsp),%xmm4
    2f2b:	c5 fa 10 54 24 40    	vmovss 0x40(%rsp),%xmm2
    2f31:	c5 fa 10 4c 24 3c    	vmovss 0x3c(%rsp),%xmm1
    2f37:	e9 52 fa ff ff       	jmpq   298e <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x72e>
    2f3c:	c5 fa 11 5c 24 4c    	vmovss %xmm3,0x4c(%rsp)
    2f42:	c5 fa 11 6c 24 48    	vmovss %xmm5,0x48(%rsp)
    2f48:	c5 fa 11 64 24 44    	vmovss %xmm4,0x44(%rsp)
    2f4e:	c5 fa 11 54 24 40    	vmovss %xmm2,0x40(%rsp)
    2f54:	c5 fa 11 4c 24 3c    	vmovss %xmm1,0x3c(%rsp)
    2f5a:	e8 00 00 00 00       	callq  2f5f <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xcff>
    2f5f:	c5 fa 10 5c 24 4c    	vmovss 0x4c(%rsp),%xmm3
    2f65:	c5 fa 10 6c 24 48    	vmovss 0x48(%rsp),%xmm5
    2f6b:	c5 fa 10 64 24 44    	vmovss 0x44(%rsp),%xmm4
    2f71:	c5 fa 10 54 24 40    	vmovss 0x40(%rsp),%xmm2
    2f77:	c5 fa 10 4c 24 3c    	vmovss 0x3c(%rsp),%xmm1
    2f7d:	e9 eb f9 ff ff       	jmpq   296d <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x70d>
    2f82:	c5 fa 11 5c 24 4c    	vmovss %xmm3,0x4c(%rsp)
    2f88:	c5 fa 11 6c 24 48    	vmovss %xmm5,0x48(%rsp)
    2f8e:	c5 fa 11 64 24 44    	vmovss %xmm4,0x44(%rsp)
    2f94:	c5 fa 11 54 24 40    	vmovss %xmm2,0x40(%rsp)
    2f9a:	c5 fa 11 4c 24 3c    	vmovss %xmm1,0x3c(%rsp)
    2fa0:	e8 00 00 00 00       	callq  2fa5 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xd45>
    2fa5:	c5 fa 10 5c 24 4c    	vmovss 0x4c(%rsp),%xmm3
    2fab:	c5 fa 10 6c 24 48    	vmovss 0x48(%rsp),%xmm5
    2fb1:	c5 fa 10 64 24 44    	vmovss 0x44(%rsp),%xmm4
    2fb7:	c5 fa 10 54 24 40    	vmovss 0x40(%rsp),%xmm2
    2fbd:	c5 fa 10 4c 24 3c    	vmovss 0x3c(%rsp),%xmm1
    2fc3:	e9 75 f9 ff ff       	jmpq   293d <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x6dd>
	__throw_bad_cast();
    2fc8:	e8 00 00 00 00       	callq  2fcd <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xd6d>
    2fcd:	4d 85 e4             	test   %r12,%r12
    2fd0:	48 89 c3             	mov    %rax,%rbx
    2fd3:	74 6b                	je     3040 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xde0>
    2fd5:	4c 89 e1             	mov    %r12,%rcx
    2fd8:	c5 f8 77             	vzeroupper 
    2fdb:	e8 00 00 00 00       	callq  2fe0 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xd80>
      { std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
    2fe0:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
    2fe7:	00 
	if (__p)
    2fe8:	48 85 c9             	test   %rcx,%rcx
    2feb:	74 05                	je     2ff2 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xd92>
    2fed:	e8 00 00 00 00       	callq  2ff2 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xd92>
    2ff2:	48 89 d9             	mov    %rbx,%rcx
    2ff5:	e8 00 00 00 00       	callq  2ffa <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xd9a>
    2ffa:	e8 00 00 00 00       	callq  2fff <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xd9f>
    2fff:	48 89 c6             	mov    %rax,%rsi
    3002:	e9 83 fe ff ff       	jmpq   2e8a <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc2a>
	return (__len < size() || __len > max_size()) ? max_size() : __len;
    3007:	48 b8 55 55 55 55 55 	movabs $0x1555555555555555,%rax
    300e:	55 55 15 
    3011:	48 39 c1             	cmp    %rax,%rcx
    3014:	0f 87 ed fd ff ff    	ja     2e07 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xba7>
	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
    301a:	31 c0                	xor    %eax,%eax
    301c:	48 85 c9             	test   %rcx,%rcx
    301f:	0f 84 f5 fd ff ff    	je     2e1a <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xbba>
    3025:	48 6b c1 0c          	imul   $0xc,%rcx,%rax
    3029:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    302e:	48 89 c1             	mov    %rax,%rcx
    3031:	e9 df fd ff ff       	jmpq   2e15 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xbb5>
    3036:	e8 00 00 00 00       	callq  303b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xddb>
    303b:	e8 00 00 00 00       	callq  3040 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xde0>
    3040:	c5 f8 77             	vzeroupper 
    3043:	eb 9b                	jmp    2fe0 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xd80>
    3045:	48 83 c1 0c          	add    $0xc,%rcx
    3049:	48 83 fe 0c          	cmp    $0xc,%rsi
    304d:	0f 84 37 fe ff ff    	je     2e8a <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc2a>
    3053:	ba 0c 00 00 00       	mov    $0xc,%edx
    3058:	e9 11 fe ff ff       	jmpq   2e6e <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc0e>
    305d:	90                   	nop
    305e:	90                   	nop
    305f:	90                   	nop

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

Disassembly of section .text.unlikely:

0000000000000000 <_ZNSs4_Rep10_M_disposeERKSaIcE.part.1>:
   0:	83 c8 ff             	or     $0xffffffff,%eax
   3:	f0 0f c1 41 10       	lock xadd %eax,0x10(%rcx)
	      if (__gnu_cxx::__exchange_and_add_dispatch(&this->_M_refcount,
   8:	85 c0                	test   %eax,%eax
   a:	7f 05                	jg     11 <_ZNSs4_Rep10_M_disposeERKSaIcE.part.1+0x11>
		  _M_destroy(__a);
   c:	e9 00 00 00 00       	jmpq   11 <_ZNSs4_Rep10_M_disposeERKSaIcE.part.1+0x11>
	}  // XXX MT
  11:	c3                   	retq   
  12:	90                   	nop
  13:	90                   	nop
  14:	90                   	nop
  15:	90                   	nop
  16:	90                   	nop
  17:	90                   	nop
  18:	90                   	nop
  19:	90                   	nop
  1a:	90                   	nop
  1b:	90                   	nop
  1c:	90                   	nop
  1d:	90                   	nop
  1e:	90                   	nop
  1f:	90                   	nop

Disassembly of section .text$_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen:

0000000000000000 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen>:
  Camera(Vector<FLOAT, 3> eye, Vector<FLOAT, 3> center, Vector<FLOAT, 3> up, Vector<FLOAT, 3> right, Screen & screen )
   0:	53                   	push   %rbx
   1:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
   8:	c5 f8 29 74 24 50    	vmovaps %xmm6,0x50(%rsp)
   e:	c5 f8 29 7c 24 60    	vmovaps %xmm7,0x60(%rsp)
  14:	c5 78 29 44 24 70    	vmovaps %xmm8,0x70(%rsp)
  1a:	c5 78 29 8c 24 80 00 	vmovaps %xmm9,0x80(%rsp)
  21:	00 00 
  23:	c5 78 29 94 24 90 00 	vmovaps %xmm10,0x90(%rsp)
  2a:	00 00 
  2c:	c5 78 29 9c 24 a0 00 	vmovaps %xmm11,0xa0(%rsp)
  33:	00 00 
  35:	c5 78 29 a4 24 b0 00 	vmovaps %xmm12,0xb0(%rsp)
  3c:	00 00 
  3e:	c5 78 29 ac 24 c0 00 	vmovaps %xmm13,0xc0(%rsp)
  45:	00 00 
  47:	c5 78 29 b4 24 d0 00 	vmovaps %xmm14,0xd0(%rsp)
  4e:	00 00 
  50:	c5 78 29 bc 24 e0 00 	vmovaps %xmm15,0xe0(%rsp)
  57:	00 00 
      square_of_length += ( this->x[i] * this->x[i] );
  59:	c5 c8 57 f6          	vxorps %xmm6,%xmm6,%xmm6
  5d:	c4 41 29 57 d2       	vxorpd %xmm10,%xmm10,%xmm10
  62:	c4 41 7a 10 39       	vmovss (%r9),%xmm15
  67:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  6e:	00 
  6f:	c5 78 29 f8          	vmovaps %xmm15,%xmm0
  73:	c4 41 7a 10 71 04    	vmovss 0x4(%r9),%xmm14
  79:	c4 41 7a 10 61 08    	vmovss 0x8(%r9),%xmm12
  7f:	48 8b 9c 24 28 01 00 	mov    0x128(%rsp),%rbx
  86:	00 
  87:	c4 c2 49 99 c7       	vfmadd132ss %xmm15,%xmm6,%xmm0
  8c:	c4 c2 09 b9 c6       	vfmadd231ss %xmm14,%xmm14,%xmm0
  91:	c4 c2 19 b9 c4       	vfmadd231ss %xmm12,%xmm12,%xmm0
    return sqrt( square_of_length() );
  96:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  9a:	c5 7a 10 08          	vmovss (%rax),%xmm9
  9e:	c5 79 2e d0          	vucomisd %xmm0,%xmm10
  a2:	c5 23 51 d8          	vsqrtsd %xmm0,%xmm11,%xmm11
  a6:	c5 7a 10 40 04       	vmovss 0x4(%rax),%xmm8
  ab:	c5 fa 10 78 08       	vmovss 0x8(%rax),%xmm7
  b0:	0f 87 48 02 00 00    	ja     2fe <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x2fe>
             2.0 * ( up.length() / screen.getHeight() ) ) {
  b6:	48 8b 43 08          	mov    0x8(%rbx),%rax
  ba:	c4 41 23 5a db       	vcvtsd2ss %xmm11,%xmm11,%xmm11
  bf:	48 85 c0             	test   %rax,%rax
  c2:	0f 88 f8 01 00 00    	js     2c0 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x2c0>
  c8:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  cc:	c4 e1 fa 2a c0       	vcvtsi2ss %rax,%xmm0,%xmm0
  d1:	c5 22 5e d8          	vdivss %xmm0,%xmm11,%xmm11
      square_of_length += ( this->x[i] * this->x[i] );
  d5:	c5 78 29 c8          	vmovaps %xmm9,%xmm0
  d9:	c4 c2 49 99 c1       	vfmadd132ss %xmm9,%xmm6,%xmm0
  de:	c4 c2 39 b9 c0       	vfmadd231ss %xmm8,%xmm8,%xmm0
  e3:	c4 e2 41 b9 c7       	vfmadd231ss %xmm7,%xmm7,%xmm0
    return sqrt( square_of_length() );
  e8:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  ec:	c5 79 2e d0          	vucomisd %xmm0,%xmm10
  f0:	c5 13 51 e8          	vsqrtsd %xmm0,%xmm13,%xmm13
  f4:	c4 41 22 58 db       	vaddss %xmm11,%xmm11,%xmm11
  f9:	0f 87 27 02 00 00    	ja     326 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x326>
             2.0 * ( right.length() / screen.getWidth() ),
  ff:	48 8b 03             	mov    (%rbx),%rax
 102:	c4 41 13 5a ed       	vcvtsd2ss %xmm13,%xmm13,%xmm13
 107:	48 85 c0             	test   %rax,%rax
 10a:	0f 88 d0 01 00 00    	js     2e0 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x2e0>
 110:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 114:	c4 e1 fa 2a c0       	vcvtsi2ss %rax,%xmm0,%xmm0
 119:	c5 92 5e c0          	vdivss %xmm0,%xmm13,%xmm0
 11d:	49 8b 00             	mov    (%r8),%rax
    : eye(eye), upper_left(center - right + up), down(-2.0 * up), right(2.0 * right), pixelWidth(pixelWidth), pixelHeight(pixelHeight) {
 120:	c5 7a 11 59 34       	vmovss %xmm11,0x34(%rcx)
 125:	c5 fa 10 4a 08       	vmovss 0x8(%rdx),%xmm1
 12a:	c5 fa 10 2a          	vmovss (%rdx),%xmm5
 12e:	48 89 44 24 44       	mov    %rax,0x44(%rsp)
 133:	41 8b 40 08          	mov    0x8(%r8),%eax
 137:	c5 fa 11 49 08       	vmovss %xmm1,0x8(%rcx)
 13c:	c5 fa 11 29          	vmovss %xmm5,(%rcx)
      difference.x[i] = this->x[i] - subtract.x[i];
 140:	c5 fa 10 6c 24 44    	vmovss 0x44(%rsp),%xmm5
 146:	89 44 24 4c          	mov    %eax,0x4c(%rsp)
 14a:	c4 c1 52 5c e9       	vsubss %xmm9,%xmm5,%xmm5
 14f:	c5 fa 10 4c 24 4c    	vmovss 0x4c(%rsp),%xmm1
      product[i] = factor * v[i];
 155:	c4 41 32 58 c9       	vaddss %xmm9,%xmm9,%xmm9
      difference.x[i] = this->x[i] - subtract.x[i];
 15a:	c5 f2 5c cf          	vsubss %xmm7,%xmm1,%xmm1
 15e:	c5 fa 10 62 04       	vmovss 0x4(%rdx),%xmm4
 163:	c5 fa 11 61 04       	vmovss %xmm4,0x4(%rcx)
      product[i] = factor * v[i];
 168:	c5 c2 58 ff          	vaddss %xmm7,%xmm7,%xmm7
      difference.x[i] = this->x[i] - subtract.x[i];
 16c:	c5 fa 10 64 24 48    	vmovss 0x48(%rsp),%xmm4
      sum.x[i] = this->x[i] + addend.x[i];
 172:	c5 82 58 ed          	vaddss %xmm5,%xmm15,%xmm5
      difference.x[i] = this->x[i] - subtract.x[i];
 176:	c4 c1 5a 5c e0       	vsubss %xmm8,%xmm4,%xmm4
      product[i] = factor * v[i];
 17b:	c5 7a 11 49 24       	vmovss %xmm9,0x24(%rcx)
 180:	c4 41 3a 58 c0       	vaddss %xmm8,%xmm8,%xmm8
      sum.x[i] = this->x[i] + addend.x[i];
 185:	c4 c1 72 58 cc       	vaddss %xmm12,%xmm1,%xmm1
      product[i] = factor * v[i];
 18a:	c5 fa 11 79 2c       	vmovss %xmm7,0x2c(%rcx)
      sum.x[i] = this->x[i] + addend.x[i];
 18f:	c5 fa 11 69 0c       	vmovss %xmm5,0xc(%rcx)
 194:	c5 8a 58 e4          	vaddss %xmm4,%xmm14,%xmm4
      product[i] = factor * v[i];
 198:	c5 7a 11 41 28       	vmovss %xmm8,0x28(%rcx)
      sum.x[i] = this->x[i] + addend.x[i];
 19d:	c5 fa 11 49 14       	vmovss %xmm1,0x14(%rcx)
      product[i] = factor * v[i];
 1a2:	c5 fa 10 0d 34 03 00 	vmovss 0x334(%rip),%xmm1        # 4de <_Z9write_bmpRSoRK6Screen+0x11e>
 1a9:	00 
 1aa:	c5 82 59 d9          	vmulss %xmm1,%xmm15,%xmm3
      sum.x[i] = this->x[i] + addend.x[i];
 1ae:	c5 fa 11 61 10       	vmovss %xmm4,0x10(%rcx)
             2.0 * ( up.length() / screen.getHeight() ) ) {
 1b3:	c5 fa 58 c0          	vaddss %xmm0,%xmm0,%xmm0
      product[i] = factor * v[i];
 1b7:	c5 8a 59 d1          	vmulss %xmm1,%xmm14,%xmm2
 1bb:	c5 9a 59 c9          	vmulss %xmm1,%xmm12,%xmm1
 1bf:	c5 fa 11 59 18       	vmovss %xmm3,0x18(%rcx)
    : eye(eye), upper_left(center - right + up), down(-2.0 * up), right(2.0 * right), pixelWidth(pixelWidth), pixelHeight(pixelHeight) {
 1c4:	c5 fa 11 41 30       	vmovss %xmm0,0x30(%rcx)
      square_of_length += ( this->x[i] * this->x[i] );
 1c9:	c5 78 29 c8          	vmovaps %xmm9,%xmm0
      product[i] = factor * v[i];
 1cd:	c5 fa 11 51 1c       	vmovss %xmm2,0x1c(%rcx)
      square_of_length += ( this->x[i] * this->x[i] );
 1d2:	c4 c2 49 99 c1       	vfmadd132ss %xmm9,%xmm6,%xmm0
 1d7:	c4 c2 39 b9 c0       	vfmadd231ss %xmm8,%xmm8,%xmm0
 1dc:	c4 e2 41 b9 c7       	vfmadd231ss %xmm7,%xmm7,%xmm0
    return sqrt( square_of_length() );
 1e1:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
      product[i] = factor * v[i];
 1e5:	c5 fa 11 49 20       	vmovss %xmm1,0x20(%rcx)
 1ea:	c5 79 2e d0          	vucomisd %xmm0,%xmm10
    return sqrt( square_of_length() );
 1ee:	c5 23 51 d8          	vsqrtsd %xmm0,%xmm11,%xmm11
 1f2:	0f 87 79 01 00 00    	ja     371 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x371>
 1f8:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
      square_of_length += ( this->x[i] * this->x[i] );
 1fc:	c4 e2 61 b9 f3       	vfmadd231ss %xmm3,%xmm3,%xmm6
    return sqrt( square_of_length() );
 201:	c4 c1 7b 5a c3       	vcvtsd2ss %xmm11,%xmm0,%xmm0
       this->x[i] /= length;
 206:	c5 32 5e c8          	vdivss %xmm0,%xmm9,%xmm9
 20a:	c5 3a 5e c0          	vdivss %xmm0,%xmm8,%xmm8
 20e:	c5 7a 11 49 24       	vmovss %xmm9,0x24(%rcx)
 213:	c5 c2 5e f8          	vdivss %xmm0,%xmm7,%xmm7
      square_of_length += ( this->x[i] * this->x[i] );
 217:	c5 f8 28 c6          	vmovaps %xmm6,%xmm0
 21b:	c4 e2 69 b9 c2       	vfmadd231ss %xmm2,%xmm2,%xmm0
 220:	c4 e2 71 b9 c1       	vfmadd231ss %xmm1,%xmm1,%xmm0
    return sqrt( square_of_length() );
 225:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
       this->x[i] /= length;
 229:	c5 7a 11 41 28       	vmovss %xmm8,0x28(%rcx)
 22e:	c5 79 2e d0          	vucomisd %xmm0,%xmm10
    return sqrt( square_of_length() );
 232:	c5 cb 51 f0          	vsqrtsd %xmm0,%xmm6,%xmm6
       this->x[i] /= length;
 236:	c5 fa 11 79 2c       	vmovss %xmm7,0x2c(%rcx)
 23b:	0f 87 0d 01 00 00    	ja     34e <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x34e>
    return sqrt( square_of_length() );
 241:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 245:	c5 fb 5a c6          	vcvtsd2ss %xmm6,%xmm0,%xmm0
       this->x[i] /= length;
 249:	c5 e2 5e d8          	vdivss %xmm0,%xmm3,%xmm3
 24d:	c5 ea 5e d0          	vdivss %xmm0,%xmm2,%xmm2
 251:	c5 fa 11 59 18       	vmovss %xmm3,0x18(%rcx)
 256:	c5 f2 5e c8          	vdivss %xmm0,%xmm1,%xmm1
 25a:	c5 fa 11 51 1c       	vmovss %xmm2,0x1c(%rcx)
 25f:	c5 fa 11 49 20       	vmovss %xmm1,0x20(%rcx)
  }
 264:	c5 f8 28 74 24 50    	vmovaps 0x50(%rsp),%xmm6
 26a:	c5 f8 28 7c 24 60    	vmovaps 0x60(%rsp),%xmm7
 270:	c5 78 28 44 24 70    	vmovaps 0x70(%rsp),%xmm8
 276:	c5 78 28 8c 24 80 00 	vmovaps 0x80(%rsp),%xmm9
 27d:	00 00 
 27f:	c5 78 28 94 24 90 00 	vmovaps 0x90(%rsp),%xmm10
 286:	00 00 
 288:	c5 78 28 9c 24 a0 00 	vmovaps 0xa0(%rsp),%xmm11
 28f:	00 00 
 291:	c5 78 28 a4 24 b0 00 	vmovaps 0xb0(%rsp),%xmm12
 298:	00 00 
 29a:	c5 78 28 ac 24 c0 00 	vmovaps 0xc0(%rsp),%xmm13
 2a1:	00 00 
 2a3:	c5 78 28 b4 24 d0 00 	vmovaps 0xd0(%rsp),%xmm14
 2aa:	00 00 
 2ac:	c5 78 28 bc 24 e0 00 	vmovaps 0xe0(%rsp),%xmm15
 2b3:	00 00 
 2b5:	48 81 c4 f0 00 00 00 	add    $0xf0,%rsp
 2bc:	5b                   	pop    %rbx
 2bd:	c3                   	retq   
 2be:	66 90                	xchg   %ax,%ax
             2.0 * ( up.length() / screen.getHeight() ) ) {
 2c0:	49 89 c1             	mov    %rax,%r9
 2c3:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 2c7:	49 d1 e9             	shr    %r9
 2ca:	83 e0 01             	and    $0x1,%eax
 2cd:	49 09 c1             	or     %rax,%r9
 2d0:	c4 c1 fa 2a c1       	vcvtsi2ss %r9,%xmm0,%xmm0
 2d5:	c5 fa 58 c0          	vaddss %xmm0,%xmm0,%xmm0
 2d9:	e9 f3 fd ff ff       	jmpq   d1 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0xd1>
 2de:	66 90                	xchg   %ax,%ax
             2.0 * ( right.length() / screen.getWidth() ),
 2e0:	49 89 c1             	mov    %rax,%r9
 2e3:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 2e7:	49 d1 e9             	shr    %r9
 2ea:	83 e0 01             	and    $0x1,%eax
 2ed:	49 09 c1             	or     %rax,%r9
 2f0:	c4 c1 fa 2a c1       	vcvtsi2ss %r9,%xmm0,%xmm0
 2f5:	c5 fa 58 c0          	vaddss %xmm0,%xmm0,%xmm0
 2f9:	e9 1b fe ff ff       	jmpq   119 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x119>
 2fe:	4c 89 44 24 38       	mov    %r8,0x38(%rsp)
 303:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
 308:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
    return sqrt( square_of_length() );
 30d:	e8 00 00 00 00       	callq  312 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x312>
 312:	4c 8b 44 24 38       	mov    0x38(%rsp),%r8
 317:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
 31c:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
 321:	e9 90 fd ff ff       	jmpq   b6 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0xb6>
 326:	4c 89 44 24 38       	mov    %r8,0x38(%rsp)
 32b:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
 330:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
 335:	e8 00 00 00 00       	callq  33a <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x33a>
 33a:	4c 8b 44 24 38       	mov    0x38(%rsp),%r8
 33f:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
 344:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
 349:	e9 b1 fd ff ff       	jmpq   ff <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0xff>
 34e:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
 353:	e8 00 00 00 00       	callq  358 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x358>
 358:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
 35d:	c5 fa 10 59 18       	vmovss 0x18(%rcx),%xmm3
 362:	c5 fa 10 51 1c       	vmovss 0x1c(%rcx),%xmm2
 367:	c5 fa 10 49 20       	vmovss 0x20(%rcx),%xmm1
 36c:	e9 d0 fe ff ff       	jmpq   241 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x241>
 371:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
 376:	e8 00 00 00 00       	callq  37b <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x37b>
 37b:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
 380:	c5 fa 10 59 18       	vmovss 0x18(%rcx),%xmm3
 385:	c5 fa 10 51 1c       	vmovss 0x1c(%rcx),%xmm2
 38a:	c5 fa 10 49 20       	vmovss 0x20(%rcx),%xmm1
 38f:	c5 7a 10 49 24       	vmovss 0x24(%rcx),%xmm9
 394:	c5 7a 10 41 28       	vmovss 0x28(%rcx),%xmm8
 399:	c5 fa 10 79 2c       	vmovss 0x2c(%rcx),%xmm7
 39e:	e9 55 fe ff ff       	jmpq   1f8 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x1f8>
 3a3:	90                   	nop
 3a4:	90                   	nop
 3a5:	90                   	nop
 3a6:	90                   	nop
 3a7:	90                   	nop
 3a8:	90                   	nop
 3a9:	90                   	nop
 3aa:	90                   	nop
 3ab:	90                   	nop
 3ac:	90                   	nop
 3ad:	90                   	nop
 3ae:	90                   	nop
 3af:	90                   	nop

Disassembly of section .text$_ZN5SceneD1Ev:

0000000000000000 <_ZN5SceneD1Ev>:
class Scene {
   0:	53                   	push   %rbx
   1:	48 83 ec 20          	sub    $0x20,%rsp
   5:	48 89 cb             	mov    %rcx,%rbx
      { std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
   8:	48 8b 49 18          	mov    0x18(%rcx),%rcx
	if (__p)
   c:	48 85 c9             	test   %rcx,%rcx
   f:	74 05                	je     16 <_ZN5SceneD1Ev+0x16>
  11:	e8 00 00 00 00       	callq  16 <_ZN5SceneD1Ev+0x16>
      { std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
  16:	48 8b 0b             	mov    (%rbx),%rcx
	if (__p)
  19:	48 85 c9             	test   %rcx,%rcx
  1c:	74 12                	je     30 <_ZN5SceneD1Ev+0x30>
  1e:	48 83 c4 20          	add    $0x20,%rsp
  22:	5b                   	pop    %rbx
  23:	e9 00 00 00 00       	jmpq   28 <_ZN5SceneD1Ev+0x28>
  28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  2f:	00 
  30:	48 83 c4 20          	add    $0x20,%rsp
  34:	5b                   	pop    %rbx
  35:	c3                   	retq   
  36:	90                   	nop
  37:	90                   	nop
  38:	90                   	nop
  39:	90                   	nop
  3a:	90                   	nop
  3b:	90                   	nop
  3c:	90                   	nop
  3d:	90                   	nop
  3e:	90                   	nop
  3f:	90                   	nop

Disassembly of section .text$_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev:

0000000000000000 <_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev>:
	~_Save_errno() { if (errno == 0) errno = _M_errno; }
   0:	53                   	push   %rbx
   1:	48 83 ec 20          	sub    $0x20,%rsp
   5:	48 89 cb             	mov    %rcx,%rbx
   8:	e8 00 00 00 00       	callq  d <_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev+0xd>
   d:	8b 00                	mov    (%rax),%eax
   f:	85 c0                	test   %eax,%eax
  11:	75 09                	jne    1c <_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev+0x1c>
  13:	e8 00 00 00 00       	callq  18 <_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev+0x18>
  18:	8b 13                	mov    (%rbx),%edx
  1a:	89 10                	mov    %edx,(%rax)
  1c:	48 83 c4 20          	add    $0x20,%rsp
  20:	5b                   	pop    %rbx
  21:	c3                   	retq   
  22:	90                   	nop
  23:	90                   	nop
  24:	90                   	nop
  25:	90                   	nop
  26:	90                   	nop
  27:	90                   	nop
  28:	90                   	nop
  29:	90                   	nop
  2a:	90                   	nop
  2b:	90                   	nop
  2c:	90                   	nop
  2d:	90                   	nop
  2e:	90                   	nop
  2f:	90                   	nop

Disassembly of section .text$_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:

0000000000000000 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_>:
      vector<_Tp, _Alloc>::
   0:	41 55                	push   %r13
   2:	41 54                	push   %r12
   4:	55                   	push   %rbp
   5:	57                   	push   %rdi
   6:	56                   	push   %rsi
   7:	53                   	push   %rbx
   8:	48 83 ec 28          	sub    $0x28,%rsp
   c:	48 89 cb             	mov    %rcx,%rbx
	if (max_size() - size() < __n)
   f:	48 8b 09             	mov    (%rcx),%rcx
  12:	48 89 d5             	mov    %rdx,%rbp
  15:	4c 8b 5b 08          	mov    0x8(%rbx),%r11
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
  19:	48 ba 39 8e e3 38 8e 	movabs $0x8e38e38e38e38e39,%rdx
  20:	e3 38 8e 
  23:	49 89 ec             	mov    %rbp,%r12
  26:	4d 89 c5             	mov    %r8,%r13
  29:	49 29 cc             	sub    %rcx,%r12
  2c:	4c 89 d8             	mov    %r11,%rax
  2f:	48 29 c8             	sub    %rcx,%rax
  32:	48 c1 f8 03          	sar    $0x3,%rax
  36:	48 0f af c2          	imul   %rdx,%rax
  3a:	48 85 c0             	test   %rax,%rax
  3d:	0f 84 9d 01 00 00    	je     1e0 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x1e0>
	const size_type __len = size() + std::max(size(), __n);
  43:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
	return (__len < size() || __len > max_size()) ? max_size() : __len;
  47:	48 c7 c7 f0 ff ff ff 	mov    $0xfffffffffffffff0,%rdi
  4e:	48 39 d0             	cmp    %rdx,%rax
  51:	0f 86 9b 01 00 00    	jbe    1f2 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x1f2>
	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
  57:	48 89 f9             	mov    %rdi,%rcx
  5a:	e8 00 00 00 00       	callq  5f <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x5f>
  5f:	48 8b 0b             	mov    (%rbx),%rcx
  62:	4c 8b 5b 08          	mov    0x8(%rbx),%r11
  66:	4c 8d 48 48          	lea    0x48(%rax),%r9
  6a:	48 89 c6             	mov    %rax,%rsi
  6d:	48 01 c7             	add    %rax,%rdi
	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
  70:	49 01 f4             	add    %rsi,%r12
  73:	74 50                	je     c5 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0xc5>
  75:	49 8b 45 00          	mov    0x0(%r13),%rax
  79:	49 8b 55 08          	mov    0x8(%r13),%rdx
  7d:	49 89 04 24          	mov    %rax,(%r12)
  81:	49 8b 45 10          	mov    0x10(%r13),%rax
  85:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  8a:	49 8b 55 18          	mov    0x18(%r13),%rdx
  8e:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  93:	49 8b 45 20          	mov    0x20(%r13),%rax
  97:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  9c:	49 8b 55 28          	mov    0x28(%r13),%rdx
  a0:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  a5:	49 8b 45 30          	mov    0x30(%r13),%rax
  a9:	49 89 54 24 28       	mov    %rdx,0x28(%r12)
  ae:	49 8b 55 38          	mov    0x38(%r13),%rdx
  b2:	49 89 44 24 30       	mov    %rax,0x30(%r12)
  b7:	49 8b 45 40          	mov    0x40(%r13),%rax
  bb:	49 89 54 24 38       	mov    %rdx,0x38(%r12)
  c0:	49 89 44 24 40       	mov    %rax,0x40(%r12)
  c5:	48 39 cd             	cmp    %rcx,%rbp
  c8:	0f 84 83 00 00 00    	je     151 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x151>
  ce:	48 8d 41 48          	lea    0x48(%rcx),%rax
  d2:	48 89 ea             	mov    %rbp,%rdx
  d5:	49 89 ca             	mov    %rcx,%r10
	  _ForwardIterator __cur = __result;
  d8:	49 89 f0             	mov    %rsi,%r8
  db:	48 29 c2             	sub    %rax,%rdx
  de:	48 89 d0             	mov    %rdx,%rax
  e1:	48 c1 e8 03          	shr    $0x3,%rax
  e5:	4c 8d 4c c6 48       	lea    0x48(%rsi,%rax,8),%r9
  ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  f0:	4d 85 c0             	test   %r8,%r8
  f3:	0f 84 2c 01 00 00    	je     225 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x225>
  f9:	49 8b 02             	mov    (%r10),%rax
  fc:	49 8b 52 08          	mov    0x8(%r10),%rdx
	      for (; __first != __last; ++__first, (void)++__cur)
 100:	49 83 c0 48          	add    $0x48,%r8
 104:	49 83 c2 48          	add    $0x48,%r10
 108:	49 89 40 b8          	mov    %rax,-0x48(%r8)
 10c:	49 89 50 c0          	mov    %rdx,-0x40(%r8)
 110:	49 8b 42 c8          	mov    -0x38(%r10),%rax
 114:	49 8b 52 d0          	mov    -0x30(%r10),%rdx
 118:	49 89 40 c8          	mov    %rax,-0x38(%r8)
 11c:	49 89 50 d0          	mov    %rdx,-0x30(%r8)
 120:	49 8b 42 d8          	mov    -0x28(%r10),%rax
 124:	49 8b 52 e0          	mov    -0x20(%r10),%rdx
 128:	49 89 40 d8          	mov    %rax,-0x28(%r8)
 12c:	49 89 50 e0          	mov    %rdx,-0x20(%r8)
 130:	49 8b 42 e8          	mov    -0x18(%r10),%rax
 134:	49 8b 52 f0          	mov    -0x10(%r10),%rdx
 138:	49 89 40 e8          	mov    %rax,-0x18(%r8)
 13c:	49 89 50 f0          	mov    %rdx,-0x10(%r8)
 140:	49 8b 42 f8          	mov    -0x8(%r10),%rax
 144:	49 89 40 f8          	mov    %rax,-0x8(%r8)
 148:	4d 39 c1             	cmp    %r8,%r9
 14b:	75 a3                	jne    f0 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0xf0>
 14d:	49 83 c1 48          	add    $0x48,%r9
 151:	4c 39 dd             	cmp    %r11,%rbp
 154:	0f 84 c6 00 00 00    	je     220 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x220>
 15a:	48 8d 45 48          	lea    0x48(%rbp),%rax
 15e:	48 89 ea             	mov    %rbp,%rdx
 161:	49 29 c3             	sub    %rax,%r11
 164:	49 c1 eb 03          	shr    $0x3,%r11
 168:	4b 8d 6c d9 48       	lea    0x48(%r9,%r11,8),%rbp
 16d:	0f 1f 00             	nopl   (%rax)
 170:	4d 85 c9             	test   %r9,%r9
 173:	0f 84 c5 00 00 00    	je     23e <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x23e>
 179:	c5 fa 6f 0a          	vmovdqu (%rdx),%xmm1
 17d:	49 83 c1 48          	add    $0x48,%r9
 181:	48 83 c2 48          	add    $0x48,%rdx
 185:	4c 8b 42 f8          	mov    -0x8(%rdx),%r8
 189:	c4 c1 78 11 49 b8    	vmovups %xmm1,-0x48(%r9)
 18f:	c5 fa 6f 4a c8       	vmovdqu -0x38(%rdx),%xmm1
 194:	4d 89 41 f8          	mov    %r8,-0x8(%r9)
 198:	c4 c1 78 11 49 c8    	vmovups %xmm1,-0x38(%r9)
 19e:	c5 fa 6f 4a d8       	vmovdqu -0x28(%rdx),%xmm1
 1a3:	c4 c1 78 11 49 d8    	vmovups %xmm1,-0x28(%r9)
 1a9:	c5 fa 6f 4a e8       	vmovdqu -0x18(%rdx),%xmm1
 1ae:	c4 c1 78 11 49 e8    	vmovups %xmm1,-0x18(%r9)
 1b4:	49 39 e9             	cmp    %rbp,%r9
 1b7:	75 b7                	jne    170 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x170>
	if (__p)
 1b9:	48 85 c9             	test   %rcx,%rcx
 1bc:	74 05                	je     1c3 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x1c3>
	::operator delete(__p);
 1be:	e8 00 00 00 00       	callq  1c3 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x1c3>
      this->_M_impl._M_start = __new_start;
 1c3:	48 89 33             	mov    %rsi,(%rbx)
      this->_M_impl._M_finish = __new_finish;
 1c6:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
      this->_M_impl._M_end_of_storage = __new_start + __len;
 1ca:	48 89 7b 10          	mov    %rdi,0x10(%rbx)
    }
 1ce:	48 83 c4 28          	add    $0x28,%rsp
 1d2:	5b                   	pop    %rbx
 1d3:	5e                   	pop    %rsi
 1d4:	5f                   	pop    %rdi
 1d5:	5d                   	pop    %rbp
 1d6:	41 5c                	pop    %r12
 1d8:	41 5d                	pop    %r13
 1da:	c3                   	retq   
 1db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
	const size_type __len = size() + std::max(size(), __n);
 1e0:	ba 01 00 00 00       	mov    $0x1,%edx
 1e5:	48 8d 3c d2          	lea    (%rdx,%rdx,8),%rdi
 1e9:	48 c1 e7 03          	shl    $0x3,%rdi
 1ed:	e9 65 fe ff ff       	jmpq   57 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x57>
	return (__len < size() || __len > max_size()) ? max_size() : __len;
 1f2:	48 b8 8e e3 38 8e e3 	movabs $0x38e38e38e38e38e,%rax
 1f9:	38 8e 03 
 1fc:	48 39 c2             	cmp    %rax,%rdx
 1ff:	0f 87 52 fe ff ff    	ja     57 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x57>
	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
 205:	48 85 d2             	test   %rdx,%rdx
 208:	75 db                	jne    1e5 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x1e5>
 20a:	41 b9 48 00 00 00    	mov    $0x48,%r9d
 210:	31 ff                	xor    %edi,%edi
 212:	31 f6                	xor    %esi,%esi
 214:	e9 57 fe ff ff       	jmpq   70 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x70>
 219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
	  _ForwardIterator __cur = __result;
 220:	4c 89 cd             	mov    %r9,%rbp
 223:	eb 94                	jmp    1b9 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x1b9>
 225:	49 83 c2 48          	add    $0x48,%r10
	      for (; __first != __last; ++__first, (void)++__cur)
 229:	49 83 f9 48          	cmp    $0x48,%r9
 22d:	0f 84 1a ff ff ff    	je     14d <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x14d>
 233:	41 b8 48 00 00 00    	mov    $0x48,%r8d
 239:	e9 bb fe ff ff       	jmpq   f9 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0xf9>
 23e:	48 83 c2 48          	add    $0x48,%rdx
 242:	48 83 fd 48          	cmp    $0x48,%rbp
 246:	0f 84 6d ff ff ff    	je     1b9 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x1b9>
 24c:	41 b9 48 00 00 00    	mov    $0x48,%r9d
 252:	e9 22 ff ff ff       	jmpq   179 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x179>
 257:	90                   	nop
 258:	90                   	nop
 259:	90                   	nop
 25a:	90                   	nop
 25b:	90                   	nop
 25c:	90                   	nop
 25d:	90                   	nop
 25e:	90                   	nop
 25f:	90                   	nop

Disassembly of section .text$_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:

0000000000000000 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_>:
      vector<_Tp, _Alloc>::
   0:	41 55                	push   %r13
   2:	41 54                	push   %r12
   4:	55                   	push   %rbp
   5:	57                   	push   %rdi
   6:	56                   	push   %rsi
   7:	53                   	push   %rbx
   8:	48 83 ec 28          	sub    $0x28,%rsp
   c:	48 89 cb             	mov    %rcx,%rbx
	if (max_size() - size() < __n)
   f:	48 8b 09             	mov    (%rcx),%rcx
  12:	48 89 d5             	mov    %rdx,%rbp
  15:	48 8b 43 08          	mov    0x8(%rbx),%rax
  19:	4d 89 c5             	mov    %r8,%r13
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
  1c:	49 b8 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%r8
  23:	aa aa aa 
  26:	49 89 ec             	mov    %rbp,%r12
  29:	49 29 cc             	sub    %rcx,%r12
  2c:	48 89 c2             	mov    %rax,%rdx
  2f:	48 29 ca             	sub    %rcx,%rdx
  32:	48 c1 fa 03          	sar    $0x3,%rdx
  36:	49 0f af d0          	imul   %r8,%rdx
  3a:	48 85 d2             	test   %rdx,%rdx
  3d:	0f 84 0d 01 00 00    	je     150 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x150>
	const size_type __len = size() + std::max(size(), __n);
  43:	4c 8d 04 12          	lea    (%rdx,%rdx,1),%r8
	return (__len < size() || __len > max_size()) ? max_size() : __len;
  47:	48 c7 c7 f0 ff ff ff 	mov    $0xfffffffffffffff0,%rdi
  4e:	4c 39 c2             	cmp    %r8,%rdx
  51:	0f 86 0c 01 00 00    	jbe    163 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x163>
	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
  57:	48 89 f9             	mov    %rdi,%rcx
  5a:	e8 00 00 00 00       	callq  5f <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x5f>
  5f:	48 8b 0b             	mov    (%rbx),%rcx
  62:	48 89 c6             	mov    %rax,%rsi
  65:	48 8b 43 08          	mov    0x8(%rbx),%rax
  69:	4c 8d 4e 18          	lea    0x18(%rsi),%r9
  6d:	48 01 f7             	add    %rsi,%rdi
	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
  70:	49 01 f4             	add    %rsi,%r12
  73:	74 15                	je     8a <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x8a>
  75:	c4 c1 7a 6f 4d 00    	vmovdqu 0x0(%r13),%xmm1
  7b:	49 8b 55 10          	mov    0x10(%r13),%rdx
  7f:	c4 c1 78 11 0c 24    	vmovups %xmm1,(%r12)
  85:	49 89 54 24 10       	mov    %rdx,0x10(%r12)
  8a:	48 39 cd             	cmp    %rcx,%rbp
  8d:	74 4e                	je     dd <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0xdd>
  8f:	48 8d 51 18          	lea    0x18(%rcx),%rdx
  93:	49 89 eb             	mov    %rbp,%r11
  96:	49 89 ca             	mov    %rcx,%r10
	  _ForwardIterator __cur = __result;
  99:	49 89 f0             	mov    %rsi,%r8
  9c:	49 29 d3             	sub    %rdx,%r11
  9f:	4c 89 da             	mov    %r11,%rdx
  a2:	48 c1 ea 03          	shr    $0x3,%rdx
  a6:	4c 8d 4c d6 18       	lea    0x18(%rsi,%rdx,8),%r9
  ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  b0:	4d 85 c0             	test   %r8,%r8
  b3:	0f 84 dc 00 00 00    	je     195 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x195>
  b9:	c4 c1 7a 6f 0a       	vmovdqu (%r10),%xmm1
	      for (; __first != __last; ++__first, (void)++__cur)
  be:	49 83 c0 18          	add    $0x18,%r8
  c2:	49 83 c2 18          	add    $0x18,%r10
  c6:	c4 c1 78 11 48 e8    	vmovups %xmm1,-0x18(%r8)
  cc:	4d 8b 5a f8          	mov    -0x8(%r10),%r11
  d0:	4d 89 58 f8          	mov    %r11,-0x8(%r8)
  d4:	4d 39 c1             	cmp    %r8,%r9
  d7:	75 d7                	jne    b0 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0xb0>
  d9:	49 83 c1 18          	add    $0x18,%r9
  dd:	48 39 c5             	cmp    %rax,%rbp
  e0:	0f 84 aa 00 00 00    	je     190 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x190>
  e6:	4c 8d 45 18          	lea    0x18(%rbp),%r8
  ea:	48 89 ea             	mov    %rbp,%rdx
  ed:	4c 29 c0             	sub    %r8,%rax
  f0:	48 c1 e8 03          	shr    $0x3,%rax
  f4:	49 8d 6c c1 18       	lea    0x18(%r9,%rax,8),%rbp
  f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 100:	4d 85 c9             	test   %r9,%r9
 103:	0f 84 a5 00 00 00    	je     1ae <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x1ae>
 109:	4c 8b 42 10          	mov    0x10(%rdx),%r8
 10d:	49 83 c1 18          	add    $0x18,%r9
 111:	48 83 c2 18          	add    $0x18,%rdx
 115:	c5 fa 6f 4a e8       	vmovdqu -0x18(%rdx),%xmm1
 11a:	4d 89 41 f8          	mov    %r8,-0x8(%r9)
 11e:	c4 c1 78 11 49 e8    	vmovups %xmm1,-0x18(%r9)
 124:	49 39 e9             	cmp    %rbp,%r9
 127:	75 d7                	jne    100 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x100>
	if (__p)
 129:	48 85 c9             	test   %rcx,%rcx
 12c:	74 05                	je     133 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x133>
	::operator delete(__p);
 12e:	e8 00 00 00 00       	callq  133 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x133>
      this->_M_impl._M_start = __new_start;
 133:	48 89 33             	mov    %rsi,(%rbx)
      this->_M_impl._M_finish = __new_finish;
 136:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
      this->_M_impl._M_end_of_storage = __new_start + __len;
 13a:	48 89 7b 10          	mov    %rdi,0x10(%rbx)
    }
 13e:	48 83 c4 28          	add    $0x28,%rsp
 142:	5b                   	pop    %rbx
 143:	5e                   	pop    %rsi
 144:	5f                   	pop    %rdi
 145:	5d                   	pop    %rbp
 146:	41 5c                	pop    %r12
 148:	41 5d                	pop    %r13
 14a:	c3                   	retq   
 14b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
	const size_type __len = size() + std::max(size(), __n);
 150:	41 b8 01 00 00 00    	mov    $0x1,%r8d
 156:	4b 8d 3c 40          	lea    (%r8,%r8,2),%rdi
 15a:	48 c1 e7 03          	shl    $0x3,%rdi
 15e:	e9 f4 fe ff ff       	jmpq   57 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x57>
	return (__len < size() || __len > max_size()) ? max_size() : __len;
 163:	48 ba aa aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaa,%rdx
 16a:	aa aa 0a 
 16d:	49 39 d0             	cmp    %rdx,%r8
 170:	0f 87 e1 fe ff ff    	ja     57 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x57>
	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
 176:	4d 85 c0             	test   %r8,%r8
 179:	75 db                	jne    156 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x156>
 17b:	41 b9 18 00 00 00    	mov    $0x18,%r9d
 181:	31 ff                	xor    %edi,%edi
 183:	31 f6                	xor    %esi,%esi
 185:	e9 e6 fe ff ff       	jmpq   70 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x70>
 18a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
	  _ForwardIterator __cur = __result;
 190:	4c 89 cd             	mov    %r9,%rbp
 193:	eb 94                	jmp    129 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x129>
 195:	49 83 c2 18          	add    $0x18,%r10
	      for (; __first != __last; ++__first, (void)++__cur)
 199:	49 83 f9 18          	cmp    $0x18,%r9
 19d:	0f 84 36 ff ff ff    	je     d9 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0xd9>
 1a3:	41 b8 18 00 00 00    	mov    $0x18,%r8d
 1a9:	e9 0b ff ff ff       	jmpq   b9 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0xb9>
 1ae:	48 83 c2 18          	add    $0x18,%rdx
 1b2:	48 83 fd 18          	cmp    $0x18,%rbp
 1b6:	0f 84 6d ff ff ff    	je     129 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x129>
 1bc:	41 b9 18 00 00 00    	mov    $0x18,%r9d
 1c2:	e9 42 ff ff ff       	jmpq   109 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x109>
 1c7:	90                   	nop
 1c8:	90                   	nop
 1c9:	90                   	nop
 1ca:	90                   	nop
 1cb:	90                   	nop
 1cc:	90                   	nop
 1cd:	90                   	nop
 1ce:	90                   	nop
 1cf:	90                   	nop

Disassembly of section .text$_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:

0000000000000000 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_>:
      vector<_Tp, _Alloc>::
   0:	41 55                	push   %r13
   2:	41 54                	push   %r12
   4:	55                   	push   %rbp
   5:	57                   	push   %rdi
   6:	56                   	push   %rsi
   7:	53                   	push   %rbx
   8:	48 83 ec 28          	sub    $0x28,%rsp
   c:	48 89 cb             	mov    %rcx,%rbx
	if (max_size() - size() < __n)
   f:	48 8b 09             	mov    (%rcx),%rcx
  12:	48 89 d5             	mov    %rdx,%rbp
  15:	48 8b 43 08          	mov    0x8(%rbx),%rax
  19:	4d 89 c5             	mov    %r8,%r13
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
  1c:	49 b8 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%r8
  23:	aa aa aa 
  26:	49 89 ec             	mov    %rbp,%r12
  29:	49 29 cc             	sub    %rcx,%r12
  2c:	48 89 c2             	mov    %rax,%rdx
  2f:	48 29 ca             	sub    %rcx,%rdx
  32:	48 c1 fa 02          	sar    $0x2,%rdx
  36:	49 0f af d0          	imul   %r8,%rdx
  3a:	48 85 d2             	test   %rdx,%rdx
  3d:	0f 84 0d 01 00 00    	je     150 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x150>
	const size_type __len = size() + std::max(size(), __n);
  43:	4c 8d 04 12          	lea    (%rdx,%rdx,1),%r8
	return (__len < size() || __len > max_size()) ? max_size() : __len;
  47:	48 c7 c7 fc ff ff ff 	mov    $0xfffffffffffffffc,%rdi
  4e:	4c 39 c2             	cmp    %r8,%rdx
  51:	0f 86 0c 01 00 00    	jbe    163 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x163>
	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
  57:	48 89 f9             	mov    %rdi,%rcx
  5a:	e8 00 00 00 00       	callq  5f <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x5f>
  5f:	48 8b 0b             	mov    (%rbx),%rcx
  62:	48 89 c6             	mov    %rax,%rsi
  65:	48 8b 43 08          	mov    0x8(%rbx),%rax
  69:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  6d:	48 01 f7             	add    %rsi,%rdi
	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
  70:	49 01 f4             	add    %rsi,%r12
  73:	74 11                	je     86 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x86>
  75:	49 8b 55 00          	mov    0x0(%r13),%rdx
  79:	49 89 14 24          	mov    %rdx,(%r12)
  7d:	41 8b 55 08          	mov    0x8(%r13),%edx
  81:	41 89 54 24 08       	mov    %edx,0x8(%r12)
  86:	48 39 cd             	cmp    %rcx,%rbp
  89:	74 4e                	je     d9 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0xd9>
  8b:	48 8d 51 0c          	lea    0xc(%rcx),%rdx
  8f:	49 89 eb             	mov    %rbp,%r11
  92:	49 89 ca             	mov    %rcx,%r10
	  _ForwardIterator __cur = __result;
  95:	49 89 f0             	mov    %rsi,%r8
  98:	49 29 d3             	sub    %rdx,%r11
  9b:	4c 89 da             	mov    %r11,%rdx
  9e:	48 c1 ea 02          	shr    $0x2,%rdx
  a2:	4c 8d 4c 96 0c       	lea    0xc(%rsi,%rdx,4),%r9
  a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  ae:	00 00 
  b0:	4d 85 c0             	test   %r8,%r8
  b3:	0f 84 dc 00 00 00    	je     195 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x195>
  b9:	4d 8b 1a             	mov    (%r10),%r11
	      for (; __first != __last; ++__first, (void)++__cur)
  bc:	49 83 c0 0c          	add    $0xc,%r8
  c0:	49 83 c2 0c          	add    $0xc,%r10
  c4:	4d 89 58 f4          	mov    %r11,-0xc(%r8)
  c8:	45 8b 5a fc          	mov    -0x4(%r10),%r11d
  cc:	45 89 58 fc          	mov    %r11d,-0x4(%r8)
  d0:	4d 39 c1             	cmp    %r8,%r9
  d3:	75 db                	jne    b0 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0xb0>
  d5:	49 83 c1 0c          	add    $0xc,%r9
  d9:	48 39 c5             	cmp    %rax,%rbp
  dc:	0f 84 ae 00 00 00    	je     190 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x190>
  e2:	4c 8d 45 0c          	lea    0xc(%rbp),%r8
  e6:	48 89 ea             	mov    %rbp,%rdx
  e9:	4c 29 c0             	sub    %r8,%rax
  ec:	49 89 c0             	mov    %rax,%r8
  ef:	49 c1 e8 02          	shr    $0x2,%r8
  f3:	4b 8d 6c 81 0c       	lea    0xc(%r9,%r8,4),%rbp
  f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  ff:	00 
 100:	4d 85 c9             	test   %r9,%r9
 103:	0f 84 a5 00 00 00    	je     1ae <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x1ae>
 109:	4c 8b 02             	mov    (%rdx),%r8
 10c:	49 83 c1 0c          	add    $0xc,%r9
 110:	48 83 c2 0c          	add    $0xc,%rdx
 114:	4d 89 41 f4          	mov    %r8,-0xc(%r9)
 118:	44 8b 42 fc          	mov    -0x4(%rdx),%r8d
 11c:	45 89 41 fc          	mov    %r8d,-0x4(%r9)
 120:	49 39 e9             	cmp    %rbp,%r9
 123:	75 db                	jne    100 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x100>
	if (__p)
 125:	48 85 c9             	test   %rcx,%rcx
 128:	74 05                	je     12f <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x12f>
	::operator delete(__p);
 12a:	e8 00 00 00 00       	callq  12f <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x12f>
      this->_M_impl._M_start = __new_start;
 12f:	48 89 33             	mov    %rsi,(%rbx)
      this->_M_impl._M_finish = __new_finish;
 132:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
      this->_M_impl._M_end_of_storage = __new_start + __len;
 136:	48 89 7b 10          	mov    %rdi,0x10(%rbx)
    }
 13a:	48 83 c4 28          	add    $0x28,%rsp
 13e:	5b                   	pop    %rbx
 13f:	5e                   	pop    %rsi
 140:	5f                   	pop    %rdi
 141:	5d                   	pop    %rbp
 142:	41 5c                	pop    %r12
 144:	41 5d                	pop    %r13
 146:	c3                   	retq   
 147:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 14e:	00 00 
	const size_type __len = size() + std::max(size(), __n);
 150:	41 b8 01 00 00 00    	mov    $0x1,%r8d
 156:	4b 8d 3c 40          	lea    (%r8,%r8,2),%rdi
 15a:	48 c1 e7 02          	shl    $0x2,%rdi
 15e:	e9 f4 fe ff ff       	jmpq   57 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x57>
	return (__len < size() || __len > max_size()) ? max_size() : __len;
 163:	48 ba 55 55 55 55 55 	movabs $0x1555555555555555,%rdx
 16a:	55 55 15 
 16d:	49 39 d0             	cmp    %rdx,%r8
 170:	0f 87 e1 fe ff ff    	ja     57 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x57>
	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
 176:	4d 85 c0             	test   %r8,%r8
 179:	75 db                	jne    156 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x156>
 17b:	41 b9 0c 00 00 00    	mov    $0xc,%r9d
 181:	31 ff                	xor    %edi,%edi
 183:	31 f6                	xor    %esi,%esi
 185:	e9 e6 fe ff ff       	jmpq   70 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x70>
 18a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
	  _ForwardIterator __cur = __result;
 190:	4c 89 cd             	mov    %r9,%rbp
 193:	eb 90                	jmp    125 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x125>
 195:	49 83 c2 0c          	add    $0xc,%r10
	      for (; __first != __last; ++__first, (void)++__cur)
 199:	49 83 f9 0c          	cmp    $0xc,%r9
 19d:	0f 84 32 ff ff ff    	je     d5 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0xd5>
 1a3:	41 b8 0c 00 00 00    	mov    $0xc,%r8d
 1a9:	e9 0b ff ff ff       	jmpq   b9 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0xb9>
 1ae:	48 83 c2 0c          	add    $0xc,%rdx
 1b2:	48 83 fd 0c          	cmp    $0xc,%rbp
 1b6:	0f 84 69 ff ff ff    	je     125 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x125>
 1bc:	41 b9 0c 00 00 00    	mov    $0xc,%r9d
 1c2:	e9 42 ff ff ff       	jmpq   109 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x109>
 1c7:	90                   	nop
 1c8:	90                   	nop
 1c9:	90                   	nop
 1ca:	90                   	nop
 1cb:	90                   	nop
 1cc:	90                   	nop
 1cd:	90                   	nop
 1ce:	90                   	nop
 1cf:	90                   	nop

Disassembly of section .text$_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:

0000000000000000 <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_>:
      vector<_Tp, _Alloc>::
   0:	41 57                	push   %r15
   2:	41 56                	push   %r14
   4:	41 55                	push   %r13
   6:	41 54                	push   %r12
   8:	55                   	push   %rbp
   9:	57                   	push   %rdi
   a:	56                   	push   %rsi
   b:	53                   	push   %rbx
   c:	48 83 ec 38          	sub    $0x38,%rsp
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
  10:	4c 8b 61 08          	mov    0x8(%rcx),%r12
	if (max_size() - size() < __n)
  14:	48 8b 19             	mov    (%rcx),%rbx
  17:	49 89 d5             	mov    %rdx,%r13
  1a:	48 89 ce             	mov    %rcx,%rsi
  1d:	48 89 d7             	mov    %rdx,%rdi
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
  20:	4c 89 e0             	mov    %r12,%rax
  23:	49 29 dd             	sub    %rbx,%r13
  26:	48 29 d8             	sub    %rbx,%rax
  29:	48 c1 f8 03          	sar    $0x3,%rax
  2d:	48 85 c0             	test   %rax,%rax
  30:	0f 84 aa 00 00 00    	je     e0 <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0xe0>
	const size_type __len = size() + std::max(size(), __n);
  36:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
	return (__len < size() || __len > max_size()) ? max_size() : __len;
  3a:	49 c7 c6 f8 ff ff ff 	mov    $0xfffffffffffffff8,%r14
  41:	48 39 d0             	cmp    %rdx,%rax
  44:	0f 86 a8 00 00 00    	jbe    f2 <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0xf2>
	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
  4a:	4c 89 f1             	mov    %r14,%rcx
  4d:	4c 89 44 24 28       	mov    %r8,0x28(%rsp)
  52:	49 89 ff             	mov    %rdi,%r15
  55:	e8 00 00 00 00       	callq  5a <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x5a>
  5a:	48 8b 1e             	mov    (%rsi),%rbx
  5d:	4c 8b 66 08          	mov    0x8(%rsi),%r12
  61:	48 89 c5             	mov    %rax,%rbp
  64:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  69:	49 01 c6             	add    %rax,%r14
  6c:	49 29 df             	sub    %rbx,%r15
	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
  6f:	49 01 ed             	add    %rbp,%r13
  72:	74 07                	je     7b <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x7b>
  74:	49 8b 00             	mov    (%r8),%rax
  77:	49 89 45 00          	mov    %rax,0x0(%r13)
					   is_copy_assignable<_Tp>>;
	  // trivial types can have deleted assignment
	  static_assert( __assignable::type::value, "type is not assignable" );
#endif
	  const ptrdiff_t _Num = __last - __first;
	  if (_Num)
  7b:	48 39 df             	cmp    %rbx,%rdi
  7e:	74 0e                	je     8e <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x8e>
	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
  80:	4d 89 f8             	mov    %r15,%r8
  83:	48 89 da             	mov    %rbx,%rdx
  86:	48 89 e9             	mov    %rbp,%rcx
  89:	e8 00 00 00 00       	callq  8e <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x8e>
	  const ptrdiff_t _Num = __last - __first;
  8e:	4d 89 e5             	mov    %r12,%r13
	  ++__new_finish;
  91:	4e 8d 4c 3d 08       	lea    0x8(%rbp,%r15,1),%r9
  96:	49 29 fd             	sub    %rdi,%r13
	  if (_Num)
  99:	49 39 fc             	cmp    %rdi,%r12
  9c:	74 11                	je     af <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0xaf>
	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
  9e:	4c 89 c9             	mov    %r9,%rcx
  a1:	4d 89 e8             	mov    %r13,%r8
  a4:	48 89 fa             	mov    %rdi,%rdx
  a7:	e8 00 00 00 00       	callq  ac <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0xac>
  ac:	49 89 c1             	mov    %rax,%r9
	  return __result + _Num;
  af:	4d 01 cd             	add    %r9,%r13
	if (__p)
  b2:	48 85 db             	test   %rbx,%rbx
  b5:	74 08                	je     bf <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0xbf>
	::operator delete(__p);
  b7:	48 89 d9             	mov    %rbx,%rcx
  ba:	e8 00 00 00 00       	callq  bf <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0xbf>
      this->_M_impl._M_start = __new_start;
  bf:	48 89 2e             	mov    %rbp,(%rsi)
      this->_M_impl._M_finish = __new_finish;
  c2:	4c 89 6e 08          	mov    %r13,0x8(%rsi)
      this->_M_impl._M_end_of_storage = __new_start + __len;
  c6:	4c 89 76 10          	mov    %r14,0x10(%rsi)
    }
  ca:	48 83 c4 38          	add    $0x38,%rsp
  ce:	5b                   	pop    %rbx
  cf:	5e                   	pop    %rsi
  d0:	5f                   	pop    %rdi
  d1:	5d                   	pop    %rbp
  d2:	41 5c                	pop    %r12
  d4:	41 5d                	pop    %r13
  d6:	41 5e                	pop    %r14
  d8:	41 5f                	pop    %r15
  da:	c3                   	retq   
  db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
	const size_type __len = size() + std::max(size(), __n);
  e0:	ba 01 00 00 00       	mov    $0x1,%edx
  e5:	4c 8d 34 d5 00 00 00 	lea    0x0(,%rdx,8),%r14
  ec:	00 
  ed:	e9 58 ff ff ff       	jmpq   4a <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x4a>
	return (__len < size() || __len > max_size()) ? max_size() : __len;
  f2:	48 b8 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rax
  f9:	ff ff 1f 
  fc:	48 39 c2             	cmp    %rax,%rdx
  ff:	0f 87 45 ff ff ff    	ja     4a <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x4a>
	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
 105:	48 85 d2             	test   %rdx,%rdx
 108:	75 db                	jne    e5 <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0xe5>
 10a:	4d 89 ef             	mov    %r13,%r15
 10d:	45 31 f6             	xor    %r14d,%r14d
 110:	31 ed                	xor    %ebp,%ebp
 112:	e9 58 ff ff ff       	jmpq   6f <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x6f>
 117:	90                   	nop
 118:	90                   	nop
 119:	90                   	nop
 11a:	90                   	nop
 11b:	90                   	nop
 11c:	90                   	nop
 11d:	90                   	nop
 11e:	90                   	nop
 11f:	90                   	nop

Disassembly of section .text.startup:

0000000000000000 <main>:

int main(int argc, char *argv[]) {
   0:	41 56                	push   %r14
   2:	41 55                	push   %r13
   4:	41 54                	push   %r12
   6:	55                   	push   %rbp
   7:	57                   	push   %rdi
   8:	56                   	push   %rsi
   9:	53                   	push   %rbx
   a:	48 81 ec 90 05 00 00 	sub    $0x590,%rsp
  11:	89 cb                	mov    %ecx,%ebx
  13:	48 89 d6             	mov    %rdx,%rsi
	  _M_realloc_insert(end(), __x);
  16:	48 8d bc 24 50 01 00 	lea    0x150(%rsp),%rdi
  1d:	00 
  1e:	e8 00 00 00 00       	callq  23 <main+0x23>
  parse_arguments(argc, argv);
  23:	48 89 f2             	mov    %rsi,%rdx
  26:	89 d9                	mov    %ebx,%ecx
  28:	e8 d0 16 00 00       	callq  16fd <_Z15parse_argumentsiPPc+0x2d>
  2d:	c5 f8 28 05 a0 03 00 	vmovaps 0x3a0(%rip),%xmm0        # 3d5 <main+0x3d5>
  34:	00 
  35:	48 8d 4f 18          	lea    0x18(%rdi),%rcx
  39:	4c 8d 84 24 30 01 00 	lea    0x130(%rsp),%r8
  40:	00 
  41:	31 d2                	xor    %edx,%edx
	: _Tp_alloc_type(), _M_start(), _M_finish(), _M_end_of_storage()
  43:	48 c7 84 24 50 01 00 	movq   $0x0,0x150(%rsp)
  4a:	00 00 00 00 00 
  4f:	c5 f8 29 84 24 30 01 	vmovaps %xmm0,0x130(%rsp)
  56:	00 00 
  58:	48 c7 84 24 58 01 00 	movq   $0x0,0x158(%rsp)
  5f:	00 00 00 00 00 
  64:	48 c7 84 24 60 01 00 	movq   $0x0,0x160(%rsp)
  6b:	00 00 00 00 00 
  70:	c5 fa 10 05 90 03 00 	vmovss 0x390(%rip),%xmm0        # 408 <main+0x408>
  77:	00 
  78:	48 c7 84 24 68 01 00 	movq   $0x0,0x168(%rsp)
  7f:	00 00 00 00 00 
  84:	48 c7 84 24 70 01 00 	movq   $0x0,0x170(%rsp)
  8b:	00 00 00 00 00 
  90:	48 c7 84 24 78 01 00 	movq   $0x0,0x178(%rsp)
  97:	00 00 00 00 00 
  9c:	c5 fa 11 84 24 40 01 	vmovss %xmm0,0x140(%rsp)
  a3:	00 00 
  a5:	c5 fa 11 84 24 44 01 	vmovss %xmm0,0x144(%rsp)
  ac:	00 00 
	  _M_realloc_insert(end(), __x);
  ae:	e8 00 00 00 00       	callq  b3 <main+0xb3>
  Scene scene;
  scene.addLight( Light( Vector<FLOAT,3>{500.0, 500.0, 1000.0}) );
  std::ifstream input(input_file_name);
  b3:	4c 8d a4 24 a0 03 00 	lea    0x3a0(%rsp),%r12
  ba:	00 
  bb:	48 8d 15 10 00 00 00 	lea    0x10(%rip),%rdx        # d2 <main+0xd2>
  c2:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  c8:	4c 89 e1             	mov    %r12,%rcx
  cb:	e8 00 00 00 00       	callq  d0 <main+0xd0>
  std::ofstream output(output_bmp_file_name, std::ofstream::binary); // for windows
  d0:	48 8d ac 24 c0 01 00 	lea    0x1c0(%rsp),%rbp
  d7:	00 
  d8:	48 8d 15 08 00 00 00 	lea    0x8(%rip),%rdx        # e7 <main+0xe7>
  df:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  e5:	48 89 e9             	mov    %rbp,%rcx
  e8:	e8 00 00 00 00       	callq  ed <main+0xed>
  read_wavefront(input, scene);
  ed:	48 89 fa             	mov    %rdi,%rdx
  f0:	4c 89 e1             	mov    %r12,%rcx
  f3:	e8 60 22 00 00       	callq  2358 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xf8>
    for (size_t i = 0; i < triangles.size(); i++) {
  f8:	48 8b 8c 24 50 01 00 	mov    0x150(%rsp),%rcx
  ff:	00 
 100:	4c 8b 84 24 58 01 00 	mov    0x158(%rsp),%r8
 107:	00 
	: _Tp_alloc_type(), _M_start(), _M_finish(), _M_end_of_storage()
 108:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
 10c:	48 c7 84 24 00 01 00 	movq   $0x0,0x100(%rsp)
 113:	00 00 00 00 00 
 118:	4c 39 c1             	cmp    %r8,%rcx
 11b:	c5 f8 29 84 24 f0 00 	vmovaps %xmm0,0xf0(%rsp)
 122:	00 00 
 124:	0f 84 a6 00 00 00    	je     1d0 <main+0x1d0>
 12a:	45 31 c9             	xor    %r9d,%r9d
 12d:	31 d2                	xor    %edx,%edx
 12f:	31 db                	xor    %ebx,%ebx
	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
 131:	4c 8d b4 24 80 01 00 	lea    0x180(%rsp),%r14
 138:	00 
 139:	4c 8d ac 24 f0 00 00 	lea    0xf0(%rsp),%r13
 140:	00 
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
 141:	48 be 39 8e e3 38 8e 	movabs $0x8e38e38e38e38e39,%rsi
 148:	e3 38 8e 
 14b:	eb 4e                	jmp    19b <main+0x19b>
 14d:	0f 1f 00             	nopl   (%rax)
	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
 150:	48 85 d2             	test   %rdx,%rdx
 153:	74 13                	je     168 <main+0x168>
 155:	48 89 02             	mov    %rax,(%rdx)
 158:	48 8b 8c 24 50 01 00 	mov    0x150(%rsp),%rcx
 15f:	00 
 160:	4c 8b 84 24 58 01 00 	mov    0x158(%rsp),%r8
 167:	00 
	    ++this->_M_impl._M_finish;
 168:	48 83 c2 08          	add    $0x8,%rdx
 16c:	48 89 94 24 f8 00 00 	mov    %rdx,0xf8(%rsp)
 173:	00 
 174:	4c 89 c0             	mov    %r8,%rax
 177:	48 83 c3 01          	add    $0x1,%rbx
 17b:	48 29 c8             	sub    %rcx,%rax
 17e:	48 c1 f8 03          	sar    $0x3,%rax
 182:	48 0f af c6          	imul   %rsi,%rax
 186:	48 39 d8             	cmp    %rbx,%rax
 189:	76 45                	jbe    1d0 <main+0x1d0>
 18b:	48 8b 94 24 f8 00 00 	mov    0xf8(%rsp),%rdx
 192:	00 
 193:	4c 8b 8c 24 00 01 00 	mov    0x100(%rsp),%r9
 19a:	00 
	return *(this->_M_impl._M_start + __n);
 19b:	48 8d 04 db          	lea    (%rbx,%rbx,8),%rax
	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
 19f:	4c 39 ca             	cmp    %r9,%rdx
 1a2:	48 8d 04 c1          	lea    (%rcx,%rax,8),%rax
      triangles_ptr.push_back( &triangles[i] );      
 1a6:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
 1ad:	00 
 1ae:	75 a0                	jne    150 <main+0x150>
	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
 1b0:	4d 89 f0             	mov    %r14,%r8
 1b3:	4c 89 e9             	mov    %r13,%rcx
 1b6:	e8 00 00 00 00       	callq  1bb <main+0x1bb>
 1bb:	48 8b 8c 24 50 01 00 	mov    0x150(%rsp),%rcx
 1c2:	00 
 1c3:	4c 8b 84 24 58 01 00 	mov    0x158(%rsp),%r8
 1ca:	00 
 1cb:	eb a7                	jmp    174 <main+0x174>
 1cd:	0f 1f 00             	nopl   (%rax)
  std::vector<Triangle<FLOAT> *> triangles = scene.getTriangles();
  Screen screen(resolution_x, resolution_y);
 1d0:	48 63 05 a8 00 00 00 	movslq 0xa8(%rip),%rax        # 27f <main+0x27f>
 1d7:	48 63 1d a4 00 00 00 	movslq 0xa4(%rip),%rbx        # 282 <main+0x282>
      : width(width), height(height), buffer(std::unique_ptr<Color []>( new Color[width * height] ))
 1de:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
 1e3:	c5 fa 7e 4c 24 38    	vmovq  0x38(%rsp),%xmm1
 1e9:	c4 e3 f1 22 c3 01    	vpinsrq $0x1,%rbx,%xmm1,%xmm0
 1ef:	48 0f af d8          	imul   %rax,%rbx
 1f3:	48 b8 aa aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaa,%rax
 1fa:	aa aa 0a 
 1fd:	c5 f8 29 84 24 10 01 	vmovaps %xmm0,0x110(%rsp)
 204:	00 00 
 206:	48 39 c3             	cmp    %rax,%rbx
 209:	0f 87 79 02 00 00    	ja     488 <main+0x488>
 20f:	48 8d 0c 5b          	lea    (%rbx,%rbx,2),%rcx
 213:	48 c1 e1 02          	shl    $0x2,%rcx
 217:	e8 00 00 00 00       	callq  21c <main+0x21c>
 21c:	4c 8d 4b ff          	lea    -0x1(%rbx),%r9
 220:	49 83 f9 ff          	cmp    $0xffffffffffffffff,%r9
 224:	4c 89 c9             	mov    %r9,%rcx
 227:	0f 84 ff 00 00 00    	je     32c <main+0x32c>
 22d:	49 83 f9 06          	cmp    $0x6,%r9
 231:	0f 86 49 02 00 00    	jbe    480 <main+0x480>
     : red(red), green(green), blue(blue)
 237:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 23b:	49 89 d8             	mov    %rbx,%r8
 23e:	48 89 c2             	mov    %rax,%rdx
 241:	49 c1 e8 03          	shr    $0x3,%r8
      : width(width), height(height), buffer(std::unique_ptr<Color []>( new Color[width * height] ))
 245:	31 c9                	xor    %ecx,%ecx
 247:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 24e:	00 00 
 250:	48 83 c1 01          	add    $0x1,%rcx
     : red(red), green(green), blue(blue)
 254:	c4 e3 7d 19 42 10 01 	vextractf128 $0x1,%ymm0,0x10(%rdx)
 25b:	c5 f8 11 02          	vmovups %xmm0,(%rdx)
 25f:	c4 e3 7d 19 42 30 01 	vextractf128 $0x1,%ymm0,0x30(%rdx)
 266:	48 83 c2 60          	add    $0x60,%rdx
 26a:	c5 f8 11 42 c0       	vmovups %xmm0,-0x40(%rdx)
 26f:	c4 e3 7d 19 42 f0 01 	vextractf128 $0x1,%ymm0,-0x10(%rdx)
 276:	c5 f8 11 42 e0       	vmovups %xmm0,-0x20(%rdx)
 27b:	4c 39 c1             	cmp    %r8,%rcx
 27e:	72 d0                	jb     250 <main+0x250>
 280:	49 89 d8             	mov    %rbx,%r8
 283:	4c 89 c9             	mov    %r9,%rcx
 286:	49 83 e0 f8          	and    $0xfffffffffffffff8,%r8
 28a:	4b 8d 14 40          	lea    (%r8,%r8,2),%rdx
 28e:	4c 29 c1             	sub    %r8,%rcx
 291:	4c 39 c3             	cmp    %r8,%rbx
 294:	48 8d 14 90          	lea    (%rax,%rdx,4),%rdx
 298:	0f 84 da 01 00 00    	je     478 <main+0x478>
 29e:	c5 f8 77             	vzeroupper 
      : width(width), height(height), buffer(std::unique_ptr<Color []>( new Color[width * height] ))
 2a1:	48 85 c9             	test   %rcx,%rcx
     : red(red), green(green), blue(blue)
 2a4:	48 c7 02 00 00 00 00 	movq   $0x0,(%rdx)
 2ab:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%rdx)
      : width(width), height(height), buffer(std::unique_ptr<Color []>( new Color[width * height] ))
 2b2:	74 78                	je     32c <main+0x32c>
 2b4:	48 83 f9 01          	cmp    $0x1,%rcx
     : red(red), green(green), blue(blue)
 2b8:	48 c7 42 0c 00 00 00 	movq   $0x0,0xc(%rdx)
 2bf:	00 
 2c0:	c7 42 14 00 00 00 00 	movl   $0x0,0x14(%rdx)
      : width(width), height(height), buffer(std::unique_ptr<Color []>( new Color[width * height] ))
 2c7:	74 63                	je     32c <main+0x32c>
 2c9:	48 83 f9 02          	cmp    $0x2,%rcx
     : red(red), green(green), blue(blue)
 2cd:	48 c7 42 18 00 00 00 	movq   $0x0,0x18(%rdx)
 2d4:	00 
 2d5:	c7 42 20 00 00 00 00 	movl   $0x0,0x20(%rdx)
      : width(width), height(height), buffer(std::unique_ptr<Color []>( new Color[width * height] ))
 2dc:	74 4e                	je     32c <main+0x32c>
 2de:	48 83 f9 03          	cmp    $0x3,%rcx
     : red(red), green(green), blue(blue)
 2e2:	48 c7 42 24 00 00 00 	movq   $0x0,0x24(%rdx)
 2e9:	00 
 2ea:	c7 42 2c 00 00 00 00 	movl   $0x0,0x2c(%rdx)
      : width(width), height(height), buffer(std::unique_ptr<Color []>( new Color[width * height] ))
 2f1:	74 39                	je     32c <main+0x32c>
 2f3:	48 83 f9 04          	cmp    $0x4,%rcx
     : red(red), green(green), blue(blue)
 2f7:	48 c7 42 30 00 00 00 	movq   $0x0,0x30(%rdx)
 2fe:	00 
 2ff:	c7 42 38 00 00 00 00 	movl   $0x0,0x38(%rdx)
      : width(width), height(height), buffer(std::unique_ptr<Color []>( new Color[width * height] ))
 306:	74 24                	je     32c <main+0x32c>
 308:	48 83 f9 05          	cmp    $0x5,%rcx
     : red(red), green(green), blue(blue)
 30c:	48 c7 42 3c 00 00 00 	movq   $0x0,0x3c(%rdx)
 313:	00 
 314:	c7 42 44 00 00 00 00 	movl   $0x0,0x44(%rdx)
      : width(width), height(height), buffer(std::unique_ptr<Color []>( new Color[width * height] ))
 31b:	74 0f                	je     32c <main+0x32c>
     : red(red), green(green), blue(blue)
 31d:	48 c7 42 48 00 00 00 	movq   $0x0,0x48(%rdx)
 324:	00 
 325:	c7 42 50 00 00 00 00 	movl   $0x0,0x50(%rdx)
      __uniq_ptr_impl(pointer __p) : _M_t() { _M_ptr() = __p; }
 32c:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
 333:	00 
      this->x[i++] = t;
 334:	48 b8 cd cc 4c 3d 00 	movabs $0x3f8000003d4ccccd,%rax
 33b:	00 80 3f 
  // camera for teapot_large.obj
  Camera camera( Vector<FLOAT, 3>( {  0.05, 1.0, 200.0} ),
                 Vector<FLOAT, 3>( {  0.05, 1.0, 100.0} ),
                 Vector<FLOAT, 3>( {  0.0, 1.6, 0.0} ),
                 Vector<FLOAT, 3>( {  1.6, 0.0,  0.0} ),
                 screen );
 33e:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
 345:	00 
 346:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
 34d:	00 
 34e:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
 355:	00 
 356:	48 b8 00 00 00 00 cd 	movabs $0x3fcccccd00000000,%rax
 35d:	cc cc 3f 
 360:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
 365:	48 8d 9c 24 10 01 00 	lea    0x110(%rsp),%rbx
 36c:	00 
 36d:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
 372:	48 8d 94 24 a0 00 00 	lea    0xa0(%rsp),%rdx
 379:	00 
 37a:	4c 8d 4c 24 60       	lea    0x60(%rsp),%r9
 37f:	4c 8d 84 24 80 00 00 	lea    0x80(%rsp),%r8
 386:	00 
 387:	48 89 f1             	mov    %rsi,%rcx
 38a:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
 38f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
 394:	c7 84 24 a8 00 00 00 	movl   $0x43480000,0xa8(%rsp)
 39b:	00 00 48 43 
 39f:	c7 84 24 88 00 00 00 	movl   $0x42c80000,0x88(%rsp)
 3a6:	00 00 c8 42 
 3aa:	c7 44 24 68 00 00 00 	movl   $0x0,0x68(%rsp)
 3b1:	00 
 3b2:	48 c7 44 24 40 cd cc 	movq   $0x3fcccccd,0x40(%rsp)
 3b9:	cc 3f 
 3bb:	c7 44 24 48 00 00 00 	movl   $0x0,0x48(%rsp)
 3c2:	00 
 3c3:	e8 00 00 00 00       	callq  3c8 <main+0x3c8>

  stats.time_start();
 3c8:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 3cf <main+0x3cf>
 3cf:	e8 00 00 00 00       	callq  3d4 <main+0x3d4>
#ifndef USE_KDTREE
  raytrace(camera, scene, screen);
 3d4:	48 89 f1             	mov    %rsi,%rcx
 3d7:	45 31 c9             	xor    %r9d,%r9d
 3da:	49 89 d8             	mov    %rbx,%r8
 3dd:	48 89 fa             	mov    %rdi,%rdx
 3e0:	e8 80 07 00 00       	callq  b65 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x3e5>
#else
  std::unique_ptr<KDTree> tree =  std::unique_ptr<KDTree>( KDTree::buildTree( triangles ) );
  raytrace(camera, scene, screen, tree.get());
#endif
  stats.time_stop();
 3e5:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 3ec <main+0x3ec>
 3ec:	e8 00 00 00 00       	callq  3f1 <main+0x3f1>
  if (write_ppm_to_stdout) {
 3f1:	80 3d 9f 00 00 00 00 	cmpb   $0x0,0x9f(%rip)        # 497 <main+0x497>
 3f8:	74 0f                	je     409 <main+0x409>
    std::cout << screen; // write image in PPM format to the standard output
 3fa:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 401 <main+0x401>
 401:	48 89 da             	mov    %rbx,%rdx
 404:	e8 00 00 00 00       	callq  409 <main+0x409>
  }
  write_bmp(output, screen);
 409:	48 89 da             	mov    %rbx,%rdx
 40c:	48 89 e9             	mov    %rbp,%rcx
 40f:	e8 c0 03 00 00       	callq  7d4 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x54>
  output.close();
 414:	48 89 e9             	mov    %rbp,%rcx
 417:	e8 00 00 00 00       	callq  41c <main+0x41c>
  stats.print();
 41c:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 423 <main+0x423>
 423:	e8 00 00 00 00       	callq  428 <main+0x428>
	if (__ptr != nullptr)
 428:	48 8b 8c 24 20 01 00 	mov    0x120(%rsp),%rcx
 42f:	00 
 430:	48 85 c9             	test   %rcx,%rcx
 433:	74 05                	je     43a <main+0x43a>
	delete [] __ptr;
 435:	e8 00 00 00 00       	callq  43a <main+0x43a>
      { std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 43a:	48 8b 8c 24 f0 00 00 	mov    0xf0(%rsp),%rcx
 441:	00 
	if (__p)
 442:	48 85 c9             	test   %rcx,%rcx
 445:	74 05                	je     44c <main+0x44c>
	::operator delete(__p);
 447:	e8 00 00 00 00       	callq  44c <main+0x44c>
  std::ofstream output(output_bmp_file_name, std::ofstream::binary); // for windows
 44c:	48 89 e9             	mov    %rbp,%rcx
 44f:	e8 00 00 00 00       	callq  454 <main+0x454>
  std::ifstream input(input_file_name);
 454:	4c 89 e1             	mov    %r12,%rcx
 457:	e8 00 00 00 00       	callq  45c <main+0x45c>
  Scene scene;
 45c:	48 89 f9             	mov    %rdi,%rcx
 45f:	e8 00 00 00 00       	callq  464 <main+0x464>

  return 0;
}
 464:	31 c0                	xor    %eax,%eax
 466:	48 81 c4 90 05 00 00 	add    $0x590,%rsp
 46d:	5b                   	pop    %rbx
 46e:	5e                   	pop    %rsi
 46f:	5f                   	pop    %rdi
 470:	5d                   	pop    %rbp
 471:	41 5c                	pop    %r12
 473:	41 5d                	pop    %r13
 475:	41 5e                	pop    %r14
 477:	c3                   	retq   
 478:	c5 f8 77             	vzeroupper 
 47b:	e9 ac fe ff ff       	jmpq   32c <main+0x32c>
      : width(width), height(height), buffer(std::unique_ptr<Color []>( new Color[width * height] ))
 480:	48 89 c2             	mov    %rax,%rdx
 483:	e9 19 fe ff ff       	jmpq   2a1 <main+0x2a1>
 488:	e8 00 00 00 00       	callq  48d <main+0x48d>
 48d:	48 89 c3             	mov    %rax,%rbx
 490:	c5 f8 77             	vzeroupper 
      { std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 493:	48 8b 8c 24 f0 00 00 	mov    0xf0(%rsp),%rcx
 49a:	00 
	if (__p)
 49b:	48 85 c9             	test   %rcx,%rcx
 49e:	74 05                	je     4a5 <main+0x4a5>
 4a0:	e8 00 00 00 00       	callq  4a5 <main+0x4a5>
  std::ofstream output(output_bmp_file_name, std::ofstream::binary); // for windows
 4a5:	48 89 e9             	mov    %rbp,%rcx
 4a8:	e8 00 00 00 00       	callq  4ad <main+0x4ad>
  std::ifstream input(input_file_name);
 4ad:	4c 89 e1             	mov    %r12,%rcx
 4b0:	e8 00 00 00 00       	callq  4b5 <main+0x4b5>
  Scene scene;
 4b5:	48 89 f9             	mov    %rdi,%rcx
 4b8:	e8 00 00 00 00       	callq  4bd <main+0x4bd>
 4bd:	48 89 d9             	mov    %rbx,%rcx
 4c0:	e8 00 00 00 00       	callq  4c5 <main+0x4c5>
      { std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 4c5:	48 8b 8c 24 f0 00 00 	mov    0xf0(%rsp),%rcx
 4cc:	00 
 4cd:	48 89 c3             	mov    %rax,%rbx
	if (__p)
 4d0:	48 85 c9             	test   %rcx,%rcx
 4d3:	74 3c                	je     511 <main+0x511>
 4d5:	c5 f8 77             	vzeroupper 
 4d8:	e8 00 00 00 00       	callq  4dd <main+0x4dd>
 4dd:	eb c6                	jmp    4a5 <main+0x4a5>
 4df:	48 89 c3             	mov    %rax,%rbx
 4e2:	c5 f8 77             	vzeroupper 
 4e5:	eb ce                	jmp    4b5 <main+0x4b5>
 4e7:	48 89 c3             	mov    %rax,%rbx
 4ea:	c5 f8 77             	vzeroupper 
 4ed:	eb b6                	jmp    4a5 <main+0x4a5>
 4ef:	48 89 c3             	mov    %rax,%rbx
 4f2:	c5 f8 77             	vzeroupper 
 4f5:	eb b6                	jmp    4ad <main+0x4ad>
	if (__ptr != nullptr)
 4f7:	48 8b 8c 24 20 01 00 	mov    0x120(%rsp),%rcx
 4fe:	00 
 4ff:	48 89 c3             	mov    %rax,%rbx
 502:	48 85 c9             	test   %rcx,%rcx
 505:	74 0f                	je     516 <main+0x516>
	delete [] __ptr;
 507:	c5 f8 77             	vzeroupper 
 50a:	e8 00 00 00 00       	callq  50f <main+0x50f>
 50f:	eb 82                	jmp    493 <main+0x493>
 511:	c5 f8 77             	vzeroupper 
 514:	eb 8f                	jmp    4a5 <main+0x4a5>
 516:	c5 f8 77             	vzeroupper 
 519:	e9 75 ff ff ff       	jmpq   493 <main+0x493>
 51e:	66 90                	xchg   %ax,%ax

0000000000000520 <_GLOBAL__sub_I__ZlsRSoRK6Screen>:
}
 520:	53                   	push   %rbx
 521:	48 83 ec 30          	sub    $0x30,%rsp
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  //@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
 525:	48 8d 0d 18 00 00 00 	lea    0x18(%rip),%rcx        # 544 <_GLOBAL__sub_I__ZlsRSoRK6Screen+0x24>
static std::string input_file_name = "examples/teapot.obj";
 52c:	48 8d 5c 24 2f       	lea    0x2f(%rsp),%rbx
 531:	e8 00 00 00 00       	callq  536 <_GLOBAL__sub_I__ZlsRSoRK6Screen+0x16>
 536:	4c 8b 05 00 00 00 00 	mov    0x0(%rip),%r8        # 53d <_GLOBAL__sub_I__ZlsRSoRK6Screen+0x1d>
 53d:	48 8d 15 18 00 00 00 	lea    0x18(%rip),%rdx        # 55c <_GLOBAL__sub_I__ZlsRSoRK6Screen+0x3c>
 544:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 54b <_GLOBAL__sub_I__ZlsRSoRK6Screen+0x2b>
 54b:	e8 00 00 00 00       	callq  550 <_GLOBAL__sub_I__ZlsRSoRK6Screen+0x30>
 550:	48 8d 15 f0 02 00 00 	lea    0x2f0(%rip),%rdx        # 847 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xc7>
 557:	48 8d 0d 10 00 00 00 	lea    0x10(%rip),%rcx        # 56e <_GLOBAL__sub_I__ZlsRSoRK6Screen+0x4e>
 55e:	49 89 d8             	mov    %rbx,%r8
 561:	e8 00 00 00 00       	callq  566 <_GLOBAL__sub_I__ZlsRSoRK6Screen+0x46>
 566:	4c 8b 05 00 00 00 00 	mov    0x0(%rip),%r8        # 56d <_GLOBAL__sub_I__ZlsRSoRK6Screen+0x4d>
 56d:	48 8d 15 10 00 00 00 	lea    0x10(%rip),%rdx        # 584 <_GLOBAL__sub_I__ZlsRSoRK6Screen+0x64>
 574:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 57b <_GLOBAL__sub_I__ZlsRSoRK6Screen+0x5b>
 57b:	e8 00 00 00 00       	callq  580 <_GLOBAL__sub_I__ZlsRSoRK6Screen+0x60>
static std::string output_bmp_file_name = "output.bmp";
 580:	48 8d 15 04 03 00 00 	lea    0x304(%rip),%rdx        # 88b <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x10b>
 587:	48 8d 0d 08 00 00 00 	lea    0x8(%rip),%rcx        # 596 <_GLOBAL__sub_I__ZlsRSoRK6Screen+0x76>
 58e:	49 89 d8             	mov    %rbx,%r8
 591:	e8 00 00 00 00       	callq  596 <_GLOBAL__sub_I__ZlsRSoRK6Screen+0x76>
 596:	4c 8b 05 00 00 00 00 	mov    0x0(%rip),%r8        # 59d <_GLOBAL__sub_I__ZlsRSoRK6Screen+0x7d>
 59d:	48 8d 15 08 00 00 00 	lea    0x8(%rip),%rdx        # 5ac <_GLOBAL__sub_I__ZlsRSoRK6Screen+0x8c>
 5a4:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 5ab <_GLOBAL__sub_I__ZlsRSoRK6Screen+0x8b>
 5ab:	e8 00 00 00 00       	callq  5b0 <_GLOBAL__sub_I__ZlsRSoRK6Screen+0x90>
 5b0:	90                   	nop
}
 5b1:	48 83 c4 30          	add    $0x30,%rsp
 5b5:	5b                   	pop    %rbx
 5b6:	c3                   	retq   
 5b7:	90                   	nop
 5b8:	90                   	nop
 5b9:	90                   	nop
 5ba:	90                   	nop
 5bb:	90                   	nop
 5bc:	90                   	nop
 5bd:	90                   	nop
 5be:	90                   	nop
 5bf:	90                   	nop
