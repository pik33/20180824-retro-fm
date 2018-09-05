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
.Lt8:
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
.Lt4:
.Ll12:

.section .text.n_synthcontrol$_$tsynthctrl_$_execute_$$_fin$0,"x"
	.balign 16,0x90
SYNTHCONTROL$_$TSYNTHCTRL_$_EXECUTE_$$_fin$0:
.Lc8:
.seh_proc SYNTHCONTROL$_$TSYNTHCTRL_$_EXECUTE_$$_fin$0
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
# [86] for i:=0 to maxchannel-1 do channels[i]:=0;
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj59:
	addl	$1,%ebx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rdx
	movq	$0,(%rdx,%rax,8)
	cmpl	$31,%ebx
	jl	.Lj59
.Ll19:
# [87] for j:=0 to 4 do for i:=0 to 127 do notes[i,j]:=maxchannel;
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
	movl	$32,(%rax,%rdx,4)
	cmpl	$127,%ebx
	jl	.Lj67
	cmpl	$4,%esi
	jl	.Lj64
	.balign 8,0x90
.Lj70:
.Ll20:
# [91] key:=readkeybuffer;
	call	RETRO_$$_READKEYBUFFER$$LONGWORD
	movl	%eax,%edi
.Ll21:
# [94] if key=32 then for i:=0 to 7 do voices[0].operators[i].adsrstate:=1;
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
	movl	$1,320(%rax)
	cmpl	$7,%ebx
	jl	.Lj79
.Lj76:
.Ll22:
# [95] if key=32+$10000 then for i:=0 to 7 do voices[0].operators[i].adsrstate:=5;
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
	movl	$5,320(%rax)
	cmpl	$7,%ebx
	jl	.Lj86
.Lj83:
.Ll23:
# [96] if key<>$FFFFFFFF then
	cmpl	$4294967295,%edi
	je	.Lj90
.Ll24:
# [98] if key<$10000 then
	cmpl	$65536,%edi
	jnb	.Lj92
.Ll25:
# [100] key:=key and 255;
	movl	%edi,%eax
	andl	$255,%eax
	movl	%eax,%edi
# PeepHole Optimization,var2a
.Ll26:
# [104] key:=keymap2[key];
	movl	%edi,%edx
	leaq	TC_$SYNTHCONTROL_$$_KEYMAP2(%rip),%rax
	movzbl	(%rax,%rdx,1),%eax
	movl	%eax,%edi
.Ll27:
# [105] if key>0 then md:=144+key shl 8+$7F0000 else md:=$FFFFFFFF;
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
# [112] key:=key and 255;
	movl	%edi,%eax
	andl	$255,%eax
	movl	%eax,%edi
# PeepHole Optimization,var2a
.Ll29:
# [113] key:=keymap2[key];
	movl	%edi,%edx
	leaq	TC_$SYNTHCONTROL_$$_KEYMAP2(%rip),%rax
	movzbl	(%rax,%rdx,1),%eax
	movl	%eax,%edi
.Ll30:
# [114] if key>0 then md:=144+key shl 8 else md:=$FFFFFFFF;
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
# [116] goto p101;
	jmp	.Lj116
.Lj90:
.Ll32:
# [119] md:=readbuffer;
	call	MIDI_$$_READBUFFER$$LONGWORD
	movl	%eax,%r12d
.Lj116:
.Ll33:
# [122] if md<>$FFFFFFFF then
	cmpl	$4294967295,%r12d
	je	.Lj120
.Ll34:
# [124] aa:=md and $FF;
	movl	%r12d,%eax
	andl	$255,%eax
	movl	%eax,%edx
	movq	%rdx,-16(%rbp)
.Ll35:
# [125] aaa:=(md and $FF00) shr 8;
	movl	%r12d,%eax
	andl	$65280,%eax
	shrl	$8,%eax
	movl	%eax,%r15d
.Ll36:
# [126] aaaa:=(md and $FF0000) shr 16 ;
	movl	%r12d,%eax
	andl	$16711680,%eax
	shrl	$16,%eax
	movl	%eax,%r13d
.Ll37:
# [127] midireceived:=0;
	movl	$0,U_$MIDI_$$_MIDIRECEIVED(%rip)
# PeepHole Optimization,var2a
.Ll38:
# [128] f:=round(7492*power(2,(aaa-69)/12));
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
# [129] if (aa=144) and (aaaa>0) then
	movl	-16(%rbp),%eax
	cmpl	$144,%eax
	jne	.Lj136
	cmpl	$0,%r13d
	jna	.Lj136
.Ll40:
# [131] ch:=allocatechannel(1);
	movl	$1,%ecx
	call	SYNTHCONTROL_$$_ALLOCATECHANNEL$LONGINT$$LONGINT
	movl	%eax,%r14d
.Ll41:
# [132] if ch<maxchannel then
	cmpl	$32,%r14d
	jnl	.Lj143
.Ll42:
# [134] for i:=0 to 127 do if notes[i,0]=ch then notes[i,0]:=maxchannel;
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
	movl	$32,(%rdx,%rax)
.Lj148:
	cmpl	$127,%ebx
	jl	.Lj146
# PeepHole Optimization,var2a
.Ll43:
# [135] notes[aaa,0]:=ch;
	movl	%r15d,%eax
	imulq	$20,%rax,%rax
	leaq	U_$SYNTHCONTROL_$$_NOTES(%rip),%rdx
	movl	%r14d,(%rdx,%rax)
.Ll44:
# [136] noteon(ch,aaa,aaaa,0);
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
# [139] if (aa=144) and (aaaa=0) then
	movl	-16(%rbp),%eax
	cmpl	$144,%eax
	jne	.Lj162
	testl	%r13d,%r13d
	jne	.Lj162
.Ll46:
# [141] i:=-1;
	movl	$-1,%ebx
# PeepHole Optimization,var2a
.Ll47:
# [142] ch:=notes[aaa,0];
	movl	%r15d,%eax
	imulq	$20,%rax,%rax
	leaq	U_$SYNTHCONTROL_$$_NOTES(%rip),%rdx
	movl	(%rdx,%rax),%r14d
.Ll48:
# [143] noteoff(ch,aaa);
	movl	%r15d,%edx
	movl	%r14d,%ecx
	call	SYNTHCONTROL_$$_NOTEOFF$LONGINT$LONGINT
.Ll49:
# [144] deallocatechannel(ch);
	movl	%r14d,%ecx
	call	SYNTHCONTROL_$$_DEALLOCATECHANNEL$LONGINT
# PeepHole Optimization,var2a
.Ll50:
# [145] notes[aaa,0]:=maxchannel;
	movl	%r15d,%eax
	imulq	$20,%rax,%rax
	leaq	U_$SYNTHCONTROL_$$_NOTES(%rip),%rdx
	movl	$32,(%rdx,%rax)
.Lj162:
.Ll51:
# [148] blit($F000000,1000,948,$F000000,1000,900,150,96,1792,1792);
	movl	$1792,72(%rsp)
	movl	$1792,64(%rsp)
	movl	$96,56(%rsp)
	movl	$150,48(%rsp)
	movl	$900,40(%rsp)
	movl	$1000,32(%rsp)
	movl	$251658240,%r9d
	movl	$948,%r8d
	movl	$1000,%eax
	movl	$251658240,%ecx
	movl	%eax,%edx
	call	RETRO_$$_BLIT$crc5A667533
.Ll52:
# [149] box(1000,996,150,48,33);
	movl	$33,32(%rsp)
	movl	$48,%r9d
	movl	$150,%r8d
	movl	$996,%eax
	movl	$1000,%ecx
	movl	%eax,%edx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll53:
# [150] outtextxy(1000,996,inttostr(aa),15);
	movl	-16(%rbp),%eax
