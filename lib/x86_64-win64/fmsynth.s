	.file "fmsynth.pas"
# Begin asmlist al_begin

.section .debug_line
.Ldebug_linesection0:
.Ldebug_line0:

.section .debug_abbrev
.Ldebug_abbrevsection0:
.Ldebug_abbrev0:

.section .text.b_DEBUGSTART_$FMSYNTH,"x"
.globl	DEBUGSTART_$FMSYNTH
DEBUGSTART_$FMSYNTH:
# End asmlist al_begin
# Begin asmlist al_procedures

.section .text.n_fmsynth$_$tfmvoice_$__$$_create$$tfmvoice,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE:
.Lc1:
.seh_proc FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
.Ll1:
# [fmsynth.pas]
# [70] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc3:
.Lc4:
	movq	%rsp,%rbp
.Lc5:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var $vmt located at rbp-8, size=OS_64
# Var $self located at rbp-16, size=OS_64
# Var i located at rbp-24, size=OS_S32
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
.Ll2:
	cmpq	$1,-8(%rbp)
	jne	.Lj6
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-16(%rbp)
.Lj6:
	cmpq	$0,-16(%rbp)
	je	.Lj3
.Lj18:
.Ll3:
# [76] end;
	nop
.Lj17:
.Ll4:
# [71] for i:=0 to 7 do operators[i]:=TFmOperator.create(0,@outputs);
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj22:
	addl	$1,-24(%rbp)
	movq	-16(%rbp),%rax
	leaq	72(%rax),%r9
	leaq	VMT_$FMSYNTH_$$_TFMOPERATOR(%rip),%rcx
	movl	$0,%r8d
	movq	$1,%rdx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
	movq	-16(%rbp),%rdx
	movl	-24(%rbp),%ecx
	movq	%rax,8(%rdx,%rcx,8)
	cmpl	$7,-24(%rbp)
	jl	.Lj22
.Ll5:
# [72] for i:=0 to 7 do operators[i].init;
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj35:
	addl	$1,-24(%rbp)
	movq	-16(%rbp),%rax
	movl	-24(%rbp),%edx
	movq	8(%rax,%rdx,8),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_INIT
	cmpl	$7,-24(%rbp)
	jl	.Lj35
.Ll6:
# [73] for i:=0 to 7 do operators[i].outputtable:=@outputs;
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj40:
	addl	$1,-24(%rbp)
.Ll7:
	movq	-16(%rbp),%rdx
.Ll8:
	movl	-24(%rbp),%eax
	movq	8(%rdx,%rax,8),%rcx
	leaq	72(%rdx),%rax
	movq	%rax,288(%rcx)
	cmpl	$7,-24(%rbp)
	jl	.Lj40
.Ll9:
# [74] outmuls[0]:=1;
	movq	-16(%rbp),%rax
	movl	_$FMSYNTH$_Ld1(%rip),%edx
	movl	%edx,136(%rax)
.Ll10:
# [75] for i:=1 to 7 do outmuls[i]:=0;
	movl	$1,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj49:
	addl	$1,-24(%rbp)
	movq	-16(%rbp),%rax
	movl	-24(%rbp),%edx
	movl	_$FMSYNTH$_Ld2(%rip),%ecx
	movl	%ecx,136(%rax,%rdx,4)
	cmpl	$7,-24(%rbp)
	jl	.Lj49
.Ll11:
	cmpq	$0,-16(%rbp)
	je	.Lj15
	cmpq	$0,-8(%rbp)
	je	.Lj15
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*136(%rax)
	jmp	.Lj15
.Lj14:
	cmpq	$0,-8(%rbp)
	je	.Lj58
	movq	-16(%rbp),%rcx
	movq	$-1,%rdx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
.Lj58:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj63:
	nop
.Lj15:
.Lj3:
	movq	-16(%rbp),%rax
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

.section .text.n_fmsynth$_$tfmvoice_$__$$_create$$tfmvoice,"x"
.seh_endproc
.Lc2:
.Lt10:
.Ll12:

.section .text.n_fmsynth$_$tfmvoice_$__$$_getsample$$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE:
.Lc6:
.seh_proc FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
.Ll13:
# [84] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc8:
.seh_stackalloc 40
# Var $self located in register rbx
# Var $result located in register xmm0
# Var i located in register edx
# Var j located in register eax
# Var output located in register xmm0
.seh_endprologue
	movq	%rcx,%rbx
# Var i located in register esi
.Ll14:
# [85] for i:=0 to 7 do
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj68:
	addl	$1,%esi
# PeepHole Optimization,var2a
.Ll15:
# [86] outputs[i]:=operators[i].getsample;
	movl	%esi,%eax
	movq	8(%rbx,%rax,8),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
# PeepHole Optimization,var2a
	movl	%esi,%eax
	movsd	%xmm0,72(%rbx,%rax,8)
.Ll16:
	cmpl	$7,%esi
	jl	.Lj68
# Var output located in register xmm0
.Ll17:
# [87] output:=0;
	movsd	_$FMSYNTH$_Ld3(%rip),%xmm0
# Var i located in register edx
.Ll18:
# [88] for i:=0 to 7 do output+=outmuls[i]*outputs[i];
	movl	$0,%edx
	subl	$1,%edx
	.balign 8,0x90
.Lj77:
	addl	$1,%edx
# PeepHole Optimization,var2a
	movl	%edx,%eax
	cvtss2sd	136(%rbx,%rax,4),%xmm1
# PeepHole Optimization,var2a
	movl	%edx,%eax
	mulsd	72(%rbx,%rax,8),%xmm1
	addsd	%xmm0,%xmm1
	movapd	%xmm1,%xmm0
	cmpl	$7,%edx
	jl	.Lj77
# Var $result located in register xmm0
# Var output located in register xmm0
.Ll19:
# [90] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc7:
.Lt11:
.Ll20:

.section .text.n_fmsynth_$$_initflogtable,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITFLOGTABLE
FMSYNTH_$$_INITFLOGTABLE:
.Lc9:
# Var i located in register edx
# Var q located in register xmm1
# Var q2 located in register xmm2
# [100] begin
# Var q located in register xmm1
.Ll21:
# [101] q:=1;
	movsd	_$FMSYNTH$_Ld4(%rip),%xmm1
# Var q2 located in register xmm2
.Ll22:
# [103] q2:= 0.99989460157410704627595119007091;
	movsd	_$FMSYNTH$_Ld5(%rip),%xmm2
# Var i located in register edx
.Ll23:
# [104] for i:=65540 downto 0 do
	movl	$65540,%edx
	addl	$1,%edx
	.balign 8,0x90
.Lj90:
	subl	$1,%edx
.Ll24:
# [106] if i>65535 then flogtable[i]:=1
	cmpl	$65535,%edx
	jng	.Lj92
# PeepHole Optimization,var2a
	movl	%edx,%eax
	movq	_$FMSYNTH$_Ld4(%rip),%r8
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%rcx
	movq	%r8,(%rcx,%rax,8)
	jmp	.Lj95
.Lj92:
# PeepHole Optimization,var2a
.Ll25:
# [109] flogtable[i]:=q;
	movl	%edx,%eax
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%rcx
	movsd	%xmm1,(%rcx,%rax,8)
.Ll26:
# [110] q:=q*q2;
	movapd	%xmm1,%xmm0
	mulsd	%xmm2,%xmm0
	movapd	%xmm0,%xmm1
.Lj95:
.Ll27:
	testl	%edx,%edx
	jg	.Lj90
.Ll28:
# [113] end;
	ret
.Lc10:
.Lt2:
.Ll29:

.section .text.n_fmsynth_$$_initfsinetable,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITFSINETABLE
FMSYNTH_$$_INITFSINETABLE:
.Lc11:
.seh_proc FMSYNTH_$$_INITFSINETABLE
.Ll30:
# [120] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc13:
.seh_stackalloc 32
# Var i located in register ebx
.seh_endprologue
# Var i located in register ebx
.Ll31:
# [121] for i:=0 to 65535 do fsinetable[i]:=sin(2*pi*i/65536);
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj104:
	addl	$1,%ebx
	cvtsi2sd	%ebx,%xmm0
	mulsd	_$FMSYNTH$_Ld6(%rip),%xmm0
	mulsd	_$FMSYNTH$_Ld7(%rip),%xmm0
	call	fpc_sin_real
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_FSINETABLE(%rip),%rdx
	movsd	%xmm0,(%rdx,%rax,8)
	cmpl	$65535,%ebx
	jl	.Lj104
.Ll32:
# [122] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc12:
.Lt3:
.Ll33:

.section .text.n_fmsynth_$$_assign$longint$$tsinglestereosample,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE:
.Lc14:
# Var b located in register edx
# Var $result located in register rax
.Ll34:
# [126] begin
	movq	%rcx,%rax
.Ll35:
# [127] result[0]:=b;
	cvtsi2sd	%edx,%xmm0
	movsd	%xmm0,(%rax)
.Ll36:
# [128] result[1]:=b;
	cvtsi2sd	%edx,%xmm0
	movsd	%xmm0,8(%rax)
.Ll37:
# [129] end;
	ret
.Lc15:
.Lt4:
.Ll38:

.section .text.n_fmsynth_$$_star$tsinglestereosample$single$$tsinglestereosample,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE:
.Lc16:
# Temps allocated between rsp+8 and rsp+24
.seh_proc FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
.Ll39:
# [133] begin
	leaq	-24(%rsp),%rsp
.Lc18:
.seh_stackalloc 24
# Var b located in register xmm0
# Var $result located in register rax
.seh_endprologue
# Var a located at rsp+0, size=OS_64
	movq	%rcx,%rax
	movq	%rdx,(%rsp)
	movaps	%xmm2,%xmm0
	movq	(%rsp),%rcx
	movq	(%rcx),%rdx
	movq	%rdx,8(%rsp)
	movq	8(%rcx),%rdx
	movq	%rdx,16(%rsp)
.Ll40:
# [134] result[0]:=a[0]*b;
	cvtss2sd	%xmm0,%xmm1
	mulsd	8(%rsp),%xmm1
	movsd	%xmm1,(%rax)
.Ll41:
# [135] result[1]:=a[1]*b;
	cvtss2sd	%xmm0,%xmm0
	mulsd	16(%rsp),%xmm0
	movsd	%xmm0,8(%rax)
.Ll42:
# [136] end;
	leaq	24(%rsp),%rsp
	ret
.seh_endproc
.Lc17:
.Lt5:
.Ll43:

.section .text.n_fmsynth$_$tfmoperator_$__$$_create$longint$pointer$$tfmoperator,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR:
.Lc19:
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
.Ll44:
# [143] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc21:
.Lc22:
	movq	%rsp,%rbp
.Lc23:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
# Var mode located at rbp-8, size=OS_S32
# Var outs located at rbp-16, size=OS_64
# Var $vmt located at rbp-24, size=OS_64
# Var $self located at rbp-32, size=OS_64
# Var q located at rbp-40, size=OS_F64
# Var i located at rbp-48, size=OS_S32
	movq	%rcx,-32(%rbp)
	movq	%rdx,-24(%rbp)
	movl	%r8d,-8(%rbp)
	movq	%r9,-16(%rbp)
