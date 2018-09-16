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
# [88] begin
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
# [91] end;
	nop
.Lj17:
.Ll4:
# [89] FreeOnTerminate := True;
	movq	-24(%rbp),%rax
	movb	$1,17(%rax)
.Ll5:
# [90] inherited Create(CreateSuspended);
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
.Lt9:
.Ll7:

.section .text.n_synthcontrol_$$_deallocatechannel$longint,"x"
	.balign 16,0x90
.globl	SYNTHCONTROL_$$_DEALLOCATECHANNEL$LONGINT
SYNTHCONTROL_$$_DEALLOCATECHANNEL$LONGINT:
.Lc6:
# Var channel located in register eax
.Ll8:
# [96] begin
	movl	%ecx,%eax
.Ll9:
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rdx
# PeepHole Optimization,var2a
.Ll10:
# [97] channels[channel]:=-$7FFFFFFFFFFFFFFF+abs(channels[channel]);
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
# [98] end;
	ret
.Lc7:
.Lt3:
.Ll12:

.section .text.n_synthcontrol$_$tsynthctrl_$_execute_$$_fin$0,"x"
	.balign 16,0x90
SYNTHCONTROL$_$TSYNTHCTRL_$_EXECUTE_$$_fin$0:
.Lc8:
.seh_proc SYNTHCONTROL$_$TSYNTHCTRL_$_EXECUTE_$$_fin$0
.Ll13:
# [108] begin
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
# Temps allocated between rbp-104 and rbp+0
.seh_proc SYNTHCONTROL$_$TSYNTHCTRL_$__$$_EXECUTE
.Ll16:
	pushq	%rbp
.seh_pushreg %rbp
.Lc15:
.Lc16:
	movq	%rsp,%rbp
.Lc17:
	leaq	-192(%rsp),%rsp
.seh_stackalloc 192
# Var $self located in register rax
# Var md located in register r12d
# Var aa located in register eax
# Var aaa located in register r15d
# Var aaaa located in register r13d
# Var f located in register eax
# Var i located in register ebx
# Var j located in register esi
# Var ch located in register r14d
# Var key located in register edi
	movq	%rbx,-104(%rbp)
	movq	%rdi,-96(%rbp)
	movq	%rsi,-88(%rbp)
	movq	%r12,-80(%rbp)
	movq	%r13,-72(%rbp)
	movq	%r14,-64(%rbp)
	movq	%r15,-56(%rbp)
.seh_savereg %rbx, 88
.seh_savereg %rdi, 96
.seh_savereg %rsi, 104
.seh_savereg %r12, 112
.seh_savereg %r13, 120
.seh_savereg %r14, 128
.seh_savereg %r15, 136
.seh_endprologue
	movq	%rcx,-32(%rbp)
.Ll17:
	movq	$0,-8(%rbp)
.Lj56:
	nop
.Lj52:
.Ll18:
# [109] for i:=0 to maxchannel-1 do channels[i]:=0;
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj59:
	addl	$1,%ebx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rdx
	movq	$0,(%rdx,%rax,8)
	cmpl	$29,%ebx
	jl	.Lj59