# PeepHole Optimization,var2a
	movl	%eax,%edx
	leaq	-8(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	$15,%r9d
	movl	$996,%eax
	movl	$1000,%ecx
	movl	%eax,%edx
	call	RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
# PeepHole Optimization,var2a
.Ll54:
# [151] outtextxy(1000,1012,inttostr(aaa),15);
	movl	%r15d,%edx
	leaq	-8(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	$15,%r9d
	movl	$1012,%eax
	movl	$1000,%ecx
	movl	%eax,%edx
	call	RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
# PeepHole Optimization,var2a
.Ll55:
# [152] outtextxy(1000,1028,inttostr(aaaa),15);
	movl	%r13d,%edx
	leaq	-8(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	$15,%r9d
	movl	$1028,%eax
	movl	$1000,%ecx
	movl	%eax,%edx
	call	RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
.Lj120:
.Ll56:
# [155] sleep(1)
	movl	$1,%ecx
	call	CLASSES$_$TTHREAD_$__$$_SLEEP$LONGWORD
.Ll57:
# [156] until terminated;
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
# [157] end;
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
.Lt7:
.Ll60:

.section .text.n_synthcontrol$_$allocatechannel$longint$$longint_$$_fin$1,"x"
	.balign 16,0x90
SYNTHCONTROL$_$ALLOCATECHANNEL$LONGINT$$LONGINT_$$_fin$1:
.Lc18:
.seh_proc SYNTHCONTROL$_$ALLOCATECHANNEL$LONGINT$$LONGINT_$$_fin$1
.Ll61:
# [171] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc20:
.Lc21:
	movq	%rcx,%rbp
.Lc22:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
# Var $parentfp located in register rbp
.seh_endprologue
.Ll62:
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc19:
.Lt3:
.Ll63:

.section .text.n_synthcontrol_$$_allocatechannel$longint$$longint,"x"
	.balign 16,0x90
.globl	SYNTHCONTROL_$$_ALLOCATECHANNEL$LONGINT$$LONGINT
SYNTHCONTROL_$$_ALLOCATECHANNEL$LONGINT$$LONGINT:
.Lc23:
# Temps allocated between rbp-48 and rbp+0
.seh_proc SYNTHCONTROL_$$_ALLOCATECHANNEL$LONGINT$$LONGINT
.Ll64:
	pushq	%rbp
.seh_pushreg %rbp
.Lc25:
.Lc26:
	movq	%rsp,%rbp
.Lc27:
	leaq	-96(%rsp),%rsp
.seh_stackalloc 96
# Var mode located in register ebx
# Var $result located in register r13d
# Var i located in register esi
# Var q located in register edi
# Var f located in register r12
	movq	%rbx,-48(%rbp)
	movq	%rdi,-40(%rbp)
	movq	%rsi,-32(%rbp)
	movq	%r12,-24(%rbp)
	movq	%r13,-16(%rbp)
.seh_savereg %rbx, 48
.seh_savereg %rdi, 56
.seh_savereg %rsi, 64
.seh_savereg %r12, 72
.seh_savereg %r13, 80
.seh_endprologue
	movl	%ecx,%ebx
.Ll65:
	movq	$0,-8(%rbp)
.Lj255:
	nop
.Lj251:
.Ll66:
# [172] i:=0;
	movl	$0,%esi
.Ll67:
# [173] while i<maxchannel do if channels[i]=0 then goto p101 else i+=1;
	jmp	.Lj259
	.balign 8,0x90
.Lj258:
# PeepHole Optimization,var2a
	movl	%esi,%eax
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rdx
	cmpq	$0,(%rdx,%rax,8)
	je	.Lj263
	leal	1(%esi),%eax
	movl	%eax,%esi
.Lj259:
	cmpl	$32,%esi
	jl	.Lj258
.Ll68:
# [174] while i<maxchannel do if channels[i]<0 then goto p101 else i+=1;
	jmp	.Lj268
	.balign 8,0x90
.Lj267:
# PeepHole Optimization,var2a
	movl	%esi,%eax
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rdx
	cmpq	$0,(%rdx,%rax,8)
	jl	.Lj263
	leal	1(%esi),%eax
	movl	%eax,%esi
.Lj268:
	cmpl	$32,%esi
	jl	.Lj267
.Lj263:
.Ll69:
# [177] if i<maxchannel then
	cmpl	$32,%esi
	jnl	.Lj276
.Ll70:
# [179] result:=i;
	movl	%esi,%r13d
.Ll71:
# [180] channels[i]:=gettime;
	call	RETRO_$$_GETTIME$$INT64
# PeepHole Optimization,var2a
	movl	%esi,%edx
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rcx
	movq	%rax,(%rcx,%rdx,8)
	jmp	.Lj281
.Lj276:
.Ll72:
# [182] else if (i=maxchannel) and (mode=0) then
	cmpl	$32,%esi
	jne	.Lj283
	testl	%ebx,%ebx
	jne	.Lj283
.Ll73:
# [184] result:=maxchannel;
	movl	$32,%r13d
	jmp	.Lj287
.Lj283:
.Ll74:
# [188] i:=0;
	movl	$0,%esi
.Ll75:
# [189] f:=channels[0];
	movq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%r12
.Ll76:
# [190] q:=0;
	movl	$0,%edi
.Ll77:
# [191] while i<maxchannel do
	jmp	.Lj295
	.balign 8,0x90
.Lj294:
# PeepHole Optimization,var2a
.Ll78:
# [193] if channels[i]<f then
	movl	%esi,%eax
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	cmpq	%r12,%rax
	jnl	.Lj298
# PeepHole Optimization,var2a
.Ll79:
# [195] f:=channels[i];
	movl	%esi,%eax
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rdx
	movq	(%rdx,%rax,8),%r12
.Ll80:
# [196] q:=i;
	movl	%esi,%edi
.Lj298:
.Ll81:
# [198] i+=1;
	leal	1(%esi),%eax
	movl	%eax,%esi
.Lj295:
.Ll82:
	cmpl	$32,%esi
	jl	.Lj294
.Ll83:
# [200] result:=q;
	movl	%edi,%r13d
.Ll84:
# [201] channels[q]:=gettime;
	call	RETRO_$$_GETTIME$$INT64
# PeepHole Optimization,var2a
	movl	%edi,%edx
	leaq	U_$SYNTHCONTROL_$$_CHANNELS(%rip),%rcx
	movq	%rax,(%rcx,%rdx,8)
.Lj287:
.Lj281:
.Ll85:
# [203] box(1000,200,200,100,0); outtextxyz(1000,200,inttostr(result),15,2,2);
	movl	$0,32(%rsp)
	movl	$100,%r9d
	movl	$200,%r8d
	movl	$200,%edx
	movl	$1000,%ecx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	%r13d,%edx
	leaq	-8(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	$15,%r9d
	movl	$200,%edx
	movl	$1000,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj335:
.Ll86:
	nop
.Lj252:
	movq	%rbp,%rcx
	call	SYNTHCONTROL$_$ALLOCATECHANNEL$LONGINT$$LONGINT_$$_fin$1
.Ll87:
# [204] end;
	movl	%r13d,%eax
	movq	-48(%rbp),%rbx
	movq	-40(%rbp),%rdi
	movq	-32(%rbp),%rsi
	movq	-24(%rbp),%r12
	movq	-16(%rbp),%r13
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj251
	.rva	.Lj252
	.rva	SYNTHCONTROL$_$ALLOCATECHANNEL$LONGINT$$LONGINT_$$_fin$1

.section .text.n_synthcontrol_$$_allocatechannel$longint$$longint,"x"
.seh_endproc
.Lc24:
.Lt2:
.Ll88:

.section .text.n_synthcontrol_$$_noteon$longint$longint$longint$longint,"x"
	.balign 16,0x90
.globl	SYNTHCONTROL_$$_NOTEON$LONGINT$LONGINT$LONGINT$LONGINT
SYNTHCONTROL_$$_NOTEON$LONGINT$LONGINT$LONGINT$LONGINT:
.Lc28:
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
	leaq	-48(%rsp),%rsp
.Lc30:
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
.Ll90:
# [214] if (channel>=maxchannel) or (channel<0) then goto p999;
	cmpl	$32,%ebx
	jge	.Lj343
	cmpl	$0,%ebx
	jl	.Lj343
# PeepHole Optimization,var2a
.Ll91:
# [215] f:=fnotes[note] ;
	movl	%esi,%eax
	leaq	U_$FMSYNTH_$$_FNOTES(%rip),%rdx
	movsd	(%rdx,%rax,8),%xmm6
# PeepHole Optimization,var2a
.Ll92:
# [216] voices[channel].setfreq(f);
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rcx
	movapd	%xmm6,%xmm1
	call	FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE
.Ll93:
# [217] for i:=0 to 7 do voices[channel].operators[i].vel:=flogtable[49152+128*velocity];
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj352:
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
	jl	.Lj352
# PeepHole Optimization,var2a
.Ll94:
# [218] {if note<60 then voices[channel].operators[0].mul1:=20000 else} voices[channel].operators[0].mul1:=0;//16384/64;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movq	8(%rax),%rax
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rdx
	movq	%rdx,80(%rax)
# PeepHole Optimization,var2a
.Ll95:
# [219] {if note<60 then voices[channel].operators[2].mul3:=20000 else }voices[channel].operators[2].mul3:=0;//16384/64;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movq	24(%rax),%rdx
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rax
	movq	%rax,96(%rdx)
# PeepHole Optimization,var2a
.Ll96:
# [220] {if note<60 then voices[channel].operators[4].mul5:=20000 else} voices[channel].operators[4].mul5:=0;//16384/64;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movq	40(%rax),%rdx
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rax
	movq	%rax,112(%rdx)
# PeepHole Optimization,var2a
.Ll97:
# [221] voices[channel].operators[1].mul1:=0000/64;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movq	16(%rax),%rdx
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rax
	movq	%rax,80(%rdx)
# PeepHole Optimization,var2a
.Ll98:
# [222] voices[channel].operators[3].mul3:=0000/64;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movq	32(%rax),%rdx
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rax
	movq	%rax,96(%rdx)
# PeepHole Optimization,var2a
.Ll99:
# [223] voices[channel].operators[5].mul5:=0000/64;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movq	48(%rax),%rdx
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rax
	movq	%rax,112(%rdx)
# PeepHole Optimization,var2a
.Ll100:
# [224] {if note<60 then voices[channel].operators[1].adsrbias:=0.9 else } voices[channel].operators[1].adsrbias:=0;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movq	16(%rax),%rdx
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rax
	movq	%rax,256(%rdx)
# PeepHole Optimization,var2a
.Ll101:
# [225] {if note<60 then voices[channel].operators[3].adsrbias:=0.9 else }voices[channel].operators[3].adsrbias:=0;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movq	32(%rax),%rdx
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rax
	movq	%rax,256(%rdx)
# PeepHole Optimization,var2a
.Ll102:
# [226] {if note<60 then voices[channel].operators[5].adsrbias:=0.9 else} voices[channel].operators[5].adsrbias:=0;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movq	48(%rax),%rax
	movq	_$SYNTHCONTROL$_Ld4(%rip),%rdx
	movq	%rdx,256(%rax)
# PeepHole Optimization,var2a
.Ll103:
# [227] voices[channel].operators[1].keysense:=1;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movq	16(%rax),%rdx
	movq	_$SYNTHCONTROL$_Ld5(%rip),%rax
	movq	%rax,272(%rdx)
# PeepHole Optimization,var2a
.Ll104:
# [228] voices[channel].operators[3].keysense:=1;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movq	32(%rax),%rdx
	movq	_$SYNTHCONTROL$_Ld5(%rip),%rax
	movq	%rax,272(%rdx)
# PeepHole Optimization,var2a
.Ll105:
# [229] voices[channel].operators[5].keysense:=1;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movq	48(%rax),%rax
	movq	_$SYNTHCONTROL$_Ld5(%rip),%rdx
	movq	%rdx,272(%rax)
# PeepHole Optimization,var2a
.Ll106:
# [230] voices[channel].outmuls[1]:=0;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movl	_$SYNTHCONTROL$_Ld6(%rip),%edx
	movl	%edx,140(%rax)
# PeepHole Optimization,var2a
.Ll107:
# [231] voices[channel].outmuls[3]:=0;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movl	_$SYNTHCONTROL$_Ld6(%rip),%edx
	movl	%edx,148(%rax)
# PeepHole Optimization,var2a
.Ll108:
# [232] voices[channel].outmuls[5]:=0;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movl	_$SYNTHCONTROL$_Ld6(%rip),%edx
	movl	%edx,156(%rax)
# PeepHole Optimization,var2a
.Ll109:
# [233] voices[channel].outmuls[0]:=1;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
	movl	_$SYNTHCONTROL$_Ld7(%rip),%eax
	movl	%eax,136(%rdx)
# PeepHole Optimization,var2a
.Ll110:
# [234] voices[channel].outmuls[2]:=1;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movl	_$SYNTHCONTROL$_Ld7(%rip),%edx
	movl	%edx,144(%rax)
# PeepHole Optimization,var2a
.Ll111:
# [235] voices[channel].outmuls[4]:=1;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movl	_$SYNTHCONTROL$_Ld7(%rip),%edx
	movl	%edx,152(%rax)
# PeepHole Optimization,var2a
.Ll112:
# [236] voices[channel].outmuls[6]:=0;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movl	_$SYNTHCONTROL$_Ld6(%rip),%edx
	movl	%edx,160(%rax)
# PeepHole Optimization,var2a
.Ll113:
# [237] voices[channel].outmuls[7]:=0;
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
	movl	_$SYNTHCONTROL$_Ld6(%rip),%eax
	movl	%eax,164(%rdx)
.Ll114:
# [239] for i:=0 to 7 do  voices[channel].operators[i].wptr:=waves1[waveidx].wave;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj397:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rcx
	movl	TC_$FMSYNTH_$$_WAVEIDX(%rip),%eax
	imulq	$40,%rax,%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rax
	movq	32(%rax,%rdx),%rax
	movq	%rax,136(%rcx)
	cmpl	$7,%r13d
	jl	.Lj397
.Ll115:
# [240] for i:=0 to 7 do  voices[channel].operators[i].wlend:=waves1[waveidx].lend ;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj402:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rcx
	movl	TC_$FMSYNTH_$$_WAVEIDX(%rip),%eax
	imulq	$40,%rax,%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rax
	cvtsi2sdl	16(%rax,%rdx),%xmm0
	movsd	%xmm0,160(%rcx)
	cmpl	$7,%r13d
	jl	.Lj402
.Ll116:
# [241] for i:=0 to 7 do  voices[channel].operators[i].wlstart:=waves1[waveidx].lstart;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj407:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rcx
	movl	TC_$FMSYNTH_$$_WAVEIDX(%rip),%eax
	imulq	$40,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	cvtsi2sdl	12(%rdx,%rax),%xmm0
	movsd	%xmm0,152(%rcx)
	cmpl	$7,%r13d
	jl	.Lj407
.Ll117:
# [242] for i:=0 to 7 do  voices[channel].operators[i].wlength:=waves1[waveidx].len;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj412:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rcx
	movl	TC_$FMSYNTH_$$_WAVEIDX(%rip),%eax
	imulq	$40,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	cvtsi2sdl	8(%rdx,%rax),%xmm0
	movsd	%xmm0,144(%rcx)
	cmpl	$7,%r13d
	jl	.Lj412
.Ll118:
# [244] for i:=0 to 7 do  voices[channel].operators[i].wavemode:=1;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj417:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rax
	movl	$1,324(%rax)
	cmpl	$7,%r13d
	jl	.Lj417
.Ll119:
# [247] for i:=0 to 7 do  voices[channel].operators[i].ar1:=att;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj422:
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
	jl	.Lj422
.Ll120:
# [248] for i:=0 to 7 do voices[channel].operators[i].adsrstate:=1;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj427:
	addl	$1,%r13d
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
# PeepHole Optimization,var2a
	movl	%r13d,%eax
	movq	8(%rdx,%rax,8),%rax
	movl	$1,320(%rax)
	cmpl	$7,%r13d
	jl	.Lj427
.Ll121:
# [250] for i:=0 to 7 do voices[channel].operators[i].adsrval:=0;
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj432:
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
	cmpl	$7,%r13d
	jl	.Lj432
.Lj343:
.Ll122:
# [252] end;
	nop
	movdqa	32(%rsp),%xmm6
	leaq	48(%rsp),%rsp
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc29:
.Lt5:
.Ll123:

.section .text.n_synthcontrol_$$_noteoff$longint$longint,"x"
	.balign 16,0x90
.globl	SYNTHCONTROL_$$_NOTEOFF$LONGINT$LONGINT
SYNTHCONTROL_$$_NOTEOFF$LONGINT$LONGINT:
.Lc31:
# Var channel located in register ecx
# Var note located in register edx
# Var i located in register r8d
# [262] begin
.Ll124:
# [263] if channel<maxchannel then for i:=0 to 7 do voices[channel].operators[i].adsrstate:=5;
	cmpl	$32,%ecx
	jnl	.Lj438
	movl	$0,%r8d
	subl	$1,%r8d
	.balign 8,0x90
.Lj441:
	addl	$1,%r8d
# PeepHole Optimization,var2a
	movl	%ecx,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%r9
	movq	(%r9,%rax,8),%r9
# PeepHole Optimization,var2a
	movl	%r8d,%eax
	movq	8(%r9,%rax,8),%rax
	movl	$5,320(%rax)
	cmpl	$7,%r8d
	jl	.Lj441
.Lj438:
.Ll125:
# [265] end;
	ret
.Lc32:
.Lt6:
.Ll126:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 8
# [22] var channels:array[0..maxchannel-1] of int64;
	.globl U_$SYNTHCONTROL_$$_CHANNELS
U_$SYNTHCONTROL_$$_CHANNELS:
	.zero 256

.section .bss
	.balign 4
# [23] notes:array[0..127,0..4] of integer;
	.globl U_$SYNTHCONTROL_$$_NOTES
U_$SYNTHCONTROL_$$_NOTES:
	.zero 2560

.section .data.n_VMT_$SYNTHCONTROL_$$_TSYNTHCTRL,"d"
	.balign 8
.globl	VMT_$SYNTHCONTROL_$$_TSYNTHCTRL
VMT_$SYNTHCONTROL_$$_TSYNTHCTRL:
	.quad	88,-88
	.quad	VMT_$CLASSES_$$_TTHREAD
	.quad	.Ld8
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
# [269] 
	.balign 8
.Ld8:
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
# [55] function allocatechannel(mode:integer):integer;

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
	.balign 8
.globl	_$SYNTHCONTROL$_Ld5
_$SYNTHCONTROL$_Ld5:
# value: 0d+1.0000000000000000E+000
	.byte	0,0,0,0,0,0,240,63

.section .rodata.n__$SYNTHCONTROL$_Ld6,"d"
	.balign 4
.globl	_$SYNTHCONTROL$_Ld6
_$SYNTHCONTROL$_Ld6:
# value: 0d+0.000000000E+00
	.byte	0,0,0,0

.section .rodata.n__$SYNTHCONTROL$_Ld7,"d"
	.balign 4
.globl	_$SYNTHCONTROL$_Ld7
_$SYNTHCONTROL$_Ld7:
# value: 0d+1.000000000E+00
	.byte	0,0,128,63
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
.Lc33:
	.long	.Lc35-.Lc34
.Lc34:
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
.Lc35:
	.long	.Lc37-.Lc36
.Lc36:
	.secrel32	.Lc33
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
.Lc37:
	.long	.Lc39-.Lc38
.Lc38:
	.secrel32	.Lc33
	.quad	.Lc6
	.quad	.Lc7-.Lc6
	.balign 4,0
.Lc39:
	.long	.Lc41-.Lc40
.Lc40:
	.secrel32	.Lc33
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
.Lc41:
	.long	.Lc43-.Lc42
.Lc42:
	.secrel32	.Lc33
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
.Lc43:
	.long	.Lc45-.Lc44
.Lc44:
	.secrel32	.Lc33
	.quad	.Lc18
	.quad	.Lc19-.Lc18
	.byte	4
	.long	.Lc20-.Lc18
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc21-.Lc20
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc22-.Lc21
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc45:
	.long	.Lc47-.Lc46
.Lc46:
	.secrel32	.Lc33
	.quad	.Lc23
	.quad	.Lc24-.Lc23
	.byte	4
	.long	.Lc25-.Lc23
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc26-.Lc25
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc27-.Lc26
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc47:
	.long	.Lc49-.Lc48
.Lc48:
	.secrel32	.Lc33
	.quad	.Lc28
	.quad	.Lc29-.Lc28
	.byte	4
	.long	.Lc30-.Lc28
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc49:
	.long	.Lc51-.Lc50
.Lc50:
	.secrel32	.Lc33
	.quad	.Lc31
	.quad	.Lc32-.Lc31
	.balign 4,0
.Lc51:
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
# Symbol MAXCHANNEL
	.uleb128	2
	.ascii	"MAXCHANNEL\000"
	.long	.La1-.Ldebug_info0
	.uleb128	32
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
# Symbol fin$1
	.byte	0
# Procdef $fin$1(<^untyped>) is nested;
	.uleb128	4
	.ascii	"fin$1\000"
	.byte	1
	.byte	65
	.quad	SYNTHCONTROL$_$ALLOCATECHANNEL$LONGINT$$LONGINT_$$_fin$1
	.quad	.Lt3
# Symbol parentfp
	.uleb128	5
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La12-.Ldebug_info0
	.byte	0
# Procdef deallocatechannel(LongInt);
	.uleb128	8
	.ascii	"DEALLOCATECHANNEL\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	SYNTHCONTROL_$$_DEALLOCATECHANNEL$LONGINT
	.quad	.Lt4
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
# Symbol I
	.uleb128	7
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La14-.Ldebug_info0
# Symbol F
	.uleb128	7
	.ascii	"F\000"
	.byte	2
	.byte	144
	.uleb128	23
	.long	.La18-.Ldebug_info0
	.byte	0
# Procdef noteoff(LongInt;LongInt);
	.uleb128	8
	.ascii	"NOTEOFF\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	SYNTHCONTROL_$$_NOTEOFF$LONGINT$LONGINT
	.quad	.Lt6
# Symbol CHANNEL
	.uleb128	5
	.ascii	"CHANNEL\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La14-.Ldebug_info0
# Symbol NOTE
	.uleb128	5
	.ascii	"NOTE\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La14-.Ldebug_info0
# Symbol P999
# Symbol I
	.uleb128	7
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La14-.Ldebug_info0
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition ShortInt
.La1:
	.uleb128	9
	.ascii	"SHORTINT\000"
	.long	.La20-.Ldebug_info0
.La20:
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
	.long	.La21-.Ldebug_info0
.La21:
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
	.long	.La22-.Ldebug_info0
.La22:
	.uleb128	10
	.ascii	"Int64\000"
	.byte	5
	.byte	8
.La17:
	.uleb128	11
	.long	.La16-.Ldebug_info0
# Definition Double
.La18:
	.uleb128	9
	.ascii	"DOUBLE\000"
	.long	.La23-.Ldebug_info0
.La23:
	.uleb128	10
	.ascii	"DOUBLE\000"
	.byte	4
	.byte	8
.La19:
	.uleb128	11
	.long	.La18-.Ldebug_info0
# Definition ^untyped
.La12:
	.uleb128	9
	.ascii	"parentfp_void_pointer\000"
	.long	.La24-.Ldebug_info0
.La24:
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
	.long	.La25-.Ldebug_info0
.La25:
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
	.long	.La28-.Ldebug_info0
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
	.quad	.Lt7
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
	.long	.La29-.Ldebug_info0
# Symbol AA
	.uleb128	7
	.ascii	"AA\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La29-.Ldebug_info0
# Symbol AAA
	.uleb128	7
	.ascii	"AAA\000"
	.byte	2
	.byte	144
	.uleb128	15
	.long	.La29-.Ldebug_info0
# Symbol AAAA
	.uleb128	7
	.ascii	"AAAA\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La29-.Ldebug_info0
# Symbol F
	.uleb128	7
	.ascii	"F\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La29-.Ldebug_info0
# Symbol I
	.uleb128	7
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La14-.Ldebug_info0
# Symbol J
	.uleb128	7
	.ascii	"J\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La14-.Ldebug_info0
# Symbol CH
	.uleb128	7
	.ascii	"CH\000"
	.byte	2
	.byte	144
	.uleb128	14
	.long	.La14-.Ldebug_info0
# Symbol KEY
	.uleb128	7
	.ascii	"KEY\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La29-.Ldebug_info0
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
	.quad	.Lt8
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
	.long	.La31-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	5
	.ascii	"CREATESUSPENDED\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La33-.Ldebug_info0
	.byte	0
	.byte	0
.La4:
	.uleb128	11
	.long	.La3-.Ldebug_info0
# Definition Array[0..31] Of Int64
.La6:
	.uleb128	18
	.uleb128	256
	.long	.La16-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	31
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.byte	0
.La7:
	.uleb128	11
	.long	.La6-.Ldebug_info0
# Definition Array[0..127] Of Array[0..4] Of LongInt
.La8:
	.uleb128	18
	.uleb128	2560
	.long	.La35-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	127
	.uleb128	20
	.long	.La1-.Ldebug_info0
	.byte	0
.La9:
	.uleb128	11
	.long	.La8-.Ldebug_info0
# Definition Array[0..255] Of Byte
.La10:
	.uleb128	18
	.uleb128	256
	.long	.La37-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	255
	.uleb128	1
	.long	.La37-.Ldebug_info0
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
.La26:
	.uleb128	9
	.ascii	"TTHREAD\000"
	.long	.La39-.Ldebug_info0
.La39:
	.uleb128	13
	.long	.La28-.Ldebug_info0
.La28:
	.uleb128	14
	.ascii	"TTHREAD\000"
	.uleb128	88
	.uleb128	15
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La42-.Ldebug_info0
	.uleb128	20
	.ascii	"FHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La43-.Ldebug_info0
	.uleb128	20
	.ascii	"FTERMINATED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	20
	.ascii	"FFREEONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	17
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	20
	.ascii	"FFINISHED\000"
	.byte	2
	.byte	35
	.uleb128	18
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	20
	.ascii	"FSUSPENDED\000"
	.byte	2
	.byte	35
	.uleb128	20
	.byte	3
	.long	.La45-.Ldebug_info0
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
	.long	.La47-.Ldebug_info0
	.uleb128	20
	.ascii	"FFATALEXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La40-.Ldebug_info0
	.uleb128	20
	.ascii	"FEXTERNALTHREAD\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	20
	.ascii	"FSYNCHRONIZEENTRY\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La49-.Ldebug_info0
	.uleb128	20
	.ascii	"FTHREADID\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	2
	.long	.La43-.Ldebug_info0
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
	.long	.La33-.Ldebug_info0
	.uleb128	20
	.ascii	"FINITIALSUSPENDED\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	20
	.ascii	"FREEONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	17
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	20
	.ascii	"HANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La43-.Ldebug_info0
	.uleb128	20
	.ascii	"EXTERNALTHREAD\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	20
	.ascii	"FINISHED\000"
	.byte	2
	.byte	35
	.uleb128	18
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	20
	.ascii	"THREADID\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	2
	.long	.La43-.Ldebug_info0
	.uleb128	20
	.ascii	"ONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La47-.Ldebug_info0
	.uleb128	20
	.ascii	"FATALEXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La40-.Ldebug_info0
# Procdef class GetCurrentThread:TThread; Static;
	.uleb128	21
	.ascii	"GETCURRENTTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La26-.Ldebug_info0
	.byte	0
# Procdef class GetIsSingleProcessor:Boolean; Static;
	.uleb128	21
	.ascii	"GETISSINGLEPROCESSOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La33-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
	.byte	0
# Procdef GetPriority(<TThread>):<enumeration type>;
	.uleb128	21
	.ascii	"GETPRIORITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La51-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La26-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
# Symbol VALUE
	.uleb128	24
	.ascii	"VALUE\000"
	.long	.La51-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
# Symbol VALUE
	.uleb128	24
	.ascii	"VALUE\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef GetSuspended(<TThread>):Boolean;
	.uleb128	21
	.ascii	"GETSUSPENDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La26-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	24
	.ascii	"CREATESUSPENDED\000"
	.long	.La33-.Ldebug_info0
# Symbol STACKSIZE
	.uleb128	24
	.ascii	"STACKSIZE\000"
	.long	.La43-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	24
	.ascii	"AMETHOD\000"
	.long	.La53-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	24
	.ascii	"AMETHOD\000"
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TThread>;<Pointer>;Boolean;const QWord="4194304");
	.uleb128	26
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La26-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La26-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	24
	.ascii	"CREATESUSPENDED\000"
	.long	.La33-.Ldebug_info0
# Symbol STACKSIZE
	.uleb128	24
	.ascii	"STACKSIZE\000"
	.long	.La43-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef class CreateAnonymousThread(TProcedure):TThread; Static;
	.uleb128	26
	.ascii	"CREATEANONYMOUSTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La26-.Ldebug_info0
# Symbol APROC
	.uleb128	24
	.ascii	"APROC\000"
	.long	.La55-.Ldebug_info0
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
	.long	.La57-.Ldebug_info0
# Symbol ATHREADID
	.uleb128	24
	.ascii	"ATHREADID\000"
	.long	.La43-.Ldebug_info0
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
	.long	.La59-.Ldebug_info0
# Symbol ATHREADID
	.uleb128	24
	.ascii	"ATHREADID\000"
	.long	.La43-.Ldebug_info0
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
	.long	.La33-.Ldebug_info0
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
	.long	.La61-.Ldebug_info0
# Symbol ATHREAD
	.uleb128	24
	.ascii	"ATHREAD\000"
	.long	.La26-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	24
	.ascii	"AMETHOD\000"
	.long	.La53-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	24
	.ascii	"AMETHOD\000"
	.long	.La53-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	24
	.ascii	"AMETHOD\000"
	.long	.La53-.Ldebug_info0
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
	.long	.La53-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
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
	.long	.La29-.Ldebug_info0
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
	.long	.La29-.Ldebug_info0
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
	.long	.La63-.Ldebug_info0
	.byte	0
# Procdef class GetTickCount:DWord; Static;
	.uleb128	26
	.ascii	"GETTICKCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef class GetTickCount64:QWord; Static;
	.uleb128	26
	.ascii	"GETTICKCOUNT64\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La43-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadMethod;TNotifyEvent="nil"):TThread; Static;
	.uleb128	26
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La26-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	24
	.ascii	"AMETHOD\000"
	.long	.La53-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	24
	.ascii	"AONTERMINATE\000"
	.long	.La47-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteStatusHandler;TThreadStatusNotifyEvent;TNotifyEvent="nil"):TThread; Static;
	.uleb128	26
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La26-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	24
	.ascii	"AMETHOD\000"
	.long	.La65-.Ldebug_info0
# Symbol AONSTATUS
	.uleb128	24
	.ascii	"AONSTATUS\000"
	.long	.La67-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	24
	.ascii	"AONTERMINATE\000"
	.long	.La47-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteCallBack;Pointer="nil";TNotifyCallBack="nil"):TThread; Static;
	.uleb128	26
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La26-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	24
	.ascii	"AMETHOD\000"
	.long	.La69-.Ldebug_info0
# Symbol ADATA
	.uleb128	24
	.ascii	"ADATA\000"
	.long	.La31-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	24
	.ascii	"AONTERMINATE\000"
	.long	.La71-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteStatusCallBack;TThreadStatusNotifyCallBack;Pointer="nil";TNotifyCallBack="nil"):TThread; Static;
	.uleb128	26
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La26-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	24
	.ascii	"AMETHOD\000"
	.long	.La73-.Ldebug_info0
