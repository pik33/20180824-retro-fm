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

.section .text.n_fmsynth$_$initsamples0_$$_fin$2,"x"
	.balign 16,0x90
FMSYNTH$_$INITSAMPLES0_$$_fin$2:
.Lc1:
.seh_proc FMSYNTH$_$INITSAMPLES0_$$_fin$2
.Ll1:
# [fmsynth.pas]
# [99] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc3:
.Lc4:
	movq	%rcx,%rbp
.Lc5:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
# Var $parentfp located in register rbp
.seh_endprologue
.Ll2:
	leaq	-2728(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rax
	movq	%rax,%rdx
	leaq	-640(%rbp),%rcx
	call	fpc_finalize
	leaq	-648(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc2:
.Lt4:
.Ll3:

.section .text.n_fmsynth_$$_initsamples0,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITSAMPLES0
FMSYNTH_$$_INITSAMPLES0:
.Lc6:
# Temps allocated between rbp-2760 and rbp-2720
.seh_proc FMSYNTH_$$_INITSAMPLES0
.Ll4:
	pushq	%rbp
.seh_pushreg %rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	leaq	-2800(%rsp),%rsp
.seh_stackalloc 2800
# Var i located in register ebx
# Var fh located in register esi
	movq	%rbx,-2760(%rbp)
	movq	%rsi,-2752(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rsi, 48
.seh_endprologue
# Var sr located at rbp-640, size=OS_NO
# Var currentdir2 located at rbp-648, size=OS_64
# Var dummy located at rbp-664, size=OS_128
# Var intwave located at rbp-2720, size=OS_NO
.Ll5:
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rdx
	leaq	-640(%rbp),%rcx
	call	fpc_initialize
	movq	$0,-648(%rbp)
	movq	$0,-2728(%rbp)
.Lj11:
	nop
.Lj7:
.Ll6:
# [100] currentdir2:='C:\s\';
	leaq	_$FMSYNTH$_Ld1(%rip),%rdx
	leaq	-648(%rbp),%rcx
	call	fpc_ansistr_assign
.Ll7:
# [101] if findfirst(currentdir2+'*.s2',faAnyFile,sr)=0 then
	leaq	-2728(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	_$FMSYNTH$_Ld2(%rip),%r8
	movq	-648(%rbp),%rdx
	leaq	-2728(%rbp),%rcx
	movl	$65535,%r9d
	call	fpc_ansistr_concat
	movq	-2728(%rbp),%rbx
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rdx
	leaq	-640(%rbp),%rcx
	call	fpc_finalize
	leaq	-640(%rbp),%r8
	movl	$511,%edx
	movq	%rbx,%rcx
	call	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj17
	.balign 8,0x90
.Lj32:
.Ll8:
# [103] fh:=fileopen(currentdir2+sr.name,$40);
	leaq	-2728(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movq	-616(%rbp),%r8
	movq	-648(%rbp),%rdx
	leaq	-2728(%rbp),%rcx
	movl	$65535,%r9d
	call	fpc_ansistr_concat
	movq	-2728(%rbp),%rcx
	movl	$64,%edx
	call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$QWORD
	movl	%eax,%esi
.Ll9:
# [104] fileread(fh,dummy,16);
	movslq	%esi,%rcx
	leaq	-664(%rbp),%rdx
	movl	$16,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll10:
# [105] waves0[sampleindex0].name:=sr.name;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX0(%rip),%eax
	imulq	$8200,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES0(%rip),%rdx
	leaq	(%rdx,%rax),%rcx
	movq	-616(%rbp),%rdx
	call	fpc_ansistr_assign
.Ll11:
# [106] fileread(fh,intwave,2048);
	movslq	%esi,%rcx
	leaq	-2720(%rbp),%rdx
	movl	$2048,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll12:
# [107] for i:=0 to 1023 do waves0[sampleindex0].wave[i]:=intwave[i]/32768;
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj67:
	addl	$1,%ebx
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX0(%rip),%eax
	imulq	$8200,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
# PeepHole Optimization,var2a
	movl	%ebx,%edx
	movswl	-2720(%rbp,%rdx,2),%edx
	cvtsi2sd	%edx,%xmm0
	mulsd	_$FMSYNTH$_Ld3(%rip),%xmm0
	leaq	U_$FMSYNTH_$$_WAVES0(%rip),%rdx
	leaq	(%rcx,%rdx),%rdx
	movsd	%xmm0,8(%rdx,%rax,8)
	cmpl	$1023,%ebx
	jl	.Lj67
.Ll13:
# [108] fileclose(fh);
	movslq	%esi,%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll14:
# [109] sampleindex0+=1;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX0(%rip),%eax
	leal	1(%eax),%eax
	movl	%eax,TC_$FMSYNTH_$$_SAMPLEINDEX0(%rip)
.Ll15:
# [110] until (findnext(sr)<>0) or (sampleindex0=128);
	leaq	-640(%rbp),%rcx
	call	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj34
	cmpl	$128,TC_$FMSYNTH_$$_SAMPLEINDEX0(%rip)
	jne	.Lj32
.Lj34:
.Lj17:
.Ll16:
# [111] findclose(sr);
	leaq	-640(%rbp),%rcx
	call	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
.Lj79:
.Ll17:
	nop
.Lj8:
	movq	%rbp,%rcx
	call	FMSYNTH$_$INITSAMPLES0_$$_fin$2
.Ll18:
# [112] end;
	movq	-2760(%rbp),%rbx
	movq	-2752(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj7
	.rva	.Lj8
	.rva	FMSYNTH$_$INITSAMPLES0_$$_fin$2

.section .text.n_fmsynth_$$_initsamples0,"x"
.seh_endproc
.Lc7:
.Lt3:
.Ll19:

.section .text.n_fmsynth_$$_initvoices,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITVOICES
FMSYNTH_$$_INITVOICES:
.Lc11:
.seh_proc FMSYNTH_$$_INITVOICES
.Ll20:
# [120] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc13:
.seh_stackalloc 32
# Var i located in register ebx
.seh_endprologue
# Var i located in register ebx
.Ll21:
# [121] for i:=0 to 31 do
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj98:
	addl	$1,%ebx
.Ll22:
# [122] voices[i]:=TFmVoice.create;
	leaq	VMT_$FMSYNTH_$$_TFMVOICE(%rip),%rcx
	movq	$1,%rdx
	call	FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
# PeepHole Optimization,var2a
	movl	%ebx,%edx
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rcx
	movq	%rax,(%rcx,%rdx,8)
.Ll23:
	cmpl	$31,%ebx
	jl	.Lj98
.Ll24:
# [123] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc12:
.Lt1:
.Ll25:

.section .text.n_fmsynth$_$tfmvoice_$__$$_create$$tfmvoice,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE:
.Lc14:
.seh_proc FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
.Ll26:
# [129] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc16:
.Lc17:
	movq	%rsp,%rbp
.Lc18:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var $vmt located at rbp-8, size=OS_64
# Var $self located at rbp-16, size=OS_64
# Var i located at rbp-24, size=OS_S32
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
.Ll27:
	cmpq	$1,-8(%rbp)
	jne	.Lj108
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-16(%rbp)
.Lj108:
	cmpq	$0,-16(%rbp)
	je	.Lj105
.Lj120:
.Ll28:
# [143] end;
	nop
.Lj119:
.Ll29:
# [130] for i:=0 to 7 do operators[i]:=TFmOperator.create(0,@outputs);
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj124:
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
	jl	.Lj124
.Ll30:
# [131] for i:=0 to 7 do operators[i].init;
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj137:
	addl	$1,-24(%rbp)
	movq	-16(%rbp),%rax
	movl	-24(%rbp),%edx
	movq	8(%rax,%rdx,8),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_INIT
	cmpl	$7,-24(%rbp)
	jl	.Lj137
.Ll31:
# [132] for i:=0 to 7 do operators[i].outputtable:=@outputs;
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj142:
	addl	$1,-24(%rbp)
.Ll32:
	movq	-16(%rbp),%rdx
.Ll33:
	movl	-24(%rbp),%eax
	movq	8(%rdx,%rax,8),%rcx
	leaq	72(%rdx),%rax
	movq	%rax,312(%rcx)
	cmpl	$7,-24(%rbp)
	jl	.Lj142
.Ll34:
# [133] outmuls[0]:=1;
	movq	-16(%rbp),%rax
	movl	_$FMSYNTH$_Ld4(%rip),%edx
	movl	%edx,136(%rax)
.Ll35:
# [134] for i:=1 to 7 do outmuls[i]:=0;
	movl	$1,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj151:
	addl	$1,-24(%rbp)
	movq	-16(%rbp),%rdx
	movl	-24(%rbp),%ecx
	movl	_$FMSYNTH$_Ld5(%rip),%eax
	movl	%eax,136(%rdx,%rcx,4)
	cmpl	$7,-24(%rbp)
	jl	.Lj151
.Ll36:
# [139] operators[0].mul1:=16384;
	movq	-16(%rbp),%rax
	movq	8(%rax),%rax
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,80(%rax)
.Ll37:
# [140] operators[1].mul1:=10000;
	movq	-16(%rbp),%rax
	movq	16(%rax),%rax
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,80(%rax)
.Ll38:
# [141] operators[0].freq:=150; //440*(65536/192000);  ;
	movq	-16(%rbp),%rax
	movq	8(%rax),%rax
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,8(%rax)
.Ll39:
# [142] operators[1].freq:=300; //2*testvoice.operators[0].freq  ;
	movq	-16(%rbp),%rax
	movq	16(%rax),%rdx
	movq	_$FMSYNTH$_Ld9(%rip),%rax
	movq	%rax,8(%rdx)
.Ll40:
	cmpq	$0,-16(%rbp)
	je	.Lj117
	cmpq	$0,-8(%rbp)
	je	.Lj117
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*136(%rax)
	jmp	.Lj117
.Lj116:
	cmpq	$0,-8(%rbp)
	je	.Lj168
	movq	-16(%rbp),%rcx
	movq	$-1,%rdx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
.Lj168:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj173:
	nop
.Lj117:
.Lj105:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj119
	.rva	.Lj116
	.rva	.Lj117

.section .text.n_fmsynth$_$tfmvoice_$__$$_create$$tfmvoice,"x"
.seh_endproc
.Lc15:
.Lt16:
.Ll41:

.section .text.n_fmsynth$_$tfmvoice_$__$$_getsample$$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE:
.Lc19:
.seh_proc FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
.Ll42:
# [151] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc21:
.seh_stackalloc 40
# Var $self located in register rbx
# Var $result located in register xmm0
# Var i located in register edx
# Var j located in register eax
# Var output located in register xmm0
.seh_endprologue
	movq	%rcx,%rbx
# Var i located in register esi
.Ll43:
# [152] for i:=0 to 7 do
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj178:
	addl	$1,%esi
# PeepHole Optimization,var2a
.Ll44:
# [153] outputs[i]:=operators[i].getsample;
	movl	%esi,%eax
	movq	8(%rbx,%rax,8),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
# PeepHole Optimization,var2a
	movl	%esi,%eax
	movsd	%xmm0,72(%rbx,%rax,8)
.Ll45:
	cmpl	$7,%esi
	jl	.Lj178
# Var output located in register xmm0
.Ll46:
# [154] output:=0;
	movsd	_$FMSYNTH$_Ld10(%rip),%xmm0
# Var i located in register edx
.Ll47:
# [155] for i:=0 to 7 do output+=outmuls[i]*outputs[i];
	movl	$0,%edx
	subl	$1,%edx
	.balign 8,0x90
.Lj187:
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
	jl	.Lj187
# Var $result located in register xmm0
# Var output located in register xmm0
.Ll48:
# [157] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc20:
.Lt17:
.Ll49:

.section .text.n_fmsynth_$$_initflogtable,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITFLOGTABLE
FMSYNTH_$$_INITFLOGTABLE:
.Lc22:
# Var i located in register edx
# Var q located in register xmm1
# Var q2 located in register xmm2
# [167] begin
# Var q located in register xmm1
.Ll50:
# [168] q:=1;
	movsd	_$FMSYNTH$_Ld11(%rip),%xmm1
# Var q2 located in register xmm2
.Ll51:
# [170] q2:= 0.99989460157410704627595119007091;
	movsd	_$FMSYNTH$_Ld12(%rip),%xmm2
# Var i located in register edx
.Ll52:
# [171] for i:=65540 downto 0 do
	movl	$65540,%edx
	addl	$1,%edx
	.balign 8,0x90
.Lj200:
	subl	$1,%edx
.Ll53:
# [173] if i>65535 then flogtable[i]:=1
	cmpl	$65535,%edx
	jng	.Lj202
# PeepHole Optimization,var2a
	movl	%edx,%eax
	movq	_$FMSYNTH$_Ld11(%rip),%rcx
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%r8
	movq	%rcx,(%r8,%rax,8)
	jmp	.Lj205
.Lj202:
# PeepHole Optimization,var2a
.Ll54:
# [176] flogtable[i]:=q;
	movl	%edx,%eax
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%rcx
	movsd	%xmm1,(%rcx,%rax,8)
.Ll55:
# [177] q:=q*q2;
	movapd	%xmm1,%xmm0
	mulsd	%xmm2,%xmm0
	movapd	%xmm0,%xmm1
.Lj205:
.Ll56:
	testl	%edx,%edx
	jg	.Lj200
.Ll57:
# [180] flogtable[0]:=0;
	movq	_$FMSYNTH$_Ld10(%rip),%rax
	movq	%rax,U_$FMSYNTH_$$_FLOGTABLE(%rip)
.Ll58:
# [181] end;
	ret
.Lc23:
.Lt5:
.Ll59:

.section .text.n_fmsynth_$$_initfsinetable,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITFSINETABLE
FMSYNTH_$$_INITFSINETABLE:
.Lc24:
.seh_proc FMSYNTH_$$_INITFSINETABLE
.Ll60:
# [188] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc26:
.seh_stackalloc 32
# Var i located in register ebx
.seh_endprologue
# Var i located in register ebx
.Ll61:
# [189] for i:=-655360 to 655360 do fsinetable[i]:=sin(2*pi*i/1024);
	movl	$-655360,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj216:
	addl	$1,%ebx
	cvtsi2sd	%ebx,%xmm0
	mulsd	_$FMSYNTH$_Ld13(%rip),%xmm0
	mulsd	_$FMSYNTH$_Ld14(%rip),%xmm0
	call	fpc_sin_real
	movslq	%ebx,%rax
	leaq	U_$FMSYNTH_$$_FSINETABLE(%rip),%rdx
	movsd	%xmm0,5242880(%rdx,%rax,8)
	cmpl	$655360,%ebx
	jl	.Lj216
.Ll62:
# [190] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc25:
.Lt6:
.Ll63:

.section .text.n_fmsynth_$$_assign$longint$$tsinglestereosample,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE:
.Lc27:
# Var b located in register edx
# Var $result located in register rax
.Ll64:
# [194] begin
	movq	%rcx,%rax
.Ll65:
# [195] result[0]:=b;
	cvtsi2sd	%edx,%xmm0
	movsd	%xmm0,(%rax)
.Ll66:
# [196] result[1]:=b;
	cvtsi2sd	%edx,%xmm0
	movsd	%xmm0,8(%rax)
.Ll67:
# [197] end;
	ret
.Lc28:
.Lt7:
.Ll68:

.section .text.n_fmsynth_$$_star$tsinglestereosample$single$$tsinglestereosample,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE:
.Lc29:
# Temps allocated between rsp+8 and rsp+24
.seh_proc FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
.Ll69:
# [201] begin
	leaq	-24(%rsp),%rsp
.Lc31:
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
.Ll70:
# [202] result[0]:=a[0]*b;
	cvtss2sd	%xmm0,%xmm1
	mulsd	8(%rsp),%xmm1
	movsd	%xmm1,(%rax)
.Ll71:
# [203] result[1]:=a[1]*b;
	cvtss2sd	%xmm0,%xmm0
	mulsd	16(%rsp),%xmm0
	movsd	%xmm0,8(%rax)
.Ll72:
# [204] end;
	leaq	24(%rsp),%rsp
	ret
.seh_endproc
.Lc30:
.Lt8:
.Ll73:

.section .text.n_fmsynth$_$tfmoperator_$__$$_create$longint$pointer$$tfmoperator,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR:
.Lc32:
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
.Ll74:
# [211] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc34:
.Lc35:
	movq	%rsp,%rbp
.Lc36:
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
.Ll75:
	cmpq	$1,-24(%rbp)
	jne	.Lj236
	movq	-32(%rbp),%rax
	movq	-32(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-32(%rbp)
.Lj236:
	cmpq	$0,-32(%rbp)
	je	.Lj233
.Lj248:
.Ll76:
# [228] end;
	nop
.Lj247:
.Ll77:
# [212] outputtable:=outs;
	movq	-32(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rdx,312(%rax)
.Ll78:
# [213] if mode=0 then wptr:=@fsinetable;
	cmpl	$0,-8(%rbp)
	jne	.Lj253
	movq	-32(%rbp),%rax
	leaq	U_$FMSYNTH_$$_FSINETABLE(%rip),%rdx
	movq	%rdx,136(%rax)
.Lj253:
.Ll79:
# [225] wlength:=1024;
	movq	-32(%rbp),%rdx
	movq	_$FMSYNTH$_Ld15(%rip),%rax
	movq	%rax,144(%rdx)
.Ll80:
	cmpq	$0,-32(%rbp)
	je	.Lj245
	cmpq	$0,-24(%rbp)
	je	.Lj245
	movq	-32(%rbp),%rcx
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	call	*136(%rax)
	jmp	.Lj245
.Lj244:
	cmpq	$0,-24(%rbp)
	je	.Lj264
	movq	-32(%rbp),%rcx
	movq	$-1,%rdx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
.Lj264:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj269:
	nop
.Lj245:
.Lj233:
	movq	-32(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj247
	.rva	.Lj244
	.rva	.Lj245

.section .text.n_fmsynth$_$tfmoperator_$__$$_create$longint$pointer$$tfmoperator,"x"
.seh_endproc
.Lc33:
.Lt14:
.Ll81:

.section .text.n_fmsynth$_$tfmoperator_$__$$_destroy,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY:
.Lc37:
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
.Ll82:
# [232] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc39:
.seh_stackalloc 40
# Var $vmt located in register rsi
# Var $self located in register rbx
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
.Ll83:
	cmpq	$0,%rsi
	jng	.Lj273
	movq	%rbx,%rcx
	movq	%rbx,%rax
	movq	(%rax),%rax
	call	*144(%rax)
.Lj273:
.Ll84:
# [233] freemem(wptr);
	movq	136(%rbx),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
.Ll85:
# [234] end;
	testq	%rbx,%rbx
	je	.Lj279
	testq	%rsi,%rsi
	je	.Lj279
	movq	%rbx,%rcx
	movq	%rbx,%rax
	movq	(%rax),%rax
	call	*112(%rax)
.Lj279:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc38:
.Lt15:
.Ll86:

.section .text.n_fmsynth$_$tfmvoice_$__$$_setfreq$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE
FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE:
.Lc40:
.seh_proc FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE
.Ll87:
# [240] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-56(%rsp),%rsp
.Lc42:
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
.Ll88:
# [241] for i:=0 to 7 do operators[i].setfreq(afreq);
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj287:
	addl	$1,%esi
# PeepHole Optimization,var2a
	movl	%esi,%eax
	movq	8(%rbx,%rax,8),%rcx
	movapd	%xmm6,%xmm1
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
	cmpl	$7,%esi
	jl	.Lj287
.Ll89:
# [243] operators[1].setfreq(1.0043*afreq);
	movsd	_$FMSYNTH$_Ld16(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	16(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll90:
# [244] operators[2].setfreq(1.006*afreq);
	movsd	_$FMSYNTH$_Ld17(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	24(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll91:
# [245] operators[3].setfreq(1.0017*afreq);
	movsd	_$FMSYNTH$_Ld18(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	32(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll92:
# [246] operators[4].setfreq(0.995*afreq);
	movsd	_$FMSYNTH$_Ld19(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	40(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll93:
# [247] operators[5].setfreq(0.991*afreq);
	movsd	_$FMSYNTH$_Ld20(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	48(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll94:
# [248] operators[6].setfreq(0.9939*afreq);
	movsd	_$FMSYNTH$_Ld21(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	56(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll95:
# [249] operators[7].setfreq(0.9961*afreq);
	movsd	_$FMSYNTH$_Ld22(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	64(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll96:
# [252] end;
	nop
	movdqa	32(%rsp),%xmm6
	leaq	56(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc41:
.Lt18:
.Ll97:

.section .text.n_fmsynth$_$tfmoperator_$__$$_setfreq$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE:
.Lc43:
# Var afreq located in register xmm0
# Var $self located in register rax
.Ll98:
# [256] begin
	movq	%rcx,%rax
	movapd	%xmm1,%xmm0
.Ll99:
# [257] if wavemode=0 then freq:=afreq*wlength/96000
	cmpl	$0,324(%rax)
	jne	.Lj323
	movapd	%xmm0,%xmm1
	mulsd	144(%rax),%xmm1
	mulsd	_$FMSYNTH$_Ld23(%rip),%xmm1
	movsd	%xmm1,8(%rax)
	jmp	.Lj326
.Lj323:
.Ll100:
# [258] else freq:=afreq*freqmod;
	mulsd	304(%rax),%xmm0
	movsd	%xmm0,8(%rax)
.Lj326:
.Ll101:
# [259] end;
	ret
.Lc44:
.Lt13:
.Ll102:

.section .text.n_fmsynth$_$tfmoperator_$__$$_init,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_INIT
FMSYNTH$_$TFMOPERATOR_$__$$_INIT:
.Lc45:
# Var $self located in register rax
.Ll103:
# [263] begin
	movq	%rcx,%rax
.Ll104:
# [265] freq:=440*(65536/96000);    //341
	movq	_$FMSYNTH$_Ld24(%rip),%rdx
	movq	%rdx,8(%rax)
.Ll105:
# [266] c3:=0;
	movq	_$FMSYNTH$_Ld10(%rip),%rdx
	movq	%rdx,16(%rax)
.Ll106:
# [267] c4:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,24(%rax)
.Ll107:
# [268] c5:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,32(%rax)
.Ll108:
# [269] c6:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,40(%rax)
.Ll109:
# [270] lfo1:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,48(%rax)
.Ll110:
# [271] lfo2:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,56(%rax)
.Ll111:
# [272] lfo3:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,64(%rax)
.Ll112:
# [273] mul0:=0;
	movq	_$FMSYNTH$_Ld10(%rip),%rdx
	movq	%rdx,72(%rax)
.Ll113:
# [274] mul1:=0;
	movq	_$FMSYNTH$_Ld10(%rip),%rdx
	movq	%rdx,80(%rax)
.Ll114:
# [275] mul2:=0;
	movq	_$FMSYNTH$_Ld10(%rip),%rdx
	movq	%rdx,88(%rax)
.Ll115:
# [276] mul3:=0;
	movq	_$FMSYNTH$_Ld10(%rip),%rdx
	movq	%rdx,96(%rax)
.Ll116:
# [277] mul4:=0;
	movq	_$FMSYNTH$_Ld10(%rip),%rdx
	movq	%rdx,104(%rax)
.Ll117:
# [278] mul5:=0;
	movq	_$FMSYNTH$_Ld10(%rip),%rdx
	movq	%rdx,112(%rax)
.Ll118:
# [279] mul6:=0;
	movq	_$FMSYNTH$_Ld10(%rip),%rdx
	movq	%rdx,120(%rax)
.Ll119:
# [280] mul7:=0;
	movq	_$FMSYNTH$_Ld10(%rip),%rdx
	movq	%rdx,128(%rax)
.Ll120:
# [281] wlength:=1024;//65536;
	movq	_$FMSYNTH$_Ld15(%rip),%rdx
	movq	%rdx,144(%rax)
.Ll121:
# [282] adsrstate:=0;
	movl	$0,320(%rax)
.Ll122:
# [283] adsrval:=0;
	movq	_$FMSYNTH$_Ld10(%rip),%rdx
	movq	%rdx,168(%rax)
.Ll123:
# [284] ar1:=1/96;
	movq	_$FMSYNTH$_Ld25(%rip),%rdx
	movq	%rdx,176(%rax)
.Ll124:
# [285] ar2:=-1/96000;
	movq	_$FMSYNTH$_Ld26(%rip),%rdx
	movq	%rdx,192(%rax)
.Ll125:
# [286] ar3:=-1/960000;
	movq	_$FMSYNTH$_Ld27(%rip),%rdx
	movq	%rdx,208(%rax)
.Ll126:
# [287] ar4:=-3/960000;
	movq	_$FMSYNTH$_Ld28(%rip),%rdx
	movq	%rdx,224(%rax)
.Ll127:
# [288] av1:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,184(%rax)
.Ll128:
# [289] av2:=0.95;
	movq	_$FMSYNTH$_Ld29(%rip),%rdx
	movq	%rdx,200(%rax)
.Ll129:
# [290] av3:=0.9;
	movq	_$FMSYNTH$_Ld30(%rip),%rdx
	movq	%rdx,216(%rax)
.Ll130:
# [291] av4:=0.0;
	movq	_$FMSYNTH$_Ld10(%rip),%rdx
	movq	%rdx,232(%rax)
.Ll131:
# [292] adsrbias:=0;
	movq	_$FMSYNTH$_Ld10(%rip),%rdx
	movq	%rdx,256(%rax)
.Ll132:
# [293] vel:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,264(%rax)
.Ll133:
# [294] keysense:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,272(%rax)
.Ll134:
# [295] expr:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,280(%rax)
.Ll135:
# [300] end;
	ret
.Lc46:
.Lt12:
.Ll136:

.section .text.n_fmsynth$_$tfmoperator_$__$$_getsample$$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE:
.Lc47:
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
.Ll137:
# [317] begin
	leaq	-72(%rsp),%rsp
.Lc49:
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
.Ll138:
# [322] freq2:=(freq+(c3*lfo1))*c4*lfo2;
	movsd	16(%rcx),%xmm1
	mulsd	48(%rcx),%xmm1
	addsd	8(%rcx),%xmm1
	mulsd	24(%rcx),%xmm1
	mulsd	56(%rcx),%xmm1
# Var freq2 located in register xmm1
.Ll139:
	movq	312(%rcx),%rax
.Ll140:
# [336] modulator:=outputtable[0]*mul0
	movsd	(%rax),%xmm3
	mulsd	72(%rcx),%xmm3
.Ll141:
# [337] +outputtable[1]*mul1
	movsd	8(%rax),%xmm2
	mulsd	80(%rcx),%xmm2
	addsd	%xmm3,%xmm2
.Ll142:
# [338] +outputtable[2]*mul2
	movsd	16(%rax),%xmm3
	mulsd	88(%rcx),%xmm3
	addsd	%xmm2,%xmm3
.Ll143:
# [339] +outputtable[3]*mul3
	movsd	24(%rax),%xmm2
	mulsd	96(%rcx),%xmm2
	addsd	%xmm3,%xmm2
.Ll144:
# [340] +outputtable[4]*mul4
	movsd	32(%rax),%xmm3
	mulsd	104(%rcx),%xmm3
	addsd	%xmm2,%xmm3
.Ll145:
# [341] +outputtable[5]*mul5
	movsd	40(%rax),%xmm2
	mulsd	112(%rcx),%xmm2
	addsd	%xmm3,%xmm2
.Ll146:
# [342] +outputtable[6]*mul6
	movsd	48(%rax),%xmm3
	mulsd	120(%rcx),%xmm3
	addsd	%xmm2,%xmm3
.Ll147:
# [343] +outputtable[7]*mul7;
	movsd	56(%rax),%xmm2
	mulsd	128(%rcx),%xmm2
	addsd	%xmm3,%xmm2
# Var modulator located in register xmm2
.Ll148:
# [345] pa:=pa+freq2;
	movsd	288(%rcx),%xmm3
	addsd	%xmm1,%xmm3
	movsd	%xmm3,288(%rcx)
.Ll149:
# [346] pa2:=pa+modulator;
	movsd	288(%rcx),%xmm3
	addsd	%xmm2,%xmm3
	movsd	%xmm3,296(%rcx)
.Ll150:
# [354] if wavemode=0 then
	cmpl	$0,324(%rcx)
	jne	.Lj406
.Ll151:
# [356] if pa>=wlength then
	movsd	288(%rcx),%xmm3
	comisd	144(%rcx),%xmm3
	jp	.Lj408
	jnae	.Lj408
.Ll152:
# [357] pa:=pa-wlength;
	movsd	288(%rcx),%xmm3
	subsd	144(%rcx),%xmm3
	movsd	%xmm3,288(%rcx)
.Lj408:
.Ll153:
# [359] pa2:=pa+modulator;
	movsd	288(%rcx),%xmm3
	addsd	%xmm2,%xmm3
	movsd	%xmm3,296(%rcx)
.Ll154:
# [360] if pa2>=wlength then
	movsd	296(%rcx),%xmm3
	comisd	144(%rcx),%xmm3
	jp	.Lj415
	jnae	.Lj415
	.balign 8,0x90
.Lj417:
.Ll155:
# [361] repeat pa2:=pa2-wlength until pa2<wlength;
	movsd	296(%rcx),%xmm3
	subsd	144(%rcx),%xmm3
	movsd	%xmm3,296(%rcx)
	movsd	296(%rcx),%xmm3
	comisd	144(%rcx),%xmm3
	jp	.Lj417
	jnb	.Lj417
.Lj415:
.Ll156:
# [362] if pa2<0 then
	movsd	296(%rcx),%xmm3
	comisd	_$FMSYNTH$_Ld10(%rip),%xmm3
	jp	.Lj432
	jnb	.Lj432
	.balign 8,0x90
.Lj426:
.Ll157:
# [363] repeat pa2:=pa2+wlength until pa2>0;
	movsd	296(%rcx),%xmm3
	addsd	144(%rcx),%xmm3
	movsd	%xmm3,296(%rcx)
	movsd	296(%rcx),%xmm3
	comisd	_$FMSYNTH$_Ld10(%rip),%xmm3
	jp	.Lj426
	jna	.Lj426
	jmp	.Lj432
.Lj406:
.Ll158:
# [368] if adsrstate<5 then
	cmpl	$5,320(%rcx)
	jnl	.Lj434
.Ll159:
# [370] if pa>wlend-1 then repeat pa:=pa-wlend+wlstart until pa<=wlend;
	movsd	160(%rcx),%xmm3
	subsd	_$FMSYNTH$_Ld11(%rip),%xmm3
	comisd	288(%rcx),%xmm3
	jp	.Lj444
	jnb	.Lj444
	.balign 8,0x90
.Lj438:
	movsd	288(%rcx),%xmm3
	subsd	160(%rcx),%xmm3
	addsd	152(%rcx),%xmm3
	movsd	%xmm3,288(%rcx)
	movsd	288(%rcx),%xmm3
	comisd	160(%rcx),%xmm3
	jp	.Lj438
	jnbe	.Lj438
	jmp	.Lj444
.Lj434:
.Ll160:
# [374] if pa>=wlength then pa:=wlength;
	movsd	288(%rcx),%xmm3
	comisd	144(%rcx),%xmm3
	jp	.Lj446
	jnae	.Lj446
	movq	144(%rcx),%rax
	movq	%rax,288(%rcx)
.Lj446:
.Lj444:
.Ll161:
# [376] pa2:=pa+modulator;
	movsd	288(%rcx),%xmm3
	addsd	%xmm2,%xmm3
	movsd	%xmm3,296(%rcx)
.Ll162:
# [377] if pa2>wlend-1 then repeat pa:=pa-wlend+wlstart until pa<=wlend-1;
	movsd	160(%rcx),%xmm3
	subsd	_$FMSYNTH$_Ld11(%rip),%xmm3
	comisd	296(%rcx),%xmm3
	jp	.Lj453
	jnb	.Lj453
	.balign 8,0x90
.Lj455:
	movsd	288(%rcx),%xmm3
	subsd	160(%rcx),%xmm3
	addsd	152(%rcx),%xmm3
	movsd	%xmm3,288(%rcx)
	movsd	160(%rcx),%xmm3
	subsd	_$FMSYNTH$_Ld11(%rip),%xmm3
	comisd	288(%rcx),%xmm3
	jp	.Lj455
	jnae	.Lj455
.Lj453:
.Lj432:
.Ll163:
# [379] intpa:=trunc(pa2);
	movsd	296(%rcx),%xmm3
	cvttsd2siq	%xmm3,%rax
# PeepHole Optimization,MovMov2MovMov1
	movl	%eax,328(%rcx)
# Var pa21 located in register edx
.Ll164:
# [380] pa21:=intpa; if pa21>wlength then pa21:=0;
	movl	%eax,%edx
	cvtsi2sd	%edx,%xmm3
	comisd	144(%rcx),%xmm3
	jp	.Lj466
	jna	.Lj466
	movl	$0,%edx
.Lj466:
.Ll165:
# [381] sample:=wptr[intpa];
	movq	136(%rcx),%r10
	movslq	328(%rcx),%rax
# Var sample located in register xmm8
	movsd	(%r10,%rax,8),%xmm8
.Ll166:
# [382] s2:=wptr[pa21];
	movq	136(%rcx),%r10
	movslq	%edx,%rax
# Var s2 located in register xmm9
	movsd	(%r10,%rax,8),%xmm9
.Ll167:
# [383] d:=pa2-intpa;
	cvtsi2sdl	328(%rcx),%xmm6
	movsd	296(%rcx),%xmm3
	subsd	%xmm6,%xmm3
# Var d located in register xmm3
.Ll168:
# [384] sample:=(1-d)*sample+d*s2;
	movsd	_$FMSYNTH$_Ld11(%rip),%xmm6
	subsd	%xmm3,%xmm6
	mulsd	%xmm8,%xmm6
	movapd	%xmm3,%xmm8
	mulsd	%xmm9,%xmm8
	addsd	%xmm6,%xmm8
# Var sample located in register xmm8
.Ll169:
# [390] if adsrstate = 5 then   // release
	cmpl	$5,320(%rcx)
	jne	.Lj479
.Ll170:
# [392] adsrval:=adsrval+ar4;
	movsd	168(%rcx),%xmm6
	addsd	224(%rcx),%xmm6
	movsd	%xmm6,168(%rcx)
.Ll171:
# [393] if ar4<0 then begin if adsrval<av4 then begin adsrval:=av4; adsrstate:=6; end; end
	movsd	224(%rcx),%xmm6
	comisd	_$FMSYNTH$_Ld10(%rip),%xmm6
	jp	.Lj483
	jnb	.Lj483
	movsd	168(%rcx),%xmm6
	comisd	232(%rcx),%xmm6
	jp	.Lj500
	jnb	.Lj500
	movq	232(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$6,320(%rcx)
	jmp	.Lj500
.Lj483:
.Ll172:
# [394] else begin if adsrval>av4 then begin adsrval:=av4; adsrstate:=6; end; end;
	movsd	168(%rcx),%xmm6
	comisd	232(%rcx),%xmm6
	jp	.Lj500
	jna	.Lj500
	movq	232(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$6,320(%rcx)
.Ll173:
# [395] goto p101;
	jmp	.Lj500
.Lj479:
.Ll174:
# [397] if adsrstate =   3 then  // release
	cmpl	$3,320(%rcx)
	jne	.Lj502
.Ll175:
# [399] adsrval:=adsrval+ar3;
	movsd	168(%rcx),%xmm6
	addsd	208(%rcx),%xmm6
	movsd	%xmm6,168(%rcx)
.Ll176:
# [400] if ar3<0 then begin if adsrval<av3 then begin adsrval:=av3; adsrstate:=4; end; end
	movsd	208(%rcx),%xmm6
	comisd	_$FMSYNTH$_Ld10(%rip),%xmm6
	jp	.Lj506
	jnb	.Lj506
	movsd	168(%rcx),%xmm6
	comisd	216(%rcx),%xmm6
	jp	.Lj500
	jnb	.Lj500
	movq	216(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$4,320(%rcx)
	jmp	.Lj500
.Lj506:
.Ll177:
# [401] else begin if adsrval>av3 then begin adsrval:=av3; adsrstate:=4; end; end;
	movsd	168(%rcx),%xmm6
	comisd	216(%rcx),%xmm6
	jp	.Lj500
	jna	.Lj500
	movq	216(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$4,320(%rcx)
.Ll178:
# [402] goto p101;
	jmp	.Lj500
.Lj502:
.Ll179:
# [404] if adsrstate= 2 then  // release
	cmpl	$2,320(%rcx)
	jne	.Lj524
.Ll180:
# [406] adsrval:=adsrval+ar2;
	movsd	168(%rcx),%xmm6
	addsd	192(%rcx),%xmm6
	movsd	%xmm6,168(%rcx)
.Ll181:
# [407] if ar2<0 then begin if adsrval<av2 then begin adsrval:=av2; adsrstate:=3; end; end
	movsd	192(%rcx),%xmm6
	comisd	_$FMSYNTH$_Ld10(%rip),%xmm6
	jp	.Lj528
	jnb	.Lj528
	movsd	168(%rcx),%xmm6
	comisd	200(%rcx),%xmm6
	jp	.Lj500
	jnb	.Lj500
	movq	200(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$3,320(%rcx)
	jmp	.Lj500
.Lj528:
.Ll182:
# [408] else begin if adsrval>av2 then begin adsrval:=av2; adsrstate:=3; end; end;
	movsd	168(%rcx),%xmm6
	comisd	200(%rcx),%xmm6
	jp	.Lj500
	jna	.Lj500
	movq	200(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$3,320(%rcx)
.Ll183:
# [409] goto p101;
	jmp	.Lj500
.Lj524:
.Ll184:
# [411] if adsrstate=1 then    // release
	cmpl	$1,320(%rcx)
	jne	.Lj546
.Ll185:
# [413] adsrval:=adsrval+ar1;
	movsd	168(%rcx),%xmm6
	addsd	176(%rcx),%xmm6
	movsd	%xmm6,168(%rcx)
.Ll186:
# [414] if ar1<0 then begin if adsrval<av1 then begin adsrval:=av1; adsrstate:=2; end; end
	movsd	176(%rcx),%xmm6
	comisd	_$FMSYNTH$_Ld10(%rip),%xmm6
	jp	.Lj550
	jnb	.Lj550
	movsd	168(%rcx),%xmm6
	comisd	184(%rcx),%xmm6
	jp	.Lj559
	jnb	.Lj559
	movq	184(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$2,320(%rcx)
	jmp	.Lj559
.Lj550:
.Ll187:
# [415] else begin if adsrval>av1 then begin  adsrval:=av1; adsrstate:=2; end;  end;
	movsd	168(%rcx),%xmm6
	comisd	184(%rcx),%xmm6
	jp	.Lj561
	jna	.Lj561
	movq	184(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$2,320(%rcx)
.Lj561:
.Lj559:
.Lj500:
.Lj546:
.Ll188:
	movsd	256(%rcx),%xmm10
.Ll189:
# [419] h1:=((1-adsrbias)*adsrval)+adsrbias;
	movsd	_$FMSYNTH$_Ld11(%rip),%xmm6
	subsd	%xmm10,%xmm6
	mulsd	168(%rcx),%xmm6
	addsd	%xmm10,%xmm6
	movapd	%xmm6,%xmm4
.Ll190:
# [420] if adsrstate<>0 then sample:=sample*flogtable[round(65535*h1)] else sample:=0;
	cmpl	$0,320(%rcx)
	je	.Lj572
	movsd	_$FMSYNTH$_Ld31(%rip),%xmm6
	mulsd	%xmm4,%xmm6
	cvtsd2siq	%xmm6,%rax
	movapd	%xmm8,%xmm6
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%r10
	mulsd	(%r10,%rax,8),%xmm6
	movapd	%xmm6,%xmm8
	jmp	.Lj575
.Lj572:
	movsd	_$FMSYNTH$_Ld10(%rip),%xmm8
.Lj575:
.Ll191:
# [423] h1:=1.000-keysense;
	movsd	_$FMSYNTH$_Ld11(%rip),%xmm6
	subsd	272(%rcx),%xmm6
	movapd	%xmm6,%xmm4
.Ll192:
# [424] h1:=h1+vel*keysense;
	movsd	264(%rcx),%xmm6
	mulsd	272(%rcx),%xmm6
	addsd	%xmm4,%xmm6
	movapd	%xmm6,%xmm4
.Ll193:
# [425] h1:=h1*c6*expr;
	movapd	%xmm4,%xmm6
	mulsd	40(%rcx),%xmm6
	mulsd	280(%rcx),%xmm6
	movapd	%xmm6,%xmm4
.Ll194:
# [426] sample:=sample*h1;
	movapd	%xmm8,%xmm6
	mulsd	%xmm4,%xmm6
	movapd	%xmm6,%xmm8
.Ll195:
# [441] result:=sample;
	movapd	%xmm8,%xmm0
.Ll196:
# [443] end;
	movdqa	(%rsp),%xmm6
	movdqa	16(%rsp),%xmm8
	movdqa	32(%rsp),%xmm9
	movdqa	48(%rsp),%xmm10
	leaq	72(%rsp),%rsp
	ret
.seh_endproc
.Lc48:
.Lt11:
.Ll197:

.section .text.n_fmsynth_$$_initnotes,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITNOTES
FMSYNTH_$$_INITNOTES:
.Lc50:
# Var i located in register edx
# Var q located in register xmm1
# [451] begin
# Var q located in register xmm1
.Ll198:
# [452] q:=c03;
	movsd	_$FMSYNTH$_Ld32(%rip),%xmm1
# Var i located in register edx
.Ll199:
# [453] for i:=0 to 127 do
	movl	$0,%edx
	subl	$1,%edx
	.balign 8,0x90
.Lj594:
	addl	$1,%edx
# PeepHole Optimization,var2a
.Ll200:
# [455] fnotes[i]:=q;
	movl	%edx,%eax
	leaq	U_$FMSYNTH_$$_FNOTES(%rip),%rcx
	movsd	%xmm1,(%rcx,%rax,8)
.Ll201:
# [456] q:=q*a212;
	movapd	%xmm1,%xmm0
	mulsd	_$FMSYNTH$_Ld33(%rip),%xmm0
	movapd	%xmm0,%xmm1
.Ll202:
	cmpl	$127,%edx
	jl	.Lj594
.Ll203:
# [458] end;
	ret
.Lc51:
.Lt9:
.Ll204:

.section .text.n_fmsynth_$$_init$,"x"
	.balign 16,0x90
.globl	INIT$_$FMSYNTH
INIT$_$FMSYNTH:
.globl	FMSYNTH_$$_init$
FMSYNTH_$$_init$:
.Lc52:
.seh_proc FMSYNTH_$$_init$
.Ll205:
# [462] initialization
	leaq	-40(%rsp),%rsp
.Lc54:
.seh_stackalloc 40
.seh_endprologue
.Ll206:
# [464] initflogtable;
	call	FMSYNTH_$$_INITFLOGTABLE
.Ll207:
# [465] initfsinetable;
	call	FMSYNTH_$$_INITFSINETABLE
.Ll208:
# [466] initnotes;
	call	FMSYNTH_$$_INITNOTES
.Ll209:
# [467] initsamples0;
	call	FMSYNTH_$$_INITSAMPLES0
.Ll210:
# [470] end.
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc53:
.Lt2:
.Ll211:

.section .text.n_fmsynth_$$_finalize_implicit$,"x"
	.balign 16,0x90
.globl	FINALIZE$_$FMSYNTH
FINALIZE$_$FMSYNTH:
.globl	FMSYNTH_$$_finalize_implicit$
FMSYNTH_$$_finalize_implicit$:
.Lc55:
.seh_proc FMSYNTH_$$_finalize_implicit$
	leaq	-40(%rsp),%rsp
.Lc57:
.seh_stackalloc 40
.seh_endprologue
	leaq	INIT_$FMSYNTH_$$_DEF24(%rip),%rax
	movq	%rax,%rdx
	leaq	U_$FMSYNTH_$$_WAVES0(%rip),%rcx
	call	fpc_finalize
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc56:
.Lt10:
.Ll212:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 8
# [fmsynth.pas]
# [71] var flogtable:array[0..65540] of myfloat;
	.globl U_$FMSYNTH_$$_FLOGTABLE
U_$FMSYNTH_$$_FLOGTABLE:
	.zero 524328

.section .bss
	.balign 8
# [72] foutputtable:array[0..8191] of myfloat;
	.globl U_$FMSYNTH_$$_FOUTPUTTABLE
U_$FMSYNTH_$$_FOUTPUTTABLE:
	.zero 65536

.section .bss
	.balign 8
# [73] fnotes:array[0..127] of myfloat;
	.globl U_$FMSYNTH_$$_FNOTES
U_$FMSYNTH_$$_FNOTES:
	.zero 1024

.section .bss
	.balign 8
# [74] fsinetable:array[-655360..655360] of myfloat;
	.globl U_$FMSYNTH_$$_FSINETABLE
U_$FMSYNTH_$$_FSINETABLE:
	.zero 10485768

.section .bss
	.balign 8
# [76] fmoperator:TFmOperator;
	.globl U_$FMSYNTH_$$_FMOPERATOR
U_$FMSYNTH_$$_FMOPERATOR:
	.zero 8

.section .bss
	.balign 8
# [77] voices:array [0..31] of TFmVoice;
	.globl U_$FMSYNTH_$$_VOICES
U_$FMSYNTH_$$_VOICES:
	.zero 256

.section .bss
	.balign 8
# [78] waves0:array [0..127] of TWaveSample0;
	.globl U_$FMSYNTH_$$_WAVES0
U_$FMSYNTH_$$_WAVES0:
	.zero 1049600

.section .data.n_VMT_$FMSYNTH_$$_TFMOPERATOR,"d"
	.balign 8
.globl	VMT_$FMSYNTH_$$_TFMOPERATOR
VMT_$FMSYNTH_$$_TFMOPERATOR:
	.quad	336,-336
	.quad	VMT_$SYSTEM_$$_TOBJECT
	.quad	.Ld34
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
# [472] 
	.balign 8
.Ld34:
	.byte	11
	.ascii	"TFmOperator"

.section .data.n_VMT_$FMSYNTH_$$_TFMVOICE,"d"
	.balign 8
.globl	VMT_$FMSYNTH_$$_TFMVOICE
VMT_$FMSYNTH_$$_TFMVOICE:
	.quad	168,-168
	.quad	VMT_$SYSTEM_$$_TOBJECT
	.quad	.Ld35
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
.Ld35:
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
# [80] sampleindex0:integer=0;

.section .data.n_tc_$fmsynth_$$_sampleindex0,"d"
	.balign 4
.globl	TC_$FMSYNTH_$$_SAMPLEINDEX0
TC_$FMSYNTH_$$_SAMPLEINDEX0:
	.long	0
# [81] sampleindex1:integer=0;

.section .data.n_tc_$fmsynth_$$_sampleindex1,"d"
	.balign 4
.globl	TC_$FMSYNTH_$$_SAMPLEINDEX1
TC_$FMSYNTH_$$_SAMPLEINDEX1:
	.long	0
# [82] waveidx:integer=0;

.section .data.n_tc_$fmsynth_$$_waveidx,"d"
	.balign 4
.globl	TC_$FMSYNTH_$$_WAVEIDX
TC_$FMSYNTH_$$_WAVEIDX:
	.long	0
# [85] procedure initvoices;

.section .rodata.n__$FMSYNTH$_Ld1,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,5
.globl	_$FMSYNTH$_Ld1
_$FMSYNTH$_Ld1:
	.ascii	"C:\\s\\\000"

.section .rodata.n__$FMSYNTH$_Ld2,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,4
.globl	_$FMSYNTH$_Ld2
_$FMSYNTH$_Ld2:
	.ascii	"*.s2\000"

.section .rodata.n__$FMSYNTH$_Ld3,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld3
_$FMSYNTH$_Ld3:
# value: 0d+3.0517578125000000E-005
	.byte	0,0,0,0,0,0,0,63

.section .rodata.n__$FMSYNTH$_Ld4,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld4
_$FMSYNTH$_Ld4:
# value: 0d+1.000000000E+00
	.byte	0,0,128,63

.section .rodata.n__$FMSYNTH$_Ld5,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld5
_$FMSYNTH$_Ld5:
# value: 0d+0.000000000E+00
	.byte	0,0,0,0

.section .rodata.n__$FMSYNTH$_Ld6,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld6
_$FMSYNTH$_Ld6:
# value: 0d+1.6384000000000000E+004
	.byte	0,0,0,0,0,0,208,64

.section .rodata.n__$FMSYNTH$_Ld7,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld7
_$FMSYNTH$_Ld7:
# value: 0d+1.0000000000000000E+004
	.byte	0,0,0,0,0,136,195,64

.section .rodata.n__$FMSYNTH$_Ld8,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld8
_$FMSYNTH$_Ld8:
# value: 0d+1.5000000000000000E+002
	.byte	0,0,0,0,0,192,98,64

.section .rodata.n__$FMSYNTH$_Ld9,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld9
_$FMSYNTH$_Ld9:
# value: 0d+3.0000000000000000E+002
	.byte	0,0,0,0,0,192,114,64

.section .rodata.n__$FMSYNTH$_Ld10,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld10
_$FMSYNTH$_Ld10:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0

.section .rodata.n__$FMSYNTH$_Ld11,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld11
_$FMSYNTH$_Ld11:
# value: 0d+1.0000000000000000E+000
	.byte	0,0,0,0,0,0,240,63

.section .rodata.n__$FMSYNTH$_Ld12,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld12
_$FMSYNTH$_Ld12:
# value: 0d+9.9989460157410703E-001
	.byte	206,165,166,246,34,255,239,63

.section .rodata.n__$FMSYNTH$_Ld13,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld13
_$FMSYNTH$_Ld13:
# value: 0d+6.2831853071795862E+000
	.byte	24,45,68,84,251,33,25,64

.section .rodata.n__$FMSYNTH$_Ld14,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld14
_$FMSYNTH$_Ld14:
# value: 0d+9.7656250000000000E-004
	.byte	0,0,0,0,0,0,80,63

.section .rodata.n__$FMSYNTH$_Ld15,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld15
_$FMSYNTH$_Ld15:
# value: 0d+1.0240000000000000E+003
	.byte	0,0,0,0,0,0,144,64

.section .rodata.n__$FMSYNTH$_Ld16,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld16
_$FMSYNTH$_Ld16:
# value: 0d+1.0043000000000000E+000
	.byte	253,246,117,224,156,17,240,63

.section .rodata.n__$FMSYNTH$_Ld17,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld17
_$FMSYNTH$_Ld17:
# value: 0d+1.0060000000000000E+000
	.byte	127,106,188,116,147,24,240,63

.section .rodata.n__$FMSYNTH$_Ld18,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld18
_$FMSYNTH$_Ld18:
# value: 0d+1.0017000000000000E+000
	.byte	130,115,70,148,246,6,240,63

.section .rodata.n__$FMSYNTH$_Ld19,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld19
_$FMSYNTH$_Ld19:
# value: 0d+9.9500000000000000E-001
	.byte	215,163,112,61,10,215,239,63

.section .rodata.n__$FMSYNTH$_Ld20,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld20
_$FMSYNTH$_Ld20:
# value: 0d+9.9099999999999999E-001
	.byte	131,192,202,161,69,182,239,63

.section .rodata.n__$FMSYNTH$_Ld21,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld21
_$FMSYNTH$_Ld21:
# value: 0d+9.9390000000000001E-001
	.byte	32,210,111,95,7,206,239,63

.section .rodata.n__$FMSYNTH$_Ld22,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld22
_$FMSYNTH$_Ld22:
# value: 0d+9.9609999999999999E-001
	.byte	142,117,113,27,13,224,239,63

.section .rodata.n__$FMSYNTH$_Ld23,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld23
_$FMSYNTH$_Ld23:
# value: 0d+1.0416666666666666E-005
	.byte	165,226,236,195,103,216,229,62

.section .rodata.n__$FMSYNTH$_Ld24,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld24
_$FMSYNTH$_Ld24:
# value: 0d+3.0037333333333333E+002
	.byte	198,146,95,44,249,197,114,64

.section .rodata.n__$FMSYNTH$_Ld25,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld25
_$FMSYNTH$_Ld25:
# value: 0d+1.0416666666666666E-002
	.byte	85,85,85,85,85,85,133,63

.section .rodata.n__$FMSYNTH$_Ld26,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld26
_$FMSYNTH$_Ld26:
# value: 0d-1.0416666666666666E-005
	.byte	165,226,236,195,103,216,229,190

.section .rodata.n__$FMSYNTH$_Ld27,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld27
_$FMSYNTH$_Ld27:
# value: 0d-1.0416666666666667E-006
	.byte	30,130,189,156,236,121,177,190

.section .rodata.n__$FMSYNTH$_Ld28,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld28
_$FMSYNTH$_Ld28:
# value: 0d-3.1250000000000001E-006
	.byte	45,67,28,235,226,54,202,190

.section .rodata.n__$FMSYNTH$_Ld29,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld29
_$FMSYNTH$_Ld29:
# value: 0d+9.4999999999999996E-001
	.byte	102,102,102,102,102,102,238,63

.section .rodata.n__$FMSYNTH$_Ld30,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld30
_$FMSYNTH$_Ld30:
# value: 0d+9.0000000000000002E-001
	.byte	205,204,204,204,204,204,236,63

.section .rodata.n__$FMSYNTH$_Ld31,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld31
_$FMSYNTH$_Ld31:
# value: 0d+6.5535000000000000E+004
	.byte	0,0,0,0,224,255,239,64

.section .rodata.n__$FMSYNTH$_Ld32,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld32
_$FMSYNTH$_Ld32:
# value: 0d+8.1757989156437088E+000
	.byte	87,185,194,80,2,90,32,64

.section .rodata.n__$FMSYNTH$_Ld33,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld33
_$FMSYNTH$_Ld33:
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

.section .data.n_INIT_$FMSYNTH_$$_TWAVESAMPLE1,"d"
	.balign 8
.globl	INIT_$FMSYNTH_$$_TWAVESAMPLE1
INIT_$FMSYNTH_$$_TWAVESAMPLE1:
	.byte	13,12
	.ascii	"TWaveSample1"
	.long	40,1
	.quad	RTTI_$SYSTEM_$$_ANSISTRING
	.quad	0

.section .data.n_RTTI_$FMSYNTH_$$_TWAVESAMPLE1,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_TWAVESAMPLE1
RTTI_$FMSYNTH_$$_TWAVESAMPLE1:
	.byte	13,12
	.ascii	"TWaveSample1"
	.long	40,6
	.quad	RTTI_$SYSTEM_$$_ANSISTRING
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	12
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	16
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.quad	24
	.quad	RTTI_$SYSTEM_$$_POINTER
	.quad	32

.section .data.n_INIT_$FMSYNTH_$$_TWAVESAMPLE0,"d"
	.balign 8
.globl	INIT_$FMSYNTH_$$_TWAVESAMPLE0
INIT_$FMSYNTH_$$_TWAVESAMPLE0:
	.byte	13,12
	.ascii	"TWaveSample0"
	.long	8200,1
	.quad	RTTI_$SYSTEM_$$_ANSISTRING
	.quad	0

.section .data.n_RTTI_$FMSYNTH_$$_DEF18,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_DEF18
RTTI_$FMSYNTH_$$_DEF18:
	.byte	12
	.ascii	"\000"
	.quad	8192,1024
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SMALLINT

.section .data.n_RTTI_$FMSYNTH_$$_TWAVESAMPLE0,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_TWAVESAMPLE0
RTTI_$FMSYNTH_$$_TWAVESAMPLE0:
	.byte	13,12
	.ascii	"TWaveSample0"
	.long	8200,2
	.quad	RTTI_$SYSTEM_$$_ANSISTRING
	.quad	0
	.quad	RTTI_$FMSYNTH_$$_DEF18
	.quad	8

.section .data.n_INIT_$FMSYNTH_$$_DEF24,"d"
	.balign 8
.globl	INIT_$FMSYNTH_$$_DEF24
INIT_$FMSYNTH_$$_DEF24:
	.byte	12
	.ascii	"\000"
	.quad	1049600,128
	.quad	INIT_$FMSYNTH_$$_TWAVESAMPLE0
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc58:
	.long	.Lc60-.Lc59
.Lc59:
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
.Lc60:
	.long	.Lc62-.Lc61
.Lc61:
	.secrel32	.Lc58
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
.Lc62:
	.long	.Lc64-.Lc63
.Lc63:
	.secrel32	.Lc58
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
.Lc64:
	.long	.Lc66-.Lc65
.Lc65:
	.secrel32	.Lc58
	.quad	.Lc11
	.quad	.Lc12-.Lc11
	.byte	4
	.long	.Lc13-.Lc11
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc66:
	.long	.Lc68-.Lc67
.Lc67:
	.secrel32	.Lc58
	.quad	.Lc14
	.quad	.Lc15-.Lc14
	.byte	4
	.long	.Lc16-.Lc14
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc17-.Lc16
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc18-.Lc17
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc68:
	.long	.Lc70-.Lc69
.Lc69:
	.secrel32	.Lc58
	.quad	.Lc19
	.quad	.Lc20-.Lc19
	.byte	4
	.long	.Lc21-.Lc19
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc70:
	.long	.Lc72-.Lc71
.Lc71:
	.secrel32	.Lc58
	.quad	.Lc22
	.quad	.Lc23-.Lc22
	.balign 4,0
.Lc72:
	.long	.Lc74-.Lc73
.Lc73:
	.secrel32	.Lc58
	.quad	.Lc24
	.quad	.Lc25-.Lc24
	.byte	4
	.long	.Lc26-.Lc24
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc74:
	.long	.Lc76-.Lc75
.Lc75:
	.secrel32	.Lc58
	.quad	.Lc27
	.quad	.Lc28-.Lc27
	.balign 4,0
.Lc76:
	.long	.Lc78-.Lc77
.Lc77:
	.secrel32	.Lc58
	.quad	.Lc29
	.quad	.Lc30-.Lc29
	.byte	4
	.long	.Lc31-.Lc29
	.byte	14
	.uleb128	32
	.balign 4,0
.Lc78:
	.long	.Lc80-.Lc79
.Lc79:
	.secrel32	.Lc58
	.quad	.Lc32
	.quad	.Lc33-.Lc32
	.byte	4
	.long	.Lc34-.Lc32
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc35-.Lc34
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc36-.Lc35
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc80:
	.long	.Lc82-.Lc81
.Lc81:
	.secrel32	.Lc58
	.quad	.Lc37
	.quad	.Lc38-.Lc37
	.byte	4
	.long	.Lc39-.Lc37
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc82:
	.long	.Lc84-.Lc83
.Lc83:
	.secrel32	.Lc58
	.quad	.Lc40
	.quad	.Lc41-.Lc40
	.byte	4
	.long	.Lc42-.Lc40
	.byte	14
	.uleb128	64
	.balign 4,0
.Lc84:
	.long	.Lc86-.Lc85
.Lc85:
	.secrel32	.Lc58
	.quad	.Lc43
	.quad	.Lc44-.Lc43
	.balign 4,0
.Lc86:
	.long	.Lc88-.Lc87
.Lc87:
	.secrel32	.Lc58
	.quad	.Lc45
	.quad	.Lc46-.Lc45
	.balign 4,0
.Lc88:
	.long	.Lc90-.Lc89
.Lc89:
	.secrel32	.Lc58
	.quad	.Lc47
	.quad	.Lc48-.Lc47
	.byte	4
	.long	.Lc49-.Lc47
	.byte	14
	.uleb128	80
	.balign 4,0
.Lc90:
	.long	.Lc92-.Lc91
.Lc91:
	.secrel32	.Lc58
	.quad	.Lc50
	.quad	.Lc51-.Lc50
	.balign 4,0
.Lc92:
	.long	.Lc94-.Lc93
.Lc93:
	.secrel32	.Lc58
	.quad	.Lc52
	.quad	.Lc53-.Lc52
	.byte	4
	.long	.Lc54-.Lc52
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc94:
	.long	.Lc96-.Lc95
.Lc95:
	.secrel32	.Lc58
	.quad	.Lc55
	.quad	.Lc56-.Lc55
	.byte	4
	.long	.Lc57-.Lc55
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc96:
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
# Symbol MYFLOAT
# Symbol PSINGLESAMPLE
# Symbol TSINGLESAMPLE
# Symbol PSINGLESTEREOSAMPLE
# Symbol TSINGLESTEREOSAMPLE
# Symbol TFMOPERATOR
# Symbol TFMVOICE
# Symbol TWAVESAMPLE1
# Symbol TWAVESAMPLE0
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
	.long	.La19-.Ldebug_info0
# Symbol FOUTPUTTABLE
	.uleb128	3
	.ascii	"FOUTPUTTABLE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FOUTPUTTABLE
	.long	.La21-.Ldebug_info0
# Symbol FNOTES
	.uleb128	3
	.ascii	"FNOTES\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FNOTES
	.long	.La23-.Ldebug_info0
# Symbol FSINETABLE
	.uleb128	3
	.ascii	"FSINETABLE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FSINETABLE
	.long	.La25-.Ldebug_info0
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
	.long	.La27-.Ldebug_info0
# Symbol WAVES0
	.uleb128	3
	.ascii	"WAVES0\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_WAVES0
	.long	.La29-.Ldebug_info0
# Symbol ATT
	.uleb128	3
	.ascii	"ATT\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$FMSYNTH_$$_ATT
	.long	.La1-.Ldebug_info0
# Symbol SAMPLEINDEX0
	.uleb128	3
	.ascii	"SAMPLEINDEX0\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$FMSYNTH_$$_SAMPLEINDEX0
	.long	.La31-.Ldebug_info0
# Symbol SAMPLEINDEX1
	.uleb128	3
	.ascii	"SAMPLEINDEX1\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$FMSYNTH_$$_SAMPLEINDEX1
	.long	.La31-.Ldebug_info0
# Symbol WAVEIDX
	.uleb128	3
	.ascii	"WAVEIDX\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$FMSYNTH_$$_WAVEIDX
	.long	.La31-.Ldebug_info0
# Symbol INITVOICES
# Syms - End unit FMSYNTH has index 18
# Syms - Begin Staticsymtable
# Symbol RETRO
# Symbol FMSYNTH_$$_init$
# Symbol INITSAMPLES0
# Symbol INITFLOGTABLE
# Symbol INITFSINETABLE
# Symbol assign
# Symbol star
# Symbol INITNOTES
# Symbol FMSYNTH_$$_finalize_implicit$
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
	.long	.La31-.Ldebug_info0
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
# Procdef initsamples0;
	.uleb128	4
	.ascii	"INITSAMPLES0\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH_$$_INITSAMPLES0
	.quad	.Lt3
# Symbol SR
	.uleb128	5
	.ascii	"SR\000"
	.byte	3
	.byte	118
	.sleb128	-640
	.long	.La33-.Ldebug_info0
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La31-.Ldebug_info0
# Symbol FH
	.uleb128	5
	.ascii	"FH\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La31-.Ldebug_info0
# Symbol CURRENTDIR2
	.uleb128	5
	.ascii	"CURRENTDIR2\000"
	.byte	3
	.byte	118
	.sleb128	-648
	.long	.La35-.Ldebug_info0
# Symbol DUMMY
	.uleb128	5
	.ascii	"DUMMY\000"
	.byte	3
	.byte	118
	.sleb128	-664
	.long	.La37-.Ldebug_info0
# Symbol INTWAVE
	.uleb128	5
	.ascii	"INTWAVE\000"
	.byte	3
	.byte	118
	.sleb128	-2720
	.long	.La39-.Ldebug_info0
# Symbol fin$2
# Definition Array[0..15] Of Byte
.La37:
	.uleb128	6
	.uleb128	16
	.long	.La41-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	15
	.uleb128	1
	.long	.La43-.Ldebug_info0
	.byte	0
.La38:
	.uleb128	8
	.long	.La37-.Ldebug_info0
# Definition Array[0..1024] Of SmallInt
.La39:
	.uleb128	6
	.uleb128	2050
	.long	.La45-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	1024
	.uleb128	2
	.long	.La45-.Ldebug_info0
	.byte	0
.La40:
	.uleb128	8
	.long	.La39-.Ldebug_info0
	.byte	0
# Procdef $fin$2(<^untyped>) is nested;
	.uleb128	9
	.ascii	"fin$2\000"
	.byte	1
	.byte	65
	.quad	FMSYNTH$_$INITSAMPLES0_$$_fin$2
	.quad	.Lt4
# Symbol parentfp
	.uleb128	10
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La47-.Ldebug_info0
	.byte	0
# Procdef initflogtable;
	.uleb128	4
	.ascii	"INITFLOGTABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH_$$_INITFLOGTABLE
	.quad	.Lt5
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La31-.Ldebug_info0
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
	.quad	.Lt6
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef operator :=(<var TSingleStereoSample>;LongInt):Array[0..1] Of Double;
	.uleb128	11
	.ascii	"assign\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La7-.Ldebug_info0
	.quad	FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
	.quad	.Lt7
# Symbol result
	.uleb128	5
	.ascii	"result\000"
	.byte	3
	.byte	146
	.uleb128	0
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol B
	.uleb128	10
	.ascii	"B\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La31-.Ldebug_info0
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
	.uleb128	11
	.ascii	"star\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La7-.Ldebug_info0
	.quad	FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
	.quad	.Lt8
# Symbol result
	.uleb128	5
	.ascii	"result\000"
	.byte	3
	.byte	146
	.uleb128	0
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol A
	.uleb128	10
	.ascii	"A\000"
	.byte	2
	.byte	119
	.sleb128	8
	.long	.La7-.Ldebug_info0
# Symbol B
	.uleb128	10
	.ascii	"B\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La49-.Ldebug_info0
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
	.quad	.Lt9
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La31-.Ldebug_info0
# Symbol Q
	.uleb128	5
	.ascii	"Q\000"
	.byte	2
	.byte	144
	.uleb128	18
	.long	.La1-.Ldebug_info0
	.byte	0
# Procdef $FMSYNTH_$$_finalize_implicit$; Register;
	.uleb128	4
	.ascii	"FMSYNTH_$$_finalize_implicit$\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH_$$_finalize_implicit$
	.quad	.Lt10
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition Byte
.La41:
	.uleb128	12
	.ascii	"BYTE\000"
	.long	.La51-.Ldebug_info0
.La51:
	.uleb128	13
	.ascii	"BYTE\000"
	.byte	7
	.byte	1
.La42:
	.uleb128	8
	.long	.La41-.Ldebug_info0
# Definition ShortInt
.La43:
	.uleb128	12
	.ascii	"SHORTINT\000"
	.long	.La52-.Ldebug_info0
.La52:
	.uleb128	13
	.ascii	"SHORTINT\000"
	.byte	5
	.byte	1
.La44:
	.uleb128	8
	.long	.La43-.Ldebug_info0
# Definition SmallInt
.La45:
	.uleb128	12
	.ascii	"SMALLINT\000"
	.long	.La53-.Ldebug_info0
.La53:
	.uleb128	13
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.La46:
	.uleb128	8
	.long	.La45-.Ldebug_info0
# Definition LongInt
.La31:
	.uleb128	12
	.ascii	"LONGINT\000"
	.long	.La54-.Ldebug_info0
.La54:
	.uleb128	13
	.ascii	"LONGINT\000"
	.byte	5
	.byte	4
.La32:
	.uleb128	8
	.long	.La31-.Ldebug_info0
# Definition AnsiString
.La35:
	.uleb128	12
	.ascii	"ANSISTRING\000"
	.long	.La55-.Ldebug_info0
.La55:
	.uleb128	14
	.long	.La56-.Ldebug_info0
.La36:
	.uleb128	8
	.long	.La35-.Ldebug_info0
# Definition Single
.La49:
	.uleb128	12
	.ascii	"SINGLE\000"
	.long	.La58-.Ldebug_info0
.La58:
	.uleb128	13
	.ascii	"SINGLE\000"
	.byte	4
	.byte	4
.La50:
	.uleb128	8
	.long	.La49-.Ldebug_info0
# Definition Double
.La1:
	.uleb128	12
	.ascii	"DOUBLE\000"
	.long	.La59-.Ldebug_info0
.La59:
	.uleb128	13
	.ascii	"DOUBLE\000"
	.byte	4
	.byte	8
.La2:
	.uleb128	8
	.long	.La1-.Ldebug_info0
# Definition ^untyped
.La47:
	.uleb128	12
	.ascii	"parentfp_void_pointer\000"
	.long	.La60-.Ldebug_info0
.La60:
	.uleb128	15
.La48:
	.uleb128	8
	.long	.La47-.Ldebug_info0
# Definition Char
.La56:
	.uleb128	12
	.ascii	"CHAR\000"
	.long	.La61-.Ldebug_info0
.La61:
	.uleb128	13
	.ascii	"Char\000"
	.byte	8
	.byte	1
.La57:
	.uleb128	8
	.long	.La56-.Ldebug_info0
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
# Definition TRawbyteSearchRec
.La33:
	.uleb128	12
	.ascii	"TRAWBYTESEARCHREC\000"
	.long	.La62-.Ldebug_info0
.La62:
	.uleb128	16
	.ascii	"TRAWBYTESEARCHREC\000"
	.uleb128	640
	.uleb128	17
	.ascii	"TIME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La31-.Ldebug_info0
	.uleb128	17
	.ascii	"SIZE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La63-.Ldebug_info0
	.uleb128	17
	.ascii	"ATTR\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La31-.Ldebug_info0
	.uleb128	17
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La65-.Ldebug_info0
	.uleb128	17
	.ascii	"EXCLUDEATTR\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La31-.Ldebug_info0
	.uleb128	17
	.ascii	"FINDHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La67-.Ldebug_info0
	.uleb128	17
	.ascii	"FINDDATA\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La69-.Ldebug_info0
	.byte	0
.La34:
	.uleb128	8
	.long	.La33-.Ldebug_info0
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
	.uleb128	12
	.ascii	"PSINGLESAMPLE\000"
	.long	.La71-.Ldebug_info0
.La71:
	.uleb128	14
	.long	.La1-.Ldebug_info0
.La4:
	.uleb128	8
	.long	.La3-.Ldebug_info0
# Definition PSingleStereosample
.La5:
	.uleb128	12
	.ascii	"PSINGLESTEREOSAMPLE\000"
	.long	.La72-.Ldebug_info0
.La72:
	.uleb128	14
	.long	.La1-.Ldebug_info0
.La6:
	.uleb128	8
	.long	.La5-.Ldebug_info0
# Definition TSingleStereoSample
.La7:
	.uleb128	12
	.ascii	"TSINGLESTEREOSAMPLE\000"
	.long	.La73-.Ldebug_info0
.La73:
	.uleb128	18
	.ascii	"TSINGLESTEREOSAMPLE\000"
	.uleb128	16
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	1
	.uleb128	8
	.long	.La43-.Ldebug_info0
	.byte	0
.La8:
	.uleb128	8
	.long	.La7-.Ldebug_info0
# Definition TFmOperator
.La9:
	.uleb128	12
	.ascii	"TFMOPERATOR\000"
	.long	.La74-.Ldebug_info0
.La74:
	.uleb128	14
	.long	.La11-.Ldebug_info0
.La11:
	.uleb128	19
	.ascii	"TFMOPERATOR\000"
	.uleb128	336
	.uleb128	20
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La77-.Ldebug_info0
	.uleb128	17
	.ascii	"FREQ\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"C3\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"C4\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"C5\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"C6\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"LFO1\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"LFO2\000"
	.byte	2
	.byte	35
	.uleb128	56
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"LFO3\000"
	.byte	2
	.byte	35
	.uleb128	64
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"MUL0\000"
	.byte	2
	.byte	35
	.uleb128	72
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"MUL1\000"
	.byte	2
	.byte	35
	.uleb128	80
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"MUL2\000"
	.byte	2
	.byte	35
	.uleb128	88
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"MUL3\000"
	.byte	2
	.byte	35
	.uleb128	96
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"MUL4\000"
	.byte	2
	.byte	35
	.uleb128	104
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"MUL5\000"
	.byte	2
	.byte	35
	.uleb128	112
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"MUL6\000"
	.byte	2
	.byte	35
	.uleb128	120
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"MUL7\000"
	.byte	3
	.byte	35
	.uleb128	128
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"WPTR\000"
	.byte	3
	.byte	35
	.uleb128	136
	.long	.La3-.Ldebug_info0
	.uleb128	17
	.ascii	"WLENGTH\000"
	.byte	3
	.byte	35
	.uleb128	144
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"WLSTART\000"
	.byte	3
	.byte	35
	.uleb128	152
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"WLEND\000"
	.byte	3
	.byte	35
	.uleb128	160
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"ADSRSTATE\000"
	.byte	3
	.byte	35
	.uleb128	320
	.long	.La31-.Ldebug_info0
	.uleb128	17
	.ascii	"ADSRVAL\000"
	.byte	3
	.byte	35
	.uleb128	168
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AR1\000"
	.byte	3
	.byte	35
	.uleb128	176
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AV1\000"
	.byte	3
	.byte	35
	.uleb128	184
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AR2\000"
	.byte	3
	.byte	35
	.uleb128	192
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AV2\000"
	.byte	3
	.byte	35
	.uleb128	200
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AR3\000"
	.byte	3
	.byte	35
	.uleb128	208
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AV3\000"
	.byte	3
	.byte	35
	.uleb128	216
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AR4\000"
	.byte	3
	.byte	35
	.uleb128	224
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AV4\000"
	.byte	3
	.byte	35
	.uleb128	232
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AV\000"
	.byte	3
	.byte	35
	.uleb128	240
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AR\000"
	.byte	3
	.byte	35
	.uleb128	248
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"ADSRBIAS\000"
	.byte	3
	.byte	35
	.uleb128	256
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"VEL\000"
	.byte	3
	.byte	35
	.uleb128	264
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"KEYSENSE\000"
	.byte	3
	.byte	35
	.uleb128	272
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"EXPR\000"
	.byte	3
	.byte	35
	.uleb128	280
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"PA\000"
	.byte	3
	.byte	35
	.uleb128	288
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"PA2\000"
	.byte	3
	.byte	35
	.uleb128	296
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"WAVEMODE\000"
	.byte	3
	.byte	35
	.uleb128	324
	.long	.La31-.Ldebug_info0
	.uleb128	17
	.ascii	"INTPA\000"
	.byte	3
	.byte	35
	.uleb128	328
	.long	.La31-.Ldebug_info0
	.uleb128	17
	.ascii	"FREQMOD\000"
	.byte	3
	.byte	35
	.uleb128	304
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"OUTPUTTABLE\000"
	.byte	3
	.byte	35
	.uleb128	312
	.long	.La3-.Ldebug_info0
# Procdef getsample(<TFmOperator>):Double;
	.uleb128	11
	.ascii	"GETSAMPLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La1-.Ldebug_info0
	.quad	FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
	.quad	.Lt11
# Symbol this
	.uleb128	21
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
	.long	.La31-.Ldebug_info0
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
	.quad	.Lt12
# Symbol this
	.uleb128	21
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
	.quad	.Lt13
# Symbol this
	.uleb128	21
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	0
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol AFREQ
	.uleb128	10
	.ascii	"AFREQ\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La1-.Ldebug_info0
	.byte	0
# Procdef constructor create(<TFmOperator>;<Pointer>;LongInt;Pointer);
	.uleb128	11
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La9-.Ldebug_info0
	.quad	FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
	.quad	.Lt14
# Symbol this
	.uleb128	21
	.ascii	"this\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol vmt
	.uleb128	10
	.ascii	"vmt\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La78-.Ldebug_info0
# Symbol MODE
	.uleb128	10
	.ascii	"MODE\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La31-.Ldebug_info0
# Symbol OUTS
	.uleb128	10
	.ascii	"OUTS\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La78-.Ldebug_info0
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
	.quad	.Lt15
# Symbol this
	.uleb128	21
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	3
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol vmt
	.uleb128	10
	.ascii	"vmt\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La78-.Ldebug_info0
	.byte	0
	.byte	0
.La10:
	.uleb128	8
	.long	.La9-.Ldebug_info0
# Definition TFmVoice
.La12:
	.uleb128	12
	.ascii	"TFMVOICE\000"
	.long	.La80-.Ldebug_info0
.La80:
	.uleb128	14
	.long	.La14-.Ldebug_info0
.La14:
	.uleb128	19
	.ascii	"TFMVOICE\000"
	.uleb128	168
	.uleb128	20
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La77-.Ldebug_info0
	.uleb128	17
	.ascii	"OPERATORS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La81-.Ldebug_info0
	.uleb128	17
	.ascii	"OUTPUTS\000"
	.byte	2
	.byte	35
	.uleb128	72
	.long	.La83-.Ldebug_info0
	.uleb128	17
	.ascii	"OUTMULS\000"
	.byte	3
	.byte	35
	.uleb128	136
	.long	.La85-.Ldebug_info0
# Procdef constructor create(<TFmVoice>;<Pointer>);
	.uleb128	11
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La12-.Ldebug_info0
	.quad	FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
	.quad	.Lt16
# Symbol this
	.uleb128	21
	.ascii	"this\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.byte	1
	.long	.La12-.Ldebug_info0
# Symbol vmt
	.uleb128	10
	.ascii	"vmt\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La78-.Ldebug_info0
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef getsample(<TFmVoice>):Double;
	.uleb128	11
	.ascii	"GETSAMPLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La1-.Ldebug_info0
	.quad	FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
	.quad	.Lt17
# Symbol this
	.uleb128	21
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
	.long	.La31-.Ldebug_info0
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
	.quad	.Lt18
# Symbol this
	.uleb128	21
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	3
	.byte	1
	.long	.La12-.Ldebug_info0
# Symbol AFREQ
	.uleb128	10
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
	.long	.La31-.Ldebug_info0
	.byte	0
	.byte	0
.La13:
	.uleb128	8
	.long	.La12-.Ldebug_info0
# Definition TWaveSample1
.La15:
	.uleb128	12
	.ascii	"TWAVESAMPLE1\000"
	.long	.La87-.Ldebug_info0
.La87:
	.uleb128	16
	.ascii	"TWAVESAMPLE1\000"
	.uleb128	40
	.uleb128	17
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La35-.Ldebug_info0
	.uleb128	17
	.ascii	"LEN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La31-.Ldebug_info0
	.uleb128	17
	.ascii	"LSTART\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La31-.Ldebug_info0
	.uleb128	17
	.ascii	"LEND\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La31-.Ldebug_info0
	.uleb128	17
	.ascii	"SPEED\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"WAVE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La78-.Ldebug_info0
	.byte	0
.La16:
	.uleb128	8
	.long	.La15-.Ldebug_info0
# Definition TWaveSample0
.La17:
	.uleb128	12
	.ascii	"TWAVESAMPLE0\000"
	.long	.La88-.Ldebug_info0
.La88:
	.uleb128	16
	.ascii	"TWAVESAMPLE0\000"
	.uleb128	8200
	.uleb128	17
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La35-.Ldebug_info0
	.uleb128	17
	.ascii	"WAVE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La89-.Ldebug_info0
	.byte	0
.La18:
	.uleb128	8
	.long	.La17-.Ldebug_info0
# Definition Array[0..65540] Of Double
.La19:
	.uleb128	6
	.uleb128	524328
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	65540
	.uleb128	8
	.long	.La31-.Ldebug_info0
	.byte	0
.La20:
	.uleb128	8
	.long	.La19-.Ldebug_info0
# Definition Array[0..8191] Of Double
.La21:
	.uleb128	6
	.uleb128	65536
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	8191
	.uleb128	8
	.long	.La45-.Ldebug_info0
	.byte	0
.La22:
	.uleb128	8
	.long	.La21-.Ldebug_info0
# Definition Array[0..127] Of Double
.La23:
	.uleb128	6
	.uleb128	1024
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	127
	.uleb128	8
	.long	.La43-.Ldebug_info0
	.byte	0
.La24:
	.uleb128	8
	.long	.La23-.Ldebug_info0
# Definition Array[-655360..655360] Of Double
.La25:
	.uleb128	6
	.uleb128	10485768
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	-655360
	.sleb128	655360
	.uleb128	8
	.long	.La31-.Ldebug_info0
	.byte	0
.La26:
	.uleb128	8
	.long	.La25-.Ldebug_info0
# Definition Array[0..31] Of TFmVoice
.La27:
	.uleb128	6
	.uleb128	256
	.long	.La12-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	31
	.uleb128	8
	.long	.La43-.Ldebug_info0
	.byte	0
.La28:
	.uleb128	8
	.long	.La27-.Ldebug_info0
# Definition Array[0..127] Of TWaveSample0
.La29:
	.uleb128	6
	.uleb128	1049600
	.long	.La17-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	127
	.uleb128	8200
	.long	.La43-.Ldebug_info0
	.byte	0
.La30:
	.uleb128	8
	.long	.La29-.Ldebug_info0
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
# Definition Int64
.La63:
	.uleb128	12
	.ascii	"INT64\000"
	.long	.La91-.Ldebug_info0
.La91:
	.uleb128	13
	.ascii	"Int64\000"
	.byte	5
	.byte	8
.La64:
	.uleb128	8
	.long	.La63-.Ldebug_info0
# Definition RawByteString
.La65:
	.uleb128	12
	.ascii	"RAWBYTESTRING\000"
	.long	.La92-.Ldebug_info0
.La92:
	.uleb128	14
	.long	.La56-.Ldebug_info0
.La66:
	.uleb128	8
	.long	.La65-.Ldebug_info0
# Definition QWord
.La67:
	.uleb128	12
	.ascii	"QWORD\000"
	.long	.La93-.Ldebug_info0
.La93:
	.uleb128	13
	.ascii	"QWord\000"
	.byte	7
	.byte	8
.La68:
	.uleb128	8
	.long	.La67-.Ldebug_info0
# Definition WIN32_FIND_DATAW
.La69:
	.uleb128	12
	.ascii	"WIN32_FIND_DATAW\000"
	.long	.La94-.Ldebug_info0
.La94:
	.uleb128	16
	.ascii	"WIN32_FIND_DATAW\000"
	.uleb128	592
	.uleb128	17
	.ascii	"DWFILEATTRIBUTES\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La95-.Ldebug_info0
	.uleb128	17
	.ascii	"FTCREATIONTIME\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La97-.Ldebug_info0
	.uleb128	17
	.ascii	"FTLASTACCESSTIME\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La97-.Ldebug_info0
	.uleb128	17
	.ascii	"FTLASTWRITETIME\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La97-.Ldebug_info0
	.uleb128	17
	.ascii	"NFILESIZEHIGH\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La95-.Ldebug_info0
	.uleb128	17
	.ascii	"NFILESIZELOW\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La95-.Ldebug_info0
	.uleb128	17
	.ascii	"DWRESERVED0\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La95-.Ldebug_info0
	.uleb128	17
	.ascii	"DWRESERVED1\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La95-.Ldebug_info0
	.uleb128	17
	.ascii	"CFILENAME\000"
	.byte	2
	.byte	35
	.uleb128	44
	.long	.La99-.Ldebug_info0
	.uleb128	17
	.ascii	"CALTERNATEFILENAME\000"
	.byte	3
	.byte	35
	.uleb128	564
	.long	.La101-.Ldebug_info0
	.byte	0
.La70:
	.uleb128	8
	.long	.La69-.Ldebug_info0
# Definition TObject
.La75:
	.uleb128	12
	.ascii	"TOBJECT\000"
	.long	.La103-.Ldebug_info0
.La103:
	.uleb128	14
	.long	.La77-.Ldebug_info0
.La77:
	.uleb128	19
	.ascii	"TOBJECT\000"
	.uleb128	8
	.uleb128	22
	.byte	1
	.ascii	"_vptr$TOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La78-.Ldebug_info0
# Procdef constructor Create(<TObject>;<Pointer>);
	.uleb128	23
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol vmt
	.uleb128	25
	.ascii	"vmt\000"
	.long	.La78-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TObject>;<Pointer>);
	.uleb128	26
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
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol vmt
	.uleb128	25
	.ascii	"vmt\000"
	.long	.La78-.Ldebug_info0
	.byte	0
# Procdef class newinstance(<Class Of TObject>):TObject;
	.uleb128	27
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
	.long	.La75-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La104-.Ldebug_info0
	.byte	0
# Procdef FreeInstance(<TObject>);
	.uleb128	26
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
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
	.byte	0
# Procdef SafeCallException(<TObject>;TObject;Pointer):LongInt;
	.uleb128	27
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
	.long	.La106-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol EXCEPTOBJECT
	.uleb128	25
	.ascii	"EXCEPTOBJECT\000"
	.long	.La75-.Ldebug_info0
# Symbol EXCEPTADDR
	.uleb128	25
	.ascii	"EXCEPTADDR\000"
	.long	.La78-.Ldebug_info0
	.byte	0
# Procdef DefaultHandler(<TObject>;var <Formal type>);
	.uleb128	26
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
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	25
	.ascii	"MESSAGE\000"
	.long	.La108-.Ldebug_info0
	.byte	0
# Procdef Free(<TObject>);
	.uleb128	28
	.ascii	"FREE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
	.byte	0
# Procdef class InitInstance(<Class Of TObject>;Pointer):TObject;
	.uleb128	23
	.ascii	"INITINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La110-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	25
	.ascii	"INSTANCE\000"
	.long	.La78-.Ldebug_info0
	.byte	0
# Procdef CleanupInstance(<TObject>);
	.uleb128	28
	.ascii	"CLEANUPINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
	.byte	0
# Procdef class ClassType(<Class Of TObject>):Class Of TObject;
	.uleb128	23
	.ascii	"CLASSTYPE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La114-.Ldebug_info0
	.byte	0
# Procdef class ClassInfo(<Class Of TObject>):^untyped;
	.uleb128	23
	.ascii	"CLASSINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La78-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La116-.Ldebug_info0
	.byte	0
# Procdef class ClassName(<Class Of TObject>;<var ShortString>):ShortString;
	.uleb128	23
	.ascii	"CLASSNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La118-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol result
	.uleb128	29
	.ascii	"result\000"
	.long	.La118-.Ldebug_info0
	.byte	0
# Procdef class ClassNameIs(<Class Of TObject>;const ShortString):Boolean;
	.uleb128	23
	.ascii	"CLASSNAMEIS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La122-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La124-.Ldebug_info0
# Symbol NAME
	.uleb128	25
	.ascii	"NAME\000"
	.long	.La118-.Ldebug_info0
	.byte	0
# Procdef class ClassParent(<Class Of TObject>):Class Of TObject;
	.uleb128	23
	.ascii	"CLASSPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La126-.Ldebug_info0
	.byte	0
# Procdef class InstanceSize(<Class Of TObject>):Int64;
	.uleb128	23
	.ascii	"INSTANCESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La63-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La128-.Ldebug_info0
	.byte	0
# Procdef class InheritsFrom(<Class Of TObject>;TClass):Boolean;
	.uleb128	23
	.ascii	"INHERITSFROM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La122-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La130-.Ldebug_info0
# Symbol ACLASS
	.uleb128	25
	.ascii	"ACLASS\000"
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef class StringMessageTable(<Class Of TObject>):^TStringMessageTable;
	.uleb128	23
	.ascii	"STRINGMESSAGETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La132-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La134-.Ldebug_info0
	.byte	0
# Procdef class MethodAddress(<Class Of TObject>;const ShortString):^untyped;
	.uleb128	23
	.ascii	"METHODADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La78-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La136-.Ldebug_info0
# Symbol NAME
	.uleb128	25
	.ascii	"NAME\000"
	.long	.La118-.Ldebug_info0
	.byte	0
# Procdef class MethodName(<Class Of TObject>;<var ShortString>;Pointer):ShortString;
	.uleb128	23
	.ascii	"METHODNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La118-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La138-.Ldebug_info0
# Symbol result
	.uleb128	29
	.ascii	"result\000"
	.long	.La118-.Ldebug_info0
# Symbol ADDRESS
	.uleb128	25
	.ascii	"ADDRESS\000"
	.long	.La78-.Ldebug_info0
	.byte	0
# Procdef FieldAddress(<TObject>;const ShortString):^untyped;
	.uleb128	23
	.ascii	"FIELDADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La78-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol NAME
	.uleb128	25
	.ascii	"NAME\000"
	.long	.La118-.Ldebug_info0
	.byte	0
# Procdef AfterConstruction(<TObject>);
	.uleb128	26
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
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
	.byte	0
# Procdef BeforeDestruction(<TObject>);
	.uleb128	26
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
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
	.byte	0
# Procdef DefaultHandlerStr(<TObject>;var <Formal type>);
	.uleb128	26
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
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	25
	.ascii	"MESSAGE\000"
	.long	.La108-.Ldebug_info0
	.byte	0
# Procdef Dispatch(<TObject>;var <Formal type>);
	.uleb128	26
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
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	25
	.ascii	"MESSAGE\000"
	.long	.La108-.Ldebug_info0
	.byte	0
# Procdef DispatchStr(<TObject>;var <Formal type>);
	.uleb128	26
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
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	25
	.ascii	"MESSAGE\000"
	.long	.La108-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	23
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La122-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol IID
	.uleb128	25
	.ascii	"IID\000"
	.long	.La140-.Ldebug_info0
# Symbol OBJ
	.uleb128	25
	.ascii	"OBJ\000"
	.long	.La108-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	23
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La122-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	25
	.ascii	"IIDSTR\000"
	.long	.La118-.Ldebug_info0
# Symbol OBJ
	.uleb128	25
	.ascii	"OBJ\000"
	.long	.La108-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceByStr(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	23
	.ascii	"GETINTERFACEBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La122-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	25
	.ascii	"IIDSTR\000"
	.long	.La118-.Ldebug_info0
# Symbol OBJ
	.uleb128	25
	.ascii	"OBJ\000"
	.long	.La108-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceWeak(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	23
	.ascii	"GETINTERFACEWEAK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La122-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol IID
	.uleb128	25
	.ascii	"IID\000"
	.long	.La140-.Ldebug_info0
# Symbol OBJ
	.uleb128	25
	.ascii	"OBJ\000"
	.long	.La108-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntry(<Class Of TObject>;const TGuid):^tinterfaceentry;
	.uleb128	23
	.ascii	"GETINTERFACEENTRY\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La142-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La144-.Ldebug_info0
# Symbol IID
	.uleb128	25
	.ascii	"IID\000"
	.long	.La140-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntryByStr(<Class Of TObject>;const ShortString):^tinterfaceentry;
	.uleb128	23
	.ascii	"GETINTERFACEENTRYBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La142-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La146-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	25
	.ascii	"IIDSTR\000"
	.long	.La118-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceTable(<Class Of TObject>):^tinterfacetable;
	.uleb128	23
	.ascii	"GETINTERFACETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La148-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La150-.Ldebug_info0
	.byte	0
# Procdef class UnitName(<Class Of TObject>;<var AnsiString>):AnsiString;
	.uleb128	23
	.ascii	"UNITNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La35-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La152-.Ldebug_info0
# Symbol result
	.uleb128	29
	.ascii	"result\000"
	.long	.La35-.Ldebug_info0
	.byte	0
# Procdef Equals(<TObject>;TObject):Boolean;
	.uleb128	27
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
	.long	.La122-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol OBJ
	.uleb128	25
	.ascii	"OBJ\000"
	.long	.La75-.Ldebug_info0
	.byte	0
# Procdef GetHashCode(<TObject>):Int64;
	.uleb128	27
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
	.long	.La63-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
	.byte	0
# Procdef ToString(<TObject>;<var AnsiString>):AnsiString;
	.uleb128	27
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
	.long	.La35-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol result
	.uleb128	29
	.ascii	"result\000"
	.long	.La35-.Ldebug_info0
	.byte	0
	.byte	0
.La76:
	.uleb128	8
	.long	.La75-.Ldebug_info0
# Definition Pointer
.La78:
	.uleb128	12
	.ascii	"POINTER\000"
	.long	.La154-.Ldebug_info0
.La154:
	.uleb128	15
.La79:
	.uleb128	8
	.long	.La78-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of TFmOperator
.La81:
	.uleb128	6
	.uleb128	64
	.long	.La9-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	8
	.long	.La43-.Ldebug_info0
	.byte	0
.La82:
	.uleb128	8
	.long	.La81-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of Double
.La83:
	.uleb128	6
	.uleb128	64
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	8
	.long	.La43-.Ldebug_info0
	.byte	0
.La84:
	.uleb128	8
	.long	.La83-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of Single
.La85:
	.uleb128	6
	.uleb128	32
	.long	.La49-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	4
	.long	.La43-.Ldebug_info0
	.byte	0
.La86:
	.uleb128	8
	.long	.La85-.Ldebug_info0
# Definition TWaveSample0.Array[0..1023] Of Double
.La89:
	.uleb128	6
	.uleb128	8192
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	1023
	.uleb128	8
	.long	.La45-.Ldebug_info0
	.byte	0
.La90:
	.uleb128	8
	.long	.La89-.Ldebug_info0
# Definition LongWord
.La95:
	.uleb128	12
	.ascii	"LONGWORD\000"
	.long	.La155-.Ldebug_info0
.La155:
	.uleb128	13
	.ascii	"LONGWORD\000"
	.byte	7
	.byte	4
.La96:
	.uleb128	8
	.long	.La95-.Ldebug_info0
# Definition FILETIME
.La97:
	.uleb128	12
	.ascii	"FILETIME\000"
	.long	.La156-.Ldebug_info0
.La156:
	.uleb128	16
	.ascii	"FILETIME\000"
	.uleb128	8
	.uleb128	17
	.ascii	"DWLOWDATETIME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La95-.Ldebug_info0
	.uleb128	17
	.ascii	"DWHIGHDATETIME\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La95-.Ldebug_info0
	.byte	0
.La98:
	.uleb128	8
	.long	.La97-.Ldebug_info0
# Definition WIN32_FIND_DATAW.Array[0..259] Of WideChar
.La99:
	.uleb128	6
	.uleb128	520
	.long	.La157-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	259
	.uleb128	2
	.long	.La45-.Ldebug_info0
	.byte	0
.La100:
	.uleb128	8
	.long	.La99-.Ldebug_info0
# Definition WIN32_FIND_DATAW.Array[0..13] Of WideChar
.La101:
	.uleb128	6
	.uleb128	28
	.long	.La157-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	13
	.uleb128	2
	.long	.La43-.Ldebug_info0
	.byte	0
.La102:
	.uleb128	8
	.long	.La101-.Ldebug_info0
# Definition TObject.Class Of TObject
.La104:
	.uleb128	14
	.long	.La159-.Ldebug_info0
.La105:
	.uleb128	8
	.long	.La104-.Ldebug_info0
# Definition HRESULT
.La106:
	.uleb128	12
	.ascii	"HRESULT\000"
	.long	.La161-.Ldebug_info0
.La161:
	.uleb128	13
	.ascii	"HRESULT\000"
	.byte	5
	.byte	4
.La107:
	.uleb128	8
	.long	.La106-.Ldebug_info0
# Definition <Formal type>
.La108:
	.uleb128	12
	.ascii	"formal\000"
	.long	.La162-.Ldebug_info0
.La162:
	.uleb128	13
	.ascii	"FormalDef\000"
	.byte	7
	.byte	0
.La109:
	.uleb128	8
	.long	.La108-.Ldebug_info0
# Definition TObject.Class Of TObject
.La110:
	.uleb128	14
	.long	.La159-.Ldebug_info0
.La111:
	.uleb128	8
	.long	.La110-.Ldebug_info0
# Definition TClass
.La112:
	.uleb128	12
	.ascii	"TCLASS\000"
	.long	.La163-.Ldebug_info0
.La163:
	.uleb128	14
	.long	.La159-.Ldebug_info0
.La113:
	.uleb128	8
	.long	.La112-.Ldebug_info0
# Definition TObject.Class Of TObject
.La114:
	.uleb128	14
	.long	.La159-.Ldebug_info0
.La115:
	.uleb128	8
	.long	.La114-.Ldebug_info0
# Definition TObject.Class Of TObject
.La116:
	.uleb128	14
	.long	.La159-.Ldebug_info0
.La117:
	.uleb128	8
	.long	.La116-.Ldebug_info0
# Definition ShortString
.La118:
	.uleb128	12
	.ascii	"SHORTSTRING\000"
	.long	.La164-.Ldebug_info0
.La164:
	.uleb128	16
	.ascii	"ShortString\000"
	.uleb128	256
	.uleb128	17
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La41-.Ldebug_info0
	.uleb128	17
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La165-.Ldebug_info0
	.byte	0
.La165:
	.uleb128	30
	.uleb128	256
	.uleb128	1
	.long	.La56-.Ldebug_info0
	.uleb128	31
	.uleb128	1
	.uleb128	255
	.long	.La41-.Ldebug_info0
	.byte	0
.La119:
	.uleb128	8
	.long	.La118-.Ldebug_info0
# Definition TObject.Class Of TObject
.La120:
	.uleb128	14
	.long	.La159-.Ldebug_info0
.La121:
	.uleb128	8
	.long	.La120-.Ldebug_info0
# Definition Boolean
.La122:
	.uleb128	12
	.ascii	"BOOLEAN\000"
	.long	.La166-.Ldebug_info0
.La166:
	.uleb128	13
	.ascii	"Boolean\000"
	.byte	2
	.byte	1
.La123:
	.uleb128	8
	.long	.La122-.Ldebug_info0
# Definition TObject.Class Of TObject
.La124:
	.uleb128	14
	.long	.La159-.Ldebug_info0
.La125:
	.uleb128	8
	.long	.La124-.Ldebug_info0
# Definition TObject.Class Of TObject
.La126:
	.uleb128	14
	.long	.La159-.Ldebug_info0
.La127:
	.uleb128	8
	.long	.La126-.Ldebug_info0
# Definition TObject.Class Of TObject
.La128:
	.uleb128	14
	.long	.La159-.Ldebug_info0
.La129:
	.uleb128	8
	.long	.La128-.Ldebug_info0
# Definition TObject.Class Of TObject
.La130:
	.uleb128	14
	.long	.La159-.Ldebug_info0
.La131:
	.uleb128	8
	.long	.La130-.Ldebug_info0
# Definition pstringmessagetable
.La132:
	.uleb128	12
	.ascii	"PSTRINGMESSAGETABLE\000"
	.long	.La167-.Ldebug_info0
.La167:
	.uleb128	14
	.long	.La168-.Ldebug_info0
.La133:
	.uleb128	8
	.long	.La132-.Ldebug_info0
# Definition TObject.Class Of TObject
.La134:
	.uleb128	14
	.long	.La159-.Ldebug_info0
.La135:
	.uleb128	8
	.long	.La134-.Ldebug_info0
# Definition TObject.Class Of TObject
.La136:
	.uleb128	14
	.long	.La159-.Ldebug_info0
.La137:
	.uleb128	8
	.long	.La136-.Ldebug_info0
# Definition TObject.Class Of TObject
.La138:
	.uleb128	14
	.long	.La159-.Ldebug_info0
.La139:
	.uleb128	8
	.long	.La138-.Ldebug_info0
# Definition TGuid
.La140:
	.uleb128	12
	.ascii	"TGUID\000"
	.long	.La170-.Ldebug_info0
.La170:
	.uleb128	16
	.ascii	"TGUID\000"
	.uleb128	16
	.uleb128	17
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La95-.Ldebug_info0
	.uleb128	17
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La171-.Ldebug_info0
	.uleb128	17
	.ascii	"DATA3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La171-.Ldebug_info0
	.uleb128	17
	.ascii	"DATA4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La173-.Ldebug_info0
	.uleb128	17
	.ascii	"D1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La95-.Ldebug_info0
	.uleb128	17
	.ascii	"D2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La171-.Ldebug_info0
	.uleb128	17
	.ascii	"D3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La171-.Ldebug_info0
	.uleb128	17
	.ascii	"D4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La175-.Ldebug_info0
	.uleb128	17
	.ascii	"TIME_LOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La95-.Ldebug_info0
	.uleb128	17
	.ascii	"TIME_MID\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La171-.Ldebug_info0
	.uleb128	17
	.ascii	"TIME_HI_AND_VERSION\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La171-.Ldebug_info0
	.uleb128	17
	.ascii	"CLOCK_SEQ_HI_AND_RESERVED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La41-.Ldebug_info0
	.uleb128	17
	.ascii	"CLOCK_SEQ_LOW\000"
	.byte	2
	.byte	35
	.uleb128	9
	.long	.La41-.Ldebug_info0
	.uleb128	17
	.ascii	"NODE\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La177-.Ldebug_info0
	.byte	0
.La141:
	.uleb128	8
	.long	.La140-.Ldebug_info0
# Definition pinterfaceentry
.La142:
	.uleb128	12
	.ascii	"PINTERFACEENTRY\000"
	.long	.La179-.Ldebug_info0
.La179:
	.uleb128	14
	.long	.La180-.Ldebug_info0
.La143:
	.uleb128	8
	.long	.La142-.Ldebug_info0
# Definition TObject.Class Of TObject
.La144:
	.uleb128	14
	.long	.La159-.Ldebug_info0
.La145:
	.uleb128	8
	.long	.La144-.Ldebug_info0
# Definition TObject.Class Of TObject
.La146:
	.uleb128	14
	.long	.La159-.Ldebug_info0
.La147:
	.uleb128	8
	.long	.La146-.Ldebug_info0
# Definition pinterfacetable
.La148:
	.uleb128	12
	.ascii	"PINTERFACETABLE\000"
	.long	.La182-.Ldebug_info0
.La182:
	.uleb128	14
	.long	.La183-.Ldebug_info0
.La149:
	.uleb128	8
	.long	.La148-.Ldebug_info0
# Definition TObject.Class Of TObject
.La150:
	.uleb128	14
	.long	.La159-.Ldebug_info0
.La151:
	.uleb128	8
	.long	.La150-.Ldebug_info0
# Definition TObject.Class Of TObject
.La152:
	.uleb128	14
	.long	.La159-.Ldebug_info0
.La153:
	.uleb128	8
	.long	.La152-.Ldebug_info0
# Definition WideChar
.La157:
	.uleb128	12
	.ascii	"WIDECHAR\000"
	.long	.La185-.Ldebug_info0
.La185:
	.uleb128	13
	.ascii	"WideChar\000"
	.byte	8
	.byte	2
.La158:
	.uleb128	8
	.long	.La157-.Ldebug_info0
# Definition <record type>
.La159:
	.uleb128	12
	.ascii	"__vtbl_ptr_type\000"
	.long	.La186-.Ldebug_info0
.La186:
	.uleb128	32
	.uleb128	40
	.byte	0
.La160:
	.uleb128	8
	.long	.La159-.Ldebug_info0
# Definition TStringMessageTable
.La168:
	.uleb128	12
	.ascii	"TSTRINGMESSAGETABLE\000"
	.long	.La187-.Ldebug_info0
.La187:
	.uleb128	16
	.ascii	"TSTRINGMESSAGETABLE\000"
	.uleb128	24
	.uleb128	17
	.ascii	"COUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La31-.Ldebug_info0
	.uleb128	17
	.ascii	"MSGSTRTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La188-.Ldebug_info0
	.byte	0
.La169:
	.uleb128	8
	.long	.La168-.Ldebug_info0
# Definition Word
.La171:
	.uleb128	12
	.ascii	"WORD\000"
	.long	.La190-.Ldebug_info0
.La190:
	.uleb128	13
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La172:
	.uleb128	8
	.long	.La171-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La173:
	.uleb128	6
	.uleb128	8
	.long	.La41-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La43-.Ldebug_info0
	.byte	0
.La174:
	.uleb128	8
	.long	.La173-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La175:
	.uleb128	6
	.uleb128	8
	.long	.La41-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La43-.Ldebug_info0
	.byte	0
.La176:
	.uleb128	8
	.long	.La175-.Ldebug_info0
# Definition TGuid.Array[0..5] Of Byte
.La177:
	.uleb128	6
	.uleb128	6
	.long	.La41-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	5
	.uleb128	1
	.long	.La43-.Ldebug_info0
	.byte	0
.La178:
	.uleb128	8
	.long	.La177-.Ldebug_info0
# Definition tinterfaceentry
.La180:
	.uleb128	12
	.ascii	"TINTERFACEENTRY\000"
	.long	.La191-.Ldebug_info0
.La191:
	.uleb128	16
	.ascii	"TINTERFACEENTRY\000"
	.uleb128	40
	.uleb128	17
	.ascii	"IID\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La192-.Ldebug_info0
	.uleb128	17
	.ascii	"VTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La78-.Ldebug_info0
	.uleb128	17
	.ascii	"IOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La67-.Ldebug_info0
	.uleb128	17
	.ascii	"IIDSTR\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La194-.Ldebug_info0
	.uleb128	17
	.ascii	"ITYPE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La196-.Ldebug_info0
	.uleb128	17
	.ascii	"__PAD_DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La63-.Ldebug_info0
	.byte	0
.La181:
	.uleb128	8
	.long	.La180-.Ldebug_info0
# Definition tinterfacetable
.La183:
	.uleb128	12
	.ascii	"TINTERFACETABLE\000"
	.long	.La198-.Ldebug_info0
.La198:
	.uleb128	16
	.ascii	"TINTERFACETABLE\000"
	.uleb128	48
	.uleb128	17
	.ascii	"ENTRYCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La67-.Ldebug_info0
	.uleb128	17
	.ascii	"ENTRIES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La199-.Ldebug_info0
	.byte	0
.La184:
	.uleb128	8
	.long	.La183-.Ldebug_info0
# Definition TStringMessageTable.Array[0..0] Of TMsgStrTable
.La188:
	.uleb128	6
	.uleb128	16
	.long	.La201-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	0
	.uleb128	16
	.long	.La43-.Ldebug_info0
	.byte	0
.La189:
	.uleb128	8
	.long	.La188-.Ldebug_info0
# Definition PGuid
.La192:
	.uleb128	12
	.ascii	"PGUID\000"
	.long	.La203-.Ldebug_info0
.La203:
	.uleb128	14
	.long	.La140-.Ldebug_info0
.La193:
	.uleb128	8
	.long	.La192-.Ldebug_info0
# Definition PShortString
.La194:
	.uleb128	12
	.ascii	"PSHORTSTRING\000"
	.long	.La204-.Ldebug_info0
.La204:
	.uleb128	14
	.long	.La118-.Ldebug_info0
.La195:
	.uleb128	8
	.long	.La194-.Ldebug_info0
# Definition tinterfaceentrytype
.La196:
	.uleb128	12
	.ascii	"TINTERFACEENTRYTYPE\000"
	.long	.La205-.Ldebug_info0
.La205:
	.uleb128	33
	.ascii	"TINTERFACEENTRYTYPE\000"
	.byte	4
	.uleb128	34
	.ascii	"ETSTANDARD\000"
	.long	0
	.uleb128	34
	.ascii	"ETVIRTUALMETHODRESULT\000"
	.long	1
	.uleb128	34
	.ascii	"ETSTATICMETHODRESULT\000"
	.long	2
	.uleb128	34
	.ascii	"ETFIELDVALUE\000"
	.long	3
	.uleb128	34
	.ascii	"ETVIRTUALMETHODCLASS\000"
	.long	4
	.uleb128	34
	.ascii	"ETSTATICMETHODCLASS\000"
	.long	5
	.uleb128	34
	.ascii	"ETFIELDVALUECLASS\000"
	.long	6
	.byte	0
.La197:
	.uleb128	8
	.long	.La196-.Ldebug_info0
# Definition tinterfacetable.Array[0..0] Of tinterfaceentry
.La199:
	.uleb128	6
	.uleb128	40
	.long	.La180-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	0
	.uleb128	40
	.long	.La43-.Ldebug_info0
	.byte	0
.La200:
	.uleb128	8
	.long	.La199-.Ldebug_info0
# Definition TMsgStrTable
.La201:
	.uleb128	12
	.ascii	"TMSGSTRTABLE\000"
	.long	.La206-.Ldebug_info0
.La206:
	.uleb128	16
	.ascii	"TMSGSTRTABLE\000"
	.uleb128	16
	.uleb128	17
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La194-.Ldebug_info0
	.uleb128	17
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La78-.Ldebug_info0
	.byte	0
.La202:
	.uleb128	8
	.long	.La201-.Ldebug_info0
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
	.uleb128	1
	.byte	1
	.uleb128	11
	.uleb128	15
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 7
	.uleb128	7
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
# Abbrev 8
	.uleb128	8
	.uleb128	16
	.byte	0
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
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
# Abbrev 10
	.uleb128	10
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
# Abbrev 11
	.uleb128	11
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
# Abbrev 12
	.uleb128	12
	.uleb128	22
	.byte	0
	.uleb128	3
	.uleb128	8
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
	.uleb128	15
	.byte	0
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 15
	.uleb128	15
	.uleb128	15
	.byte	0
	.byte	0
	.byte	0
# Abbrev 16
	.uleb128	16
	.uleb128	19
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 17
	.uleb128	17
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
# Abbrev 18
	.uleb128	18
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
# Abbrev 19
	.uleb128	19
	.uleb128	2
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 20
	.uleb128	20
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
# Abbrev 21
	.uleb128	21
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
# Abbrev 22
	.uleb128	22
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
	.uleb128	52
	.uleb128	12
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 25
	.uleb128	25
	.uleb128	5
	.byte	0
	.uleb128	3
	.uleb128	8
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
	.uleb128	76
	.uleb128	11
	.uleb128	77
	.uleb128	10
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
	.uleb128	73
	.uleb128	19
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
	.uleb128	52
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 30
	.uleb128	30
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
# Abbrev 31
	.uleb128	31
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
# Abbrev 32
	.uleb128	32
	.uleb128	19
	.byte	1
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 33
	.uleb128	33
	.uleb128	4
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.byte	0
	.byte	0
# Abbrev 34
	.uleb128	34
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
# function: FMSYNTH$_$INITSAMPLES0_$$_fin$2
# [99:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	110
# [99:1]
	.byte	2
	.uleb128	.Ll2-.Ll1
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll3
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITSAMPLES0
# [99:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll4
	.byte	5
	.uleb128	1
	.byte	110
# [99:1]
	.byte	2
	.uleb128	.Ll5-.Ll4
	.byte	1
# [100:14]
	.byte	2
	.uleb128	.Ll6-.Ll5
	.byte	5
	.uleb128	14
	.byte	13
# [101:32]
	.byte	2
	.uleb128	.Ll7-.Ll6
	.byte	5
	.uleb128	32
	.byte	13
# [103:35]
	.byte	2
	.uleb128	.Ll8-.Ll7
	.byte	5
	.uleb128	35
	.byte	14
# [104:14]
	.byte	2
	.uleb128	.Ll9-.Ll8
	.byte	5
	.uleb128	14
	.byte	13
# [105:22]
	.byte	2
	.uleb128	.Ll10-.Ll9
	.byte	5
	.uleb128	22
	.byte	13
# [106:14]
	.byte	2
	.uleb128	.Ll11-.Ll10
	.byte	5
	.uleb128	14
	.byte	13
# [107:3]
	.byte	2
	.uleb128	.Ll12-.Ll11
	.byte	5
	.uleb128	3
	.byte	13
# [108:15]
	.byte	2
	.uleb128	.Ll13-.Ll12
	.byte	5
	.uleb128	15
	.byte	13
# [109:18]
	.byte	2
	.uleb128	.Ll14-.Ll13
	.byte	5
	.uleb128	18
	.byte	13
# [110:10]
	.byte	2
	.uleb128	.Ll15-.Ll14
	.byte	5
	.uleb128	10
	.byte	13
# [111:1]
	.byte	2
	.uleb128	.Ll16-.Ll15
	.byte	5
	.uleb128	1
	.byte	13
# [99:1]
	.byte	2
	.uleb128	.Ll17-.Ll16
	.byte	3
	.sleb128	-12
	.byte	1
# [112:1]
	.byte	2
	.uleb128	.Ll18-.Ll17
	.byte	25
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll19
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITVOICES
# [120:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll20
	.byte	5
	.uleb128	1
	.byte	131
# [121:1]
	.byte	2
	.uleb128	.Ll21-.Ll20
	.byte	13
# [122:14]
	.byte	2
	.uleb128	.Ll22-.Ll21
	.byte	5
	.uleb128	14
	.byte	13
# [121:1]
	.byte	2
	.uleb128	.Ll23-.Ll22
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [123:1]
	.byte	2
	.uleb128	.Ll24-.Ll23
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll25
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
# [129:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll26
	.byte	5
	.uleb128	1
	.byte	140
# [129:1]
	.byte	2
	.uleb128	.Ll27-.Ll26
	.byte	1
# [143:1]
	.byte	2
	.uleb128	.Ll28-.Ll27
	.byte	26
# [130:1]
	.byte	2
	.uleb128	.Ll29-.Ll28
	.byte	3
	.sleb128	-13
	.byte	1
# [131:1]
	.byte	2
	.uleb128	.Ll30-.Ll29
	.byte	13
# [132:1]
	.byte	2
	.uleb128	.Ll31-.Ll30
	.byte	13
# [129:1]
	.byte	2
	.uleb128	.Ll32-.Ll31
	.byte	3
	.sleb128	-3
	.byte	1
# [132:29]
	.byte	2
	.uleb128	.Ll33-.Ll32
	.byte	5
	.uleb128	29
	.byte	15
# [133:1]
	.byte	2
	.uleb128	.Ll34-.Ll33
	.byte	5
	.uleb128	1
	.byte	13
# [134:1]
	.byte	2
	.uleb128	.Ll35-.Ll34
	.byte	13
# [139:1]
	.byte	2
	.uleb128	.Ll36-.Ll35
	.byte	17
# [140:1]
	.byte	2
	.uleb128	.Ll37-.Ll36
	.byte	13
# [141:1]
	.byte	2
	.uleb128	.Ll38-.Ll37
	.byte	13
# [142:1]
	.byte	2
	.uleb128	.Ll39-.Ll38
	.byte	13
# [143:1]
	.byte	2
	.uleb128	.Ll40-.Ll39
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll41
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
# [151:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll42
	.byte	5
	.uleb128	1
	.byte	162
# [152:1]
	.byte	2
	.uleb128	.Ll43-.Ll42
	.byte	13
# [153:25]
	.byte	2
	.uleb128	.Ll44-.Ll43
	.byte	5
	.uleb128	25
	.byte	13
# [152:1]
	.byte	2
	.uleb128	.Ll45-.Ll44
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [154:1]
	.byte	2
	.uleb128	.Ll46-.Ll45
	.byte	14
# [155:1]
	.byte	2
	.uleb128	.Ll47-.Ll46
	.byte	13
# [157:1]
	.byte	2
	.uleb128	.Ll48-.Ll47
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll49
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITFLOGTABLE
# [168:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll50
	.byte	5
	.uleb128	1
	.byte	179
# [170:1]
	.byte	2
	.uleb128	.Ll51-.Ll50
	.byte	14
# [171:1]
	.byte	2
	.uleb128	.Ll52-.Ll51
	.byte	13
# [173:7]
	.byte	2
	.uleb128	.Ll53-.Ll52
	.byte	5
	.uleb128	7
	.byte	14
# [176:15]
	.byte	2
	.uleb128	.Ll54-.Ll53
	.byte	5
	.uleb128	15
	.byte	15
# [177:9]
	.byte	2
	.uleb128	.Ll55-.Ll54
	.byte	5
	.uleb128	9
	.byte	13
# [171:1]
	.byte	2
	.uleb128	.Ll56-.Ll55
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-6
	.byte	1
# [180:1]
	.byte	2
	.uleb128	.Ll57-.Ll56
	.byte	21
# [181:1]
	.byte	2
	.uleb128	.Ll58-.Ll57
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll59
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITFSINETABLE
# [188:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll60
	.byte	5
	.uleb128	1
	.byte	199
# [189:1]
	.byte	2
	.uleb128	.Ll61-.Ll60
	.byte	13
# [190:1]
	.byte	2
	.uleb128	.Ll62-.Ll61
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll63
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
# [194:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll64
	.byte	5
	.uleb128	1
	.byte	205
# [195:12]
	.byte	2
	.uleb128	.Ll65-.Ll64
	.byte	5
	.uleb128	12
	.byte	13
# [196:12]
	.byte	2
	.uleb128	.Ll66-.Ll65
	.byte	13
# [197:1]
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
# function: FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
# [201:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll69
	.byte	5
	.uleb128	1
	.byte	212
# [202:17]
	.byte	2
	.uleb128	.Ll70-.Ll69
	.byte	5
	.uleb128	17
	.byte	13
# [203:17]
	.byte	2
	.uleb128	.Ll71-.Ll70
	.byte	13
# [204:1]
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
# function: FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
# [211:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll74
	.byte	5
	.uleb128	1
	.byte	222
# [211:1]
	.byte	2
	.uleb128	.Ll75-.Ll74
	.byte	1
# [228:1]
	.byte	2
	.uleb128	.Ll76-.Ll75
	.byte	29
# [212:1]
	.byte	2
	.uleb128	.Ll77-.Ll76
	.byte	3
	.sleb128	-16
	.byte	1
# [213:8]
	.byte	2
	.uleb128	.Ll78-.Ll77
	.byte	5
	.uleb128	8
	.byte	13
# [225:3]
	.byte	2
	.uleb128	.Ll79-.Ll78
	.byte	5
	.uleb128	3
	.byte	24
# [228:1]
	.byte	2
	.uleb128	.Ll80-.Ll79
	.byte	5
	.uleb128	1
	.byte	15
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll81
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
# [232:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll82
	.byte	5
	.uleb128	1
	.byte	243
# [232:1]
	.byte	2
	.uleb128	.Ll83-.Ll82
	.byte	1
# [233:1]
	.byte	2
	.uleb128	.Ll84-.Ll83
	.byte	13
# [234:1]
	.byte	2
	.uleb128	.Ll85-.Ll84
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll86
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE
# [240:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll87
	.byte	5
	.uleb128	1
	.byte	251
# [241:1]
	.byte	2
	.uleb128	.Ll88-.Ll87
	.byte	13
# [243:34]
	.byte	2
	.uleb128	.Ll89-.Ll88
	.byte	5
	.uleb128	34
	.byte	14
# [244:33]
	.byte	2
	.uleb128	.Ll90-.Ll89
	.byte	5
	.uleb128	33
	.byte	13
# [245:34]
	.byte	2
	.uleb128	.Ll91-.Ll90
	.byte	5
	.uleb128	34
	.byte	13
# [246:33]
	.byte	2
	.uleb128	.Ll92-.Ll91
	.byte	5
	.uleb128	33
	.byte	13
# [247:33]
	.byte	2
	.uleb128	.Ll93-.Ll92
	.byte	13
# [248:34]
	.byte	2
	.uleb128	.Ll94-.Ll93
	.byte	5
	.uleb128	34
	.byte	13
# [249:34]
	.byte	2
	.uleb128	.Ll95-.Ll94
	.byte	13
# [252:1]
	.byte	2
	.uleb128	.Ll96-.Ll95
	.byte	5
	.uleb128	1
	.byte	15
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll97
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
# [256:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll98
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	255
	.byte	1
# [257:12]
	.byte	2
	.uleb128	.Ll99-.Ll98
	.byte	5
	.uleb128	12
	.byte	13
# [258:17]
	.byte	2
	.uleb128	.Ll100-.Ll99
	.byte	5
	.uleb128	17
	.byte	13
# [259:1]
	.byte	2
	.uleb128	.Ll101-.Ll100
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll102
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_INIT
# [263:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll103
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	262
	.byte	1
# [265:1]
	.byte	2
	.uleb128	.Ll104-.Ll103
	.byte	14
# [266:1]
	.byte	2
	.uleb128	.Ll105-.Ll104
	.byte	13
# [267:1]
	.byte	2
	.uleb128	.Ll106-.Ll105
	.byte	13
# [268:1]
	.byte	2
	.uleb128	.Ll107-.Ll106
	.byte	13
# [269:1]
	.byte	2
	.uleb128	.Ll108-.Ll107
	.byte	13
# [270:1]
	.byte	2
	.uleb128	.Ll109-.Ll108
	.byte	13
# [271:1]
	.byte	2
	.uleb128	.Ll110-.Ll109
	.byte	13
# [272:1]
	.byte	2
	.uleb128	.Ll111-.Ll110
	.byte	13
# [273:1]
	.byte	2
	.uleb128	.Ll112-.Ll111
	.byte	13
# [274:1]
	.byte	2
	.uleb128	.Ll113-.Ll112
	.byte	13
# [275:1]
	.byte	2
	.uleb128	.Ll114-.Ll113
	.byte	13
# [276:1]
	.byte	2
	.uleb128	.Ll115-.Ll114
	.byte	13
# [277:1]
	.byte	2
	.uleb128	.Ll116-.Ll115
	.byte	13
# [278:1]
	.byte	2
	.uleb128	.Ll117-.Ll116
	.byte	13
# [279:1]
	.byte	2
	.uleb128	.Ll118-.Ll117
	.byte	13
# [280:1]
	.byte	2
	.uleb128	.Ll119-.Ll118
	.byte	13
# [281:1]
	.byte	2
	.uleb128	.Ll120-.Ll119
	.byte	13
# [282:1]
	.byte	2
	.uleb128	.Ll121-.Ll120
	.byte	13
# [283:1]
	.byte	2
	.uleb128	.Ll122-.Ll121
	.byte	13
# [284:1]
	.byte	2
	.uleb128	.Ll123-.Ll122
	.byte	13
# [285:1]
	.byte	2
	.uleb128	.Ll124-.Ll123
	.byte	13
# [286:1]
	.byte	2
	.uleb128	.Ll125-.Ll124
	.byte	13
# [287:1]
	.byte	2
	.uleb128	.Ll126-.Ll125
	.byte	13
# [288:1]
	.byte	2
	.uleb128	.Ll127-.Ll126
	.byte	13
# [289:1]
	.byte	2
	.uleb128	.Ll128-.Ll127
	.byte	13
# [290:1]
	.byte	2
	.uleb128	.Ll129-.Ll128
	.byte	13
# [291:1]
	.byte	2
	.uleb128	.Ll130-.Ll129
	.byte	13
# [292:1]
	.byte	2
	.uleb128	.Ll131-.Ll130
	.byte	13
# [293:1]
	.byte	2
	.uleb128	.Ll132-.Ll131
	.byte	13
# [294:1]
	.byte	2
	.uleb128	.Ll133-.Ll132
	.byte	13
# [295:1]
	.byte	2
	.uleb128	.Ll134-.Ll133
	.byte	13
# [300:1]
	.byte	2
	.uleb128	.Ll135-.Ll134
	.byte	17
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll136
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
# [317:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll137
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	316
	.byte	1
# [322:14]
	.byte	2
	.uleb128	.Ll138-.Ll137
	.byte	5
	.uleb128	14
	.byte	17
# [317:1]
	.byte	2
	.uleb128	.Ll139-.Ll138
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-5
	.byte	1
# [336:26]
	.byte	2
	.uleb128	.Ll140-.Ll139
	.byte	5
	.uleb128	26
	.byte	31
# [337:16]
	.byte	2
	.uleb128	.Ll141-.Ll140
	.byte	5
	.uleb128	16
	.byte	13
# [338:16]
	.byte	2
	.uleb128	.Ll142-.Ll141
	.byte	13
# [339:16]
	.byte	2
	.uleb128	.Ll143-.Ll142
	.byte	13
# [340:16]
	.byte	2
	.uleb128	.Ll144-.Ll143
	.byte	13
# [341:16]
	.byte	2
	.uleb128	.Ll145-.Ll144
	.byte	13
# [342:16]
	.byte	2
	.uleb128	.Ll146-.Ll145
	.byte	13
# [343:16]
	.byte	2
	.uleb128	.Ll147-.Ll146
	.byte	13
# [345:7]
	.byte	2
	.uleb128	.Ll148-.Ll147
	.byte	5
	.uleb128	7
	.byte	14
# [346:8]
	.byte	2
	.uleb128	.Ll149-.Ll148
	.byte	5
	.uleb128	8
	.byte	13
# [354:12]
	.byte	2
	.uleb128	.Ll150-.Ll149
	.byte	5
	.uleb128	12
	.byte	20
# [356:8]
	.byte	2
	.uleb128	.Ll151-.Ll150
	.byte	5
	.uleb128	8
	.byte	14
# [357:13]
	.byte	2
	.uleb128	.Ll152-.Ll151
	.byte	5
	.uleb128	13
	.byte	13
# [359:10]
	.byte	2
	.uleb128	.Ll153-.Ll152
	.byte	5
	.uleb128	10
	.byte	14
# [360:9]
	.byte	2
	.uleb128	.Ll154-.Ll153
	.byte	5
	.uleb128	9
	.byte	13
# [361:20]
	.byte	2
	.uleb128	.Ll155-.Ll154
	.byte	5
	.uleb128	20
	.byte	13
# [362:9]
	.byte	2
	.uleb128	.Ll156-.Ll155
	.byte	5
	.uleb128	9
	.byte	13
# [363:20]
	.byte	2
	.uleb128	.Ll157-.Ll156
	.byte	5
	.uleb128	20
	.byte	13
# [368:15]
	.byte	2
	.uleb128	.Ll158-.Ll157
	.byte	5
	.uleb128	15
	.byte	17
# [370:16]
	.byte	2
	.uleb128	.Ll159-.Ll158
	.byte	5
	.uleb128	16
	.byte	14
# [374:10]
	.byte	2
	.uleb128	.Ll160-.Ll159
	.byte	5
	.uleb128	10
	.byte	16
# [376:10]
	.byte	2
	.uleb128	.Ll161-.Ll160
	.byte	14
# [377:15]
	.byte	2
	.uleb128	.Ll162-.Ll161
	.byte	5
	.uleb128	15
	.byte	13
# [379:18]
	.byte	2
	.uleb128	.Ll163-.Ll162
	.byte	5
	.uleb128	18
	.byte	14
# [380:1]
	.byte	2
	.uleb128	.Ll164-.Ll163
	.byte	5
	.uleb128	1
	.byte	13
# [381:9]
	.byte	2
	.uleb128	.Ll165-.Ll164
	.byte	5
	.uleb128	9
	.byte	13
# [382:5]
	.byte	2
	.uleb128	.Ll166-.Ll165
	.byte	5
	.uleb128	5
	.byte	13
# [383:8]
	.byte	2
	.uleb128	.Ll167-.Ll166
	.byte	5
	.uleb128	8
	.byte	13
# [384:9]
	.byte	2
	.uleb128	.Ll168-.Ll167
	.byte	5
	.uleb128	9
	.byte	13
# [390:14]
	.byte	2
	.uleb128	.Ll169-.Ll168
	.byte	5
	.uleb128	14
	.byte	18
# [392:19]
	.byte	2
	.uleb128	.Ll170-.Ll169
	.byte	5
	.uleb128	19
	.byte	14
# [393:9]
	.byte	2
	.uleb128	.Ll171-.Ll170
	.byte	5
	.uleb128	9
	.byte	13
# [394:31]
	.byte	2
	.uleb128	.Ll172-.Ll171
	.byte	5
	.uleb128	31
	.byte	13
# [395:3]
	.byte	2
	.uleb128	.Ll173-.Ll172
	.byte	5
	.uleb128	3
	.byte	13
# [397:15]
	.byte	2
	.uleb128	.Ll174-.Ll173
	.byte	5
	.uleb128	15
	.byte	14
# [399:19]
	.byte	2
	.uleb128	.Ll175-.Ll174
	.byte	5
	.uleb128	19
	.byte	14
# [400:9]
	.byte	2
	.uleb128	.Ll176-.Ll175
	.byte	5
	.uleb128	9
	.byte	13
# [401:31]
	.byte	2
	.uleb128	.Ll177-.Ll176
	.byte	5
	.uleb128	31
	.byte	13
# [402:3]
	.byte	2
	.uleb128	.Ll178-.Ll177
	.byte	5
	.uleb128	3
	.byte	13
# [404:17]
	.byte	2
	.uleb128	.Ll179-.Ll178
	.byte	5
	.uleb128	17
	.byte	14
# [406:20]
	.byte	2
	.uleb128	.Ll180-.Ll179
	.byte	5
	.uleb128	20
	.byte	14
# [407:9]
	.byte	2
	.uleb128	.Ll181-.Ll180
	.byte	5
	.uleb128	9
	.byte	13
# [408:31]
	.byte	2
	.uleb128	.Ll182-.Ll181
	.byte	5
	.uleb128	31
	.byte	13
# [409:3]
	.byte	2
	.uleb128	.Ll183-.Ll182
	.byte	5
	.uleb128	3
	.byte	13
# [411:17]
	.byte	2
	.uleb128	.Ll184-.Ll183
	.byte	5
	.uleb128	17
	.byte	14
# [413:19]
	.byte	2
	.uleb128	.Ll185-.Ll184
	.byte	5
	.uleb128	19
	.byte	14
# [414:9]
	.byte	2
	.uleb128	.Ll186-.Ll185
	.byte	5
	.uleb128	9
	.byte	13
# [415:32]
	.byte	2
	.uleb128	.Ll187-.Ll186
	.byte	5
	.uleb128	32
	.byte	13
# [317:1]
	.byte	2
	.uleb128	.Ll188-.Ll187
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-98
	.byte	1
# [419:6]
	.byte	2
	.uleb128	.Ll189-.Ll188
	.byte	5
	.uleb128	6
	.byte	114
# [420:13]
	.byte	2
	.uleb128	.Ll190-.Ll189
	.byte	5
	.uleb128	13
	.byte	13
# [423:10]
	.byte	2
	.uleb128	.Ll191-.Ll190
	.byte	5
	.uleb128	10
	.byte	15
# [424:11]
	.byte	2
	.uleb128	.Ll192-.Ll191
	.byte	5
	.uleb128	11
	.byte	13
# [425:7]
	.byte	2
	.uleb128	.Ll193-.Ll192
	.byte	5
	.uleb128	7
	.byte	13
# [426:15]
	.byte	2
	.uleb128	.Ll194-.Ll193
	.byte	5
	.uleb128	15
	.byte	13
# [441:1]
	.byte	2
	.uleb128	.Ll195-.Ll194
	.byte	5
	.uleb128	1
	.byte	27
# [443:1]
	.byte	2
	.uleb128	.Ll196-.Ll195
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll197
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITNOTES
# [452:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll198
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	451
	.byte	1
# [453:1]
	.byte	2
	.uleb128	.Ll199-.Ll198
	.byte	13
# [455:10]
	.byte	2
	.uleb128	.Ll200-.Ll199
	.byte	5
	.uleb128	10
	.byte	14
# [456:7]
	.byte	2
	.uleb128	.Ll201-.Ll200
	.byte	5
	.uleb128	7
	.byte	13
# [453:1]
	.byte	2
	.uleb128	.Ll202-.Ll201
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-3
	.byte	1
# [458:1]
	.byte	2
	.uleb128	.Ll203-.Ll202
	.byte	17
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll204
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: INIT$_$FMSYNTH
# function: FMSYNTH_$$_init$
# [462:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll205
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	461
	.byte	1
# [464:1]
	.byte	2
	.uleb128	.Ll206-.Ll205
	.byte	14
# [465:1]
	.byte	2
	.uleb128	.Ll207-.Ll206
	.byte	13
# [466:1]
	.byte	2
	.uleb128	.Ll208-.Ll207
	.byte	13
# [467:1]
	.byte	2
	.uleb128	.Ll209-.Ll208
	.byte	13
# [470:1]
	.byte	2
	.uleb128	.Ll210-.Ll209
	.byte	15
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll211
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FINALIZE$_$FMSYNTH
# function: FMSYNTH_$$_finalize_implicit$
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll212
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