.Ll45:
	cmpq	$1,-24(%rbp)
	jne	.Lj124
	movq	-32(%rbp),%rax
	movq	-32(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-32(%rbp)
.Lj124:
	cmpq	$0,-32(%rbp)
	je	.Lj121
.Lj136:
.Ll46:
# [156] end;
	nop
.Lj135:
.Ll47:
# [144] outputtable:=outs;
	movq	-32(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rdx,288(%rax)
.Ll48:
# [145] if mode=0 then wptr:=@fsinetable;
	cmpl	$0,-8(%rbp)
	jne	.Lj141
	movq	-32(%rbp),%rax
	leaq	U_$FMSYNTH_$$_FSINETABLE(%rip),%rdx
	movq	%rdx,136(%rax)
.Lj141:
.Ll49:
# [153] wlength:=65536;
	movq	-32(%rbp),%rdx
	movq	_$FMSYNTH$_Ld8(%rip),%rax
	movq	%rax,144(%rdx)
.Ll50:
	cmpq	$0,-32(%rbp)
	je	.Lj133
	cmpq	$0,-24(%rbp)
	je	.Lj133
	movq	-32(%rbp),%rcx
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	call	*136(%rax)
	jmp	.Lj133
.Lj132:
	cmpq	$0,-24(%rbp)
	je	.Lj152
	movq	-32(%rbp),%rcx
	movq	$-1,%rdx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
.Lj152:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj157:
	nop
.Lj133:
.Lj121:
	movq	-32(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj135
	.rva	.Lj132
	.rva	.Lj133

.section .text.n_fmsynth$_$tfmoperator_$__$$_create$longint$pointer$$tfmoperator,"x"
.seh_endproc
.Lc20:
.Lt8:
.Ll51:

.section .text.n_fmsynth$_$tfmoperator_$__$$_destroy,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY:
.Lc24:
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
.Ll52:
# [160] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc26:
.seh_stackalloc 40
# Var $vmt located in register rsi
# Var $self located in register rbx
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
.Ll53:
	cmpq	$0,%rsi
	jng	.Lj161
	movq	%rbx,%rcx
	movq	%rbx,%rax
	movq	(%rax),%rax
	call	*144(%rax)
.Lj161:
.Ll54:
# [161] freemem(wptr);
	movq	136(%rbx),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
.Ll55:
# [162] end;
	testq	%rbx,%rbx
	je	.Lj167
	testq	%rsi,%rsi
	je	.Lj167
	movq	%rbx,%rcx
	movq	%rbx,%rax
	movq	(%rax),%rax
	call	*112(%rax)
.Lj167:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc25:
.Lt9:
.Ll56:

.section .text.n_fmsynth$_$tfmoperator_$__$$_init,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_INIT
FMSYNTH$_$TFMOPERATOR_$__$$_INIT:
.Lc27:
# Var $self located in register rax
.Ll57:
# [166] begin
	movq	%rcx,%rax
.Ll58:
# [168] freq:=440*(65536/192000);    //341
	movq	_$FMSYNTH$_Ld9(%rip),%rdx
	movq	%rdx,8(%rax)
.Ll59:
# [169] c3:=1;
	movq	_$FMSYNTH$_Ld4(%rip),%rdx
	movq	%rdx,16(%rax)
.Ll60:
# [170] c4:=1;
	movq	_$FMSYNTH$_Ld4(%rip),%rdx
	movq	%rdx,24(%rax)
.Ll61:
# [171] c5:=1;
	movq	_$FMSYNTH$_Ld4(%rip),%rdx
	movq	%rdx,32(%rax)
.Ll62:
# [172] c6:=1;
	movq	_$FMSYNTH$_Ld4(%rip),%rdx
	movq	%rdx,40(%rax)
.Ll63:
# [173] lfo1:=1;
	movq	_$FMSYNTH$_Ld4(%rip),%rdx
	movq	%rdx,48(%rax)
.Ll64:
# [174] lfo2:=1;
	movq	_$FMSYNTH$_Ld4(%rip),%rdx
	movq	%rdx,56(%rax)
.Ll65:
# [175] lfo3:=1;
	movq	_$FMSYNTH$_Ld4(%rip),%rdx
	movq	%rdx,64(%rax)
.Ll66:
# [176] mul0:=0;
	movq	_$FMSYNTH$_Ld3(%rip),%rdx
	movq	%rdx,72(%rax)
.Ll67:
# [177] mul1:=0;
	movq	_$FMSYNTH$_Ld3(%rip),%rdx
	movq	%rdx,80(%rax)
.Ll68:
# [178] mul2:=0;
	movq	_$FMSYNTH$_Ld3(%rip),%rdx
	movq	%rdx,88(%rax)
.Ll69:
# [179] mul3:=0;
	movq	_$FMSYNTH$_Ld3(%rip),%rdx
	movq	%rdx,96(%rax)
.Ll70:
# [180] mul4:=0;
	movq	_$FMSYNTH$_Ld3(%rip),%rdx
	movq	%rdx,104(%rax)
.Ll71:
# [181] mul5:=0;
	movq	_$FMSYNTH$_Ld3(%rip),%rdx
	movq	%rdx,112(%rax)
.Ll72:
# [182] mul6:=0;
	movq	_$FMSYNTH$_Ld3(%rip),%rdx
	movq	%rdx,120(%rax)
.Ll73:
# [183] mul7:=0;
	movq	_$FMSYNTH$_Ld3(%rip),%rdx
	movq	%rdx,128(%rax)
.Ll74:
# [184] wlength:=65536;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,144(%rax)
.Ll75:
# [185] adsrstate:=0;
	movl	$0,296(%rax)
.Ll76:
# [186] adsrval:=0;
	movq	_$FMSYNTH$_Ld3(%rip),%rdx
	movq	%rdx,168(%rax)
.Ll77:
# [187] ar1:=1/1920;
	movq	_$FMSYNTH$_Ld10(%rip),%rdx
	movq	%rdx,176(%rax)
.Ll78:
# [188] ar2:=-1/192000;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,192(%rax)
.Ll79:
# [189] ar3:=-1/1920000;
	movq	_$FMSYNTH$_Ld12(%rip),%rdx
	movq	%rdx,208(%rax)
.Ll80:
# [190] ar4:=-1/1920000;
	movq	_$FMSYNTH$_Ld12(%rip),%rdx
	movq	%rdx,224(%rax)
.Ll81:
# [191] av1:=1;
	movq	_$FMSYNTH$_Ld4(%rip),%rdx
	movq	%rdx,184(%rax)
.Ll82:
# [192] av2:=0.95;
	movq	_$FMSYNTH$_Ld13(%rip),%rdx
	movq	%rdx,200(%rax)
.Ll83:
# [193] av3:=0.9;
	movq	_$FMSYNTH$_Ld14(%rip),%rdx
	movq	%rdx,216(%rax)
.Ll84:
# [194] av4:=0;
	movq	_$FMSYNTH$_Ld3(%rip),%rdx
	movq	%rdx,232(%rax)
.Ll85:
# [195] adsrbias:=0;
	movq	_$FMSYNTH$_Ld3(%rip),%rdx
	movq	%rdx,240(%rax)
.Ll86:
# [196] vel:=1;
	movq	_$FMSYNTH$_Ld4(%rip),%rdx
	movq	%rdx,248(%rax)
.Ll87:
# [197] keysense:=1;
	movq	_$FMSYNTH$_Ld4(%rip),%rdx
	movq	%rdx,256(%rax)
.Ll88:
# [198] expr:=1;
	movq	_$FMSYNTH$_Ld4(%rip),%rdx
	movq	%rdx,264(%rax)
.Ll89:
# [199] end;
	ret
.Lc28:
.Lt7:
.Ll90:

.section .text.n_fmsynth$_$tfmoperator_$__$$_getsample$$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE:
.Lc29:
# Var $self located in register rcx
# Var $result located in register xmm0
# Var res64a located in register xmm0
# Var modulator located in register xmm1
# Var i located in register eax
# Var j located in register eax
# Var sample located in register xmm0
# Var freq2 located in register xmm0
# [212] begin
.Ll91:
# [217] freq2:=(freq+(c3*lfo1))*c4*lfo2;
	movsd	16(%rcx),%xmm0
	mulsd	48(%rcx),%xmm0
	addsd	8(%rcx),%xmm0
	mulsd	24(%rcx),%xmm0
	mulsd	56(%rcx),%xmm0
# Var freq2 located in register xmm0
.Ll92:
	movq	288(%rcx),%rax
.Ll93:
# [222] modulator:=outputtable[0]*mul0
	movsd	(%rax),%xmm2
	mulsd	72(%rcx),%xmm2
.Ll94:
# [223] +outputtable[1]*mul1
	movsd	8(%rax),%xmm1
	mulsd	80(%rcx),%xmm1
	addsd	%xmm2,%xmm1
.Ll95:
# [224] +outputtable[2]*mul2
	movsd	16(%rax),%xmm2
	mulsd	88(%rcx),%xmm2
	addsd	%xmm1,%xmm2
.Ll96:
# [225] +outputtable[3]*mul3
	movsd	24(%rax),%xmm1
	mulsd	96(%rcx),%xmm1
	addsd	%xmm2,%xmm1
.Ll97:
# [226] +outputtable[4]*mul4
	movsd	32(%rax),%xmm2
	mulsd	104(%rcx),%xmm2
	addsd	%xmm1,%xmm2
.Ll98:
# [227] +outputtable[5]*mul5
	movsd	40(%rax),%xmm1
	mulsd	112(%rcx),%xmm1
	addsd	%xmm2,%xmm1
.Ll99:
# [228] +outputtable[6]*mul6
	movsd	48(%rax),%xmm2
	mulsd	120(%rcx),%xmm2
	addsd	%xmm1,%xmm2
.Ll100:
# [229] +outputtable[7]*mul7;
	movsd	56(%rax),%xmm1
	mulsd	128(%rcx),%xmm1
	addsd	%xmm2,%xmm1
# Var modulator located in register xmm1
.Ll101:
# [231] pa:=pa+freq2;
	movsd	272(%rcx),%xmm2
	addsd	%xmm0,%xmm2
	movsd	%xmm2,272(%rcx)
.Ll102:
# [240] if wavemode=0 then
	cmpl	$0,300(%rcx)
	jne	.Lj246
.Ll103:
# [242] if pa>=wlength then
	movsd	272(%rcx),%xmm0
	comisd	144(%rcx),%xmm0
	jp	.Lj248
	jnae	.Lj248
.Ll104:
# [243] pa:=pa-wlength;
	movsd	272(%rcx),%xmm0
	subsd	144(%rcx),%xmm0
	movsd	%xmm0,272(%rcx)
.Lj248:
.Ll105:
# [245] pa2:=pa+modulator;
	movsd	272(%rcx),%xmm0
	addsd	%xmm1,%xmm0
	movsd	%xmm0,280(%rcx)
.Ll106:
# [246] if pa2>=wlength then
	movsd	280(%rcx),%xmm0
	comisd	144(%rcx),%xmm0
	jp	.Lj255
	jnae	.Lj255
	.balign 8,0x90
.Lj257:
.Ll107:
# [247] repeat pa2:=pa2-wlength until pa2<wlength;
	movsd	280(%rcx),%xmm0
	subsd	144(%rcx),%xmm0
	movsd	%xmm0,280(%rcx)
	movsd	280(%rcx),%xmm0
	comisd	144(%rcx),%xmm0
	jp	.Lj257
	jnb	.Lj257
.Lj255:
.Ll108:
# [248] if pa2<0 then
	movsd	280(%rcx),%xmm0
	comisd	_$FMSYNTH$_Ld3(%rip),%xmm0
	jp	.Lj272
	jnb	.Lj272
	.balign 8,0x90
.Lj266:
.Ll109:
# [249] repeat pa2:=pa2+wlength until pa2>0;
	movsd	280(%rcx),%xmm0
	addsd	144(%rcx),%xmm0
	movsd	%xmm0,280(%rcx)
	movsd	280(%rcx),%xmm0
	comisd	_$FMSYNTH$_Ld3(%rip),%xmm0
	jp	.Lj266
	jna	.Lj266
	jmp	.Lj272
.Lj246:
.Ll110:
# [253] if adsrstate<5 then
	cmpl	$5,296(%rcx)
	jnl	.Lj274
.Ll111:
# [255] if pa>wlend-1 then repeat pa:=pa-wlend+wlstart until pa<=wlend;
	movsd	160(%rcx),%xmm0
	subsd	_$FMSYNTH$_Ld4(%rip),%xmm0
	comisd	272(%rcx),%xmm0
	jp	.Lj284
	jnb	.Lj284
	.balign 8,0x90
.Lj278:
	movsd	272(%rcx),%xmm0
	subsd	160(%rcx),%xmm0
	addsd	152(%rcx),%xmm0
	movsd	%xmm0,272(%rcx)
	movsd	272(%rcx),%xmm0
	comisd	160(%rcx),%xmm0
	jp	.Lj278
	jnbe	.Lj278
	jmp	.Lj284
.Lj274:
.Ll112:
# [259] if pa>=wlength then pa:=wlength;
	movsd	272(%rcx),%xmm0
	comisd	144(%rcx),%xmm0
	jp	.Lj286
	jnae	.Lj286
	movq	144(%rcx),%rax
	movq	%rax,272(%rcx)
.Lj286:
.Lj284:
.Ll113:
# [261] pa2:=pa+modulator;
	movsd	272(%rcx),%xmm0
	addsd	%xmm1,%xmm0
	movsd	%xmm0,280(%rcx)
.Ll114:
# [262] if pa2>wlend-1 then repeat pa:=pa-wlend+wlstart until pa<=wlend-1;
	movsd	160(%rcx),%xmm0
	subsd	_$FMSYNTH$_Ld4(%rip),%xmm0
	comisd	280(%rcx),%xmm0
	jp	.Lj293
	jnb	.Lj293
	.balign 8,0x90
.Lj295:
	movsd	272(%rcx),%xmm0
	subsd	160(%rcx),%xmm0
	addsd	152(%rcx),%xmm0
	movsd	%xmm0,272(%rcx)
	movsd	160(%rcx),%xmm0
	subsd	_$FMSYNTH$_Ld4(%rip),%xmm0
	comisd	272(%rcx),%xmm0
	jp	.Lj295
	jnae	.Lj295
.Lj293:
.Lj272:
.Ll115:
# [264] intpa:=trunc(pa2);
	movsd	280(%rcx),%xmm0
	cvttsd2siq	%xmm0,%rax
	movl	%eax,304(%rcx)
.Ll116:
# [265] sample:=wptr[intpa];
	movq	136(%rcx),%rdx
	movslq	304(%rcx),%rax
# Var sample located in register xmm1
	movsd	(%rdx,%rax,8),%xmm1
.Ll117:
# [272] if adsrstate=5 then  // release
	cmpl	$5,296(%rcx)
	jne	.Lj306
.Ll118:
# [274] adsrval:=adsrval+ar4;
	movsd	168(%rcx),%xmm0
	addsd	224(%rcx),%xmm0
	movsd	%xmm0,168(%rcx)
.Ll119:
# [275] if ar4<0 then begin if adsrval<av4 then begin adsrval:=av4; adsrstate:=0; end; end
	movsd	224(%rcx),%xmm0
	comisd	_$FMSYNTH$_Ld3(%rip),%xmm0
	jp	.Lj310
	jnb	.Lj310
	movsd	168(%rcx),%xmm0
	comisd	232(%rcx),%xmm0
	jp	.Lj327
	jnb	.Lj327
	movq	232(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$0,296(%rcx)
	jmp	.Lj327
.Lj310:
.Ll120:
# [276] else begin if adsrval>av4 then begin adsrval:=av4; adsrstate:=0; end; end;
	movsd	168(%rcx),%xmm0
	comisd	232(%rcx),%xmm0
	jp	.Lj327
	jna	.Lj327
	movq	232(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$0,296(%rcx)
	jmp	.Lj327
.Lj306:
.Ll121:
# [278] else if adsrstate=3 then  // release
	cmpl	$3,296(%rcx)
	jne	.Lj329
.Ll122:
# [280] adsrval:=adsrval+ar3;
	movsd	168(%rcx),%xmm0
	addsd	208(%rcx),%xmm0
	movsd	%xmm0,168(%rcx)
.Ll123:
# [281] if ar3<0 then begin if adsrval<av3 then begin adsrval:=av3; adsrstate:=4; end; end
	movsd	208(%rcx),%xmm0
	comisd	_$FMSYNTH$_Ld3(%rip),%xmm0
	jp	.Lj333
	jnb	.Lj333
	movsd	168(%rcx),%xmm0
	comisd	216(%rcx),%xmm0
	jp	.Lj350
	jnb	.Lj350
	movq	216(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$4,296(%rcx)
	jmp	.Lj350
.Lj333:
.Ll124:
# [282] else begin if adsrval>av3 then begin adsrval:=av3; adsrstate:=4; end; end;
	movsd	168(%rcx),%xmm0
	comisd	216(%rcx),%xmm0
	jp	.Lj350
	jna	.Lj350
	movq	216(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$4,296(%rcx)
	jmp	.Lj350
.Lj329:
.Ll125:
# [284] else if adsrstate=2 then  // release
	cmpl	$2,296(%rcx)
	jne	.Lj352
.Ll126:
# [286] adsrval:=adsrval+ar2;
	movsd	168(%rcx),%xmm0
	addsd	192(%rcx),%xmm0
	movsd	%xmm0,168(%rcx)
.Ll127:
# [287] if ar2<0 then begin if adsrval<av2 then begin adsrval:=av2; adsrstate:=3; end; end
	movsd	192(%rcx),%xmm0
	comisd	_$FMSYNTH$_Ld3(%rip),%xmm0
	jp	.Lj356
	jnb	.Lj356
	movsd	168(%rcx),%xmm0
	comisd	200(%rcx),%xmm0
	jp	.Lj373
	jnb	.Lj373
	movq	200(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$3,296(%rcx)
	jmp	.Lj373
.Lj356:
.Ll128:
# [288] else begin if adsrval>av2 then begin adsrval:=av2; adsrstate:=3; end; end;
	movsd	168(%rcx),%xmm0
	comisd	200(%rcx),%xmm0
	jp	.Lj373
	jna	.Lj373
	movq	200(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$3,296(%rcx)
	jmp	.Lj373
.Lj352:
.Ll129:
# [290] else if adsrstate=1 then  // release
	cmpl	$1,296(%rcx)
	jne	.Lj375
.Ll130:
# [292] adsrval:=adsrval+ar1;
	movsd	168(%rcx),%xmm0
	addsd	176(%rcx),%xmm0
	movsd	%xmm0,168(%rcx)
.Ll131:
# [293] if ar1<0 then begin if adsrval<av1 then begin adsrval:=av1; adsrstate:=2; end; end
	movsd	176(%rcx),%xmm0
	comisd	_$FMSYNTH$_Ld3(%rip),%xmm0
	jp	.Lj379
	jnb	.Lj379
	movsd	168(%rcx),%xmm0
	comisd	184(%rcx),%xmm0
	jp	.Lj388
	jnb	.Lj388
	movq	184(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$2,296(%rcx)
	jmp	.Lj388
.Lj379:
.Ll132:
# [294] else begin if adsrval>av1 then begin  adsrval:=av1; adsrstate:=2; end;  end;
	movsd	168(%rcx),%xmm0
	comisd	184(%rcx),%xmm0
	jp	.Lj390
	jna	.Lj390
	movq	184(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$2,296(%rcx)
.Lj390:
.Lj388:
.Lj375:
.Lj373:
.Lj350:
.Lj327:
.Ll133:
# [297] if adsrstate<>0 then sample:=sample*flogtable[round(65535*((1-adsrbias)*adsrval)+adsrbias)] else sample:=0;
	cmpl	$0,296(%rcx)
	je	.Lj397
.Ll134:
	movsd	240(%rcx),%xmm2
.Ll135:
	movsd	_$FMSYNTH$_Ld4(%rip),%xmm0
	subsd	%xmm2,%xmm0
	mulsd	168(%rcx),%xmm0
	mulsd	_$FMSYNTH$_Ld15(%rip),%xmm0
	addsd	%xmm2,%xmm0
	cvtsd2siq	%xmm0,%rdx
	movapd	%xmm1,%xmm0
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%rax
	mulsd	(%rax,%rdx,8),%xmm0
	movapd	%xmm0,%xmm1
	jmp	.Lj402
.Lj397:
	movsd	_$FMSYNTH$_Ld3(%rip),%xmm1
.Lj402:
.Ll136:
# [299] sample:=sample*c5*lfo3;
	mulsd	32(%rcx),%xmm1
	mulsd	64(%rcx),%xmm1
# Var sample located in register xmm1
.Ll137:
	movsd	256(%rcx),%xmm2
.Ll138:
# [300] sample:=sample*(1-keysense+vel*keysense);
	movsd	_$FMSYNTH$_Ld4(%rip),%xmm3
	subsd	%xmm2,%xmm3
	movsd	248(%rcx),%xmm0
	mulsd	%xmm2,%xmm0
	addsd	%xmm3,%xmm0
	mulsd	%xmm1,%xmm0
# Var sample located in register xmm0
.Ll139:
# [301] sample:=sample*c6*expr;
	mulsd	40(%rcx),%xmm0
	mulsd	264(%rcx),%xmm0
# Var sample located in register xmm0
.Ll140:
# [302] if sample>1 then
	comisd	_$FMSYNTH$_Ld4(%rip),%xmm0
	jp	.Lj414
	jna	.Lj414
.Ll141:
# [303] sample:=1;
	movsd	_$FMSYNTH$_Ld4(%rip),%xmm0
.Lj414:
.Ll142:
# [304] if sample<-1 then
	comisd	_$FMSYNTH$_Ld16(%rip),%xmm0
	jp	.Lj419
	jnb	.Lj419
.Ll143:
# [305] sample:=-1;
	movsd	_$FMSYNTH$_Ld16(%rip),%xmm0
.Lj419:
# Var $result located in register xmm0
# Var sample located in register xmm0
.Ll144:
# [316] end;
	ret
.Lc30:
.Lt6:
.Ll145:

.section .text.n_fmsynth_$$_init$,"x"
	.balign 16,0x90
.globl	INIT$_$FMSYNTH
INIT$_$FMSYNTH:
.globl	FMSYNTH_$$_init$
FMSYNTH_$$_init$:
.Lc31:
.seh_proc FMSYNTH_$$_init$
.Ll146:
# [318] initialization
	leaq	-40(%rsp),%rsp
.Lc33:
.seh_stackalloc 40
.seh_endprologue
.Ll147:
# [320] initflogtable;
	call	FMSYNTH_$$_INITFLOGTABLE
.Ll148:
# [321] initfsinetable;
	call	FMSYNTH_$$_INITFSINETABLE
.Ll149:
# [323] end.
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc32:
.Lt1:
.Ll150:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 8
# [49] var flogtable:array[0..65540] of double;
	.globl U_$FMSYNTH_$$_FLOGTABLE
U_$FMSYNTH_$$_FLOGTABLE:
	.zero 524328

.section .bss
	.balign 8
# [50] foutputtable:array[0..8191] of double;
	.globl U_$FMSYNTH_$$_FOUTPUTTABLE
U_$FMSYNTH_$$_FOUTPUTTABLE:
	.zero 65536

.section .bss
	.balign 8
# [51] fnotes:array[0..127] of double;
	.globl U_$FMSYNTH_$$_FNOTES
U_$FMSYNTH_$$_FNOTES:
	.zero 1024

.section .bss
	.balign 8
# [52] fsinetable:array[0..65535] of double;
	.globl U_$FMSYNTH_$$_FSINETABLE
U_$FMSYNTH_$$_FSINETABLE:
	.zero 524288

.section .bss
	.balign 8
# [54] fmoperator:TFmOperator;
	.globl U_$FMSYNTH_$$_FMOPERATOR
U_$FMSYNTH_$$_FMOPERATOR:
	.zero 8

.section .data.n_VMT_$FMSYNTH_$$_TFMOPERATOR,"d"
	.balign 8
.globl	VMT_$FMSYNTH_$$_TFMOPERATOR
VMT_$FMSYNTH_$$_TFMOPERATOR:
	.quad	312,-312
	.quad	VMT_$SYSTEM_$$_TOBJECT
	.quad	.Ld17
	.quad	0,0,0
	.quad	RTTI_$FMSYNTH_$$_TFMOPERATOR
	.quad	0,0
	.quad	FPC_EMPTYINTF
	.quad	0
	.quad	SYSTEM$_$TOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	SYSTEM$_$TOBJECT_$__$$_DISPATCH$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_DISPATCHSTR$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_EQUALS$TOBJECT$$BOOLEAN
	.quad	SYSTEM$_$TOBJECT_$__$$_GETHASHCODE$$INT64
	.quad	SYSTEM$_$TOBJECT_$__$$_TOSTRING$$ANSISTRING
	.quad	0
# [325] 
	.balign 8
.Ld17:
	.byte	11
	.ascii	"TFmOperator"

.section .data.n_VMT_$FMSYNTH_$$_TFMVOICE,"d"
	.balign 8
.globl	VMT_$FMSYNTH_$$_TFMVOICE
VMT_$FMSYNTH_$$_TFMVOICE:
	.quad	168,-168
	.quad	VMT_$SYSTEM_$$_TOBJECT
	.quad	.Ld18
	.quad	0,0,0
	.quad	RTTI_$FMSYNTH_$$_TFMVOICE
	.quad	0,0
	.quad	FPC_EMPTYINTF
	.quad	0
	.quad	SYSTEM$_$TOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	SYSTEM$_$TOBJECT_$__$$_DISPATCH$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_DISPATCHSTR$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_EQUALS$TOBJECT$$BOOLEAN
	.quad	SYSTEM$_$TOBJECT_$__$$_GETHASHCODE$$INT64
	.quad	SYSTEM$_$TOBJECT_$__$$_TOSTRING$$ANSISTRING
	.quad	0
	.balign 8
.Ld18:
	.byte	8
	.ascii	"TFmVoice"
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .rodata.n__$FMSYNTH$_Ld1,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld1
_$FMSYNTH$_Ld1:
# value: 0d+1.000000000E+00
	.byte	0,0,128,63

.section .rodata.n__$FMSYNTH$_Ld2,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld2
_$FMSYNTH$_Ld2:
# value: 0d+0.000000000E+00
	.byte	0,0,0,0

.section .rodata.n__$FMSYNTH$_Ld3,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld3
_$FMSYNTH$_Ld3:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0

.section .rodata.n__$FMSYNTH$_Ld4,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld4
_$FMSYNTH$_Ld4:
# value: 0d+1.0000000000000000E+000
	.byte	0,0,0,0,0,0,240,63

.section .rodata.n__$FMSYNTH$_Ld5,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld5
_$FMSYNTH$_Ld5:
# value: 0d+9.9989460157410703E-001
	.byte	206,165,166,246,34,255,239,63

.section .rodata.n__$FMSYNTH$_Ld6,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld6
_$FMSYNTH$_Ld6:
# value: 0d+6.2831853071795862E+000
	.byte	24,45,68,84,251,33,25,64

.section .rodata.n__$FMSYNTH$_Ld7,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld7
_$FMSYNTH$_Ld7:
# value: 0d+1.5258789062500000E-005
	.byte	0,0,0,0,0,0,240,62

.section .rodata.n__$FMSYNTH$_Ld8,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld8
_$FMSYNTH$_Ld8:
# value: 0d+6.5536000000000000E+004
	.byte	0,0,0,0,0,0,240,64

.section .rodata.n__$FMSYNTH$_Ld9,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld9
_$FMSYNTH$_Ld9:
# value: 0d+1.5018666666666667E+002
	.byte	198,146,95,44,249,197,98,64

.section .rodata.n__$FMSYNTH$_Ld10,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld10
_$FMSYNTH$_Ld10:
# value: 0d+5.2083333333333333E-004
	.byte	17,17,17,17,17,17,65,63

.section .rodata.n__$FMSYNTH$_Ld11,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld11
_$FMSYNTH$_Ld11:
# value: 0d-5.2083333333333332E-006
	.byte	165,226,236,195,103,216,213,190

.section .rodata.n__$FMSYNTH$_Ld12,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld12
_$FMSYNTH$_Ld12:
# value: 0d-5.2083333333333336E-007
	.byte	30,130,189,156,236,121,161,190

.section .rodata.n__$FMSYNTH$_Ld13,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld13
_$FMSYNTH$_Ld13:
# value: 0d+9.4999999999999996E-001
	.byte	102,102,102,102,102,102,238,63

.section .rodata.n__$FMSYNTH$_Ld14,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld14
_$FMSYNTH$_Ld14:
# value: 0d+9.0000000000000002E-001
	.byte	205,204,204,204,204,204,236,63

.section .rodata.n__$FMSYNTH$_Ld15,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld15
_$FMSYNTH$_Ld15:
# value: 0d+6.5535000000000000E+004
	.byte	0,0,0,0,224,255,239,64

.section .rodata.n__$FMSYNTH$_Ld16,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld16
_$FMSYNTH$_Ld16:
# value: 0d-1.0000000000000000E+000
	.byte	0,0,0,0,0,0,240,191
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .data.n_RTTI_$FMSYNTH_$$_PSINGLESAMPLE,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_PSINGLESAMPLE
RTTI_$FMSYNTH_$$_PSINGLESAMPLE:
	.byte	29,13
	.ascii	"PSinglesample"
	.quad	RTTI_$SYSTEM_$$_DOUBLE

.section .data.n_RTTI_$FMSYNTH_$$_PSINGLESTEREOSAMPLE,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_PSINGLESTEREOSAMPLE
RTTI_$FMSYNTH_$$_PSINGLESTEREOSAMPLE:
	.byte	29,19
	.ascii	"PSingleStereosample"
	.quad	RTTI_$SYSTEM_$$_DOUBLE

.section .data.n_RTTI_$FMSYNTH_$$_TSINGLESTEREOSAMPLE,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_TSINGLESTEREOSAMPLE
RTTI_$FMSYNTH_$$_TSINGLESTEREOSAMPLE:
	.byte	12
	.ascii	"\023TSingleStereoSample"
	.quad	16,2
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_INIT_$FMSYNTH_$$_TFMOPERATOR,"d"
	.balign 8
.globl	INIT_$FMSYNTH_$$_TFMOPERATOR
INIT_$FMSYNTH_$$_TFMOPERATOR:
	.byte	15,11
	.ascii	"TFmOperator"
	.long	8,0

.section .data.n_RTTI_$FMSYNTH_$$_TFMOPERATOR,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_TFMOPERATOR
RTTI_$FMSYNTH_$$_TFMOPERATOR:
	.byte	15,11
	.ascii	"TFmOperator"
	.quad	VMT_$FMSYNTH_$$_TFMOPERATOR
	.quad	RTTI_$SYSTEM_$$_TOBJECT
	.short	0
	.byte	7
	.ascii	"fmsynth"
	.short	0

.section .data.n_INIT_$FMSYNTH_$$_TFMVOICE,"d"
	.balign 8
.globl	INIT_$FMSYNTH_$$_TFMVOICE
INIT_$FMSYNTH_$$_TFMVOICE:
	.byte	15,8
	.ascii	"TFmVoice"
	.long	8,0

.section .data.n_RTTI_$FMSYNTH_$$_TFMVOICE,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_TFMVOICE
RTTI_$FMSYNTH_$$_TFMVOICE:
	.byte	15,8
	.ascii	"TFmVoice"
	.quad	VMT_$FMSYNTH_$$_TFMVOICE
	.quad	RTTI_$SYSTEM_$$_TOBJECT
	.short	0
	.byte	7
	.ascii	"fmsynth"
	.short	0
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc34:
	.long	.Lc36-.Lc35
.Lc35:
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
.Lc36:
	.long	.Lc38-.Lc37
.Lc37:
	.secrel32	.Lc34
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
.Lc38:
	.long	.Lc40-.Lc39
.Lc39:
	.secrel32	.Lc34
	.quad	.Lc6
	.quad	.Lc7-.Lc6
	.byte	4
	.long	.Lc8-.Lc6
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc40:
	.long	.Lc42-.Lc41
.Lc41:
	.secrel32	.Lc34
	.quad	.Lc9
	.quad	.Lc10-.Lc9
	.balign 4,0
.Lc42:
	.long	.Lc44-.Lc43
.Lc43:
	.secrel32	.Lc34
	.quad	.Lc11
	.quad	.Lc12-.Lc11
	.byte	4
	.long	.Lc13-.Lc11
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc44:
	.long	.Lc46-.Lc45
.Lc45:
	.secrel32	.Lc34
	.quad	.Lc14
	.quad	.Lc15-.Lc14
	.balign 4,0
.Lc46:
	.long	.Lc48-.Lc47
.Lc47:
	.secrel32	.Lc34
	.quad	.Lc16
	.quad	.Lc17-.Lc16
	.byte	4
	.long	.Lc18-.Lc16
	.byte	14
	.uleb128	32
	.balign 4,0
.Lc48:
	.long	.Lc50-.Lc49
.Lc49:
	.secrel32	.Lc34
	.quad	.Lc19
	.quad	.Lc20-.Lc19
	.byte	4
	.long	.Lc21-.Lc19
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc22-.Lc21
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc23-.Lc22
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc50:
	.long	.Lc52-.Lc51
.Lc51:
	.secrel32	.Lc34
	.quad	.Lc24
	.quad	.Lc25-.Lc24
	.byte	4
	.long	.Lc26-.Lc24
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc52:
	.long	.Lc54-.Lc53
.Lc53:
	.secrel32	.Lc34
	.quad	.Lc27
	.quad	.Lc28-.Lc27
	.balign 4,0
.Lc54:
	.long	.Lc56-.Lc55
.Lc55:
	.secrel32	.Lc34
	.quad	.Lc29
	.quad	.Lc30-.Lc29
	.balign 4,0
.Lc56:
	.long	.Lc58-.Lc57
.Lc57:
	.secrel32	.Lc34
	.quad	.Lc31
	.quad	.Lc32-.Lc31
	.byte	4
	.long	.Lc33-.Lc31
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc58:
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
	.ascii	"fmsynth.pas\000"
	.ascii	"Free Pascal 3.0.4 2017/12/03\000"
	.ascii	"D:/Programowanie/20180824 retro-fm/\000"
	.byte	9
	.byte	3
	.secrel32	.Ldebug_line0
	.quad	DEBUGSTART_$FMSYNTH
	.quad	DEBUGEND_$FMSYNTH
# Syms - Begin unit FMSYNTH has index 18
# Symbol FMSYNTH
# Symbol SYSTEM
# Symbol OBJPAS
# Symbol CLASSES
# Symbol SYSUTILS
# Symbol PSINGLESAMPLE
# Symbol TSINGLESAMPLE
# Symbol PSINGLESTEREOSAMPLE
# Symbol TSINGLESTEREOSAMPLE
# Symbol TFMOPERATOR
# Symbol TFMVOICE
# Symbol FLOGTABLE
	.uleb128	2
	.ascii	"FLOGTABLE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FLOGTABLE
	.long	.La15-.Ldebug_info0
# Symbol FOUTPUTTABLE
	.uleb128	2
	.ascii	"FOUTPUTTABLE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FOUTPUTTABLE
	.long	.La17-.Ldebug_info0
# Symbol FNOTES
	.uleb128	2
	.ascii	"FNOTES\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FNOTES
	.long	.La19-.Ldebug_info0
# Symbol FSINETABLE
	.uleb128	2
	.ascii	"FSINETABLE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FSINETABLE
	.long	.La21-.Ldebug_info0
# Symbol FMOPERATOR
	.uleb128	2
	.ascii	"FMOPERATOR\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FMOPERATOR
	.long	.La9-.Ldebug_info0
# Syms - End unit FMSYNTH has index 18
# Syms - Begin Staticsymtable
# Symbol RETRO
# Symbol FMSYNTH_$$_init$
# Symbol INITFLOGTABLE
# Symbol INITFSINETABLE
# Symbol assign
# Symbol star
# Syms - End Staticsymtable
# Procdef $FMSYNTH_$$_init$; Register;
	.uleb128	3
	.ascii	"FMSYNTH_$$_init$\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH_$$_init$
	.quad	.Lt1
	.byte	0
# Procdef initflogtable;
	.uleb128	3
	.ascii	"INITFLOGTABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH_$$_INITFLOGTABLE
	.quad	.Lt2
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La23-.Ldebug_info0
# Symbol Q
	.uleb128	4
	.ascii	"Q\000"
	.byte	2
	.byte	144
	.uleb128	18
	.long	.La3-.Ldebug_info0
# Symbol Q2
	.uleb128	4
	.ascii	"Q2\000"
	.byte	2
	.byte	144
	.uleb128	19
	.long	.La3-.Ldebug_info0
	.byte	0
# Procdef initfsinetable;
	.uleb128	3
	.ascii	"INITFSINETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH_$$_INITFSINETABLE
	.quad	.Lt3
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef operator :=(<var TSingleStereoSample>;LongInt):Array[0..1] Of Double;
	.uleb128	5
	.ascii	"assign\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La7-.Ldebug_info0
	.quad	FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
	.quad	.Lt4
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	3
	.byte	146
	.uleb128	0
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol B
	.uleb128	6
	.ascii	"B\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La23-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	3
	.byte	146
	.uleb128	0
	.sleb128	0
	.long	.La7-.Ldebug_info0
	.byte	0
# Procdef operator *(<var TSingleStereoSample>;TSingleStereoSample;Single):Array[0..1] Of Double;
	.uleb128	5
	.ascii	"star\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La7-.Ldebug_info0
	.quad	FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
	.quad	.Lt5
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	3
	.byte	146
	.uleb128	0
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol A
	.uleb128	6
	.ascii	"A\000"
	.byte	2
	.byte	119
	.sleb128	8
	.long	.La7-.Ldebug_info0
# Symbol B
	.uleb128	6
	.ascii	"B\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La25-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	3
	.byte	146
	.uleb128	0
	.sleb128	0
	.long	.La7-.Ldebug_info0
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition LongInt
.La23:
	.uleb128	7
	.ascii	"LONGINT\000"
	.long	.La27-.Ldebug_info0
.La27:
	.uleb128	8
	.ascii	"LONGINT\000"
	.byte	5
	.byte	4
.La24:
	.uleb128	9
	.long	.La23-.Ldebug_info0
# Definition Single
.La25:
	.uleb128	7
	.ascii	"SINGLE\000"
	.long	.La28-.Ldebug_info0
.La28:
	.uleb128	8
	.ascii	"SINGLE\000"
	.byte	4
	.byte	4
.La26:
	.uleb128	9
	.long	.La25-.Ldebug_info0
# Definition Double
.La3:
	.uleb128	7
	.ascii	"DOUBLE\000"
	.long	.La29-.Ldebug_info0
.La29:
	.uleb128	8
	.ascii	"DOUBLE\000"
	.byte	4
	.byte	8
.La4:
	.uleb128	9
	.long	.La3-.Ldebug_info0
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
# Definition PSinglesample
.La1:
	.uleb128	7
	.ascii	"PSINGLESAMPLE\000"
	.long	.La30-.Ldebug_info0
.La30:
	.uleb128	10
	.long	.La3-.Ldebug_info0
.La2:
	.uleb128	9
	.long	.La1-.Ldebug_info0
# Definition PSingleStereosample
.La5:
	.uleb128	7
	.ascii	"PSINGLESTEREOSAMPLE\000"
	.long	.La31-.Ldebug_info0
.La31:
	.uleb128	10
	.long	.La3-.Ldebug_info0
.La6:
	.uleb128	9
	.long	.La5-.Ldebug_info0
# Definition TSingleStereoSample
.La7:
	.uleb128	7
	.ascii	"TSINGLESTEREOSAMPLE\000"
	.long	.La32-.Ldebug_info0
.La32:
	.uleb128	11
	.ascii	"TSINGLESTEREOSAMPLE\000"
	.uleb128	16
	.long	.La3-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	1
	.uleb128	8
	.long	.La33-.Ldebug_info0
	.byte	0
.La8:
	.uleb128	9
	.long	.La7-.Ldebug_info0
# Definition TFmOperator
.La9:
	.uleb128	7
	.ascii	"TFMOPERATOR\000"
	.long	.La35-.Ldebug_info0
.La35:
	.uleb128	10
	.long	.La11-.Ldebug_info0
.La11:
	.uleb128	13
	.ascii	"TFMOPERATOR\000"
	.uleb128	312
	.uleb128	14
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La38-.Ldebug_info0
	.uleb128	15
	.ascii	"FREQ\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"C3\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"C4\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"C5\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"C6\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"LFO1\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"LFO2\000"
	.byte	2
	.byte	35
	.uleb128	56
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"LFO3\000"
	.byte	2
	.byte	35
	.uleb128	64
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"MUL0\000"
	.byte	2
	.byte	35
	.uleb128	72
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"MUL1\000"
	.byte	2
	.byte	35
	.uleb128	80
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"MUL2\000"
	.byte	2
	.byte	35
	.uleb128	88
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"MUL3\000"
	.byte	2
	.byte	35
	.uleb128	96
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"MUL4\000"
	.byte	2
	.byte	35
	.uleb128	104
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"MUL5\000"
	.byte	2
	.byte	35
	.uleb128	112
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"MUL6\000"
	.byte	2
	.byte	35
	.uleb128	120
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"MUL7\000"
	.byte	3
	.byte	35
	.uleb128	128
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"WPTR\000"
	.byte	3
	.byte	35
	.uleb128	136
	.long	.La1-.Ldebug_info0
	.uleb128	15
	.ascii	"WLENGTH\000"
	.byte	3
	.byte	35
	.uleb128	144
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"WLSTART\000"
	.byte	3
	.byte	35
	.uleb128	152
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"WLEND\000"
	.byte	3
	.byte	35
	.uleb128	160
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"ADSRSTATE\000"
	.byte	3
	.byte	35
	.uleb128	296
	.long	.La23-.Ldebug_info0
	.uleb128	15
	.ascii	"ADSRVAL\000"
	.byte	3
	.byte	35
	.uleb128	168
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"AR1\000"
	.byte	3
	.byte	35
	.uleb128	176
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"AV1\000"
	.byte	3
	.byte	35
	.uleb128	184
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"AR2\000"
	.byte	3
	.byte	35
	.uleb128	192
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"AV2\000"
	.byte	3
	.byte	35
	.uleb128	200
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"AR3\000"
	.byte	3
	.byte	35
	.uleb128	208
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"AV3\000"
	.byte	3
	.byte	35
	.uleb128	216
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"AR4\000"
	.byte	3
	.byte	35
	.uleb128	224
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"AV4\000"
	.byte	3
	.byte	35
	.uleb128	232
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"ADSRBIAS\000"
	.byte	3
	.byte	35
	.uleb128	240
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"VEL\000"
	.byte	3
	.byte	35
	.uleb128	248
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"KEYSENSE\000"
	.byte	3
	.byte	35
	.uleb128	256
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"EXPR\000"
	.byte	3
	.byte	35
	.uleb128	264
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"PA\000"
	.byte	3
	.byte	35
	.uleb128	272
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"PA2\000"
	.byte	3
	.byte	35
	.uleb128	280
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"WAVEMODE\000"
	.byte	3
	.byte	35
	.uleb128	300
	.long	.La23-.Ldebug_info0
	.uleb128	15
	.ascii	"INTPA\000"
	.byte	3
	.byte	35
	.uleb128	304
	.long	.La23-.Ldebug_info0
	.uleb128	15
	.ascii	"OUTPUTTABLE\000"
	.byte	3
	.byte	35
	.uleb128	288
	.long	.La1-.Ldebug_info0
# Procdef getsample(<TFmOperator>):Double;
	.uleb128	5
	.ascii	"GETSAMPLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La3-.Ldebug_info0
	.quad	FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
	.quad	.Lt6
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	2
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La3-.Ldebug_info0
# Symbol GETSAMPLE
	.uleb128	4
	.ascii	"GETSAMPLE\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La3-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La3-.Ldebug_info0
# Symbol RES64A
# Symbol MODULATOR
	.uleb128	4
	.ascii	"MODULATOR\000"
	.byte	2
	.byte	144
	.uleb128	18
	.long	.La3-.Ldebug_info0
# Symbol I
# Symbol J
# Symbol SAMPLE
	.uleb128	4
	.ascii	"SAMPLE\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La3-.Ldebug_info0
# Symbol FREQ2
	.uleb128	4
	.ascii	"FREQ2\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La3-.Ldebug_info0
	.byte	0
# Procdef init(<TFmOperator>);
	.uleb128	3
	.ascii	"INIT\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH$_$TFMOPERATOR_$__$$_INIT
	.quad	.Lt7
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	0
	.byte	1
	.long	.La9-.Ldebug_info0
	.byte	0
# Procdef constructor create(<TFmOperator>;<Pointer>;LongInt;Pointer);
	.uleb128	5
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La9-.Ldebug_info0
	.quad	FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
	.quad	.Lt8
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol vmt
	.uleb128	6
	.ascii	"vmt\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La39-.Ldebug_info0
# Symbol MODE
	.uleb128	6
	.ascii	"MODE\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La23-.Ldebug_info0
# Symbol OUTS
	.uleb128	6
	.ascii	"OUTS\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La39-.Ldebug_info0
# Symbol Q
# Symbol I
	.byte	0
# Procdef destructor destroy(<TFmOperator>;<Pointer>);
	.uleb128	3
	.ascii	"DESTROY\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
	.quad	.Lt9
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	3
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol vmt
	.uleb128	6
	.ascii	"vmt\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La39-.Ldebug_info0
	.byte	0
	.byte	0
.La10:
	.uleb128	9
	.long	.La9-.Ldebug_info0
# Definition TFmVoice
.La12:
	.uleb128	7
	.ascii	"TFMVOICE\000"
	.long	.La41-.Ldebug_info0
.La41:
	.uleb128	10
	.long	.La14-.Ldebug_info0
.La14:
	.uleb128	13
	.ascii	"TFMVOICE\000"
	.uleb128	168
	.uleb128	14
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La38-.Ldebug_info0
	.uleb128	15
	.ascii	"OPERATORS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La42-.Ldebug_info0
	.uleb128	15
	.ascii	"OUTPUTS\000"
	.byte	2
	.byte	35
	.uleb128	72
	.long	.La44-.Ldebug_info0
	.uleb128	15
	.ascii	"OUTMULS\000"
	.byte	3
	.byte	35
	.uleb128	136
	.long	.La46-.Ldebug_info0
# Procdef constructor create(<TFmVoice>;<Pointer>);
	.uleb128	5
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La12-.Ldebug_info0
	.quad	FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
	.quad	.Lt10
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.byte	1
	.long	.La12-.Ldebug_info0
# Symbol vmt
	.uleb128	6
	.ascii	"vmt\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La39-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef getsample(<TFmVoice>):Double;
	.uleb128	5
	.ascii	"GETSAMPLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La3-.Ldebug_info0
	.quad	FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
	.quad	.Lt11
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	3
	.byte	1
	.long	.La12-.Ldebug_info0
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La3-.Ldebug_info0
# Symbol GETSAMPLE
	.uleb128	4
	.ascii	"GETSAMPLE\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La3-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La3-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La23-.Ldebug_info0
# Symbol J
# Symbol OUTPUT
	.uleb128	4
	.ascii	"OUTPUT\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La3-.Ldebug_info0
	.byte	0
	.byte	0
.La13:
	.uleb128	9
	.long	.La12-.Ldebug_info0
# Definition Array[0..65540] Of Double
.La15:
	.uleb128	17
	.uleb128	524328
	.long	.La3-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	65540
	.uleb128	8
	.long	.La23-.Ldebug_info0
	.byte	0
.La16:
	.uleb128	9
	.long	.La15-.Ldebug_info0
# Definition Array[0..8191] Of Double
.La17:
	.uleb128	17
	.uleb128	65536
	.long	.La3-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	8191
	.uleb128	8
	.long	.La48-.Ldebug_info0
	.byte	0
.La18:
	.uleb128	9
	.long	.La17-.Ldebug_info0
# Definition Array[0..127] Of Double
.La19:
	.uleb128	17
	.uleb128	1024
	.long	.La3-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	127
	.uleb128	8
	.long	.La33-.Ldebug_info0
	.byte	0
.La20:
	.uleb128	9
	.long	.La19-.Ldebug_info0
# Definition Array[0..65535] Of Double
.La21:
	.uleb128	17
	.uleb128	524288
	.long	.La3-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	65535
	.uleb128	8
	.long	.La50-.Ldebug_info0
	.byte	0
.La22:
	.uleb128	9
	.long	.La21-.Ldebug_info0
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
# Defs - End unit SYNTHCONTROL has index 17
# Defs - Begin unit UNIT2 has index 16
# Defs - End unit UNIT2 has index 16
# Defs - Begin unit UNIT1 has index 10
# Defs - End unit UNIT1 has index 10
# Defs - Begin unit RETRO has index 12
# Defs - End unit RETRO has index 12
# Defs - Begin unit FMSYNTH has index 18
# Defs - End unit FMSYNTH has index 18
# Defs - Begin Staticsymtable
# Defs - End Staticsymtable
# Definition ShortInt
.La33:
	.uleb128	7
	.ascii	"SHORTINT\000"
	.long	.La52-.Ldebug_info0
.La52:
	.uleb128	8
	.ascii	"SHORTINT\000"
	.byte	5
	.byte	1
.La34:
	.uleb128	9
	.long	.La33-.Ldebug_info0
# Definition TObject
.La36:
	.uleb128	7
	.ascii	"TOBJECT\000"
	.long	.La53-.Ldebug_info0
.La53:
	.uleb128	10
	.long	.La38-.Ldebug_info0
.La38:
	.uleb128	13
	.ascii	"TOBJECT\000"
	.uleb128	8
	.uleb128	18
	.byte	1
	.ascii	"_vptr$TOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La39-.Ldebug_info0
# Procdef constructor Create(<TObject>;<Pointer>);
	.uleb128	19
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol vmt
	.uleb128	21
	.ascii	"vmt\000"
	.long	.La39-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TObject>;<Pointer>);
	.uleb128	22
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol vmt
	.uleb128	21
	.ascii	"vmt\000"
	.long	.La39-.Ldebug_info0
	.byte	0
# Procdef class newinstance(<Class Of TObject>):TObject;
	.uleb128	23
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
	.long	.La36-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La54-.Ldebug_info0
	.byte	0
# Procdef FreeInstance(<TObject>);
	.uleb128	22
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef SafeCallException(<TObject>;TObject;Pointer):LongInt;
	.uleb128	23
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
	.long	.La56-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol EXCEPTOBJECT
	.uleb128	21
	.ascii	"EXCEPTOBJECT\000"
	.long	.La36-.Ldebug_info0
# Symbol EXCEPTADDR
	.uleb128	21
	.ascii	"EXCEPTADDR\000"
	.long	.La39-.Ldebug_info0
	.byte	0
# Procdef DefaultHandler(<TObject>;var <Formal type>);
	.uleb128	22
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	21
	.ascii	"MESSAGE\000"
	.long	.La58-.Ldebug_info0
	.byte	0
# Procdef Free(<TObject>);
	.uleb128	24
	.ascii	"FREE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef class InitInstance(<Class Of TObject>;Pointer):TObject;
	.uleb128	19
	.ascii	"INITINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La60-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	21
	.ascii	"INSTANCE\000"
	.long	.La39-.Ldebug_info0
	.byte	0
# Procdef CleanupInstance(<TObject>);
	.uleb128	24
	.ascii	"CLEANUPINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef class ClassType(<Class Of TObject>):Class Of TObject;
	.uleb128	19
	.ascii	"CLASSTYPE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La62-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La64-.Ldebug_info0
	.byte	0
# Procdef class ClassInfo(<Class Of TObject>):^untyped;
	.uleb128	19
	.ascii	"CLASSINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La39-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La66-.Ldebug_info0
	.byte	0
# Procdef class ClassName(<Class Of TObject>;<var ShortString>):ShortString;
	.uleb128	19
	.ascii	"CLASSNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La68-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La70-.Ldebug_info0
# Symbol result
	.uleb128	25
	.ascii	"result\000"
	.long	.La68-.Ldebug_info0
	.byte	0
# Procdef class ClassNameIs(<Class Of TObject>;const ShortString):Boolean;
	.uleb128	19
	.ascii	"CLASSNAMEIS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La72-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La74-.Ldebug_info0
# Symbol NAME
	.uleb128	21
	.ascii	"NAME\000"
	.long	.La68-.Ldebug_info0
	.byte	0
# Procdef class ClassParent(<Class Of TObject>):Class Of TObject;
	.uleb128	19
	.ascii	"CLASSPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La62-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La76-.Ldebug_info0
	.byte	0
# Procdef class InstanceSize(<Class Of TObject>):Int64;
	.uleb128	19
	.ascii	"INSTANCESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La78-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La80-.Ldebug_info0
	.byte	0
# Procdef class InheritsFrom(<Class Of TObject>;TClass):Boolean;
	.uleb128	19
	.ascii	"INHERITSFROM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La72-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La82-.Ldebug_info0
# Symbol ACLASS
	.uleb128	21
	.ascii	"ACLASS\000"
	.long	.La62-.Ldebug_info0
	.byte	0
# Procdef class StringMessageTable(<Class Of TObject>):^TStringMessageTable;
	.uleb128	19
	.ascii	"STRINGMESSAGETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La84-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La86-.Ldebug_info0
	.byte	0
# Procdef class MethodAddress(<Class Of TObject>;const ShortString):^untyped;
	.uleb128	19
	.ascii	"METHODADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La39-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La88-.Ldebug_info0
# Symbol NAME
	.uleb128	21
	.ascii	"NAME\000"
	.long	.La68-.Ldebug_info0
	.byte	0
# Procdef class MethodName(<Class Of TObject>;<var ShortString>;Pointer):ShortString;
	.uleb128	19
	.ascii	"METHODNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La68-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La90-.Ldebug_info0
# Symbol result
	.uleb128	25
	.ascii	"result\000"
	.long	.La68-.Ldebug_info0
# Symbol ADDRESS
	.uleb128	21
	.ascii	"ADDRESS\000"
	.long	.La39-.Ldebug_info0
	.byte	0
# Procdef FieldAddress(<TObject>;const ShortString):^untyped;
	.uleb128	19
	.ascii	"FIELDADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La39-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol NAME
	.uleb128	21
	.ascii	"NAME\000"
	.long	.La68-.Ldebug_info0
	.byte	0
# Procdef AfterConstruction(<TObject>);
	.uleb128	22
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef BeforeDestruction(<TObject>);
	.uleb128	22
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef DefaultHandlerStr(<TObject>;var <Formal type>);
	.uleb128	22
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	21
	.ascii	"MESSAGE\000"
	.long	.La58-.Ldebug_info0
	.byte	0
# Procdef Dispatch(<TObject>;var <Formal type>);
	.uleb128	22
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	21
	.ascii	"MESSAGE\000"
	.long	.La58-.Ldebug_info0
	.byte	0
# Procdef DispatchStr(<TObject>;var <Formal type>);
	.uleb128	22
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	21
	.ascii	"MESSAGE\000"
	.long	.La58-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	19
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La72-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol IID
	.uleb128	21
	.ascii	"IID\000"
	.long	.La92-.Ldebug_info0
# Symbol OBJ
	.uleb128	21
	.ascii	"OBJ\000"
	.long	.La58-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	19
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La72-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	21
	.ascii	"IIDSTR\000"
	.long	.La68-.Ldebug_info0
# Symbol OBJ
	.uleb128	21
	.ascii	"OBJ\000"
	.long	.La58-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceByStr(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	19
	.ascii	"GETINTERFACEBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La72-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	21
	.ascii	"IIDSTR\000"
	.long	.La68-.Ldebug_info0
# Symbol OBJ
	.uleb128	21
	.ascii	"OBJ\000"
	.long	.La58-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceWeak(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	19
	.ascii	"GETINTERFACEWEAK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La72-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol IID
	.uleb128	21
	.ascii	"IID\000"
	.long	.La92-.Ldebug_info0
# Symbol OBJ
	.uleb128	21
	.ascii	"OBJ\000"
	.long	.La58-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntry(<Class Of TObject>;const TGuid):^tinterfaceentry;
	.uleb128	19
	.ascii	"GETINTERFACEENTRY\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La94-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La96-.Ldebug_info0
# Symbol IID
	.uleb128	21
	.ascii	"IID\000"
	.long	.La92-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntryByStr(<Class Of TObject>;const ShortString):^tinterfaceentry;
	.uleb128	19
	.ascii	"GETINTERFACEENTRYBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La94-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La98-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	21
	.ascii	"IIDSTR\000"
	.long	.La68-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceTable(<Class Of TObject>):^tinterfacetable;
	.uleb128	19
	.ascii	"GETINTERFACETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La100-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La102-.Ldebug_info0
	.byte	0
# Procdef class UnitName(<Class Of TObject>;<var AnsiString>):AnsiString;
	.uleb128	19
	.ascii	"UNITNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La104-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol result
	.uleb128	25
	.ascii	"result\000"
	.long	.La104-.Ldebug_info0
	.byte	0
# Procdef Equals(<TObject>;TObject):Boolean;
	.uleb128	23
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
	.long	.La72-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol OBJ
	.uleb128	21
	.ascii	"OBJ\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef GetHashCode(<TObject>):Int64;
	.uleb128	23
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
	.long	.La78-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef ToString(<TObject>;<var AnsiString>):AnsiString;
	.uleb128	23
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
	.long	.La104-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol result
	.uleb128	25
	.ascii	"result\000"
	.long	.La104-.Ldebug_info0
	.byte	0
	.byte	0
.La37:
	.uleb128	9
	.long	.La36-.Ldebug_info0
# Definition Pointer
.La39:
	.uleb128	7
	.ascii	"POINTER\000"
	.long	.La108-.Ldebug_info0
.La108:
	.uleb128	26
.La40:
	.uleb128	9
	.long	.La39-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of TFmOperator
.La42:
	.uleb128	17
	.uleb128	64
	.long	.La9-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	7
	.uleb128	8
	.long	.La33-.Ldebug_info0
	.byte	0
.La43:
	.uleb128	9
	.long	.La42-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of Double
.La44:
	.uleb128	17
	.uleb128	64
	.long	.La3-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	7
	.uleb128	8
	.long	.La33-.Ldebug_info0
	.byte	0
.La45:
	.uleb128	9
	.long	.La44-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of Single
.La46:
	.uleb128	17
	.uleb128	32
	.long	.La25-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	7
	.uleb128	4
	.long	.La33-.Ldebug_info0
	.byte	0
.La47:
	.uleb128	9
	.long	.La46-.Ldebug_info0
# Definition SmallInt
.La48:
	.uleb128	7
	.ascii	"SMALLINT\000"
	.long	.La109-.Ldebug_info0
.La109:
	.uleb128	8
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.La49:
	.uleb128	9
	.long	.La48-.Ldebug_info0
# Definition Word
.La50:
	.uleb128	7
	.ascii	"WORD\000"
	.long	.La110-.Ldebug_info0
.La110:
	.uleb128	8
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La51:
	.uleb128	9
	.long	.La50-.Ldebug_info0
# Definition TObject.Class Of TObject
.La54:
	.uleb128	10
	.long	.La111-.Ldebug_info0
.La55:
	.uleb128	9
	.long	.La54-.Ldebug_info0
# Definition HRESULT
.La56:
	.uleb128	7
	.ascii	"HRESULT\000"
	.long	.La113-.Ldebug_info0
.La113:
	.uleb128	8
	.ascii	"HRESULT\000"
	.byte	5
	.byte	4
.La57:
	.uleb128	9
	.long	.La56-.Ldebug_info0
# Definition <Formal type>
.La58:
	.uleb128	7
	.ascii	"formal\000"
	.long	.La114-.Ldebug_info0
.La114:
	.uleb128	8
	.ascii	"FormalDef\000"
	.byte	7
	.byte	0
.La59:
	.uleb128	9
	.long	.La58-.Ldebug_info0
# Definition TObject.Class Of TObject
.La60:
	.uleb128	10
	.long	.La111-.Ldebug_info0
.La61:
	.uleb128	9
	.long	.La60-.Ldebug_info0
# Definition TClass
.La62:
	.uleb128	7
	.ascii	"TCLASS\000"
	.long	.La115-.Ldebug_info0
.La115:
	.uleb128	10
	.long	.La111-.Ldebug_info0
.La63:
	.uleb128	9
	.long	.La62-.Ldebug_info0
# Definition TObject.Class Of TObject
.La64:
	.uleb128	10
	.long	.La111-.Ldebug_info0
.La65:
	.uleb128	9
	.long	.La64-.Ldebug_info0
# Definition TObject.Class Of TObject
.La66:
	.uleb128	10
	.long	.La111-.Ldebug_info0
.La67:
	.uleb128	9
	.long	.La66-.Ldebug_info0
# Definition ShortString
.La68:
	.uleb128	7
	.ascii	"SHORTSTRING\000"
	.long	.La116-.Ldebug_info0
.La116:
	.uleb128	27
	.ascii	"ShortString\000"
	.uleb128	256
	.uleb128	15
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La118-.Ldebug_info0
	.uleb128	15
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La117-.Ldebug_info0
	.byte	0
.La117:
	.uleb128	28
	.uleb128	256
	.uleb128	1
	.long	.La120-.Ldebug_info0
	.uleb128	29
	.uleb128	1
	.uleb128	255
	.long	.La118-.Ldebug_info0
	.byte	0
.La69:
	.uleb128	9
	.long	.La68-.Ldebug_info0
# Definition TObject.Class Of TObject
.La70:
	.uleb128	10
	.long	.La111-.Ldebug_info0
.La71:
	.uleb128	9
	.long	.La70-.Ldebug_info0
# Definition Boolean
.La72:
	.uleb128	7
	.ascii	"BOOLEAN\000"
	.long	.La122-.Ldebug_info0
.La122:
	.uleb128	8
	.ascii	"Boolean\000"
	.byte	2
	.byte	1
.La73:
	.uleb128	9
	.long	.La72-.Ldebug_info0
# Definition TObject.Class Of TObject
.La74:
	.uleb128	10
	.long	.La111-.Ldebug_info0
.La75:
	.uleb128	9
	.long	.La74-.Ldebug_info0
# Definition TObject.Class Of TObject
.La76:
	.uleb128	10
	.long	.La111-.Ldebug_info0
.La77:
	.uleb128	9
	.long	.La76-.Ldebug_info0
# Definition Int64
.La78:
	.uleb128	7
	.ascii	"INT64\000"
	.long	.La123-.Ldebug_info0
.La123:
	.uleb128	8
	.ascii	"Int64\000"
	.byte	5
	.byte	8
.La79:
	.uleb128	9
	.long	.La78-.Ldebug_info0
# Definition TObject.Class Of TObject
.La80:
	.uleb128	10
	.long	.La111-.Ldebug_info0
.La81:
	.uleb128	9
	.long	.La80-.Ldebug_info0
# Definition TObject.Class Of TObject
.La82:
	.uleb128	10
	.long	.La111-.Ldebug_info0
.La83:
	.uleb128	9
	.long	.La82-.Ldebug_info0
# Definition pstringmessagetable
.La84:
	.uleb128	7
	.ascii	"PSTRINGMESSAGETABLE\000"
	.long	.La124-.Ldebug_info0
.La124:
	.uleb128	10
	.long	.La125-.Ldebug_info0
.La85:
	.uleb128	9
	.long	.La84-.Ldebug_info0
# Definition TObject.Class Of TObject
.La86:
	.uleb128	10
	.long	.La111-.Ldebug_info0
.La87:
	.uleb128	9
	.long	.La86-.Ldebug_info0
# Definition TObject.Class Of TObject
.La88:
	.uleb128	10
	.long	.La111-.Ldebug_info0
.La89:
	.uleb128	9
	.long	.La88-.Ldebug_info0
# Definition TObject.Class Of TObject
.La90:
	.uleb128	10
	.long	.La111-.Ldebug_info0
.La91:
	.uleb128	9
	.long	.La90-.Ldebug_info0
# Definition TGuid
.La92:
	.uleb128	7
	.ascii	"TGUID\000"
	.long	.La127-.Ldebug_info0
.La127:
	.uleb128	27
	.ascii	"TGUID\000"
	.uleb128	16
	.uleb128	15
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La128-.Ldebug_info0
	.uleb128	15
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La50-.Ldebug_info0
	.uleb128	15
	.ascii	"DATA3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La50-.Ldebug_info0
	.uleb128	15
	.ascii	"DATA4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La130-.Ldebug_info0
	.uleb128	15
	.ascii	"D1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La128-.Ldebug_info0
	.uleb128	15
	.ascii	"D2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La50-.Ldebug_info0
	.uleb128	15
	.ascii	"D3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La50-.Ldebug_info0
	.uleb128	15
	.ascii	"D4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La132-.Ldebug_info0
	.uleb128	15
	.ascii	"TIME_LOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La128-.Ldebug_info0
	.uleb128	15
	.ascii	"TIME_MID\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La50-.Ldebug_info0
	.uleb128	15
	.ascii	"TIME_HI_AND_VERSION\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La50-.Ldebug_info0
	.uleb128	15
	.ascii	"CLOCK_SEQ_HI_AND_RESERVED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La118-.Ldebug_info0
	.uleb128	15
	.ascii	"CLOCK_SEQ_LOW\000"
	.byte	2
	.byte	35
	.uleb128	9
	.long	.La118-.Ldebug_info0
	.uleb128	15
	.ascii	"NODE\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La134-.Ldebug_info0
	.byte	0
.La93:
	.uleb128	9
	.long	.La92-.Ldebug_info0
# Definition pinterfaceentry
.La94:
	.uleb128	7
	.ascii	"PINTERFACEENTRY\000"
	.long	.La136-.Ldebug_info0
.La136:
	.uleb128	10
	.long	.La137-.Ldebug_info0
.La95:
	.uleb128	9
	.long	.La94-.Ldebug_info0
# Definition TObject.Class Of TObject
.La96:
	.uleb128	10
	.long	.La111-.Ldebug_info0
.La97:
	.uleb128	9
	.long	.La96-.Ldebug_info0
# Definition TObject.Class Of TObject
.La98:
	.uleb128	10
	.long	.La111-.Ldebug_info0
.La99:
	.uleb128	9
	.long	.La98-.Ldebug_info0
# Definition pinterfacetable
.La100:
	.uleb128	7
	.ascii	"PINTERFACETABLE\000"
	.long	.La139-.Ldebug_info0
.La139:
	.uleb128	10
	.long	.La140-.Ldebug_info0
.La101:
	.uleb128	9
	.long	.La100-.Ldebug_info0
# Definition TObject.Class Of TObject
.La102:
	.uleb128	10
	.long	.La111-.Ldebug_info0
.La103:
	.uleb128	9
	.long	.La102-.Ldebug_info0
# Definition AnsiString
.La104:
	.uleb128	7
	.ascii	"ANSISTRING\000"
	.long	.La142-.Ldebug_info0
.La142:
	.uleb128	10
	.long	.La120-.Ldebug_info0
.La105:
	.uleb128	9
	.long	.La104-.Ldebug_info0
# Definition TObject.Class Of TObject
.La106:
	.uleb128	10
	.long	.La111-.Ldebug_info0
.La107:
	.uleb128	9
	.long	.La106-.Ldebug_info0
# Definition <record type>
.La111:
	.uleb128	7
	.ascii	"__vtbl_ptr_type\000"
	.long	.La143-.Ldebug_info0
.La143:
	.uleb128	30
	.uleb128	40
	.byte	0
.La112:
	.uleb128	9
	.long	.La111-.Ldebug_info0
# Definition Byte
.La118:
	.uleb128	7
	.ascii	"BYTE\000"
	.long	.La144-.Ldebug_info0
.La144:
	.uleb128	8
	.ascii	"BYTE\000"
	.byte	7
	.byte	1
.La119:
	.uleb128	9
	.long	.La118-.Ldebug_info0
# Definition Char
.La120:
	.uleb128	7
	.ascii	"CHAR\000"
	.long	.La145-.Ldebug_info0
.La145:
	.uleb128	8
	.ascii	"Char\000"
	.byte	8
	.byte	1
.La121:
	.uleb128	9
	.long	.La120-.Ldebug_info0
# Definition TStringMessageTable
.La125:
	.uleb128	7
	.ascii	"TSTRINGMESSAGETABLE\000"
	.long	.La146-.Ldebug_info0
.La146:
	.uleb128	27
	.ascii	"TSTRINGMESSAGETABLE\000"
	.uleb128	24
	.uleb128	15
	.ascii	"COUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La23-.Ldebug_info0
	.uleb128	15
	.ascii	"MSGSTRTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La147-.Ldebug_info0
	.byte	0
.La126:
	.uleb128	9
	.long	.La125-.Ldebug_info0
# Definition LongWord
.La128:
	.uleb128	7
	.ascii	"LONGWORD\000"
	.long	.La149-.Ldebug_info0
.La149:
	.uleb128	8
	.ascii	"LONGWORD\000"
	.byte	7
	.byte	4
.La129:
	.uleb128	9
	.long	.La128-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La130:
	.uleb128	17
	.uleb128	8
	.long	.La118-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La33-.Ldebug_info0
	.byte	0
.La131:
	.uleb128	9
	.long	.La130-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La132:
	.uleb128	17
	.uleb128	8
	.long	.La118-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La33-.Ldebug_info0
	.byte	0
.La133:
	.uleb128	9
	.long	.La132-.Ldebug_info0
# Definition TGuid.Array[0..5] Of Byte
.La134:
	.uleb128	17
	.uleb128	6
	.long	.La118-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	5
	.uleb128	1
	.long	.La33-.Ldebug_info0
	.byte	0
.La135:
	.uleb128	9
	.long	.La134-.Ldebug_info0
# Definition tinterfaceentry
.La137:
	.uleb128	7
	.ascii	"TINTERFACEENTRY\000"
	.long	.La150-.Ldebug_info0
.La150:
	.uleb128	27
	.ascii	"TINTERFACEENTRY\000"
	.uleb128	40
	.uleb128	15
	.ascii	"IID\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La151-.Ldebug_info0
	.uleb128	15
	.ascii	"VTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La39-.Ldebug_info0
	.uleb128	15
	.ascii	"IOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La153-.Ldebug_info0
	.uleb128	15
	.ascii	"IIDSTR\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La155-.Ldebug_info0
	.uleb128	15
	.ascii	"ITYPE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La157-.Ldebug_info0
	.uleb128	15
	.ascii	"__PAD_DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La78-.Ldebug_info0
	.byte	0
.La138:
	.uleb128	9
	.long	.La137-.Ldebug_info0
# Definition tinterfacetable
.La140:
	.uleb128	7
	.ascii	"TINTERFACETABLE\000"
	.long	.La159-.Ldebug_info0
.La159:
	.uleb128	27
	.ascii	"TINTERFACETABLE\000"
	.uleb128	48
	.uleb128	15
	.ascii	"ENTRYCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La153-.Ldebug_info0
	.uleb128	15
	.ascii	"ENTRIES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La160-.Ldebug_info0
	.byte	0
.La141:
	.uleb128	9
	.long	.La140-.Ldebug_info0
# Definition TStringMessageTable.Array[0..0] Of TMsgStrTable
.La147:
	.uleb128	17
	.uleb128	16
	.long	.La162-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	0
	.uleb128	16
	.long	.La33-.Ldebug_info0
	.byte	0
.La148:
	.uleb128	9
	.long	.La147-.Ldebug_info0
# Definition PGuid
.La151:
	.uleb128	7
	.ascii	"PGUID\000"
	.long	.La164-.Ldebug_info0
.La164:
	.uleb128	10
	.long	.La92-.Ldebug_info0
.La152:
	.uleb128	9
	.long	.La151-.Ldebug_info0
# Definition QWord
.La153:
	.uleb128	7
	.ascii	"QWORD\000"
	.long	.La165-.Ldebug_info0
.La165:
	.uleb128	8
	.ascii	"QWord\000"
	.byte	7
	.byte	8
.La154:
	.uleb128	9
	.long	.La153-.Ldebug_info0
# Definition PShortString
.La155:
	.uleb128	7
	.ascii	"PSHORTSTRING\000"
	.long	.La166-.Ldebug_info0
.La166:
	.uleb128	10
	.long	.La68-.Ldebug_info0
.La156:
	.uleb128	9
	.long	.La155-.Ldebug_info0
# Definition tinterfaceentrytype
.La157:
	.uleb128	7
	.ascii	"TINTERFACEENTRYTYPE\000"
	.long	.La167-.Ldebug_info0
.La167:
	.uleb128	31
	.ascii	"TINTERFACEENTRYTYPE\000"
	.byte	4
	.uleb128	32
	.ascii	"ETSTANDARD\000"
	.long	0
	.uleb128	32
	.ascii	"ETVIRTUALMETHODRESULT\000"
	.long	1
	.uleb128	32
	.ascii	"ETSTATICMETHODRESULT\000"
	.long	2
	.uleb128	32
	.ascii	"ETFIELDVALUE\000"
	.long	3
	.uleb128	32
	.ascii	"ETVIRTUALMETHODCLASS\000"
	.long	4
	.uleb128	32
	.ascii	"ETSTATICMETHODCLASS\000"
	.long	5
	.uleb128	32
	.ascii	"ETFIELDVALUECLASS\000"
	.long	6
	.byte	0
.La158:
	.uleb128	9
	.long	.La157-.Ldebug_info0
# Definition tinterfacetable.Array[0..0] Of tinterfaceentry
.La160:
	.uleb128	17
	.uleb128	40
	.long	.La137-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	0
	.uleb128	40
	.long	.La33-.Ldebug_info0
	.byte	0
.La161:
	.uleb128	9
	.long	.La160-.Ldebug_info0
# Definition TMsgStrTable
.La162:
	.uleb128	7
	.ascii	"TMSGSTRTABLE\000"
	.long	.La168-.Ldebug_info0
.La168:
	.uleb128	27
	.ascii	"TMSGSTRTABLE\000"
	.uleb128	16
	.uleb128	15
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La155-.Ldebug_info0
	.uleb128	15
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La39-.Ldebug_info0
	.byte	0
.La163:
	.uleb128	9
	.long	.La162-.Ldebug_info0
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
	.uleb128	63
	.uleb128	12
	.uleb128	2
	.uleb128	10
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 3
	.uleb128	3
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
# Abbrev 4
	.uleb128	4
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
# Abbrev 5
	.uleb128	5
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
# Abbrev 6
	.uleb128	6
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
# Abbrev 7
	.uleb128	7
	.uleb128	22
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 8
	.uleb128	8
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
# Abbrev 9
	.uleb128	9
	.uleb128	16
	.byte	0
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 10
	.uleb128	10
	.uleb128	15
	.byte	0
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 11
	.uleb128	11
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
# Abbrev 12
	.uleb128	12
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
# Abbrev 13
	.uleb128	13
	.uleb128	2
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 14
	.uleb128	14
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
# Abbrev 17
	.uleb128	17
	.uleb128	1
	.byte	1
	.uleb128	11
	.uleb128	15
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 18
	.uleb128	18
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
# Abbrev 19
	.uleb128	19
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
# Abbrev 20
	.uleb128	20
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
# Abbrev 21
	.uleb128	21
	.uleb128	5
	.byte	0
	.uleb128	3
	.uleb128	8
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
	.uleb128	76
	.uleb128	11
	.uleb128	77
	.uleb128	10
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
	.uleb128	76
	.uleb128	11
	.uleb128	77
	.uleb128	10
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
	.byte	0
	.byte	0
# Abbrev 25
	.uleb128	25
	.uleb128	52
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 26
	.uleb128	26
	.uleb128	15
	.byte	0
	.byte	0
	.byte	0
# Abbrev 27
	.uleb128	27
	.uleb128	19
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 28
	.uleb128	28
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
# Abbrev 29
	.uleb128	29
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
# Abbrev 30
	.uleb128	30
	.uleb128	19
	.byte	1
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 31
	.uleb128	31
	.uleb128	4
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.byte	0
	.byte	0
# Abbrev 32
	.uleb128	32
	.uleb128	40
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	6
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
	.ascii	"fmsynth.pas\000"
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Lehdebug_line0:
# === header end ===
# function: FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
# [70:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	81
# [70:1]
	.byte	2
	.uleb128	.Ll2-.Ll1
	.byte	1
# [76:1]
	.byte	2
	.uleb128	.Ll3-.Ll2
	.byte	18
# [71:1]
	.byte	2
	.uleb128	.Ll4-.Ll3
	.byte	3
	.sleb128	-5
	.byte	1
# [72:1]
	.byte	2
	.uleb128	.Ll5-.Ll4
	.byte	13
# [73:1]
	.byte	2
	.uleb128	.Ll6-.Ll5
	.byte	13
# [70:1]
	.byte	2
	.uleb128	.Ll7-.Ll6
	.byte	3
	.sleb128	-3
	.byte	1
# [73:29]
	.byte	2
	.uleb128	.Ll8-.Ll7
	.byte	5
	.uleb128	29
	.byte	15
# [74:1]
	.byte	2
	.uleb128	.Ll9-.Ll8
	.byte	5
	.uleb128	1
	.byte	13
# [75:1]
	.byte	2
	.uleb128	.Ll10-.Ll9
	.byte	13
# [76:1]
	.byte	2
	.uleb128	.Ll11-.Ll10
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll12
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
# [84:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll13
	.byte	5
	.uleb128	1
	.byte	95
# [85:1]
	.byte	2
	.uleb128	.Ll14-.Ll13
	.byte	13
# [86:25]
	.byte	2
	.uleb128	.Ll15-.Ll14
	.byte	5
	.uleb128	25
	.byte	13
# [85:1]
	.byte	2
	.uleb128	.Ll16-.Ll15
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [87:1]
	.byte	2
	.uleb128	.Ll17-.Ll16
	.byte	14
# [88:1]
	.byte	2
	.uleb128	.Ll18-.Ll17
	.byte	13
# [90:1]
	.byte	2
	.uleb128	.Ll19-.Ll18
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll20
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITFLOGTABLE
# [101:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll21
	.byte	5
	.uleb128	1
	.byte	112
# [103:1]
	.byte	2
	.uleb128	.Ll22-.Ll21
	.byte	14
# [104:1]
	.byte	2
	.uleb128	.Ll23-.Ll22
	.byte	13
# [106:7]
	.byte	2
	.uleb128	.Ll24-.Ll23
	.byte	5
	.uleb128	7
	.byte	14
# [109:15]
	.byte	2
	.uleb128	.Ll25-.Ll24
	.byte	5
	.uleb128	15
	.byte	15
# [110:9]
	.byte	2
	.uleb128	.Ll26-.Ll25
	.byte	5
	.uleb128	9
	.byte	13
# [104:1]
	.byte	2
	.uleb128	.Ll27-.Ll26
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-6
	.byte	1
# [113:1]
	.byte	2
	.uleb128	.Ll28-.Ll27
	.byte	21
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll29
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITFSINETABLE
# [120:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll30
	.byte	5
	.uleb128	1
	.byte	131
# [121:1]
	.byte	2
	.uleb128	.Ll31-.Ll30
	.byte	13
# [122:1]
	.byte	2
	.uleb128	.Ll32-.Ll31
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll33
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
# [126:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll34
	.byte	5
	.uleb128	1
	.byte	137
# [127:12]
	.byte	2
	.uleb128	.Ll35-.Ll34
	.byte	5
	.uleb128	12
	.byte	13
# [128:12]
	.byte	2
	.uleb128	.Ll36-.Ll35
	.byte	13
# [129:1]
	.byte	2
	.uleb128	.Ll37-.Ll36
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll38
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
# [133:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll39
	.byte	5
	.uleb128	1
	.byte	144
# [134:17]
	.byte	2
	.uleb128	.Ll40-.Ll39
	.byte	5
	.uleb128	17
	.byte	13
# [135:17]
	.byte	2
	.uleb128	.Ll41-.Ll40
	.byte	13
# [136:1]
	.byte	2
	.uleb128	.Ll42-.Ll41
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll43
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
# [143:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll44
	.byte	5
	.uleb128	1
	.byte	154
# [143:1]
	.byte	2
	.uleb128	.Ll45-.Ll44
	.byte	1
# [156:1]
	.byte	2
	.uleb128	.Ll46-.Ll45
	.byte	25
# [144:1]
	.byte	2
	.uleb128	.Ll47-.Ll46
	.byte	3
	.sleb128	-12
	.byte	1
# [145:8]
	.byte	2
	.uleb128	.Ll48-.Ll47
	.byte	5
	.uleb128	8
	.byte	13
# [153:3]
	.byte	2
	.uleb128	.Ll49-.Ll48
	.byte	5
	.uleb128	3
	.byte	20
# [156:1]
	.byte	2
	.uleb128	.Ll50-.Ll49
	.byte	5
	.uleb128	1
	.byte	15
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll51
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
# [160:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll52
	.byte	5
	.uleb128	1
	.byte	171
# [160:1]
	.byte	2
	.uleb128	.Ll53-.Ll52
	.byte	1
# [161:1]
	.byte	2
	.uleb128	.Ll54-.Ll53
	.byte	13
# [162:1]
	.byte	2
	.uleb128	.Ll55-.Ll54
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll56
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_INIT
# [166:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll57
	.byte	5
	.uleb128	1
	.byte	177
# [168:1]
	.byte	2
	.uleb128	.Ll58-.Ll57
	.byte	14
# [169:1]
	.byte	2
	.uleb128	.Ll59-.Ll58
	.byte	13
# [170:1]
	.byte	2
	.uleb128	.Ll60-.Ll59
	.byte	13
# [171:1]
	.byte	2
	.uleb128	.Ll61-.Ll60
	.byte	13
# [172:1]
	.byte	2
	.uleb128	.Ll62-.Ll61
	.byte	13
# [173:1]
	.byte	2
	.uleb128	.Ll63-.Ll62
	.byte	13
# [174:1]
	.byte	2
	.uleb128	.Ll64-.Ll63
	.byte	13
# [175:1]
	.byte	2
	.uleb128	.Ll65-.Ll64
	.byte	13
# [176:1]
	.byte	2
	.uleb128	.Ll66-.Ll65
	.byte	13
# [177:1]
	.byte	2
	.uleb128	.Ll67-.Ll66
	.byte	13
# [178:1]
	.byte	2
	.uleb128	.Ll68-.Ll67
	.byte	13
# [179:1]
	.byte	2
	.uleb128	.Ll69-.Ll68
	.byte	13
# [180:1]
	.byte	2
	.uleb128	.Ll70-.Ll69
	.byte	13
# [181:1]
	.byte	2
	.uleb128	.Ll71-.Ll70
	.byte	13
# [182:1]
	.byte	2
	.uleb128	.Ll72-.Ll71
	.byte	13
# [183:1]
	.byte	2
	.uleb128	.Ll73-.Ll72
	.byte	13
# [184:1]
	.byte	2
	.uleb128	.Ll74-.Ll73
	.byte	13
# [185:1]
	.byte	2
	.uleb128	.Ll75-.Ll74
	.byte	13
# [186:1]
	.byte	2
	.uleb128	.Ll76-.Ll75
	.byte	13
# [187:1]
	.byte	2
	.uleb128	.Ll77-.Ll76
	.byte	13
# [188:1]
	.byte	2
	.uleb128	.Ll78-.Ll77
	.byte	13
# [189:1]
	.byte	2
	.uleb128	.Ll79-.Ll78
	.byte	13
# [190:1]
	.byte	2
	.uleb128	.Ll80-.Ll79
	.byte	13
# [191:1]
	.byte	2
	.uleb128	.Ll81-.Ll80
	.byte	13
# [192:1]
	.byte	2
	.uleb128	.Ll82-.Ll81
	.byte	13
# [193:1]
	.byte	2
	.uleb128	.Ll83-.Ll82
	.byte	13
# [194:1]
	.byte	2
	.uleb128	.Ll84-.Ll83
	.byte	13
# [195:1]
	.byte	2
	.uleb128	.Ll85-.Ll84
	.byte	13
# [196:1]
	.byte	2
	.uleb128	.Ll86-.Ll85
	.byte	13
# [197:1]
	.byte	2
	.uleb128	.Ll87-.Ll86
	.byte	13
# [198:1]
	.byte	2
	.uleb128	.Ll88-.Ll87
	.byte	13
# [199:1]
	.byte	2
	.uleb128	.Ll89-.Ll88
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll90
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
# [217:14]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll91
	.byte	5
	.uleb128	14
	.byte	228
# [212:1]
	.byte	2
	.uleb128	.Ll92-.Ll91
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-5
	.byte	1
# [222:26]
	.byte	2
	.uleb128	.Ll93-.Ll92
	.byte	5
	.uleb128	26
	.byte	22
# [223:16]
	.byte	2
	.uleb128	.Ll94-.Ll93
	.byte	5
	.uleb128	16
	.byte	13
# [224:16]
	.byte	2
	.uleb128	.Ll95-.Ll94
	.byte	13
# [225:16]
	.byte	2
	.uleb128	.Ll96-.Ll95
	.byte	13
# [226:16]
	.byte	2
	.uleb128	.Ll97-.Ll96
	.byte	13
# [227:16]
	.byte	2
	.uleb128	.Ll98-.Ll97
	.byte	13
# [228:16]
	.byte	2
	.uleb128	.Ll99-.Ll98
	.byte	13
# [229:16]
	.byte	2
	.uleb128	.Ll100-.Ll99
	.byte	13
# [231:7]
	.byte	2
	.uleb128	.Ll101-.Ll100
	.byte	5
	.uleb128	7
	.byte	14
# [240:12]
	.byte	2
	.uleb128	.Ll102-.Ll101
	.byte	5
	.uleb128	12
	.byte	21
# [242:8]
	.byte	2
	.uleb128	.Ll103-.Ll102
	.byte	5
	.uleb128	8
	.byte	14
# [243:13]
	.byte	2
	.uleb128	.Ll104-.Ll103
	.byte	5
	.uleb128	13
	.byte	13
# [245:10]
	.byte	2
	.uleb128	.Ll105-.Ll104
	.byte	5
	.uleb128	10
	.byte	14
# [246:9]
	.byte	2
	.uleb128	.Ll106-.Ll105
	.byte	5
	.uleb128	9
	.byte	13
# [247:20]
	.byte	2
	.uleb128	.Ll107-.Ll106
	.byte	5
	.uleb128	20
	.byte	13
# [248:9]
	.byte	2
	.uleb128	.Ll108-.Ll107
	.byte	5
	.uleb128	9
	.byte	13
# [249:20]
	.byte	2
	.uleb128	.Ll109-.Ll108
	.byte	5
	.uleb128	20
	.byte	13
# [253:15]
	.byte	2
	.uleb128	.Ll110-.Ll109
	.byte	5
	.uleb128	15
	.byte	16
# [255:16]
	.byte	2
	.uleb128	.Ll111-.Ll110
	.byte	5
	.uleb128	16
	.byte	14
# [259:10]
	.byte	2
	.uleb128	.Ll112-.Ll111
	.byte	5
	.uleb128	10
	.byte	16
# [261:10]
	.byte	2
	.uleb128	.Ll113-.Ll112
	.byte	14
# [262:15]
	.byte	2
	.uleb128	.Ll114-.Ll113
	.byte	5
	.uleb128	15
	.byte	13
# [264:18]
	.byte	2
	.uleb128	.Ll115-.Ll114
	.byte	5
	.uleb128	18
	.byte	14
# [265:9]
	.byte	2
	.uleb128	.Ll116-.Ll115
	.byte	5
	.uleb128	9
	.byte	13
# [272:13]
	.byte	2
	.uleb128	.Ll117-.Ll116
	.byte	5
	.uleb128	13
	.byte	19
# [274:19]
	.byte	2
	.uleb128	.Ll118-.Ll117
	.byte	5
	.uleb128	19
	.byte	14
# [275:9]
	.byte	2
	.uleb128	.Ll119-.Ll118
	.byte	5
	.uleb128	9
	.byte	13
# [276:31]
	.byte	2
	.uleb128	.Ll120-.Ll119
	.byte	5
	.uleb128	31
	.byte	13
# [278:18]
	.byte	2
	.uleb128	.Ll121-.Ll120
	.byte	5
	.uleb128	18
	.byte	14
# [280:19]
	.byte	2
	.uleb128	.Ll122-.Ll121
	.byte	5
	.uleb128	19
	.byte	14
# [281:9]
	.byte	2
	.uleb128	.Ll123-.Ll122
	.byte	5
	.uleb128	9
	.byte	13
# [282:31]
	.byte	2
	.uleb128	.Ll124-.Ll123
	.byte	5
	.uleb128	31
	.byte	13
# [284:18]
	.byte	2
	.uleb128	.Ll125-.Ll124
	.byte	5
	.uleb128	18
	.byte	14
# [286:20]
	.byte	2
	.uleb128	.Ll126-.Ll125
	.byte	5
	.uleb128	20
	.byte	14
# [287:9]
	.byte	2
	.uleb128	.Ll127-.Ll126
	.byte	5
	.uleb128	9
	.byte	13
# [288:31]
	.byte	2
	.uleb128	.Ll128-.Ll127
	.byte	5
	.uleb128	31
	.byte	13
# [290:18]
	.byte	2
	.uleb128	.Ll129-.Ll128
	.byte	5
	.uleb128	18
	.byte	14
# [292:19]
	.byte	2
	.uleb128	.Ll130-.Ll129
	.byte	5
	.uleb128	19
	.byte	14
# [293:9]
	.byte	2
	.uleb128	.Ll131-.Ll130
	.byte	5
	.uleb128	9
	.byte	13
# [294:31]
	.byte	2
	.uleb128	.Ll132-.Ll131
	.byte	5
	.uleb128	31
	.byte	13
# [297:13]
	.byte	2
	.uleb128	.Ll133-.Ll132
	.byte	5
	.uleb128	13
	.byte	15
# [212:1]
	.byte	2
	.uleb128	.Ll134-.Ll133
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-85
	.byte	1
# [297:60]
	.byte	2
	.uleb128	.Ll135-.Ll134
	.byte	5
	.uleb128	60
	.byte	97
# [299:15]
	.byte	2
	.uleb128	.Ll136-.Ll135
	.byte	5
	.uleb128	15
	.byte	14
# [212:1]
	.byte	2
	.uleb128	.Ll137-.Ll136
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-87
	.byte	1
# [300:18]
	.byte	2
	.uleb128	.Ll138-.Ll137
	.byte	5
	.uleb128	18
	.byte	100
# [301:15]
	.byte	2
	.uleb128	.Ll139-.Ll138
	.byte	5
	.uleb128	15
	.byte	13
# [302:10]
	.byte	2
	.uleb128	.Ll140-.Ll139
	.byte	5
	.uleb128	10
	.byte	13
# [303:3]
	.byte	2
	.uleb128	.Ll141-.Ll140
	.byte	5
	.uleb128	3
	.byte	13
# [304:10]
	.byte	2
	.uleb128	.Ll142-.Ll141
	.byte	5
	.uleb128	10
	.byte	13
# [305:3]
	.byte	2
	.uleb128	.Ll143-.Ll142
	.byte	5
	.uleb128	3
	.byte	13
# [316:1]
	.byte	2
	.uleb128	.Ll144-.Ll143
	.byte	5
	.uleb128	1
	.byte	23
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll145
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: INIT$_$FMSYNTH
# function: FMSYNTH_$$_init$
# [318:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll146
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	317
	.byte	1
# [320:1]
	.byte	2
	.uleb128	.Ll147-.Ll146
	.byte	14
# [321:1]
	.byte	2
	.uleb128	.Ll148-.Ll147
	.byte	13
# [323:1]
	.byte	2
	.uleb128	.Ll149-.Ll148
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll150
	.byte	0
	.byte	1
	.byte	1
# ###################
.Ledebug_line0:
# End asmlist al_dwarf_line
# Begin asmlist al_end

.section .text.z_DEBUGEND_$FMSYNTH,"x"
.globl	DEBUGEND_$FMSYNTH
DEBUGEND_$FMSYNTH:
# End asmlist al_end

