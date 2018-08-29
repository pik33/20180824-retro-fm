	.file "synthcontrol.pas"
# Begin asmlist al_begin

.section .debug_line
.Ldebug_linesection0:
.Ldebug_line0:

.section .debug_abbrev
.Ldebug_abbrevsection0:
.Ldebug_abbrev0:

.section .text.b_DEBUGSTART_$SYNTHCONTROL,"x"
.globl	DEBUGSTART_$SYNTHCONTROL
DEBUGSTART_$SYNTHCONTROL:
# End asmlist al_begin
# Begin asmlist al_procedures

.section .text.n_synthcontrol$_$tsynthctrl_$__$$_create$boolean$$tsynthctrl,"x"
	.balign 16,0x90
.globl	SYNTHCONTROL$_$TSYNTHCTRL_$__$$_CREATE$BOOLEAN$$TSYNTHCTRL
SYNTHCONTROL$_$TSYNTHCTRL_$__$$_CREATE$BOOLEAN$$TSYNTHCTRL:
.Lc1:
.seh_proc SYNTHCONTROL$_$TSYNTHCTRL_$__$$_CREATE$BOOLEAN$$TSYNTHCTRL
.Ll1:
# [synthcontrol.pas]
# [65] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc3:
.Lc4:
	movq	%rsp,%rbp
.Lc5:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var CreateSuspended located at rbp-8, size=OS_8
# Var $vmt located at rbp-16, size=OS_64
# Var $self located at rbp-24, size=OS_64
	movq	%rcx,-24(%rbp)
	movq	%rdx,-16(%rbp)
	movb	%r8b,-8(%rbp)
