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
	pushq	%rbp
.seh_pushreg %rbp
.Lc3:
.Lc4:
	movq	%rsp,%rbp
.Lc5:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var S located at rbp-8, size=OS_64
# Var $result located at rbp-16, size=OS_64
	movq	%rcx,-8(%rbp)
.Ll2:
# [2689] exit(SDL_iconv_string('', 'UTF-8', S, SDL_strlen(S) + 1));
	movq	-8(%rbp),%rax
	movq	%rax,%rcx
	call	_$dll$sdl2$SDL_strlen
	leaq	1(%rax),%r9
	movq	-8(%rbp),%r8
	leaq	_$SDL2$_Ld1(%rip),%rdx
	leaq	_$SDL2$_Ld2(%rip),%rcx
	call	_$dll$sdl2$SDL_iconv_string
	movq	%rax,-16(%rbp)
.Ll3:
# [2690] end;
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc2:
.Lt1:
.Ll4:

.section .text.n_sdl2_$$_sdl_iconv_utf8_ucs2$pchar$$pchar,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_ICONV_UTF8_UCS2$PCHAR$$PCHAR
SDL2_$$_SDL_ICONV_UTF8_UCS2$PCHAR$$PCHAR:
.Lc6:
.seh_proc SDL2_$$_SDL_ICONV_UTF8_UCS2$PCHAR$$PCHAR
.Ll5:
# [2693] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var S located at rbp-8, size=OS_64
# Var $result located at rbp-16, size=OS_64
	movq	%rcx,-8(%rbp)
.Ll6:
# [2694] exit(SDL_iconv_string('UCS-2-INTERNAL', 'UTF-8', S, SDL_strlen(S) + 1));
	movq	-8(%rbp),%rax
	movq	%rax,%rcx
	call	_$dll$sdl2$SDL_strlen
	leaq	1(%rax),%r9
	movq	-8(%rbp),%r8
	leaq	_$SDL2$_Ld1(%rip),%rdx
	leaq	_$SDL2$_Ld3(%rip),%rcx
	call	_$dll$sdl2$SDL_iconv_string
	movq	%rax,-16(%rbp)
.Ll7:
# [2695] end;
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc7:
.Lt2:
.Ll8:

.section .text.n_sdl2_$$_sdl_iconv_utf8_ucs4$pchar$$pchar,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_ICONV_UTF8_UCS4$PCHAR$$PCHAR
SDL2_$$_SDL_ICONV_UTF8_UCS4$PCHAR$$PCHAR:
.Lc11:
.seh_proc SDL2_$$_SDL_ICONV_UTF8_UCS4$PCHAR$$PCHAR
.Ll9:
# [2698] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc13:
.Lc14:
	movq	%rsp,%rbp
.Lc15:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var S located at rbp-8, size=OS_64
# Var $result located at rbp-16, size=OS_64
	movq	%rcx,-8(%rbp)
.Ll10:
# [2699] exit(SDL_iconv_string('UCS-4-INTERNAL', 'UTF-8', S, SDL_strlen(S) + 1));
	movq	-8(%rbp),%rax
	movq	%rax,%rcx
	call	_$dll$sdl2$SDL_strlen
	leaq	1(%rax),%r9
	movq	-8(%rbp),%r8
	leaq	_$SDL2$_Ld1(%rip),%rdx
	leaq	_$SDL2$_Ld4(%rip),%rcx
	call	_$dll$sdl2$SDL_iconv_string
	movq	%rax,-16(%rbp)
.Ll11:
# [2700] end;
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc12:
.Lt3:
.Ll12:

.section .text.n_sdl2_$$_sdl_mostsignificantbitindex32$longword$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_MOSTSIGNIFICANTBITINDEX32$LONGWORD$$LONGINT
SDL2_$$_SDL_MOSTSIGNIFICANTBITINDEX32$LONGWORD$$LONGINT:
.Lc16:
.seh_proc SDL2_$$_SDL_MOSTSIGNIFICANTBITINDEX32$LONGWORD$$LONGINT
.Ll13:
# [2706] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc18:
.Lc19:
	movq	%rsp,%rbp
.Lc20:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var x located at rbp-8, size=OS_32
# Var $result located at rbp-16, size=OS_S32
	movl	%ecx,-8(%rbp)
.Ll14:
# [2707] if x = 0 then
	cmpl	$0,-8(%rbp)
	jne	.Lj48
.Ll15:
# [2709] else
	movl	$-1,-16(%rbp)
.Ll16:
# [2708] exit(-1)
	jmp	.Lj45
.Lj48:
.Ll17:
# [2710] exit(BsrDword(x));
	movl	-8(%rbp),%eax
	bsrl	%eax,%eax
	jne	.Lj54
	movl	$255,%eax
.Lj54:
	movl	%eax,-16(%rbp)
.Lj45:
.Ll18:
# [2711] end;
	movl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc17:
.Lt4:
.Ll19:

.section .text.n_sdl2_$$_sdl_version$psdl_version,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_VERSION$PSDL_VERSION
SDL2_$$_SDL_VERSION$PSDL_VERSION:
.Lc21:
.seh_proc SDL2_$$_SDL_VERSION$PSDL_VERSION
.Ll20:
# [2717] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc23:
.Lc24:
	movq	%rsp,%rbp
.Lc25:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var x located at rbp-8, size=OS_64
	movq	%rcx,-8(%rbp)
.Ll21:
# [2718] x^.major := SDL_MAJOR_VERSION;
	movq	-8(%rbp),%rax
	movb	$2,(%rax)
.Ll22:
# [2719] x^.minor := SDL_MINOR_VERSION;
	movq	-8(%rbp),%rax
	movb	$0,1(%rax)
.Ll23:
# [2720] x^.patch := SDL_PATCHLEVEL;
	movq	-8(%rbp),%rax
	movb	$3,2(%rax)
.Ll24:
# [2721] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc22:
.Lt5:
.Ll25:

.section .text.n_sdl2_$$_sdl_versionnum$longint$longint$longint$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_VERSIONNUM$LONGINT$LONGINT$LONGINT$$LONGINT
SDL2_$$_SDL_VERSIONNUM$LONGINT$LONGINT$LONGINT$$LONGINT:
.Lc26:
.seh_proc SDL2_$$_SDL_VERSIONNUM$LONGINT$LONGINT$LONGINT$$LONGINT
.Ll26:
# [2724] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc28:
.Lc29:
	movq	%rsp,%rbp
.Lc30:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# Var X located at rbp-8, size=OS_S32
# Var Y located at rbp-16, size=OS_S32
# Var Z located at rbp-24, size=OS_S32
# Var $result located at rbp-32, size=OS_S32
	movl	%ecx,-8(%rbp)
	movl	%edx,-16(%rbp)
	movl	%r8d,-24(%rbp)
.Ll27:
# [2725] exit(X * 1000 + Y * 100 + Z);
	movl	-8(%rbp),%eax
	imull	$1000,%eax,%edx
	movl	-16(%rbp),%eax
	imull	$100,%eax,%eax
	leal	(%edx,%eax),%edx
	movl	-24(%rbp),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,-32(%rbp)