.Ll19:
# [110] for j:=0 to 4 do for i:=0 to 127 do notes[i,j]:=maxchannel;
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj64:
	addl	$1,%esi
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj67:
	addl	$1,%ebx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$20,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%esi,%edx
	leaq	U_$SYNTHCONTROL_$$_NOTES(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movl	$30,(%rax,%rdx,4)
	cmpl	$127,%ebx
	jl	.Lj67
	cmpl	$4,%esi
	jl	.Lj64
	.balign 8,0x90
.Lj70:
.Ll20:
# [114] key:=readkeybuffer;
	call	RETRO_$$_READKEYBUFFER$$LONGWORD
	movl	%eax,%edi
.Ll21:
# [117] if key=32 then for i:=0 to 7 do voices[0].operators[i].adsrstate:=1;
	cmpl	$32,%edi
	jne	.Lj76
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj79:
	addl	$1,%ebx
	movq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	movq	8(%rdx,%rax,8),%rax
	movl	$1,328(%rax)
	cmpl	$7,%ebx
	jl	.Lj79
.Lj76:
.Ll22:
# [118] if key=32+$10000 then for i:=0 to 7 do voices[0].operators[i].adsrstate:=5;
	cmpl	$65568,%edi
	jne	.Lj83
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj86:
	addl	$1,%ebx
	movq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	movq	8(%rdx,%rax,8),%rax
	movl	$5,328(%rax)
	cmpl	$7,%ebx
	jl	.Lj86
.Lj83:
.Ll23:
# [119] if key<>$FFFFFFFF then
	cmpl	$4294967295,%edi
	je	.Lj90
.Ll24:
# [121] if key<$10000 then
	cmpl	$65536,%edi
	jnb	.Lj92
.Ll25:
# [123] key:=key and 255;
	movl	%edi,%eax
	andl	$255,%eax
	movl	%eax,%edi
# PeepHole Optimization,var2a
.Ll26:
# [127] key:=keymap2[key];
	movl	%edi,%edx
	leaq	TC_$SYNTHCONTROL_$$_KEYMAP2(%rip),%rax
	movzbl	(%rax,%rdx,1),%eax
	movl	%eax,%edi
.Ll27:
# [128] if key>0 then md:=144+key shl 8+$7F0000 else md:=$FFFFFFFF;
	cmpl	$0,%edi
	jna	.Lj98
	movl	%edi,%eax
	shll	$8,%eax
	leal	144(%eax),%eax
	leal	8323072(%eax),%eax
	movl	%eax,%r12d
	jmp	.Lj116
.Lj98:
	movl	$4294967295,%r12d
	jmp	.Lj116
.Lj92:
.Ll28:
# [135] key:=key and 255;
	movl	%edi,%eax
	andl	$255,%eax
	movl	%eax,%edi
# PeepHole Optimization,var2a
.Ll29:
# [136] key:=keymap2[key];
	movl	%edi,%edx
	leaq	TC_$SYNTHCONTROL_$$_KEYMAP2(%rip),%rax
	movzbl	(%rax,%rdx,1),%eax
	movl	%eax,%edi
.Ll30:
# [137] if key>0 then md:=144+key shl 8 else md:=$FFFFFFFF;
	cmpl	$0,%edi
	jna	.Lj110
	movl	%edi,%eax
	shll	$8,%eax
	leal	144(%eax),%eax
	movl	%eax,%r12d
	jmp	.Lj116
.Lj110:
	movl	$4294967295,%r12d
.Ll31:
# [139] goto p101;
	jmp	.Lj116
.Lj90:
.Ll32:
# [142] md:=readbuffer;
	call	MIDI_$$_READBUFFER$$LONGWORD
	movl	%eax,%r12d
.Lj116:
.Ll33:
# [145] if md<>$FFFFFFFF then
	cmpl	$4294967295,%r12d
	je	.Lj120
.Ll34:
# [147] aa:=md and $FF;
	movl	%r12d,%eax
	andl	$255,%eax
	movl	%eax,%edx
	movq	%rdx,-16(%rbp)
.Ll35:
# [148] aaa:=(md and $FF00) shr 8;
	movl	%r12d,%eax
	andl	$65280,%eax
	shrl	$8,%eax
	movl	%eax,%r15d
.Ll36:
# [149] aaaa:=(md and $FF0000) shr 16 ;
	movl	%r12d,%eax
	andl	$16711680,%eax
	shrl	$16,%eax
	movl	%eax,%r13d
.Ll37:
# [150] midireceived:=0;
	movl	$0,U_$MIDI_$$_MIDIRECEIVED(%rip)
# PeepHole Optimization,var2a
.Ll38:
# [151] f:=round(7492*power(2,(aaa-69)/12));
	movl	%r15d,%eax
	leaq	-69(%rax),%rax
	cvtsi2sd	%rax,%xmm1
	mulsd	_$SYNTHCONTROL$_Ld2(%rip),%xmm1
	movsd	_$SYNTHCONTROL$_Ld3(%rip),%xmm0
	call	MATH_$$_POWER$DOUBLE$DOUBLE$$DOUBLE
	mulsd	_$SYNTHCONTROL$_Ld1(%rip),%xmm0
	cvtsd2siq	%xmm0,%rax
	movl	%eax,%edx
	movq	%rdx,-24(%rbp)
.Ll39:
# [152] if (aa=144) and (aaaa>0) then
	movl	-16(%rbp),%eax
	cmpl	$144,%eax
	jne	.Lj136
	cmpl	$0,%r13d
	jna	.Lj136
.Ll40:
# [154] ch:=allocatechannel(1);
	movl	$1,%ecx
	call	SYNTHCONTROL_$$_ALLOCATECHANNEL$LONGINT$$LONGINT
	movl	%eax,%r14d
.Ll41:
# [155] if ch<maxchannel then
	cmpl	$30,%r14d
	jnl	.Lj143
.Ll42:
# [157] for i:=0 to 127 do if notes[i,0]=ch then notes[i,0]:=maxchannel;
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj146:
	addl	$1,%ebx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$20,%rax,%rdx
	leaq	U_$SYNTHCONTROL_$$_NOTES(%rip),%rax
	movl	(%rax,%rdx),%eax
	cmpl	%r14d,%eax
	jne	.Lj148
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$20,%rax,%rax
	leaq	U_$SYNTHCONTROL_$$_NOTES(%rip),%rdx
	movl	$30,(%rdx,%rax)
.Lj148:
	cmpl	$127,%ebx
	jl	.Lj146
# PeepHole Optimization,var2a
.Ll43:
# [158] notes[aaa,0]:=ch;
	movl	%r15d,%eax
	imulq	$20,%rax,%rax
	leaq	U_$SYNTHCONTROL_$$_NOTES(%rip),%rdx
	movl	%r14d,(%rdx,%rax)
.Ll44:
# [159] noteon(ch,aaa,aaaa,0);
	movl	%r13d,%eax
	movl	%eax,%r8d
	movl	%r15d,%eax
	movl	%eax,%edx
	movl	%r14d,%eax
	movl	$0,%r9d
	movl	%eax,%ecx
	call	SYNTHCONTROL_$$_NOTEON$LONGINT$LONGINT$LONGINT$LONGINT
.Lj143:
.Lj136:
.Ll45:
# [162] if (aa=144) and (aaaa=0) then
	movl	-16(%rbp),%eax
	cmpl	$144,%eax
	jne	.Lj162
	testl	%r13d,%r13d
	jne	.Lj162
.Ll46:
# [164] i:=-1;
	movl	$-1,%ebx
# PeepHole Optimization,var2a
.Ll47:
# [165] ch:=notes[aaa,0];
	movl	%r15d,%eax
	imulq	$20,%rax,%rax
	leaq	U_$SYNTHCONTROL_$$_NOTES(%rip),%rdx
	movl	(%rdx,%rax),%r14d
.Ll48:
# [166] noteoff(ch,aaa);
	movl	%r15d,%edx
	movl	%r14d,%ecx
	call	SYNTHCONTROL_$$_NOTEOFF$LONGINT$LONGINT
.Ll49:
# [167] deallocatechannel(ch);
	movl	%r14d,%ecx
	call	SYNTHCONTROL_$$_DEALLOCATECHANNEL$LONGINT
# PeepHole Optimization,var2a
.Ll50:
# [168] notes[aaa,0]:=maxchannel;
	movl	%r15d,%eax
	imulq	$20,%rax,%rax
	leaq	U_$SYNTHCONTROL_$$_NOTES(%rip),%rdx
	movl	$30,(%rdx,%rax)
.Lj162:
.Ll51:
# [172] blit($F000000,900,916,$F000000,900,900,120,128,1792,1792);
	movl	$1792,72(%rsp)
	movl	$1792,64(%rsp)
	movl	$128,56(%rsp)
	movl	$120,48(%rsp)
	movl	$900,40(%rsp)
	movl	$900,32(%rsp)
	movl	$251658240,%r9d
	movl	$916,%r8d
	movl	$900,%eax
	movl	$251658240,%ecx
	movl	%eax,%edx
	call	RETRO_$$_BLIT$crc5A667533
.Ll52:
# [173] box(900,1028,120,16,33);
	movl	$33,32(%rsp)
	movl	$16,%r9d
	movl	$120,%r8d
	movl	$1028,%eax
	movl	$900,%ecx
	movl	%eax,%edx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll53:
# [174] outtextxy(904,1028,inttostr(aa),15);
	movl	-16(%rbp),%eax
# PeepHole Optimization,var2a
	movl	%eax,%edx
	leaq	-8(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	$15,%r9d
	movl	$1028,%eax
	movl	$904,%ecx
	movl	%eax,%edx
	call	RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
# PeepHole Optimization,var2a
.Ll54:
# [175] outtextxy(944,1028,inttostr(aaa),15);
	movl	%r15d,%edx
	leaq	-8(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	$15,%r9d
	movl	$1028,%eax
	movl	$944,%ecx
	movl	%eax,%edx
	call	RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
# PeepHole Optimization,var2a
.Ll55:
# [176] outtextxy(984,1028,inttostr(aaaa),15);
	movl	%r13d,%edx
	leaq	-8(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	$15,%r9d
	movl	$1028,%eax
	movl	$984,%ecx
	movl	%eax,%edx
	call	RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
.Lj120:
.Ll56:
# [179] sleep(1)
	movl	$1,%ecx
	call	CLASSES$_$TTHREAD_$__$$_SLEEP$LONGWORD
.Ll57:
# [180] until terminated;
	movq	-32(%rbp),%rax
	cmpb	$0,16(%rax)
	je	.Lj70
.Lj244:
.Ll58:
	nop
.Lj53:
	movq	%rbp,%rcx
	call	SYNTHCONTROL$_$TSYNTHCTRL_$_EXECUTE_$$_fin$0
.Ll59:
# [181] end;
	movq	-104(%rbp),%rbx
	movq	-96(%rbp),%rdi
	movq	-88(%rbp),%rsi
	movq	-80(%rbp),%r12
	movq	-72(%rbp),%r13
	movq	-64(%rbp),%r14
	movq	-56(%rbp),%r15
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj52
	.rva	.Lj53
	.rva	SYNTHCONTROL$_$TSYNTHCTRL_$_EXECUTE_$$_fin$0

.section .text.n_synthcontrol$_$tsynthctrl_$__$$_execute,"x"
.seh_endproc
.Lc14:
.Lt8:
.Ll60:

.section .text.n_synthcontrol_$$_allocatechannel$longint$$longint,"x"
	.balign 16,0x90
.globl	SYNTHCONTROL_$$_ALLOCATECHANNEL$LONGINT$$LONGINT
SYNTHCONTROL_$$_ALLOCATECHANNEL$LONGINT$$LONGINT:
.Lc18:
.seh_proc SYNTHCONTROL_$$_ALLOCATECHANNEL$LONGINT$$LONGINT
.Ll61:
# [195] begin
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
.Ll62:
# [196] i:=0;
	movl	$0,%esi
.Ll63:
# [197] while i<maxchannel do if channels[i]=0 then goto p101 else i+=1;
	jmp	.Lj252
	.balign 8,0x90
.Lj251:
# PeepHole Optimization,var2a
	movl	%esi,%eax
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rdx
	cmpq	$0,(%rdx,%rax,8)
	je	.Lj256
	leal	1(%esi),%eax
	movl	%eax,%esi
.Lj252:
	cmpl	$30,%esi
	jl	.Lj251
.Ll64:
# [198] while i<maxchannel do if channels[i]<0 then goto p101 else i+=1;
	jmp	.Lj261
	.balign 8,0x90
.Lj260:
# PeepHole Optimization,var2a
	movl	%esi,%eax
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rdx
	cmpq	$0,(%rdx,%rax,8)
	jl	.Lj256
	leal	1(%esi),%eax
	movl	%eax,%esi
.Lj261:
	cmpl	$30,%esi
	jl	.Lj260
.Lj256:
.Ll65:
# [201] if i<maxchannel then
	cmpl	$30,%esi
	jnl	.Lj269
.Ll66:
# [203] result:=i;
	movl	%esi,%r13d
.Ll67:
# [204] channels[i]:=gettime;
	call	RETRO_$$_GETTIME$$INT64
# PeepHole Optimization,var2a
	movl	%esi,%edx
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rcx
	movq	%rax,(%rcx,%rdx,8)
	jmp	.Lj274
.Lj269:
.Ll68:
# [206] else if (i=maxchannel) and (mode=0) then
	cmpl	$30,%esi
	jne	.Lj276
	testl	%ebx,%ebx
	jne	.Lj276
.Ll69:
# [208] result:=maxchannel;
	movl	$30,%r13d
	jmp	.Lj280
.Lj276:
.Ll70:
# [212] i:=0;
	movl	$0,%esi
.Ll71:
# [213] f:=channels[0];
	movq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%r12
.Ll72:
# [214] q:=0;
	movl	$0,%edi
.Ll73:
# [215] while i<maxchannel do
	jmp	.Lj288
	.balign 8,0x90
.Lj287:
# PeepHole Optimization,var2a
.Ll74:
# [217] if channels[i]<f then
	movl	%esi,%eax
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	cmpq	%r12,%rax
	jnl	.Lj291
# PeepHole Optimization,var2a
.Ll75:
# [219] f:=channels[i];
	movl	%esi,%eax
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rdx
	movq	(%rdx,%rax,8),%r12
.Ll76:
# [220] q:=i;
	movl	%esi,%edi
.Lj291:
.Ll77:
# [222] i+=1;
	leal	1(%esi),%eax
	movl	%eax,%esi
.Lj288:
.Ll78:
	cmpl	$30,%esi
	jl	.Lj287
.Ll79:
# [224] result:=q;
	movl	%edi,%r13d
.Ll80:
# [225] channels[q]:=gettime;
	call	RETRO_$$_GETTIME$$INT64
# PeepHole Optimization,var2a
	movl	%edi,%edx
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rcx
	movq	%rax,(%rcx,%rdx,8)
.Lj280:
.Lj274:
.Ll81:
# [228] end;
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
.Ll82:

.section .text.n_synthcontrol_$$_noteon$longint$longint$longint$longint,"x"
	.balign 16,0x90
.globl	SYNTHCONTROL_$$_NOTEON$LONGINT$LONGINT$LONGINT$LONGINT
SYNTHCONTROL_$$_NOTEON$LONGINT$LONGINT$LONGINT$LONGINT:
.Lc21:
.seh_proc SYNTHCONTROL_$$_NOTEON$LONGINT$LONGINT$LONGINT$LONGINT
.Ll83:
# [237] begin
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
	pushq	%r15
.seh_pushreg %r15
	leaq	-48(%rsp),%rsp
.Lc23:
.seh_stackalloc 48
	movdqa	%xmm6,32(%rsp)
# Var channel located in register ebx
# Var note located in register esi
# Var velocity located in register edi
# Var preset located in register r12d
# Var i located in register r13d
# Var f located in register xmm6
.seh_savexmm %xmm6, 32
.seh_endprologue
	movl	%ecx,%ebx
	movl	%edx,%esi
	movl	%r8d,%edi
	movl	%r9d,%r12d
.Ll84:
# [238] if (channel>=maxchannel) or (channel<0) then goto p999;
	cmpl	$30,%ebx
	jge	.Lj307
	cmpl	$0,%ebx
	jl	.Lj307
# PeepHole Optimization,var2a
.Ll85:
# [239] f:=fnotes[note] ;
	movl	%esi,%eax
	leaq	U_$FMSYNTH_$$_FNOTES(%rip),%rdx
	movsd	(%rdx,%rax,8),%xmm6
.Ll86:
# [240] voices[channel].setfreq(0);
	movsd	_$SYNTHCONTROL$_Ld4(%rip),%xmm1
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rcx
	call	FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE
.Ll87:
# [241] for i:=0 to 7 do  voices[channel].operators[i].pa:=0;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj316:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rax
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rdx
	movq	%rdx,288(%rax)
	cmpl	$7,%r13d
	jl	.Lj316
.Ll88:
# [242] for i:=0 to 7 do voices[channel].operators[i].vel:=flogtable[49152+128*velocity];
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj321:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rcx
	movslq	%edi,%rax
	shlq	$7,%rax
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%rdx
	movq	393216(%rdx,%rax,8),%rax
	movq	%rax,264(%rcx)
	cmpl	$7,%r13d
	jl	.Lj321
# PeepHole Optimization,var2a
.Ll89:
# [244] voices[channel].outmuls[0]:=1;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movl	_$SYNTHCONTROL$_Ld5(%rip),%edx
	movl	%edx,136(%rax)
# PeepHole Optimization,var2a
.Ll90:
# [245] voices[channel].outmuls[1]:=0;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movl	_$SYNTHCONTROL$_Ld6(%rip),%edx
	movl	%edx,140(%rax)
# PeepHole Optimization,var2a
.Ll91:
# [246] voices[channel].outmuls[2]:=1;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movl	_$SYNTHCONTROL$_Ld5(%rip),%edx
	movl	%edx,144(%rax)
# PeepHole Optimization,var2a
.Ll92:
# [247] voices[channel].outmuls[3]:=0;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
	movl	_$SYNTHCONTROL$_Ld6(%rip),%eax
	movl	%eax,148(%rdx)
# PeepHole Optimization,var2a
.Ll93:
# [248] voices[channel].outmuls[4]:=1;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movl	_$SYNTHCONTROL$_Ld5(%rip),%edx
	movl	%edx,152(%rax)
# PeepHole Optimization,var2a
.Ll94:
# [249] voices[channel].outmuls[5]:=0;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movl	_$SYNTHCONTROL$_Ld6(%rip),%edx
	movl	%edx,156(%rax)
# PeepHole Optimization,var2a
.Ll95:
# [250] voices[channel].outmuls[6]:=0;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movl	_$SYNTHCONTROL$_Ld6(%rip),%edx
	movl	%edx,160(%rax)
# PeepHole Optimization,var2a
.Ll96:
# [251] voices[channel].outmuls[7]:=0;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movl	_$SYNTHCONTROL$_Ld6(%rip),%edx
	movl	%edx,164(%rax)
.Ll97:
# [255] for i:=0 to 7 do  voices[channel].operators[i].wavemode:=1;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj342:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rax
	movl	$1,332(%rax)
	cmpl	$7,%r13d
	jl	.Lj342
.Ll98:
# [256] for i:=0 to 7 do  voices[channel].operators[i].wptr:=sounds[waveidx].samples[sounds[waveidx].notes[note-12]].wave;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj347:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%r8
.Ll99:
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	movl	TC_$FMSYNTH_$$_WAVEIDX(%rip),%ecx
# PeepHole Optimization,var2a
.Ll100:
	movl	%ecx,%edx
	imulq	$2824,%rdx,%r9
	andl	$4294967295,%ecx
	imulq	$2824,%rcx,%rcx
	movslq	%esi,%rdx
	leaq	2264(%rax,%rcx),%rcx
	movl	(%rcx,%rdx,4),%ecx
	leaq	8(%rax,%r9),%rdx
	imulq	$48,%rcx,%rax
	movq	32(%rdx,%rax),%rax
	movq	%rax,136(%r8)
	cmpl	$7,%r13d
	jl	.Lj347
.Ll101:
# [257] for i:=0 to 7 do  voices[channel].operators[i].wlend:=sounds[waveidx].samples[sounds[waveidx].notes[note-12]].lend ;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj356:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%r8
.Ll102:
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	movl	TC_$FMSYNTH_$$_WAVEIDX(%rip),%ecx
# PeepHole Optimization,var2a
.Ll103:
	movl	%ecx,%edx
	imulq	$2824,%rdx,%r9
	andl	$4294967295,%ecx
	imulq	$2824,%rcx,%rcx
	movslq	%esi,%rdx
	leaq	2264(%rax,%rcx),%rcx
	movl	(%rcx,%rdx,4),%ecx
	leaq	8(%rax,%r9),%rdx
	imulq	$48,%rcx,%rax
	cvtsi2sdl	16(%rdx,%rax),%xmm0
	movsd	%xmm0,160(%r8)
	cmpl	$7,%r13d
	jl	.Lj356
.Ll104:
# [258] for i:=0 to 7 do  voices[channel].operators[i].wlstart:=sounds[waveidx].samples[sounds[waveidx].notes[note-12]].lstart;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj365:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%r8
.Ll105:
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	movl	TC_$FMSYNTH_$$_WAVEIDX(%rip),%ecx
# PeepHole Optimization,var2a
.Ll106:
	movl	%ecx,%edx
	imulq	$2824,%rdx,%r9
	andl	$4294967295,%ecx
	imulq	$2824,%rcx,%rcx
	movslq	%esi,%rdx
	leaq	2264(%rax,%rcx),%rcx
	movl	(%rcx,%rdx,4),%ecx
	leaq	8(%rax,%r9),%rdx
	imulq	$48,%rcx,%rax
	cvtsi2sdl	12(%rdx,%rax),%xmm0
	movsd	%xmm0,152(%r8)
	cmpl	$7,%r13d
	jl	.Lj365
.Ll107:
# [259] for i:=0 to 7 do  voices[channel].operators[i].wlength:=sounds[waveidx].samples[sounds[waveidx].notes[note-12]].len;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj374:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%r8
.Ll108:
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	movl	TC_$FMSYNTH_$$_WAVEIDX(%rip),%ecx
# PeepHole Optimization,var2a
.Ll109:
	movl	%ecx,%edx
	imulq	$2824,%rdx,%r9
	andl	$4294967295,%ecx
	imulq	$2824,%rcx,%rcx
	movslq	%esi,%rdx
	leaq	2264(%rax,%rcx),%rcx
	movl	(%rcx,%rdx,4),%ecx
	leaq	8(%rax,%r9),%rdx
	imulq	$48,%rcx,%rax
	cvtsi2sdl	8(%rdx,%rax),%xmm0
	movsd	%xmm0,144(%r8)
	cmpl	$7,%r13d
	jl	.Lj374
.Ll110:
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	movl	TC_$FMSYNTH_$$_WAVEIDX(%rip),%ecx
# PeepHole Optimization,var2a
.Ll111:
# [260] ss1:=sounds[waveidx].samples[sounds[waveidx].notes[note-12]].name;
	movl	%ecx,%edx
	imulq	$2824,%rdx,%r8
	andl	$4294967295,%ecx
	imulq	$2824,%rcx,%rcx
	movslq	%esi,%rdx
	leaq	2264(%rax,%rcx),%rcx
	movl	(%rcx,%rdx,4),%ecx
	leaq	8(%rax,%r8),%rdx
	imulq	$48,%rcx,%rax
	movq	(%rdx,%rax),%rdx
	leaq	U_$SYNTHCONTROL_$$_SS1(%rip),%rcx
	call	fpc_ansistr_assign
.Ll112:
# [261] for i:=0 to 7 do  voices[channel].operators[i].freqmod:=sounds[waveidx].samples[sounds[waveidx].notes[note-12]].speed*power(2,transpose);
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj391:
	addl	$1,%r13d
.Ll113:
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	movl	TC_$FMSYNTH_$$_WAVEIDX(%rip),%ecx
# PeepHole Optimization,var2a
.Ll114:
	movl	%ecx,%edx
	imulq	$2824,%rdx,%r8
	andl	$4294967295,%ecx
	imulq	$2824,%rcx,%rcx
	movslq	%esi,%rdx
	leaq	2264(%rax,%rcx),%rcx
	movl	(%rcx,%rdx,4),%edx
	leaq	8(%rax,%r8),%r14
	imulq	$48,%rdx,%r15
	cvtsi2sdl	TC_$FMSYNTH_$$_TRANSPOSE(%rip),%xmm1
	movsd	_$SYNTHCONTROL$_Ld3(%rip),%xmm0
	call	MATH_$$_POWER$DOUBLE$DOUBLE$$DOUBLE
	mulsd	24(%r14,%r15),%xmm0
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rax
	movsd	%xmm0,304(%rax)
	cmpl	$7,%r13d
	jl	.Lj391
.Ll115:
# [263] for i:=0 to 7 do  voices[channel].operators[i].mul0:=0;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj404:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rdx
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rax
	movq	%rax,72(%rdx)
	cmpl	$7,%r13d
	jl	.Lj404
.Ll116:
# [264] for i:=0 to 7 do  voices[channel].operators[i].mul1:=0;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj409:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rax
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rdx
	movq	%rdx,80(%rax)
	cmpl	$7,%r13d
	jl	.Lj409
.Ll117:
# [265] for i:=0 to 7 do  voices[channel].operators[i].mul2:=0;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj414:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rax
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rdx
	movq	%rdx,88(%rax)
	cmpl	$7,%r13d
	jl	.Lj414
.Ll118:
# [266] for i:=0 to 7 do  voices[channel].operators[i].mul3:=0;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj419:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rax
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rdx
	movq	%rdx,96(%rax)
	cmpl	$7,%r13d
	jl	.Lj419
.Ll119:
# [267] for i:=0 to 7 do  voices[channel].operators[i].mul4:=0;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj424:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rdx
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rax
	movq	%rax,104(%rdx)
	cmpl	$7,%r13d
	jl	.Lj424
.Ll120:
# [268] for i:=0 to 7 do  voices[channel].operators[i].mul5:=0;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj429:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rax
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rdx
	movq	%rdx,112(%rax)
	cmpl	$7,%r13d
	jl	.Lj429
.Ll121:
# [269] for i:=0 to 7 do  voices[channel].operators[i].mul6:=0;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj434:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rax
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rdx
	movq	%rdx,120(%rax)
	cmpl	$7,%r13d
	jl	.Lj434
.Ll122:
# [270] for i:=0 to 7 do  voices[channel].operators[i].mul7:=0;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj439:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rax
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rdx
	movq	%rdx,128(%rax)
	cmpl	$7,%r13d
	jl	.Lj439
# PeepHole Optimization,var2a
.Ll123:
# [278] voices[channel].setfreq(f);
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rcx
	movapd	%xmm6,%xmm1
	call	FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE
.Ll124:
# [279] for i:=0 to 7 do  voices[channel].operators[i].pa:=0;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj448:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rdx
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rax
	movq	%rax,288(%rdx)
	cmpl	$7,%r13d
	jl	.Lj448
.Ll125:
# [281] for i:=0 to 7 do  voices[channel].operators[i].ar1:=att;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj453:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rdx
	movq	TC_$FMSYNTH_$$_ATT(%rip),%rax
	movq	%rax,176(%rdx)
	cmpl	$7,%r13d
	jl	.Lj453
.Ll126:
# [282] for i:=0 to 7 do voices[channel].operators[i].adsrstate:=1;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj458:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rax
	movl	$1,328(%rax)
	cmpl	$7,%r13d
	jl	.Lj458
.Ll127:
# [283] for i:=0 to 0 do voices[channel].operators[i].adsrval:=0;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj463:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rax
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rdx
	movq	%rdx,168(%rax)
	testl	%r13d,%r13d
	jl	.Lj463
.Lj307:
.Ll128:
# [289] end;
	nop
	movdqa	32(%rsp),%xmm6
	leaq	48(%rsp),%rsp
	popq	%r15
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
.Ll129:

.section .text.n_synthcontrol_$$_noteoff$longint$longint,"x"
	.balign 16,0x90
.globl	SYNTHCONTROL_$$_NOTEOFF$LONGINT$LONGINT
SYNTHCONTROL_$$_NOTEOFF$LONGINT$LONGINT:
.Lc24:
# Var channel located in register ecx
# Var note located in register edx
# Var i located in register r8d
# [299] begin
.Ll130:
# [300] if channel<maxchannel then for i:=0 to 7 do voices[channel].operators[i].adsrstate:=5;
	cmpl	$30,%ecx
	jnl	.Lj469
	movl	$0,%r8d
	subl	$1,%r8d
	.balign 8,0x90
.Lj472:
	addl	$1,%r8d
# PeepHole Optimization,var2a
	movl	%ecx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%r9
	movq	(%r9,%rax,8),%r9
# PeepHole Optimization,var2a
	movl	%r8d,%eax
	movq	8(%r9,%rax,8),%rax
	movl	$5,328(%rax)
	cmpl	$7,%r8d
	jl	.Lj472
.Lj469:
.Ll131:
# [302] end;
	ret
.Lc25:
.Lt5:
.Ll132:

.section .text.n_synthcontrol_$$_init_implicit$,"x"
	.balign 16,0x90
.globl	INIT$_$SYNTHCONTROL
INIT$_$SYNTHCONTROL:
.globl	SYNTHCONTROL_$$_init_implicit$
SYNTHCONTROL_$$_init_implicit$:
.Lc26:
.seh_proc SYNTHCONTROL_$$_init_implicit$
	leaq	-40(%rsp),%rsp
.Lc28:
.seh_stackalloc 40
.seh_endprologue
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc27:
.Lt6:
.Ll133:

.section .text.n_synthcontrol_$$_finalize_implicit$,"x"
	.balign 16,0x90
.globl	FINALIZE$_$SYNTHCONTROL
FINALIZE$_$SYNTHCONTROL:
.globl	SYNTHCONTROL_$$_finalize_implicit$
SYNTHCONTROL_$$_finalize_implicit$:
.Lc29:
.seh_proc SYNTHCONTROL_$$_finalize_implicit$
	leaq	-40(%rsp),%rsp
.Lc31:
.seh_stackalloc 40
.seh_endprologue
	leaq	INIT_$SYNTHCONTROL_$$_DEF10(%rip),%rax
	movq	%rax,%rdx
	leaq	U_$SYNTHCONTROL_$$_INSTRUMENTS(%rip),%rcx
	call	fpc_finalize
	leaq	U_$SYNTHCONTROL_$$_SS1(%rip),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc30:
.Lt7:
.Ll134:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 8
# [synthcontrol.pas]
# [41] var channels:array[0..maxchannel-1] of int64;
	.globl U_$SYNTHCONTROL_$$_CHANNELS
U_$SYNTHCONTROL_$$_CHANNELS:
	.zero 240

.section .bss
	.balign 4
# [42] notes:array[0..127,0..4] of integer;
	.globl U_$SYNTHCONTROL_$$_NOTES
U_$SYNTHCONTROL_$$_NOTES:
	.zero 2560

.section .bss
	.balign 8
# [43] instruments:array[0..192] of TInstrDesc;
	.globl U_$SYNTHCONTROL_$$_INSTRUMENTS
U_$SYNTHCONTROL_$$_INSTRUMENTS:
	.zero 4658248

.section .bss
	.balign 8
# [45] ss1:string;
	.globl U_$SYNTHCONTROL_$$_SS1
U_$SYNTHCONTROL_$$_SS1:
	.zero 8

.section .bss
# [75] controls: array[0..255] of byte;
	.globl U_$SYNTHCONTROL_$$_CONTROLS
U_$SYNTHCONTROL_$$_CONTROLS:
	.zero 256

.section .bss
	.balign 4
# [76] cx1,cy1,cx2,cy2:array[0..255] of integer;
	.globl U_$SYNTHCONTROL_$$_CX1
U_$SYNTHCONTROL_$$_CX1:
	.zero 1024

.section .bss
	.balign 4
	.globl U_$SYNTHCONTROL_$$_CY1
U_$SYNTHCONTROL_$$_CY1:
	.zero 1024

.section .bss
	.balign 4
	.globl U_$SYNTHCONTROL_$$_CX2
U_$SYNTHCONTROL_$$_CX2:
	.zero 1024

.section .bss
	.balign 4
	.globl U_$SYNTHCONTROL_$$_CY2
U_$SYNTHCONTROL_$$_CY2:
	.zero 1024

.section .data.n_VMT_$SYNTHCONTROL_$$_TSYNTHCTRL,"d"
	.balign 8
.globl	VMT_$SYNTHCONTROL_$$_TSYNTHCTRL
VMT_$SYNTHCONTROL_$$_TSYNTHCTRL:
	.quad	88,-88
	.quad	VMT_$CLASSES_$$_TTHREAD
	.quad	.Ld7
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
# [306] 
	.balign 8
.Ld7:
	.byte	10
	.ascii	"TSynthCtrl"
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .data.n_tc_$synthcontrol_$$_keymap2,"d"
.globl	TC_$SYNTHCONTROL_$$_KEYMAP2
TC_$SYNTHCONTROL_$$_KEYMAP2:
	.byte	0,0,0,0,49,57,53,0,0,54,56,58,79,0,61,63,60,59,81,83,67,72,51,74,77,55,69,52,76,50,66,68,0,0,73,75,0,78,80,0,0,0
	.byte	87,0,72,94,74,76,92,0,78,80,82,0,85,87,0,90,0,0,0,0,0,0,0,0,0,0,0,0,100,101,102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,95,0,96
	.byte	0,0,0,0,67,64,63,81,0,66,68,89,70,0,73,71,69,91,93,77,83,61,84,88,65,79,62,86,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,59,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.section .rodata.n__$SYNTHCONTROL$_Ld1,"d"
	.balign 8
.globl	_$SYNTHCONTROL$_Ld1
_$SYNTHCONTROL$_Ld1:
# value: 0d+7.4920000000000000E+003
	.byte	0,0,0,0,0,68,189,64

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

.section .rodata.n__$SYNTHCONTROL$_Ld4,"d"
	.balign 8
.globl	_$SYNTHCONTROL$_Ld4
_$SYNTHCONTROL$_Ld4:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0

.section .rodata.n__$SYNTHCONTROL$_Ld5,"d"
	.balign 4
.globl	_$SYNTHCONTROL$_Ld5
_$SYNTHCONTROL$_Ld5:
# value: 0d+1.000000000E+00
	.byte	0,0,128,63

.section .rodata.n__$SYNTHCONTROL$_Ld6,"d"
	.balign 4
.globl	_$SYNTHCONTROL$_Ld6
_$SYNTHCONTROL$_Ld6:
# value: 0d+0.000000000E+00
	.byte	0,0,0,0
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

.section .data.n_INIT_$SYNTHCONTROL_$$_TOPERATORDESC,"d"
	.balign 8
.globl	INIT_$SYNTHCONTROL_$$_TOPERATORDESC
INIT_$SYNTHCONTROL_$$_TOPERATORDESC:
	.byte	13,13
	.ascii	"TOperatorDesc"
	.long	3008,1
	.quad	INIT_$FMSYNTH_$$_TMULTISAMPLE
	.quad	72

.section .data.n_RTTI_$SYNTHCONTROL_$$_TOPERATORDESC,"d"
	.balign 8
.globl	RTTI_$SYNTHCONTROL_$$_TOPERATORDESC
RTTI_$SYNTHCONTROL_$$_TOPERATORDESC:
	.byte	13,13
	.ascii	"TOperatorDesc"
	.long	3008,24
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	0
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	8
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	16
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	24
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	32
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	40
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	48
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	56
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	64
	.quad	RTTI_$FMSYNTH_$$_TMULTISAMPLE
	.quad	72
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	2896
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	2904
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	2912
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	2920
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	2928
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	2936
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	2944
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	2952
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	2960
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	2968
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	2976
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	2984
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	2992
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	3000

.section .data.n_INIT_$SYNTHCONTROL_$$_DEF5,"d"
	.balign 8
.globl	INIT_$SYNTHCONTROL_$$_DEF5
INIT_$SYNTHCONTROL_$$_DEF5:
	.byte	12
	.ascii	"\000"
	.quad	24064,8
	.quad	INIT_$SYNTHCONTROL_$$_TOPERATORDESC
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_INIT_$SYNTHCONTROL_$$_TINSTRDESC,"d"
	.balign 8
.globl	INIT_$SYNTHCONTROL_$$_TINSTRDESC
INIT_$SYNTHCONTROL_$$_TINSTRDESC:
	.byte	13,10
	.ascii	"TInstrDesc"
	.long	24136,2
	.quad	RTTI_$SYSTEM_$$_ANSISTRING
	.quad	0
	.quad	INIT_$SYNTHCONTROL_$$_DEF5
	.quad	8

.section .data.n_RTTI_$SYNTHCONTROL_$$_DEF5,"d"
	.balign 8
.globl	RTTI_$SYNTHCONTROL_$$_DEF5
RTTI_$SYNTHCONTROL_$$_DEF5:
	.byte	12
	.ascii	"\000"
	.quad	24064,8
	.quad	RTTI_$SYNTHCONTROL_$$_TOPERATORDESC
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$SYNTHCONTROL_$$_DEF6,"d"
	.balign 8
.globl	RTTI_$SYNTHCONTROL_$$_DEF6
RTTI_$SYNTHCONTROL_$$_DEF6:
	.byte	12
	.ascii	"\000"
	.quad	64,8
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$SYNTHCONTROL_$$_TINSTRDESC,"d"
	.balign 8
.globl	RTTI_$SYNTHCONTROL_$$_TINSTRDESC
RTTI_$SYNTHCONTROL_$$_TINSTRDESC:
	.byte	13,10
	.ascii	"TInstrDesc"
	.long	24136,3
	.quad	RTTI_$SYSTEM_$$_ANSISTRING
	.quad	0
	.quad	RTTI_$SYNTHCONTROL_$$_DEF5
	.quad	8
	.quad	RTTI_$SYNTHCONTROL_$$_DEF6
	.quad	24072

.section .data.n_INIT_$SYNTHCONTROL_$$_DEF10,"d"
	.balign 8
.globl	INIT_$SYNTHCONTROL_$$_DEF10
INIT_$SYNTHCONTROL_$$_DEF10:
	.byte	12
	.ascii	"\000"
	.quad	4658248,193
	.quad	INIT_$SYNTHCONTROL_$$_TINSTRDESC
	.byte	1
	.quad	RTTI_$SYSTEM_$$_BYTE
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc32:
	.long	.Lc34-.Lc33
.Lc33:
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
.Lc34:
	.long	.Lc36-.Lc35
.Lc35:
	.secrel32	.Lc32
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
.Lc36:
	.long	.Lc38-.Lc37
.Lc37:
	.secrel32	.Lc32
	.quad	.Lc6
	.quad	.Lc7-.Lc6
	.balign 4,0
.Lc38:
	.long	.Lc40-.Lc39
.Lc39:
	.secrel32	.Lc32
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
.Lc40:
	.long	.Lc42-.Lc41
.Lc41:
	.secrel32	.Lc32
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
.Lc42:
	.long	.Lc44-.Lc43
.Lc43:
	.secrel32	.Lc32
	.quad	.Lc18
	.quad	.Lc19-.Lc18
	.byte	4
	.long	.Lc20-.Lc18
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc44:
	.long	.Lc46-.Lc45
.Lc45:
	.secrel32	.Lc32
	.quad	.Lc21
	.quad	.Lc22-.Lc21
	.byte	4
	.long	.Lc23-.Lc21
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc46:
	.long	.Lc48-.Lc47
.Lc47:
	.secrel32	.Lc32
	.quad	.Lc24
	.quad	.Lc25-.Lc24
	.balign 4,0
.Lc48:
	.long	.Lc50-.Lc49
.Lc49:
	.secrel32	.Lc32
	.quad	.Lc26
	.quad	.Lc27-.Lc26
	.byte	4
	.long	.Lc28-.Lc26
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc50:
	.long	.Lc52-.Lc51
.Lc51:
	.secrel32	.Lc32
	.quad	.Lc29
	.quad	.Lc30-.Lc29
	.byte	4
	.long	.Lc31-.Lc29
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc52:
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
# [86] constructor TSynthCtrl.Create(CreateSuspended : boolean);
	.ascii	"synthcontrol.pas\000"
	.ascii	"Free Pascal 3.0.4 2018/02/25\000"
	.ascii	"D:/programowanie/20180824 retro-fm/\000"
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
# Symbol FMSYNTH
# Symbol MAXCHANNEL
	.uleb128	2
	.ascii	"MAXCHANNEL\000"
	.long	.La1-.Ldebug_info0
	.uleb128	30
# Symbol TSYNTHCTRL
# Symbol TOPERATORDESC
# Symbol TINSTRDESC
# Symbol CHANNELS
	.uleb128	3
	.ascii	"CHANNELS\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$SYNTHCONTROL_$$_CHANNELS
	.long	.La10-.Ldebug_info0
# Symbol NOTES
	.uleb128	3
	.ascii	"NOTES\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$SYNTHCONTROL_$$_NOTES
	.long	.La12-.Ldebug_info0
# Symbol INSTRUMENTS
	.uleb128	3
	.ascii	"INSTRUMENTS\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$SYNTHCONTROL_$$_INSTRUMENTS
	.long	.La14-.Ldebug_info0
# Symbol SS1
	.uleb128	3
	.ascii	"SS1\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$SYNTHCONTROL_$$_SS1
	.long	.La16-.Ldebug_info0
# Symbol KEYMAP2
	.uleb128	3
	.ascii	"KEYMAP2\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$SYNTHCONTROL_$$_KEYMAP2
	.long	.La18-.Ldebug_info0
# Symbol CONTROLS
	.uleb128	3
	.ascii	"CONTROLS\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$SYNTHCONTROL_$$_CONTROLS
	.long	.La20-.Ldebug_info0
# Symbol CX1
	.uleb128	3
	.ascii	"CX1\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$SYNTHCONTROL_$$_CX1
	.long	.La22-.Ldebug_info0
# Symbol CY1
	.uleb128	3
	.ascii	"CY1\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$SYNTHCONTROL_$$_CY1
	.long	.La22-.Ldebug_info0
# Symbol CX2
	.uleb128	3
	.ascii	"CX2\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$SYNTHCONTROL_$$_CX2
	.long	.La22-.Ldebug_info0
# Symbol CY2
	.uleb128	3
	.ascii	"CY2\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$SYNTHCONTROL_$$_CY2
	.long	.La22-.Ldebug_info0
# Symbol ALLOCATECHANNEL
# Symbol DEALLOCATECHANNEL
# Symbol NOTEON
# Symbol NOTEOFF
# Syms - End unit SYNTHCONTROL has index 17
# Syms - Begin Staticsymtable
# Symbol RETRO
# Symbol MIDI
# Symbol SYNTHCONTROL_$$_init$
# Symbol SYNTHCONTROL_$$_init_implicit$
# Symbol SYNTHCONTROL_$$_finalize_implicit$
# Syms - End Staticsymtable
# Procdef $fin$0(<^untyped>) is nested;
	.uleb128	4
	.ascii	"fin$0\000"
	.byte	1
	.byte	65
	.quad	SYNTHCONTROL$_$TSYNTHCTRL_$_EXECUTE_$$_fin$0
	.quad	.Lt1
# Symbol parentfp
	.uleb128	5
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef allocatechannel(LongInt):LongInt;
	.uleb128	6
	.ascii	"ALLOCATECHANNEL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La26-.Ldebug_info0
	.quad	SYNTHCONTROL_$$_ALLOCATECHANNEL$LONGINT$$LONGINT
	.quad	.Lt2
# Symbol MODE
	.uleb128	5
	.ascii	"MODE\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La26-.Ldebug_info0
# Symbol result
	.uleb128	7
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La26-.Ldebug_info0
# Symbol ALLOCATECHANNEL
	.uleb128	7
	.ascii	"ALLOCATECHANNEL\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La26-.Ldebug_info0
# Symbol RESULT
	.uleb128	7
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La26-.Ldebug_info0
# Symbol P101
# Symbol I
	.uleb128	7
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La26-.Ldebug_info0
# Symbol Q
	.uleb128	7
	.ascii	"Q\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La26-.Ldebug_info0
# Symbol F
	.uleb128	7
	.ascii	"F\000"
	.byte	2
	.byte	144
	.uleb128	12
	.long	.La28-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
# Symbol NOTE
	.uleb128	5
	.ascii	"NOTE\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La26-.Ldebug_info0
# Symbol VELOCITY
	.uleb128	5
	.ascii	"VELOCITY\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La26-.Ldebug_info0
# Symbol PRESET
	.uleb128	5
	.ascii	"PRESET\000"
	.byte	2
	.byte	144
	.uleb128	12
	.long	.La26-.Ldebug_info0
# Symbol P999
# Symbol I
	.uleb128	7
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La26-.Ldebug_info0
# Symbol F
	.uleb128	7
	.ascii	"F\000"
	.byte	2
	.byte	144
	.uleb128	23
	.long	.La30-.Ldebug_info0
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
	.uleb128	2
	.long	.La26-.Ldebug_info0
# Symbol NOTE
	.uleb128	5
	.ascii	"NOTE\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La26-.Ldebug_info0
# Symbol P999
# Symbol I
	.uleb128	7
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La26-.Ldebug_info0
	.byte	0
# Procdef $SYNTHCONTROL_$$_init_implicit$; Register;
	.uleb128	8
	.ascii	"SYNTHCONTROL_$$_init_implicit$\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	SYNTHCONTROL_$$_init_implicit$
	.quad	.Lt6
	.byte	0
# Procdef $SYNTHCONTROL_$$_finalize_implicit$; Register;
	.uleb128	8
	.ascii	"SYNTHCONTROL_$$_finalize_implicit$\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	SYNTHCONTROL_$$_finalize_implicit$
	.quad	.Lt7
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition ShortInt
.La1:
	.uleb128	9
	.ascii	"SHORTINT\000"
	.long	.La32-.Ldebug_info0
.La32:
	.uleb128	10
	.ascii	"SHORTINT\000"
	.byte	5
	.byte	1
.La2:
	.uleb128	11
	.long	.La1-.Ldebug_info0
# Definition LongInt
.La26:
	.uleb128	9
	.ascii	"LONGINT\000"
	.long	.La33-.Ldebug_info0
.La33:
	.uleb128	10
	.ascii	"LONGINT\000"
	.byte	5
	.byte	4
.La27:
	.uleb128	11
	.long	.La26-.Ldebug_info0
# Definition Int64
.La28:
	.uleb128	9
	.ascii	"INT64\000"
	.long	.La34-.Ldebug_info0
.La34:
	.uleb128	10
	.ascii	"Int64\000"
	.byte	5
	.byte	8
.La29:
	.uleb128	11
	.long	.La28-.Ldebug_info0
# Definition AnsiString
.La16:
	.uleb128	9
	.ascii	"ANSISTRING\000"
	.long	.La35-.Ldebug_info0
.La35:
	.uleb128	12
	.long	.La36-.Ldebug_info0
.La17:
	.uleb128	11
	.long	.La16-.Ldebug_info0
# Definition Double
.La30:
	.uleb128	9
	.ascii	"DOUBLE\000"
	.long	.La38-.Ldebug_info0
.La38:
	.uleb128	10
	.ascii	"DOUBLE\000"
	.byte	4
	.byte	8
.La31:
	.uleb128	11
	.long	.La30-.Ldebug_info0
# Definition ^untyped
.La24:
	.uleb128	9
	.ascii	"parentfp_void_pointer\000"
	.long	.La39-.Ldebug_info0
.La39:
	.uleb128	13
.La25:
	.uleb128	11
	.long	.La24-.Ldebug_info0
# Definition Char
.La36:
	.uleb128	9
	.ascii	"CHAR\000"
	.long	.La40-.Ldebug_info0
.La40:
	.uleb128	10
	.ascii	"Char\000"
	.byte	8
	.byte	1
.La37:
	.uleb128	11
	.long	.La36-.Ldebug_info0
# Defs - End unit SYSTEM has index 1
# Defs - Begin unit OBJPAS has index 6
# Defs - End unit OBJPAS has index 6
# Defs - Begin unit RTLCONSTS has index 25
# Defs - End unit RTLCONSTS has index 25
# Defs - Begin unit WINDOWS has index 5
# Defs - End unit WINDOWS has index 5
# Defs - Begin unit SYSCONST has index 28
# Defs - End unit SYSCONST has index 28
# Defs - Begin unit WINDIRS has index 29
# Defs - End unit WINDIRS has index 29
# Defs - Begin unit SYSUTILS has index 24
# Defs - End unit SYSUTILS has index 24
# Defs - Begin unit MATH has index 30
# Defs - End unit MATH has index 30
# Defs - Begin unit TYPES has index 26
# Defs - End unit TYPES has index 26
# Defs - Begin unit TYPINFO has index 27
# Defs - End unit TYPINFO has index 27
# Defs - Begin unit CLASSES has index 23
# Defs - End unit CLASSES has index 23
# Defs - Begin unit SDL2 has index 255
# Defs - End unit SDL2 has index 255
# Defs - Begin unit CRT has index 257
# Defs - End unit CRT has index 257
# Defs - Begin unit UNIT6502 has index 13
# Defs - End unit UNIT6502 has index 13
# Defs - Begin unit MMSYSTEM has index 258
# Defs - End unit MMSYSTEM has index 258
# Defs - Begin unit MIDI has index 15
# Defs - End unit MIDI has index 15
# Defs - Begin unit CONTNRS has index 86
# Defs - End unit CONTNRS has index 86
# Defs - Begin unit LAZUTILSSTRCONSTS has index 47
# Defs - End unit LAZUTILSSTRCONSTS has index 47
# Defs - Begin unit FPCADDS has index 22
# Defs - End unit FPCADDS has index 22
# Defs - Begin unit GETTEXT has index 31
# Defs - End unit GETTEXT has index 31
# Defs - Begin unit LAZUTF8 has index 20
# Defs - End unit LAZUTF8 has index 20
# Defs - Begin unit MASKS has index 157
# Defs - End unit MASKS has index 157
# Defs - Begin unit VARUTILS has index 54
# Defs - End unit VARUTILS has index 54
# Defs - Begin unit VARIANTS has index 52
# Defs - End unit VARIANTS has index 52
# Defs - Begin unit CTYPES has index 53
# Defs - End unit CTYPES has index 53
# Defs - Begin unit ACTIVEX has index 49
# Defs - End unit ACTIVEX has index 49
# Defs - Begin unit SHELLAPI has index 50
# Defs - End unit SHELLAPI has index 50
# Defs - Begin unit COMMCTRL has index 51
# Defs - End unit COMMCTRL has index 51
# Defs - Begin unit SHLOBJ has index 48
# Defs - End unit SHLOBJ has index 48
# Defs - Begin unit LAZFILEUTILS has index 42
# Defs - End unit LAZFILEUTILS has index 42
# Defs - Begin unit STRUTILS has index 158
# Defs - End unit STRUTILS has index 158
# Defs - Begin unit FILEUTIL has index 152
# Defs - End unit FILEUTIL has index 152
# Defs - Begin unit SINGLEINSTANCE has index 189
# Defs - End unit SINGLEINSTANCE has index 189
# Defs - Begin unit CUSTAPP has index 185
# Defs - End unit CUSTAPP has index 185
# Defs - Begin unit LCLSTRCONSTS has index 46
# Defs - End unit LCLSTRCONSTS has index 46
# Defs - Begin unit LCLTYPE has index 33
# Defs - End unit LCLTYPE has index 33
# Defs - Begin unit LAZ_AVL_TREE has index 41
# Defs - End unit LAZ_AVL_TREE has index 41
# Defs - Begin unit LAZMETHODLIST has index 43
# Defs - End unit LAZMETHODLIST has index 43
# Defs - Begin unit LAZUTF8CLASSES has index 44
# Defs - End unit LAZUTF8CLASSES has index 44
# Defs - Begin unit LAZCLASSES has index 56
# Defs - End unit LAZCLASSES has index 56
# Defs - Begin unit LAZLOGGERBASE has index 55
# Defs - End unit LAZLOGGERBASE has index 55
# Defs - Begin unit LAZLOGGER has index 45
# Defs - End unit LAZLOGGER has index 45
# Defs - Begin unit LCLPROC has index 34
# Defs - End unit LCLPROC has index 34
# Defs - Begin unit LAZUTF16 has index 151
# Defs - End unit LAZUTF16 has index 151
# Defs - Begin unit GRAPHTYPE has index 37
# Defs - End unit GRAPHTYPE has index 37
# Defs - Begin unit MESSAGES has index 57
# Defs - End unit MESSAGES has index 57
# Defs - Begin unit LMESSAGES has index 35
# Defs - End unit LMESSAGES has index 35
# Defs - Begin unit FPIMAGE has index 32
# Defs - End unit FPIMAGE has index 32
# Defs - Begin unit LCLPLATFORMDEF has index 36
# Defs - End unit LCLPLATFORMDEF has index 36
# Defs - Begin unit GRAPHMATH has index 38
# Defs - End unit GRAPHMATH has index 38
# Defs - Begin unit FPIMGCMN has index 68
# Defs - End unit FPIMGCMN has index 68
# Defs - Begin unit BMPCOMN has index 60
# Defs - End unit BMPCOMN has index 60
# Defs - Begin unit FPREADBMP has index 58
# Defs - End unit FPREADBMP has index 58
# Defs - Begin unit FPWRITEBMP has index 59
# Defs - End unit FPWRITEBMP has index 59
# Defs - Begin unit PNGCOMN has index 69
# Defs - End unit PNGCOMN has index 69
# Defs - Begin unit ZBASE has index 71
# Defs - End unit ZBASE has index 71
# Defs - Begin unit STRINGS has index 4
# Defs - End unit STRINGS has index 4
# Defs - Begin unit DOS has index 73
# Defs - End unit DOS has index 73
# Defs - Begin unit CRC has index 74
# Defs - End unit CRC has index 74
# Defs - Begin unit TREES has index 77
# Defs - End unit TREES has index 77
# Defs - Begin unit ADLER has index 78
# Defs - End unit ADLER has index 78
# Defs - Begin unit ZDEFLATE has index 75
# Defs - End unit ZDEFLATE has index 75
# Defs - Begin unit INFUTIL has index 80
# Defs - End unit INFUTIL has index 80
# Defs - Begin unit INFFAST has index 83
# Defs - End unit INFFAST has index 83
# Defs - Begin unit INFCODES has index 81
# Defs - End unit INFCODES has index 81
# Defs - Begin unit INFTREES has index 82
# Defs - End unit INFTREES has index 82
# Defs - Begin unit INFBLOCK has index 79
# Defs - End unit INFBLOCK has index 79
# Defs - Begin unit ZINFLATE has index 76
# Defs - End unit ZINFLATE has index 76
# Defs - Begin unit GZIO has index 72
# Defs - End unit GZIO has index 72
# Defs - Begin unit ZSTREAM has index 70
# Defs - End unit ZSTREAM has index 70
# Defs - Begin unit FPREADPNG has index 61
# Defs - End unit FPREADPNG has index 61
# Defs - Begin unit FPWRITEPNG has index 62
# Defs - End unit FPWRITEPNG has index 62
# Defs - Begin unit FPTIFFCMN has index 65
# Defs - End unit FPTIFFCMN has index 65
# Defs - Begin unit FPREADTIFF has index 63
# Defs - End unit FPREADTIFF has index 63
# Defs - Begin unit FPWRITETIFF has index 64
# Defs - End unit FPWRITETIFF has index 64
# Defs - Begin unit LCLVERSION has index 66
# Defs - End unit LCLVERSION has index 66
# Defs - Begin unit ICNSTYPES has index 67
# Defs - End unit ICNSTYPES has index 67
# Defs - Begin unit CLIPPING has index 96
# Defs - End unit CLIPPING has index 96
# Defs - Begin unit FPCANVAS has index 87
# Defs - End unit FPCANVAS has index 87
# Defs - Begin unit FPREADPNM has index 88
# Defs - End unit FPREADPNM has index 88
# Defs - Begin unit FPWRITEPNM has index 89
# Defs - End unit FPWRITEPNM has index 89
# Defs - Begin unit JDEFERR has index 102
# Defs - End unit JDEFERR has index 102
# Defs - Begin unit JMORECFG has index 101
# Defs - End unit JMORECFG has index 101
# Defs - Begin unit JPEGLIB has index 97
# Defs - End unit JPEGLIB has index 97
# Defs - Begin unit JINCLUDE has index 103
# Defs - End unit JINCLUDE has index 103
# Defs - Begin unit JCOMAPI has index 108
# Defs - End unit JCOMAPI has index 108
# Defs - Begin unit JERROR has index 104
# Defs - End unit JERROR has index 104
# Defs - Begin unit JUTILS has index 109
# Defs - End unit JUTILS has index 109
# Defs - Begin unit JMEMNOBS has index 110
# Defs - End unit JMEMNOBS has index 110
# Defs - Begin unit JMEMMGR has index 105
# Defs - End unit JMEMMGR has index 105
# Defs - Begin unit JDMARKER has index 106
# Defs - End unit JDMARKER has index 106
# Defs - Begin unit JDINPUT has index 107
# Defs - End unit JDINPUT has index 107
# Defs - Begin unit JDAPIMIN has index 98
# Defs - End unit JDAPIMIN has index 98
# Defs - Begin unit JDATASRC has index 99
# Defs - End unit JDATASRC has index 99
# Defs - Begin unit JDCOLOR has index 112
# Defs - End unit JDCOLOR has index 112
# Defs - Begin unit JDSAMPLE has index 113
# Defs - End unit JDSAMPLE has index 113
# Defs - Begin unit JDPOSTCT has index 114
# Defs - End unit JDPOSTCT has index 114
# Defs - Begin unit JDCT has index 123
# Defs - End unit JDCT has index 123
# Defs - Begin unit JIDCTFST has index 124
# Defs - End unit JIDCTFST has index 124
# Defs - Begin unit JIDCTINT has index 125
# Defs - End unit JIDCTINT has index 125
# Defs - Begin unit JIDCTFLT has index 126
# Defs - End unit JIDCTFLT has index 126
# Defs - Begin unit JIDCTRED has index 127
# Defs - End unit JIDCTRED has index 127
# Defs - Begin unit JDDCTMGR has index 115
# Defs - End unit JDDCTMGR has index 115
# Defs - Begin unit JDHUFF has index 117
# Defs - End unit JDHUFF has index 117
# Defs - Begin unit JDPHUFF has index 116
# Defs - End unit JDPHUFF has index 116
# Defs - Begin unit JDCOEFCT has index 118
# Defs - End unit JDCOEFCT has index 118
# Defs - Begin unit JQUANT2 has index 121
# Defs - End unit JQUANT2 has index 121
# Defs - Begin unit JDMAINCT has index 119
# Defs - End unit JDMAINCT has index 119
# Defs - Begin unit JQUANT1 has index 120
# Defs - End unit JQUANT1 has index 120
# Defs - Begin unit JDMERGE has index 122
# Defs - End unit JDMERGE has index 122
# Defs - Begin unit JDMASTER has index 111
# Defs - End unit JDMASTER has index 111
# Defs - Begin unit JDAPISTD has index 100
# Defs - End unit JDAPISTD has index 100
# Defs - Begin unit FPREADJPEG has index 90
# Defs - End unit FPREADJPEG has index 90
# Defs - Begin unit JCMARKER has index 133
# Defs - End unit JCMARKER has index 133
# Defs - Begin unit JCAPIMIN has index 129
# Defs - End unit JCAPIMIN has index 129
# Defs - Begin unit JCHUFF has index 135
# Defs - End unit JCHUFF has index 135
# Defs - Begin unit JCPHUFF has index 134
# Defs - End unit JCPHUFF has index 134
# Defs - Begin unit JCMASTER has index 136
# Defs - End unit JCMASTER has index 136
# Defs - Begin unit JCCOLOR has index 137
# Defs - End unit JCCOLOR has index 137
# Defs - Begin unit JCSAMPLE has index 138
# Defs - End unit JCSAMPLE has index 138
# Defs - Begin unit JCPREPCT has index 139
# Defs - End unit JCPREPCT has index 139
# Defs - Begin unit JFDCTINT has index 143
# Defs - End unit JFDCTINT has index 143
# Defs - Begin unit JFDCTFST has index 144
# Defs - End unit JFDCTFST has index 144
# Defs - Begin unit JFDCTFLT has index 145
# Defs - End unit JFDCTFLT has index 145
# Defs - Begin unit JCDCTMGR has index 140
# Defs - End unit JCDCTMGR has index 140
# Defs - Begin unit JCCOEFCT has index 141
# Defs - End unit JCCOEFCT has index 141
# Defs - Begin unit JCMAINCT has index 142
# Defs - End unit JCMAINCT has index 142
# Defs - Begin unit JCINIT has index 132
# Defs - End unit JCINIT has index 132
# Defs - Begin unit JCAPISTD has index 128
# Defs - End unit JCAPISTD has index 128
# Defs - Begin unit JDATADST has index 130
# Defs - End unit JDATADST has index 130
# Defs - Begin unit JCPARAM has index 131
# Defs - End unit JCPARAM has index 131
# Defs - Begin unit FPWRITEJPEG has index 91
# Defs - End unit FPWRITEJPEG has index 91
# Defs - Begin unit FPREADGIF has index 92
# Defs - End unit FPREADGIF has index 92
# Defs - Begin unit LAZDBGLOG has index 149
# Defs - End unit LAZDBGLOG has index 149
# Defs - Begin unit AVGLVLTREE has index 148
# Defs - End unit AVGLVLTREE has index 148
# Defs - Begin unit LAZCONFIGSTORAGE has index 146
# Defs - End unit LAZCONFIGSTORAGE has index 146
# Defs - Begin unit DYNQUEUE has index 147
# Defs - End unit DYNQUEUE has index 147
# Defs - Begin unit LRESOURCES has index 93
# Defs - End unit LRESOURCES has index 93
# Defs - Begin unit WSREFERENCES has index 95
# Defs - End unit WSREFERENCES has index 95
# Defs - Begin unit SYNCOBJS has index 150
# Defs - End unit SYNCOBJS has index 150
# Defs - Begin unit LCLRESCACHE has index 94
# Defs - End unit LCLRESCACHE has index 94
# Defs - Begin unit GRAPHICS has index 84
# Defs - End unit GRAPHICS has index 84
# Defs - Begin unit INTFGRAPHICS has index 39
# Defs - End unit INTFGRAPHICS has index 39
# Defs - Begin unit TMSCHEMA has index 156
# Defs - End unit TMSCHEMA has index 156
# Defs - Begin unit THEMES has index 40
# Defs - End unit THEMES has index 40
# Defs - Begin unit INTERFACEBASE has index 21
# Defs - End unit INTERFACEBASE has index 21
# Defs - Begin unit PIPES has index 160
# Defs - End unit PIPES has index 160
# Defs - Begin unit PROCESS has index 159
# Defs - End unit PROCESS has index 159
# Defs - Begin unit UTF8PROCESS has index 153
# Defs - End unit UTF8PROCESS has index 153
# Defs - Begin unit LAZUTF8SYSUTILS has index 154
# Defs - End unit LAZUTF8SYSUTILS has index 154
# Defs - Begin unit MAPS has index 155
# Defs - End unit MAPS has index 155
# Defs - Begin unit LCLINTF has index 85
# Defs - End unit LCLINTF has index 85
# Defs - Begin unit WSLCLCLASSES has index 179
# Defs - End unit WSLCLCLASSES has index 179
# Defs - Begin unit LCLCLASSES has index 178
# Defs - End unit LCLCLASSES has index 178
# Defs - Begin unit RTTIUTILS has index 183
# Defs - End unit RTTIUTILS has index 183
# Defs - Begin unit PROPERTYSTORAGE has index 176
# Defs - End unit PROPERTYSTORAGE has index 176
# Defs - Begin unit WSFACTORY has index 182
# Defs - End unit WSFACTORY has index 182
# Defs - Begin unit WSCONTROLS has index 191
# Defs - End unit WSCONTROLS has index 191
# Defs - Begin unit CONTROLS has index 164
# Defs - End unit CONTROLS has index 164
# Defs - Begin unit WSPROC has index 181
# Defs - End unit WSPROC has index 181
# Defs - Begin unit WSIMGLIST has index 180
# Defs - End unit WSIMGLIST has index 180
# Defs - Begin unit IMGLIST has index 175
# Defs - End unit IMGLIST has index 175
# Defs - Begin unit ACTNLIST has index 177
# Defs - End unit ACTNLIST has index 177
# Defs - Begin unit WSMENUS has index 184
# Defs - End unit WSMENUS has index 184
# Defs - Begin unit MENUS has index 168
# Defs - End unit MENUS has index 168
# Defs - Begin unit CUSTOMTIMER has index 186
# Defs - End unit CUSTOMTIMER has index 186
# Defs - Begin unit FASTHTMLPARSER has index 190
# Defs - End unit FASTHTMLPARSER has index 190
# Defs - Begin unit CLIPBRD has index 187
# Defs - End unit CLIPBRD has index 187
# Defs - Begin unit HELPINTFS has index 188
# Defs - End unit HELPINTFS has index 188
# Defs - Begin unit WSFORMS has index 192
# Defs - End unit WSFORMS has index 192
# Defs - Begin unit FORMS has index 9
# Defs - End unit FORMS has index 9
# Defs - Begin unit TEXTSTRINGS has index 194
# Defs - End unit TEXTSTRINGS has index 194
# Defs - Begin unit EXTENDEDSTRINGS has index 195
# Defs - End unit EXTENDEDSTRINGS has index 195
# Defs - Begin unit WSSTDCTRLS has index 196
# Defs - End unit WSSTDCTRLS has index 196
# Defs - Begin unit STDCTRLS has index 167
# Defs - End unit STDCTRLS has index 167
# Defs - Begin unit IMAGELISTCACHE has index 193
# Defs - End unit IMAGELISTCACHE has index 193
# Defs - Begin unit WSBUTTONS has index 197
# Defs - End unit WSBUTTONS has index 197
# Defs - Begin unit BUTTONS has index 165
# Defs - End unit BUTTONS has index 165
# Defs - Begin unit POPUPNOTIFIER has index 201
# Defs - End unit POPUPNOTIFIER has index 201
# Defs - Begin unit FGL has index 202
# Defs - End unit FGL has index 202
# Defs - Begin unit WSEXTCTRLS has index 203
# Defs - End unit WSEXTCTRLS has index 203
# Defs - Begin unit EXTCTRLS has index 199
# Defs - End unit EXTCTRLS has index 199
# Defs - Begin unit BUTTONPANEL has index 198
# Defs - End unit BUTTONPANEL has index 198
# Defs - Begin unit LCLTASKDIALOG has index 200
# Defs - End unit LCLTASKDIALOG has index 200
# Defs - Begin unit WSDIALOGS has index 204
# Defs - End unit WSDIALOGS has index 204
# Defs - Begin unit DIALOGS has index 166
# Defs - End unit DIALOGS has index 166
# Defs - Begin unit SYNTHCONTROL has index 17
# Definition TSynthCtrl
.La3:
	.uleb128	9
	.ascii	"TSYNTHCTRL\000"
	.long	.La41-.Ldebug_info0
.La41:
	.uleb128	12
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
	.long	.La44-.Ldebug_info0
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
	.quad	.Lt8
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
	.uleb128	12
	.long	.La45-.Ldebug_info0
# Symbol AA
	.uleb128	7
	.ascii	"AA\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La45-.Ldebug_info0
# Symbol AAA
	.uleb128	7
	.ascii	"AAA\000"
	.byte	2
	.byte	144
	.uleb128	15
	.long	.La45-.Ldebug_info0
# Symbol AAAA
	.uleb128	7
	.ascii	"AAAA\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La45-.Ldebug_info0
# Symbol F
	.uleb128	7
	.ascii	"F\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La45-.Ldebug_info0
# Symbol I
	.uleb128	7
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La26-.Ldebug_info0
# Symbol J
	.uleb128	7
	.ascii	"J\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La26-.Ldebug_info0
# Symbol CH
	.uleb128	7
	.ascii	"CH\000"
	.byte	2
	.byte	144
	.uleb128	14
	.long	.La26-.Ldebug_info0
# Symbol KEY
	.uleb128	7
	.ascii	"KEY\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La45-.Ldebug_info0
# Symbol fin$0
	.byte	0
# Procdef constructor Create(<TSynthCtrl>;<Pointer>;Boolean);
	.uleb128	6
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La3-.Ldebug_info0
	.quad	SYNTHCONTROL$_$TSYNTHCTRL_$__$$_CREATE$BOOLEAN$$TSYNTHCTRL
	.quad	.Lt9
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
	.long	.La47-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	5
	.ascii	"CREATESUSPENDED\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La49-.Ldebug_info0
	.byte	0
	.byte	0
.La4:
	.uleb128	11
	.long	.La3-.Ldebug_info0
# Definition TOperatorDesc
.La6:
	.uleb128	9
	.ascii	"TOPERATORDESC\000"
	.long	.La51-.Ldebug_info0
.La51:
	.uleb128	18
	.ascii	"TOPERATORDESC\000"
	.uleb128	3008
	.uleb128	19
	.ascii	"FREQ\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"MUL0\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"MUL1\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"MUL2\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"MUL3\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"MUL4\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"MUL5\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"MUL6\000"
	.byte	2
	.byte	35
	.uleb128	56
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"MUL7\000"
	.byte	2
	.byte	35
	.uleb128	64
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"WAVE\000"
	.byte	2
	.byte	35
	.uleb128	72
	.long	.La52-.Ldebug_info0
	.uleb128	19
	.ascii	"WLENGTH\000"
	.byte	3
	.byte	35
	.uleb128	2896
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"WLSTART\000"
	.byte	3
	.byte	35
	.uleb128	2904
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"WLEND\000"
	.byte	3
	.byte	35
	.uleb128	2912
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"AR1\000"
	.byte	3
	.byte	35
	.uleb128	2920
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"AV1\000"
	.byte	3
	.byte	35
	.uleb128	2928
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"AR2\000"
	.byte	3
	.byte	35
	.uleb128	2936
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"AV2\000"
	.byte	3
	.byte	35
	.uleb128	2944
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"AR3\000"
	.byte	3
	.byte	35
	.uleb128	2952
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"AV3\000"
	.byte	3
	.byte	35
	.uleb128	2960
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"AR4\000"
	.byte	3
	.byte	35
	.uleb128	2968
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"AV4\000"
	.byte	3
	.byte	35
	.uleb128	2976
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"ADSRBIAS\000"
	.byte	3
	.byte	35
	.uleb128	2984
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"FREQMOD\000"
	.byte	3
	.byte	35
	.uleb128	2992
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"PAN\000"
	.byte	3
	.byte	35
	.uleb128	3000
	.long	.La30-.Ldebug_info0
	.byte	0
.La7:
	.uleb128	11
	.long	.La6-.Ldebug_info0
# Definition TInstrDesc
.La8:
	.uleb128	9
	.ascii	"TINSTRDESC\000"
	.long	.La54-.Ldebug_info0
.La54:
	.uleb128	18
	.ascii	"TINSTRDESC\000"
	.uleb128	24136
	.uleb128	19
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La16-.Ldebug_info0
	.uleb128	19
	.ascii	"OPERATORS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La55-.Ldebug_info0
	.uleb128	19
	.ascii	"OUTPUTTABLE\000"
	.byte	4
	.byte	35
	.uleb128	24072
	.long	.La57-.Ldebug_info0
	.byte	0
.La9:
	.uleb128	11
	.long	.La8-.Ldebug_info0
# Definition Array[0..29] Of Int64
.La10:
	.uleb128	20
	.uleb128	240
	.long	.La28-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	29
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.byte	0
.La11:
	.uleb128	11
	.long	.La10-.Ldebug_info0
# Definition Array[0..127] Of Array[0..4] Of LongInt
.La12:
	.uleb128	20
	.uleb128	2560
	.long	.La59-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	127
	.uleb128	20
	.long	.La1-.Ldebug_info0
	.byte	0
.La13:
	.uleb128	11
	.long	.La12-.Ldebug_info0
# Definition Array[0..192] Of TInstrDesc
.La14:
	.uleb128	20
	.uleb128	4658248
	.long	.La8-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	192
	.uleb128	24136
	.long	.La61-.Ldebug_info0
	.byte	0
.La15:
	.uleb128	11
	.long	.La14-.Ldebug_info0
# Definition Array[0..255] Of Byte
.La18:
	.uleb128	20
	.uleb128	256
	.long	.La61-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	255
	.uleb128	1
	.long	.La61-.Ldebug_info0
	.byte	0
.La19:
	.uleb128	11
	.long	.La18-.Ldebug_info0
# Definition Array[0..255] Of Byte
.La20:
	.uleb128	20
	.uleb128	256
	.long	.La61-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	255
	.uleb128	1
	.long	.La61-.Ldebug_info0
	.byte	0
.La21:
	.uleb128	11
	.long	.La20-.Ldebug_info0
# Definition Array[0..255] Of LongInt
.La22:
	.uleb128	20
	.uleb128	1024
	.long	.La26-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	255
	.uleb128	4
	.long	.La61-.Ldebug_info0
	.byte	0
.La23:
	.uleb128	11
	.long	.La22-.Ldebug_info0
# Defs - End unit SYNTHCONTROL has index 17
# Defs - Begin unit UMAIN has index 11
# Defs - End unit UMAIN has index 11
# Defs - Begin unit RETRO has index 12
# Defs - End unit RETRO has index 12
# Defs - Begin unit FMSYNTH has index 18
# Definition TMultiSample
.La52:
	.uleb128	9
	.ascii	"TMULTISAMPLE\000"
	.long	.La63-.Ldebug_info0
.La63:
	.uleb128	18
	.ascii	"TMULTISAMPLE\000"
	.uleb128	2824
	.uleb128	19
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La16-.Ldebug_info0
	.uleb128	19
	.ascii	"SAMPLES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La64-.Ldebug_info0
	.uleb128	19
	.ascii	"NOTES\000"
	.byte	3
	.byte	35
	.uleb128	2312
	.long	.La66-.Ldebug_info0
	.byte	0
.La53:
	.uleb128	11
	.long	.La52-.Ldebug_info0
# Defs - End unit FMSYNTH has index 18
# Defs - Begin unit SYNTHCONTROL has index 17
# Defs - End unit SYNTHCONTROL has index 17
# Defs - Begin Staticsymtable
# Defs - End Staticsymtable
# Definition TThread
.La42:
	.uleb128	9
	.ascii	"TTHREAD\000"
	.long	.La68-.Ldebug_info0
.La68:
	.uleb128	12
	.long	.La44-.Ldebug_info0
.La44:
	.uleb128	14
	.ascii	"TTHREAD\000"
	.uleb128	88
	.uleb128	15
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La71-.Ldebug_info0
	.uleb128	22
	.ascii	"FHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La72-.Ldebug_info0
	.uleb128	22
	.ascii	"FTERMINATED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La49-.Ldebug_info0
	.uleb128	22
	.ascii	"FFREEONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	17
	.byte	3
	.long	.La49-.Ldebug_info0
	.uleb128	22
	.ascii	"FFINISHED\000"
	.byte	2
	.byte	35
	.uleb128	18
	.byte	3
	.long	.La49-.Ldebug_info0
	.uleb128	22
	.ascii	"FSUSPENDED\000"
	.byte	2
	.byte	35
	.uleb128	20
	.byte	3
	.long	.La74-.Ldebug_info0
	.uleb128	22
	.ascii	"FRETURNVALUE\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La26-.Ldebug_info0
	.uleb128	22
	.ascii	"FONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La76-.Ldebug_info0
	.uleb128	22
	.ascii	"FFATALEXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La69-.Ldebug_info0
	.uleb128	22
	.ascii	"FEXTERNALTHREAD\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La49-.Ldebug_info0
	.uleb128	22
	.ascii	"FSYNCHRONIZEENTRY\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La78-.Ldebug_info0
	.uleb128	22
	.ascii	"FTHREADID\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	2
	.long	.La72-.Ldebug_info0
	.uleb128	22
	.ascii	"RETURNVALUE\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La26-.Ldebug_info0
	.uleb128	22
	.ascii	"TERMINATED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La49-.Ldebug_info0
	.uleb128	22
	.ascii	"FINITIALSUSPENDED\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La49-.Ldebug_info0
	.uleb128	22
	.ascii	"FREEONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	17
	.byte	3
	.long	.La49-.Ldebug_info0
	.uleb128	22
	.ascii	"HANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La72-.Ldebug_info0
	.uleb128	22
	.ascii	"EXTERNALTHREAD\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La49-.Ldebug_info0
	.uleb128	22
	.ascii	"FINISHED\000"
	.byte	2
	.byte	35
	.uleb128	18
	.byte	3
	.long	.La49-.Ldebug_info0
	.uleb128	22
	.ascii	"THREADID\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	2
	.long	.La72-.Ldebug_info0
	.uleb128	22
	.ascii	"ONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La76-.Ldebug_info0
	.uleb128	22
	.ascii	"FATALEXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La69-.Ldebug_info0
# Procdef class GetCurrentThread:TThread; Static;
	.uleb128	23
	.ascii	"GETCURRENTTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La42-.Ldebug_info0
	.byte	0
# Procdef class GetIsSingleProcessor:Boolean; Static;
	.uleb128	23
	.ascii	"GETISSINGLEPROCESSOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La49-.Ldebug_info0
	.byte	0
# Procdef CallOnTerminate(<TThread>);
	.uleb128	24
	.ascii	"CALLONTERMINATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
	.byte	0
# Procdef GetPriority(<TThread>):<enumeration type>;
	.uleb128	23
	.ascii	"GETPRIORITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La80-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
	.byte	0
# Procdef SetPriority(<TThread>;TThreadPriority);
	.uleb128	24
	.ascii	"SETPRIORITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
# Symbol VALUE
	.uleb128	26
	.ascii	"VALUE\000"
	.long	.La80-.Ldebug_info0
	.byte	0
# Procdef SetSuspended(<TThread>;Boolean);
	.uleb128	24
	.ascii	"SETSUSPENDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
# Symbol VALUE
	.uleb128	26
	.ascii	"VALUE\000"
	.long	.La49-.Ldebug_info0
	.byte	0
# Procdef GetSuspended(<TThread>):Boolean;
	.uleb128	23
	.ascii	"GETSUSPENDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La49-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
	.byte	0
# Procdef InitSynchronizeEvent(<TThread>);
	.uleb128	24
	.ascii	"INITSYNCHRONIZEEVENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
	.byte	0
# Procdef DoneSynchronizeEvent(<TThread>);
	.uleb128	24
	.ascii	"DONESYNCHRONIZEEVENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
	.byte	0
# Procdef SysCreate(<TThread>;Boolean;const QWord);
	.uleb128	24
	.ascii	"SYSCREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	26
	.ascii	"CREATESUSPENDED\000"
	.long	.La49-.Ldebug_info0
# Symbol STACKSIZE
	.uleb128	26
	.ascii	"STACKSIZE\000"
	.long	.La72-.Ldebug_info0
	.byte	0
# Procdef SysDestroy(<TThread>);
	.uleb128	24
	.ascii	"SYSDESTROY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
	.byte	0
# Procdef DoTerminate(<TThread>);
	.uleb128	27
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
	.byte	0
# Procdef Execute(<TThread>);
	.uleb128	27
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
	.byte	0
# Procdef Synchronize(<TThread>;TThreadMethod);
	.uleb128	24
	.ascii	"SYNCHRONIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	26
	.ascii	"AMETHOD\000"
	.long	.La82-.Ldebug_info0
	.byte	0
# Procdef Queue(<TThread>;TThreadMethod);
	.uleb128	24
	.ascii	"QUEUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	26
	.ascii	"AMETHOD\000"
	.long	.La82-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TThread>;<Pointer>;Boolean;const QWord="4194304");
	.uleb128	28
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La42-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
# Symbol vmt
	.uleb128	26
	.ascii	"vmt\000"
	.long	.La47-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	26
	.ascii	"CREATESUSPENDED\000"
	.long	.La49-.Ldebug_info0
# Symbol STACKSIZE
	.uleb128	26
	.ascii	"STACKSIZE\000"
	.long	.La72-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TThread>;<Pointer>);
	.uleb128	29
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
# Symbol vmt
	.uleb128	26
	.ascii	"vmt\000"
	.long	.La47-.Ldebug_info0
	.byte	0
# Procdef class CreateAnonymousThread(TProcedure):TThread; Static;
	.uleb128	28
	.ascii	"CREATEANONYMOUSTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La42-.Ldebug_info0
# Symbol APROC
	.uleb128	26
	.ascii	"APROC\000"
	.long	.La84-.Ldebug_info0
	.byte	0
# Procdef class NameThreadForDebugging(UnicodeString;QWord="18446744073709551615"); Static;
	.uleb128	30
	.ascii	"NAMETHREADFORDEBUGGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREADNAME
	.uleb128	26
	.ascii	"ATHREADNAME\000"
	.long	.La86-.Ldebug_info0
# Symbol ATHREADID
	.uleb128	26
	.ascii	"ATHREADID\000"
	.long	.La72-.Ldebug_info0
	.byte	0
# Procdef class NameThreadForDebugging(AnsiString;QWord="18446744073709551615"); Static;
	.uleb128	30
	.ascii	"NAMETHREADFORDEBUGGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREADNAME
	.uleb128	26
	.ascii	"ATHREADNAME\000"
	.long	.La16-.Ldebug_info0
# Symbol ATHREADID
	.uleb128	26
	.ascii	"ATHREADID\000"
	.long	.La72-.Ldebug_info0
	.byte	0
# Procdef class SetReturnValue(LongInt); Static;
	.uleb128	30
	.ascii	"SETRETURNVALUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AVALUE
	.uleb128	26
	.ascii	"AVALUE\000"
	.long	.La26-.Ldebug_info0
	.byte	0
# Procdef class CheckTerminated:Boolean; Static;
	.uleb128	28
	.ascii	"CHECKTERMINATED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La49-.Ldebug_info0
	.byte	0
# Procdef class Synchronize(<Class Of TThread>;TThread;TThreadMethod);
	.uleb128	30
	.ascii	"SYNCHRONIZE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La88-.Ldebug_info0
# Symbol ATHREAD
	.uleb128	26
	.ascii	"ATHREAD\000"
	.long	.La42-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	26
	.ascii	"AMETHOD\000"
	.long	.La82-.Ldebug_info0
	.byte	0
# Procdef class Queue(TThread;TThreadMethod); Static;
	.uleb128	30
	.ascii	"QUEUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	26
	.ascii	"ATHREAD\000"
	.long	.La42-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	26
	.ascii	"AMETHOD\000"
	.long	.La82-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThread;TThreadMethod); Static;
	.uleb128	30
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	26
	.ascii	"ATHREAD\000"
	.long	.La42-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	26
	.ascii	"AMETHOD\000"
	.long	.La82-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThreadMethod); Static;
	.uleb128	30
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AMETHOD
	.uleb128	26
	.ascii	"AMETHOD\000"
	.long	.La82-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThread); Static;
	.uleb128	30
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	26
	.ascii	"ATHREAD\000"
	.long	.La42-.Ldebug_info0
	.byte	0