.Ll2:
	cmpq	$1,-16(%rbp)
	jne	.Lj6
	movq	-24(%rbp),%rax
	movq	-24(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-24(%rbp)
.Lj6:
	cmpq	$0,-24(%rbp)
	je	.Lj3
.Lj18:
.Ll3:
# [68] end;
	nop
.Lj17:
.Ll4:
# [66] FreeOnTerminate := True;
	movq	-24(%rbp),%rax
	movb	$1,17(%rax)
.Ll5:
# [67] inherited Create(CreateSuspended);
	movzbl	-8(%rbp),%r8d
	movq	-24(%rbp),%rcx
	movq	$4194304,%r9
	movq	$0,%rdx
	call	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$QWORD$$TTHREAD
.Ll6:
	cmpq	$0,-24(%rbp)
	je	.Lj15
	cmpq	$0,-16(%rbp)
	je	.Lj15
	movq	-24(%rbp),%rcx
	movq	-24(%rbp),%rax
	movq	(%rax),%rax
	call	*136(%rax)
	jmp	.Lj15
.Lj14:
	cmpq	$0,-16(%rbp)
	je	.Lj36
	movq	-24(%rbp),%rcx
	movq	$-1,%rdx
	movq	-24(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
.Lj36:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj41:
	nop
.Lj15:
.Lj3:
	movq	-24(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj17
	.rva	.Lj14
	.rva	.Lj15

.section .text.n_synthcontrol$_$tsynthctrl_$__$$_create$boolean$$tsynthctrl,"x"
.seh_endproc
.Lc2:
.Lt7:
.Ll7:

.section .text.n_synthcontrol_$$_deallocatechannel$longint,"x"
	.balign 16,0x90
.globl	SYNTHCONTROL_$$_DEALLOCATECHANNEL$LONGINT
SYNTHCONTROL_$$_DEALLOCATECHANNEL$LONGINT:
.Lc6:
# Var channel located in register eax
.Ll8:
# [73] begin
	movl	%ecx,%eax
.Ll9:
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rdx
# PeepHole Optimization,var2a
.Ll10:
# [74] channels[channel]:=-$7FFFFFFFFFFFFFFF+abs(channels[channel]);
	movl	%eax,%ecx
	movq	(%rdx,%rcx,8),%r8
	movq	%r8,%rcx
	negq	%rcx
	cmovnsq	%rcx,%r8
	movq	$-9223372036854775807,%rcx
	addq	%rcx,%r8
	andl	$4294967295,%eax
	movq	%r8,(%rdx,%rax,8)
.Ll11:
# [75] end;
	ret
.Lc7:
.Lt3:
.Ll12:

.section .text.n_synthcontrol$_$tsynthctrl_$_execute_$$_fin$2,"x"
	.balign 16,0x90
SYNTHCONTROL$_$TSYNTHCTRL_$_EXECUTE_$$_fin$2:
.Lc8:
.seh_proc SYNTHCONTROL$_$TSYNTHCTRL_$_EXECUTE_$$_fin$2
.Ll13:
# [85] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc10:
.Lc11:
	movq	%rcx,%rbp
.Lc12:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
# Var $parentfp located in register rbp
.seh_endprologue
.Ll14:
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc9:
.Lt1:
.Ll15:

.section .text.n_synthcontrol$_$tsynthctrl_$__$$_execute,"x"
	.balign 16,0x90
.globl	SYNTHCONTROL$_$TSYNTHCTRL_$__$$_EXECUTE
SYNTHCONTROL$_$TSYNTHCTRL_$__$$_EXECUTE:
.Lc13:
# Temps allocated between rbp-96 and rbp+0
.seh_proc SYNTHCONTROL$_$TSYNTHCTRL_$__$$_EXECUTE
.Ll16:
	pushq	%rbp
.seh_pushreg %rbp
.Lc15:
.Lc16:
	movq	%rsp,%rbp
.Lc17:
	leaq	-176(%rsp),%rsp
.seh_stackalloc 176
# Var $self located in register rax
# Var md located in register edi
# Var aa located in register r15d
# Var aaa located in register r14d
# Var aaaa located in register r12d
# Var f located in register eax
# Var i located in register esi
# Var ch located in register r13d
# Var key located in register ebx
	movq	%rbx,-96(%rbp)
	movq	%rdi,-88(%rbp)
	movq	%rsi,-80(%rbp)
	movq	%r12,-72(%rbp)
	movq	%r13,-64(%rbp)
	movq	%r14,-56(%rbp)
	movq	%r15,-48(%rbp)
.seh_savereg %rbx, 80
.seh_savereg %rdi, 88
.seh_savereg %rsi, 96
.seh_savereg %r12, 104
.seh_savereg %r13, 112
.seh_savereg %r14, 120
.seh_savereg %r15, 128
.seh_endprologue
	movq	%rcx,-24(%rbp)
.Ll17:
	movq	$0,-8(%rbp)
.Lj56:
	nop
.Lj52:
.Ll18:
# [86] for i:=0 to maxchannel-1 do channels[i]:=0;
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj59:
	addl	$1,%esi
# PeepHole Optimization,var2a
	movl	%esi,%eax
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rdx
	movq	$0,(%rdx,%rax,8)
	cmpl	$2,%esi
	jl	.Lj59
.Ll19:
# [87] for i:=0 to 127 do notes[i]:=maxchannel;
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj64:
	addl	$1,%esi
# PeepHole Optimization,var2a
	movl	%esi,%eax
	leaq	U_$SYNTHCONTROL_$$_NOTES(%rip),%rdx
	movl	$3,(%rdx,%rax,4)
	cmpl	$127,%esi
	jl	.Lj64
	.balign 8,0x90
.Lj67:
.Ll20:
# [91] key:=readkeybuffer;
	call	RETRO_$$_READKEYBUFFER$$LONGWORD
	movl	%eax,%ebx
.Ll21:
# [94] if key=32 then testvoice.operators[0].adsrstate:=1;
	cmpl	$32,%ebx
	jne	.Lj73
	movq	U_$RETRO_$$_TESTVOICE(%rip),%rax
	movq	8(%rax),%rax
	movl	$1,284(%rax)
.Lj73:
.Ll22:
# [95] if key=32+$10000 then testvoice.operators[0].adsrstate:=5;
	cmpl	$65568,%ebx
	jne	.Lj77
	movq	U_$RETRO_$$_TESTVOICE(%rip),%rax
	movq	8(%rax),%rax
	movl	$5,284(%rax)
.Lj77:
.Ll23:
# [96] if key<>$FFFFFFFF then
	cmpl	$4294967295,%ebx
	je	.Lj81
.Ll24:
# [98] if key<$10000 then
	cmpl	$65536,%ebx
	jnb	.Lj83
.Ll25:
# [100] key:=key and 255;
	movl	%ebx,%eax
	andl	$255,%eax
	movl	%eax,%ebx
.Ll26:
# [101] blit($F000000,100,432,$F000000,100,400,100,160,1792,1792);
	movl	$1792,72(%rsp)
	movl	$1792,64(%rsp)
	movl	$160,56(%rsp)
	movl	$100,48(%rsp)
	movl	$400,40(%rsp)
	movl	$100,32(%rsp)
	movl	$251658240,%eax
	movl	$432,%r8d
	movl	$100,%edx
	movl	$251658240,%ecx
	movl	%eax,%r9d
	call	RETRO_$$_BLIT$crc5A667533
.Ll27:
# [102] box(100,560,100,32,0);
	movl	$0,32(%rsp)
	movl	$32,%eax
	movl	$100,%r8d
	movl	$560,%edx
	movl	$100,%ecx
	movl	%eax,%r9d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll28:
# [103] outtextxyz (100,560,inttostr(key),15,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
# PeepHole Optimization,var2a
	movl	%ebx,%edx
	leaq	-8(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	movq	-8(%rbp),%rax
	movl	$15,%r8d
	movl	$560,%edx
	movl	$100,%ecx
	movl	%r8d,%r9d
	movq	%rax,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# PeepHole Optimization,var2a
.Ll29:
# [104] key:=keymap2[key];
	movl	%ebx,%edx
	leaq	TC_$SYNTHCONTROL_$$_KEYMAP2(%rip),%rax
	movzbl	(%rax,%rdx,1),%eax
	movl	%eax,%ebx
.Ll30:
# [105] if key>0 then md:=144+key shl 8+$700000 else md:=$FFFFFFFF;
	cmpl	$0,%ebx
	jna	.Lj135
	movl	%ebx,%eax
	shll	$8,%eax
	leal	144(%eax),%eax
	leal	7340032(%eax),%eax
	movl	%eax,%edi
	jmp	.Lj199
.Lj135:
	movl	$4294967295,%edi
	jmp	.Lj199
.Lj83:
.Ll31:
# [109] blit($F000000,100,432,$F000000,100,400,100,160,1792,1792);
	movl	$1792,72(%rsp)
	movl	$1792,64(%rsp)
	movl	$160,56(%rsp)
	movl	$100,48(%rsp)
	movl	$400,40(%rsp)
	movl	$100,32(%rsp)
	movl	$251658240,%eax
	movl	$432,%r8d
	movl	$100,%edx
	movl	$251658240,%ecx
	movl	%eax,%r9d
	call	RETRO_$$_BLIT$crc5A667533
.Ll32:
# [110] box(100,560,100,32,0);
	movl	$0,32(%rsp)
	movl	$32,%eax
	movl	$100,%r8d
	movl	$560,%edx
	movl	$100,%ecx
	movl	%eax,%r9d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll33:
# [111] outtextxyz (100,560,inttostr(key),15,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
# PeepHole Optimization,var2a
	movl	%ebx,%edx
	leaq	-8(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	movq	-8(%rbp),%rax
	movl	$15,%r8d
	movl	$560,%edx
	movl	$100,%ecx
	movl	%r8d,%r9d
	movq	%rax,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll34:
# [112] key:=key and 255;
	movl	%ebx,%eax
	andl	$255,%eax
# PeepHole Optimization,MovMov2Mov1
	movl	%eax,%ebx
.Ll35:
# [113] key:=keymap2[key];
	andl	$4294967295,%eax
	leaq	TC_$SYNTHCONTROL_$$_KEYMAP2(%rip),%rdx
	movzbl	(%rdx,%rax,1),%eax
	movl	%eax,%ebx
.Ll36:
# [114] if key>0 then md:=144+key shl 8 else md:=$FFFFFFFF;
	cmpl	$0,%ebx
	jna	.Lj193
	movl	%ebx,%eax
	shll	$8,%eax
	leal	144(%eax),%eax
	movl	%eax,%edi
	jmp	.Lj199
.Lj193:
	movl	$4294967295,%edi
.Ll37:
# [116] goto p101;
	jmp	.Lj199
.Lj81:
.Ll38:
# [119] md:=readbuffer;
	call	MIDI_$$_READBUFFER$$LONGWORD
	movl	%eax,%edi
.Lj199:
.Ll39:
# [122] if md<>$FFFFFFFF then
	cmpl	$4294967295,%edi
	je	.Lj203
.Ll40:
# [124] aa:=md and $FF;
	movl	%edi,%eax
	andl	$255,%eax
	movl	%eax,%r15d
.Ll41:
# [125] aaa:=(md and $FF00) shr 8;
	movl	%edi,%eax
	andl	$65280,%eax
	shrl	$8,%eax
	movl	%eax,%r14d
.Ll42:
# [126] aaaa:=(md and $FF0000) shr 16 ;
	movl	%edi,%eax
	andl	$16711680,%eax
	shrl	$16,%eax
	movl	%eax,%r12d
.Ll43:
# [127] midireceived:=0;
	movl	$0,U_$MIDI_$$_MIDIRECEIVED(%rip)
# PeepHole Optimization,var2a
.Ll44:
# [128] f:=round(7493*power(2,(aaa-69)/12));
	movl	%r14d,%eax
	leaq	-69(%rax),%rax
	cvtsi2sd	%rax,%xmm1
	mulsd	_$SYNTHCONTROL$_Ld2(%rip),%xmm1
	movsd	_$SYNTHCONTROL$_Ld3(%rip),%xmm0
	call	MATH_$$_POWER$DOUBLE$DOUBLE$$DOUBLE
	mulsd	_$SYNTHCONTROL$_Ld1(%rip),%xmm0
	cvtsd2siq	%xmm0,%rdx
	movl	%edx,%eax
	movq	%rax,-16(%rbp)
.Ll45:
# [129] if (aa=144) and (aaaa>0) then
	cmpl	$144,%r15d
	jne	.Lj219
	cmpl	$0,%r12d
	jna	.Lj219
.Ll46:
# [131] ch:=allocatechannel(1);
	movl	$1,%ecx
	call	SYNTHCONTROL_$$_ALLOCATECHANNEL$LONGINT$$LONGINT
	movl	%eax,%r13d
.Ll47:
# [132] if ch<maxchannel then
	cmpl	$3,%r13d
	jnl	.Lj226
.Ll48:
# [134] for i:=0 to 127 do if notes[i]=ch then notes[i]:=maxchannel;
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj229:
	addl	$1,%esi
# PeepHole Optimization,var2a
	movl	%esi,%eax
	leaq	U_$SYNTHCONTROL_$$_NOTES(%rip),%rdx
	movl	(%rdx,%rax,4),%eax
	cmpl	%r13d,%eax
	jne	.Lj231
# PeepHole Optimization,var2a
	movl	%esi,%eax
	leaq	U_$SYNTHCONTROL_$$_NOTES(%rip),%rdx
	movl	$3,(%rdx,%rax,4)
.Lj231:
	cmpl	$127,%esi
	jl	.Lj229
# PeepHole Optimization,var2a
.Ll49:
# [135] notes[aaa]:=ch;
	movl	%r14d,%edx
	leaq	U_$SYNTHCONTROL_$$_NOTES(%rip),%rax
	movl	%r13d,(%rax,%rdx,4)
.Ll50:
# [136] noteon(ch,aaa,aaaa,0);
	movl	%r12d,%eax
	movl	%r14d,%edx
	movl	%r13d,%ecx
	movl	$0,%r9d
	movl	%eax,%r8d
	call	SYNTHCONTROL_$$_NOTEON$LONGINT$LONGINT$LONGINT$LONGINT
.Lj226:
.Lj219:
.Ll51:
# [139] if (aa=144) and (aaaa=0) then
	cmpl	$144,%r15d
	jne	.Lj245
	testl	%r12d,%r12d
	jne	.Lj245
.Ll52:
# [141] i:=-1;
	movl	$-1,%esi
# PeepHole Optimization,var2a
.Ll53:
# [142] ch:=notes[aaa];
	movl	%r14d,%eax
	leaq	U_$SYNTHCONTROL_$$_NOTES(%rip),%rdx
	movl	(%rdx,%rax,4),%r13d
.Ll54:
# [143] noteoff(ch,aaa);
	movl	%r14d,%edx
	movl	%r13d,%ecx
	call	SYNTHCONTROL_$$_NOTEOFF$LONGINT$LONGINT
.Ll55:
# [144] deallocatechannel(ch);
	movl	%r13d,%ecx
	call	SYNTHCONTROL_$$_DEALLOCATECHANNEL$LONGINT
# PeepHole Optimization,var2a
.Ll56:
# [145] notes[aaa]:=maxchannel;
	movl	%r14d,%eax
	leaq	U_$SYNTHCONTROL_$$_NOTES(%rip),%rdx
	movl	$3,(%rdx,%rax,4)
.Lj245:
.Ll57:
# [148] blit($F000000,300,396,$F000000,300,300,300,96,1792,1792);
	movl	$1792,72(%rsp)
	movl	$1792,64(%rsp)
	movl	$96,56(%rsp)
	movl	$300,48(%rsp)
	movl	$300,40(%rsp)
	movl	$300,32(%rsp)
	movl	$251658240,%eax
	movl	$396,%r8d
	movl	$300,%edx
	movl	$251658240,%ecx
	movl	%eax,%r9d
	call	RETRO_$$_BLIT$crc5A667533
.Ll58:
# [149] box(300,396,300,96,0);
	movl	$0,32(%rsp)
	movl	$96,%eax
	movl	$300,%r8d
	movl	$396,%edx
	movl	$300,%ecx
	movl	%eax,%r9d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll59:
# [150] outtextxyz(300,396,inttostr(aa),15,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
# PeepHole Optimization,var2a
	movl	%r15d,%edx
	leaq	-8(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	movq	-8(%rbp),%rax
	movl	$15,%r8d
	movl	$396,%edx
	movl	$300,%ecx
	movl	%r8d,%r9d
	movq	%rax,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll60:
# [151] outtextxyz(300,428,inttostr(aaa),15,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
# PeepHole Optimization,var2a
	movl	%r14d,%edx
	leaq	-8(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	movq	-8(%rbp),%rax
	movl	$15,%r8d
	movl	$428,%edx
	movl	$300,%ecx
	movl	%r8d,%r9d
	movq	%rax,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll61:
# [152] outtextxyz(300,460,inttostr(aaaa),15,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
# PeepHole Optimization,var2a
	movl	%r12d,%edx
	leaq	-8(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	movq	-8(%rbp),%rax
	movl	$15,%r8d
	movl	$460,%edx
	movl	$300,%ecx
	movl	%r8d,%r9d
	movq	%rax,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj203:
.Ll62:
# [156] sleep(1)
	movl	$1,%ecx
	call	CLASSES$_$TTHREAD_$__$$_SLEEP$LONGWORD
.Ll63:
# [157] until terminated;
	movq	-24(%rbp),%rax
	cmpb	$0,16(%rax)
	je	.Lj67
.Lj339:
.Ll64:
	nop
.Lj53:
	movq	%rbp,%rcx
	call	SYNTHCONTROL$_$TSYNTHCTRL_$_EXECUTE_$$_fin$2
.Ll65:
# [158] end;
	movq	-96(%rbp),%rbx
	movq	-88(%rbp),%rdi
	movq	-80(%rbp),%rsi
	movq	-72(%rbp),%r12
	movq	-64(%rbp),%r13
	movq	-56(%rbp),%r14
	movq	-48(%rbp),%r15
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj52
	.rva	.Lj53
	.rva	SYNTHCONTROL$_$TSYNTHCTRL_$_EXECUTE_$$_fin$2

.section .text.n_synthcontrol$_$tsynthctrl_$__$$_execute,"x"
.seh_endproc
.Lc14:
.Lt6:
.Ll66:

.section .text.n_synthcontrol_$$_allocatechannel$longint$$longint,"x"
	.balign 16,0x90
.globl	SYNTHCONTROL_$$_ALLOCATECHANNEL$LONGINT$$LONGINT
SYNTHCONTROL_$$_ALLOCATECHANNEL$LONGINT$$LONGINT:
.Lc18:
.seh_proc SYNTHCONTROL_$$_ALLOCATECHANNEL$LONGINT$$LONGINT
.Ll67:
# [172] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	leaq	-32(%rsp),%rsp
.Lc20:
.seh_stackalloc 32
# Var mode located in register ebx
# Var $result located in register r13d
# Var i located in register esi
# Var q located in register edi
# Var f located in register r12
.seh_endprologue
	movl	%ecx,%ebx
# Var i located in register esi
.Ll68:
# [173] i:=0;
	movl	$0,%esi
.Ll69:
# [174] while i<maxchannel do if channels[i]=0 then goto p101 else i+=1;
	jmp	.Lj347
	.balign 8,0x90
.Lj346:
# PeepHole Optimization,var2a
	movl	%esi,%eax
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rdx
	cmpq	$0,(%rdx,%rax,8)
	je	.Lj351
	leal	1(%esi),%eax
	movl	%eax,%esi
.Lj347:
	cmpl	$3,%esi
	jl	.Lj346
.Ll70:
# [175] while i<maxchannel do if channels[i]<0 then goto p101 else i+=1;
	jmp	.Lj356
	.balign 8,0x90
.Lj355:
# PeepHole Optimization,var2a
	movl	%esi,%eax
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rdx
	cmpq	$0,(%rdx,%rax,8)
	jl	.Lj351
	leal	1(%esi),%eax
	movl	%eax,%esi
.Lj356:
	cmpl	$3,%esi
	jl	.Lj355
.Lj351:
.Ll71:
# [178] if i<maxchannel then
	cmpl	$3,%esi
	jnl	.Lj364
.Ll72:
# [180] result:=i;
	movl	%esi,%r13d
.Ll73:
# [181] channels[i]:=gettime;
	call	RETRO_$$_GETTIME$$INT64
# PeepHole Optimization,var2a
	movl	%esi,%edx
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rcx
	movq	%rax,(%rcx,%rdx,8)
	jmp	.Lj369
.Lj364:
.Ll74:
# [183] else if (i=maxchannel) and (mode=0) then
	cmpl	$3,%esi
	jne	.Lj371
	testl	%ebx,%ebx
	jne	.Lj371
.Ll75:
# [185] result:=maxchannel;
	movl	$3,%r13d
	jmp	.Lj375
.Lj371:
.Ll76:
# [189] i:=0;
	movl	$0,%esi
.Ll77:
# [190] f:=channels[0];
	movq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%r12
.Ll78:
# [191] q:=0;
	movl	$0,%edi
.Ll79:
# [192] while i<maxchannel do
	jmp	.Lj383
	.balign 8,0x90
.Lj382:
# PeepHole Optimization,var2a
.Ll80:
# [194] if channels[i]<f then
	movl	%esi,%eax
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	cmpq	%r12,%rax
	jnl	.Lj386
# PeepHole Optimization,var2a
.Ll81:
# [196] f:=channels[i];
	movl	%esi,%eax
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rdx
	movq	(%rdx,%rax,8),%r12
.Ll82:
# [197] q:=i;
	movl	%esi,%edi
.Lj386:
.Ll83:
# [199] i+=1;
	leal	1(%esi),%eax
	movl	%eax,%esi
.Lj383:
.Ll84:
	cmpl	$3,%esi
	jl	.Lj382
.Ll85:
# [201] result:=q;
	movl	%edi,%r13d
.Ll86:
# [202] channels[q]:=gettime;
	call	RETRO_$$_GETTIME$$INT64
# PeepHole Optimization,var2a
	movl	%edi,%edx
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rcx
	movq	%rax,(%rcx,%rdx,8)
.Lj375:
.Lj369:
.Ll87:
# [204] end;
	movl	%r13d,%eax
	nop
	leaq	32(%rsp),%rsp
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc19:
.Lt2:
.Ll88:

.section .text.n_synthcontrol_$$_noteon$longint$longint$longint$longint,"x"
	.balign 16,0x90
.globl	SYNTHCONTROL_$$_NOTEON$LONGINT$LONGINT$LONGINT$LONGINT
SYNTHCONTROL_$$_NOTEON$LONGINT$LONGINT$LONGINT$LONGINT:
.Lc21:
.seh_proc SYNTHCONTROL_$$_NOTEON$LONGINT$LONGINT$LONGINT$LONGINT
.Ll89:
# [213] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	pushq	%r14
.seh_pushreg %r14
	leaq	-40(%rsp),%rsp
.Lc23:
.seh_stackalloc 40
# Var channel located in register ebx
# Var note located in register esi
# Var velocity located in register edi
# Var preset located in register r12d
# Var base located in register r13d
# Var f located in register r14d
.seh_endprologue
	movl	%ecx,%ebx
	movl	%edx,%esi
	movl	%r8d,%edi
	movl	%r9d,%r12d
.Ll90:
# [214] if (channel>=maxchannel) or (channel<0) then goto p999;
	cmpl	$3,%ebx
	jge	.Lj402
	cmpl	$0,%ebx
	jl	.Lj402
.Ll91:
# [215] base:=channel*7;
	imull	$7,%ebx,%eax
	movl	%eax,%r13d
.Ll92:
# [216] f:=round(7493*power(2,(note-69)/12));
	movslq	%esi,%rax
	leaq	-69(%rax),%rax
	cvtsi2sd	%rax,%xmm1
	mulsd	_$SYNTHCONTROL$_Ld2(%rip),%xmm1
	movsd	_$SYNTHCONTROL$_Ld3(%rip),%xmm0
	call	MATH_$$_POWER$DOUBLE$DOUBLE$$DOUBLE
	mulsd	_$SYNTHCONTROL$_Ld1(%rip),%xmm0
	cvtsd2siq	%xmm0,%rax
	movl	%eax,%r14d
.Ll93:
# [218] poke(base+$d400,f and 255);
	movl	%r14d,%edx
# PeepHole Optimization,var1
# PeepHole Optimization,var9
	andl	$255,%edx
	leal	54272(%r13d),%ecx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll94:
# [219] poke(base+$d401,f shr 8);
	movl	%r14d,%edx
	shrl	$8,%edx
# PeepHole Optimization,var9
	andl	$255,%edx
	leal	54273(%r13d),%ecx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll95:
# [220] poke(base+$d402,0);
	leal	54274(%r13d),%ecx
	movl	$0,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll96:
# [221] poke(base+$D403,8);
	leal	54275(%r13d),%ecx
	movl	$8,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll97:
# [222] poke(base+$d405,$18);
	leal	54277(%r13d),%ecx
	movl	$24,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll98:
# [223] poke(base+$d406,$8+(velocity shl 1) and $F0);
	movl	%edi,%eax
	shll	$1,%eax
	andl	$240,%eax
	leal	8(%eax),%edx
# PeepHole Optimization,var9
	andl	$255,%edx
	leal	54278(%r13d),%ecx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll99:
# [224] poke($d418,$0f);
	movl	$15,%edx
	movl	$54296,%ecx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll100:
# [225] poke(base+$d404,$41);
	leal	54276(%r13d),%ecx
	movl	$65,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Lj402:
.Ll101:
# [227] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc22:
.Lt4:
.Ll102:

.section .text.n_synthcontrol_$$_noteoff$longint$longint,"x"
	.balign 16,0x90
.globl	SYNTHCONTROL_$$_NOTEOFF$LONGINT$LONGINT
SYNTHCONTROL_$$_NOTEOFF$LONGINT$LONGINT:
.Lc24:
.seh_proc SYNTHCONTROL_$$_NOTEOFF$LONGINT$LONGINT
.Ll103:
# [234] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-32(%rsp),%rsp
.Lc26:
.seh_stackalloc 32
# Var channel located in register ebx
# Var note located in register esi
# Var base located in register edi
.seh_endprologue
	movl	%ecx,%ebx
	movl	%edx,%esi
.Ll104:
# [235] if (channel>=maxchannel) or (channel<0) then goto p999;
	cmpl	$3,%ebx
	jge	.Lj448
	cmpl	$0,%ebx
	jl	.Lj448
.Ll105:
# [236] base:=channel*7;
	imull	$7,%ebx,%eax
	movl	%eax,%edi
.Ll106:
# [237] poke(base+$d404,$40);
	leal	54276(%edi),%ecx
	movl	$64,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Lj448:
.Ll107:
# [239] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc25:
.Lt5:
.Ll108:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 8
# [22] var channels:array[0..maxchannel-1] of int64;
	.globl U_$SYNTHCONTROL_$$_CHANNELS
U_$SYNTHCONTROL_$$_CHANNELS:
	.zero 24

.section .bss
	.balign 4
# [23] notes:array[0..127] of integer;
	.globl U_$SYNTHCONTROL_$$_NOTES
U_$SYNTHCONTROL_$$_NOTES:
	.zero 512

.section .data.n_VMT_$SYNTHCONTROL_$$_TSYNTHCTRL,"d"
	.balign 8
.globl	VMT_$SYNTHCONTROL_$$_TSYNTHCTRL
VMT_$SYNTHCONTROL_$$_TSYNTHCTRL:
	.quad	88,-88
	.quad	VMT_$CLASSES_$$_TTHREAD
	.quad	.Ld4
	.quad	0,0,0
	.quad	RTTI_$SYNTHCONTROL_$$_TSYNTHCTRL
	.quad	0,0
	.quad	FPC_EMPTYINTF
	.quad	0
	.quad	CLASSES$_$TTHREAD_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.quad	FPC_EMPTYMETHOD
	.quad	CLASSES$_$TTHREAD_$__$$_AFTERCONSTRUCTION
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	SYSTEM$_$TOBJECT_$__$$_DISPATCH$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_DISPATCHSTR$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_EQUALS$TOBJECT$$BOOLEAN
	.quad	SYSTEM$_$TOBJECT_$__$$_GETHASHCODE$$INT64
	.quad	SYSTEM$_$TOBJECT_$__$$_TOSTRING$$ANSISTRING
	.quad	CLASSES$_$TTHREAD_$__$$_DOTERMINATE
	.quad	SYNTHCONTROL$_$TSYNTHCTRL_$__$$_EXECUTE
	.quad	0
# [243] 
	.balign 8
.Ld4:
	.byte	10
	.ascii	"TSynthCtrl"
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .data.n_tc_$synthcontrol_$$_keymap2,"d"
.globl	TC_$SYNTHCONTROL_$$_KEYMAP2
TC_$SYNTHCONTROL_$$_KEYMAP2:
	.byte	0,0,0,0,49,57,53,0,0,54,56,58,79,0,61,63,60,59,81,83,67,72,51,74,77,55,69,52,76,50,66,68,0,0,73,75,0,78,80,0,0,0
	.byte	87,0,72,94,74,76,92,0,78,80,82,0,85,87,0,90,88,75,0,0,0,0,0,0,0,0,0,0,100,101,102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,95
	.byte	0,96,0,0,0,0,67,64,63,81,0,66,68,89,70,0,73,71,69,91,93,77,83,61,84,88,65,79,62,86,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,59,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
# [55] function allocatechannel(mode:integer):integer;

.section .rodata.n__$SYNTHCONTROL$_Ld1,"d"
	.balign 8
.globl	_$SYNTHCONTROL$_Ld1
_$SYNTHCONTROL$_Ld1:
# value: 0d+7.4930000000000000E+003
	.byte	0,0,0,0,0,69,189,64

.section .rodata.n__$SYNTHCONTROL$_Ld2,"d"
	.balign 8
.globl	_$SYNTHCONTROL$_Ld2
_$SYNTHCONTROL$_Ld2:
# value: 0d+8.3333333333333329E-002
	.byte	85,85,85,85,85,85,181,63

.section .rodata.n__$SYNTHCONTROL$_Ld3,"d"
	.balign 8
.globl	_$SYNTHCONTROL$_Ld3
_$SYNTHCONTROL$_Ld3:
# value: 0d+2.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,64
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .data.n_INIT_$SYNTHCONTROL_$$_TSYNTHCTRL,"d"
	.balign 8
.globl	INIT_$SYNTHCONTROL_$$_TSYNTHCTRL
INIT_$SYNTHCONTROL_$$_TSYNTHCTRL:
	.byte	15,10
	.ascii	"TSynthCtrl"
	.long	8,0

.section .data.n_RTTI_$SYNTHCONTROL_$$_TSYNTHCTRL,"d"
	.balign 8
.globl	RTTI_$SYNTHCONTROL_$$_TSYNTHCTRL
RTTI_$SYNTHCONTROL_$$_TSYNTHCTRL:
	.byte	15,10
	.ascii	"TSynthCtrl"
	.quad	VMT_$SYNTHCONTROL_$$_TSYNTHCTRL
	.quad	RTTI_$CLASSES_$$_TTHREAD
	.short	0
	.byte	12
	.ascii	"synthcontrol"
	.short	0
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc27:
	.long	.Lc29-.Lc28
.Lc28:
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
.Lc29:
	.long	.Lc31-.Lc30
.Lc30:
	.secrel32	.Lc27
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
.Lc31:
	.long	.Lc33-.Lc32
.Lc32:
	.secrel32	.Lc27
	.quad	.Lc6
	.quad	.Lc7-.Lc6
	.balign 4,0
.Lc33:
	.long	.Lc35-.Lc34
.Lc34:
	.secrel32	.Lc27
	.quad	.Lc8
	.quad	.Lc9-.Lc8
	.byte	4
	.long	.Lc10-.Lc8
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc11-.Lc10
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc12-.Lc11
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc35:
	.long	.Lc37-.Lc36
.Lc36:
	.secrel32	.Lc27
	.quad	.Lc13
	.quad	.Lc14-.Lc13
	.byte	4
	.long	.Lc15-.Lc13
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc16-.Lc15
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc17-.Lc16
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc37:
	.long	.Lc39-.Lc38
.Lc38:
	.secrel32	.Lc27
	.quad	.Lc18
	.quad	.Lc19-.Lc18
	.byte	4
	.long	.Lc20-.Lc18
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc39:
	.long	.Lc41-.Lc40
.Lc40:
	.secrel32	.Lc27
	.quad	.Lc21
	.quad	.Lc22-.Lc21
	.byte	4
	.long	.Lc23-.Lc21
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc41:
	.long	.Lc43-.Lc42
.Lc42:
	.secrel32	.Lc27
	.quad	.Lc24
	.quad	.Lc25-.Lc24
	.byte	4
	.long	.Lc26-.Lc24
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc43:
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
# [63] constructor TSynthCtrl.Create(CreateSuspended : boolean);
	.ascii	"synthcontrol.pas\000"
	.ascii	"Free Pascal 3.0.4 2017/12/03\000"
	.ascii	"D:/Programowanie/20180824 retro-fm/\000"
	.byte	9
	.byte	3
	.secrel32	.Ldebug_line0
	.quad	DEBUGSTART_$SYNTHCONTROL
	.quad	DEBUGEND_$SYNTHCONTROL
# Syms - Begin unit SYNTHCONTROL has index 17
# Symbol SYNTHCONTROL
# Symbol SYSTEM
# Symbol OBJPAS
# Symbol CLASSES
# Symbol SYSUTILS
# Symbol MATH
# Symbol MAXCHANNEL
	.uleb128	2
	.ascii	"MAXCHANNEL\000"
	.long	.La1-.Ldebug_info0
	.uleb128	3
# Symbol TSYNTHCTRL
# Symbol CHANNELS
	.uleb128	3
	.ascii	"CHANNELS\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$SYNTHCONTROL_$$_CHANNELS
	.long	.La6-.Ldebug_info0
# Symbol NOTES
	.uleb128	3
	.ascii	"NOTES\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$SYNTHCONTROL_$$_NOTES
	.long	.La8-.Ldebug_info0
# Symbol KEYMAP2
	.uleb128	3
	.ascii	"KEYMAP2\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$SYNTHCONTROL_$$_KEYMAP2
	.long	.La10-.Ldebug_info0
# Symbol ALLOCATECHANNEL
# Symbol DEALLOCATECHANNEL
# Symbol NOTEON
# Symbol NOTEOFF
# Syms - End unit SYNTHCONTROL has index 17
# Syms - Begin Staticsymtable
# Symbol RETRO
# Symbol MIDI
# Symbol FMSYNTH
# Symbol SYNTHCONTROL_$$_init$
# Syms - End Staticsymtable
# Procdef $fin$2(<^untyped>) is nested;
	.uleb128	4
	.ascii	"fin$2\000"
	.byte	1
	.byte	65
	.quad	SYNTHCONTROL$_$TSYNTHCTRL_$_EXECUTE_$$_fin$2
	.quad	.Lt1
# Symbol parentfp
	.uleb128	5
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La12-.Ldebug_info0
	.byte	0
# Procdef allocatechannel(LongInt):LongInt;
	.uleb128	6
	.ascii	"ALLOCATECHANNEL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
	.quad	SYNTHCONTROL_$$_ALLOCATECHANNEL$LONGINT$$LONGINT
	.quad	.Lt2
# Symbol MODE
	.uleb128	5
	.ascii	"MODE\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La14-.Ldebug_info0
# Symbol result
	.uleb128	7
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La14-.Ldebug_info0
# Symbol ALLOCATECHANNEL
	.uleb128	7
	.ascii	"ALLOCATECHANNEL\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La14-.Ldebug_info0
# Symbol RESULT
	.uleb128	7
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La14-.Ldebug_info0
# Symbol P101
# Symbol I
	.uleb128	7
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La14-.Ldebug_info0
# Symbol Q
	.uleb128	7
	.ascii	"Q\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La14-.Ldebug_info0
# Symbol F
	.uleb128	7
	.ascii	"F\000"
	.byte	2
	.byte	144
	.uleb128	12
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef deallocatechannel(LongInt);
	.uleb128	8
	.ascii	"DEALLOCATECHANNEL\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	SYNTHCONTROL_$$_DEALLOCATECHANNEL$LONGINT
	.quad	.Lt3
# Symbol CHANNEL
	.uleb128	5
	.ascii	"CHANNEL\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La14-.Ldebug_info0
	.byte	0
# Procdef noteon(LongInt;LongInt;LongInt;LongInt);
	.uleb128	8
	.ascii	"NOTEON\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	SYNTHCONTROL_$$_NOTEON$LONGINT$LONGINT$LONGINT$LONGINT
	.quad	.Lt4
# Symbol CHANNEL
	.uleb128	5
	.ascii	"CHANNEL\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La14-.Ldebug_info0
# Symbol NOTE
	.uleb128	5
	.ascii	"NOTE\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La14-.Ldebug_info0
# Symbol VELOCITY
	.uleb128	5
	.ascii	"VELOCITY\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La14-.Ldebug_info0
# Symbol PRESET
	.uleb128	5
	.ascii	"PRESET\000"
	.byte	2
	.byte	144
	.uleb128	12
	.long	.La14-.Ldebug_info0
# Symbol P999
# Symbol BASE
	.uleb128	7
	.ascii	"BASE\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La14-.Ldebug_info0
# Symbol F
	.uleb128	7
	.ascii	"F\000"
	.byte	2
	.byte	144
	.uleb128	14
	.long	.La14-.Ldebug_info0
	.byte	0
# Procdef noteoff(LongInt;LongInt);
	.uleb128	8
	.ascii	"NOTEOFF\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	SYNTHCONTROL_$$_NOTEOFF$LONGINT$LONGINT
	.quad	.Lt5
# Symbol CHANNEL
	.uleb128	5
	.ascii	"CHANNEL\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La14-.Ldebug_info0
# Symbol NOTE
	.uleb128	5
	.ascii	"NOTE\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La14-.Ldebug_info0
# Symbol P999
# Symbol BASE
	.uleb128	7
	.ascii	"BASE\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La14-.Ldebug_info0
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition ShortInt
.La1:
	.uleb128	9
	.ascii	"SHORTINT\000"
	.long	.La18-.Ldebug_info0
.La18:
	.uleb128	10
	.ascii	"SHORTINT\000"
	.byte	5
	.byte	1
.La2:
	.uleb128	11
	.long	.La1-.Ldebug_info0
# Definition LongInt
.La14:
	.uleb128	9
	.ascii	"LONGINT\000"
	.long	.La19-.Ldebug_info0
.La19:
	.uleb128	10
	.ascii	"LONGINT\000"
	.byte	5
	.byte	4
.La15:
	.uleb128	11
	.long	.La14-.Ldebug_info0
# Definition Int64
.La16:
	.uleb128	9
	.ascii	"INT64\000"
	.long	.La20-.Ldebug_info0
.La20:
	.uleb128	10
	.ascii	"Int64\000"
	.byte	5
	.byte	8
.La17:
	.uleb128	11
	.long	.La16-.Ldebug_info0
# Definition ^untyped
.La12:
	.uleb128	9
	.ascii	"parentfp_void_pointer\000"
	.long	.La21-.Ldebug_info0
.La21:
	.uleb128	12
.La13:
	.uleb128	11
	.long	.La12-.Ldebug_info0
# Defs - End unit SYSTEM has index 1
# Defs - Begin unit OBJPAS has index 6
# Defs - End unit OBJPAS has index 6
# Defs - Begin unit RTLCONSTS has index 24
# Defs - End unit RTLCONSTS has index 24
# Defs - Begin unit WINDOWS has index 5
# Defs - End unit WINDOWS has index 5
# Defs - Begin unit SYSCONST has index 27
# Defs - End unit SYSCONST has index 27
# Defs - Begin unit WINDIRS has index 28
# Defs - End unit WINDIRS has index 28
# Defs - Begin unit SYSUTILS has index 23
# Defs - End unit SYSUTILS has index 23
# Defs - Begin unit MATH has index 29
# Defs - End unit MATH has index 29
# Defs - Begin unit TYPES has index 25
# Defs - End unit TYPES has index 25
# Defs - Begin unit TYPINFO has index 26
# Defs - End unit TYPINFO has index 26
# Defs - Begin unit CLASSES has index 22
# Defs - End unit CLASSES has index 22
# Defs - Begin unit SDL2 has index 254
# Defs - End unit SDL2 has index 254
# Defs - Begin unit CRT has index 255
# Defs - End unit CRT has index 255
# Defs - Begin unit UNIT6502 has index 13
# Defs - End unit UNIT6502 has index 13
# Defs - Begin unit MMSYSTEM has index 256
# Defs - End unit MMSYSTEM has index 256
# Defs - Begin unit MIDI has index 15
# Defs - End unit MIDI has index 15
# Defs - Begin unit FMSYNTH has index 18
# Defs - End unit FMSYNTH has index 18
# Defs - Begin unit CONTNRS has index 85
# Defs - End unit CONTNRS has index 85
# Defs - Begin unit LAZUTILSSTRCONSTS has index 46
# Defs - End unit LAZUTILSSTRCONSTS has index 46
# Defs - Begin unit FPCADDS has index 21
# Defs - End unit FPCADDS has index 21
# Defs - Begin unit GETTEXT has index 30
# Defs - End unit GETTEXT has index 30
# Defs - Begin unit LAZUTF8 has index 19
# Defs - End unit LAZUTF8 has index 19
# Defs - Begin unit MASKS has index 156
# Defs - End unit MASKS has index 156
# Defs - Begin unit VARUTILS has index 53
# Defs - End unit VARUTILS has index 53
# Defs - Begin unit VARIANTS has index 51
# Defs - End unit VARIANTS has index 51
# Defs - Begin unit CTYPES has index 52
# Defs - End unit CTYPES has index 52
# Defs - Begin unit ACTIVEX has index 48
# Defs - End unit ACTIVEX has index 48
# Defs - Begin unit SHELLAPI has index 49
# Defs - End unit SHELLAPI has index 49
# Defs - Begin unit COMMCTRL has index 50
# Defs - End unit COMMCTRL has index 50
# Defs - Begin unit SHLOBJ has index 47
# Defs - End unit SHLOBJ has index 47
# Defs - Begin unit LAZFILEUTILS has index 41
# Defs - End unit LAZFILEUTILS has index 41
# Defs - Begin unit STRUTILS has index 157
# Defs - End unit STRUTILS has index 157
# Defs - Begin unit FILEUTIL has index 151
# Defs - End unit FILEUTIL has index 151
# Defs - Begin unit SINGLEINSTANCE has index 188
# Defs - End unit SINGLEINSTANCE has index 188
# Defs - Begin unit CUSTAPP has index 184
# Defs - End unit CUSTAPP has index 184
# Defs - Begin unit LCLSTRCONSTS has index 45
# Defs - End unit LCLSTRCONSTS has index 45
# Defs - Begin unit LCLTYPE has index 32
# Defs - End unit LCLTYPE has index 32
# Defs - Begin unit LAZ_AVL_TREE has index 40
# Defs - End unit LAZ_AVL_TREE has index 40
# Defs - Begin unit LAZMETHODLIST has index 42
# Defs - End unit LAZMETHODLIST has index 42
# Defs - Begin unit LAZUTF8CLASSES has index 43
# Defs - End unit LAZUTF8CLASSES has index 43
# Defs - Begin unit LAZCLASSES has index 55
# Defs - End unit LAZCLASSES has index 55
# Defs - Begin unit LAZLOGGERBASE has index 54
# Defs - End unit LAZLOGGERBASE has index 54
# Defs - Begin unit LAZLOGGER has index 44
# Defs - End unit LAZLOGGER has index 44
# Defs - Begin unit LCLPROC has index 33
# Defs - End unit LCLPROC has index 33
# Defs - Begin unit LAZUTF16 has index 150
# Defs - End unit LAZUTF16 has index 150
# Defs - Begin unit GRAPHTYPE has index 36
# Defs - End unit GRAPHTYPE has index 36
# Defs - Begin unit MESSAGES has index 56
# Defs - End unit MESSAGES has index 56
# Defs - Begin unit LMESSAGES has index 34
# Defs - End unit LMESSAGES has index 34
# Defs - Begin unit FPIMAGE has index 31
# Defs - End unit FPIMAGE has index 31
# Defs - Begin unit LCLPLATFORMDEF has index 35
# Defs - End unit LCLPLATFORMDEF has index 35
# Defs - Begin unit GRAPHMATH has index 37
# Defs - End unit GRAPHMATH has index 37
# Defs - Begin unit FPIMGCMN has index 67
# Defs - End unit FPIMGCMN has index 67
# Defs - Begin unit BMPCOMN has index 59
# Defs - End unit BMPCOMN has index 59
# Defs - Begin unit FPREADBMP has index 57
# Defs - End unit FPREADBMP has index 57
# Defs - Begin unit FPWRITEBMP has index 58
# Defs - End unit FPWRITEBMP has index 58
# Defs - Begin unit PNGCOMN has index 68
# Defs - End unit PNGCOMN has index 68
# Defs - Begin unit ZBASE has index 70
# Defs - End unit ZBASE has index 70
# Defs - Begin unit STRINGS has index 4
# Defs - End unit STRINGS has index 4
# Defs - Begin unit DOS has index 72
# Defs - End unit DOS has index 72
# Defs - Begin unit CRC has index 73
# Defs - End unit CRC has index 73
# Defs - Begin unit TREES has index 76
# Defs - End unit TREES has index 76
# Defs - Begin unit ADLER has index 77
# Defs - End unit ADLER has index 77
# Defs - Begin unit ZDEFLATE has index 74
# Defs - End unit ZDEFLATE has index 74
# Defs - Begin unit INFUTIL has index 79
# Defs - End unit INFUTIL has index 79
# Defs - Begin unit INFFAST has index 82
# Defs - End unit INFFAST has index 82
# Defs - Begin unit INFCODES has index 80
# Defs - End unit INFCODES has index 80
# Defs - Begin unit INFTREES has index 81
# Defs - End unit INFTREES has index 81
# Defs - Begin unit INFBLOCK has index 78
# Defs - End unit INFBLOCK has index 78
# Defs - Begin unit ZINFLATE has index 75
# Defs - End unit ZINFLATE has index 75
# Defs - Begin unit GZIO has index 71
# Defs - End unit GZIO has index 71
# Defs - Begin unit ZSTREAM has index 69
# Defs - End unit ZSTREAM has index 69
# Defs - Begin unit FPREADPNG has index 60
# Defs - End unit FPREADPNG has index 60
# Defs - Begin unit FPWRITEPNG has index 61
# Defs - End unit FPWRITEPNG has index 61
# Defs - Begin unit FPTIFFCMN has index 64
# Defs - End unit FPTIFFCMN has index 64
# Defs - Begin unit FPREADTIFF has index 62
# Defs - End unit FPREADTIFF has index 62
# Defs - Begin unit FPWRITETIFF has index 63
# Defs - End unit FPWRITETIFF has index 63
# Defs - Begin unit LCLVERSION has index 65
# Defs - End unit LCLVERSION has index 65
# Defs - Begin unit ICNSTYPES has index 66
# Defs - End unit ICNSTYPES has index 66
# Defs - Begin unit CLIPPING has index 95
# Defs - End unit CLIPPING has index 95
# Defs - Begin unit FPCANVAS has index 86
# Defs - End unit FPCANVAS has index 86
# Defs - Begin unit FPREADPNM has index 87
# Defs - End unit FPREADPNM has index 87
# Defs - Begin unit FPWRITEPNM has index 88
# Defs - End unit FPWRITEPNM has index 88
# Defs - Begin unit JDEFERR has index 101
# Defs - End unit JDEFERR has index 101
# Defs - Begin unit JMORECFG has index 100
# Defs - End unit JMORECFG has index 100
# Defs - Begin unit JPEGLIB has index 96
# Defs - End unit JPEGLIB has index 96
# Defs - Begin unit JINCLUDE has index 102
# Defs - End unit JINCLUDE has index 102
# Defs - Begin unit JCOMAPI has index 107
# Defs - End unit JCOMAPI has index 107
# Defs - Begin unit JERROR has index 103
# Defs - End unit JERROR has index 103
# Defs - Begin unit JUTILS has index 108
# Defs - End unit JUTILS has index 108
# Defs - Begin unit JMEMNOBS has index 109
# Defs - End unit JMEMNOBS has index 109
# Defs - Begin unit JMEMMGR has index 104
# Defs - End unit JMEMMGR has index 104
# Defs - Begin unit JDMARKER has index 105
# Defs - End unit JDMARKER has index 105
# Defs - Begin unit JDINPUT has index 106
# Defs - End unit JDINPUT has index 106
# Defs - Begin unit JDAPIMIN has index 97
# Defs - End unit JDAPIMIN has index 97
# Defs - Begin unit JDATASRC has index 98
# Defs - End unit JDATASRC has index 98
# Defs - Begin unit JDCOLOR has index 111
# Defs - End unit JDCOLOR has index 111
# Defs - Begin unit JDSAMPLE has index 112
# Defs - End unit JDSAMPLE has index 112
# Defs - Begin unit JDPOSTCT has index 113
# Defs - End unit JDPOSTCT has index 113
# Defs - Begin unit JDCT has index 122
# Defs - End unit JDCT has index 122
# Defs - Begin unit JIDCTFST has index 123
# Defs - End unit JIDCTFST has index 123
# Defs - Begin unit JIDCTINT has index 124
# Defs - End unit JIDCTINT has index 124
# Defs - Begin unit JIDCTFLT has index 125
# Defs - End unit JIDCTFLT has index 125
# Defs - Begin unit JIDCTRED has index 126
# Defs - End unit JIDCTRED has index 126
# Defs - Begin unit JDDCTMGR has index 114
# Defs - End unit JDDCTMGR has index 114
# Defs - Begin unit JDHUFF has index 116
# Defs - End unit JDHUFF has index 116
# Defs - Begin unit JDPHUFF has index 115
# Defs - End unit JDPHUFF has index 115
# Defs - Begin unit JDCOEFCT has index 117
# Defs - End unit JDCOEFCT has index 117
# Defs - Begin unit JQUANT2 has index 120
# Defs - End unit JQUANT2 has index 120
# Defs - Begin unit JDMAINCT has index 118
# Defs - End unit JDMAINCT has index 118
# Defs - Begin unit JQUANT1 has index 119
# Defs - End unit JQUANT1 has index 119
# Defs - Begin unit JDMERGE has index 121
# Defs - End unit JDMERGE has index 121
# Defs - Begin unit JDMASTER has index 110
# Defs - End unit JDMASTER has index 110
# Defs - Begin unit JDAPISTD has index 99
# Defs - End unit JDAPISTD has index 99
# Defs - Begin unit FPREADJPEG has index 89
# Defs - End unit FPREADJPEG has index 89
# Defs - Begin unit JCMARKER has index 132
# Defs - End unit JCMARKER has index 132
# Defs - Begin unit JCAPIMIN has index 128
# Defs - End unit JCAPIMIN has index 128
# Defs - Begin unit JCHUFF has index 134
# Defs - End unit JCHUFF has index 134
# Defs - Begin unit JCPHUFF has index 133
# Defs - End unit JCPHUFF has index 133
# Defs - Begin unit JCMASTER has index 135
# Defs - End unit JCMASTER has index 135
# Defs - Begin unit JCCOLOR has index 136
# Defs - End unit JCCOLOR has index 136
# Defs - Begin unit JCSAMPLE has index 137
# Defs - End unit JCSAMPLE has index 137
# Defs - Begin unit JCPREPCT has index 138
# Defs - End unit JCPREPCT has index 138
# Defs - Begin unit JFDCTINT has index 142
# Defs - End unit JFDCTINT has index 142
# Defs - Begin unit JFDCTFST has index 143
# Defs - End unit JFDCTFST has index 143
# Defs - Begin unit JFDCTFLT has index 144
# Defs - End unit JFDCTFLT has index 144
# Defs - Begin unit JCDCTMGR has index 139
# Defs - End unit JCDCTMGR has index 139
# Defs - Begin unit JCCOEFCT has index 140
# Defs - End unit JCCOEFCT has index 140
# Defs - Begin unit JCMAINCT has index 141
# Defs - End unit JCMAINCT has index 141
# Defs - Begin unit JCINIT has index 131
# Defs - End unit JCINIT has index 131
# Defs - Begin unit JCAPISTD has index 127
# Defs - End unit JCAPISTD has index 127
# Defs - Begin unit JDATADST has index 129
# Defs - End unit JDATADST has index 129
# Defs - Begin unit JCPARAM has index 130
# Defs - End unit JCPARAM has index 130
# Defs - Begin unit FPWRITEJPEG has index 90
# Defs - End unit FPWRITEJPEG has index 90
# Defs - Begin unit FPREADGIF has index 91
# Defs - End unit FPREADGIF has index 91
# Defs - Begin unit LAZDBGLOG has index 148
# Defs - End unit LAZDBGLOG has index 148
# Defs - Begin unit AVGLVLTREE has index 147
# Defs - End unit AVGLVLTREE has index 147
# Defs - Begin unit LAZCONFIGSTORAGE has index 145
# Defs - End unit LAZCONFIGSTORAGE has index 145
# Defs - Begin unit DYNQUEUE has index 146
# Defs - End unit DYNQUEUE has index 146
# Defs - Begin unit LRESOURCES has index 92
# Defs - End unit LRESOURCES has index 92
# Defs - Begin unit WSREFERENCES has index 94
# Defs - End unit WSREFERENCES has index 94
# Defs - Begin unit SYNCOBJS has index 149
# Defs - End unit SYNCOBJS has index 149
# Defs - Begin unit LCLRESCACHE has index 93
# Defs - End unit LCLRESCACHE has index 93
# Defs - Begin unit GRAPHICS has index 83
# Defs - End unit GRAPHICS has index 83
# Defs - Begin unit INTFGRAPHICS has index 38
# Defs - End unit INTFGRAPHICS has index 38
# Defs - Begin unit TMSCHEMA has index 155
# Defs - End unit TMSCHEMA has index 155
# Defs - Begin unit THEMES has index 39
# Defs - End unit THEMES has index 39
# Defs - Begin unit INTERFACEBASE has index 20
# Defs - End unit INTERFACEBASE has index 20
# Defs - Begin unit PIPES has index 159
# Defs - End unit PIPES has index 159
# Defs - Begin unit PROCESS has index 158
# Defs - End unit PROCESS has index 158
# Defs - Begin unit UTF8PROCESS has index 152
# Defs - End unit UTF8PROCESS has index 152
# Defs - Begin unit LAZUTF8SYSUTILS has index 153
# Defs - End unit LAZUTF8SYSUTILS has index 153
# Defs - Begin unit MAPS has index 154
# Defs - End unit MAPS has index 154
# Defs - Begin unit LCLINTF has index 84
# Defs - End unit LCLINTF has index 84
# Defs - Begin unit WSLCLCLASSES has index 178
# Defs - End unit WSLCLCLASSES has index 178
# Defs - Begin unit LCLCLASSES has index 177
# Defs - End unit LCLCLASSES has index 177
# Defs - Begin unit RTTIUTILS has index 182
# Defs - End unit RTTIUTILS has index 182
# Defs - Begin unit PROPERTYSTORAGE has index 175
# Defs - End unit PROPERTYSTORAGE has index 175
# Defs - Begin unit WSFACTORY has index 181
# Defs - End unit WSFACTORY has index 181
# Defs - Begin unit WSCONTROLS has index 190
# Defs - End unit WSCONTROLS has index 190
# Defs - Begin unit CONTROLS has index 163
# Defs - End unit CONTROLS has index 163
# Defs - Begin unit WSPROC has index 180
# Defs - End unit WSPROC has index 180
# Defs - Begin unit WSIMGLIST has index 179
# Defs - End unit WSIMGLIST has index 179
# Defs - Begin unit IMGLIST has index 174
# Defs - End unit IMGLIST has index 174
# Defs - Begin unit ACTNLIST has index 176
# Defs - End unit ACTNLIST has index 176
# Defs - Begin unit WSMENUS has index 183
# Defs - End unit WSMENUS has index 183
# Defs - Begin unit MENUS has index 167
# Defs - End unit MENUS has index 167
# Defs - Begin unit CUSTOMTIMER has index 185
# Defs - End unit CUSTOMTIMER has index 185
# Defs - Begin unit FASTHTMLPARSER has index 189
# Defs - End unit FASTHTMLPARSER has index 189
# Defs - Begin unit CLIPBRD has index 186
# Defs - End unit CLIPBRD has index 186
# Defs - Begin unit HELPINTFS has index 187
# Defs - End unit HELPINTFS has index 187
# Defs - Begin unit WSFORMS has index 191
# Defs - End unit WSFORMS has index 191
# Defs - Begin unit FORMS has index 9
# Defs - End unit FORMS has index 9
# Defs - Begin unit TEXTSTRINGS has index 193
# Defs - End unit TEXTSTRINGS has index 193
# Defs - Begin unit EXTENDEDSTRINGS has index 194
# Defs - End unit EXTENDEDSTRINGS has index 194
# Defs - Begin unit WSSTDCTRLS has index 195
# Defs - End unit WSSTDCTRLS has index 195
# Defs - Begin unit STDCTRLS has index 166
# Defs - End unit STDCTRLS has index 166
# Defs - Begin unit IMAGELISTCACHE has index 192
# Defs - End unit IMAGELISTCACHE has index 192
# Defs - Begin unit WSBUTTONS has index 196
# Defs - End unit WSBUTTONS has index 196
# Defs - Begin unit BUTTONS has index 164
# Defs - End unit BUTTONS has index 164
# Defs - Begin unit POPUPNOTIFIER has index 200
# Defs - End unit POPUPNOTIFIER has index 200
# Defs - Begin unit FGL has index 201
# Defs - End unit FGL has index 201
# Defs - Begin unit WSEXTCTRLS has index 202
# Defs - End unit WSEXTCTRLS has index 202
# Defs - Begin unit EXTCTRLS has index 198
# Defs - End unit EXTCTRLS has index 198
# Defs - Begin unit BUTTONPANEL has index 197
# Defs - End unit BUTTONPANEL has index 197
# Defs - Begin unit LCLTASKDIALOG has index 199
# Defs - End unit LCLTASKDIALOG has index 199
# Defs - Begin unit WSDIALOGS has index 203
# Defs - End unit WSDIALOGS has index 203
# Defs - Begin unit DIALOGS has index 165
# Defs - End unit DIALOGS has index 165
# Defs - Begin unit UMAIN has index 11
# Defs - End unit UMAIN has index 11
# Defs - Begin unit UNIT65032 has index 14
# Defs - End unit UNIT65032 has index 14
# Defs - Begin unit SYNTHCONTROL has index 17
# Definition TSynthCtrl
.La3:
	.uleb128	9
	.ascii	"TSYNTHCTRL\000"
	.long	.La22-.Ldebug_info0
.La22:
	.uleb128	13
	.long	.La5-.Ldebug_info0
.La5:
	.uleb128	14
	.ascii	"TSYNTHCTRL\000"
	.uleb128	88
	.uleb128	15
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La25-.Ldebug_info0
# Procdef Execute(<TSynthCtrl>);
	.uleb128	16
	.ascii	"EXECUTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	208
	.byte	34
	.byte	2
	.quad	SYNTHCONTROL$_$TSYNTHCTRL_$__$$_EXECUTE
	.quad	.Lt6
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	0
	.byte	1
	.long	.La3-.Ldebug_info0
# Symbol P101
# Symbol MD
	.uleb128	7
	.ascii	"MD\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La26-.Ldebug_info0
# Symbol AA
	.uleb128	7
	.ascii	"AA\000"
	.byte	2
	.byte	144
	.uleb128	15
	.long	.La26-.Ldebug_info0
# Symbol AAA
	.uleb128	7
	.ascii	"AAA\000"
	.byte	2
	.byte	144
	.uleb128	14
	.long	.La26-.Ldebug_info0
# Symbol AAAA
	.uleb128	7
	.ascii	"AAAA\000"
	.byte	2
	.byte	144
	.uleb128	12
	.long	.La26-.Ldebug_info0
# Symbol F
	.uleb128	7
	.ascii	"F\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La26-.Ldebug_info0
# Symbol I
	.uleb128	7
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La14-.Ldebug_info0
# Symbol CH
	.uleb128	7
	.ascii	"CH\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La14-.Ldebug_info0
# Symbol KEY
	.uleb128	7
	.ascii	"KEY\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La26-.Ldebug_info0
# Symbol fin$2
	.byte	0
# Procdef constructor Create(<TSynthCtrl>;<Pointer>;Boolean);
	.uleb128	6
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La3-.Ldebug_info0
	.quad	SYNTHCONTROL$_$TSYNTHCTRL_$__$$_CREATE$BOOLEAN$$TSYNTHCTRL
	.quad	.Lt7
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.byte	1
	.long	.La3-.Ldebug_info0
# Symbol vmt
	.uleb128	5
	.ascii	"vmt\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La28-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	5
	.ascii	"CREATESUSPENDED\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La30-.Ldebug_info0
	.byte	0
	.byte	0
.La4:
	.uleb128	11
	.long	.La3-.Ldebug_info0
# Definition Array[0..2] Of Int64
.La6:
	.uleb128	18
	.uleb128	24
	.long	.La16-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	2
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.byte	0
.La7:
	.uleb128	11
	.long	.La6-.Ldebug_info0
# Definition Array[0..127] Of LongInt
.La8:
	.uleb128	18
	.uleb128	512
	.long	.La14-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	127
	.uleb128	4
	.long	.La1-.Ldebug_info0
	.byte	0
.La9:
	.uleb128	11
	.long	.La8-.Ldebug_info0
# Definition Array[0..255] Of Byte
.La10:
	.uleb128	18
	.uleb128	256
	.long	.La32-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	255
	.uleb128	1
	.long	.La32-.Ldebug_info0
	.byte	0
.La11:
	.uleb128	11
	.long	.La10-.Ldebug_info0
# Defs - End unit SYNTHCONTROL has index 17
# Defs - Begin unit RETRO has index 12
# Defs - End unit RETRO has index 12
# Defs - Begin unit SYNTHCONTROL has index 17
# Defs - End unit SYNTHCONTROL has index 17
# Defs - Begin Staticsymtable
# Defs - End Staticsymtable
# Definition TThread
.La23:
	.uleb128	9
	.ascii	"TTHREAD\000"
	.long	.La34-.Ldebug_info0
.La34:
	.uleb128	13
	.long	.La25-.Ldebug_info0
.La25:
	.uleb128	14
	.ascii	"TTHREAD\000"
	.uleb128	88
	.uleb128	15
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La37-.Ldebug_info0
	.uleb128	20
	.ascii	"FHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	20
	.ascii	"FTERMINATED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La30-.Ldebug_info0
	.uleb128	20
	.ascii	"FFREEONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	17
	.byte	3
	.long	.La30-.Ldebug_info0
	.uleb128	20
	.ascii	"FFINISHED\000"
	.byte	2
	.byte	35
	.uleb128	18
	.byte	3
	.long	.La30-.Ldebug_info0
	.uleb128	20
	.ascii	"FSUSPENDED\000"
	.byte	2
	.byte	35
	.uleb128	20
	.byte	3
	.long	.La40-.Ldebug_info0
	.uleb128	20
	.ascii	"FRETURNVALUE\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	20
	.ascii	"FONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La42-.Ldebug_info0
	.uleb128	20
	.ascii	"FFATALEXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La35-.Ldebug_info0
	.uleb128	20
	.ascii	"FEXTERNALTHREAD\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La30-.Ldebug_info0
	.uleb128	20
	.ascii	"FSYNCHRONIZEENTRY\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La44-.Ldebug_info0
	.uleb128	20
	.ascii	"FTHREADID\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	2
	.long	.La38-.Ldebug_info0
	.uleb128	20
	.ascii	"RETURNVALUE\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	20
	.ascii	"TERMINATED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La30-.Ldebug_info0
	.uleb128	20
	.ascii	"FINITIALSUSPENDED\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La30-.Ldebug_info0
	.uleb128	20
	.ascii	"FREEONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	17
	.byte	3
	.long	.La30-.Ldebug_info0
	.uleb128	20
	.ascii	"HANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	20
	.ascii	"EXTERNALTHREAD\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La30-.Ldebug_info0
	.uleb128	20
	.ascii	"FINISHED\000"
	.byte	2
	.byte	35
	.uleb128	18
	.byte	3
	.long	.La30-.Ldebug_info0
	.uleb128	20
	.ascii	"THREADID\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	2
	.long	.La38-.Ldebug_info0
	.uleb128	20
	.ascii	"ONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La42-.Ldebug_info0
	.uleb128	20
	.ascii	"FATALEXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La35-.Ldebug_info0
# Procdef class GetCurrentThread:TThread; Static;
	.uleb128	21
	.ascii	"GETCURRENTTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef class GetIsSingleProcessor:Boolean; Static;
	.uleb128	21
	.ascii	"GETISSINGLEPROCESSOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La30-.Ldebug_info0
	.byte	0
# Procdef CallOnTerminate(<TThread>);
	.uleb128	22
	.ascii	"CALLONTERMINATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef GetPriority(<TThread>):<enumeration type>;
	.uleb128	21
	.ascii	"GETPRIORITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La46-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef SetPriority(<TThread>;TThreadPriority);
	.uleb128	22
	.ascii	"SETPRIORITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
# Symbol VALUE
	.uleb128	24
	.ascii	"VALUE\000"
	.long	.La46-.Ldebug_info0
	.byte	0
# Procdef SetSuspended(<TThread>;Boolean);
	.uleb128	22
	.ascii	"SETSUSPENDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
# Symbol VALUE
	.uleb128	24
	.ascii	"VALUE\000"
	.long	.La30-.Ldebug_info0
	.byte	0
# Procdef GetSuspended(<TThread>):Boolean;
	.uleb128	21
	.ascii	"GETSUSPENDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La30-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef InitSynchronizeEvent(<TThread>);
	.uleb128	22
	.ascii	"INITSYNCHRONIZEEVENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef DoneSynchronizeEvent(<TThread>);
	.uleb128	22
	.ascii	"DONESYNCHRONIZEEVENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef SysCreate(<TThread>;Boolean;const QWord);
	.uleb128	22
	.ascii	"SYSCREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	24
	.ascii	"CREATESUSPENDED\000"
	.long	.La30-.Ldebug_info0
# Symbol STACKSIZE
	.uleb128	24
	.ascii	"STACKSIZE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SysDestroy(<TThread>);
	.uleb128	22
	.ascii	"SYSDESTROY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef DoTerminate(<TThread>);
	.uleb128	25
	.ascii	"DOTERMINATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	200
	.byte	34
	.byte	2
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef Execute(<TThread>);
	.uleb128	25
	.ascii	"EXECUTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	208
	.byte	34
	.byte	2
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef Synchronize(<TThread>;TThreadMethod);
	.uleb128	22
	.ascii	"SYNCHRONIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	24
	.ascii	"AMETHOD\000"
	.long	.La48-.Ldebug_info0
	.byte	0
# Procdef Queue(<TThread>;TThreadMethod);
	.uleb128	22
	.ascii	"QUEUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	24
	.ascii	"AMETHOD\000"
	.long	.La48-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TThread>;<Pointer>;Boolean;const QWord="4194304");
	.uleb128	26
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La23-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La28-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	24
	.ascii	"CREATESUSPENDED\000"
	.long	.La30-.Ldebug_info0
# Symbol STACKSIZE
	.uleb128	24
	.ascii	"STACKSIZE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TThread>;<Pointer>);
	.uleb128	27
	.ascii	"DESTROY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	4
	.byte	6
	.byte	16
	.uleb128	96
	.byte	34
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La28-.Ldebug_info0
	.byte	0
# Procdef class CreateAnonymousThread(TProcedure):TThread; Static;
	.uleb128	26
	.ascii	"CREATEANONYMOUSTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La23-.Ldebug_info0
# Symbol APROC
	.uleb128	24
	.ascii	"APROC\000"
	.long	.La50-.Ldebug_info0
	.byte	0
# Procdef class NameThreadForDebugging(UnicodeString;QWord="18446744073709551615"); Static;
	.uleb128	28
	.ascii	"NAMETHREADFORDEBUGGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREADNAME
	.uleb128	24
	.ascii	"ATHREADNAME\000"
	.long	.La52-.Ldebug_info0
# Symbol ATHREADID
	.uleb128	24
	.ascii	"ATHREADID\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef class NameThreadForDebugging(AnsiString;QWord="18446744073709551615"); Static;
	.uleb128	28
	.ascii	"NAMETHREADFORDEBUGGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREADNAME
	.uleb128	24
	.ascii	"ATHREADNAME\000"
	.long	.La54-.Ldebug_info0
# Symbol ATHREADID
	.uleb128	24
	.ascii	"ATHREADID\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef class SetReturnValue(LongInt); Static;
	.uleb128	28
	.ascii	"SETRETURNVALUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AVALUE
	.uleb128	24
	.ascii	"AVALUE\000"
	.long	.La14-.Ldebug_info0
	.byte	0
# Procdef class CheckTerminated:Boolean; Static;
	.uleb128	26
	.ascii	"CHECKTERMINATED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La30-.Ldebug_info0
	.byte	0
# Procdef class Synchronize(<Class Of TThread>;TThread;TThreadMethod);
	.uleb128	28
	.ascii	"SYNCHRONIZE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La56-.Ldebug_info0
# Symbol ATHREAD
	.uleb128	24
	.ascii	"ATHREAD\000"
	.long	.La23-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	24
	.ascii	"AMETHOD\000"
	.long	.La48-.Ldebug_info0
	.byte	0
# Procdef class Queue(TThread;TThreadMethod); Static;
	.uleb128	28
	.ascii	"QUEUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	24
	.ascii	"ATHREAD\000"
	.long	.La23-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	24
	.ascii	"AMETHOD\000"
	.long	.La48-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThread;TThreadMethod); Static;
	.uleb128	28
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	24
	.ascii	"ATHREAD\000"
	.long	.La23-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	24
	.ascii	"AMETHOD\000"
	.long	.La48-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThreadMethod); Static;
	.uleb128	28
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AMETHOD
	.uleb128	24
	.ascii	"AMETHOD\000"
	.long	.La48-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThread); Static;
	.uleb128	28
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	24
	.ascii	"ATHREAD\000"
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef class SpinWait(LongWord); Static;
	.uleb128	28
	.ascii	"SPINWAIT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AITERATIONS
	.uleb128	24
	.ascii	"AITERATIONS\000"
	.long	.La26-.Ldebug_info0
	.byte	0
# Procdef class Sleep(LongWord); Static;
	.uleb128	28
	.ascii	"SLEEP\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AMILLISECONDS
	.uleb128	24
	.ascii	"AMILLISECONDS\000"
	.long	.La26-.Ldebug_info0
	.byte	0
# Procdef class Yield; Static;
	.uleb128	28
	.ascii	"YIELD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	0
# Procdef class GetSystemTimes(out TThread.TSystemTimes); Static;
	.uleb128	28
	.ascii	"GETSYSTEMTIMES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ASYSTEMTIMES
	.uleb128	24
	.ascii	"ASYSTEMTIMES\000"
	.long	.La58-.Ldebug_info0
	.byte	0
# Procdef class GetTickCount:DWord; Static;
	.uleb128	26
	.ascii	"GETTICKCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La26-.Ldebug_info0
	.byte	0
# Procdef class GetTickCount64:QWord; Static;
	.uleb128	26
	.ascii	"GETTICKCOUNT64\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadMethod;TNotifyEvent="nil"):TThread; Static;
	.uleb128	26
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La23-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	24
	.ascii	"AMETHOD\000"
	.long	.La48-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	24
	.ascii	"AONTERMINATE\000"
	.long	.La42-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteStatusHandler;TThreadStatusNotifyEvent;TNotifyEvent="nil"):TThread; Static;
	.uleb128	26
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La23-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	24
	.ascii	"AMETHOD\000"
	.long	.La60-.Ldebug_info0
# Symbol AONSTATUS
	.uleb128	24
	.ascii	"AONSTATUS\000"
	.long	.La62-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	24
	.ascii	"AONTERMINATE\000"
	.long	.La42-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteCallBack;Pointer="nil";TNotifyCallBack="nil"):TThread; Static;
	.uleb128	26
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La23-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	24
	.ascii	"AMETHOD\000"
	.long	.La64-.Ldebug_info0
# Symbol ADATA
	.uleb128	24
	.ascii	"ADATA\000"
	.long	.La28-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	24
	.ascii	"AONTERMINATE\000"
	.long	.La66-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteStatusCallBack;TThreadStatusNotifyCallBack;Pointer="nil";TNotifyCallBack="nil"):TThread; Static;
	.uleb128	26
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La23-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	24
	.ascii	"AMETHOD\000"
	.long	.La68-.Ldebug_info0
# Symbol AONSTATUS
	.uleb128	24
	.ascii	"AONSTATUS\000"
	.long	.La70-.Ldebug_info0
# Symbol ADATA
	.uleb128	24
	.ascii	"ADATA\000"
	.long	.La28-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	24
	.ascii	"AONTERMINATE\000"
	.long	.La66-.Ldebug_info0
	.byte	0
# Procdef AfterConstruction(<TThread>);
	.uleb128	27
	.ascii	"AFTERCONSTRUCTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	136
	.byte	34
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef Start(<TThread>);
	.uleb128	28
	.ascii	"START\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef Resume(<TThread>);
	.uleb128	28
	.ascii	"RESUME\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef Suspend(<TThread>);
	.uleb128	28
	.ascii	"SUSPEND\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef Terminate(<TThread>);
	.uleb128	28
	.ascii	"TERMINATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef WaitFor(<TThread>):LongInt;
	.uleb128	26
	.ascii	"WAITFOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La23-.Ldebug_info0
	.byte	0
	.byte	0
.La24:
	.uleb128	11
	.long	.La23-.Ldebug_info0
# Definition LongWord
.La26:
	.uleb128	9
	.ascii	"LONGWORD\000"
	.long	.La72-.Ldebug_info0
.La72:
	.uleb128	10
	.ascii	"LONGWORD\000"
	.byte	7
	.byte	4
.La27:
	.uleb128	11
	.long	.La26-.Ldebug_info0
# Definition Pointer
.La28:
	.uleb128	9
	.ascii	"POINTER\000"
	.long	.La73-.Ldebug_info0
.La73:
	.uleb128	12
.La29:
	.uleb128	11
	.long	.La28-.Ldebug_info0
# Definition Boolean
.La30:
	.uleb128	9
	.ascii	"BOOLEAN\000"
	.long	.La74-.Ldebug_info0
.La74:
	.uleb128	10
	.ascii	"Boolean\000"
	.byte	2
	.byte	1
.La31:
	.uleb128	11
	.long	.La30-.Ldebug_info0
# Definition Byte
.La32:
	.uleb128	9
	.ascii	"BYTE\000"
	.long	.La75-.Ldebug_info0
.La75:
	.uleb128	10
	.ascii	"BYTE\000"
	.byte	7
	.byte	1
.La33:
	.uleb128	11
	.long	.La32-.Ldebug_info0
# Definition TObject
.La35:
	.uleb128	9
	.ascii	"TOBJECT\000"
	.long	.La76-.Ldebug_info0
.La76:
	.uleb128	13
	.long	.La37-.Ldebug_info0
.La37:
	.uleb128	14
	.ascii	"TOBJECT\000"
	.uleb128	8
	.uleb128	29
	.byte	1
	.ascii	"_vptr$TOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
# Procdef constructor Create(<TObject>;<Pointer>);
	.uleb128	26
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La35-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La28-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TObject>;<Pointer>);
	.uleb128	27
	.ascii	"DESTROY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	4
	.byte	6
	.byte	16
	.uleb128	96
	.byte	34
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La28-.Ldebug_info0
	.byte	0
