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

.section .text.n_fmsynth_$$_initflogtable,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITFLOGTABLE
FMSYNTH_$$_INITFLOGTABLE:
.Lc1:
# Var i located in register edx
# Var q located in register xmm1
# Var q2 located in register xmm2
# [fmsynth.pas]
# [69] begin
# Var q located in register xmm1
.Ll1:
# [70] q:=1;
	movsd	_$FMSYNTH$_Ld1(%rip),%xmm1
# Var q2 located in register xmm2
.Ll2:
# [72] q2:= 0.99989460157410704627595119007091;
	movsd	_$FMSYNTH$_Ld2(%rip),%xmm2
# Var i located in register edx
.Ll3:
# [73] for i:=65535 downto 0 do
	movl	$65535,%edx
	addl	$1,%edx
	.balign 8,0x90
.Lj11:
	subl	$1,%edx
# PeepHole Optimization,var2a
.Ll4:
# [75] flogtable[i]:=q;
	movl	%edx,%eax
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%rcx
	cvtsd2ss	%xmm1,%xmm0
	movss	%xmm0,(%rcx,%rax,4)
.Ll5:
# [76] q:=q*q2;
	movapd	%xmm1,%xmm0
	mulsd	%xmm2,%xmm0
	movapd	%xmm0,%xmm1
.Ll6:
	testl	%edx,%edx
	jg	.Lj11
.Ll7:
# [78] end;
	ret
.Lc2:
.Lt2:
.Ll8:

.section .text.n_fmsynth_$$_assign$longint$$tsinglestereosample,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE:
.Lc3:
# Var b located in register edx
# Var $result located in register rax
.Ll9:
# [82] begin
	movq	%rcx,%rax
.Ll10:
# [83] result[0]:=b;
	cvtsi2ss	%edx,%xmm0
	movss	%xmm0,(%rax)
.Ll11:
# [84] result[1]:=b;
	cvtsi2ss	%edx,%xmm0
	movss	%xmm0,4(%rax)
.Ll12:
# [85] end;
	ret
.Lc4:
.Lt3:
.Ll13:

.section .text.n_fmsynth_$$_star$tsinglestereosample$single$$tsinglestereosample,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE:
.Lc5:
# Temps allocated between rsp+8 and rsp+16
.seh_proc FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
.Ll14:
# [89] begin
	leaq	-24(%rsp),%rsp
.Lc7:
.seh_stackalloc 24
# Var b located in register xmm0
# Var $result located in register rax
.seh_endprologue
# Var a located at rsp+0, size=OS_64
	movq	%rcx,%rax
	movq	%rdx,(%rsp)
	movaps	%xmm2,%xmm0
	movq	(%rsp),%rdx
	movq	(%rdx),%rdx
	movq	%rdx,8(%rsp)
.Ll15:
# [90] result[0]:=a[0]*b;
	movss	8(%rsp),%xmm1
	mulss	%xmm0,%xmm1
	movss	%xmm1,(%rax)
.Ll16:
# [91] result[1]:=a[1]*b;
	movss	12(%rsp),%xmm1
	mulss	%xmm0,%xmm1
	movss	%xmm1,4(%rax)
.Ll17:
# [92] end;
	leaq	24(%rsp),%rsp
	ret
.seh_endproc
.Lc6:
.Lt4:
.Ll18:

.section .text.n_fmsynth$_$tfmoperator_$__$$_create$longint$pointer$$tfmoperator,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR:
.Lc8:
# Temps allocated between rbp-64 and rbp-48
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
.Ll19:
# [99] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc10:
.Lc11:
	movq	%rsp,%rbp
.Lc12:
	leaq	-96(%rsp),%rsp
.seh_stackalloc 96
.seh_endprologue
# Var mode located at rbp-8, size=OS_S32
# Var outs located at rbp-16, size=OS_64
# Var $vmt located at rbp-24, size=OS_64
# Var $self located at rbp-32, size=OS_64
# Var q located at rbp-40, size=OS_F32
# Var i located at rbp-48, size=OS_S32
	movq	%rcx,-32(%rbp)
	movq	%rdx,-24(%rbp)
	movl	%r8d,-8(%rbp)
	movq	%r9,-16(%rbp)