# Symbol AONSTATUS
	.uleb128	24
	.ascii	"AONSTATUS\000"
	.long	.La75-.Ldebug_info0
# Symbol ADATA
	.uleb128	24
	.ascii	"ADATA\000"
	.long	.La31-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	24
	.ascii	"AONTERMINATE\000"
	.long	.La71-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
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
	.long	.La26-.Ldebug_info0
	.byte	0
	.byte	0
.La27:
	.uleb128	11
	.long	.La26-.Ldebug_info0
# Definition LongWord
.La29:
	.uleb128	9
	.ascii	"LONGWORD\000"
	.long	.La77-.Ldebug_info0
.La77:
	.uleb128	10
	.ascii	"LONGWORD\000"
	.byte	7
	.byte	4
.La30:
	.uleb128	11
	.long	.La29-.Ldebug_info0
# Definition Pointer
.La31:
	.uleb128	9
	.ascii	"POINTER\000"
	.long	.La78-.Ldebug_info0
.La78:
	.uleb128	12
.La32:
	.uleb128	11
	.long	.La31-.Ldebug_info0
# Definition Boolean
.La33:
	.uleb128	9
	.ascii	"BOOLEAN\000"
	.long	.La79-.Ldebug_info0
.La79:
	.uleb128	10
	.ascii	"Boolean\000"
	.byte	2
	.byte	1