# Procdef class newinstance(<Class Of TObject>):TObject;
	.uleb128	30
	.ascii	"NEWINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	4
	.byte	6
	.byte	16
	.uleb128	104
	.byte	34
	.long	.La35-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef FreeInstance(<TObject>);
	.uleb128	27
	.ascii	"FREEINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	4
	.byte	6
	.byte	16
	.uleb128	112
	.byte	34
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
	.byte	0
# Procdef SafeCallException(<TObject>;TObject;Pointer):LongInt;
	.uleb128	30
	.ascii	"SAFECALLEXCEPTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	4
	.byte	6
	.byte	16
	.uleb128	120
	.byte	34
	.long	.La79-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
# Symbol EXCEPTOBJECT
	.uleb128	24
	.ascii	"EXCEPTOBJECT\000"
	.long	.La35-.Ldebug_info0
# Symbol EXCEPTADDR
	.uleb128	24
	.ascii	"EXCEPTADDR\000"
	.long	.La28-.Ldebug_info0
	.byte	0
# Procdef DefaultHandler(<TObject>;var <Formal type>);
	.uleb128	27
	.ascii	"DEFAULTHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	128
	.byte	34
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	24
	.ascii	"MESSAGE\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef Free(<TObject>);
	.uleb128	28
	.ascii	"FREE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
	.byte	0