# Procdef class SpinWait(LongWord); Static;
	.uleb128	30
	.ascii	"SPINWAIT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AITERATIONS
	.uleb128	26
	.ascii	"AITERATIONS\000"
	.long	.La45-.Ldebug_info0
	.byte	0
# Procdef class Sleep(LongWord); Static;
	.uleb128	30
	.ascii	"SLEEP\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AMILLISECONDS
	.uleb128	26
	.ascii	"AMILLISECONDS\000"
	.long	.La45-.Ldebug_info0
	.byte	0
# Procdef class Yield; Static;
	.uleb128	30
	.ascii	"YIELD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	0
# Procdef class GetSystemTimes(out TThread.TSystemTimes); Static;
	.uleb128	30
	.ascii	"GETSYSTEMTIMES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ASYSTEMTIMES
	.uleb128	26
	.ascii	"ASYSTEMTIMES\000"
	.long	.La90-.Ldebug_info0
	.byte	0
# Procdef class GetTickCount:DWord; Static;
	.uleb128	28
	.ascii	"GETTICKCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La45-.Ldebug_info0
	.byte	0
# Procdef class GetTickCount64:QWord; Static;
	.uleb128	28
	.ascii	"GETTICKCOUNT64\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La72-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadMethod;TNotifyEvent="nil"):TThread; Static;
	.uleb128	28
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La42-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	26
	.ascii	"AMETHOD\000"
	.long	.La82-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	26
	.ascii	"AONTERMINATE\000"
	.long	.La76-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteStatusHandler;TThreadStatusNotifyEvent;TNotifyEvent="nil"):TThread; Static;
	.uleb128	28
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La42-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	26
	.ascii	"AMETHOD\000"
	.long	.La92-.Ldebug_info0