.La34:
	.uleb128	11
	.long	.La33-.Ldebug_info0
# Definition Array[0..4] Of LongInt
.La35:
	.uleb128	18
	.uleb128	20
	.long	.La14-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	4
	.uleb128	4
	.long	.La1-.Ldebug_info0
	.byte	0
.La36:
	.uleb128	11
	.long	.La35-.Ldebug_info0
# Definition Byte
.La37:
	.uleb128	9
	.ascii	"BYTE\000"
	.long	.La80-.Ldebug_info0
.La80:
	.uleb128	10
	.ascii	"BYTE\000"
	.byte	7
	.byte	1
.La38:
	.uleb128	11
	.long	.La37-.Ldebug_info0
# Definition TObject
.La40:
	.uleb128	9
	.ascii	"TOBJECT\000"
	.long	.La81-.Ldebug_info0
.La81:
	.uleb128	13
	.long	.La42-.Ldebug_info0
.La42:
	.uleb128	14
	.ascii	"TOBJECT\000"
	.uleb128	8
	.uleb128	29
	.byte	1
	.ascii	"_vptr$TOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La31-.Ldebug_info0
# Procdef constructor Create(<TObject>;<Pointer>);
	.uleb128	26
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
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
	.long	.La40-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
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
	.long	.La40-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La82-.Ldebug_info0
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
	.long	.La40-.Ldebug_info0
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
	.long	.La84-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol EXCEPTOBJECT
	.uleb128	24
	.ascii	"EXCEPTOBJECT\000"
	.long	.La40-.Ldebug_info0
# Symbol EXCEPTADDR
	.uleb128	24
	.ascii	"EXCEPTADDR\000"
	.long	.La31-.Ldebug_info0
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
	.long	.La40-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	24
	.ascii	"MESSAGE\000"
	.long	.La86-.Ldebug_info0
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
	.long	.La40-.Ldebug_info0
	.byte	0
# Procdef class InitInstance(<Class Of TObject>;Pointer):TObject;
	.uleb128	26
	.ascii	"INITINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La88-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	24
	.ascii	"INSTANCE\000"
	.long	.La31-.Ldebug_info0
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
	.long	.La40-.Ldebug_info0
	.byte	0
# Procdef class ClassType(<Class Of TObject>):Class Of TObject;
	.uleb128	26
	.ascii	"CLASSTYPE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La90-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La92-.Ldebug_info0
	.byte	0
# Procdef class ClassInfo(<Class Of TObject>):^untyped;
	.uleb128	26
	.ascii	"CLASSINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La31-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La94-.Ldebug_info0
	.byte	0
# Procdef class ClassName(<Class Of TObject>;<var ShortString>):ShortString;
	.uleb128	26
	.ascii	"CLASSNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La96-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La98-.Ldebug_info0
# Symbol result
	.uleb128	31
	.ascii	"result\000"
	.long	.La96-.Ldebug_info0
	.byte	0
# Procdef class ClassNameIs(<Class Of TObject>;const ShortString):Boolean;
	.uleb128	26
	.ascii	"CLASSNAMEIS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La100-.Ldebug_info0
# Symbol NAME
	.uleb128	24
	.ascii	"NAME\000"
	.long	.La96-.Ldebug_info0
	.byte	0
# Procdef class ClassParent(<Class Of TObject>):Class Of TObject;
	.uleb128	26
	.ascii	"CLASSPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La90-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La102-.Ldebug_info0
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
	.long	.La104-.Ldebug_info0
	.byte	0
# Procdef class InheritsFrom(<Class Of TObject>;TClass):Boolean;
	.uleb128	26
	.ascii	"INHERITSFROM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ACLASS
	.uleb128	24
	.ascii	"ACLASS\000"
	.long	.La90-.Ldebug_info0
	.byte	0
# Procdef class StringMessageTable(<Class Of TObject>):^TStringMessageTable;
	.uleb128	26
	.ascii	"STRINGMESSAGETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La108-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La110-.Ldebug_info0
	.byte	0
# Procdef class MethodAddress(<Class Of TObject>;const ShortString):^untyped;
	.uleb128	26
	.ascii	"METHODADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La31-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol NAME
	.uleb128	24
	.ascii	"NAME\000"
	.long	.La96-.Ldebug_info0
	.byte	0
# Procdef class MethodName(<Class Of TObject>;<var ShortString>;Pointer):ShortString;
	.uleb128	26
	.ascii	"METHODNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La96-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La114-.Ldebug_info0
# Symbol result
	.uleb128	31
	.ascii	"result\000"
	.long	.La96-.Ldebug_info0
# Symbol ADDRESS
	.uleb128	24
	.ascii	"ADDRESS\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef FieldAddress(<TObject>;const ShortString):^untyped;
	.uleb128	26
	.ascii	"FIELDADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La31-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol NAME
	.uleb128	24
	.ascii	"NAME\000"
	.long	.La96-.Ldebug_info0
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
	.long	.La40-.Ldebug_info0
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
	.long	.La40-.Ldebug_info0
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
	.long	.La40-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	24
	.ascii	"MESSAGE\000"
	.long	.La86-.Ldebug_info0
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
	.long	.La40-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	24
	.ascii	"MESSAGE\000"
	.long	.La86-.Ldebug_info0
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
	.long	.La40-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	24
	.ascii	"MESSAGE\000"
	.long	.La86-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	26
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol IID
	.uleb128	24
	.ascii	"IID\000"
	.long	.La116-.Ldebug_info0
# Symbol OBJ
	.uleb128	24
	.ascii	"OBJ\000"
	.long	.La86-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	26
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	24
	.ascii	"IIDSTR\000"
	.long	.La96-.Ldebug_info0