# Procdef class InitInstance(<Class Of TObject>;Pointer):TObject;
	.uleb128	26
	.ascii	"INITINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La35-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La83-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	24
	.ascii	"INSTANCE\000"
	.long	.La28-.Ldebug_info0
	.byte	0
# Procdef CleanupInstance(<TObject>);
	.uleb128	28
	.ascii	"CLEANUPINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
	.byte	0
# Procdef class ClassType(<Class Of TObject>):Class Of TObject;
	.uleb128	26
	.ascii	"CLASSTYPE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La85-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La87-.Ldebug_info0
	.byte	0
# Procdef class ClassInfo(<Class Of TObject>):^untyped;
	.uleb128	26
	.ascii	"CLASSINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La28-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La89-.Ldebug_info0
	.byte	0
# Procdef class ClassName(<Class Of TObject>;<var ShortString>):ShortString;
	.uleb128	26
	.ascii	"CLASSNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La91-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La93-.Ldebug_info0
# Symbol result
	.uleb128	31
	.ascii	"result\000"
	.long	.La91-.Ldebug_info0
	.byte	0
# Procdef class ClassNameIs(<Class Of TObject>;const ShortString):Boolean;
	.uleb128	26
	.ascii	"CLASSNAMEIS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La30-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La95-.Ldebug_info0