# Symbol AONSTATUS
	.uleb128	26
	.ascii	"AONSTATUS\000"
	.long	.La94-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	26
	.ascii	"AONTERMINATE\000"
	.long	.La76-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteCallBack;Pointer="nil";TNotifyCallBack="nil"):TThread; Static;
	.uleb128	28
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La42-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	26
	.ascii	"AMETHOD\000"
	.long	.La96-.Ldebug_info0
# Symbol ADATA
	.uleb128	26
	.ascii	"ADATA\000"
	.long	.La47-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	26
	.ascii	"AONTERMINATE\000"
	.long	.La98-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteStatusCallBack;TThreadStatusNotifyCallBack;Pointer="nil";TNotifyCallBack="nil"):TThread; Static;
	.uleb128	28
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La42-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	26
	.ascii	"AMETHOD\000"
	.long	.La100-.Ldebug_info0
# Symbol AONSTATUS
	.uleb128	26
	.ascii	"AONSTATUS\000"
	.long	.La102-.Ldebug_info0
# Symbol ADATA
	.uleb128	26
	.ascii	"ADATA\000"
	.long	.La47-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	26
	.ascii	"AONTERMINATE\000"
	.long	.La98-.Ldebug_info0
	.byte	0
# Procdef AfterConstruction(<TThread>);
	.uleb128	29
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
	.byte	0