# Symbol OBJ
	.uleb128	24
	.ascii	"OBJ\000"
	.long	.La86-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceByStr(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	26
	.ascii	"GETINTERFACEBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	24
	.ascii	"IIDSTR\000"
	.long	.La96-.Ldebug_info0
# Symbol OBJ
	.uleb128	24
	.ascii	"OBJ\000"
	.long	.La86-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceWeak(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	26
	.ascii	"GETINTERFACEWEAK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol IID
	.uleb128	24
	.ascii	"IID\000"
	.long	.La116-.Ldebug_info0
# Symbol OBJ
	.uleb128	24
	.ascii	"OBJ\000"
	.long	.La86-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntry(<Class Of TObject>;const TGuid):^tinterfaceentry;
	.uleb128	26
	.ascii	"GETINTERFACEENTRY\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La118-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol IID
	.uleb128	24
	.ascii	"IID\000"
	.long	.La116-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntryByStr(<Class Of TObject>;const ShortString):^tinterfaceentry;
	.uleb128	26
	.ascii	"GETINTERFACEENTRYBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La118-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La122-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	24
	.ascii	"IIDSTR\000"
	.long	.La96-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceTable(<Class Of TObject>):^tinterfacetable;
	.uleb128	26
	.ascii	"GETINTERFACETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La124-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La126-.Ldebug_info0
	.byte	0
# Procdef class UnitName(<Class Of TObject>;<var AnsiString>):AnsiString;
	.uleb128	26
	.ascii	"UNITNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La59-.Ldebug_info0
# Symbol self
	.uleb128	23
	.ascii	"self\000"
	.byte	1
	.long	.La128-.Ldebug_info0
# Symbol result
	.uleb128	31
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
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
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol OBJ
	.uleb128	24
	.ascii	"OBJ\000"
	.long	.La40-.Ldebug_info0
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
	.long	.La40-.Ldebug_info0
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
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol result
	.uleb128	31
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
	.byte	0
.La41:
	.uleb128	11
	.long	.La40-.Ldebug_info0
# Definition QWord
.La43:
	.uleb128	9
	.ascii	"QWORD\000"
	.long	.La130-.Ldebug_info0
.La130:
	.uleb128	10
	.ascii	"QWord\000"
	.byte	7
	.byte	8
.La44:
	.uleb128	11
	.long	.La43-.Ldebug_info0
# Definition LongBool
.La45:
	.uleb128	9
	.ascii	"LONGBOOL\000"
	.long	.La131-.Ldebug_info0
.La131:
	.uleb128	10
	.ascii	"LongBool\000"
	.byte	2
	.byte	4
.La46:
	.uleb128	11
	.long	.La45-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject) of object;Register>
.La47:
	.uleb128	9
	.ascii	"TNOTIFYEVENT\000"
	.long	.La132-.Ldebug_info0
.La132:
	.uleb128	32
	.byte	16
	.uleb128	33
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La133-.Ldebug_info0
	.uleb128	33
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La40-.Ldebug_info0
	.byte	0
.La133:
	.uleb128	34
	.ascii	"TNOTIFYEVENT\000"
	.byte	1
	.uleb128	24
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	24
	.ascii	"SENDER\000"
	.long	.La40-.Ldebug_info0
	.byte	0
.La48:
	.uleb128	11
	.long	.La47-.Ldebug_info0
# Definition TThread.PThreadQueueEntry
.La49:
	.uleb128	9
	.ascii	"PTHREADQUEUEENTRY\000"
	.long	.La134-.Ldebug_info0
.La134:
	.uleb128	13
	.long	.La135-.Ldebug_info0
.La50:
	.uleb128	11
	.long	.La49-.Ldebug_info0
# Definition TThreadPriority
.La51:
	.uleb128	9
	.ascii	"TTHREADPRIORITY\000"
	.long	.La137-.Ldebug_info0
.La137:
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
.La52:
	.uleb128	11
	.long	.La51-.Ldebug_info0
# Definition <procedure variable type of procedure of object;Register>
.La53:
	.uleb128	9
	.ascii	"TTHREADMETHOD\000"
	.long	.La138-.Ldebug_info0
.La138:
	.uleb128	32
	.byte	16
	.uleb128	33
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La139-.Ldebug_info0
	.uleb128	33
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La40-.Ldebug_info0
	.byte	0
.La139:
	.uleb128	34
	.ascii	"TTHREADMETHOD\000"
	.byte	1
	.uleb128	24
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.byte	0
.La54:
	.uleb128	11
	.long	.La53-.Ldebug_info0
# Definition <procedure variable type of procedure;Register>
.La55:
	.uleb128	9
	.ascii	"TPROCEDURE\000"
	.long	.La140-.Ldebug_info0
.La140:
	.uleb128	34
	.ascii	"TPROCEDURE\000"
	.byte	1
	.byte	0
.La56:
	.uleb128	11
	.long	.La55-.Ldebug_info0
# Definition UnicodeString
.La57:
	.uleb128	9
	.ascii	"UNICODESTRING\000"
	.long	.La141-.Ldebug_info0
.La141:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La58:
	.uleb128	11
	.long	.La57-.Ldebug_info0
# Definition AnsiString
.La59:
	.uleb128	9
	.ascii	"ANSISTRING\000"
	.long	.La144-.Ldebug_info0
.La144:
	.uleb128	13
	.long	.La145-.Ldebug_info0
.La60:
	.uleb128	11
	.long	.La59-.Ldebug_info0
# Definition TThread.Class Of TThread
.La61:
	.uleb128	13
	.long	.La147-.Ldebug_info0
.La62:
	.uleb128	11
	.long	.La61-.Ldebug_info0
# Definition TThread.TSystemTimes
.La63:
	.uleb128	9
	.ascii	"TSYSTEMTIMES\000"
	.long	.La149-.Ldebug_info0
.La149:
	.uleb128	37
	.ascii	"TSYSTEMTIMES\000"
	.uleb128	32
	.uleb128	33
	.ascii	"IDLETIME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La43-.Ldebug_info0
	.uleb128	33
	.ascii	"USERTIME\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La43-.Ldebug_info0
	.uleb128	33
	.ascii	"KERNELTIME\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La43-.Ldebug_info0
	.uleb128	33
	.ascii	"NICETIME\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La43-.Ldebug_info0
	.byte	0
.La64:
	.uleb128	11
	.long	.La63-.Ldebug_info0
# Definition <procedure variable type of procedure(TThreadReportStatus) of object;Register>
.La65:
	.uleb128	9
	.ascii	"TTHREADEXECUTESTATUSHANDLER\000"
	.long	.La150-.Ldebug_info0
.La150:
	.uleb128	32
	.byte	16
	.uleb128	33
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La151-.Ldebug_info0
	.uleb128	33
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La40-.Ldebug_info0
	.byte	0
.La151:
	.uleb128	34
	.ascii	"TTHREADEXECUTESTATUSHANDLER\000"
	.byte	1
	.uleb128	24
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	24
	.ascii	"REPORTSTATUS\000"
	.long	.La152-.Ldebug_info0
	.byte	0
.La66:
	.uleb128	11
	.long	.La65-.Ldebug_info0
# Definition <procedure variable type of procedure(TThread;const AnsiString) of object;Register>
.La67:
	.uleb128	9
	.ascii	"TTHREADSTATUSNOTIFYEVENT\000"
	.long	.La154-.Ldebug_info0
.La154:
	.uleb128	32
	.byte	16
	.uleb128	33
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La155-.Ldebug_info0
	.uleb128	33
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La40-.Ldebug_info0
	.byte	0
.La155:
	.uleb128	34
	.ascii	"TTHREADSTATUSNOTIFYEVENT\000"
	.byte	1
	.uleb128	24
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	24
	.ascii	"SENDER\000"
	.long	.La26-.Ldebug_info0
	.uleb128	24
	.ascii	"STATUS\000"
	.long	.La59-.Ldebug_info0
	.byte	0
.La68:
	.uleb128	11
	.long	.La67-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer);Register>
.La69:
	.uleb128	9
	.ascii	"TTHREADEXECUTECALLBACK\000"
	.long	.La156-.Ldebug_info0
.La156:
	.uleb128	34
	.ascii	"TTHREADEXECUTECALLBACK\000"
	.byte	1
	.uleb128	24
	.ascii	"ADATA\000"
	.long	.La31-.Ldebug_info0
	.byte	0
.La70:
	.uleb128	11
	.long	.La69-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;Pointer);Register>
.La71:
	.uleb128	9
	.ascii	"TNOTIFYCALLBACK\000"
	.long	.La157-.Ldebug_info0
.La157:
	.uleb128	34
	.ascii	"TNOTIFYCALLBACK\000"
	.byte	1
	.uleb128	24
	.ascii	"SENDER\000"
	.long	.La40-.Ldebug_info0
	.uleb128	24
	.ascii	"ADATA\000"
	.long	.La31-.Ldebug_info0
	.byte	0
.La72:
	.uleb128	11
	.long	.La71-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer;TThreadReportStatus);Register>
.La73:
	.uleb128	9
	.ascii	"TTHREADEXECUTESTATUSCALLBACK\000"
	.long	.La158-.Ldebug_info0
.La158:
	.uleb128	34
	.ascii	"TTHREADEXECUTESTATUSCALLBACK\000"
	.byte	1
	.uleb128	24
	.ascii	"ADATA\000"
	.long	.La31-.Ldebug_info0
	.uleb128	24
	.ascii	"REPORTSTATUS\000"
	.long	.La152-.Ldebug_info0
	.byte	0
.La74:
	.uleb128	11
	.long	.La73-.Ldebug_info0
# Definition <procedure variable type of procedure(TThread;Pointer;const AnsiString);Register>
.La75:
	.uleb128	9
	.ascii	"TTHREADSTATUSNOTIFYCALLBACK\000"
	.long	.La159-.Ldebug_info0
.La159:
	.uleb128	34
	.ascii	"TTHREADSTATUSNOTIFYCALLBACK\000"
	.byte	1
	.uleb128	24
	.ascii	"SENDER\000"
	.long	.La26-.Ldebug_info0
	.uleb128	24
	.ascii	"ADATA\000"
	.long	.La31-.Ldebug_info0
	.uleb128	24
	.ascii	"STATUS\000"
	.long	.La59-.Ldebug_info0
	.byte	0
.La76:
	.uleb128	11
	.long	.La75-.Ldebug_info0
# Definition TObject.Class Of TObject
.La82:
	.uleb128	13
	.long	.La147-.Ldebug_info0
.La83:
	.uleb128	11
	.long	.La82-.Ldebug_info0
# Definition HRESULT
.La84:
	.uleb128	9
	.ascii	"HRESULT\000"
	.long	.La160-.Ldebug_info0
.La160:
	.uleb128	10
	.ascii	"HRESULT\000"
	.byte	5
	.byte	4
.La85:
	.uleb128	11
	.long	.La84-.Ldebug_info0
# Definition <Formal type>
.La86:
	.uleb128	9
	.ascii	"formal\000"
	.long	.La161-.Ldebug_info0
.La161:
	.uleb128	10
	.ascii	"FormalDef\000"
	.byte	7
	.byte	0
.La87:
	.uleb128	11
	.long	.La86-.Ldebug_info0
# Definition TObject.Class Of TObject
.La88:
	.uleb128	13
	.long	.La147-.Ldebug_info0
.La89:
	.uleb128	11
	.long	.La88-.Ldebug_info0
# Definition TClass
.La90:
	.uleb128	9
	.ascii	"TCLASS\000"
	.long	.La162-.Ldebug_info0
.La162:
	.uleb128	13
	.long	.La147-.Ldebug_info0
.La91:
	.uleb128	11
	.long	.La90-.Ldebug_info0
# Definition TObject.Class Of TObject
.La92:
	.uleb128	13
	.long	.La147-.Ldebug_info0
.La93:
	.uleb128	11
	.long	.La92-.Ldebug_info0
# Definition TObject.Class Of TObject
.La94:
	.uleb128	13
	.long	.La147-.Ldebug_info0
.La95:
	.uleb128	11
	.long	.La94-.Ldebug_info0
# Definition ShortString
.La96:
	.uleb128	9
	.ascii	"SHORTSTRING\000"
	.long	.La163-.Ldebug_info0
.La163:
	.uleb128	37
	.ascii	"ShortString\000"
	.uleb128	256
	.uleb128	33
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La37-.Ldebug_info0
	.uleb128	33
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La164-.Ldebug_info0
	.byte	0
.La164:
	.uleb128	38
	.uleb128	256
	.uleb128	1
	.long	.La145-.Ldebug_info0
	.uleb128	39
	.uleb128	1
	.uleb128	255
	.long	.La37-.Ldebug_info0
	.byte	0
.La97:
	.uleb128	11
	.long	.La96-.Ldebug_info0
# Definition TObject.Class Of TObject
.La98:
	.uleb128	13
	.long	.La147-.Ldebug_info0
.La99:
	.uleb128	11
	.long	.La98-.Ldebug_info0
# Definition TObject.Class Of TObject
.La100:
	.uleb128	13
	.long	.La147-.Ldebug_info0
.La101:
	.uleb128	11
	.long	.La100-.Ldebug_info0
# Definition TObject.Class Of TObject
.La102:
	.uleb128	13
	.long	.La147-.Ldebug_info0
.La103:
	.uleb128	11
	.long	.La102-.Ldebug_info0
# Definition TObject.Class Of TObject
.La104:
	.uleb128	13
	.long	.La147-.Ldebug_info0
.La105:
	.uleb128	11
	.long	.La104-.Ldebug_info0
# Definition TObject.Class Of TObject
.La106:
	.uleb128	13
	.long	.La147-.Ldebug_info0
.La107:
	.uleb128	11
	.long	.La106-.Ldebug_info0
# Definition pstringmessagetable
.La108:
	.uleb128	9
	.ascii	"PSTRINGMESSAGETABLE\000"
	.long	.La165-.Ldebug_info0
.La165:
	.uleb128	13
	.long	.La166-.Ldebug_info0
.La109:
	.uleb128	11
	.long	.La108-.Ldebug_info0
# Definition TObject.Class Of TObject
.La110:
	.uleb128	13
	.long	.La147-.Ldebug_info0
.La111:
	.uleb128	11
	.long	.La110-.Ldebug_info0
# Definition TObject.Class Of TObject
.La112:
	.uleb128	13
	.long	.La147-.Ldebug_info0
.La113:
	.uleb128	11
	.long	.La112-.Ldebug_info0
# Definition TObject.Class Of TObject
.La114:
	.uleb128	13
	.long	.La147-.Ldebug_info0
.La115:
	.uleb128	11
	.long	.La114-.Ldebug_info0
# Definition TGuid
.La116:
	.uleb128	9
	.ascii	"TGUID\000"
	.long	.La168-.Ldebug_info0
.La168:
	.uleb128	37
	.ascii	"TGUID\000"
	.uleb128	16
	.uleb128	33
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La29-.Ldebug_info0
	.uleb128	33
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La169-.Ldebug_info0
	.uleb128	33
	.ascii	"DATA3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La169-.Ldebug_info0
	.uleb128	33
	.ascii	"DATA4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La171-.Ldebug_info0
	.uleb128	33
	.ascii	"D1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La29-.Ldebug_info0
	.uleb128	33
	.ascii	"D2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La169-.Ldebug_info0
	.uleb128	33
	.ascii	"D3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La169-.Ldebug_info0
	.uleb128	33
	.ascii	"D4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La173-.Ldebug_info0
	.uleb128	33
	.ascii	"TIME_LOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La29-.Ldebug_info0
	.uleb128	33
	.ascii	"TIME_MID\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La169-.Ldebug_info0
	.uleb128	33
	.ascii	"TIME_HI_AND_VERSION\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La169-.Ldebug_info0
	.uleb128	33
	.ascii	"CLOCK_SEQ_HI_AND_RESERVED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La37-.Ldebug_info0
	.uleb128	33
	.ascii	"CLOCK_SEQ_LOW\000"
	.byte	2
	.byte	35
	.uleb128	9
	.long	.La37-.Ldebug_info0
	.uleb128	33
	.ascii	"NODE\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La175-.Ldebug_info0
	.byte	0