# Symbol NAME
	.uleb128	24
	.ascii	"NAME\000"
	.long	.La91-.Ldebug_info0
	.byte	0
# Procdef class ClassParent(<Class Of TObject>):Class Of TObject;
	.uleb128	26
	.ascii	"CLASSPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La85-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La97-.Ldebug_info0
	.byte	0
# Procdef class InstanceSize(<Class Of TObject>):Int64;
	.uleb128	26
	.ascii	"INSTANCESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La16-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La99-.Ldebug_info0
	.byte	0
# Procdef class InheritsFrom(<Class Of TObject>;TClass):Boolean;
	.uleb128	26
	.ascii	"INHERITSFROM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La30-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La101-.Ldebug_info0
# Symbol ACLASS
	.uleb128	24
	.ascii	"ACLASS\000"
	.long	.La85-.Ldebug_info0
	.byte	0
# Procdef class StringMessageTable(<Class Of TObject>):^TStringMessageTable;
	.uleb128	26
	.ascii	"STRINGMESSAGETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La105-.Ldebug_info0
	.byte	0
# Procdef class MethodAddress(<Class Of TObject>;const ShortString):^untyped;
	.uleb128	26
	.ascii	"METHODADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La28-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La107-.Ldebug_info0
# Symbol NAME
	.uleb128	24
	.ascii	"NAME\000"
	.long	.La91-.Ldebug_info0
	.byte	0
# Procdef class MethodName(<Class Of TObject>;<var ShortString>;Pointer):ShortString;
	.uleb128	26
	.ascii	"METHODNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La91-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La109-.Ldebug_info0
# Symbol result
	.uleb128	31
	.ascii	"result\000"
	.long	.La91-.Ldebug_info0
# Symbol ADDRESS
	.uleb128	24
	.ascii	"ADDRESS\000"
	.long	.La28-.Ldebug_info0
	.byte	0
# Procdef FieldAddress(<TObject>;const ShortString):^untyped;
	.uleb128	26
	.ascii	"FIELDADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La28-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
# Symbol NAME
	.uleb128	24
	.ascii	"NAME\000"
	.long	.La91-.Ldebug_info0
	.byte	0
# Procdef AfterConstruction(<TObject>);
	.uleb128	27
	.ascii	"AFTERCONSTRUCTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	136
	.byte	34
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
	.byte	0
# Procdef BeforeDestruction(<TObject>);
	.uleb128	27
	.ascii	"BEFOREDESTRUCTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	144
	.byte	34
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
	.byte	0
# Procdef DefaultHandlerStr(<TObject>;var <Formal type>);
	.uleb128	27
	.ascii	"DEFAULTHANDLERSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	152
	.byte	34
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	24
	.ascii	"MESSAGE\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef Dispatch(<TObject>;var <Formal type>);
	.uleb128	27
	.ascii	"DISPATCH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	160
	.byte	34
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	24
	.ascii	"MESSAGE\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef DispatchStr(<TObject>;var <Formal type>);
	.uleb128	27
	.ascii	"DISPATCHSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	168
	.byte	34
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	24
	.ascii	"MESSAGE\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	26
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La30-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
# Symbol IID
	.uleb128	24
	.ascii	"IID\000"
	.long	.La111-.Ldebug_info0
# Symbol OBJ
	.uleb128	24
	.ascii	"OBJ\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	26
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La30-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	24
	.ascii	"IIDSTR\000"
	.long	.La91-.Ldebug_info0
# Symbol OBJ
	.uleb128	24
	.ascii	"OBJ\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceByStr(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	26
	.ascii	"GETINTERFACEBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La30-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	24
	.ascii	"IIDSTR\000"
	.long	.La91-.Ldebug_info0
# Symbol OBJ
	.uleb128	24
	.ascii	"OBJ\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceWeak(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	26
	.ascii	"GETINTERFACEWEAK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La30-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
# Symbol IID
	.uleb128	24
	.ascii	"IID\000"
	.long	.La111-.Ldebug_info0
# Symbol OBJ
	.uleb128	24
	.ascii	"OBJ\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntry(<Class Of TObject>;const TGuid):^tinterfaceentry;
	.uleb128	26
	.ascii	"GETINTERFACEENTRY\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La113-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol IID
	.uleb128	24
	.ascii	"IID\000"
	.long	.La111-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntryByStr(<Class Of TObject>;const ShortString):^tinterfaceentry;
	.uleb128	26
	.ascii	"GETINTERFACEENTRYBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La113-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La117-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	24
	.ascii	"IIDSTR\000"
	.long	.La91-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceTable(<Class Of TObject>):^tinterfacetable;
	.uleb128	26
	.ascii	"GETINTERFACETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La119-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La121-.Ldebug_info0
	.byte	0
# Procdef class UnitName(<Class Of TObject>;<var AnsiString>):AnsiString;
	.uleb128	26
	.ascii	"UNITNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La54-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol result
	.uleb128	31
	.ascii	"result\000"
	.long	.La54-.Ldebug_info0
	.byte	0
# Procdef Equals(<TObject>;TObject):Boolean;
	.uleb128	30
	.ascii	"EQUALS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	176
	.byte	34
	.long	.La30-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
# Symbol OBJ
	.uleb128	24
	.ascii	"OBJ\000"
	.long	.La35-.Ldebug_info0
	.byte	0
# Procdef GetHashCode(<TObject>):Int64;
	.uleb128	30
	.ascii	"GETHASHCODE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	184
	.byte	34
	.long	.La16-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
	.byte	0
# Procdef ToString(<TObject>;<var AnsiString>):AnsiString;
	.uleb128	30
	.ascii	"TOSTRING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	192
	.byte	34
	.long	.La54-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La35-.Ldebug_info0
# Symbol result
	.uleb128	31
	.ascii	"result\000"
	.long	.La54-.Ldebug_info0
	.byte	0
	.byte	0
.La36:
	.uleb128	11
	.long	.La35-.Ldebug_info0
# Definition QWord
.La38:
	.uleb128	9
	.ascii	"QWORD\000"
	.long	.La125-.Ldebug_info0
.La125:
	.uleb128	10
	.ascii	"QWord\000"
	.byte	7
	.byte	8
.La39:
	.uleb128	11
	.long	.La38-.Ldebug_info0
# Definition LongBool
.La40:
	.uleb128	9
	.ascii	"LONGBOOL\000"
	.long	.La126-.Ldebug_info0
.La126:
	.uleb128	10
	.ascii	"LongBool\000"
	.byte	2
	.byte	4
.La41:
	.uleb128	11
	.long	.La40-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject) of object;Register>
.La42:
	.uleb128	9
	.ascii	"TNOTIFYEVENT\000"
	.long	.La127-.Ldebug_info0
.La127:
	.uleb128	32
	.byte	16
	.uleb128	33
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La128-.Ldebug_info0
	.uleb128	33
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La35-.Ldebug_info0
	.byte	0
.La128:
	.uleb128	34
	.ascii	"TNOTIFYEVENT\000"
	.byte	1
	.uleb128	24
	.ascii	"this\000"
	.long	.La28-.Ldebug_info0
	.uleb128	24
	.ascii	"SENDER\000"
	.long	.La35-.Ldebug_info0
	.byte	0
.La43:
	.uleb128	11
	.long	.La42-.Ldebug_info0
# Definition TThread.PThreadQueueEntry
.La44:
	.uleb128	9
	.ascii	"PTHREADQUEUEENTRY\000"
	.long	.La129-.Ldebug_info0
.La129:
	.uleb128	13
	.long	.La130-.Ldebug_info0
.La45:
	.uleb128	11
	.long	.La44-.Ldebug_info0
# Definition TThreadPriority
.La46:
	.uleb128	9
	.ascii	"TTHREADPRIORITY\000"
	.long	.La132-.Ldebug_info0
.La132:
	.uleb128	35
	.ascii	"TTHREADPRIORITY\000"
	.byte	4
	.uleb128	36
	.ascii	"TPIDLE\000"
	.long	0
	.uleb128	36
	.ascii	"TPLOWEST\000"
	.long	1
	.uleb128	36
	.ascii	"TPLOWER\000"
	.long	2
	.uleb128	36
	.ascii	"TPNORMAL\000"
	.long	3
	.uleb128	36
	.ascii	"TPHIGHER\000"
	.long	4
	.uleb128	36
	.ascii	"TPHIGHEST\000"
	.long	5
	.uleb128	36
	.ascii	"TPTIMECRITICAL\000"
	.long	6
	.byte	0
.La47:
	.uleb128	11
	.long	.La46-.Ldebug_info0
# Definition <procedure variable type of procedure of object;Register>
.La48:
	.uleb128	9
	.ascii	"TTHREADMETHOD\000"
	.long	.La133-.Ldebug_info0
.La133:
	.uleb128	32
	.byte	16
	.uleb128	33
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La134-.Ldebug_info0
	.uleb128	33
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La35-.Ldebug_info0
	.byte	0
.La134:
	.uleb128	34
	.ascii	"TTHREADMETHOD\000"
	.byte	1
	.uleb128	24
	.ascii	"this\000"
	.long	.La28-.Ldebug_info0
	.byte	0
.La49:
	.uleb128	11
	.long	.La48-.Ldebug_info0
# Definition <procedure variable type of procedure;Register>
.La50:
	.uleb128	9
	.ascii	"TPROCEDURE\000"
	.long	.La135-.Ldebug_info0
.La135:
	.uleb128	34
	.ascii	"TPROCEDURE\000"
	.byte	1
	.byte	0
.La51:
	.uleb128	11
	.long	.La50-.Ldebug_info0
# Definition UnicodeString
.La52:
	.uleb128	9
	.ascii	"UNICODESTRING\000"
	.long	.La136-.Ldebug_info0
.La136:
	.uleb128	13
	.long	.La137-.Ldebug_info0
.La53:
	.uleb128	11
	.long	.La52-.Ldebug_info0
# Definition AnsiString
.La54:
	.uleb128	9
	.ascii	"ANSISTRING\000"
	.long	.La139-.Ldebug_info0
.La139:
	.uleb128	13
	.long	.La140-.Ldebug_info0