.Ll28:
# [2726] end;
	movl	-32(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc27:
.Lt6:
.Ll29:

.section .text.n_sdl2_$$_sdl_compiledversion$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_COMPILEDVERSION$$LONGINT
SDL2_$$_SDL_COMPILEDVERSION$$LONGINT:
.Lc31:
.seh_proc SDL2_$$_SDL_COMPILEDVERSION$$LONGINT
.Ll30:
# [2729] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc33:
.Lc34:
	movq	%rsp,%rbp
.Lc35:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var $result located at rbp-8, size=OS_S32
.Ll31:
# [2730] exit(SDL_VERSIONNUM(SDL_MAJOR_VERSION, SDL_MINOR_VERSION, SDL_PATCHLEVEL));
	movl	$2003,%eax
	movl	%eax,-8(%rbp)
.Ll32:
# [2731] end;
	movl	-8(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc32:
.Lt7:
.Ll33:

.section .text.n_sdl2_$$_sdl_version_atleast$longint$longint$longint$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_VERSION_ATLEAST$LONGINT$LONGINT$LONGINT$$BOOLEAN
SDL2_$$_SDL_VERSION_ATLEAST$LONGINT$LONGINT$LONGINT$$BOOLEAN:
.Lc36:
.seh_proc SDL2_$$_SDL_VERSION_ATLEAST$LONGINT$LONGINT$LONGINT$$BOOLEAN
.Ll34:
# [2734] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc38:
.Lc39:
	movq	%rsp,%rbp
.Lc40:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# Var X located at rbp-8, size=OS_S32
# Var Y located at rbp-16, size=OS_S32
# Var Z located at rbp-24, size=OS_S32
# Var $result located at rbp-32, size=OS_8
	movl	%ecx,-8(%rbp)
	movl	%edx,-16(%rbp)
	movl	%r8d,-24(%rbp)
.Ll35:
# [2735] exit(SDL_COMPILEDVERSION >= SDL_VERSIONNUM(X, Y, Z));
	movl	-8(%rbp),%eax
	imull	$1000,%eax,%edx
	movl	-16(%rbp),%eax
	imull	$100,%eax,%eax
	leal	(%edx,%eax),%edx
	movl	-24(%rbp),%eax
	leal	(%edx,%eax),%eax
	movl	$2003,%edx
	cmpl	%edx,%eax
	setleb	-32(%rbp)
.Ll36:
# [2736] end;
	movzbl	-32(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc37:
.Lt8:
.Ll37:

.section .text.n_sdl2_$$_sdl_outofmemory$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_OUTOFMEMORY$$LONGINT
SDL2_$$_SDL_OUTOFMEMORY$$LONGINT:
.Lc41:
.seh_proc SDL2_$$_SDL_OUTOFMEMORY$$LONGINT
.Ll38:
# [2742] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc43:
.Lc44:
	movq	%rsp,%rbp
.Lc45:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var $result located at rbp-8, size=OS_S32
.Ll39:
# [2743] exit(SDL_Error(SDL_ENOMEM));
	movl	$0,%eax
	movl	%eax,%ecx
	call	_$dll$sdl2$SDL_Error
	movl	%eax,-8(%rbp)
.Ll40:
# [2744] end;
	movl	-8(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc42:
.Lt9:
.Ll41:

.section .text.n_sdl2_$$_sdl_unsupported$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_UNSUPPORTED$$LONGINT
SDL2_$$_SDL_UNSUPPORTED$$LONGINT:
.Lc46:
.seh_proc SDL2_$$_SDL_UNSUPPORTED$$LONGINT
.Ll42:
# [2747] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc48:
.Lc49:
	movq	%rsp,%rbp
.Lc50:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var $result located at rbp-8, size=OS_S32
.Ll43:
# [2748] exit(SDL_Error(SDL_UNSUPPORTED_));
	movl	$4,%eax
	movl	%eax,%ecx
	call	_$dll$sdl2$SDL_Error
	movl	%eax,-8(%rbp)
.Ll44:
# [2749] end;
	movl	-8(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc47:
.Lt10:
.Ll45:

.section .text.n_sdl2_$$_sdl_invalidparamerror$pchar$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_INVALIDPARAMERROR$PCHAR$$LONGINT
SDL2_$$_SDL_INVALIDPARAMERROR$PCHAR$$LONGINT:
.Lc51:
.seh_proc SDL2_$$_SDL_INVALIDPARAMERROR$PCHAR$$LONGINT
.Ll46:
# [2752] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc53:
.Lc54:
	movq	%rsp,%rbp
.Lc55:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var param located at rbp-8, size=OS_64
# Var $result located at rbp-16, size=OS_S32
	movq	%rcx,-8(%rbp)
.Ll47:
# [2753] exit(SDL_SetError('Parameter ''%s'' is invalid', (param)));
	movq	-8(%rbp),%rax
	leaq	_$SDL2$_Ld5(%rip),%rcx
	movq	%rax,%rdx
	call	_$dll$sdl2$SDL_SetError
	movl	%eax,-16(%rbp)
.Ll48:
# [2754] end;
	movl	-16(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc52:
.Lt11:
.Ll49:

.section .text.n_sdl2_$$_sdl_ticks_passed$longword$longword$$longbool,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_TICKS_PASSED$LONGWORD$LONGWORD$$LONGBOOL
SDL2_$$_SDL_TICKS_PASSED$LONGWORD$LONGWORD$$LONGBOOL:
.Lc56:
.seh_proc SDL2_$$_SDL_TICKS_PASSED$LONGWORD$LONGWORD$$LONGBOOL
.Ll50:
# [2760] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc58:
.Lc59:
	movq	%rsp,%rbp
.Lc60:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# Var a located at rbp-8, size=OS_32
# Var b located at rbp-16, size=OS_32
# Var $result located at rbp-24, size=OS_S32
	movl	%ecx,-8(%rbp)
	movl	%edx,-16(%rbp)
.Ll51:
# [2761] exit((b - a) <= 0);
	movl	-16(%rbp),%eax
	movl	-8(%rbp),%edx
	subq	%rdx,%rax
	cmpq	$0,%rax
	setleb	%al
# PeepHole Optimization,var9
	andl	$255,%eax
	negl	%eax
	movl	%eax,-24(%rbp)
.Ll52:
# [2762] end;
	movl	-24(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc57:
.Lt12:
.Ll53:

.section .text.n_sdl2_$$_sdl_mutexp$pointer$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_MUTEXP$POINTER$$LONGINT
SDL2_$$_SDL_MUTEXP$POINTER$$LONGINT:
.Lc61:
.seh_proc SDL2_$$_SDL_MUTEXP$POINTER$$LONGINT
.Ll54:
# [2768] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc63:
.Lc64:
	movq	%rsp,%rbp
.Lc65:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var mutex located at rbp-8, size=OS_64
# Var $result located at rbp-16, size=OS_S32
	movq	%rcx,-8(%rbp)
.Ll55:
# [2769] exit(SDL_LockMutex(mutex));
	movq	-8(%rbp),%rax
	movq	%rax,%rcx
	call	_$dll$sdl2$SDL_LockMutex
	movl	%eax,-16(%rbp)
.Ll56:
# [2770] end;
	movl	-16(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc62:
.Lt13:
.Ll57:

.section .text.n_sdl2_$$_sdl_mutexv$pointer$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_MUTEXV$POINTER$$LONGINT
SDL2_$$_SDL_MUTEXV$POINTER$$LONGINT:
.Lc66:
.seh_proc SDL2_$$_SDL_MUTEXV$POINTER$$LONGINT
.Ll58:
# [2773] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc68:
.Lc69:
	movq	%rsp,%rbp
.Lc70:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var mutex located at rbp-8, size=OS_64
# Var $result located at rbp-16, size=OS_S32
	movq	%rcx,-8(%rbp)
.Ll59:
# [2774] exit(SDL_UnlockMutex(mutex));
	movq	-8(%rbp),%rax
	movq	%rax,%rcx
	call	_$dll$sdl2$SDL_UnlockMutex
	movl	%eax,-16(%rbp)
.Ll60:
# [2775] end;
	movl	-16(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc67:
.Lt14:
.Ll61:

.section .text.n_sdl2_$$_sdl_createthread$tsdl_threadfunction$pchar$pointer$$pointer,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_CREATETHREAD$TSDL_THREADFUNCTION$PCHAR$POINTER$$POINTER
SDL2_$$_SDL_CREATETHREAD$TSDL_THREADFUNCTION$PCHAR$POINTER$$POINTER:
.Lc71:
.seh_proc SDL2_$$_SDL_CREATETHREAD$TSDL_THREADFUNCTION$PCHAR$POINTER$$POINTER
.Ll62:
# [2782] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc73:
.Lc74:
	movq	%rsp,%rbp
.Lc75:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
# Var fn located at rbp-8, size=OS_64
# Var name located at rbp-16, size=OS_64
# Var data located at rbp-24, size=OS_64
# Var $result located at rbp-32, size=OS_64
	movq	%rcx,-8(%rbp)
	movq	%rdx,-16(%rbp)
	movq	%r8,-24(%rbp)
.Ll63:
# [2783] exit(SDL_CreateThread(fn, name, data, NIL, NIL));
	movq	$0,32(%rsp)
	movq	-24(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	-8(%rbp),%rcx
	movq	$0,%r9
	movq	%rax,%r8
	call	_$dll$sdl2$SDL_CreateThread
	movq	%rax,-32(%rbp)
.Ll64:
# [2784] end;
	movq	-32(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc72:
.Lt15:
.Ll65:

.section .text.n_sdl2_$$_sdl_swap16$word$$word,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAP16$WORD$$WORD
SDL2_$$_SDL_SWAP16$WORD$$WORD:
.Lc76:
.seh_proc SDL2_$$_SDL_SWAP16$WORD$$WORD
.Ll66:
# [2791] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc78:
.Lc79:
	movq	%rsp,%rbp
.Lc80:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var x located at rbp-8, size=OS_16
# Var $result located at rbp-16, size=OS_16
	movw	%cx,-8(%rbp)
.Ll67:
# [2792] exit(SwapEndian(x));
	movzwl	-8(%rbp),%eax
	shrl	$8,%eax
	movzwl	-8(%rbp),%edx
	shll	$8,%edx
	orl	%eax,%edx
	movw	%dx,-16(%rbp)
.Ll68:
# [2793] end;
	movzwl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc77:
.Lt16:
.Ll69:

.section .text.n_sdl2_$$_sdl_swap32$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAP32$LONGWORD$$LONGWORD
SDL2_$$_SDL_SWAP32$LONGWORD$$LONGWORD:
.Lc81:
.seh_proc SDL2_$$_SDL_SWAP32$LONGWORD$$LONGWORD
.Ll70:
# [2796] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc83:
.Lc84:
	movq	%rsp,%rbp
.Lc85:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var x located at rbp-8, size=OS_32
# Var $result located at rbp-16, size=OS_32
	movl	%ecx,-8(%rbp)
.Ll71:
# [2797] exit(SwapEndian(x));
	movl	-8(%rbp),%eax
	movl	%eax,%ecx
	call	SYSTEM_$$_SWAPENDIAN$LONGWORD$$LONGWORD
	movl	%eax,-16(%rbp)
.Ll72:
# [2798] end;
	movl	-16(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc82:
.Lt17:
.Ll73:

.section .text.n_sdl2_$$_sdl_swap64$qword$$qword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAP64$QWORD$$QWORD
SDL2_$$_SDL_SWAP64$QWORD$$QWORD:
.Lc86:
.seh_proc SDL2_$$_SDL_SWAP64$QWORD$$QWORD
.Ll74:
# [2801] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc88:
.Lc89:
	movq	%rsp,%rbp
.Lc90:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var x located at rbp-8, size=OS_64
# Var $result located at rbp-16, size=OS_64
	movq	%rcx,-8(%rbp)
.Ll75:
# [2802] exit(SwapEndian(x));
	movq	-8(%rbp),%rax
	movq	%rax,%rcx
	call	SYSTEM_$$_SWAPENDIAN$QWORD$$QWORD
	movq	%rax,-16(%rbp)
.Ll76:
# [2803] end;
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc87:
.Lt18:
.Ll77:

.section .text.n_sdl2_$$_sdl_swapfloat$single$$single,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAPFLOAT$SINGLE$$SINGLE
SDL2_$$_SDL_SWAPFLOAT$SINGLE$$SINGLE:
.Lc91:
# Temps allocated between rbp-40 and rbp-24
.seh_proc SDL2_$$_SDL_SWAPFLOAT$SINGLE$$SINGLE
.Ll78:
# [2809] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc93:
.Lc94:
	movq	%rsp,%rbp
.Lc95:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
# Var x located at rbp-8, size=OS_F32
# Var $result located at rbp-16, size=OS_F32
# Var f located at rbp-24, size=OS_F32
	movss	%xmm0,-8(%rbp)
.Ll79:
# [2810] f := x;
	movl	-8(%rbp),%eax
	movl	%eax,-24(%rbp)
.Ll80:
# [2811] ui32 := SwapEndian(ui32);
	movl	-24(%rbp),%ecx
	call	SYSTEM_$$_SWAPENDIAN$LONGWORD$$LONGWORD
	movl	%eax,-24(%rbp)
.Ll81:
# [2812] exit(f);
	movl	-24(%rbp),%eax
	movl	%eax,-16(%rbp)
.Ll82:
# [2813] end;
	movss	-16(%rbp),%xmm0
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc92:
.Lt19:
.Ll83:

.section .text.n_sdl2_$$_sdl_swaple16$word$$word,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAPLE16$WORD$$WORD
SDL2_$$_SDL_SWAPLE16$WORD$$WORD:
.Lc96:
.seh_proc SDL2_$$_SDL_SWAPLE16$WORD$$WORD
.Ll84:
# [2816] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc98:
.Lc99:
	movq	%rsp,%rbp
.Lc100:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var x located at rbp-8, size=OS_16
# Var $result located at rbp-16, size=OS_16
	movw	%cx,-8(%rbp)
.Ll85:
# [2817] exit(LEtoN(x));
	movw	-8(%rbp),%ax
	movw	%ax,-16(%rbp)
.Ll86:
# [2818] end;
	movzwl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc97:
.Lt20:
.Ll87:

.section .text.n_sdl2_$$_sdl_swaple32$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAPLE32$LONGWORD$$LONGWORD
SDL2_$$_SDL_SWAPLE32$LONGWORD$$LONGWORD:
.Lc101:
.seh_proc SDL2_$$_SDL_SWAPLE32$LONGWORD$$LONGWORD
.Ll88:
# [2821] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc103:
.Lc104:
	movq	%rsp,%rbp
.Lc105:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var x located at rbp-8, size=OS_32
# Var $result located at rbp-16, size=OS_32
	movl	%ecx,-8(%rbp)
.Ll89:
# [2822] exit(LEtoN(x));
	movl	-8(%rbp),%eax
	movl	%eax,-16(%rbp)
.Ll90:
# [2823] end;
	movl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc102:
.Lt21:
.Ll91:

.section .text.n_sdl2_$$_sdl_swaple64$qword$$qword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAPLE64$QWORD$$QWORD
SDL2_$$_SDL_SWAPLE64$QWORD$$QWORD:
.Lc106:
.seh_proc SDL2_$$_SDL_SWAPLE64$QWORD$$QWORD
.Ll92:
# [2826] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc108:
.Lc109:
	movq	%rsp,%rbp
.Lc110:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var x located at rbp-8, size=OS_64
# Var $result located at rbp-16, size=OS_64
	movq	%rcx,-8(%rbp)
.Ll93:
# [2827] exit(LEtoN(x));
	movq	-8(%rbp),%rax
	movq	%rax,-16(%rbp)
.Ll94:
# [2828] end;
	movq	-16(%rbp),%rax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc107:
.Lt22:
.Ll95:

.section .text.n_sdl2_$$_sdl_swapfloatle$single$$single,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAPFLOATLE$SINGLE$$SINGLE
SDL2_$$_SDL_SWAPFLOATLE$SINGLE$$SINGLE:
.Lc111:
# Temps allocated between rbp-32 and rbp-16
.seh_proc SDL2_$$_SDL_SWAPFLOATLE$SINGLE$$SINGLE
.Ll96:
# [2831] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc113:
.Lc114:
	movq	%rsp,%rbp
.Lc115:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# Var x located at rbp-8, size=OS_F32
# Var $result located at rbp-16, size=OS_F32
	movss	%xmm0,-8(%rbp)
.Ll97:
# [2833] exit(x);
	movl	-8(%rbp),%eax
	movl	%eax,-16(%rbp)
.Ll98:
# [2837] end;
	movss	-16(%rbp),%xmm0
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc112:
.Lt23:
.Ll99:

.section .text.n_sdl2_$$_sdl_swapbe16$word$$word,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAPBE16$WORD$$WORD
SDL2_$$_SDL_SWAPBE16$WORD$$WORD:
.Lc116:
.seh_proc SDL2_$$_SDL_SWAPBE16$WORD$$WORD
.Ll100:
# [2840] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc118:
.Lc119:
	movq	%rsp,%rbp
.Lc120:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var x located at rbp-8, size=OS_16
# Var $result located at rbp-16, size=OS_16
	movw	%cx,-8(%rbp)
.Ll101:
# [2841] exit(BEtoN(x));
	movzwl	-8(%rbp),%eax
	shrl	$8,%eax
	movzwl	-8(%rbp),%edx
	shll	$8,%edx
	orl	%eax,%edx
	movw	%dx,-16(%rbp)
.Ll102:
# [2842] end;
	movzwl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc117:
.Lt24:
.Ll103:

.section .text.n_sdl2_$$_sdl_swapbe32$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAPBE32$LONGWORD$$LONGWORD
SDL2_$$_SDL_SWAPBE32$LONGWORD$$LONGWORD:
.Lc121:
.seh_proc SDL2_$$_SDL_SWAPBE32$LONGWORD$$LONGWORD
.Ll104:
# [2845] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc123:
.Lc124:
	movq	%rsp,%rbp
.Lc125:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var x located at rbp-8, size=OS_32
# Var $result located at rbp-16, size=OS_32
	movl	%ecx,-8(%rbp)
.Ll105:
# [2846] exit(BEtoN(x));
	movl	-8(%rbp),%ecx
	call	SYSTEM_$$_SWAPENDIAN$LONGWORD$$LONGWORD
	movl	%eax,-16(%rbp)
.Ll106:
# [2847] end;
	movl	-16(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc122:
.Lt25:
.Ll107:

.section .text.n_sdl2_$$_sdl_swapbe64$qword$$qword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAPBE64$QWORD$$QWORD
SDL2_$$_SDL_SWAPBE64$QWORD$$QWORD:
.Lc126:
.seh_proc SDL2_$$_SDL_SWAPBE64$QWORD$$QWORD
.Ll108:
# [2850] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc128:
.Lc129:
	movq	%rsp,%rbp
.Lc130:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var x located at rbp-8, size=OS_64
# Var $result located at rbp-16, size=OS_64
	movq	%rcx,-8(%rbp)
.Ll109:
# [2851] exit(BEtoN(x));
	movq	-8(%rbp),%rcx
	call	SYSTEM_$$_SWAPENDIAN$QWORD$$QWORD
	movq	%rax,-16(%rbp)
.Ll110:
# [2852] end;
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc127:
.Lt26:
.Ll111:

.section .text.n_sdl2_$$_sdl_swapfloatbe$single$$single,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SWAPFLOATBE$SINGLE$$SINGLE
SDL2_$$_SDL_SWAPFLOATBE$SINGLE$$SINGLE:
.Lc131:
# Temps allocated between rbp-40 and rbp-16
.seh_proc SDL2_$$_SDL_SWAPFLOATBE$SINGLE$$SINGLE
.Ll112:
# [2855] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc133:
.Lc134:
	movq	%rsp,%rbp
.Lc135:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
# Var x located at rbp-8, size=OS_F32
# Var $result located at rbp-16, size=OS_F32
	movss	%xmm0,-8(%rbp)
.Ll113:
# [2859] exit(SDL_SwapFloat(x));
	movl	-8(%rbp),%eax
	movl	%eax,-24(%rbp)
	movl	-24(%rbp),%ecx
	call	SYSTEM_$$_SWAPENDIAN$LONGWORD$$LONGWORD
	movl	%eax,-24(%rbp)
	movss	-24(%rbp),%xmm0
	movss	%xmm0,-16(%rbp)
.Ll114:
# [2861] end;
	movss	-16(%rbp),%xmm0
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc132:
.Lt27:
.Ll115:

.section .text.n_sdl2_$$_sdl_rwsize$psdl_rwops$$int64,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_RWSIZE$PSDL_RWOPS$$INT64
SDL2_$$_SDL_RWSIZE$PSDL_RWOPS$$INT64:
.Lc136:
.seh_proc SDL2_$$_SDL_RWSIZE$PSDL_RWOPS$$INT64
.Ll116:
# [2867] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc138:
.Lc139:
	movq	%rsp,%rbp
.Lc140:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var ctx located at rbp-8, size=OS_64
# Var $result located at rbp-16, size=OS_S64
	movq	%rcx,-8(%rbp)
.Ll117:
# [2868] exit(ctx^.size(ctx));
	movq	-8(%rbp),%rax
	movq	-8(%rbp),%rdx
	movq	%rax,%rcx
	call	*(%rdx)
	movq	%rax,-16(%rbp)
.Ll118:
# [2869] end;
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc137:
.Lt28:
.Ll119:

.section .text.n_sdl2_$$_sdl_rwseek$psdl_rwops$int64$longint$$int64,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_RWSEEK$PSDL_RWOPS$INT64$LONGINT$$INT64
SDL2_$$_SDL_RWSEEK$PSDL_RWOPS$INT64$LONGINT$$INT64:
.Lc141:
.seh_proc SDL2_$$_SDL_RWSEEK$PSDL_RWOPS$INT64$LONGINT$$INT64
.Ll120:
# [2873] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc143:
.Lc144:
	movq	%rsp,%rbp
.Lc145:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var ctx located at rbp-8, size=OS_64
# Var offset located at rbp-16, size=OS_S64
# Var whence located at rbp-24, size=OS_S32
# Var $result located at rbp-32, size=OS_S64
	movq	%rcx,-8(%rbp)
	movq	%rdx,-16(%rbp)
	movl	%r8d,-24(%rbp)
.Ll121:
# [2874] exit(ctx^.seek(ctx, offset, whence));
	movl	-24(%rbp),%eax
	movq	-16(%rbp),%rdx
	movq	-8(%rbp),%rcx
	movq	-8(%rbp),%r9
	movl	%eax,%r8d
	call	*8(%r9)
	movq	%rax,-32(%rbp)
.Ll122:
# [2875] end;
	movq	-32(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc142:
.Lt29:
.Ll123:

.section .text.n_sdl2_$$_sdl_rwtell$psdl_rwops$$int64,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_RWTELL$PSDL_RWOPS$$INT64
SDL2_$$_SDL_RWTELL$PSDL_RWOPS$$INT64:
.Lc146:
.seh_proc SDL2_$$_SDL_RWTELL$PSDL_RWOPS$$INT64
.Ll124:
# [2878] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc148:
.Lc149:
	movq	%rsp,%rbp
.Lc150:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var ctx located at rbp-8, size=OS_64
# Var $result located at rbp-16, size=OS_S64
	movq	%rcx,-8(%rbp)
.Ll125:
# [2879] exit(ctx^.seek(ctx, 0, RW_SEEK_CUR));
	movq	-8(%rbp),%rax
	movl	$1,%r8d
	movq	$0,%rdx
	movq	-8(%rbp),%r9
	movq	%rax,%rcx
	call	*8(%r9)
	movq	%rax,-16(%rbp)
.Ll126:
# [2880] end;
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc147:
.Lt30:
.Ll127:

.section .text.n_sdl2_$$_sdl_rwread$psdl_rwops$pointer$longword$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_RWREAD$PSDL_RWOPS$POINTER$LONGWORD$LONGWORD$$LONGWORD
SDL2_$$_SDL_RWREAD$PSDL_RWOPS$POINTER$LONGWORD$LONGWORD$$LONGWORD:
.Lc151:
.seh_proc SDL2_$$_SDL_RWREAD$PSDL_RWOPS$POINTER$LONGWORD$LONGWORD$$LONGWORD
.Ll128:
# [2883] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc153:
.Lc154:
	movq	%rsp,%rbp
.Lc155:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
# Var ctx located at rbp-8, size=OS_64
# Var ptr located at rbp-16, size=OS_64
# Var size located at rbp-24, size=OS_32
# Var n located at rbp-32, size=OS_32
# Var $result located at rbp-40, size=OS_32
	movq	%rcx,-8(%rbp)
	movq	%rdx,-16(%rbp)
	movl	%r8d,-24(%rbp)
	movl	%r9d,-32(%rbp)
.Ll129:
# [2884] exit(ctx^.read(ctx, ptr, size, n));
	movl	-32(%rbp),%eax
	movq	%rax,%r9
	movl	-24(%rbp),%r8d
	movq	-16(%rbp),%rdx
	movq	-8(%rbp),%rcx
	movq	-8(%rbp),%rax
	call	*16(%rax)
	movl	%eax,-40(%rbp)
.Ll130:
# [2885] end;
	movl	-40(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc152:
.Lt31:
.Ll131:

.section .text.n_sdl2_$$_sdl_rwwrite$psdl_rwops$pointer$longword$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_RWWRITE$PSDL_RWOPS$POINTER$LONGWORD$LONGWORD$$LONGWORD
SDL2_$$_SDL_RWWRITE$PSDL_RWOPS$POINTER$LONGWORD$LONGWORD$$LONGWORD:
.Lc156:
.seh_proc SDL2_$$_SDL_RWWRITE$PSDL_RWOPS$POINTER$LONGWORD$LONGWORD$$LONGWORD
.Ll132:
# [2888] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc158:
.Lc159:
	movq	%rsp,%rbp
.Lc160:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
# Var ctx located at rbp-8, size=OS_64
# Var ptr located at rbp-16, size=OS_64
# Var size located at rbp-24, size=OS_32
# Var n located at rbp-32, size=OS_32
# Var $result located at rbp-40, size=OS_32
	movq	%rcx,-8(%rbp)
	movq	%rdx,-16(%rbp)
	movl	%r8d,-24(%rbp)
	movl	%r9d,-32(%rbp)
.Ll133:
# [2889] exit(ctx^.write(ctx, ptr, size, n));
	movl	-32(%rbp),%eax
	movq	%rax,%r9
	movl	-24(%rbp),%r8d
	movq	-16(%rbp),%rdx
	movq	-8(%rbp),%rcx
	movq	-8(%rbp),%rax
	call	*24(%rax)
	movl	%eax,-40(%rbp)
.Ll134:
# [2890] end;
	movl	-40(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc157:
.Lt32:
.Ll135:

.section .text.n_sdl2_$$_sdl_rwclose$psdl_rwops$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_RWCLOSE$PSDL_RWOPS$$LONGINT
SDL2_$$_SDL_RWCLOSE$PSDL_RWOPS$$LONGINT:
.Lc161:
.seh_proc SDL2_$$_SDL_RWCLOSE$PSDL_RWOPS$$LONGINT
.Ll136:
# [2893] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc163:
.Lc164:
	movq	%rsp,%rbp
.Lc165:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var ctx located at rbp-8, size=OS_64
# Var $result located at rbp-16, size=OS_S32
	movq	%rcx,-8(%rbp)
.Ll137:
# [2894] exit(ctx^.close(ctx));
	movq	-8(%rbp),%rax
	movq	-8(%rbp),%rdx
	movq	%rax,%rcx
	call	*32(%rdx)
	movl	%eax,-16(%rbp)
.Ll138:
# [2895] end;
	movl	-16(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc162:
.Lt33:
.Ll139:

.section .text.n_sdl2_$$_sdl_audio_bitsize$word$$word,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_AUDIO_BITSIZE$WORD$$WORD
SDL2_$$_SDL_AUDIO_BITSIZE$WORD$$WORD:
.Lc166:
.seh_proc SDL2_$$_SDL_AUDIO_BITSIZE$WORD$$WORD
.Ll140:
# [2901] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc168:
.Lc169:
	movq	%rsp,%rbp
.Lc170:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var x located at rbp-8, size=OS_16
# Var $result located at rbp-16, size=OS_16
	movw	%cx,-8(%rbp)
.Ll141:
# [2902] exit(x and SDL_AUDIO_MASK_BITSIZE);
	movw	-8(%rbp),%ax
	andw	$255,%ax
	movw	%ax,-16(%rbp)
.Ll142:
# [2903] end;
	movzwl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc167:
.Lt34:
.Ll143:

.section .text.n_sdl2_$$_sdl_audio_isfloat$word$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_AUDIO_ISFLOAT$WORD$$BOOLEAN
SDL2_$$_SDL_AUDIO_ISFLOAT$WORD$$BOOLEAN:
.Lc171:
.seh_proc SDL2_$$_SDL_AUDIO_ISFLOAT$WORD$$BOOLEAN
.Ll144:
# [2906] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc173:
.Lc174:
	movq	%rsp,%rbp
.Lc175:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var x located at rbp-8, size=OS_16
# Var $result located at rbp-16, size=OS_8
	movw	%cx,-8(%rbp)
# PeepHole Optimization,var14
.Ll145:
# [2907] exit((x and SDL_AUDIO_MASK_DATATYPE) > 0);
	movl	-8(%rbp),%eax
	andl	$256,%eax
	cmpl	$0,%eax
	setgb	-16(%rbp)
.Ll146:
# [2908] end;
	movzbl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc172:
.Lt35:
.Ll147:

.section .text.n_sdl2_$$_sdl_audio_isbigendian$word$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_AUDIO_ISBIGENDIAN$WORD$$BOOLEAN
SDL2_$$_SDL_AUDIO_ISBIGENDIAN$WORD$$BOOLEAN:
.Lc176:
.seh_proc SDL2_$$_SDL_AUDIO_ISBIGENDIAN$WORD$$BOOLEAN
.Ll148:
# [2911] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc178:
.Lc179:
	movq	%rsp,%rbp
.Lc180:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var x located at rbp-8, size=OS_16
# Var $result located at rbp-16, size=OS_8
	movw	%cx,-8(%rbp)
# PeepHole Optimization,var14
.Ll149:
# [2912] exit((x and SDL_AUDIO_MASK_ENDIAN) > 0);
	movl	-8(%rbp),%eax
	andl	$4096,%eax
	cmpl	$0,%eax
	setgb	-16(%rbp)
.Ll150:
# [2913] end;
	movzbl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc177:
.Lt36:
.Ll151:

.section .text.n_sdl2_$$_sdl_audio_issigned$word$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_AUDIO_ISSIGNED$WORD$$BOOLEAN
SDL2_$$_SDL_AUDIO_ISSIGNED$WORD$$BOOLEAN:
.Lc181:
.seh_proc SDL2_$$_SDL_AUDIO_ISSIGNED$WORD$$BOOLEAN
.Ll152:
# [2916] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc183:
.Lc184:
	movq	%rsp,%rbp
.Lc185:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var x located at rbp-8, size=OS_16
# Var $result located at rbp-16, size=OS_8
	movw	%cx,-8(%rbp)
.Ll153:
# [2917] exit((x and SDL_AUDIO_MASK_SIGNED) > 0);
	movw	-8(%rbp),%ax
	andw	$32768,%ax
	cmpw	$0,%ax
	setab	-16(%rbp)
.Ll154:
# [2918] end;
	movzbl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc182:
.Lt37:
.Ll155:

.section .text.n_sdl2_$$_sdl_audio_isint$word$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_AUDIO_ISINT$WORD$$BOOLEAN
SDL2_$$_SDL_AUDIO_ISINT$WORD$$BOOLEAN:
.Lc186:
.seh_proc SDL2_$$_SDL_AUDIO_ISINT$WORD$$BOOLEAN
.Ll156:
# [2921] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc188:
.Lc189:
	movq	%rsp,%rbp
.Lc190:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var x located at rbp-8, size=OS_16
# Var $result located at rbp-16, size=OS_8
	movw	%cx,-8(%rbp)
# PeepHole Optimization,var14
.Ll157:
# [2922] exit(not SDL_AUDIO_ISFLOAT(x));
	movl	-8(%rbp),%eax
	andl	$256,%eax
	cmpl	$0,%eax
	setgb	%al
	testb	%al,%al
	seteb	-16(%rbp)
.Ll158:
# [2923] end;
	movzbl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc187:
.Lt38:
.Ll159:

.section .text.n_sdl2_$$_sdl_audio_islittleendian$word$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_AUDIO_ISLITTLEENDIAN$WORD$$BOOLEAN
SDL2_$$_SDL_AUDIO_ISLITTLEENDIAN$WORD$$BOOLEAN:
.Lc191:
.seh_proc SDL2_$$_SDL_AUDIO_ISLITTLEENDIAN$WORD$$BOOLEAN
.Ll160:
# [2926] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc193:
.Lc194:
	movq	%rsp,%rbp
.Lc195:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var x located at rbp-8, size=OS_16
# Var $result located at rbp-16, size=OS_8
	movw	%cx,-8(%rbp)
# PeepHole Optimization,var14
.Ll161:
# [2927] exit(not SDL_AUDIO_ISBIGENDIAN(x));
	movl	-8(%rbp),%eax
	andl	$4096,%eax
	cmpl	$0,%eax
	setgb	%al
	testb	%al,%al
	seteb	-16(%rbp)
.Ll162:
# [2928] end;
	movzbl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc192:
.Lt39:
.Ll163:

.section .text.n_sdl2_$$_sdl_audio_isunsigned$word$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_AUDIO_ISUNSIGNED$WORD$$BOOLEAN
SDL2_$$_SDL_AUDIO_ISUNSIGNED$WORD$$BOOLEAN:
.Lc196:
.seh_proc SDL2_$$_SDL_AUDIO_ISUNSIGNED$WORD$$BOOLEAN
.Ll164:
# [2931] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc198:
.Lc199:
	movq	%rsp,%rbp
.Lc200:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var x located at rbp-8, size=OS_16
# Var $result located at rbp-16, size=OS_8
	movw	%cx,-8(%rbp)
.Ll165:
# [2932] exit(not SDL_AUDIO_ISSIGNED(x));
	movw	-8(%rbp),%ax
	andw	$32768,%ax
	cmpw	$0,%ax
	setab	%al
	testb	%al,%al
	seteb	-16(%rbp)
.Ll166:
# [2933] end;
	movzbl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc197:
.Lt40:
.Ll167:

.section .text.n_sdl2_$$_sdl_loadwav$pchar$psdl_audiospec$ppbyte$pdword$$psdl_audiospec,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_LOADWAV$PCHAR$PSDL_AUDIOSPEC$PPBYTE$PDWORD$$PSDL_AUDIOSPEC
SDL2_$$_SDL_LOADWAV$PCHAR$PSDL_AUDIOSPEC$PPBYTE$PDWORD$$PSDL_AUDIOSPEC:
.Lc201:
.seh_proc SDL2_$$_SDL_LOADWAV$PCHAR$PSDL_AUDIOSPEC$PPBYTE$PDWORD$$PSDL_AUDIOSPEC
.Ll168:
# [2937] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc203:
.Lc204:
	movq	%rsp,%rbp
.Lc205:
	leaq	-96(%rsp),%rsp
.seh_stackalloc 96
.seh_endprologue
# Var file_ located at rbp-8, size=OS_64
# Var spec located at rbp-16, size=OS_64
# Var audio_buf located at rbp-24, size=OS_64
# Var audio_len located at rbp-32, size=OS_64
# Var $result located at rbp-40, size=OS_64
	movq	%rcx,-8(%rbp)
	movq	%rdx,-16(%rbp)
	movq	%r8,-24(%rbp)
	movq	%r9,-32(%rbp)
.Ll169:
# [2938] exit(SDL_LoadWAV_RW(SDL_RWFromFile(file_, 'rb'), 1, spec, audio_buf, audio_len));
	movq	-32(%rbp),%rax
	movq	%rax,32(%rsp)
	leaq	_$SDL2$_Ld6(%rip),%rdx
	movq	-8(%rbp),%rcx
	call	_$dll$sdl2$SDL_RWFromFile
	movq	%rax,%rcx
	movq	-24(%rbp),%r9
	movq	-16(%rbp),%r8
	movl	$1,%edx
	call	_$dll$sdl2$SDL_LoadWAV_RW
	movq	%rax,-40(%rbp)
.Ll170:
# [2939] end;
	movq	-40(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc202:
.Lt41:
.Ll171:

.section .text.n_sdl2_$$_sdl_pixelflag$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_PIXELFLAG$LONGWORD$$LONGWORD
SDL2_$$_SDL_PIXELFLAG$LONGWORD$$LONGWORD:
.Lc206:
.seh_proc SDL2_$$_SDL_PIXELFLAG$LONGWORD$$LONGWORD
.Ll172:
# [2945] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc208:
.Lc209:
	movq	%rsp,%rbp
.Lc210:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var X located at rbp-8, size=OS_32
# Var $result located at rbp-16, size=OS_32
	movl	%ecx,-8(%rbp)
.Ll173:
# [2946] exit((X shr 28) and $0F);
	movl	-8(%rbp),%eax
	shrl	$28,%eax
	andl	$15,%eax
	movl	%eax,-16(%rbp)
.Ll174:
# [2947] end;
	movl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc207:
.Lt42:
.Ll175:

.section .text.n_sdl2_$$_sdl_pixeltype$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_PIXELTYPE$LONGWORD$$LONGWORD
SDL2_$$_SDL_PIXELTYPE$LONGWORD$$LONGWORD:
.Lc211:
.seh_proc SDL2_$$_SDL_PIXELTYPE$LONGWORD$$LONGWORD
.Ll176:
# [2950] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc213:
.Lc214:
	movq	%rsp,%rbp
.Lc215:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var X located at rbp-8, size=OS_32
# Var $result located at rbp-16, size=OS_32
	movl	%ecx,-8(%rbp)
.Ll177:
# [2951] exit((X shr 24) and $0F);
	movl	-8(%rbp),%eax
	shrl	$24,%eax
	andl	$15,%eax
	movl	%eax,-16(%rbp)
.Ll178:
# [2952] end;
	movl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc212:
.Lt43:
.Ll179:

.section .text.n_sdl2_$$_sdl_pixelorder$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_PIXELORDER$LONGWORD$$LONGWORD
SDL2_$$_SDL_PIXELORDER$LONGWORD$$LONGWORD:
.Lc216:
.seh_proc SDL2_$$_SDL_PIXELORDER$LONGWORD$$LONGWORD
.Ll180:
# [2955] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc218:
.Lc219:
	movq	%rsp,%rbp
.Lc220:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var X located at rbp-8, size=OS_32
# Var $result located at rbp-16, size=OS_32
	movl	%ecx,-8(%rbp)
.Ll181:
# [2956] exit((X shr 20) and $0F);
	movl	-8(%rbp),%eax
	shrl	$20,%eax
	andl	$15,%eax
	movl	%eax,-16(%rbp)
.Ll182:
# [2957] end;
	movl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc217:
.Lt44:
.Ll183:

.section .text.n_sdl2_$$_sdl_pixellayout$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_PIXELLAYOUT$LONGWORD$$LONGWORD
SDL2_$$_SDL_PIXELLAYOUT$LONGWORD$$LONGWORD:
.Lc221:
.seh_proc SDL2_$$_SDL_PIXELLAYOUT$LONGWORD$$LONGWORD
.Ll184:
# [2960] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc223:
.Lc224:
	movq	%rsp,%rbp
.Lc225:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var X located at rbp-8, size=OS_32
# Var $result located at rbp-16, size=OS_32
	movl	%ecx,-8(%rbp)
.Ll185:
# [2961] exit((X shr 16) and $0F);
	movl	-8(%rbp),%eax
	shrl	$16,%eax
	andl	$15,%eax
	movl	%eax,-16(%rbp)
.Ll186:
# [2962] end;
	movl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc222:
.Lt45:
.Ll187:

.section .text.n_sdl2_$$_sdl_bitsperpixel$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_BITSPERPIXEL$LONGWORD$$LONGWORD
SDL2_$$_SDL_BITSPERPIXEL$LONGWORD$$LONGWORD:
.Lc226:
.seh_proc SDL2_$$_SDL_BITSPERPIXEL$LONGWORD$$LONGWORD
.Ll188:
# [2965] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc228:
.Lc229:
	movq	%rsp,%rbp
.Lc230:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var X located at rbp-8, size=OS_32
# Var $result located at rbp-16, size=OS_32
	movl	%ecx,-8(%rbp)
.Ll189:
# [2966] exit((X shr 8) and $FF);
	movl	-8(%rbp),%eax
	shrl	$8,%eax
	andl	$255,%eax
	movl	%eax,-16(%rbp)
.Ll190:
# [2967] end;
	movl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc227:
.Lt46:
.Ll191:

.section .text.n_sdl2_$$_sdl_bytesperpixel$longword$$longword,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_BYTESPERPIXEL$LONGWORD$$LONGWORD
SDL2_$$_SDL_BYTESPERPIXEL$LONGWORD$$LONGWORD:
.Lc231:
.seh_proc SDL2_$$_SDL_BYTESPERPIXEL$LONGWORD$$LONGWORD
.Ll192:
# [2970] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc233:
.Lc234:
	movq	%rsp,%rbp
.Lc235:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var X located at rbp-8, size=OS_32
# Var $result located at rbp-16, size=OS_32
	movl	%ecx,-8(%rbp)
.Ll193:
# [2971] if SDL_ISPIXELFORMAT_FOURCC(X) then
	movl	-8(%rbp),%eax
	movl	%eax,%ecx
	call	SDL2_$$_SDL_ISPIXELFORMAT_FOURCC$LONGWORD$$BOOLEAN
	testb	%al,%al
	je	.Lj360
.Ll194:
# [2973] if (X = SDL_PIXELFORMAT_YUY2) or
	cmpl	$844715353,-8(%rbp)
	je	.Lj363
.Ll195:
# [2974] (X = SDL_PIXELFORMAT_UYVY) or
	cmpl	$1498831189,-8(%rbp)
	je	.Lj363
.Ll196:
# [2975] (X = SDL_PIXELFORMAT_YVYU) then
	cmpl	$1431918169,-8(%rbp)
	jne	.Lj364
.Lj363:
.Ll197:
# [2977] else
	movl	$2,-16(%rbp)
.Ll198:
# [2976] exit(2)
	jmp	.Lj357
.Lj364:
.Ll199:
# [2978] exit(1);
	movl	$1,-16(%rbp)
	jmp	.Lj357
.Lj360:
.Ll200:
# [2981] exit((X shr 0) and $FF);
	movl	-8(%rbp),%eax
	andl	$255,%eax
	movl	%eax,-16(%rbp)
.Lj357:
.Ll201:
# [2982] end;
	movl	-16(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc232:
.Lt47:
.Ll202:

.section .text.n_sdl2_$$_sdl_ispixelformat_indexed$longword$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_ISPIXELFORMAT_INDEXED$LONGWORD$$BOOLEAN
SDL2_$$_SDL_ISPIXELFORMAT_INDEXED$LONGWORD$$BOOLEAN:
.Lc236:
.seh_proc SDL2_$$_SDL_ISPIXELFORMAT_INDEXED$LONGWORD$$BOOLEAN
.Ll203:
# [2985] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc238:
.Lc239:
	movq	%rsp,%rbp
.Lc240:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var format located at rbp-8, size=OS_32
# Var $result located at rbp-16, size=OS_8
	movl	%ecx,-8(%rbp)
.Ll204:
# [2986] exit((not SDL_ISPIXELFORMAT_FOURCC(format)) and
	movl	-8(%rbp),%eax
	movl	%eax,%ecx
	call	SDL2_$$_SDL_ISPIXELFORMAT_FOURCC$LONGWORD$$BOOLEAN
	testb	%al,%al
	jne	.Lj378
.Ll205:
# [2987] ((SDL_PIXELTYPE(format) = SDL_PIXELTYPE_INDEX1) or
	movl	-8(%rbp),%eax
	shrl	$24,%eax
	andl	$15,%eax
	cmpl	$1,%eax
	je	.Lj377
.Ll206:
# [2988] (SDL_PIXELTYPE(format) = SDL_PIXELTYPE_INDEX4) or
	movl	-8(%rbp),%eax
	shrl	$24,%eax
	andl	$15,%eax
	cmpl	$2,%eax
	je	.Lj377
.Ll207:
# [2989] (SDL_PIXELTYPE(format) = SDL_PIXELTYPE_INDEX8)));
	movl	-8(%rbp),%eax
	shrl	$24,%eax
	andl	$15,%eax
	cmpl	$3,%eax
	jne	.Lj378
.Lj377:
	movb	$1,-16(%rbp)
	jmp	.Lj375
.Lj378:
	movb	$0,-16(%rbp)
.Lj375:
.Ll208:
# [2990] end;
	movzbl	-16(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc237:
.Lt48:
.Ll209:

.section .text.n_sdl2_$$_sdl_ispixelformat_alpha$longword$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_ISPIXELFORMAT_ALPHA$LONGWORD$$BOOLEAN
SDL2_$$_SDL_ISPIXELFORMAT_ALPHA$LONGWORD$$BOOLEAN:
.Lc241:
.seh_proc SDL2_$$_SDL_ISPIXELFORMAT_ALPHA$LONGWORD$$BOOLEAN
.Ll210:
# [2993] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc243:
.Lc244:
	movq	%rsp,%rbp
.Lc245:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var format located at rbp-8, size=OS_32
# Var $result located at rbp-16, size=OS_8
	movl	%ecx,-8(%rbp)
.Ll211:
# [2994] exit((not SDL_ISPIXELFORMAT_FOURCC(format)) and
	movl	-8(%rbp),%eax
	movl	%eax,%ecx
	call	SDL2_$$_SDL_ISPIXELFORMAT_FOURCC$LONGWORD$$BOOLEAN
	testb	%al,%al
	jne	.Lj397
.Ll212:
# [2995] ((SDL_PIXELORDER(format) = SDL_PACKEDORDER_ARGB) or
	movl	-8(%rbp),%eax
	shrl	$20,%eax
	andl	$15,%eax
	cmpl	$3,%eax
	je	.Lj396
.Ll213:
# [2996] (SDL_PIXELORDER(format) = SDL_PACKEDORDER_RGBA) or
	movl	-8(%rbp),%eax
	shrl	$20,%eax
	andl	$15,%eax
	cmpl	$4,%eax
	je	.Lj396
.Ll214:
# [2997] (SDL_PIXELORDER(format) = SDL_PACKEDORDER_ABGR) or
	movl	-8(%rbp),%eax
	shrl	$20,%eax
	andl	$15,%eax
	cmpl	$7,%eax
	je	.Lj396
.Ll215:
# [2998] (SDL_PIXELORDER(format) = SDL_PACKEDORDER_BGRA)));
	movl	-8(%rbp),%eax
	shrl	$20,%eax
	andl	$15,%eax
	cmpl	$8,%eax
	jne	.Lj397
.Lj396:
	movb	$1,-16(%rbp)
	jmp	.Lj394
.Lj397:
	movb	$0,-16(%rbp)
.Lj394:
.Ll216:
# [2999] end;
	movzbl	-16(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc242:
.Lt49:
.Ll217:

.section .text.n_sdl2_$$_sdl_ispixelformat_fourcc$longword$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_ISPIXELFORMAT_FOURCC$LONGWORD$$BOOLEAN
SDL2_$$_SDL_ISPIXELFORMAT_FOURCC$LONGWORD$$BOOLEAN:
.Lc246:
.seh_proc SDL2_$$_SDL_ISPIXELFORMAT_FOURCC$LONGWORD$$BOOLEAN
.Ll218:
# [3002] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc248:
.Lc249:
	movq	%rsp,%rbp
.Lc250:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var format located at rbp-8, size=OS_32
# Var $result located at rbp-16, size=OS_8
	movl	%ecx,-8(%rbp)
.Ll219:
# [3003] exit((format and SDL_PIXELFLAG(format)) <> 1);
	movl	-8(%rbp),%eax
	shrl	$28,%eax
	andl	$15,%eax
	movl	-8(%rbp),%edx
	andl	%eax,%edx
	cmpl	$1,%edx
	setneb	-16(%rbp)
.Ll220:
# [3004] end;
	movzbl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc247:
.Lt50:
.Ll221:

.section .text.n_sdl2_$$_sdl_rectempty$psdl_rect$$longbool,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_RECTEMPTY$PSDL_RECT$$LONGBOOL
SDL2_$$_SDL_RECTEMPTY$PSDL_RECT$$LONGBOOL:
.Lc251:
.seh_proc SDL2_$$_SDL_RECTEMPTY$PSDL_RECT$$LONGBOOL
.Ll222:
# [3010] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc253:
.Lc254:
	movq	%rsp,%rbp
.Lc255:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var x located at rbp-8, size=OS_64
# Var $result located at rbp-16, size=OS_S32
	movq	%rcx,-8(%rbp)
.Ll223:
# [3011] exit((x = NIL) or (x^.w <= 0) or (x^.h <= 0));
	cmpq	$0,-8(%rbp)
	je	.Lj428
	movq	-8(%rbp),%rax
	cmpl	$0,8(%rax)
	jle	.Lj428
	movq	-8(%rbp),%rax
	cmpl	$0,12(%rax)
	jnle	.Lj429
.Lj428:
	movl	$-1,%eax
	jmp	.Lj432
.Lj429:
	movl	$0,%eax
.Lj432:
	movl	%eax,-16(%rbp)
.Ll224:
# [3012] end;
	movl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc252:
.Lt51:
.Ll225:

.section .text.n_sdl2_$$_sdl_rectequals$psdl_rect$psdl_rect$$longbool,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_RECTEQUALS$PSDL_RECT$PSDL_RECT$$LONGBOOL
SDL2_$$_SDL_RECTEQUALS$PSDL_RECT$PSDL_RECT$$LONGBOOL:
.Lc256:
.seh_proc SDL2_$$_SDL_RECTEQUALS$PSDL_RECT$PSDL_RECT$$LONGBOOL
.Ll226:
# [3015] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc258:
.Lc259:
	movq	%rsp,%rbp
.Lc260:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# Var a located at rbp-8, size=OS_64
# Var b located at rbp-16, size=OS_64
# Var $result located at rbp-24, size=OS_S32
	movq	%rcx,-8(%rbp)
	movq	%rdx,-16(%rbp)
.Ll227:
# [3016] exit((a <> NIL) and (b <> NIL) and (a^.x = b^.x) and (a^.y = b^.y) and (a^.w = b^.w) and (a^.h = b^.h));
	cmpq	$0,-8(%rbp)
	je	.Lj438
	cmpq	$0,-16(%rbp)
	je	.Lj438
	movq	-8(%rbp),%rax
	movq	-16(%rbp),%rdx
	movl	(%rax),%eax
	cmpl	(%rdx),%eax
	jne	.Lj438
	movq	-8(%rbp),%rax
	movq	-16(%rbp),%rdx
	movl	4(%rax),%eax
	cmpl	4(%rdx),%eax
	jne	.Lj438
	movq	-8(%rbp),%rax
	movq	-16(%rbp),%rdx
	movl	8(%rax),%eax
	cmpl	8(%rdx),%eax
	jne	.Lj438
	movq	-8(%rbp),%rax
	movq	-16(%rbp),%rdx
	movl	12(%rax),%eax
	cmpl	12(%rdx),%eax
	jne	.Lj438
	movl	$-1,%eax
	jmp	.Lj444
.Lj438:
	movl	$0,%eax
.Lj444:
	movl	%eax,-24(%rbp)
.Ll228:
# [3017] end;
	movl	-24(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc257:
.Lt52:
.Ll229:

.section .text.n_sdl2_$$_sdl_mustlock$psdl_surface$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_MUSTLOCK$PSDL_SURFACE$$BOOLEAN
SDL2_$$_SDL_MUSTLOCK$PSDL_SURFACE$$BOOLEAN:
.Lc261:
.seh_proc SDL2_$$_SDL_MUSTLOCK$PSDL_SURFACE$$BOOLEAN
.Ll230:
# [3023] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc263:
.Lc264:
	movq	%rsp,%rbp
.Lc265:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var S located at rbp-8, size=OS_64
# Var $result located at rbp-16, size=OS_8
	movq	%rcx,-8(%rbp)
.Ll231:
# [3024] exit((S^.flags and SDL_RLEACCEL) <> 0);
	movq	-8(%rbp),%rax
	movl	(%rax),%eax
	andl	$2,%eax
	testl	%eax,%eax
	setneb	-16(%rbp)
.Ll232:
# [3025] end;
	movzbl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc262:
.Lt53:
.Ll233:

.section .text.n_sdl2_$$_sdl_loadbmp$pchar$$psdl_surface,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_LOADBMP$PCHAR$$PSDL_SURFACE
SDL2_$$_SDL_LOADBMP$PCHAR$$PSDL_SURFACE:
.Lc266:
.seh_proc SDL2_$$_SDL_LOADBMP$PCHAR$$PSDL_SURFACE
.Ll234:
# [3028] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc268:
.Lc269:
	movq	%rsp,%rbp
.Lc270:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var file_ located at rbp-8, size=OS_64
# Var $result located at rbp-16, size=OS_64
	movq	%rcx,-8(%rbp)
.Ll235:
# [3029] exit(SDL_LoadBMP_RW(SDL_RWFromFile(file_, 'rb'), 1));
	leaq	_$SDL2$_Ld6(%rip),%rax
	movq	%rax,%rdx
	movq	-8(%rbp),%rcx
	call	_$dll$sdl2$SDL_RWFromFile
	movq	%rax,%rcx
	movl	$1,%edx
	call	_$dll$sdl2$SDL_LoadBMP_RW
	movq	%rax,-16(%rbp)
.Ll236:
# [3030] end;
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc267:
.Lt54:
.Ll237:

.section .text.n_sdl2_$$_sdl_savebmp$psdl_surface$pchar$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_SAVEBMP$PSDL_SURFACE$PCHAR$$LONGINT
SDL2_$$_SDL_SAVEBMP$PSDL_SURFACE$PCHAR$$LONGINT:
.Lc271:
.seh_proc SDL2_$$_SDL_SAVEBMP$PSDL_SURFACE$PCHAR$$LONGINT
.Ll238:
# [3033] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc273:
.Lc274:
	movq	%rsp,%rbp
.Lc275:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var surface located at rbp-8, size=OS_64
# Var file_ located at rbp-16, size=OS_64
# Var $result located at rbp-24, size=OS_S32
	movq	%rcx,-8(%rbp)
	movq	%rdx,-16(%rbp)
.Ll239:
# [3034] exit(SDL_SaveBMP_RW(surface, SDL_RWFromFile(file_, 'wb'), 1));
	leaq	_$SDL2$_Ld7(%rip),%rax
	movq	%rax,%rdx
	movq	-16(%rbp),%rcx
	call	_$dll$sdl2$SDL_RWFromFile
	movq	%rax,%rdx
	movq	-8(%rbp),%rcx
	movl	$1,%r8d
	call	_$dll$sdl2$SDL_SaveBMP_RW
	movl	%eax,-24(%rbp)
.Ll240:
# [3035] end;
	movl	-24(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc272:
.Lt55:
.Ll241:

.section .text.n_sdl2_$$_sdl_blitsurface$psdl_surface$psdl_rect$psdl_surface$psdl_rect$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_BLITSURFACE$PSDL_SURFACE$PSDL_RECT$PSDL_SURFACE$PSDL_RECT$$LONGINT
SDL2_$$_SDL_BLITSURFACE$PSDL_SURFACE$PSDL_RECT$PSDL_SURFACE$PSDL_RECT$$LONGINT:
.Lc276:
.seh_proc SDL2_$$_SDL_BLITSURFACE$PSDL_SURFACE$PSDL_RECT$PSDL_SURFACE$PSDL_RECT$$LONGINT
.Ll242:
# [3038] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc278:
.Lc279:
	movq	%rsp,%rbp
.Lc280:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
# Var src located at rbp-8, size=OS_64
# Var srcrect located at rbp-16, size=OS_64
# Var dst located at rbp-24, size=OS_64
# Var dstrect located at rbp-32, size=OS_64
# Var $result located at rbp-40, size=OS_S32
	movq	%rcx,-8(%rbp)
	movq	%rdx,-16(%rbp)
	movq	%r8,-24(%rbp)
	movq	%r9,-32(%rbp)
.Ll243:
# [3039] exit(SDL_UpperBlit(src, srcrect, dst, dstrect));
	movq	-32(%rbp),%rax
	movq	-24(%rbp),%r8
	movq	-16(%rbp),%rdx
	movq	-8(%rbp),%rcx
	movq	%rax,%r9
	call	_$dll$sdl2$SDL_UpperBlit
	movl	%eax,-40(%rbp)
.Ll244:
# [3040] end;
	movl	-40(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc277:
.Lt56:
.Ll245:

.section .text.n_sdl2_$$_sdl_blitscaled$psdl_surface$psdl_rect$psdl_surface$psdl_rect$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_BLITSCALED$PSDL_SURFACE$PSDL_RECT$PSDL_SURFACE$PSDL_RECT$$LONGINT
SDL2_$$_SDL_BLITSCALED$PSDL_SURFACE$PSDL_RECT$PSDL_SURFACE$PSDL_RECT$$LONGINT:
.Lc281:
.seh_proc SDL2_$$_SDL_BLITSCALED$PSDL_SURFACE$PSDL_RECT$PSDL_SURFACE$PSDL_RECT$$LONGINT
.Ll246:
# [3043] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc283:
.Lc284:
	movq	%rsp,%rbp
.Lc285:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
# Var src located at rbp-8, size=OS_64
# Var srcrect located at rbp-16, size=OS_64
# Var dst located at rbp-24, size=OS_64
# Var dstrect located at rbp-32, size=OS_64
# Var $result located at rbp-40, size=OS_S32
	movq	%rcx,-8(%rbp)
	movq	%rdx,-16(%rbp)
	movq	%r8,-24(%rbp)
	movq	%r9,-32(%rbp)
.Ll247:
# [3044] exit(SDL_UpperBlitScaled(src, srcrect, dst, dstrect));
	movq	-32(%rbp),%rax
	movq	-24(%rbp),%r8
	movq	-16(%rbp),%rdx
	movq	-8(%rbp),%rcx
	movq	%rax,%r9
	call	_$dll$sdl2$SDL_UpperBlitScaled
	movl	%eax,-40(%rbp)
.Ll248:
# [3045] end;
	movl	-40(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc282:
.Lt57:
.Ll249:

.section .text.n_sdl2_$$_sdl_gamecontrolleraddmappingsfromfile$pchar$$longint,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_GAMECONTROLLERADDMAPPINGSFROMFILE$PCHAR$$LONGINT
SDL2_$$_SDL_GAMECONTROLLERADDMAPPINGSFROMFILE$PCHAR$$LONGINT:
.Lc286:
.seh_proc SDL2_$$_SDL_GAMECONTROLLERADDMAPPINGSFROMFILE$PCHAR$$LONGINT
.Ll250:
# [3051] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc288:
.Lc289:
	movq	%rsp,%rbp
.Lc290:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var file_ located at rbp-8, size=OS_64
# Var $result located at rbp-16, size=OS_S32
	movq	%rcx,-8(%rbp)
.Ll251:
# [3052] exit(SDL_GameControllerAddMappingsFromRW(SDL_RWFromFile(file_, 'rb'), 1));
	leaq	_$SDL2$_Ld6(%rip),%rax
	movq	%rax,%rdx
	movq	-8(%rbp),%rcx
	call	_$dll$sdl2$SDL_RWFromFile
	movq	%rax,%rcx
	movl	$1,%edx
	call	_$dll$sdl2$SDL_GameControllerAddMappingsFromRW
	movl	%eax,-16(%rbp)
.Ll252:
# [3053] end;
	movl	-16(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc287:
.Lt58:
.Ll253:

.section .text.n_sdl2_$$_sdl_quitrequested$$boolean,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_QUITREQUESTED$$BOOLEAN
SDL2_$$_SDL_QUITREQUESTED$$BOOLEAN:
.Lc291:
.seh_proc SDL2_$$_SDL_QUITREQUESTED$$BOOLEAN
.Ll254:
# [3059] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc293:
.Lc294:
	movq	%rsp,%rbp
.Lc295:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var $result located at rbp-8, size=OS_8
.Ll255:
# [3060] SDL_PumpEvents;
	call	_$dll$sdl2$SDL_PumpEvents
.Ll256:
# [3061] exit(SDL_PeepEvents(NIL, 0, SDL_PEEKEVENT, SDL_QUITEV, SDL_QUITEV) > 0);
	movl	$256,32(%rsp)
	movl	$256,%eax
	movl	$1,%r8d
	movl	$0,%edx
	movq	$0,%rcx
	movl	%eax,%r9d
	call	_$dll$sdl2$SDL_PeepEvents
	cmpl	$0,%eax
	setgb	-8(%rbp)
.Ll257:
# [3062] end;
	movzbl	-8(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc292:
.Lt59:
.Ll258:

.section .text.n_sdl2_$$_sdl_geteventstate$longword$$byte,"x"
	.balign 16,0x90
.globl	SDL2_$$_SDL_GETEVENTSTATE$LONGWORD$$BYTE
SDL2_$$_SDL_GETEVENTSTATE$LONGWORD$$BYTE:
.Lc296:
.seh_proc SDL2_$$_SDL_GETEVENTSTATE$LONGWORD$$BYTE
.Ll259:
# [3065] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc298:
.Lc299:
	movq	%rsp,%rbp
.Lc300:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var type_ located at rbp-8, size=OS_32
# Var $result located at rbp-16, size=OS_8
	movl	%ecx,-8(%rbp)
.Ll260:
# [3066] exit(SDL_EventState(type_, SDL_QUERY));
	movl	-8(%rbp),%eax
	movl	$-1,%edx
	movl	%eax,%ecx
	call	_$dll$sdl2$SDL_EventState
	movb	%al,-16(%rbp)
.Ll261:
# [3067] end;
	movzbl	-16(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc297:
.Lt60:
.Ll262:
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
.Lc301:
	.long	.Lc303-.Lc302
.Lc302:
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
.Lc303:
	.long	.Lc305-.Lc304
.Lc304:
	.secrel32	.Lc301
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc4-.Lc3
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc5-.Lc4
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc305:
	.long	.Lc307-.Lc306
.Lc306:
	.secrel32	.Lc301
	.quad	.Lc6
	.quad	.Lc7-.Lc6
	.byte	4
	.long	.Lc8-.Lc6
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc9-.Lc8
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc10-.Lc9
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc307:
	.long	.Lc309-.Lc308
.Lc308:
	.secrel32	.Lc301
	.quad	.Lc11
	.quad	.Lc12-.Lc11
	.byte	4
	.long	.Lc13-.Lc11
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc14-.Lc13
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc15-.Lc14
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc309:
	.long	.Lc311-.Lc310
.Lc310:
	.secrel32	.Lc301
	.quad	.Lc16
	.quad	.Lc17-.Lc16
	.byte	4
	.long	.Lc18-.Lc16
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc19-.Lc18
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc20-.Lc19
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc311:
	.long	.Lc313-.Lc312
.Lc312:
	.secrel32	.Lc301
	.quad	.Lc21
	.quad	.Lc22-.Lc21
	.byte	4
	.long	.Lc23-.Lc21
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc24-.Lc23
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc25-.Lc24
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc313:
	.long	.Lc315-.Lc314
.Lc314:
	.secrel32	.Lc301
	.quad	.Lc26
	.quad	.Lc27-.Lc26
	.byte	4
	.long	.Lc28-.Lc26
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc29-.Lc28
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc30-.Lc29
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc315:
	.long	.Lc317-.Lc316
.Lc316:
	.secrel32	.Lc301
	.quad	.Lc31
	.quad	.Lc32-.Lc31
	.byte	4
	.long	.Lc33-.Lc31
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc34-.Lc33
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc35-.Lc34
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc317:
	.long	.Lc319-.Lc318
.Lc318:
	.secrel32	.Lc301
	.quad	.Lc36
	.quad	.Lc37-.Lc36
	.byte	4
	.long	.Lc38-.Lc36
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc39-.Lc38
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc40-.Lc39
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc319:
	.long	.Lc321-.Lc320
.Lc320:
	.secrel32	.Lc301
	.quad	.Lc41
	.quad	.Lc42-.Lc41
	.byte	4
	.long	.Lc43-.Lc41
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc44-.Lc43
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc45-.Lc44
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc321:
	.long	.Lc323-.Lc322
.Lc322:
	.secrel32	.Lc301
	.quad	.Lc46
	.quad	.Lc47-.Lc46
	.byte	4
	.long	.Lc48-.Lc46
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc49-.Lc48
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc50-.Lc49
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc323:
	.long	.Lc325-.Lc324
.Lc324:
	.secrel32	.Lc301
	.quad	.Lc51
	.quad	.Lc52-.Lc51
	.byte	4
	.long	.Lc53-.Lc51
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc54-.Lc53
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc55-.Lc54
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc325:
	.long	.Lc327-.Lc326
.Lc326:
	.secrel32	.Lc301
	.quad	.Lc56
	.quad	.Lc57-.Lc56
	.byte	4
	.long	.Lc58-.Lc56
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc59-.Lc58
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc60-.Lc59
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc327:
	.long	.Lc329-.Lc328
.Lc328:
	.secrel32	.Lc301
	.quad	.Lc61
	.quad	.Lc62-.Lc61
	.byte	4
	.long	.Lc63-.Lc61
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc64-.Lc63
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc65-.Lc64
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc329:
	.long	.Lc331-.Lc330
.Lc330:
	.secrel32	.Lc301
	.quad	.Lc66
	.quad	.Lc67-.Lc66
	.byte	4
	.long	.Lc68-.Lc66
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc69-.Lc68
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc70-.Lc69
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc331:
	.long	.Lc333-.Lc332
.Lc332:
	.secrel32	.Lc301
	.quad	.Lc71
	.quad	.Lc72-.Lc71
	.byte	4
	.long	.Lc73-.Lc71
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc74-.Lc73
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc75-.Lc74
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc333:
	.long	.Lc335-.Lc334
.Lc334:
	.secrel32	.Lc301
	.quad	.Lc76
	.quad	.Lc77-.Lc76
	.byte	4
	.long	.Lc78-.Lc76
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc79-.Lc78
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc80-.Lc79
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc335:
	.long	.Lc337-.Lc336
.Lc336:
	.secrel32	.Lc301
	.quad	.Lc81
	.quad	.Lc82-.Lc81
	.byte	4
	.long	.Lc83-.Lc81
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc84-.Lc83
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc85-.Lc84
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc337:
	.long	.Lc339-.Lc338
.Lc338:
	.secrel32	.Lc301
	.quad	.Lc86
	.quad	.Lc87-.Lc86
	.byte	4
	.long	.Lc88-.Lc86
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc89-.Lc88
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc90-.Lc89
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc339:
	.long	.Lc341-.Lc340
.Lc340:
	.secrel32	.Lc301
	.quad	.Lc91
	.quad	.Lc92-.Lc91
	.byte	4
	.long	.Lc93-.Lc91
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc94-.Lc93
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc95-.Lc94
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc341:
	.long	.Lc343-.Lc342
.Lc342:
	.secrel32	.Lc301
	.quad	.Lc96
	.quad	.Lc97-.Lc96
	.byte	4
	.long	.Lc98-.Lc96
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc99-.Lc98
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc100-.Lc99
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc343:
	.long	.Lc345-.Lc344
.Lc344:
	.secrel32	.Lc301
	.quad	.Lc101
	.quad	.Lc102-.Lc101
	.byte	4
	.long	.Lc103-.Lc101
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc104-.Lc103
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc105-.Lc104
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc345:
	.long	.Lc347-.Lc346
.Lc346:
	.secrel32	.Lc301
	.quad	.Lc106
	.quad	.Lc107-.Lc106
	.byte	4
	.long	.Lc108-.Lc106
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc109-.Lc108
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc110-.Lc109
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc347:
	.long	.Lc349-.Lc348
.Lc348:
	.secrel32	.Lc301
	.quad	.Lc111
	.quad	.Lc112-.Lc111
	.byte	4
	.long	.Lc113-.Lc111
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc114-.Lc113
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc115-.Lc114
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc349:
	.long	.Lc351-.Lc350
.Lc350:
	.secrel32	.Lc301
	.quad	.Lc116
	.quad	.Lc117-.Lc116
	.byte	4
	.long	.Lc118-.Lc116
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc119-.Lc118
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc120-.Lc119
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc351:
	.long	.Lc353-.Lc352
.Lc352:
	.secrel32	.Lc301
	.quad	.Lc121
	.quad	.Lc122-.Lc121
	.byte	4
	.long	.Lc123-.Lc121
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc124-.Lc123
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc125-.Lc124
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc353:
	.long	.Lc355-.Lc354
.Lc354:
	.secrel32	.Lc301
	.quad	.Lc126
	.quad	.Lc127-.Lc126
	.byte	4
	.long	.Lc128-.Lc126
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc129-.Lc128
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc130-.Lc129
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc355:
	.long	.Lc357-.Lc356
.Lc356:
	.secrel32	.Lc301
	.quad	.Lc131
	.quad	.Lc132-.Lc131
	.byte	4
	.long	.Lc133-.Lc131
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc134-.Lc133
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc135-.Lc134
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc357:
	.long	.Lc359-.Lc358
.Lc358:
	.secrel32	.Lc301
	.quad	.Lc136
	.quad	.Lc137-.Lc136
	.byte	4
	.long	.Lc138-.Lc136
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc139-.Lc138
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc140-.Lc139
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc359:
	.long	.Lc361-.Lc360
.Lc360:
	.secrel32	.Lc301
	.quad	.Lc141
	.quad	.Lc142-.Lc141
	.byte	4
	.long	.Lc143-.Lc141
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc144-.Lc143
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc145-.Lc144
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc361:
	.long	.Lc363-.Lc362
.Lc362:
	.secrel32	.Lc301
	.quad	.Lc146
	.quad	.Lc147-.Lc146
	.byte	4
	.long	.Lc148-.Lc146
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc149-.Lc148
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc150-.Lc149
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc363:
	.long	.Lc365-.Lc364
.Lc364:
	.secrel32	.Lc301
	.quad	.Lc151
	.quad	.Lc152-.Lc151
	.byte	4
	.long	.Lc153-.Lc151
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc154-.Lc153
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc155-.Lc154
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc365:
	.long	.Lc367-.Lc366
.Lc366:
	.secrel32	.Lc301
	.quad	.Lc156
	.quad	.Lc157-.Lc156
	.byte	4
	.long	.Lc158-.Lc156
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc159-.Lc158
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc160-.Lc159
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc367:
	.long	.Lc369-.Lc368
.Lc368:
	.secrel32	.Lc301
	.quad	.Lc161
	.quad	.Lc162-.Lc161
	.byte	4
	.long	.Lc163-.Lc161
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc164-.Lc163
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc165-.Lc164
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc369:
	.long	.Lc371-.Lc370
.Lc370:
	.secrel32	.Lc301
	.quad	.Lc166
	.quad	.Lc167-.Lc166
	.byte	4
	.long	.Lc168-.Lc166
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc169-.Lc168
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc170-.Lc169
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc371:
	.long	.Lc373-.Lc372
.Lc372:
	.secrel32	.Lc301
	.quad	.Lc171
	.quad	.Lc172-.Lc171
	.byte	4
	.long	.Lc173-.Lc171
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc174-.Lc173
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc175-.Lc174
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc373:
	.long	.Lc375-.Lc374
.Lc374:
	.secrel32	.Lc301
	.quad	.Lc176
	.quad	.Lc177-.Lc176
	.byte	4
	.long	.Lc178-.Lc176
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc179-.Lc178
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc180-.Lc179
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc375:
	.long	.Lc377-.Lc376
.Lc376:
	.secrel32	.Lc301
	.quad	.Lc181
	.quad	.Lc182-.Lc181
	.byte	4
	.long	.Lc183-.Lc181
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc184-.Lc183
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc185-.Lc184
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc377:
	.long	.Lc379-.Lc378
.Lc378:
	.secrel32	.Lc301
	.quad	.Lc186
	.quad	.Lc187-.Lc186
	.byte	4
	.long	.Lc188-.Lc186
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc189-.Lc188
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc190-.Lc189
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc379:
	.long	.Lc381-.Lc380
.Lc380:
	.secrel32	.Lc301
	.quad	.Lc191
	.quad	.Lc192-.Lc191
	.byte	4
	.long	.Lc193-.Lc191
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc194-.Lc193
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc195-.Lc194
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc381:
	.long	.Lc383-.Lc382
.Lc382:
	.secrel32	.Lc301
	.quad	.Lc196
	.quad	.Lc197-.Lc196
	.byte	4
	.long	.Lc198-.Lc196
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc199-.Lc198
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc200-.Lc199
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc383:
	.long	.Lc385-.Lc384
.Lc384:
	.secrel32	.Lc301
	.quad	.Lc201
	.quad	.Lc202-.Lc201
	.byte	4
	.long	.Lc203-.Lc201
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc204-.Lc203
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc205-.Lc204
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc385:
	.long	.Lc387-.Lc386
.Lc386:
	.secrel32	.Lc301
	.quad	.Lc206
	.quad	.Lc207-.Lc206
	.byte	4
	.long	.Lc208-.Lc206
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc209-.Lc208
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc210-.Lc209
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc387:
	.long	.Lc389-.Lc388
.Lc388:
	.secrel32	.Lc301
	.quad	.Lc211
	.quad	.Lc212-.Lc211
	.byte	4
	.long	.Lc213-.Lc211
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc214-.Lc213
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc215-.Lc214
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc389:
	.long	.Lc391-.Lc390
.Lc390:
	.secrel32	.Lc301
	.quad	.Lc216
	.quad	.Lc217-.Lc216
	.byte	4
	.long	.Lc218-.Lc216
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc219-.Lc218
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc220-.Lc219
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc391:
	.long	.Lc393-.Lc392
.Lc392:
	.secrel32	.Lc301
	.quad	.Lc221
	.quad	.Lc222-.Lc221
	.byte	4
	.long	.Lc223-.Lc221
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc224-.Lc223
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc225-.Lc224
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc393:
	.long	.Lc395-.Lc394
.Lc394:
	.secrel32	.Lc301
	.quad	.Lc226
	.quad	.Lc227-.Lc226
	.byte	4
	.long	.Lc228-.Lc226
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc229-.Lc228
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc230-.Lc229
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc395:
	.long	.Lc397-.Lc396
.Lc396:
	.secrel32	.Lc301
	.quad	.Lc231
	.quad	.Lc232-.Lc231
	.byte	4
	.long	.Lc233-.Lc231
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc234-.Lc233
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc235-.Lc234
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc397:
	.long	.Lc399-.Lc398
.Lc398:
	.secrel32	.Lc301
	.quad	.Lc236
	.quad	.Lc237-.Lc236
	.byte	4
	.long	.Lc238-.Lc236
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc239-.Lc238
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc240-.Lc239
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc399:
	.long	.Lc401-.Lc400
.Lc400:
	.secrel32	.Lc301
	.quad	.Lc241
	.quad	.Lc242-.Lc241
	.byte	4
	.long	.Lc243-.Lc241
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc244-.Lc243
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc245-.Lc244
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc401:
	.long	.Lc403-.Lc402
.Lc402:
	.secrel32	.Lc301
	.quad	.Lc246
	.quad	.Lc247-.Lc246
	.byte	4
	.long	.Lc248-.Lc246
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc249-.Lc248
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc250-.Lc249
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc403:
	.long	.Lc405-.Lc404
.Lc404:
	.secrel32	.Lc301
	.quad	.Lc251
	.quad	.Lc252-.Lc251
	.byte	4
	.long	.Lc253-.Lc251
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc254-.Lc253
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc255-.Lc254
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc405:
	.long	.Lc407-.Lc406
.Lc406:
	.secrel32	.Lc301
	.quad	.Lc256
	.quad	.Lc257-.Lc256
	.byte	4
	.long	.Lc258-.Lc256
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc259-.Lc258
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc260-.Lc259
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc407:
	.long	.Lc409-.Lc408
.Lc408:
	.secrel32	.Lc301
	.quad	.Lc261
	.quad	.Lc262-.Lc261
	.byte	4
	.long	.Lc263-.Lc261
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc264-.Lc263
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc265-.Lc264
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc409:
	.long	.Lc411-.Lc410
.Lc410:
	.secrel32	.Lc301
	.quad	.Lc266
	.quad	.Lc267-.Lc266
	.byte	4
	.long	.Lc268-.Lc266
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc269-.Lc268
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc270-.Lc269
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc411:
	.long	.Lc413-.Lc412
.Lc412:
	.secrel32	.Lc301
	.quad	.Lc271
	.quad	.Lc272-.Lc271
	.byte	4
	.long	.Lc273-.Lc271
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc274-.Lc273
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc275-.Lc274
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc413:
	.long	.Lc415-.Lc414
.Lc414:
	.secrel32	.Lc301
	.quad	.Lc276
	.quad	.Lc277-.Lc276
	.byte	4
	.long	.Lc278-.Lc276
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc279-.Lc278
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc280-.Lc279
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc415:
	.long	.Lc417-.Lc416
.Lc416:
	.secrel32	.Lc301
	.quad	.Lc281
	.quad	.Lc282-.Lc281
	.byte	4
	.long	.Lc283-.Lc281
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc284-.Lc283
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc285-.Lc284
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc417:
	.long	.Lc419-.Lc418
.Lc418:
	.secrel32	.Lc301
	.quad	.Lc286
	.quad	.Lc287-.Lc286
	.byte	4
	.long	.Lc288-.Lc286
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc289-.Lc288
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc290-.Lc289
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc419:
	.long	.Lc421-.Lc420
.Lc420:
	.secrel32	.Lc301
	.quad	.Lc291
	.quad	.Lc292-.Lc291
	.byte	4
	.long	.Lc293-.Lc291
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc294-.Lc293
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc295-.Lc294
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc421:
	.long	.Lc423-.Lc422
.Lc422:
	.secrel32	.Lc301
	.quad	.Lc296
	.quad	.Lc297-.Lc296
	.byte	4
	.long	.Lc298-.Lc296
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc299-.Lc298
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc300-.Lc299
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc423:
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
	.ascii	"Free Pascal 3.0.4 2017/12/03\000"
	.ascii	"D:/Programowanie/20180824 retro-fm/\000"
	.byte	9
	.byte	3
	.secrel32	.Ldebug_line0
	.quad	DEBUGSTART_$SDL2
	.quad	DEBUGEND_$SDL2
# Syms - Begin unit SDL2 has index 255
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
# Syms - End unit SDL2 has index 255
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
	.byte	118
	.sleb128	-8
	.long	.La261-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La261-.Ldebug_info0
# Symbol SDL_ICONV_UTF8_LOCALE
	.uleb128	8
	.ascii	"SDL_ICONV_UTF8_LOCALE\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La261-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La261-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La261-.Ldebug_info0
# Symbol SDL_ICONV_UTF8_UCS2
	.uleb128	8
	.ascii	"SDL_ICONV_UTF8_UCS2\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La261-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La261-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La261-.Ldebug_info0
# Symbol SDL_ICONV_UTF8_UCS4
	.uleb128	8
	.ascii	"SDL_ICONV_UTF8_UCS4\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La261-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La17-.Ldebug_info0
# Symbol SDL_MOSTSIGNIFICANTBITINDEX32
	.uleb128	8
	.ascii	"SDL_MOSTSIGNIFICANTBITINDEX32\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
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
	.byte	118
	.sleb128	-8
	.long	.La17-.Ldebug_info0
# Symbol Y
	.uleb128	7
	.ascii	"Y\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La17-.Ldebug_info0
# Symbol Z
	.uleb128	7
	.ascii	"Z\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La17-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La17-.Ldebug_info0
# Symbol SDL_VERSIONNUM
	.uleb128	8
	.ascii	"SDL_VERSIONNUM\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-32
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
	.byte	118
	.sleb128	-8
	.long	.La17-.Ldebug_info0
# Symbol SDL_COMPILEDVERSION
	.uleb128	8
	.ascii	"SDL_COMPILEDVERSION\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-8
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
	.byte	118
	.sleb128	-8
	.long	.La17-.Ldebug_info0
# Symbol Y
	.uleb128	7
	.ascii	"Y\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La17-.Ldebug_info0
# Symbol Z
	.uleb128	7
	.ascii	"Z\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La17-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La263-.Ldebug_info0
# Symbol SDL_VERSION_ATLEAST
	.uleb128	8
	.ascii	"SDL_VERSION_ATLEAST\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-32
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
	.byte	118
	.sleb128	-8
	.long	.La17-.Ldebug_info0
# Symbol SDL_OUTOFMEMORY
	.uleb128	8
	.ascii	"SDL_OUTOFMEMORY\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-8
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
	.byte	118
	.sleb128	-8
	.long	.La17-.Ldebug_info0
# Symbol SDL_UNSUPPORTED
	.uleb128	8
	.ascii	"SDL_UNSUPPORTED\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-8
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
	.byte	118
	.sleb128	-8
	.long	.La261-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La17-.Ldebug_info0
# Symbol SDL_INVALIDPARAMERROR
	.uleb128	8
	.ascii	"SDL_INVALIDPARAMERROR\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La55-.Ldebug_info0
# Symbol B
	.uleb128	7
	.ascii	"B\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La3-.Ldebug_info0
# Symbol SDL_TICKS_PASSED
	.uleb128	8
	.ascii	"SDL_TICKS_PASSED\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La3-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-24
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
	.byte	118
	.sleb128	-8
	.long	.La25-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La17-.Ldebug_info0
# Symbol SDL_MUTEXP
	.uleb128	8
	.ascii	"SDL_MUTEXP\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La25-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La17-.Ldebug_info0
# Symbol SDL_MUTEXV
	.uleb128	8
	.ascii	"SDL_MUTEXV\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La59-.Ldebug_info0
# Symbol NAME
	.uleb128	7
	.ascii	"NAME\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La261-.Ldebug_info0
# Symbol DATA
	.uleb128	7
	.ascii	"DATA\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La25-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La25-.Ldebug_info0
# Symbol SDL_CREATETHREAD
	.uleb128	8
	.ascii	"SDL_CREATETHREAD\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La25-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-32
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
	.byte	118
	.sleb128	-8
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La61-.Ldebug_info0
# Symbol SDL_SWAP16
	.uleb128	8
	.ascii	"SDL_SWAP16\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La61-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La55-.Ldebug_info0
# Symbol SDL_SWAP32
	.uleb128	8
	.ascii	"SDL_SWAP32\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La21-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La21-.Ldebug_info0
# Symbol SDL_SWAP64
	.uleb128	8
	.ascii	"SDL_SWAP64\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La21-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La29-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La29-.Ldebug_info0
# Symbol SDL_SWAPFLOAT
	.uleb128	8
	.ascii	"SDL_SWAPFLOAT\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La29-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La29-.Ldebug_info0
# Symbol F
	.uleb128	8
	.ascii	"F\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La29-.Ldebug_info0
# Symbol UI32
	.uleb128	8
	.ascii	"UI32\000"
	.byte	2
	.byte	118
	.sleb128	-24
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
	.byte	118
	.sleb128	-8
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La61-.Ldebug_info0
# Symbol SDL_SWAPLE16
	.uleb128	8
	.ascii	"SDL_SWAPLE16\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La61-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La55-.Ldebug_info0
# Symbol SDL_SWAPLE32
	.uleb128	8
	.ascii	"SDL_SWAPLE32\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La21-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La21-.Ldebug_info0
# Symbol SDL_SWAPLE64
	.uleb128	8
	.ascii	"SDL_SWAPLE64\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La21-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La29-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La29-.Ldebug_info0
# Symbol SDL_SWAPFLOATLE
	.uleb128	8
	.ascii	"SDL_SWAPFLOATLE\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La29-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La61-.Ldebug_info0
# Symbol SDL_SWAPBE16
	.uleb128	8
	.ascii	"SDL_SWAPBE16\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La61-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La55-.Ldebug_info0
# Symbol SDL_SWAPBE32
	.uleb128	8
	.ascii	"SDL_SWAPBE32\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La21-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La21-.Ldebug_info0
# Symbol SDL_SWAPBE64
	.uleb128	8
	.ascii	"SDL_SWAPBE64\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La21-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La29-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La29-.Ldebug_info0
# Symbol SDL_SWAPFLOATBE
	.uleb128	8
	.ascii	"SDL_SWAPFLOATBE\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La29-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La63-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La19-.Ldebug_info0
# Symbol SDL_RWSIZE
	.uleb128	8
	.ascii	"SDL_RWSIZE\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La19-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La63-.Ldebug_info0
# Symbol OFFSET
	.uleb128	7
	.ascii	"OFFSET\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La19-.Ldebug_info0
# Symbol WHENCE
	.uleb128	7
	.ascii	"WHENCE\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La17-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La19-.Ldebug_info0
# Symbol SDL_RWSEEK
	.uleb128	8
	.ascii	"SDL_RWSEEK\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La19-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-32
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
	.byte	118
	.sleb128	-8
	.long	.La63-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La19-.Ldebug_info0
# Symbol SDL_RWTELL
	.uleb128	8
	.ascii	"SDL_RWTELL\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La19-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La63-.Ldebug_info0
# Symbol PTR
	.uleb128	7
	.ascii	"PTR\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La25-.Ldebug_info0
# Symbol SIZE
	.uleb128	7
	.ascii	"SIZE\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La55-.Ldebug_info0
# Symbol N
	.uleb128	7
	.ascii	"N\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La55-.Ldebug_info0
# Symbol SDL_RWREAD
	.uleb128	8
	.ascii	"SDL_RWREAD\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-40
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
	.byte	118
	.sleb128	-8
	.long	.La63-.Ldebug_info0
# Symbol PTR
	.uleb128	7
	.ascii	"PTR\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La25-.Ldebug_info0
# Symbol SIZE
	.uleb128	7
	.ascii	"SIZE\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La55-.Ldebug_info0
# Symbol N
	.uleb128	7
	.ascii	"N\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La55-.Ldebug_info0
# Symbol SDL_RWWRITE
	.uleb128	8
	.ascii	"SDL_RWWRITE\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-40
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
	.byte	118
	.sleb128	-8
	.long	.La63-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La17-.Ldebug_info0
# Symbol SDL_RWCLOSE
	.uleb128	8
	.ascii	"SDL_RWCLOSE\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La61-.Ldebug_info0
# Symbol SDL_AUDIO_BITSIZE
	.uleb128	8
	.ascii	"SDL_AUDIO_BITSIZE\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La61-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol SDL_AUDIO_ISFLOAT
	.uleb128	8
	.ascii	"SDL_AUDIO_ISFLOAT\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol SDL_AUDIO_ISBIGENDIAN
	.uleb128	8
	.ascii	"SDL_AUDIO_ISBIGENDIAN\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol SDL_AUDIO_ISSIGNED
	.uleb128	8
	.ascii	"SDL_AUDIO_ISSIGNED\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol SDL_AUDIO_ISINT
	.uleb128	8
	.ascii	"SDL_AUDIO_ISINT\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol SDL_AUDIO_ISLITTLEENDIAN
	.uleb128	8
	.ascii	"SDL_AUDIO_ISLITTLEENDIAN\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La61-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol SDL_AUDIO_ISUNSIGNED
	.uleb128	8
	.ascii	"SDL_AUDIO_ISUNSIGNED\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La261-.Ldebug_info0
# Symbol SPEC
	.uleb128	7
	.ascii	"SPEC\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La71-.Ldebug_info0
# Symbol AUDIO_BUF
	.uleb128	7
	.ascii	"AUDIO_BUF\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La265-.Ldebug_info0
# Symbol AUDIO_LEN
	.uleb128	7
	.ascii	"AUDIO_LEN\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La267-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La71-.Ldebug_info0
# Symbol SDL_LOADWAV
	.uleb128	8
	.ascii	"SDL_LOADWAV\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La71-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-40
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
	.byte	118
	.sleb128	-8
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La55-.Ldebug_info0
# Symbol SDL_PIXELFLAG
	.uleb128	8
	.ascii	"SDL_PIXELFLAG\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La55-.Ldebug_info0
# Symbol SDL_PIXELTYPE
	.uleb128	8
	.ascii	"SDL_PIXELTYPE\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La55-.Ldebug_info0
# Symbol SDL_PIXELORDER
	.uleb128	8
	.ascii	"SDL_PIXELORDER\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La55-.Ldebug_info0
# Symbol SDL_PIXELLAYOUT
	.uleb128	8
	.ascii	"SDL_PIXELLAYOUT\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La55-.Ldebug_info0
# Symbol SDL_BITSPERPIXEL
	.uleb128	8
	.ascii	"SDL_BITSPERPIXEL\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La55-.Ldebug_info0
# Symbol SDL_BYTESPERPIXEL
	.uleb128	8
	.ascii	"SDL_BYTESPERPIXEL\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La55-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol SDL_ISPIXELFORMAT_INDEXED
	.uleb128	8
	.ascii	"SDL_ISPIXELFORMAT_INDEXED\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol SDL_ISPIXELFORMAT_ALPHA
	.uleb128	8
	.ascii	"SDL_ISPIXELFORMAT_ALPHA\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol SDL_ISPIXELFORMAT_FOURCC
	.uleb128	8
	.ascii	"SDL_ISPIXELFORMAT_FOURCC\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La101-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La3-.Ldebug_info0
# Symbol SDL_RECTEMPTY
	.uleb128	8
	.ascii	"SDL_RECTEMPTY\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La3-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La101-.Ldebug_info0
# Symbol B
	.uleb128	7
	.ascii	"B\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La101-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La3-.Ldebug_info0
# Symbol SDL_RECTEQUALS
	.uleb128	8
	.ascii	"SDL_RECTEQUALS\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La3-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-24
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
	.byte	118
	.sleb128	-8
	.long	.La105-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol SDL_MUSTLOCK
	.uleb128	8
	.ascii	"SDL_MUSTLOCK\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La261-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La105-.Ldebug_info0
# Symbol SDL_LOADBMP
	.uleb128	8
	.ascii	"SDL_LOADBMP\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La105-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La105-.Ldebug_info0
# Symbol FILE_
	.uleb128	7
	.ascii	"FILE_\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La261-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La17-.Ldebug_info0
# Symbol SDL_SAVEBMP
	.uleb128	8
	.ascii	"SDL_SAVEBMP\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-24
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
	.byte	118
	.sleb128	-8
	.long	.La105-.Ldebug_info0
# Symbol SRCRECT
	.uleb128	7
	.ascii	"SRCRECT\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La101-.Ldebug_info0
# Symbol DST
	.uleb128	7
	.ascii	"DST\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La105-.Ldebug_info0
# Symbol DSTRECT
	.uleb128	7
	.ascii	"DSTRECT\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La101-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La17-.Ldebug_info0
# Symbol SDL_BLITSURFACE
	.uleb128	8
	.ascii	"SDL_BLITSURFACE\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-40
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
	.byte	118
	.sleb128	-8
	.long	.La105-.Ldebug_info0
# Symbol SRCRECT
	.uleb128	7
	.ascii	"SRCRECT\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La101-.Ldebug_info0
# Symbol DST
	.uleb128	7
	.ascii	"DST\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La105-.Ldebug_info0
# Symbol DSTRECT
	.uleb128	7
	.ascii	"DSTRECT\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La101-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La17-.Ldebug_info0
# Symbol SDL_BLITSCALED
	.uleb128	8
	.ascii	"SDL_BLITSCALED\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-40
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
	.byte	118
	.sleb128	-8
	.long	.La261-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La17-.Ldebug_info0
# Symbol SDL_GAMECONTROLLERADDMAPPINGSFROMFILE
	.uleb128	8
	.ascii	"SDL_GAMECONTROLLERADDMAPPINGSFROMFILE\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La263-.Ldebug_info0
# Symbol SDL_QUITREQUESTED
	.uleb128	8
	.ascii	"SDL_QUITREQUESTED\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La263-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-8
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
	.byte	118
	.sleb128	-8
	.long	.La55-.Ldebug_info0
# Symbol result
	.uleb128	8
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La67-.Ldebug_info0
# Symbol SDL_GETEVENTSTATE
	.uleb128	8
	.ascii	"SDL_GETEVENTSTATE\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La67-.Ldebug_info0
# Symbol RESULT
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
# Defs - Begin unit SDL2 has index 255
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
# Defs - End unit SDL2 has index 255
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
# [2706:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll13
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2705
	.byte	1
# [2707:8]
	.byte	2
	.uleb128	.Ll14-.Ll13
	.byte	5
	.uleb128	8
	.byte	13
# [2709:3]
	.byte	2
	.uleb128	.Ll15-.Ll14
	.byte	5
	.uleb128	3
	.byte	14
# [2708:5]
	.byte	2
	.uleb128	.Ll16-.Ll15
	.byte	5
	.uleb128	5
	.byte	3
	.sleb128	-1
	.byte	1
# [2710:21]
	.byte	2
	.uleb128	.Ll17-.Ll16
	.byte	5
	.uleb128	21
	.byte	14
# [2711:1]
	.byte	2
	.uleb128	.Ll18-.Ll17
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll19
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_VERSION$PSDL_VERSION
# [2717:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll20
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2716
	.byte	1
# [2718:5]
	.byte	2
	.uleb128	.Ll21-.Ll20
	.byte	5
	.uleb128	5
	.byte	13
# [2719:5]
	.byte	2
	.uleb128	.Ll22-.Ll21
	.byte	13
# [2720:5]
	.byte	2
	.uleb128	.Ll23-.Ll22
	.byte	13
# [2721:1]
	.byte	2
	.uleb128	.Ll24-.Ll23
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll25
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_VERSIONNUM$LONGINT$LONGINT$LONGINT$$LONGINT
# [2724:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll26
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2723
	.byte	1
# [2725:10]
	.byte	2
	.uleb128	.Ll27-.Ll26
	.byte	5
	.uleb128	10
	.byte	13
# [2726:1]
	.byte	2
	.uleb128	.Ll28-.Ll27
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll29
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_COMPILEDVERSION$$LONGINT
# [2729:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll30
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2728
	.byte	1
# [2730:8]
	.byte	2
	.uleb128	.Ll31-.Ll30
	.byte	5
	.uleb128	8
	.byte	13
# [2731:1]
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
# function: SDL2_$$_SDL_VERSION_ATLEAST$LONGINT$LONGINT$LONGINT$$BOOLEAN
# [2734:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll34
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2733
	.byte	1
# [2735:31]
	.byte	2
	.uleb128	.Ll35-.Ll34
	.byte	5
	.uleb128	31
	.byte	13
# [2736:1]
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
# function: SDL2_$$_SDL_OUTOFMEMORY$$LONGINT
# [2742:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll38
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2741
	.byte	1
# [2743:8]
	.byte	2
	.uleb128	.Ll39-.Ll38
	.byte	5
	.uleb128	8
	.byte	13
# [2744:1]
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
# function: SDL2_$$_SDL_UNSUPPORTED$$LONGINT
# [2747:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll42
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2746
	.byte	1
# [2748:8]
	.byte	2
	.uleb128	.Ll43-.Ll42
	.byte	5
	.uleb128	8
	.byte	13
# [2749:1]
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
# function: SDL2_$$_SDL_INVALIDPARAMERROR$PCHAR$$LONGINT
# [2752:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll46
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2751
	.byte	1
# [2753:8]
	.byte	2
	.uleb128	.Ll47-.Ll46
	.byte	5
	.uleb128	8
	.byte	13
# [2754:1]
	.byte	2
	.uleb128	.Ll48-.Ll47
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll49
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_TICKS_PASSED$LONGWORD$LONGWORD$$LONGBOOL
# [2760:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll50
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2759
	.byte	1
# [2761:9]
	.byte	2
	.uleb128	.Ll51-.Ll50
	.byte	5
	.uleb128	9
	.byte	13
# [2762:1]
	.byte	2
	.uleb128	.Ll52-.Ll51
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll53
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_MUTEXP$POINTER$$LONGINT
# [2768:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll54
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2767
	.byte	1
# [2769:8]
	.byte	2
	.uleb128	.Ll55-.Ll54
	.byte	5
	.uleb128	8
	.byte	13
# [2770:1]
	.byte	2
	.uleb128	.Ll56-.Ll55
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll57
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_MUTEXV$POINTER$$LONGINT
# [2773:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll58
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2772
	.byte	1
# [2774:8]
	.byte	2
	.uleb128	.Ll59-.Ll58
	.byte	5
	.uleb128	8
	.byte	13
# [2775:1]
	.byte	2
	.uleb128	.Ll60-.Ll59
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll61
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_CREATETHREAD$TSDL_THREADFUNCTION$PCHAR$POINTER$$POINTER
# [2782:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll62
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2781
	.byte	1
# [2783:8]
	.byte	2
	.uleb128	.Ll63-.Ll62
	.byte	5
	.uleb128	8
	.byte	13
# [2784:1]
	.byte	2
	.uleb128	.Ll64-.Ll63
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll65
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAP16$WORD$$WORD
# [2791:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll66
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2790
	.byte	1
# [2792:8]
	.byte	2
	.uleb128	.Ll67-.Ll66
	.byte	5
	.uleb128	8
	.byte	13
# [2793:1]
	.byte	2
	.uleb128	.Ll68-.Ll67
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll69
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAP32$LONGWORD$$LONGWORD
# [2796:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll70
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2795
	.byte	1
# [2797:8]
	.byte	2
	.uleb128	.Ll71-.Ll70
	.byte	5
	.uleb128	8
	.byte	13
# [2798:1]
	.byte	2
	.uleb128	.Ll72-.Ll71
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll73
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAP64$QWORD$$QWORD
# [2801:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll74
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2800
	.byte	1
# [2802:8]
	.byte	2
	.uleb128	.Ll75-.Ll74
	.byte	5
	.uleb128	8
	.byte	13
# [2803:1]
	.byte	2
	.uleb128	.Ll76-.Ll75
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll77
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAPFLOAT$SINGLE$$SINGLE
# [2809:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll78
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2808
	.byte	1
# [2810:3]
	.byte	2
	.uleb128	.Ll79-.Ll78
	.byte	5
	.uleb128	3
	.byte	13
# [2811:11]
	.byte	2
	.uleb128	.Ll80-.Ll79
	.byte	5
	.uleb128	11
	.byte	13
# [2812:10]
	.byte	2
	.uleb128	.Ll81-.Ll80
	.byte	5
	.uleb128	10
	.byte	13
# [2813:1]
	.byte	2
	.uleb128	.Ll82-.Ll81
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll83
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAPLE16$WORD$$WORD
# [2816:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll84
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2815
	.byte	1
# [2817:8]
	.byte	2
	.uleb128	.Ll85-.Ll84
	.byte	5
	.uleb128	8
	.byte	13
# [2818:1]
	.byte	2
	.uleb128	.Ll86-.Ll85
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll87
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAPLE32$LONGWORD$$LONGWORD
# [2821:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll88
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2820
	.byte	1
# [2822:8]
	.byte	2
	.uleb128	.Ll89-.Ll88
	.byte	5
	.uleb128	8
	.byte	13
# [2823:1]
	.byte	2
	.uleb128	.Ll90-.Ll89
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll91
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAPLE64$QWORD$$QWORD
# [2826:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll92
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2825
	.byte	1
# [2827:8]
	.byte	2
	.uleb128	.Ll93-.Ll92
	.byte	5
	.uleb128	8
	.byte	13
# [2828:1]
	.byte	2
	.uleb128	.Ll94-.Ll93
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll95
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAPFLOATLE$SINGLE$$SINGLE
# [2831:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll96
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2830
	.byte	1
# [2833:10]
	.byte	2
	.uleb128	.Ll97-.Ll96
	.byte	5
	.uleb128	10
	.byte	14
# [2837:1]
	.byte	2
	.uleb128	.Ll98-.Ll97
	.byte	5
	.uleb128	1
	.byte	16
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll99
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAPBE16$WORD$$WORD
# [2840:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll100
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2839
	.byte	1
# [2841:8]
	.byte	2
	.uleb128	.Ll101-.Ll100
	.byte	5
	.uleb128	8
	.byte	13
# [2842:1]
	.byte	2
	.uleb128	.Ll102-.Ll101
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll103
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAPBE32$LONGWORD$$LONGWORD
# [2845:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll104
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2844
	.byte	1
# [2846:8]
	.byte	2
	.uleb128	.Ll105-.Ll104
	.byte	5
	.uleb128	8
	.byte	13
# [2847:1]
	.byte	2
	.uleb128	.Ll106-.Ll105
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll107
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAPBE64$QWORD$$QWORD
# [2850:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll108
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2849
	.byte	1
# [2851:8]
	.byte	2
	.uleb128	.Ll109-.Ll108
	.byte	5
	.uleb128	8
	.byte	13
# [2852:1]
	.byte	2
	.uleb128	.Ll110-.Ll109
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll111
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_SWAPFLOATBE$SINGLE$$SINGLE
# [2855:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll112
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2854
	.byte	1
# [2859:8]
	.byte	2
	.uleb128	.Ll113-.Ll112
	.byte	5
	.uleb128	8
	.byte	16
# [2861:1]
	.byte	2
	.uleb128	.Ll114-.Ll113
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll115
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_RWSIZE$PSDL_RWOPS$$INT64
# [2867:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll116
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2866
	.byte	1
# [2868:11]
	.byte	2
	.uleb128	.Ll117-.Ll116
	.byte	5
	.uleb128	11
	.byte	13
# [2869:1]
	.byte	2
	.uleb128	.Ll118-.Ll117
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll119
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_RWSEEK$PSDL_RWOPS$INT64$LONGINT$$INT64
# [2873:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll120
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2872
	.byte	1
# [2874:11]
	.byte	2
	.uleb128	.Ll121-.Ll120
	.byte	5
	.uleb128	11
	.byte	13
# [2875:1]
	.byte	2
	.uleb128	.Ll122-.Ll121
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll123
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_RWTELL$PSDL_RWOPS$$INT64
# [2878:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll124
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2877
	.byte	1
# [2879:11]
	.byte	2
	.uleb128	.Ll125-.Ll124
	.byte	5
	.uleb128	11
	.byte	13
# [2880:1]
	.byte	2
	.uleb128	.Ll126-.Ll125
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll127
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_RWREAD$PSDL_RWOPS$POINTER$LONGWORD$LONGWORD$$LONGWORD
# [2883:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll128
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2882
	.byte	1
# [2884:35]
	.byte	2
	.uleb128	.Ll129-.Ll128
	.byte	5
	.uleb128	35
	.byte	13
# [2885:1]
	.byte	2
	.uleb128	.Ll130-.Ll129
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll131
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_RWWRITE$PSDL_RWOPS$POINTER$LONGWORD$LONGWORD$$LONGWORD
# [2888:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll132
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2887
	.byte	1
# [2889:36]
	.byte	2
	.uleb128	.Ll133-.Ll132
	.byte	5
	.uleb128	36
	.byte	13
# [2890:1]
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
# function: SDL2_$$_SDL_RWCLOSE$PSDL_RWOPS$$LONGINT
# [2893:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll136
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2892
	.byte	1
# [2894:11]
	.byte	2
	.uleb128	.Ll137-.Ll136
	.byte	5
	.uleb128	11
	.byte	13
# [2895:1]
	.byte	2
	.uleb128	.Ll138-.Ll137
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll139
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_AUDIO_BITSIZE$WORD$$WORD
# [2901:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll140
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2900
	.byte	1
# [2902:10]
	.byte	2
	.uleb128	.Ll141-.Ll140
	.byte	5
	.uleb128	10
	.byte	13
# [2903:1]
	.byte	2
	.uleb128	.Ll142-.Ll141
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll143
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_AUDIO_ISFLOAT$WORD$$BOOLEAN
# [2906:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll144
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2905
	.byte	1
# [2907:9]
	.byte	2
	.uleb128	.Ll145-.Ll144
	.byte	5
	.uleb128	9
	.byte	13
# [2908:1]
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
# function: SDL2_$$_SDL_AUDIO_ISBIGENDIAN$WORD$$BOOLEAN
# [2911:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll148
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2910
	.byte	1
# [2912:9]
	.byte	2
	.uleb128	.Ll149-.Ll148
	.byte	5
	.uleb128	9
	.byte	13
# [2913:1]
	.byte	2
	.uleb128	.Ll150-.Ll149
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll151
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_AUDIO_ISSIGNED$WORD$$BOOLEAN
# [2916:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll152
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2915
	.byte	1
# [2917:8]
	.byte	2
	.uleb128	.Ll153-.Ll152
	.byte	5
	.uleb128	8
	.byte	13
# [2918:1]
	.byte	2
	.uleb128	.Ll154-.Ll153
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll155
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_AUDIO_ISINT$WORD$$BOOLEAN
# [2921:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll156
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2920
	.byte	1
# [2922:12]
	.byte	2
	.uleb128	.Ll157-.Ll156
	.byte	5
	.uleb128	12
	.byte	13
# [2923:1]
	.byte	2
	.uleb128	.Ll158-.Ll157
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll159
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_AUDIO_ISLITTLEENDIAN$WORD$$BOOLEAN
# [2926:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll160
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2925
	.byte	1
# [2927:12]
	.byte	2
	.uleb128	.Ll161-.Ll160
	.byte	5
	.uleb128	12
	.byte	13
# [2928:1]
	.byte	2
	.uleb128	.Ll162-.Ll161
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll163
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_AUDIO_ISUNSIGNED$WORD$$BOOLEAN
# [2931:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll164
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2930
	.byte	1
# [2932:12]
	.byte	2
	.uleb128	.Ll165-.Ll164
	.byte	5
	.uleb128	12
	.byte	13
# [2933:1]
	.byte	2
	.uleb128	.Ll166-.Ll165
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll167
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_LOADWAV$PCHAR$PSDL_AUDIOSPEC$PPBYTE$PDWORD$$PSDL_AUDIOSPEC
# [2937:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll168
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2936
	.byte	1
# [2938:8]
	.byte	2
	.uleb128	.Ll169-.Ll168
	.byte	5
	.uleb128	8
	.byte	13
# [2939:1]
	.byte	2
	.uleb128	.Ll170-.Ll169
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll171
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_PIXELFLAG$LONGWORD$$LONGWORD
# [2945:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll172
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2944
	.byte	1
# [2946:8]
	.byte	2
	.uleb128	.Ll173-.Ll172
	.byte	5
	.uleb128	8
	.byte	13
# [2947:1]
	.byte	2
	.uleb128	.Ll174-.Ll173
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll175
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_PIXELTYPE$LONGWORD$$LONGWORD
# [2950:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll176
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2949
	.byte	1
# [2951:8]
	.byte	2
	.uleb128	.Ll177-.Ll176
	.byte	5
	.uleb128	8
	.byte	13
# [2952:1]
	.byte	2
	.uleb128	.Ll178-.Ll177
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll179
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_PIXELORDER$LONGWORD$$LONGWORD
# [2955:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll180
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2954
	.byte	1
# [2956:8]
	.byte	2
	.uleb128	.Ll181-.Ll180
	.byte	5
	.uleb128	8
	.byte	13
# [2957:1]
	.byte	2
	.uleb128	.Ll182-.Ll181
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll183
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_PIXELLAYOUT$LONGWORD$$LONGWORD
# [2960:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll184
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2959
	.byte	1
# [2961:8]
	.byte	2
	.uleb128	.Ll185-.Ll184
	.byte	5
	.uleb128	8
	.byte	13
# [2962:1]
	.byte	2
	.uleb128	.Ll186-.Ll185
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll187
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_BITSPERPIXEL$LONGWORD$$LONGWORD
# [2965:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll188
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2964
	.byte	1
# [2966:8]
	.byte	2
	.uleb128	.Ll189-.Ll188
	.byte	5
	.uleb128	8
	.byte	13
# [2967:1]
	.byte	2
	.uleb128	.Ll190-.Ll189
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll191
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_BYTESPERPIXEL$LONGWORD$$LONGWORD
# [2970:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll192
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2969
	.byte	1
# [2971:6]
	.byte	2
	.uleb128	.Ll193-.Ll192
	.byte	5
	.uleb128	6
	.byte	13
# [2973:10]
	.byte	2
	.uleb128	.Ll194-.Ll193
	.byte	5
	.uleb128	10
	.byte	14
# [2974:10]
	.byte	2
	.uleb128	.Ll195-.Ll194
	.byte	13
# [2975:10]
	.byte	2
	.uleb128	.Ll196-.Ll195
	.byte	13
# [2977:7]
	.byte	2
	.uleb128	.Ll197-.Ll196
	.byte	5
	.uleb128	7
	.byte	14
# [2976:9]
	.byte	2
	.uleb128	.Ll198-.Ll197
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	-1
	.byte	1
# [2978:16]
	.byte	2
	.uleb128	.Ll199-.Ll198
	.byte	5
	.uleb128	16
	.byte	14
# [2981:20]
	.byte	2
	.uleb128	.Ll200-.Ll199
	.byte	5
	.uleb128	20
	.byte	15
# [2982:1]
	.byte	2
	.uleb128	.Ll201-.Ll200
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll202
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_ISPIXELFORMAT_INDEXED$LONGWORD$$BOOLEAN
# [2985:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll203
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2984
	.byte	1
# [2986:13]
	.byte	2
	.uleb128	.Ll204-.Ll203
	.byte	5
	.uleb128	13
	.byte	13
# [2987:10]
	.byte	2
	.uleb128	.Ll205-.Ll204
	.byte	5
	.uleb128	10
	.byte	13
# [2988:10]
	.byte	2
	.uleb128	.Ll206-.Ll205
	.byte	13
# [2989:10]
	.byte	2
	.uleb128	.Ll207-.Ll206
	.byte	13
# [2990:1]
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
# function: SDL2_$$_SDL_ISPIXELFORMAT_ALPHA$LONGWORD$$BOOLEAN
# [2993:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll210
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	2992
	.byte	1
# [2994:13]
	.byte	2
	.uleb128	.Ll211-.Ll210
	.byte	5
	.uleb128	13
	.byte	13
# [2995:10]
	.byte	2
	.uleb128	.Ll212-.Ll211
	.byte	5
	.uleb128	10
	.byte	13
# [2996:10]
	.byte	2
	.uleb128	.Ll213-.Ll212
	.byte	13
# [2997:10]
	.byte	2
	.uleb128	.Ll214-.Ll213
	.byte	13
# [2998:10]
	.byte	2
	.uleb128	.Ll215-.Ll214
	.byte	13
# [2999:1]
	.byte	2
	.uleb128	.Ll216-.Ll215
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll217
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_ISPIXELFORMAT_FOURCC$LONGWORD$$BOOLEAN
# [3002:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll218
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	3001
	.byte	1
# [3003:20]
	.byte	2
	.uleb128	.Ll219-.Ll218
	.byte	5
	.uleb128	20
	.byte	13
# [3004:1]
	.byte	2
	.uleb128	.Ll220-.Ll219
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll221
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_RECTEMPTY$PSDL_RECT$$LONGBOOL
# [3010:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll222
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	3009
	.byte	1
# [3011:8]
	.byte	2
	.uleb128	.Ll223-.Ll222
	.byte	5
	.uleb128	8
	.byte	13
# [3012:1]
	.byte	2
	.uleb128	.Ll224-.Ll223
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll225
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_RECTEQUALS$PSDL_RECT$PSDL_RECT$$LONGBOOL
# [3015:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll226
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	3014
	.byte	1
# [3016:8]
	.byte	2
	.uleb128	.Ll227-.Ll226
	.byte	5
	.uleb128	8
	.byte	13
# [3017:1]
	.byte	2
	.uleb128	.Ll228-.Ll227
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll229
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_MUSTLOCK$PSDL_SURFACE$$BOOLEAN
# [3023:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll230
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	3022
	.byte	1
# [3024:11]
	.byte	2
	.uleb128	.Ll231-.Ll230
	.byte	5
	.uleb128	11
	.byte	13
# [3025:1]
	.byte	2
	.uleb128	.Ll232-.Ll231
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll233
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_LOADBMP$PCHAR$$PSDL_SURFACE
# [3028:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll234
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	3027
	.byte	1
# [3029:49]
	.byte	2
	.uleb128	.Ll235-.Ll234
	.byte	5
	.uleb128	49
	.byte	13
# [3030:1]
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
# function: SDL2_$$_SDL_SAVEBMP$PSDL_SURFACE$PCHAR$$LONGINT
# [3033:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll238
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	3032
	.byte	1
# [3034:58]
	.byte	2
	.uleb128	.Ll239-.Ll238
	.byte	5
	.uleb128	58
	.byte	13
# [3035:1]
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
# function: SDL2_$$_SDL_BLITSURFACE$PSDL_SURFACE$PSDL_RECT$PSDL_SURFACE$PSDL_RECT$$LONGINT
# [3038:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll242
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	3037
	.byte	1
# [3039:8]
	.byte	2
	.uleb128	.Ll243-.Ll242
	.byte	5
	.uleb128	8
	.byte	13
# [3040:1]
	.byte	2
	.uleb128	.Ll244-.Ll243
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll245
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_BLITSCALED$PSDL_SURFACE$PSDL_RECT$PSDL_SURFACE$PSDL_RECT$$LONGINT
# [3043:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll246
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	3042
	.byte	1
# [3044:8]
	.byte	2
	.uleb128	.Ll247-.Ll246
	.byte	5
	.uleb128	8
	.byte	13
# [3045:1]
	.byte	2
	.uleb128	.Ll248-.Ll247
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll249
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_GAMECONTROLLERADDMAPPINGSFROMFILE$PCHAR$$LONGINT
# [3051:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll250
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	3050
	.byte	1
# [3052:70]
	.byte	2
	.uleb128	.Ll251-.Ll250
	.byte	5
	.uleb128	70
	.byte	13
# [3053:1]
	.byte	2
	.uleb128	.Ll252-.Ll251
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll253
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_QUITREQUESTED$$BOOLEAN
# [3059:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll254
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	3058
	.byte	1
# [3060:3]
	.byte	2
	.uleb128	.Ll255-.Ll254
	.byte	5
	.uleb128	3
	.byte	13
# [3061:8]
	.byte	2
	.uleb128	.Ll256-.Ll255
	.byte	5
	.uleb128	8
	.byte	13
# [3062:1]
	.byte	2
	.uleb128	.Ll257-.Ll256
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll258
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SDL2_$$_SDL_GETEVENTSTATE$LONGWORD$$BYTE
# [3065:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll259
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	3064
	.byte	1
# [3066:8]
	.byte	2
	.uleb128	.Ll260-.Ll259
	.byte	5
	.uleb128	8
	.byte	13
# [3067:1]
	.byte	2
	.uleb128	.Ll261-.Ll260
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll262
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

