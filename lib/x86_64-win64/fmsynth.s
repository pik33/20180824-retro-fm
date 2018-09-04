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

.section .text.n_fmsynth_$$_initvoices,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITVOICES
FMSYNTH_$$_INITVOICES:
.Lc1:
.seh_proc FMSYNTH_$$_INITVOICES
.Ll1:
# [fmsynth.pas]
# [84] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc3:
.seh_stackalloc 32
# Var i located in register ebx
.seh_endprologue
# Var i located in register ebx
.Ll2:
# [85] for i:=0 to 31 do
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj7:
	addl	$1,%ebx
.Ll3:
# [86] voices[i]:=TFmVoice.create;
	leaq	VMT_$FMSYNTH_$$_TFMVOICE(%rip),%rcx
	movq	$1,%rdx
	call	FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
# PeepHole Optimization,var2a
	movl	%ebx,%edx
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rcx
	movq	%rax,(%rcx,%rdx,8)
.Ll4:
	cmpl	$31,%ebx
	jl	.Lj7
.Ll5:
# [87] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc2:
.Lt1:
.Ll6:

.section .text.n_fmsynth$_$tfmvoice_$__$$_create$$tfmvoice,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE:
.Lc4:
.seh_proc FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
.Ll7:
# [93] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc6:
.Lc7:
	movq	%rsp,%rbp
.Lc8:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var $vmt located at rbp-8, size=OS_64
# Var $self located at rbp-16, size=OS_64
# Var i located at rbp-24, size=OS_S32
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
.Ll8:
	cmpq	$1,-8(%rbp)
	jne	.Lj17
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-16(%rbp)
.Lj17:
	cmpq	$0,-16(%rbp)
	je	.Lj14
.Lj29:
.Ll9:
# [107] end;
	nop
.Lj28:
.Ll10:
# [94] for i:=0 to 7 do operators[i]:=TFmOperator.create(0,@outputs);
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj33:
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
	jl	.Lj33
.Ll11:
# [95] for i:=0 to 7 do operators[i].init;
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj46:
	addl	$1,-24(%rbp)
	movq	-16(%rbp),%rax
	movl	-24(%rbp),%edx
	movq	8(%rax,%rdx,8),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_INIT
	cmpl	$7,-24(%rbp)
	jl	.Lj46
.Ll12:
# [96] for i:=0 to 7 do operators[i].outputtable:=@outputs;
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj51:
	addl	$1,-24(%rbp)
.Ll13:
	movq	-16(%rbp),%rdx
.Ll14:
	movl	-24(%rbp),%eax
	movq	8(%rdx,%rax,8),%rcx
	leaq	72(%rdx),%rax
	movq	%rax,312(%rcx)
	cmpl	$7,-24(%rbp)
	jl	.Lj51
.Ll15:
# [97] outmuls[0]:=1;
	movq	-16(%rbp),%rax
	movl	_$FMSYNTH$_Ld1(%rip),%edx
	movl	%edx,136(%rax)
.Ll16:
# [98] for i:=1 to 7 do outmuls[i]:=0;
	movl	$1,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj60:
	addl	$1,-24(%rbp)
	movq	-16(%rbp),%rdx
	movl	-24(%rbp),%ecx
	movl	_$FMSYNTH$_Ld2(%rip),%eax
	movl	%eax,136(%rdx,%rcx,4)
	cmpl	$7,-24(%rbp)
	jl	.Lj60
.Ll17:
# [103] operators[0].mul1:=16384;
	movq	-16(%rbp),%rax
	movq	8(%rax),%rax
	movq	_$FMSYNTH$_Ld3(%rip),%rdx
	movq	%rdx,80(%rax)
.Ll18:
# [104] operators[1].mul1:=10000;
	movq	-16(%rbp),%rax
	movq	16(%rax),%rax
	movq	_$FMSYNTH$_Ld4(%rip),%rdx
	movq	%rdx,80(%rax)
.Ll19:
# [105] operators[0].freq:=150; //440*(65536/192000);  ;
	movq	-16(%rbp),%rax
	movq	8(%rax),%rax
	movq	_$FMSYNTH$_Ld5(%rip),%rdx
	movq	%rdx,8(%rax)
.Ll20:
# [106] operators[1].freq:=300; //2*testvoice.operators[0].freq  ;
	movq	-16(%rbp),%rax
	movq	16(%rax),%rdx
	movq	_$FMSYNTH$_Ld6(%rip),%rax
	movq	%rax,8(%rdx)
.Ll21:
	cmpq	$0,-16(%rbp)
	je	.Lj26
	cmpq	$0,-8(%rbp)
	je	.Lj26
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*136(%rax)
	jmp	.Lj26
.Lj25:
	cmpq	$0,-8(%rbp)
	je	.Lj77
	movq	-16(%rbp),%rcx
	movq	$-1,%rdx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
.Lj77:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj82:
	nop
.Lj26:
.Lj14:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj28
	.rva	.Lj25
	.rva	.Lj26

.section .text.n_fmsynth$_$tfmvoice_$__$$_create$$tfmvoice,"x"
.seh_endproc
.Lc5:
.Lt13:
.Ll22:

.section .text.n_fmsynth$_$tfmvoice_$__$$_getsample$$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE:
.Lc9:
.seh_proc FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
.Ll23:
# [115] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc11:
.seh_stackalloc 40
# Var $self located in register rbx
# Var $result located in register xmm0
# Var i located in register edx
# Var j located in register eax
# Var output located in register xmm0
.seh_endprologue
	movq	%rcx,%rbx
# Var i located in register esi
.Ll24:
# [116] for i:=0 to 7 do
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj87:
	addl	$1,%esi
# PeepHole Optimization,var2a
.Ll25:
# [117] outputs[i]:=operators[i].getsample;
	movl	%esi,%eax
	movq	8(%rbx,%rax,8),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
# PeepHole Optimization,var2a
	movl	%esi,%eax
	movsd	%xmm0,72(%rbx,%rax,8)
.Ll26:
	cmpl	$7,%esi
	jl	.Lj87
# Var output located in register xmm0
.Ll27:
# [118] output:=0;
	movsd	_$FMSYNTH$_Ld7(%rip),%xmm0
# Var i located in register edx
.Ll28:
# [119] for i:=0 to 7 do output+=outmuls[i]*outputs[i];
	movl	$0,%edx
	subl	$1,%edx
	.balign 8,0x90
.Lj96:
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
	jl	.Lj96
# Var $result located in register xmm0
# Var output located in register xmm0
.Ll29:
# [121] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc10:
.Lt14:
.Ll30:

.section .text.n_fmsynth_$$_initflogtable,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITFLOGTABLE
FMSYNTH_$$_INITFLOGTABLE:
.Lc12:
# Var i located in register edx
# Var q located in register xmm1
# Var q2 located in register xmm2
# [131] begin
# Var q located in register xmm1
.Ll31:
# [132] q:=1;
	movsd	_$FMSYNTH$_Ld8(%rip),%xmm1
# Var q2 located in register xmm2
.Ll32:
# [134] q2:= 0.99989460157410704627595119007091;
	movsd	_$FMSYNTH$_Ld9(%rip),%xmm2
# Var i located in register edx
.Ll33:
# [135] for i:=65540 downto 0 do
	movl	$65540,%edx
	addl	$1,%edx
	.balign 8,0x90
.Lj109:
	subl	$1,%edx
.Ll34:
# [137] if i>65535 then flogtable[i]:=1
	cmpl	$65535,%edx
	jng	.Lj111
# PeepHole Optimization,var2a
	movl	%edx,%eax
	movq	_$FMSYNTH$_Ld8(%rip),%rcx
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%r8
	movq	%rcx,(%r8,%rax,8)
	jmp	.Lj114
.Lj111:
# PeepHole Optimization,var2a
.Ll35:
# [140] flogtable[i]:=q;
	movl	%edx,%eax
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%rcx
	movsd	%xmm1,(%rcx,%rax,8)
.Ll36:
# [141] q:=q*q2;
	movapd	%xmm1,%xmm0
	mulsd	%xmm2,%xmm0
	movapd	%xmm0,%xmm1
.Lj114:
.Ll37:
	testl	%edx,%edx
	jg	.Lj109
.Ll38:
# [144] flogtable[0]:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rax
	movq	%rax,U_$FMSYNTH_$$_FLOGTABLE(%rip)
.Ll39:
# [145] end;
	ret
.Lc13:
.Lt3:
.Ll40:

.section .text.n_fmsynth_$$_initfsinetable,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITFSINETABLE
FMSYNTH_$$_INITFSINETABLE:
.Lc14:
.seh_proc FMSYNTH_$$_INITFSINETABLE
.Ll41:
# [152] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc16:
.seh_stackalloc 32
# Var i located in register ebx
.seh_endprologue
# Var i located in register ebx
.Ll42:
# [153] for i:=-655360 to 655360 do fsinetable[i]:=sin(2*pi*i/1024);
	movl	$-655360,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj125:
	addl	$1,%ebx
	cvtsi2sd	%ebx,%xmm0
	mulsd	_$FMSYNTH$_Ld10(%rip),%xmm0
	mulsd	_$FMSYNTH$_Ld11(%rip),%xmm0
	call	fpc_sin_real
	movslq	%ebx,%rax
	leaq	U_$FMSYNTH_$$_FSINETABLE(%rip),%rdx
	movsd	%xmm0,5242880(%rdx,%rax,8)
	cmpl	$655360,%ebx
	jl	.Lj125
.Ll43:
# [154] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc15:
.Lt4:
.Ll44:

.section .text.n_fmsynth_$$_assign$longint$$tsinglestereosample,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE:
.Lc17:
# Var b located in register edx
# Var $result located in register rax
.Ll45:
# [158] begin
	movq	%rcx,%rax
.Ll46:
# [159] result[0]:=b;
	cvtsi2sd	%edx,%xmm0
	movsd	%xmm0,(%rax)
.Ll47:
# [160] result[1]:=b;
	cvtsi2sd	%edx,%xmm0
	movsd	%xmm0,8(%rax)
.Ll48:
# [161] end;
	ret
.Lc18:
.Lt5:
.Ll49:

.section .text.n_fmsynth_$$_star$tsinglestereosample$single$$tsinglestereosample,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE:
.Lc19:
# Temps allocated between rsp+8 and rsp+24
.seh_proc FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
.Ll50:
# [165] begin
	leaq	-24(%rsp),%rsp
.Lc21:
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
.Ll51:
# [166] result[0]:=a[0]*b;
	cvtss2sd	%xmm0,%xmm1
	mulsd	8(%rsp),%xmm1
	movsd	%xmm1,(%rax)
.Ll52:
# [167] result[1]:=a[1]*b;
	cvtss2sd	%xmm0,%xmm0
	mulsd	16(%rsp),%xmm0
	movsd	%xmm0,8(%rax)
.Ll53:
# [168] end;
	leaq	24(%rsp),%rsp
	ret
.seh_endproc
.Lc20:
.Lt6:
.Ll54:

.section .text.n_fmsynth$_$tfmoperator_$__$$_create$longint$pointer$$tfmoperator,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR:
.Lc22:
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
.Ll55:
# [175] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc24:
.Lc25:
	movq	%rsp,%rbp