.La55:
	.uleb128	11
	.long	.La54-.Ldebug_info0
# Definition TThread.Class Of TThread
.La56:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La57:
	.uleb128	11
	.long	.La56-.Ldebug_info0
# Definition TThread.TSystemTimes
.La58:
	.uleb128	9
	.ascii	"TSYSTEMTIMES\000"
	.long	.La144-.Ldebug_info0
.La144:
	.uleb128	37
	.ascii	"TSYSTEMTIMES\000"
	.uleb128	32
	.uleb128	33
	.ascii	"IDLETIME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La38-.Ldebug_info0
	.uleb128	33
	.ascii	"USERTIME\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La38-.Ldebug_info0
	.uleb128	33
	.ascii	"KERNELTIME\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La38-.Ldebug_info0
	.uleb128	33
	.ascii	"NICETIME\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La38-.Ldebug_info0
	.byte	0
.La59:
	.uleb128	11
	.long	.La58-.Ldebug_info0
# Definition <procedure variable type of procedure(TThreadReportStatus) of object;Register>
.La60:
	.uleb128	9
	.ascii	"TTHREADEXECUTESTATUSHANDLER\000"
	.long	.La145-.Ldebug_info0
.La145:
	.uleb128	32
	.byte	16
	.uleb128	33
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La146-.Ldebug_info0
	.uleb128	33
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La35-.Ldebug_info0
	.byte	0
.La146:
	.uleb128	34
	.ascii	"TTHREADEXECUTESTATUSHANDLER\000"
	.byte	1
	.uleb128	24
	.ascii	"this\000"
	.long	.La28-.Ldebug_info0
	.uleb128	24
	.ascii	"REPORTSTATUS\000"
	.long	.La147-.Ldebug_info0
	.byte	0
.La61:
	.uleb128	11
	.long	.La60-.Ldebug_info0
# Definition <procedure variable type of procedure(TThread;const AnsiString) of object;Register>
.La62:
	.uleb128	9
	.ascii	"TTHREADSTATUSNOTIFYEVENT\000"
	.long	.La149-.Ldebug_info0
.La149:
	.uleb128	32
	.byte	16
	.uleb128	33
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La150-.Ldebug_info0
	.uleb128	33
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La35-.Ldebug_info0
	.byte	0
.La150:
	.uleb128	34
	.ascii	"TTHREADSTATUSNOTIFYEVENT\000"
	.byte	1
	.uleb128	24
	.ascii	"this\000"
	.long	.La28-.Ldebug_info0
	.uleb128	24
	.ascii	"SENDER\000"
	.long	.La23-.Ldebug_info0
	.uleb128	24
	.ascii	"STATUS\000"
	.long	.La54-.Ldebug_info0
	.byte	0
.La63:
	.uleb128	11
	.long	.La62-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer);Register>
.La64:
	.uleb128	9
	.ascii	"TTHREADEXECUTECALLBACK\000"
	.long	.La151-.Ldebug_info0
.La151:
	.uleb128	34
	.ascii	"TTHREADEXECUTECALLBACK\000"
	.byte	1
	.uleb128	24
	.ascii	"ADATA\000"
	.long	.La28-.Ldebug_info0
	.byte	0
.La65:
	.uleb128	11
	.long	.La64-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;Pointer);Register>
.La66:
	.uleb128	9
	.ascii	"TNOTIFYCALLBACK\000"
	.long	.La152-.Ldebug_info0
.La152:
	.uleb128	34
	.ascii	"TNOTIFYCALLBACK\000"
	.byte	1
	.uleb128	24
	.ascii	"SENDER\000"
	.long	.La35-.Ldebug_info0
	.uleb128	24
	.ascii	"ADATA\000"
	.long	.La28-.Ldebug_info0
	.byte	0
.La67:
	.uleb128	11
	.long	.La66-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer;TThreadReportStatus);Register>
.La68:
	.uleb128	9
	.ascii	"TTHREADEXECUTESTATUSCALLBACK\000"
	.long	.La153-.Ldebug_info0
.La153:
	.uleb128	34
	.ascii	"TTHREADEXECUTESTATUSCALLBACK\000"
	.byte	1
	.uleb128	24
	.ascii	"ADATA\000"
	.long	.La28-.Ldebug_info0
	.uleb128	24
	.ascii	"REPORTSTATUS\000"
	.long	.La147-.Ldebug_info0
	.byte	0
.La69:
	.uleb128	11
	.long	.La68-.Ldebug_info0
# Definition <procedure variable type of procedure(TThread;Pointer;const AnsiString);Register>
.La70:
	.uleb128	9
	.ascii	"TTHREADSTATUSNOTIFYCALLBACK\000"
	.long	.La154-.Ldebug_info0
.La154:
	.uleb128	34
	.ascii	"TTHREADSTATUSNOTIFYCALLBACK\000"
	.byte	1
	.uleb128	24
	.ascii	"SENDER\000"
	.long	.La23-.Ldebug_info0
	.uleb128	24
	.ascii	"ADATA\000"
	.long	.La28-.Ldebug_info0
	.uleb128	24
	.ascii	"STATUS\000"
	.long	.La54-.Ldebug_info0
	.byte	0
.La71:
	.uleb128	11
	.long	.La70-.Ldebug_info0
# Definition TObject.Class Of TObject
.La77:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La78:
	.uleb128	11
	.long	.La77-.Ldebug_info0
# Definition HRESULT
.La79:
	.uleb128	9
	.ascii	"HRESULT\000"
	.long	.La155-.Ldebug_info0
.La155:
	.uleb128	10
	.ascii	"HRESULT\000"
	.byte	5
	.byte	4
.La80:
	.uleb128	11
	.long	.La79-.Ldebug_info0
# Definition <Formal type>
.La81:
	.uleb128	9
	.ascii	"formal\000"
	.long	.La156-.Ldebug_info0
.La156:
	.uleb128	10
	.ascii	"FormalDef\000"
	.byte	7
	.byte	0
.La82:
	.uleb128	11
	.long	.La81-.Ldebug_info0
# Definition TObject.Class Of TObject
.La83:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La84:
	.uleb128	11
	.long	.La83-.Ldebug_info0
# Definition TClass
.La85:
	.uleb128	9
	.ascii	"TCLASS\000"
	.long	.La157-.Ldebug_info0
.La157:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La86:
	.uleb128	11
	.long	.La85-.Ldebug_info0
# Definition TObject.Class Of TObject
.La87:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La88:
	.uleb128	11
	.long	.La87-.Ldebug_info0
# Definition TObject.Class Of TObject
.La89:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La90:
	.uleb128	11
	.long	.La89-.Ldebug_info0
# Definition ShortString
.La91:
	.uleb128	9
	.ascii	"SHORTSTRING\000"
	.long	.La158-.Ldebug_info0
.La158:
	.uleb128	37
	.ascii	"ShortString\000"
	.uleb128	256
	.uleb128	33
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La32-.Ldebug_info0
	.uleb128	33
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La159-.Ldebug_info0
	.byte	0
.La159:
	.uleb128	38
	.uleb128	256
	.uleb128	1
	.long	.La140-.Ldebug_info0
	.uleb128	39
	.uleb128	1
	.uleb128	255
	.long	.La32-.Ldebug_info0
	.byte	0
.La92:
	.uleb128	11
	.long	.La91-.Ldebug_info0
# Definition TObject.Class Of TObject
.La93:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La94:
	.uleb128	11
	.long	.La93-.Ldebug_info0
# Definition TObject.Class Of TObject
.La95:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La96:
	.uleb128	11
	.long	.La95-.Ldebug_info0
# Definition TObject.Class Of TObject
.La97:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La98:
	.uleb128	11
	.long	.La97-.Ldebug_info0
# Definition TObject.Class Of TObject
.La99:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La100:
	.uleb128	11
	.long	.La99-.Ldebug_info0
# Definition TObject.Class Of TObject
.La101:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La102:
	.uleb128	11
	.long	.La101-.Ldebug_info0
# Definition pstringmessagetable
.La103:
	.uleb128	9
	.ascii	"PSTRINGMESSAGETABLE\000"
	.long	.La160-.Ldebug_info0
.La160:
	.uleb128	13
	.long	.La161-.Ldebug_info0
.La104:
	.uleb128	11
	.long	.La103-.Ldebug_info0
# Definition TObject.Class Of TObject
.La105:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La106:
	.uleb128	11
	.long	.La105-.Ldebug_info0
# Definition TObject.Class Of TObject
.La107:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La108:
	.uleb128	11
	.long	.La107-.Ldebug_info0
# Definition TObject.Class Of TObject
.La109:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La110:
	.uleb128	11
	.long	.La109-.Ldebug_info0
# Definition TGuid
.La111:
	.uleb128	9
	.ascii	"TGUID\000"
	.long	.La163-.Ldebug_info0
.La163:
	.uleb128	37
	.ascii	"TGUID\000"
	.uleb128	16
	.uleb128	33
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La26-.Ldebug_info0
	.uleb128	33
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La164-.Ldebug_info0
	.uleb128	33
	.ascii	"DATA3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La164-.Ldebug_info0
	.uleb128	33
	.ascii	"DATA4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La166-.Ldebug_info0
	.uleb128	33
	.ascii	"D1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La26-.Ldebug_info0
	.uleb128	33
	.ascii	"D2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La164-.Ldebug_info0
	.uleb128	33
	.ascii	"D3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La164-.Ldebug_info0
	.uleb128	33
	.ascii	"D4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.uleb128	33
	.ascii	"TIME_LOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La26-.Ldebug_info0
	.uleb128	33
	.ascii	"TIME_MID\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La164-.Ldebug_info0
	.uleb128	33
	.ascii	"TIME_HI_AND_VERSION\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La164-.Ldebug_info0
	.uleb128	33
	.ascii	"CLOCK_SEQ_HI_AND_RESERVED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La32-.Ldebug_info0
	.uleb128	33
	.ascii	"CLOCK_SEQ_LOW\000"
	.byte	2
	.byte	35
	.uleb128	9
	.long	.La32-.Ldebug_info0
	.uleb128	33
	.ascii	"NODE\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La170-.Ldebug_info0
	.byte	0
.La112:
	.uleb128	11
	.long	.La111-.Ldebug_info0
# Definition pinterfaceentry
.La113:
	.uleb128	9
	.ascii	"PINTERFACEENTRY\000"
	.long	.La172-.Ldebug_info0
.La172:
	.uleb128	13
	.long	.La173-.Ldebug_info0
.La114:
	.uleb128	11
	.long	.La113-.Ldebug_info0
# Definition TObject.Class Of TObject
.La115:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La116:
	.uleb128	11
	.long	.La115-.Ldebug_info0
# Definition TObject.Class Of TObject
.La117:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La118:
	.uleb128	11
	.long	.La117-.Ldebug_info0
# Definition pinterfacetable
.La119:
	.uleb128	9
	.ascii	"PINTERFACETABLE\000"
	.long	.La175-.Ldebug_info0
.La175:
	.uleb128	13
	.long	.La176-.Ldebug_info0
.La120:
	.uleb128	11
	.long	.La119-.Ldebug_info0
# Definition TObject.Class Of TObject
.La121:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La122:
	.uleb128	11
	.long	.La121-.Ldebug_info0
# Definition TObject.Class Of TObject
.La123:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La124:
	.uleb128	11
	.long	.La123-.Ldebug_info0
# Definition TThread.TThreadQueueEntry
.La130:
	.uleb128	9
	.ascii	"TTHREADQUEUEENTRY\000"
	.long	.La178-.Ldebug_info0
.La178:
	.uleb128	37
	.ascii	"TTHREADQUEUEENTRY\000"
	.uleb128	48
	.uleb128	33
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La48-.Ldebug_info0
	.uleb128	33
	.ascii	"THREAD\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La23-.Ldebug_info0
	.uleb128	33
	.ascii	"EXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La179-.Ldebug_info0
	.uleb128	33
	.ascii	"SYNCEVENT\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La182-.Ldebug_info0
	.uleb128	33
	.ascii	"NEXT\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La44-.Ldebug_info0
	.byte	0
.La131:
	.uleb128	11
	.long	.La130-.Ldebug_info0
# Definition WideChar
.La137:
	.uleb128	9
	.ascii	"WIDECHAR\000"
	.long	.La184-.Ldebug_info0
.La184:
	.uleb128	10
	.ascii	"WideChar\000"
	.byte	8
	.byte	2
.La138:
	.uleb128	11
	.long	.La137-.Ldebug_info0
# Definition Char
.La140:
	.uleb128	9
	.ascii	"CHAR\000"
	.long	.La185-.Ldebug_info0
.La185:
	.uleb128	10
	.ascii	"Char\000"
	.byte	8
	.byte	1
.La141:
	.uleb128	11
	.long	.La140-.Ldebug_info0
# Definition <record type>
.La142:
	.uleb128	9
	.ascii	"__vtbl_ptr_type\000"
	.long	.La186-.Ldebug_info0
.La186:
	.uleb128	40
	.uleb128	40
	.byte	0
.La143:
	.uleb128	11
	.long	.La142-.Ldebug_info0
# Definition <procedure variable type of procedure(const AnsiString) of object;Register>
.La147:
	.uleb128	9
	.ascii	"TTHREADREPORTSTATUS\000"
	.long	.La187-.Ldebug_info0
.La187:
	.uleb128	32
	.byte	16
	.uleb128	33
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La188-.Ldebug_info0
	.uleb128	33
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La35-.Ldebug_info0
	.byte	0
.La188:
	.uleb128	34
	.ascii	"TTHREADREPORTSTATUS\000"
	.byte	1
	.uleb128	24
	.ascii	"this\000"
	.long	.La28-.Ldebug_info0
	.uleb128	24
	.ascii	"STATUS\000"
	.long	.La54-.Ldebug_info0
	.byte	0
.La148:
	.uleb128	11
	.long	.La147-.Ldebug_info0
# Definition TStringMessageTable
.La161:
	.uleb128	9
	.ascii	"TSTRINGMESSAGETABLE\000"
	.long	.La189-.Ldebug_info0
.La189:
	.uleb128	37
	.ascii	"TSTRINGMESSAGETABLE\000"
	.uleb128	24
	.uleb128	33
	.ascii	"COUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La14-.Ldebug_info0
	.uleb128	33
	.ascii	"MSGSTRTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La190-.Ldebug_info0
	.byte	0
.La162:
	.uleb128	11
	.long	.La161-.Ldebug_info0
# Definition Word
.La164:
	.uleb128	9
	.ascii	"WORD\000"
	.long	.La192-.Ldebug_info0
.La192:
	.uleb128	10
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La165:
	.uleb128	11
	.long	.La164-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La166:
	.uleb128	18
	.uleb128	8
	.long	.La32-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La1-.Ldebug_info0
	.byte	0
.La167:
	.uleb128	11
	.long	.La166-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La168:
	.uleb128	18
	.uleb128	8
	.long	.La32-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La1-.Ldebug_info0
	.byte	0
.La169:
	.uleb128	11
	.long	.La168-.Ldebug_info0
# Definition TGuid.Array[0..5] Of Byte
.La170:
	.uleb128	18
	.uleb128	6
	.long	.La32-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	5
	.uleb128	1
	.long	.La1-.Ldebug_info0
	.byte	0
.La171:
	.uleb128	11
	.long	.La170-.Ldebug_info0
# Definition tinterfaceentry
.La173:
	.uleb128	9
	.ascii	"TINTERFACEENTRY\000"
	.long	.La193-.Ldebug_info0
.La193:
	.uleb128	37
	.ascii	"TINTERFACEENTRY\000"
	.uleb128	40
	.uleb128	33
	.ascii	"IID\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La194-.Ldebug_info0
	.uleb128	33
	.ascii	"VTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	33
	.ascii	"IOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La38-.Ldebug_info0
	.uleb128	33
	.ascii	"IIDSTR\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La196-.Ldebug_info0
	.uleb128	33
	.ascii	"ITYPE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La198-.Ldebug_info0
	.uleb128	33
	.ascii	"__PAD_DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La16-.Ldebug_info0
	.byte	0
.La174:
	.uleb128	11
	.long	.La173-.Ldebug_info0
# Definition tinterfacetable
.La176:
	.uleb128	9
	.ascii	"TINTERFACETABLE\000"
	.long	.La200-.Ldebug_info0
.La200:
	.uleb128	37
	.ascii	"TINTERFACETABLE\000"
	.uleb128	48
	.uleb128	33
	.ascii	"ENTRYCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La38-.Ldebug_info0
	.uleb128	33
	.ascii	"ENTRIES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La201-.Ldebug_info0
	.byte	0
.La177:
	.uleb128	11
	.long	.La176-.Ldebug_info0
# Definition Exception
.La179:
	.uleb128	9
	.ascii	"EXCEPTION\000"
	.long	.La203-.Ldebug_info0
.La203:
	.uleb128	13
	.long	.La181-.Ldebug_info0
.La181:
	.uleb128	14
	.ascii	"EXCEPTION\000"
	.uleb128	24
	.uleb128	15
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La37-.Ldebug_info0
	.uleb128	20
	.ascii	"FMESSAGE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La54-.Ldebug_info0
	.uleb128	20
	.ascii	"FHELPCONTEXT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	20
	.ascii	"HELPCONTEXT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	20
	.ascii	"MESSAGE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La54-.Ldebug_info0
# Procdef constructor Create(<Exception>;<Pointer>;const AnsiString);
	.uleb128	26
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La28-.Ldebug_info0
# Symbol MSG
	.uleb128	24
	.ascii	"MSG\000"
	.long	.La54-.Ldebug_info0
	.byte	0
# Procdef constructor CreateFmt(<Exception>;<Pointer>;const AnsiString;const Array Of Const;<const Int64>);
	.uleb128	26
	.ascii	"CREATEFMT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La28-.Ldebug_info0
# Symbol MSG
	.uleb128	24
	.ascii	"MSG\000"
	.long	.La54-.Ldebug_info0
# Symbol ARGS
	.uleb128	24
	.ascii	"ARGS\000"
	.long	.La204-.Ldebug_info0
# Symbol highARGS
	.uleb128	24
	.ascii	"highARGS\000"
	.long	.La16-.Ldebug_info0