.La117:
	.uleb128	11
	.long	.La116-.Ldebug_info0
# Definition pinterfaceentry
.La118:
	.uleb128	9
	.ascii	"PINTERFACEENTRY\000"
	.long	.La177-.Ldebug_info0
.La177:
	.uleb128	13
	.long	.La178-.Ldebug_info0
.La119:
	.uleb128	11
	.long	.La118-.Ldebug_info0
# Definition TObject.Class Of TObject
.La120:
	.uleb128	13
	.long	.La147-.Ldebug_info0
.La121:
	.uleb128	11
	.long	.La120-.Ldebug_info0
# Definition TObject.Class Of TObject
.La122:
	.uleb128	13
	.long	.La147-.Ldebug_info0
.La123:
	.uleb128	11
	.long	.La122-.Ldebug_info0
# Definition pinterfacetable
.La124:
	.uleb128	9
	.ascii	"PINTERFACETABLE\000"
	.long	.La180-.Ldebug_info0
.La180:
	.uleb128	13
	.long	.La181-.Ldebug_info0
.La125:
	.uleb128	11
	.long	.La124-.Ldebug_info0
# Definition TObject.Class Of TObject
.La126:
	.uleb128	13
	.long	.La147-.Ldebug_info0
.La127:
	.uleb128	11
	.long	.La126-.Ldebug_info0
# Definition TObject.Class Of TObject
.La128:
	.uleb128	13
	.long	.La147-.Ldebug_info0
.La129:
	.uleb128	11
	.long	.La128-.Ldebug_info0
# Definition TThread.TThreadQueueEntry
.La135:
	.uleb128	9
	.ascii	"TTHREADQUEUEENTRY\000"
	.long	.La183-.Ldebug_info0
.La183:
	.uleb128	37
	.ascii	"TTHREADQUEUEENTRY\000"
	.uleb128	48
	.uleb128	33
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La53-.Ldebug_info0
	.uleb128	33
	.ascii	"THREAD\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La26-.Ldebug_info0
	.uleb128	33
	.ascii	"EXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La184-.Ldebug_info0
	.uleb128	33
	.ascii	"SYNCEVENT\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La187-.Ldebug_info0
	.uleb128	33
	.ascii	"NEXT\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La49-.Ldebug_info0
	.byte	0
.La136:
	.uleb128	11
	.long	.La135-.Ldebug_info0
# Definition WideChar
.La142:
	.uleb128	9
	.ascii	"WIDECHAR\000"
	.long	.La189-.Ldebug_info0
.La189:
	.uleb128	10
	.ascii	"WideChar\000"
	.byte	8
	.byte	2
.La143:
	.uleb128	11
	.long	.La142-.Ldebug_info0
# Definition Char
.La145:
	.uleb128	9
	.ascii	"CHAR\000"
	.long	.La190-.Ldebug_info0
.La190:
	.uleb128	10
	.ascii	"Char\000"
	.byte	8
	.byte	1
.La146:
	.uleb128	11
	.long	.La145-.Ldebug_info0
# Definition <record type>
.La147:
	.uleb128	9
	.ascii	"__vtbl_ptr_type\000"
	.long	.La191-.Ldebug_info0
.La191:
	.uleb128	40
	.uleb128	40
	.byte	0
.La148:
	.uleb128	11
	.long	.La147-.Ldebug_info0
# Definition <procedure variable type of procedure(const AnsiString) of object;Register>
.La152:
	.uleb128	9
	.ascii	"TTHREADREPORTSTATUS\000"
	.long	.La192-.Ldebug_info0
.La192:
	.uleb128	32
	.byte	16
	.uleb128	33
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La193-.Ldebug_info0
	.uleb128	33
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La40-.Ldebug_info0
	.byte	0
.La193:
	.uleb128	34
	.ascii	"TTHREADREPORTSTATUS\000"
	.byte	1
	.uleb128	24
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	24
	.ascii	"STATUS\000"
	.long	.La59-.Ldebug_info0
	.byte	0
.La153:
	.uleb128	11
	.long	.La152-.Ldebug_info0
# Definition TStringMessageTable
.La166:
	.uleb128	9
	.ascii	"TSTRINGMESSAGETABLE\000"
	.long	.La194-.Ldebug_info0
.La194:
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
	.long	.La195-.Ldebug_info0
	.byte	0
.La167:
	.uleb128	11
	.long	.La166-.Ldebug_info0
# Definition Word
.La169:
	.uleb128	9
	.ascii	"WORD\000"
	.long	.La197-.Ldebug_info0
.La197:
	.uleb128	10
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La170:
	.uleb128	11
	.long	.La169-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La171:
	.uleb128	18
	.uleb128	8
	.long	.La37-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La1-.Ldebug_info0
	.byte	0
.La172:
	.uleb128	11
	.long	.La171-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La173:
	.uleb128	18
	.uleb128	8
	.long	.La37-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La1-.Ldebug_info0
	.byte	0
.La174:
	.uleb128	11
	.long	.La173-.Ldebug_info0
# Definition TGuid.Array[0..5] Of Byte
.La175:
	.uleb128	18
	.uleb128	6
	.long	.La37-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	5
	.uleb128	1
	.long	.La1-.Ldebug_info0
	.byte	0
.La176:
	.uleb128	11
	.long	.La175-.Ldebug_info0
# Definition tinterfaceentry
.La178:
	.uleb128	9
	.ascii	"TINTERFACEENTRY\000"
	.long	.La198-.Ldebug_info0
.La198:
	.uleb128	37
	.ascii	"TINTERFACEENTRY\000"
	.uleb128	40
	.uleb128	33
	.ascii	"IID\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La199-.Ldebug_info0
	.uleb128	33
	.ascii	"VTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La31-.Ldebug_info0
	.uleb128	33
	.ascii	"IOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La43-.Ldebug_info0
	.uleb128	33
	.ascii	"IIDSTR\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La201-.Ldebug_info0
	.uleb128	33
	.ascii	"ITYPE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La203-.Ldebug_info0
	.uleb128	33
	.ascii	"__PAD_DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La16-.Ldebug_info0
	.byte	0
.La179:
	.uleb128	11
	.long	.La178-.Ldebug_info0
# Definition tinterfacetable
.La181:
	.uleb128	9
	.ascii	"TINTERFACETABLE\000"
	.long	.La205-.Ldebug_info0
.La205:
	.uleb128	37
	.ascii	"TINTERFACETABLE\000"
	.uleb128	48
	.uleb128	33
	.ascii	"ENTRYCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La43-.Ldebug_info0
	.uleb128	33
	.ascii	"ENTRIES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La206-.Ldebug_info0
	.byte	0
.La182:
	.uleb128	11
	.long	.La181-.Ldebug_info0
# Definition Exception
.La184:
	.uleb128	9
	.ascii	"EXCEPTION\000"
	.long	.La208-.Ldebug_info0
.La208:
	.uleb128	13
	.long	.La186-.Ldebug_info0
.La186:
	.uleb128	14
	.ascii	"EXCEPTION\000"
	.uleb128	24
	.uleb128	15
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La42-.Ldebug_info0
	.uleb128	20
	.ascii	"FMESSAGE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La59-.Ldebug_info0
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
	.long	.La59-.Ldebug_info0
# Procdef constructor Create(<Exception>;<Pointer>;const AnsiString);
	.uleb128	26
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La184-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La184-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol MSG
	.uleb128	24
	.ascii	"MSG\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef constructor CreateFmt(<Exception>;<Pointer>;const AnsiString;const Array Of Const;<const Int64>);
	.uleb128	26
	.ascii	"CREATEFMT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La184-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La184-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol MSG
	.uleb128	24
	.ascii	"MSG\000"
	.long	.La59-.Ldebug_info0
# Symbol ARGS
	.uleb128	24
	.ascii	"ARGS\000"
	.long	.La209-.Ldebug_info0
# Symbol highARGS
	.uleb128	24
	.ascii	"highARGS\000"
	.long	.La16-.Ldebug_info0
# Definition Array Of Const
.La209:
	.uleb128	41
	.long	.La211-.Ldebug_info0
	.uleb128	42
	.sleb128	0
	.uleb128	16
	.long	.La16-.Ldebug_info0
	.byte	0
.La210:
	.uleb128	11
	.long	.La209-.Ldebug_info0
	.byte	0
# Procdef constructor CreateRes(<Exception>;<Pointer>;PAnsiString);
	.uleb128	26
	.ascii	"CREATERES\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La184-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La184-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	24
	.ascii	"RESSTRING\000"
	.long	.La213-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResFmt(<Exception>;<Pointer>;PAnsiString;const Array Of Const;<const Int64>);
	.uleb128	26
	.ascii	"CREATERESFMT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La184-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La184-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	24
	.ascii	"RESSTRING\000"
	.long	.La213-.Ldebug_info0
# Symbol ARGS
	.uleb128	24
	.ascii	"ARGS\000"
	.long	.La215-.Ldebug_info0
# Symbol highARGS
	.uleb128	24
	.ascii	"highARGS\000"
	.long	.La16-.Ldebug_info0
# Definition Array Of Const
.La215:
	.uleb128	41
	.long	.La211-.Ldebug_info0
	.uleb128	42
	.sleb128	0
	.uleb128	16
	.long	.La16-.Ldebug_info0
	.byte	0
.La216:
	.uleb128	11
	.long	.La215-.Ldebug_info0
	.byte	0
# Procdef constructor CreateHelp(<Exception>;<Pointer>;const AnsiString;LongInt);
	.uleb128	26
	.ascii	"CREATEHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La184-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La184-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol MSG
	.uleb128	24
	.ascii	"MSG\000"
	.long	.La59-.Ldebug_info0
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
	.long	.La184-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La184-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol MSG
	.uleb128	24
	.ascii	"MSG\000"
	.long	.La59-.Ldebug_info0
# Symbol ARGS
	.uleb128	24
	.ascii	"ARGS\000"
	.long	.La217-.Ldebug_info0
# Symbol highARGS
	.uleb128	24
	.ascii	"highARGS\000"
	.long	.La16-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	24
	.ascii	"AHELPCONTEXT\000"
	.long	.La14-.Ldebug_info0
# Definition Array Of Const
.La217:
	.uleb128	41
	.long	.La211-.Ldebug_info0
	.uleb128	42
	.sleb128	0
	.uleb128	16
	.long	.La16-.Ldebug_info0
	.byte	0
.La218:
	.uleb128	11
	.long	.La217-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResHelp(<Exception>;<Pointer>;PAnsiString;LongInt);
	.uleb128	26
	.ascii	"CREATERESHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La184-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La184-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	24
	.ascii	"RESSTRING\000"
	.long	.La213-.Ldebug_info0
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
	.long	.La184-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La184-.Ldebug_info0
# Symbol vmt
	.uleb128	24
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	24
	.ascii	"RESSTRING\000"
	.long	.La213-.Ldebug_info0
# Symbol ARGS
	.uleb128	24
	.ascii	"ARGS\000"
	.long	.La219-.Ldebug_info0
# Symbol highARGS
	.uleb128	24
	.ascii	"highARGS\000"
	.long	.La16-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	24
	.ascii	"AHELPCONTEXT\000"
	.long	.La14-.Ldebug_info0
# Definition Array Of Const
.La219:
	.uleb128	41
	.long	.La211-.Ldebug_info0
	.uleb128	42
	.sleb128	0
	.uleb128	16
	.long	.La16-.Ldebug_info0
	.byte	0
.La220:
	.uleb128	11
	.long	.La219-.Ldebug_info0
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
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	23
	.ascii	"this\000"
	.byte	1
	.long	.La184-.Ldebug_info0
# Symbol result
	.uleb128	31
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
	.byte	0
.La185:
	.uleb128	11
	.long	.La184-.Ldebug_info0
# Definition PRTLEvent
.La187:
	.uleb128	9
	.ascii	"PRTLEVENT\000"
	.long	.La221-.Ldebug_info0