# Procdef Start(<TThread>);
	.uleb128	30
	.ascii	"START\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
	.byte	0
# Procdef Resume(<TThread>);
	.uleb128	30
	.ascii	"RESUME\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
	.byte	0
# Procdef Suspend(<TThread>);
	.uleb128	30
	.ascii	"SUSPEND\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
	.byte	0
# Procdef Terminate(<TThread>);
	.uleb128	30
	.ascii	"TERMINATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
	.byte	0
# Procdef WaitFor(<TThread>):LongInt;
	.uleb128	28
	.ascii	"WAITFOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La26-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La42-.Ldebug_info0
	.byte	0
	.byte	0
.La43:
	.uleb128	11
	.long	.La42-.Ldebug_info0
# Definition LongWord
.La45:
	.uleb128	9
	.ascii	"LONGWORD\000"
	.long	.La104-.Ldebug_info0
.La104:
	.uleb128	10
	.ascii	"LONGWORD\000"
	.byte	7
	.byte	4
.La46:
	.uleb128	11
	.long	.La45-.Ldebug_info0
# Definition Pointer
.La47:
	.uleb128	9
	.ascii	"POINTER\000"
	.long	.La105-.Ldebug_info0
.La105:
	.uleb128	13
.La48:
	.uleb128	11
	.long	.La47-.Ldebug_info0
# Definition Boolean
.La49:
	.uleb128	9
	.ascii	"BOOLEAN\000"
	.long	.La106-.Ldebug_info0
.La106:
	.uleb128	10
	.ascii	"Boolean\000"
	.byte	2
	.byte	1
.La50:
	.uleb128	11
	.long	.La49-.Ldebug_info0
# Definition TInstrDesc.Array[0..7] Of TOperatorDesc
.La55:
	.uleb128	20
	.uleb128	24064
	.long	.La6-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	7
	.uleb128	3008
	.long	.La1-.Ldebug_info0
	.byte	0
.La56:
	.uleb128	11
	.long	.La55-.Ldebug_info0
# Definition TInstrDesc.Array[0..7] Of Double
.La57:
	.uleb128	20
	.uleb128	64
	.long	.La30-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	7
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.byte	0
.La58:
	.uleb128	11
	.long	.La57-.Ldebug_info0
# Definition Array[0..4] Of LongInt
.La59:
	.uleb128	20
	.uleb128	20
	.long	.La26-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	4
	.uleb128	4
	.long	.La1-.Ldebug_info0
	.byte	0
.La60:
	.uleb128	11
	.long	.La59-.Ldebug_info0
# Definition Byte
.La61:
	.uleb128	9
	.ascii	"BYTE\000"
	.long	.La107-.Ldebug_info0
.La107:
	.uleb128	10
	.ascii	"BYTE\000"
	.byte	7
	.byte	1
.La62:
	.uleb128	11
	.long	.La61-.Ldebug_info0
# Definition TMultiSample.Array[0..47] Of TWaveSample1
.La64:
	.uleb128	20
	.uleb128	2304
	.long	.La108-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	47
	.uleb128	48
	.long	.La1-.Ldebug_info0
	.byte	0
.La65:
	.uleb128	11
	.long	.La64-.Ldebug_info0
# Definition TMultiSample.Array[0..127] Of LongInt
.La66:
	.uleb128	20
	.uleb128	512
	.long	.La26-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	127
	.uleb128	4
	.long	.La1-.Ldebug_info0
	.byte	0
.La67:
	.uleb128	11
	.long	.La66-.Ldebug_info0
# Definition TObject
.La69:
	.uleb128	9
	.ascii	"TOBJECT\000"
	.long	.La110-.Ldebug_info0
.La110:
	.uleb128	12
	.long	.La71-.Ldebug_info0
.La71:
	.uleb128	14
	.ascii	"TOBJECT\000"
	.uleb128	8
	.uleb128	31
	.byte	1
	.ascii	"_vptr$TOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La47-.Ldebug_info0
# Procdef constructor Create(<TObject>;<Pointer>);
	.uleb128	28
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La69-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
# Symbol vmt
	.uleb128	26
	.ascii	"vmt\000"
	.long	.La47-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TObject>;<Pointer>);
	.uleb128	29
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
# Symbol vmt
	.uleb128	26
	.ascii	"vmt\000"
	.long	.La47-.Ldebug_info0
	.byte	0
# Procdef class newinstance(<Class Of TObject>):TObject;
	.uleb128	32
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
	.long	.La69-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La111-.Ldebug_info0
	.byte	0
# Procdef FreeInstance(<TObject>);
	.uleb128	29
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
	.byte	0
# Procdef SafeCallException(<TObject>;TObject;Pointer):LongInt;
	.uleb128	32
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
	.long	.La113-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
# Symbol EXCEPTOBJECT
	.uleb128	26
	.ascii	"EXCEPTOBJECT\000"
	.long	.La69-.Ldebug_info0
# Symbol EXCEPTADDR
	.uleb128	26
	.ascii	"EXCEPTADDR\000"
	.long	.La47-.Ldebug_info0
	.byte	0
# Procdef DefaultHandler(<TObject>;var <Formal type>);
	.uleb128	29
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	26
	.ascii	"MESSAGE\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef Free(<TObject>);
	.uleb128	30
	.ascii	"FREE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
	.byte	0
# Procdef class InitInstance(<Class Of TObject>;Pointer):TObject;
	.uleb128	28
	.ascii	"INITINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La69-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La117-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	26
	.ascii	"INSTANCE\000"
	.long	.La47-.Ldebug_info0
	.byte	0
# Procdef CleanupInstance(<TObject>);
	.uleb128	30
	.ascii	"CLEANUPINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
	.byte	0
# Procdef class ClassType(<Class Of TObject>):Class Of TObject;
	.uleb128	28
	.ascii	"CLASSTYPE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La119-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La121-.Ldebug_info0
	.byte	0
# Procdef class ClassInfo(<Class Of TObject>):^untyped;
	.uleb128	28
	.ascii	"CLASSINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La47-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef class ClassName(<Class Of TObject>;<var ShortString>):ShortString;
	.uleb128	28
	.ascii	"CLASSNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La125-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La127-.Ldebug_info0
# Symbol result
	.uleb128	33
	.ascii	"result\000"
	.long	.La125-.Ldebug_info0
	.byte	0
# Procdef class ClassNameIs(<Class Of TObject>;const ShortString):Boolean;
	.uleb128	28
	.ascii	"CLASSNAMEIS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La49-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La129-.Ldebug_info0
# Symbol NAME
	.uleb128	26
	.ascii	"NAME\000"
	.long	.La125-.Ldebug_info0
	.byte	0
# Procdef class ClassParent(<Class Of TObject>):Class Of TObject;
	.uleb128	28
	.ascii	"CLASSPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La119-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef class InstanceSize(<Class Of TObject>):Int64;
	.uleb128	28
	.ascii	"INSTANCESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La28-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La133-.Ldebug_info0
	.byte	0
# Procdef class InheritsFrom(<Class Of TObject>;TClass):Boolean;
	.uleb128	28
	.ascii	"INHERITSFROM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La49-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La135-.Ldebug_info0
# Symbol ACLASS
	.uleb128	26
	.ascii	"ACLASS\000"
	.long	.La119-.Ldebug_info0
	.byte	0
# Procdef class StringMessageTable(<Class Of TObject>):^TStringMessageTable;
	.uleb128	28
	.ascii	"STRINGMESSAGETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La137-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef class MethodAddress(<Class Of TObject>;const ShortString):^untyped;
	.uleb128	28
	.ascii	"METHODADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La47-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La141-.Ldebug_info0
# Symbol NAME
	.uleb128	26
	.ascii	"NAME\000"
	.long	.La125-.Ldebug_info0
	.byte	0
# Procdef class MethodName(<Class Of TObject>;<var ShortString>;Pointer):ShortString;
	.uleb128	28
	.ascii	"METHODNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La125-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La143-.Ldebug_info0
# Symbol result
	.uleb128	33
	.ascii	"result\000"
	.long	.La125-.Ldebug_info0
# Symbol ADDRESS
	.uleb128	26
	.ascii	"ADDRESS\000"
	.long	.La47-.Ldebug_info0
	.byte	0
# Procdef FieldAddress(<TObject>;const ShortString):^untyped;
	.uleb128	28
	.ascii	"FIELDADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La47-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
# Symbol NAME
	.uleb128	26
	.ascii	"NAME\000"
	.long	.La125-.Ldebug_info0
	.byte	0
# Procdef AfterConstruction(<TObject>);
	.uleb128	29
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
	.byte	0
# Procdef BeforeDestruction(<TObject>);
	.uleb128	29
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
	.byte	0
# Procdef DefaultHandlerStr(<TObject>;var <Formal type>);
	.uleb128	29
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	26
	.ascii	"MESSAGE\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef Dispatch(<TObject>;var <Formal type>);
	.uleb128	29
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	26
	.ascii	"MESSAGE\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef DispatchStr(<TObject>;var <Formal type>);
	.uleb128	29
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	26
	.ascii	"MESSAGE\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	28
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La49-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
# Symbol IID
	.uleb128	26
	.ascii	"IID\000"
	.long	.La145-.Ldebug_info0
# Symbol OBJ
	.uleb128	26
	.ascii	"OBJ\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	28
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La49-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	26
	.ascii	"IIDSTR\000"
	.long	.La125-.Ldebug_info0
# Symbol OBJ
	.uleb128	26
	.ascii	"OBJ\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceByStr(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	28
	.ascii	"GETINTERFACEBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La49-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	26
	.ascii	"IIDSTR\000"
	.long	.La125-.Ldebug_info0
# Symbol OBJ
	.uleb128	26
	.ascii	"OBJ\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceWeak(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	28
	.ascii	"GETINTERFACEWEAK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La49-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
# Symbol IID
	.uleb128	26
	.ascii	"IID\000"
	.long	.La145-.Ldebug_info0
# Symbol OBJ
	.uleb128	26
	.ascii	"OBJ\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntry(<Class Of TObject>;const TGuid):^tinterfaceentry;
	.uleb128	28
	.ascii	"GETINTERFACEENTRY\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La147-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La149-.Ldebug_info0
# Symbol IID
	.uleb128	26
	.ascii	"IID\000"
	.long	.La145-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntryByStr(<Class Of TObject>;const ShortString):^tinterfaceentry;
	.uleb128	28
	.ascii	"GETINTERFACEENTRYBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La147-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La151-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	26
	.ascii	"IIDSTR\000"
	.long	.La125-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceTable(<Class Of TObject>):^tinterfacetable;
	.uleb128	28
	.ascii	"GETINTERFACETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La153-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La155-.Ldebug_info0
	.byte	0
# Procdef class UnitName(<Class Of TObject>;<var AnsiString>):AnsiString;
	.uleb128	28
	.ascii	"UNITNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La16-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La157-.Ldebug_info0
# Symbol result
	.uleb128	33
	.ascii	"result\000"
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef Equals(<TObject>;TObject):Boolean;
	.uleb128	32
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
	.long	.La49-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
# Symbol OBJ
	.uleb128	26
	.ascii	"OBJ\000"
	.long	.La69-.Ldebug_info0
	.byte	0
# Procdef GetHashCode(<TObject>):Int64;
	.uleb128	32
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
	.long	.La28-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
	.byte	0
# Procdef ToString(<TObject>;<var AnsiString>):AnsiString;
	.uleb128	32
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
	.long	.La16-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La69-.Ldebug_info0
# Symbol result
	.uleb128	33
	.ascii	"result\000"
	.long	.La16-.Ldebug_info0
	.byte	0
	.byte	0
.La70:
	.uleb128	11
	.long	.La69-.Ldebug_info0
# Definition QWord
.La72:
	.uleb128	9
	.ascii	"QWORD\000"
	.long	.La159-.Ldebug_info0
.La159:
	.uleb128	10
	.ascii	"QWord\000"
	.byte	7
	.byte	8
.La73:
	.uleb128	11
	.long	.La72-.Ldebug_info0
