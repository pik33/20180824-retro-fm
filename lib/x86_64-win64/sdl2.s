	.file "sdl2.pas"
# Begin asmlist al_begin

.section .debug_line
.Ldebug_linesection0:
.Ldebug_line0:

.section .debug_abbrev
.Ldebug_abbrevsection0:
.Ldebug_abbrev0:

.section .text.b_DEBUGSTART_$SDL2,"x"
.globl	DEBUGSTART_$SDL2
DEBUGSTART_$SDL2:
# End asmlist al_begin
# Begin asmlist al_procedures

.section .text.n_sdl2_$$_sdl_iconv_utf8_locale$pchar$$pchar,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_ICONV_UTF8_LOCALE$PCHAR$$PCHAR
SDL2_$$_SDL_ICONV_UTF8_LOCALE$PCHAR$$PCHAR:
.Lc1:
.seh_proc SDL2_$$_SDL_ICONV_UTF8_LOCALE$PCHAR$$PCHAR
.Ll1:
# [sdl2.pas]
# [2688] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc3:
.seh_stackalloc 32
# Var S located in register r8
# Var $result located in register rax
.seh_endprologue
# PeepHole Optimization,MovMov2Mov1
	movq	%rcx,%rbx
# Var S located in register rbx
.Ll2:
# [2689] exit(SDL_iconv_string('', 'UTF-8', S, SDL_strlen(S) + 1));
	call	_$dll$sdl2$SDL_strlen
	leaq	1(%rax),%r9
	movq	%rbx,%r8
# Var S located in register r8
	leaq	_$SDL2$_Ld1(%rip),%rdx
	leaq	_$SDL2$_Ld2(%rip),%rcx
	call	_$dll$sdl2$SDL_iconv_string
# Var $result located in register rax
.Ll3:
# [2690] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc2:
.Lt1:
.Ll4:

.section .text.n_sdl2_$$_sdl_iconv_utf8_ucs2$pchar$$pchar,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_ICONV_UTF8_UCS2$PCHAR$$PCHAR
SDL2_$$_SDL_ICONV_UTF8_UCS2$PCHAR$$PCHAR:
.Lc4:
.seh_proc SDL2_$$_SDL_ICONV_UTF8_UCS2$PCHAR$$PCHAR
.Ll5:
# [2693] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc6:
.seh_stackalloc 32
# Var S located in register r8
# Var $result located in register rax
.seh_endprologue
# PeepHole Optimization,MovMov2Mov1
	movq	%rcx,%rbx
# Var S located in register rbx
.Ll6:
# [2694] exit(SDL_iconv_string('UCS-2-INTERNAL', 'UTF-8', S, SDL_strlen(S) + 1));
	call	_$dll$sdl2$SDL_strlen
	leaq	1(%rax),%r9
	movq	%rbx,%r8
# Var S located in register r8
	leaq	_$SDL2$_Ld1(%rip),%rdx
	leaq	_$SDL2$_Ld3(%rip),%rcx
	call	_$dll$sdl2$SDL_iconv_string
# Var $result located in register rax
.Ll7:
# [2695] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc5:
.Lt2:
.Ll8:

.section .text.n_sdl2_$$_sdl_iconv_utf8_ucs4$pchar$$pchar,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_ICONV_UTF8_UCS4$PCHAR$$PCHAR
SDL2_$$_SDL_ICONV_UTF8_UCS4$PCHAR$$PCHAR:
.Lc7:
.seh_proc SDL2_$$_SDL_ICONV_UTF8_UCS4$PCHAR$$PCHAR
.Ll9:
# [2698] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc9:
.seh_stackalloc 32
# Var S located in register r8
# Var $result located in register rax
.seh_endprologue
# PeepHole Optimization,MovMov2Mov1
	movq	%rcx,%rbx
# Var S located in register rbx
.Ll10:
# [2699] exit(SDL_iconv_string('UCS-4-INTERNAL', 'UTF-8', S, SDL_strlen(S) + 1));
	call	_$dll$sdl2$SDL_strlen
	leaq	1(%rax),%r9
	movq	%rbx,%r8
# Var S located in register r8
	leaq	_$SDL2$_Ld1(%rip),%rdx
	leaq	_$SDL2$_Ld4(%rip),%rcx
	call	_$dll$sdl2$SDL_iconv_string
# Var $result located in register rax
.Ll11:
# [2700] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc8:
.Lt3:
.Ll12:

.section .text.n_sdl2_$$_sdl_mostsignificantbitindex32$longword$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_MOSTSIGNIFICANTBITINDEX32$LONGWORD$$LONGINT
SDL2_$$_SDL_MOSTSIGNIFICANTBITINDEX32$LONGWORD$$LONGINT:
.Lc10:
# Var x located in register ecx
# Var $result located in register eax
# [2706] begin
.Ll13:
# [2707] if x = 0 then
	testl	%ecx,%ecx
	jne	.Lj48
.Ll14:
# [2709] else
	movl	$-1,%eax
.Ll15:
# [2708] exit(-1)
	jmp	.Lj45
.Lj48:
.Ll16:
# [2710] exit(BsrDword(x));
	bsrl	%ecx,%edx
	jne	.Lj54
	movl	$255,%edx
.Lj54:
	movl	%edx,%eax
.Lj45:
.Ll17:
# [2711] end;
	ret
.Lc11:
.Lt4:
.Ll18:

.section .text.n_sdl2_$$_sdl_version$psdl_version,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_VERSION$PSDL_VERSION
SDL2_$$_SDL_VERSION$PSDL_VERSION:
.Lc12:
# Var x located in register rax
.Ll19:
# [2717] begin
	movq	%rcx,%rax
# Var x located in register rax
.Ll20:
# [2718] x^.major := SDL_MAJOR_VERSION;
	movb	$2,(%rax)
# Var x located in register rax
.Ll21:
# [2719] x^.minor := SDL_MINOR_VERSION;
	movb	$0,1(%rax)
# Var x located in register rax
.Ll22:
# [2720] x^.patch := SDL_PATCHLEVEL;
	movb	$3,2(%rax)
.Ll23:
# [2721] end;
	ret
.Lc13:
.Lt5:
.Ll24:

.section .text.n_sdl2_$$_sdl_versionnum$longint$longint$longint$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_VERSIONNUM$LONGINT$LONGINT$LONGINT$$LONGINT
SDL2_$$_SDL_VERSIONNUM$LONGINT$LONGINT$LONGINT$$LONGINT:
.Lc14:
# Var X located in register ecx
# Var Y located in register edx
# Var Z located in register r8d
# Var $result located in register eax
# [2724] begin
.Ll25:
# [2725] exit(X * 1000 + Y * 100 + Z);
	imull	$1000,%ecx,%ecx
	imull	$100,%edx,%eax
	leal	(%ecx,%eax),%eax
	leal	(%eax,%r8d),%eax
# Var $result located in register eax
.Ll26:
# [2726] end;
	ret
.Lc15:
.Lt6:
.Ll27:

.section .text.n_sdl2_$$_sdl_compiledversion$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_COMPILEDVERSION$$LONGINT
SDL2_$$_SDL_COMPILEDVERSION$$LONGINT:
.Lc16:
# Var $result located in register eax
# [2729] begin
.Ll28:
# [2730] exit(SDL_VERSIONNUM(SDL_MAJOR_VERSION, SDL_MINOR_VERSION, SDL_PATCHLEVEL));
	movl	$2003,%eax
# Var $result located in register eax
.Ll29:
# [2731] end;
	ret
.Lc17:
.Lt7:
.Ll30:

.section .text.n_sdl2_$$_sdl_version_atleast$longint$longint$longint$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_VERSION_ATLEAST$LONGINT$LONGINT$LONGINT$$BOOLEAN
SDL2_$$_SDL_VERSION_ATLEAST$LONGINT$LONGINT$LONGINT$$BOOLEAN:
.Lc18:
# Var X located in register ecx
# Var Y located in register edx
# Var Z located in register r8d
# Var $result located in register al
# [2734] begin
.Ll31:
# [2735] exit(SDL_COMPILEDVERSION >= SDL_VERSIONNUM(X, Y, Z));
	imull	$1000,%ecx,%ecx
	imull	$100,%edx,%eax
	leal	(%ecx,%eax),%eax
	leal	(%eax,%r8d),%eax
	movl	$2003,%edx
	cmpl	%edx,%eax
# Var $result located in register al
	setleb	%al
# PeepHole Optimization,var9
.Ll32:
# [2736] end;
	andl	$255,%eax
	ret
.Lc19:
.Lt8:
.Ll33:

.section .text.n_sdl2_$$_sdl_outofmemory$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_OUTOFMEMORY$$LONGINT
SDL2_$$_SDL_OUTOFMEMORY$$LONGINT:
.Lc20:
.seh_proc SDL2_$$_SDL_OUTOFMEMORY$$LONGINT
.Ll34:
# [2742] begin
	leaq	-40(%rsp),%rsp
.Lc22:
.seh_stackalloc 40
# Var $result located in register eax
.seh_endprologue
.Ll35:
# [2743] exit(SDL_Error(SDL_ENOMEM));
	movl	$0,%ecx
	call	_$dll$sdl2$SDL_Error
# Var $result located in register eax
.Ll36:
# [2744] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc21:
.Lt9:
.Ll37:

.section .text.n_sdl2_$$_sdl_unsupported$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_UNSUPPORTED$$LONGINT
SDL2_$$_SDL_UNSUPPORTED$$LONGINT:
.Lc23:
.seh_proc SDL2_$$_SDL_UNSUPPORTED$$LONGINT
.Ll38:
# [2747] begin
	leaq	-40(%rsp),%rsp
.Lc25:
.seh_stackalloc 40
# Var $result located in register eax
.seh_endprologue
.Ll39:
# [2748] exit(SDL_Error(SDL_UNSUPPORTED_));
	movl	$4,%ecx
	call	_$dll$sdl2$SDL_Error
# Var $result located in register eax
.Ll40:
# [2749] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc24:
.Lt10:
.Ll41:

.section .text.n_sdl2_$$_sdl_invalidparamerror$pchar$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_INVALIDPARAMERROR$PCHAR$$LONGINT
SDL2_$$_SDL_INVALIDPARAMERROR$PCHAR$$LONGINT:
.Lc26:
.seh_proc SDL2_$$_SDL_INVALIDPARAMERROR$PCHAR$$LONGINT
.Ll42:
# [2752] begin
	leaq	-40(%rsp),%rsp
.Lc28:
.seh_stackalloc 40
# Var param located in register rdx
# Var $result located in register eax
.seh_endprologue
	movq	%rcx,%rdx
# Var param located in register rdx
.Ll43:
# [2753] exit(SDL_SetError('Parameter ''%s'' is invalid', (param)));
	leaq	_$SDL2$_Ld5(%rip),%rcx
	call	_$dll$sdl2$SDL_SetError
# Var $result located in register eax
.Ll44:
# [2754] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc27:
.Lt11:
.Ll45:

.section .text.n_sdl2_$$_sdl_ticks_passed$longword$longword$$longbool,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_TICKS_PASSED$LONGWORD$LONGWORD$$LONGBOOL
SDL2_$$_SDL_TICKS_PASSED$LONGWORD$LONGWORD$$LONGBOOL:
.Lc29:
# Var a located in register ecx
# Var b located in register edx
# Var $result located in register eax
# [2760] begin
.Ll46:
# [2761] exit((b - a) <= 0);
	andl	$4294967295,%edx
	andl	$4294967295,%ecx
	subq	%rcx,%rdx
	cmpq	$0,%rdx
	setleb	%al
# PeepHole Optimization,var9
	andl	$255,%eax
	negl	%eax
# Var $result located in register eax
.Ll47:
# [2762] end;
	ret
.Lc30:
.Lt12:
.Ll48:

.section .text.n_sdl2_$$_sdl_mutexp$pointer$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_MUTEXP$POINTER$$LONGINT
SDL2_$$_SDL_MUTEXP$POINTER$$LONGINT:
.Lc31:
.seh_proc SDL2_$$_SDL_MUTEXP$POINTER$$LONGINT
.Ll49:
# [2768] begin
	leaq	-40(%rsp),%rsp
.Lc33:
.seh_stackalloc 40
# Var mutex located in register rcx
# Var $result located in register eax
.seh_endprologue
# Var mutex located in register rcx
.Ll50:
# [2769] exit(SDL_LockMutex(mutex));
	call	_$dll$sdl2$SDL_LockMutex
# Var $result located in register eax
.Ll51:
# [2770] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc32:
.Lt13:
.Ll52:

.section .text.n_sdl2_$$_sdl_mutexv$pointer$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_MUTEXV$POINTER$$LONGINT
SDL2_$$_SDL_MUTEXV$POINTER$$LONGINT:
.Lc34:
.seh_proc SDL2_$$_SDL_MUTEXV$POINTER$$LONGINT
.Ll53:
# [2773] begin
	leaq	-40(%rsp),%rsp
.Lc36:
.seh_stackalloc 40
# Var mutex located in register rcx
# Var $result located in register eax
.seh_endprologue
# Var mutex located in register rcx
.Ll54:
# [2774] exit(SDL_UnlockMutex(mutex));
	call	_$dll$sdl2$SDL_UnlockMutex
# Var $result located in register eax
.Ll55:
# [2775] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc35:
.Lt14:
.Ll56:

.section .text.n_sdl2_$$_sdl_createthread$tsdl_threadfunction$pchar$pointer$$pointer,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_CREATETHREAD$TSDL_THREADFUNCTION$PCHAR$POINTER$$POINTER
SDL2_$$_SDL_CREATETHREAD$TSDL_THREADFUNCTION$PCHAR$POINTER$$POINTER:
.Lc37:
.seh_proc SDL2_$$_SDL_CREATETHREAD$TSDL_THREADFUNCTION$PCHAR$POINTER$$POINTER
.Ll57:
# [2782] begin
	leaq	-40(%rsp),%rsp
.Lc39:
.seh_stackalloc 40
# Var fn located in register rcx
# Var name located in register rdx
# Var data located in register r8
# Var $result located in register rax
.seh_endprologue
.Ll58:
# [2783] exit(SDL_CreateThread(fn, name, data, NIL, NIL));
	movq	$0,32(%rsp)
# Var data located in register r8
# Var name located in register rdx
# Var fn located in register rcx
	movq	$0,%r9
	call	_$dll$sdl2$SDL_CreateThread
# Var $result located in register rax
.Ll59:
# [2784] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc38:
.Lt15:
.Ll60:

.section .text.n_sdl2_$$_sdl_swap16$word$$word,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAP16$WORD$$WORD
SDL2_$$_SDL_SWAP16$WORD$$WORD:
.Lc40:
# Var x located in register ax
# Var $result located in register ax
.Ll61:
# [2791] begin
	movw	%cx,%ax
# PeepHole Optimization,var11
.Ll62:
# [2792] exit(SwapEndian(x));
	andl	$65535,%eax
	movl	%eax,%edx
	shrl	$8,%edx
	shll	$8,%eax
	orl	%edx,%eax
# Var $result located in register ax
# PeepHole Optimization,var11
.Ll63:
# [2793] end;
	andl	$65535,%eax
	ret
.Lc41:
.Lt16:
.Ll64:

.section .text.n_sdl2_$$_sdl_swap32$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAP32$LONGWORD$$LONGWORD
SDL2_$$_SDL_SWAP32$LONGWORD$$LONGWORD:
.Lc42:
.seh_proc SDL2_$$_SDL_SWAP32$LONGWORD$$LONGWORD
.Ll65:
# [2796] begin
	leaq	-40(%rsp),%rsp
.Lc44:
.seh_stackalloc 40
# Var x located in register ecx
# Var $result located in register eax
.seh_endprologue
# Var x located in register ecx
.Ll66:
# [2797] exit(SwapEndian(x));
	call	SYSTEM_$$_SWAPENDIAN$LONGWORD$$LONGWORD
# Var $result located in register eax
.Ll67:
# [2798] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc43:
.Lt17:
.Ll68:

.section .text.n_sdl2_$$_sdl_swap64$qword$$qword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAP64$QWORD$$QWORD
SDL2_$$_SDL_SWAP64$QWORD$$QWORD:
.Lc45:
.seh_proc SDL2_$$_SDL_SWAP64$QWORD$$QWORD
.Ll69:
# [2801] begin
	leaq	-40(%rsp),%rsp
.Lc47:
.seh_stackalloc 40
# Var x located in register rcx
# Var $result located in register rax
.seh_endprologue
# Var x located in register rcx
.Ll70:
# [2802] exit(SwapEndian(x));
	call	SYSTEM_$$_SWAPENDIAN$QWORD$$QWORD
# Var $result located in register rax
.Ll71:
# [2803] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc46:
.Lt18:
.Ll72:

.section .text.n_sdl2_$$_sdl_swapfloat$single$$single,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAPFLOAT$SINGLE$$SINGLE
SDL2_$$_SDL_SWAPFLOAT$SINGLE$$SINGLE:
.Lc48:
.seh_proc SDL2_$$_SDL_SWAPFLOAT$SINGLE$$SINGLE
.Ll73:
# [2809] begin
	leaq	-40(%rsp),%rsp
.Lc50:
.seh_stackalloc 40
# Var x located in register xmm0
# Var $result located in register xmm0
.seh_endprologue
# Var f located at rsp+32, size=OS_F32
# Var x located in register xmm0
.Ll74:
# [2810] f := x;
	movss	%xmm0,32(%rsp)
.Ll75:
# [2811] ui32 := SwapEndian(ui32);
	movl	32(%rsp),%eax
	movl	%eax,%ecx
	call	SYSTEM_$$_SWAPENDIAN$LONGWORD$$LONGWORD
	movl	%eax,32(%rsp)
# Var $result located in register xmm0
.Ll76:
# [2812] exit(f);
	movss	32(%rsp),%xmm0
.Ll77:
# [2813] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc49:
.Lt19:
.Ll78:

.section .text.n_sdl2_$$_sdl_swaple16$word$$word,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAPLE16$WORD$$WORD
SDL2_$$_SDL_SWAPLE16$WORD$$WORD:
.Lc51:
# Var x located in register ax
# Var $result located in register ax
.Ll79:
# [2816] begin
	movw	%cx,%ax
# Var x located in register ax
# Var $result located in register ax
# PeepHole Optimization,var11
.Ll80:
# [2818] end;
	andl	$65535,%eax
	ret
.Lc52:
.Lt20:
.Ll81:

.section .text.n_sdl2_$$_sdl_swaple32$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAPLE32$LONGWORD$$LONGWORD
SDL2_$$_SDL_SWAPLE32$LONGWORD$$LONGWORD:
.Lc53:
# Var x located in register eax
# Var $result located in register eax
.Ll82:
# [2821] begin
	movl	%ecx,%eax
# Var x located in register eax
# Var $result located in register eax
.Ll83:
# [2823] end;
	ret
.Lc54:
.Lt21:
.Ll84:

.section .text.n_sdl2_$$_sdl_swaple64$qword$$qword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAPLE64$QWORD$$QWORD
SDL2_$$_SDL_SWAPLE64$QWORD$$QWORD:
.Lc55:
# Var x located in register rax
# Var $result located in register rax
.Ll85:
# [2826] begin
	movq	%rcx,%rax
# Var x located in register rax
# Var $result located in register rax
.Ll86:
# [2828] end;
	ret
.Lc56:
.Lt22:
.Ll87:

.section .text.n_sdl2_$$_sdl_swapfloatle$single$$single,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAPFLOATLE$SINGLE$$SINGLE
SDL2_$$_SDL_SWAPFLOATLE$SINGLE$$SINGLE:
.Lc57:
# Var x located in register xmm0
# Var $result located in register xmm0
# [2831] begin
# Var $result located in register xmm0
# Var x located in register xmm0
.Ll88:
# [2837] end;
	ret
.Lc58:
.Lt23:
.Ll89:

.section .text.n_sdl2_$$_sdl_swapbe16$word$$word,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAPBE16$WORD$$WORD
SDL2_$$_SDL_SWAPBE16$WORD$$WORD:
.Lc59:
# Var x located in register ax
# Var $result located in register ax
.Ll90:
# [2840] begin
	movw	%cx,%ax
# PeepHole Optimization,var11
.Ll91:
# [2841] exit(BEtoN(x));
	andl	$65535,%eax
	movl	%eax,%edx
	shrl	$8,%edx
	shll	$8,%eax
	orl	%edx,%eax
# Var $result located in register ax
# PeepHole Optimization,var11
.Ll92:
# [2842] end;
	andl	$65535,%eax
	ret
.Lc60:
.Lt24:
.Ll93:

.section .text.n_sdl2_$$_sdl_swapbe32$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAPBE32$LONGWORD$$LONGWORD
SDL2_$$_SDL_SWAPBE32$LONGWORD$$LONGWORD:
.Lc61:
.seh_proc SDL2_$$_SDL_SWAPBE32$LONGWORD$$LONGWORD
.Ll94:
# [2845] begin
	leaq	-40(%rsp),%rsp
.Lc63:
.seh_stackalloc 40
# Var x located in register ecx
# Var $result located in register eax
.seh_endprologue
# Var x located in register ecx
.Ll95:
# [2846] exit(BEtoN(x));
	call	SYSTEM_$$_SWAPENDIAN$LONGWORD$$LONGWORD
# Var $result located in register eax
.Ll96:
# [2847] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc62:
.Lt25:
.Ll97:

.section .text.n_sdl2_$$_sdl_swapbe64$qword$$qword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAPBE64$QWORD$$QWORD
SDL2_$$_SDL_SWAPBE64$QWORD$$QWORD:
.Lc64:
.seh_proc SDL2_$$_SDL_SWAPBE64$QWORD$$QWORD
.Ll98:
# [2850] begin
	leaq	-40(%rsp),%rsp
.Lc66:
.seh_stackalloc 40
# Var x located in register rcx
# Var $result located in register rax
.seh_endprologue
# Var x located in register rcx
.Ll99:
# [2851] exit(BEtoN(x));
	call	SYSTEM_$$_SWAPENDIAN$QWORD$$QWORD
# Var $result located in register rax
.Ll100:
# [2852] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc65:
.Lt26:
.Ll101:

.section .text.n_sdl2_$$_sdl_swapfloatbe$single$$single,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAPFLOATBE$SINGLE$$SINGLE
SDL2_$$_SDL_SWAPFLOATBE$SINGLE$$SINGLE:
.Lc67:
# Temps allocated between rsp+32 and rsp+40
.seh_proc SDL2_$$_SDL_SWAPFLOATBE$SINGLE$$SINGLE
.Ll102:
# [2855] begin
	leaq	-40(%rsp),%rsp
.Lc69:
.seh_stackalloc 40
# Var x located in register xmm0
# Var $result located in register xmm0
.seh_endprologue
# Var x located in register xmm0
.Ll103:
# [2859] exit(SDL_SwapFloat(x));
	movss	%xmm0,32(%rsp)
	movl	32(%rsp),%eax
	movl	%eax,%ecx
	call	SYSTEM_$$_SWAPENDIAN$LONGWORD$$LONGWORD
	movl	%eax,32(%rsp)
	movss	32(%rsp),%xmm0
# Var $result located in register xmm0
.Ll104:
# [2861] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc68:
.Lt27:
.Ll105:

.section .text.n_sdl2_$$_sdl_rwsize$psdl_rwops$$int64,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_RWSIZE$PSDL_RWOPS$$INT64
SDL2_$$_SDL_RWSIZE$PSDL_RWOPS$$INT64:
.Lc70:
.seh_proc SDL2_$$_SDL_RWSIZE$PSDL_RWOPS$$INT64
.Ll106:
# [2867] begin
	leaq	-40(%rsp),%rsp
.Lc72:
.seh_stackalloc 40
# Var ctx located in register rax
# Var $result located in register rax
.seh_endprologue
# PeepHole Optimization,MovMov2Mov1
	movq	%rcx,%rax
# Var ctx located in register rax
# Var ctx located in register rax
.Ll107:
# [2868] exit(ctx^.size(ctx));
	call	*(%rax)
# Var $result located in register rax
.Ll108:
# [2869] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc71:
.Lt28:
.Ll109:

.section .text.n_sdl2_$$_sdl_rwseek$psdl_rwops$int64$longint$$int64,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_RWSEEK$PSDL_RWOPS$INT64$LONGINT$$INT64
SDL2_$$_SDL_RWSEEK$PSDL_RWOPS$INT64$LONGINT$$INT64:
.Lc73:
.seh_proc SDL2_$$_SDL_RWSEEK$PSDL_RWOPS$INT64$LONGINT$$INT64
.Ll110:
# [2873] begin
	leaq	-40(%rsp),%rsp
.Lc75:
.seh_stackalloc 40
# Var ctx located in register rax
# Var offset located in register rdx
# Var whence located in register r8d
# Var $result located in register rax
.seh_endprologue
# PeepHole Optimization,MovMov2Mov1
	movq	%rcx,%rax
# Var whence located in register r8d
# Var offset located in register rdx
# Var ctx located in register rax
# Var ctx located in register rax
.Ll111:
# [2874] exit(ctx^.seek(ctx, offset, whence));
	call	*8(%rax)
# Var $result located in register rax
.Ll112:
# [2875] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc74:
.Lt29:
.Ll113:

.section .text.n_sdl2_$$_sdl_rwtell$psdl_rwops$$int64,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_RWTELL$PSDL_RWOPS$$INT64
SDL2_$$_SDL_RWTELL$PSDL_RWOPS$$INT64:
.Lc76:
.seh_proc SDL2_$$_SDL_RWTELL$PSDL_RWOPS$$INT64
.Ll114:
# [2878] begin
	leaq	-40(%rsp),%rsp
.Lc78:
.seh_stackalloc 40
# Var ctx located in register rax
# Var $result located in register rax
.seh_endprologue
# PeepHole Optimization,MovMov2Mov1
	movq	%rcx,%rax
# Var ctx located in register rax
.Ll115:
# [2879] exit(ctx^.seek(ctx, 0, RW_SEEK_CUR));
	movl	$1,%r8d
	movq	$0,%rdx
# Var ctx located in register rax
	call	*8(%rax)
# Var $result located in register rax
.Ll116:
# [2880] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc77:
.Lt30:
.Ll117:

.section .text.n_sdl2_$$_sdl_rwread$psdl_rwops$pointer$longword$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_RWREAD$PSDL_RWOPS$POINTER$LONGWORD$LONGWORD$$LONGWORD
SDL2_$$_SDL_RWREAD$PSDL_RWOPS$POINTER$LONGWORD$LONGWORD$$LONGWORD:
.Lc79:
.seh_proc SDL2_$$_SDL_RWREAD$PSDL_RWOPS$POINTER$LONGWORD$LONGWORD$$LONGWORD
.Ll118:
# [2883] begin
	leaq	-40(%rsp),%rsp
.Lc81:
.seh_stackalloc 40
# Var ctx located in register rax
# Var ptr located in register rdx
# Var size located in register r8d
# Var n located in register r9d
# Var $result located in register eax
.seh_endprologue
	movq	%rcx,%rax
.Ll119:
# [2884] exit(ctx^.read(ctx, ptr, size, n));
	andl	$4294967295,%r9d
	andl	$4294967295,%r8d
# Var ptr located in register rdx
# Var ctx located in register rax
	movq	%rax,%rcx
# Var ctx located in register rax
	call	*16(%rax)
# Var $result located in register eax
.Ll120:
# [2885] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc80:
.Lt31:
.Ll121:

.section .text.n_sdl2_$$_sdl_rwwrite$psdl_rwops$pointer$longword$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_RWWRITE$PSDL_RWOPS$POINTER$LONGWORD$LONGWORD$$LONGWORD
SDL2_$$_SDL_RWWRITE$PSDL_RWOPS$POINTER$LONGWORD$LONGWORD$$LONGWORD:
.Lc82:
.seh_proc SDL2_$$_SDL_RWWRITE$PSDL_RWOPS$POINTER$LONGWORD$LONGWORD$$LONGWORD
.Ll122:
# [2888] begin
	leaq	-40(%rsp),%rsp
.Lc84:
.seh_stackalloc 40
# Var ctx located in register rax
# Var ptr located in register rdx
# Var size located in register r8d
# Var n located in register r9d
# Var $result located in register eax
.seh_endprologue
	movq	%rcx,%rax
.Ll123:
# [2889] exit(ctx^.write(ctx, ptr, size, n));
	andl	$4294967295,%r9d
	andl	$4294967295,%r8d
# Var ptr located in register rdx
# Var ctx located in register rax
	movq	%rax,%rcx
# Var ctx located in register rax
	call	*24(%rax)
# Var $result located in register eax
.Ll124:
# [2890] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc83:
.Lt32:
.Ll125:

.section .text.n_sdl2_$$_sdl_rwclose$psdl_rwops$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_RWCLOSE$PSDL_RWOPS$$LONGINT
SDL2_$$_SDL_RWCLOSE$PSDL_RWOPS$$LONGINT:
.Lc85:
.seh_proc SDL2_$$_SDL_RWCLOSE$PSDL_RWOPS$$LONGINT
.Ll126:
# [2893] begin
	leaq	-40(%rsp),%rsp
.Lc87:
.seh_stackalloc 40
# Var ctx located in register rax
# Var $result located in register eax
.seh_endprologue
# PeepHole Optimization,MovMov2Mov1
	movq	%rcx,%rax
# Var ctx located in register rax
# Var ctx located in register rax
.Ll127:
# [2894] exit(ctx^.close(ctx));
	call	*32(%rax)
# Var $result located in register eax
.Ll128:
# [2895] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc86:
.Lt33:
.Ll129:

.section .text.n_sdl2_$$_sdl_audio_bitsize$word$$word,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_AUDIO_BITSIZE$WORD$$WORD
SDL2_$$_SDL_AUDIO_BITSIZE$WORD$$WORD:
.Lc88:
# Var x located in register ax
# Var $result located in register ax
.Ll130:
# [2901] begin
	movw	%cx,%ax
# PeepHole Optimization,var1
# Var $result located in register ax
# PeepHole Optimization,var11
.Ll131:
# [2903] end;
	andl	$255,%eax
	ret
.Lc89:
.Lt34:
.Ll132:

.section .text.n_sdl2_$$_sdl_audio_isfloat$word$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_AUDIO_ISFLOAT$WORD$$BOOLEAN
SDL2_$$_SDL_AUDIO_ISFLOAT$WORD$$BOOLEAN:
.Lc90:
# Var x located in register cx
# Var $result located in register al
# [2906] begin
# PeepHole Optimization,var11
# PeepHole Optimization,var1
.Ll133:
# [2907] exit((x and SDL_AUDIO_MASK_DATATYPE) > 0);
	andl	$256,%ecx
	cmpl	$0,%ecx
# Var $result located in register al
	setgb	%al
# PeepHole Optimization,var9
.Ll134:
# [2908] end;
	andl	$255,%eax
	ret
.Lc91:
.Lt35:
.Ll135:

.section .text.n_sdl2_$$_sdl_audio_isbigendian$word$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_AUDIO_ISBIGENDIAN$WORD$$BOOLEAN
SDL2_$$_SDL_AUDIO_ISBIGENDIAN$WORD$$BOOLEAN:
.Lc92:
# Var x located in register cx
# Var $result located in register al
# [2911] begin
# PeepHole Optimization,var11
# PeepHole Optimization,var1
.Ll136:
# [2912] exit((x and SDL_AUDIO_MASK_ENDIAN) > 0);
	andl	$4096,%ecx
	cmpl	$0,%ecx
# Var $result located in register al
	setgb	%al
# PeepHole Optimization,var9
.Ll137:
# [2913] end;
	andl	$255,%eax
	ret
.Lc93:
.Lt36:
.Ll138:

.section .text.n_sdl2_$$_sdl_audio_issigned$word$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_AUDIO_ISSIGNED$WORD$$BOOLEAN
SDL2_$$_SDL_AUDIO_ISSIGNED$WORD$$BOOLEAN:
.Lc94:
# Var x located in register cx
# Var $result located in register al
# [2916] begin
.Ll139:
# [2917] exit((x and SDL_AUDIO_MASK_SIGNED) > 0);
	andw	$32768,%cx
	cmpw	$0,%cx
# Var $result located in register al
	setab	%al
# PeepHole Optimization,var9
.Ll140:
# [2918] end;
	andl	$255,%eax
	ret
.Lc95:
.Lt37:
.Ll141:

.section .text.n_sdl2_$$_sdl_audio_isint$word$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_AUDIO_ISINT$WORD$$BOOLEAN
SDL2_$$_SDL_AUDIO_ISINT$WORD$$BOOLEAN:
.Lc96:
# Var x located in register cx
# Var $result located in register al
# [2921] begin
# PeepHole Optimization,var11
# PeepHole Optimization,var1
.Ll142:
# [2922] exit(not SDL_AUDIO_ISFLOAT(x));
	andl	$256,%ecx
	cmpl	$0,%ecx
	setgb	%al
	testb	%al,%al
# Var $result located in register al
	seteb	%al
# PeepHole Optimization,var9
.Ll143:
# [2923] end;
	andl	$255,%eax
	ret
.Lc97:
.Lt38:
.Ll144:

.section .text.n_sdl2_$$_sdl_audio_islittleendian$word$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_AUDIO_ISLITTLEENDIAN$WORD$$BOOLEAN
SDL2_$$_SDL_AUDIO_ISLITTLEENDIAN$WORD$$BOOLEAN:
.Lc98:
# Var x located in register cx
# Var $result located in register al
# [2926] begin
# PeepHole Optimization,var11
# PeepHole Optimization,var1
.Ll145:
# [2927] exit(not SDL_AUDIO_ISBIGENDIAN(x));
	andl	$4096,%ecx
	cmpl	$0,%ecx
	setgb	%al
	testb	%al,%al
# Var $result located in register al
	seteb	%al
# PeepHole Optimization,var9
.Ll146:
# [2928] end;
	andl	$255,%eax
	ret
.Lc99:
.Lt39:
.Ll147:

.section .text.n_sdl2_$$_sdl_audio_isunsigned$word$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_AUDIO_ISUNSIGNED$WORD$$BOOLEAN
SDL2_$$_SDL_AUDIO_ISUNSIGNED$WORD$$BOOLEAN:
.Lc100:
# Var x located in register cx
# Var $result located in register al
# [2931] begin
.Ll148:
# [2932] exit(not SDL_AUDIO_ISSIGNED(x));
	andw	$32768,%cx
	cmpw	$0,%cx
	setab	%al
	testb	%al,%al
# Var $result located in register al
	seteb	%al
# PeepHole Optimization,var9
.Ll149:
# [2933] end;
	andl	$255,%eax
	ret
.Lc101:
.Lt40:
.Ll150:

.section .text.n_sdl2_$$_sdl_loadwav$pchar$psdl_audiospec$ppbyte$pdword$$psdl_audiospec,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_LOADWAV$PCHAR$PSDL_AUDIOSPEC$PPBYTE$PDWORD$$PSDL_AUDIOSPEC
SDL2_$$_SDL_LOADWAV$PCHAR$PSDL_AUDIOSPEC$PPBYTE$PDWORD$$PSDL_AUDIOSPEC:
.Lc102:
.seh_proc SDL2_$$_SDL_LOADWAV$PCHAR$PSDL_AUDIOSPEC$PPBYTE$PDWORD$$PSDL_AUDIOSPEC
.Ll151:
# [2937] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc104:
.seh_stackalloc 40
# Var file_ located in register rcx
# Var spec located in register r8
# Var audio_buf located in register r9
# Var audio_len located in register r9
# Var $result located in register rax
.seh_endprologue
	movq	%rdx,%rbx
	movq	%r8,%rsi
# Var audio_len located in register r9
.Ll152:
# [2938] exit(SDL_LoadWAV_RW(SDL_RWFromFile(file_, 'rb'), 1, spec, audio_buf, audio_len));
	movq	%r9,32(%rsp)
	leaq	_$SDL2$_Ld6(%rip),%rdx
# Var file_ located in register rcx
	call	_$dll$sdl2$SDL_RWFromFile
	movq	%rax,%rcx
	movq	%rsi,%r9
# Var audio_buf located in register r9
	movq	%rbx,%r8
# Var spec located in register r8
	movl	$1,%edx
	call	_$dll$sdl2$SDL_LoadWAV_RW
# Var $result located in register rax
.Ll153:
# [2939] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc103:
.Lt41:
.Ll154:

.section .text.n_sdl2_$$_sdl_pixelflag$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_PIXELFLAG$LONGWORD$$LONGWORD
SDL2_$$_SDL_PIXELFLAG$LONGWORD$$LONGWORD:
.Lc105:
# Var X located in register eax
# Var $result located in register eax
.Ll155:
# [2945] begin
	movl	%ecx,%eax
.Ll156:
# [2946] exit((X shr 28) and $0F);
	shrl	$28,%eax
	andl	$15,%eax
# Var $result located in register eax
.Ll157:
# [2947] end;
	ret
.Lc106:
.Lt42:
.Ll158:

.section .text.n_sdl2_$$_sdl_pixeltype$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_PIXELTYPE$LONGWORD$$LONGWORD
SDL2_$$_SDL_PIXELTYPE$LONGWORD$$LONGWORD:
.Lc107:
# Var X located in register eax
# Var $result located in register eax
.Ll159:
# [2950] begin
	movl	%ecx,%eax
.Ll160:
# [2951] exit((X shr 24) and $0F);
	shrl	$24,%eax
	andl	$15,%eax
# Var $result located in register eax
.Ll161:
# [2952] end;
	ret
.Lc108:
.Lt43:
.Ll162:

.section .text.n_sdl2_$$_sdl_pixelorder$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_PIXELORDER$LONGWORD$$LONGWORD
SDL2_$$_SDL_PIXELORDER$LONGWORD$$LONGWORD:
.Lc109:
# Var X located in register eax
# Var $result located in register eax
.Ll163:
# [2955] begin
	movl	%ecx,%eax
.Ll164:
# [2956] exit((X shr 20) and $0F);
	shrl	$20,%eax
	andl	$15,%eax
# Var $result located in register eax
.Ll165:
# [2957] end;
	ret
.Lc110:
.Lt44:
.Ll166:

.section .text.n_sdl2_$$_sdl_pixellayout$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_PIXELLAYOUT$LONGWORD$$LONGWORD
SDL2_$$_SDL_PIXELLAYOUT$LONGWORD$$LONGWORD:
.Lc111:
# Var X located in register eax
# Var $result located in register eax
.Ll167:
# [2960] begin
	movl	%ecx,%eax
.Ll168:
# [2961] exit((X shr 16) and $0F);
	shrl	$16,%eax
	andl	$15,%eax
# Var $result located in register eax
.Ll169:
# [2962] end;
	ret
.Lc112:
.Lt45:
.Ll170:

.section .text.n_sdl2_$$_sdl_bitsperpixel$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_BITSPERPIXEL$LONGWORD$$LONGWORD
SDL2_$$_SDL_BITSPERPIXEL$LONGWORD$$LONGWORD:
.Lc113:
# Var X located in register eax
# Var $result located in register eax
.Ll171:
# [2965] begin
	movl	%ecx,%eax
.Ll172:
# [2966] exit((X shr 8) and $FF);
	shrl	$8,%eax
	andl	$255,%eax
# Var $result located in register eax
.Ll173:
# [2967] end;
	ret
.Lc114:
.Lt46:
.Ll174:

.section .text.n_sdl2_$$_sdl_bytesperpixel$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_BYTESPERPIXEL$LONGWORD$$LONGWORD
SDL2_$$_SDL_BYTESPERPIXEL$LONGWORD$$LONGWORD:
.Lc115:
.seh_proc SDL2_$$_SDL_BYTESPERPIXEL$LONGWORD$$LONGWORD
.Ll175:
# [2970] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc117:
.seh_stackalloc 32
# Var X located in register ebx
# Var $result located in register eax
.seh_endprologue
# PeepHole Optimization,MovMov2Mov1
	movl	%ecx,%ebx
.Ll176:
# [2971] if SDL_ISPIXELFORMAT_FOURCC(X) then
	call	SDL2_$$_SDL_ISPIXELFORMAT_FOURCC$LONGWORD$$BOOLEAN
	testb	%al,%al
	je	.Lj364
.Ll177:
# [2973] if (X = SDL_PIXELFORMAT_YUY2) or
	cmpl	$844715353,%ebx
	je	.Lj367
.Ll178:
# [2974] (X = SDL_PIXELFORMAT_UYVY) or
	cmpl	$1498831189,%ebx
	je	.Lj367
.Ll179:
# [2975] (X = SDL_PIXELFORMAT_YVYU) then
	cmpl	$1431918169,%ebx
	jne	.Lj368
.Lj367:
.Ll180:
# [2977] else
	movl	$2,%eax
.Ll181:
# [2976] exit(2)
	jmp	.Lj361
.Lj368:
.Ll182:
# [2978] exit(1);
	movl	$1,%eax
	jmp	.Lj361
.Lj364:
.Ll183:
# [2981] exit((X shr 0) and $FF);
	andl	$255,%ebx
	movl	%ebx,%eax
.Lj361:
.Ll184:
# [2982] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc116:
.Lt47:
.Ll185:

.section .text.n_sdl2_$$_sdl_ispixelformat_indexed$longword$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_ISPIXELFORMAT_INDEXED$LONGWORD$$BOOLEAN
SDL2_$$_SDL_ISPIXELFORMAT_INDEXED$LONGWORD$$BOOLEAN:
.Lc118:
.seh_proc SDL2_$$_SDL_ISPIXELFORMAT_INDEXED$LONGWORD$$BOOLEAN
.Ll186:
# [2985] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc120:
.seh_stackalloc 32
# Var format located in register ebx
# Var $result located in register al
.seh_endprologue
# PeepHole Optimization,MovMov2Mov1
	movl	%ecx,%ebx
.Ll187:
# [2986] exit((not SDL_ISPIXELFORMAT_FOURCC(format)) and
	call	SDL2_$$_SDL_ISPIXELFORMAT_FOURCC$LONGWORD$$BOOLEAN
	testb	%al,%al
	jne	.Lj382
.Ll188:
# [2987] ((SDL_PIXELTYPE(format) = SDL_PIXELTYPE_INDEX1) or
	movl	%ebx,%eax
	shrl	$24,%eax
	andl	$15,%eax
	cmpl	$1,%eax
	je	.Lj381
.Ll189:
# [2988] (SDL_PIXELTYPE(format) = SDL_PIXELTYPE_INDEX4) or
	movl	%ebx,%eax
	shrl	$24,%eax
	andl	$15,%eax
	cmpl	$2,%eax
	je	.Lj381
.Ll190:
# [2989] (SDL_PIXELTYPE(format) = SDL_PIXELTYPE_INDEX8)));
	shrl	$24,%ebx
	andl	$15,%ebx
	cmpl	$3,%ebx
	jne	.Lj382
# Var $result located in register al
.Lj381:
	movb	$1,%al
	jmp	.Lj379
.Lj382:
	movb	$0,%al
.Lj379:
# PeepHole Optimization,var9
.Ll191:
# [2990] end;
	andl	$255,%eax
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc119:
.Lt48:
.Ll192:

.section .text.n_sdl2_$$_sdl_ispixelformat_alpha$longword$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_ISPIXELFORMAT_ALPHA$LONGWORD$$BOOLEAN
SDL2_$$_SDL_ISPIXELFORMAT_ALPHA$LONGWORD$$BOOLEAN:
.Lc121:
.seh_proc SDL2_$$_SDL_ISPIXELFORMAT_ALPHA$LONGWORD$$BOOLEAN
.Ll193:
# [2993] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc123:
.seh_stackalloc 32
# Var format located in register ebx
# Var $result located in register al
.seh_endprologue
# PeepHole Optimization,MovMov2Mov1
	movl	%ecx,%ebx
.Ll194:
# [2994] exit((not SDL_ISPIXELFORMAT_FOURCC(format)) and
	call	SDL2_$$_SDL_ISPIXELFORMAT_FOURCC$LONGWORD$$BOOLEAN
	testb	%al,%al
	jne	.Lj401
.Ll195:
# [2995] ((SDL_PIXELORDER(format) = SDL_PACKEDORDER_ARGB) or
	movl	%ebx,%eax
	shrl	$20,%eax
	andl	$15,%eax
	cmpl	$3,%eax
	je	.Lj400
.Ll196:
# [2996] (SDL_PIXELORDER(format) = SDL_PACKEDORDER_RGBA) or
	movl	%ebx,%eax
	shrl	$20,%eax
	andl	$15,%eax
	cmpl	$4,%eax
	je	.Lj400
.Ll197:
# [2997] (SDL_PIXELORDER(format) = SDL_PACKEDORDER_ABGR) or
	movl	%ebx,%eax
	shrl	$20,%eax
	andl	$15,%eax
	cmpl	$7,%eax
	je	.Lj400
.Ll198:
# [2998] (SDL_PIXELORDER(format) = SDL_PACKEDORDER_BGRA)));
	shrl	$20,%ebx
	andl	$15,%ebx
	cmpl	$8,%ebx
	jne	.Lj401
# Var $result located in register al
.Lj400:
	movb	$1,%al
	jmp	.Lj398
.Lj401:
	movb	$0,%al
.Lj398:
# PeepHole Optimization,var9
.Ll199:
# [2999] end;
	andl	$255,%eax
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc122:
.Lt49:
.Ll200:

.section .text.n_sdl2_$$_sdl_ispixelformat_fourcc$longword$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_ISPIXELFORMAT_FOURCC$LONGWORD$$BOOLEAN
SDL2_$$_SDL_ISPIXELFORMAT_FOURCC$LONGWORD$$BOOLEAN:
.Lc124:
# Var format located in register ecx
# Var $result located in register al
# [3002] begin
.Ll201:
# [3003] exit((format and SDL_PIXELFLAG(format)) <> 1);
	movl	%ecx,%eax
	shrl	$28,%eax
	andl	$15,%eax
	andl	%eax,%ecx
	cmpl	$1,%ecx
# Var $result located in register al
	setneb	%al
# PeepHole Optimization,var9
.Ll202:
# [3004] end;
	andl	$255,%eax
	ret
.Lc125:
.Lt50:
.Ll203:

.section .text.n_sdl2_$$_sdl_rectempty$psdl_rect$$longbool,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_RECTEMPTY$PSDL_RECT$$LONGBOOL
SDL2_$$_SDL_RECTEMPTY$PSDL_RECT$$LONGBOOL:
.Lc126:
# Var x located in register rcx
# Var $result located in register eax
# [3010] begin
.Ll204:
# [3011] exit((x = NIL) or (x^.w <= 0) or (x^.h <= 0));
	testq	%rcx,%rcx
	je	.Lj432
	cmpl	$0,8(%rcx)
	jle	.Lj432
	cmpl	$0,12(%rcx)
	jnle	.Lj433
.Lj432:
	movl	$-1,%eax
	jmp	.Lj428
.Lj433:
	movl	$0,%eax
# Var $result located in register eax
.Lj428:
.Ll205:
# [3012] end;
	ret
.Lc127:
.Lt51:
.Ll206:

.section .text.n_sdl2_$$_sdl_rectequals$psdl_rect$psdl_rect$$longbool,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_RECTEQUALS$PSDL_RECT$PSDL_RECT$$LONGBOOL
SDL2_$$_SDL_RECTEQUALS$PSDL_RECT$PSDL_RECT$$LONGBOOL:
.Lc128:
# Var a located in register rcx
# Var b located in register rdx
# Var $result located in register eax
# [3015] begin
.Ll207:
# [3016] exit((a <> NIL) and (b <> NIL) and (a^.x = b^.x) and (a^.y = b^.y) and (a^.w = b^.w) and (a^.h = b^.h));
	testq	%rcx,%rcx
	je	.Lj442
	testq	%rdx,%rdx
	je	.Lj442
	movl	(%rcx),%eax
	cmpl	(%rdx),%eax
	jne	.Lj442
	movl	4(%rcx),%eax
	cmpl	4(%rdx),%eax
	jne	.Lj442
	movl	8(%rcx),%eax
	cmpl	8(%rdx),%eax
	jne	.Lj442
	movl	12(%rcx),%eax
	cmpl	12(%rdx),%eax
	jne	.Lj442
	movl	$-1,%eax
	jmp	.Lj437
.Lj442:
	movl	$0,%eax
# Var $result located in register eax
.Lj437:
.Ll208:
# [3017] end;
	ret
.Lc129:
.Lt52:
.Ll209:

.section .text.n_sdl2_$$_sdl_mustlock$psdl_surface$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_MUSTLOCK$PSDL_SURFACE$$BOOLEAN
SDL2_$$_SDL_MUSTLOCK$PSDL_SURFACE$$BOOLEAN:
.Lc130:
# Var S located in register rcx
# Var $result located in register al
# [3023] begin
.Ll210:
# [3024] exit((S^.flags and SDL_RLEACCEL) <> 0);
	movl	(%rcx),%eax
	andl	$2,%eax
	testl	%eax,%eax
# Var $result located in register al
	setneb	%al
# PeepHole Optimization,var9
.Ll211:
# [3025] end;
	andl	$255,%eax
	ret
.Lc131:
.Lt53:
.Ll212:

.section .text.n_sdl2_$$_sdl_loadbmp$pchar$$psdl_surface,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_LOADBMP$PCHAR$$PSDL_SURFACE
SDL2_$$_SDL_LOADBMP$PCHAR$$PSDL_SURFACE:
.Lc132:
.seh_proc SDL2_$$_SDL_LOADBMP$PCHAR$$PSDL_SURFACE
.Ll213:
# [3028] begin
	leaq	-40(%rsp),%rsp
.Lc134:
.seh_stackalloc 40
# Var file_ located in register rcx
# Var $result located in register rax
.seh_endprologue
.Ll214:
# [3029] exit(SDL_LoadBMP_RW(SDL_RWFromFile(file_, 'rb'), 1));
	leaq	_$SDL2$_Ld6(%rip),%rdx
# Var file_ located in register rcx
	call	_$dll$sdl2$SDL_RWFromFile
	movq	%rax,%rcx
	movl	$1,%edx
	call	_$dll$sdl2$SDL_LoadBMP_RW
# Var $result located in register rax
.Ll215:
# [3030] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc133:
.Lt54:
.Ll216:

.section .text.n_sdl2_$$_sdl_savebmp$psdl_surface$pchar$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SAVEBMP$PSDL_SURFACE$PCHAR$$LONGINT
SDL2_$$_SDL_SAVEBMP$PSDL_SURFACE$PCHAR$$LONGINT:
.Lc135:
.seh_proc SDL2_$$_SDL_SAVEBMP$PSDL_SURFACE$PCHAR$$LONGINT
.Ll217:
# [3033] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc137:
.seh_stackalloc 32
# Var surface located in register rcx
# Var file_ located in register rcx
# Var $result located in register eax
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rcx
.Ll218:
# [3034] exit(SDL_SaveBMP_RW(surface, SDL_RWFromFile(file_, 'wb'), 1));
	leaq	_$SDL2$_Ld7(%rip),%rdx
# Var file_ located in register rcx
	call	_$dll$sdl2$SDL_RWFromFile
	movq	%rax,%rdx
	movq	%rbx,%rcx
# Var surface located in register rcx
	movl	$1,%r8d
	call	_$dll$sdl2$SDL_SaveBMP_RW
# Var $result located in register eax
.Ll219:
# [3035] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc136:
.Lt55:
.Ll220:

.section .text.n_sdl2_$$_sdl_blitsurface$psdl_surface$psdl_rect$psdl_surface$psdl_rect$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_BLITSURFACE$PSDL_SURFACE$PSDL_RECT$PSDL_SURFACE$PSDL_RECT$$LONGINT
SDL2_$$_SDL_BLITSURFACE$PSDL_SURFACE$PSDL_RECT$PSDL_SURFACE$PSDL_RECT$$LONGINT:
.Lc138:
.seh_proc SDL2_$$_SDL_BLITSURFACE$PSDL_SURFACE$PSDL_RECT$PSDL_SURFACE$PSDL_RECT$$LONGINT
.Ll221:
# [3038] begin
	leaq	-40(%rsp),%rsp
.Lc140:
.seh_stackalloc 40
# Var src located in register rcx
# Var srcrect located in register rdx
# Var dst located in register r8
# Var dstrect located in register r9
# Var $result located in register eax
.seh_endprologue
# Var dstrect located in register r9
# Var dst located in register r8
# Var srcrect located in register rdx
# Var src located in register rcx
.Ll222:
# [3039] exit(SDL_UpperBlit(src, srcrect, dst, dstrect));
	call	_$dll$sdl2$SDL_UpperBlit
# Var $result located in register eax
.Ll223:
# [3040] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc139:
.Lt56:
.Ll224:

.section .text.n_sdl2_$$_sdl_blitscaled$psdl_surface$psdl_rect$psdl_surface$psdl_rect$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_BLITSCALED$PSDL_SURFACE$PSDL_RECT$PSDL_SURFACE$PSDL_RECT$$LONGINT
SDL2_$$_SDL_BLITSCALED$PSDL_SURFACE$PSDL_RECT$PSDL_SURFACE$PSDL_RECT$$LONGINT:
.Lc141:
.seh_proc SDL2_$$_SDL_BLITSCALED$PSDL_SURFACE$PSDL_RECT$PSDL_SURFACE$PSDL_RECT$$LONGINT
.Ll225:
# [3043] begin
	leaq	-40(%rsp),%rsp
.Lc143:
.seh_stackalloc 40
# Var src located in register rcx
# Var srcrect located in register rdx
# Var dst located in register r8
# Var dstrect located in register r9
# Var $result located in register eax
.seh_endprologue
# Var dstrect located in register r9
# Var dst located in register r8
# Var srcrect located in register rdx
# Var src located in register rcx
.Ll226:
# [3044] exit(SDL_UpperBlitScaled(src, srcrect, dst, dstrect));
	call	_$dll$sdl2$SDL_UpperBlitScaled
# Var $result located in register eax
.Ll227:
# [3045] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc142:
.Lt57:
.Ll228:

.section .text.n_sdl2_$$_sdl_gamecontrolleraddmappingsfromfile$pchar$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_GAMECONTROLLERADDMAPPINGSFROMFILE$PCHAR$$LONGINT
SDL2_$$_SDL_GAMECONTROLLERADDMAPPINGSFROMFILE$PCHAR$$LONGINT:
.Lc144:
.seh_proc SDL2_$$_SDL_GAMECONTROLLERADDMAPPINGSFROMFILE$PCHAR$$LONGINT
.Ll229:
# [3051] begin
	leaq	-40(%rsp),%rsp
.Lc146:
.seh_stackalloc 40
# Var file_ located in register rcx
# Var $result located in register eax
.seh_endprologue
.Ll230:
# [3052] exit(SDL_GameControllerAddMappingsFromRW(SDL_RWFromFile(file_, 'rb'), 1));
	leaq	_$SDL2$_Ld6(%rip),%rdx
# Var file_ located in register rcx
	call	_$dll$sdl2$SDL_RWFromFile
	movq	%rax,%rcx
	movl	$1,%edx
	call	_$dll$sdl2$SDL_GameControllerAddMappingsFromRW
# Var $result located in register eax
.Ll231:
# [3053] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc145:
.Lt58:
.Ll232:

.section .text.n_sdl2_$$_sdl_quitrequested$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_QUITREQUESTED$$BOOLEAN
SDL2_$$_SDL_QUITREQUESTED$$BOOLEAN:
.Lc147:
.seh_proc SDL2_$$_SDL_QUITREQUESTED$$BOOLEAN
.Ll233:
# [3059] begin
	leaq	-40(%rsp),%rsp
.Lc149:
.seh_stackalloc 40
# Var $result located in register al
.seh_endprologue
.Ll234:
# [3060] SDL_PumpEvents;
	call	_$dll$sdl2$SDL_PumpEvents
.Ll235:
# [3061] exit(SDL_PeepEvents(NIL, 0, SDL_PEEKEVENT, SDL_QUITEV, SDL_QUITEV) > 0);
	movl	$256,32(%rsp)
	movl	$256,%r9d
	movl	$1,%r8d
	movl	$0,%edx
	movq	$0,%rcx
	call	_$dll$sdl2$SDL_PeepEvents
	cmpl	$0,%eax
# Var $result located in register al
	setgb	%al
# PeepHole Optimization,var9
.Ll236:
# [3062] end;
	andl	$255,%eax
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc148:
.Lt59:
.Ll237:

.section .text.n_sdl2_$$_sdl_geteventstate$longword$$byte,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_GETEVENTSTATE$LONGWORD$$BYTE
SDL2_$$_SDL_GETEVENTSTATE$LONGWORD$$BYTE:
.Lc150:
.seh_proc SDL2_$$_SDL_GETEVENTSTATE$LONGWORD$$BYTE
.Ll238:
# [3065] begin
	leaq	-40(%rsp),%rsp
.Lc152:
.seh_stackalloc 40
# Var type_ located in register ecx
# Var $result located in register al
.seh_endprologue
# Var type_ located in register ecx
.Ll239:
# [3066] exit(SDL_EventState(type_, SDL_QUERY));
	movl	$-1,%edx
	call	_$dll$sdl2$SDL_EventState
# Var $result located in register al
# PeepHole Optimization,var9
.Ll240:
# [3067] end;
	andl	$255,%eax
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc151:
.Lt60:
.Ll241:
# End asmlist al_procedures
# Begin asmlist al_typedconsts

.section .rodata.n__$SDL2$_Ld1,"d"
	.balign 8
.globl	_$SDL2$_Ld1
_$SDL2$_Ld1:
	.ascii	"UTF-8\000"

.section .rodata.n__$SDL2$_Ld2,"d"
	.balign 8
.globl	_$SDL2$_Ld2
_$SDL2$_Ld2:
	.ascii	"\000"

.section .rodata.n__$SDL2$_Ld3,"d"
	.balign 8
.globl	_$SDL2$_Ld3
_$SDL2$_Ld3:
	.ascii	"UCS-2-INTERNAL\000"

.section .rodata.n__$SDL2$_Ld4,"d"
	.balign 8
.globl	_$SDL2$_Ld4
_$SDL2$_Ld4:
	.ascii	"UCS-4-INTERNAL\000"

.section .rodata.n__$SDL2$_Ld5,"d"
	.balign 8
.globl	_$SDL2$_Ld5
_$SDL2$_Ld5:
	.ascii	"Parameter '%s' is invalid\000"

.section .rodata.n__$SDL2$_Ld6,"d"
	.balign 8
.globl	_$SDL2$_Ld6
_$SDL2$_Ld6:
	.ascii	"rb\000"

.section .rodata.n__$SDL2$_Ld7,"d"
	.balign 8
.globl	_$SDL2$_Ld7
_$SDL2$_Ld7:
	.ascii	"wb\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts

.section .data.n_tc_$sdl2_$$_sdl_byteorder,"d"
	.balign 2
.globl	TC_$SDL2_$$_SDL_BYTEORDER
TC_$SDL2_$$_SDL_BYTEORDER:
	.short	1234
# [487] function SDL_Swap16(const x: Uint16): Uint16; inline;
# End asmlist al_rotypedconsts
# Begin asmlist al_rtti

.section .data.n_RTTI_$SDL2_$$_PUINT64,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PUINT64
RTTI_$SDL2_$$_PUINT64:
	.byte	29,7
# [3070] 
	.ascii	"PUint64"
	.quad	RTTI_$SYSTEM_$$_QWORD

.section .data.n_RTTI_$SDL2_$$_PSINT8,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSINT8
RTTI_$SDL2_$$_PSINT8:
	.byte	29,6
	.ascii	"PSint8"
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$SDL2_$$_PSINT16,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSINT16
RTTI_$SDL2_$$_PSINT16:
	.byte	29,7
	.ascii	"PSint16"
	.quad	RTTI_$SYSTEM_$$_SMALLINT

.section .data.n_RTTI_$SDL2_$$_PSINT32,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSINT32
RTTI_$SDL2_$$_PSINT32:
	.byte	29,7
	.ascii	"PSint32"
	.quad	RTTI_$SYSTEM_$$_LONGINT

.section .data.n_RTTI_$SDL2_$$_PSINT64,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSINT64
RTTI_$SDL2_$$_PSINT64:
	.byte	29,7
	.ascii	"PSint64"
	.quad	RTTI_$SYSTEM_$$_INT64

.section .data.n_RTTI_$SDL2_$$_PSIZE_T,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSIZE_T
RTTI_$SDL2_$$_PSIZE_T:
	.byte	29,7
	.ascii	"psize_t"
	.quad	RTTI_$SYSTEM_$$_QWORD

.section .data.n_RTTI_$SDL2_$$_COMPAREFN,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_COMPAREFN
RTTI_$SDL2_$$_COMPAREFN:
	.byte	23,9
	.ascii	"comparefn"
	.byte	0,1
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.byte	2,0
	.quad	RTTI_$SYSTEM_$$_POINTER
	.byte	2
	.ascii	"a1"
	.byte	0
	.quad	RTTI_$SYSTEM_$$_POINTER
	.byte	2
	.ascii	"a2"

.section .data.n_RTTI_$SDL2_$$_TSDL_VERSION,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_VERSION
RTTI_$SDL2_$$_TSDL_VERSION:
	.byte	13,12
	.ascii	"TSDL_version"
	.long	3,3
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	0
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	1
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	2

.section .data.n_RTTI_$SDL2_$$_PSDL_VERSION,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_VERSION
RTTI_$SDL2_$$_PSDL_VERSION:
	.byte	29,12
	.ascii	"PSDL_version"
	.quad	RTTI_$SDL2_$$_TSDL_VERSION

.section .data.n_INIT_$SDL2_$$_TSDL_VERSION,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_VERSION
INIT_$SDL2_$$_TSDL_VERSION:
	.byte	13,12
	.ascii	"TSDL_version"
	.long	3,0

.section .data.n_RTTI_$SDL2_$$_TSDL_ERRORCODE,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_ERRORCODE
RTTI_$SDL2_$$_TSDL_ERRORCODE:
	.byte	3,14
	.ascii	"TSDL_errorcode"
	.byte	5
	.long	0,5
	.quad	0
	.byte	10
	.ascii	"SDL_ENOMEM"
	.byte	10
	.ascii	"SDL_EFREAD"
	.byte	11
	.ascii	"SDL_EFWRITE"
	.byte	10
	.ascii	"SDL_EFSEEK"
	.byte	16
	.ascii	"SDL_UNSUPPORTED_"
	.byte	13
	.ascii	"SDL_LASTERROR"
	.byte	4
	.ascii	"SDL2"
	.byte	0

.section .data.n_RTTI_$SDL2_$$_TSDL_ERRORCODE_s2o,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_ERRORCODE_s2o
RTTI_$SDL2_$$_TSDL_ERRORCODE_s2o:
	.long	6,1
	.quad	RTTI_$SDL2_$$_TSDL_ERRORCODE+44
	.long	3
	.quad	RTTI_$SDL2_$$_TSDL_ERRORCODE+67
	.long	2
	.quad	RTTI_$SDL2_$$_TSDL_ERRORCODE+55
	.long	0
	.quad	RTTI_$SDL2_$$_TSDL_ERRORCODE+33
	.long	5
	.quad	RTTI_$SDL2_$$_TSDL_ERRORCODE+95
	.long	4
	.quad	RTTI_$SDL2_$$_TSDL_ERRORCODE+78

.section .data.n_RTTI_$SDL2_$$_TSDL_ERRORCODE_o2s,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_ERRORCODE_o2s
RTTI_$SDL2_$$_TSDL_ERRORCODE_o2s:
	.long	0
	.quad	RTTI_$SDL2_$$_TSDL_ERRORCODE+33
	.quad	RTTI_$SDL2_$$_TSDL_ERRORCODE+44
	.quad	RTTI_$SDL2_$$_TSDL_ERRORCODE+55
	.quad	RTTI_$SDL2_$$_TSDL_ERRORCODE+67
	.quad	RTTI_$SDL2_$$_TSDL_ERRORCODE+78
	.quad	RTTI_$SDL2_$$_TSDL_ERRORCODE+95

.section .data.n_RTTI_$SDL2_$$_TSDL_LOGPRIORITY,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_LOGPRIORITY
RTTI_$SDL2_$$_TSDL_LOGPRIORITY:
	.byte	3,16
	.ascii	"TSDL_LogPriority"
	.byte	5
	.long	1,7
	.quad	0
	.byte	24
	.ascii	"SDL_LOG_PRIORITY_VERBOSE"
	.byte	22
	.ascii	"SDL_LOG_PRIORITY_DEBUG"
	.byte	21
	.ascii	"SDL_LOG_PRIORITY_INFO"
	.byte	21
	.ascii	"SDL_LOG_PRIORITY_WARN"
	.byte	22
	.ascii	"SDL_LOG_PRIORITY_ERROR"
	.byte	25
	.ascii	"SDL_LOG_PRIORITY_CRITICAL"
	.byte	22
	.ascii	"SDL_NUM_LOG_PRIORITIES"
	.byte	4
	.ascii	"SDL2"
	.byte	0

.section .data.n_RTTI_$SDL2_$$_TSDL_LOGPRIORITY_s2o,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_LOGPRIORITY_s2o
RTTI_$SDL2_$$_TSDL_LOGPRIORITY_s2o:
	.long	7,6
	.quad	RTTI_$SDL2_$$_TSDL_LOGPRIORITY+150
	.long	2
	.quad	RTTI_$SDL2_$$_TSDL_LOGPRIORITY+60
	.long	5
	.quad	RTTI_$SDL2_$$_TSDL_LOGPRIORITY+127
	.long	3
	.quad	RTTI_$SDL2_$$_TSDL_LOGPRIORITY+83
	.long	1
	.quad	RTTI_$SDL2_$$_TSDL_LOGPRIORITY+35
	.long	4
	.quad	RTTI_$SDL2_$$_TSDL_LOGPRIORITY+105
	.long	7
	.quad	RTTI_$SDL2_$$_TSDL_LOGPRIORITY+176

.section .data.n_RTTI_$SDL2_$$_TSDL_LOGPRIORITY_o2s,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_LOGPRIORITY_o2s
RTTI_$SDL2_$$_TSDL_LOGPRIORITY_o2s:
	.long	0
	.quad	RTTI_$SDL2_$$_TSDL_LOGPRIORITY+35
	.quad	RTTI_$SDL2_$$_TSDL_LOGPRIORITY+60
	.quad	RTTI_$SDL2_$$_TSDL_LOGPRIORITY+83
	.quad	RTTI_$SDL2_$$_TSDL_LOGPRIORITY+105
	.quad	RTTI_$SDL2_$$_TSDL_LOGPRIORITY+127
	.quad	RTTI_$SDL2_$$_TSDL_LOGPRIORITY+150
	.quad	RTTI_$SDL2_$$_TSDL_LOGPRIORITY+176

.section .data.n_RTTI_$SDL2_$$_TSDL_LOGOUTPUTFUNCTION,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_LOGOUTPUTFUNCTION
RTTI_$SDL2_$$_TSDL_LOGOUTPUTFUNCTION:
	.byte	23,22
	.ascii	"TSDL_LogOutputFunction"
	.byte	0,1
	.quad	0
	.byte	4,0
	.quad	RTTI_$SYSTEM_$$_POINTER
	.byte	8
	.ascii	"userdata"
	.byte	0
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.byte	8
	.ascii	"category"
	.byte	0
	.quad	RTTI_$SDL2_$$_TSDL_LOGPRIORITY
	.byte	8
	.ascii	"priority"
	.byte	2
	.quad	RTTI_$SYSTEM_$$_PCHAR
	.byte	7
	.ascii	"message"

.section .data.n_RTTI_$SDL2_$$_PSDL_LOGOUTPUTFUNCTION,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_LOGOUTPUTFUNCTION
RTTI_$SDL2_$$_PSDL_LOGOUTPUTFUNCTION:
	.byte	29,22
	.ascii	"PSDL_LogOutputFunction"
	.quad	RTTI_$SDL2_$$_TSDL_LOGOUTPUTFUNCTION

.section .data.n_RTTI_$SDL2_$$_TSDL_HINTPRIORITY,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_HINTPRIORITY
RTTI_$SDL2_$$_TSDL_HINTPRIORITY:
	.byte	3,17
	.ascii	"TSDL_HintPriority"
	.byte	5
	.long	0,2
	.quad	0
	.byte	16
	.ascii	"SDL_HINT_DEFAULT"
	.byte	15
	.ascii	"SDL_HINT_NORMAL"
	.byte	17
	.ascii	"SDL_HINT_OVERRIDE"
	.byte	4
	.ascii	"SDL2"
	.byte	0

.section .data.n_RTTI_$SDL2_$$_TSDL_HINTPRIORITY_s2o,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_HINTPRIORITY_s2o
RTTI_$SDL2_$$_TSDL_HINTPRIORITY_s2o:
	.long	3,0
	.quad	RTTI_$SDL2_$$_TSDL_HINTPRIORITY+36
	.long	1
	.quad	RTTI_$SDL2_$$_TSDL_HINTPRIORITY+53
	.long	2
	.quad	RTTI_$SDL2_$$_TSDL_HINTPRIORITY+69

.section .data.n_RTTI_$SDL2_$$_TSDL_HINTPRIORITY_o2s,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_HINTPRIORITY_o2s
RTTI_$SDL2_$$_TSDL_HINTPRIORITY_o2s:
	.long	0
	.quad	RTTI_$SDL2_$$_TSDL_HINTPRIORITY+36
	.quad	RTTI_$SDL2_$$_TSDL_HINTPRIORITY+53
	.quad	RTTI_$SDL2_$$_TSDL_HINTPRIORITY+69

.section .data.n_RTTI_$SDL2_$$_TSDL_HINTCALLBACK,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_HINTCALLBACK
RTTI_$SDL2_$$_TSDL_HINTCALLBACK:
	.byte	23,17
	.ascii	"TSDL_HintCallback"
	.byte	0,1
	.quad	0
	.byte	4,0
	.quad	RTTI_$SYSTEM_$$_POINTER
	.byte	8
	.ascii	"userdata"
	.byte	0
	.quad	RTTI_$SYSTEM_$$_PCHAR
	.byte	4
	.ascii	"name"
	.byte	0
	.quad	RTTI_$SYSTEM_$$_PCHAR
	.byte	8
	.ascii	"oldValue"
	.byte	0
	.quad	RTTI_$SYSTEM_$$_PCHAR
	.byte	8
	.ascii	"newValue"

.section .data.n_RTTI_$SDL2_$$_TSDL_POWERSTATE,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_POWERSTATE
RTTI_$SDL2_$$_TSDL_POWERSTATE:
	.byte	3,15
	.ascii	"TSDL_PowerState"
	.byte	5
	.long	0,4
	.quad	0
	.byte	22
	.ascii	"SDL_POWERSTATE_UNKNOWN"
	.byte	25
	.ascii	"SDL_POWERSTATE_ON_BATTERY"
	.byte	25
	.ascii	"SDL_POWERSTATE_NO_BATTERY"
	.byte	23
	.ascii	"SDL_POWERSTATE_CHARGING"
	.byte	22
	.ascii	"SDL_POWERSTATE_CHARGED"
	.byte	4
	.ascii	"SDL2"
	.byte	0

.section .data.n_RTTI_$SDL2_$$_TSDL_POWERSTATE_s2o,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_POWERSTATE_s2o
RTTI_$SDL2_$$_TSDL_POWERSTATE_s2o:
	.long	5,4
	.quad	RTTI_$SDL2_$$_TSDL_POWERSTATE+133
	.long	3
	.quad	RTTI_$SDL2_$$_TSDL_POWERSTATE+109
	.long	2
	.quad	RTTI_$SDL2_$$_TSDL_POWERSTATE+83
	.long	1
	.quad	RTTI_$SDL2_$$_TSDL_POWERSTATE+57
	.long	0
	.quad	RTTI_$SDL2_$$_TSDL_POWERSTATE+34

.section .data.n_RTTI_$SDL2_$$_TSDL_POWERSTATE_o2s,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_POWERSTATE_o2s
RTTI_$SDL2_$$_TSDL_POWERSTATE_o2s:
	.long	0
	.quad	RTTI_$SDL2_$$_TSDL_POWERSTATE+34
	.quad	RTTI_$SDL2_$$_TSDL_POWERSTATE+57
	.quad	RTTI_$SDL2_$$_TSDL_POWERSTATE+83
	.quad	RTTI_$SDL2_$$_TSDL_POWERSTATE+109
	.quad	RTTI_$SDL2_$$_TSDL_POWERSTATE+133

.section .data.n_RTTI_$SDL2_$$_TSDL_TIMERCALLBACK,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_TIMERCALLBACK
RTTI_$SDL2_$$_TSDL_TIMERCALLBACK:
	.byte	23,18
	.ascii	"TSDL_TimerCallback"
	.byte	0,0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.byte	2,0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.byte	8
	.ascii	"interval"
	.byte	0
	.quad	RTTI_$SYSTEM_$$_POINTER
	.byte	5
	.ascii	"param"

.section .data.n_RTTI_$SDL2_$$_TSDL_THREADPRIORITY,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_THREADPRIORITY
RTTI_$SDL2_$$_TSDL_THREADPRIORITY:
	.byte	3,19
	.ascii	"TSDL_ThreadPriority"
	.byte	5
	.long	0,2
	.quad	0
	.byte	23
	.ascii	"SDL_THREAD_PRIORITY_LOW"
	.byte	26
	.ascii	"SDL_THREAD_PRIORITY_NORMAL"
	.byte	24
	.ascii	"SDL_THREAD_PRIORITY_HIGH"
	.byte	4
	.ascii	"SDL2"
	.byte	0

.section .data.n_RTTI_$SDL2_$$_TSDL_THREADPRIORITY_s2o,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_THREADPRIORITY_s2o
RTTI_$SDL2_$$_TSDL_THREADPRIORITY_s2o:
	.long	3,2
	.quad	RTTI_$SDL2_$$_TSDL_THREADPRIORITY+89
	.long	0
	.quad	RTTI_$SDL2_$$_TSDL_THREADPRIORITY+38
	.long	1
	.quad	RTTI_$SDL2_$$_TSDL_THREADPRIORITY+62

.section .data.n_RTTI_$SDL2_$$_TSDL_THREADPRIORITY_o2s,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_THREADPRIORITY_o2s
RTTI_$SDL2_$$_TSDL_THREADPRIORITY_o2s:
	.long	0
	.quad	RTTI_$SDL2_$$_TSDL_THREADPRIORITY+38
	.quad	RTTI_$SDL2_$$_TSDL_THREADPRIORITY+62
	.quad	RTTI_$SDL2_$$_TSDL_THREADPRIORITY+89

.section .data.n_RTTI_$SDL2_$$_TSDL_THREADFUNCTION,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_THREADFUNCTION
RTTI_$SDL2_$$_TSDL_THREADFUNCTION:
	.byte	23,19
	.ascii	"TSDL_ThreadFunction"
	.byte	0,1
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.byte	1,0
	.quad	RTTI_$SYSTEM_$$_POINTER
	.byte	4
	.ascii	"data"

.section .data.n_RTTI_$SDL2_$$_DEF399,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF399
RTTI_$SDL2_$$_DEF399:
	.byte	23
	.ascii	"\000"
	.byte	0,1
	.quad	RTTI_$SYSTEM_$$_INT64
	.byte	1,0
	.quad	RTTI_$SDL2_$$_PSDL_RWOPS
	.byte	7
	.ascii	"context"

.section .data.n_RTTI_$SDL2_$$_DEF400,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF400
RTTI_$SDL2_$$_DEF400:
	.byte	23
	.ascii	"\000"
	.byte	0,1
	.quad	RTTI_$SYSTEM_$$_INT64
	.byte	3,0
	.quad	RTTI_$SDL2_$$_PSDL_RWOPS
	.byte	7
	.ascii	"context"
	.byte	0
	.quad	RTTI_$SYSTEM_$$_INT64
	.byte	6
	.ascii	"offset"
	.byte	0
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.byte	6
	.ascii	"whence"

.section .data.n_RTTI_$SDL2_$$_DEF401,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF401
RTTI_$SDL2_$$_DEF401:
	.byte	23
	.ascii	"\000"
	.byte	0,1
	.quad	RTTI_$SYSTEM_$$_QWORD
	.byte	4,0
	.quad	RTTI_$SDL2_$$_PSDL_RWOPS
	.byte	7
	.ascii	"context"
	.byte	0
	.quad	RTTI_$SYSTEM_$$_POINTER
	.byte	3
	.ascii	"ptr"
	.byte	0
	.quad	RTTI_$SYSTEM_$$_QWORD
	.byte	4
	.ascii	"size"
	.byte	0
	.quad	RTTI_$SYSTEM_$$_QWORD
	.byte	6
	.ascii	"maxnum"

.section .data.n_RTTI_$SDL2_$$_DEF402,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF402
RTTI_$SDL2_$$_DEF402:
	.byte	23
	.ascii	"\000"
	.byte	0,1
	.quad	RTTI_$SYSTEM_$$_QWORD
	.byte	4,0
	.quad	RTTI_$SDL2_$$_PSDL_RWOPS
	.byte	7
	.ascii	"context"
	.byte	2
	.quad	RTTI_$SYSTEM_$$_POINTER
	.byte	3
	.ascii	"ptr"
	.byte	0
	.quad	RTTI_$SYSTEM_$$_QWORD
	.byte	4
	.ascii	"size"
	.byte	0
	.quad	RTTI_$SYSTEM_$$_QWORD
	.byte	3
	.ascii	"num"

.section .data.n_RTTI_$SDL2_$$_DEF403,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF403
RTTI_$SDL2_$$_DEF403:
	.byte	23
	.ascii	"\000"
	.byte	0,1
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.byte	1,0
	.quad	RTTI_$SDL2_$$_PSDL_RWOPS
	.byte	7
	.ascii	"context"

.section .data.n_RTTI_$SDL2_$$_DEF407,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF407
RTTI_$SDL2_$$_DEF407:
	.byte	13
	.ascii	"\000"
	.long	24,3
	.quad	RTTI_$SYSTEM_$$_POINTER
	.quad	0
	.quad	RTTI_$SYSTEM_$$_QWORD
	.quad	8
	.quad	RTTI_$SYSTEM_$$_QWORD
	.quad	16

.section .data.n_RTTI_$SDL2_$$_DEF406,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF406
RTTI_$SDL2_$$_DEF406:
	.byte	13
	.ascii	"\000"
	.long	40,3
	.quad	RTTI_$SYSTEM_$$_LONGBOOL
	.quad	0
	.quad	RTTI_$SYSTEM_$$_POINTER
	.quad	8
	.quad	RTTI_$SDL2_$$_DEF407
	.quad	16

.section .data.n_RTTI_$SDL2_$$_DEF408,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF408
RTTI_$SDL2_$$_DEF408:
	.byte	13
	.ascii	"\000"
	.long	24,3
	.quad	RTTI_$SYSTEM_$$_PBYTE
	.quad	0
	.quad	RTTI_$SYSTEM_$$_PBYTE
	.quad	8
	.quad	RTTI_$SYSTEM_$$_PBYTE
	.quad	16

.section .data.n_RTTI_$SDL2_$$_DEF409,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF409
RTTI_$SDL2_$$_DEF409:
	.byte	13
	.ascii	"\000"
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_POINTER
	.quad	0
	.quad	RTTI_$SYSTEM_$$_POINTER
	.quad	8

.section .data.n_RTTI_$SDL2_$$_DEF404,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF404
RTTI_$SDL2_$$_DEF404:
	.byte	13
	.ascii	"\000"
	.long	40,3
	.quad	RTTI_$SDL2_$$_DEF406
	.quad	0
	.quad	RTTI_$SDL2_$$_DEF408
	.quad	0
	.quad	RTTI_$SDL2_$$_DEF409
	.quad	0

.section .data.n_RTTI_$SDL2_$$_TSDL_RWOPS,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_RWOPS
RTTI_$SDL2_$$_TSDL_RWOPS:
	.byte	13,10
	.ascii	"TSDL_RWops"
	.long	88,7
	.quad	RTTI_$SDL2_$$_DEF399
	.quad	0
	.quad	RTTI_$SDL2_$$_DEF400
	.quad	8
	.quad	RTTI_$SDL2_$$_DEF401
	.quad	16
	.quad	RTTI_$SDL2_$$_DEF402
	.quad	24
	.quad	RTTI_$SDL2_$$_DEF403
	.quad	32
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	40
	.quad	RTTI_$SDL2_$$_DEF404
	.quad	48

.section .data.n_RTTI_$SDL2_$$_PSDL_RWOPS,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_RWOPS
RTTI_$SDL2_$$_PSDL_RWOPS:
	.byte	29,10
	.ascii	"PSDL_RWops"
	.quad	RTTI_$SDL2_$$_TSDL_RWOPS

.section .data.n_INIT_$SDL2_$$_TSDL_RWOPS,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_RWOPS
INIT_$SDL2_$$_TSDL_RWOPS:
	.byte	13,10
	.ascii	"TSDL_RWops"
	.long	88,0

.section .data.n_RTTI_$SDL2_$$_TSDL_AUDIOCALLBACK,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_AUDIOCALLBACK
RTTI_$SDL2_$$_TSDL_AUDIOCALLBACK:
	.byte	23,18
	.ascii	"TSDL_AudioCallback"
	.byte	0,1
	.quad	0
	.byte	3,0
	.quad	RTTI_$SYSTEM_$$_POINTER
	.byte	8
	.ascii	"userdata"
	.byte	0
	.quad	RTTI_$SYSTEM_$$_PBYTE
	.byte	6
	.ascii	"stream"
	.byte	0
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.byte	3
	.ascii	"len"

.section .data.n_RTTI_$SDL2_$$_TSDL_AUDIOSPEC,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_AUDIOSPEC
RTTI_$SDL2_$$_TSDL_AUDIOSPEC:
	.byte	13,14
	.ascii	"TSDL_AudioSpec"
	.long	32,9
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	0
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	6
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	7
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	8
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	10
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	12
	.quad	RTTI_$SDL2_$$_TSDL_AUDIOCALLBACK
	.quad	16
	.quad	RTTI_$SYSTEM_$$_POINTER
	.quad	24

.section .data.n_RTTI_$SDL2_$$_PSDL_AUDIOSPEC,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_AUDIOSPEC
RTTI_$SDL2_$$_PSDL_AUDIOSPEC:
	.byte	29,14
	.ascii	"PSDL_AudioSpec"
	.quad	RTTI_$SDL2_$$_TSDL_AUDIOSPEC

.section .data.n_INIT_$SDL2_$$_TSDL_AUDIOSPEC,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_AUDIOSPEC
INIT_$SDL2_$$_TSDL_AUDIOSPEC:
	.byte	13,14
	.ascii	"TSDL_AudioSpec"
	.long	32,0

.section .data.n_RTTI_$SDL2_$$_TSDL_AUDIOFILTER,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_AUDIOFILTER
RTTI_$SDL2_$$_TSDL_AUDIOFILTER:
	.byte	23,16
	.ascii	"TSDL_AudioFilter"
	.byte	0,1
	.quad	0
	.byte	2,0
	.quad	RTTI_$SDL2_$$_PSDL_AUDIOCVT
	.byte	3
	.ascii	"cvt"
	.byte	0
	.quad	RTTI_$SYSTEM_$$_WORD
	.byte	6
	.ascii	"format"

.section .data.n_RTTI_$SDL2_$$_DEF462,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF462
RTTI_$SDL2_$$_DEF462:
	.byte	12
	.ascii	"\000"
	.quad	80,10
	.quad	RTTI_$SDL2_$$_TSDL_AUDIOFILTER
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$SDL2_$$_TSDL_AUDIOCVT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_AUDIOCVT
RTTI_$SDL2_$$_TSDL_AUDIOCVT:
	.byte	13,13
	.ascii	"TSDL_AudioCVT"
	.long	136,11
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	0
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	6
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	8
	.quad	RTTI_$SYSTEM_$$_PBYTE
	.quad	16
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	24
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	28
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	32
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	40
	.quad	RTTI_$SDL2_$$_DEF462
	.quad	48
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	128

.section .data.n_RTTI_$SDL2_$$_PSDL_AUDIOCVT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_AUDIOCVT
RTTI_$SDL2_$$_PSDL_AUDIOCVT:
	.byte	29,13
	.ascii	"PSDL_AudioCVT"
	.quad	RTTI_$SDL2_$$_TSDL_AUDIOCVT

.section .data.n_INIT_$SDL2_$$_TSDL_AUDIOCVT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_AUDIOCVT
INIT_$SDL2_$$_TSDL_AUDIOCVT:
	.byte	13,13
	.ascii	"TSDL_AudioCVT"
	.long	136,0

.section .data.n_RTTI_$SDL2_$$_TSDL_AUDIOSTATUS,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_AUDIOSTATUS
RTTI_$SDL2_$$_TSDL_AUDIOSTATUS:
	.byte	3,16
	.ascii	"TSDL_AudioStatus"
	.byte	5
	.long	0,2
	.quad	0
	.byte	17
	.ascii	"SDL_AUDIO_STOPPED"
	.byte	17
	.ascii	"SDL_AUDIO_PLAYING"
	.byte	16
	.ascii	"SDL_AUDIO_PAUSED"
	.byte	4
	.ascii	"SDL2"
	.byte	0

.section .data.n_RTTI_$SDL2_$$_TSDL_AUDIOSTATUS_s2o,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_AUDIOSTATUS_s2o
RTTI_$SDL2_$$_TSDL_AUDIOSTATUS_s2o:
	.long	3,2
	.quad	RTTI_$SDL2_$$_TSDL_AUDIOSTATUS+71
	.long	1
	.quad	RTTI_$SDL2_$$_TSDL_AUDIOSTATUS+53
	.long	0
	.quad	RTTI_$SDL2_$$_TSDL_AUDIOSTATUS+35

.section .data.n_RTTI_$SDL2_$$_TSDL_AUDIOSTATUS_o2s,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_AUDIOSTATUS_o2s
RTTI_$SDL2_$$_TSDL_AUDIOSTATUS_o2s:
	.long	0
	.quad	RTTI_$SDL2_$$_TSDL_AUDIOSTATUS+35
	.quad	RTTI_$SDL2_$$_TSDL_AUDIOSTATUS+53
	.quad	RTTI_$SDL2_$$_TSDL_AUDIOSTATUS+71

.section .data.n_RTTI_$SDL2_$$_TSDL_COLOR,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_COLOR
RTTI_$SDL2_$$_TSDL_COLOR:
	.byte	13,10
	.ascii	"TSDL_Color"
	.long	4,4
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	0
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	1
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	2
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	3

.section .data.n_RTTI_$SDL2_$$_PSDL_COLOR,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_COLOR
RTTI_$SDL2_$$_PSDL_COLOR:
	.byte	29,10
	.ascii	"PSDL_Color"
	.quad	RTTI_$SDL2_$$_TSDL_COLOR

.section .data.n_INIT_$SDL2_$$_TSDL_COLOR,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_COLOR
INIT_$SDL2_$$_TSDL_COLOR:
	.byte	13,10
	.ascii	"TSDL_Color"
	.long	4,0

.section .data.n_RTTI_$SDL2_$$_PSDL_COLOUR,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_COLOUR
RTTI_$SDL2_$$_PSDL_COLOUR:
	.byte	29,11
	.ascii	"PSDL_Colour"
	.quad	RTTI_$SDL2_$$_TSDL_COLOR

.section .data.n_RTTI_$SDL2_$$_TSDL_PALETTE,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_PALETTE
RTTI_$SDL2_$$_TSDL_PALETTE:
	.byte	13,12
	.ascii	"TSDL_Palette"
	.long	24,4
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	0
	.quad	RTTI_$SDL2_$$_PSDL_COLOR
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	16
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	20

.section .data.n_RTTI_$SDL2_$$_PSDL_PALETTE,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_PALETTE
RTTI_$SDL2_$$_PSDL_PALETTE:
	.byte	29,12
	.ascii	"PSDL_Palette"
	.quad	RTTI_$SDL2_$$_TSDL_PALETTE

.section .data.n_INIT_$SDL2_$$_TSDL_PALETTE,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_PALETTE
INIT_$SDL2_$$_TSDL_PALETTE:
	.byte	13,12
	.ascii	"TSDL_Palette"
	.long	24,0

.section .data.n_RTTI_$SDL2_$$_DEF529,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF529
RTTI_$SDL2_$$_DEF529:
	.byte	12
	.ascii	"\000"
	.quad	2,2
	.quad	RTTI_$SYSTEM_$$_BYTE
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$SDL2_$$_TSDL_PIXELFORMAT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_PIXELFORMAT
RTTI_$SDL2_$$_TSDL_PIXELFORMAT:
	.byte	13,16
	.ascii	"TSDL_PixelFormat"
	.long	56,19
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SDL2_$$_PSDL_PALETTE
	.quad	8
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	16
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	17
	.quad	RTTI_$SDL2_$$_DEF529
	.quad	18
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	20
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	24
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	28
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	32
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	36
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	37
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	38
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	39
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	40
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	41
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	42
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	43
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	44
	.quad	RTTI_$SDL2_$$_PSDL_PIXELFORMAT
	.quad	48

.section .data.n_RTTI_$SDL2_$$_PSDL_PIXELFORMAT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_PIXELFORMAT
RTTI_$SDL2_$$_PSDL_PIXELFORMAT:
	.byte	29,16
	.ascii	"PSDL_PixelFormat"
	.quad	RTTI_$SDL2_$$_TSDL_PIXELFORMAT

.section .data.n_INIT_$SDL2_$$_TSDL_PIXELFORMAT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_PIXELFORMAT
INIT_$SDL2_$$_TSDL_PIXELFORMAT:
	.byte	13,16
	.ascii	"TSDL_PixelFormat"
	.long	56,0

.section .data.n_RTTI_$SDL2_$$_TSDL_POINT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_POINT
RTTI_$SDL2_$$_TSDL_POINT:
	.byte	13,10
	.ascii	"TSDL_Point"
	.long	8,2
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	4

.section .data.n_RTTI_$SDL2_$$_PSDL_POINT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_POINT
RTTI_$SDL2_$$_PSDL_POINT:
	.byte	29,10
	.ascii	"PSDL_Point"
	.quad	RTTI_$SDL2_$$_TSDL_POINT

.section .data.n_INIT_$SDL2_$$_TSDL_POINT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_POINT
INIT_$SDL2_$$_TSDL_POINT:
	.byte	13,10
	.ascii	"TSDL_Point"
	.long	8,0

.section .data.n_RTTI_$SDL2_$$_TSDL_RECT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_RECT
RTTI_$SDL2_$$_TSDL_RECT:
	.byte	13,9
	.ascii	"TSDL_Rect"
	.long	16,4
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	12

.section .data.n_RTTI_$SDL2_$$_PSDL_RECT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_RECT
RTTI_$SDL2_$$_PSDL_RECT:
	.byte	29,9
	.ascii	"PSDL_Rect"
	.quad	RTTI_$SDL2_$$_TSDL_RECT

.section .data.n_INIT_$SDL2_$$_TSDL_RECT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_RECT
INIT_$SDL2_$$_TSDL_RECT:
	.byte	13,9
	.ascii	"TSDL_Rect"
	.long	16,0

.section .data.n_RTTI_$SDL2_$$_TSDL_SURFACE,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_SURFACE
RTTI_$SDL2_$$_TSDL_SURFACE:
	.byte	13,12
	.ascii	"TSDL_Surface"
	.long	96,12
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SDL2_$$_PSDL_PIXELFORMAT
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	16
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	20
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	24
	.quad	RTTI_$SYSTEM_$$_POINTER
	.quad	32
	.quad	RTTI_$SYSTEM_$$_POINTER
	.quad	40
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	48
	.quad	RTTI_$SYSTEM_$$_POINTER
	.quad	56
	.quad	RTTI_$SDL2_$$_TSDL_RECT
	.quad	64
	.quad	RTTI_$SYSTEM_$$_POINTER
	.quad	80
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	88

.section .data.n_RTTI_$SDL2_$$_PSDL_SURFACE,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_SURFACE
RTTI_$SDL2_$$_PSDL_SURFACE:
	.byte	29,12
	.ascii	"PSDL_Surface"
	.quad	RTTI_$SDL2_$$_TSDL_SURFACE

.section .data.n_INIT_$SDL2_$$_TSDL_SURFACE,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_SURFACE
INIT_$SDL2_$$_TSDL_SURFACE:
	.byte	13,12
	.ascii	"TSDL_Surface"
	.long	96,0

.section .data.n_RTTI_$SDL2_$$_TSDL_BLIT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_BLIT
RTTI_$SDL2_$$_TSDL_BLIT:
	.byte	23,9
	.ascii	"TSDL_Blit"
	.byte	0,0
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.byte	4,0
	.quad	RTTI_$SDL2_$$_PSDL_SURFACE
	.byte	3
	.ascii	"src"
	.byte	0
	.quad	RTTI_$SDL2_$$_PSDL_RECT
	.byte	7
	.ascii	"srcrect"
	.byte	0
	.quad	RTTI_$SDL2_$$_PSDL_SURFACE
	.byte	3
	.ascii	"dst"
	.byte	0
	.quad	RTTI_$SDL2_$$_PSDL_RECT
	.byte	7
	.ascii	"dstrect"

.section .data.n_RTTI_$SDL2_$$_TSDL_DISPLAYMODE,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_DISPLAYMODE
RTTI_$SDL2_$$_TSDL_DISPLAYMODE:
	.byte	13,16
	.ascii	"TSDL_DisplayMode"
	.long	24,5
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	12
	.quad	RTTI_$SYSTEM_$$_POINTER
	.quad	16

.section .data.n_RTTI_$SDL2_$$_PSDL_DISPLAYMODE,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_DISPLAYMODE
RTTI_$SDL2_$$_PSDL_DISPLAYMODE:
	.byte	29,16
	.ascii	"PSDL_DisplayMode"
	.quad	RTTI_$SDL2_$$_TSDL_DISPLAYMODE

.section .data.n_INIT_$SDL2_$$_TSDL_DISPLAYMODE,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_DISPLAYMODE
INIT_$SDL2_$$_TSDL_DISPLAYMODE:
	.byte	13,16
	.ascii	"TSDL_DisplayMode"
	.long	24,0

.section .data.n_RTTI_$SDL2_$$_PPSDL_WINDOW,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PPSDL_WINDOW
RTTI_$SDL2_$$_PPSDL_WINDOW:
	.byte	29,12
	.ascii	"PPSDL_Window"
	.quad	RTTI_$SYSTEM_$$_POINTER

.section .data.n_RTTI_$SDL2_$$_SDL_GLATTR,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_SDL_GLATTR
RTTI_$SDL2_$$_SDL_GLATTR:
	.byte	3,10
	.ascii	"SDL_GLattr"
	.byte	5
	.long	0,23
	.quad	0
	.byte	15
	.ascii	"SDL_GL_RED_SIZE"
	.byte	17
	.ascii	"SDL_GL_GREEN_SIZE"
	.byte	16
	.ascii	"SDL_GL_BLUE_SIZE"
	.byte	17
	.ascii	"SDL_GL_ALPHA_SIZE"
	.byte	18
	.ascii	"SDL_GL_BUFFER_SIZE"
	.byte	19
	.ascii	"SDL_GL_DOUBLEBUFFER"
	.byte	17
	.ascii	"SDL_GL_DEPTH_SIZE"
	.byte	19
	.ascii	"SDL_GL_STENCIL_SIZE"
	.byte	21
	.ascii	"SDL_GL_ACCUM_RED_SIZE"
	.byte	23
	.ascii	"SDL_GL_ACCUM_GREEN_SIZE"
	.byte	22
	.ascii	"SDL_GL_ACCUM_BLUE_SIZE"
	.byte	23
	.ascii	"SDL_GL_ACCUM_ALPHA_SIZE"
	.byte	13
	.ascii	"SDL_GL_STEREO"
	.byte	25
	.ascii	"SDL_GL_MULTISAMPLEBUFFERS"
	.byte	25
	.ascii	"SDL_GL_MULTISAMPLESAMPLES"
	.byte	25
	.ascii	"SDL_GL_ACCELERATED_VISUAL"
	.byte	23
	.ascii	"SDL_GL_RETAINED_BACKING"
	.byte	28
	.ascii	"SDL_GL_CONTEXT_MAJOR_VERSION"
	.byte	28
	.ascii	"SDL_GL_CONTEXT_MINOR_VERSION"
	.byte	18
	.ascii	"SDL_GL_CONTEXT_EGL"
	.byte	20
	.ascii	"SDL_GL_CONTEXT_FLAGS"
	.byte	27
	.ascii	"SDL_GL_CONTEXT_PROFILE_MASK"
	.byte	33
	.ascii	"SDL_GL_SHARE_WITH_CURRENT_CONTEXT"
	.byte	31
	.ascii	"SDL_GL_FRAMEBUFFER_SRGB_CAPABLE"
	.byte	4
	.ascii	"SDL2"
	.byte	0

.section .data.n_RTTI_$SDL2_$$_SDL_GLATTR_s2o,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_SDL_GLATTR_s2o
RTTI_$SDL2_$$_SDL_GLATTR_s2o:
	.long	24,15
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+334
	.long	11
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+244
	.long	10
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+221
	.long	9
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+197
	.long	8
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+175
	.long	3
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+80
	.long	2
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+63
	.long	4
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+98
	.long	19
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+442
	.long	20
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+461
	.long	17
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+384
	.long	18
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+413
	.long	21
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+482
	.long	6
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+137
	.long	5
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+117
	.long	23
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+544
	.long	1
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+45
	.long	13
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+282
	.long	14
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+308
	.long	0
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+29
	.long	16
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+360
	.long	22
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+510
	.long	7
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+155
	.long	12
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+268

.section .data.n_RTTI_$SDL2_$$_SDL_GLATTR_o2s,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_SDL_GLATTR_o2s
RTTI_$SDL2_$$_SDL_GLATTR_o2s:
	.long	0
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+29
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+45
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+63
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+80
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+98
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+117
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+137
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+155
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+175
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+197
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+221
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+244
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+268
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+282
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+308
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+334
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+360
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+384
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+413
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+442
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+461
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+482
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+510
	.quad	RTTI_$SDL2_$$_SDL_GLATTR+544

.section .data.n_INIT_$SDL2_$$_TSDL_WINDOWSHAPEPARAMS,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_WINDOWSHAPEPARAMS
INIT_$SDL2_$$_TSDL_WINDOWSHAPEPARAMS:
	.byte	13,22
	.ascii	"TSDL_WindowShapeParams"
	.long	4,0

.section .data.n_RTTI_$SDL2_$$_TSDL_WINDOWSHAPEPARAMS,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_WINDOWSHAPEPARAMS
RTTI_$SDL2_$$_TSDL_WINDOWSHAPEPARAMS:
	.byte	13,22
	.ascii	"TSDL_WindowShapeParams"
	.long	4,2
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_COLOR
	.quad	0

.section .data.n_RTTI_$SDL2_$$_TSDL_WINDOWSHAPEMODE,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_WINDOWSHAPEMODE
RTTI_$SDL2_$$_TSDL_WINDOWSHAPEMODE:
	.byte	13,20
	.ascii	"TSDL_WindowShapeMode"
	.long	8,2
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_WINDOWSHAPEPARAMS
	.quad	4

.section .data.n_RTTI_$SDL2_$$_PSDL_WINDOWSHAPEMODE,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_WINDOWSHAPEMODE
RTTI_$SDL2_$$_PSDL_WINDOWSHAPEMODE:
	.byte	29,20
	.ascii	"PSDL_WindowShapeMode"
	.quad	RTTI_$SDL2_$$_TSDL_WINDOWSHAPEMODE

.section .data.n_INIT_$SDL2_$$_TSDL_WINDOWSHAPEMODE,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_WINDOWSHAPEMODE
INIT_$SDL2_$$_TSDL_WINDOWSHAPEMODE:
	.byte	13,20
	.ascii	"TSDL_WindowShapeMode"
	.long	8,0

.section .data.n_RTTI_$SDL2_$$_DEF813,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF813
RTTI_$SDL2_$$_DEF813:
	.byte	12
	.ascii	"\000"
	.quad	64,16
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$SDL2_$$_TSDL_RENDERERINFO,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_RENDERERINFO
RTTI_$SDL2_$$_TSDL_RENDERERINFO:
	.byte	13,17
	.ascii	"TSDL_RendererInfo"
	.long	88,6
	.quad	RTTI_$SYSTEM_$$_PCHAR
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	12
	.quad	RTTI_$SDL2_$$_DEF813
	.quad	16
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	80
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	84

.section .data.n_RTTI_$SDL2_$$_PSDL_RENDERERINFO,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_RENDERERINFO
RTTI_$SDL2_$$_PSDL_RENDERERINFO:
	.byte	29,17
	.ascii	"PSDL_RendererInfo"
	.quad	RTTI_$SDL2_$$_TSDL_RENDERERINFO

.section .data.n_INIT_$SDL2_$$_TSDL_RENDERERINFO,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_RENDERERINFO
INIT_$SDL2_$$_TSDL_RENDERERINFO:
	.byte	13,17
	.ascii	"TSDL_RendererInfo"
	.long	88,0

.section .data.n_RTTI_$SDL2_$$_PPSDL_RENDERER,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PPSDL_RENDERER
RTTI_$SDL2_$$_PPSDL_RENDERER:
	.byte	29,14
	.ascii	"PPSDL_Renderer"
	.quad	RTTI_$SYSTEM_$$_POINTER

.section .data.n_RTTI_$SDL2_$$_TSDL_MESSAGEBOXBUTTONDATA,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_MESSAGEBOXBUTTONDATA
RTTI_$SDL2_$$_TSDL_MESSAGEBOXBUTTONDATA:
	.byte	13,25
	.ascii	"TSDL_MessageBoxButtonData"
	.long	16,3
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	4
	.quad	RTTI_$SYSTEM_$$_PCHAR
	.quad	8

.section .data.n_RTTI_$SDL2_$$_PSDL_MESSAGEBOXBUTTONDATA,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_MESSAGEBOXBUTTONDATA
RTTI_$SDL2_$$_PSDL_MESSAGEBOXBUTTONDATA:
	.byte	29,25
	.ascii	"PSDL_MessageBoxButtonData"
	.quad	RTTI_$SDL2_$$_TSDL_MESSAGEBOXBUTTONDATA

.section .data.n_INIT_$SDL2_$$_TSDL_MESSAGEBOXBUTTONDATA,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_MESSAGEBOXBUTTONDATA
INIT_$SDL2_$$_TSDL_MESSAGEBOXBUTTONDATA:
	.byte	13,25
	.ascii	"TSDL_MessageBoxButtonData"
	.long	16,0

.section .data.n_INIT_$SDL2_$$_SDL_MESSAGEBOXCOLOR,"d"
	.balign 8
.globl	INIT_$SDL2_$$_SDL_MESSAGEBOXCOLOR
INIT_$SDL2_$$_SDL_MESSAGEBOXCOLOR:
	.byte	13,19
	.ascii	"SDL_MessageBoxColor"
	.long	3,0

.section .data.n_RTTI_$SDL2_$$_SDL_MESSAGEBOXCOLOR,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_SDL_MESSAGEBOXCOLOR
RTTI_$SDL2_$$_SDL_MESSAGEBOXCOLOR:
	.byte	13,19
	.ascii	"SDL_MessageBoxColor"
	.long	3,3
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	0
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	1
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	2

.section .data.n_RTTI_$SDL2_$$_DEF926,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF926
RTTI_$SDL2_$$_DEF926:
	.byte	12
	.ascii	"\000"
	.quad	15,5
	.quad	RTTI_$SDL2_$$_SDL_MESSAGEBOXCOLOR
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$SDL2_$$_TSDL_MESSAGEBOXCOLORSCHEME,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_MESSAGEBOXCOLORSCHEME
RTTI_$SDL2_$$_TSDL_MESSAGEBOXCOLORSCHEME:
	.byte	13,26
	.ascii	"TSDL_MessageBoxColorScheme"
	.long	15,1
	.quad	RTTI_$SDL2_$$_DEF926
	.quad	0

.section .data.n_RTTI_$SDL2_$$_PSDL_MESSAGEBOXCOLORSCHEME,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_MESSAGEBOXCOLORSCHEME
RTTI_$SDL2_$$_PSDL_MESSAGEBOXCOLORSCHEME:
	.byte	29,26
	.ascii	"PSDL_MessageBoxColorScheme"
	.quad	RTTI_$SDL2_$$_TSDL_MESSAGEBOXCOLORSCHEME

.section .data.n_INIT_$SDL2_$$_TSDL_MESSAGEBOXCOLORSCHEME,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_MESSAGEBOXCOLORSCHEME
INIT_$SDL2_$$_TSDL_MESSAGEBOXCOLORSCHEME:
	.byte	13,26
	.ascii	"TSDL_MessageBoxColorScheme"
	.long	15,0

.section .data.n_RTTI_$SDL2_$$_TSDL_MESSAGEBOXDATA,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_MESSAGEBOXDATA
RTTI_$SDL2_$$_TSDL_MESSAGEBOXDATA:
	.byte	13,19
	.ascii	"TSDL_MessageBoxData"
	.long	56,7
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_POINTER
	.quad	8
	.quad	RTTI_$SYSTEM_$$_PCHAR
	.quad	16
	.quad	RTTI_$SYSTEM_$$_PCHAR
	.quad	24
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	32
	.quad	RTTI_$SDL2_$$_PSDL_MESSAGEBOXBUTTONDATA
	.quad	40
	.quad	RTTI_$SDL2_$$_PSDL_MESSAGEBOXCOLORSCHEME
	.quad	48

.section .data.n_RTTI_$SDL2_$$_PSDL_MESSAGEBOXDATA,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_MESSAGEBOXDATA
RTTI_$SDL2_$$_PSDL_MESSAGEBOXDATA:
	.byte	29,19
	.ascii	"PSDL_MessageBoxData"
	.quad	RTTI_$SDL2_$$_TSDL_MESSAGEBOXDATA

.section .data.n_INIT_$SDL2_$$_TSDL_MESSAGEBOXDATA,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_MESSAGEBOXDATA
INIT_$SDL2_$$_TSDL_MESSAGEBOXDATA:
	.byte	13,19
	.ascii	"TSDL_MessageBoxData"
	.long	56,0

.section .data.n_RTTI_$SDL2_$$_PSDL_SCANCODE,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_SCANCODE
RTTI_$SDL2_$$_PSDL_SCANCODE:
	.byte	29,13
	.ascii	"PSDL_ScanCode"
	.quad	RTTI_$SYSTEM_$$_LONGWORD

.section .data.n_RTTI_$SDL2_$$_PSDL_KEYCODE,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_KEYCODE
RTTI_$SDL2_$$_PSDL_KEYCODE:
	.byte	29,12
	.ascii	"PSDL_KeyCode"
	.quad	RTTI_$SYSTEM_$$_LONGINT

.section .data.n_RTTI_$SDL2_$$_PSDL_KEYMOD,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_KEYMOD
RTTI_$SDL2_$$_PSDL_KEYMOD:
	.byte	29,11
	.ascii	"PSDL_KeyMod"
	.quad	RTTI_$SYSTEM_$$_WORD

.section .data.n_RTTI_$SDL2_$$_TSDL_KEYSYM,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_KEYSYM
RTTI_$SDL2_$$_TSDL_KEYSYM:
	.byte	13,11
	.ascii	"TSDL_Keysym"
	.long	16,4
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	4
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	12

.section .data.n_RTTI_$SDL2_$$_PSDL_KEYSYM,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_KEYSYM
RTTI_$SDL2_$$_PSDL_KEYSYM:
	.byte	29,11
	.ascii	"PSDL_Keysym"
	.quad	RTTI_$SDL2_$$_TSDL_KEYSYM

.section .data.n_INIT_$SDL2_$$_TSDL_KEYSYM,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_KEYSYM
INIT_$SDL2_$$_TSDL_KEYSYM:
	.byte	13,11
	.ascii	"TSDL_Keysym"
	.long	16,0

.section .data.n_INIT_$SDL2_$$_TSDL_JOYSTICKGUID,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_JOYSTICKGUID
INIT_$SDL2_$$_TSDL_JOYSTICKGUID:
	.byte	13,17
	.ascii	"TSDL_JoystickGUID"
	.long	16,0

.section .data.n_RTTI_$SDL2_$$_DEF997,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF997
RTTI_$SDL2_$$_DEF997:
	.byte	12
	.ascii	"\000"
	.quad	16,16
	.quad	RTTI_$SYSTEM_$$_BYTE
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$SDL2_$$_TSDL_JOYSTICKGUID,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_JOYSTICKGUID
RTTI_$SDL2_$$_TSDL_JOYSTICKGUID:
	.byte	13,17
	.ascii	"TSDL_JoystickGUID"
	.long	16,1
	.quad	RTTI_$SDL2_$$_DEF997
	.quad	0

.section .data.n_RTTI_$SDL2_$$_SDL_GAMECONTROLLERBINDTYPE,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBINDTYPE
RTTI_$SDL2_$$_SDL_GAMECONTROLLERBINDTYPE:
	.byte	3,26
	.ascii	"SDL_GameControllerBindType"
	.byte	5
	.long	0,3
	.quad	0
	.byte	28
	.ascii	"SDL_CONTROLLER_BINDTYPE_NONE"
	.byte	30
	.ascii	"SDL_CONTROLLER_BINDTYPE_BUTTON"
	.byte	28
	.ascii	"SDL_CONTROLLER_BINDTYPE_AXIS"
	.byte	27
	.ascii	"SDL_CONTROLLER_BINDTYPE_HAT"
	.byte	4
	.ascii	"SDL2"
	.byte	0

.section .data.n_RTTI_$SDL2_$$_SDL_GAMECONTROLLERBINDTYPE_s2o,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBINDTYPE_s2o
RTTI_$SDL2_$$_SDL_GAMECONTROLLERBINDTYPE_s2o:
	.long	4,2
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBINDTYPE+105
	.long	1
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBINDTYPE+74
	.long	3
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBINDTYPE+134
	.long	0
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBINDTYPE+45

.section .data.n_RTTI_$SDL2_$$_SDL_GAMECONTROLLERBINDTYPE_o2s,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBINDTYPE_o2s
RTTI_$SDL2_$$_SDL_GAMECONTROLLERBINDTYPE_o2s:
	.long	0
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBINDTYPE+45
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBINDTYPE+74
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBINDTYPE+105
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBINDTYPE+134

.section .data.n_RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS
RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS:
	.byte	3,22
	.ascii	"SDL_GameControllerAxis"
	.byte	5
	.long	-1,6
	.quad	0
	.byte	27
	.ascii	"SDL_CONTROLLER_AXIS_INVALID"
	.byte	25
	.ascii	"SDL_CONTROLLER_AXIS_LEFTX"
	.byte	25
	.ascii	"SDL_CONTROLLER_AXIS_LEFTY"
	.byte	26
	.ascii	"SDL_CONTROLLER_AXIS_RIGHTX"
	.byte	26
	.ascii	"SDL_CONTROLLER_AXIS_RIGHTY"
	.byte	31
	.ascii	"SDL_CONTROLLER_AXIS_TRIGGERLEFT"
	.byte	32
	.ascii	"SDL_CONTROLLER_AXIS_TRIGGERRIGHT"
	.byte	23
	.ascii	"SDL_CONTROLLER_AXIS_MAX"
	.byte	4
	.ascii	"SDL2"
	.byte	0

.section .data.n_RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS_s2o,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS_s2o
RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS_s2o:
	.long	8,-1
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS+41
	.long	0
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS+69
	.long	1
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS+95
	.long	6
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS+240
	.long	2
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS+121
	.long	3
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS+148
	.long	4
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS+175
	.long	5
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS+207

.section .data.n_RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS_o2s,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS_o2s
RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS_o2s:
	.long	0
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS+41
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS+69
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS+95
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS+121
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS+148
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS+175
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS+207
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERAXIS+240

.section .data.n_RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON
RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON:
	.byte	3,24
	.ascii	"SDL_GameControllerButton"
	.byte	5
	.long	-1,15
	.quad	0
	.byte	29
	.ascii	"SDL_CONTROLLER_BUTTON_INVALID"
	.byte	23
	.ascii	"SDL_CONTROLLER_BUTTON_A"
	.byte	23
	.ascii	"SDL_CONTROLLER_BUTTON_B"
	.byte	23
	.ascii	"SDL_CONTROLLER_BUTTON_X"
	.byte	23
	.ascii	"SDL_CONTROLLER_BUTTON_Y"
	.byte	26
	.ascii	"SDL_CONTROLLER_BUTTON_BACK"
	.byte	27
	.ascii	"SDL_CONTROLLER_BUTTON_GUIDE"
	.byte	27
	.ascii	"SDL_CONTROLLER_BUTTON_START"
	.byte	31
	.ascii	"SDL_CONTROLLER_BUTTON_LEFTSTICK"
	.byte	32
	.ascii	"SDL_CONTROLLER_BUTTON_RIGHTSTICK"
	.byte	34
	.ascii	"SDL_CONTROLLER_BUTTON_LEFTSHOULDER"
	.byte	35
	.ascii	"SDL_CONTROLLER_BUTTON_RIGHTSHOULDER"
	.byte	29
	.ascii	"SDL_CONTROLLER_BUTTON_DPAD_UP"
	.byte	31
	.ascii	"SDL_CONTROLLER_BUTTON_DPAD_DOWN"
	.byte	31
	.ascii	"SDL_CONTROLLER_BUTTON_DPAD_LEFT"
	.byte	32
	.ascii	"SDL_CONTROLLER_BUTTON_DPAD_RIGHT"
	.byte	25
	.ascii	"SDL_CONTROLLER_BUTTON_MAX"
	.byte	4
	.ascii	"SDL2"
	.byte	0

.section .data.n_RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON_s2o,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON_s2o
RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON_s2o:
	.long	17,0
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+73
	.long	1
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+97
	.long	4
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+169
	.long	12
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+418
	.long	13
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+450
	.long	14
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+482
	.long	11
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+388
	.long	5
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+196
	.long	-1
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+43
	.long	9
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+317
	.long	7
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+252
	.long	15
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+515
	.long	10
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+352
	.long	8
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+284
	.long	6
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+224
	.long	2
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+121
	.long	3
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+145

.section .data.n_RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON_o2s,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON_o2s
RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON_o2s:
	.long	0
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+43
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+73
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+97
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+121
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+145
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+169
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+196
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+224
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+252
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+284
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+317
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+352
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+388
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+418
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+450
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+482
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBUTTON+515

.section .data.n_RTTI_$SDL2_$$_DEF1047,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF1047
RTTI_$SDL2_$$_DEF1047:
	.byte	13
	.ascii	"\000"
	.long	8,2
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	4

.section .data.n_RTTI_$SDL2_$$_DEF1045,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF1045
RTTI_$SDL2_$$_DEF1045:
	.byte	13
	.ascii	"\000"
	.long	8,3
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	0
	.quad	RTTI_$SDL2_$$_DEF1047
	.quad	0

.section .data.n_RTTI_$SDL2_$$_TSDL_GAMECONTROLLERBUTTONBIND,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_GAMECONTROLLERBUTTONBIND
RTTI_$SDL2_$$_TSDL_GAMECONTROLLERBUTTONBIND:
	.byte	13,29
	.ascii	"TSDL_GameControllerButtonBind"
	.long	12,2
	.quad	RTTI_$SDL2_$$_SDL_GAMECONTROLLERBINDTYPE
	.quad	0
	.quad	RTTI_$SDL2_$$_DEF1045
	.quad	4

.section .data.n_RTTI_$SDL2_$$_PSDL_GAMECONTROLLERBUTTONBIND,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_GAMECONTROLLERBUTTONBIND
RTTI_$SDL2_$$_PSDL_GAMECONTROLLERBUTTONBIND:
	.byte	29,29
	.ascii	"PSDL_GameControllerButtonBind"
	.quad	RTTI_$SDL2_$$_TSDL_GAMECONTROLLERBUTTONBIND

.section .data.n_INIT_$SDL2_$$_TSDL_GAMECONTROLLERBUTTONBIND,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_GAMECONTROLLERBUTTONBIND
INIT_$SDL2_$$_TSDL_GAMECONTROLLERBUTTONBIND:
	.byte	13,29
	.ascii	"TSDL_GameControllerButtonBind"
	.long	12,0

.section .data.n_RTTI_$SDL2_$$_DEF1093,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF1093
RTTI_$SDL2_$$_DEF1093:
	.byte	12
	.ascii	"\000"
	.quad	12,3
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$SDL2_$$_TSDL_HAPTICDIRECTION,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_HAPTICDIRECTION
RTTI_$SDL2_$$_TSDL_HAPTICDIRECTION:
	.byte	13,20
	.ascii	"TSDL_HapticDirection"
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	0
	.quad	RTTI_$SDL2_$$_DEF1093
	.quad	4

.section .data.n_RTTI_$SDL2_$$_PSDL_HAPTICDIRECTION,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_HAPTICDIRECTION
RTTI_$SDL2_$$_PSDL_HAPTICDIRECTION:
	.byte	29,20
	.ascii	"PSDL_HapticDirection"
	.quad	RTTI_$SDL2_$$_TSDL_HAPTICDIRECTION

.section .data.n_INIT_$SDL2_$$_TSDL_HAPTICDIRECTION,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_HAPTICDIRECTION
INIT_$SDL2_$$_TSDL_HAPTICDIRECTION:
	.byte	13,20
	.ascii	"TSDL_HapticDirection"
	.long	16,0

.section .data.n_RTTI_$SDL2_$$_TSDL_HAPTICCONSTANT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_HAPTICCONSTANT
RTTI_$SDL2_$$_TSDL_HAPTICCONSTANT:
	.byte	13,19
	.ascii	"TSDL_HapticConstant"
	.long	40,11
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_HAPTICDIRECTION
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	20
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	24
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	26
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	28
	.quad	RTTI_$SYSTEM_$$_SMALLINT
	.quad	30
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	32
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	34
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	36
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	38

.section .data.n_RTTI_$SDL2_$$_PSDL_HAPTICCONSTANT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_HAPTICCONSTANT
RTTI_$SDL2_$$_PSDL_HAPTICCONSTANT:
	.byte	29,19
	.ascii	"PSDL_HapticConstant"
	.quad	RTTI_$SDL2_$$_TSDL_HAPTICCONSTANT

.section .data.n_INIT_$SDL2_$$_TSDL_HAPTICCONSTANT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_HAPTICCONSTANT
INIT_$SDL2_$$_TSDL_HAPTICCONSTANT:
	.byte	13,19
	.ascii	"TSDL_HapticConstant"
	.long	40,0

.section .data.n_RTTI_$SDL2_$$_TSDL_HAPTICPERIODIC,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_HAPTICPERIODIC
RTTI_$SDL2_$$_TSDL_HAPTICPERIODIC:
	.byte	13,19
	.ascii	"TSDL_HapticPeriodic"
	.long	48,14
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_HAPTICDIRECTION
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	20
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	24
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	26
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	28
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	30
	.quad	RTTI_$SYSTEM_$$_SMALLINT
	.quad	32
	.quad	RTTI_$SYSTEM_$$_SMALLINT
	.quad	34
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	36
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	38
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	40
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	42
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	44

.section .data.n_RTTI_$SDL2_$$_PSDL_HAPTICPERIODIC,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_HAPTICPERIODIC
RTTI_$SDL2_$$_PSDL_HAPTICPERIODIC:
	.byte	29,19
	.ascii	"PSDL_HapticPeriodic"
	.quad	RTTI_$SDL2_$$_TSDL_HAPTICPERIODIC

.section .data.n_INIT_$SDL2_$$_TSDL_HAPTICPERIODIC,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_HAPTICPERIODIC
INIT_$SDL2_$$_TSDL_HAPTICPERIODIC:
	.byte	13,19
	.ascii	"TSDL_HapticPeriodic"
	.long	48,0

.section .data.n_RTTI_$SDL2_$$_DEF1100,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF1100
RTTI_$SDL2_$$_DEF1100:
	.byte	12
	.ascii	"\000"
	.quad	6,3
	.quad	RTTI_$SYSTEM_$$_WORD
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$SDL2_$$_DEF1101,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF1101
RTTI_$SDL2_$$_DEF1101:
	.byte	12
	.ascii	"\000"
	.quad	6,3
	.quad	RTTI_$SYSTEM_$$_SMALLINT
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$SDL2_$$_DEF1102,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF1102
RTTI_$SDL2_$$_DEF1102:
	.byte	12
	.ascii	"\000"
	.quad	6,3
	.quad	RTTI_$SYSTEM_$$_WORD
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$SDL2_$$_DEF1103,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF1103
RTTI_$SDL2_$$_DEF1103:
	.byte	12
	.ascii	"\000"
	.quad	6,3
	.quad	RTTI_$SYSTEM_$$_SMALLINT
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$SDL2_$$_TSDL_HAPTICCONDITION,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_HAPTICCONDITION
RTTI_$SDL2_$$_TSDL_HAPTICCONDITION:
	.byte	13,20
	.ascii	"TSDL_HapticCondition"
	.long	68,12
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_HAPTICDIRECTION
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	20
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	24
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	26
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	28
	.quad	RTTI_$SDL2_$$_DEF1100
	.quad	30
	.quad	RTTI_$SDL2_$$_DEF1100
	.quad	36
	.quad	RTTI_$SDL2_$$_DEF1101
	.quad	42
	.quad	RTTI_$SDL2_$$_DEF1101
	.quad	48
	.quad	RTTI_$SDL2_$$_DEF1102
	.quad	54
	.quad	RTTI_$SDL2_$$_DEF1103
	.quad	60

.section .data.n_RTTI_$SDL2_$$_PSDL_HAPTICCONDITION,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_HAPTICCONDITION
RTTI_$SDL2_$$_PSDL_HAPTICCONDITION:
	.byte	29,20
	.ascii	"PSDL_HapticCondition"
	.quad	RTTI_$SDL2_$$_TSDL_HAPTICCONDITION

.section .data.n_INIT_$SDL2_$$_TSDL_HAPTICCONDITION,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_HAPTICCONDITION
INIT_$SDL2_$$_TSDL_HAPTICCONDITION:
	.byte	13,20
	.ascii	"TSDL_HapticCondition"
	.long	68,0

.section .data.n_RTTI_$SDL2_$$_TSDL_HAPTICRAMP,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_HAPTICRAMP
RTTI_$SDL2_$$_TSDL_HAPTICRAMP:
	.byte	13,15
	.ascii	"TSDL_HapticRamp"
	.long	44,12
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_HAPTICDIRECTION
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	20
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	24
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	26
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	28
	.quad	RTTI_$SYSTEM_$$_SMALLINT
	.quad	30
	.quad	RTTI_$SYSTEM_$$_SMALLINT
	.quad	32
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	34
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	36
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	38
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	40

.section .data.n_RTTI_$SDL2_$$_PSDL_HAPTICRAMP,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_HAPTICRAMP
RTTI_$SDL2_$$_PSDL_HAPTICRAMP:
	.byte	29,15
	.ascii	"PSDL_HapticRamp"
	.quad	RTTI_$SDL2_$$_TSDL_HAPTICRAMP

.section .data.n_INIT_$SDL2_$$_TSDL_HAPTICRAMP,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_HAPTICRAMP
INIT_$SDL2_$$_TSDL_HAPTICRAMP:
	.byte	13,15
	.ascii	"TSDL_HapticRamp"
	.long	44,0

.section .data.n_RTTI_$SDL2_$$_TSDL_HAPTICLEFTRIGHT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_HAPTICLEFTRIGHT
RTTI_$SDL2_$$_TSDL_HAPTICLEFTRIGHT:
	.byte	13,20
	.ascii	"TSDL_HapticLeftRight"
	.long	12,4
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	8
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	10

.section .data.n_RTTI_$SDL2_$$_PSDL_HAPTICLEFTRIGHT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_HAPTICLEFTRIGHT
RTTI_$SDL2_$$_PSDL_HAPTICLEFTRIGHT:
	.byte	29,20
	.ascii	"PSDL_HapticLeftRight"
	.quad	RTTI_$SDL2_$$_TSDL_HAPTICLEFTRIGHT

.section .data.n_INIT_$SDL2_$$_TSDL_HAPTICLEFTRIGHT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_HAPTICLEFTRIGHT
INIT_$SDL2_$$_TSDL_HAPTICLEFTRIGHT:
	.byte	13,20
	.ascii	"TSDL_HapticLeftRight"
	.long	12,0

.section .data.n_RTTI_$SDL2_$$_TSDL_HAPTICCUSTOM,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_HAPTICCUSTOM
RTTI_$SDL2_$$_TSDL_HAPTICCUSTOM:
	.byte	13,17
	.ascii	"TSDL_HapticCustom"
	.long	56,14
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_HAPTICDIRECTION
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	20
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	24
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	26
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	28
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	30
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	32
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	34
	.quad	RTTI_$SYSTEM_$$_PWORD
	.quad	40
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	48
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	50
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	52
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	54

.section .data.n_RTTI_$SDL2_$$_PSDL_HAPTICCUSTOM,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_HAPTICCUSTOM
RTTI_$SDL2_$$_PSDL_HAPTICCUSTOM:
	.byte	29,17
	.ascii	"PSDL_HapticCustom"
	.quad	RTTI_$SDL2_$$_TSDL_HAPTICCUSTOM

.section .data.n_INIT_$SDL2_$$_TSDL_HAPTICCUSTOM,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_HAPTICCUSTOM
INIT_$SDL2_$$_TSDL_HAPTICCUSTOM:
	.byte	13,17
	.ascii	"TSDL_HapticCustom"
	.long	56,0

.section .data.n_RTTI_$SDL2_$$_TSDL_HAPTICEFFECT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_HAPTICEFFECT
RTTI_$SDL2_$$_TSDL_HAPTICEFFECT:
	.byte	13,17
	.ascii	"TSDL_HapticEffect"
	.long	72,6
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_HAPTICCONSTANT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_HAPTICPERIODIC
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_HAPTICCONDITION
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_HAPTICRAMP
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_HAPTICCUSTOM
	.quad	0

.section .data.n_RTTI_$SDL2_$$_PSDL_HAPTICEFFECT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_HAPTICEFFECT
RTTI_$SDL2_$$_PSDL_HAPTICEFFECT:
	.byte	29,17
	.ascii	"PSDL_HapticEffect"
	.quad	RTTI_$SDL2_$$_TSDL_HAPTICEFFECT

.section .data.n_INIT_$SDL2_$$_TSDL_HAPTICEFFECT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_HAPTICEFFECT
INIT_$SDL2_$$_TSDL_HAPTICEFFECT:
	.byte	13,17
	.ascii	"TSDL_HapticEffect"
	.long	72,0

.section .data.n_RTTI_$SDL2_$$_TSDL_FINGER,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_FINGER
RTTI_$SDL2_$$_TSDL_FINGER:
	.byte	13,11
	.ascii	"TSDL_Finger"
	.long	24,4
	.quad	RTTI_$SYSTEM_$$_INT64
	.quad	0
	.quad	RTTI_$SYSTEM_$$_SINGLE
	.quad	8
	.quad	RTTI_$SYSTEM_$$_SINGLE
	.quad	12
	.quad	RTTI_$SYSTEM_$$_SINGLE
	.quad	16

.section .data.n_RTTI_$SDL2_$$_PSDL_FINGER,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_FINGER
RTTI_$SDL2_$$_PSDL_FINGER:
	.byte	29,11
	.ascii	"PSDL_Finger"
	.quad	RTTI_$SDL2_$$_TSDL_FINGER

.section .data.n_INIT_$SDL2_$$_TSDL_FINGER,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_FINGER
INIT_$SDL2_$$_TSDL_FINGER:
	.byte	13,11
	.ascii	"TSDL_Finger"
	.long	24,0

.section .data.n_INIT_$SDL2_$$_TSDL_COMMONEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_COMMONEVENT
INIT_$SDL2_$$_TSDL_COMMONEVENT:
	.byte	13,16
	.ascii	"TSDL_CommonEvent"
	.long	8,0

.section .data.n_RTTI_$SDL2_$$_TSDL_COMMONEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_COMMONEVENT
RTTI_$SDL2_$$_TSDL_COMMONEVENT:
	.byte	13,16
	.ascii	"TSDL_CommonEvent"
	.long	8,2
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4

.section .data.n_INIT_$SDL2_$$_TSDL_WINDOWEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_WINDOWEVENT
INIT_$SDL2_$$_TSDL_WINDOWEVENT:
	.byte	13,16
	.ascii	"TSDL_WindowEvent"
	.long	24,0

.section .data.n_RTTI_$SDL2_$$_TSDL_WINDOWEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_WINDOWEVENT
RTTI_$SDL2_$$_TSDL_WINDOWEVENT:
	.byte	13,16
	.ascii	"TSDL_WindowEvent"
	.long	24,9
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	8
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	12
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	13
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	14
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	15
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	16
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	20

.section .data.n_INIT_$SDL2_$$_TSDL_KEYBOARDEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_KEYBOARDEVENT
INIT_$SDL2_$$_TSDL_KEYBOARDEVENT:
	.byte	13,18
	.ascii	"TSDL_KeyboardEvent"
	.long	32,0

.section .data.n_RTTI_$SDL2_$$_TSDL_KEYBOARDEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_KEYBOARDEVENT
RTTI_$SDL2_$$_TSDL_KEYBOARDEVENT:
	.byte	13,18
	.ascii	"TSDL_KeyboardEvent"
	.long	32,8
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	8
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	12
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	13
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	14
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	15
	.quad	RTTI_$SDL2_$$_TSDL_KEYSYM
	.quad	16

.section .data.n_INIT_$SDL2_$$_TSDL_TEXTEDITINGEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_TEXTEDITINGEVENT
INIT_$SDL2_$$_TSDL_TEXTEDITINGEVENT:
	.byte	13,21
	.ascii	"TSDL_TextEditingEvent"
	.long	52,0

.section .data.n_RTTI_$SDL2_$$_DEF1195,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF1195
RTTI_$SDL2_$$_DEF1195:
	.byte	12
	.ascii	"\000"
	.quad	32,32
	.quad	RTTI_$SYSTEM_$$_CHAR
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$SDL2_$$_TSDL_TEXTEDITINGEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_TEXTEDITINGEVENT
RTTI_$SDL2_$$_TSDL_TEXTEDITINGEVENT:
	.byte	13,21
	.ascii	"TSDL_TextEditingEvent"
	.long	52,6
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	8
	.quad	RTTI_$SDL2_$$_DEF1195
	.quad	12
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	44
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	48

.section .data.n_INIT_$SDL2_$$_TSDL_TEXTINPUTEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_TEXTINPUTEVENT
INIT_$SDL2_$$_TSDL_TEXTINPUTEVENT:
	.byte	13,19
	.ascii	"TSDL_TextInputEvent"
	.long	44,0

.section .data.n_RTTI_$SDL2_$$_DEF1197,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF1197
RTTI_$SDL2_$$_DEF1197:
	.byte	12
	.ascii	"\000"
	.quad	32,32
	.quad	RTTI_$SYSTEM_$$_CHAR
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$SDL2_$$_TSDL_TEXTINPUTEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_TEXTINPUTEVENT
RTTI_$SDL2_$$_TSDL_TEXTINPUTEVENT:
	.byte	13,19
	.ascii	"TSDL_TextInputEvent"
	.long	44,4
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	8
	.quad	RTTI_$SDL2_$$_DEF1197
	.quad	12

.section .data.n_INIT_$SDL2_$$_TSDL_MOUSEMOTIONEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_MOUSEMOTIONEVENT
INIT_$SDL2_$$_TSDL_MOUSEMOTIONEVENT:
	.byte	13,21
	.ascii	"TSDL_MouseMotionEvent"
	.long	36,0

.section .data.n_RTTI_$SDL2_$$_TSDL_MOUSEMOTIONEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_MOUSEMOTIONEVENT
RTTI_$SDL2_$$_TSDL_MOUSEMOTIONEVENT:
	.byte	13,21
	.ascii	"TSDL_MouseMotionEvent"
	.long	36,9
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	12
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	16
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	20
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	24
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	28
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	32

.section .data.n_INIT_$SDL2_$$_TSDL_MOUSEBUTTONEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_MOUSEBUTTONEVENT
INIT_$SDL2_$$_TSDL_MOUSEBUTTONEVENT:
	.byte	13,21
	.ascii	"TSDL_MouseButtonEvent"
	.long	28,0

.section .data.n_RTTI_$SDL2_$$_TSDL_MOUSEBUTTONEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_MOUSEBUTTONEVENT
RTTI_$SDL2_$$_TSDL_MOUSEBUTTONEVENT:
	.byte	13,21
	.ascii	"TSDL_MouseButtonEvent"
	.long	28,10
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	12
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	16
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	17
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	18
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	19
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	20
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	24

.section .data.n_INIT_$SDL2_$$_TSDL_MOUSEWHEELEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_MOUSEWHEELEVENT
INIT_$SDL2_$$_TSDL_MOUSEWHEELEVENT:
	.byte	13,20
	.ascii	"TSDL_MouseWheelEvent"
	.long	24,0

.section .data.n_RTTI_$SDL2_$$_TSDL_MOUSEWHEELEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_MOUSEWHEELEVENT
RTTI_$SDL2_$$_TSDL_MOUSEWHEELEVENT:
	.byte	13,20
	.ascii	"TSDL_MouseWheelEvent"
	.long	24,6
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	12
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	16
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	20

.section .data.n_INIT_$SDL2_$$_TSDL_JOYAXISEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_JOYAXISEVENT
INIT_$SDL2_$$_TSDL_JOYAXISEVENT:
	.byte	13,17
	.ascii	"TSDL_JoyAxisEvent"
	.long	20,0

.section .data.n_RTTI_$SDL2_$$_TSDL_JOYAXISEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_JOYAXISEVENT
RTTI_$SDL2_$$_TSDL_JOYAXISEVENT:
	.byte	13,17
	.ascii	"TSDL_JoyAxisEvent"
	.long	20,9
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	8
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	12
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	13
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	14
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	15
	.quad	RTTI_$SYSTEM_$$_SMALLINT
	.quad	16
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	18

.section .data.n_INIT_$SDL2_$$_TSDL_JOYBALLEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_JOYBALLEVENT
INIT_$SDL2_$$_TSDL_JOYBALLEVENT:
	.byte	13,17
	.ascii	"TSDL_JoyBallEvent"
	.long	20,0

.section .data.n_RTTI_$SDL2_$$_TSDL_JOYBALLEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_JOYBALLEVENT
RTTI_$SDL2_$$_TSDL_JOYBALLEVENT:
	.byte	13,17
	.ascii	"TSDL_JoyBallEvent"
	.long	20,9
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	8
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	12
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	13
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	14
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	15
	.quad	RTTI_$SYSTEM_$$_SMALLINT
	.quad	16
	.quad	RTTI_$SYSTEM_$$_SMALLINT
	.quad	18

.section .data.n_INIT_$SDL2_$$_TSDL_JOYHATEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_JOYHATEVENT
INIT_$SDL2_$$_TSDL_JOYHATEVENT:
	.byte	13,16
	.ascii	"TSDL_JoyHatEvent"
	.long	16,0

.section .data.n_RTTI_$SDL2_$$_TSDL_JOYHATEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_JOYHATEVENT
RTTI_$SDL2_$$_TSDL_JOYHATEVENT:
	.byte	13,16
	.ascii	"TSDL_JoyHatEvent"
	.long	16,7
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	8
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	12
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	13
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	14
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	15

.section .data.n_INIT_$SDL2_$$_TSDL_JOYBUTTONEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_JOYBUTTONEVENT
INIT_$SDL2_$$_TSDL_JOYBUTTONEVENT:
	.byte	13,19
	.ascii	"TSDL_JoyButtonEvent"
	.long	16,0

.section .data.n_RTTI_$SDL2_$$_TSDL_JOYBUTTONEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_JOYBUTTONEVENT
RTTI_$SDL2_$$_TSDL_JOYBUTTONEVENT:
	.byte	13,19
	.ascii	"TSDL_JoyButtonEvent"
	.long	16,7
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	8
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	12
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	13
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	14
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	15

.section .data.n_INIT_$SDL2_$$_TSDL_JOYDEVICEEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_JOYDEVICEEVENT
INIT_$SDL2_$$_TSDL_JOYDEVICEEVENT:
	.byte	13,19
	.ascii	"TSDL_JoyDeviceEvent"
	.long	12,0

.section .data.n_RTTI_$SDL2_$$_TSDL_JOYDEVICEEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_JOYDEVICEEVENT
RTTI_$SDL2_$$_TSDL_JOYDEVICEEVENT:
	.byte	13,19
	.ascii	"TSDL_JoyDeviceEvent"
	.long	12,3
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	8

.section .data.n_INIT_$SDL2_$$_TSDL_CONTROLLERAXISEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_CONTROLLERAXISEVENT
INIT_$SDL2_$$_TSDL_CONTROLLERAXISEVENT:
	.byte	13,24
	.ascii	"TSDL_ControllerAxisEvent"
	.long	20,0

.section .data.n_RTTI_$SDL2_$$_TSDL_CONTROLLERAXISEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_CONTROLLERAXISEVENT
RTTI_$SDL2_$$_TSDL_CONTROLLERAXISEVENT:
	.byte	13,24
	.ascii	"TSDL_ControllerAxisEvent"
	.long	20,9
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	8
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	12
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	13
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	14
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	15
	.quad	RTTI_$SYSTEM_$$_SMALLINT
	.quad	16
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	18

.section .data.n_INIT_$SDL2_$$_TSDL_CONTROLLERBUTTONEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_CONTROLLERBUTTONEVENT
INIT_$SDL2_$$_TSDL_CONTROLLERBUTTONEVENT:
	.byte	13,26
	.ascii	"TSDL_ControllerButtonEvent"
	.long	16,0

.section .data.n_RTTI_$SDL2_$$_TSDL_CONTROLLERBUTTONEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_CONTROLLERBUTTONEVENT
RTTI_$SDL2_$$_TSDL_CONTROLLERBUTTONEVENT:
	.byte	13,26
	.ascii	"TSDL_ControllerButtonEvent"
	.long	16,7
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	8
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	12
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	13
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	14
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	15

.section .data.n_INIT_$SDL2_$$_TSDL_CONTROLLERDEVICEEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_CONTROLLERDEVICEEVENT
INIT_$SDL2_$$_TSDL_CONTROLLERDEVICEEVENT:
	.byte	13,26
	.ascii	"TSDL_ControllerDeviceEvent"
	.long	12,0

.section .data.n_RTTI_$SDL2_$$_TSDL_CONTROLLERDEVICEEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_CONTROLLERDEVICEEVENT
RTTI_$SDL2_$$_TSDL_CONTROLLERDEVICEEVENT:
	.byte	13,26
	.ascii	"TSDL_ControllerDeviceEvent"
	.long	12,3
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	8

.section .data.n_INIT_$SDL2_$$_TSDL_TOUCHFINGEREVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_TOUCHFINGEREVENT
INIT_$SDL2_$$_TSDL_TOUCHFINGEREVENT:
	.byte	13,21
	.ascii	"TSDL_TouchFingerEvent"
	.long	48,0

.section .data.n_RTTI_$SDL2_$$_TSDL_TOUCHFINGEREVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_TOUCHFINGEREVENT
RTTI_$SDL2_$$_TSDL_TOUCHFINGEREVENT:
	.byte	13,21
	.ascii	"TSDL_TouchFingerEvent"
	.long	48,9
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_INT64
	.quad	8
	.quad	RTTI_$SYSTEM_$$_INT64
	.quad	16
	.quad	RTTI_$SYSTEM_$$_SINGLE
	.quad	24
	.quad	RTTI_$SYSTEM_$$_SINGLE
	.quad	28
	.quad	RTTI_$SYSTEM_$$_SINGLE
	.quad	32
	.quad	RTTI_$SYSTEM_$$_SINGLE
	.quad	36
	.quad	RTTI_$SYSTEM_$$_SINGLE
	.quad	40

.section .data.n_INIT_$SDL2_$$_TSDL_MULTIGESTUREEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_MULTIGESTUREEVENT
INIT_$SDL2_$$_TSDL_MULTIGESTUREEVENT:
	.byte	13,22
	.ascii	"TSDL_MultiGestureEvent"
	.long	40,0

.section .data.n_RTTI_$SDL2_$$_TSDL_MULTIGESTUREEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_MULTIGESTUREEVENT
RTTI_$SDL2_$$_TSDL_MULTIGESTUREEVENT:
	.byte	13,22
	.ascii	"TSDL_MultiGestureEvent"
	.long	40,9
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_INT64
	.quad	8
	.quad	RTTI_$SYSTEM_$$_SINGLE
	.quad	16
	.quad	RTTI_$SYSTEM_$$_SINGLE
	.quad	20
	.quad	RTTI_$SYSTEM_$$_SINGLE
	.quad	24
	.quad	RTTI_$SYSTEM_$$_SINGLE
	.quad	28
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	32
	.quad	RTTI_$SYSTEM_$$_WORD
	.quad	34

.section .data.n_INIT_$SDL2_$$_TSDL_DOLLARGESTUREEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_DOLLARGESTUREEVENT
INIT_$SDL2_$$_TSDL_DOLLARGESTUREEVENT:
	.byte	13,23
	.ascii	"TSDL_DollarGestureEvent"
	.long	40,0

.section .data.n_RTTI_$SDL2_$$_TSDL_DOLLARGESTUREEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_DOLLARGESTUREEVENT
RTTI_$SDL2_$$_TSDL_DOLLARGESTUREEVENT:
	.byte	13,23
	.ascii	"TSDL_DollarGestureEvent"
	.long	40,8
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_INT64
	.quad	8
	.quad	RTTI_$SYSTEM_$$_INT64
	.quad	16
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	24
	.quad	RTTI_$SYSTEM_$$_SINGLE
	.quad	28
	.quad	RTTI_$SYSTEM_$$_SINGLE
	.quad	32
	.quad	RTTI_$SYSTEM_$$_SINGLE
	.quad	36

.section .data.n_INIT_$SDL2_$$_TSDL_DROPEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_DROPEVENT
INIT_$SDL2_$$_TSDL_DROPEVENT:
	.byte	13,14
	.ascii	"TSDL_DropEvent"
	.long	16,0

.section .data.n_RTTI_$SDL2_$$_TSDL_DROPEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_DROPEVENT
RTTI_$SDL2_$$_TSDL_DROPEVENT:
	.byte	13,14
	.ascii	"TSDL_DropEvent"
	.long	16,3
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_PCHAR
	.quad	8

.section .data.n_INIT_$SDL2_$$_TSDL_QUITEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_QUITEVENT
INIT_$SDL2_$$_TSDL_QUITEVENT:
	.byte	13,14
	.ascii	"TSDL_QuitEvent"
	.long	8,0

.section .data.n_RTTI_$SDL2_$$_TSDL_QUITEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_QUITEVENT
RTTI_$SDL2_$$_TSDL_QUITEVENT:
	.byte	13,14
	.ascii	"TSDL_QuitEvent"
	.long	8,2
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4

.section .data.n_INIT_$SDL2_$$_TSDL_OSEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_OSEVENT
INIT_$SDL2_$$_TSDL_OSEVENT:
	.byte	13,12
	.ascii	"TSDL_OSEvent"
	.long	8,0

.section .data.n_RTTI_$SDL2_$$_TSDL_OSEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_OSEVENT
RTTI_$SDL2_$$_TSDL_OSEVENT:
	.byte	13,12
	.ascii	"TSDL_OSEvent"
	.long	8,2
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4

.section .data.n_INIT_$SDL2_$$_TSDL_USEREVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_USEREVENT
INIT_$SDL2_$$_TSDL_USEREVENT:
	.byte	13,14
	.ascii	"TSDL_UserEvent"
	.long	32,0

.section .data.n_RTTI_$SDL2_$$_TSDL_USEREVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_USEREVENT
RTTI_$SDL2_$$_TSDL_USEREVENT:
	.byte	13,14
	.ascii	"TSDL_UserEvent"
	.long	32,6
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	12
	.quad	RTTI_$SYSTEM_$$_POINTER
	.quad	16
	.quad	RTTI_$SYSTEM_$$_POINTER
	.quad	24

.section .data.n_INIT_$SDL2_$$_TSDL_SYSWMEVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_SYSWMEVENT
INIT_$SDL2_$$_TSDL_SYSWMEVENT:
	.byte	13,15
	.ascii	"TSDL_SysWMEvent"
	.long	16,0

.section .data.n_RTTI_$SDL2_$$_TSDL_SYSWMEVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_SYSWMEVENT
RTTI_$SDL2_$$_TSDL_SYSWMEVENT:
	.byte	13,15
	.ascii	"TSDL_SysWMEvent"
	.long	16,3
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_POINTER
	.quad	8

.section .data.n_RTTI_$SDL2_$$_DEF1220,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_DEF1220
RTTI_$SDL2_$$_DEF1220:
	.byte	12
	.ascii	"\000"
	.quad	56,56
	.quad	RTTI_$SYSTEM_$$_BYTE
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$SDL2_$$_TSDL_EVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_EVENT
RTTI_$SDL2_$$_TSDL_EVENT:
	.byte	13,10
	.ascii	"TSDL_Event"
	.long	56,25
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_COMMONEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_WINDOWEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_KEYBOARDEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_TEXTEDITINGEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_TEXTINPUTEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_MOUSEMOTIONEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_MOUSEBUTTONEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_MOUSEWHEELEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_JOYAXISEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_JOYBALLEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_JOYHATEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_JOYBUTTONEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_JOYDEVICEEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_CONTROLLERAXISEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_CONTROLLERBUTTONEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_CONTROLLERDEVICEEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_QUITEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_USEREVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_SYSWMEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_TOUCHFINGEREVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_MULTIGESTUREEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_DOLLARGESTUREEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_TSDL_DROPEVENT
	.quad	0
	.quad	RTTI_$SDL2_$$_DEF1220
	.quad	0

.section .data.n_RTTI_$SDL2_$$_PSDL_EVENT,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_EVENT
RTTI_$SDL2_$$_PSDL_EVENT:
	.byte	29,10
	.ascii	"PSDL_Event"
	.quad	RTTI_$SDL2_$$_TSDL_EVENT

.section .data.n_INIT_$SDL2_$$_TSDL_EVENT,"d"
	.balign 8
.globl	INIT_$SDL2_$$_TSDL_EVENT
INIT_$SDL2_$$_TSDL_EVENT:
	.byte	13,10
	.ascii	"TSDL_Event"
	.long	56,0

.section .data.n_RTTI_$SDL2_$$_TSDL_EVENTACTION,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_EVENTACTION
RTTI_$SDL2_$$_TSDL_EVENTACTION:
	.byte	3,16
	.ascii	"TSDL_eventaction"
	.byte	5
	.long	0,2
	.quad	0
	.byte	12
	.ascii	"SDL_ADDEVENT"
	.byte	13
	.ascii	"SDL_PEEKEVENT"
	.byte	12
	.ascii	"SDL_GETEVENT"
	.byte	4
	.ascii	"SDL2"
	.byte	0

.section .data.n_RTTI_$SDL2_$$_TSDL_EVENTACTION_s2o,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_EVENTACTION_s2o
RTTI_$SDL2_$$_TSDL_EVENTACTION_s2o:
	.long	3,0
	.quad	RTTI_$SDL2_$$_TSDL_EVENTACTION+35
	.long	2
	.quad	RTTI_$SDL2_$$_TSDL_EVENTACTION+62
	.long	1
	.quad	RTTI_$SDL2_$$_TSDL_EVENTACTION+48

.section .data.n_RTTI_$SDL2_$$_TSDL_EVENTACTION_o2s,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_EVENTACTION_o2s
RTTI_$SDL2_$$_TSDL_EVENTACTION_o2s:
	.long	0
	.quad	RTTI_$SDL2_$$_TSDL_EVENTACTION+35
	.quad	RTTI_$SDL2_$$_TSDL_EVENTACTION+48
	.quad	RTTI_$SDL2_$$_TSDL_EVENTACTION+62

.section .data.n_RTTI_$SDL2_$$_TSDL_EVENTFILTER,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_TSDL_EVENTFILTER
RTTI_$SDL2_$$_TSDL_EVENTFILTER:
	.byte	23,16
	.ascii	"TSDL_EventFilter"
	.byte	0,1
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.byte	2,0
	.quad	RTTI_$SYSTEM_$$_POINTER
	.byte	8
	.ascii	"userdata"
	.byte	0
	.quad	RTTI_$SDL2_$$_PSDL_EVENT
	.byte	5
	.ascii	"event"

.section .data.n_RTTI_$SDL2_$$_PSDL_EVENTFILTER,"d"
	.balign 8
.globl	RTTI_$SDL2_$$_PSDL_EVENTFILTER
RTTI_$SDL2_$$_PSDL_EVENTFILTER:
	.byte	29,16
	.ascii	"PSDL_EventFilter"
	.quad	RTTI_$SDL2_$$_TSDL_EVENTFILTER
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc153:
	.long	.Lc155-.Lc154
.Lc154:
	.long	-1
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-4
	.byte	16
	.byte	12
	.uleb128	7
	.uleb128	8
	.byte	5
	.uleb128	16
	.uleb128	2
	.balign 4,0
.Lc155:
	.long	.Lc157-.Lc156
.Lc156:
	.secrel32	.Lc153
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc157:
	.long	.Lc159-.Lc158
.Lc158:
	.secrel32	.Lc153
	.quad	.Lc4
	.quad	.Lc5-.Lc4
	.byte	4
	.long	.Lc6-.Lc4
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc159:
	.long	.Lc161-.Lc160
.Lc160:
	.secrel32	.Lc153
	.quad	.Lc7
	.quad	.Lc8-.Lc7
	.byte	4
	.long	.Lc9-.Lc7
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc161:
	.long	.Lc163-.Lc162
.Lc162:
	.secrel32	.Lc153
	.quad	.Lc10
	.quad	.Lc11-.Lc10
	.balign 4,0
.Lc163:
	.long	.Lc165-.Lc164
.Lc164:
	.secrel32	.Lc153
	.quad	.Lc12
	.quad	.Lc13-.Lc12
	.balign 4,0
.Lc165:
	.long	.Lc167-.Lc166
.Lc166:
	.secrel32	.Lc153
	.quad	.Lc14
	.quad	.Lc15-.Lc14
	.balign 4,0
.Lc167:
	.long	.Lc169-.Lc168
.Lc168:
	.secrel32	.Lc153
	.quad	.Lc16
	.quad	.Lc17-.Lc16
	.balign 4,0
.Lc169:
	.long	.Lc171-.Lc170
.Lc170:
	.secrel32	.Lc153
	.quad	.Lc18
	.quad	.Lc19-.Lc18
	.balign 4,0
.Lc171:
	.long	.Lc173-.Lc172
.Lc172:
	.secrel32	.Lc153
	.quad	.Lc20
	.quad	.Lc21-.Lc20
	.byte	4
	.long	.Lc22-.Lc20
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc173:
	.long	.Lc175-.Lc174
.Lc174:
	.secrel32	.Lc153
	.quad	.Lc23
	.quad	.Lc24-.Lc23
	.byte	4
	.long	.Lc25-.Lc23
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc175:
	.long	.Lc177-.Lc176
.Lc176:
	.secrel32	.Lc153
	.quad	.Lc26
	.quad	.Lc27-.Lc26
	.byte	4
	.long	.Lc28-.Lc26
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc177:
	.long	.Lc179-.Lc178
.Lc178:
	.secrel32	.Lc153
	.quad	.Lc29
	.quad	.Lc30-.Lc29
	.balign 4,0
.Lc179:
	.long	.Lc181-.Lc180
.Lc180:
	.secrel32	.Lc153
	.quad	.Lc31
	.quad	.Lc32-.Lc31
	.byte	4
	.long	.Lc33-.Lc31
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc181:
	.long	.Lc183-.Lc182
.Lc182:
	.secrel32	.Lc153
	.quad	.Lc34
	.quad	.Lc35-.Lc34
	.byte	4
	.long	.Lc36-.Lc34
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc183:
	.long	.Lc185-.Lc184
.Lc184:
	.secrel32	.Lc153
	.quad	.Lc37
	.quad	.Lc38-.Lc37
	.byte	4
	.long	.Lc39-.Lc37
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc185:
	.long	.Lc187-.Lc186
.Lc186:
	.secrel32	.Lc153
	.quad	.Lc40
	.quad	.Lc41-.Lc40
	.balign 4,0
.Lc187:
	.long	.Lc189-.Lc188
.Lc188:
	.secrel32	.Lc153
	.quad	.Lc42
	.quad	.Lc43-.Lc42
	.byte	4
	.long	.Lc44-.Lc42
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc189:
	.long	.Lc191-.Lc190
.Lc190:
	.secrel32	.Lc153
	.quad	.Lc45
	.quad	.Lc46-.Lc45
	.byte	4
	.long	.Lc47-.Lc45
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc191:
	.long	.Lc193-.Lc192
.Lc192:
	.secrel32	.Lc153
	.quad	.Lc48
	.quad	.Lc49-.Lc48
	.byte	4
	.long	.Lc50-.Lc48
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc193:
	.long	.Lc195-.Lc194
.Lc194:
	.secrel32	.Lc153
	.quad	.Lc51
	.quad	.Lc52-.Lc51
	.balign 4,0
.Lc195:
	.long	.Lc197-.Lc196
.Lc196:
	.secrel32	.Lc153
	.quad	.Lc53
	.quad	.Lc54-.Lc53
	.balign 4,0
.Lc197:
	.long	.Lc199-.Lc198
.Lc198:
	.secrel32	.Lc153
	.quad	.Lc55
	.quad	.Lc56-.Lc55
	.balign 4,0
.Lc199:
	.long	.Lc201-.Lc200
.Lc200:
	.secrel32	.Lc153
	.quad	.Lc57
	.quad	.Lc58-.Lc57
	.balign 4,0
.Lc201:
	.long	.Lc203-.Lc202
.Lc202:
	.secrel32	.Lc153
	.quad	.Lc59
	.quad	.Lc60-.Lc59
	.balign 4,0
.Lc203:
	.long	.Lc205-.Lc204
.Lc204:
	.secrel32	.Lc153
	.quad	.Lc61
	.quad	.Lc62-.Lc61
	.byte	4
	.long	.Lc63-.Lc61
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc205:
	.long	.Lc207-.Lc206
.Lc206:
	.secrel32	.Lc153
	.quad	.Lc64
	.quad	.Lc65-.Lc64
	.byte	4
	.long	.Lc66-.Lc64
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc207:
	.long	.Lc209-.Lc208
.Lc208:
	.secrel32	.Lc153
	.quad	.Lc67
	.quad	.Lc68-.Lc67
	.byte	4
	.long	.Lc69-.Lc67
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc209:
	.long	.Lc211-.Lc210
.Lc210:
	.secrel32	.Lc153
	.quad	.Lc70
	.quad	.Lc71-.Lc70
	.byte	4
	.long	.Lc72-.Lc70
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc211:
	.long	.Lc213-.Lc212
.Lc212:
	.secrel32	.Lc153
	.quad	.Lc73
	.quad	.Lc74-.Lc73
	.byte	4
	.long	.Lc75-.Lc73
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc213:
	.long	.Lc215-.Lc214
.Lc214:
	.secrel32	.Lc153
	.quad	.Lc76
	.quad	.Lc77-.Lc76
	.byte	4
	.long	.Lc78-.Lc76
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc215:
	.long	.Lc217-.Lc216
.Lc216:
	.secrel32	.Lc153
	.quad	.Lc79
	.quad	.Lc80-.Lc79
	.byte	4
	.long	.Lc81-.Lc79
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc217:
	.long	.Lc219-.Lc218
.Lc218:
	.secrel32	.Lc153
	.quad	.Lc82
	.quad	.Lc83-.Lc82
	.byte	4
	.long	.Lc84-.Lc82
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc219:
	.long	.Lc221-.Lc220
.Lc220:
	.secrel32	.Lc153
	.quad	.Lc85
	.quad	.Lc86-.Lc85
	.byte	4
	.long	.Lc87-.Lc85
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc221:
	.long	.Lc223-.Lc222
.Lc222:
	.secrel32	.Lc153
	.quad	.Lc88
	.quad	.Lc89-.Lc88
	.balign 4,0
.Lc223:
	.long	.Lc225-.Lc224
.Lc224:
	.secrel32	.Lc153
	.quad	.Lc90
	.quad	.Lc91-.Lc90
	.balign 4,0
.Lc225:
	.long	.Lc227-.Lc226
.Lc226:
	.secrel32	.Lc153
	.quad	.Lc92
	.quad	.Lc93-.Lc92
	.balign 4,0
.Lc227:
	.long	.Lc229-.Lc228
.Lc228:
	.secrel32	.Lc153
	.quad	.Lc94
	.quad	.Lc95-.Lc94
	.balign 4,0
.Lc229:
	.long	.Lc231-.Lc230
.Lc230:
	.secrel32	.Lc153
	.quad	.Lc96
	.quad	.Lc97-.Lc96
	.balign 4,0
.Lc231:
	.long	.Lc233-.Lc232
.Lc232:
	.secrel32	.Lc153
	.quad	.Lc98
	.quad	.Lc99-.Lc98
	.balign 4,0
.Lc233:
	.long	.Lc235-.Lc234
.Lc234:
	.secrel32	.Lc153
	.quad	.Lc100
	.quad	.Lc101-.Lc100
	.balign 4,0
.Lc235:
	.long	.Lc237-.Lc236
.Lc236:
	.secrel32	.Lc153
	.quad	.Lc102
	.quad	.Lc103-.Lc102
	.byte	4
	.long	.Lc104-.Lc102
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc237:
	.long	.Lc239-.Lc238
.Lc238:
	.secrel32	.Lc153
	.quad	.Lc105
	.quad	.Lc106-.Lc105
	.balign 4,0
.Lc239:
	.long	.Lc241-.Lc240
.Lc240:
	.secrel32	.Lc153
	.quad	.Lc107
	.quad	.Lc108-.Lc107
	.balign 4,0
.Lc241:
	.long	.Lc243-.Lc242
.Lc242:
	.secrel32	.Lc153
	.quad	.Lc109
	.quad	.Lc110-.Lc109
	.balign 4,0
.Lc243:
	.long	.Lc245-.Lc244
.Lc244:
	.secrel32	.Lc153
	.quad	.Lc111
	.quad	.Lc112-.Lc111
	.balign 4,0
.Lc245:
	.long	.Lc247-.Lc246
.Lc246:
	.secrel32	.Lc153
	.quad	.Lc113
	.quad	.Lc114-.Lc113
	.balign 4,0
.Lc247:
	.long	.Lc249-.Lc248
.Lc248:
	.secrel32	.Lc153
	.quad	.Lc115
	.quad	.Lc116-.Lc115
	.byte	4
	.long	.Lc117-.Lc115
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc249:
	.long	.Lc251-.Lc250
.Lc250:
	.secrel32	.Lc153
	.quad	.Lc118
	.quad	.Lc119-.Lc118
	.byte	4
	.long	.Lc120-.Lc118
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc251:
	.long	.Lc253-.Lc252
.Lc252:
	.secrel32	.Lc153
	.quad	.Lc121
	.quad	.Lc122-.Lc121
	.byte	4
	.long	.Lc123-.Lc121
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc253:
	.long	.Lc255-.Lc254
.Lc254:
	.secrel32	.Lc153
	.quad	.Lc124
	.quad	.Lc125-.Lc124
	.balign 4,0
.Lc255:
	.long	.Lc257-.Lc256
.Lc256:
	.secrel32	.Lc153
	.quad	.Lc126
	.quad	.Lc127-.Lc126
	.balign 4,0
.Lc257:
	.long	.Lc259-.Lc258
.Lc258:
	.secrel32	.Lc153
	.quad	.Lc128
	.quad	.Lc129-.Lc128
	.balign 4,0
.Lc259:
	.long	.Lc261-.Lc260
.Lc260:
	.secrel32	.Lc153
	.quad	.Lc130
	.quad	.Lc131-.Lc130
	.balign 4,0
.Lc261:
	.long	.Lc263-.Lc262
.Lc262:
	.secrel32	.Lc153
	.quad	.Lc132
	.quad	.Lc133-.Lc132
	.byte	4
	.long	.Lc134-.Lc132
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc263:
	.long	.Lc265-.Lc264
.Lc264:
	.secrel32	.Lc153
	.quad	.Lc135
	.quad	.Lc136-.Lc135
	.byte	4
	.long	.Lc137-.Lc135
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc265:
	.long	.Lc267-.Lc266
.Lc266:
	.secrel32	.Lc153
	.quad	.Lc138
	.quad	.Lc139-.Lc138
	.byte	4
	.long	.Lc140-.Lc138
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc267:
	.long	.Lc269-.Lc268
.Lc268:
	.secrel32	.Lc153
	.quad	.Lc141
	.quad	.Lc142-.Lc141
	.byte	4
	.long	.Lc143-.Lc141
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc269:
	.long	.Lc271-.Lc270
.Lc270:
	.secrel32	.Lc153
	.quad	.Lc144
	.quad	.Lc145-.Lc144
	.byte	4
	.long	.Lc146-.Lc144
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc271:
	.long	.Lc273-.Lc272
.Lc272:
	.secrel32	.Lc153
	.quad	.Lc147
	.quad	.Lc148-.Lc147
	.byte	4
	.long	.Lc149-.Lc147
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc273:
	.long	.Lc275-.Lc274
.Lc274:
	.secrel32	.Lc153
	.quad	.Lc150
	.quad	.Lc151-.Lc150
	.byte	4
	.long	.Lc152-.Lc150
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc275:
# End asmlist al_dwarf_frame
# Begin asmlist al_dwarf_info

.section .debug_info
.Ldebug_info0:
	.long	.Ledebug_info0-.Lf1
.Lf1:
	.short	2
	.secrel32	.Ldebug_abbrev0
	.byte	8
	.uleb128	1
# [2687] function SDL_iconv_utf8_locale(S: PAnsiChar): PAnsiChar; inline;
	.ascii	"sdl2.pas\000"
	.ascii	"Free Pascal 3.0.4 2018/02/25\000"
	.ascii	"D:/programowanie/20180824 retro-fm/\000"
	.byte	9
	.byte	3
	.secrel32	.Ldebug_line0
	.quad	DEBUGSTART_$SDL2
	.quad	DEBUGEND_$SDL2
# Syms - Begin unit SDL2 has index 254
# Symbol SDL2
# Symbol SYSTEM
# Symbol OBJPAS
# Symbol SDL_FALSE
	.uleb128	2
	.ascii	"SDL_FALSE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_TRUE
	.uleb128	2
	.ascii	"SDL_TRUE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_BOOL
# Symbol PUINT64
# Symbol PSINT8
# Symbol PSINT16
# Symbol PSINT32
# Symbol PSINT64
# Symbol SINT8
# Symbol SINT16
# Symbol SINT32
# Symbol SINT64
# Symbol SIZE_T
# Symbol PSIZE_T
# Symbol TSDL_ICONV_T
# Symbol PWCHAR_T
# Symbol FLOAT
# Symbol SDL_MALLOC
# Symbol SDL_CALLOC
# Symbol SDL_REALLOC
# Symbol SDL_FREE
# Symbol SDL_GETENV
# Symbol SDL_SETENV
# Symbol COMPAREFN
# Symbol SDL_QSORT
# Symbol SDL_MEMSET
# Symbol SDL_MEMCPY
# Symbol SDL_MEMMOVE
# Symbol SDL_MEMCMP
# Symbol SDL_WCSLEN
# Symbol SDL_WCSLCPY
# Symbol SDL_WCSLCAT
# Symbol SDL_STRLEN
# Symbol SDL_STRLCPY
# Symbol SDL_UTF8STRLCPY
# Symbol SDL_STRLCAT
# Symbol SDL_STRDUP
# Symbol SDL_STRREV
# Symbol SDL_STRUPR
# Symbol SDL_STRLWR
# Symbol SDL_STRCHR
# Symbol SDL_STRRCHR
# Symbol SDL_STRSTR
# Symbol SDL_ITOA
# Symbol SDL_UITOA
# Symbol SDL_LTOA
# Symbol SDL_ULTOA
# Symbol SDL_LLTOA
# Symbol SDL_ULLTOA
# Symbol SDL_ATOI
# Symbol SDL_ATOF
# Symbol SDL_STRTOL
# Symbol SDL_STRTOUL
# Symbol SDL_STRTOLL
# Symbol SDL_STRTOULL
# Symbol SDL_STRTOD
# Symbol SDL_STRCMP
# Symbol SDL_STRNCMP
# Symbol SDL_STRCASECMP
# Symbol SDL_STRNCASECMP
# Symbol SDL_SSCANF
# Symbol SDL_SNPRINTF
# Symbol SDL_ABS
# Symbol SDL_ACOS
# Symbol SDL_ASIN
# Symbol SDL_ATAN
# Symbol SDL_ATAN2
# Symbol SDL_CEIL
# Symbol SDL_COPYSIGN
# Symbol SDL_COS
# Symbol SDL_COSF
# Symbol SDL_FABS
# Symbol SDL_FLOOR
# Symbol SDL_LOG
# Symbol SDL_POW
# Symbol SDL_SCALBN
# Symbol SDL_SIN
# Symbol SDL_SINF
# Symbol SDL_SQRT
# Symbol SDL_ICONV_OPEN
# Symbol SDL_ICONV_CLOSE
# Symbol SDL_ICONV
# Symbol SDL_ICONV_STRING
# Symbol SDL_ICONV_UTF8_LOCALE
# Symbol SDL_ICONV_UTF8_UCS2
# Symbol SDL_ICONV_UTF8_UCS4
# Symbol SDL_MOSTSIGNIFICANTBITINDEX32
# Symbol SDL_INIT_TIMER
	.uleb128	2
	.ascii	"SDL_INIT_TIMER\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_INIT_AUDIO
	.uleb128	2
	.ascii	"SDL_INIT_AUDIO\000"
	.long	.La1-.Ldebug_info0
	.uleb128	16
# Symbol SDL_INIT_VIDEO
	.uleb128	2
	.ascii	"SDL_INIT_VIDEO\000"
	.long	.La1-.Ldebug_info0
	.uleb128	32
# Symbol SDL_INIT_JOYSTICK
	.uleb128	2
	.ascii	"SDL_INIT_JOYSTICK\000"
	.long	.La15-.Ldebug_info0
	.uleb128	512
# Symbol SDL_INIT_HAPTIC
	.uleb128	2
	.ascii	"SDL_INIT_HAPTIC\000"
	.long	.La15-.Ldebug_info0
	.uleb128	4096
# Symbol SDL_INIT_GAMECONTROLLER
	.uleb128	2
	.ascii	"SDL_INIT_GAMECONTROLLER\000"
	.long	.La15-.Ldebug_info0
	.uleb128	8192
# Symbol SDL_INIT_NOPARACHUTE
	.uleb128	2
	.ascii	"SDL_INIT_NOPARACHUTE\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1048576
# Symbol SDL_INIT_EVERYTHING
	.uleb128	2
	.ascii	"SDL_INIT_EVERYTHING\000"
	.long	.La15-.Ldebug_info0
	.uleb128	12849
# Symbol SDL_INIT
# Symbol SDL_INITSUBSYSTEM
# Symbol SDL_QUITSUBSYSTEM
# Symbol SDL_WASINIT
# Symbol SDL_QUIT
# Symbol SDL_MAJOR_VERSION
	.uleb128	2
	.ascii	"SDL_MAJOR_VERSION\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_MINOR_VERSION
	.uleb128	2
	.ascii	"SDL_MINOR_VERSION\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_PATCHLEVEL
	.uleb128	2
	.ascii	"SDL_PATCHLEVEL\000"
	.long	.La1-.Ldebug_info0
	.uleb128	3
# Symbol PSDL_VERSION
# Symbol TSDL_VERSION
# Symbol SDL_VERSION
# Symbol SDL_VERSIONNUM
# Symbol SDL_COMPILEDVERSION
# Symbol SDL_VERSION_ATLEAST
# Symbol SDL_GETVERSION
# Symbol SDL_GETREVISION
# Symbol SDL_GETREVISIONNUMBER
# Symbol SDL_GETBASEPATH
# Symbol SDL_GETPREFPATH
# Symbol SDL_SETERROR
# Symbol SDL_GETERROR
# Symbol SDL_CLEARERROR
# Symbol SDL_OUTOFMEMORY
# Symbol SDL_UNSUPPORTED
# Symbol SDL_INVALIDPARAMERROR
# Symbol TSDL_ERRORCODE
# Symbol SDL_ENOMEM
# Symbol SDL_EFREAD
# Symbol SDL_EFWRITE
# Symbol SDL_EFSEEK
# Symbol SDL_UNSUPPORTED_
# Symbol SDL_LASTERROR
# Symbol SDL_ERROR
# Symbol SDL_LOG_CATEGORY_APPLICATION
	.uleb128	2
	.ascii	"SDL_LOG_CATEGORY_APPLICATION\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_LOG_CATEGORY_ERROR
	.uleb128	2
	.ascii	"SDL_LOG_CATEGORY_ERROR\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_LOG_CATEGORY_ASSERT
	.uleb128	2
	.ascii	"SDL_LOG_CATEGORY_ASSERT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_LOG_CATEGORY_SYSTEM
	.uleb128	2
	.ascii	"SDL_LOG_CATEGORY_SYSTEM\000"
	.long	.La1-.Ldebug_info0
	.uleb128	3
# Symbol SDL_LOG_CATEGORY_AUDIO
	.uleb128	2
	.ascii	"SDL_LOG_CATEGORY_AUDIO\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_LOG_CATEGORY_VIDEO
	.uleb128	2
	.ascii	"SDL_LOG_CATEGORY_VIDEO\000"
	.long	.La1-.Ldebug_info0
	.uleb128	5
# Symbol SDL_LOG_CATEGORY_RENDER
	.uleb128	2
	.ascii	"SDL_LOG_CATEGORY_RENDER\000"
	.long	.La1-.Ldebug_info0
	.uleb128	6
# Symbol SDL_LOG_CATEGORY_INPUT
	.uleb128	2
	.ascii	"SDL_LOG_CATEGORY_INPUT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	7
# Symbol SDL_LOG_CATEGORY_TEST
	.uleb128	2
	.ascii	"SDL_LOG_CATEGORY_TEST\000"
	.long	.La1-.Ldebug_info0
	.uleb128	8
# Symbol SDL_LOG_CATEGORY_CUSTOM
	.uleb128	2
	.ascii	"SDL_LOG_CATEGORY_CUSTOM\000"
	.long	.La1-.Ldebug_info0
	.uleb128	19
# Symbol TSDL_LOGPRIORITY
# Symbol SDL_LOG_PRIORITY_VERBOSE
# Symbol SDL_LOG_PRIORITY_DEBUG
# Symbol SDL_LOG_PRIORITY_INFO
# Symbol SDL_LOG_PRIORITY_WARN
# Symbol SDL_LOG_PRIORITY_ERROR
# Symbol SDL_LOG_PRIORITY_CRITICAL
# Symbol SDL_NUM_LOG_PRIORITIES
# Symbol PSDL_LOGOUTPUTFUNCTION
# Symbol TSDL_LOGOUTPUTFUNCTION
# Symbol SDL_LOGSETALLPRIORITY
# Symbol SDL_LOGSETPRIORITY
# Symbol SDL_GETPRIORITY
# Symbol SDL_LOGRESETPRIORITIES
# Symbol SDL_LOGVERBOSE
# Symbol SDL_LOGDEBUG
# Symbol SDL_LOGINFO
# Symbol SDL_LOGWARN
# Symbol SDL_LOGERROR
# Symbol SDL_LOGCRITICAL
# Symbol SDL_LOGMESSAGE
# Symbol SDL_LOGGETOUTPUTFUNCTION
# Symbol SDL_LOGSETOUTPUTFUNCTION
# Symbol SDL_HINT_FRAMEBUFFER_ACCELERATION
	.uleb128	3
	.ascii	"SDL_HINT_FRAMEBUFFER_ACCELERATION\000"
	.long	.La45-.Ldebug_info0
	.byte	29
	.byte	28
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	70
	.byte	82
	.byte	65
	.byte	77
	.byte	69
	.byte	66
	.byte	85
	.byte	70
	.byte	70
	.byte	69
	.byte	82
	.byte	95
	.byte	65
	.byte	67
	.byte	67
	.byte	69
	.byte	76
	.byte	69
	.byte	82
	.byte	65
	.byte	84
	.byte	73
	.byte	79
	.byte	78
# Symbol SDL_HINT_RENDER_DRIVER
	.uleb128	3
	.ascii	"SDL_HINT_RENDER_DRIVER\000"
	.long	.La45-.Ldebug_info0
	.byte	18
	.byte	17
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	82
	.byte	69
	.byte	78
	.byte	68
	.byte	69
	.byte	82
	.byte	95
	.byte	68
	.byte	82
	.byte	73
	.byte	86
	.byte	69
	.byte	82
# Symbol SDL_HINT_RENDER_OPENGL_SHADERS
	.uleb128	3
	.ascii	"SDL_HINT_RENDER_OPENGL_SHADERS\000"
	.long	.La45-.Ldebug_info0
	.byte	26
	.byte	25
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	82
	.byte	69
	.byte	78
	.byte	68
	.byte	69
	.byte	82
	.byte	95
	.byte	79
	.byte	80
	.byte	69
	.byte	78
	.byte	71
	.byte	76
	.byte	95
	.byte	83
	.byte	72
	.byte	65
	.byte	68
	.byte	69
	.byte	82
	.byte	83
# Symbol SDL_HINT_RENDER_DIRECT3D_THREADSAFE
	.uleb128	3
	.ascii	"SDL_HINT_RENDER_DIRECT3D_THREADSAFE\000"
	.long	.La45-.Ldebug_info0
	.byte	31
	.byte	30
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	82
	.byte	69
	.byte	78
	.byte	68
	.byte	69
	.byte	82
	.byte	95
	.byte	68
	.byte	73
	.byte	82
	.byte	69
	.byte	67
	.byte	84
	.byte	51
	.byte	68
	.byte	95
	.byte	84
	.byte	72
	.byte	82
	.byte	69
	.byte	65
	.byte	68
	.byte	83
	.byte	65
	.byte	70
	.byte	69
# Symbol SDL_HINT_RENDER_SCALE_QUALITY
	.uleb128	3
	.ascii	"SDL_HINT_RENDER_SCALE_QUALITY\000"
	.long	.La45-.Ldebug_info0
	.byte	25
	.byte	24
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	82
	.byte	69
	.byte	78
	.byte	68
	.byte	69
	.byte	82
	.byte	95
	.byte	83
	.byte	67
	.byte	65
	.byte	76
	.byte	69
	.byte	95
	.byte	81
	.byte	85
	.byte	65
	.byte	76
	.byte	73
	.byte	84
	.byte	89
# Symbol SDL_HINT_RENDER_VSYNC
	.uleb128	3
	.ascii	"SDL_HINT_RENDER_VSYNC\000"
	.long	.La45-.Ldebug_info0
	.byte	17
	.byte	16
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	82
	.byte	69
	.byte	78
	.byte	68
	.byte	69
	.byte	82
	.byte	95
	.byte	86
	.byte	83
	.byte	89
	.byte	78
	.byte	67
# Symbol SDL_HINT_VIDEO_ALLOW_SCREENSAVER
	.uleb128	3
	.ascii	"SDL_HINT_VIDEO_ALLOW_SCREENSAVER\000"
	.long	.La45-.Ldebug_info0
	.byte	28
	.byte	27
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	86
	.byte	73
	.byte	68
	.byte	69
	.byte	79
	.byte	95
	.byte	65
	.byte	76
	.byte	76
	.byte	79
	.byte	87
	.byte	95
	.byte	83
	.byte	67
	.byte	82
	.byte	69
	.byte	69
	.byte	78
	.byte	83
	.byte	65
	.byte	86
	.byte	69
	.byte	82
# Symbol SDL_HINT_VIDEO_X11_XVIDMODE
	.uleb128	3
	.ascii	"SDL_HINT_VIDEO_X11_XVIDMODE\000"
	.long	.La45-.Ldebug_info0
	.byte	23
	.byte	22
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	86
	.byte	73
	.byte	68
	.byte	69
	.byte	79
	.byte	95
	.byte	88
	.byte	49
	.byte	49
	.byte	95
	.byte	88
	.byte	86
	.byte	73
	.byte	68
	.byte	77
	.byte	79
	.byte	68
	.byte	69
# Symbol SDL_HINT_VIDEO_X11_XINERAMA
	.uleb128	3
	.ascii	"SDL_HINT_VIDEO_X11_XINERAMA\000"
	.long	.La45-.Ldebug_info0
	.byte	23
	.byte	22
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	86
	.byte	73
	.byte	68
	.byte	69
	.byte	79
	.byte	95
	.byte	88
	.byte	49
	.byte	49
	.byte	95
	.byte	88
	.byte	73
	.byte	78
	.byte	69
	.byte	82
	.byte	65
	.byte	77
	.byte	65
# Symbol SDL_HINT_VIDEO_X11_XRANDR
	.uleb128	3
	.ascii	"SDL_HINT_VIDEO_X11_XRANDR\000"
	.long	.La45-.Ldebug_info0
	.byte	21
	.byte	20
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	86
	.byte	73
	.byte	68
	.byte	69
	.byte	79
	.byte	95
	.byte	88
	.byte	49
	.byte	49
	.byte	95
	.byte	88
	.byte	82
	.byte	65
	.byte	78
	.byte	68
	.byte	82
# Symbol SDL_HINT_GRAB_KEYBOARD
	.uleb128	3
	.ascii	"SDL_HINT_GRAB_KEYBOARD\000"
	.long	.La45-.Ldebug_info0
	.byte	18
	.byte	17
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	71
	.byte	82
	.byte	65
	.byte	66
	.byte	95
	.byte	75
	.byte	69
	.byte	89
	.byte	66
	.byte	79
	.byte	65
	.byte	82
	.byte	68
# Symbol SDL_HINT_MOUSE_RELATIVE_MODE_WARP
	.uleb128	3
	.ascii	"SDL_HINT_MOUSE_RELATIVE_MODE_WARP\000"
	.long	.La45-.Ldebug_info0
	.byte	29
	.byte	28
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	77
	.byte	79
	.byte	85
	.byte	83
	.byte	69
	.byte	95
	.byte	82
	.byte	69
	.byte	76
	.byte	65
	.byte	84
	.byte	73
	.byte	86
	.byte	69
	.byte	95
	.byte	77
	.byte	79
	.byte	68
	.byte	69
	.byte	95
	.byte	87
	.byte	65
	.byte	82
	.byte	80
# Symbol SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS
	.uleb128	3
	.ascii	"SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS\000"
	.long	.La45-.Ldebug_info0
	.byte	33
	.byte	32
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	86
	.byte	73
	.byte	68
	.byte	69
	.byte	79
	.byte	95
	.byte	77
	.byte	73
	.byte	78
	.byte	73
	.byte	77
	.byte	73
	.byte	90
	.byte	69
	.byte	95
	.byte	79
	.byte	78
	.byte	95
	.byte	70
	.byte	79
	.byte	67
	.byte	85
	.byte	83
	.byte	95
	.byte	76
	.byte	79
	.byte	83
	.byte	83
# Symbol SDL_HINT_IDLE_TIMER_DISABLED
	.uleb128	3
	.ascii	"SDL_HINT_IDLE_TIMER_DISABLED\000"
	.long	.La45-.Ldebug_info0
	.byte	28
	.byte	27
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	73
	.byte	79
	.byte	83
	.byte	95
	.byte	73
	.byte	68
	.byte	76
	.byte	69
	.byte	95
	.byte	84
	.byte	73
	.byte	77
	.byte	69
	.byte	82
	.byte	95
	.byte	68
	.byte	73
	.byte	83
	.byte	65
	.byte	66
	.byte	76
	.byte	69
	.byte	68
# Symbol SDL_HINT_ORIENTATIONS
	.uleb128	3
	.ascii	"SDL_HINT_ORIENTATIONS\000"
	.long	.La45-.Ldebug_info0
	.byte	21
	.byte	20
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	73
	.byte	79
	.byte	83
	.byte	95
	.byte	79
	.byte	82
	.byte	73
	.byte	69
	.byte	78
	.byte	84
	.byte	65
	.byte	84
	.byte	73
	.byte	79
	.byte	78
	.byte	83
# Symbol SDL_HINT_ACCELEROMETER_AS_JOYSTICK
	.uleb128	3
	.ascii	"SDL_HINT_ACCELEROMETER_AS_JOYSTICK\000"
	.long	.La45-.Ldebug_info0
	.byte	30
	.byte	29
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	65
	.byte	67
	.byte	67
	.byte	69
	.byte	76
	.byte	69
	.byte	82
	.byte	79
	.byte	77
	.byte	69
	.byte	84
	.byte	69
	.byte	82
	.byte	95
	.byte	65
	.byte	83
	.byte	95
	.byte	74
	.byte	79
	.byte	89
	.byte	83
	.byte	84
	.byte	73
	.byte	67
	.byte	75
# Symbol SDL_HINT_XINPUT_ENABLED
	.uleb128	3
	.ascii	"SDL_HINT_XINPUT_ENABLED\000"
	.long	.La45-.Ldebug_info0
	.byte	19
	.byte	18
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	88
	.byte	73
	.byte	78
	.byte	80
	.byte	85
	.byte	84
	.byte	95
	.byte	69
	.byte	78
	.byte	65
	.byte	66
	.byte	76
	.byte	69
	.byte	68
# Symbol SDL_HINT_GAMECONTROLLERCONFIG
	.uleb128	3
	.ascii	"SDL_HINT_GAMECONTROLLERCONFIG\000"
	.long	.La45-.Ldebug_info0
	.byte	25
	.byte	24
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	71
	.byte	65
	.byte	77
	.byte	69
	.byte	67
	.byte	79
	.byte	78
	.byte	84
	.byte	82
	.byte	79
	.byte	76
	.byte	76
	.byte	69
	.byte	82
	.byte	67
	.byte	79
	.byte	78
	.byte	70
	.byte	73
	.byte	71
# Symbol SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS
	.uleb128	3
	.ascii	"SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS\000"
	.long	.La45-.Ldebug_info0
	.byte	37
	.byte	36
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	74
	.byte	79
	.byte	89
	.byte	83
	.byte	84
	.byte	73
	.byte	67
	.byte	75
	.byte	95
	.byte	65
	.byte	76
	.byte	76
	.byte	79
	.byte	87
	.byte	95
	.byte	66
	.byte	65
	.byte	67
	.byte	75
	.byte	71
	.byte	82
	.byte	79
	.byte	85
	.byte	78
	.byte	68
	.byte	95
	.byte	69
	.byte	86
	.byte	69
	.byte	78
	.byte	84
	.byte	83
# Symbol SDL_HINT_ALLOW_TOPMOST
	.uleb128	3
	.ascii	"SDL_HINT_ALLOW_TOPMOST\000"
	.long	.La45-.Ldebug_info0
	.byte	18
	.byte	17
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	65
	.byte	76
	.byte	76
	.byte	79
	.byte	87
	.byte	95
	.byte	84
	.byte	79
	.byte	80
	.byte	77
	.byte	79
	.byte	83
	.byte	84
# Symbol SDL_HINT_TIMER_RESOLUTION
	.uleb128	3
	.ascii	"SDL_HINT_TIMER_RESOLUTION\000"
	.long	.La45-.Ldebug_info0
	.byte	21
	.byte	20
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	84
	.byte	73
	.byte	77
	.byte	69
	.byte	82
	.byte	95
	.byte	82
	.byte	69
	.byte	83
	.byte	79
	.byte	76
	.byte	85
	.byte	84
	.byte	73
	.byte	79
	.byte	78
# Symbol SDL_HINT_VIDEO_HIGHDPI_DISABLED
	.uleb128	3
	.ascii	"SDL_HINT_VIDEO_HIGHDPI_DISABLED\000"
	.long	.La45-.Ldebug_info0
	.byte	27
	.byte	26
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	86
	.byte	73
	.byte	68
	.byte	69
	.byte	79
	.byte	95
	.byte	72
	.byte	73
	.byte	71
	.byte	72
	.byte	68
	.byte	80
	.byte	73
	.byte	95
	.byte	68
	.byte	73
	.byte	83
	.byte	65
	.byte	66
	.byte	76
	.byte	69
	.byte	68
# Symbol SDL_HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK
	.uleb128	3
	.ascii	"SDL_HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK\000"
	.long	.La45-.Ldebug_info0
	.byte	39
	.byte	38
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	77
	.byte	65
	.byte	67
	.byte	95
	.byte	67
	.byte	84
	.byte	82
	.byte	76
	.byte	95
	.byte	67
	.byte	76
	.byte	73
	.byte	67
	.byte	75
	.byte	95
	.byte	69
	.byte	77
	.byte	85
	.byte	76
	.byte	65
	.byte	84
	.byte	69
	.byte	95
	.byte	82
	.byte	73
	.byte	71
	.byte	72
	.byte	84
	.byte	95
	.byte	67
	.byte	76
	.byte	73
	.byte	67
	.byte	75
# Symbol SDL_HINT_VIDEO_WIN_D3DCOMPILER
	.uleb128	3
	.ascii	"SDL_HINT_VIDEO_WIN_D3DCOMPILER\000"
	.long	.La45-.Ldebug_info0
	.byte	26
	.byte	25
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	86
	.byte	73
	.byte	68
	.byte	69
	.byte	79
	.byte	95
	.byte	87
	.byte	73
	.byte	78
	.byte	95
	.byte	68
	.byte	51
	.byte	68
	.byte	67
	.byte	79
	.byte	77
	.byte	80
	.byte	73
	.byte	76
	.byte	69
	.byte	82
# Symbol SDL_HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT
	.uleb128	3
	.ascii	"SDL_HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT\000"
	.long	.La45-.Ldebug_info0
	.byte	36
	.byte	35
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	86
	.byte	73
	.byte	68
	.byte	69
	.byte	79
	.byte	95
	.byte	87
	.byte	73
	.byte	78
	.byte	68
	.byte	79
	.byte	87
	.byte	95
	.byte	83
	.byte	72
	.byte	65
	.byte	82
	.byte	69
	.byte	95
	.byte	80
	.byte	73
	.byte	88
	.byte	69
	.byte	76
	.byte	95
	.byte	70
	.byte	79
	.byte	82
	.byte	77
	.byte	65
	.byte	84
# Symbol SDL_HINT_VIDEO_MAC_FULLSCREEN_SPACES
	.uleb128	3
	.ascii	"SDL_HINT_VIDEO_MAC_FULLSCREEN_SPACES\000"
	.long	.La45-.Ldebug_info0
	.byte	32
	.byte	31
	.byte	83
	.byte	68
	.byte	76
	.byte	95
	.byte	86
	.byte	73
	.byte	68
	.byte	69
	.byte	79
	.byte	95
	.byte	77
	.byte	65
	.byte	67
	.byte	95
	.byte	70
	.byte	85
	.byte	76
	.byte	76
	.byte	83
	.byte	67
	.byte	82
	.byte	69
	.byte	69
	.byte	78
	.byte	95
	.byte	83
	.byte	80
	.byte	65
	.byte	67
	.byte	69
	.byte	83
# Symbol TSDL_HINTPRIORITY
# Symbol SDL_HINT_DEFAULT
# Symbol SDL_HINT_NORMAL
# Symbol SDL_HINT_OVERRIDE
# Symbol TSDL_HINTCALLBACK
# Symbol SDL_SETHINTWITHPRIORITY
# Symbol SDL_SETHINT
# Symbol SDL_GETHINT
# Symbol SDL_ADDHINTCALLBACK
# Symbol SDL_DELHINTCALLBACK
# Symbol SDL_CLEARHINTS
# Symbol SDL_GETCPUCOUNT
# Symbol SDL_GETCPUCACHELINESIZE
# Symbol SDL_HASRDTSC
# Symbol SDL_HASALTIVEC
# Symbol SDL_HASMMX
# Symbol SDL_HAS3DNOW
# Symbol SDL_HASSSE
# Symbol SDL_HASSSE2
# Symbol SDL_HASSSE3
# Symbol SDL_HASSSE41
# Symbol SDL_HASSSE42
# Symbol SDL_HASAVX
# Symbol SDL_GETSYSTEMRAM
# Symbol SDL_SETCLIPBOARDTEXT
# Symbol SDL_GETCLIPBOARDTEXT
# Symbol SDL_HASCLIPBOARDTEXT
# Symbol SDL_LOADOBJECT
# Symbol SDL_LOADFUNCTION
# Symbol SDL_UNLOADOBJECT
# Symbol SDL_GETPLATFORM
# Symbol TSDL_POWERSTATE
# Symbol SDL_POWERSTATE_UNKNOWN
# Symbol SDL_POWERSTATE_ON_BATTERY
# Symbol SDL_POWERSTATE_NO_BATTERY
# Symbol SDL_POWERSTATE_CHARGING
# Symbol SDL_POWERSTATE_CHARGED
# Symbol SDL_GETPOWERINFO
# Symbol TSDL_TIMERCALLBACK
# Symbol TSDL_TIMERID
# Symbol SDL_GETTICKS
# Symbol SDL_TICKS_PASSED
# Symbol SDL_GETPERFORMANCECOUNTER
# Symbol SDL_GETPERFORMANCEFREQUENCY
# Symbol SDL_DELAY
# Symbol SDL_ADDTIMER
# Symbol SDL_REMOVETIMER
# Symbol SDL_MUTEX_TIMEDOUT
	.uleb128	2
	.ascii	"SDL_MUTEX_TIMEDOUT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_MUTEX_MAXWAIT
	.uleb128	2
	.ascii	"SDL_MUTEX_MAXWAIT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol PSDL_MUTEX
# Symbol PSDL_SEM
# Symbol PSDL_COND
# Symbol SDL_CREATEMUTEX
# Symbol SDL_MUTEXP
# Symbol SDL_LOCKMUTEX
# Symbol SDL_TRYLOCKMUTEX
# Symbol SDL_MUTEXV
# Symbol SDL_UNLOCKMUTEX
# Symbol SDL_DESTROYMUTEX
# Symbol SDL_CREATESEMAPHORE
# Symbol SDL_DESTROYSEMAPHORE
# Symbol SDL_SEMWAIT
# Symbol SDL_SEMTRYWAIT
# Symbol SDL_SEMWAITTIMEOUT
# Symbol SDL_SEMPOST
# Symbol SDL_SEMVALUE
# Symbol SDL_CREATECOND
# Symbol SDL_DESTROYCOND
# Symbol SDL_CONDSIGNAL
# Symbol SDL_CONDBROADCAST
# Symbol SDL_CONDWAIT
# Symbol SDL_CONDWAITTIMEOUT
# Symbol PSDL_THREAD
# Symbol TSDL_THREADID
# Symbol TSDL_TLSID
# Symbol TSDL_THREADPRIORITY
# Symbol SDL_THREAD_PRIORITY_LOW
# Symbol SDL_THREAD_PRIORITY_NORMAL
# Symbol SDL_THREAD_PRIORITY_HIGH
# Symbol TSDL_THREADFUNCTION
# Symbol SDL_CREATETHREAD
# Symbol SDL_GETTHREADNAME
# Symbol SDL_THREADID
# Symbol SDL_GETTHREADID
# Symbol SDL_SETTHREADPRIORITY
# Symbol SDL_WAITTHREAD
# Symbol SDL_DETACHTHREAD
# Symbol SDL_TLSCREATE
# Symbol SDL_TLSGET
# Symbol SDL_TLSSET
# Symbol SDL_LIL_ENDIAN
	.uleb128	2
	.ascii	"SDL_LIL_ENDIAN\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1234
# Symbol SDL_BIG_ENDIAN
	.uleb128	2
	.ascii	"SDL_BIG_ENDIAN\000"
	.long	.La15-.Ldebug_info0
	.uleb128	4321
# Symbol SDL_BYTEORDER
	.uleb128	4
	.ascii	"SDL_BYTEORDER\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$SDL2_$$_SDL_BYTEORDER
	.long	.La61-.Ldebug_info0
# Symbol SDL_SWAP16
# Symbol SDL_SWAP32
# Symbol SDL_SWAP64
# Symbol SDL_SWAPFLOAT
# Symbol SDL_SWAPLE16
# Symbol SDL_SWAPLE32
# Symbol SDL_SWAPLE64
# Symbol SDL_SWAPFLOATLE
# Symbol SDL_SWAPBE16
# Symbol SDL_SWAPBE32
# Symbol SDL_SWAPBE64
# Symbol SDL_SWAPFLOATBE
# Symbol SDL_RWOPS_UNKNOWN
	.uleb128	2
	.ascii	"SDL_RWOPS_UNKNOWN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_RWOPS_WINFILE
	.uleb128	2
	.ascii	"SDL_RWOPS_WINFILE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_RWOPS_STDFILE
	.uleb128	2
	.ascii	"SDL_RWOPS_STDFILE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_RWOPS_JNIFILE
	.uleb128	2
	.ascii	"SDL_RWOPS_JNIFILE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	3
# Symbol SDL_RWOPS_MEMORY
	.uleb128	2
	.ascii	"SDL_RWOPS_MEMORY\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_RWOPS_MEMORY_RO
	.uleb128	2
	.ascii	"SDL_RWOPS_MEMORY_RO\000"
	.long	.La1-.Ldebug_info0
	.uleb128	5
# Symbol RW_SEEK_SET
	.uleb128	2
	.ascii	"RW_SEEK_SET\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol RW_SEEK_CUR
	.uleb128	2
	.ascii	"RW_SEEK_CUR\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol RW_SEEK_END
	.uleb128	2
	.ascii	"RW_SEEK_END\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol PSDL_RWOPS
# Symbol TSDL_RWOPS
# Symbol SDL_RWFROMFILE
# Symbol SDL_RWFROMFP
# Symbol SDL_RWFROMMEM
# Symbol SDL_RWFROMCONSTMEM
# Symbol SDL_ALLOCRW
# Symbol SDL_FREERW
# Symbol SDL_RWSIZE
# Symbol SDL_RWSEEK
# Symbol SDL_RWTELL
# Symbol SDL_RWREAD
# Symbol SDL_RWWRITE
# Symbol SDL_RWCLOSE
# Symbol SDL_READU8
# Symbol SDL_READLE16
# Symbol SDL_READBE16
# Symbol SDL_READLE32
# Symbol SDL_READBE32
# Symbol SDL_READLE64
# Symbol SDL_READBE64
# Symbol SDL_WRITEU8
# Symbol SDL_WRITELE16
# Symbol SDL_WRITEBE16
# Symbol SDL_WRITELE32
# Symbol SDL_WRITEBE32
# Symbol SDL_WRITELE64
# Symbol SDL_WRITEBE64
# Symbol AUDIO_U8
	.uleb128	2
	.ascii	"AUDIO_U8\000"
	.long	.La1-.Ldebug_info0
	.uleb128	8
# Symbol AUDIO_S8
	.uleb128	2
	.ascii	"AUDIO_S8\000"
	.long	.La61-.Ldebug_info0
	.uleb128	32776
# Symbol AUDIO_U16LSB
	.uleb128	2
	.ascii	"AUDIO_U16LSB\000"
	.long	.La1-.Ldebug_info0
	.uleb128	16
# Symbol AUDIO_S16LSB
	.uleb128	2
	.ascii	"AUDIO_S16LSB\000"
	.long	.La61-.Ldebug_info0
	.uleb128	32784
# Symbol AUDIO_U16MSB
	.uleb128	2
	.ascii	"AUDIO_U16MSB\000"
	.long	.La15-.Ldebug_info0
	.uleb128	4112
# Symbol AUDIO_S16MSB
	.uleb128	2
	.ascii	"AUDIO_S16MSB\000"
	.long	.La61-.Ldebug_info0
	.uleb128	36880
# Symbol AUDIO_U16
	.uleb128	2
	.ascii	"AUDIO_U16\000"
	.long	.La1-.Ldebug_info0
	.uleb128	16
# Symbol AUDIO_S16
	.uleb128	2
	.ascii	"AUDIO_S16\000"
	.long	.La61-.Ldebug_info0
	.uleb128	32784
# Symbol AUDIO_S32LSB
	.uleb128	2
	.ascii	"AUDIO_S32LSB\000"
	.long	.La61-.Ldebug_info0
	.uleb128	32800
# Symbol AUDIO_S32MSB
	.uleb128	2
	.ascii	"AUDIO_S32MSB\000"
	.long	.La61-.Ldebug_info0
	.uleb128	36896
# Symbol AUDIO_S32
	.uleb128	2
	.ascii	"AUDIO_S32\000"
	.long	.La61-.Ldebug_info0
	.uleb128	32800
# Symbol AUDIO_F32LSB
	.uleb128	2
	.ascii	"AUDIO_F32LSB\000"
	.long	.La61-.Ldebug_info0
	.uleb128	33056
# Symbol AUDIO_F32MSB
	.uleb128	2
	.ascii	"AUDIO_F32MSB\000"
	.long	.La61-.Ldebug_info0
	.uleb128	37152
# Symbol AUDIO_F32
	.uleb128	2
	.ascii	"AUDIO_F32\000"
	.long	.La61-.Ldebug_info0
	.uleb128	33056
# Symbol AUDIO_U16SYS
	.uleb128	2
	.ascii	"AUDIO_U16SYS\000"
	.long	.La1-.Ldebug_info0
	.uleb128	16
# Symbol AUDIO_S16SYS
	.uleb128	2
	.ascii	"AUDIO_S16SYS\000"
	.long	.La61-.Ldebug_info0
	.uleb128	32784
# Symbol AUDIO_S32SYS
	.uleb128	2
	.ascii	"AUDIO_S32SYS\000"
	.long	.La61-.Ldebug_info0
	.uleb128	32800
# Symbol AUDIO_F32SYS
	.uleb128	2
	.ascii	"AUDIO_F32SYS\000"
	.long	.La61-.Ldebug_info0
	.uleb128	33056
# Symbol SDL_AUDIO_ALLOW_FREQUENCY_CHANGE
	.uleb128	2
	.ascii	"SDL_AUDIO_ALLOW_FREQUENCY_CHANGE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_AUDIO_ALLOW_FORMAT_CHANGE
	.uleb128	2
	.ascii	"SDL_AUDIO_ALLOW_FORMAT_CHANGE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_AUDIO_ALLOW_CHANNELS_CHANGE
	.uleb128	2
	.ascii	"SDL_AUDIO_ALLOW_CHANNELS_CHANGE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_AUDIO_ALLOW_ANY_CHANGE
	.uleb128	2
	.ascii	"SDL_AUDIO_ALLOW_ANY_CHANGE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	7
# Symbol SDL_MIX_MAXVOLUME
	.uleb128	2
	.ascii	"SDL_MIX_MAXVOLUME\000"
	.long	.La67-.Ldebug_info0
	.uleb128	128
# Symbol TSDL_AUDIOFORMAT
# Symbol TSDL_AUDIOCALLBACK
# Symbol PSDL_AUDIOSPEC
# Symbol TSDL_AUDIOSPEC
# Symbol PSDL_AUDIOCVT
# Symbol TSDL_AUDIOFILTER
# Symbol TSDL_AUDIOCVT
# Symbol TSDL_AUDIODEVICEID
# Symbol TSDL_AUDIOSTATUS
# Symbol SDL_AUDIO_STOPPED
# Symbol SDL_AUDIO_PLAYING
# Symbol SDL_AUDIO_PAUSED
# Symbol SDL_AUDIO_MASK_BITSIZE
	.uleb128	2
	.ascii	"SDL_AUDIO_MASK_BITSIZE\000"
	.long	.La67-.Ldebug_info0
	.uleb128	255
# Symbol SDL_AUDIO_MASK_DATATYPE
	.uleb128	2
	.ascii	"SDL_AUDIO_MASK_DATATYPE\000"
	.long	.La15-.Ldebug_info0
	.uleb128	256
# Symbol SDL_AUDIO_MASK_ENDIAN
	.uleb128	2
	.ascii	"SDL_AUDIO_MASK_ENDIAN\000"
	.long	.La15-.Ldebug_info0
	.uleb128	4096
# Symbol SDL_AUDIO_MASK_SIGNED
	.uleb128	2
	.ascii	"SDL_AUDIO_MASK_SIGNED\000"
	.long	.La61-.Ldebug_info0
	.uleb128	32768
# Symbol SDL_AUDIO_BITSIZE
# Symbol SDL_AUDIO_ISFLOAT
# Symbol SDL_AUDIO_ISBIGENDIAN
# Symbol SDL_AUDIO_ISSIGNED
# Symbol SDL_AUDIO_ISINT
# Symbol SDL_AUDIO_ISLITTLEENDIAN
# Symbol SDL_AUDIO_ISUNSIGNED
# Symbol SDL_GETNUMAUDIODRIVERS
# Symbol SDL_GETAUDIODRIVER
# Symbol SDL_AUDIOINIT
# Symbol SDL_SDL_AUDIOQUIT
# Symbol SDL_GETCURRENTAUDIODRIVER
# Symbol SDL_OPENAUDIO
# Symbol SDL_GETNUMAUDIODEVICES
# Symbol SDL_GETAUDIODEVICENAME
# Symbol SDL_OPENAUDIODEVICE
# Symbol SDL_GETAUDIOSTATUS
# Symbol SDL_GETAUDIODEVICESTATUS
# Symbol SDL_PAUSEAUDIO
# Symbol SDL_PAUSEAUDIODEVICE
# Symbol SDL_LOADWAV
# Symbol SDL_LOADWAV_RW
# Symbol SDL_FREEWAV
# Symbol SDL_BUILDAUDIOCVT
# Symbol SDL_CONVERTAUDIO
# Symbol SDL_MIXAUDIO
# Symbol SDL_MIXAUDIOFORMAT
# Symbol SDL_LOCKAUDIO
# Symbol SDL_LOCKAUDIODEVICE
# Symbol SDL_UNLOCKAUDIO
# Symbol SDL_UNLOCKAUDIODEVICE
# Symbol SDL_CLOSEAUDIO
# Symbol SDL_CLOSEAUDIODEVICE
# Symbol SDL_ALPHA_OPAQUE
	.uleb128	2
	.ascii	"SDL_ALPHA_OPAQUE\000"
	.long	.La67-.Ldebug_info0
	.uleb128	255
# Symbol SDL_ALPHA_TRANSPARENT
	.uleb128	2
	.ascii	"SDL_ALPHA_TRANSPARENT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_PIXELTYPE_UNKNOWN
	.uleb128	2
	.ascii	"SDL_PIXELTYPE_UNKNOWN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_PIXELTYPE_INDEX1
	.uleb128	2
	.ascii	"SDL_PIXELTYPE_INDEX1\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_PIXELTYPE_INDEX4
	.uleb128	2
	.ascii	"SDL_PIXELTYPE_INDEX4\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_PIXELTYPE_INDEX8
	.uleb128	2
	.ascii	"SDL_PIXELTYPE_INDEX8\000"
	.long	.La1-.Ldebug_info0
	.uleb128	3
# Symbol SDL_PIXELTYPE_PACKED8
	.uleb128	2
	.ascii	"SDL_PIXELTYPE_PACKED8\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_PIXELTYPE_PACKED16
	.uleb128	2
	.ascii	"SDL_PIXELTYPE_PACKED16\000"
	.long	.La1-.Ldebug_info0
	.uleb128	5
# Symbol SDL_PIXELTYPE_PACKED32
	.uleb128	2
	.ascii	"SDL_PIXELTYPE_PACKED32\000"
	.long	.La1-.Ldebug_info0
	.uleb128	6
# Symbol SDL_PIXELTYPE_ARRAYU8
	.uleb128	2
	.ascii	"SDL_PIXELTYPE_ARRAYU8\000"
	.long	.La1-.Ldebug_info0
	.uleb128	7
# Symbol SDL_PIXELTYPE_ARRAYU16
	.uleb128	2
	.ascii	"SDL_PIXELTYPE_ARRAYU16\000"
	.long	.La1-.Ldebug_info0
	.uleb128	8
# Symbol SDL_PIXELTYPE_ARRAYU32
	.uleb128	2
	.ascii	"SDL_PIXELTYPE_ARRAYU32\000"
	.long	.La1-.Ldebug_info0
	.uleb128	9
# Symbol SDL_PIXELTYPE_ARRAYF16
	.uleb128	2
	.ascii	"SDL_PIXELTYPE_ARRAYF16\000"
	.long	.La1-.Ldebug_info0
	.uleb128	10
# Symbol SDL_PIXELTYPE_ARRAYF32
	.uleb128	2
	.ascii	"SDL_PIXELTYPE_ARRAYF32\000"
	.long	.La1-.Ldebug_info0
	.uleb128	11
# Symbol SDL_BITMAPORDER_NONE
	.uleb128	2
	.ascii	"SDL_BITMAPORDER_NONE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_BITMAPORDER_4321
	.uleb128	2
	.ascii	"SDL_BITMAPORDER_4321\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_BITMAPORDER_1234
	.uleb128	2
	.ascii	"SDL_BITMAPORDER_1234\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_PACKEDORDER_NONE
	.uleb128	2
	.ascii	"SDL_PACKEDORDER_NONE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_PACKEDORDER_XRGB
	.uleb128	2
	.ascii	"SDL_PACKEDORDER_XRGB\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_PACKEDORDER_RGBX
	.uleb128	2
	.ascii	"SDL_PACKEDORDER_RGBX\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_PACKEDORDER_ARGB
	.uleb128	2
	.ascii	"SDL_PACKEDORDER_ARGB\000"
	.long	.La1-.Ldebug_info0
	.uleb128	3
# Symbol SDL_PACKEDORDER_RGBA
	.uleb128	2
	.ascii	"SDL_PACKEDORDER_RGBA\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_PACKEDORDER_XBGR
	.uleb128	2
	.ascii	"SDL_PACKEDORDER_XBGR\000"
	.long	.La1-.Ldebug_info0
	.uleb128	5
# Symbol SDL_PACKEDORDER_BGRX
	.uleb128	2
	.ascii	"SDL_PACKEDORDER_BGRX\000"
	.long	.La1-.Ldebug_info0
	.uleb128	6
# Symbol SDL_PACKEDORDER_ABGR
	.uleb128	2
	.ascii	"SDL_PACKEDORDER_ABGR\000"
	.long	.La1-.Ldebug_info0
	.uleb128	7
# Symbol SDL_PACKEDORDER_BGRA
	.uleb128	2
	.ascii	"SDL_PACKEDORDER_BGRA\000"
	.long	.La1-.Ldebug_info0
	.uleb128	8
# Symbol SDL_ARRAYORDER_NONE
	.uleb128	2
	.ascii	"SDL_ARRAYORDER_NONE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_ARRAYORDER_RGB
	.uleb128	2
	.ascii	"SDL_ARRAYORDER_RGB\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_ARRAYORDER_RGBA
	.uleb128	2
	.ascii	"SDL_ARRAYORDER_RGBA\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_ARRAYORDER_ARGB
	.uleb128	2
	.ascii	"SDL_ARRAYORDER_ARGB\000"
	.long	.La1-.Ldebug_info0
	.uleb128	3
# Symbol SDL_ARRAYORDER_BGR
	.uleb128	2
	.ascii	"SDL_ARRAYORDER_BGR\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_ARRAYORDER_BGRA
	.uleb128	2
	.ascii	"SDL_ARRAYORDER_BGRA\000"
	.long	.La1-.Ldebug_info0
	.uleb128	5
# Symbol SDL_ARRAYORDER_ABGR
	.uleb128	2
	.ascii	"SDL_ARRAYORDER_ABGR\000"
	.long	.La1-.Ldebug_info0
	.uleb128	6
# Symbol SDL_PACKEDLAYOUT_NONE
	.uleb128	2
	.ascii	"SDL_PACKEDLAYOUT_NONE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_PACKEDLAYOUT_332
	.uleb128	2
	.ascii	"SDL_PACKEDLAYOUT_332\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_PACKEDLAYOUT_4444
	.uleb128	2
	.ascii	"SDL_PACKEDLAYOUT_4444\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_PACKEDLAYOUT_1555
	.uleb128	2
	.ascii	"SDL_PACKEDLAYOUT_1555\000"
	.long	.La1-.Ldebug_info0
	.uleb128	3
# Symbol SDL_PACKEDLAYOUT_5551
	.uleb128	2
	.ascii	"SDL_PACKEDLAYOUT_5551\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_PACKEDLAYOUT_565
	.uleb128	2
	.ascii	"SDL_PACKEDLAYOUT_565\000"
	.long	.La1-.Ldebug_info0
	.uleb128	5
# Symbol SDL_PACKEDLAYOUT_8888
	.uleb128	2
	.ascii	"SDL_PACKEDLAYOUT_8888\000"
	.long	.La1-.Ldebug_info0
	.uleb128	6
# Symbol SDL_PACKEDLAYOUT_2101010
	.uleb128	2
	.ascii	"SDL_PACKEDLAYOUT_2101010\000"
	.long	.La1-.Ldebug_info0
	.uleb128	7
# Symbol SDL_PACKEDLAYOUT_1010102
	.uleb128	2
	.ascii	"SDL_PACKEDLAYOUT_1010102\000"
	.long	.La1-.Ldebug_info0
	.uleb128	8
# Symbol SDL_PIXELFORMAT_UNKNOWN
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_UNKNOWN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_PIXELFORMAT_INDEX1LSB
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_INDEX1LSB\000"
	.long	.La17-.Ldebug_info0
	.uleb128	286261504
# Symbol SDL_PIXELFORMAT_INDEX1MSB
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_INDEX1MSB\000"
	.long	.La17-.Ldebug_info0
	.uleb128	287310080
# Symbol SDL_PIXELFORMAT_INDEX4LSB
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_INDEX4LSB\000"
	.long	.La17-.Ldebug_info0
	.uleb128	303039488
# Symbol SDL_PIXELFORMAT_INDEX4MSB
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_INDEX4MSB\000"
	.long	.La17-.Ldebug_info0
	.uleb128	304088064
# Symbol SDL_PIXELFORMAT_INDEX8
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_INDEX8\000"
	.long	.La17-.Ldebug_info0
	.uleb128	318769153
# Symbol SDL_PIXELFORMAT_RGB332
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_RGB332\000"
	.long	.La17-.Ldebug_info0
	.uleb128	336660481
# Symbol SDL_PIXELFORMAT_RGB444
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_RGB444\000"
	.long	.La17-.Ldebug_info0
	.uleb128	353504258
# Symbol SDL_PIXELFORMAT_RGB555
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_RGB555\000"
	.long	.La17-.Ldebug_info0
	.uleb128	353570562
# Symbol SDL_PIXELFORMAT_BGR555
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_BGR555\000"
	.long	.La17-.Ldebug_info0
	.uleb128	357764866
# Symbol SDL_PIXELFORMAT_ARGB4444
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_ARGB4444\000"
	.long	.La17-.Ldebug_info0
	.uleb128	355602434
# Symbol SDL_PIXELFORMAT_RGBA4444
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_RGBA4444\000"
	.long	.La17-.Ldebug_info0
	.uleb128	356651010
# Symbol SDL_PIXELFORMAT_ABGR4444
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_ABGR4444\000"
	.long	.La17-.Ldebug_info0
	.uleb128	359796738
# Symbol SDL_PIXELFORMAT_BGRA4444
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_BGRA4444\000"
	.long	.La17-.Ldebug_info0
	.uleb128	360845314
# Symbol SDL_PIXELFORMAT_ARGB1555
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_ARGB1555\000"
	.long	.La17-.Ldebug_info0
	.uleb128	355667970
# Symbol SDL_PIXELFORMAT_RGBA5551
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_RGBA5551\000"
	.long	.La17-.Ldebug_info0
	.uleb128	356782082
# Symbol SDL_PIXELFORMAT_ABGR1555
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_ABGR1555\000"
	.long	.La17-.Ldebug_info0
	.uleb128	359862274
# Symbol SDL_PIXELFORMAT_BGRA5551
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_BGRA5551\000"
	.long	.La17-.Ldebug_info0
	.uleb128	360976386
# Symbol SDL_PIXELFORMAT_RGB565
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_RGB565\000"
	.long	.La17-.Ldebug_info0
	.uleb128	353701890
# Symbol SDL_PIXELFORMAT_BGR565
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_BGR565\000"
	.long	.La17-.Ldebug_info0
	.uleb128	357896194
# Symbol SDL_PIXELFORMAT_RGB24
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_RGB24\000"
	.long	.La17-.Ldebug_info0
	.uleb128	386930691
# Symbol SDL_PIXELFORMAT_BGR24
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_BGR24\000"
	.long	.La17-.Ldebug_info0
	.uleb128	390076419
# Symbol SDL_PIXELFORMAT_RGB888
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_RGB888\000"
	.long	.La17-.Ldebug_info0
	.uleb128	370546692
# Symbol SDL_PIXELFORMAT_RGBX8888
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_RGBX8888\000"
	.long	.La17-.Ldebug_info0
	.uleb128	371595268
# Symbol SDL_PIXELFORMAT_BGR888
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_BGR888\000"
	.long	.La17-.Ldebug_info0
	.uleb128	374740996
# Symbol SDL_PIXELFORMAT_BGRX8888
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_BGRX8888\000"
	.long	.La17-.Ldebug_info0
	.uleb128	375789572
# Symbol SDL_PIXELFORMAT_ARGB8888
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_ARGB8888\000"
	.long	.La17-.Ldebug_info0
	.uleb128	372645892
# Symbol SDL_PIXELFORMAT_RGBA8888
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_RGBA8888\000"
	.long	.La17-.Ldebug_info0
	.uleb128	373694468
# Symbol SDL_PIXELFORMAT_ABGR8888
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_ABGR8888\000"
	.long	.La17-.Ldebug_info0
	.uleb128	376840196
# Symbol SDL_PIXELFORMAT_BGRA8888
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_BGRA8888\000"
	.long	.La17-.Ldebug_info0
	.uleb128	377888772
# Symbol SDL_PIXELFORMAT_ARGB2101010
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_ARGB2101010\000"
	.long	.La17-.Ldebug_info0
	.uleb128	372711428
# Symbol SDL_PIXELFORMAT_YV12
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_YV12\000"
	.long	.La17-.Ldebug_info0
	.uleb128	842094169
# Symbol SDL_PIXELFORMAT_IYUV
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_IYUV\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1448433993
# Symbol SDL_PIXELFORMAT_YUY2
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_YUY2\000"
	.long	.La17-.Ldebug_info0
	.uleb128	844715353
# Symbol SDL_PIXELFORMAT_UYVY
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_UYVY\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1498831189
# Symbol SDL_PIXELFORMAT_YVYU
	.uleb128	2
	.ascii	"SDL_PIXELFORMAT_YVYU\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1431918169
# Symbol PSDL_COLOR
# Symbol TSDL_COLOR
# Symbol TSDL_COLOUR
# Symbol PSDL_COLOUR
# Symbol PSDL_PALETTE
# Symbol TSDL_PALETTE
# Symbol PSDL_PIXELFORMAT
# Symbol TSDL_PIXELFORMAT
# Symbol SDL_PIXELFLAG
# Symbol SDL_PIXELTYPE
# Symbol SDL_PIXELORDER
# Symbol SDL_PIXELLAYOUT
# Symbol SDL_BITSPERPIXEL
# Symbol SDL_BYTESPERPIXEL
# Symbol SDL_ISPIXELFORMAT_INDEXED
# Symbol SDL_ISPIXELFORMAT_ALPHA
# Symbol SDL_ISPIXELFORMAT_FOURCC
# Symbol SDL_GETPIXELFORMATNAME
# Symbol SDL_PIXELFORMATENUMTOMASKS
# Symbol SDL_MASKSTOPIXELFORMATENUM
# Symbol SDL_ALLOCFORMAT
# Symbol SDL_FREEFORMAT
# Symbol SDL_ALLOCPALETTE
# Symbol SDL_SETPIXELFORMATPALETTE
# Symbol SDL_SETPALETTECOLORS
# Symbol SDL_FREEPALETTE
# Symbol SDL_MAPRGB
# Symbol SDL_MAPRGBA
# Symbol SDL_GETRGB
# Symbol SDL_GETRGBA
# Symbol SDL_CALCULATEGAMMARAMP
# Symbol PSDL_POINT
# Symbol TSDL_POINT
# Symbol PSDL_RECT
# Symbol TSDL_RECT
# Symbol SDL_RECTEMPTY
# Symbol SDL_RECTEQUALS
# Symbol SDL_HASINTERSECTION
# Symbol SDL_INTERSECTRECT
# Symbol SDL_UNIONRECT
# Symbol SDL_ENCLOSEPOINTS
# Symbol SDL_INTERSECTRECTANDLINE
# Symbol SDL_BLENDMODE_NONE
	.uleb128	2
	.ascii	"SDL_BLENDMODE_NONE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_BLENDMODE_BLEND
	.uleb128	2
	.ascii	"SDL_BLENDMODE_BLEND\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_BLENDMODE_ADD
	.uleb128	2
	.ascii	"SDL_BLENDMODE_ADD\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_BLENDMODE_MOD
	.uleb128	2
	.ascii	"SDL_BLENDMODE_MOD\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_SWSURFACE
	.uleb128	2
	.ascii	"SDL_SWSURFACE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_PREALLOC
	.uleb128	2
	.ascii	"SDL_PREALLOC\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_RLEACCEL
	.uleb128	2
	.ascii	"SDL_RLEACCEL\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_DONTFREE
	.uleb128	2
	.ascii	"SDL_DONTFREE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol PSDL_SURFACE
# Symbol TSDL_SURFACE
# Symbol TSDL_BLIT
# Symbol SDL_MUSTLOCK
# Symbol SDL_CREATERGBSURFACE
# Symbol SDL_CREATERGBSURFACEFROM
# Symbol SDL_FREESURFACE
# Symbol SDL_SETSURFACEPALETTE
# Symbol SDL_LOCKSURFACE
# Symbol SDL_UNLOCKSURFACE
# Symbol SDL_LOADBMP_RW
# Symbol SDL_LOADBMP
# Symbol SDL_SAVEBMP_RW
# Symbol SDL_SAVEBMP
# Symbol SDL_SETSURFACERLE
# Symbol SDL_SETCOLORKEY
# Symbol SDL_GETCOLORKEY
# Symbol SDL_SETSURFACECOLORMOD
# Symbol SDL_GETSURFACECOLORMOD
# Symbol SDL_SETSURFACEALPHAMOD
# Symbol SDL_GETSURFACEALPHAMOD
# Symbol SDL_SETSURFACEBLENDMODE
# Symbol SDL_GETSURFACEBLENDMODE
# Symbol SDL_SETCLIPRECT
# Symbol SDL_GETCLIPRECT
# Symbol SDL_CONVERTSURFACE
# Symbol SDL_CONVERTSURFACEFORMAT
# Symbol SDL_CONVERTPIXELS
# Symbol SDL_FILLRECT
# Symbol SDL_FILLRECTS
# Symbol SDL_BLITSURFACE
# Symbol SDL_UPPERBLIT
# Symbol SDL_LOWERBLIT
# Symbol SDL_SOFTSTRETCH
# Symbol SDL_BLITSCALED
# Symbol SDL_UPPERBLITSCALED
# Symbol SDL_LOWERBLITSCALED
# Symbol SDL_WINDOW_FULLSCREEN
	.uleb128	2
	.ascii	"SDL_WINDOW_FULLSCREEN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_WINDOW_OPENGL
	.uleb128	2
	.ascii	"SDL_WINDOW_OPENGL\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_WINDOW_SHOWN
	.uleb128	2
	.ascii	"SDL_WINDOW_SHOWN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_WINDOW_HIDDEN
	.uleb128	2
	.ascii	"SDL_WINDOW_HIDDEN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	8
# Symbol SDL_WINDOW_BORDERLESS
	.uleb128	2
	.ascii	"SDL_WINDOW_BORDERLESS\000"
	.long	.La1-.Ldebug_info0
	.uleb128	16
# Symbol SDL_WINDOW_RESIZABLE
	.uleb128	2
	.ascii	"SDL_WINDOW_RESIZABLE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	32
# Symbol SDL_WINDOW_MINIMIZED
	.uleb128	2
	.ascii	"SDL_WINDOW_MINIMIZED\000"
	.long	.La1-.Ldebug_info0
	.uleb128	64
# Symbol SDL_WINDOW_MAXIMIZED
	.uleb128	2
	.ascii	"SDL_WINDOW_MAXIMIZED\000"
	.long	.La67-.Ldebug_info0
	.uleb128	128
# Symbol SDL_WINDOW_INPUT_GRABBED
	.uleb128	2
	.ascii	"SDL_WINDOW_INPUT_GRABBED\000"
	.long	.La15-.Ldebug_info0
	.uleb128	256
# Symbol SDL_WINDOW_INPUT_FOCUS
	.uleb128	2
	.ascii	"SDL_WINDOW_INPUT_FOCUS\000"
	.long	.La15-.Ldebug_info0
	.uleb128	512
# Symbol SDL_WINDOW_MOUSE_FOCUS
	.uleb128	2
	.ascii	"SDL_WINDOW_MOUSE_FOCUS\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1024
# Symbol SDL_WINDOW_FULLSCREEN_DESKTOP
	.uleb128	2
	.ascii	"SDL_WINDOW_FULLSCREEN_DESKTOP\000"
	.long	.La15-.Ldebug_info0
	.uleb128	4097
# Symbol SDL_WINDOW_FOREIGN
	.uleb128	2
	.ascii	"SDL_WINDOW_FOREIGN\000"
	.long	.La15-.Ldebug_info0
	.uleb128	2048
# Symbol SDL_WINDOW_ALLOW_HIGHDPI
	.uleb128	2
	.ascii	"SDL_WINDOW_ALLOW_HIGHDPI\000"
	.long	.La15-.Ldebug_info0
	.uleb128	8192
# Symbol SDL_WINDOWPOS_UNDEFINED_MASK
	.uleb128	2
	.ascii	"SDL_WINDOWPOS_UNDEFINED_MASK\000"
	.long	.La17-.Ldebug_info0
	.uleb128	536805376
# Symbol SDL_WINDOWPOS_UNDEFINED
	.uleb128	2
	.ascii	"SDL_WINDOWPOS_UNDEFINED\000"
	.long	.La17-.Ldebug_info0
	.uleb128	536805376
# Symbol SDL_WINDOWPOS_CENTERED_MASK
	.uleb128	2
	.ascii	"SDL_WINDOWPOS_CENTERED_MASK\000"
	.long	.La17-.Ldebug_info0
	.uleb128	805240832
# Symbol SDL_WINDOWPOS_CENTERED
	.uleb128	2
	.ascii	"SDL_WINDOWPOS_CENTERED\000"
	.long	.La17-.Ldebug_info0
	.uleb128	805240832
# Symbol SDL_WINDOWEVENT_NONE
	.uleb128	2
	.ascii	"SDL_WINDOWEVENT_NONE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_WINDOWEVENT_SHOWN
	.uleb128	2
	.ascii	"SDL_WINDOWEVENT_SHOWN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_WINDOWEVENT_HIDDEN
	.uleb128	2
	.ascii	"SDL_WINDOWEVENT_HIDDEN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_WINDOWEVENT_EXPOSED
	.uleb128	2
	.ascii	"SDL_WINDOWEVENT_EXPOSED\000"
	.long	.La1-.Ldebug_info0
	.uleb128	3
# Symbol SDL_WINDOWEVENT_MOVED
	.uleb128	2
	.ascii	"SDL_WINDOWEVENT_MOVED\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_WINDOWEVENT_RESIZED
	.uleb128	2
	.ascii	"SDL_WINDOWEVENT_RESIZED\000"
	.long	.La1-.Ldebug_info0
	.uleb128	5
# Symbol SDL_WINDOWEVENT_SIZE_CHANGED
	.uleb128	2
	.ascii	"SDL_WINDOWEVENT_SIZE_CHANGED\000"
	.long	.La1-.Ldebug_info0
	.uleb128	6
# Symbol SDL_WINDOWEVENT_MINIMIZED
	.uleb128	2
	.ascii	"SDL_WINDOWEVENT_MINIMIZED\000"
	.long	.La1-.Ldebug_info0
	.uleb128	7
# Symbol SDL_WINDOWEVENT_MAXIMIZED
	.uleb128	2
	.ascii	"SDL_WINDOWEVENT_MAXIMIZED\000"
	.long	.La1-.Ldebug_info0
	.uleb128	8
# Symbol SDL_WINDOWEVENT_RESTORED
	.uleb128	2
	.ascii	"SDL_WINDOWEVENT_RESTORED\000"
	.long	.La1-.Ldebug_info0
	.uleb128	9
# Symbol SDL_WINDOWEVENT_ENTER
	.uleb128	2
	.ascii	"SDL_WINDOWEVENT_ENTER\000"
	.long	.La1-.Ldebug_info0
	.uleb128	10
# Symbol SDL_WINDOWEVENT_LEAVE
	.uleb128	2
	.ascii	"SDL_WINDOWEVENT_LEAVE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	11
# Symbol SDL_WINDOWEVENT_FOCUS_GAINED
	.uleb128	2
	.ascii	"SDL_WINDOWEVENT_FOCUS_GAINED\000"
	.long	.La1-.Ldebug_info0
	.uleb128	12
# Symbol SDL_WINDOWEVENT_FOCUS_LOST
	.uleb128	2
	.ascii	"SDL_WINDOWEVENT_FOCUS_LOST\000"
	.long	.La1-.Ldebug_info0
	.uleb128	13
# Symbol SDL_WINDOWEVENT_CLOSE
	.uleb128	2
	.ascii	"SDL_WINDOWEVENT_CLOSE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	14
# Symbol SDL_GL_CONTEXT_PROFILE_CORE
	.uleb128	2
	.ascii	"SDL_GL_CONTEXT_PROFILE_CORE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_GL_CONTEXT_PROFILE_COMPATIBILITY
	.uleb128	2
	.ascii	"SDL_GL_CONTEXT_PROFILE_COMPATIBILITY\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_GL_CONTEXT_PROFILE_ES
	.uleb128	2
	.ascii	"SDL_GL_CONTEXT_PROFILE_ES\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_GL_CONTEXT_DEBUG_FLAG
	.uleb128	2
	.ascii	"SDL_GL_CONTEXT_DEBUG_FLAG\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG
	.uleb128	2
	.ascii	"SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG
	.uleb128	2
	.ascii	"SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_GL_CONTEXT_RESET_ISOLATION_FLAG
	.uleb128	2
	.ascii	"SDL_GL_CONTEXT_RESET_ISOLATION_FLAG\000"
	.long	.La1-.Ldebug_info0
	.uleb128	8
# Symbol PSDL_DISPLAYMODE
# Symbol TSDL_DISPLAYMODE
# Symbol PPSDL_WINDOW
# Symbol PSDL_WINDOW
# Symbol SDL_GLCONTEXT
# Symbol SDL_GLATTR
# Symbol SDL_GL_RED_SIZE
# Symbol SDL_GL_GREEN_SIZE
# Symbol SDL_GL_BLUE_SIZE
# Symbol SDL_GL_ALPHA_SIZE
# Symbol SDL_GL_BUFFER_SIZE
# Symbol SDL_GL_DOUBLEBUFFER
# Symbol SDL_GL_DEPTH_SIZE
# Symbol SDL_GL_STENCIL_SIZE
# Symbol SDL_GL_ACCUM_RED_SIZE
# Symbol SDL_GL_ACCUM_GREEN_SIZE
# Symbol SDL_GL_ACCUM_BLUE_SIZE
# Symbol SDL_GL_ACCUM_ALPHA_SIZE
# Symbol SDL_GL_STEREO
# Symbol SDL_GL_MULTISAMPLEBUFFERS
# Symbol SDL_GL_MULTISAMPLESAMPLES
# Symbol SDL_GL_ACCELERATED_VISUAL
# Symbol SDL_GL_RETAINED_BACKING
# Symbol SDL_GL_CONTEXT_MAJOR_VERSION
# Symbol SDL_GL_CONTEXT_MINOR_VERSION
# Symbol SDL_GL_CONTEXT_EGL
# Symbol SDL_GL_CONTEXT_FLAGS
# Symbol SDL_GL_CONTEXT_PROFILE_MASK
# Symbol SDL_GL_SHARE_WITH_CURRENT_CONTEXT
# Symbol SDL_GL_FRAMEBUFFER_SRGB_CAPABLE
# Symbol SDL_GETNUMVIDEODRIVERS
# Symbol SDL_GETVIDEODRIVER
# Symbol SDL_VIDEOINIT
# Symbol SDL_VIDEOQUIT
# Symbol SDL_GETCURRENTVIDEODRIVER
# Symbol SDL_GETNUMVIDEODISPLAYS
# Symbol SDL_GETDISPLAYNAME
# Symbol SDL_GETDISPLAYBOUNDS
# Symbol SDL_GETNUMDISPLAYMODES
# Symbol SDL_GETDISPLAYMODE
# Symbol SDL_GETDESKTOPDISPLAYMODE
# Symbol SDL_GETCURRENTDISPLAYMODE
# Symbol SDL_GETCLOSESTDISPLAYMODE
# Symbol SDL_GETWINDOWDISPLAYINDEX
# Symbol SDL_SETWINDOWDISPLAYMODE
# Symbol SDL_GETWINDOWDISPLAYMODE
# Symbol SDL_GETWINDOWPIXELFORMAT
# Symbol SDL_CREATEWINDOW
# Symbol SDL_CREATEWINDOWFROM
# Symbol SDL_GETWINDOWID
# Symbol SDL_GETWINDOWFROMID
# Symbol SDL_GETWINDOWFLAGS
# Symbol SDL_SETWINDOWTITLE
# Symbol SDL_GETWINDOWTITLE
# Symbol SDL_SETWINDOWICON
# Symbol SDL_SETWINDOWDATA
# Symbol SDL_GETWINDOWDATA
# Symbol SDL_SETWINDOWPOSITION
# Symbol SDL_GETWINDOWPOSITION
# Symbol SDL_SETWINDOWSIZE
# Symbol SDL_GETWINDOWSIZE
# Symbol SDL_SETWINDOWMINIMUMSIZE
# Symbol SDL_GETWINDOWMINIMUMSIZE
# Symbol SDL_SETWINDOWMAXIMUMSIZE
# Symbol SDL_GETWINDOWMAXIMUMSIZE
# Symbol SDL_SETWINDOWBORDERED
# Symbol SDL_SHOWWINDOW
# Symbol SDL_HIDEWINDOW
# Symbol SDL_RAISEWINDOW
# Symbol SDL_MAXIMIZEWINDOW
# Symbol SDL_MINIMIZEWINDOW
# Symbol SDL_RESTOREWINDOW
# Symbol SDL_SETWINDOWFULLSCREEN
# Symbol SDL_GETWINDOWSURFACE
# Symbol SDL_UPDATEWINDOWSURFACE
# Symbol SDL_UPDATEWINDOWSURFACERECTS
# Symbol SDL_SETWINDOWGRAB
# Symbol SDL_GETWINDOWGRAB
# Symbol SDL_SETWINDOWBRIGHTNESS
# Symbol SDL_GETWINDOWBRIGHTNESS
# Symbol SDL_SETWINDOWGAMMARAMP
# Symbol SDL_GETWINDOWGAMMARAMP
# Symbol SDL_DESTROYWINDOW
# Symbol SDL_ISSCREENSAVERENABLED
# Symbol SDL_ENABLESCREENSAVER
# Symbol SDL_DISABLESCREENSAVER
# Symbol SDL_GL_LOADLIBRARY
# Symbol SDL_GL_GETPROCADDRESS
# Symbol SDL_GL_UNLOADLIBRARY
# Symbol SDL_GL_EXTENSIONSUPPORTED
# Symbol SDL_GL_RESETATTRIBUTES
# Symbol SDL_GL_SETATTRIBUTE
# Symbol SDL_GL_GETATTRIBUTE
# Symbol SDL_GL_CREATECONTEXT
# Symbol SDL_GL_MAKECURRENT
# Symbol SDL_GL_GETCURRENTWINDOW
# Symbol SDL_GL_GETCURRENTCONTEXT
# Symbol SDL_GL_GETDRAWABLESIZE
# Symbol SDL_GL_SETSWAPINTERVAL
# Symbol SDL_GL_GETSWAPINTERVAL
# Symbol SDL_GL_SWAPWINDOW
# Symbol SDL_GL_DELETECONTEXT
# Symbol SDL_SYSWMINFO
# Symbol SDL_GETWINDOWWMINFO
# Symbol SDL_NONSHAPEABLE_WINDOW
	.uleb128	5
	.ascii	"SDL_NONSHAPEABLE_WINDOW\000"
	.long	.La1-.Ldebug_info0
	.sleb128	-1
# Symbol SDL_INVALID_SHAPE_ARGUMENT
	.uleb128	5
	.ascii	"SDL_INVALID_SHAPE_ARGUMENT\000"
	.long	.La1-.Ldebug_info0
	.sleb128	-2
# Symbol SDL_WINDOW_LACKS_SHAPE
	.uleb128	5
	.ascii	"SDL_WINDOW_LACKS_SHAPE\000"
	.long	.La1-.Ldebug_info0
	.sleb128	-3
# Symbol SHAPEMODEDEFAULT
	.uleb128	2
	.ascii	"SHAPEMODEDEFAULT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SHAPEMODEBINARIZEALPHA
	.uleb128	2
	.ascii	"SHAPEMODEBINARIZEALPHA\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SHAPEMODEREVERSEBINARIZEALPHA
	.uleb128	2
	.ascii	"SHAPEMODEREVERSEBINARIZEALPHA\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SHAPEMODECOLORKEY
	.uleb128	2
	.ascii	"SHAPEMODECOLORKEY\000"
	.long	.La1-.Ldebug_info0
	.uleb128	3
# Symbol TSDL_WINDOWSHAPEPARAMS
# Symbol PSDL_WINDOWSHAPEMODE
# Symbol TSDL_WINDOWSHAPEMODE
# Symbol SDL_CREATESHAPEDWINDOW
# Symbol SDL_ISSHAPEDWINDOW
# Symbol SDL_SETWINDOWSHAPE
# Symbol SDL_GETSHAPEDWINDOWMODE
# Symbol SDL_RENDERER_SOFTWARE
	.uleb128	2
	.ascii	"SDL_RENDERER_SOFTWARE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_RENDERER_ACCELERATED
	.uleb128	2
	.ascii	"SDL_RENDERER_ACCELERATED\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_RENDERER_PRESENTVSYNC
	.uleb128	2
	.ascii	"SDL_RENDERER_PRESENTVSYNC\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_RENDERER_TARGETTEXTURE
	.uleb128	2
	.ascii	"SDL_RENDERER_TARGETTEXTURE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	8
# Symbol SDL_TEXTUREACCESS_STATIC
	.uleb128	2
	.ascii	"SDL_TEXTUREACCESS_STATIC\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_TEXTUREACCESS_STREAMING
	.uleb128	2
	.ascii	"SDL_TEXTUREACCESS_STREAMING\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_TEXTUREACCESS_TARGET
	.uleb128	2
	.ascii	"SDL_TEXTUREACCESS_TARGET\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_TEXTUREMODULATE_NONE
	.uleb128	2
	.ascii	"SDL_TEXTUREMODULATE_NONE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_TEXTUREMODULATE_COLOR
	.uleb128	2
	.ascii	"SDL_TEXTUREMODULATE_COLOR\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_TEXTUREMODULATE_ALPHA
	.uleb128	2
	.ascii	"SDL_TEXTUREMODULATE_ALPHA\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_FLIP_NONE
	.uleb128	2
	.ascii	"SDL_FLIP_NONE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_FLIP_HORIZONTAL
	.uleb128	2
	.ascii	"SDL_FLIP_HORIZONTAL\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_FLIP_VERTICAL
	.uleb128	2
	.ascii	"SDL_FLIP_VERTICAL\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol PSDL_RENDERERINFO
# Symbol TSDL_RENDERERINFO
# Symbol PPSDL_RENDERER
# Symbol PSDL_RENDERER
# Symbol PSDL_TEXTURE
# Symbol SDL_GETNUMRENDERDRIVERS
# Symbol SDL_GETRENDERDRIVERINFO
# Symbol SDL_CREATEWINDOWANDRENDERER
# Symbol SDL_CREATERENDERER
# Symbol SDL_CREATESOFTWARERENDERER
# Symbol SDL_GETRENDERER
# Symbol SDL_GETRENDERERINFO
# Symbol SDL_GETRENDEREROUTPUTSIZE
# Symbol SDL_CREATETEXTURE
# Symbol SDL_CREATETEXTUREFROMSURFACE
# Symbol SDL_QUERYTEXTURE
# Symbol SDL_SETTEXTURECOLORMOD
# Symbol SDL_GETTEXTURECOLORMOD
# Symbol SDL_SETTEXTUREALPHAMOD
# Symbol SDL_GETTEXTUREALPHAMOD
# Symbol SDL_SETTEXTUREBLENDMODE
# Symbol SDL_GETTEXTUREBLENDMODE
# Symbol SDL_UPDATETEXTURE
# Symbol SDL_UPDATEYUVTEXTURE
# Symbol SDL_LOCKTEXTURE
# Symbol SDL_UNLOCKTEXTURE
# Symbol SDL_RENDERTARGETSUPPORTED
# Symbol SDL_SETRENDERTARGET
# Symbol SDL_GETRENDERTARGET
# Symbol SDL_RENDERSETLOGICALSIZE
# Symbol SDL_RENDERGETLOGICALSIZE
# Symbol SDL_RENDERSETVIEWPORT
# Symbol SDL_RENDERGETVIEWPORT
# Symbol SDL_RENDERSETCLIPRECT
# Symbol SDL_RENDERGETCLIPRECT
# Symbol SDL_RENDERSETSCALE
# Symbol SDL_RENDERGETSCALE
# Symbol SDL_SETRENDERDRAWCOLOR
# Symbol SDL_GETRENDERDRAWCOLOR
# Symbol SDL_SETRENDERDRAWBLENDMODE
# Symbol SDL_GETRENDERDRAWBLENDMODE
# Symbol SDL_RENDERCLEAR
# Symbol SDL_RENDERDRAWPOINT
# Symbol SDL_RENDERDRAWPOINTS
# Symbol SDL_RENDERDRAWLINE
# Symbol SDL_RENDERDRAWLINES
# Symbol SDL_RENDERDRAWRECT
# Symbol SDL_RENDERDRAWRECTS
# Symbol SDL_RENDERFILLRECT
# Symbol SDL_RENDERFILLRECTS
# Symbol SDL_RENDERCOPY
# Symbol SDL_RENDERCOPYEX
# Symbol SDL_RENDERREADPIXELS
# Symbol SDL_RENDERPRESENT
# Symbol SDL_DESTROYTEXTURE
# Symbol SDL_DESTROYRENDERER
# Symbol SDL_GL_BINDTEXTURE
# Symbol SDL_GL_UNBINDTEXTURE
# Symbol SDL_MESSAGEBOX_ERROR
	.uleb128	2
	.ascii	"SDL_MESSAGEBOX_ERROR\000"
	.long	.La1-.Ldebug_info0
	.uleb128	16
# Symbol SDL_MESSAGEBOX_WARNING
	.uleb128	2
	.ascii	"SDL_MESSAGEBOX_WARNING\000"
	.long	.La1-.Ldebug_info0
	.uleb128	32
# Symbol SDL_MESSAGEBOX_INFORMATION
	.uleb128	2
	.ascii	"SDL_MESSAGEBOX_INFORMATION\000"
	.long	.La1-.Ldebug_info0
	.uleb128	64
# Symbol SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT
	.uleb128	2
	.ascii	"SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT
	.uleb128	2
	.ascii	"SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_MESSAGEBOX_COLOR_BACKGROUND
	.uleb128	2
	.ascii	"SDL_MESSAGEBOX_COLOR_BACKGROUND\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_MESSAGEBOX_COLOR_TEXT
	.uleb128	2
	.ascii	"SDL_MESSAGEBOX_COLOR_TEXT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_MESSAGEBOX_COLOR_BUTTON_BORDER
	.uleb128	2
	.ascii	"SDL_MESSAGEBOX_COLOR_BUTTON_BORDER\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND
	.uleb128	2
	.ascii	"SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND\000"
	.long	.La1-.Ldebug_info0
	.uleb128	3
# Symbol SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED
	.uleb128	2
	.ascii	"SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_MESSAGEBOX_COLOR_MAX
	.uleb128	2
	.ascii	"SDL_MESSAGEBOX_COLOR_MAX\000"
	.long	.La1-.Ldebug_info0
	.uleb128	5
# Symbol PSDL_MESSAGEBOXBUTTONDATA
# Symbol TSDL_MESSAGEBOXBUTTONDATA
# Symbol SDL_MESSAGEBOXCOLOR
# Symbol PSDL_MESSAGEBOXCOLORSCHEME
# Symbol TSDL_MESSAGEBOXCOLORSCHEME
# Symbol PSDL_MESSAGEBOXDATA
# Symbol TSDL_MESSAGEBOXDATA
# Symbol SDL_SHOWMESSAGEBOX
# Symbol SDL_SHOWSIMPLEMESSAGEBOX
# Symbol PSDL_SCANCODE
# Symbol TSDL_SCANCODE
# Symbol SDL_SCANCODE_UNKNOWN
	.uleb128	2
	.ascii	"SDL_SCANCODE_UNKNOWN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_SCANCODE_A
	.uleb128	2
	.ascii	"SDL_SCANCODE_A\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_SCANCODE_B
	.uleb128	2
	.ascii	"SDL_SCANCODE_B\000"
	.long	.La1-.Ldebug_info0
	.uleb128	5
# Symbol SDL_SCANCODE_C
	.uleb128	2
	.ascii	"SDL_SCANCODE_C\000"
	.long	.La1-.Ldebug_info0
	.uleb128	6
# Symbol SDL_SCANCODE_D
	.uleb128	2
	.ascii	"SDL_SCANCODE_D\000"
	.long	.La1-.Ldebug_info0
	.uleb128	7
# Symbol SDL_SCANCODE_E
	.uleb128	2
	.ascii	"SDL_SCANCODE_E\000"
	.long	.La1-.Ldebug_info0
	.uleb128	8
# Symbol SDL_SCANCODE_F
	.uleb128	2
	.ascii	"SDL_SCANCODE_F\000"
	.long	.La1-.Ldebug_info0
	.uleb128	9
# Symbol SDL_SCANCODE_G
	.uleb128	2
	.ascii	"SDL_SCANCODE_G\000"
	.long	.La1-.Ldebug_info0
	.uleb128	10
# Symbol SDL_SCANCODE_H
	.uleb128	2
	.ascii	"SDL_SCANCODE_H\000"
	.long	.La1-.Ldebug_info0
	.uleb128	11
# Symbol SDL_SCANCODE_I
	.uleb128	2
	.ascii	"SDL_SCANCODE_I\000"
	.long	.La1-.Ldebug_info0
	.uleb128	12
# Symbol SDL_SCANCODE_J
	.uleb128	2
	.ascii	"SDL_SCANCODE_J\000"
	.long	.La1-.Ldebug_info0
	.uleb128	13
# Symbol SDL_SCANCODE_K
	.uleb128	2
	.ascii	"SDL_SCANCODE_K\000"
	.long	.La1-.Ldebug_info0
	.uleb128	14
# Symbol SDL_SCANCODE_L
	.uleb128	2
	.ascii	"SDL_SCANCODE_L\000"
	.long	.La1-.Ldebug_info0
	.uleb128	15
# Symbol SDL_SCANCODE_M
	.uleb128	2
	.ascii	"SDL_SCANCODE_M\000"
	.long	.La1-.Ldebug_info0
	.uleb128	16
# Symbol SDL_SCANCODE_N
	.uleb128	2
	.ascii	"SDL_SCANCODE_N\000"
	.long	.La1-.Ldebug_info0
	.uleb128	17
# Symbol SDL_SCANCODE_O
	.uleb128	2
	.ascii	"SDL_SCANCODE_O\000"
	.long	.La1-.Ldebug_info0
	.uleb128	18
# Symbol SDL_SCANCODE_P
	.uleb128	2
	.ascii	"SDL_SCANCODE_P\000"
	.long	.La1-.Ldebug_info0
	.uleb128	19
# Symbol SDL_SCANCODE_Q
	.uleb128	2
	.ascii	"SDL_SCANCODE_Q\000"
	.long	.La1-.Ldebug_info0
	.uleb128	20
# Symbol SDL_SCANCODE_R
	.uleb128	2
	.ascii	"SDL_SCANCODE_R\000"
	.long	.La1-.Ldebug_info0
	.uleb128	21
# Symbol SDL_SCANCODE_S
	.uleb128	2
	.ascii	"SDL_SCANCODE_S\000"
	.long	.La1-.Ldebug_info0
	.uleb128	22
# Symbol SDL_SCANCODE_T
	.uleb128	2
	.ascii	"SDL_SCANCODE_T\000"
	.long	.La1-.Ldebug_info0
	.uleb128	23
# Symbol SDL_SCANCODE_U
	.uleb128	2
	.ascii	"SDL_SCANCODE_U\000"
	.long	.La1-.Ldebug_info0
	.uleb128	24
# Symbol SDL_SCANCODE_V
	.uleb128	2
	.ascii	"SDL_SCANCODE_V\000"
	.long	.La1-.Ldebug_info0
	.uleb128	25
# Symbol SDL_SCANCODE_W
	.uleb128	2
	.ascii	"SDL_SCANCODE_W\000"
	.long	.La1-.Ldebug_info0
	.uleb128	26
# Symbol SDL_SCANCODE_X
	.uleb128	2
	.ascii	"SDL_SCANCODE_X\000"
	.long	.La1-.Ldebug_info0
	.uleb128	27
# Symbol SDL_SCANCODE_Y
	.uleb128	2
	.ascii	"SDL_SCANCODE_Y\000"
	.long	.La1-.Ldebug_info0
	.uleb128	28
# Symbol SDL_SCANCODE_Z
	.uleb128	2
	.ascii	"SDL_SCANCODE_Z\000"
	.long	.La1-.Ldebug_info0
	.uleb128	29
# Symbol SDL_SCANCODE_1
	.uleb128	2
	.ascii	"SDL_SCANCODE_1\000"
	.long	.La1-.Ldebug_info0
	.uleb128	30
# Symbol SDL_SCANCODE_2
	.uleb128	2
	.ascii	"SDL_SCANCODE_2\000"
	.long	.La1-.Ldebug_info0
	.uleb128	31
# Symbol SDL_SCANCODE_3
	.uleb128	2
	.ascii	"SDL_SCANCODE_3\000"
	.long	.La1-.Ldebug_info0
	.uleb128	32
# Symbol SDL_SCANCODE_4
	.uleb128	2
	.ascii	"SDL_SCANCODE_4\000"
	.long	.La1-.Ldebug_info0
	.uleb128	33
# Symbol SDL_SCANCODE_5
	.uleb128	2
	.ascii	"SDL_SCANCODE_5\000"
	.long	.La1-.Ldebug_info0
	.uleb128	34
# Symbol SDL_SCANCODE_6
	.uleb128	2
	.ascii	"SDL_SCANCODE_6\000"
	.long	.La1-.Ldebug_info0
	.uleb128	35
# Symbol SDL_SCANCODE_7
	.uleb128	2
	.ascii	"SDL_SCANCODE_7\000"
	.long	.La1-.Ldebug_info0
	.uleb128	36
# Symbol SDL_SCANCODE_8
	.uleb128	2
	.ascii	"SDL_SCANCODE_8\000"
	.long	.La1-.Ldebug_info0
	.uleb128	37
# Symbol SDL_SCANCODE_9
	.uleb128	2
	.ascii	"SDL_SCANCODE_9\000"
	.long	.La1-.Ldebug_info0
	.uleb128	38
# Symbol SDL_SCANCODE_0
	.uleb128	2
	.ascii	"SDL_SCANCODE_0\000"
	.long	.La1-.Ldebug_info0
	.uleb128	39
# Symbol SDL_SCANCODE_RETURN
	.uleb128	2
	.ascii	"SDL_SCANCODE_RETURN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	40
# Symbol SDL_SCANCODE_ESCAPE
	.uleb128	2
	.ascii	"SDL_SCANCODE_ESCAPE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	41
# Symbol SDL_SCANCODE_BACKSPACE
	.uleb128	2
	.ascii	"SDL_SCANCODE_BACKSPACE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	42
# Symbol SDL_SCANCODE_TAB
	.uleb128	2
	.ascii	"SDL_SCANCODE_TAB\000"
	.long	.La1-.Ldebug_info0
	.uleb128	43
# Symbol SDL_SCANCODE_SPACE
	.uleb128	2
	.ascii	"SDL_SCANCODE_SPACE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	44
# Symbol SDL_SCANCODE_MINUS
	.uleb128	2
	.ascii	"SDL_SCANCODE_MINUS\000"
	.long	.La1-.Ldebug_info0
	.uleb128	45
# Symbol SDL_SCANCODE_EQUALS
	.uleb128	2
	.ascii	"SDL_SCANCODE_EQUALS\000"
	.long	.La1-.Ldebug_info0
	.uleb128	46
# Symbol SDL_SCANCODE_LEFTBRACKET
	.uleb128	2
	.ascii	"SDL_SCANCODE_LEFTBRACKET\000"
	.long	.La1-.Ldebug_info0
	.uleb128	47
# Symbol SDL_SCANCODE_RIGHTBRACKET
	.uleb128	2
	.ascii	"SDL_SCANCODE_RIGHTBRACKET\000"
	.long	.La1-.Ldebug_info0
	.uleb128	48
# Symbol SDL_SCANCODE_BACKSLASH
	.uleb128	2
	.ascii	"SDL_SCANCODE_BACKSLASH\000"
	.long	.La1-.Ldebug_info0
	.uleb128	49
# Symbol SDL_SCANCODE_NONUSHASH
	.uleb128	2
	.ascii	"SDL_SCANCODE_NONUSHASH\000"
	.long	.La1-.Ldebug_info0
	.uleb128	50
# Symbol SDL_SCANCODE_SEMICOLON
	.uleb128	2
	.ascii	"SDL_SCANCODE_SEMICOLON\000"
	.long	.La1-.Ldebug_info0
	.uleb128	51
# Symbol SDL_SCANCODE_APOSTROPHE
	.uleb128	2
	.ascii	"SDL_SCANCODE_APOSTROPHE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	52
# Symbol SDL_SCANCODE_GRAVE
	.uleb128	2
	.ascii	"SDL_SCANCODE_GRAVE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	53
# Symbol SDL_SCANCODE_COMMA
	.uleb128	2
	.ascii	"SDL_SCANCODE_COMMA\000"
	.long	.La1-.Ldebug_info0
	.uleb128	54
# Symbol SDL_SCANCODE_PERIOD
	.uleb128	2
	.ascii	"SDL_SCANCODE_PERIOD\000"
	.long	.La1-.Ldebug_info0
	.uleb128	55
# Symbol SDL_SCANCODE_SLASH
	.uleb128	2
	.ascii	"SDL_SCANCODE_SLASH\000"
	.long	.La1-.Ldebug_info0
	.uleb128	56
# Symbol SDL_SCANCODE_CAPSLOCK
	.uleb128	2
	.ascii	"SDL_SCANCODE_CAPSLOCK\000"
	.long	.La1-.Ldebug_info0
	.uleb128	57
# Symbol SDL_SCANCODE_F1
	.uleb128	2
	.ascii	"SDL_SCANCODE_F1\000"
	.long	.La1-.Ldebug_info0
	.uleb128	58
# Symbol SDL_SCANCODE_F2
	.uleb128	2
	.ascii	"SDL_SCANCODE_F2\000"
	.long	.La1-.Ldebug_info0
	.uleb128	59
# Symbol SDL_SCANCODE_F3
	.uleb128	2
	.ascii	"SDL_SCANCODE_F3\000"
	.long	.La1-.Ldebug_info0
	.uleb128	60
# Symbol SDL_SCANCODE_F4
	.uleb128	2
	.ascii	"SDL_SCANCODE_F4\000"
	.long	.La1-.Ldebug_info0
	.uleb128	61
# Symbol SDL_SCANCODE_F5
	.uleb128	2
	.ascii	"SDL_SCANCODE_F5\000"
	.long	.La1-.Ldebug_info0
	.uleb128	62
# Symbol SDL_SCANCODE_F6
	.uleb128	2
	.ascii	"SDL_SCANCODE_F6\000"
	.long	.La1-.Ldebug_info0
	.uleb128	63
# Symbol SDL_SCANCODE_F7
	.uleb128	2
	.ascii	"SDL_SCANCODE_F7\000"
	.long	.La1-.Ldebug_info0
	.uleb128	64
# Symbol SDL_SCANCODE_F8
	.uleb128	2
	.ascii	"SDL_SCANCODE_F8\000"
	.long	.La1-.Ldebug_info0
	.uleb128	65
# Symbol SDL_SCANCODE_F9
	.uleb128	2
	.ascii	"SDL_SCANCODE_F9\000"
	.long	.La1-.Ldebug_info0
	.uleb128	66
# Symbol SDL_SCANCODE_F10
	.uleb128	2
	.ascii	"SDL_SCANCODE_F10\000"
	.long	.La1-.Ldebug_info0
	.uleb128	67
# Symbol SDL_SCANCODE_F11
	.uleb128	2
	.ascii	"SDL_SCANCODE_F11\000"
	.long	.La1-.Ldebug_info0
	.uleb128	68
# Symbol SDL_SCANCODE_F12
	.uleb128	2
	.ascii	"SDL_SCANCODE_F12\000"
	.long	.La1-.Ldebug_info0
	.uleb128	69
# Symbol SDL_SCANCODE_PRINTSCREEN
	.uleb128	2
	.ascii	"SDL_SCANCODE_PRINTSCREEN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	70
# Symbol SDL_SCANCODE_SCROLLLOCK
	.uleb128	2
	.ascii	"SDL_SCANCODE_SCROLLLOCK\000"
	.long	.La1-.Ldebug_info0
	.uleb128	71
# Symbol SDL_SCANCODE_PAUSE
	.uleb128	2
	.ascii	"SDL_SCANCODE_PAUSE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	72
# Symbol SDL_SCANCODE_INSERT
	.uleb128	2
	.ascii	"SDL_SCANCODE_INSERT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	73
# Symbol SDL_SCANCODE_HOME
	.uleb128	2
	.ascii	"SDL_SCANCODE_HOME\000"
	.long	.La1-.Ldebug_info0
	.uleb128	74
# Symbol SDL_SCANCODE_PAGEUP
	.uleb128	2
	.ascii	"SDL_SCANCODE_PAGEUP\000"
	.long	.La1-.Ldebug_info0
	.uleb128	75
# Symbol SDL_SCANCODE_DELETE
	.uleb128	2
	.ascii	"SDL_SCANCODE_DELETE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	76
# Symbol SDL_SCANCODE_END
	.uleb128	2
	.ascii	"SDL_SCANCODE_END\000"
	.long	.La1-.Ldebug_info0
	.uleb128	77
# Symbol SDL_SCANCODE_PAGEDOWN
	.uleb128	2
	.ascii	"SDL_SCANCODE_PAGEDOWN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	78
# Symbol SDL_SCANCODE_RIGHT
	.uleb128	2
	.ascii	"SDL_SCANCODE_RIGHT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	79
# Symbol SDL_SCANCODE_LEFT
	.uleb128	2
	.ascii	"SDL_SCANCODE_LEFT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	80
# Symbol SDL_SCANCODE_DOWN
	.uleb128	2
	.ascii	"SDL_SCANCODE_DOWN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	81
# Symbol SDL_SCANCODE_UP
	.uleb128	2
	.ascii	"SDL_SCANCODE_UP\000"
	.long	.La1-.Ldebug_info0
	.uleb128	82
# Symbol SDL_SCANCODE_NUMLOCKCLEAR
	.uleb128	2
	.ascii	"SDL_SCANCODE_NUMLOCKCLEAR\000"
	.long	.La1-.Ldebug_info0
	.uleb128	83
# Symbol SDL_SCANCODE_KP_DIVIDE
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_DIVIDE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	84
# Symbol SDL_SCANCODE_KP_MULTIPLY
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_MULTIPLY\000"
	.long	.La1-.Ldebug_info0
	.uleb128	85
# Symbol SDL_SCANCODE_KP_MINUS
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_MINUS\000"
	.long	.La1-.Ldebug_info0
	.uleb128	86
# Symbol SDL_SCANCODE_KP_PLUS
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_PLUS\000"
	.long	.La1-.Ldebug_info0
	.uleb128	87
# Symbol SDL_SCANCODE_KP_ENTER
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_ENTER\000"
	.long	.La1-.Ldebug_info0
	.uleb128	88
# Symbol SDL_SCANCODE_KP_1
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_1\000"
	.long	.La1-.Ldebug_info0
	.uleb128	89
# Symbol SDL_SCANCODE_KP_2
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_2\000"
	.long	.La1-.Ldebug_info0
	.uleb128	90
# Symbol SDL_SCANCODE_KP_3
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_3\000"
	.long	.La1-.Ldebug_info0
	.uleb128	91
# Symbol SDL_SCANCODE_KP_4
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_4\000"
	.long	.La1-.Ldebug_info0
	.uleb128	92
# Symbol SDL_SCANCODE_KP_5
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_5\000"
	.long	.La1-.Ldebug_info0
	.uleb128	93
# Symbol SDL_SCANCODE_KP_6
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_6\000"
	.long	.La1-.Ldebug_info0
	.uleb128	94
# Symbol SDL_SCANCODE_KP_7
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_7\000"
	.long	.La1-.Ldebug_info0
	.uleb128	95
# Symbol SDL_SCANCODE_KP_8
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_8\000"
	.long	.La1-.Ldebug_info0
	.uleb128	96
# Symbol SDL_SCANCODE_KP_9
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_9\000"
	.long	.La1-.Ldebug_info0
	.uleb128	97
# Symbol SDL_SCANCODE_KP_0
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_0\000"
	.long	.La1-.Ldebug_info0
	.uleb128	98
# Symbol SDL_SCANCODE_KP_PERIOD
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_PERIOD\000"
	.long	.La1-.Ldebug_info0
	.uleb128	99
# Symbol SDL_SCANCODE_NONUSBACKSLASH
	.uleb128	2
	.ascii	"SDL_SCANCODE_NONUSBACKSLASH\000"
	.long	.La1-.Ldebug_info0
	.uleb128	100
# Symbol SDL_SCANCODE_APPLICATION
	.uleb128	2
	.ascii	"SDL_SCANCODE_APPLICATION\000"
	.long	.La1-.Ldebug_info0
	.uleb128	101
# Symbol SDL_SCANCODE_POWER
	.uleb128	2
	.ascii	"SDL_SCANCODE_POWER\000"
	.long	.La1-.Ldebug_info0
	.uleb128	102
# Symbol SDL_SCANCODE_KP_EQUALS
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_EQUALS\000"
	.long	.La1-.Ldebug_info0
	.uleb128	103
# Symbol SDL_SCANCODE_F13
	.uleb128	2
	.ascii	"SDL_SCANCODE_F13\000"
	.long	.La1-.Ldebug_info0
	.uleb128	104
# Symbol SDL_SCANCODE_F14
	.uleb128	2
	.ascii	"SDL_SCANCODE_F14\000"
	.long	.La1-.Ldebug_info0
	.uleb128	105
# Symbol SDL_SCANCODE_F15
	.uleb128	2
	.ascii	"SDL_SCANCODE_F15\000"
	.long	.La1-.Ldebug_info0
	.uleb128	106
# Symbol SDL_SCANCODE_F16
	.uleb128	2
	.ascii	"SDL_SCANCODE_F16\000"
	.long	.La1-.Ldebug_info0
	.uleb128	107
# Symbol SDL_SCANCODE_F17
	.uleb128	2
	.ascii	"SDL_SCANCODE_F17\000"
	.long	.La1-.Ldebug_info0
	.uleb128	108
# Symbol SDL_SCANCODE_F18
	.uleb128	2
	.ascii	"SDL_SCANCODE_F18\000"
	.long	.La1-.Ldebug_info0
	.uleb128	109
# Symbol SDL_SCANCODE_F19
	.uleb128	2
	.ascii	"SDL_SCANCODE_F19\000"
	.long	.La1-.Ldebug_info0
	.uleb128	110
# Symbol SDL_SCANCODE_F20
	.uleb128	2
	.ascii	"SDL_SCANCODE_F20\000"
	.long	.La1-.Ldebug_info0
	.uleb128	111
# Symbol SDL_SCANCODE_F21
	.uleb128	2
	.ascii	"SDL_SCANCODE_F21\000"
	.long	.La1-.Ldebug_info0
	.uleb128	112
# Symbol SDL_SCANCODE_F22
	.uleb128	2
	.ascii	"SDL_SCANCODE_F22\000"
	.long	.La1-.Ldebug_info0
	.uleb128	113
# Symbol SDL_SCANCODE_F23
	.uleb128	2
	.ascii	"SDL_SCANCODE_F23\000"
	.long	.La1-.Ldebug_info0
	.uleb128	114
# Symbol SDL_SCANCODE_F24
	.uleb128	2
	.ascii	"SDL_SCANCODE_F24\000"
	.long	.La1-.Ldebug_info0
	.uleb128	115
# Symbol SDL_SCANCODE_EXECUTE
	.uleb128	2
	.ascii	"SDL_SCANCODE_EXECUTE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	116
# Symbol SDL_SCANCODE_HELP
	.uleb128	2
	.ascii	"SDL_SCANCODE_HELP\000"
	.long	.La1-.Ldebug_info0
	.uleb128	117
# Symbol SDL_SCANCODE_MENU
	.uleb128	2
	.ascii	"SDL_SCANCODE_MENU\000"
	.long	.La1-.Ldebug_info0
	.uleb128	118
# Symbol SDL_SCANCODE_SELECT
	.uleb128	2
	.ascii	"SDL_SCANCODE_SELECT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	119
# Symbol SDL_SCANCODE_STOP
	.uleb128	2
	.ascii	"SDL_SCANCODE_STOP\000"
	.long	.La1-.Ldebug_info0
	.uleb128	120
# Symbol SDL_SCANCODE_AGAIN
	.uleb128	2
	.ascii	"SDL_SCANCODE_AGAIN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	121
# Symbol SDL_SCANCODE_UNDO
	.uleb128	2
	.ascii	"SDL_SCANCODE_UNDO\000"
	.long	.La1-.Ldebug_info0
	.uleb128	122
# Symbol SDL_SCANCODE_CUT
	.uleb128	2
	.ascii	"SDL_SCANCODE_CUT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	123
# Symbol SDL_SCANCODE_COPY
	.uleb128	2
	.ascii	"SDL_SCANCODE_COPY\000"
	.long	.La1-.Ldebug_info0
	.uleb128	124
# Symbol SDL_SCANCODE_PASTE
	.uleb128	2
	.ascii	"SDL_SCANCODE_PASTE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	125
# Symbol SDL_SCANCODE_FIND
	.uleb128	2
	.ascii	"SDL_SCANCODE_FIND\000"
	.long	.La1-.Ldebug_info0
	.uleb128	126
# Symbol SDL_SCANCODE_MUTE
	.uleb128	2
	.ascii	"SDL_SCANCODE_MUTE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	127
# Symbol SDL_SCANCODE_VOLUMEUP
	.uleb128	2
	.ascii	"SDL_SCANCODE_VOLUMEUP\000"
	.long	.La67-.Ldebug_info0
	.uleb128	128
# Symbol SDL_SCANCODE_VOLUMEDOWN
	.uleb128	2
	.ascii	"SDL_SCANCODE_VOLUMEDOWN\000"
	.long	.La67-.Ldebug_info0
	.uleb128	129
# Symbol SDL_SCANCODE_KP_COMMA
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_COMMA\000"
	.long	.La67-.Ldebug_info0
	.uleb128	133
# Symbol SDL_SCANCODE_KP_EQUALSAS400
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_EQUALSAS400\000"
	.long	.La67-.Ldebug_info0
	.uleb128	134
# Symbol SDL_SCANCODE_INTERNATIONAL1
	.uleb128	2
	.ascii	"SDL_SCANCODE_INTERNATIONAL1\000"
	.long	.La67-.Ldebug_info0
	.uleb128	135
# Symbol SDL_SCANCODE_INTERNATIONAL2
	.uleb128	2
	.ascii	"SDL_SCANCODE_INTERNATIONAL2\000"
	.long	.La67-.Ldebug_info0
	.uleb128	136
# Symbol SDL_SCANCODE_INTERNATIONAL3
	.uleb128	2
	.ascii	"SDL_SCANCODE_INTERNATIONAL3\000"
	.long	.La67-.Ldebug_info0
	.uleb128	137
# Symbol SDL_SCANCODE_INTERNATIONAL4
	.uleb128	2
	.ascii	"SDL_SCANCODE_INTERNATIONAL4\000"
	.long	.La67-.Ldebug_info0
	.uleb128	138
# Symbol SDL_SCANCODE_INTERNATIONAL5
	.uleb128	2
	.ascii	"SDL_SCANCODE_INTERNATIONAL5\000"
	.long	.La67-.Ldebug_info0
	.uleb128	139
# Symbol SDL_SCANCODE_INTERNATIONAL6
	.uleb128	2
	.ascii	"SDL_SCANCODE_INTERNATIONAL6\000"
	.long	.La67-.Ldebug_info0
	.uleb128	140
# Symbol SDL_SCANCODE_INTERNATIONAL7
	.uleb128	2
	.ascii	"SDL_SCANCODE_INTERNATIONAL7\000"
	.long	.La67-.Ldebug_info0
	.uleb128	141
# Symbol SDL_SCANCODE_INTERNATIONAL8
	.uleb128	2
	.ascii	"SDL_SCANCODE_INTERNATIONAL8\000"
	.long	.La67-.Ldebug_info0
	.uleb128	142
# Symbol SDL_SCANCODE_INTERNATIONAL9
	.uleb128	2
	.ascii	"SDL_SCANCODE_INTERNATIONAL9\000"
	.long	.La67-.Ldebug_info0
	.uleb128	143
# Symbol SDL_SCANCODE_LANG1
	.uleb128	2
	.ascii	"SDL_SCANCODE_LANG1\000"
	.long	.La67-.Ldebug_info0
	.uleb128	144
# Symbol SDL_SCANCODE_LANG2
	.uleb128	2
	.ascii	"SDL_SCANCODE_LANG2\000"
	.long	.La67-.Ldebug_info0
	.uleb128	145
# Symbol SDL_SCANCODE_LANG3
	.uleb128	2
	.ascii	"SDL_SCANCODE_LANG3\000"
	.long	.La67-.Ldebug_info0
	.uleb128	146
# Symbol SDL_SCANCODE_LANG4
	.uleb128	2
	.ascii	"SDL_SCANCODE_LANG4\000"
	.long	.La67-.Ldebug_info0
	.uleb128	147
# Symbol SDL_SCANCODE_LANG5
	.uleb128	2
	.ascii	"SDL_SCANCODE_LANG5\000"
	.long	.La67-.Ldebug_info0
	.uleb128	148
# Symbol SDL_SCANCODE_LANG6
	.uleb128	2
	.ascii	"SDL_SCANCODE_LANG6\000"
	.long	.La67-.Ldebug_info0
	.uleb128	149
# Symbol SDL_SCANCODE_LANG7
	.uleb128	2
	.ascii	"SDL_SCANCODE_LANG7\000"
	.long	.La67-.Ldebug_info0
	.uleb128	150
# Symbol SDL_SCANCODE_LANG8
	.uleb128	2
	.ascii	"SDL_SCANCODE_LANG8\000"
	.long	.La67-.Ldebug_info0
	.uleb128	151
# Symbol SDL_SCANCODE_LANG9
	.uleb128	2
	.ascii	"SDL_SCANCODE_LANG9\000"
	.long	.La67-.Ldebug_info0
	.uleb128	152
# Symbol SDL_SCANCODE_ALTERASE
	.uleb128	2
	.ascii	"SDL_SCANCODE_ALTERASE\000"
	.long	.La67-.Ldebug_info0
	.uleb128	153
# Symbol SDL_SCANCODE_SYSREQ
	.uleb128	2
	.ascii	"SDL_SCANCODE_SYSREQ\000"
	.long	.La67-.Ldebug_info0
	.uleb128	154
# Symbol SDL_SCANCODE_CANCEL
	.uleb128	2
	.ascii	"SDL_SCANCODE_CANCEL\000"
	.long	.La67-.Ldebug_info0
	.uleb128	155
# Symbol SDL_SCANCODE_CLEAR
	.uleb128	2
	.ascii	"SDL_SCANCODE_CLEAR\000"
	.long	.La67-.Ldebug_info0
	.uleb128	156
# Symbol SDL_SCANCODE_PRIOR
	.uleb128	2
	.ascii	"SDL_SCANCODE_PRIOR\000"
	.long	.La67-.Ldebug_info0
	.uleb128	157
# Symbol SDL_SCANCODE_RETURN2
	.uleb128	2
	.ascii	"SDL_SCANCODE_RETURN2\000"
	.long	.La67-.Ldebug_info0
	.uleb128	158
# Symbol SDL_SCANCODE_SEPARATOR
	.uleb128	2
	.ascii	"SDL_SCANCODE_SEPARATOR\000"
	.long	.La67-.Ldebug_info0
	.uleb128	159
# Symbol SDL_SCANCODE_OUT
	.uleb128	2
	.ascii	"SDL_SCANCODE_OUT\000"
	.long	.La67-.Ldebug_info0
	.uleb128	160
# Symbol SDL_SCANCODE_OPER
	.uleb128	2
	.ascii	"SDL_SCANCODE_OPER\000"
	.long	.La67-.Ldebug_info0
	.uleb128	161
# Symbol SDL_SCANCODE_CLEARAGAIN
	.uleb128	2
	.ascii	"SDL_SCANCODE_CLEARAGAIN\000"
	.long	.La67-.Ldebug_info0
	.uleb128	162
# Symbol SDL_SCANCODE_CRSEL
	.uleb128	2
	.ascii	"SDL_SCANCODE_CRSEL\000"
	.long	.La67-.Ldebug_info0
	.uleb128	163
# Symbol SDL_SCANCODE_EXSEL
	.uleb128	2
	.ascii	"SDL_SCANCODE_EXSEL\000"
	.long	.La67-.Ldebug_info0
	.uleb128	164
# Symbol SDL_SCANCODE_KP_00
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_00\000"
	.long	.La67-.Ldebug_info0
	.uleb128	176
# Symbol SDL_SCANCODE_KP_000
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_000\000"
	.long	.La67-.Ldebug_info0
	.uleb128	177
# Symbol SDL_SCANCODE_THOUSANDSSEPARATOR
	.uleb128	2
	.ascii	"SDL_SCANCODE_THOUSANDSSEPARATOR\000"
	.long	.La67-.Ldebug_info0
	.uleb128	178
# Symbol SDL_SCANCODE_DECIMALSEPARATOR
	.uleb128	2
	.ascii	"SDL_SCANCODE_DECIMALSEPARATOR\000"
	.long	.La67-.Ldebug_info0
	.uleb128	179
# Symbol SDL_SCANCODE_CURRENCYUNIT
	.uleb128	2
	.ascii	"SDL_SCANCODE_CURRENCYUNIT\000"
	.long	.La67-.Ldebug_info0
	.uleb128	180
# Symbol SDL_SCANCODE_CURRENCYSUBUNIT
	.uleb128	2
	.ascii	"SDL_SCANCODE_CURRENCYSUBUNIT\000"
	.long	.La67-.Ldebug_info0
	.uleb128	181
# Symbol SDL_SCANCODE_KP_LEFTPAREN
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_LEFTPAREN\000"
	.long	.La67-.Ldebug_info0
	.uleb128	182
# Symbol SDL_SCANCODE_KP_RIGHTPAREN
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_RIGHTPAREN\000"
	.long	.La67-.Ldebug_info0
	.uleb128	183
# Symbol SDL_SCANCODE_KP_LEFTBRACE
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_LEFTBRACE\000"
	.long	.La67-.Ldebug_info0
	.uleb128	184
# Symbol SDL_SCANCODE_KP_RIGHTBRACE
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_RIGHTBRACE\000"
	.long	.La67-.Ldebug_info0
	.uleb128	185
# Symbol SDL_SCANCODE_KP_TAB
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_TAB\000"
	.long	.La67-.Ldebug_info0
	.uleb128	186
# Symbol SDL_SCANCODE_KP_BACKSPACE
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_BACKSPACE\000"
	.long	.La67-.Ldebug_info0
	.uleb128	187
# Symbol SDL_SCANCODE_KP_A
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_A\000"
	.long	.La67-.Ldebug_info0
	.uleb128	188
# Symbol SDL_SCANCODE_KP_B
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_B\000"
	.long	.La67-.Ldebug_info0
	.uleb128	189
# Symbol SDL_SCANCODE_KP_C
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_C\000"
	.long	.La67-.Ldebug_info0
	.uleb128	190
# Symbol SDL_SCANCODE_KP_D
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_D\000"
	.long	.La67-.Ldebug_info0
	.uleb128	191
# Symbol SDL_SCANCODE_KP_E
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_E\000"
	.long	.La67-.Ldebug_info0
	.uleb128	192
# Symbol SDL_SCANCODE_KP_F
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_F\000"
	.long	.La67-.Ldebug_info0
	.uleb128	193
# Symbol SDL_SCANCODE_KP_XOR
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_XOR\000"
	.long	.La67-.Ldebug_info0
	.uleb128	194
# Symbol SDL_SCANCODE_KP_POWER
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_POWER\000"
	.long	.La67-.Ldebug_info0
	.uleb128	195
# Symbol SDL_SCANCODE_KP_PERCENT
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_PERCENT\000"
	.long	.La67-.Ldebug_info0
	.uleb128	196
# Symbol SDL_SCANCODE_KP_LESS
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_LESS\000"
	.long	.La67-.Ldebug_info0
	.uleb128	197
# Symbol SDL_SCANCODE_KP_GREATER
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_GREATER\000"
	.long	.La67-.Ldebug_info0
	.uleb128	198
# Symbol SDL_SCANCODE_KP_AMPERSAND
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_AMPERSAND\000"
	.long	.La67-.Ldebug_info0
	.uleb128	199
# Symbol SDL_SCANCODE_KP_DBLAMPERSAND
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_DBLAMPERSAND\000"
	.long	.La67-.Ldebug_info0
	.uleb128	200
# Symbol SDL_SCANCODE_KP_VERTICALBAR
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_VERTICALBAR\000"
	.long	.La67-.Ldebug_info0
	.uleb128	201
# Symbol SDL_SCANCODE_KP_DBLVERTICALBAR
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_DBLVERTICALBAR\000"
	.long	.La67-.Ldebug_info0
	.uleb128	202
# Symbol SDL_SCANCODE_KP_COLON
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_COLON\000"
	.long	.La67-.Ldebug_info0
	.uleb128	203
# Symbol SDL_SCANCODE_KP_HASH
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_HASH\000"
	.long	.La67-.Ldebug_info0
	.uleb128	204
# Symbol SDL_SCANCODE_KP_SPACE
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_SPACE\000"
	.long	.La67-.Ldebug_info0
	.uleb128	205
# Symbol SDL_SCANCODE_KP_AT
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_AT\000"
	.long	.La67-.Ldebug_info0
	.uleb128	206
# Symbol SDL_SCANCODE_KP_EXCLAM
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_EXCLAM\000"
	.long	.La67-.Ldebug_info0
	.uleb128	207
# Symbol SDL_SCANCODE_KP_MEMSTORE
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_MEMSTORE\000"
	.long	.La67-.Ldebug_info0
	.uleb128	208
# Symbol SDL_SCANCODE_KP_MEMRECALL
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_MEMRECALL\000"
	.long	.La67-.Ldebug_info0
	.uleb128	209
# Symbol SDL_SCANCODE_KP_MEMCLEAR
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_MEMCLEAR\000"
	.long	.La67-.Ldebug_info0
	.uleb128	210
# Symbol SDL_SCANCODE_KP_MEMADD
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_MEMADD\000"
	.long	.La67-.Ldebug_info0
	.uleb128	211
# Symbol SDL_SCANCODE_KP_MEMSUBTRACT
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_MEMSUBTRACT\000"
	.long	.La67-.Ldebug_info0
	.uleb128	212
# Symbol SDL_SCANCODE_KP_MEMMULTIPLY
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_MEMMULTIPLY\000"
	.long	.La67-.Ldebug_info0
	.uleb128	213
# Symbol SDL_SCANCODE_KP_MEMDIVIDE
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_MEMDIVIDE\000"
	.long	.La67-.Ldebug_info0
	.uleb128	214
# Symbol SDL_SCANCODE_KP_PLUSMINUS
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_PLUSMINUS\000"
	.long	.La67-.Ldebug_info0
	.uleb128	215
# Symbol SDL_SCANCODE_KP_CLEAR
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_CLEAR\000"
	.long	.La67-.Ldebug_info0
	.uleb128	216
# Symbol SDL_SCANCODE_KP_CLEARENTRY
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_CLEARENTRY\000"
	.long	.La67-.Ldebug_info0
	.uleb128	217
# Symbol SDL_SCANCODE_KP_BINARY
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_BINARY\000"
	.long	.La67-.Ldebug_info0
	.uleb128	218
# Symbol SDL_SCANCODE_KP_OCTAL
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_OCTAL\000"
	.long	.La67-.Ldebug_info0
	.uleb128	219
# Symbol SDL_SCANCODE_KP_DECIMAL
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_DECIMAL\000"
	.long	.La67-.Ldebug_info0
	.uleb128	220
# Symbol SDL_SCANCODE_KP_HEXADECIMAL
	.uleb128	2
	.ascii	"SDL_SCANCODE_KP_HEXADECIMAL\000"
	.long	.La67-.Ldebug_info0
	.uleb128	221
# Symbol SDL_SCANCODE_LCTRL
	.uleb128	2
	.ascii	"SDL_SCANCODE_LCTRL\000"
	.long	.La67-.Ldebug_info0
	.uleb128	224
# Symbol SDL_SCANCODE_LSHIFT
	.uleb128	2
	.ascii	"SDL_SCANCODE_LSHIFT\000"
	.long	.La67-.Ldebug_info0
	.uleb128	225
# Symbol SDL_SCANCODE_LALT
	.uleb128	2
	.ascii	"SDL_SCANCODE_LALT\000"
	.long	.La67-.Ldebug_info0
	.uleb128	226
# Symbol SDL_SCANCODE_LGUI
	.uleb128	2
	.ascii	"SDL_SCANCODE_LGUI\000"
	.long	.La67-.Ldebug_info0
	.uleb128	227
# Symbol SDL_SCANCODE_RCTRL
	.uleb128	2
	.ascii	"SDL_SCANCODE_RCTRL\000"
	.long	.La67-.Ldebug_info0
	.uleb128	228
# Symbol SDL_SCANCODE_RSHIFT
	.uleb128	2
	.ascii	"SDL_SCANCODE_RSHIFT\000"
	.long	.La67-.Ldebug_info0
	.uleb128	229
# Symbol SDL_SCANCODE_RALT
	.uleb128	2
	.ascii	"SDL_SCANCODE_RALT\000"
	.long	.La67-.Ldebug_info0
	.uleb128	230
# Symbol SDL_SCANCODE_RGUI
	.uleb128	2
	.ascii	"SDL_SCANCODE_RGUI\000"
	.long	.La67-.Ldebug_info0
	.uleb128	231
# Symbol SDL_SCANCODE_MODE
	.uleb128	2
	.ascii	"SDL_SCANCODE_MODE\000"
	.long	.La15-.Ldebug_info0
	.uleb128	257
# Symbol SDL_SCANCODE_AUDIONEXT
	.uleb128	2
	.ascii	"SDL_SCANCODE_AUDIONEXT\000"
	.long	.La15-.Ldebug_info0
	.uleb128	258
# Symbol SDL_SCANCODE_AUDIOPREV
	.uleb128	2
	.ascii	"SDL_SCANCODE_AUDIOPREV\000"
	.long	.La15-.Ldebug_info0
	.uleb128	259
# Symbol SDL_SCANCODE_AUDIOSTOP
	.uleb128	2
	.ascii	"SDL_SCANCODE_AUDIOSTOP\000"
	.long	.La15-.Ldebug_info0
	.uleb128	260
# Symbol SDL_SCANCODE_AUDIOPLAY
	.uleb128	2
	.ascii	"SDL_SCANCODE_AUDIOPLAY\000"
	.long	.La15-.Ldebug_info0
	.uleb128	261
# Symbol SDL_SCANCODE_AUDIOMUTE
	.uleb128	2
	.ascii	"SDL_SCANCODE_AUDIOMUTE\000"
	.long	.La15-.Ldebug_info0
	.uleb128	262
# Symbol SDL_SCANCODE_MEDIASELECT
	.uleb128	2
	.ascii	"SDL_SCANCODE_MEDIASELECT\000"
	.long	.La15-.Ldebug_info0
	.uleb128	263
# Symbol SDL_SCANCODE_WWW
	.uleb128	2
	.ascii	"SDL_SCANCODE_WWW\000"
	.long	.La15-.Ldebug_info0
	.uleb128	264
# Symbol SDL_SCANCODE_MAIL
	.uleb128	2
	.ascii	"SDL_SCANCODE_MAIL\000"
	.long	.La15-.Ldebug_info0
	.uleb128	265
# Symbol SDL_SCANCODE_CALCULATOR
	.uleb128	2
	.ascii	"SDL_SCANCODE_CALCULATOR\000"
	.long	.La15-.Ldebug_info0
	.uleb128	266
# Symbol SDL_SCANCODE_COMPUTER
	.uleb128	2
	.ascii	"SDL_SCANCODE_COMPUTER\000"
	.long	.La15-.Ldebug_info0
	.uleb128	267
# Symbol SDL_SCANCODE_AC_SEARCH
	.uleb128	2
	.ascii	"SDL_SCANCODE_AC_SEARCH\000"
	.long	.La15-.Ldebug_info0
	.uleb128	268
# Symbol SDL_SCANCODE_AC_HOME
	.uleb128	2
	.ascii	"SDL_SCANCODE_AC_HOME\000"
	.long	.La15-.Ldebug_info0
	.uleb128	269
# Symbol SDL_SCANCODE_AC_BACK
	.uleb128	2
	.ascii	"SDL_SCANCODE_AC_BACK\000"
	.long	.La15-.Ldebug_info0
	.uleb128	270
# Symbol SDL_SCANCODE_AC_FORWARD
	.uleb128	2
	.ascii	"SDL_SCANCODE_AC_FORWARD\000"
	.long	.La15-.Ldebug_info0
	.uleb128	271
# Symbol SDL_SCANCODE_AC_STOP
	.uleb128	2
	.ascii	"SDL_SCANCODE_AC_STOP\000"
	.long	.La15-.Ldebug_info0
	.uleb128	272
# Symbol SDL_SCANCODE_AC_REFRESH
	.uleb128	2
	.ascii	"SDL_SCANCODE_AC_REFRESH\000"
	.long	.La15-.Ldebug_info0
	.uleb128	273
# Symbol SDL_SCANCODE_AC_BOOKMARKS
	.uleb128	2
	.ascii	"SDL_SCANCODE_AC_BOOKMARKS\000"
	.long	.La15-.Ldebug_info0
	.uleb128	274
# Symbol SDL_SCANCODE_BRIGHTNESSDOWN
	.uleb128	2
	.ascii	"SDL_SCANCODE_BRIGHTNESSDOWN\000"
	.long	.La15-.Ldebug_info0
	.uleb128	275
# Symbol SDL_SCANCODE_BRIGHTNESSUP
	.uleb128	2
	.ascii	"SDL_SCANCODE_BRIGHTNESSUP\000"
	.long	.La15-.Ldebug_info0
	.uleb128	276
# Symbol SDL_SCANCODE_DISPLAYSWITCH
	.uleb128	2
	.ascii	"SDL_SCANCODE_DISPLAYSWITCH\000"
	.long	.La15-.Ldebug_info0
	.uleb128	277
# Symbol SDL_SCANCODE_KBDILLUMTOGGLE
	.uleb128	2
	.ascii	"SDL_SCANCODE_KBDILLUMTOGGLE\000"
	.long	.La15-.Ldebug_info0
	.uleb128	278
# Symbol SDL_SCANCODE_KBDILLUMDOWN
	.uleb128	2
	.ascii	"SDL_SCANCODE_KBDILLUMDOWN\000"
	.long	.La15-.Ldebug_info0
	.uleb128	279
# Symbol SDL_SCANCODE_KBDILLUMUP
	.uleb128	2
	.ascii	"SDL_SCANCODE_KBDILLUMUP\000"
	.long	.La15-.Ldebug_info0
	.uleb128	280
# Symbol SDL_SCANCODE_EJECT
	.uleb128	2
	.ascii	"SDL_SCANCODE_EJECT\000"
	.long	.La15-.Ldebug_info0
	.uleb128	281
# Symbol SDL_SCANCODE_SLEEP
	.uleb128	2
	.ascii	"SDL_SCANCODE_SLEEP\000"
	.long	.La15-.Ldebug_info0
	.uleb128	282
# Symbol SDL_SCANCODE_APP1
	.uleb128	2
	.ascii	"SDL_SCANCODE_APP1\000"
	.long	.La15-.Ldebug_info0
	.uleb128	283
# Symbol SDL_SCANCODE_APP2
	.uleb128	2
	.ascii	"SDL_SCANCODE_APP2\000"
	.long	.La15-.Ldebug_info0
	.uleb128	284
# Symbol SDL_NUM_SCANCODES
	.uleb128	2
	.ascii	"SDL_NUM_SCANCODES\000"
	.long	.La15-.Ldebug_info0
	.uleb128	512
# Symbol SDLK_UNKNOWN
	.uleb128	2
	.ascii	"SDLK_UNKNOWN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDLK_RETURN
	.uleb128	2
	.ascii	"SDLK_RETURN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	13
# Symbol SDLK_ESCAPE
	.uleb128	2
	.ascii	"SDLK_ESCAPE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	27
# Symbol SDLK_BACKSPACE
	.uleb128	2
	.ascii	"SDLK_BACKSPACE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	8
# Symbol SDLK_TAB
	.uleb128	2
	.ascii	"SDLK_TAB\000"
	.long	.La1-.Ldebug_info0
	.uleb128	9
# Symbol SDLK_SPACE
	.uleb128	2
	.ascii	"SDLK_SPACE\000"
	.long	.La67-.Ldebug_info0
	.uleb128	32
# Symbol SDLK_EXCLAIM
	.uleb128	2
	.ascii	"SDLK_EXCLAIM\000"
	.long	.La67-.Ldebug_info0
	.uleb128	33
# Symbol SDLK_QUOTEDBL
	.uleb128	2
	.ascii	"SDLK_QUOTEDBL\000"
	.long	.La67-.Ldebug_info0
	.uleb128	34
# Symbol SDLK_HASH
	.uleb128	2
	.ascii	"SDLK_HASH\000"
	.long	.La67-.Ldebug_info0
	.uleb128	35
# Symbol SDLK_DOLLAR
	.uleb128	2
	.ascii	"SDLK_DOLLAR\000"
	.long	.La67-.Ldebug_info0
	.uleb128	36
# Symbol SDLK_PERCENT
	.uleb128	2
	.ascii	"SDLK_PERCENT\000"
	.long	.La67-.Ldebug_info0
	.uleb128	37
# Symbol SDLK_AMPERSAND
	.uleb128	2
	.ascii	"SDLK_AMPERSAND\000"
	.long	.La67-.Ldebug_info0
	.uleb128	38
# Symbol SDLK_QUOTE
	.uleb128	2
	.ascii	"SDLK_QUOTE\000"
	.long	.La67-.Ldebug_info0
	.uleb128	39
# Symbol SDLK_LEFTPAREN
	.uleb128	2
	.ascii	"SDLK_LEFTPAREN\000"
	.long	.La67-.Ldebug_info0
	.uleb128	40
# Symbol SDLK_RIGHTPAREN
	.uleb128	2
	.ascii	"SDLK_RIGHTPAREN\000"
	.long	.La67-.Ldebug_info0
	.uleb128	41
# Symbol SDLK_ASTERISK
	.uleb128	2
	.ascii	"SDLK_ASTERISK\000"
	.long	.La67-.Ldebug_info0
	.uleb128	42
# Symbol SDLK_PLUS
	.uleb128	2
	.ascii	"SDLK_PLUS\000"
	.long	.La67-.Ldebug_info0
	.uleb128	43
# Symbol SDLK_COMMA
	.uleb128	2
	.ascii	"SDLK_COMMA\000"
	.long	.La67-.Ldebug_info0
	.uleb128	44
# Symbol SDLK_MINUS
	.uleb128	2
	.ascii	"SDLK_MINUS\000"
	.long	.La67-.Ldebug_info0
	.uleb128	45
# Symbol SDLK_PERIOD
	.uleb128	2
	.ascii	"SDLK_PERIOD\000"
	.long	.La67-.Ldebug_info0
	.uleb128	46
# Symbol SDLK_SLASH
	.uleb128	2
	.ascii	"SDLK_SLASH\000"
	.long	.La67-.Ldebug_info0
	.uleb128	47
# Symbol SDLK_0
	.uleb128	2
	.ascii	"SDLK_0\000"
	.long	.La67-.Ldebug_info0
	.uleb128	48
# Symbol SDLK_1
	.uleb128	2
	.ascii	"SDLK_1\000"
	.long	.La67-.Ldebug_info0
	.uleb128	49
# Symbol SDLK_2
	.uleb128	2
	.ascii	"SDLK_2\000"
	.long	.La67-.Ldebug_info0
	.uleb128	50
# Symbol SDLK_3
	.uleb128	2
	.ascii	"SDLK_3\000"
	.long	.La67-.Ldebug_info0
	.uleb128	51
# Symbol SDLK_4
	.uleb128	2
	.ascii	"SDLK_4\000"
	.long	.La67-.Ldebug_info0
	.uleb128	52
# Symbol SDLK_5
	.uleb128	2
	.ascii	"SDLK_5\000"
	.long	.La67-.Ldebug_info0
	.uleb128	53
# Symbol SDLK_6
	.uleb128	2
	.ascii	"SDLK_6\000"
	.long	.La67-.Ldebug_info0
	.uleb128	54
# Symbol SDLK_7
	.uleb128	2
	.ascii	"SDLK_7\000"
	.long	.La67-.Ldebug_info0
	.uleb128	55
# Symbol SDLK_8
	.uleb128	2
	.ascii	"SDLK_8\000"
	.long	.La67-.Ldebug_info0
	.uleb128	56
# Symbol SDLK_9
	.uleb128	2
	.ascii	"SDLK_9\000"
	.long	.La67-.Ldebug_info0
	.uleb128	57
# Symbol SDLK_COLON
	.uleb128	2
	.ascii	"SDLK_COLON\000"
	.long	.La67-.Ldebug_info0
	.uleb128	58
# Symbol SDLK_SEMICOLON
	.uleb128	2
	.ascii	"SDLK_SEMICOLON\000"
	.long	.La67-.Ldebug_info0
	.uleb128	59
# Symbol SDLK_LESS
	.uleb128	2
	.ascii	"SDLK_LESS\000"
	.long	.La67-.Ldebug_info0
	.uleb128	60
# Symbol SDLK_EQUALS
	.uleb128	2
	.ascii	"SDLK_EQUALS\000"
	.long	.La67-.Ldebug_info0
	.uleb128	61
# Symbol SDLK_GREATER
	.uleb128	2
	.ascii	"SDLK_GREATER\000"
	.long	.La67-.Ldebug_info0
	.uleb128	62
# Symbol SDLK_QUESTION
	.uleb128	2
	.ascii	"SDLK_QUESTION\000"
	.long	.La67-.Ldebug_info0
	.uleb128	63
# Symbol SDLK_AT
	.uleb128	2
	.ascii	"SDLK_AT\000"
	.long	.La67-.Ldebug_info0
	.uleb128	64
# Symbol SDLK_LEFTBRACKET
	.uleb128	2
	.ascii	"SDLK_LEFTBRACKET\000"
	.long	.La67-.Ldebug_info0
	.uleb128	91
# Symbol SDLK_BACKSLASH
	.uleb128	2
	.ascii	"SDLK_BACKSLASH\000"
	.long	.La67-.Ldebug_info0
	.uleb128	92
# Symbol SDLK_RIGHTBRACKET
	.uleb128	2
	.ascii	"SDLK_RIGHTBRACKET\000"
	.long	.La67-.Ldebug_info0
	.uleb128	93
# Symbol SDLK_CARET
	.uleb128	2
	.ascii	"SDLK_CARET\000"
	.long	.La67-.Ldebug_info0
	.uleb128	94
# Symbol SDLK_UNDERSCORE
	.uleb128	2
	.ascii	"SDLK_UNDERSCORE\000"
	.long	.La67-.Ldebug_info0
	.uleb128	95
# Symbol SDLK_BACKQUOTE
	.uleb128	2
	.ascii	"SDLK_BACKQUOTE\000"
	.long	.La67-.Ldebug_info0
	.uleb128	96
# Symbol SDLK_A
	.uleb128	2
	.ascii	"SDLK_A\000"
	.long	.La67-.Ldebug_info0
	.uleb128	97
# Symbol SDLK_B
	.uleb128	2
	.ascii	"SDLK_B\000"
	.long	.La67-.Ldebug_info0
	.uleb128	98
# Symbol SDLK_C
	.uleb128	2
	.ascii	"SDLK_C\000"
	.long	.La67-.Ldebug_info0
	.uleb128	99
# Symbol SDLK_D
	.uleb128	2
	.ascii	"SDLK_D\000"
	.long	.La67-.Ldebug_info0
	.uleb128	100
# Symbol SDLK_E
	.uleb128	2
	.ascii	"SDLK_E\000"
	.long	.La67-.Ldebug_info0
	.uleb128	101
# Symbol SDLK_F
	.uleb128	2
	.ascii	"SDLK_F\000"
	.long	.La67-.Ldebug_info0
	.uleb128	102
# Symbol SDLK_G
	.uleb128	2
	.ascii	"SDLK_G\000"
	.long	.La67-.Ldebug_info0
	.uleb128	103
# Symbol SDLK_H
	.uleb128	2
	.ascii	"SDLK_H\000"
	.long	.La67-.Ldebug_info0
	.uleb128	104
# Symbol SDLK_I
	.uleb128	2
	.ascii	"SDLK_I\000"
	.long	.La67-.Ldebug_info0
	.uleb128	105
# Symbol SDLK_J
	.uleb128	2
	.ascii	"SDLK_J\000"
	.long	.La67-.Ldebug_info0
	.uleb128	106
# Symbol SDLK_K
	.uleb128	2
	.ascii	"SDLK_K\000"
	.long	.La67-.Ldebug_info0
	.uleb128	107
# Symbol SDLK_L
	.uleb128	2
	.ascii	"SDLK_L\000"
	.long	.La67-.Ldebug_info0
	.uleb128	108
# Symbol SDLK_M
	.uleb128	2
	.ascii	"SDLK_M\000"
	.long	.La67-.Ldebug_info0
	.uleb128	109
# Symbol SDLK_N
	.uleb128	2
	.ascii	"SDLK_N\000"
	.long	.La67-.Ldebug_info0
	.uleb128	110
# Symbol SDLK_O
	.uleb128	2
	.ascii	"SDLK_O\000"
	.long	.La67-.Ldebug_info0
	.uleb128	111
# Symbol SDLK_P
	.uleb128	2
	.ascii	"SDLK_P\000"
	.long	.La67-.Ldebug_info0
	.uleb128	112
# Symbol SDLK_Q
	.uleb128	2
	.ascii	"SDLK_Q\000"
	.long	.La67-.Ldebug_info0
	.uleb128	113
# Symbol SDLK_R
	.uleb128	2
	.ascii	"SDLK_R\000"
	.long	.La67-.Ldebug_info0
	.uleb128	114
# Symbol SDLK_S
	.uleb128	2
	.ascii	"SDLK_S\000"
	.long	.La67-.Ldebug_info0
	.uleb128	115
# Symbol SDLK_T
	.uleb128	2
	.ascii	"SDLK_T\000"
	.long	.La67-.Ldebug_info0
	.uleb128	116
# Symbol SDLK_U
	.uleb128	2
	.ascii	"SDLK_U\000"
	.long	.La67-.Ldebug_info0
	.uleb128	117
# Symbol SDLK_V
	.uleb128	2
	.ascii	"SDLK_V\000"
	.long	.La67-.Ldebug_info0
	.uleb128	118
# Symbol SDLK_W
	.uleb128	2
	.ascii	"SDLK_W\000"
	.long	.La67-.Ldebug_info0
	.uleb128	119
# Symbol SDLK_X
	.uleb128	2
	.ascii	"SDLK_X\000"
	.long	.La67-.Ldebug_info0
	.uleb128	120
# Symbol SDLK_Y
	.uleb128	2
	.ascii	"SDLK_Y\000"
	.long	.La67-.Ldebug_info0
	.uleb128	121
# Symbol SDLK_Z
	.uleb128	2
	.ascii	"SDLK_Z\000"
	.long	.La67-.Ldebug_info0
	.uleb128	122
# Symbol SDLK_CAPSLOCK
	.uleb128	2
	.ascii	"SDLK_CAPSLOCK\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741881
# Symbol SDLK_F1
	.uleb128	2
	.ascii	"SDLK_F1\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741882
# Symbol SDLK_F2
	.uleb128	2
	.ascii	"SDLK_F2\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741883
# Symbol SDLK_F3
	.uleb128	2
	.ascii	"SDLK_F3\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741884
# Symbol SDLK_F4
	.uleb128	2
	.ascii	"SDLK_F4\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741885
# Symbol SDLK_F5
	.uleb128	2
	.ascii	"SDLK_F5\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741886
# Symbol SDLK_F6
	.uleb128	2
	.ascii	"SDLK_F6\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741887
# Symbol SDLK_F7
	.uleb128	2
	.ascii	"SDLK_F7\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741888
# Symbol SDLK_F8
	.uleb128	2
	.ascii	"SDLK_F8\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741889
# Symbol SDLK_F9
	.uleb128	2
	.ascii	"SDLK_F9\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741890
# Symbol SDLK_F10
	.uleb128	2
	.ascii	"SDLK_F10\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741891
# Symbol SDLK_F11
	.uleb128	2
	.ascii	"SDLK_F11\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741892
# Symbol SDLK_F12
	.uleb128	2
	.ascii	"SDLK_F12\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741893
# Symbol SDLK_PRINTSCREEN
	.uleb128	2
	.ascii	"SDLK_PRINTSCREEN\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741894
# Symbol SDLK_SCROLLLOCK
	.uleb128	2
	.ascii	"SDLK_SCROLLLOCK\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741895
# Symbol SDLK_PAUSE
	.uleb128	2
	.ascii	"SDLK_PAUSE\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741896
# Symbol SDLK_INSERT
	.uleb128	2
	.ascii	"SDLK_INSERT\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741897
# Symbol SDLK_HOME
	.uleb128	2
	.ascii	"SDLK_HOME\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741898
# Symbol SDLK_PAGEUP
	.uleb128	2
	.ascii	"SDLK_PAGEUP\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741899
# Symbol SDLK_DELETE
	.uleb128	2
	.ascii	"SDLK_DELETE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	127
# Symbol SDLK_END
	.uleb128	2
	.ascii	"SDLK_END\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741901
# Symbol SDLK_PAGEDOWN
	.uleb128	2
	.ascii	"SDLK_PAGEDOWN\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741902
# Symbol SDLK_RIGHT
	.uleb128	2
	.ascii	"SDLK_RIGHT\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741903
# Symbol SDLK_LEFT
	.uleb128	2
	.ascii	"SDLK_LEFT\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741904
# Symbol SDLK_DOWN
	.uleb128	2
	.ascii	"SDLK_DOWN\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741905
# Symbol SDLK_UP
	.uleb128	2
	.ascii	"SDLK_UP\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741906
# Symbol SDLK_NUMLOCKCLEAR
	.uleb128	2
	.ascii	"SDLK_NUMLOCKCLEAR\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741907
# Symbol SDLK_KP_DIVIDE
	.uleb128	2
	.ascii	"SDLK_KP_DIVIDE\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741908
# Symbol SDLK_KP_MULTIPLY
	.uleb128	2
	.ascii	"SDLK_KP_MULTIPLY\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741909
# Symbol SDLK_KP_MINUS
	.uleb128	2
	.ascii	"SDLK_KP_MINUS\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741910
# Symbol SDLK_KP_PLUS
	.uleb128	2
	.ascii	"SDLK_KP_PLUS\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741911
# Symbol SDLK_KP_ENTER
	.uleb128	2
	.ascii	"SDLK_KP_ENTER\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741912
# Symbol SDLK_KP_1
	.uleb128	2
	.ascii	"SDLK_KP_1\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741913
# Symbol SDLK_KP_2
	.uleb128	2
	.ascii	"SDLK_KP_2\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741914
# Symbol SDLK_KP_3
	.uleb128	2
	.ascii	"SDLK_KP_3\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741915
# Symbol SDLK_KP_4
	.uleb128	2
	.ascii	"SDLK_KP_4\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741916
# Symbol SDLK_KP_5
	.uleb128	2
	.ascii	"SDLK_KP_5\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741917
# Symbol SDLK_KP_6
	.uleb128	2
	.ascii	"SDLK_KP_6\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741918
# Symbol SDLK_KP_7
	.uleb128	2
	.ascii	"SDLK_KP_7\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741919
# Symbol SDLK_KP_8
	.uleb128	2
	.ascii	"SDLK_KP_8\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741920
# Symbol SDLK_KP_9
	.uleb128	2
	.ascii	"SDLK_KP_9\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741921
# Symbol SDLK_KP_0
	.uleb128	2
	.ascii	"SDLK_KP_0\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741922
# Symbol SDLK_KP_PERIOD
	.uleb128	2
	.ascii	"SDLK_KP_PERIOD\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741923
# Symbol SDLK_APPLICATION
	.uleb128	2
	.ascii	"SDLK_APPLICATION\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741925
# Symbol SDLK_POWER
	.uleb128	2
	.ascii	"SDLK_POWER\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741926
# Symbol SDLK_KP_EQUALS
	.uleb128	2
	.ascii	"SDLK_KP_EQUALS\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741927
# Symbol SDLK_F13
	.uleb128	2
	.ascii	"SDLK_F13\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741928
# Symbol SDLK_F14
	.uleb128	2
	.ascii	"SDLK_F14\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741929
# Symbol SDLK_F15
	.uleb128	2
	.ascii	"SDLK_F15\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741930
# Symbol SDLK_F16
	.uleb128	2
	.ascii	"SDLK_F16\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741931
# Symbol SDLK_F17
	.uleb128	2
	.ascii	"SDLK_F17\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741932
# Symbol SDLK_F18
	.uleb128	2
	.ascii	"SDLK_F18\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741933
# Symbol SDLK_F19
	.uleb128	2
	.ascii	"SDLK_F19\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741934
# Symbol SDLK_F20
	.uleb128	2
	.ascii	"SDLK_F20\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741935
# Symbol SDLK_F21
	.uleb128	2
	.ascii	"SDLK_F21\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741936
# Symbol SDLK_F22
	.uleb128	2
	.ascii	"SDLK_F22\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741937
# Symbol SDLK_F23
	.uleb128	2
	.ascii	"SDLK_F23\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741938
# Symbol SDLK_F24
	.uleb128	2
	.ascii	"SDLK_F24\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741939
# Symbol SDLK_EXECUTE
	.uleb128	2
	.ascii	"SDLK_EXECUTE\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741940
# Symbol SDLK_HELP
	.uleb128	2
	.ascii	"SDLK_HELP\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741941
# Symbol SDLK_MENU
	.uleb128	2
	.ascii	"SDLK_MENU\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741942
# Symbol SDLK_SELECT
	.uleb128	2
	.ascii	"SDLK_SELECT\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741943
# Symbol SDLK_STOP
	.uleb128	2
	.ascii	"SDLK_STOP\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741944
# Symbol SDLK_AGAIN
	.uleb128	2
	.ascii	"SDLK_AGAIN\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741945
# Symbol SDLK_UNDO
	.uleb128	2
	.ascii	"SDLK_UNDO\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741946
# Symbol SDLK_CUT
	.uleb128	2
	.ascii	"SDLK_CUT\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741947
# Symbol SDLK_COPY
	.uleb128	2
	.ascii	"SDLK_COPY\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741948
# Symbol SDLK_PASTE
	.uleb128	2
	.ascii	"SDLK_PASTE\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741949
# Symbol SDLK_FIND
	.uleb128	2
	.ascii	"SDLK_FIND\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741950
# Symbol SDLK_MUTE
	.uleb128	2
	.ascii	"SDLK_MUTE\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741951
# Symbol SDLK_VOLUMEUP
	.uleb128	2
	.ascii	"SDLK_VOLUMEUP\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741952
# Symbol SDLK_VOLUMEDOWN
	.uleb128	2
	.ascii	"SDLK_VOLUMEDOWN\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741953
# Symbol SDLK_KP_COMMA
	.uleb128	2
	.ascii	"SDLK_KP_COMMA\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741957
# Symbol SDLK_KP_EQUALSAS400
	.uleb128	2
	.ascii	"SDLK_KP_EQUALSAS400\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741958
# Symbol SDLK_ALTERASE
	.uleb128	2
	.ascii	"SDLK_ALTERASE\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741977
# Symbol SDLK_SYSREQ
	.uleb128	2
	.ascii	"SDLK_SYSREQ\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741978
# Symbol SDLK_CANCEL
	.uleb128	2
	.ascii	"SDLK_CANCEL\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741979
# Symbol SDLK_CLEAR
	.uleb128	2
	.ascii	"SDLK_CLEAR\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741980
# Symbol SDLK_PRIOR
	.uleb128	2
	.ascii	"SDLK_PRIOR\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741981
# Symbol SDLK_RETURN2
	.uleb128	2
	.ascii	"SDLK_RETURN2\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741982
# Symbol SDLK_SEPARATOR
	.uleb128	2
	.ascii	"SDLK_SEPARATOR\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741983
# Symbol SDLK_OUT
	.uleb128	2
	.ascii	"SDLK_OUT\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741984
# Symbol SDLK_OPER
	.uleb128	2
	.ascii	"SDLK_OPER\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741985
# Symbol SDLK_CLEARAGAIN
	.uleb128	2
	.ascii	"SDLK_CLEARAGAIN\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741986
# Symbol SDLK_CRSEL
	.uleb128	2
	.ascii	"SDLK_CRSEL\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741987
# Symbol SDLK_EXSEL
	.uleb128	2
	.ascii	"SDLK_EXSEL\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073741988
# Symbol SDLK_KP_00
	.uleb128	2
	.ascii	"SDLK_KP_00\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742000
# Symbol SDLK_KP_000
	.uleb128	2
	.ascii	"SDLK_KP_000\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742001
# Symbol SDLK_THOUSANDSSEPARATOR
	.uleb128	2
	.ascii	"SDLK_THOUSANDSSEPARATOR\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742002
# Symbol SDLK_DECIMALSEPARATOR
	.uleb128	2
	.ascii	"SDLK_DECIMALSEPARATOR\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742003
# Symbol SDLK_CURRENCYUNIT
	.uleb128	2
	.ascii	"SDLK_CURRENCYUNIT\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742004
# Symbol SDLK_CURRENCYSUBUNIT
	.uleb128	2
	.ascii	"SDLK_CURRENCYSUBUNIT\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742005
# Symbol SDLK_KP_LEFTPAREN
	.uleb128	2
	.ascii	"SDLK_KP_LEFTPAREN\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742006
# Symbol SDLK_KP_RIGHTPAREN
	.uleb128	2
	.ascii	"SDLK_KP_RIGHTPAREN\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742007
# Symbol SDLK_KP_LEFTBRACE
	.uleb128	2
	.ascii	"SDLK_KP_LEFTBRACE\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742008
# Symbol SDLK_KP_RIGHTBRACE
	.uleb128	2
	.ascii	"SDLK_KP_RIGHTBRACE\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742009
# Symbol SDLK_KP_TAB
	.uleb128	2
	.ascii	"SDLK_KP_TAB\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742010
# Symbol SDLK_KP_BACKSPACE
	.uleb128	2
	.ascii	"SDLK_KP_BACKSPACE\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742011
# Symbol SDLK_KP_A
	.uleb128	2
	.ascii	"SDLK_KP_A\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742012
# Symbol SDLK_KP_B
	.uleb128	2
	.ascii	"SDLK_KP_B\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742013
# Symbol SDLK_KP_C
	.uleb128	2
	.ascii	"SDLK_KP_C\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742014
# Symbol SDLK_KP_D
	.uleb128	2
	.ascii	"SDLK_KP_D\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742015
# Symbol SDLK_KP_E
	.uleb128	2
	.ascii	"SDLK_KP_E\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742016
# Symbol SDLK_KP_F
	.uleb128	2
	.ascii	"SDLK_KP_F\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742017
# Symbol SDLK_KP_XOR
	.uleb128	2
	.ascii	"SDLK_KP_XOR\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742018
# Symbol SDLK_KP_POWER
	.uleb128	2
	.ascii	"SDLK_KP_POWER\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742019
# Symbol SDLK_KP_PERCENT
	.uleb128	2
	.ascii	"SDLK_KP_PERCENT\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742020
# Symbol SDLK_KP_LESS
	.uleb128	2
	.ascii	"SDLK_KP_LESS\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742021
# Symbol SDLK_KP_GREATER
	.uleb128	2
	.ascii	"SDLK_KP_GREATER\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742022
# Symbol SDLK_KP_AMPERSAND
	.uleb128	2
	.ascii	"SDLK_KP_AMPERSAND\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742023
# Symbol SDLK_KP_DBLAMPERSAND
	.uleb128	2
	.ascii	"SDLK_KP_DBLAMPERSAND\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742024
# Symbol SDLK_KP_VERTICALBAR
	.uleb128	2
	.ascii	"SDLK_KP_VERTICALBAR\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742025
# Symbol SDLK_KP_DBLVERTICALBAR
	.uleb128	2
	.ascii	"SDLK_KP_DBLVERTICALBAR\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742026
# Symbol SDLK_KP_COLON
	.uleb128	2
	.ascii	"SDLK_KP_COLON\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742027
# Symbol SDLK_KP_HASH
	.uleb128	2
	.ascii	"SDLK_KP_HASH\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742028
# Symbol SDLK_KP_SPACE
	.uleb128	2
	.ascii	"SDLK_KP_SPACE\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742029
# Symbol SDLK_KP_AT
	.uleb128	2
	.ascii	"SDLK_KP_AT\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742030
# Symbol SDLK_KP_EXCLAM
	.uleb128	2
	.ascii	"SDLK_KP_EXCLAM\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742031
# Symbol SDLK_KP_MEMSTORE
	.uleb128	2
	.ascii	"SDLK_KP_MEMSTORE\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742032
# Symbol SDLK_KP_MEMRECALL
	.uleb128	2
	.ascii	"SDLK_KP_MEMRECALL\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742033
# Symbol SDLK_KP_MEMCLEAR
	.uleb128	2
	.ascii	"SDLK_KP_MEMCLEAR\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742034
# Symbol SDLK_KP_MEMADD
	.uleb128	2
	.ascii	"SDLK_KP_MEMADD\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742035
# Symbol SDLK_KP_MEMSUBTRACT
	.uleb128	2
	.ascii	"SDLK_KP_MEMSUBTRACT\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742036
# Symbol SDLK_KP_MEMMULTIPLY
	.uleb128	2
	.ascii	"SDLK_KP_MEMMULTIPLY\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742037
# Symbol SDLK_KP_MEMDIVIDE
	.uleb128	2
	.ascii	"SDLK_KP_MEMDIVIDE\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742038
# Symbol SDLK_KP_PLUSMINUS
	.uleb128	2
	.ascii	"SDLK_KP_PLUSMINUS\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742039
# Symbol SDLK_KP_CLEAR
	.uleb128	2
	.ascii	"SDLK_KP_CLEAR\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742040
# Symbol SDLK_KP_CLEARENTRY
	.uleb128	2
	.ascii	"SDLK_KP_CLEARENTRY\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742041
# Symbol SDLK_KP_BINARY
	.uleb128	2
	.ascii	"SDLK_KP_BINARY\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742042
# Symbol SDLK_KP_OCTAL
	.uleb128	2
	.ascii	"SDLK_KP_OCTAL\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742043
# Symbol SDLK_KP_DECIMAL
	.uleb128	2
	.ascii	"SDLK_KP_DECIMAL\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742044
# Symbol SDLK_KP_HEXADECIMAL
	.uleb128	2
	.ascii	"SDLK_KP_HEXADECIMAL\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742045
# Symbol SDLK_LCTRL
	.uleb128	2
	.ascii	"SDLK_LCTRL\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742048
# Symbol SDLK_LSHIFT
	.uleb128	2
	.ascii	"SDLK_LSHIFT\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742049
# Symbol SDLK_LALT
	.uleb128	2
	.ascii	"SDLK_LALT\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742050
# Symbol SDLK_LGUI
	.uleb128	2
	.ascii	"SDLK_LGUI\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742051
# Symbol SDLK_RCTRL
	.uleb128	2
	.ascii	"SDLK_RCTRL\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742052
# Symbol SDLK_RSHIFT
	.uleb128	2
	.ascii	"SDLK_RSHIFT\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742053
# Symbol SDLK_RALT
	.uleb128	2
	.ascii	"SDLK_RALT\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742054
# Symbol SDLK_RGUI
	.uleb128	2
	.ascii	"SDLK_RGUI\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742055
# Symbol SDLK_MODE
	.uleb128	2
	.ascii	"SDLK_MODE\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742081
# Symbol SDLK_AUDIONEXT
	.uleb128	2
	.ascii	"SDLK_AUDIONEXT\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742082
# Symbol SDLK_AUDIOPREV
	.uleb128	2
	.ascii	"SDLK_AUDIOPREV\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742083
# Symbol SDLK_AUDIOSTOP
	.uleb128	2
	.ascii	"SDLK_AUDIOSTOP\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742084
# Symbol SDLK_AUDIOPLAY
	.uleb128	2
	.ascii	"SDLK_AUDIOPLAY\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742085
# Symbol SDLK_AUDIOMUTE
	.uleb128	2
	.ascii	"SDLK_AUDIOMUTE\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742086
# Symbol SDLK_MEDIASELECT
	.uleb128	2
	.ascii	"SDLK_MEDIASELECT\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742087
# Symbol SDLK_WWW
	.uleb128	2
	.ascii	"SDLK_WWW\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742088
# Symbol SDLK_MAIL
	.uleb128	2
	.ascii	"SDLK_MAIL\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742089
# Symbol SDLK_CALCULATOR
	.uleb128	2
	.ascii	"SDLK_CALCULATOR\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742090
# Symbol SDLK_COMPUTER
	.uleb128	2
	.ascii	"SDLK_COMPUTER\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742091
# Symbol SDLK_AC_SEARCH
	.uleb128	2
	.ascii	"SDLK_AC_SEARCH\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742092
# Symbol SDLK_AC_HOME
	.uleb128	2
	.ascii	"SDLK_AC_HOME\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742093
# Symbol SDLK_AC_BACK
	.uleb128	2
	.ascii	"SDLK_AC_BACK\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742094
# Symbol SDLK_AC_FORWARD
	.uleb128	2
	.ascii	"SDLK_AC_FORWARD\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742095
# Symbol SDLK_AC_STOP
	.uleb128	2
	.ascii	"SDLK_AC_STOP\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742096
# Symbol SDLK_AC_REFRESH
	.uleb128	2
	.ascii	"SDLK_AC_REFRESH\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742097
# Symbol SDLK_AC_BOOKMARKS
	.uleb128	2
	.ascii	"SDLK_AC_BOOKMARKS\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742098
# Symbol SDLK_BRIGHTNESSDOWN
	.uleb128	2
	.ascii	"SDLK_BRIGHTNESSDOWN\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742099
# Symbol SDLK_BRIGHTNESSUP
	.uleb128	2
	.ascii	"SDLK_BRIGHTNESSUP\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742100
# Symbol SDLK_DISPLAYSWITCH
	.uleb128	2
	.ascii	"SDLK_DISPLAYSWITCH\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742101
# Symbol SDLK_KBDILLUMTOGGLE
	.uleb128	2
	.ascii	"SDLK_KBDILLUMTOGGLE\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742102
# Symbol SDLK_KBDILLUMDOWN
	.uleb128	2
	.ascii	"SDLK_KBDILLUMDOWN\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742103
# Symbol SDLK_KBDILLUMUP
	.uleb128	2
	.ascii	"SDLK_KBDILLUMUP\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742104
# Symbol SDLK_EJECT
	.uleb128	2
	.ascii	"SDLK_EJECT\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742105
# Symbol SDLK_SLEEP
	.uleb128	2
	.ascii	"SDLK_SLEEP\000"
	.long	.La17-.Ldebug_info0
	.uleb128	1073742106
# Symbol KMOD_NONE
	.uleb128	2
	.ascii	"KMOD_NONE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol KMOD_LSHIFT
	.uleb128	2
	.ascii	"KMOD_LSHIFT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol KMOD_RSHIFT
	.uleb128	2
	.ascii	"KMOD_RSHIFT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol KMOD_LCTRL
	.uleb128	2
	.ascii	"KMOD_LCTRL\000"
	.long	.La1-.Ldebug_info0
	.uleb128	64
# Symbol KMOD_RCTRL
	.uleb128	2
	.ascii	"KMOD_RCTRL\000"
	.long	.La67-.Ldebug_info0
	.uleb128	128
# Symbol KMOD_LALT
	.uleb128	2
	.ascii	"KMOD_LALT\000"
	.long	.La15-.Ldebug_info0
	.uleb128	256
# Symbol KMOD_RALT
	.uleb128	2
	.ascii	"KMOD_RALT\000"
	.long	.La15-.Ldebug_info0
	.uleb128	512
# Symbol KMOD_LGUI
	.uleb128	2
	.ascii	"KMOD_LGUI\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1024
# Symbol KMOD_RGUI
	.uleb128	2
	.ascii	"KMOD_RGUI\000"
	.long	.La15-.Ldebug_info0
	.uleb128	2048
# Symbol KMOD_NUM
	.uleb128	2
	.ascii	"KMOD_NUM\000"
	.long	.La15-.Ldebug_info0
	.uleb128	4096
# Symbol KMOD_CAPS
	.uleb128	2
	.ascii	"KMOD_CAPS\000"
	.long	.La15-.Ldebug_info0
	.uleb128	8192
# Symbol KMOD_MODE
	.uleb128	2
	.ascii	"KMOD_MODE\000"
	.long	.La15-.Ldebug_info0
	.uleb128	16384
# Symbol KMOD_RESERVED
	.uleb128	2
	.ascii	"KMOD_RESERVED\000"
	.long	.La61-.Ldebug_info0
	.uleb128	32768
# Symbol KMOD_CTRL
	.uleb128	2
	.ascii	"KMOD_CTRL\000"
	.long	.La67-.Ldebug_info0
	.uleb128	192
# Symbol KMOD_SHIFT
	.uleb128	2
	.ascii	"KMOD_SHIFT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	3
# Symbol KMOD_ALT
	.uleb128	2
	.ascii	"KMOD_ALT\000"
	.long	.La15-.Ldebug_info0
	.uleb128	768
# Symbol KMOD_GUI
	.uleb128	2
	.ascii	"KMOD_GUI\000"
	.long	.La15-.Ldebug_info0
	.uleb128	3072
# Symbol PSDL_KEYCODE
# Symbol TSDL_KEYCODE
# Symbol PSDL_KEYMOD
# Symbol TSDL_KEYMOD
# Symbol PSDL_KEYSYM
# Symbol TSDL_KEYSYM
# Symbol SDL_GETKEYBOARDFOCUS
# Symbol SDL_GETKEYBOARDSTATE
# Symbol SDL_GETMODSTATE
# Symbol SDL_SETMODSTATE
# Symbol SDL_GETKEYFROMSCANCODE
# Symbol SDL_GETSCANCODEFROMKEY
# Symbol SDL_GETSCANCODENAME
# Symbol SDL_GETSCANCODEFROMNAME
# Symbol SDL_GETKEYNAME
# Symbol SDL_GETKEYFROMNAME
# Symbol SDL_STARTTEXTINPUT
# Symbol SDL_ISTEXTINPUTACTIVE
# Symbol SDL_STOPTEXTINPUT
# Symbol SDL_SETTEXTINPUTRECT
# Symbol SDL_HASSCREENKEYBOARDSUPPORT
# Symbol SDL_ISSCREENKEYBOARDSHOWN
# Symbol PSDL_CURSOR
# Symbol SDL_SYSTEM_CURSOR_ARROW
	.uleb128	2
	.ascii	"SDL_SYSTEM_CURSOR_ARROW\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_SYSTEM_CURSOR_IBEAM
	.uleb128	2
	.ascii	"SDL_SYSTEM_CURSOR_IBEAM\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_SYSTEM_CURSOR_WAIT
	.uleb128	2
	.ascii	"SDL_SYSTEM_CURSOR_WAIT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_SYSTEM_CURSOR_CROSSHAIR
	.uleb128	2
	.ascii	"SDL_SYSTEM_CURSOR_CROSSHAIR\000"
	.long	.La1-.Ldebug_info0
	.uleb128	3
# Symbol SDL_SYSTEM_CURSOR_WAITARROW
	.uleb128	2
	.ascii	"SDL_SYSTEM_CURSOR_WAITARROW\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_SYSTEM_CURSOR_SIZENWSE
	.uleb128	2
	.ascii	"SDL_SYSTEM_CURSOR_SIZENWSE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	5
# Symbol SDL_SYSTEM_CURSOR_SIZENESW
	.uleb128	2
	.ascii	"SDL_SYSTEM_CURSOR_SIZENESW\000"
	.long	.La1-.Ldebug_info0
	.uleb128	6
# Symbol SDL_SYSTEM_CURSOR_SIZEWE
	.uleb128	2
	.ascii	"SDL_SYSTEM_CURSOR_SIZEWE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	7
# Symbol SDL_SYSTEM_CURSOR_SIZENS
	.uleb128	2
	.ascii	"SDL_SYSTEM_CURSOR_SIZENS\000"
	.long	.La1-.Ldebug_info0
	.uleb128	8
# Symbol SDL_SYSTEM_CURSOR_SIZEALL
	.uleb128	2
	.ascii	"SDL_SYSTEM_CURSOR_SIZEALL\000"
	.long	.La1-.Ldebug_info0
	.uleb128	9
# Symbol SDL_SYSTEM_CURSOR_NO
	.uleb128	2
	.ascii	"SDL_SYSTEM_CURSOR_NO\000"
	.long	.La1-.Ldebug_info0
	.uleb128	10
# Symbol SDL_SYSTEM_CURSOR_HAND
	.uleb128	2
	.ascii	"SDL_SYSTEM_CURSOR_HAND\000"
	.long	.La1-.Ldebug_info0
	.uleb128	11
# Symbol SDL_NUM_SYSTEM_CURSORS
	.uleb128	2
	.ascii	"SDL_NUM_SYSTEM_CURSORS\000"
	.long	.La1-.Ldebug_info0
	.uleb128	12
# Symbol SDL_BUTTON_LEFT
	.uleb128	2
	.ascii	"SDL_BUTTON_LEFT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_BUTTON_MIDDLE
	.uleb128	2
	.ascii	"SDL_BUTTON_MIDDLE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_BUTTON_RIGHT
	.uleb128	2
	.ascii	"SDL_BUTTON_RIGHT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	3
# Symbol SDL_BUTTON_X1
	.uleb128	2
	.ascii	"SDL_BUTTON_X1\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_BUTTON_X2
	.uleb128	2
	.ascii	"SDL_BUTTON_X2\000"
	.long	.La1-.Ldebug_info0
	.uleb128	5
# Symbol SDL_BUTTON_LMASK
	.uleb128	2
	.ascii	"SDL_BUTTON_LMASK\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_BUTTON_MMASK
	.uleb128	2
	.ascii	"SDL_BUTTON_MMASK\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_BUTTON_RMASK
	.uleb128	2
	.ascii	"SDL_BUTTON_RMASK\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_BUTTON_X1MASK
	.uleb128	2
	.ascii	"SDL_BUTTON_X1MASK\000"
	.long	.La1-.Ldebug_info0
	.uleb128	8
# Symbol SDL_BUTTON_X2MASK
	.uleb128	2
	.ascii	"SDL_BUTTON_X2MASK\000"
	.long	.La1-.Ldebug_info0
	.uleb128	16
# Symbol SDL_GETMOUSEFOCUS
# Symbol SDL_GETMOUSESTATE
# Symbol SDL_GETRELATIVEMOUSESTATE
# Symbol SDL_WARPMOUSEINWINDOW
# Symbol SDL_SETRELATIVEMOUSEMODE
# Symbol SDL_GETRELATIVEMOUSEMODE
# Symbol SDL_CREATECURSOR
# Symbol SDL_CREATECOLORCURSOR
# Symbol SDL_CREATESYSTEMCURSOR
# Symbol SDL_SETCURSOR
# Symbol SDL_GETCURSOR
# Symbol SDL_FREECURSOR
# Symbol SDL_SHOWCURSOR
# Symbol PSDL_JOYSTICK
# Symbol TSDL_JOYSTICKGUID
# Symbol TSDL_JOYSTICKID
# Symbol SDL_HAT_CENTERED
	.uleb128	2
	.ascii	"SDL_HAT_CENTERED\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_HAT_UP
	.uleb128	2
	.ascii	"SDL_HAT_UP\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_HAT_RIGHT
	.uleb128	2
	.ascii	"SDL_HAT_RIGHT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_HAT_DOWN
	.uleb128	2
	.ascii	"SDL_HAT_DOWN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_HAT_LEFT
	.uleb128	2
	.ascii	"SDL_HAT_LEFT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	8
# Symbol SDL_HAT_RIGHTUP
	.uleb128	2
	.ascii	"SDL_HAT_RIGHTUP\000"
	.long	.La1-.Ldebug_info0
	.uleb128	3
# Symbol SDL_HAT_RIGHTDOWN
	.uleb128	2
	.ascii	"SDL_HAT_RIGHTDOWN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	6
# Symbol SDL_HAT_LEFTUP
	.uleb128	2
	.ascii	"SDL_HAT_LEFTUP\000"
	.long	.La1-.Ldebug_info0
	.uleb128	9
# Symbol SDL_HAT_LEFTDOWN
	.uleb128	2
	.ascii	"SDL_HAT_LEFTDOWN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	12
# Symbol SDL_NUMJOYSTICKS
# Symbol SDL_JOYSTICKNAMEFORINDEX
# Symbol SDL_JOYSTICKOPEN
# Symbol SDL_JOYSTICKNAME
# Symbol SDL_JOYSTICKGETDEVICEGUID
# Symbol SDL_JOYSTICKGETGUID
# Symbol SDL_JOYSTICKGETGUIDSTRING
# Symbol SDL_JOYSTICKGETGUIDFROMSTRING
# Symbol SDL_JOYSTICKGETATTACHED
# Symbol SDL_JOYSTICKINSTANCEID
# Symbol SDL_JOYSTICKNUMAXES
# Symbol SDL_JOYSTICKNUMBALLS
# Symbol SDL_JOYSTICKNUMHATS
# Symbol SDL_JOYSTICKNUMBUTTONS
# Symbol SDL_JOYSTICKUPDATE
# Symbol SDL_JOYSTICKEVENTSTATE
# Symbol SDL_JOYSTICKGETAXIS
# Symbol SDL_JOYSTICKGETHAT
# Symbol SDL_JOYSTICKGETBALL
# Symbol SDL_JOYSTICKGETBUTTON
# Symbol SDL_JOYSTICKCLOSE
# Symbol SDL_GAMECONTROLLERBINDTYPE
# Symbol SDL_CONTROLLER_BINDTYPE_NONE
# Symbol SDL_CONTROLLER_BINDTYPE_BUTTON
# Symbol SDL_CONTROLLER_BINDTYPE_AXIS
# Symbol SDL_CONTROLLER_BINDTYPE_HAT
# Symbol SDL_GAMECONTROLLERAXIS
# Symbol SDL_CONTROLLER_AXIS_INVALID
# Symbol SDL_CONTROLLER_AXIS_LEFTX
# Symbol SDL_CONTROLLER_AXIS_LEFTY
# Symbol SDL_CONTROLLER_AXIS_RIGHTX
# Symbol SDL_CONTROLLER_AXIS_RIGHTY
# Symbol SDL_CONTROLLER_AXIS_TRIGGERLEFT
# Symbol SDL_CONTROLLER_AXIS_TRIGGERRIGHT
# Symbol SDL_CONTROLLER_AXIS_MAX
# Symbol SDL_GAMECONTROLLERBUTTON
# Symbol SDL_CONTROLLER_BUTTON_INVALID
# Symbol SDL_CONTROLLER_BUTTON_A
# Symbol SDL_CONTROLLER_BUTTON_B
# Symbol SDL_CONTROLLER_BUTTON_X
# Symbol SDL_CONTROLLER_BUTTON_Y
# Symbol SDL_CONTROLLER_BUTTON_BACK
# Symbol SDL_CONTROLLER_BUTTON_GUIDE
# Symbol SDL_CONTROLLER_BUTTON_START
# Symbol SDL_CONTROLLER_BUTTON_LEFTSTICK
# Symbol SDL_CONTROLLER_BUTTON_RIGHTSTICK
# Symbol SDL_CONTROLLER_BUTTON_LEFTSHOULDER
# Symbol SDL_CONTROLLER_BUTTON_RIGHTSHOULDER
# Symbol SDL_CONTROLLER_BUTTON_DPAD_UP
# Symbol SDL_CONTROLLER_BUTTON_DPAD_DOWN
# Symbol SDL_CONTROLLER_BUTTON_DPAD_LEFT
# Symbol SDL_CONTROLLER_BUTTON_DPAD_RIGHT
# Symbol SDL_CONTROLLER_BUTTON_MAX
# Symbol PSDL_GAMECONTROLLER
# Symbol PSDL_GAMECONTROLLERBUTTONBIND
# Symbol TSDL_GAMECONTROLLERBUTTONBIND
# Symbol SDL_GAMECONTROLLERADDMAPPINGSFROMRW
# Symbol SDL_GAMECONTROLLERADDMAPPINGSFROMFILE
# Symbol SDL_GAMECONTROLLERADDMAPPING
# Symbol SDL_GAMECONTROLLERMAPPINGFORGUID
# Symbol SDL_GAMECONTROLLERMAPPING
# Symbol SDL_ISGAMECONTROLLER
# Symbol SDL_GAMECONTROLLERNAMEFORINDEX
# Symbol SDL_GAMECONTROLLEROPEN
# Symbol SDL_GAMECONTROLLERNAME
# Symbol SDL_GAMECONTROLLERGETATTACHED
# Symbol SDL_GAMECONTROLLERGETJOYSTICK
# Symbol SDL_GAMECONTROLLEREVENTSTATE
# Symbol SDL_GAMECONTROLLERUPDATE
# Symbol SDL_GAMECONTROLLERGETAXISFROMSTRING
# Symbol SDL_GAMECONTROLLERGETSTRINGFORAXIS
# Symbol SDL_GAMECONTROLLERGETBINDFORAXIS
# Symbol SDL_GAMECONTROLLERGETAXIS
# Symbol SDL_GAMECONTROLLERGETBUTTONFROMSTRING
# Symbol SDL_GAMECONTROLLERGETSTRINGFORBUTTON
# Symbol SDL_GAMECONTROLLERGETBINDFORBUTTON
# Symbol SDL_GAMECONTROLLERGETBUTTON
# Symbol SDL_GAMECONTROLLERCLOSE
# Symbol SDL_HAPTIC_CONSTANT
	.uleb128	2
	.ascii	"SDL_HAPTIC_CONSTANT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_HAPTIC_SINE
	.uleb128	2
	.ascii	"SDL_HAPTIC_SINE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_HAPTIC_SQUARE
	.uleb128	2
	.ascii	"SDL_HAPTIC_SQUARE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	4
# Symbol SDL_HAPTIC_TRIANGLE
	.uleb128	2
	.ascii	"SDL_HAPTIC_TRIANGLE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	8
# Symbol SDL_HAPTIC_SAWTOOTHUP
	.uleb128	2
	.ascii	"SDL_HAPTIC_SAWTOOTHUP\000"
	.long	.La1-.Ldebug_info0
	.uleb128	16
# Symbol SDL_HAPTIC_SAWTOOTHDOWN
	.uleb128	2
	.ascii	"SDL_HAPTIC_SAWTOOTHDOWN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	32
# Symbol SDL_HAPTIC_RAMP
	.uleb128	2
	.ascii	"SDL_HAPTIC_RAMP\000"
	.long	.La1-.Ldebug_info0
	.uleb128	64
# Symbol SDL_HAPTIC_SPRING
	.uleb128	2
	.ascii	"SDL_HAPTIC_SPRING\000"
	.long	.La67-.Ldebug_info0
	.uleb128	128
# Symbol SDL_HAPTIC_DAMPER
	.uleb128	2
	.ascii	"SDL_HAPTIC_DAMPER\000"
	.long	.La15-.Ldebug_info0
	.uleb128	256
# Symbol SDL_HAPTIC_INERTIA
	.uleb128	2
	.ascii	"SDL_HAPTIC_INERTIA\000"
	.long	.La15-.Ldebug_info0
	.uleb128	512
# Symbol SDL_HAPTIC_FRICTION
	.uleb128	2
	.ascii	"SDL_HAPTIC_FRICTION\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1024
# Symbol SDL_HAPTIC_CUSTOM
	.uleb128	2
	.ascii	"SDL_HAPTIC_CUSTOM\000"
	.long	.La15-.Ldebug_info0
	.uleb128	2048
# Symbol SDL_HAPTIC_GAIN
	.uleb128	2
	.ascii	"SDL_HAPTIC_GAIN\000"
	.long	.La15-.Ldebug_info0
	.uleb128	4096
# Symbol SDL_HAPTIC_AUTOCENTER
	.uleb128	2
	.ascii	"SDL_HAPTIC_AUTOCENTER\000"
	.long	.La15-.Ldebug_info0
	.uleb128	8192
# Symbol SDL_HAPTIC_STATUS
	.uleb128	2
	.ascii	"SDL_HAPTIC_STATUS\000"
	.long	.La15-.Ldebug_info0
	.uleb128	16384
# Symbol SDL_HAPTIC_PAUSE
	.uleb128	2
	.ascii	"SDL_HAPTIC_PAUSE\000"
	.long	.La61-.Ldebug_info0
	.uleb128	32768
# Symbol SDL_HAPTIC_POLAR
	.uleb128	2
	.ascii	"SDL_HAPTIC_POLAR\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_HAPTIC_CARTESIAN
	.uleb128	2
	.ascii	"SDL_HAPTIC_CARTESIAN\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_HAPTIC_SPHERICAL
	.uleb128	2
	.ascii	"SDL_HAPTIC_SPHERICAL\000"
	.long	.La1-.Ldebug_info0
	.uleb128	2
# Symbol SDL_HAPTIC_INFINITY
	.uleb128	2
	.ascii	"SDL_HAPTIC_INFINITY\000"
	.long	.La55-.Ldebug_info0
	.uleb128	4294967295
# Symbol PSDL_HAPTIC
# Symbol PSDL_HAPTICDIRECTION
# Symbol TSDL_HAPTICDIRECTION
# Symbol PSDL_HAPTICCONSTANT
# Symbol TSDL_HAPTICCONSTANT
# Symbol PSDL_HAPTICPERIODIC
# Symbol TSDL_HAPTICPERIODIC
# Symbol PSDL_HAPTICCONDITION
# Symbol TSDL_HAPTICCONDITION
# Symbol PSDL_HAPTICRAMP
# Symbol TSDL_HAPTICRAMP
# Symbol PSDL_HAPTICLEFTRIGHT
# Symbol TSDL_HAPTICLEFTRIGHT
# Symbol PSDL_HAPTICCUSTOM
# Symbol TSDL_HAPTICCUSTOM
# Symbol PSDL_HAPTICEFFECT
# Symbol TSDL_HAPTICEFFECT
# Symbol SDL_NUMHAPTICS
# Symbol SDL_HAPTICNAME
# Symbol SDL_HAPTICOPEN
# Symbol SDL_HAPTICOPENED
# Symbol SDL_HAPTICINDEX
# Symbol SDL_MOUSEISHAPTIC
# Symbol SDL_HAPTICOPENFROMMOUSE
# Symbol SDL_JOYSTICKISHAPTIC
# Symbol SDL_HAPTICOPENFROMJOYSTICK
# Symbol SDL_HAPTICCLOSE
# Symbol SDL_HAPTICNUMEFFECTS
# Symbol SDL_HAPTICNUMEFFECTSPLAYING
# Symbol SDL_HAPTICQUERY
# Symbol SDL_HAPTICNUMAXES
# Symbol SDL_HAPTICEFFECTSUPPORTED
# Symbol SDL_HAPTICNEWEFFECT
# Symbol SDL_HAPTICUPDATEEFFECT
# Symbol SDL_HAPTICRUNEFFECT
# Symbol SDL_HAPTICSTOPEFFECT
# Symbol SDL_HAPTICDESTROYEFFECT
# Symbol SDL_HAPTICGETEFFECTSTATUS
# Symbol SDL_HAPTICSETGAIN
# Symbol SDL_HAPTICSETAUTOCENTER
# Symbol SDL_HAPTICPAUSE
# Symbol SDL_HAPTICUNPAUSE
# Symbol SDL_HAPTICSTOPALL
# Symbol SDL_HAPTICRUMBLESUPPORTED
# Symbol SDL_HAPTICRUMBLEINIT
# Symbol SDL_HAPTICRUMBLEPLAY
# Symbol SDL_HAPTICRUMBLESTOP
# Symbol TSDL_TOUCHID
# Symbol TSDL_FINGERID
# Symbol PSDL_FINGER
# Symbol TSDL_FINGER
# Symbol SDL_TOUCH_MOUSEID
	.uleb128	2
	.ascii	"SDL_TOUCH_MOUSEID\000"
	.long	.La55-.Ldebug_info0
	.uleb128	4294967295
# Symbol SDL_GETNUMTOUCHDEVICES
# Symbol SDL_GETTOUCHDEVICE
# Symbol SDL_GETNUMTOUCHFINGERS
# Symbol SDL_GETTOUCHFINGER
# Symbol TSDL_GESTUREID
# Symbol SDL_RECORDGESTURE
# Symbol SDL_SAVEALLDOLLARTEMPLATES
# Symbol SDL_SAVEDOLLARTEMPLATE
# Symbol SDL_LOADDOLLARTEMPLATES
# Symbol SDL_RELEASED
	.uleb128	2
	.ascii	"SDL_RELEASED\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_PRESSED
	.uleb128	2
	.ascii	"SDL_PRESSED\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol SDL_FIRSTEVENT
	.uleb128	2
	.ascii	"SDL_FIRSTEVENT\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_QUITEV
	.uleb128	2
	.ascii	"SDL_QUITEV\000"
	.long	.La15-.Ldebug_info0
	.uleb128	256
# Symbol SDL_APP_TERMINATING
	.uleb128	2
	.ascii	"SDL_APP_TERMINATING\000"
	.long	.La15-.Ldebug_info0
	.uleb128	257
# Symbol SDL_APP_LOWMEMORY
	.uleb128	2
	.ascii	"SDL_APP_LOWMEMORY\000"
	.long	.La15-.Ldebug_info0
	.uleb128	258
# Symbol SDL_APP_WILLENTERBACKGROUND
	.uleb128	2
	.ascii	"SDL_APP_WILLENTERBACKGROUND\000"
	.long	.La15-.Ldebug_info0
	.uleb128	259
# Symbol SDL_APP_DIDENTERBACKGROUND
	.uleb128	2
	.ascii	"SDL_APP_DIDENTERBACKGROUND\000"
	.long	.La15-.Ldebug_info0
	.uleb128	260
# Symbol SDL_APP_WILLENTERFOREGROUND
	.uleb128	2
	.ascii	"SDL_APP_WILLENTERFOREGROUND\000"
	.long	.La15-.Ldebug_info0
	.uleb128	261
# Symbol SDL_APP_DIDENTERFOREGROUND
	.uleb128	2
	.ascii	"SDL_APP_DIDENTERFOREGROUND\000"
	.long	.La15-.Ldebug_info0
	.uleb128	262
# Symbol SDL_WINDOWEVENT
	.uleb128	2
	.ascii	"SDL_WINDOWEVENT\000"
	.long	.La15-.Ldebug_info0
	.uleb128	512
# Symbol SDL_SYSWMEVENT
	.uleb128	2
	.ascii	"SDL_SYSWMEVENT\000"
	.long	.La15-.Ldebug_info0
	.uleb128	513
# Symbol SDL_KEYDOWN
	.uleb128	2
	.ascii	"SDL_KEYDOWN\000"
	.long	.La15-.Ldebug_info0
	.uleb128	768
# Symbol SDL_KEYUP
	.uleb128	2
	.ascii	"SDL_KEYUP\000"
	.long	.La15-.Ldebug_info0
	.uleb128	769
# Symbol SDL_TEXTEDITING
	.uleb128	2
	.ascii	"SDL_TEXTEDITING\000"
	.long	.La15-.Ldebug_info0
	.uleb128	770
# Symbol SDL_TEXTINPUT
	.uleb128	2
	.ascii	"SDL_TEXTINPUT\000"
	.long	.La15-.Ldebug_info0
	.uleb128	771
# Symbol SDL_MOUSEMOTION
	.uleb128	2
	.ascii	"SDL_MOUSEMOTION\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1024
# Symbol SDL_MOUSEBUTTONDOWN
	.uleb128	2
	.ascii	"SDL_MOUSEBUTTONDOWN\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1025
# Symbol SDL_MOUSEBUTTONUP
	.uleb128	2
	.ascii	"SDL_MOUSEBUTTONUP\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1026
# Symbol SDL_MOUSEWHEEL
	.uleb128	2
	.ascii	"SDL_MOUSEWHEEL\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1027
# Symbol SDL_JOYAXISMOTION
	.uleb128	2
	.ascii	"SDL_JOYAXISMOTION\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1536
# Symbol SDL_JOYBALLMOTION
	.uleb128	2
	.ascii	"SDL_JOYBALLMOTION\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1537
# Symbol SDL_JOYHATMOTION
	.uleb128	2
	.ascii	"SDL_JOYHATMOTION\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1538
# Symbol SDL_JOYBUTTONDOWN
	.uleb128	2
	.ascii	"SDL_JOYBUTTONDOWN\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1539
# Symbol SDL_JOYBUTTONUP
	.uleb128	2
	.ascii	"SDL_JOYBUTTONUP\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1540
# Symbol SDL_JOYDEVICEADDED
	.uleb128	2
	.ascii	"SDL_JOYDEVICEADDED\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1541
# Symbol SDL_JOYDEVICEREMOVED
	.uleb128	2
	.ascii	"SDL_JOYDEVICEREMOVED\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1542
# Symbol SDL_CONTROLLERAXISMOTION
	.uleb128	2
	.ascii	"SDL_CONTROLLERAXISMOTION\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1616
# Symbol SDL_CONTROLLERBUTTONDOWN
	.uleb128	2
	.ascii	"SDL_CONTROLLERBUTTONDOWN\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1617
# Symbol SDL_CONTROLLERBUTTONUP
	.uleb128	2
	.ascii	"SDL_CONTROLLERBUTTONUP\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1618
# Symbol SDL_CONTROLLERDEVICEADDED
	.uleb128	2
	.ascii	"SDL_CONTROLLERDEVICEADDED\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1619
# Symbol SDL_CONTROLLERDEVICEREMOVED
	.uleb128	2
	.ascii	"SDL_CONTROLLERDEVICEREMOVED\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1620
# Symbol SDL_CONTROLLERDEVICEREMAPPED
	.uleb128	2
	.ascii	"SDL_CONTROLLERDEVICEREMAPPED\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1621
# Symbol SDL_FINGERDOWN
	.uleb128	2
	.ascii	"SDL_FINGERDOWN\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1792
# Symbol SDL_FINGERUP
	.uleb128	2
	.ascii	"SDL_FINGERUP\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1793
# Symbol SDL_FINGERMOTION
	.uleb128	2
	.ascii	"SDL_FINGERMOTION\000"
	.long	.La15-.Ldebug_info0
	.uleb128	1794
# Symbol SDL_DOLLARGESTURE
	.uleb128	2
	.ascii	"SDL_DOLLARGESTURE\000"
	.long	.La15-.Ldebug_info0
	.uleb128	2048
# Symbol SDL_DOLLARRECORD
	.uleb128	2
	.ascii	"SDL_DOLLARRECORD\000"
	.long	.La15-.Ldebug_info0
	.uleb128	2049
# Symbol SDL_MULTIGESTURE
	.uleb128	2
	.ascii	"SDL_MULTIGESTURE\000"
	.long	.La15-.Ldebug_info0
	.uleb128	2050
# Symbol SDL_CLIPBOARDUPDATE
	.uleb128	2
	.ascii	"SDL_CLIPBOARDUPDATE\000"
	.long	.La15-.Ldebug_info0
	.uleb128	2304
# Symbol SDL_DROPFILE
	.uleb128	2
	.ascii	"SDL_DROPFILE\000"
	.long	.La15-.Ldebug_info0
	.uleb128	4096
# Symbol SDL_RENDER_TARGETS_RESET
	.uleb128	2
	.ascii	"SDL_RENDER_TARGETS_RESET\000"
	.long	.La15-.Ldebug_info0
	.uleb128	8192
# Symbol SDL_USEREVENT
	.uleb128	2
	.ascii	"SDL_USEREVENT\000"
	.long	.La61-.Ldebug_info0
	.uleb128	32768
# Symbol SDL_LASTEVENT
	.uleb128	2
	.ascii	"SDL_LASTEVENT\000"
	.long	.La61-.Ldebug_info0
	.uleb128	65535
# Symbol SDL_QUERY
	.uleb128	5
	.ascii	"SDL_QUERY\000"
	.long	.La1-.Ldebug_info0
	.sleb128	-1
# Symbol SDL_IGNORE
	.uleb128	2
	.ascii	"SDL_IGNORE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_DISABLE
	.uleb128	2
	.ascii	"SDL_DISABLE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	0
# Symbol SDL_ENABLE
	.uleb128	2
	.ascii	"SDL_ENABLE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	1
# Symbol TSDL_EVENTTYPE
# Symbol TSDL_COMMONEVENT
# Symbol TSDL_WINDOWEVENT
# Symbol TSDL_KEYBOARDEVENT
# Symbol SDL_TEXTEDITINGEVENT_TEXT_SIZE
	.uleb128	2
	.ascii	"SDL_TEXTEDITINGEVENT_TEXT_SIZE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	32
# Symbol TSDL_TEXTEDITINGEVENT
# Symbol SDL_TEXTINPUTEVENT_TEXT_SIZE
	.uleb128	2
	.ascii	"SDL_TEXTINPUTEVENT_TEXT_SIZE\000"
	.long	.La1-.Ldebug_info0
	.uleb128	32
# Symbol TSDL_TEXTINPUTEVENT
# Symbol TSDL_MOUSEMOTIONEVENT
# Symbol TSDL_MOUSEBUTTONEVENT
# Symbol TSDL_MOUSEWHEELEVENT
# Symbol TSDL_JOYAXISEVENT
# Symbol TSDL_JOYBALLEVENT
# Symbol TSDL_JOYHATEVENT
# Symbol TSDL_JOYBUTTONEVENT
# Symbol TSDL_JOYDEVICEEVENT
# Symbol TSDL_CONTROLLERAXISEVENT
# Symbol TSDL_CONTROLLERBUTTONEVENT
# Symbol TSDL_CONTROLLERDEVICEEVENT
# Symbol TSDL_TOUCHFINGEREVENT
# Symbol TSDL_MULTIGESTUREEVENT
# Symbol TSDL_DOLLARGESTUREEVENT
# Symbol TSDL_DROPEVENT
# Symbol TSDL_QUITEVENT
# Symbol TSDL_OSEVENT
# Symbol TSDL_USEREVENT
# Symbol TSDL_SYSWMEVENT
# Symbol PSDL_EVENT
# Symbol TSDL_EVENT
# Symbol TSDL_EVENTACTION
# Symbol SDL_ADDEVENT
# Symbol SDL_PEEKEVENT
# Symbol SDL_GETEVENT
# Symbol PSDL_EVENTFILTER
# Symbol TSDL_EVENTFILTER
# Symbol SDL_QUITREQUESTED
# Symbol SDL_PUMPEVENTS
# Symbol SDL_PEEPEVENTS
# Symbol SDL_HASEVENT
# Symbol SDL_HASEVENTS
# Symbol SDL_FLUSHEVENT
# Symbol SDL_FLUSHEVENTS
# Symbol SDL_POLLEVENT
# Symbol SDL_WAITEVENT
# Symbol SDL_WAITEVENTTIMEOUT
# Symbol SDL_PUSHEVENT
# Symbol SDL_SETEVENTFILTER
# Symbol SDL_GETEVENTFILTER
# Symbol SDL_ADDEVENTWATCH
# Symbol SDL_DELEVENTWATCH
# Symbol SDL_FILTEREVENTS
# Symbol SDL_EVENTSTATE
# Symbol SDL_GETEVENTSTATE
# Symbol SDL_REGISTEREVENTS
# Symbol SDL_DIRECT3D9GETADAPTERINDEX
# Symbol SDL_RENDERGETD3D9DEVICE
# Symbol SDL_DXGIGETOUTPUTINFO
# Syms - End unit SDL2 has index 254
# Syms - Begin Staticsymtable
# Symbol SDL2_$$_init$
# Syms - End Staticsymtable
# Procdef SDL_iconv_utf8_locale(PChar):^Char;
	.uleb128	6
	.ascii	"SDL_ICONV_UTF8_LOCALE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La261-.Ldebug_info0
	.quad	SDL2_$$_SDL_ICONV_UTF8_LOCALE$PCHAR$$PCHAR
	.quad	.Lt1
# Symbol S
	.uleb128	7
	.ascii	"S\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La261-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La261-.Ldebug_info0
# Symbol SDL_ICONV_UTF8_LOCALE
	.uleb128	8
	.ascii	"SDL_ICONV_UTF8_LOCALE\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La261-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La261-.Ldebug_info0
	.byte	0
# Procdef SDL_iconv_utf8_ucs2(PChar):^Char;
	.uleb128	6
	.ascii	"SDL_ICONV_UTF8_UCS2\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La261-.Ldebug_info0
	.quad	SDL2_$$_SDL_ICONV_UTF8_UCS2$PCHAR$$PCHAR
	.quad	.Lt2
# Symbol S
	.uleb128	7
	.ascii	"S\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La261-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La261-.Ldebug_info0
# Symbol SDL_ICONV_UTF8_UCS2
	.uleb128	8
	.ascii	"SDL_ICONV_UTF8_UCS2\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La261-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La261-.Ldebug_info0
	.byte	0
# Procdef SDL_iconv_utf8_ucs4(PChar):^Char;
	.uleb128	6
	.ascii	"SDL_ICONV_UTF8_UCS4\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La261-.Ldebug_info0
	.quad	SDL2_$$_SDL_ICONV_UTF8_UCS4$PCHAR$$PCHAR
	.quad	.Lt3
# Symbol S
	.uleb128	7
	.ascii	"S\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La261-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La261-.Ldebug_info0
# Symbol SDL_ICONV_UTF8_UCS4
	.uleb128	8
	.ascii	"SDL_ICONV_UTF8_UCS4\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La261-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La261-.Ldebug_info0
	.byte	0
# Procdef SDL_MostSignificantBitIndex32(LongWord):LongInt;
	.uleb128	6
	.ascii	"SDL_MOSTSIGNIFICANTBITINDEX32\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La17-.Ldebug_info0
	.quad	SDL2_$$_SDL_MOSTSIGNIFICANTBITINDEX32$LONGWORD$$LONGINT
	.quad	.Lt4
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol SDL_MOSTSIGNIFICANTBITINDEX32
	.uleb128	8
	.ascii	"SDL_MOSTSIGNIFICANTBITINDEX32\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.byte	0
# Procdef SDL_VERSION(PSDL_version);
	.uleb128	9
	.ascii	"SDL_VERSION\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	SDL2_$$_SDL_VERSION$PSDL_VERSION
	.quad	.Lt5
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef SDL_VERSIONNUM(LongInt;LongInt;LongInt):LongInt;
	.uleb128	6
	.ascii	"SDL_VERSIONNUM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La17-.Ldebug_info0
	.quad	SDL2_$$_SDL_VERSIONNUM$LONGINT$LONGINT$LONGINT$$LONGINT
	.quad	.Lt6
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La17-.Ldebug_info0
# Symbol Y
	.uleb128	7
	.ascii	"Y\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La17-.Ldebug_info0
# Symbol Z
	.uleb128	7
	.ascii	"Z\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La17-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol SDL_VERSIONNUM
	.uleb128	8
	.ascii	"SDL_VERSIONNUM\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.byte	0
# Procdef SDL_COMPILEDVERSION:LongInt;
	.uleb128	6
	.ascii	"SDL_COMPILEDVERSION\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La17-.Ldebug_info0
	.quad	SDL2_$$_SDL_COMPILEDVERSION$$LONGINT
	.quad	.Lt7
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol SDL_COMPILEDVERSION
	.uleb128	8
	.ascii	"SDL_COMPILEDVERSION\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.byte	0
# Procdef SDL_VERSION_ATLEAST(LongInt;LongInt;LongInt):Boolean;
	.uleb128	6
	.ascii	"SDL_VERSION_ATLEAST\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La263-.Ldebug_info0
	.quad	SDL2_$$_SDL_VERSION_ATLEAST$LONGINT$LONGINT$LONGINT$$BOOLEAN
	.quad	.Lt8
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La17-.Ldebug_info0
# Symbol Y
	.uleb128	7
	.ascii	"Y\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La17-.Ldebug_info0
# Symbol Z
	.uleb128	7
	.ascii	"Z\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La17-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol SDL_VERSION_ATLEAST
	.uleb128	8
	.ascii	"SDL_VERSION_ATLEAST\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
	.byte	0
# Procdef SDL_OutOfMemory:LongInt;
	.uleb128	6
	.ascii	"SDL_OUTOFMEMORY\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La17-.Ldebug_info0
	.quad	SDL2_$$_SDL_OUTOFMEMORY$$LONGINT
	.quad	.Lt9
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol SDL_OUTOFMEMORY
	.uleb128	8
	.ascii	"SDL_OUTOFMEMORY\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.byte	0
# Procdef SDL_Unsupported:LongInt;
	.uleb128	6
	.ascii	"SDL_UNSUPPORTED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La17-.Ldebug_info0
	.quad	SDL2_$$_SDL_UNSUPPORTED$$LONGINT
	.quad	.Lt10
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol SDL_UNSUPPORTED
	.uleb128	8
	.ascii	"SDL_UNSUPPORTED\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.byte	0
# Procdef SDL_InvalidParamError(PChar):LongInt;
	.uleb128	6
	.ascii	"SDL_INVALIDPARAMERROR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La17-.Ldebug_info0
	.quad	SDL2_$$_SDL_INVALIDPARAMERROR$PCHAR$$LONGINT
	.quad	.Lt11
# Symbol PARAM
	.uleb128	7
	.ascii	"PARAM\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La261-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol SDL_INVALIDPARAMERROR
	.uleb128	8
	.ascii	"SDL_INVALIDPARAMERROR\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.byte	0
# Procdef SDL_TICKS_PASSED(LongWord;LongWord):LongBool;
	.uleb128	6
	.ascii	"SDL_TICKS_PASSED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La3-.Ldebug_info0
	.quad	SDL2_$$_SDL_TICKS_PASSED$LONGWORD$LONGWORD$$LONGBOOL
	.quad	.Lt12
# Symbol A
	.uleb128	7
	.ascii	"A\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La55-.Ldebug_info0
# Symbol B
	.uleb128	7
	.ascii	"B\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La3-.Ldebug_info0
# Symbol SDL_TICKS_PASSED
	.uleb128	8
	.ascii	"SDL_TICKS_PASSED\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La3-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La3-.Ldebug_info0
	.byte	0
# Procdef SDL_MutexP(Pointer):LongInt;
	.uleb128	6
	.ascii	"SDL_MUTEXP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La17-.Ldebug_info0
	.quad	SDL2_$$_SDL_MUTEXP$POINTER$$LONGINT
	.quad	.Lt13
# Symbol MUTEX
	.uleb128	7
	.ascii	"MUTEX\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La25-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol SDL_MUTEXP
	.uleb128	8
	.ascii	"SDL_MUTEXP\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.byte	0
# Procdef SDL_MutexV(Pointer):LongInt;
	.uleb128	6
	.ascii	"SDL_MUTEXV\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La17-.Ldebug_info0
	.quad	SDL2_$$_SDL_MUTEXV$POINTER$$LONGINT
	.quad	.Lt14
# Symbol MUTEX
	.uleb128	7
	.ascii	"MUTEX\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La25-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol SDL_MUTEXV
	.uleb128	8
	.ascii	"SDL_MUTEXV\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.byte	0
# Procdef SDL_CreateThread(TSDL_ThreadFunction;PChar;Pointer):^untyped;
	.uleb128	6
	.ascii	"SDL_CREATETHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La25-.Ldebug_info0
	.quad	SDL2_$$_SDL_CREATETHREAD$TSDL_THREADFUNCTION$PCHAR$POINTER$$POINTER
	.quad	.Lt15
# Symbol FN
	.uleb128	7
	.ascii	"FN\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La59-.Ldebug_info0
# Symbol NAME
	.uleb128	7
	.ascii	"NAME\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La261-.Ldebug_info0
# Symbol DATA
	.uleb128	7
	.ascii	"DATA\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La25-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La25-.Ldebug_info0
# Symbol SDL_CREATETHREAD
	.uleb128	8
	.ascii	"SDL_CREATETHREAD\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La25-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La25-.Ldebug_info0
	.byte	0
# Procdef SDL_Swap16(const Word):Word;
	.uleb128	6
	.ascii	"SDL_SWAP16\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La61-.Ldebug_info0
	.quad	SDL2_$$_SDL_SWAP16$WORD$$WORD
	.quad	.Lt16
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La61-.Ldebug_info0
# Symbol SDL_SWAP16
	.uleb128	8
	.ascii	"SDL_SWAP16\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La61-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La61-.Ldebug_info0
	.byte	0
# Procdef SDL_Swap32(const LongWord):DWord;
	.uleb128	6
	.ascii	"SDL_SWAP32\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La55-.Ldebug_info0
	.quad	SDL2_$$_SDL_SWAP32$LONGWORD$$LONGWORD
	.quad	.Lt17
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol SDL_SWAP32
	.uleb128	8
	.ascii	"SDL_SWAP32\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.byte	0
# Procdef SDL_Swap64(const QWord):QWord;
	.uleb128	6
	.ascii	"SDL_SWAP64\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La21-.Ldebug_info0
	.quad	SDL2_$$_SDL_SWAP64$QWORD$$QWORD
	.quad	.Lt18
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La21-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La21-.Ldebug_info0
# Symbol SDL_SWAP64
	.uleb128	8
	.ascii	"SDL_SWAP64\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La21-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La21-.Ldebug_info0
	.byte	0
# Procdef SDL_SwapFloat(const Single):Single;
	.uleb128	6
	.ascii	"SDL_SWAPFLOAT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
	.quad	SDL2_$$_SDL_SWAPFLOAT$SINGLE$$SINGLE
	.quad	.Lt19
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La29-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La29-.Ldebug_info0
# Symbol SDL_SWAPFLOAT
	.uleb128	8
	.ascii	"SDL_SWAPFLOAT\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La29-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La29-.Ldebug_info0
# Symbol F
	.uleb128	8
	.ascii	"F\000"
	.byte	2
	.byte	119
	.sleb128	32
	.long	.La29-.Ldebug_info0
# Symbol UI32
	.uleb128	8
	.ascii	"UI32\000"
	.byte	2
	.byte	119
	.sleb128	32
	.long	.La55-.Ldebug_info0
	.byte	0
# Procdef SDL_SwapLE16(const Word):Word;
	.uleb128	6
	.ascii	"SDL_SWAPLE16\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La61-.Ldebug_info0
	.quad	SDL2_$$_SDL_SWAPLE16$WORD$$WORD
	.quad	.Lt20
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La61-.Ldebug_info0
# Symbol SDL_SWAPLE16
	.uleb128	8
	.ascii	"SDL_SWAPLE16\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La61-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La61-.Ldebug_info0
	.byte	0
# Procdef SDL_SwapLE32(const LongWord):DWord;
	.uleb128	6
	.ascii	"SDL_SWAPLE32\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La55-.Ldebug_info0
	.quad	SDL2_$$_SDL_SWAPLE32$LONGWORD$$LONGWORD
	.quad	.Lt21
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol SDL_SWAPLE32
	.uleb128	8
	.ascii	"SDL_SWAPLE32\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.byte	0
# Procdef SDL_SwapLE64(const QWord):QWord;
	.uleb128	6
	.ascii	"SDL_SWAPLE64\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La21-.Ldebug_info0
	.quad	SDL2_$$_SDL_SWAPLE64$QWORD$$QWORD
	.quad	.Lt22
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La21-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La21-.Ldebug_info0
# Symbol SDL_SWAPLE64
	.uleb128	8
	.ascii	"SDL_SWAPLE64\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La21-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La21-.Ldebug_info0
	.byte	0
# Procdef SDL_SwapFloatLE(const Single):Single;
	.uleb128	6
	.ascii	"SDL_SWAPFLOATLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
	.quad	SDL2_$$_SDL_SWAPFLOATLE$SINGLE$$SINGLE
	.quad	.Lt23
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La29-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La29-.Ldebug_info0
# Symbol SDL_SWAPFLOATLE
	.uleb128	8
	.ascii	"SDL_SWAPFLOATLE\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La29-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SDL_SwapBE16(const Word):Word;
	.uleb128	6
	.ascii	"SDL_SWAPBE16\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La61-.Ldebug_info0
	.quad	SDL2_$$_SDL_SWAPBE16$WORD$$WORD
	.quad	.Lt24
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La61-.Ldebug_info0
# Symbol SDL_SWAPBE16
	.uleb128	8
	.ascii	"SDL_SWAPBE16\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La61-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La61-.Ldebug_info0
	.byte	0
# Procdef SDL_SwapBE32(const LongWord):DWord;
	.uleb128	6
	.ascii	"SDL_SWAPBE32\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La55-.Ldebug_info0
	.quad	SDL2_$$_SDL_SWAPBE32$LONGWORD$$LONGWORD
	.quad	.Lt25
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol SDL_SWAPBE32
	.uleb128	8
	.ascii	"SDL_SWAPBE32\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.byte	0
# Procdef SDL_SwapBE64(const QWord):QWord;
	.uleb128	6
	.ascii	"SDL_SWAPBE64\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La21-.Ldebug_info0
	.quad	SDL2_$$_SDL_SWAPBE64$QWORD$$QWORD
	.quad	.Lt26
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La21-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La21-.Ldebug_info0
# Symbol SDL_SWAPBE64
	.uleb128	8
	.ascii	"SDL_SWAPBE64\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La21-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La21-.Ldebug_info0
	.byte	0
# Procdef SDL_SwapFloatBE(const Single):Single;
	.uleb128	6
	.ascii	"SDL_SWAPFLOATBE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
	.quad	SDL2_$$_SDL_SWAPFLOATBE$SINGLE$$SINGLE
	.quad	.Lt27
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La29-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La29-.Ldebug_info0
# Symbol SDL_SWAPFLOATBE
	.uleb128	8
	.ascii	"SDL_SWAPFLOATBE\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La29-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SDL_RWsize(PSDL_RWops):Int64;
	.uleb128	6
	.ascii	"SDL_RWSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La19-.Ldebug_info0
	.quad	SDL2_$$_SDL_RWSIZE$PSDL_RWOPS$$INT64
	.quad	.Lt28
# Symbol CTX
	.uleb128	7
	.ascii	"CTX\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La63-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La19-.Ldebug_info0
# Symbol SDL_RWSIZE
	.uleb128	8
	.ascii	"SDL_RWSIZE\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La19-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La19-.Ldebug_info0
	.byte	0
# Procdef SDL_RWseek(PSDL_RWops;Int64;LongInt):Int64;
	.uleb128	6
	.ascii	"SDL_RWSEEK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La19-.Ldebug_info0
	.quad	SDL2_$$_SDL_RWSEEK$PSDL_RWOPS$INT64$LONGINT$$INT64
	.quad	.Lt29
# Symbol CTX
	.uleb128	7
	.ascii	"CTX\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La63-.Ldebug_info0
# Symbol OFFSET
	.uleb128	7
	.ascii	"OFFSET\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La19-.Ldebug_info0
# Symbol WHENCE
	.uleb128	7
	.ascii	"WHENCE\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La17-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La19-.Ldebug_info0
# Symbol SDL_RWSEEK
	.uleb128	8
	.ascii	"SDL_RWSEEK\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La19-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La19-.Ldebug_info0
	.byte	0
# Procdef SDL_RWtell(PSDL_RWops):Int64;
	.uleb128	6
	.ascii	"SDL_RWTELL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La19-.Ldebug_info0
	.quad	SDL2_$$_SDL_RWTELL$PSDL_RWOPS$$INT64
	.quad	.Lt30
# Symbol CTX
	.uleb128	7
	.ascii	"CTX\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La63-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La19-.Ldebug_info0
# Symbol SDL_RWTELL
	.uleb128	8
	.ascii	"SDL_RWTELL\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La19-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La19-.Ldebug_info0
	.byte	0
# Procdef SDL_RWread(PSDL_RWops;Pointer;LongWord;LongWord):DWord;
	.uleb128	6
	.ascii	"SDL_RWREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La55-.Ldebug_info0
	.quad	SDL2_$$_SDL_RWREAD$PSDL_RWOPS$POINTER$LONGWORD$LONGWORD$$LONGWORD
	.quad	.Lt31
# Symbol CTX
	.uleb128	7
	.ascii	"CTX\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La63-.Ldebug_info0
# Symbol PTR
	.uleb128	7
	.ascii	"PTR\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La25-.Ldebug_info0
# Symbol SIZE
	.uleb128	7
	.ascii	"SIZE\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La55-.Ldebug_info0
# Symbol N
	.uleb128	7
	.ascii	"N\000"
	.byte	2
	.byte	144
	.uleb128	9
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol SDL_RWREAD
	.uleb128	8
	.ascii	"SDL_RWREAD\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.byte	0
# Procdef SDL_RWwrite(PSDL_RWops;Pointer;LongWord;LongWord):DWord;
	.uleb128	6
	.ascii	"SDL_RWWRITE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La55-.Ldebug_info0
	.quad	SDL2_$$_SDL_RWWRITE$PSDL_RWOPS$POINTER$LONGWORD$LONGWORD$$LONGWORD
	.quad	.Lt32
# Symbol CTX
	.uleb128	7
	.ascii	"CTX\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La63-.Ldebug_info0
# Symbol PTR
	.uleb128	7
	.ascii	"PTR\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La25-.Ldebug_info0
# Symbol SIZE
	.uleb128	7
	.ascii	"SIZE\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La55-.Ldebug_info0
# Symbol N
	.uleb128	7
	.ascii	"N\000"
	.byte	2
	.byte	144
	.uleb128	9
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol SDL_RWWRITE
	.uleb128	8
	.ascii	"SDL_RWWRITE\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.byte	0
# Procdef SDL_RWclose(PSDL_RWops):LongInt;
	.uleb128	6
	.ascii	"SDL_RWCLOSE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La17-.Ldebug_info0
	.quad	SDL2_$$_SDL_RWCLOSE$PSDL_RWOPS$$LONGINT
	.quad	.Lt33
# Symbol CTX
	.uleb128	7
	.ascii	"CTX\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La63-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol SDL_RWCLOSE
	.uleb128	8
	.ascii	"SDL_RWCLOSE\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.byte	0
# Procdef SDL_AUDIO_BITSIZE(Word):Word;
	.uleb128	6
	.ascii	"SDL_AUDIO_BITSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La61-.Ldebug_info0
	.quad	SDL2_$$_SDL_AUDIO_BITSIZE$WORD$$WORD
	.quad	.Lt34
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La61-.Ldebug_info0
# Symbol SDL_AUDIO_BITSIZE
	.uleb128	8
	.ascii	"SDL_AUDIO_BITSIZE\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La61-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La61-.Ldebug_info0
	.byte	0
# Procdef SDL_AUDIO_ISFLOAT(Word):Boolean;
	.uleb128	6
	.ascii	"SDL_AUDIO_ISFLOAT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La263-.Ldebug_info0
	.quad	SDL2_$$_SDL_AUDIO_ISFLOAT$WORD$$BOOLEAN
	.quad	.Lt35
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol SDL_AUDIO_ISFLOAT
	.uleb128	8
	.ascii	"SDL_AUDIO_ISFLOAT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
	.byte	0
# Procdef SDL_AUDIO_ISBIGENDIAN(Word):Boolean;
	.uleb128	6
	.ascii	"SDL_AUDIO_ISBIGENDIAN\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La263-.Ldebug_info0
	.quad	SDL2_$$_SDL_AUDIO_ISBIGENDIAN$WORD$$BOOLEAN
	.quad	.Lt36
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol SDL_AUDIO_ISBIGENDIAN
	.uleb128	8
	.ascii	"SDL_AUDIO_ISBIGENDIAN\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
	.byte	0
# Procdef SDL_AUDIO_ISSIGNED(Word):Boolean;
	.uleb128	6
	.ascii	"SDL_AUDIO_ISSIGNED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La263-.Ldebug_info0
	.quad	SDL2_$$_SDL_AUDIO_ISSIGNED$WORD$$BOOLEAN
	.quad	.Lt37
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol SDL_AUDIO_ISSIGNED
	.uleb128	8
	.ascii	"SDL_AUDIO_ISSIGNED\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
	.byte	0
# Procdef SDL_AUDIO_ISINT(Word):Boolean;
	.uleb128	6
	.ascii	"SDL_AUDIO_ISINT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La263-.Ldebug_info0
	.quad	SDL2_$$_SDL_AUDIO_ISINT$WORD$$BOOLEAN
	.quad	.Lt38
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol SDL_AUDIO_ISINT
	.uleb128	8
	.ascii	"SDL_AUDIO_ISINT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
	.byte	0
# Procdef SDL_AUDIO_ISLITTLEENDIAN(Word):Boolean;
	.uleb128	6
	.ascii	"SDL_AUDIO_ISLITTLEENDIAN\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La263-.Ldebug_info0
	.quad	SDL2_$$_SDL_AUDIO_ISLITTLEENDIAN$WORD$$BOOLEAN
	.quad	.Lt39
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol SDL_AUDIO_ISLITTLEENDIAN
	.uleb128	8
	.ascii	"SDL_AUDIO_ISLITTLEENDIAN\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
	.byte	0
# Procdef SDL_AUDIO_ISUNSIGNED(Word):Boolean;
	.uleb128	6
	.ascii	"SDL_AUDIO_ISUNSIGNED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La263-.Ldebug_info0
	.quad	SDL2_$$_SDL_AUDIO_ISUNSIGNED$WORD$$BOOLEAN
	.quad	.Lt40
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol SDL_AUDIO_ISUNSIGNED
	.uleb128	8
	.ascii	"SDL_AUDIO_ISUNSIGNED\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
	.byte	0
# Procdef SDL_LoadWAV(PChar;PSDL_AudioSpec;PPByte;PDWord):^TSDL_AudioSpec;
	.uleb128	6
	.ascii	"SDL_LOADWAV\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La71-.Ldebug_info0
	.quad	SDL2_$$_SDL_LOADWAV$PCHAR$PSDL_AUDIOSPEC$PPBYTE$PDWORD$$PSDL_AUDIOSPEC
	.quad	.Lt41
# Symbol FILE_
	.uleb128	7
	.ascii	"FILE_\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La261-.Ldebug_info0
# Symbol SPEC
	.uleb128	7
	.ascii	"SPEC\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La71-.Ldebug_info0
# Symbol AUDIO_BUF
	.uleb128	7
	.ascii	"AUDIO_BUF\000"
	.byte	2
	.byte	144
	.uleb128	9
	.long	.La265-.Ldebug_info0
# Symbol AUDIO_LEN
	.uleb128	7
	.ascii	"AUDIO_LEN\000"
	.byte	2
	.byte	144
	.uleb128	9
	.long	.La267-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La71-.Ldebug_info0
# Symbol SDL_LOADWAV
	.uleb128	8
	.ascii	"SDL_LOADWAV\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La71-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La71-.Ldebug_info0
	.byte	0
# Procdef SDL_PIXELFLAG(LongWord):DWord;
	.uleb128	6
	.ascii	"SDL_PIXELFLAG\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La55-.Ldebug_info0
	.quad	SDL2_$$_SDL_PIXELFLAG$LONGWORD$$LONGWORD
	.quad	.Lt42
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol SDL_PIXELFLAG
	.uleb128	8
	.ascii	"SDL_PIXELFLAG\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.byte	0
# Procdef SDL_PIXELTYPE(LongWord):DWord;
	.uleb128	6
	.ascii	"SDL_PIXELTYPE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La55-.Ldebug_info0
	.quad	SDL2_$$_SDL_PIXELTYPE$LONGWORD$$LONGWORD
	.quad	.Lt43
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol SDL_PIXELTYPE
	.uleb128	8
	.ascii	"SDL_PIXELTYPE\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.byte	0
# Procdef SDL_PIXELORDER(LongWord):DWord;
	.uleb128	6
	.ascii	"SDL_PIXELORDER\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La55-.Ldebug_info0
	.quad	SDL2_$$_SDL_PIXELORDER$LONGWORD$$LONGWORD
	.quad	.Lt44
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol SDL_PIXELORDER
	.uleb128	8
	.ascii	"SDL_PIXELORDER\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.byte	0
# Procdef SDL_PIXELLAYOUT(LongWord):DWord;
	.uleb128	6
	.ascii	"SDL_PIXELLAYOUT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La55-.Ldebug_info0
	.quad	SDL2_$$_SDL_PIXELLAYOUT$LONGWORD$$LONGWORD
	.quad	.Lt45
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol SDL_PIXELLAYOUT
	.uleb128	8
	.ascii	"SDL_PIXELLAYOUT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.byte	0
# Procdef SDL_BITSPERPIXEL(LongWord):DWord;
	.uleb128	6
	.ascii	"SDL_BITSPERPIXEL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La55-.Ldebug_info0
	.quad	SDL2_$$_SDL_BITSPERPIXEL$LONGWORD$$LONGWORD
	.quad	.Lt46
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol SDL_BITSPERPIXEL
	.uleb128	8
	.ascii	"SDL_BITSPERPIXEL\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.byte	0
# Procdef SDL_BYTESPERPIXEL(LongWord):DWord;
	.uleb128	6
	.ascii	"SDL_BYTESPERPIXEL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La55-.Ldebug_info0
	.quad	SDL2_$$_SDL_BYTESPERPIXEL$LONGWORD$$LONGWORD
	.quad	.Lt47
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol SDL_BYTESPERPIXEL
	.uleb128	8
	.ascii	"SDL_BYTESPERPIXEL\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.byte	0
# Procdef SDL_ISPIXELFORMAT_INDEXED(LongWord):Boolean;
	.uleb128	6
	.ascii	"SDL_ISPIXELFORMAT_INDEXED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La263-.Ldebug_info0
	.quad	SDL2_$$_SDL_ISPIXELFORMAT_INDEXED$LONGWORD$$BOOLEAN
	.quad	.Lt48
# Symbol FORMAT
	.uleb128	7
	.ascii	"FORMAT\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol SDL_ISPIXELFORMAT_INDEXED
	.uleb128	8
	.ascii	"SDL_ISPIXELFORMAT_INDEXED\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
	.byte	0
# Procdef SDL_ISPIXELFORMAT_ALPHA(LongWord):Boolean;
	.uleb128	6
	.ascii	"SDL_ISPIXELFORMAT_ALPHA\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La263-.Ldebug_info0
	.quad	SDL2_$$_SDL_ISPIXELFORMAT_ALPHA$LONGWORD$$BOOLEAN
	.quad	.Lt49
# Symbol FORMAT
	.uleb128	7
	.ascii	"FORMAT\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol SDL_ISPIXELFORMAT_ALPHA
	.uleb128	8
	.ascii	"SDL_ISPIXELFORMAT_ALPHA\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
	.byte	0
# Procdef SDL_ISPIXELFORMAT_FOURCC(LongWord):Boolean;
	.uleb128	6
	.ascii	"SDL_ISPIXELFORMAT_FOURCC\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La263-.Ldebug_info0
	.quad	SDL2_$$_SDL_ISPIXELFORMAT_FOURCC$LONGWORD$$BOOLEAN
	.quad	.Lt50
# Symbol FORMAT
	.uleb128	7
	.ascii	"FORMAT\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol SDL_ISPIXELFORMAT_FOURCC
	.uleb128	8
	.ascii	"SDL_ISPIXELFORMAT_FOURCC\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
	.byte	0
# Procdef SDL_RectEmpty(const PSDL_Rect):LongBool;
	.uleb128	6
	.ascii	"SDL_RECTEMPTY\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La3-.Ldebug_info0
	.quad	SDL2_$$_SDL_RECTEMPTY$PSDL_RECT$$LONGBOOL
	.quad	.Lt51
# Symbol X
	.uleb128	7
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La101-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La3-.Ldebug_info0
# Symbol SDL_RECTEMPTY
	.uleb128	8
	.ascii	"SDL_RECTEMPTY\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La3-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La3-.Ldebug_info0
	.byte	0
# Procdef SDL_RectEquals(const PSDL_Rect;const PSDL_Rect):LongBool;
	.uleb128	6
	.ascii	"SDL_RECTEQUALS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La3-.Ldebug_info0
	.quad	SDL2_$$_SDL_RECTEQUALS$PSDL_RECT$PSDL_RECT$$LONGBOOL
	.quad	.Lt52
# Symbol A
	.uleb128	7
	.ascii	"A\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La101-.Ldebug_info0
# Symbol B
	.uleb128	7
	.ascii	"B\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La101-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La3-.Ldebug_info0
# Symbol SDL_RECTEQUALS
	.uleb128	8
	.ascii	"SDL_RECTEQUALS\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La3-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La3-.Ldebug_info0
	.byte	0
# Procdef SDL_MUSTLOCK(PSDL_Surface):Boolean;
	.uleb128	6
	.ascii	"SDL_MUSTLOCK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La263-.Ldebug_info0
	.quad	SDL2_$$_SDL_MUSTLOCK$PSDL_SURFACE$$BOOLEAN
	.quad	.Lt53
# Symbol S
	.uleb128	7
	.ascii	"S\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La105-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol SDL_MUSTLOCK
	.uleb128	8
	.ascii	"SDL_MUSTLOCK\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
	.byte	0
# Procdef SDL_LoadBMP(PChar):^TSDL_Surface;
	.uleb128	6
	.ascii	"SDL_LOADBMP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La105-.Ldebug_info0
	.quad	SDL2_$$_SDL_LOADBMP$PCHAR$$PSDL_SURFACE
	.quad	.Lt54
# Symbol FILE_
	.uleb128	7
	.ascii	"FILE_\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La261-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La105-.Ldebug_info0
# Symbol SDL_LOADBMP
	.uleb128	8
	.ascii	"SDL_LOADBMP\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La105-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La105-.Ldebug_info0
	.byte	0
# Procdef SDL_SaveBMP(PSDL_Surface;PChar):LongInt;
	.uleb128	6
	.ascii	"SDL_SAVEBMP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La17-.Ldebug_info0
	.quad	SDL2_$$_SDL_SAVEBMP$PSDL_SURFACE$PCHAR$$LONGINT
	.quad	.Lt55
# Symbol SURFACE
	.uleb128	7
	.ascii	"SURFACE\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La105-.Ldebug_info0
# Symbol FILE_
	.uleb128	7
	.ascii	"FILE_\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La261-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol SDL_SAVEBMP
	.uleb128	8
	.ascii	"SDL_SAVEBMP\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.byte	0
# Procdef SDL_BlitSurface(PSDL_Surface;const PSDL_Rect;PSDL_Surface;PSDL_Rect):LongInt;
	.uleb128	6
	.ascii	"SDL_BLITSURFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La17-.Ldebug_info0
	.quad	SDL2_$$_SDL_BLITSURFACE$PSDL_SURFACE$PSDL_RECT$PSDL_SURFACE$PSDL_RECT$$LONGINT
	.quad	.Lt56
# Symbol SRC
	.uleb128	7
	.ascii	"SRC\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La105-.Ldebug_info0
# Symbol SRCRECT
	.uleb128	7
	.ascii	"SRCRECT\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La101-.Ldebug_info0
# Symbol DST
	.uleb128	7
	.ascii	"DST\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La105-.Ldebug_info0
# Symbol DSTRECT
	.uleb128	7
	.ascii	"DSTRECT\000"
	.byte	2
	.byte	144
	.uleb128	9
	.long	.La101-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol SDL_BLITSURFACE
	.uleb128	8
	.ascii	"SDL_BLITSURFACE\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.byte	0
# Procdef SDL_BlitScaled(PSDL_Surface;const PSDL_Rect;PSDL_Surface;PSDL_Rect):LongInt;
	.uleb128	6
	.ascii	"SDL_BLITSCALED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La17-.Ldebug_info0
	.quad	SDL2_$$_SDL_BLITSCALED$PSDL_SURFACE$PSDL_RECT$PSDL_SURFACE$PSDL_RECT$$LONGINT
	.quad	.Lt57
# Symbol SRC
	.uleb128	7
	.ascii	"SRC\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La105-.Ldebug_info0
# Symbol SRCRECT
	.uleb128	7
	.ascii	"SRCRECT\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La101-.Ldebug_info0
# Symbol DST
	.uleb128	7
	.ascii	"DST\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La105-.Ldebug_info0
# Symbol DSTRECT
	.uleb128	7
	.ascii	"DSTRECT\000"
	.byte	2
	.byte	144
	.uleb128	9
	.long	.La101-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol SDL_BLITSCALED
	.uleb128	8
	.ascii	"SDL_BLITSCALED\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.byte	0
# Procdef SDL_GameControllerAddMappingsFromFile(PChar):LongInt;
	.uleb128	6
	.ascii	"SDL_GAMECONTROLLERADDMAPPINGSFROMFILE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La17-.Ldebug_info0
	.quad	SDL2_$$_SDL_GAMECONTROLLERADDMAPPINGSFROMFILE$PCHAR$$LONGINT
	.quad	.Lt58
# Symbol FILE_
	.uleb128	7
	.ascii	"FILE_\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La261-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol SDL_GAMECONTROLLERADDMAPPINGSFROMFILE
	.uleb128	8
	.ascii	"SDL_GAMECONTROLLERADDMAPPINGSFROMFILE\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.byte	0
# Procdef SDL_QuitRequested:Boolean;
	.uleb128	6
	.ascii	"SDL_QUITREQUESTED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La263-.Ldebug_info0
	.quad	SDL2_$$_SDL_QUITREQUESTED$$BOOLEAN
	.quad	.Lt59
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol SDL_QUITREQUESTED
	.uleb128	8
	.ascii	"SDL_QUITREQUESTED\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La263-.Ldebug_info0
	.byte	0
# Procdef SDL_GetEventState(LongWord):Byte;
	.uleb128	6
	.ascii	"SDL_GETEVENTSTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La67-.Ldebug_info0
	.quad	SDL2_$$_SDL_GETEVENTSTATE$LONGWORD$$BYTE
	.quad	.Lt60
# Symbol TYPE_
	.uleb128	7
	.ascii	"TYPE_\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La67-.Ldebug_info0
# Symbol SDL_GETEVENTSTATE
	.uleb128	8
	.ascii	"SDL_GETEVENTSTATE\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La67-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La67-.Ldebug_info0
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition Pointer
.La25:
	.uleb128	10
	.ascii	"POINTER\000"
	.long	.La269-.Ldebug_info0
.La269:
	.uleb128	11
.La26:
	.uleb128	12
	.long	.La25-.Ldebug_info0
# Definition Byte
.La67:
	.uleb128	10
	.ascii	"BYTE\000"
	.long	.La270-.Ldebug_info0
.La270:
	.uleb128	13
	.ascii	"BYTE\000"
	.byte	7
	.byte	1
.La68:
	.uleb128	12
	.long	.La67-.Ldebug_info0
# Definition ShortInt
.La1:
	.uleb128	10
	.ascii	"SHORTINT\000"
	.long	.La271-.Ldebug_info0
.La271:
	.uleb128	13
	.ascii	"SHORTINT\000"
	.byte	5
	.byte	1
.La2:
	.uleb128	12
	.long	.La1-.Ldebug_info0
# Definition Word
.La61:
	.uleb128	10
	.ascii	"WORD\000"
	.long	.La272-.Ldebug_info0
.La272:
	.uleb128	13
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La62:
	.uleb128	12
	.long	.La61-.Ldebug_info0
# Definition SmallInt
.La15:
	.uleb128	10
	.ascii	"SMALLINT\000"
	.long	.La273-.Ldebug_info0
.La273:
	.uleb128	13
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.La16:
	.uleb128	12
	.long	.La15-.Ldebug_info0
# Definition LongWord
.La55:
	.uleb128	10
	.ascii	"LONGWORD\000"
	.long	.La274-.Ldebug_info0
.La274:
	.uleb128	13
	.ascii	"LONGWORD\000"
	.byte	7
	.byte	4
.La56:
	.uleb128	12
	.long	.La55-.Ldebug_info0
# Definition LongInt
.La17:
	.uleb128	10
	.ascii	"LONGINT\000"
	.long	.La275-.Ldebug_info0
.La275:
	.uleb128	13
	.ascii	"LONGINT\000"
	.byte	5
	.byte	4
.La18:
	.uleb128	12
	.long	.La17-.Ldebug_info0
# Definition QWord
.La21:
	.uleb128	10
	.ascii	"QWORD\000"
	.long	.La276-.Ldebug_info0
.La276:
	.uleb128	13
	.ascii	"QWord\000"
	.byte	7
	.byte	8
.La22:
	.uleb128	12
	.long	.La21-.Ldebug_info0
# Definition Int64
.La19:
	.uleb128	10
	.ascii	"INT64\000"
	.long	.La277-.Ldebug_info0
.La277:
	.uleb128	13
	.ascii	"Int64\000"
	.byte	5
	.byte	8
.La20:
	.uleb128	12
	.long	.La19-.Ldebug_info0
# Definition Boolean
.La263:
	.uleb128	10
	.ascii	"BOOLEAN\000"
	.long	.La278-.Ldebug_info0
.La278:
	.uleb128	13
	.ascii	"Boolean\000"
	.byte	2
	.byte	1
.La264:
	.uleb128	12
	.long	.La263-.Ldebug_info0
# Definition LongBool
.La3:
	.uleb128	10
	.ascii	"LONGBOOL\000"
	.long	.La279-.Ldebug_info0
.La279:
	.uleb128	13
	.ascii	"LongBool\000"
	.byte	2
	.byte	4
.La4:
	.uleb128	12
	.long	.La3-.Ldebug_info0
# Definition ShortString
.La45:
	.uleb128	10
	.ascii	"SHORTSTRING\000"
	.long	.La280-.Ldebug_info0
.La280:
	.uleb128	14
	.ascii	"ShortString\000"
	.uleb128	256
	.uleb128	15
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La281-.Ldebug_info0
	.byte	0
.La281:
	.uleb128	16
	.uleb128	256
	.uleb128	1
	.long	.La282-.Ldebug_info0
	.uleb128	17
	.uleb128	1
	.uleb128	255
	.long	.La67-.Ldebug_info0
	.byte	0
.La46:
	.uleb128	12
	.long	.La45-.Ldebug_info0
# Definition Single
.La29:
	.uleb128	10
	.ascii	"SINGLE\000"
	.long	.La284-.Ldebug_info0
.La284:
	.uleb128	13
	.ascii	"SINGLE\000"
	.byte	4
	.byte	4
.La30:
	.uleb128	12
	.long	.La29-.Ldebug_info0
# Definition PChar
.La261:
	.uleb128	10
	.ascii	"PCHAR\000"
	.long	.La285-.Ldebug_info0
.La285:
	.uleb128	18
	.long	.La282-.Ldebug_info0
.La262:
	.uleb128	12
	.long	.La261-.Ldebug_info0
# Definition PDWord
.La267:
	.uleb128	10
	.ascii	"PDWORD\000"
	.long	.La286-.Ldebug_info0
.La286:
	.uleb128	18
	.long	.La55-.Ldebug_info0
.La268:
	.uleb128	12
	.long	.La267-.Ldebug_info0
# Definition PLongint
.La27:
	.uleb128	10
	.ascii	"PLONGINT\000"
	.long	.La287-.Ldebug_info0
.La287:
	.uleb128	18
	.long	.La17-.Ldebug_info0
.La28:
	.uleb128	12
	.long	.La27-.Ldebug_info0
# Definition PPByte
.La265:
	.uleb128	10
	.ascii	"PPBYTE\000"
	.long	.La288-.Ldebug_info0
.La288:
	.uleb128	18
	.long	.La289-.Ldebug_info0
.La266:
	.uleb128	12
	.long	.La265-.Ldebug_info0
# Definition Char
.La282:
	.uleb128	10
	.ascii	"CHAR\000"
	.long	.La291-.Ldebug_info0
.La291:
	.uleb128	13
	.ascii	"Char\000"
	.byte	8
	.byte	1
.La283:
	.uleb128	12
	.long	.La282-.Ldebug_info0
# Definition PByte
.La289:
	.uleb128	10
	.ascii	"PBYTE\000"
	.long	.La292-.Ldebug_info0
.La292:
	.uleb128	18
	.long	.La67-.Ldebug_info0
.La290:
	.uleb128	12
	.long	.La289-.Ldebug_info0
# Defs - End unit SYSTEM has index 1
# Defs - Begin unit OBJPAS has index 6
# Defs - End unit OBJPAS has index 6
# Defs - Begin unit SDL2 has index 254
# Definition PUint64
.La5:
	.uleb128	10
	.ascii	"PUINT64\000"
	.long	.La293-.Ldebug_info0
.La293:
	.uleb128	18
	.long	.La21-.Ldebug_info0
.La6:
	.uleb128	12
	.long	.La5-.Ldebug_info0
# Definition PSint8
.La7:
	.uleb128	10
	.ascii	"PSINT8\000"
	.long	.La294-.Ldebug_info0
.La294:
	.uleb128	18
	.long	.La1-.Ldebug_info0
.La8:
	.uleb128	12
	.long	.La7-.Ldebug_info0
# Definition PSint16
.La9:
	.uleb128	10
	.ascii	"PSINT16\000"
	.long	.La295-.Ldebug_info0
.La295:
	.uleb128	18
	.long	.La15-.Ldebug_info0
.La10:
	.uleb128	12
	.long	.La9-.Ldebug_info0
# Definition PSint32
.La11:
	.uleb128	10
	.ascii	"PSINT32\000"
	.long	.La296-.Ldebug_info0
.La296:
	.uleb128	18
	.long	.La17-.Ldebug_info0
.La12:
	.uleb128	12
	.long	.La11-.Ldebug_info0
# Definition PSint64
.La13:
	.uleb128	10
	.ascii	"PSINT64\000"
	.long	.La297-.Ldebug_info0
.La297:
	.uleb128	18
	.long	.La19-.Ldebug_info0
.La14:
	.uleb128	12
	.long	.La13-.Ldebug_info0
# Definition psize_t
.La23:
	.uleb128	10
	.ascii	"PSIZE_T\000"
	.long	.La298-.Ldebug_info0
.La298:
	.uleb128	18
	.long	.La21-.Ldebug_info0
.La24:
	.uleb128	12
	.long	.La23-.Ldebug_info0
# Definition <procedure variable type of function(Pointer;Pointer):LongInt;CDecl>
.La31:
	.uleb128	10
	.ascii	"COMPAREFN\000"
	.long	.La299-.Ldebug_info0
.La299:
	.uleb128	19
	.ascii	"COMPAREFN\000"
	.byte	1
	.long	.La17-.Ldebug_info0
	.uleb128	20
	.ascii	"A1\000"
	.long	.La25-.Ldebug_info0
	.uleb128	20
	.ascii	"A2\000"
	.long	.La25-.Ldebug_info0
	.byte	0
.La32:
	.uleb128	12
	.long	.La31-.Ldebug_info0
# Definition PSDL_version
.La33:
	.uleb128	10
	.ascii	"PSDL_VERSION\000"
	.long	.La300-.Ldebug_info0
.La300:
	.uleb128	18
	.long	.La35-.Ldebug_info0
.La34:
	.uleb128	12
	.long	.La33-.Ldebug_info0
# Definition TSDL_version
.La35:
	.uleb128	10
	.ascii	"TSDL_VERSION\000"
	.long	.La301-.Ldebug_info0
.La301:
	.uleb128	14
	.ascii	"TSDL_VERSION\000"
	.uleb128	3
	.uleb128	15
	.ascii	"MAJOR\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"MINOR\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PATCH\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La67-.Ldebug_info0
	.byte	0
.La36:
	.uleb128	12
	.long	.La35-.Ldebug_info0
# Definition TSDL_errorcode
.La37:
	.uleb128	10
	.ascii	"TSDL_ERRORCODE\000"
	.long	.La302-.Ldebug_info0
.La302:
	.uleb128	21
	.ascii	"TSDL_ERRORCODE\000"
	.byte	4
	.uleb128	22
	.ascii	"SDL_ENOMEM\000"
	.long	0
	.uleb128	22
	.ascii	"SDL_EFREAD\000"
	.long	1
	.uleb128	22
	.ascii	"SDL_EFWRITE\000"
	.long	2
	.uleb128	22
	.ascii	"SDL_EFSEEK\000"
	.long	3
	.uleb128	22
	.ascii	"SDL_UNSUPPORTED_\000"
	.long	4
	.uleb128	22
	.ascii	"SDL_LASTERROR\000"
	.long	5
	.byte	0
.La38:
	.uleb128	12
	.long	.La37-.Ldebug_info0
# Definition TSDL_LogPriority
.La39:
	.uleb128	10
	.ascii	"TSDL_LOGPRIORITY\000"
	.long	.La303-.Ldebug_info0
.La303:
	.uleb128	21
	.ascii	"TSDL_LOGPRIORITY\000"
	.byte	4
	.uleb128	22
	.ascii	"SDL_LOG_PRIORITY_VERBOSE\000"
	.long	1
	.uleb128	22
	.ascii	"SDL_LOG_PRIORITY_DEBUG\000"
	.long	2
	.uleb128	22
	.ascii	"SDL_LOG_PRIORITY_INFO\000"
	.long	3
	.uleb128	22
	.ascii	"SDL_LOG_PRIORITY_WARN\000"
	.long	4
	.uleb128	22
	.ascii	"SDL_LOG_PRIORITY_ERROR\000"
	.long	5
	.uleb128	22
	.ascii	"SDL_LOG_PRIORITY_CRITICAL\000"
	.long	6
	.uleb128	22
	.ascii	"SDL_NUM_LOG_PRIORITIES\000"
	.long	7
	.byte	0
.La40:
	.uleb128	12
	.long	.La39-.Ldebug_info0
# Definition PSDL_LogOutputFunction
.La41:
	.uleb128	10
	.ascii	"PSDL_LOGOUTPUTFUNCTION\000"
	.long	.La304-.Ldebug_info0
.La304:
	.uleb128	18
	.long	.La43-.Ldebug_info0
.La42:
	.uleb128	12
	.long	.La41-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer;LongInt;TSDL_LogPriority;const PChar);CDecl>
.La43:
	.uleb128	10
	.ascii	"TSDL_LOGOUTPUTFUNCTION\000"
	.long	.La305-.Ldebug_info0
.La305:
	.uleb128	23
	.ascii	"TSDL_LOGOUTPUTFUNCTION\000"
	.byte	1
	.uleb128	20
	.ascii	"USERDATA\000"
	.long	.La25-.Ldebug_info0
	.uleb128	20
	.ascii	"CATEGORY\000"
	.long	.La17-.Ldebug_info0
	.uleb128	20
	.ascii	"PRIORITY\000"
	.long	.La39-.Ldebug_info0
	.uleb128	20
	.ascii	"MESSAGE\000"
	.long	.La261-.Ldebug_info0
	.byte	0
.La44:
	.uleb128	12
	.long	.La43-.Ldebug_info0
# Definition TSDL_HintPriority
.La47:
	.uleb128	10
	.ascii	"TSDL_HINTPRIORITY\000"
	.long	.La306-.Ldebug_info0
.La306:
	.uleb128	21
	.ascii	"TSDL_HINTPRIORITY\000"
	.byte	4
	.uleb128	22
	.ascii	"SDL_HINT_DEFAULT\000"
	.long	0
	.uleb128	22
	.ascii	"SDL_HINT_NORMAL\000"
	.long	1
	.uleb128	22
	.ascii	"SDL_HINT_OVERRIDE\000"
	.long	2
	.byte	0
.La48:
	.uleb128	12
	.long	.La47-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer;PChar;PChar;PChar);CDecl>
.La49:
	.uleb128	10
	.ascii	"TSDL_HINTCALLBACK\000"
	.long	.La307-.Ldebug_info0
.La307:
	.uleb128	23
	.ascii	"TSDL_HINTCALLBACK\000"
	.byte	1
	.uleb128	20
	.ascii	"USERDATA\000"
	.long	.La25-.Ldebug_info0
	.uleb128	20
	.ascii	"NAME\000"
	.long	.La261-.Ldebug_info0
	.uleb128	20
	.ascii	"OLDVALUE\000"
	.long	.La261-.Ldebug_info0
	.uleb128	20
	.ascii	"NEWVALUE\000"
	.long	.La261-.Ldebug_info0
	.byte	0
.La50:
	.uleb128	12
	.long	.La49-.Ldebug_info0
# Definition TSDL_PowerState
.La51:
	.uleb128	10
	.ascii	"TSDL_POWERSTATE\000"
	.long	.La308-.Ldebug_info0
.La308:
	.uleb128	21
	.ascii	"TSDL_POWERSTATE\000"
	.byte	4
	.uleb128	22
	.ascii	"SDL_POWERSTATE_UNKNOWN\000"
	.long	0
	.uleb128	22
	.ascii	"SDL_POWERSTATE_ON_BATTERY\000"
	.long	1
	.uleb128	22
	.ascii	"SDL_POWERSTATE_NO_BATTERY\000"
	.long	2
	.uleb128	22
	.ascii	"SDL_POWERSTATE_CHARGING\000"
	.long	3
	.uleb128	22
	.ascii	"SDL_POWERSTATE_CHARGED\000"
	.long	4
	.byte	0
.La52:
	.uleb128	12
	.long	.La51-.Ldebug_info0
# Definition <procedure variable type of function(LongWord;Pointer):DWord;Register>
.La53:
	.uleb128	10
	.ascii	"TSDL_TIMERCALLBACK\000"
	.long	.La309-.Ldebug_info0
.La309:
	.uleb128	19
	.ascii	"TSDL_TIMERCALLBACK\000"
	.byte	1
	.long	.La55-.Ldebug_info0
	.uleb128	20
	.ascii	"INTERVAL\000"
	.long	.La55-.Ldebug_info0
	.uleb128	20
	.ascii	"PARAM\000"
	.long	.La25-.Ldebug_info0
	.byte	0
.La54:
	.uleb128	12
	.long	.La53-.Ldebug_info0
# Definition TSDL_ThreadPriority
.La57:
	.uleb128	10
	.ascii	"TSDL_THREADPRIORITY\000"
	.long	.La310-.Ldebug_info0
.La310:
	.uleb128	21
	.ascii	"TSDL_THREADPRIORITY\000"
	.byte	4
	.uleb128	22
	.ascii	"SDL_THREAD_PRIORITY_LOW\000"
	.long	0
	.uleb128	22
	.ascii	"SDL_THREAD_PRIORITY_NORMAL\000"
	.long	1
	.uleb128	22
	.ascii	"SDL_THREAD_PRIORITY_HIGH\000"
	.long	2
	.byte	0
.La58:
	.uleb128	12
	.long	.La57-.Ldebug_info0
# Definition <procedure variable type of function(Pointer):LongInt;CDecl>
.La59:
	.uleb128	10
	.ascii	"TSDL_THREADFUNCTION\000"
	.long	.La311-.Ldebug_info0
.La311:
	.uleb128	19
	.ascii	"TSDL_THREADFUNCTION\000"
	.byte	1
	.long	.La17-.Ldebug_info0
	.uleb128	20
	.ascii	"DATA\000"
	.long	.La25-.Ldebug_info0
	.byte	0
.La60:
	.uleb128	12
	.long	.La59-.Ldebug_info0
# Definition PSDL_RWops
.La63:
	.uleb128	10
	.ascii	"PSDL_RWOPS\000"
	.long	.La312-.Ldebug_info0
.La312:
	.uleb128	18
	.long	.La65-.Ldebug_info0
.La64:
	.uleb128	12
	.long	.La63-.Ldebug_info0
# Definition TSDL_RWops
.La65:
	.uleb128	10
	.ascii	"TSDL_RWOPS\000"
	.long	.La313-.Ldebug_info0
.La313:
	.uleb128	14
	.ascii	"TSDL_RWOPS\000"
	.uleb128	88
	.uleb128	15
	.ascii	"SIZE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La314-.Ldebug_info0
	.uleb128	15
	.ascii	"SEEK\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La316-.Ldebug_info0
	.uleb128	15
	.ascii	"READ\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La318-.Ldebug_info0
	.uleb128	15
	.ascii	"WRITE\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La320-.Ldebug_info0
	.uleb128	15
	.ascii	"CLOSE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La322-.Ldebug_info0
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"HIDDEN\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La324-.Ldebug_info0
	.byte	0
.La66:
	.uleb128	12
	.long	.La65-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer;PByte;LongInt);CDecl>
.La69:
	.uleb128	10
	.ascii	"TSDL_AUDIOCALLBACK\000"
	.long	.La326-.Ldebug_info0
.La326:
	.uleb128	23
	.ascii	"TSDL_AUDIOCALLBACK\000"
	.byte	1
	.uleb128	20
	.ascii	"USERDATA\000"
	.long	.La25-.Ldebug_info0
	.uleb128	20
	.ascii	"STREAM\000"
	.long	.La289-.Ldebug_info0
	.uleb128	20
	.ascii	"LEN\000"
	.long	.La17-.Ldebug_info0
	.byte	0
.La70:
	.uleb128	12
	.long	.La69-.Ldebug_info0
# Definition PSDL_AudioSpec
.La71:
	.uleb128	10
	.ascii	"PSDL_AUDIOSPEC\000"
	.long	.La327-.Ldebug_info0
.La327:
	.uleb128	18
	.long	.La73-.Ldebug_info0
.La72:
	.uleb128	12
	.long	.La71-.Ldebug_info0
# Definition TSDL_AudioSpec
.La73:
	.uleb128	10
	.ascii	"TSDL_AUDIOSPEC\000"
	.long	.La328-.Ldebug_info0
.La328:
	.uleb128	14
	.ascii	"TSDL_AUDIOSPEC\000"
	.uleb128	32
	.uleb128	15
	.ascii	"FREQ\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"FORMAT\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"CHANNELS\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"SILENCE\000"
	.byte	2
	.byte	35
	.uleb128	7
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"SAMPLES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"SIZE\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"CALLBACK\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La69-.Ldebug_info0
	.uleb128	15
	.ascii	"USERDATA\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La25-.Ldebug_info0
	.byte	0
.La74:
	.uleb128	12
	.long	.La73-.Ldebug_info0
# Definition PSDL_AudioCVT
.La75:
	.uleb128	10
	.ascii	"PSDL_AUDIOCVT\000"
	.long	.La329-.Ldebug_info0
.La329:
	.uleb128	18
	.long	.La79-.Ldebug_info0
.La76:
	.uleb128	12
	.long	.La75-.Ldebug_info0
# Definition <procedure variable type of procedure(PSDL_AudioCVT;Word);CDecl>
.La77:
	.uleb128	10
	.ascii	"TSDL_AUDIOFILTER\000"
	.long	.La330-.Ldebug_info0
.La330:
	.uleb128	23
	.ascii	"TSDL_AUDIOFILTER\000"
	.byte	1
	.uleb128	20
	.ascii	"CVT\000"
	.long	.La75-.Ldebug_info0
	.uleb128	20
	.ascii	"FORMAT\000"
	.long	.La61-.Ldebug_info0
	.byte	0
.La78:
	.uleb128	12
	.long	.La77-.Ldebug_info0
# Definition TSDL_AudioCVT
.La79:
	.uleb128	10
	.ascii	"TSDL_AUDIOCVT\000"
	.long	.La331-.Ldebug_info0
.La331:
	.uleb128	14
	.ascii	"TSDL_AUDIOCVT\000"
	.uleb128	136
	.uleb128	15
	.ascii	"NEEDED\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"SRC_FORMAT\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"DST_FORMAT\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"RATE_INCR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La332-.Ldebug_info0
	.uleb128	15
	.ascii	"BUF\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La289-.Ldebug_info0
	.uleb128	15
	.ascii	"LEN\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"LEN_CVT\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"LEN_MULT\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"LEN_RATIO\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La332-.Ldebug_info0
	.uleb128	15
	.ascii	"FILTERS\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La334-.Ldebug_info0
	.uleb128	15
	.ascii	"FILTER_INDEX\000"
	.byte	3
	.byte	35
	.uleb128	128
	.long	.La17-.Ldebug_info0
	.byte	0
.La80:
	.uleb128	12
	.long	.La79-.Ldebug_info0
# Definition TSDL_AudioStatus
.La81:
	.uleb128	10
	.ascii	"TSDL_AUDIOSTATUS\000"
	.long	.La336-.Ldebug_info0
.La336:
	.uleb128	21
	.ascii	"TSDL_AUDIOSTATUS\000"
	.byte	4
	.uleb128	22
	.ascii	"SDL_AUDIO_STOPPED\000"
	.long	0
	.uleb128	22
	.ascii	"SDL_AUDIO_PLAYING\000"
	.long	1
	.uleb128	22
	.ascii	"SDL_AUDIO_PAUSED\000"
	.long	2
	.byte	0
.La82:
	.uleb128	12
	.long	.La81-.Ldebug_info0
# Definition PSDL_Color
.La83:
	.uleb128	10
	.ascii	"PSDL_COLOR\000"
	.long	.La337-.Ldebug_info0
.La337:
	.uleb128	18
	.long	.La85-.Ldebug_info0
.La84:
	.uleb128	12
	.long	.La83-.Ldebug_info0
# Definition TSDL_Color
.La85:
	.uleb128	10
	.ascii	"TSDL_COLOR\000"
	.long	.La338-.Ldebug_info0
.La338:
	.uleb128	14
	.ascii	"TSDL_COLOR\000"
	.uleb128	4
	.uleb128	15
	.ascii	"R\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"G\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"B\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"A\000"
	.byte	2
	.byte	35
	.uleb128	3
	.long	.La67-.Ldebug_info0
	.byte	0
.La86:
	.uleb128	12
	.long	.La85-.Ldebug_info0
# Definition PSDL_Colour
.La87:
	.uleb128	10
	.ascii	"PSDL_COLOUR\000"
	.long	.La339-.Ldebug_info0
.La339:
	.uleb128	18
	.long	.La85-.Ldebug_info0
.La88:
	.uleb128	12
	.long	.La87-.Ldebug_info0
# Definition PSDL_Palette
.La89:
	.uleb128	10
	.ascii	"PSDL_PALETTE\000"
	.long	.La340-.Ldebug_info0
.La340:
	.uleb128	18
	.long	.La91-.Ldebug_info0
.La90:
	.uleb128	12
	.long	.La89-.Ldebug_info0
# Definition TSDL_Palette
.La91:
	.uleb128	10
	.ascii	"TSDL_PALETTE\000"
	.long	.La341-.Ldebug_info0
.La341:
	.uleb128	14
	.ascii	"TSDL_PALETTE\000"
	.uleb128	24
	.uleb128	15
	.ascii	"NCOLORS\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"COLORS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La83-.Ldebug_info0
	.uleb128	15
	.ascii	"VERSION\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"REFCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La17-.Ldebug_info0
	.byte	0
.La92:
	.uleb128	12
	.long	.La91-.Ldebug_info0
# Definition PSDL_PixelFormat
.La93:
	.uleb128	10
	.ascii	"PSDL_PIXELFORMAT\000"
	.long	.La342-.Ldebug_info0
.La342:
	.uleb128	18
	.long	.La95-.Ldebug_info0
.La94:
	.uleb128	12
	.long	.La93-.Ldebug_info0
# Definition TSDL_PixelFormat
.La95:
	.uleb128	10
	.ascii	"TSDL_PIXELFORMAT\000"
	.long	.La343-.Ldebug_info0
.La343:
	.uleb128	14
	.ascii	"TSDL_PIXELFORMAT\000"
	.uleb128	56
	.uleb128	15
	.ascii	"FORMAT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"PALETTE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La89-.Ldebug_info0
	.uleb128	15
	.ascii	"BITSPERPIXEL\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"BYTESPERPIXEL\000"
	.byte	2
	.byte	35
	.uleb128	17
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La344-.Ldebug_info0
	.uleb128	15
	.ascii	"RMASK\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"GMASK\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"BMASK\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"AMASK\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"RLOSS\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"GLOSS\000"
	.byte	2
	.byte	35
	.uleb128	37
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"BLOSS\000"
	.byte	2
	.byte	35
	.uleb128	38
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"ALOSS\000"
	.byte	2
	.byte	35
	.uleb128	39
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"RSHIFT\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"GSHIFT\000"
	.byte	2
	.byte	35
	.uleb128	41
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"BSHIFT\000"
	.byte	2
	.byte	35
	.uleb128	42
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"ASHIFT\000"
	.byte	2
	.byte	35
	.uleb128	43
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"REFCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	44
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"NEXT\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La93-.Ldebug_info0
	.byte	0
.La96:
	.uleb128	12
	.long	.La95-.Ldebug_info0
# Definition PSDL_Point
.La97:
	.uleb128	10
	.ascii	"PSDL_POINT\000"
	.long	.La346-.Ldebug_info0
.La346:
	.uleb128	18
	.long	.La99-.Ldebug_info0
.La98:
	.uleb128	12
	.long	.La97-.Ldebug_info0
# Definition TSDL_Point
.La99:
	.uleb128	10
	.ascii	"TSDL_POINT\000"
	.long	.La347-.Ldebug_info0
.La347:
	.uleb128	14
	.ascii	"TSDL_POINT\000"
	.uleb128	8
	.uleb128	15
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La17-.Ldebug_info0
	.byte	0
.La100:
	.uleb128	12
	.long	.La99-.Ldebug_info0
# Definition PSDL_Rect
.La101:
	.uleb128	10
	.ascii	"PSDL_RECT\000"
	.long	.La348-.Ldebug_info0
.La348:
	.uleb128	18
	.long	.La103-.Ldebug_info0
.La102:
	.uleb128	12
	.long	.La101-.Ldebug_info0
# Definition TSDL_Rect
.La103:
	.uleb128	10
	.ascii	"TSDL_RECT\000"
	.long	.La349-.Ldebug_info0
.La349:
	.uleb128	14
	.ascii	"TSDL_RECT\000"
	.uleb128	16
	.uleb128	15
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"W\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"H\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La17-.Ldebug_info0
	.byte	0
.La104:
	.uleb128	12
	.long	.La103-.Ldebug_info0
# Definition PSDL_Surface
.La105:
	.uleb128	10
	.ascii	"PSDL_SURFACE\000"
	.long	.La350-.Ldebug_info0
.La350:
	.uleb128	18
	.long	.La107-.Ldebug_info0
.La106:
	.uleb128	12
	.long	.La105-.Ldebug_info0
# Definition TSDL_Surface
.La107:
	.uleb128	10
	.ascii	"TSDL_SURFACE\000"
	.long	.La351-.Ldebug_info0
.La351:
	.uleb128	14
	.ascii	"TSDL_SURFACE\000"
	.uleb128	96
	.uleb128	15
	.ascii	"FLAGS\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"FORMAT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La93-.Ldebug_info0
	.uleb128	15
	.ascii	"W\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"H\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"PITCH\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"PIXELS\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La25-.Ldebug_info0
	.uleb128	15
	.ascii	"USERDATA\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La25-.Ldebug_info0
	.uleb128	15
	.ascii	"LOCKED\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"LOCK_DATA\000"
	.byte	2
	.byte	35
	.uleb128	56
	.long	.La25-.Ldebug_info0
	.uleb128	15
	.ascii	"CLIP_RECT\000"
	.byte	2
	.byte	35
	.uleb128	64
	.long	.La103-.Ldebug_info0
	.uleb128	15
	.ascii	"MAP\000"
	.byte	2
	.byte	35
	.uleb128	80
	.long	.La25-.Ldebug_info0
	.uleb128	15
	.ascii	"REFCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	88
	.long	.La17-.Ldebug_info0
	.byte	0
.La108:
	.uleb128	12
	.long	.La107-.Ldebug_info0
# Definition <procedure variable type of function(PSDL_Surface;PSDL_Rect;PSDL_Surface;PSDL_Rect):LongInt;Register>
.La109:
	.uleb128	10
	.ascii	"TSDL_BLIT\000"
	.long	.La352-.Ldebug_info0
.La352:
	.uleb128	19
	.ascii	"TSDL_BLIT\000"
	.byte	1
	.long	.La17-.Ldebug_info0
	.uleb128	20
	.ascii	"SRC\000"
	.long	.La105-.Ldebug_info0
	.uleb128	20
	.ascii	"SRCRECT\000"
	.long	.La101-.Ldebug_info0
	.uleb128	20
	.ascii	"DST\000"
	.long	.La105-.Ldebug_info0
	.uleb128	20
	.ascii	"DSTRECT\000"
	.long	.La101-.Ldebug_info0
	.byte	0
.La110:
	.uleb128	12
	.long	.La109-.Ldebug_info0
# Definition PSDL_DisplayMode
.La111:
	.uleb128	10
	.ascii	"PSDL_DISPLAYMODE\000"
	.long	.La353-.Ldebug_info0
.La353:
	.uleb128	18
	.long	.La113-.Ldebug_info0
.La112:
	.uleb128	12
	.long	.La111-.Ldebug_info0
# Definition TSDL_DisplayMode
.La113:
	.uleb128	10
	.ascii	"TSDL_DISPLAYMODE\000"
	.long	.La354-.Ldebug_info0
.La354:
	.uleb128	14
	.ascii	"TSDL_DISPLAYMODE\000"
	.uleb128	24
	.uleb128	15
	.ascii	"FORMAT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"W\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"H\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"REFRESH_RATE\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"DRIVERDATA\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La25-.Ldebug_info0
	.byte	0
.La114:
	.uleb128	12
	.long	.La113-.Ldebug_info0
# Definition PPSDL_Window
.La115:
	.uleb128	10
	.ascii	"PPSDL_WINDOW\000"
	.long	.La355-.Ldebug_info0
.La355:
	.uleb128	18
	.long	.La25-.Ldebug_info0
.La116:
	.uleb128	12
	.long	.La115-.Ldebug_info0
# Definition SDL_GLattr
.La117:
	.uleb128	10
	.ascii	"SDL_GLATTR\000"
	.long	.La356-.Ldebug_info0
.La356:
	.uleb128	21
	.ascii	"SDL_GLATTR\000"
	.byte	4
	.uleb128	22
	.ascii	"SDL_GL_RED_SIZE\000"
	.long	0
	.uleb128	22
	.ascii	"SDL_GL_GREEN_SIZE\000"
	.long	1
	.uleb128	22
	.ascii	"SDL_GL_BLUE_SIZE\000"
	.long	2
	.uleb128	22
	.ascii	"SDL_GL_ALPHA_SIZE\000"
	.long	3
	.uleb128	22
	.ascii	"SDL_GL_BUFFER_SIZE\000"
	.long	4
	.uleb128	22
	.ascii	"SDL_GL_DOUBLEBUFFER\000"
	.long	5
	.uleb128	22
	.ascii	"SDL_GL_DEPTH_SIZE\000"
	.long	6
	.uleb128	22
	.ascii	"SDL_GL_STENCIL_SIZE\000"
	.long	7
	.uleb128	22
	.ascii	"SDL_GL_ACCUM_RED_SIZE\000"
	.long	8
	.uleb128	22
	.ascii	"SDL_GL_ACCUM_GREEN_SIZE\000"
	.long	9
	.uleb128	22
	.ascii	"SDL_GL_ACCUM_BLUE_SIZE\000"
	.long	10
	.uleb128	22
	.ascii	"SDL_GL_ACCUM_ALPHA_SIZE\000"
	.long	11
	.uleb128	22
	.ascii	"SDL_GL_STEREO\000"
	.long	12
	.uleb128	22
	.ascii	"SDL_GL_MULTISAMPLEBUFFERS\000"
	.long	13
	.uleb128	22
	.ascii	"SDL_GL_MULTISAMPLESAMPLES\000"
	.long	14
	.uleb128	22
	.ascii	"SDL_GL_ACCELERATED_VISUAL\000"
	.long	15
	.uleb128	22
	.ascii	"SDL_GL_RETAINED_BACKING\000"
	.long	16
	.uleb128	22
	.ascii	"SDL_GL_CONTEXT_MAJOR_VERSION\000"
	.long	17
	.uleb128	22
	.ascii	"SDL_GL_CONTEXT_MINOR_VERSION\000"
	.long	18
	.uleb128	22
	.ascii	"SDL_GL_CONTEXT_EGL\000"
	.long	19
	.uleb128	22
	.ascii	"SDL_GL_CONTEXT_FLAGS\000"
	.long	20
	.uleb128	22
	.ascii	"SDL_GL_CONTEXT_PROFILE_MASK\000"
	.long	21
	.uleb128	22
	.ascii	"SDL_GL_SHARE_WITH_CURRENT_CONTEXT\000"
	.long	22
	.uleb128	22
	.ascii	"SDL_GL_FRAMEBUFFER_SRGB_CAPABLE\000"
	.long	23
	.byte	0
.La118:
	.uleb128	12
	.long	.La117-.Ldebug_info0
# Definition TSDL_WindowShapeParams
.La119:
	.uleb128	10
	.ascii	"TSDL_WINDOWSHAPEPARAMS\000"
	.long	.La357-.Ldebug_info0
.La357:
	.uleb128	14
	.ascii	"TSDL_WINDOWSHAPEPARAMS\000"
	.uleb128	4
	.uleb128	15
	.ascii	"BINARIZATIONCUTOFF\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"COLORKEY\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La85-.Ldebug_info0
	.byte	0
.La120:
	.uleb128	12
	.long	.La119-.Ldebug_info0
# Definition PSDL_WindowShapeMode
.La121:
	.uleb128	10
	.ascii	"PSDL_WINDOWSHAPEMODE\000"
	.long	.La358-.Ldebug_info0
.La358:
	.uleb128	18
	.long	.La123-.Ldebug_info0
.La122:
	.uleb128	12
	.long	.La121-.Ldebug_info0
# Definition TSDL_WindowShapeMode
.La123:
	.uleb128	10
	.ascii	"TSDL_WINDOWSHAPEMODE\000"
	.long	.La359-.Ldebug_info0
.La359:
	.uleb128	14
	.ascii	"TSDL_WINDOWSHAPEMODE\000"
	.uleb128	8
	.uleb128	15
	.ascii	"MODE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"PARAMETERS\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La119-.Ldebug_info0
	.byte	0
.La124:
	.uleb128	12
	.long	.La123-.Ldebug_info0
# Definition PSDL_RendererInfo
.La125:
	.uleb128	10
	.ascii	"PSDL_RENDERERINFO\000"
	.long	.La360-.Ldebug_info0
.La360:
	.uleb128	18
	.long	.La127-.Ldebug_info0
.La126:
	.uleb128	12
	.long	.La125-.Ldebug_info0
# Definition TSDL_RendererInfo
.La127:
	.uleb128	10
	.ascii	"TSDL_RENDERERINFO\000"
	.long	.La361-.Ldebug_info0
.La361:
	.uleb128	14
	.ascii	"TSDL_RENDERERINFO\000"
	.uleb128	88
	.uleb128	15
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La261-.Ldebug_info0
	.uleb128	15
	.ascii	"FLAGS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"NUM_TEXTURE_FORMATS\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TEXTURE_FORMATS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La362-.Ldebug_info0
	.uleb128	15
	.ascii	"MAX_TEXTURE_WIDTH\000"
	.byte	2
	.byte	35
	.uleb128	80
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"MAX_TEXTURE_HEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	84
	.long	.La17-.Ldebug_info0
	.byte	0
.La128:
	.uleb128	12
	.long	.La127-.Ldebug_info0
# Definition PPSDL_Renderer
.La129:
	.uleb128	10
	.ascii	"PPSDL_RENDERER\000"
	.long	.La364-.Ldebug_info0
.La364:
	.uleb128	18
	.long	.La25-.Ldebug_info0
.La130:
	.uleb128	12
	.long	.La129-.Ldebug_info0
# Definition PSDL_MessageBoxButtonData
.La131:
	.uleb128	10
	.ascii	"PSDL_MESSAGEBOXBUTTONDATA\000"
	.long	.La365-.Ldebug_info0
.La365:
	.uleb128	18
	.long	.La133-.Ldebug_info0
.La132:
	.uleb128	12
	.long	.La131-.Ldebug_info0
# Definition TSDL_MessageBoxButtonData
.La133:
	.uleb128	10
	.ascii	"TSDL_MESSAGEBOXBUTTONDATA\000"
	.long	.La366-.Ldebug_info0
.La366:
	.uleb128	14
	.ascii	"TSDL_MESSAGEBOXBUTTONDATA\000"
	.uleb128	16
	.uleb128	15
	.ascii	"FLAGS\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"BUTTONID\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"TEXT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La261-.Ldebug_info0
	.byte	0
.La134:
	.uleb128	12
	.long	.La133-.Ldebug_info0
# Definition SDL_MessageBoxColor
.La135:
	.uleb128	10
	.ascii	"SDL_MESSAGEBOXCOLOR\000"
	.long	.La367-.Ldebug_info0
.La367:
	.uleb128	14
	.ascii	"SDL_MESSAGEBOXCOLOR\000"
	.uleb128	3
	.uleb128	15
	.ascii	"R\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"G\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"B\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La67-.Ldebug_info0
	.byte	0
.La136:
	.uleb128	12
	.long	.La135-.Ldebug_info0
# Definition PSDL_MessageBoxColorScheme
.La137:
	.uleb128	10
	.ascii	"PSDL_MESSAGEBOXCOLORSCHEME\000"
	.long	.La368-.Ldebug_info0
.La368:
	.uleb128	18
	.long	.La139-.Ldebug_info0
.La138:
	.uleb128	12
	.long	.La137-.Ldebug_info0
# Definition TSDL_MessageBoxColorScheme
.La139:
	.uleb128	10
	.ascii	"TSDL_MESSAGEBOXCOLORSCHEME\000"
	.long	.La369-.Ldebug_info0
.La369:
	.uleb128	14
	.ascii	"TSDL_MESSAGEBOXCOLORSCHEME\000"
	.uleb128	15
	.uleb128	15
	.ascii	"COLORS\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La370-.Ldebug_info0
	.byte	0
.La140:
	.uleb128	12
	.long	.La139-.Ldebug_info0
# Definition PSDL_MessageBoxData
.La141:
	.uleb128	10
	.ascii	"PSDL_MESSAGEBOXDATA\000"
	.long	.La372-.Ldebug_info0
.La372:
	.uleb128	18
	.long	.La143-.Ldebug_info0
.La142:
	.uleb128	12
	.long	.La141-.Ldebug_info0
# Definition TSDL_MessageBoxData
.La143:
	.uleb128	10
	.ascii	"TSDL_MESSAGEBOXDATA\000"
	.long	.La373-.Ldebug_info0
.La373:
	.uleb128	14
	.ascii	"TSDL_MESSAGEBOXDATA\000"
	.uleb128	56
	.uleb128	15
	.ascii	"FLAGS\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WINDOW\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La25-.Ldebug_info0
	.uleb128	15
	.ascii	"TITLE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La261-.Ldebug_info0
	.uleb128	15
	.ascii	"MESSAGE\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La261-.Ldebug_info0
	.uleb128	15
	.ascii	"NUMBUTTONS\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"BUTTONS\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La131-.Ldebug_info0
	.uleb128	15
	.ascii	"COLORSCHEME\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La137-.Ldebug_info0
	.byte	0
.La144:
	.uleb128	12
	.long	.La143-.Ldebug_info0
# Definition PSDL_ScanCode
.La145:
	.uleb128	10
	.ascii	"PSDL_SCANCODE\000"
	.long	.La374-.Ldebug_info0
.La374:
	.uleb128	18
	.long	.La55-.Ldebug_info0
.La146:
	.uleb128	12
	.long	.La145-.Ldebug_info0
# Definition PSDL_KeyCode
.La147:
	.uleb128	10
	.ascii	"PSDL_KEYCODE\000"
	.long	.La375-.Ldebug_info0
.La375:
	.uleb128	18
	.long	.La17-.Ldebug_info0
.La148:
	.uleb128	12
	.long	.La147-.Ldebug_info0
# Definition PSDL_KeyMod
.La149:
	.uleb128	10
	.ascii	"PSDL_KEYMOD\000"
	.long	.La376-.Ldebug_info0
.La376:
	.uleb128	18
	.long	.La61-.Ldebug_info0
.La150:
	.uleb128	12
	.long	.La149-.Ldebug_info0
# Definition PSDL_Keysym
.La151:
	.uleb128	10
	.ascii	"PSDL_KEYSYM\000"
	.long	.La377-.Ldebug_info0
.La377:
	.uleb128	18
	.long	.La153-.Ldebug_info0
.La152:
	.uleb128	12
	.long	.La151-.Ldebug_info0
# Definition TSDL_Keysym
.La153:
	.uleb128	10
	.ascii	"TSDL_KEYSYM\000"
	.long	.La378-.Ldebug_info0
.La378:
	.uleb128	14
	.ascii	"TSDL_KEYSYM\000"
	.uleb128	16
	.uleb128	15
	.ascii	"SCANCODE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"SYM\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"MOD_\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La55-.Ldebug_info0
	.byte	0
.La154:
	.uleb128	12
	.long	.La153-.Ldebug_info0
# Definition TSDL_JoystickGUID
.La155:
	.uleb128	10
	.ascii	"TSDL_JOYSTICKGUID\000"
	.long	.La379-.Ldebug_info0
.La379:
	.uleb128	14
	.ascii	"TSDL_JOYSTICKGUID\000"
	.uleb128	16
	.uleb128	15
	.ascii	"DATA\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La380-.Ldebug_info0
	.byte	0
.La156:
	.uleb128	12
	.long	.La155-.Ldebug_info0
# Definition SDL_GameControllerBindType
.La157:
	.uleb128	10
	.ascii	"SDL_GAMECONTROLLERBINDTYPE\000"
	.long	.La382-.Ldebug_info0
.La382:
	.uleb128	21
	.ascii	"SDL_GAMECONTROLLERBINDTYPE\000"
	.byte	4
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BINDTYPE_NONE\000"
	.long	0
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BINDTYPE_BUTTON\000"
	.long	1
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BINDTYPE_AXIS\000"
	.long	2
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BINDTYPE_HAT\000"
	.long	3
	.byte	0
.La158:
	.uleb128	12
	.long	.La157-.Ldebug_info0
# Definition SDL_GameControllerAxis
.La159:
	.uleb128	10
	.ascii	"SDL_GAMECONTROLLERAXIS\000"
	.long	.La383-.Ldebug_info0
.La383:
	.uleb128	21
	.ascii	"SDL_GAMECONTROLLERAXIS\000"
	.byte	4
	.uleb128	22
	.ascii	"SDL_CONTROLLER_AXIS_INVALID\000"
	.long	-1
	.uleb128	22
	.ascii	"SDL_CONTROLLER_AXIS_LEFTX\000"
	.long	0
	.uleb128	22
	.ascii	"SDL_CONTROLLER_AXIS_LEFTY\000"
	.long	1
	.uleb128	22
	.ascii	"SDL_CONTROLLER_AXIS_RIGHTX\000"
	.long	2
	.uleb128	22
	.ascii	"SDL_CONTROLLER_AXIS_RIGHTY\000"
	.long	3
	.uleb128	22
	.ascii	"SDL_CONTROLLER_AXIS_TRIGGERLEFT\000"
	.long	4
	.uleb128	22
	.ascii	"SDL_CONTROLLER_AXIS_TRIGGERRIGHT\000"
	.long	5
	.uleb128	22
	.ascii	"SDL_CONTROLLER_AXIS_MAX\000"
	.long	6
	.byte	0
.La160:
	.uleb128	12
	.long	.La159-.Ldebug_info0
# Definition SDL_GameControllerButton
.La161:
	.uleb128	10
	.ascii	"SDL_GAMECONTROLLERBUTTON\000"
	.long	.La384-.Ldebug_info0
.La384:
	.uleb128	21
	.ascii	"SDL_GAMECONTROLLERBUTTON\000"
	.byte	4
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BUTTON_INVALID\000"
	.long	-1
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BUTTON_A\000"
	.long	0
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BUTTON_B\000"
	.long	1
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BUTTON_X\000"
	.long	2
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BUTTON_Y\000"
	.long	3
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BUTTON_BACK\000"
	.long	4
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BUTTON_GUIDE\000"
	.long	5
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BUTTON_START\000"
	.long	6
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BUTTON_LEFTSTICK\000"
	.long	7
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BUTTON_RIGHTSTICK\000"
	.long	8
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BUTTON_LEFTSHOULDER\000"
	.long	9
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BUTTON_RIGHTSHOULDER\000"
	.long	10
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BUTTON_DPAD_UP\000"
	.long	11
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BUTTON_DPAD_DOWN\000"
	.long	12
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BUTTON_DPAD_LEFT\000"
	.long	13
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BUTTON_DPAD_RIGHT\000"
	.long	14
	.uleb128	22
	.ascii	"SDL_CONTROLLER_BUTTON_MAX\000"
	.long	15
	.byte	0
.La162:
	.uleb128	12
	.long	.La161-.Ldebug_info0
# Definition PSDL_GameControllerButtonBind
.La163:
	.uleb128	10
	.ascii	"PSDL_GAMECONTROLLERBUTTONBIND\000"
	.long	.La385-.Ldebug_info0
.La385:
	.uleb128	18
	.long	.La165-.Ldebug_info0
.La164:
	.uleb128	12
	.long	.La163-.Ldebug_info0
# Definition TSDL_GameControllerButtonBind
.La165:
	.uleb128	10
	.ascii	"TSDL_GAMECONTROLLERBUTTONBIND\000"
	.long	.La386-.Ldebug_info0
.La386:
	.uleb128	14
	.ascii	"TSDL_GAMECONTROLLERBUTTONBIND\000"
	.uleb128	12
	.uleb128	15
	.ascii	"BINDTYPE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La157-.Ldebug_info0
	.uleb128	15
	.ascii	"VALUE\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La387-.Ldebug_info0
	.byte	0
.La166:
	.uleb128	12
	.long	.La165-.Ldebug_info0
# Definition PSDL_HapticDirection
.La167:
	.uleb128	10
	.ascii	"PSDL_HAPTICDIRECTION\000"
	.long	.La389-.Ldebug_info0
.La389:
	.uleb128	18
	.long	.La169-.Ldebug_info0
.La168:
	.uleb128	12
	.long	.La167-.Ldebug_info0
# Definition TSDL_HapticDirection
.La169:
	.uleb128	10
	.ascii	"TSDL_HAPTICDIRECTION\000"
	.long	.La390-.Ldebug_info0
.La390:
	.uleb128	14
	.ascii	"TSDL_HAPTICDIRECTION\000"
	.uleb128	16
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"DIR\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La391-.Ldebug_info0
	.byte	0
.La170:
	.uleb128	12
	.long	.La169-.Ldebug_info0
# Definition PSDL_HapticConstant
.La171:
	.uleb128	10
	.ascii	"PSDL_HAPTICCONSTANT\000"
	.long	.La393-.Ldebug_info0
.La393:
	.uleb128	18
	.long	.La173-.Ldebug_info0
.La172:
	.uleb128	12
	.long	.La171-.Ldebug_info0
# Definition TSDL_HapticConstant
.La173:
	.uleb128	10
	.ascii	"TSDL_HAPTICCONSTANT\000"
	.long	.La394-.Ldebug_info0
.La394:
	.uleb128	14
	.ascii	"TSDL_HAPTICCONSTANT\000"
	.uleb128	40
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"DIRECTION\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La169-.Ldebug_info0
	.uleb128	15
	.ascii	"LENGTH\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"DELAY\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	26
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"INTERVAL\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"LEVEL\000"
	.byte	2
	.byte	35
	.uleb128	30
	.long	.La15-.Ldebug_info0
	.uleb128	15
	.ascii	"ATTACK_LENGTH\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"ATTACK_LEVEL\000"
	.byte	2
	.byte	35
	.uleb128	34
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"FADE_LENGTH\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"FADE_LEVEL\000"
	.byte	2
	.byte	35
	.uleb128	38
	.long	.La61-.Ldebug_info0
	.byte	0
.La174:
	.uleb128	12
	.long	.La173-.Ldebug_info0
# Definition PSDL_HapticPeriodic
.La175:
	.uleb128	10
	.ascii	"PSDL_HAPTICPERIODIC\000"
	.long	.La395-.Ldebug_info0
.La395:
	.uleb128	18
	.long	.La177-.Ldebug_info0
.La176:
	.uleb128	12
	.long	.La175-.Ldebug_info0
# Definition TSDL_HapticPeriodic
.La177:
	.uleb128	10
	.ascii	"TSDL_HAPTICPERIODIC\000"
	.long	.La396-.Ldebug_info0
.La396:
	.uleb128	14
	.ascii	"TSDL_HAPTICPERIODIC\000"
	.uleb128	48
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"DIRECTION\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La169-.Ldebug_info0
	.uleb128	15
	.ascii	"LENGTH\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"DELAY\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	26
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"INTERVAL\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"PERIOD\000"
	.byte	2
	.byte	35
	.uleb128	30
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"MAGNITUDE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La15-.Ldebug_info0
	.uleb128	15
	.ascii	"OFFSET\000"
	.byte	2
	.byte	35
	.uleb128	34
	.long	.La15-.Ldebug_info0
	.uleb128	15
	.ascii	"PHASE\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"ATTACK_LENGTH\000"
	.byte	2
	.byte	35
	.uleb128	38
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"ATTACK_LEVEL\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"FADE_LENGTH\000"
	.byte	2
	.byte	35
	.uleb128	42
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"FADE_LEVEL\000"
	.byte	2
	.byte	35
	.uleb128	44
	.long	.La61-.Ldebug_info0
	.byte	0
.La178:
	.uleb128	12
	.long	.La177-.Ldebug_info0
# Definition PSDL_HapticCondition
.La179:
	.uleb128	10
	.ascii	"PSDL_HAPTICCONDITION\000"
	.long	.La397-.Ldebug_info0
.La397:
	.uleb128	18
	.long	.La181-.Ldebug_info0
.La180:
	.uleb128	12
	.long	.La179-.Ldebug_info0
# Definition TSDL_HapticCondition
.La181:
	.uleb128	10
	.ascii	"TSDL_HAPTICCONDITION\000"
	.long	.La398-.Ldebug_info0
.La398:
	.uleb128	14
	.ascii	"TSDL_HAPTICCONDITION\000"
	.uleb128	68
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"DIRECTION\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La169-.Ldebug_info0
	.uleb128	15
	.ascii	"LENGTH\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"DELAY\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	26
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"INTERVAL\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"RIGHT_SAT\000"
	.byte	2
	.byte	35
	.uleb128	30
	.long	.La399-.Ldebug_info0
	.uleb128	15
	.ascii	"LEFT_SAT\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La399-.Ldebug_info0
	.uleb128	15
	.ascii	"RIGHT_COEFF\000"
	.byte	2
	.byte	35
	.uleb128	42
	.long	.La401-.Ldebug_info0
	.uleb128	15
	.ascii	"LEFT_COEFF\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La401-.Ldebug_info0
	.uleb128	15
	.ascii	"DEADBAND\000"
	.byte	2
	.byte	35
	.uleb128	54
	.long	.La403-.Ldebug_info0
	.uleb128	15
	.ascii	"CENTER\000"
	.byte	2
	.byte	35
	.uleb128	60
	.long	.La405-.Ldebug_info0
	.byte	0
.La182:
	.uleb128	12
	.long	.La181-.Ldebug_info0
# Definition PSDL_HapticRamp
.La183:
	.uleb128	10
	.ascii	"PSDL_HAPTICRAMP\000"
	.long	.La407-.Ldebug_info0
.La407:
	.uleb128	18
	.long	.La185-.Ldebug_info0
.La184:
	.uleb128	12
	.long	.La183-.Ldebug_info0
# Definition TSDL_HapticRamp
.La185:
	.uleb128	10
	.ascii	"TSDL_HAPTICRAMP\000"
	.long	.La408-.Ldebug_info0
.La408:
	.uleb128	14
	.ascii	"TSDL_HAPTICRAMP\000"
	.uleb128	44
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"DIRECTION\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La169-.Ldebug_info0
	.uleb128	15
	.ascii	"LENGTH\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"DELAY\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	26
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"INTERVAL\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"START\000"
	.byte	2
	.byte	35
	.uleb128	30
	.long	.La15-.Ldebug_info0
	.uleb128	15
	.ascii	"END_\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La15-.Ldebug_info0
	.uleb128	15
	.ascii	"ATTACK_LENGTH\000"
	.byte	2
	.byte	35
	.uleb128	34
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"ATTACK_LEVEL\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"FADE_LENGTH\000"
	.byte	2
	.byte	35
	.uleb128	38
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"FADE_LEVEL\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La61-.Ldebug_info0
	.byte	0
.La186:
	.uleb128	12
	.long	.La185-.Ldebug_info0
# Definition PSDL_HapticLeftRight
.La187:
	.uleb128	10
	.ascii	"PSDL_HAPTICLEFTRIGHT\000"
	.long	.La409-.Ldebug_info0
.La409:
	.uleb128	18
	.long	.La189-.Ldebug_info0
.La188:
	.uleb128	12
	.long	.La187-.Ldebug_info0
# Definition TSDL_HapticLeftRight
.La189:
	.uleb128	10
	.ascii	"TSDL_HAPTICLEFTRIGHT\000"
	.long	.La410-.Ldebug_info0
.La410:
	.uleb128	14
	.ascii	"TSDL_HAPTICLEFTRIGHT\000"
	.uleb128	12
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"LENGTH\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"LARGE_MAGNITUDE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"SMALL_MAGNITUDE\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La61-.Ldebug_info0
	.byte	0
.La190:
	.uleb128	12
	.long	.La189-.Ldebug_info0
# Definition PSDL_HapticCustom
.La191:
	.uleb128	10
	.ascii	"PSDL_HAPTICCUSTOM\000"
	.long	.La411-.Ldebug_info0
.La411:
	.uleb128	18
	.long	.La193-.Ldebug_info0
.La192:
	.uleb128	12
	.long	.La191-.Ldebug_info0
# Definition TSDL_HapticCustom
.La193:
	.uleb128	10
	.ascii	"TSDL_HAPTICCUSTOM\000"
	.long	.La412-.Ldebug_info0
.La412:
	.uleb128	14
	.ascii	"TSDL_HAPTICCUSTOM\000"
	.uleb128	56
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"DIRECTION\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La169-.Ldebug_info0
	.uleb128	15
	.ascii	"LENGTH\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"DELAY\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	26
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"INTERVAL\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"CHANNELS\000"
	.byte	2
	.byte	35
	.uleb128	30
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PERIOD\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"SAMPLES\000"
	.byte	2
	.byte	35
	.uleb128	34
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"DATA\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La413-.Ldebug_info0
	.uleb128	15
	.ascii	"ATTACK_LENGTH\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"ATTACK_LEVEL\000"
	.byte	2
	.byte	35
	.uleb128	50
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"FADE_LENGTH\000"
	.byte	2
	.byte	35
	.uleb128	52
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"FADE_LEVEL\000"
	.byte	2
	.byte	35
	.uleb128	54
	.long	.La61-.Ldebug_info0
	.byte	0
.La194:
	.uleb128	12
	.long	.La193-.Ldebug_info0
# Definition PSDL_HapticEffect
.La195:
	.uleb128	10
	.ascii	"PSDL_HAPTICEFFECT\000"
	.long	.La415-.Ldebug_info0
.La415:
	.uleb128	18
	.long	.La197-.Ldebug_info0
.La196:
	.uleb128	12
	.long	.La195-.Ldebug_info0
# Definition TSDL_HapticEffect
.La197:
	.uleb128	10
	.ascii	"TSDL_HAPTICEFFECT\000"
	.long	.La416-.Ldebug_info0
.La416:
	.uleb128	14
	.ascii	"TSDL_HAPTICEFFECT\000"
	.uleb128	72
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"CONSTANT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La173-.Ldebug_info0
	.uleb128	15
	.ascii	"PERIODIC\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La177-.Ldebug_info0
	.uleb128	15
	.ascii	"CONDITION\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La181-.Ldebug_info0
	.uleb128	15
	.ascii	"RAMP\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La185-.Ldebug_info0
	.uleb128	15
	.ascii	"CUSTOM\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La193-.Ldebug_info0
	.byte	0
.La198:
	.uleb128	12
	.long	.La197-.Ldebug_info0
# Definition PSDL_Finger
.La199:
	.uleb128	10
	.ascii	"PSDL_FINGER\000"
	.long	.La417-.Ldebug_info0
.La417:
	.uleb128	18
	.long	.La201-.Ldebug_info0
.La200:
	.uleb128	12
	.long	.La199-.Ldebug_info0
# Definition TSDL_Finger
.La201:
	.uleb128	10
	.ascii	"TSDL_FINGER\000"
	.long	.La418-.Ldebug_info0
.La418:
	.uleb128	14
	.ascii	"TSDL_FINGER\000"
	.uleb128	24
	.uleb128	15
	.ascii	"ID\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La19-.Ldebug_info0
	.uleb128	15
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La29-.Ldebug_info0
	.uleb128	15
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La29-.Ldebug_info0
	.uleb128	15
	.ascii	"PRESSURE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La29-.Ldebug_info0
	.byte	0
.La202:
	.uleb128	12
	.long	.La201-.Ldebug_info0
# Definition TSDL_CommonEvent
.La203:
	.uleb128	10
	.ascii	"TSDL_COMMONEVENT\000"
	.long	.La419-.Ldebug_info0
.La419:
	.uleb128	14
	.ascii	"TSDL_COMMONEVENT\000"
	.uleb128	8
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.byte	0
.La204:
	.uleb128	12
	.long	.La203-.Ldebug_info0
# Definition TSDL_WindowEvent
.La205:
	.uleb128	10
	.ascii	"TSDL_WINDOWEVENT\000"
	.long	.La420-.Ldebug_info0
.La420:
	.uleb128	14
	.ascii	"TSDL_WINDOWEVENT\000"
	.uleb128	24
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"EVENT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La17-.Ldebug_info0
	.byte	0
.La206:
	.uleb128	12
	.long	.La205-.Ldebug_info0
# Definition TSDL_KeyboardEvent
.La207:
	.uleb128	10
	.ascii	"TSDL_KEYBOARDEVENT\000"
	.long	.La421-.Ldebug_info0
.La421:
	.uleb128	14
	.ascii	"TSDL_KEYBOARDEVENT\000"
	.uleb128	32
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"REPEAT_\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"KEYSYM\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La153-.Ldebug_info0
	.byte	0
.La208:
	.uleb128	12
	.long	.La207-.Ldebug_info0
# Definition TSDL_TextEditingEvent
.La209:
	.uleb128	10
	.ascii	"TSDL_TEXTEDITINGEVENT\000"
	.long	.La422-.Ldebug_info0
.La422:
	.uleb128	14
	.ascii	"TSDL_TEXTEDITINGEVENT\000"
	.uleb128	52
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TEXT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La423-.Ldebug_info0
	.uleb128	15
	.ascii	"START\000"
	.byte	2
	.byte	35
	.uleb128	44
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"LENGTH\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La17-.Ldebug_info0
	.byte	0
.La210:
	.uleb128	12
	.long	.La209-.Ldebug_info0
# Definition TSDL_TextInputEvent
.La211:
	.uleb128	10
	.ascii	"TSDL_TEXTINPUTEVENT\000"
	.long	.La425-.Ldebug_info0
.La425:
	.uleb128	14
	.ascii	"TSDL_TEXTINPUTEVENT\000"
	.uleb128	44
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TEXT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La426-.Ldebug_info0
	.byte	0
.La212:
	.uleb128	12
	.long	.La211-.Ldebug_info0
# Definition TSDL_MouseMotionEvent
.La213:
	.uleb128	10
	.ascii	"TSDL_MOUSEMOTIONEVENT\000"
	.long	.La428-.Ldebug_info0
.La428:
	.uleb128	14
	.ascii	"TSDL_MOUSEMOTIONEVENT\000"
	.uleb128	36
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"XREL\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"YREL\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La17-.Ldebug_info0
	.byte	0
.La214:
	.uleb128	12
	.long	.La213-.Ldebug_info0
# Definition TSDL_MouseButtonEvent
.La215:
	.uleb128	10
	.ascii	"TSDL_MOUSEBUTTONEVENT\000"
	.long	.La429-.Ldebug_info0
.La429:
	.uleb128	14
	.ascii	"TSDL_MOUSEBUTTONEVENT\000"
	.uleb128	28
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	17
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"CLICKS\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	19
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La17-.Ldebug_info0
	.byte	0
.La216:
	.uleb128	12
	.long	.La215-.Ldebug_info0
# Definition TSDL_MouseWheelEvent
.La217:
	.uleb128	10
	.ascii	"TSDL_MOUSEWHEELEVENT\000"
	.long	.La430-.Ldebug_info0
.La430:
	.uleb128	14
	.ascii	"TSDL_MOUSEWHEELEVENT\000"
	.uleb128	24
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La17-.Ldebug_info0
	.byte	0
.La218:
	.uleb128	12
	.long	.La217-.Ldebug_info0
# Definition TSDL_JoyAxisEvent
.La219:
	.uleb128	10
	.ascii	"TSDL_JOYAXISEVENT\000"
	.long	.La431-.Ldebug_info0
.La431:
	.uleb128	14
	.ascii	"TSDL_JOYAXISEVENT\000"
	.uleb128	20
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"AXIS\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"VALUE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La15-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING4\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La61-.Ldebug_info0
	.byte	0
.La220:
	.uleb128	12
	.long	.La219-.Ldebug_info0
# Definition TSDL_JoyBallEvent
.La221:
	.uleb128	10
	.ascii	"TSDL_JOYBALLEVENT\000"
	.long	.La432-.Ldebug_info0
.La432:
	.uleb128	14
	.ascii	"TSDL_JOYBALLEVENT\000"
	.uleb128	20
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"BALL\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"XREL\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La15-.Ldebug_info0
	.uleb128	15
	.ascii	"YREL\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La15-.Ldebug_info0
	.byte	0
.La222:
	.uleb128	12
	.long	.La221-.Ldebug_info0
# Definition TSDL_JoyHatEvent
.La223:
	.uleb128	10
	.ascii	"TSDL_JOYHATEVENT\000"
	.long	.La433-.Ldebug_info0
.La433:
	.uleb128	14
	.ascii	"TSDL_JOYHATEVENT\000"
	.uleb128	16
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"HAT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"VALUE\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La67-.Ldebug_info0
	.byte	0
.La224:
	.uleb128	12
	.long	.La223-.Ldebug_info0
# Definition TSDL_JoyButtonEvent
.La225:
	.uleb128	10
	.ascii	"TSDL_JOYBUTTONEVENT\000"
	.long	.La434-.Ldebug_info0
.La434:
	.uleb128	14
	.ascii	"TSDL_JOYBUTTONEVENT\000"
	.uleb128	16
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La67-.Ldebug_info0
	.byte	0
.La226:
	.uleb128	12
	.long	.La225-.Ldebug_info0
# Definition TSDL_JoyDeviceEvent
.La227:
	.uleb128	10
	.ascii	"TSDL_JOYDEVICEEVENT\000"
	.long	.La435-.Ldebug_info0
.La435:
	.uleb128	14
	.ascii	"TSDL_JOYDEVICEEVENT\000"
	.uleb128	12
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La17-.Ldebug_info0
	.byte	0
.La228:
	.uleb128	12
	.long	.La227-.Ldebug_info0
# Definition TSDL_ControllerAxisEvent
.La229:
	.uleb128	10
	.ascii	"TSDL_CONTROLLERAXISEVENT\000"
	.long	.La436-.Ldebug_info0
.La436:
	.uleb128	14
	.ascii	"TSDL_CONTROLLERAXISEVENT\000"
	.uleb128	20
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"AXIS\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"VALUE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La15-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING4\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La61-.Ldebug_info0
	.byte	0
.La230:
	.uleb128	12
	.long	.La229-.Ldebug_info0
# Definition TSDL_ControllerButtonEvent
.La231:
	.uleb128	10
	.ascii	"TSDL_CONTROLLERBUTTONEVENT\000"
	.long	.La437-.Ldebug_info0
.La437:
	.uleb128	14
	.ascii	"TSDL_CONTROLLERBUTTONEVENT\000"
	.uleb128	16
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La67-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La67-.Ldebug_info0
	.byte	0
.La232:
	.uleb128	12
	.long	.La231-.Ldebug_info0
# Definition TSDL_ControllerDeviceEvent
.La233:
	.uleb128	10
	.ascii	"TSDL_CONTROLLERDEVICEEVENT\000"
	.long	.La438-.Ldebug_info0
.La438:
	.uleb128	14
	.ascii	"TSDL_CONTROLLERDEVICEEVENT\000"
	.uleb128	12
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La17-.Ldebug_info0
	.byte	0
.La234:
	.uleb128	12
	.long	.La233-.Ldebug_info0
# Definition TSDL_TouchFingerEvent
.La235:
	.uleb128	10
	.ascii	"TSDL_TOUCHFINGEREVENT\000"
	.long	.La439-.Ldebug_info0
.La439:
	.uleb128	14
	.ascii	"TSDL_TOUCHFINGEREVENT\000"
	.uleb128	48
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TOUCHID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La19-.Ldebug_info0
	.uleb128	15
	.ascii	"FINGERID\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La19-.Ldebug_info0
	.uleb128	15
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La29-.Ldebug_info0
	.uleb128	15
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La29-.Ldebug_info0
	.uleb128	15
	.ascii	"DX\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La29-.Ldebug_info0
	.uleb128	15
	.ascii	"DY\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La29-.Ldebug_info0
	.uleb128	15
	.ascii	"PRESSURE\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La29-.Ldebug_info0
	.byte	0
.La236:
	.uleb128	12
	.long	.La235-.Ldebug_info0
# Definition TSDL_MultiGestureEvent
.La237:
	.uleb128	10
	.ascii	"TSDL_MULTIGESTUREEVENT\000"
	.long	.La440-.Ldebug_info0
.La440:
	.uleb128	14
	.ascii	"TSDL_MULTIGESTUREEVENT\000"
	.uleb128	40
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TOUCHID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La19-.Ldebug_info0
	.uleb128	15
	.ascii	"DTHETA\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La29-.Ldebug_info0
	.uleb128	15
	.ascii	"DDIST\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La29-.Ldebug_info0
	.uleb128	15
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La29-.Ldebug_info0
	.uleb128	15
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La29-.Ldebug_info0
	.uleb128	15
	.ascii	"NUMFINGERS\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La61-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING\000"
	.byte	2
	.byte	35
	.uleb128	34
	.long	.La61-.Ldebug_info0
	.byte	0
.La238:
	.uleb128	12
	.long	.La237-.Ldebug_info0
# Definition TSDL_DollarGestureEvent
.La239:
	.uleb128	10
	.ascii	"TSDL_DOLLARGESTUREEVENT\000"
	.long	.La441-.Ldebug_info0
.La441:
	.uleb128	14
	.ascii	"TSDL_DOLLARGESTUREEVENT\000"
	.uleb128	40
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TOUCHID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La19-.Ldebug_info0
	.uleb128	15
	.ascii	"GESTUREID\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La19-.Ldebug_info0
	.uleb128	15
	.ascii	"NUMFINGERS\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"ERROR\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La29-.Ldebug_info0
	.uleb128	15
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La29-.Ldebug_info0
	.uleb128	15
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La29-.Ldebug_info0
	.byte	0
.La240:
	.uleb128	12
	.long	.La239-.Ldebug_info0
# Definition TSDL_DropEvent
.La241:
	.uleb128	10
	.ascii	"TSDL_DROPEVENT\000"
	.long	.La442-.Ldebug_info0
.La442:
	.uleb128	14
	.ascii	"TSDL_DROPEVENT\000"
	.uleb128	16
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"FILE_\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La261-.Ldebug_info0
	.byte	0
.La242:
	.uleb128	12
	.long	.La241-.Ldebug_info0
# Definition TSDL_QuitEvent
.La243:
	.uleb128	10
	.ascii	"TSDL_QUITEVENT\000"
	.long	.La443-.Ldebug_info0
.La443:
	.uleb128	14
	.ascii	"TSDL_QUITEVENT\000"
	.uleb128	8
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.byte	0
.La244:
	.uleb128	12
	.long	.La243-.Ldebug_info0
# Definition TSDL_OSEvent
.La245:
	.uleb128	10
	.ascii	"TSDL_OSEVENT\000"
	.long	.La444-.Ldebug_info0
.La444:
	.uleb128	14
	.ascii	"TSDL_OSEVENT\000"
	.uleb128	8
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.byte	0
.La246:
	.uleb128	12
	.long	.La245-.Ldebug_info0
# Definition TSDL_UserEvent
.La247:
	.uleb128	10
	.ascii	"TSDL_USEREVENT\000"
	.long	.La445-.Ldebug_info0
.La445:
	.uleb128	14
	.ascii	"TSDL_USEREVENT\000"
	.uleb128	32
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"CODE\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La25-.Ldebug_info0
	.uleb128	15
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La25-.Ldebug_info0
	.byte	0
.La248:
	.uleb128	12
	.long	.La247-.Ldebug_info0
# Definition TSDL_SysWMEvent
.La249:
	.uleb128	10
	.ascii	"TSDL_SYSWMEVENT\000"
	.long	.La446-.Ldebug_info0
.La446:
	.uleb128	14
	.ascii	"TSDL_SYSWMEVENT\000"
	.uleb128	16
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La25-.Ldebug_info0
	.byte	0
.La250:
	.uleb128	12
	.long	.La249-.Ldebug_info0
# Definition PSDL_Event
.La251:
	.uleb128	10
	.ascii	"PSDL_EVENT\000"
	.long	.La447-.Ldebug_info0
.La447:
	.uleb128	18
	.long	.La253-.Ldebug_info0
.La252:
	.uleb128	12
	.long	.La251-.Ldebug_info0
# Definition TSDL_Event
.La253:
	.uleb128	10
	.ascii	"TSDL_EVENT\000"
	.long	.La448-.Ldebug_info0
.La448:
	.uleb128	14
	.ascii	"TSDL_EVENT\000"
	.uleb128	56
	.uleb128	15
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La55-.Ldebug_info0
	.uleb128	15
	.ascii	"COMMON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La203-.Ldebug_info0
	.uleb128	15
	.ascii	"WINDOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La205-.Ldebug_info0
	.uleb128	15
	.ascii	"KEY\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La207-.Ldebug_info0
	.uleb128	15
	.ascii	"EDIT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La209-.Ldebug_info0
	.uleb128	15
	.ascii	"TEXT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La211-.Ldebug_info0
	.uleb128	15
	.ascii	"MOTION\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La213-.Ldebug_info0
	.uleb128	15
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La215-.Ldebug_info0
	.uleb128	15
	.ascii	"WHEEL\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La217-.Ldebug_info0
	.uleb128	15
	.ascii	"JAXIS\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La219-.Ldebug_info0
	.uleb128	15
	.ascii	"JBALL\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La221-.Ldebug_info0
	.uleb128	15
	.ascii	"JHAT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La223-.Ldebug_info0
	.uleb128	15
	.ascii	"JBUTTON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La225-.Ldebug_info0
	.uleb128	15
	.ascii	"JDEVICE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La227-.Ldebug_info0
	.uleb128	15
	.ascii	"CAXIS\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La229-.Ldebug_info0
	.uleb128	15
	.ascii	"CBUTTON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La231-.Ldebug_info0
	.uleb128	15
	.ascii	"CDEVICE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La233-.Ldebug_info0
	.uleb128	15
	.ascii	"QUIT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La243-.Ldebug_info0
	.uleb128	15
	.ascii	"USER\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La247-.Ldebug_info0
	.uleb128	15
	.ascii	"SYSWM\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La249-.Ldebug_info0
	.uleb128	15
	.ascii	"TFINGER\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La235-.Ldebug_info0
	.uleb128	15
	.ascii	"MGESTURE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La237-.Ldebug_info0
	.uleb128	15
	.ascii	"DGESTURE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La239-.Ldebug_info0
	.uleb128	15
	.ascii	"DROP\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La241-.Ldebug_info0
	.uleb128	15
	.ascii	"PADDING\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La449-.Ldebug_info0
	.byte	0
.La254:
	.uleb128	12
	.long	.La253-.Ldebug_info0
# Definition TSDL_eventaction
.La255:
	.uleb128	10
	.ascii	"TSDL_EVENTACTION\000"
	.long	.La451-.Ldebug_info0
.La451:
	.uleb128	21
	.ascii	"TSDL_EVENTACTION\000"
	.byte	4
	.uleb128	22
	.ascii	"SDL_ADDEVENT\000"
	.long	0
	.uleb128	22
	.ascii	"SDL_PEEKEVENT\000"
	.long	1
	.uleb128	22
	.ascii	"SDL_GETEVENT\000"
	.long	2
	.byte	0
.La256:
	.uleb128	12
	.long	.La255-.Ldebug_info0
# Definition PSDL_EventFilter
.La257:
	.uleb128	10
	.ascii	"PSDL_EVENTFILTER\000"
	.long	.La452-.Ldebug_info0
.La452:
	.uleb128	18
	.long	.La259-.Ldebug_info0
.La258:
	.uleb128	12
	.long	.La257-.Ldebug_info0
# Definition <procedure variable type of function(Pointer;PSDL_Event):LongInt;CDecl>
.La259:
	.uleb128	10
	.ascii	"TSDL_EVENTFILTER\000"
	.long	.La453-.Ldebug_info0
.La453:
	.uleb128	19
	.ascii	"TSDL_EVENTFILTER\000"
	.byte	1
	.long	.La17-.Ldebug_info0
	.uleb128	20
	.ascii	"USERDATA\000"
	.long	.La25-.Ldebug_info0
	.uleb128	20
	.ascii	"EVENT\000"
	.long	.La251-.Ldebug_info0
	.byte	0
.La260:
	.uleb128	12
	.long	.La259-.Ldebug_info0
# Defs - End unit SDL2 has index 254
# Defs - Begin Staticsymtable
# Defs - End Staticsymtable
# Definition TSDL_RWops.<procedure variable type of function(PSDL_RWops):Int64;CDecl>
.La314:
	.uleb128	24
	.byte	1
	.long	.La19-.Ldebug_info0
	.uleb128	20
	.ascii	"CONTEXT\000"
	.long	.La63-.Ldebug_info0
	.byte	0
.La315:
	.uleb128	12
	.long	.La314-.Ldebug_info0
# Definition TSDL_RWops.<procedure variable type of function(PSDL_RWops;Int64;LongInt):Int64;CDecl>
.La316:
	.uleb128	24
	.byte	1
	.long	.La19-.Ldebug_info0
	.uleb128	20
	.ascii	"CONTEXT\000"
	.long	.La63-.Ldebug_info0
	.uleb128	20
	.ascii	"OFFSET\000"
	.long	.La19-.Ldebug_info0
	.uleb128	20
	.ascii	"WHENCE\000"
	.long	.La17-.Ldebug_info0
	.byte	0
.La317:
	.uleb128	12
	.long	.La316-.Ldebug_info0
# Definition TSDL_RWops.<procedure variable type of function(PSDL_RWops;Pointer;QWord;QWord):QWord;CDecl>
.La318:
	.uleb128	24
	.byte	1
	.long	.La21-.Ldebug_info0
	.uleb128	20
	.ascii	"CONTEXT\000"
	.long	.La63-.Ldebug_info0
	.uleb128	20
	.ascii	"PTR\000"
	.long	.La25-.Ldebug_info0
	.uleb128	20
	.ascii	"SIZE\000"
	.long	.La21-.Ldebug_info0
	.uleb128	20
	.ascii	"MAXNUM\000"
	.long	.La21-.Ldebug_info0
	.byte	0
.La319:
	.uleb128	12
	.long	.La318-.Ldebug_info0
# Definition TSDL_RWops.<procedure variable type of function(PSDL_RWops;const Pointer;QWord;QWord):QWord;CDecl>
.La320:
	.uleb128	24
	.byte	1
	.long	.La21-.Ldebug_info0
	.uleb128	20
	.ascii	"CONTEXT\000"
	.long	.La63-.Ldebug_info0
	.uleb128	20
	.ascii	"PTR\000"
	.long	.La25-.Ldebug_info0
	.uleb128	20
	.ascii	"SIZE\000"
	.long	.La21-.Ldebug_info0
	.uleb128	20
	.ascii	"NUM\000"
	.long	.La21-.Ldebug_info0
	.byte	0
.La321:
	.uleb128	12
	.long	.La320-.Ldebug_info0
# Definition TSDL_RWops.<procedure variable type of function(PSDL_RWops):LongInt;CDecl>
.La322:
	.uleb128	24
	.byte	1
	.long	.La17-.Ldebug_info0
	.uleb128	20
	.ascii	"CONTEXT\000"
	.long	.La63-.Ldebug_info0
	.byte	0
.La323:
	.uleb128	12
	.long	.La322-.Ldebug_info0
# Definition TSDL_RWops.<record type>
.La324:
	.uleb128	25
	.uleb128	40
	.uleb128	15
	.ascii	"WINDOWSIO\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La454-.Ldebug_info0
	.uleb128	15
	.ascii	"MEM\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La456-.Ldebug_info0
	.uleb128	15
	.ascii	"UNKNOWN\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La458-.Ldebug_info0
	.byte	0
.La325:
	.uleb128	12
	.long	.La324-.Ldebug_info0
# Definition Double
.La332:
	.uleb128	10
	.ascii	"DOUBLE\000"
	.long	.La460-.Ldebug_info0
.La460:
	.uleb128	13
	.ascii	"DOUBLE\000"
	.byte	4
	.byte	8
.La333:
	.uleb128	12
	.long	.La332-.Ldebug_info0
# Definition TSDL_AudioCVT.Array[0..9] Of <procedure variable type of procedure(PSDL_AudioCVT;Word);CDecl>
.La334:
	.uleb128	26
	.uleb128	80
	.long	.La77-.Ldebug_info0
	.uleb128	27
	.sleb128	0
	.sleb128	9
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.byte	0
.La335:
	.uleb128	12
	.long	.La334-.Ldebug_info0
# Definition TSDL_PixelFormat.Array[0..1] Of Byte
.La344:
	.uleb128	26
	.uleb128	2
	.long	.La67-.Ldebug_info0
	.uleb128	27
	.sleb128	0
	.sleb128	1
	.uleb128	1
	.long	.La1-.Ldebug_info0
	.byte	0
.La345:
	.uleb128	12
	.long	.La344-.Ldebug_info0
# Definition TSDL_RendererInfo.Array[0..15] Of LongWord
.La362:
	.uleb128	26
	.uleb128	64
	.long	.La55-.Ldebug_info0
	.uleb128	27
	.sleb128	0
	.sleb128	15
	.uleb128	4
	.long	.La1-.Ldebug_info0
	.byte	0
.La363:
	.uleb128	12
	.long	.La362-.Ldebug_info0
# Definition TSDL_MessageBoxColorScheme.Array[0..4] Of SDL_MessageBoxColor
.La370:
	.uleb128	26
	.uleb128	15
	.long	.La135-.Ldebug_info0
	.uleb128	27
	.sleb128	0
	.sleb128	4
	.uleb128	3
	.long	.La1-.Ldebug_info0
	.byte	0
.La371:
	.uleb128	12
	.long	.La370-.Ldebug_info0
# Definition TSDL_JoystickGUID.Array[0..15] Of Byte
.La380:
	.uleb128	26
	.uleb128	16
	.long	.La67-.Ldebug_info0
	.uleb128	27
	.sleb128	0
	.sleb128	15
	.uleb128	1
	.long	.La1-.Ldebug_info0
	.byte	0
.La381:
	.uleb128	12
	.long	.La380-.Ldebug_info0
# Definition TSDL_GameControllerButtonBind.<record type>
.La387:
	.uleb128	25
	.uleb128	8
	.uleb128	15
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"AXIS\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"HAT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La461-.Ldebug_info0
	.byte	0
.La388:
	.uleb128	12
	.long	.La387-.Ldebug_info0
# Definition TSDL_HapticDirection.Array[0..2] Of LongInt
.La391:
	.uleb128	26
	.uleb128	12
	.long	.La17-.Ldebug_info0
	.uleb128	27
	.sleb128	0
	.sleb128	2
	.uleb128	4
	.long	.La1-.Ldebug_info0
	.byte	0
.La392:
	.uleb128	12
	.long	.La391-.Ldebug_info0
# Definition TSDL_HapticCondition.Array[0..2] Of Word
.La399:
	.uleb128	26
	.uleb128	6
	.long	.La61-.Ldebug_info0
	.uleb128	27
	.sleb128	0
	.sleb128	2
	.uleb128	2
	.long	.La1-.Ldebug_info0
	.byte	0
.La400:
	.uleb128	12
	.long	.La399-.Ldebug_info0
# Definition TSDL_HapticCondition.Array[0..2] Of SmallInt
.La401:
	.uleb128	26
	.uleb128	6
	.long	.La15-.Ldebug_info0
	.uleb128	27
	.sleb128	0
	.sleb128	2
	.uleb128	2
	.long	.La1-.Ldebug_info0
	.byte	0
.La402:
	.uleb128	12
	.long	.La401-.Ldebug_info0
# Definition TSDL_HapticCondition.Array[0..2] Of Word
.La403:
	.uleb128	26
	.uleb128	6
	.long	.La61-.Ldebug_info0
	.uleb128	27
	.sleb128	0
	.sleb128	2
	.uleb128	2
	.long	.La1-.Ldebug_info0
	.byte	0
.La404:
	.uleb128	12
	.long	.La403-.Ldebug_info0
# Definition TSDL_HapticCondition.Array[0..2] Of SmallInt
.La405:
	.uleb128	26
	.uleb128	6
	.long	.La15-.Ldebug_info0
	.uleb128	27
	.sleb128	0
	.sleb128	2
	.uleb128	2
	.long	.La1-.Ldebug_info0
	.byte	0
.La406:
	.uleb128	12
	.long	.La405-.Ldebug_info0
# Definition PWord
.La413:
	.uleb128	10
	.ascii	"PWORD\000"
	.long	.La463-.Ldebug_info0
.La463:
	.uleb128	18
	.long	.La61-.Ldebug_info0
.La414:
	.uleb128	12
	.long	.La413-.Ldebug_info0
# Definition TSDL_TextEditingEvent.Array[0..31] Of Char
.La423:
	.uleb128	26
	.uleb128	32
	.long	.La282-.Ldebug_info0
	.uleb128	27
	.sleb128	0
	.sleb128	31
	.uleb128	1
	.long	.La1-.Ldebug_info0
	.byte	0
.La424:
	.uleb128	12
	.long	.La423-.Ldebug_info0
# Definition TSDL_TextInputEvent.Array[0..31] Of Char
.La426:
	.uleb128	26
	.uleb128	32
	.long	.La282-.Ldebug_info0
	.uleb128	27
	.sleb128	0
	.sleb128	31
	.uleb128	1
	.long	.La1-.Ldebug_info0
	.byte	0
.La427:
	.uleb128	12
	.long	.La426-.Ldebug_info0
# Definition TSDL_Event.Array[0..55] Of Byte
.La449:
	.uleb128	26
	.uleb128	56
	.long	.La67-.Ldebug_info0
	.uleb128	27
	.sleb128	0
	.sleb128	55
	.uleb128	1
	.long	.La1-.Ldebug_info0
	.byte	0
.La450:
	.uleb128	12
	.long	.La449-.Ldebug_info0
# Definition TSDL_RWops..<record type>
.La454:
	.uleb128	25
	.uleb128	40
	.uleb128	15
	.ascii	"APPEND\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"H\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La25-.Ldebug_info0
	.uleb128	15
	.ascii	"BUFFER\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La464-.Ldebug_info0
	.byte	0
.La455:
	.uleb128	12
	.long	.La454-.Ldebug_info0
# Definition TSDL_RWops..<record type>
.La456:
	.uleb128	25
	.uleb128	24
	.uleb128	15
	.ascii	"BASE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La289-.Ldebug_info0
	.uleb128	15
	.ascii	"HERE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La289-.Ldebug_info0
	.uleb128	15
	.ascii	"STOP\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La289-.Ldebug_info0
	.byte	0
.La457:
	.uleb128	12
	.long	.La456-.Ldebug_info0
# Definition TSDL_RWops..<record type>
.La458:
	.uleb128	25
	.uleb128	16
	.uleb128	15
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La25-.Ldebug_info0
	.uleb128	15
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La25-.Ldebug_info0
	.byte	0
.La459:
	.uleb128	12
	.long	.La458-.Ldebug_info0
# Definition TSDL_GameControllerButtonBind..<record type>
.La461:
	.uleb128	25
	.uleb128	8
	.uleb128	15
	.ascii	"HAT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	15
	.ascii	"HAT_MASK\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La17-.Ldebug_info0
	.byte	0
.La462:
	.uleb128	12
	.long	.La461-.Ldebug_info0
# Definition TSDL_RWops...<record type>
.La464:
	.uleb128	25
	.uleb128	24
	.uleb128	15
	.ascii	"DATA\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La25-.Ldebug_info0
	.uleb128	15
	.ascii	"SIZE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La21-.Ldebug_info0
	.uleb128	15
	.ascii	"LEFT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La21-.Ldebug_info0
	.byte	0
.La465:
	.uleb128	12
	.long	.La464-.Ldebug_info0
	.byte	0
.Ledebug_info0:
# End asmlist al_dwarf_info
# Begin asmlist al_dwarf_abbrev

.section .debug_abbrev
# Abbrev 1
	.uleb128	1
	.uleb128	17
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	37
	.uleb128	8
	.uleb128	27
	.uleb128	8
	.uleb128	19
	.uleb128	11
	.uleb128	66
	.uleb128	11
	.uleb128	16
	.uleb128	6
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
# Abbrev 2
	.uleb128	2
	.uleb128	52
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	28
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 3
	.uleb128	3
	.uleb128	52
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	28
	.uleb128	10
	.byte	0
	.byte	0
# Abbrev 4
	.uleb128	4
	.uleb128	52
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	63
	.uleb128	12
	.uleb128	2
	.uleb128	10
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 5
	.uleb128	5
	.uleb128	52
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	28
	.uleb128	13
	.byte	0
	.byte	0
# Abbrev 6
	.uleb128	6
	.uleb128	46
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	39
	.uleb128	12
	.uleb128	54
	.uleb128	11
	.uleb128	63
	.uleb128	12
	.uleb128	73
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
# Abbrev 7
	.uleb128	7
	.uleb128	5
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	2
	.uleb128	10
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 8
	.uleb128	8
	.uleb128	52
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	2
	.uleb128	10
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 9
	.uleb128	9
	.uleb128	46
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	39
	.uleb128	12
	.uleb128	54
	.uleb128	11
	.uleb128	63
	.uleb128	12
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
# Abbrev 10
	.uleb128	10
	.uleb128	22
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 11
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
	.byte	0
# Abbrev 12
	.uleb128	12
	.uleb128	16
	.byte	0
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 13
	.uleb128	13
	.uleb128	36
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	62
	.uleb128	11
	.uleb128	11
	.uleb128	11
	.byte	0
	.byte	0
# Abbrev 14
	.uleb128	14
	.uleb128	19
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 15
	.uleb128	15
	.uleb128	13
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	56
	.uleb128	10
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 16
	.uleb128	16
	.uleb128	1
	.byte	1
	.uleb128	11
	.uleb128	15
	.uleb128	81
	.uleb128	15
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 17
	.uleb128	17
	.uleb128	33
	.byte	0
	.uleb128	34
	.uleb128	15
	.uleb128	47
	.uleb128	15
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 18
	.uleb128	18
	.uleb128	15
	.byte	0
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 19
	.uleb128	19
	.uleb128	21
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	39
	.uleb128	12
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 20
	.uleb128	20
	.uleb128	5
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 21
	.uleb128	21
	.uleb128	4
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.byte	0
	.byte	0
# Abbrev 22
	.uleb128	22
	.uleb128	40
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	6
	.byte	0
	.byte	0
# Abbrev 23
	.uleb128	23
	.uleb128	21
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	39
	.uleb128	12
	.byte	0
	.byte	0
# Abbrev 24
	.uleb128	24
	.uleb128	21
	.byte	1
	.uleb128	39
	.uleb128	12
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 25
	.uleb128	25
	.uleb128	19
	.byte	1
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 26
	.uleb128	26
	.uleb128	1
	.byte	1
	.uleb128	11
	.uleb128	15
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 27
	.uleb128	27
	.uleb128	33
	.byte	0
	.uleb128	34
	.uleb128	13
	.uleb128	47
	.uleb128	13
	.uleb128	81
	.uleb128	15
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
	.byte	0
# End asmlist al_dwarf_abbrev
# Begin asmlist al_dwarf_line

.section .debug_line
# === header start ===
	.long	.Ledebug_line0-.Lf2
.Lf2:
	.short	2
	.long	.Lehdebug_line0-.Lf3
.Lf3:
	.byte	1
	.byte	1
	.byte	1
	.byte	255
	.byte	13
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
# include_directories
	.byte	0
# file_names
	.ascii	"sdl2.pas\000"
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Lehdebug_line0:
# === header end ===
# function: SDL2_$$_SDL_ICONV_UTF8_LOCALE$PCHAR$$PCHAR
# [2688:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2687
	.byte	1
# [2689:41]
	.byte	2
	.uleb128	.Ll2-.Ll1
	.byte	5
	.uleb128	41
	.byte	13
# [2690:1]
	.byte	2
	.uleb128	.Ll3-.Ll2
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll4
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_ICONV_UTF8_UCS2$PCHAR$$PCHAR
# [2693:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll5
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2692
	.byte	1
# [2694:55]
	.byte	2
	.uleb128	.Ll6-.Ll5
	.byte	5
	.uleb128	55
	.byte	13
# [2695:1]
	.byte	2
	.uleb128	.Ll7-.Ll6
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll8
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_ICONV_UTF8_UCS4$PCHAR$$PCHAR
# [2698:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll9
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2697
	.byte	1
# [2699:55]
	.byte	2
	.uleb128	.Ll10-.Ll9
	.byte	5
	.uleb128	55
	.byte	13
# [2700:1]
	.byte	2
	.uleb128	.Ll11-.Ll10
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll12
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_MOSTSIGNIFICANTBITINDEX32$LONGWORD$$LONGINT
# [2707:8]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll13
	.byte	5
	.uleb128	8
	.byte	3
	.sleb128	2706
	.byte	1
# [2709:3]
	.byte	2
	.uleb128	.Ll14-.Ll13
	.byte	5
	.uleb128	3
	.byte	14
# [2708:5]
	.byte	2
	.uleb128	.Ll15-.Ll14
	.byte	5
	.uleb128	5
	.byte	3
	.sleb128	-1
	.byte	1
# [2710:21]
	.byte	2
	.uleb128	.Ll16-.Ll15
	.byte	5
	.uleb128	21
	.byte	14
# [2711:1]
	.byte	2
	.uleb128	.Ll17-.Ll16
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll18
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_VERSION$PSDL_VERSION
# [2717:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll19
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2716
	.byte	1
# [2718:3]
	.byte	2
	.uleb128	.Ll20-.Ll19
	.byte	5
	.uleb128	3
	.byte	13
# [2719:3]
	.byte	2
	.uleb128	.Ll21-.Ll20
	.byte	13
# [2720:3]
	.byte	2
	.uleb128	.Ll22-.Ll21
	.byte	13
# [2721:1]
	.byte	2
	.uleb128	.Ll23-.Ll22
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll24
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_VERSIONNUM$LONGINT$LONGINT$LONGINT$$LONGINT
# [2725:10]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll25
	.byte	5
	.uleb128	10
	.byte	3
	.sleb128	2724
	.byte	1
# [2726:1]
	.byte	2
	.uleb128	.Ll26-.Ll25
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll27
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_COMPILEDVERSION$$LONGINT
# [2730:8]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll28
	.byte	5
	.uleb128	8
	.byte	3
	.sleb128	2729
	.byte	1
# [2731:1]
	.byte	2
	.uleb128	.Ll29-.Ll28
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll30
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_VERSION_ATLEAST$LONGINT$LONGINT$LONGINT$$BOOLEAN
# [2735:31]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll31
	.byte	5
	.uleb128	31
	.byte	3
	.sleb128	2734
	.byte	1
# [2736:1]
	.byte	2
	.uleb128	.Ll32-.Ll31
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll33
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_OUTOFMEMORY$$LONGINT
# [2742:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll34
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2741
	.byte	1
# [2743:8]
	.byte	2
	.uleb128	.Ll35-.Ll34
	.byte	5
	.uleb128	8
	.byte	13
# [2744:1]
	.byte	2
	.uleb128	.Ll36-.Ll35
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll37
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_UNSUPPORTED$$LONGINT
# [2747:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll38
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2746
	.byte	1
# [2748:8]
	.byte	2
	.uleb128	.Ll39-.Ll38
	.byte	5
	.uleb128	8
	.byte	13
# [2749:1]
	.byte	2
	.uleb128	.Ll40-.Ll39
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll41
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_INVALIDPARAMERROR$PCHAR$$LONGINT
# [2752:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll42
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2751
	.byte	1
# [2753:50]
	.byte	2
	.uleb128	.Ll43-.Ll42
	.byte	5
	.uleb128	50
	.byte	13
# [2754:1]
	.byte	2
	.uleb128	.Ll44-.Ll43
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll45
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_TICKS_PASSED$LONGWORD$LONGWORD$$LONGBOOL
# [2761:9]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll46
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	2760
	.byte	1
# [2762:1]
	.byte	2
	.uleb128	.Ll47-.Ll46
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll48
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_MUTEXP$POINTER$$LONGINT
# [2768:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll49
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2767
	.byte	1
# [2769:8]
	.byte	2
	.uleb128	.Ll50-.Ll49
	.byte	5
	.uleb128	8
	.byte	13
# [2770:1]
	.byte	2
	.uleb128	.Ll51-.Ll50
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll52
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_MUTEXV$POINTER$$LONGINT
# [2773:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll53
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2772
	.byte	1
# [2774:8]
	.byte	2
	.uleb128	.Ll54-.Ll53
	.byte	5
	.uleb128	8
	.byte	13
# [2775:1]
	.byte	2
	.uleb128	.Ll55-.Ll54
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll56
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_CREATETHREAD$TSDL_THREADFUNCTION$PCHAR$POINTER$$POINTER
# [2782:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll57
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2781
	.byte	1
# [2783:8]
	.byte	2
	.uleb128	.Ll58-.Ll57
	.byte	5
	.uleb128	8
	.byte	13
# [2784:1]
	.byte	2
	.uleb128	.Ll59-.Ll58
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll60
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAP16$WORD$$WORD
# [2791:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll61
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2790
	.byte	1
# [2792:8]
	.byte	2
	.uleb128	.Ll62-.Ll61
	.byte	5
	.uleb128	8
	.byte	13
# [2793:1]
	.byte	2
	.uleb128	.Ll63-.Ll62
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll64
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAP32$LONGWORD$$LONGWORD
# [2796:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll65
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2795
	.byte	1
# [2797:8]
	.byte	2
	.uleb128	.Ll66-.Ll65
	.byte	5
	.uleb128	8
	.byte	13
# [2798:1]
	.byte	2
	.uleb128	.Ll67-.Ll66
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll68
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAP64$QWORD$$QWORD
# [2801:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll69
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2800
	.byte	1
# [2802:8]
	.byte	2
	.uleb128	.Ll70-.Ll69
	.byte	5
	.uleb128	8
	.byte	13
# [2803:1]
	.byte	2
	.uleb128	.Ll71-.Ll70
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll72
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAPFLOAT$SINGLE$$SINGLE
# [2809:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll73
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2808
	.byte	1
# [2810:3]
	.byte	2
	.uleb128	.Ll74-.Ll73
	.byte	5
	.uleb128	3
	.byte	13
# [2811:11]
	.byte	2
	.uleb128	.Ll75-.Ll74
	.byte	5
	.uleb128	11
	.byte	13
# [2812:10]
	.byte	2
	.uleb128	.Ll76-.Ll75
	.byte	5
	.uleb128	10
	.byte	13
# [2813:1]
	.byte	2
	.uleb128	.Ll77-.Ll76
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll78
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAPLE16$WORD$$WORD
# [2816:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll79
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2815
	.byte	1
# [2818:1]
	.byte	2
	.uleb128	.Ll80-.Ll79
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll81
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAPLE32$LONGWORD$$LONGWORD
# [2821:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll82
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2820
	.byte	1
# [2823:1]
	.byte	2
	.uleb128	.Ll83-.Ll82
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll84
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAPLE64$QWORD$$QWORD
# [2826:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll85
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2825
	.byte	1
# [2828:1]
	.byte	2
	.uleb128	.Ll86-.Ll85
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll87
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAPFLOATLE$SINGLE$$SINGLE
# [2837:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll88
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2836
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll89
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAPBE16$WORD$$WORD
# [2840:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll90
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2839
	.byte	1
# [2841:8]
	.byte	2
	.uleb128	.Ll91-.Ll90
	.byte	5
	.uleb128	8
	.byte	13
# [2842:1]
	.byte	2
	.uleb128	.Ll92-.Ll91
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll93
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAPBE32$LONGWORD$$LONGWORD
# [2845:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll94
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2844
	.byte	1
# [2846:8]
	.byte	2
	.uleb128	.Ll95-.Ll94
	.byte	5
	.uleb128	8
	.byte	13
# [2847:1]
	.byte	2
	.uleb128	.Ll96-.Ll95
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll97
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAPBE64$QWORD$$QWORD
# [2850:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll98
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2849
	.byte	1
# [2851:8]
	.byte	2
	.uleb128	.Ll99-.Ll98
	.byte	5
	.uleb128	8
	.byte	13
# [2852:1]
	.byte	2
	.uleb128	.Ll100-.Ll99
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll101
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAPFLOATBE$SINGLE$$SINGLE
# [2855:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll102
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2854
	.byte	1
# [2859:8]
	.byte	2
	.uleb128	.Ll103-.Ll102
	.byte	5
	.uleb128	8
	.byte	16
# [2861:1]
	.byte	2
	.uleb128	.Ll104-.Ll103
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll105
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_RWSIZE$PSDL_RWOPS$$INT64
# [2867:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll106
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2866
	.byte	1
# [2868:11]
	.byte	2
	.uleb128	.Ll107-.Ll106
	.byte	5
	.uleb128	11
	.byte	13
# [2869:1]
	.byte	2
	.uleb128	.Ll108-.Ll107
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll109
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_RWSEEK$PSDL_RWOPS$INT64$LONGINT$$INT64
# [2873:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll110
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2872
	.byte	1
# [2874:11]
	.byte	2
	.uleb128	.Ll111-.Ll110
	.byte	5
	.uleb128	11
	.byte	13
# [2875:1]
	.byte	2
	.uleb128	.Ll112-.Ll111
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll113
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_RWTELL$PSDL_RWOPS$$INT64
# [2878:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll114
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2877
	.byte	1
# [2879:11]
	.byte	2
	.uleb128	.Ll115-.Ll114
	.byte	5
	.uleb128	11
	.byte	13
# [2880:1]
	.byte	2
	.uleb128	.Ll116-.Ll115
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll117
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_RWREAD$PSDL_RWOPS$POINTER$LONGWORD$LONGWORD$$LONGWORD
# [2883:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll118
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2882
	.byte	1
# [2884:35]
	.byte	2
	.uleb128	.Ll119-.Ll118
	.byte	5
	.uleb128	35
	.byte	13
# [2885:1]
	.byte	2
	.uleb128	.Ll120-.Ll119
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll121
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_RWWRITE$PSDL_RWOPS$POINTER$LONGWORD$LONGWORD$$LONGWORD
# [2888:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll122
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2887
	.byte	1
# [2889:36]
	.byte	2
	.uleb128	.Ll123-.Ll122
	.byte	5
	.uleb128	36
	.byte	13
# [2890:1]
	.byte	2
	.uleb128	.Ll124-.Ll123
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll125
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_RWCLOSE$PSDL_RWOPS$$LONGINT
# [2893:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll126
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2892
	.byte	1
# [2894:11]
	.byte	2
	.uleb128	.Ll127-.Ll126
	.byte	5
	.uleb128	11
	.byte	13
# [2895:1]
	.byte	2
	.uleb128	.Ll128-.Ll127
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll129
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_AUDIO_BITSIZE$WORD$$WORD
# [2901:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll130
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2900
	.byte	1
# [2903:1]
	.byte	2
	.uleb128	.Ll131-.Ll130
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll132
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_AUDIO_ISFLOAT$WORD$$BOOLEAN
# [2907:8]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll133
	.byte	5
	.uleb128	8
	.byte	3
	.sleb128	2906
	.byte	1
# [2908:1]
	.byte	2
	.uleb128	.Ll134-.Ll133
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll135
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_AUDIO_ISBIGENDIAN$WORD$$BOOLEAN
# [2912:8]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll136
	.byte	5
	.uleb128	8
	.byte	3
	.sleb128	2911
	.byte	1
# [2913:1]
	.byte	2
	.uleb128	.Ll137-.Ll136
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll138
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_AUDIO_ISSIGNED$WORD$$BOOLEAN
# [2917:8]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll139
	.byte	5
	.uleb128	8
	.byte	3
	.sleb128	2916
	.byte	1
# [2918:1]
	.byte	2
	.uleb128	.Ll140-.Ll139
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll141
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_AUDIO_ISINT$WORD$$BOOLEAN
# [2922:12]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll142
	.byte	5
	.uleb128	12
	.byte	3
	.sleb128	2921
	.byte	1
# [2923:1]
	.byte	2
	.uleb128	.Ll143-.Ll142
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll144
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_AUDIO_ISLITTLEENDIAN$WORD$$BOOLEAN
# [2927:12]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll145
	.byte	5
	.uleb128	12
	.byte	3
	.sleb128	2926
	.byte	1
# [2928:1]
	.byte	2
	.uleb128	.Ll146-.Ll145
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll147
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_AUDIO_ISUNSIGNED$WORD$$BOOLEAN
# [2932:12]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll148
	.byte	5
	.uleb128	12
	.byte	3
	.sleb128	2931
	.byte	1
# [2933:1]
	.byte	2
	.uleb128	.Ll149-.Ll148
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll150
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_LOADWAV$PCHAR$PSDL_AUDIOSPEC$PPBYTE$PDWORD$$PSDL_AUDIOSPEC
# [2937:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll151
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2936
	.byte	1
# [2938:8]
	.byte	2
	.uleb128	.Ll152-.Ll151
	.byte	5
	.uleb128	8
	.byte	13
# [2939:1]
	.byte	2
	.uleb128	.Ll153-.Ll152
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll154
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_PIXELFLAG$LONGWORD$$LONGWORD
# [2945:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll155
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2944
	.byte	1
# [2946:8]
	.byte	2
	.uleb128	.Ll156-.Ll155
	.byte	5
	.uleb128	8
	.byte	13
# [2947:1]
	.byte	2
	.uleb128	.Ll157-.Ll156
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll158
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_PIXELTYPE$LONGWORD$$LONGWORD
# [2950:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll159
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2949
	.byte	1
# [2951:8]
	.byte	2
	.uleb128	.Ll160-.Ll159
	.byte	5
	.uleb128	8
	.byte	13
# [2952:1]
	.byte	2
	.uleb128	.Ll161-.Ll160
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll162
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_PIXELORDER$LONGWORD$$LONGWORD
# [2955:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll163
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2954
	.byte	1
# [2956:8]
	.byte	2
	.uleb128	.Ll164-.Ll163
	.byte	5
	.uleb128	8
	.byte	13
# [2957:1]
	.byte	2
	.uleb128	.Ll165-.Ll164
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll166
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_PIXELLAYOUT$LONGWORD$$LONGWORD
# [2960:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll167
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2959
	.byte	1
# [2961:8]
	.byte	2
	.uleb128	.Ll168-.Ll167
	.byte	5
	.uleb128	8
	.byte	13
# [2962:1]
	.byte	2
	.uleb128	.Ll169-.Ll168
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll170
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_BITSPERPIXEL$LONGWORD$$LONGWORD
# [2965:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll171
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2964
	.byte	1
# [2966:8]
	.byte	2
	.uleb128	.Ll172-.Ll171
	.byte	5
	.uleb128	8
	.byte	13
# [2967:1]
	.byte	2
	.uleb128	.Ll173-.Ll172
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll174
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_BYTESPERPIXEL$LONGWORD$$LONGWORD
# [2970:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll175
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2969
	.byte	1
# [2971:6]
	.byte	2
	.uleb128	.Ll176-.Ll175
	.byte	5
	.uleb128	6
	.byte	13
# [2973:10]
	.byte	2
	.uleb128	.Ll177-.Ll176
	.byte	5
	.uleb128	10
	.byte	14
# [2974:10]
	.byte	2
	.uleb128	.Ll178-.Ll177
	.byte	13
# [2975:10]
	.byte	2
	.uleb128	.Ll179-.Ll178
	.byte	13
# [2977:7]
	.byte	2
	.uleb128	.Ll180-.Ll179
	.byte	5
	.uleb128	7
	.byte	14
# [2976:9]
	.byte	2
	.uleb128	.Ll181-.Ll180
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	-1
	.byte	1
# [2978:16]
	.byte	2
	.uleb128	.Ll182-.Ll181
	.byte	5
	.uleb128	16
	.byte	14
# [2981:20]
	.byte	2
	.uleb128	.Ll183-.Ll182
	.byte	5
	.uleb128	20
	.byte	15
# [2982:1]
	.byte	2
	.uleb128	.Ll184-.Ll183
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll185
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_ISPIXELFORMAT_INDEXED$LONGWORD$$BOOLEAN
# [2985:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll186
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2984
	.byte	1
# [2986:13]
	.byte	2
	.uleb128	.Ll187-.Ll186
	.byte	5
	.uleb128	13
	.byte	13
# [2987:10]
	.byte	2
	.uleb128	.Ll188-.Ll187
	.byte	5
	.uleb128	10
	.byte	13
# [2988:10]
	.byte	2
	.uleb128	.Ll189-.Ll188
	.byte	13
# [2989:10]
	.byte	2
	.uleb128	.Ll190-.Ll189
	.byte	13
# [2990:1]
	.byte	2
	.uleb128	.Ll191-.Ll190
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll192
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_ISPIXELFORMAT_ALPHA$LONGWORD$$BOOLEAN
# [2993:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll193
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2992
	.byte	1
# [2994:13]
	.byte	2
	.uleb128	.Ll194-.Ll193
	.byte	5
	.uleb128	13
	.byte	13
# [2995:10]
	.byte	2
	.uleb128	.Ll195-.Ll194
	.byte	5
	.uleb128	10
	.byte	13
# [2996:10]
	.byte	2
	.uleb128	.Ll196-.Ll195
	.byte	13
# [2997:10]
	.byte	2
	.uleb128	.Ll197-.Ll196
	.byte	13
# [2998:10]
	.byte	2
	.uleb128	.Ll198-.Ll197
	.byte	13
# [2999:1]
	.byte	2
	.uleb128	.Ll199-.Ll198
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll200
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_ISPIXELFORMAT_FOURCC$LONGWORD$$BOOLEAN
# [3003:20]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll201
	.byte	5
	.uleb128	20
	.byte	3
	.sleb128	3002
	.byte	1
# [3004:1]
	.byte	2
	.uleb128	.Ll202-.Ll201
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll203
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_RECTEMPTY$PSDL_RECT$$LONGBOOL
# [3011:8]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll204
	.byte	5
	.uleb128	8
	.byte	3
	.sleb128	3010
	.byte	1
# [3012:1]
	.byte	2
	.uleb128	.Ll205-.Ll204
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll206
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_RECTEQUALS$PSDL_RECT$PSDL_RECT$$LONGBOOL
# [3016:8]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll207
	.byte	5
	.uleb128	8
	.byte	3
	.sleb128	3015
	.byte	1
# [3017:1]
	.byte	2
	.uleb128	.Ll208-.Ll207
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll209
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_MUSTLOCK$PSDL_SURFACE$$BOOLEAN
# [3024:8]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll210
	.byte	5
	.uleb128	8
	.byte	3
	.sleb128	3023
	.byte	1
# [3025:1]
	.byte	2
	.uleb128	.Ll211-.Ll210
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll212
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_LOADBMP$PCHAR$$PSDL_SURFACE
# [3028:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll213
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	3027
	.byte	1
# [3029:49]
	.byte	2
	.uleb128	.Ll214-.Ll213
	.byte	5
	.uleb128	49
	.byte	13
# [3030:1]
	.byte	2
	.uleb128	.Ll215-.Ll214
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll216
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SAVEBMP$PSDL_SURFACE$PCHAR$$LONGINT
# [3033:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll217
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	3032
	.byte	1
# [3034:58]
	.byte	2
	.uleb128	.Ll218-.Ll217
	.byte	5
	.uleb128	58
	.byte	13
# [3035:1]
	.byte	2
	.uleb128	.Ll219-.Ll218
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll220
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_BLITSURFACE$PSDL_SURFACE$PSDL_RECT$PSDL_SURFACE$PSDL_RECT$$LONGINT
# [3038:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll221
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	3037
	.byte	1
# [3039:8]
	.byte	2
	.uleb128	.Ll222-.Ll221
	.byte	5
	.uleb128	8
	.byte	13
# [3040:1]
	.byte	2
	.uleb128	.Ll223-.Ll222
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll224
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_BLITSCALED$PSDL_SURFACE$PSDL_RECT$PSDL_SURFACE$PSDL_RECT$$LONGINT
# [3043:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll225
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	3042
	.byte	1
# [3044:8]
	.byte	2
	.uleb128	.Ll226-.Ll225
	.byte	5
	.uleb128	8
	.byte	13
# [3045:1]
	.byte	2
	.uleb128	.Ll227-.Ll226
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll228
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_GAMECONTROLLERADDMAPPINGSFROMFILE$PCHAR$$LONGINT
# [3051:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll229
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	3050
	.byte	1
# [3052:70]
	.byte	2
	.uleb128	.Ll230-.Ll229
	.byte	5
	.uleb128	70
	.byte	13
# [3053:1]
	.byte	2
	.uleb128	.Ll231-.Ll230
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll232
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_QUITREQUESTED$$BOOLEAN
# [3059:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll233
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	3058
	.byte	1
# [3060:3]
	.byte	2
	.uleb128	.Ll234-.Ll233
	.byte	5
	.uleb128	3
	.byte	13
# [3061:8]
	.byte	2
	.uleb128	.Ll235-.Ll234
	.byte	5
	.uleb128	8
	.byte	13
# [3062:1]
	.byte	2
	.uleb128	.Ll236-.Ll235
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll237
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_GETEVENTSTATE$LONGWORD$$BYTE
# [3065:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll238
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	3064
	.byte	1
# [3066:8]
	.byte	2
	.uleb128	.Ll239-.Ll238
	.byte	5
	.uleb128	8
	.byte	13
# [3067:1]
	.byte	2
	.uleb128	.Ll240-.Ll239
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll241
	.byte	0
	.byte	1
	.byte	1
# ###################
.Ledebug_line0:
# End asmlist al_dwarf_line
# Begin asmlist al_end

.section .text.z_DEBUGEND_$SDL2,"x"
.globl	DEBUGEND_$SDL2
DEBUGEND_$SDL2:
# End asmlist al_end