.La221:
	.uleb128	12
.La188:
	.uleb128	11
	.long	.La187-.Ldebug_info0
# Definition TStringMessageTable.Array[0..0] Of TMsgStrTable
.La195:
	.uleb128	18
	.uleb128	16
	.long	.La222-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	0
	.uleb128	16
	.long	.La1-.Ldebug_info0
	.byte	0
.La196:
	.uleb128	11
	.long	.La195-.Ldebug_info0
# Definition PGuid
.La199:
	.uleb128	9
	.ascii	"PGUID\000"
	.long	.La224-.Ldebug_info0
.La224:
	.uleb128	13
	.long	.La116-.Ldebug_info0
.La200:
	.uleb128	11
	.long	.La199-.Ldebug_info0
# Definition PShortString
.La201:
	.uleb128	9
	.ascii	"PSHORTSTRING\000"
	.long	.La225-.Ldebug_info0
.La225:
	.uleb128	13
	.long	.La96-.Ldebug_info0
.La202:
	.uleb128	11
	.long	.La201-.Ldebug_info0
# Definition tinterfaceentrytype
.La203:
	.uleb128	9
	.ascii	"TINTERFACEENTRYTYPE\000"
	.long	.La226-.Ldebug_info0
.La226:
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
.La204:
	.uleb128	11
	.long	.La203-.Ldebug_info0
# Definition tinterfacetable.Array[0..0] Of tinterfaceentry
.La206:
	.uleb128	18
	.uleb128	40
	.long	.La178-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	0
	.uleb128	40
	.long	.La1-.Ldebug_info0
	.byte	0
.La207:
	.uleb128	11
	.long	.La206-.Ldebug_info0
# Definition TVarRec
.La211:
	.uleb128	9
	.ascii	"TVARREC\000"
	.long	.La227-.Ldebug_info0
.La227:
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
	.long	.La33-.Ldebug_info0
	.uleb128	33
	.ascii	"VCHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La145-.Ldebug_info0
	.uleb128	33
	.ascii	"VWIDECHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La142-.Ldebug_info0
	.uleb128	33
	.ascii	"VEXTENDED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La228-.Ldebug_info0
	.uleb128	33
	.ascii	"VSTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La201-.Ldebug_info0
	.uleb128	33
	.ascii	"VPOINTER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La31-.Ldebug_info0
	.uleb128	33
	.ascii	"VPCHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La230-.Ldebug_info0
	.uleb128	33
	.ascii	"VOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La40-.Ldebug_info0
	.uleb128	33
	.ascii	"VCLASS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La90-.Ldebug_info0
	.uleb128	33
	.ascii	"VPWIDECHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La232-.Ldebug_info0
	.uleb128	33
	.ascii	"VANSISTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La31-.Ldebug_info0
	.uleb128	33
	.ascii	"VCURRENCY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La234-.Ldebug_info0
	.uleb128	33
	.ascii	"VVARIANT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La236-.Ldebug_info0
	.uleb128	33
	.ascii	"VINTERFACE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La31-.Ldebug_info0
	.uleb128	33
	.ascii	"VWIDESTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La31-.Ldebug_info0
	.uleb128	33
	.ascii	"VINT64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La238-.Ldebug_info0
	.uleb128	33
	.ascii	"VUNICODESTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La31-.Ldebug_info0
	.uleb128	33
	.ascii	"VQWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La240-.Ldebug_info0
	.byte	0
.La212:
	.uleb128	11
	.long	.La211-.Ldebug_info0
# Definition PAnsiString
.La213:
	.uleb128	9
	.ascii	"PANSISTRING\000"
	.long	.La242-.Ldebug_info0
.La242:
	.uleb128	13
	.long	.La59-.Ldebug_info0
.La214:
	.uleb128	11
	.long	.La213-.Ldebug_info0
# Definition TMsgStrTable
.La222:
	.uleb128	9
	.ascii	"TMSGSTRTABLE\000"
	.long	.La243-.Ldebug_info0
.La243:
	.uleb128	37
	.ascii	"TMSGSTRTABLE\000"
	.uleb128	16
	.uleb128	33
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La201-.Ldebug_info0
	.uleb128	33
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La31-.Ldebug_info0
	.byte	0
.La223:
	.uleb128	11
	.long	.La222-.Ldebug_info0
# Definition PExtended
.La228:
	.uleb128	9
	.ascii	"PEXTENDED\000"
	.long	.La244-.Ldebug_info0
.La244:
	.uleb128	13
	.long	.La18-.Ldebug_info0
.La229:
	.uleb128	11
	.long	.La228-.Ldebug_info0
# Definition PChar
.La230:
	.uleb128	9
	.ascii	"PCHAR\000"
	.long	.La245-.Ldebug_info0
.La245:
	.uleb128	13
	.long	.La145-.Ldebug_info0
.La231:
	.uleb128	11
	.long	.La230-.Ldebug_info0
# Definition PWideChar
.La232:
	.uleb128	9
	.ascii	"PWIDECHAR\000"
	.long	.La246-.Ldebug_info0
.La246:
	.uleb128	13
	.long	.La142-.Ldebug_info0
.La233:
	.uleb128	11
	.long	.La232-.Ldebug_info0
# Definition PCurrency
.La234:
	.uleb128	9
	.ascii	"PCURRENCY\000"
	.long	.La247-.Ldebug_info0
.La247:
	.uleb128	13
	.long	.La248-.Ldebug_info0
.La235:
	.uleb128	11
	.long	.La234-.Ldebug_info0
# Definition PVariant
.La236:
	.uleb128	9
	.ascii	"PVARIANT\000"
	.long	.La250-.Ldebug_info0
.La250:
	.uleb128	13
	.long	.La251-.Ldebug_info0
.La237:
	.uleb128	11
	.long	.La236-.Ldebug_info0
# Definition PInt64
.La238:
	.uleb128	9
	.ascii	"PINT64\000"
	.long	.La253-.Ldebug_info0
.La253:
	.uleb128	13
	.long	.La16-.Ldebug_info0
.La239:
	.uleb128	11
	.long	.La238-.Ldebug_info0
# Definition PQWord
.La240:
	.uleb128	9
	.ascii	"PQWORD\000"
	.long	.La254-.Ldebug_info0
.La254:
	.uleb128	13
	.long	.La43-.Ldebug_info0
.La241:
	.uleb128	11
	.long	.La240-.Ldebug_info0
# Definition Currency
.La248:
	.uleb128	9
	.ascii	"CURRENCY\000"
	.long	.La255-.Ldebug_info0
.La255:
	.uleb128	10
	.ascii	"Currency\000"
	.byte	5
	.byte	8
.La249:
	.uleb128	11
	.long	.La248-.Ldebug_info0
# Definition Variant
.La251:
	.uleb128	9
	.ascii	"VARIANT\000"
	.long	.La256-.Ldebug_info0
.La256:
	.uleb128	37
	.ascii	"Variant\000"
	.uleb128	24
	.uleb128	33
	.ascii	"VTYPE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La169-.Ldebug_info0
	.uleb128	33
	.ascii	"RES1\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La169-.Ldebug_info0
	.uleb128	33
	.ascii	"RES2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La169-.Ldebug_info0
	.uleb128	33
	.ascii	"RES3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La169-.Ldebug_info0
	.uleb128	33
	.ascii	"VSMALLINT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La257-.Ldebug_info0
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
	.long	.La259-.Ldebug_info0
	.uleb128	33
	.ascii	"VDOUBLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La18-.Ldebug_info0
	.uleb128	33
	.ascii	"VDATE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La261-.Ldebug_info0
	.uleb128	33
	.ascii	"VCURRENCY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La248-.Ldebug_info0
	.uleb128	33
	.ascii	"VOLESTR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La232-.Ldebug_info0
	.uleb128	33
	.ascii	"VDISPATCH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La31-.Ldebug_info0
	.uleb128	33
	.ascii	"VERROR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La84-.Ldebug_info0
	.uleb128	33
	.ascii	"VBOOLEAN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La263-.Ldebug_info0
	.uleb128	33
	.ascii	"VUNKNOWN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La31-.Ldebug_info0
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
	.long	.La37-.Ldebug_info0
	.uleb128	33
	.ascii	"VWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La169-.Ldebug_info0
	.uleb128	33
	.ascii	"VLONGWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La29-.Ldebug_info0
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
	.long	.La43-.Ldebug_info0
	.uleb128	33
	.ascii	"VWORD64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La43-.Ldebug_info0
	.uleb128	33
	.ascii	"VSTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La31-.Ldebug_info0
	.uleb128	33
	.ascii	"VANY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La31-.Ldebug_info0
	.uleb128	33
	.ascii	"VARRAY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La265-.Ldebug_info0
	.uleb128	33
	.ascii	"VPOINTER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La31-.Ldebug_info0
	.uleb128	33
	.ascii	"VRECORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La31-.Ldebug_info0
	.uleb128	33
	.ascii	"PRECINFO\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La31-.Ldebug_info0
	.uleb128	33
	.ascii	"VLONGS\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La267-.Ldebug_info0
	.uleb128	33
	.ascii	"VWORDS\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La269-.Ldebug_info0
	.uleb128	33
	.ascii	"VBYTES\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La271-.Ldebug_info0
	.byte	0
.La252:
	.uleb128	11
	.long	.La251-.Ldebug_info0
# Definition SmallInt
.La257:
	.uleb128	9
	.ascii	"SMALLINT\000"
	.long	.La273-.Ldebug_info0
.La273:
	.uleb128	10
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.La258:
	.uleb128	11
	.long	.La257-.Ldebug_info0
# Definition Single
.La259:
	.uleb128	9
	.ascii	"SINGLE\000"
	.long	.La274-.Ldebug_info0
.La274:
	.uleb128	10
	.ascii	"SINGLE\000"
	.byte	4
	.byte	4
.La260:
	.uleb128	11
	.long	.La259-.Ldebug_info0
# Definition TDateTime
.La261:
	.uleb128	9
	.ascii	"TDATETIME\000"
	.long	.La275-.Ldebug_info0
.La275:
	.uleb128	10
	.ascii	"TDATETIME\000"
	.byte	4
	.byte	8
.La262:
	.uleb128	11
	.long	.La261-.Ldebug_info0
# Definition WordBool
.La263:
	.uleb128	9
	.ascii	"WORDBOOL\000"
	.long	.La276-.Ldebug_info0
.La276:
	.uleb128	10
	.ascii	"WordBool\000"
	.byte	2
	.byte	2
.La264:
	.uleb128	11
	.long	.La263-.Ldebug_info0
# Definition pvararray
.La265:
	.uleb128	9
	.ascii	"PVARARRAY\000"
	.long	.La277-.Ldebug_info0
.La277:
	.uleb128	13
	.long	.La278-.Ldebug_info0
.La266:
	.uleb128	11
	.long	.La265-.Ldebug_info0
# Definition tvardata.Array[0..2] Of LongInt
.La267:
	.uleb128	18
	.uleb128	12
	.long	.La14-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	2
	.uleb128	4
	.long	.La1-.Ldebug_info0
	.byte	0
.La268:
	.uleb128	11
	.long	.La267-.Ldebug_info0
# Definition tvardata.Array[0..6] Of Word
.La269:
	.uleb128	18
	.uleb128	14
	.long	.La169-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	6
	.uleb128	2
	.long	.La1-.Ldebug_info0
	.byte	0
.La270:
	.uleb128	11
	.long	.La269-.Ldebug_info0
# Definition tvardata.Array[0..13] Of Byte
.La271:
	.uleb128	18
	.uleb128	14
	.long	.La37-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	13
	.uleb128	1
	.long	.La1-.Ldebug_info0
	.byte	0
.La272:
	.uleb128	11
	.long	.La271-.Ldebug_info0
# Definition tvararray
.La278:
	.uleb128	9
	.ascii	"TVARARRAY\000"
	.long	.La280-.Ldebug_info0
.La280:
	.uleb128	37
	.ascii	"TVARARRAY\000"
	.uleb128	32
	.uleb128	33
	.ascii	"DIMCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La169-.Ldebug_info0
	.uleb128	33
	.ascii	"FLAGS\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La169-.Ldebug_info0
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
	.long	.La31-.Ldebug_info0
	.uleb128	33
	.ascii	"BOUNDS\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La281-.Ldebug_info0
	.byte	0
.La279:
	.uleb128	11
	.long	.La278-.Ldebug_info0
# Definition tvararrayboundarray
.La281:
	.uleb128	9
	.ascii	"TVARARRAYBOUNDARRAY\000"
	.long	.La283-.Ldebug_info0