.Ll20:
	cmpq	$1,-24(%rbp)
	jne	.Lj31
	movq	-32(%rbp),%rax
	movq	-32(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-32(%rbp)
.Lj31:
	cmpq	$0,-32(%rbp)
	je	.Lj28
.Lj43:
.Ll21:
# [112] end;
	nop
.Lj42:
.Ll22:
# [100] outputtable:=outs;
	movq	-32(%rbp),%rdx
	movq	-16(%rbp),%rax
	movq	%rax,16(%rdx)
.Ll23:
# [101] if mode=0 then
	cmpl	$0,-8(%rbp)
	jne	.Lj48
.Ll24:
# [103] wptr:=getmem(8*65536);
	movq	$524288,%rcx
	call	SYSTEM_$$_GETMEM$QWORD$$POINTER
	movq	-32(%rbp),%rdx
	movq	%rax,8(%rdx)
.Ll25:
# [104] for i:=0 to 65535 do
	movl	$0,-48(%rbp)
	subl	$1,-48(%rbp)
	.balign 8,0x90
.Lj55:
	addl	$1,-48(%rbp)
.Ll26:
# [106] q:=sin(2*pi*i/65536);
	cvtsi2sdl	-48(%rbp),%xmm0
	mulsd	_$FMSYNTH$_Ld3(%rip),%xmm0
	mulsd	_$FMSYNTH$_Ld4(%rip),%xmm0
	call	fpc_sin_real
	cvtsd2ss	%xmm0,%xmm0
	movss	%xmm0,-40(%rbp)
.Ll27:
# [107] wptr[i]:=q;
	movq	-32(%rbp),%rax
	movq	8(%rax),%rcx
	movslq	-48(%rbp),%rax
	movl	-40(%rbp),%edx
	movl	%edx,(%rcx,%rax,4)
.Ll28:
	cmpl	$65535,-48(%rbp)
	jl	.Lj55
.Ll29:
# [109] wlength:=65536;
	movq	-32(%rbp),%rax
	movl	$65536,88(%rax)
.Lj48:
.Ll30:
	cmpq	$0,-32(%rbp)
	je	.Lj40
	cmpq	$0,-24(%rbp)
	je	.Lj40
	movq	-32(%rbp),%rcx
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	call	*136(%rax)
	jmp	.Lj40
.Lj39:
	cmpq	$0,-24(%rbp)
	je	.Lj70
	movq	-32(%rbp),%rcx
	movq	$-1,%rdx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
.Lj70:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj75:
	nop
.Lj40:
.Lj28:
	movq	-32(%rbp),%rax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj42
	.rva	.Lj39
	.rva	.Lj40

.section .text.n_fmsynth$_$tfmoperator_$__$$_create$longint$pointer$$tfmoperator,"x"
.seh_endproc
.Lc9:
.Lt7:
.Ll31:

.section .text.n_fmsynth$_$tfmoperator_$__$$_destroy,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY:
.Lc13:
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
.Ll32:
# [116] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc15:
.seh_stackalloc 40
# Var $vmt located in register rsi
# Var $self located in register rbx
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
.Ll33:
	cmpq	$0,%rsi
	jng	.Lj79
	movq	%rbx,%rcx
	movq	%rbx,%rax
	movq	(%rax),%rax
	call	*144(%rax)
.Lj79:
.Ll34:
# [117] freemem(wptr);
	movq	8(%rbx),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
.Ll35:
# [118] end;
	testq	%rbx,%rbx
	je	.Lj85
	testq	%rsi,%rsi
	je	.Lj85
	movq	%rbx,%rcx
	movq	%rbx,%rax
	movq	(%rax),%rax
	call	*112(%rax)
.Lj85:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc14:
.Lt8:
.Ll36:

.section .text.n_fmsynth$_$tfmoperator_$__$$_init,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_INIT
FMSYNTH$_$TFMOPERATOR_$__$$_INIT:
.Lc16:
# Var $self located in register rax
.Ll37:
# [122] begin
	movq	%rcx,%rax
.Ll38:
# [124] freq:=1000*(65536/192000);    //341
	movl	_$FMSYNTH$_Ld5(%rip),%edx
	movl	%edx,24(%rax)
.Ll39:
# [125] c3:=1;
	movl	_$FMSYNTH$_Ld6(%rip),%edx
	movl	%edx,28(%rax)
.Ll40:
# [126] c4:=1;
	movl	_$FMSYNTH$_Ld6(%rip),%edx
	movl	%edx,32(%rax)
.Ll41:
# [127] c5:=1;
	movl	_$FMSYNTH$_Ld6(%rip),%edx
	movl	%edx,36(%rax)
.Ll42:
# [128] c6:=1;
	movl	_$FMSYNTH$_Ld6(%rip),%edx
	movl	%edx,40(%rax)
.Ll43:
# [129] lfo1:=1;
	movl	_$FMSYNTH$_Ld6(%rip),%edx
	movl	%edx,44(%rax)
.Ll44:
# [130] lfo2:=1;
	movl	_$FMSYNTH$_Ld6(%rip),%edx
	movl	%edx,48(%rax)
.Ll45:
# [131] lfo3:=1;
	movl	_$FMSYNTH$_Ld6(%rip),%edx
	movl	%edx,52(%rax)
.Ll46:
# [132] mul0:=0;
	movl	_$FMSYNTH$_Ld7(%rip),%edx
	movl	%edx,56(%rax)
.Ll47:
# [133] mul1:=0;
	movl	_$FMSYNTH$_Ld7(%rip),%edx
	movl	%edx,60(%rax)
.Ll48:
# [134] mul2:=0;
	movl	_$FMSYNTH$_Ld7(%rip),%edx
	movl	%edx,64(%rax)
.Ll49:
# [135] mul3:=0;
	movl	_$FMSYNTH$_Ld7(%rip),%edx
	movl	%edx,68(%rax)
.Ll50:
# [136] mul4:=0;
	movl	_$FMSYNTH$_Ld7(%rip),%edx
	movl	%edx,72(%rax)
.Ll51:
# [137] mul5:=0;
	movl	_$FMSYNTH$_Ld7(%rip),%edx
	movl	%edx,76(%rax)
.Ll52:
# [138] mul6:=0;
	movl	_$FMSYNTH$_Ld7(%rip),%edx
	movl	%edx,80(%rax)
.Ll53:
# [139] mul7:=0;
	movl	_$FMSYNTH$_Ld7(%rip),%edx
	movl	%edx,84(%rax)
.Ll54:
# [140] wlength:=65536;
	movl	$65536,88(%rax)
.Ll55:
# [141] adsrstate:=0;
	movl	$0,100(%rax)
.Ll56:
# [142] adsrval:=0;
	movl	_$FMSYNTH$_Ld7(%rip),%edx
	movl	%edx,104(%rax)
.Ll57:
# [143] ar1:=1/1920;
	movl	_$FMSYNTH$_Ld8(%rip),%edx
	movl	%edx,108(%rax)
.Ll58:
# [144] ar2:=-1/19200;
	movl	_$FMSYNTH$_Ld9(%rip),%edx
	movl	%edx,116(%rax)
.Ll59:
# [145] ar3:=-1/19200;
	movl	_$FMSYNTH$_Ld9(%rip),%edx
	movl	%edx,124(%rax)
.Ll60:
# [146] ar4:=-1/1920000;;
	movl	_$FMSYNTH$_Ld10(%rip),%edx
	movl	%edx,132(%rax)
.Ll61:
# [147] av1:=0.99;
	movl	_$FMSYNTH$_Ld11(%rip),%edx
	movl	%edx,112(%rax)
.Ll62:
# [148] av2:=0.75;
	movl	_$FMSYNTH$_Ld12(%rip),%edx
	movl	%edx,120(%rax)
.Ll63:
# [149] av3:=0.5;
	movl	_$FMSYNTH$_Ld13(%rip),%edx
	movl	%edx,128(%rax)
.Ll64:
# [150] av4:=0;
	movl	_$FMSYNTH$_Ld7(%rip),%edx
	movl	%edx,136(%rax)
.Ll65:
# [151] adsrbias:=0;
	movl	_$FMSYNTH$_Ld7(%rip),%edx
	movl	%edx,140(%rax)
.Ll66:
# [152] vel:=1;
	movl	_$FMSYNTH$_Ld6(%rip),%edx
	movl	%edx,144(%rax)
.Ll67:
# [153] keysense:=1;
	movl	_$FMSYNTH$_Ld6(%rip),%edx
	movl	%edx,148(%rax)
.Ll68:
# [154] expr:=1;
	movl	_$FMSYNTH$_Ld6(%rip),%edx
	movl	%edx,152(%rax)
.Ll69:
# [155] end;
	ret
.Lc17:
.Lt6:
.Ll70:

.section .text.n_fmsynth$_$tfmoperator_$__$$_getsample$$single,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$SINGLE
FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$SINGLE:
.Lc18:
# Var $self located in register rcx
# Var $result located in register xmm0
# Var res64a located in register xmm0
# Var modulator located in register xmm1
# Var i located in register eax
# Var j located in register eax
# Var sample located in register xmm0
# Var freq2 located in register xmm0
# [168] begin
.Ll71:
# [173] freq2:=(freq+(c3*lfo1))*c4*lfo2;
	movss	28(%rcx),%xmm0
	mulss	44(%rcx),%xmm0
	addss	24(%rcx),%xmm0
	mulss	32(%rcx),%xmm0
	mulss	48(%rcx),%xmm0
# Var freq2 located in register xmm0
.Ll72:
	leaq	U_$FMSYNTH_$$_FOUTPUTTABLE(%rip),%rax
.Ll73:
# [178] modulator:=foutputtable[0]*mul0
	movss	(%rax),%xmm2
	mulss	56(%rcx),%xmm2
.Ll74:
# [179] +foutputtable[1]*mul1
	movss	4(%rax),%xmm1
	mulss	60(%rcx),%xmm1
	addss	%xmm2,%xmm1
.Ll75:
# [180] +foutputtable[2]*mul2
	movss	8(%rax),%xmm2
	mulss	64(%rcx),%xmm2
	addss	%xmm1,%xmm2
.Ll76:
# [181] +foutputtable[3]*mul3
	movss	12(%rax),%xmm1
	mulss	68(%rcx),%xmm1
	addss	%xmm2,%xmm1
.Ll77:
# [182] +foutputtable[4]*mul4
	movss	16(%rax),%xmm2
	mulss	72(%rcx),%xmm2
	addss	%xmm1,%xmm2
.Ll78:
# [183] +foutputtable[5]*mul5
	movss	20(%rax),%xmm1
	mulss	76(%rcx),%xmm1
	addss	%xmm2,%xmm1
.Ll79:
# [184] +foutputtable[6]*mul6
	movss	24(%rax),%xmm2
	mulss	80(%rcx),%xmm2
	addss	%xmm1,%xmm2
.Ll80:
# [185] +foutputtable[7]*mul7;
	movss	28(%rax),%xmm1
	mulss	84(%rcx),%xmm1
	addss	%xmm2,%xmm1
# Var modulator located in register xmm1
.Ll81:
# [187] pa:=pa+freq2;
	movss	156(%rcx),%xmm2
	addss	%xmm0,%xmm2
	movss	%xmm2,156(%rcx)
.Ll82:
# [196] if wavemode=0 then
	cmpl	$0,164(%rcx)
	jne	.Lj164
.Ll83:
# [198] if pa>wlength-0.5 then
	cvtsi2ssl	88(%rcx),%xmm0
	subss	_$FMSYNTH$_Ld13(%rip),%xmm0
	comiss	156(%rcx),%xmm0
	jp	.Lj166
	jnb	.Lj166
.Ll84:
# [199] pa:=pa-wlength;
	cvtsi2ssl	88(%rcx),%xmm0
	movss	156(%rcx),%xmm2
	subss	%xmm0,%xmm2
	movss	%xmm2,156(%rcx)
.Lj166:
.Ll85:
# [200] pa2:=pa+modulator;
	movss	156(%rcx),%xmm0
	addss	%xmm1,%xmm0
	movss	%xmm0,160(%rcx)
.Ll86:
# [201] if pa2>wlength-1 then repeat pa2:=pa2-wlength until pa2<=wlength-1;
	movslq	88(%rcx),%rax
	leaq	-1(%rax),%rax
	cvtsi2ss	%rax,%xmm0
	comiss	160(%rcx),%xmm0
	jp	.Lj181
	jnb	.Lj181
	.balign 8,0x90
.Lj175:
	cvtsi2ssl	88(%rcx),%xmm0
	movss	160(%rcx),%xmm2
	subss	%xmm0,%xmm2
	movss	%xmm2,160(%rcx)
	movslq	88(%rcx),%rax
	leaq	-1(%rax),%rax
	cvtsi2ss	%rax,%xmm0
	comiss	160(%rcx),%xmm0
	jp	.Lj175
	jnae	.Lj175
	jmp	.Lj181
.Lj164:
.Ll87:
# [205] if adsrstate<5 then
	cmpl	$5,100(%rcx)
	jnl	.Lj183
.Ll88:
# [207] if pa>wlend-1 then repeat pa:=pa-wlend+wlstart until pa<=wlend;
	movslq	96(%rcx),%rax
	leaq	-1(%rax),%rax
	cvtsi2ss	%rax,%xmm0
	comiss	156(%rcx),%xmm0
	jp	.Lj193
	jnb	.Lj193
	.balign 8,0x90
.Lj187:
	cvtsi2ssl	96(%rcx),%xmm0
	movss	156(%rcx),%xmm2
	subss	%xmm0,%xmm2
	cvtsi2ssl	92(%rcx),%xmm0
	addss	%xmm2,%xmm0
	movss	%xmm0,156(%rcx)
	cvtsi2ssl	96(%rcx),%xmm0
	comiss	156(%rcx),%xmm0
	jp	.Lj187
	jnae	.Lj187
	jmp	.Lj193
.Lj183:
.Ll89:
# [211] if pa>=wlength-1 then pa:=wlength-1;
	movslq	88(%rcx),%rax
	leaq	-1(%rax),%rax
	cvtsi2ss	%rax,%xmm0
	comiss	156(%rcx),%xmm0
	jp	.Lj195
	jnbe	.Lj195
	movslq	88(%rcx),%rax
	leaq	-1(%rax),%rax
	cvtsi2ss	%rax,%xmm0
	movss	%xmm0,156(%rcx)
.Lj195:
.Lj193:
.Ll90:
# [213] pa2:=pa+modulator;
	movss	156(%rcx),%xmm0
	addss	%xmm1,%xmm0
	movss	%xmm0,160(%rcx)
.Ll91:
# [214] if pa2>wlend-1 then repeat pa:=pa-wlend+wlstart until pa<=wlend-1;
	movslq	96(%rcx),%rax
	leaq	-1(%rax),%rax
	cvtsi2ss	%rax,%xmm0
	comiss	160(%rcx),%xmm0
	jp	.Lj202
	jnb	.Lj202
	.balign 8,0x90
.Lj204:
	cvtsi2ssl	96(%rcx),%xmm0
	movss	156(%rcx),%xmm1
	subss	%xmm0,%xmm1
	cvtsi2ssl	92(%rcx),%xmm0
	addss	%xmm1,%xmm0
	movss	%xmm0,156(%rcx)
	movslq	96(%rcx),%rax
	leaq	-1(%rax),%rax
	cvtsi2ss	%rax,%xmm0
	comiss	156(%rcx),%xmm0
	jp	.Lj204
	jnae	.Lj204
.Lj202:
.Lj181:
.Ll92:
# [216] intpa:=round(pa2);
	cvtss2sd	160(%rcx),%xmm0
	cvtsd2siq	%xmm0,%rax
	movl	%eax,168(%rcx)
.Ll93:
# [217] sample:=wptr[intpa];
	movq	8(%rcx),%rdx
	movslq	168(%rcx),%rax
# Var sample located in register xmm1
	movss	(%rdx,%rax,4),%xmm1
.Ll94:
# [224] if adsrstate=5 then  // release
	cmpl	$5,100(%rcx)
	jne	.Lj215
.Ll95:
# [226] adsrval:=adsrval+ar4;
	movss	104(%rcx),%xmm0
	addss	132(%rcx),%xmm0
	movss	%xmm0,104(%rcx)
.Ll96:
# [227] if ar4<0 then begin if adsrval<av4 then adsrstate:=0; end
	movss	132(%rcx),%xmm0
	comiss	_$FMSYNTH$_Ld7(%rip),%xmm0
	jp	.Lj219
	jnb	.Lj219
	movss	104(%rcx),%xmm0
	comiss	136(%rcx),%xmm0
	jp	.Lj232
	jnb	.Lj232
	movl	$0,100(%rcx)
	jmp	.Lj232
.Lj219:
.Ll97:
# [228] else begin if adsrval>av4 then adsrstate:=0; end;
	movss	104(%rcx),%xmm0
	comiss	136(%rcx),%xmm0
	jp	.Lj232
	jna	.Lj232
	movl	$0,100(%rcx)
	jmp	.Lj232
.Lj215:
.Ll98:
# [230] else if adsrstate=3 then  // release
	cmpl	$3,100(%rcx)
	jne	.Lj234
.Ll99:
# [232] adsrval:=adsrval+ar3;
	movss	104(%rcx),%xmm0
	addss	124(%rcx),%xmm0
	movss	%xmm0,104(%rcx)
.Ll100:
# [233] if ar3<0 then begin if adsrval<av3 then adsrstate:=4; end
	movss	124(%rcx),%xmm0
	comiss	_$FMSYNTH$_Ld7(%rip),%xmm0
	jp	.Lj238
	jnb	.Lj238
	movss	104(%rcx),%xmm0
	comiss	128(%rcx),%xmm0
	jp	.Lj251
	jnb	.Lj251
	movl	$4,100(%rcx)
	jmp	.Lj251
.Lj238:
.Ll101:
# [234] else begin if adsrval>av3 then adsrstate:=4; end;
	movss	104(%rcx),%xmm0
	comiss	128(%rcx),%xmm0
	jp	.Lj251
	jna	.Lj251
	movl	$4,100(%rcx)
	jmp	.Lj251
.Lj234:
.Ll102:
# [236] else if adsrstate=2 then  // release
	cmpl	$2,100(%rcx)
	jne	.Lj253
.Ll103:
# [238] adsrval:=adsrval+ar2;
	movss	104(%rcx),%xmm0
	addss	116(%rcx),%xmm0
	movss	%xmm0,104(%rcx)
.Ll104:
# [239] if ar2<0 then begin if adsrval<av2 then adsrstate:=3; end
	movss	116(%rcx),%xmm0
	comiss	_$FMSYNTH$_Ld7(%rip),%xmm0
	jp	.Lj257
	jnb	.Lj257
	movss	104(%rcx),%xmm0
	comiss	120(%rcx),%xmm0
	jp	.Lj270
	jnb	.Lj270
	movl	$3,100(%rcx)
	jmp	.Lj270
.Lj257:
.Ll105:
# [240] else begin if adsrval>av2 then adsrstate:=3;  end;
	movss	104(%rcx),%xmm0
	comiss	120(%rcx),%xmm0
	jp	.Lj270
	jna	.Lj270
	movl	$3,100(%rcx)
	jmp	.Lj270
.Lj253:
.Ll106:
# [242] else if adsrstate=1 then  // release
	cmpl	$1,100(%rcx)
	jne	.Lj272
.Ll107:
# [244] adsrval:=adsrval+ar1;
	movss	104(%rcx),%xmm0
	addss	108(%rcx),%xmm0
	movss	%xmm0,104(%rcx)
.Ll108:
# [245] if ar1<0 then begin if adsrval<av1 then adsrstate:=2; end
	movss	108(%rcx),%xmm0
	comiss	_$FMSYNTH$_Ld7(%rip),%xmm0
	jp	.Lj276
	jnb	.Lj276
	movss	104(%rcx),%xmm0
	comiss	112(%rcx),%xmm0
	jp	.Lj283
	jnb	.Lj283
	movl	$2,100(%rcx)
	jmp	.Lj283
.Lj276:
.Ll109:
# [246] else begin if adsrval>av1 then adsrstate:=2; end;
	movss	104(%rcx),%xmm0
	comiss	112(%rcx),%xmm0
	jp	.Lj285
	jna	.Lj285
	movl	$2,100(%rcx)
.Lj285:
.Lj283:
.Lj272:
.Lj270:
.Lj251:
.Lj232:
.Ll110:
# [249] if adsrstate<>0 then sample:=sample*flogtable[round(65535*((1-adsrbias)*adsrval)+adsrbias)] else sample:=0;
	cmpl	$0,100(%rcx)
	je	.Lj290
.Ll111:
	movss	140(%rcx),%xmm2
.Ll112:
	movss	_$FMSYNTH$_Ld6(%rip),%xmm0
	subss	%xmm2,%xmm0
	mulss	104(%rcx),%xmm0
	mulss	_$FMSYNTH$_Ld14(%rip),%xmm0
	addss	%xmm2,%xmm0
	cvtss2sd	%xmm0,%xmm0
	cvtsd2siq	%xmm0,%rdx
	movaps	%xmm1,%xmm0
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%rax
	mulss	(%rax,%rdx,4),%xmm0
	movaps	%xmm0,%xmm1
	jmp	.Lj295
.Lj290:
	movss	_$FMSYNTH$_Ld7(%rip),%xmm1
.Lj295:
.Ll113:
# [251] sample:=sample*c5*lfo3;
	mulss	36(%rcx),%xmm1
	mulss	52(%rcx),%xmm1
# Var sample located in register xmm1
.Ll114:
	movss	148(%rcx),%xmm2
.Ll115:
# [252] sample:=sample*(1-keysense+vel*keysense);
	movss	_$FMSYNTH$_Ld6(%rip),%xmm3
	subss	%xmm2,%xmm3
	movss	144(%rcx),%xmm0
	mulss	%xmm2,%xmm0
	addss	%xmm3,%xmm0
	mulss	%xmm1,%xmm0
# Var sample located in register xmm0
.Ll116:
# [253] sample:=sample*c6*expr;
	mulss	40(%rcx),%xmm0
	mulss	152(%rcx),%xmm0
# Var sample located in register xmm0
# Var $result located in register xmm0
# Var sample located in register xmm0
.Ll117:
# [264] end;
	ret
.Lc19:
.Lt5:
.Ll118:

.section .text.n_fmsynth_$$_init$,"x"
	.balign 16,0x90
.globl	INIT$_$FMSYNTH
INIT$_$FMSYNTH:
.globl	FMSYNTH_$$_init$
FMSYNTH_$$_init$:
.Lc20:
.seh_proc FMSYNTH_$$_init$
.Ll119:
# [266] initialization
	leaq	-40(%rsp),%rsp
.Lc22:
.seh_stackalloc 40
.seh_endprologue
.Ll120:
# [268] initflogtable;
	call	FMSYNTH_$$_INITFLOGTABLE
.Ll121:
# [270] end.
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc21:
.Lt1:
.Ll122:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 4
# [49] var flogtable:array[0..65535] of single;
	.globl U_$FMSYNTH_$$_FLOGTABLE
U_$FMSYNTH_$$_FLOGTABLE:
	.zero 262144

.section .bss
	.balign 4
# [50] foutputtable:array[0..8191] of single;
	.globl U_$FMSYNTH_$$_FOUTPUTTABLE
U_$FMSYNTH_$$_FOUTPUTTABLE:
	.zero 32768

.section .bss
	.balign 4
# [51] fnotes:array[0..127] of single;
	.globl U_$FMSYNTH_$$_FNOTES
U_$FMSYNTH_$$_FNOTES:
	.zero 512

.section .bss
	.balign 4
# [52] fopdata:array[0..65535] of single;
	.globl U_$FMSYNTH_$$_FOPDATA
U_$FMSYNTH_$$_FOPDATA:
	.zero 262144

.section .bss
	.balign 8
# [53] fmoperator:TFmOperator;
	.globl U_$FMSYNTH_$$_FMOPERATOR
U_$FMSYNTH_$$_FMOPERATOR:
	.zero 8

.section .data.n_VMT_$FMSYNTH_$$_TFMOPERATOR,"d"
	.balign 8
.globl	VMT_$FMSYNTH_$$_TFMOPERATOR
VMT_$FMSYNTH_$$_TFMOPERATOR:
	.quad	176,-176
	.quad	VMT_$SYSTEM_$$_TOBJECT
	.quad	.Ld15
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
# [272] 
	.balign 8
.Ld15:
	.byte	11
	.ascii	"TFmOperator"

.section .data.n_VMT_$FMSYNTH_$$_TFMVOICE,"d"
	.balign 8
.globl	VMT_$FMSYNTH_$$_TFMVOICE
VMT_$FMSYNTH_$$_TFMVOICE:
	.quad	136,-136
	.quad	VMT_$SYSTEM_$$_TOBJECT
	.quad	.Ld16
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
.Ld16:
	.byte	8
	.ascii	"TFmVoice"
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .rodata.n__$FMSYNTH$_Ld1,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld1
_$FMSYNTH$_Ld1:
# value: 0d+1.0000000000000000E+000
	.byte	0,0,0,0,0,0,240,63

.section .rodata.n__$FMSYNTH$_Ld2,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld2
_$FMSYNTH$_Ld2:
# value: 0d+9.9989460157410703E-001
	.byte	206,165,166,246,34,255,239,63

.section .rodata.n__$FMSYNTH$_Ld3,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld3
_$FMSYNTH$_Ld3:
# value: 0d+6.2831853071795862E+000
	.byte	24,45,68,84,251,33,25,64

.section .rodata.n__$FMSYNTH$_Ld4,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld4
_$FMSYNTH$_Ld4:
# value: 0d+1.5258789062500000E-005
	.byte	0,0,0,0,0,0,240,62

.section .rodata.n__$FMSYNTH$_Ld5,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld5
_$FMSYNTH$_Ld5:
# value: 0d+3.413333435E+02
	.byte	171,170,170,67

.section .rodata.n__$FMSYNTH$_Ld6,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld6
_$FMSYNTH$_Ld6:
# value: 0d+1.000000000E+00
	.byte	0,0,128,63

.section .rodata.n__$FMSYNTH$_Ld7,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld7
_$FMSYNTH$_Ld7:
# value: 0d+0.000000000E+00
	.byte	0,0,0,0

.section .rodata.n__$FMSYNTH$_Ld8,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld8
_$FMSYNTH$_Ld8:
# value: 0d+5.208333605E-04
	.byte	137,136,8,58

.section .rodata.n__$FMSYNTH$_Ld9,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld9
_$FMSYNTH$_Ld9:
# value: 0d-5.208333459E-05
	.byte	14,116,90,184

.section .rodata.n__$FMSYNTH$_Ld10,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld10
_$FMSYNTH$_Ld10:
# value: 0d-5.208333391E-07
	.byte	101,207,11,181

.section .rodata.n__$FMSYNTH$_Ld11,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld11
_$FMSYNTH$_Ld11:
# value: 0d+9.900000095E-01
	.byte	164,112,125,63

.section .rodata.n__$FMSYNTH$_Ld12,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld12
_$FMSYNTH$_Ld12:
# value: 0d+7.500000000E-01
	.byte	0,0,64,63

.section .rodata.n__$FMSYNTH$_Ld13,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld13
_$FMSYNTH$_Ld13:
# value: 0d+5.000000000E-01
	.byte	0,0,0,63

.section .rodata.n__$FMSYNTH$_Ld14,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld14
_$FMSYNTH$_Ld14:
# value: 0d+6.553500000E+04
	.byte	0,255,127,71
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .data.n_RTTI_$FMSYNTH_$$_PSINGLESAMPLE,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_PSINGLESAMPLE
RTTI_$FMSYNTH_$$_PSINGLESAMPLE:
	.byte	29,13
	.ascii	"PSinglesample"
	.quad	RTTI_$SYSTEM_$$_SINGLE

.section .data.n_RTTI_$FMSYNTH_$$_PSINGLESTEREOSAMPLE,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_PSINGLESTEREOSAMPLE
RTTI_$FMSYNTH_$$_PSINGLESTEREOSAMPLE:
	.byte	29,19
	.ascii	"PSingleStereosample"
	.quad	RTTI_$SYSTEM_$$_SINGLE

.section .data.n_RTTI_$FMSYNTH_$$_TSINGLESTEREOSAMPLE,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_TSINGLESTEREOSAMPLE
RTTI_$FMSYNTH_$$_TSINGLESTEREOSAMPLE:
	.byte	12
	.ascii	"\023TSingleStereoSample"
	.quad	8,2
	.quad	RTTI_$SYSTEM_$$_SINGLE
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
.Lc23:
	.long	.Lc25-.Lc24
.Lc24:
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
.Lc25:
	.long	.Lc27-.Lc26
.Lc26:
	.secrel32	.Lc23
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.balign 4,0
.Lc27:
	.long	.Lc29-.Lc28
.Lc28:
	.secrel32	.Lc23
	.quad	.Lc3
	.quad	.Lc4-.Lc3
	.balign 4,0
.Lc29:
	.long	.Lc31-.Lc30
.Lc30:
	.secrel32	.Lc23
	.quad	.Lc5
	.quad	.Lc6-.Lc5
	.byte	4
	.long	.Lc7-.Lc5
	.byte	14
	.uleb128	32
	.balign 4,0
.Lc31:
	.long	.Lc33-.Lc32
.Lc32:
	.secrel32	.Lc23
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
.Lc33:
	.long	.Lc35-.Lc34
.Lc34:
	.secrel32	.Lc23
	.quad	.Lc13
	.quad	.Lc14-.Lc13
	.byte	4
	.long	.Lc15-.Lc13
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc35:
	.long	.Lc37-.Lc36
.Lc36:
	.secrel32	.Lc23
	.quad	.Lc16
	.quad	.Lc17-.Lc16
	.balign 4,0
.Lc37:
	.long	.Lc39-.Lc38
.Lc38:
	.secrel32	.Lc23
	.quad	.Lc18
	.quad	.Lc19-.Lc18
	.balign 4,0
.Lc39:
	.long	.Lc41-.Lc40
.Lc40:
	.secrel32	.Lc23
	.quad	.Lc20
	.quad	.Lc21-.Lc20
	.byte	4
	.long	.Lc22-.Lc20
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc41:
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
	.ascii	"Free Pascal 3.0.4 2018/02/25\000"
	.ascii	"D:/programowanie/20180824 retro-fm/\000"
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
# Symbol FOPDATA
	.uleb128	2
	.ascii	"FOPDATA\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FOPDATA
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
	.long	.La25-.Ldebug_info0
# Symbol Q2
	.uleb128	4
	.ascii	"Q2\000"
	.byte	2
	.byte	144
	.uleb128	19
	.long	.La25-.Ldebug_info0
	.byte	0
# Procdef operator :=(<var TSingleStereoSample>;LongInt):Array[0..1] Of Single;
	.uleb128	5
	.ascii	"assign\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La7-.Ldebug_info0
	.quad	FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
	.quad	.Lt3
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
# Procdef operator *(<var TSingleStereoSample>;TSingleStereoSample;Single):Array[0..1] Of Single;
	.uleb128	5
	.ascii	"star\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La7-.Ldebug_info0
	.quad	FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
	.quad	.Lt4
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
	.long	.La3-.Ldebug_info0
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
.La3:
	.uleb128	7
	.ascii	"SINGLE\000"
	.long	.La28-.Ldebug_info0
.La28:
	.uleb128	8
	.ascii	"SINGLE\000"
	.byte	4
	.byte	4
.La4:
	.uleb128	9
	.long	.La3-.Ldebug_info0
# Definition Double
.La25:
	.uleb128	7
	.ascii	"DOUBLE\000"
	.long	.La29-.Ldebug_info0
.La29:
	.uleb128	8
	.ascii	"DOUBLE\000"
	.byte	4
	.byte	8
.La26:
	.uleb128	9
	.long	.La25-.Ldebug_info0
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
	.uleb128	8
	.long	.La3-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	1
	.uleb128	4
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
	.uleb128	176
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
	.uleb128	24
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"C3\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"C4\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"C5\000"
	.byte	2
	.byte	35
	.uleb128	36
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
	.uleb128	44
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"LFO2\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"LFO3\000"
	.byte	2
	.byte	35
	.uleb128	52
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"MUL0\000"
	.byte	2
	.byte	35
	.uleb128	56
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"MUL1\000"
	.byte	2
	.byte	35
	.uleb128	60
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"MUL2\000"
	.byte	2
	.byte	35
	.uleb128	64
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"MUL3\000"
	.byte	2
	.byte	35
	.uleb128	68
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"MUL4\000"
	.byte	2
	.byte	35
	.uleb128	72
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"MUL5\000"
	.byte	2
	.byte	35
	.uleb128	76
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"MUL6\000"
	.byte	2
	.byte	35
	.uleb128	80
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"MUL7\000"
	.byte	2
	.byte	35
	.uleb128	84
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"WPTR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	15
	.ascii	"WLENGTH\000"
	.byte	2
	.byte	35
	.uleb128	88
	.long	.La23-.Ldebug_info0
	.uleb128	15
	.ascii	"WLSTART\000"
	.byte	2
	.byte	35
	.uleb128	92
	.long	.La23-.Ldebug_info0
	.uleb128	15
	.ascii	"WLEND\000"
	.byte	2
	.byte	35
	.uleb128	96
	.long	.La23-.Ldebug_info0
	.uleb128	15
	.ascii	"ADSRSTATE\000"
	.byte	2
	.byte	35
	.uleb128	100
	.long	.La23-.Ldebug_info0
	.uleb128	15
	.ascii	"ADSRVAL\000"
	.byte	2
	.byte	35
	.uleb128	104
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"AR1\000"
	.byte	2
	.byte	35
	.uleb128	108
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"AV1\000"
	.byte	2
	.byte	35
	.uleb128	112
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"AR2\000"
	.byte	2
	.byte	35
	.uleb128	116
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"AV2\000"
	.byte	2
	.byte	35
	.uleb128	120
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"AR3\000"
	.byte	2
	.byte	35
	.uleb128	124
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"AV3\000"
	.byte	3
	.byte	35
	.uleb128	128
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"AR4\000"
	.byte	3
	.byte	35
	.uleb128	132
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"AV4\000"
	.byte	3
	.byte	35
	.uleb128	136
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"ADSRBIAS\000"
	.byte	3
	.byte	35
	.uleb128	140
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"VEL\000"
	.byte	3
	.byte	35
	.uleb128	144
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"KEYSENSE\000"
	.byte	3
	.byte	35
	.uleb128	148
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"EXPR\000"
	.byte	3
	.byte	35
	.uleb128	152
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"PA\000"
	.byte	3
	.byte	35
	.uleb128	156
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"PA2\000"
	.byte	3
	.byte	35
	.uleb128	160
	.long	.La3-.Ldebug_info0
	.uleb128	15
	.ascii	"WAVEMODE\000"
	.byte	3
	.byte	35
	.uleb128	164
	.long	.La23-.Ldebug_info0
	.uleb128	15
	.ascii	"INTPA\000"
	.byte	3
	.byte	35
	.uleb128	168
	.long	.La23-.Ldebug_info0
	.uleb128	15
	.ascii	"OUTPUTTABLE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La1-.Ldebug_info0
# Procdef getsample(<TFmOperator>):Single;
	.uleb128	5
	.ascii	"GETSAMPLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La3-.Ldebug_info0
	.quad	FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$SINGLE
	.quad	.Lt5
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
	.quad	.Lt6
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
	.quad	.Lt7
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
	.uleb128	4
	.ascii	"Q\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La3-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-48
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef destructor destroy(<TFmOperator>;<Pointer>);
	.uleb128	3
	.ascii	"DESTROY\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
	.quad	.Lt8
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
	.uleb128	136
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
	.ascii	"OUTPTMULS\000"
	.byte	2
	.byte	35
	.uleb128	104
	.long	.La46-.Ldebug_info0
	.byte	0
.La13:
	.uleb128	9
	.long	.La12-.Ldebug_info0
# Definition Array[0..65535] Of Single
.La15:
	.uleb128	17
	.uleb128	262144
	.long	.La3-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	65535
	.uleb128	4
	.long	.La48-.Ldebug_info0
	.byte	0
.La16:
	.uleb128	9
	.long	.La15-.Ldebug_info0
# Definition Array[0..8191] Of Single
.La17:
	.uleb128	17
	.uleb128	32768
	.long	.La3-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	8191
	.uleb128	4
	.long	.La50-.Ldebug_info0
	.byte	0
.La18:
	.uleb128	9
	.long	.La17-.Ldebug_info0
# Definition Array[0..127] Of Single
.La19:
	.uleb128	17
	.uleb128	512
	.long	.La3-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	127
	.uleb128	4
	.long	.La33-.Ldebug_info0
	.byte	0
.La20:
	.uleb128	9
	.long	.La19-.Ldebug_info0
# Definition Array[0..65535] Of Single
.La21:
	.uleb128	17
	.uleb128	262144
	.long	.La3-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	65535
	.uleb128	4
	.long	.La48-.Ldebug_info0
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
# Definition TFmVoice.Array[0..7] Of Single
.La44:
	.uleb128	17
	.uleb128	32
	.long	.La3-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	7
	.uleb128	4
	.long	.La33-.Ldebug_info0
	.byte	0
.La45:
	.uleb128	9
	.long	.La44-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of Single
.La46:
	.uleb128	17
	.uleb128	32
	.long	.La3-.Ldebug_info0
	.uleb128	12
	.sleb128	0
	.sleb128	7
	.uleb128	4
	.long	.La33-.Ldebug_info0
	.byte	0
.La47:
	.uleb128	9
	.long	.La46-.Ldebug_info0
# Definition Word
.La48:
	.uleb128	7
	.ascii	"WORD\000"
	.long	.La109-.Ldebug_info0
.La109:
	.uleb128	8
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La49:
	.uleb128	9
	.long	.La48-.Ldebug_info0
# Definition SmallInt
.La50:
	.uleb128	7
	.ascii	"SMALLINT\000"
	.long	.La110-.Ldebug_info0
.La110:
	.uleb128	8
	.ascii	"SMALLINT\000"
	.byte	5
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
	.long	.La48-.Ldebug_info0
	.uleb128	15
	.ascii	"DATA3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La48-.Ldebug_info0
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
	.long	.La48-.Ldebug_info0
	.uleb128	15
	.ascii	"D3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La48-.Ldebug_info0
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
	.long	.La48-.Ldebug_info0
	.uleb128	15
	.ascii	"TIME_HI_AND_VERSION\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La48-.Ldebug_info0
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
# function: FMSYNTH_$$_INITFLOGTABLE
# [70:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	81
# [72:1]
	.byte	2
	.uleb128	.Ll2-.Ll1
	.byte	14
# [73:1]
	.byte	2
	.uleb128	.Ll3-.Ll2
	.byte	13
# [75:13]
	.byte	2
	.uleb128	.Ll4-.Ll3
	.byte	5
	.uleb128	13
	.byte	14
# [76:7]
	.byte	2
	.uleb128	.Ll5-.Ll4
	.byte	5
	.uleb128	7
	.byte	13
# [73:1]
	.byte	2
	.uleb128	.Ll6-.Ll5
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-3
	.byte	1
# [78:1]
	.byte	2
	.uleb128	.Ll7-.Ll6
	.byte	17
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll8
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
# [82:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll9
	.byte	5
	.uleb128	1
	.byte	93
# [83:12]
	.byte	2
	.uleb128	.Ll10-.Ll9
	.byte	5
	.uleb128	12
	.byte	13
# [84:12]
	.byte	2
	.uleb128	.Ll11-.Ll10
	.byte	13
# [85:1]
	.byte	2
	.uleb128	.Ll12-.Ll11
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll13
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
# [89:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll14
	.byte	5
	.uleb128	1
	.byte	100
# [90:16]
	.byte	2
	.uleb128	.Ll15-.Ll14
	.byte	5
	.uleb128	16
	.byte	13
# [91:16]
	.byte	2
	.uleb128	.Ll16-.Ll15
	.byte	13
# [92:1]
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
# function: FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
# [99:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll19
	.byte	5
	.uleb128	1
	.byte	110
# [99:1]
	.byte	2
	.uleb128	.Ll20-.Ll19
	.byte	1
# [112:1]
	.byte	2
	.uleb128	.Ll21-.Ll20
	.byte	25
# [100:1]
	.byte	2
	.uleb128	.Ll22-.Ll21
	.byte	3
	.sleb128	-12
	.byte	1
# [101:8]
	.byte	2
	.uleb128	.Ll23-.Ll22
	.byte	5
	.uleb128	8
	.byte	13
# [103:9]
	.byte	2
	.uleb128	.Ll24-.Ll23
	.byte	5
	.uleb128	9
	.byte	14
# [104:3]
	.byte	2
	.uleb128	.Ll25-.Ll24
	.byte	5
	.uleb128	3
	.byte	13
# [106:17]
	.byte	2
	.uleb128	.Ll26-.Ll25
	.byte	5
	.uleb128	17
	.byte	14
# [107:5]
	.byte	2
	.uleb128	.Ll27-.Ll26
	.byte	5
	.uleb128	5
	.byte	13
# [104:3]
	.byte	2
	.uleb128	.Ll28-.Ll27
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-3
	.byte	1
# [109:3]
	.byte	2
	.uleb128	.Ll29-.Ll28
	.byte	17
# [112:1]
	.byte	2
	.uleb128	.Ll30-.Ll29
	.byte	5
	.uleb128	1
	.byte	15
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll31
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
# [116:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll32
	.byte	5
	.uleb128	1
	.byte	127
# [116:1]
	.byte	2
	.uleb128	.Ll33-.Ll32
	.byte	1
# [117:1]
	.byte	2
	.uleb128	.Ll34-.Ll33
	.byte	13
# [118:1]
	.byte	2
	.uleb128	.Ll35-.Ll34
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll36
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_INIT
# [122:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll37
	.byte	5
	.uleb128	1
	.byte	133
# [124:1]
	.byte	2
	.uleb128	.Ll38-.Ll37
	.byte	14
# [125:1]
	.byte	2
	.uleb128	.Ll39-.Ll38
	.byte	13
# [126:1]
	.byte	2
	.uleb128	.Ll40-.Ll39
	.byte	13
# [127:1]
	.byte	2
	.uleb128	.Ll41-.Ll40
	.byte	13
# [128:1]
	.byte	2
	.uleb128	.Ll42-.Ll41
	.byte	13
# [129:1]
	.byte	2
	.uleb128	.Ll43-.Ll42
	.byte	13
# [130:1]
	.byte	2
	.uleb128	.Ll44-.Ll43
	.byte	13
# [131:1]
	.byte	2
	.uleb128	.Ll45-.Ll44
	.byte	13
# [132:1]
	.byte	2
	.uleb128	.Ll46-.Ll45
	.byte	13
# [133:1]
	.byte	2
	.uleb128	.Ll47-.Ll46
	.byte	13
# [134:1]
	.byte	2
	.uleb128	.Ll48-.Ll47
	.byte	13
# [135:1]
	.byte	2
	.uleb128	.Ll49-.Ll48
	.byte	13
# [136:1]
	.byte	2
	.uleb128	.Ll50-.Ll49
	.byte	13
# [137:1]
	.byte	2
	.uleb128	.Ll51-.Ll50
	.byte	13
# [138:1]
	.byte	2
	.uleb128	.Ll52-.Ll51
	.byte	13
# [139:1]
	.byte	2
	.uleb128	.Ll53-.Ll52
	.byte	13
# [140:1]
	.byte	2
	.uleb128	.Ll54-.Ll53
	.byte	13
# [141:1]
	.byte	2
	.uleb128	.Ll55-.Ll54
	.byte	13
# [142:1]
	.byte	2
	.uleb128	.Ll56-.Ll55
	.byte	13
# [143:1]
	.byte	2
	.uleb128	.Ll57-.Ll56
	.byte	13
# [144:1]
	.byte	2
	.uleb128	.Ll58-.Ll57
	.byte	13
# [145:1]
	.byte	2
	.uleb128	.Ll59-.Ll58
	.byte	13
# [146:1]
	.byte	2
	.uleb128	.Ll60-.Ll59
	.byte	13
# [147:1]
	.byte	2
	.uleb128	.Ll61-.Ll60
	.byte	13
# [148:1]
	.byte	2
	.uleb128	.Ll62-.Ll61
	.byte	13
# [149:1]
	.byte	2
	.uleb128	.Ll63-.Ll62
	.byte	13
# [150:1]
	.byte	2
	.uleb128	.Ll64-.Ll63
	.byte	13
# [151:1]
	.byte	2
	.uleb128	.Ll65-.Ll64
	.byte	13
# [152:1]
	.byte	2
	.uleb128	.Ll66-.Ll65
	.byte	13
# [153:1]
	.byte	2
	.uleb128	.Ll67-.Ll66
	.byte	13
# [154:1]
	.byte	2
	.uleb128	.Ll68-.Ll67
	.byte	13
# [155:1]
	.byte	2
	.uleb128	.Ll69-.Ll68
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll70
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$SINGLE
# [173:14]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll71
	.byte	5
	.uleb128	14
	.byte	184
# [168:1]
	.byte	2
	.uleb128	.Ll72-.Ll71
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-5
	.byte	1
# [178:27]
	.byte	2
	.uleb128	.Ll73-.Ll72
	.byte	5
	.uleb128	27
	.byte	22
# [179:17]
	.byte	2
	.uleb128	.Ll74-.Ll73
	.byte	5
	.uleb128	17
	.byte	13
# [180:17]
	.byte	2
	.uleb128	.Ll75-.Ll74
	.byte	13
# [181:17]
	.byte	2
	.uleb128	.Ll76-.Ll75
	.byte	13
# [182:17]
	.byte	2
	.uleb128	.Ll77-.Ll76
	.byte	13
# [183:17]
	.byte	2
	.uleb128	.Ll78-.Ll77
	.byte	13
# [184:17]
	.byte	2
	.uleb128	.Ll79-.Ll78
	.byte	13
# [185:17]
	.byte	2
	.uleb128	.Ll80-.Ll79
	.byte	13
# [187:7]
	.byte	2
	.uleb128	.Ll81-.Ll80
	.byte	5
	.uleb128	7
	.byte	14
# [196:12]
	.byte	2
	.uleb128	.Ll82-.Ll81
	.byte	5
	.uleb128	12
	.byte	21
# [198:9]
	.byte	2
	.uleb128	.Ll83-.Ll82
	.byte	5
	.uleb128	9
	.byte	14
# [199:13]
	.byte	2
	.uleb128	.Ll84-.Ll83
	.byte	5
	.uleb128	13
	.byte	13
# [200:10]
	.byte	2
	.uleb128	.Ll85-.Ll84
	.byte	5
	.uleb128	10
	.byte	13
# [201:10]
	.byte	2
	.uleb128	.Ll86-.Ll85
	.byte	13
# [205:15]
	.byte	2
	.uleb128	.Ll87-.Ll86
	.byte	5
	.uleb128	15
	.byte	16
# [207:11]
	.byte	2
	.uleb128	.Ll88-.Ll87
	.byte	5
	.uleb128	11
	.byte	14
# [211:12]
	.byte	2
	.uleb128	.Ll89-.Ll88
	.byte	5
	.uleb128	12
	.byte	16
# [213:10]
	.byte	2
	.uleb128	.Ll90-.Ll89
	.byte	5
	.uleb128	10
	.byte	14
# [214:10]
	.byte	2
	.uleb128	.Ll91-.Ll90
	.byte	13
# [216:17]
	.byte	2
	.uleb128	.Ll92-.Ll91
	.byte	5
	.uleb128	17
	.byte	14
# [217:9]
	.byte	2
	.uleb128	.Ll93-.Ll92
	.byte	5
	.uleb128	9
	.byte	13
# [224:13]
	.byte	2
	.uleb128	.Ll94-.Ll93
	.byte	5
	.uleb128	13
	.byte	19
# [226:19]
	.byte	2
	.uleb128	.Ll95-.Ll94
	.byte	5
	.uleb128	19
	.byte	14
# [227:9]
	.byte	2
	.uleb128	.Ll96-.Ll95
	.byte	5
	.uleb128	9
	.byte	13
# [228:31]
	.byte	2
	.uleb128	.Ll97-.Ll96
	.byte	5
	.uleb128	31
	.byte	13
# [230:18]
	.byte	2
	.uleb128	.Ll98-.Ll97
	.byte	5
	.uleb128	18
	.byte	14
# [232:19]
	.byte	2
	.uleb128	.Ll99-.Ll98
	.byte	5
	.uleb128	19
	.byte	14
# [233:9]
	.byte	2
	.uleb128	.Ll100-.Ll99
	.byte	5
	.uleb128	9
	.byte	13
# [234:31]
	.byte	2
	.uleb128	.Ll101-.Ll100
	.byte	5
	.uleb128	31
	.byte	13
# [236:18]
	.byte	2
	.uleb128	.Ll102-.Ll101
	.byte	5
	.uleb128	18
	.byte	14
# [238:19]
	.byte	2
	.uleb128	.Ll103-.Ll102
	.byte	5
	.uleb128	19
	.byte	14
# [239:9]
	.byte	2
	.uleb128	.Ll104-.Ll103
	.byte	5
	.uleb128	9
	.byte	13
# [240:31]
	.byte	2
	.uleb128	.Ll105-.Ll104
	.byte	5
	.uleb128	31
	.byte	13
# [242:18]
	.byte	2
	.uleb128	.Ll106-.Ll105
	.byte	5
	.uleb128	18
	.byte	14
# [244:19]
	.byte	2
	.uleb128	.Ll107-.Ll106
	.byte	5
	.uleb128	19
	.byte	14
# [245:9]
	.byte	2
	.uleb128	.Ll108-.Ll107
	.byte	5
	.uleb128	9
	.byte	13
# [246:31]
	.byte	2
	.uleb128	.Ll109-.Ll108
	.byte	5
	.uleb128	31
	.byte	13
# [249:13]
	.byte	2
	.uleb128	.Ll110-.Ll109
	.byte	5
	.uleb128	13
	.byte	15
# [168:1]
	.byte	2
	.uleb128	.Ll111-.Ll110
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-81
	.byte	1
# [249:60]
	.byte	2
	.uleb128	.Ll112-.Ll111
	.byte	5
	.uleb128	60
	.byte	93
# [251:15]
	.byte	2
	.uleb128	.Ll113-.Ll112
	.byte	5
	.uleb128	15
	.byte	14
# [168:1]
	.byte	2
	.uleb128	.Ll114-.Ll113
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-83
	.byte	1
# [252:18]
	.byte	2
	.uleb128	.Ll115-.Ll114
	.byte	5
	.uleb128	18
	.byte	96
# [253:15]
	.byte	2
	.uleb128	.Ll116-.Ll115
	.byte	5
	.uleb128	15
	.byte	13
# [264:1]
	.byte	2
	.uleb128	.Ll117-.Ll116
	.byte	5
	.uleb128	1
	.byte	23
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll118
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: INIT$_$FMSYNTH
# function: FMSYNTH_$$_init$
# [266:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll119
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	265
	.byte	1
# [268:1]
	.byte	2
	.uleb128	.Ll120-.Ll119
	.byte	14
# [270:1]
	.byte	2
	.uleb128	.Ll121-.Ll120
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll122
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