# Definition LongBool
.La74:
	.uleb128	9
	.ascii	"LONGBOOL\000"
	.long	.La160-.Ldebug_info0
.La160:
	.uleb128	10
	.ascii	"LongBool\000"
	.byte	2
	.byte	4
.La75:
	.uleb128	11
	.long	.La74-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject) of object;Register>
.La76:
	.uleb128	9
	.ascii	"TNOTIFYEVENT\000"
	.long	.La161-.Ldebug_info0
.La161:
	.uleb128	34
	.byte	16
	.uleb128	19
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La162-.Ldebug_info0
	.uleb128	19
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La69-.Ldebug_info0
	.byte	0
.La162:
	.uleb128	35
	.ascii	"TNOTIFYEVENT\000"
	.byte	1
	.uleb128	26
	.ascii	"this\000"
	.long	.La47-.Ldebug_info0
	.uleb128	26
	.ascii	"SENDER\000"
	.long	.La69-.Ldebug_info0
	.byte	0
.La77:
	.uleb128	11
	.long	.La76-.Ldebug_info0
# Definition TThread.PThreadQueueEntry
.La78:
	.uleb128	9
	.ascii	"PTHREADQUEUEENTRY\000"
	.long	.La163-.Ldebug_info0
.La163:
	.uleb128	12
	.long	.La164-.Ldebug_info0
.La79:
	.uleb128	11
	.long	.La78-.Ldebug_info0
# Definition TThreadPriority
.La80:
	.uleb128	9
	.ascii	"TTHREADPRIORITY\000"
	.long	.La166-.Ldebug_info0
.La166:
	.uleb128	36
	.ascii	"TTHREADPRIORITY\000"
	.byte	4
	.uleb128	37
	.ascii	"TPIDLE\000"
	.long	0
	.uleb128	37
	.ascii	"TPLOWEST\000"
	.long	1
	.uleb128	37
	.ascii	"TPLOWER\000"
	.long	2
	.uleb128	37
	.ascii	"TPNORMAL\000"
	.long	3
	.uleb128	37
	.ascii	"TPHIGHER\000"
	.long	4
	.uleb128	37
	.ascii	"TPHIGHEST\000"
	.long	5
	.uleb128	37
	.ascii	"TPTIMECRITICAL\000"
	.long	6
	.byte	0
.La81:
	.uleb128	11
	.long	.La80-.Ldebug_info0
# Definition <procedure variable type of procedure of object;Register>
.La82:
	.uleb128	9
	.ascii	"TTHREADMETHOD\000"
	.long	.La167-.Ldebug_info0
.La167:
	.uleb128	34
	.byte	16
	.uleb128	19
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La168-.Ldebug_info0
	.uleb128	19
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La69-.Ldebug_info0
	.byte	0
.La168:
	.uleb128	35
	.ascii	"TTHREADMETHOD\000"
	.byte	1
	.uleb128	26
	.ascii	"this\000"
	.long	.La47-.Ldebug_info0
	.byte	0
.La83:
	.uleb128	11
	.long	.La82-.Ldebug_info0
# Definition <procedure variable type of procedure;Register>
.La84:
	.uleb128	9
	.ascii	"TPROCEDURE\000"
	.long	.La169-.Ldebug_info0
.La169:
	.uleb128	35
	.ascii	"TPROCEDURE\000"
	.byte	1
	.byte	0
.La85:
	.uleb128	11
	.long	.La84-.Ldebug_info0
# Definition UnicodeString
.La86:
	.uleb128	9
	.ascii	"UNICODESTRING\000"
	.long	.La170-.Ldebug_info0
.La170:
	.uleb128	12
	.long	.La171-.Ldebug_info0
.La87:
	.uleb128	11
	.long	.La86-.Ldebug_info0
# Definition TThread.Class Of TThread
.La88:
	.uleb128	12
	.long	.La173-.Ldebug_info0
.La89:
	.uleb128	11
	.long	.La88-.Ldebug_info0
# Definition TThread.TSystemTimes
.La90:
	.uleb128	9
	.ascii	"TSYSTEMTIMES\000"
	.long	.La175-.Ldebug_info0
.La175:
	.uleb128	18
	.ascii	"TSYSTEMTIMES\000"
	.uleb128	32
	.uleb128	19
	.ascii	"IDLETIME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La72-.Ldebug_info0
	.uleb128	19
	.ascii	"USERTIME\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La72-.Ldebug_info0
	.uleb128	19
	.ascii	"KERNELTIME\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La72-.Ldebug_info0
	.uleb128	19
	.ascii	"NICETIME\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La72-.Ldebug_info0
	.byte	0
.La91:
	.uleb128	11
	.long	.La90-.Ldebug_info0
# Definition <procedure variable type of procedure(TThreadReportStatus) of object;Register>
.La92:
	.uleb128	9
	.ascii	"TTHREADEXECUTESTATUSHANDLER\000"
	.long	.La176-.Ldebug_info0
.La176:
	.uleb128	34
	.byte	16
	.uleb128	19
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La177-.Ldebug_info0
	.uleb128	19
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La69-.Ldebug_info0
	.byte	0
.La177:
	.uleb128	35
	.ascii	"TTHREADEXECUTESTATUSHANDLER\000"
	.byte	1
	.uleb128	26
	.ascii	"this\000"
	.long	.La47-.Ldebug_info0
	.uleb128	26
	.ascii	"REPORTSTATUS\000"
	.long	.La178-.Ldebug_info0
	.byte	0
.La93:
	.uleb128	11
	.long	.La92-.Ldebug_info0
# Definition <procedure variable type of procedure(TThread;const AnsiString) of object;Register>
.La94:
	.uleb128	9
	.ascii	"TTHREADSTATUSNOTIFYEVENT\000"
	.long	.La180-.Ldebug_info0
.La180:
	.uleb128	34
	.byte	16
	.uleb128	19
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La181-.Ldebug_info0
	.uleb128	19
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La69-.Ldebug_info0
	.byte	0
.La181:
	.uleb128	35
	.ascii	"TTHREADSTATUSNOTIFYEVENT\000"
	.byte	1
	.uleb128	26
	.ascii	"this\000"
	.long	.La47-.Ldebug_info0
	.uleb128	26
	.ascii	"SENDER\000"
	.long	.La42-.Ldebug_info0
	.uleb128	26
	.ascii	"STATUS\000"
	.long	.La16-.Ldebug_info0
	.byte	0
.La95:
	.uleb128	11
	.long	.La94-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer);Register>
.La96:
	.uleb128	9
	.ascii	"TTHREADEXECUTECALLBACK\000"
	.long	.La182-.Ldebug_info0
.La182:
	.uleb128	35
	.ascii	"TTHREADEXECUTECALLBACK\000"
	.byte	1
	.uleb128	26
	.ascii	"ADATA\000"
	.long	.La47-.Ldebug_info0
	.byte	0
.La97:
	.uleb128	11
	.long	.La96-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;Pointer);Register>
.La98:
	.uleb128	9
	.ascii	"TNOTIFYCALLBACK\000"
	.long	.La183-.Ldebug_info0
.La183:
	.uleb128	35
	.ascii	"TNOTIFYCALLBACK\000"
	.byte	1
	.uleb128	26
	.ascii	"SENDER\000"
	.long	.La69-.Ldebug_info0
	.uleb128	26
	.ascii	"ADATA\000"
	.long	.La47-.Ldebug_info0
	.byte	0
.La99:
	.uleb128	11
	.long	.La98-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer;TThreadReportStatus);Register>
.La100:
	.uleb128	9
	.ascii	"TTHREADEXECUTESTATUSCALLBACK\000"
	.long	.La184-.Ldebug_info0
.La184:
	.uleb128	35
	.ascii	"TTHREADEXECUTESTATUSCALLBACK\000"
	.byte	1
	.uleb128	26
	.ascii	"ADATA\000"
	.long	.La47-.Ldebug_info0
	.uleb128	26
	.ascii	"REPORTSTATUS\000"
	.long	.La178-.Ldebug_info0
	.byte	0
.La101:
	.uleb128	11
	.long	.La100-.Ldebug_info0
# Definition <procedure variable type of procedure(TThread;Pointer;const AnsiString);Register>
.La102:
	.uleb128	9
	.ascii	"TTHREADSTATUSNOTIFYCALLBACK\000"
	.long	.La185-.Ldebug_info0
.La185:
	.uleb128	35
	.ascii	"TTHREADSTATUSNOTIFYCALLBACK\000"
	.byte	1
	.uleb128	26
	.ascii	"SENDER\000"
	.long	.La42-.Ldebug_info0
	.uleb128	26
	.ascii	"ADATA\000"
	.long	.La47-.Ldebug_info0
	.uleb128	26
	.ascii	"STATUS\000"
	.long	.La16-.Ldebug_info0
	.byte	0
.La103:
	.uleb128	11
	.long	.La102-.Ldebug_info0
# Definition TWaveSample1
.La108:
	.uleb128	9
	.ascii	"TWAVESAMPLE1\000"
	.long	.La186-.Ldebug_info0
.La186:
	.uleb128	18
	.ascii	"TWAVESAMPLE1\000"
	.uleb128	48
	.uleb128	19
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La16-.Ldebug_info0
	.uleb128	19
	.ascii	"LEN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La26-.Ldebug_info0
	.uleb128	19
	.ascii	"LSTART\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La26-.Ldebug_info0
	.uleb128	19
	.ascii	"LEND\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La26-.Ldebug_info0
	.uleb128	19
	.ascii	"SPEED\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"WAVE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La187-.Ldebug_info0
	.uleb128	19
	.ascii	"NOTE\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La26-.Ldebug_info0
	.uleb128	19
	.ascii	"FINETUNE\000"
	.byte	2
	.byte	35
	.uleb128	44
	.long	.La26-.Ldebug_info0
	.byte	0
.La109:
	.uleb128	11
	.long	.La108-.Ldebug_info0
# Definition TObject.Class Of TObject
.La111:
	.uleb128	12
	.long	.La173-.Ldebug_info0
.La112:
	.uleb128	11
	.long	.La111-.Ldebug_info0
# Definition HRESULT
.La113:
	.uleb128	9
	.ascii	"HRESULT\000"
	.long	.La189-.Ldebug_info0
.La189:
	.uleb128	10
	.ascii	"HRESULT\000"
	.byte	5
	.byte	4
.La114:
	.uleb128	11
	.long	.La113-.Ldebug_info0
# Definition <Formal type>
.La115:
	.uleb128	9
	.ascii	"formal\000"
	.long	.La190-.Ldebug_info0
.La190:
	.uleb128	10
	.ascii	"FormalDef\000"
	.byte	7
	.byte	0
.La116:
	.uleb128	11
	.long	.La115-.Ldebug_info0
# Definition TObject.Class Of TObject
.La117:
	.uleb128	12
	.long	.La173-.Ldebug_info0
.La118:
	.uleb128	11
	.long	.La117-.Ldebug_info0
# Definition TClass
.La119:
	.uleb128	9
	.ascii	"TCLASS\000"
	.long	.La191-.Ldebug_info0
.La191:
	.uleb128	12
	.long	.La173-.Ldebug_info0
.La120:
	.uleb128	11
	.long	.La119-.Ldebug_info0
# Definition TObject.Class Of TObject
.La121:
	.uleb128	12
	.long	.La173-.Ldebug_info0
.La122:
	.uleb128	11
	.long	.La121-.Ldebug_info0
# Definition TObject.Class Of TObject
.La123:
	.uleb128	12
	.long	.La173-.Ldebug_info0
.La124:
	.uleb128	11
	.long	.La123-.Ldebug_info0
# Definition ShortString
.La125:
	.uleb128	9
	.ascii	"SHORTSTRING\000"
	.long	.La192-.Ldebug_info0
.La192:
	.uleb128	18
	.ascii	"ShortString\000"
	.uleb128	256
	.uleb128	19
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La61-.Ldebug_info0
	.uleb128	19
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La193-.Ldebug_info0
	.byte	0
.La193:
	.uleb128	38
	.uleb128	256
	.uleb128	1
	.long	.La36-.Ldebug_info0
	.uleb128	39
	.uleb128	1
	.uleb128	255
	.long	.La61-.Ldebug_info0
	.byte	0
.La126:
	.uleb128	11
	.long	.La125-.Ldebug_info0
# Definition TObject.Class Of TObject
.La127:
	.uleb128	12
	.long	.La173-.Ldebug_info0
.La128:
	.uleb128	11
	.long	.La127-.Ldebug_info0
# Definition TObject.Class Of TObject
.La129:
	.uleb128	12
	.long	.La173-.Ldebug_info0
.La130:
	.uleb128	11
	.long	.La129-.Ldebug_info0
# Definition TObject.Class Of TObject
.La131:
	.uleb128	12
	.long	.La173-.Ldebug_info0
.La132:
	.uleb128	11
	.long	.La131-.Ldebug_info0
# Definition TObject.Class Of TObject
.La133:
	.uleb128	12
	.long	.La173-.Ldebug_info0
.La134:
	.uleb128	11
	.long	.La133-.Ldebug_info0
# Definition TObject.Class Of TObject
.La135:
	.uleb128	12
	.long	.La173-.Ldebug_info0
.La136:
	.uleb128	11
	.long	.La135-.Ldebug_info0
# Definition pstringmessagetable
.La137:
	.uleb128	9
	.ascii	"PSTRINGMESSAGETABLE\000"
	.long	.La194-.Ldebug_info0
.La194:
	.uleb128	12
	.long	.La195-.Ldebug_info0
.La138:
	.uleb128	11
	.long	.La137-.Ldebug_info0
# Definition TObject.Class Of TObject
.La139:
	.uleb128	12
	.long	.La173-.Ldebug_info0
.La140:
	.uleb128	11
	.long	.La139-.Ldebug_info0
# Definition TObject.Class Of TObject
.La141:
	.uleb128	12
	.long	.La173-.Ldebug_info0
.La142:
	.uleb128	11
	.long	.La141-.Ldebug_info0
# Definition TObject.Class Of TObject
.La143:
	.uleb128	12
	.long	.La173-.Ldebug_info0
.La144:
	.uleb128	11
	.long	.La143-.Ldebug_info0
# Definition TGuid
.La145:
	.uleb128	9
	.ascii	"TGUID\000"
	.long	.La197-.Ldebug_info0
.La197:
	.uleb128	18
	.ascii	"TGUID\000"
	.uleb128	16
	.uleb128	19
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La45-.Ldebug_info0
	.uleb128	19
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La198-.Ldebug_info0
	.uleb128	19
	.ascii	"DATA3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La198-.Ldebug_info0
	.uleb128	19
	.ascii	"DATA4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La200-.Ldebug_info0
	.uleb128	19
	.ascii	"D1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La45-.Ldebug_info0
	.uleb128	19
	.ascii	"D2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La198-.Ldebug_info0
	.uleb128	19
	.ascii	"D3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La198-.Ldebug_info0
	.uleb128	19
	.ascii	"D4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La202-.Ldebug_info0
	.uleb128	19
	.ascii	"TIME_LOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La45-.Ldebug_info0
	.uleb128	19
	.ascii	"TIME_MID\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La198-.Ldebug_info0
	.uleb128	19
	.ascii	"TIME_HI_AND_VERSION\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La198-.Ldebug_info0
	.uleb128	19
	.ascii	"CLOCK_SEQ_HI_AND_RESERVED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La61-.Ldebug_info0
	.uleb128	19
	.ascii	"CLOCK_SEQ_LOW\000"
	.byte	2
	.byte	35
	.uleb128	9
	.long	.La61-.Ldebug_info0
	.uleb128	19
	.ascii	"NODE\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La204-.Ldebug_info0
	.byte	0
.La146:
	.uleb128	11
	.long	.La145-.Ldebug_info0
# Definition pinterfaceentry
.La147:
	.uleb128	9
	.ascii	"PINTERFACEENTRY\000"
	.long	.La206-.Ldebug_info0
.La206:
	.uleb128	12
	.long	.La207-.Ldebug_info0
.La148:
	.uleb128	11
	.long	.La147-.Ldebug_info0
# Definition TObject.Class Of TObject
.La149:
	.uleb128	12
	.long	.La173-.Ldebug_info0
.La150:
	.uleb128	11
	.long	.La149-.Ldebug_info0
# Definition TObject.Class Of TObject
.La151:
	.uleb128	12
	.long	.La173-.Ldebug_info0
.La152:
	.uleb128	11
	.long	.La151-.Ldebug_info0
# Definition pinterfacetable
.La153:
	.uleb128	9
	.ascii	"PINTERFACETABLE\000"
	.long	.La209-.Ldebug_info0
.La209:
	.uleb128	12
	.long	.La210-.Ldebug_info0
.La154:
	.uleb128	11
	.long	.La153-.Ldebug_info0
# Definition TObject.Class Of TObject
.La155:
	.uleb128	12
	.long	.La173-.Ldebug_info0
.La156:
	.uleb128	11
	.long	.La155-.Ldebug_info0
# Definition TObject.Class Of TObject
.La157:
	.uleb128	12
	.long	.La173-.Ldebug_info0
.La158:
	.uleb128	11
	.long	.La157-.Ldebug_info0
# Definition TThread.TThreadQueueEntry
.La164:
	.uleb128	9
	.ascii	"TTHREADQUEUEENTRY\000"
	.long	.La212-.Ldebug_info0
.La212:
	.uleb128	18
	.ascii	"TTHREADQUEUEENTRY\000"
	.uleb128	48
	.uleb128	19
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	19
	.ascii	"THREAD\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La42-.Ldebug_info0
	.uleb128	19
	.ascii	"EXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La213-.Ldebug_info0
	.uleb128	19
	.ascii	"SYNCEVENT\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La216-.Ldebug_info0
	.uleb128	19
	.ascii	"NEXT\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La78-.Ldebug_info0
	.byte	0
.La165:
	.uleb128	11
	.long	.La164-.Ldebug_info0
# Definition WideChar
.La171:
	.uleb128	9
	.ascii	"WIDECHAR\000"
	.long	.La218-.Ldebug_info0
.La218:
	.uleb128	10
	.ascii	"WideChar\000"
	.byte	8
	.byte	2
.La172:
	.uleb128	11
	.long	.La171-.Ldebug_info0
# Definition <record type>
.La173:
	.uleb128	9
	.ascii	"__vtbl_ptr_type\000"
	.long	.La219-.Ldebug_info0
.La219:
	.uleb128	40
	.uleb128	40
	.byte	0
.La174:
	.uleb128	11
	.long	.La173-.Ldebug_info0
# Definition <procedure variable type of procedure(const AnsiString) of object;Register>
.La178:
	.uleb128	9
	.ascii	"TTHREADREPORTSTATUS\000"
	.long	.La220-.Ldebug_info0
.La220:
	.uleb128	34
	.byte	16
	.uleb128	19
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La221-.Ldebug_info0
	.uleb128	19
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La69-.Ldebug_info0
	.byte	0
.La221:
	.uleb128	35
	.ascii	"TTHREADREPORTSTATUS\000"
	.byte	1
	.uleb128	26
	.ascii	"this\000"
	.long	.La47-.Ldebug_info0
	.uleb128	26
	.ascii	"STATUS\000"
	.long	.La16-.Ldebug_info0
	.byte	0
.La179:
	.uleb128	11
	.long	.La178-.Ldebug_info0
# Definition TWaveSample1.^Double
.La187:
	.uleb128	12
	.long	.La30-.Ldebug_info0
.La188:
	.uleb128	11
	.long	.La187-.Ldebug_info0
# Definition TStringMessageTable
.La195:
	.uleb128	9
	.ascii	"TSTRINGMESSAGETABLE\000"
	.long	.La222-.Ldebug_info0
.La222:
	.uleb128	18
	.ascii	"TSTRINGMESSAGETABLE\000"
	.uleb128	24
	.uleb128	19
	.ascii	"COUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La26-.Ldebug_info0
	.uleb128	19
	.ascii	"MSGSTRTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La223-.Ldebug_info0
	.byte	0
.La196:
	.uleb128	11
	.long	.La195-.Ldebug_info0
# Definition Word
.La198:
	.uleb128	9
	.ascii	"WORD\000"
	.long	.La225-.Ldebug_info0
.La225:
	.uleb128	10
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La199:
	.uleb128	11
	.long	.La198-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La200:
	.uleb128	20
	.uleb128	8
	.long	.La61-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La1-.Ldebug_info0
	.byte	0