.La283:
	.uleb128	43
	.ascii	"TVARARRAYBOUNDARRAY\000"
	.uleb128	8
	.long	.La284-.Ldebug_info0
	.uleb128	19
	.sleb128	0
	.sleb128	0
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.byte	0
.La282:
	.uleb128	11
	.long	.La281-.Ldebug_info0
# Definition tvararraybound
.La284:
	.uleb128	9
	.ascii	"TVARARRAYBOUND\000"
	.long	.La286-.Ldebug_info0
.La286:
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
.La285:
	.uleb128	11
	.long	.La284-.Ldebug_info0
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
# function: SYNTHCONTROL$_$TSYNTHCTRL_$_EXECUTE_$$_fin$0
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
# [104:17]
	.byte	2
	.uleb128	.Ll26-.Ll25
	.byte	5
	.uleb128	17
	.byte	16
# [105:11]
	.byte	2
	.uleb128	.Ll27-.Ll26
	.byte	5
	.uleb128	11
	.byte	13
# [112:14]
	.byte	2
	.uleb128	.Ll28-.Ll27
	.byte	5
	.uleb128	14
	.byte	19
# [113:17]
	.byte	2
	.uleb128	.Ll29-.Ll28
	.byte	5
	.uleb128	17
	.byte	13
# [114:11]
	.byte	2
	.uleb128	.Ll30-.Ll29
	.byte	5
	.uleb128	11
	.byte	13
# [116:3]
	.byte	2
	.uleb128	.Ll31-.Ll30
	.byte	5
	.uleb128	3
	.byte	14
# [119:5]
	.byte	2
	.uleb128	.Ll32-.Ll31
	.byte	5
	.uleb128	5
	.byte	15
# [122:6]
	.byte	2
	.uleb128	.Ll33-.Ll32
	.byte	5
	.uleb128	6
	.byte	15
# [124:10]
	.byte	2
	.uleb128	.Ll34-.Ll33
	.byte	5
	.uleb128	10
	.byte	14
# [125:8]
	.byte	2
	.uleb128	.Ll35-.Ll34
	.byte	5
	.uleb128	8
	.byte	13
# [126:9]
	.byte	2
	.uleb128	.Ll36-.Ll35
	.byte	5
	.uleb128	9
	.byte	13
# [127:3]
	.byte	2
	.uleb128	.Ll37-.Ll36
	.byte	5
	.uleb128	3
	.byte	13
# [128:26]
	.byte	2
	.uleb128	.Ll38-.Ll37
	.byte	5
	.uleb128	26
	.byte	13
# [129:6]
	.byte	2
	.uleb128	.Ll39-.Ll38
	.byte	5
	.uleb128	6
	.byte	13
# [131:9]
	.byte	2
	.uleb128	.Ll40-.Ll39
	.byte	5
	.uleb128	9
	.byte	14
# [132:10]
	.byte	2
	.uleb128	.Ll41-.Ll40
	.byte	5
	.uleb128	10
	.byte	13
# [134:7]
	.byte	2
	.uleb128	.Ll42-.Ll41
	.byte	5
	.uleb128	7
	.byte	14
# [135:16]
	.byte	2
	.uleb128	.Ll43-.Ll42
	.byte	5
	.uleb128	16
	.byte	13
# [136:25]
	.byte	2
	.uleb128	.Ll44-.Ll43
	.byte	5
	.uleb128	25
	.byte	13
# [139:6]
	.byte	2
	.uleb128	.Ll45-.Ll44
	.byte	5
	.uleb128	6
	.byte	15
# [141:5]
	.byte	2
	.uleb128	.Ll46-.Ll45
	.byte	5
	.uleb128	5
	.byte	14
# [142:18]
	.byte	2
	.uleb128	.Ll47-.Ll46
	.byte	5
	.uleb128	18
	.byte	13
# [143:19]
	.byte	2
	.uleb128	.Ll48-.Ll47
	.byte	5
	.uleb128	19
	.byte	13
# [144:5]
	.byte	2
	.uleb128	.Ll49-.Ll48
	.byte	5
	.uleb128	5
	.byte	13
# [145:14]
	.byte	2
	.uleb128	.Ll50-.Ll49
	.byte	5
	.uleb128	14
	.byte	13
# [148:3]
	.byte	2
	.uleb128	.Ll51-.Ll50
	.byte	5
	.uleb128	3
	.byte	15
# [149:3]
	.byte	2
	.uleb128	.Ll52-.Ll51
	.byte	13
# [150:33]
	.byte	2
	.uleb128	.Ll53-.Ll52
	.byte	5
	.uleb128	33
	.byte	13
# [151:35]
	.byte	2
	.uleb128	.Ll54-.Ll53
	.byte	5
	.uleb128	35
	.byte	13
# [152:36]
	.byte	2
	.uleb128	.Ll55-.Ll54
	.byte	5
	.uleb128	36
	.byte	13
# [155:1]
	.byte	2
	.uleb128	.Ll56-.Ll55
	.byte	5
	.uleb128	1
	.byte	15
# [156:7]
	.byte	2
	.uleb128	.Ll57-.Ll56
	.byte	5
	.uleb128	7
	.byte	13
# [85:1]
	.byte	2
	.uleb128	.Ll58-.Ll57
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-71
	.byte	1
# [157:1]
	.byte	2
	.uleb128	.Ll59-.Ll58
	.byte	84
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll60
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SYNTHCONTROL$_$ALLOCATECHANNEL$LONGINT$$LONGINT_$$_fin$1
# [171:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll61
	.byte	5
	.uleb128	1
	.byte	182
# [171:1]
	.byte	2
	.uleb128	.Ll62-.Ll61
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll63
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SYNTHCONTROL_$$_ALLOCATECHANNEL$LONGINT$$LONGINT
# [171:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll64
	.byte	5
	.uleb128	1
	.byte	182
# [171:1]
	.byte	2
	.uleb128	.Ll65-.Ll64
	.byte	1
# [172:1]
	.byte	2
	.uleb128	.Ll66-.Ll65
	.byte	13
# [173:1]
	.byte	2
	.uleb128	.Ll67-.Ll66
	.byte	13
# [174:1]
	.byte	2
	.uleb128	.Ll68-.Ll67
	.byte	13
# [177:5]
	.byte	2
	.uleb128	.Ll69-.Ll68
	.byte	5
	.uleb128	5
	.byte	15
# [179:3]
	.byte	2
	.uleb128	.Ll70-.Ll69
	.byte	5
	.uleb128	3
	.byte	14
# [180:16]
	.byte	2
	.uleb128	.Ll71-.Ll70
	.byte	5
	.uleb128	16
	.byte	13
# [182:9]
	.byte	2
	.uleb128	.Ll72-.Ll71
	.byte	5
	.uleb128	9
	.byte	14
# [184:3]
	.byte	2
	.uleb128	.Ll73-.Ll72
	.byte	5
	.uleb128	3
	.byte	14
# [188:3]
	.byte	2
	.uleb128	.Ll74-.Ll73
	.byte	16
# [189:3]
	.byte	2
	.uleb128	.Ll75-.Ll74
	.byte	13
# [190:3]
	.byte	2
	.uleb128	.Ll76-.Ll75
	.byte	13
# [191:3]
	.byte	2
	.uleb128	.Ll77-.Ll76
	.byte	13
# [193:17]
	.byte	2
	.uleb128	.Ll78-.Ll77
	.byte	5
	.uleb128	17
	.byte	14
# [195:19]
	.byte	2
	.uleb128	.Ll79-.Ll78
	.byte	5
	.uleb128	19
	.byte	14
# [196:7]
	.byte	2
	.uleb128	.Ll80-.Ll79
	.byte	5
	.uleb128	7
	.byte	13
# [198:9]
	.byte	2
	.uleb128	.Ll81-.Ll80
	.byte	5
	.uleb128	9
	.byte	14
# [191:10]
	.byte	2
	.uleb128	.Ll82-.Ll81
	.byte	5
	.uleb128	10
	.byte	3
	.sleb128	-7
	.byte	1
# [200:3]
	.byte	2
	.uleb128	.Ll83-.Ll82
	.byte	5
	.uleb128	3
	.byte	21
# [201:16]
	.byte	2
	.uleb128	.Ll84-.Ll83
	.byte	5
	.uleb128	16
	.byte	13
# [203:5]
	.byte	2
	.uleb128	.Ll85-.Ll84
	.byte	5
	.uleb128	5
	.byte	14
# [171:1]
	.byte	2
	.uleb128	.Ll86-.Ll85
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-32
	.byte	1
# [204:1]
	.byte	2
	.uleb128	.Ll87-.Ll86
	.byte	45
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
# [215:11]
	.byte	2
	.uleb128	.Ll91-.Ll90
	.byte	5
	.uleb128	11
	.byte	13
# [216:8]
	.byte	2
	.uleb128	.Ll92-.Ll91
	.byte	5
	.uleb128	8
	.byte	13
# [217:1]
	.byte	2
	.uleb128	.Ll93-.Ll92
	.byte	5
	.uleb128	1
	.byte	13
# [218:72]
	.byte	2
	.uleb128	.Ll94-.Ll93
	.byte	5
	.uleb128	72
	.byte	13
# [219:72]
	.byte	2
	.uleb128	.Ll95-.Ll94
	.byte	13
# [220:72]
	.byte	2
	.uleb128	.Ll96-.Ll95
	.byte	13
# [221:8]
	.byte	2
	.uleb128	.Ll97-.Ll96
	.byte	5
	.uleb128	8
	.byte	13
# [222:8]
	.byte	2
	.uleb128	.Ll98-.Ll97
	.byte	13
# [223:8]
	.byte	2
	.uleb128	.Ll99-.Ll98
	.byte	13
# [224:75]
	.byte	2
	.uleb128	.Ll100-.Ll99
	.byte	5
	.uleb128	75
	.byte	13
# [225:74]
	.byte	2
	.uleb128	.Ll101-.Ll100
	.byte	5
	.uleb128	74
	.byte	13
# [226:74]
	.byte	2
	.uleb128	.Ll102-.Ll101
	.byte	13
# [227:8]
	.byte	2
	.uleb128	.Ll103-.Ll102
	.byte	5
	.uleb128	8
	.byte	13
# [228:8]
	.byte	2
	.uleb128	.Ll104-.Ll103
	.byte	13
# [229:8]
	.byte	2
	.uleb128	.Ll105-.Ll104
	.byte	13
# [230:8]
	.byte	2
	.uleb128	.Ll106-.Ll105
	.byte	13
# [231:8]
	.byte	2
	.uleb128	.Ll107-.Ll106
	.byte	13
# [232:8]
	.byte	2
	.uleb128	.Ll108-.Ll107
	.byte	13
# [233:8]
	.byte	2
	.uleb128	.Ll109-.Ll108
	.byte	13
# [234:8]
	.byte	2
	.uleb128	.Ll110-.Ll109
	.byte	13
# [235:8]
	.byte	2
	.uleb128	.Ll111-.Ll110
	.byte	13
# [236:8]
	.byte	2
	.uleb128	.Ll112-.Ll111
	.byte	13
# [237:8]
	.byte	2
	.uleb128	.Ll113-.Ll112
	.byte	13
# [239:1]
	.byte	2
	.uleb128	.Ll114-.Ll113
	.byte	5
	.uleb128	1
	.byte	14
# [240:1]
	.byte	2
	.uleb128	.Ll115-.Ll114
	.byte	13
# [241:1]
	.byte	2
	.uleb128	.Ll116-.Ll115
	.byte	13
# [242:1]
	.byte	2
	.uleb128	.Ll117-.Ll116
	.byte	13
# [244:1]
	.byte	2
	.uleb128	.Ll118-.Ll117
	.byte	14
# [247:1]
	.byte	2
	.uleb128	.Ll119-.Ll118
	.byte	15
# [248:1]
	.byte	2
	.uleb128	.Ll120-.Ll119
	.byte	13
# [250:1]
	.byte	2
	.uleb128	.Ll121-.Ll120
	.byte	14
# [252:1]
	.byte	2
	.uleb128	.Ll122-.Ll121
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll123
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: SYNTHCONTROL_$$_NOTEOFF$LONGINT$LONGINT
# [263:11]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll124
	.byte	5
	.uleb128	11
	.byte	3
	.sleb128	262
	.byte	1
# [265:1]
	.byte	2
	.uleb128	.Ll125-.Ll124
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll126
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