# Definition Array Of Const
.La204:
	.uleb128	41
	.long	.La206-.Ldebug_info0
	.uleb128	42
	.sleb128	0
	.uleb128	16
	.long	.La16-.Ldebug_info0
	.byte	0
.La205:
	.uleb128	11
	.long	.La204-.Ldebug_info0
	.byte	0
# Procdef constructor CreateRes(<Exception>;<Pointer>;PAnsiString);
	.uleb128	26
	.ascii	"CREATERES\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La28-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	24
	.ascii	"RESSTRING\000"
	.long	.La208-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResFmt(<Exception>;<Pointer>;PAnsiString;const Array Of Const;<const Int64>);
	.uleb128	26
	.ascii	"CREATERESFMT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La28-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	24
	.ascii	"RESSTRING\000"
	.long	.La208-.Ldebug_info0
# Symbol ARGS
	.uleb128	24
	.ascii	"ARGS\000"
	.long	.La210-.Ldebug_info0
# Symbol highARGS
	.uleb128	24
	.ascii	"highARGS\000"
	.long	.La16-.Ldebug_info0
# Definition Array Of Const
.La210:
	.uleb128	41
	.long	.La206-.Ldebug_info0
	.uleb128	42
	.sleb128	0
	.uleb128	16
	.long	.La16-.Ldebug_info0
	.byte	0
.La211:
	.uleb128	11
	.long	.La210-.Ldebug_info0
	.byte	0
# Procdef constructor CreateHelp(<Exception>;<Pointer>;const AnsiString;LongInt);
	.uleb128	26
	.ascii	"CREATEHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La28-.Ldebug_info0
# Symbol MSG
	.uleb128	24
	.ascii	"MSG\000"
	.long	.La54-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	24
	.ascii	"AHELPCONTEXT\000"
	.long	.La14-.Ldebug_info0
	.byte	0
# Procdef constructor CreateFmtHelp(<Exception>;<Pointer>;const AnsiString;const Array Of Const;<const Int64>;LongInt);
	.uleb128	26
	.ascii	"CREATEFMTHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La28-.Ldebug_info0
# Symbol MSG
	.uleb128	24
	.ascii	"MSG\000"
	.long	.La54-.Ldebug_info0
# Symbol ARGS
	.uleb128	24
	.ascii	"ARGS\000"
	.long	.La212-.Ldebug_info0
# Symbol highARGS
	.uleb128	24
	.ascii	"highARGS\000"
	.long	.La16-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	24
	.ascii	"AHELPCONTEXT\000"
	.long	.La14-.Ldebug_info0
# Definition Array Of Const
.La212:
	.uleb128	41
	.long	.La206-.Ldebug_info0
	.uleb128	42
	.sleb128	0
	.uleb128	16
	.long	.La16-.Ldebug_info0
	.byte	0
.La213:
	.uleb128	11
	.long	.La212-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResHelp(<Exception>;<Pointer>;PAnsiString;LongInt);
	.uleb128	26
	.ascii	"CREATERESHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La28-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	24
	.ascii	"RESSTRING\000"
	.long	.La208-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	24
	.ascii	"AHELPCONTEXT\000"
	.long	.La14-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResFmtHelp(<Exception>;<Pointer>;PAnsiString;const Array Of Const;<const Int64>;LongInt);
	.uleb128	26
	.ascii	"CREATERESFMTHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La28-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	24
	.ascii	"RESSTRING\000"
	.long	.La208-.Ldebug_info0
# Symbol ARGS
	.uleb128	24
	.ascii	"ARGS\000"
	.long	.La214-.Ldebug_info0
# Symbol highARGS
	.uleb128	24
	.ascii	"highARGS\000"
	.long	.La16-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	24
	.ascii	"AHELPCONTEXT\000"
	.long	.La14-.Ldebug_info0
# Definition Array Of Const
.La214:
	.uleb128	41
	.long	.La206-.Ldebug_info0
	.uleb128	42
	.sleb128	0
	.uleb128	16
	.long	.La16-.Ldebug_info0
	.byte	0
.La215:
	.uleb128	11
	.long	.La214-.Ldebug_info0
	.byte	0
# Procdef ToString(<Exception>;<var AnsiString>):AnsiString;
	.uleb128	30
	.ascii	"TOSTRING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	192
	.byte	34
	.long	.La54-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol result
	.uleb128	31
	.ascii	"result\000"
	.long	.La54-.Ldebug_info0
	.byte	0
	.byte	0
.La180:
	.uleb128	11
	.long	.La179-.Ldebug_info0
# Definition PRTLEvent
.La182:
	.uleb128	9
	.ascii	"PRTLEVENT\000"
	.long	.La216-.Ldebug_info0
.La216:
	.uleb128	12
.La183:
	.uleb128	11
	.long	.La182-.Ldebug_info0
# Definition TStringMessageTable.Array[0..0] Of TMsgStrTable
.La190:
	.uleb128	18
	.uleb128	16
	.long	.La217-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	0
	.uleb128	16
	.long	.La1-.Ldebug_info0
	.byte	0
.La191:
	.uleb128	11
	.long	.La190-.Ldebug_info0
# Definition PGuid
.La194:
	.uleb128	9
	.ascii	"PGUID\000"
	.long	.La219-.Ldebug_info0
.La219:
	.uleb128	13
	.long	.La111-.Ldebug_info0
.La195:
	.uleb128	11
	.long	.La194-.Ldebug_info0
# Definition PShortString
.La196:
	.uleb128	9
	.ascii	"PSHORTSTRING\000"
	.long	.La220-.Ldebug_info0
.La220:
	.uleb128	13
	.long	.La91-.Ldebug_info0
.La197:
	.uleb128	11
	.long	.La196-.Ldebug_info0
# Definition tinterfaceentrytype
.La198:
	.uleb128	9
	.ascii	"TINTERFACEENTRYTYPE\000"
	.long	.La221-.Ldebug_info0
.La221:
	.uleb128	35
	.ascii	"TINTERFACEENTRYTYPE\000"
	.byte	4
	.uleb128	36
	.ascii	"ETSTANDARD\000"
	.long	0
	.uleb128	36
	.ascii	"ETVIRTUALMETHODRESULT\000"
	.long	1
	.uleb128	36
	.ascii	"ETSTATICMETHODRESULT\000"
	.long	2
	.uleb128	36
	.ascii	"ETFIELDVALUE\000"
	.long	3
	.uleb128	36
	.ascii	"ETVIRTUALMETHODCLASS\000"
	.long	4
	.uleb128	36
	.ascii	"ETSTATICMETHODCLASS\000"
	.long	5
	.uleb128	36
	.ascii	"ETFIELDVALUECLASS\000"
	.long	6
	.byte	0
.La199:
	.uleb128	11
	.long	.La198-.Ldebug_info0
# Definition tinterfacetable.Array[0..0] Of tinterfaceentry
.La201:
	.uleb128	18
	.uleb128	40
	.long	.La173-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	0
	.uleb128	40
	.long	.La1-.Ldebug_info0
	.byte	0
.La202:
	.uleb128	11
	.long	.La201-.Ldebug_info0
# Definition TVarRec
.La206:
	.uleb128	9
	.ascii	"TVARREC\000"
	.long	.La222-.Ldebug_info0
.La222:
	.uleb128	37
	.ascii	"TVARREC\000"
	.uleb128	16
	.uleb128	33
	.ascii	"VTYPE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La16-.Ldebug_info0
	.uleb128	33
	.ascii	"VINTEGER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La14-.Ldebug_info0
	.uleb128	33
	.ascii	"VBOOLEAN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La30-.Ldebug_info0
	.uleb128	33
	.ascii	"VCHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La140-.Ldebug_info0
	.uleb128	33
	.ascii	"VWIDECHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La137-.Ldebug_info0
	.uleb128	33
	.ascii	"VEXTENDED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La223-.Ldebug_info0
	.uleb128	33
	.ascii	"VSTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La196-.Ldebug_info0
	.uleb128	33
	.ascii	"VPOINTER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	33
	.ascii	"VPCHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La225-.Ldebug_info0
	.uleb128	33
	.ascii	"VOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La35-.Ldebug_info0
	.uleb128	33
	.ascii	"VCLASS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La85-.Ldebug_info0
	.uleb128	33
	.ascii	"VPWIDECHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La227-.Ldebug_info0
	.uleb128	33
	.ascii	"VANSISTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	33
	.ascii	"VCURRENCY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La229-.Ldebug_info0
	.uleb128	33
	.ascii	"VVARIANT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La231-.Ldebug_info0
	.uleb128	33
	.ascii	"VINTERFACE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	33
	.ascii	"VWIDESTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	33
	.ascii	"VINT64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La233-.Ldebug_info0
	.uleb128	33
	.ascii	"VUNICODESTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	33
	.ascii	"VQWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La235-.Ldebug_info0
	.byte	0
.La207:
	.uleb128	11
	.long	.La206-.Ldebug_info0
# Definition PAnsiString
.La208:
	.uleb128	9
	.ascii	"PANSISTRING\000"
	.long	.La237-.Ldebug_info0
.La237:
	.uleb128	13
	.long	.La54-.Ldebug_info0
.La209:
	.uleb128	11
	.long	.La208-.Ldebug_info0
# Definition TMsgStrTable
.La217:
	.uleb128	9
	.ascii	"TMSGSTRTABLE\000"
	.long	.La238-.Ldebug_info0
.La238:
	.uleb128	37
	.ascii	"TMSGSTRTABLE\000"
	.uleb128	16
	.uleb128	33
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La196-.Ldebug_info0
	.uleb128	33
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.byte	0
.La218:
	.uleb128	11
	.long	.La217-.Ldebug_info0
# Definition PExtended
.La223:
	.uleb128	9
	.ascii	"PEXTENDED\000"
	.long	.La239-.Ldebug_info0
.La239:
	.uleb128	13
	.long	.La240-.Ldebug_info0
.La224:
	.uleb128	11
	.long	.La223-.Ldebug_info0
# Definition PChar
.La225:
	.uleb128	9
	.ascii	"PCHAR\000"
	.long	.La242-.Ldebug_info0
.La242:
	.uleb128	13
	.long	.La140-.Ldebug_info0
.La226:
	.uleb128	11
	.long	.La225-.Ldebug_info0
# Definition PWideChar
.La227:
	.uleb128	9
	.ascii	"PWIDECHAR\000"
	.long	.La243-.Ldebug_info0
.La243:
	.uleb128	13
	.long	.La137-.Ldebug_info0
.La228:
	.uleb128	11
	.long	.La227-.Ldebug_info0
# Definition PCurrency
.La229:
	.uleb128	9
	.ascii	"PCURRENCY\000"
	.long	.La244-.Ldebug_info0
.La244:
	.uleb128	13
	.long	.La245-.Ldebug_info0
.La230:
	.uleb128	11
	.long	.La229-.Ldebug_info0
# Definition PVariant
.La231:
	.uleb128	9
	.ascii	"PVARIANT\000"
	.long	.La247-.Ldebug_info0
.La247:
	.uleb128	13
	.long	.La248-.Ldebug_info0
.La232:
	.uleb128	11
	.long	.La231-.Ldebug_info0
# Definition PInt64
.La233:
	.uleb128	9
	.ascii	"PINT64\000"
	.long	.La250-.Ldebug_info0
.La250:
	.uleb128	13
	.long	.La16-.Ldebug_info0
.La234:
	.uleb128	11
	.long	.La233-.Ldebug_info0
# Definition PQWord
.La235:
	.uleb128	9
	.ascii	"PQWORD\000"
	.long	.La251-.Ldebug_info0
.La251:
	.uleb128	13
	.long	.La38-.Ldebug_info0
.La236:
	.uleb128	11
	.long	.La235-.Ldebug_info0
# Definition Double
.La240:
	.uleb128	9
	.ascii	"DOUBLE\000"
	.long	.La252-.Ldebug_info0
.La252:
	.uleb128	10
	.ascii	"DOUBLE\000"
	.byte	4
	.byte	8
.La241:
	.uleb128	11
	.long	.La240-.Ldebug_info0
# Definition Currency
.La245:
	.uleb128	9
	.ascii	"CURRENCY\000"
	.long	.La253-.Ldebug_info0
.La253:
	.uleb128	10
	.ascii	"Currency\000"
	.byte	5
	.byte	8
.La246:
	.uleb128	11
	.long	.La245-.Ldebug_info0
# Definition Variant
.La248:
	.uleb128	9
	.ascii	"VARIANT\000"
	.long	.La254-.Ldebug_info0
.La254:
	.uleb128	37
	.ascii	"Variant\000"
	.uleb128	24
	.uleb128	33
	.ascii	"VTYPE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La164-.Ldebug_info0
	.uleb128	33
	.ascii	"RES1\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La164-.Ldebug_info0
	.uleb128	33
	.ascii	"RES2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La164-.Ldebug_info0
	.uleb128	33
	.ascii	"RES3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La164-.Ldebug_info0
	.uleb128	33
	.ascii	"VSMALLINT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La255-.Ldebug_info0
	.uleb128	33
	.ascii	"VINTEGER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La14-.Ldebug_info0
	.uleb128	33
	.ascii	"VSINGLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La257-.Ldebug_info0
	.uleb128	33
	.ascii	"VDOUBLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La240-.Ldebug_info0
	.uleb128	33
	.ascii	"VDATE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La259-.Ldebug_info0
	.uleb128	33
	.ascii	"VCURRENCY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La245-.Ldebug_info0
	.uleb128	33
	.ascii	"VOLESTR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La227-.Ldebug_info0
	.uleb128	33
	.ascii	"VDISPATCH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	33
	.ascii	"VERROR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La79-.Ldebug_info0
	.uleb128	33
	.ascii	"VBOOLEAN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La261-.Ldebug_info0
	.uleb128	33
	.ascii	"VUNKNOWN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	33
	.ascii	"VSHORTINT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	33
	.ascii	"VBYTE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La32-.Ldebug_info0
	.uleb128	33
	.ascii	"VWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La164-.Ldebug_info0
	.uleb128	33
	.ascii	"VLONGWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La26-.Ldebug_info0
	.uleb128	33
	.ascii	"VINT64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.uleb128	33
	.ascii	"VQWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La38-.Ldebug_info0
	.uleb128	33
	.ascii	"VWORD64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La38-.Ldebug_info0
	.uleb128	33
	.ascii	"VSTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	33
	.ascii	"VANY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	33
	.ascii	"VARRAY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La263-.Ldebug_info0
	.uleb128	33
	.ascii	"VPOINTER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	33
	.ascii	"VRECORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	33
	.ascii	"PRECINFO\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La28-.Ldebug_info0
	.uleb128	33
	.ascii	"VLONGS\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La265-.Ldebug_info0
	.uleb128	33
	.ascii	"VWORDS\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La267-.Ldebug_info0
	.uleb128	33
	.ascii	"VBYTES\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La269-.Ldebug_info0
	.byte	0
.La249:
	.uleb128	11
	.long	.La248-.Ldebug_info0
# Definition SmallInt
.La255:
	.uleb128	9
	.ascii	"SMALLINT\000"
	.long	.La271-.Ldebug_info0
.La271:
	.uleb128	10
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.La256:
	.uleb128	11
	.long	.La255-.Ldebug_info0
# Definition Single
.La257:
	.uleb128	9
	.ascii	"SINGLE\000"
	.long	.La272-.Ldebug_info0
.La272:
	.uleb128	10
	.ascii	"SINGLE\000"
	.byte	4
	.byte	4
.La258:
	.uleb128	11
	.long	.La257-.Ldebug_info0
# Definition TDateTime
.La259:
	.uleb128	9
	.ascii	"TDATETIME\000"
	.long	.La273-.Ldebug_info0
.La273:
	.uleb128	10
	.ascii	"TDATETIME\000"
	.byte	4
	.byte	8
.La260:
	.uleb128	11
	.long	.La259-.Ldebug_info0
# Definition WordBool
.La261:
	.uleb128	9
	.ascii	"WORDBOOL\000"
	.long	.La274-.Ldebug_info0
.La274:
	.uleb128	10
	.ascii	"WordBool\000"
	.byte	2
	.byte	2
.La262:
	.uleb128	11
	.long	.La261-.Ldebug_info0
# Definition pvararray
.La263:
	.uleb128	9
	.ascii	"PVARARRAY\000"
	.long	.La275-.Ldebug_info0
.La275:
	.uleb128	13
	.long	.La276-.Ldebug_info0
.La264:
	.uleb128	11
	.long	.La263-.Ldebug_info0
# Definition tvardata.Array[0..2] Of LongInt
.La265:
	.uleb128	18
	.uleb128	12
	.long	.La14-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	2
	.uleb128	4
	.long	.La1-.Ldebug_info0
	.byte	0
.La266:
	.uleb128	11
	.long	.La265-.Ldebug_info0
# Definition tvardata.Array[0..6] Of Word
.La267:
	.uleb128	18
	.uleb128	14
	.long	.La164-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	6
	.uleb128	2
	.long	.La1-.Ldebug_info0
	.byte	0
.La268:
	.uleb128	11
	.long	.La267-.Ldebug_info0
# Definition tvardata.Array[0..13] Of Byte
.La269:
	.uleb128	18
	.uleb128	14
	.long	.La32-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	13
	.uleb128	1
	.long	.La1-.Ldebug_info0
	.byte	0
.La270:
	.uleb128	11
	.long	.La269-.Ldebug_info0
# Definition tvararray
.La276:
	.uleb128	9
	.ascii	"TVARARRAY\000"
	.long	.La278-.Ldebug_info0
.La278:
	.uleb128	37
	.ascii	"TVARARRAY\000"
	.uleb128	32
	.uleb128	33
	.ascii	"DIMCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La164-.Ldebug_info0
	.uleb128	33
	.ascii	"FLAGS\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La164-.Ldebug_info0
	.uleb128	33
	.ascii	"ELEMENTSIZE\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La14-.Ldebug_info0
	.uleb128	33
	.ascii	"LOCKCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La14-.Ldebug_info0
	.uleb128	33
	.ascii	"DATA\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La28-.Ldebug_info0
	.uleb128	33
	.ascii	"BOUNDS\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La279-.Ldebug_info0
	.byte	0