.La201:
	.uleb128	11
	.long	.La200-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La202:
	.uleb128	20
	.uleb128	8
	.long	.La61-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La1-.Ldebug_info0
	.byte	0
.La203:
	.uleb128	11
	.long	.La202-.Ldebug_info0
# Definition TGuid.Array[0..5] Of Byte
.La204:
	.uleb128	20
	.uleb128	6
	.long	.La61-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	5
	.uleb128	1
	.long	.La1-.Ldebug_info0
	.byte	0
.La205:
	.uleb128	11
	.long	.La204-.Ldebug_info0
# Definition tinterfaceentry
.La207:
	.uleb128	9
	.ascii	"TINTERFACEENTRY\000"
	.long	.La226-.Ldebug_info0
.La226:
	.uleb128	18
	.ascii	"TINTERFACEENTRY\000"
	.uleb128	40
	.uleb128	19
	.ascii	"IID\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La227-.Ldebug_info0
	.uleb128	19
	.ascii	"VTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La47-.Ldebug_info0
	.uleb128	19
	.ascii	"IOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La72-.Ldebug_info0
	.uleb128	19
	.ascii	"IIDSTR\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La229-.Ldebug_info0
	.uleb128	19
	.ascii	"ITYPE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La231-.Ldebug_info0
	.uleb128	19
	.ascii	"__PAD_DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La28-.Ldebug_info0
	.byte	0
.La208:
	.uleb128	11
	.long	.La207-.Ldebug_info0
# Definition tinterfacetable
.La210:
	.uleb128	9
	.ascii	"TINTERFACETABLE\000"
	.long	.La233-.Ldebug_info0
.La233:
	.uleb128	18
	.ascii	"TINTERFACETABLE\000"
	.uleb128	48
	.uleb128	19
	.ascii	"ENTRYCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La72-.Ldebug_info0
	.uleb128	19
	.ascii	"ENTRIES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La234-.Ldebug_info0
	.byte	0
.La211:
	.uleb128	11
	.long	.La210-.Ldebug_info0
# Definition Exception
.La213:
	.uleb128	9
	.ascii	"EXCEPTION\000"
	.long	.La236-.Ldebug_info0
.La236:
	.uleb128	12
	.long	.La215-.Ldebug_info0
.La215:
	.uleb128	14
	.ascii	"EXCEPTION\000"
	.uleb128	24
	.uleb128	15
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La71-.Ldebug_info0
	.uleb128	22
	.ascii	"FMESSAGE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La16-.Ldebug_info0
	.uleb128	22
	.ascii	"FHELPCONTEXT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La26-.Ldebug_info0
	.uleb128	22
	.ascii	"HELPCONTEXT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La26-.Ldebug_info0
	.uleb128	22
	.ascii	"MESSAGE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La16-.Ldebug_info0
# Procdef constructor Create(<Exception>;<Pointer>;const AnsiString);
	.uleb128	28
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La213-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La213-.Ldebug_info0
# Symbol vmt
	.uleb128	26
	.ascii	"vmt\000"
	.long	.La47-.Ldebug_info0
# Symbol MSG
	.uleb128	26
	.ascii	"MSG\000"
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef constructor CreateFmt(<Exception>;<Pointer>;const AnsiString;const Array Of Const;<const Int64>);
	.uleb128	28
	.ascii	"CREATEFMT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La213-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La213-.Ldebug_info0
# Symbol vmt
	.uleb128	26
	.ascii	"vmt\000"
	.long	.La47-.Ldebug_info0
# Symbol MSG
	.uleb128	26
	.ascii	"MSG\000"
	.long	.La16-.Ldebug_info0
# Symbol ARGS
	.uleb128	26
	.ascii	"ARGS\000"
	.long	.La237-.Ldebug_info0
# Symbol highARGS
	.uleb128	26
	.ascii	"highARGS\000"
	.long	.La28-.Ldebug_info0
# Definition Array Of Const
.La237:
	.uleb128	41
	.long	.La239-.Ldebug_info0
	.uleb128	42
	.sleb128	0
	.uleb128	16
	.long	.La28-.Ldebug_info0
	.byte	0
.La238:
	.uleb128	11
	.long	.La237-.Ldebug_info0
	.byte	0
# Procdef constructor CreateRes(<Exception>;<Pointer>;PAnsiString);
	.uleb128	28
	.ascii	"CREATERES\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La213-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La213-.Ldebug_info0
# Symbol vmt
	.uleb128	26
	.ascii	"vmt\000"
	.long	.La47-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	26
	.ascii	"RESSTRING\000"
	.long	.La241-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResFmt(<Exception>;<Pointer>;PAnsiString;const Array Of Const;<const Int64>);
	.uleb128	28
	.ascii	"CREATERESFMT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La213-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La213-.Ldebug_info0
# Symbol vmt
	.uleb128	26
	.ascii	"vmt\000"
	.long	.La47-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	26
	.ascii	"RESSTRING\000"
	.long	.La241-.Ldebug_info0
# Symbol ARGS
	.uleb128	26
	.ascii	"ARGS\000"
	.long	.La243-.Ldebug_info0
# Symbol highARGS
	.uleb128	26
	.ascii	"highARGS\000"
	.long	.La28-.Ldebug_info0
# Definition Array Of Const
.La243:
	.uleb128	41
	.long	.La239-.Ldebug_info0
	.uleb128	42
	.sleb128	0
	.uleb128	16
	.long	.La28-.Ldebug_info0
	.byte	0
.La244:
	.uleb128	11
	.long	.La243-.Ldebug_info0
	.byte	0
# Procdef constructor CreateHelp(<Exception>;<Pointer>;const AnsiString;LongInt);
	.uleb128	28
	.ascii	"CREATEHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La213-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La213-.Ldebug_info0
# Symbol vmt
	.uleb128	26
	.ascii	"vmt\000"
	.long	.La47-.Ldebug_info0
# Symbol MSG
	.uleb128	26
	.ascii	"MSG\000"
	.long	.La16-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	26
	.ascii	"AHELPCONTEXT\000"
	.long	.La26-.Ldebug_info0
	.byte	0
# Procdef constructor CreateFmtHelp(<Exception>;<Pointer>;const AnsiString;const Array Of Const;<const Int64>;LongInt);
	.uleb128	28
	.ascii	"CREATEFMTHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La213-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La213-.Ldebug_info0
# Symbol vmt
	.uleb128	26
	.ascii	"vmt\000"
	.long	.La47-.Ldebug_info0
# Symbol MSG
	.uleb128	26
	.ascii	"MSG\000"
	.long	.La16-.Ldebug_info0
# Symbol ARGS
	.uleb128	26
	.ascii	"ARGS\000"
	.long	.La245-.Ldebug_info0
# Symbol highARGS
	.uleb128	26
	.ascii	"highARGS\000"
	.long	.La28-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	26
	.ascii	"AHELPCONTEXT\000"
	.long	.La26-.Ldebug_info0
# Definition Array Of Const
.La245:
	.uleb128	41
	.long	.La239-.Ldebug_info0
	.uleb128	42
	.sleb128	0
	.uleb128	16
	.long	.La28-.Ldebug_info0
	.byte	0
.La246:
	.uleb128	11
	.long	.La245-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResHelp(<Exception>;<Pointer>;PAnsiString;LongInt);
	.uleb128	28
	.ascii	"CREATERESHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La213-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La213-.Ldebug_info0
# Symbol vmt
	.uleb128	26
	.ascii	"vmt\000"
	.long	.La47-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	26
	.ascii	"RESSTRING\000"
	.long	.La241-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	26
	.ascii	"AHELPCONTEXT\000"
	.long	.La26-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResFmtHelp(<Exception>;<Pointer>;PAnsiString;const Array Of Const;<const Int64>;LongInt);
	.uleb128	28
	.ascii	"CREATERESFMTHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La213-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La213-.Ldebug_info0
# Symbol vmt
	.uleb128	26
	.ascii	"vmt\000"
	.long	.La47-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	26
	.ascii	"RESSTRING\000"
	.long	.La241-.Ldebug_info0
# Symbol ARGS
	.uleb128	26
	.ascii	"ARGS\000"
	.long	.La247-.Ldebug_info0
# Symbol highARGS
	.uleb128	26
	.ascii	"highARGS\000"
	.long	.La28-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	26
	.ascii	"AHELPCONTEXT\000"
	.long	.La26-.Ldebug_info0
# Definition Array Of Const
.La247:
	.uleb128	41
	.long	.La239-.Ldebug_info0
	.uleb128	42
	.sleb128	0
	.uleb128	16
	.long	.La28-.Ldebug_info0
	.byte	0
.La248:
	.uleb128	11
	.long	.La247-.Ldebug_info0
	.byte	0
# Procdef ToString(<Exception>;<var AnsiString>):AnsiString;
	.uleb128	32
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
	.long	.La16-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La213-.Ldebug_info0
# Symbol result
	.uleb128	33
	.ascii	"result\000"
	.long	.La16-.Ldebug_info0
	.byte	0
	.byte	0
.La214:
	.uleb128	11
	.long	.La213-.Ldebug_info0
# Definition PRTLEvent
.La216:
	.uleb128	9
	.ascii	"PRTLEVENT\000"
	.long	.La249-.Ldebug_info0
.La249:
	.uleb128	13
.La217:
	.uleb128	11
	.long	.La216-.Ldebug_info0
# Definition TStringMessageTable.Array[0..0] Of TMsgStrTable
.La223:
	.uleb128	20
	.uleb128	16
	.long	.La250-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	0
	.uleb128	16
	.long	.La1-.Ldebug_info0
	.byte	0
.La224:
	.uleb128	11
	.long	.La223-.Ldebug_info0
# Definition PGuid
.La227:
	.uleb128	9
	.ascii	"PGUID\000"
	.long	.La252-.Ldebug_info0
.La252:
	.uleb128	12
	.long	.La145-.Ldebug_info0
.La228:
	.uleb128	11
	.long	.La227-.Ldebug_info0
# Definition PShortString
.La229:
	.uleb128	9
	.ascii	"PSHORTSTRING\000"
	.long	.La253-.Ldebug_info0
.La253:
	.uleb128	12
	.long	.La125-.Ldebug_info0
.La230:
	.uleb128	11
	.long	.La229-.Ldebug_info0
# Definition tinterfaceentrytype
.La231:
	.uleb128	9
	.ascii	"TINTERFACEENTRYTYPE\000"
	.long	.La254-.Ldebug_info0
.La254:
	.uleb128	36
	.ascii	"TINTERFACEENTRYTYPE\000"
	.byte	4
	.uleb128	37
	.ascii	"ETSTANDARD\000"
	.long	0
	.uleb128	37
	.ascii	"ETVIRTUALMETHODRESULT\000"
	.long	1
	.uleb128	37
	.ascii	"ETSTATICMETHODRESULT\000"
	.long	2
	.uleb128	37
	.ascii	"ETFIELDVALUE\000"
	.long	3
	.uleb128	37
	.ascii	"ETVIRTUALMETHODCLASS\000"
	.long	4
	.uleb128	37
	.ascii	"ETSTATICMETHODCLASS\000"
	.long	5
	.uleb128	37
	.ascii	"ETFIELDVALUECLASS\000"
	.long	6
	.byte	0
.La232:
	.uleb128	11
	.long	.La231-.Ldebug_info0
# Definition tinterfacetable.Array[0..0] Of tinterfaceentry
.La234:
	.uleb128	20
	.uleb128	40
	.long	.La207-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	0
	.uleb128	40
	.long	.La1-.Ldebug_info0
	.byte	0
.La235:
	.uleb128	11
	.long	.La234-.Ldebug_info0
# Definition TVarRec
.La239:
	.uleb128	9
	.ascii	"TVARREC\000"
	.long	.La255-.Ldebug_info0
.La255:
	.uleb128	18
	.ascii	"TVARREC\000"
	.uleb128	16
	.uleb128	19
	.ascii	"VTYPE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	19
	.ascii	"VINTEGER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La26-.Ldebug_info0
	.uleb128	19
	.ascii	"VBOOLEAN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La49-.Ldebug_info0
	.uleb128	19
	.ascii	"VCHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La36-.Ldebug_info0
	.uleb128	19
	.ascii	"VWIDECHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La171-.Ldebug_info0
	.uleb128	19
	.ascii	"VEXTENDED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La256-.Ldebug_info0
	.uleb128	19
	.ascii	"VSTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La229-.Ldebug_info0
	.uleb128	19
	.ascii	"VPOINTER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La47-.Ldebug_info0
	.uleb128	19
	.ascii	"VPCHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La258-.Ldebug_info0
	.uleb128	19
	.ascii	"VOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La69-.Ldebug_info0
	.uleb128	19
	.ascii	"VCLASS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La119-.Ldebug_info0
	.uleb128	19
	.ascii	"VPWIDECHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La260-.Ldebug_info0
	.uleb128	19
	.ascii	"VANSISTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La47-.Ldebug_info0
	.uleb128	19
	.ascii	"VCURRENCY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La262-.Ldebug_info0
	.uleb128	19
	.ascii	"VVARIANT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La264-.Ldebug_info0
	.uleb128	19
	.ascii	"VINTERFACE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La47-.Ldebug_info0
	.uleb128	19
	.ascii	"VWIDESTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La47-.Ldebug_info0
	.uleb128	19
	.ascii	"VINT64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La266-.Ldebug_info0
	.uleb128	19
	.ascii	"VUNICODESTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La47-.Ldebug_info0
	.uleb128	19
	.ascii	"VQWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La268-.Ldebug_info0
	.byte	0
.La240:
	.uleb128	11
	.long	.La239-.Ldebug_info0
# Definition PAnsiString
.La241:
	.uleb128	9
	.ascii	"PANSISTRING\000"
	.long	.La270-.Ldebug_info0
.La270:
	.uleb128	12
	.long	.La16-.Ldebug_info0
.La242:
	.uleb128	11
	.long	.La241-.Ldebug_info0
# Definition TMsgStrTable
.La250:
	.uleb128	9
	.ascii	"TMSGSTRTABLE\000"
	.long	.La271-.Ldebug_info0
.La271:
	.uleb128	18
	.ascii	"TMSGSTRTABLE\000"
	.uleb128	16
	.uleb128	19
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La229-.Ldebug_info0
	.uleb128	19
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La47-.Ldebug_info0
	.byte	0
.La251:
	.uleb128	11
	.long	.La250-.Ldebug_info0
# Definition PExtended
.La256:
	.uleb128	9
	.ascii	"PEXTENDED\000"
	.long	.La272-.Ldebug_info0
.La272:
	.uleb128	12
	.long	.La30-.Ldebug_info0
.La257:
	.uleb128	11
	.long	.La256-.Ldebug_info0
# Definition PChar
.La258:
	.uleb128	9
	.ascii	"PCHAR\000"
	.long	.La273-.Ldebug_info0
.La273:
	.uleb128	12
	.long	.La36-.Ldebug_info0
.La259:
	.uleb128	11
	.long	.La258-.Ldebug_info0
# Definition PWideChar
.La260:
	.uleb128	9
	.ascii	"PWIDECHAR\000"
	.long	.La274-.Ldebug_info0
.La274:
	.uleb128	12
	.long	.La171-.Ldebug_info0
.La261:
	.uleb128	11
	.long	.La260-.Ldebug_info0
# Definition PCurrency
.La262:
	.uleb128	9
	.ascii	"PCURRENCY\000"
	.long	.La275-.Ldebug_info0
.La275:
	.uleb128	12
	.long	.La276-.Ldebug_info0
.La263:
	.uleb128	11
	.long	.La262-.Ldebug_info0
# Definition PVariant
.La264:
	.uleb128	9
	.ascii	"PVARIANT\000"
	.long	.La278-.Ldebug_info0
.La278:
	.uleb128	12
	.long	.La279-.Ldebug_info0
.La265:
	.uleb128	11
	.long	.La264-.Ldebug_info0
# Definition PInt64
.La266:
	.uleb128	9
	.ascii	"PINT64\000"
	.long	.La281-.Ldebug_info0
.La281:
	.uleb128	12
	.long	.La28-.Ldebug_info0
.La267:
	.uleb128	11
	.long	.La266-.Ldebug_info0
# Definition PQWord
.La268:
	.uleb128	9
	.ascii	"PQWORD\000"
	.long	.La282-.Ldebug_info0
.La282:
	.uleb128	12
	.long	.La72-.Ldebug_info0
.La269:
	.uleb128	11
	.long	.La268-.Ldebug_info0
# Definition Currency
.La276:
	.uleb128	9
	.ascii	"CURRENCY\000"
	.long	.La283-.Ldebug_info0
.La283:
	.uleb128	10
	.ascii	"Currency\000"
	.byte	5
	.byte	8
.La277:
	.uleb128	11
	.long	.La276-.Ldebug_info0
# Definition Variant
.La279:
	.uleb128	9
	.ascii	"VARIANT\000"
	.long	.La284-.Ldebug_info0
.La284:
	.uleb128	18
	.ascii	"Variant\000"
	.uleb128	24
	.uleb128	19
	.ascii	"VTYPE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La198-.Ldebug_info0
	.uleb128	19
	.ascii	"RES1\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La198-.Ldebug_info0
	.uleb128	19
	.ascii	"RES2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La198-.Ldebug_info0
	.uleb128	19
	.ascii	"RES3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La198-.Ldebug_info0
	.uleb128	19
	.ascii	"VSMALLINT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La285-.Ldebug_info0
	.uleb128	19
	.ascii	"VINTEGER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La26-.Ldebug_info0
	.uleb128	19
	.ascii	"VSINGLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La287-.Ldebug_info0
	.uleb128	19
	.ascii	"VDOUBLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La30-.Ldebug_info0
	.uleb128	19
	.ascii	"VDATE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La289-.Ldebug_info0
	.uleb128	19
	.ascii	"VCURRENCY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La276-.Ldebug_info0
	.uleb128	19
	.ascii	"VOLESTR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La260-.Ldebug_info0
	.uleb128	19
	.ascii	"VDISPATCH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La47-.Ldebug_info0
	.uleb128	19
	.ascii	"VERROR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La113-.Ldebug_info0
	.uleb128	19
	.ascii	"VBOOLEAN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La291-.Ldebug_info0
	.uleb128	19
	.ascii	"VUNKNOWN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La47-.Ldebug_info0
	.uleb128	19
	.ascii	"VSHORTINT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	19
	.ascii	"VBYTE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La61-.Ldebug_info0
	.uleb128	19
	.ascii	"VWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La198-.Ldebug_info0
	.uleb128	19
	.ascii	"VLONGWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La45-.Ldebug_info0
	.uleb128	19
	.ascii	"VINT64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	19
	.ascii	"VQWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La72-.Ldebug_info0
	.uleb128	19
	.ascii	"VWORD64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La72-.Ldebug_info0
	.uleb128	19
	.ascii	"VSTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La47-.Ldebug_info0
	.uleb128	19
	.ascii	"VANY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La47-.Ldebug_info0
	.uleb128	19
	.ascii	"VARRAY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La293-.Ldebug_info0
	.uleb128	19
	.ascii	"VPOINTER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La47-.Ldebug_info0
	.uleb128	19
	.ascii	"VRECORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La47-.Ldebug_info0
	.uleb128	19
	.ascii	"PRECINFO\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La47-.Ldebug_info0
	.uleb128	19
	.ascii	"VLONGS\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La295-.Ldebug_info0
	.uleb128	19
	.ascii	"VWORDS\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La297-.Ldebug_info0
	.uleb128	19
	.ascii	"VBYTES\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La299-.Ldebug_info0
	.byte	0
.La280:
	.uleb128	11
	.long	.La279-.Ldebug_info0
# Definition SmallInt
.La285:
	.uleb128	9
	.ascii	"SMALLINT\000"
	.long	.La301-.Ldebug_info0
.La301:
	.uleb128	10
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.La286:
	.uleb128	11
	.long	.La285-.Ldebug_info0
# Definition Single
.La287:
	.uleb128	9
	.ascii	"SINGLE\000"
	.long	.La302-.Ldebug_info0
.La302:
	.uleb128	10
	.ascii	"SINGLE\000"
	.byte	4
	.byte	4
.La288:
	.uleb128	11
	.long	.La287-.Ldebug_info0
# Definition TDateTime
.La289:
	.uleb128	9
	.ascii	"TDATETIME\000"
	.long	.La303-.Ldebug_info0
.La303:
	.uleb128	10
	.ascii	"TDATETIME\000"
	.byte	4
	.byte	8