.Lc26:
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
.Ll56:
	cmpq	$1,-24(%rbp)
	jne	.Lj145
	movq	-32(%rbp),%rax
	movq	-32(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-32(%rbp)
.Lj145:
	cmpq	$0,-32(%rbp)
	je	.Lj142
.Lj157:
.Ll57:
# [192] end;
	nop
.Lj156:
.Ll58:
# [176] outputtable:=outs;
	movq	-32(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rdx,312(%rax)
.Ll59:
# [177] if mode=0 then wptr:=@fsinetable;
	cmpl	$0,-8(%rbp)
	jne	.Lj162
	movq	-32(%rbp),%rax
	leaq	U_$FMSYNTH_$$_FSINETABLE(%rip),%rdx
	movq	%rdx,136(%rax)
.Lj162:
.Ll60:
# [189] wlength:=1024;
	movq	-32(%rbp),%rdx
	movq	_$FMSYNTH$_Ld12(%rip),%rax
	movq	%rax,144(%rdx)
.Ll61:
	cmpq	$0,-32(%rbp)
	je	.Lj154
	cmpq	$0,-24(%rbp)
	je	.Lj154
	movq	-32(%rbp),%rcx
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	call	*136(%rax)
	jmp	.Lj154
.Lj153:
	cmpq	$0,-24(%rbp)
	je	.Lj173
	movq	-32(%rbp),%rcx
	movq	$-1,%rdx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
.Lj173:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj178:
	nop
.Lj154:
.Lj142:
	movq	-32(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj156
	.rva	.Lj153
	.rva	.Lj154

.section .text.n_fmsynth$_$tfmoperator_$__$$_create$longint$pointer$$tfmoperator,"x"
.seh_endproc
.Lc23:
.Lt11:
.Ll62:

.section .text.n_fmsynth$_$tfmoperator_$__$$_destroy,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY:
.Lc27:
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
.Ll63:
# [196] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc29:
.seh_stackalloc 40
# Var $vmt located in register rsi
# Var $self located in register rbx
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
.Ll64:
	cmpq	$0,%rsi
	jng	.Lj182
	movq	%rbx,%rcx
	movq	%rbx,%rax
	movq	(%rax),%rax
	call	*144(%rax)
.Lj182:
.Ll65:
# [197] freemem(wptr);
	movq	136(%rbx),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
.Ll66:
# [198] end;
	testq	%rbx,%rbx
	je	.Lj188
	testq	%rsi,%rsi
	je	.Lj188
	movq	%rbx,%rcx
	movq	%rbx,%rax
	movq	(%rax),%rax
	call	*112(%rax)
.Lj188:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc28:
.Lt12:
.Ll67:

.section .text.n_fmsynth$_$tfmvoice_$__$$_setfreq$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE
FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE:
.Lc30:
.seh_proc FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE
.Ll68:
# [204] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-56(%rsp),%rsp
.Lc32:
.seh_stackalloc 56
	movdqa	%xmm6,32(%rsp)
# Var afreq located in register xmm6
# Var $self located in register rbx
# Var i located in register esi
.seh_savexmm %xmm6, 32
.seh_endprologue
	movq	%rcx,%rbx
	movapd	%xmm1,%xmm6
# Var i located in register esi
.Ll69:
# [205] for i:=0 to 7 do operators[i].setfreq(afreq);
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj196:
	addl	$1,%esi
# PeepHole Optimization,var2a
	movl	%esi,%eax
	movq	8(%rbx,%rax,8),%rcx
	movapd	%xmm6,%xmm1
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
	cmpl	$7,%esi
	jl	.Lj196
.Ll70:
# [207] operators[1].setfreq(2.006*afreq);
	movsd	_$FMSYNTH$_Ld13(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	16(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll71:
# [208] operators[2].setfreq(1.006*afreq);
	movsd	_$FMSYNTH$_Ld14(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	24(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll72:
# [209] operators[3].setfreq(2.012*afreq);
	movsd	_$FMSYNTH$_Ld15(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	32(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll73:
# [210] operators[4].setfreq(0.995*afreq);
	movsd	_$FMSYNTH$_Ld16(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	40(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll74:
# [211] operators[5].setfreq(1.990*afreq);
	movsd	_$FMSYNTH$_Ld17(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	48(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll75:
# [214] end;
	nop
	movdqa	32(%rsp),%xmm6
	leaq	56(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc31:
.Lt15:
.Ll76:

.section .text.n_fmsynth$_$tfmoperator_$__$$_setfreq$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE:
.Lc33:
# Var afreq located in register xmm0
# Var $self located in register rax
.Ll77:
# [218] begin
	movq	%rcx,%rax
	movapd	%xmm1,%xmm0
.Ll78:
# [219] if wavemode=0 then freq:=afreq*wlength/96000
	cmpl	$0,324(%rax)
	jne	.Lj224
	movapd	%xmm0,%xmm1
	mulsd	144(%rax),%xmm1
	mulsd	_$FMSYNTH$_Ld18(%rip),%xmm1
	movsd	%xmm1,8(%rax)
	jmp	.Lj227
.Lj224:
.Ll79:
# [220] else freq:=afreq*freqmod;
	mulsd	304(%rax),%xmm0
	movsd	%xmm0,8(%rax)
.Lj227:
.Ll80:
# [221] end;
	ret
.Lc34:
.Lt10:
.Ll81:

.section .text.n_fmsynth$_$tfmoperator_$__$$_init,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_INIT
FMSYNTH$_$TFMOPERATOR_$__$$_INIT:
.Lc35:
# Var $self located in register rax
.Ll82:
# [225] begin
	movq	%rcx,%rax
.Ll83:
# [227] freq:=440*(65536/96000);    //341
	movq	_$FMSYNTH$_Ld19(%rip),%rdx
	movq	%rdx,8(%rax)
.Ll84:
# [228] c3:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,16(%rax)
.Ll85:
# [229] c4:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,24(%rax)
.Ll86:
# [230] c5:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,32(%rax)
.Ll87:
# [231] c6:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,40(%rax)
.Ll88:
# [232] lfo1:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,48(%rax)
.Ll89:
# [233] lfo2:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,56(%rax)
.Ll90:
# [234] lfo3:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,64(%rax)
.Ll91:
# [235] mul0:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,72(%rax)
.Ll92:
# [236] mul1:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,80(%rax)
.Ll93:
# [237] mul2:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,88(%rax)
.Ll94:
# [238] mul3:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,96(%rax)
.Ll95:
# [239] mul4:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,104(%rax)
.Ll96:
# [240] mul5:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,112(%rax)
.Ll97:
# [241] mul6:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,120(%rax)
.Ll98:
# [242] mul7:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,128(%rax)
.Ll99:
# [243] wlength:=1024;//65536;
	movq	_$FMSYNTH$_Ld12(%rip),%rdx
	movq	%rdx,144(%rax)
.Ll100:
# [244] adsrstate:=0;
	movl	$0,320(%rax)
.Ll101:
# [245] adsrval:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,168(%rax)
.Ll102:
# [246] ar1:=1/96;
	movq	_$FMSYNTH$_Ld20(%rip),%rdx
	movq	%rdx,176(%rax)
.Ll103:
# [247] ar2:=-1/96000;
	movq	_$FMSYNTH$_Ld21(%rip),%rdx
	movq	%rdx,192(%rax)
.Ll104:
# [248] ar3:=-1/960000;
	movq	_$FMSYNTH$_Ld22(%rip),%rdx
	movq	%rdx,208(%rax)
.Ll105:
# [249] ar4:=-1/960000;
	movq	_$FMSYNTH$_Ld22(%rip),%rdx
	movq	%rdx,224(%rax)
.Ll106:
# [250] av1:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,184(%rax)
.Ll107:
# [251] av2:=0.95;
	movq	_$FMSYNTH$_Ld23(%rip),%rdx
	movq	%rdx,200(%rax)
.Ll108:
# [252] av3:=0.9;
	movq	_$FMSYNTH$_Ld24(%rip),%rdx
	movq	%rdx,216(%rax)
.Ll109:
# [253] av4:=0.0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,232(%rax)
.Ll110:
# [254] adsrbias:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,256(%rax)
.Ll111:
# [255] vel:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,264(%rax)
.Ll112:
# [256] keysense:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,272(%rax)
.Ll113:
# [257] expr:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,280(%rax)
.Ll114:
# [262] end;
	ret
.Lc36:
.Lt9:
.Ll115:

.section .text.n_fmsynth$_$tfmoperator_$__$$_getsample$$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE:
.Lc37:
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
.Ll116:
# [279] begin
	leaq	-72(%rsp),%rsp
.Lc39:
.seh_stackalloc 72
	movdqa	%xmm6,(%rsp)
	movdqa	%xmm8,16(%rsp)
	movdqa	%xmm9,32(%rsp)
	movdqa	%xmm10,48(%rsp)
# Var $self located in register rcx
# Var $result located in register xmm0
# Var res64a located in register xmm5
# Var modulator located in register xmm2
# Var i located in register r8d
# Var j located in register r9d
# Var sample located in register xmm8
# Var freq2 located in register xmm1
# Var h1 located in register xmm4
# Var pa21 located in register edx
# Var d located in register xmm3
# Var s2 located in register xmm9
.seh_savexmm %xmm6, 0
.seh_savexmm %xmm8, 16
.seh_savexmm %xmm9, 32
.seh_savexmm %xmm10, 48
.seh_endprologue
.Ll117:
# [284] freq2:=(freq+(c3*lfo1))*c4*lfo2;
	movsd	16(%rcx),%xmm1
	mulsd	48(%rcx),%xmm1
	addsd	8(%rcx),%xmm1
	mulsd	24(%rcx),%xmm1
	mulsd	56(%rcx),%xmm1
# Var freq2 located in register xmm1
.Ll118:
	movq	312(%rcx),%rax
.Ll119:
# [298] modulator:=outputtable[0]*mul0
	movsd	(%rax),%xmm3
	mulsd	72(%rcx),%xmm3
.Ll120:
# [299] +outputtable[1]*mul1
	movsd	8(%rax),%xmm2
	mulsd	80(%rcx),%xmm2
	addsd	%xmm3,%xmm2
.Ll121:
# [300] +outputtable[2]*mul2
	movsd	16(%rax),%xmm3
	mulsd	88(%rcx),%xmm3
	addsd	%xmm2,%xmm3
.Ll122:
# [301] +outputtable[3]*mul3
	movsd	24(%rax),%xmm2
	mulsd	96(%rcx),%xmm2
	addsd	%xmm3,%xmm2
.Ll123:
# [302] +outputtable[4]*mul4
	movsd	32(%rax),%xmm3
	mulsd	104(%rcx),%xmm3
	addsd	%xmm2,%xmm3
.Ll124:
# [303] +outputtable[5]*mul5
	movsd	40(%rax),%xmm2
	mulsd	112(%rcx),%xmm2
	addsd	%xmm3,%xmm2
.Ll125:
# [304] +outputtable[6]*mul6
	movsd	48(%rax),%xmm3
	mulsd	120(%rcx),%xmm3
	addsd	%xmm2,%xmm3
.Ll126:
# [305] +outputtable[7]*mul7;
	movsd	56(%rax),%xmm2
	mulsd	128(%rcx),%xmm2
	addsd	%xmm3,%xmm2
# Var modulator located in register xmm2
.Ll127:
# [307] pa:=pa+freq2;
	movsd	288(%rcx),%xmm3
	addsd	%xmm1,%xmm3
	movsd	%xmm3,288(%rcx)
.Ll128:
# [308] pa2:=pa+modulator;
	movsd	288(%rcx),%xmm3
	addsd	%xmm2,%xmm3
	movsd	%xmm3,296(%rcx)
.Ll129:
# [316] if wavemode=0 then
	cmpl	$0,324(%rcx)
	jne	.Lj307
.Ll130:
# [318] if pa>=wlength then
	movsd	288(%rcx),%xmm3
	comisd	144(%rcx),%xmm3
	jp	.Lj309
	jnae	.Lj309
.Ll131:
# [319] pa:=pa-wlength;
	movsd	288(%rcx),%xmm3
	subsd	144(%rcx),%xmm3
	movsd	%xmm3,288(%rcx)
.Lj309:
.Ll132:
# [321] pa2:=pa+modulator;
	movsd	288(%rcx),%xmm3
	addsd	%xmm2,%xmm3
	movsd	%xmm3,296(%rcx)
.Ll133:
# [322] if pa2>=wlength then
	movsd	296(%rcx),%xmm3
	comisd	144(%rcx),%xmm3
	jp	.Lj316
	jnae	.Lj316
	.balign 8,0x90
.Lj318:
.Ll134:
# [323] repeat pa2:=pa2-wlength until pa2<wlength;
	movsd	296(%rcx),%xmm3
	subsd	144(%rcx),%xmm3
	movsd	%xmm3,296(%rcx)
	movsd	296(%rcx),%xmm3
	comisd	144(%rcx),%xmm3
	jp	.Lj318
	jnb	.Lj318
.Lj316:
.Ll135:
# [324] if pa2<0 then
	movsd	296(%rcx),%xmm3
	comisd	_$FMSYNTH$_Ld7(%rip),%xmm3
	jp	.Lj333
	jnb	.Lj333
	.balign 8,0x90
.Lj327:
.Ll136:
# [325] repeat pa2:=pa2+wlength until pa2>0;
	movsd	296(%rcx),%xmm3
	addsd	144(%rcx),%xmm3
	movsd	%xmm3,296(%rcx)
	movsd	296(%rcx),%xmm3
	comisd	_$FMSYNTH$_Ld7(%rip),%xmm3
	jp	.Lj327
	jna	.Lj327
	jmp	.Lj333
.Lj307:
.Ll137:
# [330] if adsrstate<5 then
	cmpl	$5,320(%rcx)
	jnl	.Lj335
.Ll138:
# [332] if pa>wlend-1 then repeat pa:=pa-wlend+wlstart until pa<=wlend;
	movsd	160(%rcx),%xmm3
	subsd	_$FMSYNTH$_Ld8(%rip),%xmm3
	comisd	288(%rcx),%xmm3
	jp	.Lj345
	jnb	.Lj345
	.balign 8,0x90
.Lj339:
	movsd	288(%rcx),%xmm3
	subsd	160(%rcx),%xmm3
	addsd	152(%rcx),%xmm3
	movsd	%xmm3,288(%rcx)
	movsd	288(%rcx),%xmm3
	comisd	160(%rcx),%xmm3
	jp	.Lj339
	jnbe	.Lj339
	jmp	.Lj345
.Lj335:
.Ll139:
# [336] if pa>=wlength then pa:=wlength;
	movsd	288(%rcx),%xmm3
	comisd	144(%rcx),%xmm3
	jp	.Lj347
	jnae	.Lj347
	movq	144(%rcx),%rax
	movq	%rax,288(%rcx)
.Lj347:
.Lj345:
.Ll140:
# [338] pa2:=pa+modulator;
	movsd	288(%rcx),%xmm3
	addsd	%xmm2,%xmm3
	movsd	%xmm3,296(%rcx)
.Ll141:
# [339] if pa2>wlend-1 then repeat pa:=pa-wlend+wlstart until pa<=wlend-1;
	movsd	160(%rcx),%xmm3
	subsd	_$FMSYNTH$_Ld8(%rip),%xmm3
	comisd	296(%rcx),%xmm3
	jp	.Lj354
	jnb	.Lj354
	.balign 8,0x90
.Lj356:
	movsd	288(%rcx),%xmm3
	subsd	160(%rcx),%xmm3
	addsd	152(%rcx),%xmm3
	movsd	%xmm3,288(%rcx)
	movsd	160(%rcx),%xmm3
	subsd	_$FMSYNTH$_Ld8(%rip),%xmm3
	comisd	288(%rcx),%xmm3
	jp	.Lj356
	jnae	.Lj356
.Lj354:
.Lj333:
.Ll142:
# [341] intpa:=trunc(pa2);
	movsd	296(%rcx),%xmm3
	cvttsd2siq	%xmm3,%rax
# PeepHole Optimization,MovMov2MovMov1
	movl	%eax,328(%rcx)
# Var pa21 located in register edx
.Ll143:
# [342] pa21:=intpa; if pa21>wlength then pa21:=0;
	movl	%eax,%edx
	cvtsi2sd	%edx,%xmm3
	comisd	144(%rcx),%xmm3
	jp	.Lj367
	jna	.Lj367
	movl	$0,%edx
.Lj367:
.Ll144:
# [343] sample:=wptr[intpa];
	movq	136(%rcx),%r10
	movslq	328(%rcx),%rax
# Var sample located in register xmm8
	movsd	(%r10,%rax,8),%xmm8
.Ll145:
# [344] s2:=wptr[pa21];
	movq	136(%rcx),%r10
	movslq	%edx,%rax
# Var s2 located in register xmm9
	movsd	(%r10,%rax,8),%xmm9
.Ll146:
# [345] d:=pa2-intpa;
	cvtsi2sdl	328(%rcx),%xmm6
	movsd	296(%rcx),%xmm3
	subsd	%xmm6,%xmm3
# Var d located in register xmm3
.Ll147:
# [346] sample:=(1-d)*sample+d*s2;
	movsd	_$FMSYNTH$_Ld8(%rip),%xmm6
	subsd	%xmm3,%xmm6
	mulsd	%xmm8,%xmm6
	movapd	%xmm3,%xmm8
	mulsd	%xmm9,%xmm8
	addsd	%xmm6,%xmm8
# Var sample located in register xmm8
.Ll148:
# [352] if adsrstate = 5 then   // release
	cmpl	$5,320(%rcx)
	jne	.Lj380
.Ll149:
# [354] adsrval:=adsrval+ar4;
	movsd	168(%rcx),%xmm6
	addsd	224(%rcx),%xmm6
	movsd	%xmm6,168(%rcx)
.Ll150:
# [355] if ar4<0 then begin if adsrval<av4 then begin adsrval:=av4; adsrstate:=6; end; end
	movsd	224(%rcx),%xmm6
	comisd	_$FMSYNTH$_Ld7(%rip),%xmm6
	jp	.Lj384
	jnb	.Lj384
	movsd	168(%rcx),%xmm6
	comisd	232(%rcx),%xmm6
	jp	.Lj401
	jnb	.Lj401
	movq	232(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$6,320(%rcx)
	jmp	.Lj401
.Lj384:
.Ll151:
# [356] else begin if adsrval>av4 then begin adsrval:=av4; adsrstate:=6; end; end;
	movsd	168(%rcx),%xmm6
	comisd	232(%rcx),%xmm6
	jp	.Lj401
	jna	.Lj401
	movq	232(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$6,320(%rcx)
.Ll152:
# [357] goto p101;
	jmp	.Lj401
.Lj380:
.Ll153:
# [359] if adsrstate =   3 then  // release
	cmpl	$3,320(%rcx)
	jne	.Lj403
.Ll154:
# [361] adsrval:=adsrval+ar3;
	movsd	168(%rcx),%xmm6
	addsd	208(%rcx),%xmm6
	movsd	%xmm6,168(%rcx)
.Ll155:
# [362] if ar3<0 then begin if adsrval<av3 then begin adsrval:=av3; adsrstate:=4; end; end
	movsd	208(%rcx),%xmm6
	comisd	_$FMSYNTH$_Ld7(%rip),%xmm6
	jp	.Lj407
	jnb	.Lj407
	movsd	168(%rcx),%xmm6
	comisd	216(%rcx),%xmm6
	jp	.Lj401
	jnb	.Lj401
	movq	216(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$4,320(%rcx)
	jmp	.Lj401
.Lj407:
.Ll156:
# [363] else begin if adsrval>av3 then begin adsrval:=av3; adsrstate:=4; end; end;
	movsd	168(%rcx),%xmm6
	comisd	216(%rcx),%xmm6
	jp	.Lj401
	jna	.Lj401
	movq	216(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$4,320(%rcx)
.Ll157:
# [364] goto p101;
	jmp	.Lj401
.Lj403:
.Ll158:
# [366] if adsrstate= 2 then  // release
	cmpl	$2,320(%rcx)
	jne	.Lj425
.Ll159:
# [368] adsrval:=adsrval+ar2;
	movsd	168(%rcx),%xmm6
	addsd	192(%rcx),%xmm6
	movsd	%xmm6,168(%rcx)
.Ll160:
# [369] if ar2<0 then begin if adsrval<av2 then begin adsrval:=av2; adsrstate:=3; end; end
	movsd	192(%rcx),%xmm6
	comisd	_$FMSYNTH$_Ld7(%rip),%xmm6
	jp	.Lj429
	jnb	.Lj429
	movsd	168(%rcx),%xmm6
	comisd	200(%rcx),%xmm6
	jp	.Lj401
	jnb	.Lj401
	movq	200(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$3,320(%rcx)
	jmp	.Lj401
.Lj429:
.Ll161:
# [370] else begin if adsrval>av2 then begin adsrval:=av2; adsrstate:=3; end; end;
	movsd	168(%rcx),%xmm6
	comisd	200(%rcx),%xmm6
	jp	.Lj401
	jna	.Lj401
	movq	200(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$3,320(%rcx)
.Ll162:
# [371] goto p101;
	jmp	.Lj401
.Lj425:
.Ll163:
# [373] if adsrstate=1 then    // release
	cmpl	$1,320(%rcx)
	jne	.Lj447
.Ll164:
# [375] adsrval:=adsrval+ar1;
	movsd	168(%rcx),%xmm6
	addsd	176(%rcx),%xmm6
	movsd	%xmm6,168(%rcx)
.Ll165:
# [376] if ar1<0 then begin if adsrval<av1 then begin adsrval:=av1; adsrstate:=2; end; end
	movsd	176(%rcx),%xmm6
	comisd	_$FMSYNTH$_Ld7(%rip),%xmm6
	jp	.Lj451
	jnb	.Lj451
	movsd	168(%rcx),%xmm6
	comisd	184(%rcx),%xmm6
	jp	.Lj460
	jnb	.Lj460
	movq	184(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$2,320(%rcx)
	jmp	.Lj460
.Lj451:
.Ll166:
# [377] else begin if adsrval>av1 then begin  adsrval:=av1; adsrstate:=2; end;  end;
	movsd	168(%rcx),%xmm6
	comisd	184(%rcx),%xmm6
	jp	.Lj462
	jna	.Lj462
	movq	184(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$2,320(%rcx)
.Lj462:
.Lj460:
.Lj401:
.Lj447:
.Ll167:
	movsd	256(%rcx),%xmm10
.Ll168:
# [381] h1:=((1-adsrbias)*adsrval)+adsrbias;
	movsd	_$FMSYNTH$_Ld8(%rip),%xmm6
	subsd	%xmm10,%xmm6
	mulsd	168(%rcx),%xmm6
	addsd	%xmm10,%xmm6
	movapd	%xmm6,%xmm4
.Ll169:
# [382] if adsrstate<>0 then sample:=sample*flogtable[round(65535*h1)] else sample:=0;
	cmpl	$0,320(%rcx)
	je	.Lj473
	movsd	_$FMSYNTH$_Ld25(%rip),%xmm6
	mulsd	%xmm4,%xmm6
	cvtsd2siq	%xmm6,%rax
	movapd	%xmm8,%xmm6
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%r10
	mulsd	(%r10,%rax,8),%xmm6
	movapd	%xmm6,%xmm8
	jmp	.Lj476
.Lj473:
	movsd	_$FMSYNTH$_Ld7(%rip),%xmm8
.Lj476:
.Ll170:
# [385] h1:=1.000-keysense;
	movsd	_$FMSYNTH$_Ld8(%rip),%xmm6
	subsd	272(%rcx),%xmm6
	movapd	%xmm6,%xmm4
.Ll171:
# [386] h1:=h1+vel*keysense;
	movsd	264(%rcx),%xmm6
	mulsd	272(%rcx),%xmm6
	addsd	%xmm4,%xmm6
	movapd	%xmm6,%xmm4
.Ll172:
# [387] h1:=h1*c6*expr;
	movapd	%xmm4,%xmm6
	mulsd	40(%rcx),%xmm6
	mulsd	280(%rcx),%xmm6
	movapd	%xmm6,%xmm4
.Ll173:
# [388] sample:=sample*h1;
	movapd	%xmm8,%xmm6
	mulsd	%xmm4,%xmm6
	movapd	%xmm6,%xmm8
.Ll174:
# [403] result:=sample;
	movapd	%xmm8,%xmm0
.Ll175:
# [405] end;
	movdqa	(%rsp),%xmm6
	movdqa	16(%rsp),%xmm8
	movdqa	32(%rsp),%xmm9
	movdqa	48(%rsp),%xmm10
	leaq	72(%rsp),%rsp
	ret
.seh_endproc
.Lc38:
.Lt8:
.Ll176:

.section .text.n_fmsynth_$$_initnotes,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITNOTES
FMSYNTH_$$_INITNOTES:
.Lc40:
# Var i located in register edx
# Var q located in register xmm1
# [413] begin
# Var q located in register xmm1
.Ll177:
# [414] q:=c03;
	movsd	_$FMSYNTH$_Ld26(%rip),%xmm1
# Var i located in register edx
.Ll178:
# [415] for i:=0 to 127 do
	movl	$0,%edx
	subl	$1,%edx
	.balign 8,0x90
.Lj495:
	addl	$1,%edx
# PeepHole Optimization,var2a
.Ll179:
# [417] fnotes[i]:=q;
	movl	%edx,%eax
	leaq	U_$FMSYNTH_$$_FNOTES(%rip),%rcx
	movsd	%xmm1,(%rcx,%rax,8)
.Ll180:
# [418] q:=q*a212;
	movapd	%xmm1,%xmm0
	mulsd	_$FMSYNTH$_Ld27(%rip),%xmm0
	movapd	%xmm0,%xmm1
.Ll181:
	cmpl	$127,%edx
	jl	.Lj495
.Ll182:
# [420] end;
	ret
.Lc41:
.Lt7:
.Ll183:

.section .text.n_fmsynth_$$_init$,"x"
	.balign 16,0x90
.globl	INIT$_$FMSYNTH
INIT$_$FMSYNTH:
.globl	FMSYNTH_$$_init$
FMSYNTH_$$_init$:
.Lc42:
.seh_proc FMSYNTH_$$_init$
.Ll184:
# [424] initialization
	leaq	-40(%rsp),%rsp
.Lc44:
.seh_stackalloc 40
.seh_endprologue
.Ll185:
# [426] initflogtable;
	call	FMSYNTH_$$_INITFLOGTABLE
.Ll186:
# [427] initfsinetable;
	call	FMSYNTH_$$_INITFSINETABLE
.Ll187:
# [428] initnotes;
	call	FMSYNTH_$$_INITNOTES
.Ll188:
# [431] end.
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc43:
.Lt2:
.Ll189:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 8
# [64] var flogtable:array[0..65540] of myfloat;
	.globl U_$FMSYNTH_$$_FLOGTABLE
U_$FMSYNTH_$$_FLOGTABLE:
	.zero 524328

.section .bss
	.balign 8
# [65] foutputtable:array[0..8191] of myfloat;
	.globl U_$FMSYNTH_$$_FOUTPUTTABLE
U_$FMSYNTH_$$_FOUTPUTTABLE:
	.zero 65536

.section .bss
	.balign 8
# [66] fnotes:array[0..127] of myfloat;
	.globl U_$FMSYNTH_$$_FNOTES
U_$FMSYNTH_$$_FNOTES:
	.zero 1024

.section .bss
	.balign 8
# [67] fsinetable:array[-655360..655360] of myfloat;
	.globl U_$FMSYNTH_$$_FSINETABLE
U_$FMSYNTH_$$_FSINETABLE:
	.zero 10485768

.section .bss
	.balign 8
# [69] fmoperator:TFmOperator;
	.globl U_$FMSYNTH_$$_FMOPERATOR
U_$FMSYNTH_$$_FMOPERATOR:
	.zero 8

.section .bss
	.balign 8
# [70] voices:array [0..31] of TFmVoice;
	.globl U_$FMSYNTH_$$_VOICES
U_$FMSYNTH_$$_VOICES:
	.zero 256

.section .data.n_VMT_$FMSYNTH_$$_TFMOPERATOR,"d"
	.balign 8
.globl	VMT_$FMSYNTH_$$_TFMOPERATOR
VMT_$FMSYNTH_$$_TFMOPERATOR:
	.quad	336,-336
	.quad	VMT_$SYSTEM_$$_TOBJECT
	.quad	.Ld28
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
# [433] 
	.balign 8
.Ld28:
	.byte	11
	.ascii	"TFmOperator"

.section .data.n_VMT_$FMSYNTH_$$_TFMVOICE,"d"
	.balign 8
.globl	VMT_$FMSYNTH_$$_TFMVOICE
VMT_$FMSYNTH_$$_TFMVOICE:
	.quad	168,-168
	.quad	VMT_$SYSTEM_$$_TOBJECT
	.quad	.Ld29
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
.Ld29:
	.byte	8
	.ascii	"TFmVoice"
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .data.n_tc_$fmsynth_$$_att,"d"
	.balign 8
.globl	TC_$FMSYNTH_$$_ATT
TC_$FMSYNTH_$$_ATT:
# value: 0d+1.0416666666666667E-003
	.byte	17,17,17,17,17,17,81,63
# [74] procedure initvoices;

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
# value: 0d+1.6384000000000000E+004
	.byte	0,0,0,0,0,0,208,64

.section .rodata.n__$FMSYNTH$_Ld4,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld4
_$FMSYNTH$_Ld4:
# value: 0d+1.0000000000000000E+004
	.byte	0,0,0,0,0,136,195,64

.section .rodata.n__$FMSYNTH$_Ld5,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld5
_$FMSYNTH$_Ld5:
# value: 0d+1.5000000000000000E+002
	.byte	0,0,0,0,0,192,98,64

.section .rodata.n__$FMSYNTH$_Ld6,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld6
_$FMSYNTH$_Ld6:
# value: 0d+3.0000000000000000E+002
	.byte	0,0,0,0,0,192,114,64

.section .rodata.n__$FMSYNTH$_Ld7,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld7
_$FMSYNTH$_Ld7:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0

.section .rodata.n__$FMSYNTH$_Ld8,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld8
_$FMSYNTH$_Ld8:
# value: 0d+1.0000000000000000E+000
	.byte	0,0,0,0,0,0,240,63

.section .rodata.n__$FMSYNTH$_Ld9,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld9
_$FMSYNTH$_Ld9:
# value: 0d+9.9989460157410703E-001
	.byte	206,165,166,246,34,255,239,63

.section .rodata.n__$FMSYNTH$_Ld10,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld10
_$FMSYNTH$_Ld10:
# value: 0d+6.2831853071795862E+000
	.byte	24,45,68,84,251,33,25,64

.section .rodata.n__$FMSYNTH$_Ld11,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld11
_$FMSYNTH$_Ld11:
# value: 0d+9.7656250000000000E-004
	.byte	0,0,0,0,0,0,80,63

.section .rodata.n__$FMSYNTH$_Ld12,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld12
_$FMSYNTH$_Ld12:
# value: 0d+1.0240000000000000E+003
	.byte	0,0,0,0,0,0,144,64

.section .rodata.n__$FMSYNTH$_Ld13,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld13
_$FMSYNTH$_Ld13:
# value: 0d+2.0059999999999998E+000
	.byte	63,53,94,186,73,12,0,64

.section .rodata.n__$FMSYNTH$_Ld14,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld14
_$FMSYNTH$_Ld14:
# value: 0d+1.0060000000000000E+000
	.byte	127,106,188,116,147,24,240,63

.section .rodata.n__$FMSYNTH$_Ld15,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld15
_$FMSYNTH$_Ld15:
# value: 0d+2.0120000000000000E+000
	.byte	127,106,188,116,147,24,0,64

.section .rodata.n__$FMSYNTH$_Ld16,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld16
_$FMSYNTH$_Ld16:
# value: 0d+9.9500000000000000E-001
	.byte	215,163,112,61,10,215,239,63

.section .rodata.n__$FMSYNTH$_Ld17,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld17
_$FMSYNTH$_Ld17:
# value: 0d+1.9900000000000000E+000
	.byte	215,163,112,61,10,215,255,63

.section .rodata.n__$FMSYNTH$_Ld18,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld18
_$FMSYNTH$_Ld18:
# value: 0d+1.0416666666666666E-005
	.byte	165,226,236,195,103,216,229,62

.section .rodata.n__$FMSYNTH$_Ld19,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld19
_$FMSYNTH$_Ld19:
# value: 0d+3.0037333333333333E+002
	.byte	198,146,95,44,249,197,114,64

.section .rodata.n__$FMSYNTH$_Ld20,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld20
_$FMSYNTH$_Ld20:
# value: 0d+1.0416666666666666E-002
	.byte	85,85,85,85,85,85,133,63

.section .rodata.n__$FMSYNTH$_Ld21,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld21
_$FMSYNTH$_Ld21:
# value: 0d-1.0416666666666666E-005
	.byte	165,226,236,195,103,216,229,190

.section .rodata.n__$FMSYNTH$_Ld22,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld22
_$FMSYNTH$_Ld22:
# value: 0d-1.0416666666666667E-006
	.byte	30,130,189,156,236,121,177,190

.section .rodata.n__$FMSYNTH$_Ld23,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld23
_$FMSYNTH$_Ld23:
# value: 0d+9.4999999999999996E-001
	.byte	102,102,102,102,102,102,238,63

.section .rodata.n__$FMSYNTH$_Ld24,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld24
_$FMSYNTH$_Ld24:
# value: 0d+9.0000000000000002E-001
	.byte	205,204,204,204,204,204,236,63

.section .rodata.n__$FMSYNTH$_Ld25,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld25
_$FMSYNTH$_Ld25:
# value: 0d+6.5535000000000000E+004
	.byte	0,0,0,0,224,255,239,64

.section .rodata.n__$FMSYNTH$_Ld26,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld26
_$FMSYNTH$_Ld26:
# value: 0d+8.1757989156437088E+000
	.byte	87,185,194,80,2,90,32,64

.section .rodata.n__$FMSYNTH$_Ld27,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld27
_$FMSYNTH$_Ld27:
# value: 0d+1.0594630943592953E+000
	.byte	99,121,217,146,143,243,240,63
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

.section .data.n_INIT_$FMSYNTH_$$_TWAVESAMPLE,"d"
	.balign 8
.globl	INIT_$FMSYNTH_$$_TWAVESAMPLE
INIT_$FMSYNTH_$$_TWAVESAMPLE:
	.byte	13,11
	.ascii	"TWaveSample"
	.long	32,0

.section .data.n_RTTI_$FMSYNTH_$$_TWAVESAMPLE,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_TWAVESAMPLE
RTTI_$FMSYNTH_$$_TWAVESAMPLE:
	.byte	13,11
	.ascii	"TWaveSample"
	.long	32,5
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	8
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	16
	.quad	RTTI_$SYSTEM_$$_POINTER
	.quad	24
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc45:
	.long	.Lc47-.Lc46
.Lc46:
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
.Lc47:
	.long	.Lc49-.Lc48
.Lc48:
	.secrel32	.Lc45
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc49:
	.long	.Lc51-.Lc50
.Lc50:
	.secrel32	.Lc45
	.quad	.Lc4
	.quad	.Lc5-.Lc4
	.byte	4
	.long	.Lc6-.Lc4
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc7-.Lc6
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc8-.Lc7
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc51:
	.long	.Lc53-.Lc52
.Lc52:
	.secrel32	.Lc45
	.quad	.Lc9
	.quad	.Lc10-.Lc9
	.byte	4
	.long	.Lc11-.Lc9
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc53:
	.long	.Lc55-.Lc54
.Lc54:
	.secrel32	.Lc45
	.quad	.Lc12
	.quad	.Lc13-.Lc12
	.balign 4,0
.Lc55:
	.long	.Lc57-.Lc56
.Lc56:
	.secrel32	.Lc45
	.quad	.Lc14
	.quad	.Lc15-.Lc14
	.byte	4
	.long	.Lc16-.Lc14
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc57:
	.long	.Lc59-.Lc58
.Lc58:
	.secrel32	.Lc45
	.quad	.Lc17
	.quad	.Lc18-.Lc17
	.balign 4,0
.Lc59:
	.long	.Lc61-.Lc60
.Lc60:
	.secrel32	.Lc45
	.quad	.Lc19
	.quad	.Lc20-.Lc19
	.byte	4
	.long	.Lc21-.Lc19
	.byte	14
	.uleb128	32
	.balign 4,0
.Lc61:
	.long	.Lc63-.Lc62
.Lc62:
	.secrel32	.Lc45
	.quad	.Lc22
	.quad	.Lc23-.Lc22
	.byte	4
	.long	.Lc24-.Lc22
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc25-.Lc24
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc26-.Lc25
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc63:
	.long	.Lc65-.Lc64
.Lc64:
	.secrel32	.Lc45
	.quad	.Lc27
	.quad	.Lc28-.Lc27
	.byte	4
	.long	.Lc29-.Lc27
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc65:
	.long	.Lc67-.Lc66
.Lc66:
	.secrel32	.Lc45
	.quad	.Lc30
	.quad	.Lc31-.Lc30
	.byte	4
	.long	.Lc32-.Lc30
	.byte	14
	.uleb128	64
	.balign 4,0
.Lc67:
	.long	.Lc69-.Lc68
.Lc68:
	.secrel32	.Lc45
	.quad	.Lc33
	.quad	.Lc34-.Lc33
	.balign 4,0
.Lc69:
	.long	.Lc71-.Lc70
.Lc70:
	.secrel32	.Lc45
	.quad	.Lc35
	.quad	.Lc36-.Lc35
	.balign 4,0
.Lc71:
	.long	.Lc73-.Lc72
.Lc72:
	.secrel32	.Lc45
	.quad	.Lc37
	.quad	.Lc38-.Lc37
	.byte	4
	.long	.Lc39-.Lc37
	.byte	14
	.uleb128	80
	.balign 4,0
.Lc73:
	.long	.Lc75-.Lc74
.Lc74:
	.secrel32	.Lc45
	.quad	.Lc40
	.quad	.Lc41-.Lc40
	.balign 4,0
.Lc75:
	.long	.Lc77-.Lc76
.Lc76:
	.secrel32	.Lc45
	.quad	.Lc42
	.quad	.Lc43-.Lc42
	.byte	4
	.long	.Lc44-.Lc42
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc77:
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
# Symbol MYFLOAT
# Symbol PSINGLESAMPLE
# Symbol TSINGLESAMPLE
# Symbol PSINGLESTEREOSAMPLE
# Symbol TSINGLESTEREOSAMPLE
# Symbol TFMOPERATOR
# Symbol TFMVOICE
# Symbol TWAVESAMPLE
# Symbol A212
	.uleb128	2
	.ascii	"A212\000"
	.long	.La1-.Ldebug_info0
	.byte	8
# value: 0d+1.0594630943592953E+000
	.byte	99,121,217,146,143,243,240,63
# Symbol C03
	.uleb128	2
	.ascii	"C03\000"
	.long	.La1-.Ldebug_info0
	.byte	8
# value: 0d+8.1757989156437088E+000
	.byte	87,185,194,80,2,90,32,64
# Symbol FLOGTABLE
	.uleb128	3
	.ascii	"FLOGTABLE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FLOGTABLE
	.long	.La17-.Ldebug_info0
# Symbol FOUTPUTTABLE
	.uleb128	3
	.ascii	"FOUTPUTTABLE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FOUTPUTTABLE
	.long	.La19-.Ldebug_info0
# Symbol FNOTES
	.uleb128	3
	.ascii	"FNOTES\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FNOTES
	.long	.La21-.Ldebug_info0
# Symbol FSINETABLE
	.uleb128	3
	.ascii	"FSINETABLE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FSINETABLE
	.long	.La23-.Ldebug_info0
# Symbol FMOPERATOR
	.uleb128	3
	.ascii	"FMOPERATOR\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FMOPERATOR
	.long	.La9-.Ldebug_info0
# Symbol VOICES
	.uleb128	3
	.ascii	"VOICES\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_VOICES
	.long	.La25-.Ldebug_info0
# Symbol ATT
	.uleb128	3
	.ascii	"ATT\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$FMSYNTH_$$_ATT
	.long	.La1-.Ldebug_info0
# Symbol INITVOICES
# Syms - End unit FMSYNTH has index 18
# Syms - Begin Staticsymtable
# Symbol RETRO
# Symbol FMSYNTH_$$_init$
# Symbol INITFLOGTABLE
# Symbol INITFSINETABLE
# Symbol assign
# Symbol star
# Symbol INITNOTES
# Syms - End Staticsymtable
# Procdef initvoices;
	.uleb128	4
	.ascii	"INITVOICES\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH_$$_INITVOICES
	.quad	.Lt1
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef $FMSYNTH_$$_init$; Register;
	.uleb128	4
	.ascii	"FMSYNTH_$$_init$\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH_$$_init$
	.quad	.Lt2
	.byte	0
# Procdef initflogtable;
	.uleb128	4
	.ascii	"INITFLOGTABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH_$$_INITFLOGTABLE
	.quad	.Lt3
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La27-.Ldebug_info0
# Symbol Q
	.uleb128	5
	.ascii	"Q\000"
	.byte	2
	.byte	144
	.uleb128	18
	.long	.La1-.Ldebug_info0
# Symbol Q2
	.uleb128	5
	.ascii	"Q2\000"
	.byte	2
	.byte	144
	.uleb128	19
	.long	.La1-.Ldebug_info0
	.byte	0
# Procdef initfsinetable;
	.uleb128	4
	.ascii	"INITFSINETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH_$$_INITFSINETABLE
	.quad	.Lt4
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef operator :=(<var TSingleStereoSample>;LongInt):Array[0..1] Of Double;
	.uleb128	6
	.ascii	"assign\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La7-.Ldebug_info0
	.quad	FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
	.quad	.Lt5
# Symbol result
	.uleb128	5
	.ascii	"result\000"
	.byte	3
	.byte	146
	.uleb128	0
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol B
	.uleb128	7
	.ascii	"B\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La27-.Ldebug_info0
# Symbol RESULT
	.uleb128	5
	.ascii	"RESULT\000"
	.byte	3
	.byte	146
	.uleb128	0
	.sleb128	0
	.long	.La7-.Ldebug_info0
	.byte	0
# Procdef operator *(<var TSingleStereoSample>;TSingleStereoSample;Single):Array[0..1] Of Double;
	.uleb128	6
	.ascii	"star\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La7-.Ldebug_info0
	.quad	FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
	.quad	.Lt6
# Symbol result
	.uleb128	5
	.ascii	"result\000"
	.byte	3
	.byte	146
	.uleb128	0
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol A
	.uleb128	7
	.ascii	"A\000"
	.byte	2
	.byte	119
	.sleb128	8
	.long	.La7-.Ldebug_info0
# Symbol B
	.uleb128	7
	.ascii	"B\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La29-.Ldebug_info0
# Symbol RESULT
	.uleb128	5
	.ascii	"RESULT\000"
	.byte	3
	.byte	146
	.uleb128	0
	.sleb128	0
	.long	.La7-.Ldebug_info0
	.byte	0
# Procdef initnotes;
	.uleb128	4
	.ascii	"INITNOTES\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH_$$_INITNOTES
	.quad	.Lt7
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La27-.Ldebug_info0
# Symbol Q
	.uleb128	5
	.ascii	"Q\000"
	.byte	2
	.byte	144
	.uleb128	18
	.long	.La1-.Ldebug_info0
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition LongInt
.La27:
	.uleb128	8
	.ascii	"LONGINT\000"
	.long	.La31-.Ldebug_info0
.La31:
	.uleb128	9
	.ascii	"LONGINT\000"
	.byte	5
	.byte	4
.La28:
	.uleb128	10
	.long	.La27-.Ldebug_info0
# Definition Single
.La29:
	.uleb128	8
	.ascii	"SINGLE\000"
	.long	.La32-.Ldebug_info0
.La32:
	.uleb128	9
	.ascii	"SINGLE\000"
	.byte	4
	.byte	4
.La30:
	.uleb128	10
	.long	.La29-.Ldebug_info0
# Definition Double
.La1:
	.uleb128	8
	.ascii	"DOUBLE\000"
	.long	.La33-.Ldebug_info0
.La33:
	.uleb128	9
	.ascii	"DOUBLE\000"
	.byte	4
	.byte	8
.La2:
	.uleb128	10
	.long	.La1-.Ldebug_info0
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
.La3:
	.uleb128	8
	.ascii	"PSINGLESAMPLE\000"
	.long	.La34-.Ldebug_info0
.La34:
	.uleb128	11
	.long	.La1-.Ldebug_info0
.La4:
	.uleb128	10
	.long	.La3-.Ldebug_info0
# Definition PSingleStereosample
.La5:
	.uleb128	8
	.ascii	"PSINGLESTEREOSAMPLE\000"
	.long	.La35-.Ldebug_info0
.La35:
	.uleb128	11
	.long	.La1-.Ldebug_info0
.La6:
	.uleb128	10
	.long	.La5-.Ldebug_info0
# Definition TSingleStereoSample
.La7:
	.uleb128	8
	.ascii	"TSINGLESTEREOSAMPLE\000"
	.long	.La36-.Ldebug_info0
.La36:
	.uleb128	12
	.ascii	"TSINGLESTEREOSAMPLE\000"
	.uleb128	16
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	1
	.uleb128	8
	.long	.La37-.Ldebug_info0
	.byte	0
.La8:
	.uleb128	10
	.long	.La7-.Ldebug_info0
# Definition TFmOperator
.La9:
	.uleb128	8
	.ascii	"TFMOPERATOR\000"
	.long	.La39-.Ldebug_info0
.La39:
	.uleb128	11
	.long	.La11-.Ldebug_info0
.La11:
	.uleb128	14
	.ascii	"TFMOPERATOR\000"
	.uleb128	336
	.uleb128	15
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La42-.Ldebug_info0
	.uleb128	16
	.ascii	"FREQ\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"C3\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"C4\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"C5\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"C6\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"LFO1\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"LFO2\000"
	.byte	2
	.byte	35
	.uleb128	56
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"LFO3\000"
	.byte	2
	.byte	35
	.uleb128	64
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"MUL0\000"
	.byte	2
	.byte	35
	.uleb128	72
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"MUL1\000"
	.byte	2
	.byte	35
	.uleb128	80
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"MUL2\000"
	.byte	2
	.byte	35
	.uleb128	88
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"MUL3\000"
	.byte	2
	.byte	35
	.uleb128	96
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"MUL4\000"
	.byte	2
	.byte	35
	.uleb128	104
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"MUL5\000"
	.byte	2
	.byte	35
	.uleb128	112
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"MUL6\000"
	.byte	2
	.byte	35
	.uleb128	120
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"MUL7\000"
	.byte	3
	.byte	35
	.uleb128	128
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"WPTR\000"
	.byte	3
	.byte	35
	.uleb128	136
	.long	.La3-.Ldebug_info0
	.uleb128	16
	.ascii	"WLENGTH\000"
	.byte	3
	.byte	35
	.uleb128	144
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"WLSTART\000"
	.byte	3
	.byte	35
	.uleb128	152
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"WLEND\000"
	.byte	3
	.byte	35
	.uleb128	160
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"ADSRSTATE\000"
	.byte	3
	.byte	35
	.uleb128	320
	.long	.La27-.Ldebug_info0
	.uleb128	16
	.ascii	"ADSRVAL\000"
	.byte	3
	.byte	35
	.uleb128	168
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"AR1\000"
	.byte	3
	.byte	35
	.uleb128	176
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"AV1\000"
	.byte	3
	.byte	35
	.uleb128	184
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"AR2\000"
	.byte	3
	.byte	35
	.uleb128	192
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"AV2\000"
	.byte	3
	.byte	35
	.uleb128	200
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"AR3\000"
	.byte	3
	.byte	35
	.uleb128	208
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"AV3\000"
	.byte	3
	.byte	35
	.uleb128	216
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"AR4\000"
	.byte	3
	.byte	35
	.uleb128	224
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"AV4\000"
	.byte	3
	.byte	35
	.uleb128	232
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"AV\000"
	.byte	3
	.byte	35
	.uleb128	240
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"AR\000"
	.byte	3
	.byte	35
	.uleb128	248
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"ADSRBIAS\000"
	.byte	3
	.byte	35
	.uleb128	256
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"VEL\000"
	.byte	3
	.byte	35
	.uleb128	264
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"KEYSENSE\000"
	.byte	3
	.byte	35
	.uleb128	272
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"EXPR\000"
	.byte	3
	.byte	35
	.uleb128	280
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"PA\000"
	.byte	3
	.byte	35
	.uleb128	288
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"PA2\000"
	.byte	3
	.byte	35
	.uleb128	296
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"WAVEMODE\000"
	.byte	3
	.byte	35
	.uleb128	324
	.long	.La27-.Ldebug_info0
	.uleb128	16
	.ascii	"INTPA\000"
	.byte	3
	.byte	35
	.uleb128	328
	.long	.La27-.Ldebug_info0
	.uleb128	16
	.ascii	"FREQMOD\000"
	.byte	3
	.byte	35
	.uleb128	304
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"OUTPUTTABLE\000"
	.byte	3
	.byte	35
	.uleb128	312
	.long	.La3-.Ldebug_info0
# Procdef getsample(<TFmOperator>):Double;
	.uleb128	6
	.ascii	"GETSAMPLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La1-.Ldebug_info0
	.quad	FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
	.quad	.Lt8
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	2
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol result
	.uleb128	5
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La1-.Ldebug_info0
# Symbol GETSAMPLE
	.uleb128	5
	.ascii	"GETSAMPLE\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La1-.Ldebug_info0
# Symbol RESULT
	.uleb128	5
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La1-.Ldebug_info0
# Symbol P101
# Symbol RES64A
# Symbol MODULATOR
	.uleb128	5
	.ascii	"MODULATOR\000"
	.byte	2
	.byte	144
	.uleb128	19
	.long	.La1-.Ldebug_info0
# Symbol I
# Symbol J
# Symbol SAMPLE
	.uleb128	5
	.ascii	"SAMPLE\000"
	.byte	2
	.byte	144
	.uleb128	25
	.long	.La1-.Ldebug_info0
# Symbol FREQ2
	.uleb128	5
	.ascii	"FREQ2\000"
	.byte	2
	.byte	144
	.uleb128	18
	.long	.La1-.Ldebug_info0
# Symbol H1
	.uleb128	5
	.ascii	"H1\000"
	.byte	2
	.byte	144
	.uleb128	21
	.long	.La1-.Ldebug_info0
# Symbol PA21
	.uleb128	5
	.ascii	"PA21\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La27-.Ldebug_info0
# Symbol D
	.uleb128	5
	.ascii	"D\000"
	.byte	2
	.byte	144
	.uleb128	20
	.long	.La1-.Ldebug_info0
# Symbol S2
	.uleb128	5
	.ascii	"S2\000"
	.byte	2
	.byte	144
	.uleb128	26
	.long	.La1-.Ldebug_info0
	.byte	0
# Procdef init(<TFmOperator>);
	.uleb128	4
	.ascii	"INIT\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH$_$TFMOPERATOR_$__$$_INIT
	.quad	.Lt9
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	0
	.byte	1
	.long	.La9-.Ldebug_info0
	.byte	0
# Procdef setfreq(<TFmOperator>;Double);
	.uleb128	4
	.ascii	"SETFREQ\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
	.quad	.Lt10
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	0
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol AFREQ
	.uleb128	7
	.ascii	"AFREQ\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La1-.Ldebug_info0
	.byte	0
# Procdef constructor create(<TFmOperator>;<Pointer>;LongInt;Pointer);
	.uleb128	6
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La9-.Ldebug_info0
	.quad	FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
	.quad	.Lt11
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol vmt
	.uleb128	7
	.ascii	"vmt\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La43-.Ldebug_info0
# Symbol MODE
	.uleb128	7
	.ascii	"MODE\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La27-.Ldebug_info0
# Symbol OUTS
	.uleb128	7
	.ascii	"OUTS\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La43-.Ldebug_info0
# Symbol Q
# Symbol I
	.byte	0
# Procdef destructor destroy(<TFmOperator>;<Pointer>);
	.uleb128	4
	.ascii	"DESTROY\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
	.quad	.Lt12
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	3
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol vmt
	.uleb128	7
	.ascii	"vmt\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La43-.Ldebug_info0
	.byte	0
	.byte	0
.La10:
	.uleb128	10
	.long	.La9-.Ldebug_info0
# Definition TFmVoice
.La12:
	.uleb128	8
	.ascii	"TFMVOICE\000"
	.long	.La45-.Ldebug_info0
.La45:
	.uleb128	11
	.long	.La14-.Ldebug_info0
.La14:
	.uleb128	14
	.ascii	"TFMVOICE\000"
	.uleb128	168
	.uleb128	15
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La42-.Ldebug_info0
	.uleb128	16
	.ascii	"OPERATORS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La46-.Ldebug_info0
	.uleb128	16
	.ascii	"OUTPUTS\000"
	.byte	2
	.byte	35
	.uleb128	72
	.long	.La48-.Ldebug_info0
	.uleb128	16
	.ascii	"OUTMULS\000"
	.byte	3
	.byte	35
	.uleb128	136
	.long	.La50-.Ldebug_info0
# Procdef constructor create(<TFmVoice>;<Pointer>);
	.uleb128	6
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La12-.Ldebug_info0
	.quad	FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
	.quad	.Lt13
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.byte	1
	.long	.La12-.Ldebug_info0
# Symbol vmt
	.uleb128	7
	.ascii	"vmt\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La43-.Ldebug_info0
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef getsample(<TFmVoice>):Double;
	.uleb128	6
	.ascii	"GETSAMPLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La1-.Ldebug_info0
	.quad	FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
	.quad	.Lt14
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	3
	.byte	1
	.long	.La12-.Ldebug_info0
# Symbol result
	.uleb128	5
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La1-.Ldebug_info0
# Symbol GETSAMPLE
	.uleb128	5
	.ascii	"GETSAMPLE\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La1-.Ldebug_info0
# Symbol RESULT
	.uleb128	5
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La1-.Ldebug_info0
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La27-.Ldebug_info0
# Symbol J
# Symbol OUTPUT
	.uleb128	5
	.ascii	"OUTPUT\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La1-.Ldebug_info0
	.byte	0
# Procdef setfreq(<TFmVoice>;Double);
	.uleb128	4
	.ascii	"SETFREQ\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE
	.quad	.Lt15
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	3
	.byte	1
	.long	.La12-.Ldebug_info0
# Symbol AFREQ
	.uleb128	7
	.ascii	"AFREQ\000"
	.byte	2
	.byte	144
	.uleb128	23
	.long	.La1-.Ldebug_info0
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La27-.Ldebug_info0
	.byte	0
	.byte	0
.La13:
	.uleb128	10
	.long	.La12-.Ldebug_info0
# Definition TWaveSample
.La15:
	.uleb128	8
	.ascii	"TWAVESAMPLE\000"
	.long	.La52-.Ldebug_info0
.La52:
	.uleb128	18
	.ascii	"TWAVESAMPLE\000"
	.uleb128	32
	.uleb128	16
	.ascii	"LEN\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La27-.Ldebug_info0
	.uleb128	16
	.ascii	"LSTART\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La27-.Ldebug_info0
	.uleb128	16
	.ascii	"LEND\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La27-.Ldebug_info0
	.uleb128	16
	.ascii	"SPEED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.ascii	"WAVE\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La43-.Ldebug_info0
	.byte	0
.La16:
	.uleb128	10
	.long	.La15-.Ldebug_info0
# Definition Array[0..65540] Of Double
.La17:
	.uleb128	19
	.uleb128	524328
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	65540
	.uleb128	8
	.long	.La27-.Ldebug_info0
	.byte	0
.La18:
	.uleb128	10
	.long	.La17-.Ldebug_info0
# Definition Array[0..8191] Of Double
.La19:
	.uleb128	19
	.uleb128	65536
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	8191
	.uleb128	8
	.long	.La53-.Ldebug_info0
	.byte	0
.La20:
	.uleb128	10
	.long	.La19-.Ldebug_info0
# Definition Array[0..127] Of Double
.La21:
	.uleb128	19
	.uleb128	1024
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	127
	.uleb128	8
	.long	.La37-.Ldebug_info0
	.byte	0
.La22:
	.uleb128	10
	.long	.La21-.Ldebug_info0
# Definition Array[-655360..655360] Of Double
.La23:
	.uleb128	19
	.uleb128	10485768
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.sleb128	-655360
	.sleb128	655360
	.uleb128	8
	.long	.La27-.Ldebug_info0
	.byte	0
.La24:
	.uleb128	10
	.long	.La23-.Ldebug_info0
# Definition Array[0..31] Of TFmVoice
.La25:
	.uleb128	19
	.uleb128	256
	.long	.La12-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	31
	.uleb128	8
	.long	.La37-.Ldebug_info0
	.byte	0
.La26:
	.uleb128	10
	.long	.La25-.Ldebug_info0
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
.La37:
	.uleb128	8
	.ascii	"SHORTINT\000"
	.long	.La55-.Ldebug_info0
.La55:
	.uleb128	9
	.ascii	"SHORTINT\000"
	.byte	5
	.byte	1
.La38:
	.uleb128	10
	.long	.La37-.Ldebug_info0
# Definition TObject
.La40:
	.uleb128	8
	.ascii	"TOBJECT\000"
	.long	.La56-.Ldebug_info0
.La56:
	.uleb128	11
	.long	.La42-.Ldebug_info0
.La42:
	.uleb128	14
	.ascii	"TOBJECT\000"
	.uleb128	8
	.uleb128	20
	.byte	1
	.ascii	"_vptr$TOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La43-.Ldebug_info0
# Procdef constructor Create(<TObject>;<Pointer>);
	.uleb128	21
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol vmt
	.uleb128	23
	.ascii	"vmt\000"
	.long	.La43-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TObject>;<Pointer>);
	.uleb128	24
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol vmt
	.uleb128	23
	.ascii	"vmt\000"
	.long	.La43-.Ldebug_info0
	.byte	0
# Procdef class newinstance(<Class Of TObject>):TObject;
	.uleb128	25
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
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La57-.Ldebug_info0
	.byte	0
# Procdef FreeInstance(<TObject>);
	.uleb128	24
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
	.byte	0
# Procdef SafeCallException(<TObject>;TObject;Pointer):LongInt;
	.uleb128	25
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
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol EXCEPTOBJECT
	.uleb128	23
	.ascii	"EXCEPTOBJECT\000"
	.long	.La40-.Ldebug_info0
# Symbol EXCEPTADDR
	.uleb128	23
	.ascii	"EXCEPTADDR\000"
	.long	.La43-.Ldebug_info0
	.byte	0
# Procdef DefaultHandler(<TObject>;var <Formal type>);
	.uleb128	24
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	23
	.ascii	"MESSAGE\000"
	.long	.La61-.Ldebug_info0
	.byte	0
# Procdef Free(<TObject>);
	.uleb128	26
	.ascii	"FREE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
	.byte	0
# Procdef class InitInstance(<Class Of TObject>;Pointer):TObject;
	.uleb128	21
	.ascii	"INITINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La63-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	23
	.ascii	"INSTANCE\000"
	.long	.La43-.Ldebug_info0
	.byte	0
# Procdef CleanupInstance(<TObject>);
	.uleb128	26
	.ascii	"CLEANUPINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
	.byte	0
# Procdef class ClassType(<Class Of TObject>):Class Of TObject;
	.uleb128	21
	.ascii	"CLASSTYPE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La65-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La67-.Ldebug_info0
	.byte	0
# Procdef class ClassInfo(<Class Of TObject>):^untyped;
	.uleb128	21
	.ascii	"CLASSINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La43-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La69-.Ldebug_info0
	.byte	0
# Procdef class ClassName(<Class Of TObject>;<var ShortString>):ShortString;
	.uleb128	21
	.ascii	"CLASSNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La71-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La73-.Ldebug_info0
# Symbol result
	.uleb128	27
	.ascii	"result\000"
	.long	.La71-.Ldebug_info0
	.byte	0
# Procdef class ClassNameIs(<Class Of TObject>;const ShortString):Boolean;
	.uleb128	21
	.ascii	"CLASSNAMEIS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La77-.Ldebug_info0
# Symbol NAME
	.uleb128	23
	.ascii	"NAME\000"
	.long	.La71-.Ldebug_info0
	.byte	0
# Procdef class ClassParent(<Class Of TObject>):Class Of TObject;
	.uleb128	21
	.ascii	"CLASSPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La65-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La79-.Ldebug_info0
	.byte	0
# Procdef class InstanceSize(<Class Of TObject>):Int64;
	.uleb128	21
	.ascii	"INSTANCESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La81-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La83-.Ldebug_info0
	.byte	0
# Procdef class InheritsFrom(<Class Of TObject>;TClass):Boolean;
	.uleb128	21
	.ascii	"INHERITSFROM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La85-.Ldebug_info0
# Symbol ACLASS
	.uleb128	23
	.ascii	"ACLASS\000"
	.long	.La65-.Ldebug_info0
	.byte	0
# Procdef class StringMessageTable(<Class Of TObject>):^TStringMessageTable;
	.uleb128	21
	.ascii	"STRINGMESSAGETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La87-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La89-.Ldebug_info0
	.byte	0
# Procdef class MethodAddress(<Class Of TObject>;const ShortString):^untyped;
	.uleb128	21
	.ascii	"METHODADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La43-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La91-.Ldebug_info0
# Symbol NAME
	.uleb128	23
	.ascii	"NAME\000"
	.long	.La71-.Ldebug_info0
	.byte	0
# Procdef class MethodName(<Class Of TObject>;<var ShortString>;Pointer):ShortString;
	.uleb128	21
	.ascii	"METHODNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La71-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La93-.Ldebug_info0
# Symbol result
	.uleb128	27
	.ascii	"result\000"
	.long	.La71-.Ldebug_info0
# Symbol ADDRESS
	.uleb128	23
	.ascii	"ADDRESS\000"
	.long	.La43-.Ldebug_info0
	.byte	0
# Procdef FieldAddress(<TObject>;const ShortString):^untyped;
	.uleb128	21
	.ascii	"FIELDADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La43-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol NAME
	.uleb128	23
	.ascii	"NAME\000"
	.long	.La71-.Ldebug_info0
	.byte	0
# Procdef AfterConstruction(<TObject>);
	.uleb128	24
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
	.byte	0
# Procdef BeforeDestruction(<TObject>);
	.uleb128	24
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
	.byte	0
# Procdef DefaultHandlerStr(<TObject>;var <Formal type>);
	.uleb128	24
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	23
	.ascii	"MESSAGE\000"
	.long	.La61-.Ldebug_info0
	.byte	0
# Procdef Dispatch(<TObject>;var <Formal type>);
	.uleb128	24
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	23
	.ascii	"MESSAGE\000"
	.long	.La61-.Ldebug_info0
	.byte	0
# Procdef DispatchStr(<TObject>;var <Formal type>);
	.uleb128	24
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	23
	.ascii	"MESSAGE\000"
	.long	.La61-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	21
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol IID
	.uleb128	23
	.ascii	"IID\000"
	.long	.La95-.Ldebug_info0
# Symbol OBJ
	.uleb128	23
	.ascii	"OBJ\000"
	.long	.La61-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	21
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	23
	.ascii	"IIDSTR\000"
	.long	.La71-.Ldebug_info0
# Symbol OBJ
	.uleb128	23
	.ascii	"OBJ\000"
	.long	.La61-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceByStr(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	21
	.ascii	"GETINTERFACEBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	23
	.ascii	"IIDSTR\000"
	.long	.La71-.Ldebug_info0
# Symbol OBJ
	.uleb128	23
	.ascii	"OBJ\000"
	.long	.La61-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceWeak(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	21
	.ascii	"GETINTERFACEWEAK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol IID
	.uleb128	23
	.ascii	"IID\000"
	.long	.La95-.Ldebug_info0
# Symbol OBJ
	.uleb128	23
	.ascii	"OBJ\000"
	.long	.La61-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntry(<Class Of TObject>;const TGuid):^tinterfaceentry;
	.uleb128	21
	.ascii	"GETINTERFACEENTRY\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La97-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La99-.Ldebug_info0
# Symbol IID
	.uleb128	23
	.ascii	"IID\000"
	.long	.La95-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntryByStr(<Class Of TObject>;const ShortString):^tinterfaceentry;
	.uleb128	21
	.ascii	"GETINTERFACEENTRYBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La97-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La101-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	23
	.ascii	"IIDSTR\000"
	.long	.La71-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceTable(<Class Of TObject>):^tinterfacetable;
	.uleb128	21
	.ascii	"GETINTERFACETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La105-.Ldebug_info0
	.byte	0
# Procdef class UnitName(<Class Of TObject>;<var AnsiString>):AnsiString;
	.uleb128	21
	.ascii	"UNITNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La107-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La109-.Ldebug_info0
# Symbol result
	.uleb128	27
	.ascii	"result\000"
	.long	.La107-.Ldebug_info0
	.byte	0
# Procdef Equals(<TObject>;TObject):Boolean;
	.uleb128	25
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
	.long	.La75-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol OBJ
	.uleb128	23
	.ascii	"OBJ\000"
	.long	.La40-.Ldebug_info0
	.byte	0
# Procdef GetHashCode(<TObject>):Int64;
	.uleb128	25
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
	.long	.La81-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
	.byte	0
# Procdef ToString(<TObject>;<var AnsiString>):AnsiString;
	.uleb128	25
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
	.long	.La107-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La40-.Ldebug_info0
# Symbol result
	.uleb128	27
	.ascii	"result\000"
	.long	.La107-.Ldebug_info0
	.byte	0
	.byte	0
.La41:
	.uleb128	10
	.long	.La40-.Ldebug_info0
# Definition Pointer
.La43:
	.uleb128	8
	.ascii	"POINTER\000"
	.long	.La111-.Ldebug_info0
.La111:
	.uleb128	28
.La44:
	.uleb128	10
	.long	.La43-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of TFmOperator
.La46:
	.uleb128	19
	.uleb128	64
	.long	.La9-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	7
	.uleb128	8
	.long	.La37-.Ldebug_info0
	.byte	0
.La47:
	.uleb128	10
	.long	.La46-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of Double
.La48:
	.uleb128	19
	.uleb128	64
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	7
	.uleb128	8
	.long	.La37-.Ldebug_info0
	.byte	0
.La49:
	.uleb128	10
	.long	.La48-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of Single
.La50:
	.uleb128	19
	.uleb128	32
	.long	.La29-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	7
	.uleb128	4
	.long	.La37-.Ldebug_info0
	.byte	0
.La51:
	.uleb128	10
	.long	.La50-.Ldebug_info0
# Definition SmallInt
.La53:
	.uleb128	8
	.ascii	"SMALLINT\000"
	.long	.La112-.Ldebug_info0
.La112:
	.uleb128	9
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.La54:
	.uleb128	10
	.long	.La53-.Ldebug_info0
# Definition TObject.Class Of TObject
.La57:
	.uleb128	11
	.long	.La113-.Ldebug_info0
.La58:
	.uleb128	10
	.long	.La57-.Ldebug_info0
# Definition HRESULT
.La59:
	.uleb128	8
	.ascii	"HRESULT\000"
	.long	.La115-.Ldebug_info0
.La115:
	.uleb128	9
	.ascii	"HRESULT\000"
	.byte	5
	.byte	4
.La60:
	.uleb128	10
	.long	.La59-.Ldebug_info0
# Definition <Formal type>
.La61:
	.uleb128	8
	.ascii	"formal\000"
	.long	.La116-.Ldebug_info0
.La116:
	.uleb128	9
	.ascii	"FormalDef\000"
	.byte	7
	.byte	0
.La62:
	.uleb128	10
	.long	.La61-.Ldebug_info0
# Definition TObject.Class Of TObject
.La63:
	.uleb128	11
	.long	.La113-.Ldebug_info0
.La64:
	.uleb128	10
	.long	.La63-.Ldebug_info0
# Definition TClass
.La65:
	.uleb128	8
	.ascii	"TCLASS\000"
	.long	.La117-.Ldebug_info0
.La117:
	.uleb128	11
	.long	.La113-.Ldebug_info0
.La66:
	.uleb128	10
	.long	.La65-.Ldebug_info0
# Definition TObject.Class Of TObject
.La67:
	.uleb128	11
	.long	.La113-.Ldebug_info0
.La68:
	.uleb128	10
	.long	.La67-.Ldebug_info0
# Definition TObject.Class Of TObject
.La69:
	.uleb128	11
	.long	.La113-.Ldebug_info0
.La70:
	.uleb128	10
	.long	.La69-.Ldebug_info0
# Definition ShortString
.La71:
	.uleb128	8
	.ascii	"SHORTSTRING\000"
	.long	.La118-.Ldebug_info0
.La118:
	.uleb128	18
	.ascii	"ShortString\000"
	.uleb128	256
	.uleb128	16
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La120-.Ldebug_info0
	.uleb128	16
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La119-.Ldebug_info0
	.byte	0
.La119:
	.uleb128	29
	.uleb128	256
	.uleb128	1
	.long	.La122-.Ldebug_info0
	.uleb128	30
	.uleb128	1
	.uleb128	255
	.long	.La120-.Ldebug_info0
	.byte	0
.La72:
	.uleb128	10
	.long	.La71-.Ldebug_info0
# Definition TObject.Class Of TObject
.La73:
	.uleb128	11
	.long	.La113-.Ldebug_info0
.La74:
	.uleb128	10
	.long	.La73-.Ldebug_info0
# Definition Boolean
.La75:
	.uleb128	8
	.ascii	"BOOLEAN\000"
	.long	.La124-.Ldebug_info0
.La124:
	.uleb128	9
	.ascii	"Boolean\000"
	.byte	2
	.byte	1
.La76:
	.uleb128	10
	.long	.La75-.Ldebug_info0
# Definition TObject.Class Of TObject
.La77:
	.uleb128	11
	.long	.La113-.Ldebug_info0
.La78:
	.uleb128	10
	.long	.La77-.Ldebug_info0
# Definition TObject.Class Of TObject
.La79:
	.uleb128	11
	.long	.La113-.Ldebug_info0
.La80:
	.uleb128	10
	.long	.La79-.Ldebug_info0
# Definition Int64
.La81:
	.uleb128	8
	.ascii	"INT64\000"
	.long	.La125-.Ldebug_info0
.La125:
	.uleb128	9
	.ascii	"Int64\000"
	.byte	5
	.byte	8
.La82:
	.uleb128	10
	.long	.La81-.Ldebug_info0
# Definition TObject.Class Of TObject
.La83:
	.uleb128	11
	.long	.La113-.Ldebug_info0
.La84:
	.uleb128	10
	.long	.La83-.Ldebug_info0
# Definition TObject.Class Of TObject
.La85:
	.uleb128	11
	.long	.La113-.Ldebug_info0
.La86:
	.uleb128	10
	.long	.La85-.Ldebug_info0
# Definition pstringmessagetable
.La87:
	.uleb128	8
	.ascii	"PSTRINGMESSAGETABLE\000"
	.long	.La126-.Ldebug_info0
.La126:
	.uleb128	11
	.long	.La127-.Ldebug_info0
.La88:
	.uleb128	10
	.long	.La87-.Ldebug_info0
# Definition TObject.Class Of TObject
.La89:
	.uleb128	11
	.long	.La113-.Ldebug_info0
.La90:
	.uleb128	10
	.long	.La89-.Ldebug_info0
# Definition TObject.Class Of TObject
.La91:
	.uleb128	11
	.long	.La113-.Ldebug_info0
.La92:
	.uleb128	10
	.long	.La91-.Ldebug_info0
# Definition TObject.Class Of TObject
.La93:
	.uleb128	11
	.long	.La113-.Ldebug_info0
.La94:
	.uleb128	10
	.long	.La93-.Ldebug_info0
# Definition TGuid
.La95:
	.uleb128	8
	.ascii	"TGUID\000"
	.long	.La129-.Ldebug_info0
.La129:
	.uleb128	18
	.ascii	"TGUID\000"
	.uleb128	16
	.uleb128	16
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La130-.Ldebug_info0
	.uleb128	16
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La132-.Ldebug_info0
	.uleb128	16
	.ascii	"DATA3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La132-.Ldebug_info0
	.uleb128	16
	.ascii	"DATA4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La134-.Ldebug_info0
	.uleb128	16
	.ascii	"D1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La130-.Ldebug_info0
	.uleb128	16
	.ascii	"D2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La132-.Ldebug_info0
	.uleb128	16
	.ascii	"D3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La132-.Ldebug_info0
	.uleb128	16
	.ascii	"D4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La136-.Ldebug_info0
	.uleb128	16
	.ascii	"TIME_LOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La130-.Ldebug_info0
	.uleb128	16
	.ascii	"TIME_MID\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La132-.Ldebug_info0
	.uleb128	16
	.ascii	"TIME_HI_AND_VERSION\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La132-.Ldebug_info0
	.uleb128	16
	.ascii	"CLOCK_SEQ_HI_AND_RESERVED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La120-.Ldebug_info0
	.uleb128	16
	.ascii	"CLOCK_SEQ_LOW\000"
	.byte	2
	.byte	35
	.uleb128	9
	.long	.La120-.Ldebug_info0
	.uleb128	16
	.ascii	"NODE\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La138-.Ldebug_info0
	.byte	0
.La96:
	.uleb128	10
	.long	.La95-.Ldebug_info0
# Definition pinterfaceentry
.La97:
	.uleb128	8
	.ascii	"PINTERFACEENTRY\000"
	.long	.La140-.Ldebug_info0
.La140:
	.uleb128	11
	.long	.La141-.Ldebug_info0
.La98:
	.uleb128	10
	.long	.La97-.Ldebug_info0
# Definition TObject.Class Of TObject
.La99:
	.uleb128	11
	.long	.La113-.Ldebug_info0
.La100:
	.uleb128	10
	.long	.La99-.Ldebug_info0
# Definition TObject.Class Of TObject
.La101:
	.uleb128	11
	.long	.La113-.Ldebug_info0
.La102:
	.uleb128	10
	.long	.La101-.Ldebug_info0
# Definition pinterfacetable
.La103:
	.uleb128	8
	.ascii	"PINTERFACETABLE\000"
	.long	.La143-.Ldebug_info0
.La143:
	.uleb128	11
	.long	.La144-.Ldebug_info0
.La104:
	.uleb128	10
	.long	.La103-.Ldebug_info0
# Definition TObject.Class Of TObject
.La105:
	.uleb128	11
	.long	.La113-.Ldebug_info0
.La106:
	.uleb128	10
	.long	.La105-.Ldebug_info0
# Definition AnsiString
.La107:
	.uleb128	8
	.ascii	"ANSISTRING\000"
	.long	.La146-.Ldebug_info0
.La146:
	.uleb128	11
	.long	.La122-.Ldebug_info0
.La108:
	.uleb128	10
	.long	.La107-.Ldebug_info0
# Definition TObject.Class Of TObject
.La109:
	.uleb128	11
	.long	.La113-.Ldebug_info0
.La110:
	.uleb128	10
	.long	.La109-.Ldebug_info0
# Definition <record type>
.La113:
	.uleb128	8
	.ascii	"__vtbl_ptr_type\000"
	.long	.La147-.Ldebug_info0
.La147:
	.uleb128	31
	.uleb128	40
	.byte	0
.La114:
	.uleb128	10
	.long	.La113-.Ldebug_info0
# Definition Byte
.La120:
	.uleb128	8
	.ascii	"BYTE\000"
	.long	.La148-.Ldebug_info0
.La148:
	.uleb128	9
	.ascii	"BYTE\000"
	.byte	7
	.byte	1
.La121:
	.uleb128	10
	.long	.La120-.Ldebug_info0
# Definition Char
.La122:
	.uleb128	8
	.ascii	"CHAR\000"
	.long	.La149-.Ldebug_info0
.La149:
	.uleb128	9
	.ascii	"Char\000"
	.byte	8
	.byte	1
.La123:
	.uleb128	10
	.long	.La122-.Ldebug_info0
# Definition TStringMessageTable
.La127:
	.uleb128	8
	.ascii	"TSTRINGMESSAGETABLE\000"
	.long	.La150-.Ldebug_info0
.La150:
	.uleb128	18
	.ascii	"TSTRINGMESSAGETABLE\000"
	.uleb128	24
	.uleb128	16
	.ascii	"COUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La27-.Ldebug_info0
	.uleb128	16
	.ascii	"MSGSTRTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La151-.Ldebug_info0
	.byte	0
.La128:
	.uleb128	10
	.long	.La127-.Ldebug_info0
# Definition LongWord
.La130:
	.uleb128	8
	.ascii	"LONGWORD\000"
	.long	.La153-.Ldebug_info0
.La153:
	.uleb128	9
	.ascii	"LONGWORD\000"
	.byte	7
	.byte	4
.La131:
	.uleb128	10
	.long	.La130-.Ldebug_info0
# Definition Word
.La132:
	.uleb128	8
	.ascii	"WORD\000"
	.long	.La154-.Ldebug_info0
.La154:
	.uleb128	9
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La133:
	.uleb128	10
	.long	.La132-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La134:
	.uleb128	19
	.uleb128	8
	.long	.La120-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La37-.Ldebug_info0
	.byte	0
.La135:
	.uleb128	10
	.long	.La134-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La136:
	.uleb128	19
	.uleb128	8
	.long	.La120-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La37-.Ldebug_info0
	.byte	0
.La137:
	.uleb128	10
	.long	.La136-.Ldebug_info0
# Definition TGuid.Array[0..5] Of Byte
.La138:
	.uleb128	19
	.uleb128	6
	.long	.La120-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	5
	.uleb128	1
	.long	.La37-.Ldebug_info0
	.byte	0
.La139:
	.uleb128	10
	.long	.La138-.Ldebug_info0
# Definition tinterfaceentry
.La141:
	.uleb128	8
	.ascii	"TINTERFACEENTRY\000"
	.long	.La155-.Ldebug_info0
.La155:
	.uleb128	18
	.ascii	"TINTERFACEENTRY\000"
	.uleb128	40
	.uleb128	16
	.ascii	"IID\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La156-.Ldebug_info0
	.uleb128	16
	.ascii	"VTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La43-.Ldebug_info0
	.uleb128	16
	.ascii	"IOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La158-.Ldebug_info0
	.uleb128	16
	.ascii	"IIDSTR\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La160-.Ldebug_info0
	.uleb128	16
	.ascii	"ITYPE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La162-.Ldebug_info0
	.uleb128	16
	.ascii	"__PAD_DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La81-.Ldebug_info0
	.byte	0
.La142:
	.uleb128	10
	.long	.La141-.Ldebug_info0
# Definition tinterfacetable
.La144:
	.uleb128	8
	.ascii	"TINTERFACETABLE\000"
	.long	.La164-.Ldebug_info0
.La164:
	.uleb128	18
	.ascii	"TINTERFACETABLE\000"
	.uleb128	48
	.uleb128	16
	.ascii	"ENTRYCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La158-.Ldebug_info0
	.uleb128	16
	.ascii	"ENTRIES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La165-.Ldebug_info0
	.byte	0
.La145:
	.uleb128	10
	.long	.La144-.Ldebug_info0
# Definition TStringMessageTable.Array[0..0] Of TMsgStrTable
.La151:
	.uleb128	19
	.uleb128	16
	.long	.La167-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	0
	.uleb128	16
	.long	.La37-.Ldebug_info0
	.byte	0
.La152:
	.uleb128	10
	.long	.La151-.Ldebug_info0
# Definition PGuid
.La156:
	.uleb128	8
	.ascii	"PGUID\000"
	.long	.La169-.Ldebug_info0
.La169:
	.uleb128	11
	.long	.La95-.Ldebug_info0
.La157:
	.uleb128	10
	.long	.La156-.Ldebug_info0
# Definition QWord
.La158:
	.uleb128	8
	.ascii	"QWORD\000"
	.long	.La170-.Ldebug_info0
.La170:
	.uleb128	9
	.ascii	"QWord\000"
	.byte	7
	.byte	8
.La159:
	.uleb128	10
	.long	.La158-.Ldebug_info0
# Definition PShortString
.La160:
	.uleb128	8
	.ascii	"PSHORTSTRING\000"
	.long	.La171-.Ldebug_info0
.La171:
	.uleb128	11
	.long	.La71-.Ldebug_info0
.La161:
	.uleb128	10
	.long	.La160-.Ldebug_info0
# Definition tinterfaceentrytype
.La162:
	.uleb128	8
	.ascii	"TINTERFACEENTRYTYPE\000"
	.long	.La172-.Ldebug_info0
.La172:
	.uleb128	32
	.ascii	"TINTERFACEENTRYTYPE\000"
	.byte	4
	.uleb128	33
	.ascii	"ETSTANDARD\000"
	.long	0
	.uleb128	33
	.ascii	"ETVIRTUALMETHODRESULT\000"
	.long	1
	.uleb128	33
	.ascii	"ETSTATICMETHODRESULT\000"
	.long	2
	.uleb128	33
	.ascii	"ETFIELDVALUE\000"
	.long	3
	.uleb128	33
	.ascii	"ETVIRTUALMETHODCLASS\000"
	.long	4
	.uleb128	33
	.ascii	"ETSTATICMETHODCLASS\000"
	.long	5
	.uleb128	33
	.ascii	"ETFIELDVALUECLASS\000"
	.long	6
	.byte	0
.La163:
	.uleb128	10
	.long	.La162-.Ldebug_info0
# Definition tinterfacetable.Array[0..0] Of tinterfaceentry
.La165:
	.uleb128	19
	.uleb128	40
	.long	.La141-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	0
	.uleb128	40
	.long	.La37-.Ldebug_info0
	.byte	0
.La166:
	.uleb128	10
	.long	.La165-.Ldebug_info0
# Definition TMsgStrTable
.La167:
	.uleb128	8
	.ascii	"TMSGSTRTABLE\000"
	.long	.La173-.Ldebug_info0
.La173:
	.uleb128	18
	.ascii	"TMSGSTRTABLE\000"
	.uleb128	16
	.uleb128	16
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La160-.Ldebug_info0
	.uleb128	16
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La43-.Ldebug_info0
	.byte	0
.La168:
	.uleb128	10
	.long	.La167-.Ldebug_info0
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
	.uleb128	10
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
	.uleb128	63
	.uleb128	12
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
# Abbrev 5
	.uleb128	5
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
	.uleb128	22
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 9
	.uleb128	9
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
# Abbrev 10
	.uleb128	10
	.uleb128	16
	.byte	0
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 11
	.uleb128	11
	.uleb128	15
	.byte	0
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 12
	.uleb128	12
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
# Abbrev 13
	.uleb128	13
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
	.uleb128	1
	.byte	1
	.uleb128	11
	.uleb128	15
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 20
	.uleb128	20
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
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 22
	.uleb128	22
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
# Abbrev 23
	.uleb128	23
	.uleb128	5
	.byte	0
	.uleb128	3
	.uleb128	8
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
	.uleb128	76
	.uleb128	11
	.uleb128	77
	.uleb128	10
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
	.uleb128	73
	.uleb128	19
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
	.byte	0
	.byte	0
# Abbrev 27
	.uleb128	27
	.uleb128	52
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 28
	.uleb128	28
	.uleb128	15
	.byte	0
	.byte	0
	.byte	0
# Abbrev 29
	.uleb128	29
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
# Abbrev 30
	.uleb128	30
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
# Abbrev 31
	.uleb128	31
	.uleb128	19
	.byte	1
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 32
	.uleb128	32
	.uleb128	4
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.byte	0
	.byte	0
# Abbrev 33
	.uleb128	33
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
# function: FMSYNTH_$$_INITVOICES
# [84:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	95
# [85:1]
	.byte	2
	.uleb128	.Ll2-.Ll1
	.byte	13
# [86:14]
	.byte	2
	.uleb128	.Ll3-.Ll2
	.byte	5
	.uleb128	14
	.byte	13
# [85:1]
	.byte	2
	.uleb128	.Ll4-.Ll3
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [87:1]
	.byte	2
	.uleb128	.Ll5-.Ll4
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll6
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
# [93:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll7
	.byte	5
	.uleb128	1
	.byte	104
# [93:1]
	.byte	2
	.uleb128	.Ll8-.Ll7
	.byte	1
# [107:1]
	.byte	2
	.uleb128	.Ll9-.Ll8
	.byte	26
# [94:1]
	.byte	2
	.uleb128	.Ll10-.Ll9
	.byte	3
	.sleb128	-13
	.byte	1
# [95:1]
	.byte	2
	.uleb128	.Ll11-.Ll10
	.byte	13
# [96:1]
	.byte	2
	.uleb128	.Ll12-.Ll11
	.byte	13
# [93:1]
	.byte	2
	.uleb128	.Ll13-.Ll12
	.byte	3
	.sleb128	-3
	.byte	1
# [96:29]
	.byte	2
	.uleb128	.Ll14-.Ll13
	.byte	5
	.uleb128	29
	.byte	15
# [97:1]
	.byte	2
	.uleb128	.Ll15-.Ll14
	.byte	5
	.uleb128	1
	.byte	13
# [98:1]
	.byte	2
	.uleb128	.Ll16-.Ll15
	.byte	13
# [103:1]
	.byte	2
	.uleb128	.Ll17-.Ll16
	.byte	17
# [104:1]
	.byte	2
	.uleb128	.Ll18-.Ll17
	.byte	13
# [105:1]
	.byte	2
	.uleb128	.Ll19-.Ll18
	.byte	13
# [106:1]
	.byte	2
	.uleb128	.Ll20-.Ll19
	.byte	13
# [107:1]
	.byte	2
	.uleb128	.Ll21-.Ll20
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll22
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
# [115:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll23
	.byte	5
	.uleb128	1
	.byte	126
# [116:1]
	.byte	2
	.uleb128	.Ll24-.Ll23
	.byte	13
# [117:25]
	.byte	2
	.uleb128	.Ll25-.Ll24
	.byte	5
	.uleb128	25
	.byte	13
# [116:1]
	.byte	2
	.uleb128	.Ll26-.Ll25
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [118:1]
	.byte	2
	.uleb128	.Ll27-.Ll26
	.byte	14
# [119:1]
	.byte	2
	.uleb128	.Ll28-.Ll27
	.byte	13
# [121:1]
	.byte	2
	.uleb128	.Ll29-.Ll28
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll30
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITFLOGTABLE
# [132:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll31
	.byte	5
	.uleb128	1
	.byte	143
# [134:1]
	.byte	2
	.uleb128	.Ll32-.Ll31
	.byte	14
# [135:1]
	.byte	2
	.uleb128	.Ll33-.Ll32
	.byte	13
# [137:7]
	.byte	2
	.uleb128	.Ll34-.Ll33
	.byte	5
	.uleb128	7
	.byte	14
# [140:15]
	.byte	2
	.uleb128	.Ll35-.Ll34
	.byte	5
	.uleb128	15
	.byte	15
# [141:9]
	.byte	2
	.uleb128	.Ll36-.Ll35
	.byte	5
	.uleb128	9
	.byte	13
# [135:1]
	.byte	2
	.uleb128	.Ll37-.Ll36
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-6
	.byte	1
# [144:1]
	.byte	2
	.uleb128	.Ll38-.Ll37
	.byte	21
# [145:1]
	.byte	2
	.uleb128	.Ll39-.Ll38
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll40
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITFSINETABLE
# [152:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll41
	.byte	5
	.uleb128	1
	.byte	163
# [153:1]
	.byte	2
	.uleb128	.Ll42-.Ll41
	.byte	13
# [154:1]
	.byte	2
	.uleb128	.Ll43-.Ll42
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll44
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
# [158:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll45
	.byte	5
	.uleb128	1
	.byte	169
# [159:12]
	.byte	2
	.uleb128	.Ll46-.Ll45
	.byte	5
	.uleb128	12
	.byte	13
# [160:12]
	.byte	2
	.uleb128	.Ll47-.Ll46
	.byte	13
# [161:1]
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
# function: FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
# [165:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll50
	.byte	5
	.uleb128	1
	.byte	176
# [166:17]
	.byte	2
	.uleb128	.Ll51-.Ll50
	.byte	5
	.uleb128	17
	.byte	13
# [167:17]
	.byte	2
	.uleb128	.Ll52-.Ll51
	.byte	13
# [168:1]
	.byte	2
	.uleb128	.Ll53-.Ll52
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll54
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
# [175:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll55
	.byte	5
	.uleb128	1
	.byte	186
# [175:1]
	.byte	2
	.uleb128	.Ll56-.Ll55
	.byte	1
# [192:1]
	.byte	2
	.uleb128	.Ll57-.Ll56
	.byte	29
# [176:1]
	.byte	2
	.uleb128	.Ll58-.Ll57
	.byte	3
	.sleb128	-16
	.byte	1
# [177:8]
	.byte	2
	.uleb128	.Ll59-.Ll58
	.byte	5
	.uleb128	8
	.byte	13
# [189:3]
	.byte	2
	.uleb128	.Ll60-.Ll59
	.byte	5
	.uleb128	3
	.byte	24
# [192:1]
	.byte	2
	.uleb128	.Ll61-.Ll60
	.byte	5
	.uleb128	1
	.byte	15
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll62
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
# [196:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll63
	.byte	5
	.uleb128	1
	.byte	207
# [196:1]
	.byte	2
	.uleb128	.Ll64-.Ll63
	.byte	1
# [197:1]
	.byte	2
	.uleb128	.Ll65-.Ll64
	.byte	13
# [198:1]
	.byte	2
	.uleb128	.Ll66-.Ll65
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll67
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE
# [204:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll68
	.byte	5
	.uleb128	1
	.byte	215
# [205:1]
	.byte	2
	.uleb128	.Ll69-.Ll68
	.byte	13
# [207:33]
	.byte	2
	.uleb128	.Ll70-.Ll69
	.byte	5
	.uleb128	33
	.byte	14
# [208:33]
	.byte	2
	.uleb128	.Ll71-.Ll70
	.byte	13
# [209:33]
	.byte	2
	.uleb128	.Ll72-.Ll71
	.byte	13
# [210:33]
	.byte	2
	.uleb128	.Ll73-.Ll72
	.byte	13
# [211:33]
	.byte	2
	.uleb128	.Ll74-.Ll73
	.byte	13
# [214:1]
	.byte	2
	.uleb128	.Ll75-.Ll74
	.byte	5
	.uleb128	1
	.byte	15
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll76
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
# [218:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll77
	.byte	5
	.uleb128	1
	.byte	229
# [219:12]
	.byte	2
	.uleb128	.Ll78-.Ll77
	.byte	5
	.uleb128	12
	.byte	13
# [220:17]
	.byte	2
	.uleb128	.Ll79-.Ll78
	.byte	5
	.uleb128	17
	.byte	13
# [221:1]
	.byte	2
	.uleb128	.Ll80-.Ll79
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll81
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_INIT
# [225:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll82
	.byte	5
	.uleb128	1
	.byte	236
# [227:1]
	.byte	2
	.uleb128	.Ll83-.Ll82
	.byte	14
# [228:1]
	.byte	2
	.uleb128	.Ll84-.Ll83
	.byte	13
# [229:1]
	.byte	2
	.uleb128	.Ll85-.Ll84
	.byte	13
# [230:1]
	.byte	2
	.uleb128	.Ll86-.Ll85
	.byte	13
# [231:1]
	.byte	2
	.uleb128	.Ll87-.Ll86
	.byte	13
# [232:1]
	.byte	2
	.uleb128	.Ll88-.Ll87
	.byte	13
# [233:1]
	.byte	2
	.uleb128	.Ll89-.Ll88
	.byte	13
# [234:1]
	.byte	2
	.uleb128	.Ll90-.Ll89
	.byte	13
# [235:1]
	.byte	2
	.uleb128	.Ll91-.Ll90
	.byte	13
# [236:1]
	.byte	2
	.uleb128	.Ll92-.Ll91
	.byte	13
# [237:1]
	.byte	2
	.uleb128	.Ll93-.Ll92
	.byte	13
# [238:1]
	.byte	2
	.uleb128	.Ll94-.Ll93
	.byte	13
# [239:1]
	.byte	2
	.uleb128	.Ll95-.Ll94
	.byte	13
# [240:1]
	.byte	2
	.uleb128	.Ll96-.Ll95
	.byte	13
# [241:1]
	.byte	2
	.uleb128	.Ll97-.Ll96
	.byte	13
# [242:1]
	.byte	2
	.uleb128	.Ll98-.Ll97
	.byte	13
# [243:1]
	.byte	2
	.uleb128	.Ll99-.Ll98
	.byte	13
# [244:1]
	.byte	2
	.uleb128	.Ll100-.Ll99
	.byte	13
# [245:1]
	.byte	2
	.uleb128	.Ll101-.Ll100
	.byte	13
# [246:1]
	.byte	2
	.uleb128	.Ll102-.Ll101
	.byte	13
# [247:1]
	.byte	2
	.uleb128	.Ll103-.Ll102
	.byte	13
# [248:1]
	.byte	2
	.uleb128	.Ll104-.Ll103
	.byte	13
# [249:1]
	.byte	2
	.uleb128	.Ll105-.Ll104
	.byte	13
# [250:1]
	.byte	2
	.uleb128	.Ll106-.Ll105
	.byte	13
# [251:1]
	.byte	2
	.uleb128	.Ll107-.Ll106
	.byte	13
# [252:1]
	.byte	2
	.uleb128	.Ll108-.Ll107
	.byte	13
# [253:1]
	.byte	2
	.uleb128	.Ll109-.Ll108
	.byte	13
# [254:1]
	.byte	2
	.uleb128	.Ll110-.Ll109
	.byte	13
# [255:1]
	.byte	2
	.uleb128	.Ll111-.Ll110
	.byte	13
# [256:1]
	.byte	2
	.uleb128	.Ll112-.Ll111
	.byte	13
# [257:1]
	.byte	2
	.uleb128	.Ll113-.Ll112
	.byte	13
# [262:1]
	.byte	2
	.uleb128	.Ll114-.Ll113
	.byte	17
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll115
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
# [279:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll116
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	278
	.byte	1
# [284:14]
	.byte	2
	.uleb128	.Ll117-.Ll116
	.byte	5
	.uleb128	14
	.byte	17
# [279:1]
	.byte	2
	.uleb128	.Ll118-.Ll117
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-5
	.byte	1
# [298:26]
	.byte	2
	.uleb128	.Ll119-.Ll118
	.byte	5
	.uleb128	26
	.byte	31
# [299:16]
	.byte	2
	.uleb128	.Ll120-.Ll119
	.byte	5
	.uleb128	16
	.byte	13
# [300:16]
	.byte	2
	.uleb128	.Ll121-.Ll120
	.byte	13
# [301:16]
	.byte	2
	.uleb128	.Ll122-.Ll121
	.byte	13
# [302:16]
	.byte	2
	.uleb128	.Ll123-.Ll122
	.byte	13
# [303:16]
	.byte	2
	.uleb128	.Ll124-.Ll123
	.byte	13
# [304:16]
	.byte	2
	.uleb128	.Ll125-.Ll124
	.byte	13
# [305:16]
	.byte	2
	.uleb128	.Ll126-.Ll125
	.byte	13
# [307:7]
	.byte	2
	.uleb128	.Ll127-.Ll126
	.byte	5
	.uleb128	7
	.byte	14
# [308:8]
	.byte	2
	.uleb128	.Ll128-.Ll127
	.byte	5
	.uleb128	8
	.byte	13
# [316:12]
	.byte	2
	.uleb128	.Ll129-.Ll128
	.byte	5
	.uleb128	12
	.byte	20
# [318:8]
	.byte	2
	.uleb128	.Ll130-.Ll129
	.byte	5
	.uleb128	8
	.byte	14
# [319:13]
	.byte	2
	.uleb128	.Ll131-.Ll130
	.byte	5
	.uleb128	13
	.byte	13
# [321:10]
	.byte	2
	.uleb128	.Ll132-.Ll131
	.byte	5
	.uleb128	10
	.byte	14
# [322:9]
	.byte	2
	.uleb128	.Ll133-.Ll132
	.byte	5
	.uleb128	9
	.byte	13
# [323:20]
	.byte	2
	.uleb128	.Ll134-.Ll133
	.byte	5
	.uleb128	20
	.byte	13
# [324:9]
	.byte	2
	.uleb128	.Ll135-.Ll134
	.byte	5
	.uleb128	9
	.byte	13
# [325:20]
	.byte	2
	.uleb128	.Ll136-.Ll135
	.byte	5
	.uleb128	20
	.byte	13
# [330:15]
	.byte	2
	.uleb128	.Ll137-.Ll136
	.byte	5
	.uleb128	15
	.byte	17
# [332:16]
	.byte	2
	.uleb128	.Ll138-.Ll137
	.byte	5
	.uleb128	16
	.byte	14
# [336:10]
	.byte	2
	.uleb128	.Ll139-.Ll138
	.byte	5
	.uleb128	10
	.byte	16
# [338:10]
	.byte	2
	.uleb128	.Ll140-.Ll139
	.byte	14
# [339:15]
	.byte	2
	.uleb128	.Ll141-.Ll140
	.byte	5
	.uleb128	15
	.byte	13
# [341:18]
	.byte	2
	.uleb128	.Ll142-.Ll141
	.byte	5
	.uleb128	18
	.byte	14
# [342:1]
	.byte	2
	.uleb128	.Ll143-.Ll142
	.byte	5
	.uleb128	1
	.byte	13
# [343:9]
	.byte	2
	.uleb128	.Ll144-.Ll143
	.byte	5
	.uleb128	9
	.byte	13
# [344:5]
	.byte	2
	.uleb128	.Ll145-.Ll144
	.byte	5
	.uleb128	5
	.byte	13
# [345:8]
	.byte	2
	.uleb128	.Ll146-.Ll145
	.byte	5
	.uleb128	8
	.byte	13
# [346:9]
	.byte	2
	.uleb128	.Ll147-.Ll146
	.byte	5
	.uleb128	9
	.byte	13
# [352:14]
	.byte	2
	.uleb128	.Ll148-.Ll147
	.byte	5
	.uleb128	14
	.byte	18
# [354:19]
	.byte	2
	.uleb128	.Ll149-.Ll148
	.byte	5
	.uleb128	19
	.byte	14
# [355:9]
	.byte	2
	.uleb128	.Ll150-.Ll149
	.byte	5
	.uleb128	9
	.byte	13
# [356:31]
	.byte	2
	.uleb128	.Ll151-.Ll150
	.byte	5
	.uleb128	31
	.byte	13
# [357:3]
	.byte	2
	.uleb128	.Ll152-.Ll151
	.byte	5
	.uleb128	3
	.byte	13
# [359:15]
	.byte	2
	.uleb128	.Ll153-.Ll152
	.byte	5
	.uleb128	15
	.byte	14
# [361:19]
	.byte	2
	.uleb128	.Ll154-.Ll153
	.byte	5
	.uleb128	19
	.byte	14
# [362:9]
	.byte	2
	.uleb128	.Ll155-.Ll154
	.byte	5
	.uleb128	9
	.byte	13
# [363:31]
	.byte	2
	.uleb128	.Ll156-.Ll155
	.byte	5
	.uleb128	31
	.byte	13
# [364:3]
	.byte	2
	.uleb128	.Ll157-.Ll156
	.byte	5
	.uleb128	3
	.byte	13
# [366:17]
	.byte	2
	.uleb128	.Ll158-.Ll157
	.byte	5
	.uleb128	17
	.byte	14
# [368:20]
	.byte	2
	.uleb128	.Ll159-.Ll158
	.byte	5
	.uleb128	20
	.byte	14
# [369:9]
	.byte	2
	.uleb128	.Ll160-.Ll159
	.byte	5
	.uleb128	9
	.byte	13
# [370:31]
	.byte	2
	.uleb128	.Ll161-.Ll160
	.byte	5
	.uleb128	31
	.byte	13
# [371:3]
	.byte	2
	.uleb128	.Ll162-.Ll161
	.byte	5
	.uleb128	3
	.byte	13
# [373:17]
	.byte	2
	.uleb128	.Ll163-.Ll162
	.byte	5
	.uleb128	17
	.byte	14
# [375:19]
	.byte	2
	.uleb128	.Ll164-.Ll163
	.byte	5
	.uleb128	19
	.byte	14
# [376:9]
	.byte	2
	.uleb128	.Ll165-.Ll164
	.byte	5
	.uleb128	9
	.byte	13
# [377:32]
	.byte	2
	.uleb128	.Ll166-.Ll165
	.byte	5
	.uleb128	32
	.byte	13
# [279:1]
	.byte	2
	.uleb128	.Ll167-.Ll166
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-98
	.byte	1
# [381:6]
	.byte	2
	.uleb128	.Ll168-.Ll167
	.byte	5
	.uleb128	6
	.byte	114
# [382:13]
	.byte	2
	.uleb128	.Ll169-.Ll168
	.byte	5
	.uleb128	13
	.byte	13
# [385:10]
	.byte	2
	.uleb128	.Ll170-.Ll169
	.byte	5
	.uleb128	10
	.byte	15
# [386:11]
	.byte	2
	.uleb128	.Ll171-.Ll170
	.byte	5
	.uleb128	11
	.byte	13
# [387:7]
	.byte	2
	.uleb128	.Ll172-.Ll171
	.byte	5
	.uleb128	7
	.byte	13
# [388:15]
	.byte	2
	.uleb128	.Ll173-.Ll172
	.byte	5
	.uleb128	15
	.byte	13
# [403:1]
	.byte	2
	.uleb128	.Ll174-.Ll173
	.byte	5
	.uleb128	1
	.byte	27
# [405:1]
	.byte	2
	.uleb128	.Ll175-.Ll174
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll176
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITNOTES
# [414:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll177
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	413
	.byte	1
# [415:1]
	.byte	2
	.uleb128	.Ll178-.Ll177
	.byte	13
# [417:10]
	.byte	2
	.uleb128	.Ll179-.Ll178
	.byte	5
	.uleb128	10
	.byte	14
# [418:7]
	.byte	2
	.uleb128	.Ll180-.Ll179
	.byte	5
	.uleb128	7
	.byte	13
# [415:1]
	.byte	2
	.uleb128	.Ll181-.Ll180
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-3
	.byte	1
# [420:1]
	.byte	2
	.uleb128	.Ll182-.Ll181
	.byte	17
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll183
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: INIT$_$FMSYNTH
# function: FMSYNTH_$$_init$
# [424:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll184
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	423
	.byte	1
# [426:1]
	.byte	2
	.uleb128	.Ll185-.Ll184
	.byte	14
# [427:1]
	.byte	2
	.uleb128	.Ll186-.Ll185
	.byte	13
# [428:1]
	.byte	2
	.uleb128	.Ll187-.Ll186
	.byte	13
# [431:1]
	.byte	2
	.uleb128	.Ll188-.Ll187
	.byte	15
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll189
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