.La277:
	.uleb128	11
	.long	.La276-.Ldebug_info0
# Definition tvararrayboundarray
.La279:
	.uleb128	9
	.ascii	"TVARARRAYBOUNDARRAY\000"
	.long	.La281-.Ldebug_info0
.La281:
	.uleb128	43
	.ascii	"TVARARRAYBOUNDARRAY\000"
	.uleb128	8
	.long	.La282-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	0
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.byte	0
.La280:
	.uleb128	11
	.long	.La279-.Ldebug_info0
# Definition tvararraybound
.La282:
	.uleb128	9
	.ascii	"TVARARRAYBOUND\000"
	.long	.La284-.Ldebug_info0
.La284:
	.uleb128	37
	.ascii	"TVARARRAYBOUND\000"
	.uleb128	8
	.uleb128	33
	.ascii	"ELEMENTCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La14-.Ldebug_info0
	.uleb128	33
	.ascii	"LOWBOUND\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La14-.Ldebug_info0
	.byte	0
.La283:
	.uleb128	11
	.long	.La282-.Ldebug_info0
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
	.uleb128	63
	.uleb128	12
	.uleb128	2
	.uleb128	10
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 4
	.uleb128	4
	.uleb128	46
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	39
	.uleb128	12
	.uleb128	54
	.uleb128	11
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
# Abbrev 5
	.uleb128	5
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
# Abbrev 8
	.uleb128	8
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
# Abbrev 9
	.uleb128	9
	.uleb128	22
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 10
	.uleb128	10
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
# Abbrev 11
	.uleb128	11
	.uleb128	16
	.byte	0
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 12
	.uleb128	12
	.uleb128	15
	.byte	0
	.byte	0
	.byte	0
# Abbrev 13
	.uleb128	13
	.uleb128	15
	.byte	0
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 14
	.uleb128	14
	.uleb128	2
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 15
	.uleb128	15
	.uleb128	28
	.byte	0
	.uleb128	50
	.uleb128	11
	.uleb128	56
	.uleb128	10
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 16
	.uleb128	16
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
	.uleb128	76
	.uleb128	11
	.uleb128	77
	.uleb128	10
	.uleb128	50
	.uleb128	11
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
# Abbrev 17
	.uleb128	17
	.uleb128	5
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	2
	.uleb128	10
	.uleb128	52
	.uleb128	12
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 18
	.uleb128	18
	.uleb128	1
	.byte	1
	.uleb128	11
	.uleb128	15
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 19
	.uleb128	19
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
# Abbrev 20
	.uleb128	20
	.uleb128	13
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	56
	.uleb128	10
	.uleb128	50
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 21
	.uleb128	21
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
	.uleb128	50
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 22
	.uleb128	22
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
	.uleb128	50
	.uleb128	11
	.byte	0
	.byte	0
# Abbrev 23
	.uleb128	23
	.uleb128	5
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	52
	.uleb128	12
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 24
	.uleb128	24
	.uleb128	5
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 25
	.uleb128	25
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
	.uleb128	76
	.uleb128	11
	.uleb128	77
	.uleb128	10
	.uleb128	50
	.uleb128	11
	.byte	0
	.byte	0
# Abbrev 26
	.uleb128	26
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
	.byte	0
	.byte	0
# Abbrev 27
	.uleb128	27
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
	.uleb128	76
	.uleb128	11
	.uleb128	77
	.uleb128	10
	.byte	0
	.byte	0
# Abbrev 28
	.uleb128	28
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
	.byte	0
	.byte	0
# Abbrev 29
	.uleb128	29
	.uleb128	13
	.byte	0
	.uleb128	52
	.uleb128	12
	.uleb128	3
	.uleb128	8
	.uleb128	56
	.uleb128	10
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 30
	.uleb128	30
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
	.uleb128	76
	.uleb128	11
	.uleb128	77
	.uleb128	10
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 31
	.uleb128	31
	.uleb128	52
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 32
	.uleb128	32
	.uleb128	19
	.byte	1
	.uleb128	11
	.uleb128	11
	.byte	0
	.byte	0
# Abbrev 33
	.uleb128	33
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
# Abbrev 34
	.uleb128	34
	.uleb128	21
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	39
	.uleb128	12
	.byte	0
	.byte	0
# Abbrev 35
	.uleb128	35
	.uleb128	4
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.byte	0
	.byte	0
# Abbrev 36
	.uleb128	36
	.uleb128	40
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	6
	.byte	0
	.byte	0
# Abbrev 37
	.uleb128	37
	.uleb128	19
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 38
	.uleb128	38
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
# Abbrev 39
	.uleb128	39
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
# Abbrev 40
	.uleb128	40
	.uleb128	19
	.byte	1
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 41
	.uleb128	41
	.uleb128	1
	.byte	1
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 42
	.uleb128	42
	.uleb128	33
	.byte	0
	.uleb128	34
	.uleb128	13
	.uleb128	81
	.uleb128	15
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 43
	.uleb128	43
	.uleb128	1
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
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
	.ascii	"synthcontrol.pas\000"
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Lehdebug_line0:
# === header end ===
# function: SYNTHCONTROL$_$TSYNTHCTRL_$__$$_CREATE$BOOLEAN$$TSYNTHCTRL
# [65:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	76
# [65:1]
	.byte	2
	.uleb128	.Ll2-.Ll1
	.byte	1
# [68:1]
	.byte	2
	.uleb128	.Ll3-.Ll2
	.byte	15
# [66:19]
	.byte	2
	.uleb128	.Ll4-.Ll3
	.byte	5
	.uleb128	19
	.byte	3
	.sleb128	-2
	.byte	1
# [67:3]
	.byte	2
	.uleb128	.Ll5-.Ll4
	.byte	5
	.uleb128	3
	.byte	13
# [68:1]
	.byte	2
	.uleb128	.Ll6-.Ll5
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll7
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SYNTHCONTROL_$$_DEALLOCATECHANNEL$LONGINT
# [73:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll8
	.byte	5
	.uleb128	1
	.byte	84
# [73:1]
	.byte	2
	.uleb128	.Ll9-.Ll8
	.byte	1
# [74:52]
	.byte	2
	.uleb128	.Ll10-.Ll9
	.byte	5
	.uleb128	52
	.byte	13
# [75:1]
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
# function: SYNTHCONTROL$_$TSYNTHCTRL_$_EXECUTE_$$_fin$2
# [85:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll13
	.byte	5
	.uleb128	1
	.byte	96
# [85:1]
	.byte	2
	.uleb128	.Ll14-.Ll13
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll15
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SYNTHCONTROL$_$TSYNTHCTRL_$__$$_EXECUTE
# [85:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll16
	.byte	5
	.uleb128	1
	.byte	96
# [85:1]
	.byte	2
	.uleb128	.Ll17-.Ll16
	.byte	1
# [86:1]
	.byte	2
	.uleb128	.Ll18-.Ll17
	.byte	13
# [87:1]
	.byte	2
	.uleb128	.Ll19-.Ll18
	.byte	13
# [91:6]
	.byte	2
	.uleb128	.Ll20-.Ll19
	.byte	5
	.uleb128	6
	.byte	16
# [94:7]
	.byte	2
	.uleb128	.Ll21-.Ll20
	.byte	5
	.uleb128	7
	.byte	15
# [95:7]
	.byte	2
	.uleb128	.Ll22-.Ll21
	.byte	13
# [96:7]
	.byte	2
	.uleb128	.Ll23-.Ll22
	.byte	13
# [98:9]
	.byte	2
	.uleb128	.Ll24-.Ll23
	.byte	5
	.uleb128	9
	.byte	14
# [100:14]
	.byte	2
	.uleb128	.Ll25-.Ll24
	.byte	5
	.uleb128	14
	.byte	14
# [101:5]
	.byte	2
	.uleb128	.Ll26-.Ll25
	.byte	5
	.uleb128	5
	.byte	13
# [102:5]
	.byte	2
	.uleb128	.Ll27-.Ll26
	.byte	13
# [103:5]
	.byte	2
	.uleb128	.Ll28-.Ll27
	.byte	13
# [104:17]
	.byte	2
	.uleb128	.Ll29-.Ll28
	.byte	5
	.uleb128	17
	.byte	13
# [105:11]
	.byte	2
	.uleb128	.Ll30-.Ll29
	.byte	5
	.uleb128	11
	.byte	13
# [109:5]
	.byte	2
	.uleb128	.Ll31-.Ll30
	.byte	5
	.uleb128	5
	.byte	16
# [110:5]
	.byte	2
	.uleb128	.Ll32-.Ll31
	.byte	13
# [111:5]
	.byte	2
	.uleb128	.Ll33-.Ll32
	.byte	13
# [112:14]
	.byte	2
	.uleb128	.Ll34-.Ll33
	.byte	5
	.uleb128	14
	.byte	13
# [113:17]
	.byte	2
	.uleb128	.Ll35-.Ll34
	.byte	5
	.uleb128	17
	.byte	13
# [114:11]
	.byte	2
	.uleb128	.Ll36-.Ll35
	.byte	5
	.uleb128	11
	.byte	13
# [116:3]
	.byte	2
	.uleb128	.Ll37-.Ll36
	.byte	5
	.uleb128	3
	.byte	14
# [119:5]
	.byte	2
	.uleb128	.Ll38-.Ll37
	.byte	5
	.uleb128	5
	.byte	15
# [122:6]
	.byte	2
	.uleb128	.Ll39-.Ll38
	.byte	5
	.uleb128	6
	.byte	15
# [124:10]
	.byte	2
	.uleb128	.Ll40-.Ll39
	.byte	5
	.uleb128	10
	.byte	14
# [125:8]
	.byte	2
	.uleb128	.Ll41-.Ll40
	.byte	5
	.uleb128	8
	.byte	13
# [126:9]
	.byte	2
	.uleb128	.Ll42-.Ll41
	.byte	5
	.uleb128	9
	.byte	13
# [127:3]
	.byte	2
	.uleb128	.Ll43-.Ll42
	.byte	5
	.uleb128	3
	.byte	13
# [128:26]
	.byte	2
	.uleb128	.Ll44-.Ll43
	.byte	5
	.uleb128	26
	.byte	13
# [129:6]
	.byte	2
	.uleb128	.Ll45-.Ll44
	.byte	5
	.uleb128	6
	.byte	13
# [131:9]
	.byte	2
	.uleb128	.Ll46-.Ll45
	.byte	5
	.uleb128	9
	.byte	14
# [132:10]
	.byte	2
	.uleb128	.Ll47-.Ll46
	.byte	5
	.uleb128	10
	.byte	13
# [134:7]
	.byte	2
	.uleb128	.Ll48-.Ll47
	.byte	5
	.uleb128	7
	.byte	14
# [135:12]
	.byte	2
	.uleb128	.Ll49-.Ll48
	.byte	5
	.uleb128	12
	.byte	13
# [136:25]
	.byte	2
	.uleb128	.Ll50-.Ll49
	.byte	5
	.uleb128	25
	.byte	13
# [139:6]
	.byte	2
	.uleb128	.Ll51-.Ll50
	.byte	5
	.uleb128	6
	.byte	15
# [141:5]
	.byte	2
	.uleb128	.Ll52-.Ll51
	.byte	5
	.uleb128	5
	.byte	14
# [142:14]
	.byte	2
	.uleb128	.Ll53-.Ll52
	.byte	5
	.uleb128	14
	.byte	13
# [143:19]
	.byte	2
	.uleb128	.Ll54-.Ll53
	.byte	5
	.uleb128	19
	.byte	13
# [144:5]
	.byte	2
	.uleb128	.Ll55-.Ll54
	.byte	5
	.uleb128	5
	.byte	13
# [145:10]
	.byte	2
	.uleb128	.Ll56-.Ll55
	.byte	5
	.uleb128	10
	.byte	13
# [148:3]
	.byte	2
	.uleb128	.Ll57-.Ll56
	.byte	5
	.uleb128	3
	.byte	15
# [149:3]
	.byte	2
	.uleb128	.Ll58-.Ll57
	.byte	13
# [150:3]
	.byte	2
	.uleb128	.Ll59-.Ll58
	.byte	13
# [151:3]
	.byte	2
	.uleb128	.Ll60-.Ll59
	.byte	13
# [152:3]
	.byte	2
	.uleb128	.Ll61-.Ll60
	.byte	13
# [156:1]
	.byte	2
	.uleb128	.Ll62-.Ll61
	.byte	5
	.uleb128	1
	.byte	16
# [157:7]
	.byte	2
	.uleb128	.Ll63-.Ll62
	.byte	5
	.uleb128	7
	.byte	13
# [85:1]
	.byte	2
	.uleb128	.Ll64-.Ll63
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-72
	.byte	1
# [158:1]
	.byte	2
	.uleb128	.Ll65-.Ll64
	.byte	85
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll66
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SYNTHCONTROL_$$_ALLOCATECHANNEL$LONGINT$$LONGINT
# [172:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll67
	.byte	5
	.uleb128	1
	.byte	183
# [173:1]
	.byte	2
	.uleb128	.Ll68-.Ll67
	.byte	13
# [174:1]
	.byte	2
	.uleb128	.Ll69-.Ll68
	.byte	13
# [175:1]
	.byte	2
	.uleb128	.Ll70-.Ll69
	.byte	13
# [178:5]
	.byte	2
	.uleb128	.Ll71-.Ll70
	.byte	5
	.uleb128	5
	.byte	15
# [180:3]
	.byte	2
	.uleb128	.Ll72-.Ll71
	.byte	5
	.uleb128	3
	.byte	14
# [181:16]
	.byte	2
	.uleb128	.Ll73-.Ll72
	.byte	5
	.uleb128	16
	.byte	13
# [183:9]
	.byte	2
	.uleb128	.Ll74-.Ll73
	.byte	5
	.uleb128	9
	.byte	14
# [185:3]
	.byte	2
	.uleb128	.Ll75-.Ll74
	.byte	5
	.uleb128	3
	.byte	14
# [189:3]
	.byte	2
	.uleb128	.Ll76-.Ll75
	.byte	16
# [190:3]
	.byte	2
	.uleb128	.Ll77-.Ll76
	.byte	13
# [191:3]
	.byte	2
	.uleb128	.Ll78-.Ll77
	.byte	13
# [192:3]
	.byte	2
	.uleb128	.Ll79-.Ll78
	.byte	13
# [194:17]
	.byte	2
	.uleb128	.Ll80-.Ll79
	.byte	5
	.uleb128	17
	.byte	14
# [196:19]
	.byte	2
	.uleb128	.Ll81-.Ll80
	.byte	5
	.uleb128	19
	.byte	14
# [197:7]
	.byte	2
	.uleb128	.Ll82-.Ll81
	.byte	5
	.uleb128	7
	.byte	13
# [199:9]
	.byte	2
	.uleb128	.Ll83-.Ll82
	.byte	5
	.uleb128	9
	.byte	14
# [192:10]
	.byte	2
	.uleb128	.Ll84-.Ll83
	.byte	5
	.uleb128	10
	.byte	3
	.sleb128	-7
	.byte	1
# [201:3]
	.byte	2
	.uleb128	.Ll85-.Ll84
	.byte	5
	.uleb128	3
	.byte	21
# [202:16]
	.byte	2
	.uleb128	.Ll86-.Ll85
	.byte	5
	.uleb128	16
	.byte	13
# [204:1]
	.byte	2
	.uleb128	.Ll87-.Ll86
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll88
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SYNTHCONTROL_$$_NOTEON$LONGINT$LONGINT$LONGINT$LONGINT
# [213:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll89
	.byte	5
	.uleb128	1
	.byte	224
# [214:4]
	.byte	2
	.uleb128	.Ll90-.Ll89
	.byte	5
	.uleb128	4
	.byte	13
# [215:14]
	.byte	2
	.uleb128	.Ll91-.Ll90
	.byte	5
	.uleb128	14
	.byte	13
# [216:24]
	.byte	2
	.uleb128	.Ll92-.Ll91
	.byte	5
	.uleb128	24
	.byte	13
# [218:28]
	.byte	2
	.uleb128	.Ll93-.Ll92
	.byte	5
	.uleb128	28
	.byte	14
# [219:26]
	.byte	2
	.uleb128	.Ll94-.Ll93
	.byte	5
	.uleb128	26
	.byte	13
# [220:18]
	.byte	2
	.uleb128	.Ll95-.Ll94
	.byte	5
	.uleb128	18
	.byte	13
# [221:18]
	.byte	2
	.uleb128	.Ll96-.Ll95
	.byte	13
# [222:18]
	.byte	2
	.uleb128	.Ll97-.Ll96
	.byte	13
# [223:22]
	.byte	2
	.uleb128	.Ll98-.Ll97
	.byte	5
	.uleb128	22
	.byte	13
# [224:3]
	.byte	2
	.uleb128	.Ll99-.Ll98
	.byte	5
	.uleb128	3
	.byte	13
# [225:18]
	.byte	2
	.uleb128	.Ll100-.Ll99
	.byte	5
	.uleb128	18
	.byte	13
# [227:1]
	.byte	2
	.uleb128	.Ll101-.Ll100
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll102
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SYNTHCONTROL_$$_NOTEOFF$LONGINT$LONGINT
# [234:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll103
	.byte	5
	.uleb128	1
	.byte	245
# [235:4]
	.byte	2
	.uleb128	.Ll104-.Ll103
	.byte	5
	.uleb128	4
	.byte	13
# [236:14]
	.byte	2
	.uleb128	.Ll105-.Ll104
	.byte	5
	.uleb128	14
	.byte	13
# [237:16]
	.byte	2
	.uleb128	.Ll106-.Ll105
	.byte	5
	.uleb128	16
	.byte	13
# [239:1]
	.byte	2
	.uleb128	.Ll107-.Ll106
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll108
	.byte	0
	.byte	1
	.byte	1
# ###################
.Ledebug_line0:
# End asmlist al_dwarf_line
# Begin asmlist al_end

.section .text.z_DEBUGEND_$SYNTHCONTROL,"x"
.globl	DEBUGEND_$SYNTHCONTROL
DEBUGEND_$SYNTHCONTROL:
# End asmlist al_end