.La290:
	.uleb128	11
	.long	.La289-.Ldebug_info0
# Definition WordBool
.La291:
	.uleb128	9
	.ascii	"WORDBOOL\000"
	.long	.La304-.Ldebug_info0
.La304:
	.uleb128	10
	.ascii	"WordBool\000"
	.byte	2
	.byte	2
.La292:
	.uleb128	11
	.long	.La291-.Ldebug_info0
# Definition pvararray
.La293:
	.uleb128	9
	.ascii	"PVARARRAY\000"
	.long	.La305-.Ldebug_info0
.La305:
	.uleb128	12
	.long	.La306-.Ldebug_info0
.La294:
	.uleb128	11
	.long	.La293-.Ldebug_info0
# Definition tvardata.Array[0..2] Of LongInt
.La295:
	.uleb128	20
	.uleb128	12
	.long	.La26-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	2
	.uleb128	4
	.long	.La1-.Ldebug_info0
	.byte	0
.La296:
	.uleb128	11
	.long	.La295-.Ldebug_info0
# Definition tvardata.Array[0..6] Of Word
.La297:
	.uleb128	20
	.uleb128	14
	.long	.La198-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	6
	.uleb128	2
	.long	.La1-.Ldebug_info0
	.byte	0
.La298:
	.uleb128	11
	.long	.La297-.Ldebug_info0
# Definition tvardata.Array[0..13] Of Byte
.La299:
	.uleb128	20
	.uleb128	14
	.long	.La61-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	13
	.uleb128	1
	.long	.La1-.Ldebug_info0
	.byte	0
.La300:
	.uleb128	11
	.long	.La299-.Ldebug_info0
# Definition tvararray
.La306:
	.uleb128	9
	.ascii	"TVARARRAY\000"
	.long	.La308-.Ldebug_info0
.La308:
	.uleb128	18
	.ascii	"TVARARRAY\000"
	.uleb128	32
	.uleb128	19
	.ascii	"DIMCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La198-.Ldebug_info0
	.uleb128	19
	.ascii	"FLAGS\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La198-.Ldebug_info0
	.uleb128	19
	.ascii	"ELEMENTSIZE\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La26-.Ldebug_info0
	.uleb128	19
	.ascii	"LOCKCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La26-.Ldebug_info0
	.uleb128	19
	.ascii	"DATA\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La47-.Ldebug_info0
	.uleb128	19
	.ascii	"BOUNDS\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La309-.Ldebug_info0
	.byte	0
.La307:
	.uleb128	11
	.long	.La306-.Ldebug_info0
# Definition tvararrayboundarray
.La309:
	.uleb128	9
	.ascii	"TVARARRAYBOUNDARRAY\000"
	.long	.La311-.Ldebug_info0
.La311:
	.uleb128	43
	.ascii	"TVARARRAYBOUNDARRAY\000"
	.uleb128	8
	.long	.La312-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	0
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.byte	0
.La310:
	.uleb128	11
	.long	.La309-.Ldebug_info0
# Definition tvararraybound
.La312:
	.uleb128	9
	.ascii	"TVARARRAYBOUND\000"
	.long	.La314-.Ldebug_info0
.La314:
	.uleb128	18
	.ascii	"TVARARRAYBOUND\000"
	.uleb128	8
	.uleb128	19
	.ascii	"ELEMENTCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La26-.Ldebug_info0
	.uleb128	19
	.ascii	"LOWBOUND\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La26-.Ldebug_info0
	.byte	0
.La313:
	.uleb128	11
	.long	.La312-.Ldebug_info0
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
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 13
	.uleb128	13
	.uleb128	15
	.byte	0
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
	.uleb128	19
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 19
	.uleb128	19
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
# Abbrev 20
	.uleb128	20
	.uleb128	1
	.byte	1
	.uleb128	11
	.uleb128	15
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 21
	.uleb128	21
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
# Abbrev 22
	.uleb128	22
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
# Abbrev 23
	.uleb128	23
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
# Abbrev 24
	.uleb128	24
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
# Abbrev 25
	.uleb128	25
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
# Abbrev 26
	.uleb128	26
	.uleb128	5
	.byte	0
	.uleb128	3
	.uleb128	8
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
	.uleb128	50
	.uleb128	11
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
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 29
	.uleb128	29
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
	.byte	0
	.byte	0
# Abbrev 31
	.uleb128	31
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
# Abbrev 32
	.uleb128	32
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
# Abbrev 33
	.uleb128	33
	.uleb128	52
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 34
	.uleb128	34
	.uleb128	19
	.byte	1
	.uleb128	11
	.uleb128	11
	.byte	0
	.byte	0
# Abbrev 35
	.uleb128	35
	.uleb128	21
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	39
	.uleb128	12
	.byte	0
	.byte	0
# Abbrev 36
	.uleb128	36
	.uleb128	4
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.byte	0
	.byte	0
# Abbrev 37
	.uleb128	37
	.uleb128	40
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	6
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
# [88:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	99
# [88:1]
	.byte	2
	.uleb128	.Ll2-.Ll1
	.byte	1
# [91:1]
	.byte	2
	.uleb128	.Ll3-.Ll2
	.byte	15
# [89:19]
	.byte	2
	.uleb128	.Ll4-.Ll3
	.byte	5
	.uleb128	19
	.byte	3
	.sleb128	-2
	.byte	1
# [90:3]
	.byte	2
	.uleb128	.Ll5-.Ll4
	.byte	5
	.uleb128	3
	.byte	13
# [91:1]
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
# [96:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll8
	.byte	5
	.uleb128	1
	.byte	107
# [96:1]
	.byte	2
	.uleb128	.Ll9-.Ll8
	.byte	1
# [97:52]
	.byte	2
	.uleb128	.Ll10-.Ll9
	.byte	5
	.uleb128	52
	.byte	13
# [98:1]
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
# function: SYNTHCONTROL$_$TSYNTHCTRL_$_EXECUTE_$$_fin$0
# [108:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll13
	.byte	5
	.uleb128	1
	.byte	119
# [108:1]
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
# [108:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll16
	.byte	5
	.uleb128	1
	.byte	119
# [108:1]
	.byte	2
	.uleb128	.Ll17-.Ll16
	.byte	1
# [109:1]
	.byte	2
	.uleb128	.Ll18-.Ll17
	.byte	13
# [110:1]
	.byte	2
	.uleb128	.Ll19-.Ll18
	.byte	13
# [114:6]
	.byte	2
	.uleb128	.Ll20-.Ll19
	.byte	5
	.uleb128	6
	.byte	16
# [117:7]
	.byte	2
	.uleb128	.Ll21-.Ll20
	.byte	5
	.uleb128	7
	.byte	15
# [118:7]
	.byte	2
	.uleb128	.Ll22-.Ll21
	.byte	13
# [119:7]
	.byte	2
	.uleb128	.Ll23-.Ll22
	.byte	13
# [121:9]
	.byte	2
	.uleb128	.Ll24-.Ll23
	.byte	5
	.uleb128	9
	.byte	14
# [123:14]
	.byte	2
	.uleb128	.Ll25-.Ll24
	.byte	5
	.uleb128	14
	.byte	14
# [127:17]
	.byte	2
	.uleb128	.Ll26-.Ll25
	.byte	5
	.uleb128	17
	.byte	16
# [128:11]
	.byte	2
	.uleb128	.Ll27-.Ll26
	.byte	5
	.uleb128	11
	.byte	13
# [135:14]
	.byte	2
	.uleb128	.Ll28-.Ll27
	.byte	5
	.uleb128	14
	.byte	19
# [136:17]
	.byte	2
	.uleb128	.Ll29-.Ll28
	.byte	5
	.uleb128	17
	.byte	13
# [137:11]
	.byte	2
	.uleb128	.Ll30-.Ll29
	.byte	5
	.uleb128	11
	.byte	13
# [139:3]
	.byte	2
	.uleb128	.Ll31-.Ll30
	.byte	5
	.uleb128	3
	.byte	14
# [142:5]
	.byte	2
	.uleb128	.Ll32-.Ll31
	.byte	5
	.uleb128	5
	.byte	15
# [145:6]
	.byte	2
	.uleb128	.Ll33-.Ll32
	.byte	5
	.uleb128	6
	.byte	15
# [147:10]
	.byte	2
	.uleb128	.Ll34-.Ll33
	.byte	5
	.uleb128	10
	.byte	14
# [148:8]
	.byte	2
	.uleb128	.Ll35-.Ll34
	.byte	5
	.uleb128	8
	.byte	13
# [149:9]
	.byte	2
	.uleb128	.Ll36-.Ll35
	.byte	5
	.uleb128	9
	.byte	13
# [150:3]
	.byte	2
	.uleb128	.Ll37-.Ll36
	.byte	5
	.uleb128	3
	.byte	13
# [151:26]
	.byte	2
	.uleb128	.Ll38-.Ll37
	.byte	5
	.uleb128	26
	.byte	13
# [152:6]
	.byte	2
	.uleb128	.Ll39-.Ll38
	.byte	5
	.uleb128	6
	.byte	13
# [154:9]
	.byte	2
	.uleb128	.Ll40-.Ll39
	.byte	5
	.uleb128	9
	.byte	14
# [155:10]
	.byte	2
	.uleb128	.Ll41-.Ll40
	.byte	5
	.uleb128	10
	.byte	13
# [157:7]
	.byte	2
	.uleb128	.Ll42-.Ll41
	.byte	5
	.uleb128	7
	.byte	14
# [158:16]
	.byte	2
	.uleb128	.Ll43-.Ll42
	.byte	5
	.uleb128	16
	.byte	13
# [159:25]
	.byte	2
	.uleb128	.Ll44-.Ll43
	.byte	5
	.uleb128	25
	.byte	13
# [162:6]
	.byte	2
	.uleb128	.Ll45-.Ll44
	.byte	5
	.uleb128	6
	.byte	15
# [164:5]
	.byte	2
	.uleb128	.Ll46-.Ll45
	.byte	5
	.uleb128	5
	.byte	14
# [165:18]
	.byte	2
	.uleb128	.Ll47-.Ll46
	.byte	5
	.uleb128	18
	.byte	13
# [166:19]
	.byte	2
	.uleb128	.Ll48-.Ll47
	.byte	5
	.uleb128	19
	.byte	13
# [167:5]
	.byte	2
	.uleb128	.Ll49-.Ll48
	.byte	5
	.uleb128	5
	.byte	13
# [168:14]
	.byte	2
	.uleb128	.Ll50-.Ll49
	.byte	5
	.uleb128	14
	.byte	13
# [172:3]
	.byte	2
	.uleb128	.Ll51-.Ll50
	.byte	5
	.uleb128	3
	.byte	16
# [173:3]
	.byte	2
	.uleb128	.Ll52-.Ll51
	.byte	13
# [174:33]
	.byte	2
	.uleb128	.Ll53-.Ll52
	.byte	5
	.uleb128	33
	.byte	13
# [175:34]
	.byte	2
	.uleb128	.Ll54-.Ll53
	.byte	5
	.uleb128	34
	.byte	13
# [176:35]
	.byte	2
	.uleb128	.Ll55-.Ll54
	.byte	5
	.uleb128	35
	.byte	13
# [179:1]
	.byte	2
	.uleb128	.Ll56-.Ll55
	.byte	5
	.uleb128	1
	.byte	15
# [180:7]
	.byte	2
	.uleb128	.Ll57-.Ll56
	.byte	5
	.uleb128	7
	.byte	13
# [108:1]
	.byte	2
	.uleb128	.Ll58-.Ll57
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-72
	.byte	1
# [181:1]
	.byte	2
	.uleb128	.Ll59-.Ll58
	.byte	85
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll60
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SYNTHCONTROL_$$_ALLOCATECHANNEL$LONGINT$$LONGINT
# [195:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll61
	.byte	5
	.uleb128	1
	.byte	206
# [196:1]
	.byte	2
	.uleb128	.Ll62-.Ll61
	.byte	13
# [197:1]
	.byte	2
	.uleb128	.Ll63-.Ll62
	.byte	13
# [198:1]
	.byte	2
	.uleb128	.Ll64-.Ll63
	.byte	13
# [201:5]
	.byte	2
	.uleb128	.Ll65-.Ll64
	.byte	5
	.uleb128	5
	.byte	15
# [203:3]
	.byte	2
	.uleb128	.Ll66-.Ll65
	.byte	5
	.uleb128	3
	.byte	14
# [204:16]
	.byte	2
	.uleb128	.Ll67-.Ll66
	.byte	5
	.uleb128	16
	.byte	13
# [206:9]
	.byte	2
	.uleb128	.Ll68-.Ll67
	.byte	5
	.uleb128	9
	.byte	14
# [208:3]
	.byte	2
	.uleb128	.Ll69-.Ll68
	.byte	5
	.uleb128	3
	.byte	14
# [212:3]
	.byte	2
	.uleb128	.Ll70-.Ll69
	.byte	16
# [213:3]
	.byte	2
	.uleb128	.Ll71-.Ll70
	.byte	13
# [214:3]
	.byte	2
	.uleb128	.Ll72-.Ll71
	.byte	13
# [215:3]
	.byte	2
	.uleb128	.Ll73-.Ll72
	.byte	13
# [217:17]
	.byte	2
	.uleb128	.Ll74-.Ll73
	.byte	5
	.uleb128	17
	.byte	14
# [219:19]
	.byte	2
	.uleb128	.Ll75-.Ll74
	.byte	5
	.uleb128	19
	.byte	14
# [220:7]
	.byte	2
	.uleb128	.Ll76-.Ll75
	.byte	5
	.uleb128	7
	.byte	13
# [222:9]
	.byte	2
	.uleb128	.Ll77-.Ll76
	.byte	5
	.uleb128	9
	.byte	14
# [215:10]
	.byte	2
	.uleb128	.Ll78-.Ll77
	.byte	5
	.uleb128	10
	.byte	3
	.sleb128	-7
	.byte	1
# [224:3]
	.byte	2
	.uleb128	.Ll79-.Ll78
	.byte	5
	.uleb128	3
	.byte	21
# [225:16]
	.byte	2
	.uleb128	.Ll80-.Ll79
	.byte	5
	.uleb128	16
	.byte	13
# [228:1]
	.byte	2
	.uleb128	.Ll81-.Ll80
	.byte	5
	.uleb128	1
	.byte	15
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll82
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SYNTHCONTROL_$$_NOTEON$LONGINT$LONGINT$LONGINT$LONGINT
# [237:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll83
	.byte	5
	.uleb128	1
	.byte	248
# [238:4]
	.byte	2
	.uleb128	.Ll84-.Ll83
	.byte	5
	.uleb128	4
	.byte	13
# [239:11]
	.byte	2
	.uleb128	.Ll85-.Ll84
	.byte	5
	.uleb128	11
	.byte	13
# [240:1]
	.byte	2
	.uleb128	.Ll86-.Ll85
	.byte	5
	.uleb128	1
	.byte	13
# [241:1]
	.byte	2
	.uleb128	.Ll87-.Ll86
	.byte	13
# [242:1]
	.byte	2
	.uleb128	.Ll88-.Ll87
	.byte	13
# [244:8]
	.byte	2
	.uleb128	.Ll89-.Ll88
	.byte	5
	.uleb128	8
	.byte	14
# [245:8]
	.byte	2
	.uleb128	.Ll90-.Ll89
	.byte	13
# [246:8]
	.byte	2
	.uleb128	.Ll91-.Ll90
	.byte	13
# [247:8]
	.byte	2
	.uleb128	.Ll92-.Ll91
	.byte	13
# [248:8]
	.byte	2
	.uleb128	.Ll93-.Ll92
	.byte	13
# [249:8]
	.byte	2
	.uleb128	.Ll94-.Ll93
	.byte	13
# [250:8]
	.byte	2
	.uleb128	.Ll95-.Ll94
	.byte	13
# [251:8]
	.byte	2
	.uleb128	.Ll96-.Ll95
	.byte	13
# [255:1]
	.byte	2
	.uleb128	.Ll97-.Ll96
	.byte	5
	.uleb128	1
	.byte	16
# [256:1]
	.byte	2
	.uleb128	.Ll98-.Ll97
	.byte	13
# [237:1]
	.byte	2
	.uleb128	.Ll99-.Ll98
	.byte	3
	.sleb128	-19
	.byte	1
# [256:68]
	.byte	2
	.uleb128	.Ll100-.Ll99
	.byte	5
	.uleb128	68
	.byte	31
# [257:1]
	.byte	2
	.uleb128	.Ll101-.Ll100
	.byte	5
	.uleb128	1
	.byte	13
# [237:1]
	.byte	2
	.uleb128	.Ll102-.Ll101
	.byte	3
	.sleb128	-20
	.byte	1
# [257:69]
	.byte	2
	.uleb128	.Ll103-.Ll102
	.byte	5
	.uleb128	69
	.byte	32
# [258:1]
	.byte	2
	.uleb128	.Ll104-.Ll103
	.byte	5
	.uleb128	1
	.byte	13
# [237:1]
	.byte	2
	.uleb128	.Ll105-.Ll104
	.byte	3
	.sleb128	-21
	.byte	1
# [258:71]
	.byte	2
	.uleb128	.Ll106-.Ll105
	.byte	5
	.uleb128	71
	.byte	33
# [259:1]
	.byte	2
	.uleb128	.Ll107-.Ll106
	.byte	5
	.uleb128	1
	.byte	13
# [237:1]
	.byte	2
	.uleb128	.Ll108-.Ll107
	.byte	3
	.sleb128	-22
	.byte	1
# [259:71]
	.byte	2
	.uleb128	.Ll109-.Ll108
	.byte	5
	.uleb128	71
	.byte	34
# [237:1]
	.byte	2
	.uleb128	.Ll110-.Ll109
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-22
	.byte	1
# [260:20]
	.byte	2
	.uleb128	.Ll111-.Ll110
	.byte	5
	.uleb128	20
	.byte	35
# [261:1]
	.byte	2
	.uleb128	.Ll112-.Ll111
	.byte	5
	.uleb128	1
	.byte	13
# [237:1]
	.byte	2
	.uleb128	.Ll113-.Ll112
	.byte	3
	.sleb128	-24
	.byte	1
# [261:71]
	.byte	2
	.uleb128	.Ll114-.Ll113
	.byte	5
	.uleb128	71
	.byte	36
# [263:1]
	.byte	2
	.uleb128	.Ll115-.Ll114
	.byte	5
	.uleb128	1
	.byte	14
# [264:1]
	.byte	2
	.uleb128	.Ll116-.Ll115
	.byte	13
# [265:1]
	.byte	2
	.uleb128	.Ll117-.Ll116
	.byte	13
# [266:1]
	.byte	2
	.uleb128	.Ll118-.Ll117
	.byte	13
# [267:1]
	.byte	2
	.uleb128	.Ll119-.Ll118
	.byte	13
# [268:1]
	.byte	2
	.uleb128	.Ll120-.Ll119
	.byte	13
# [269:1]
	.byte	2
	.uleb128	.Ll121-.Ll120
	.byte	13
# [270:1]
	.byte	2
	.uleb128	.Ll122-.Ll121
	.byte	13
# [278:8]
	.byte	2
	.uleb128	.Ll123-.Ll122
	.byte	5
	.uleb128	8
	.byte	20
# [279:1]
	.byte	2
	.uleb128	.Ll124-.Ll123
	.byte	5
	.uleb128	1
	.byte	13
# [281:1]
	.byte	2
	.uleb128	.Ll125-.Ll124
	.byte	14
# [282:1]
	.byte	2
	.uleb128	.Ll126-.Ll125
	.byte	13
# [283:1]
	.byte	2
	.uleb128	.Ll127-.Ll126
	.byte	13
# [289:1]
	.byte	2
	.uleb128	.Ll128-.Ll127
	.byte	18
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll129
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SYNTHCONTROL_$$_NOTEOFF$LONGINT$LONGINT
# [300:11]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll130
	.byte	5
	.uleb128	11
	.byte	3
	.sleb128	299
	.byte	1
# [302:1]
	.byte	2
	.uleb128	.Ll131-.Ll130
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll132
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: INIT$_$SYNTHCONTROL
# function: SYNTHCONTROL_$$_init_implicit$
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll133
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FINALIZE$_$SYNTHCONTROL
# function: SYNTHCONTROL_$$_finalize_implicit$
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll134
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

