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

.section .text.n_fmsynth$_$initsamples0_$$_fin$0,"x"
	.balign 16,0x90
FMSYNTH$_$INITSAMPLES0_$$_fin$0:
.Lc1:
.seh_proc FMSYNTH$_$INITSAMPLES0_$$_fin$0
.Ll1:
# [fmsynth.pas]
# [100] begin
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
	leaq	-2736(%rbp),%rcx
	call	fpc_ansistr_decr_ref
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
# Temps allocated between rbp-2768 and rbp-2720
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
	movq	%rbx,-2768(%rbp)
	movq	%rsi,-2760(%rbp)
.seh_savereg %rbx, 32
.seh_savereg %rsi, 40
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
	movq	$0,-2736(%rbp)
	movq	$0,-2728(%rbp)
.Lj11:
	nop
.Lj7:
.Ll6:
# [101] currentdir2:='C:\s\';
	leaq	_$FMSYNTH$_Ld1(%rip),%rdx
	leaq	-648(%rbp),%rcx
	call	fpc_ansistr_assign
.Ll7:
# [102] if findfirst(currentdir2+'*.s2',faAnyFile,sr)=0 then
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
# [104] fh:=fileopen(currentdir2+sr.name,$40);
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
# [105] fileread(fh,dummy,16);
	movslq	%esi,%rcx
	leaq	-664(%rbp),%rdx
	movl	$16,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll10:
# [106] waves0[sampleindex0].name:=copy(sr.name,1,length(sr.name)-3); ;
	movq	-616(%rbp),%rax
	testq	%rax,%rax
	je	.Lj59
	movq	-8(%rax),%rax
.Lj59:
	leaq	-3(%rax),%r9
	movq	-616(%rbp),%rdx
	leaq	-2736(%rbp),%rcx
	movq	$1,%r8
	call	fpc_ansistr_copy
	movq	-2736(%rbp),%rdx
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX0(%rip),%eax
	imulq	$8200,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES0(%rip),%rcx
	leaq	(%rcx,%rax),%rcx
	call	fpc_ansistr_assign
.Ll11:
# [107] fileread(fh,intwave,2048);
	movslq	%esi,%rcx
	leaq	-2720(%rbp),%rdx
	movl	$2048,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll12:
# [108] for i:=0 to 1023 do waves0[sampleindex0].wave[i]:=intwave[i]/32768;
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj76:
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
	jl	.Lj76
.Ll13:
# [109] fileclose(fh);
	movslq	%esi,%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll14:
# [110] sampleindex0+=1;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX0(%rip),%eax
	leal	1(%eax),%eax
	movl	%eax,TC_$FMSYNTH_$$_SAMPLEINDEX0(%rip)
.Ll15:
# [111] until (findnext(sr)<>0) or (sampleindex0=128);
	leaq	-640(%rbp),%rcx
	call	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj34
	cmpl	$128,TC_$FMSYNTH_$$_SAMPLEINDEX0(%rip)
	jne	.Lj32
.Lj34:
.Lj17:
.Ll16:
# [112] findclose(sr);
	leaq	-640(%rbp),%rcx
	call	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
.Lj88:
.Ll17:
	nop
.Lj8:
	movq	%rbp,%rcx
	call	FMSYNTH$_$INITSAMPLES0_$$_fin$0
.Ll18:
# [113] end;
	movq	-2768(%rbp),%rbx
	movq	-2760(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj7
	.rva	.Lj8
	.rva	FMSYNTH$_$INITSAMPLES0_$$_fin$0

.section .text.n_fmsynth_$$_initsamples0,"x"
.seh_endproc
.Lc7:
.Lt3:
.Ll19:

.section .text.n_fmsynth$_$initsamples1_$$_fin$1,"x"
	.balign 16,0x90
FMSYNTH$_$INITSAMPLES1_$$_fin$1:
.Lc11:
.seh_proc FMSYNTH$_$INITSAMPLES1_$$_fin$1
.Ll20:
# [135] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc13:
.Lc14:
	movq	%rcx,%rbp
.Lc15:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
# Var $parentfp located in register rbp
.seh_endprologue
.Ll21:
	leaq	-2208(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	-2200(%rbp),%rcx
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
.Lc12:
.Lt6:
.Ll22:

.section .text.n_fmsynth_$$_initsamples1,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITSAMPLES1
FMSYNTH_$$_INITSAMPLES1:
.Lc16:
# Temps allocated between rbp-2288 and rbp-2192
.seh_proc FMSYNTH_$$_INITSAMPLES1
.Ll23:
	pushq	%rbp
.seh_pushreg %rbp
.Lc18:
.Lc19:
	movq	%rsp,%rbp
.Lc20:
	leaq	-2320(%rsp),%rsp
.seh_stackalloc 2320
# Var j located in register esi
# Var i located in register ebx
# Var fh located in register r12d
# Var intwave located in register rdi
# Var integrator located in register xmm6
	movq	%rbx,-2288(%rbp)
	movq	%rdi,-2280(%rbp)
	movq	%rsi,-2272(%rbp)
	movq	%r12,-2264(%rbp)
	movq	%r13,-2256(%rbp)
	movq	%r14,-2248(%rbp)
	movdqa	%xmm6,-2240(%rbp)
.seh_savereg %rbx, 32
.seh_savereg %rdi, 40
.seh_savereg %rsi, 48
.seh_savereg %r12, 56
.seh_savereg %r13, 64
.seh_savereg %r14, 72
.seh_savexmm %xmm6, 80
.seh_endprologue
# Var sr located at rbp-640, size=OS_NO
# Var currentdir2 located at rbp-648, size=OS_64
# Var dummy located at rbp-904, size=OS_NO
# Var samplenum located at rbp-912, size=OS_16
# Var sampleinfo located at rbp-2192, size=OS_NO
.Ll24:
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rdx
	leaq	-640(%rbp),%rcx
	call	fpc_initialize
	movq	$0,-648(%rbp)
	movq	$0,-2208(%rbp)
	movq	$0,-2200(%rbp)
.Lj111:
	nop
.Lj107:
.Ll25:
# [136] currentdir2:='C:\xi\';
	leaq	_$FMSYNTH$_Ld4(%rip),%rdx
	leaq	-648(%rbp),%rcx
	call	fpc_ansistr_assign
.Ll26:
# [137] if findfirst(currentdir2+'*.xi',faAnyFile,sr)=0 then
	leaq	-2200(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	_$FMSYNTH$_Ld5(%rip),%r8
	movq	-648(%rbp),%rdx
	leaq	-2200(%rbp),%rcx
	movl	$65535,%r9d
	call	fpc_ansistr_concat
	movq	-2200(%rbp),%rbx
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rdx
	leaq	-640(%rbp),%rcx
	call	fpc_finalize
	leaq	-640(%rbp),%r8
	movl	$511,%edx
	movq	%rbx,%rcx
	call	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj117
	.balign 8,0x90
.Lj132:
.Ll27:
# [139] fh:=fileopen(currentdir2+sr.name,$40);
	leaq	-2200(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movq	-616(%rbp),%r8
	movq	-648(%rbp),%rdx
	leaq	-2200(%rbp),%rcx
	movl	$65535,%r9d
	call	fpc_ansistr_concat
	movq	-2200(%rbp),%rcx
	movl	$64,%edx
	call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$QWORD
	movl	%eax,%r12d
.Ll28:
# [140] fileread(fh,dummy,$40);  //text header
	movslq	%r12d,%rcx
	leaq	-904(%rbp),%rdx
	movl	$64,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll29:
# [141] fileread(fh,dummy,$e8);  //inst headers
	movslq	%r12d,%rcx
	leaq	-904(%rbp),%rdx
	movl	$232,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll30:
# [142] fileread(fh,samplenum,2);
	movslq	%r12d,%rcx
	leaq	-912(%rbp),%rdx
	movl	$2,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll31:
# [143] for i:=0 to samplenum-1 do fileread(fh,sampleinfo[i],40);
	movzwl	-912(%rbp),%eax
	leal	-1(%eax),%r13d
	movl	$0,%ebx
	cmpl	%ebx,%r13d
	jl	.Lj170
	subl	$1,%ebx
	.balign 8,0x90
.Lj171:
	addl	$1,%ebx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	leaq	-2192(%rbp,%rax),%rdx
	movslq	%r12d,%rcx
	movl	$40,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
	cmpl	%ebx,%r13d
	jg	.Lj171
.Lj170:
.Ll32:
# [144] for i:=0 to samplenum-1 do
	movzwl	-912(%rbp),%eax
	leal	-1(%eax),%r13d
	movl	$0,%ebx
	cmpl	%ebx,%r13d
	jl	.Lj181
	subl	$1,%ebx
	.balign 8,0x90
.Lj182:
	addl	$1,%ebx
.Ll33:
# [146] waves1[sampleindex1].name:='';
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$40,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	leaq	(%rdx,%rax),%rcx
	movq	$0,%rdx
	call	fpc_ansistr_assign
# PeepHole Optimization,var2a
.Ll34:
# [147] for j:=0 to sampleinfo[i].snl-1 do waves1[sampleindex1].name+=sampleinfo[i].samplename[j];
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	movzbl	-2175(%rbp,%rax),%eax
	leal	-1(%eax),%r14d
	movl	$0,%esi
	cmpl	%esi,%r14d
	jl	.Lj190
	subl	$1,%esi
	.balign 8,0x90
.Lj191:
	addl	$1,%esi
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$40,%rax,%rdx
# PeepHole Optimization,var2a
	movl	%esi,%eax
	leaq	-2174(%rbp,%rdx),%rdx
	movzbl	(%rdx,%rax,1),%edx
	leaq	-2208(%rbp),%rcx
	movl	$0,%r8d
	call	fpc_char_to_ansistr
	movq	-2208(%rbp),%r8
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$40,%rax,%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rax
	movq	(%rax,%rdx),%rdx
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$40,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rcx
	leaq	(%rcx,%rax),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
	cmpl	%esi,%r14d
	jg	.Lj191
.Lj190:
# PeepHole Optimization,var2a
.Ll35:
# [148] intwave:=getmem(sampleinfo[i].slen);
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	movl	-2192(%rbp,%rax),%ecx
	call	SYSTEM_$$_GETMEM$QWORD$$POINTER
	movq	%rax,%rdi
# PeepHole Optimization,var2a
.Ll36:
# [149] waves1[sampleindex1].wave:=getmem(4*sampleinfo[i].slen+16);
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	movl	-2192(%rbp,%rax),%eax
	shlq	$2,%rax
	leaq	16(%rax),%rcx
	call	SYSTEM_$$_GETMEM$QWORD$$POINTER
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$40,%rdx,%rcx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movq	%rax,32(%rdx,%rcx)
# PeepHole Optimization,var2a
.Ll37:
# [150] fileread(fh,intwave^,sampleinfo[i].slen);
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	movl	-2192(%rbp,%rax),%r8d
	movq	%rdi,%rdx
	movslq	%r12d,%rcx
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll38:
# [151] integrator:=0;
	movsd	_$FMSYNTH$_Ld6(%rip),%xmm6
# PeepHole Optimization,var2a
.Ll39:
# [152] for j:=0 to (sampleinfo[i].slen div 2)-1 do
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	movl	-2192(%rbp,%rax),%eax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$1,%rdx
	addq	%rdx,%rax
	sarq	$1,%rax
	leaq	-1(%rax),%rax
	movl	$0,%esi
	cmpl	%esi,%eax
	jl	.Lj225
	subl	$1,%esi
	.balign 8,0x90
.Lj226:
	addl	$1,%esi
.Ll40:
# [154] integrator+=intwave[j]/32768;
	movslq	%esi,%rdx
	movswl	(%rdi,%rdx,2),%edx
	cvtsi2sd	%edx,%xmm0
	mulsd	_$FMSYNTH$_Ld3(%rip),%xmm0
	addsd	%xmm6,%xmm0
	movapd	%xmm0,%xmm6
.Ll41:
# [155] waves1[sampleindex1].wave[j]:=integrator;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$40,%rdx,%rcx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movq	32(%rdx,%rcx),%rcx
	movslq	%esi,%rdx
	movsd	%xmm6,(%rcx,%rdx,8)
.Ll42:
	cmpl	%esi,%eax
	jg	.Lj226
.Lj225:
.Ll43:
# [157] freemem(intwave);
	movq	%rdi,%rcx
	call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
# PeepHole Optimization,var2a
.Ll44:
# [158] waves1[sampleindex1].len:=sampleinfo[i].slen div 2;
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	movl	-2192(%rbp,%rax),%eax
	shrl	$1,%eax
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$40,%rdx,%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rcx
	movl	%eax,8(%rcx,%rdx)
# PeepHole Optimization,var2a
.Ll45:
# [159] waves1[sampleindex1].lstart:=sampleinfo[i].sls div 2;
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	movl	-2188(%rbp,%rax),%eax
	shrl	$1,%eax
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$40,%rdx,%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rcx
	movl	%eax,12(%rcx,%rdx)
# PeepHole Optimization,var2a
.Ll46:
# [160] waves1[sampleindex1].lend:=((sampleinfo[i].sls+sampleinfo[i].sll) div 2);
	movl	%ebx,%eax
	imulq	$40,%rax,%rdx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	movl	-2188(%rbp,%rdx),%edx
	movl	-2184(%rbp,%rax),%eax
	leal	(%edx,%eax),%eax
	shrl	$1,%eax
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$40,%rdx,%rcx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movl	%eax,16(%rdx,%rcx)
# PeepHole Optimization,var2a
.Ll47:
# [161] waves1[sampleindex1].speed:=126.278*power(a212,sampleinfo[i].relnote);
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	movsbl	-2176(%rbp,%rax),%eax
	cvtsi2sd	%eax,%xmm1
	movsd	_$FMSYNTH$_Ld8(%rip),%xmm0
	call	MATH_$$_POWER$DOUBLE$DOUBLE$$DOUBLE
	mulsd	_$FMSYNTH$_Ld7(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$40,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movsd	%xmm0,24(%rdx,%rax)
.Ll48:
# [162] sampleindex1+=1;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	leal	1(%eax),%eax
	movl	%eax,TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip)
.Ll49:
	cmpl	%ebx,%r13d
	jg	.Lj182
.Lj181:
.Ll50:
# [164] fileclose(fh);
	movslq	%r12d,%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll51:
# [165] until (findnext(sr)<>0) or (sampleindex1=16384);
	leaq	-640(%rbp),%rcx
	call	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj134
	cmpl	$16384,TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip)
	jne	.Lj132
.Lj134:
.Lj117:
.Ll52:
# [166] findclose(sr);
	leaq	-640(%rbp),%rcx
	call	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
.Lj254:
.Ll53:
	nop
.Lj108:
	movq	%rbp,%rcx
	call	FMSYNTH$_$INITSAMPLES1_$$_fin$1
.Ll54:
# [167] end;
	movq	-2288(%rbp),%rbx
	movq	-2280(%rbp),%rdi
	movq	-2272(%rbp),%rsi
	movq	-2264(%rbp),%r12
	movq	-2256(%rbp),%r13
	movq	-2248(%rbp),%r14
	movdqa	-2240(%rbp),%xmm6
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj107
	.rva	.Lj108
	.rva	FMSYNTH$_$INITSAMPLES1_$$_fin$1

.section .text.n_fmsynth_$$_initsamples1,"x"
.seh_endproc
.Lc17:
.Lt5:
.Ll55:

.section .text.n_fmsynth_$$_initvoices,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITVOICES
FMSYNTH_$$_INITVOICES:
.Lc21:
.seh_proc FMSYNTH_$$_INITVOICES
.Ll56:
# [175] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc23:
.seh_stackalloc 32
# Var i located in register ebx
.seh_endprologue
# Var i located in register ebx
.Ll57:
# [176] for i:=0 to 31 do
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj273:
	addl	$1,%ebx
.Ll58:
# [177] voices[i]:=TFmVoice.create;
	leaq	VMT_$FMSYNTH_$$_TFMVOICE(%rip),%rcx
	movq	$1,%rdx
	call	FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
# PeepHole Optimization,var2a
	movl	%ebx,%edx
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rcx
	movq	%rax,(%rcx,%rdx,8)
.Ll59:
	cmpl	$31,%ebx
	jl	.Lj273
.Ll60:
# [178] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc22:
.Lt1:
.Ll61:

.section .text.n_fmsynth$_$tfmvoice_$__$$_create$$tfmvoice,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE:
.Lc24:
.seh_proc FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
.Ll62:
# [184] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc26:
.Lc27:
	movq	%rsp,%rbp
.Lc28:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var $vmt located at rbp-8, size=OS_64
# Var $self located at rbp-16, size=OS_64
# Var i located at rbp-24, size=OS_S32
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
.Ll63:
	cmpq	$1,-8(%rbp)
	jne	.Lj283
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-16(%rbp)
.Lj283:
	cmpq	$0,-16(%rbp)
	je	.Lj280
.Lj295:
.Ll64:
# [190] end;
	nop
.Lj294:
.Ll65:
# [185] for i:=0 to 7 do operators[i]:=TFmOperator.create(0,@outputs);
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj299:
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
	jl	.Lj299
.Ll66:
# [186] for i:=0 to 7 do operators[i].init;
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj312:
	addl	$1,-24(%rbp)
	movq	-16(%rbp),%rax
	movl	-24(%rbp),%edx
	movq	8(%rax,%rdx,8),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_INIT
	cmpl	$7,-24(%rbp)
	jl	.Lj312
.Ll67:
# [187] for i:=0 to 7 do operators[i].outputtable:=@outputs;
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj317:
	addl	$1,-24(%rbp)
.Ll68:
	movq	-16(%rbp),%rdx
.Ll69:
	movl	-24(%rbp),%eax
	movq	8(%rdx,%rax,8),%rcx
	leaq	72(%rdx),%rax
	movq	%rax,312(%rcx)
	cmpl	$7,-24(%rbp)
	jl	.Lj317
.Ll70:
# [188] outmuls[0]:=1;
	movq	-16(%rbp),%rax
	movl	_$FMSYNTH$_Ld9(%rip),%edx
	movl	%edx,136(%rax)
.Ll71:
# [189] for i:=1 to 7 do outmuls[i]:=0;
	movl	$1,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj326:
	addl	$1,-24(%rbp)
	movq	-16(%rbp),%rax
	movl	-24(%rbp),%edx
	movl	_$FMSYNTH$_Ld10(%rip),%ecx
	movl	%ecx,136(%rax,%rdx,4)
	cmpl	$7,-24(%rbp)
	jl	.Lj326
.Ll72:
	cmpq	$0,-16(%rbp)
	je	.Lj292
	cmpq	$0,-8(%rbp)
	je	.Lj292
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*136(%rax)
	jmp	.Lj292
.Lj291:
	cmpq	$0,-8(%rbp)
	je	.Lj335
	movq	-16(%rbp),%rcx
	movq	$-1,%rdx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
.Lj335:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj340:
	nop
.Lj292:
.Lj280:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj294
	.rva	.Lj291
	.rva	.Lj292

.section .text.n_fmsynth$_$tfmvoice_$__$$_create$$tfmvoice,"x"
.seh_endproc
.Lc25:
.Lt18:
.Ll73:

.section .text.n_fmsynth$_$tfmvoice_$__$$_getsample$$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE:
.Lc29:
.seh_proc FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
.Ll74:
# [198] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc31:
.seh_stackalloc 40
# Var $self located in register rbx
# Var $result located in register xmm0
# Var i located in register edx
# Var j located in register eax
# Var output located in register xmm0
.seh_endprologue
	movq	%rcx,%rbx
# Var i located in register esi
.Ll75:
# [199] for i:=0 to 7 do
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj345:
	addl	$1,%esi
# PeepHole Optimization,var2a
.Ll76:
# [200] outputs[i]:=operators[i].getsample;
	movl	%esi,%eax
	movq	8(%rbx,%rax,8),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
# PeepHole Optimization,var2a
	movl	%esi,%eax
	movsd	%xmm0,72(%rbx,%rax,8)
.Ll77:
	cmpl	$7,%esi
	jl	.Lj345
# Var output located in register xmm0
.Ll78:
# [201] output:=0;
	movsd	_$FMSYNTH$_Ld6(%rip),%xmm0
# Var i located in register edx
.Ll79:
# [202] for i:=0 to 7 do output+=outmuls[i]*outputs[i];
	movl	$0,%edx
	subl	$1,%edx
	.balign 8,0x90
.Lj354:
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
	jl	.Lj354
# Var $result located in register xmm0
# Var output located in register xmm0
.Ll80:
# [204] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc30:
.Lt19:
.Ll81:

.section .text.n_fmsynth_$$_initflogtable,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITFLOGTABLE
FMSYNTH_$$_INITFLOGTABLE:
.Lc32:
# Var i located in register edx
# Var q located in register xmm1
# Var q2 located in register xmm2
# [214] begin
# Var q located in register xmm1
.Ll82:
# [215] q:=1;
	movsd	_$FMSYNTH$_Ld11(%rip),%xmm1
# Var q2 located in register xmm2
.Ll83:
# [217] q2:= 0.99989460157410704627595119007091;
	movsd	_$FMSYNTH$_Ld12(%rip),%xmm2
# Var i located in register edx
.Ll84:
# [218] for i:=65540 downto 0 do
	movl	$65540,%edx
	addl	$1,%edx
	.balign 8,0x90
.Lj367:
	subl	$1,%edx
.Ll85:
# [220] if i>65535 then flogtable[i]:=1
	cmpl	$65535,%edx
	jng	.Lj369
# PeepHole Optimization,var2a
	movl	%edx,%eax
	movq	_$FMSYNTH$_Ld11(%rip),%rcx
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%r8
	movq	%rcx,(%r8,%rax,8)
	jmp	.Lj372
.Lj369:
# PeepHole Optimization,var2a
.Ll86:
# [223] flogtable[i]:=q;
	movl	%edx,%eax
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%rcx
	movsd	%xmm1,(%rcx,%rax,8)
.Ll87:
# [224] q:=q*q2;
	movapd	%xmm1,%xmm0
	mulsd	%xmm2,%xmm0
	movapd	%xmm0,%xmm1
.Lj372:
.Ll88:
	testl	%edx,%edx
	jg	.Lj367
.Ll89:
# [227] flogtable[0]:=0;
	movq	_$FMSYNTH$_Ld6(%rip),%rax
	movq	%rax,U_$FMSYNTH_$$_FLOGTABLE(%rip)
.Ll90:
# [228] end;
	ret
.Lc33:
.Lt7:
.Ll91:

.section .text.n_fmsynth_$$_initfsinetable,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITFSINETABLE
FMSYNTH_$$_INITFSINETABLE:
.Lc34:
.seh_proc FMSYNTH_$$_INITFSINETABLE
.Ll92:
# [235] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc36:
.seh_stackalloc 32
# Var i located in register ebx
.seh_endprologue
# Var i located in register ebx
.Ll93:
# [236] for i:=-655360 to 655360 do fsinetable[i]:=sin(2*pi*i/1024);
	movl	$-655360,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj383:
	addl	$1,%ebx
	cvtsi2sd	%ebx,%xmm0
	mulsd	_$FMSYNTH$_Ld13(%rip),%xmm0
	mulsd	_$FMSYNTH$_Ld14(%rip),%xmm0
	call	fpc_sin_real
	movslq	%ebx,%rax
	leaq	U_$FMSYNTH_$$_FSINETABLE(%rip),%rdx
	movsd	%xmm0,5242880(%rdx,%rax,8)
	cmpl	$655360,%ebx
	jl	.Lj383
.Ll94:
# [237] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc35:
.Lt8:
.Ll95:

.section .text.n_fmsynth_$$_assign$longint$$tsinglestereosample,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE:
.Lc37:
# Var b located in register edx
# Var $result located in register rax
.Ll96:
# [241] begin
	movq	%rcx,%rax
.Ll97:
# [242] result[0]:=b;
	cvtsi2sd	%edx,%xmm0
	movsd	%xmm0,(%rax)
.Ll98:
# [243] result[1]:=b;
	cvtsi2sd	%edx,%xmm0
	movsd	%xmm0,8(%rax)
.Ll99:
# [244] end;
	ret
.Lc38:
.Lt9:
.Ll100:

.section .text.n_fmsynth_$$_star$tsinglestereosample$single$$tsinglestereosample,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE:
.Lc39:
# Temps allocated between rsp+8 and rsp+24
.seh_proc FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
.Ll101:
# [248] begin
	leaq	-24(%rsp),%rsp
.Lc41:
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
.Ll102:
# [249] result[0]:=a[0]*b;
	cvtss2sd	%xmm0,%xmm1
	mulsd	8(%rsp),%xmm1
	movsd	%xmm1,(%rax)
.Ll103:
# [250] result[1]:=a[1]*b;
	cvtss2sd	%xmm0,%xmm0
	mulsd	16(%rsp),%xmm0
	movsd	%xmm0,8(%rax)
.Ll104:
# [251] end;
	leaq	24(%rsp),%rsp
	ret
.seh_endproc
.Lc40:
.Lt10:
.Ll105:

.section .text.n_fmsynth$_$tfmoperator_$__$$_create$longint$pointer$$tfmoperator,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR:
.Lc42:
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
.Ll106:
# [258] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc44:
.Lc45:
	movq	%rsp,%rbp
.Lc46:
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
.Ll107:
	cmpq	$1,-24(%rbp)
	jne	.Lj403
	movq	-32(%rbp),%rax
	movq	-32(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-32(%rbp)
.Lj403:
	cmpq	$0,-32(%rbp)
	je	.Lj400
.Lj415:
.Ll108:
# [275] end;
	nop
.Lj414:
.Ll109:
# [259] outputtable:=outs;
	movq	-32(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rdx,312(%rax)
.Ll110:
# [260] if mode=0 then wptr:=@fsinetable;
	cmpl	$0,-8(%rbp)
	jne	.Lj420
	movq	-32(%rbp),%rax
	leaq	U_$FMSYNTH_$$_FSINETABLE(%rip),%rdx
	movq	%rdx,136(%rax)
.Lj420:
.Ll111:
# [272] wlength:=1024;
	movq	-32(%rbp),%rdx
	movq	_$FMSYNTH$_Ld15(%rip),%rax
	movq	%rax,144(%rdx)
.Ll112:
	cmpq	$0,-32(%rbp)
	je	.Lj412
	cmpq	$0,-24(%rbp)
	je	.Lj412
	movq	-32(%rbp),%rcx
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	call	*136(%rax)
	jmp	.Lj412
.Lj411:
	cmpq	$0,-24(%rbp)
	je	.Lj431
	movq	-32(%rbp),%rcx
	movq	$-1,%rdx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
.Lj431:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj436:
	nop
.Lj412:
.Lj400:
	movq	-32(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj414
	.rva	.Lj411
	.rva	.Lj412

.section .text.n_fmsynth$_$tfmoperator_$__$$_create$longint$pointer$$tfmoperator,"x"
.seh_endproc
.Lc43:
.Lt16:
.Ll113:

.section .text.n_fmsynth$_$tfmoperator_$__$$_destroy,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY:
.Lc47:
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
.Ll114:
# [279] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc49:
.seh_stackalloc 40
# Var $vmt located in register rsi
# Var $self located in register rbx
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
.Ll115:
	cmpq	$0,%rsi
	jng	.Lj440
	movq	%rbx,%rcx
	movq	%rbx,%rax
	movq	(%rax),%rax
	call	*144(%rax)
.Lj440:
.Ll116:
# [280] freemem(wptr);
	movq	136(%rbx),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
.Ll117:
# [281] end;
	testq	%rbx,%rbx
	je	.Lj446
	testq	%rsi,%rsi
	je	.Lj446
	movq	%rbx,%rcx
	movq	%rbx,%rax
	movq	(%rax),%rax
	call	*112(%rax)
.Lj446:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc48:
.Lt17:
.Ll118:

.section .text.n_fmsynth$_$tfmvoice_$__$$_setfreq$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE
FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE:
.Lc50:
.seh_proc FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE
.Ll119:
# [287] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-56(%rsp),%rsp
.Lc52:
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
.Ll120:
# [288] for i:=0 to 7 do operators[i].setfreq(afreq);
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj454:
	addl	$1,%esi
# PeepHole Optimization,var2a
	movl	%esi,%eax
	movq	8(%rbx,%rax,8),%rcx
	movapd	%xmm6,%xmm1
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
	cmpl	$7,%esi
	jl	.Lj454
.Ll121:
# [290] operators[1].setfreq(1.0043*afreq);
	movsd	_$FMSYNTH$_Ld16(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	16(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll122:
# [291] operators[2].setfreq(1.006*afreq);
	movsd	_$FMSYNTH$_Ld17(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	24(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll123:
# [292] operators[3].setfreq(1.0017*afreq);
	movsd	_$FMSYNTH$_Ld18(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	32(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll124:
# [293] operators[4].setfreq(0.995*afreq);
	movsd	_$FMSYNTH$_Ld19(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	40(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll125:
# [294] operators[5].setfreq(0.991*afreq);
	movsd	_$FMSYNTH$_Ld20(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	48(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll126:
# [295] operators[6].setfreq(0.9939*afreq);
	movsd	_$FMSYNTH$_Ld21(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	56(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll127:
# [296] operators[7].setfreq(0.9961*afreq);
	movsd	_$FMSYNTH$_Ld22(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	64(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll128:
# [299] end;
	nop
	movdqa	32(%rsp),%xmm6
	leaq	56(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc51:
.Lt20:
.Ll129:

.section .text.n_fmsynth$_$tfmoperator_$__$$_setfreq$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE:
.Lc53:
# Var afreq located in register xmm0
# Var $self located in register rax
.Ll130:
# [303] begin
	movq	%rcx,%rax
	movapd	%xmm1,%xmm0
.Ll131:
# [304] if wavemode=0 then freq:=afreq*wlength/96000
	cmpl	$0,324(%rax)
	jne	.Lj490
	movapd	%xmm0,%xmm1
	mulsd	144(%rax),%xmm1
	mulsd	_$FMSYNTH$_Ld23(%rip),%xmm1
	movsd	%xmm1,8(%rax)
	jmp	.Lj493
.Lj490:
.Ll132:
# [305] else freq:=(afreq*freqmod)/96000 ;// afreq*freqmod;
	mulsd	304(%rax),%xmm0
	mulsd	_$FMSYNTH$_Ld23(%rip),%xmm0
	movsd	%xmm0,8(%rax)
.Lj493:
.Ll133:
# [306] end;
	ret
.Lc54:
.Lt15:
.Ll134:

.section .text.n_fmsynth$_$tfmoperator_$__$$_init,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_INIT
FMSYNTH$_$TFMOPERATOR_$__$$_INIT:
.Lc55:
# Var $self located in register rax
.Ll135:
# [310] begin
	movq	%rcx,%rax
.Ll136:
# [312] freq:=440*(65536/96000);    //341
	movq	_$FMSYNTH$_Ld24(%rip),%rdx
	movq	%rdx,8(%rax)
.Ll137:
# [313] c3:=0;
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,16(%rax)
.Ll138:
# [314] c4:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,24(%rax)
.Ll139:
# [315] c5:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,32(%rax)
.Ll140:
# [316] c6:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,40(%rax)
.Ll141:
# [317] lfo1:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,48(%rax)
.Ll142:
# [318] lfo2:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,56(%rax)
.Ll143:
# [319] lfo3:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,64(%rax)
.Ll144:
# [320] mul0:=0;
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,72(%rax)
.Ll145:
# [321] mul1:=0;
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,80(%rax)
.Ll146:
# [322] mul2:=0;
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,88(%rax)
.Ll147:
# [323] mul3:=0;
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,96(%rax)
.Ll148:
# [324] mul4:=0;
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,104(%rax)
.Ll149:
# [325] mul5:=0;
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,112(%rax)
.Ll150:
# [326] mul6:=0;
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,120(%rax)
.Ll151:
# [327] mul7:=0;
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,128(%rax)
.Ll152:
# [328] wlength:=1024;//65536;
	movq	_$FMSYNTH$_Ld15(%rip),%rdx
	movq	%rdx,144(%rax)
.Ll153:
# [329] adsrstate:=0;
	movl	$0,320(%rax)
.Ll154:
# [330] adsrval:=0;
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,168(%rax)
.Ll155:
# [331] ar1:=1/96;
	movq	_$FMSYNTH$_Ld25(%rip),%rdx
	movq	%rdx,176(%rax)
.Ll156:
# [332] ar2:=-1/96000;
	movq	_$FMSYNTH$_Ld26(%rip),%rdx
	movq	%rdx,192(%rax)
.Ll157:
# [333] ar3:=-1/960000;
	movq	_$FMSYNTH$_Ld27(%rip),%rdx
	movq	%rdx,208(%rax)
.Ll158:
# [334] ar4:=-3/960000;
	movq	_$FMSYNTH$_Ld28(%rip),%rdx
	movq	%rdx,224(%rax)
.Ll159:
# [335] av1:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,184(%rax)
.Ll160:
# [336] av2:=0.95;
	movq	_$FMSYNTH$_Ld29(%rip),%rdx
	movq	%rdx,200(%rax)
.Ll161:
# [337] av3:=0.9;
	movq	_$FMSYNTH$_Ld30(%rip),%rdx
	movq	%rdx,216(%rax)
.Ll162:
# [338] av4:=0.0;
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,232(%rax)
.Ll163:
# [339] adsrbias:=0;
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,256(%rax)
.Ll164:
# [340] vel:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,264(%rax)
.Ll165:
# [341] keysense:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,272(%rax)
.Ll166:
# [342] expr:=1;
	movq	_$FMSYNTH$_Ld11(%rip),%rdx
	movq	%rdx,280(%rax)
.Ll167:
# [347] end;
	ret
.Lc56:
.Lt14:
.Ll168:

.section .text.n_fmsynth$_$tfmoperator_$__$$_getsample$$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE:
.Lc57:
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
.Ll169:
# [364] begin
	leaq	-72(%rsp),%rsp
.Lc59:
.seh_stackalloc 72
	movdqa	%xmm6,(%rsp)
	movdqa	%xmm8,16(%rsp)
	movdqa	%xmm9,32(%rsp)
	movdqa	%xmm10,48(%rsp)
# Var $self located in register rcx
# Var $result located in register xmm0
# Var res64a located in register xmm5
# Var modulator located in register xmm2
# Var i located in register r9d
# Var j located in register r8d
# Var sample located in register xmm8
# Var freq2 located in register xmm1
# Var h1 located in register xmm4
# Var pa21 located in register eax
# Var d located in register xmm3
# Var s2 located in register xmm9
.seh_savexmm %xmm6, 0
.seh_savexmm %xmm8, 16
.seh_savexmm %xmm9, 32
.seh_savexmm %xmm10, 48
.seh_endprologue
.Ll170:
# [369] freq2:=(freq+(c3*lfo1))*c4*lfo2;
	movsd	16(%rcx),%xmm1
	mulsd	48(%rcx),%xmm1
	addsd	8(%rcx),%xmm1
	mulsd	24(%rcx),%xmm1
	mulsd	56(%rcx),%xmm1
# Var freq2 located in register xmm1
.Ll171:
	movq	312(%rcx),%rax
.Ll172:
# [383] modulator:=outputtable[0]*mul0
	movsd	(%rax),%xmm3
	mulsd	72(%rcx),%xmm3
.Ll173:
# [384] +outputtable[1]*mul1
	movsd	8(%rax),%xmm2
	mulsd	80(%rcx),%xmm2
	addsd	%xmm3,%xmm2
.Ll174:
# [385] +outputtable[2]*mul2
	movsd	16(%rax),%xmm3
	mulsd	88(%rcx),%xmm3
	addsd	%xmm2,%xmm3
.Ll175:
# [386] +outputtable[3]*mul3
	movsd	24(%rax),%xmm2
	mulsd	96(%rcx),%xmm2
	addsd	%xmm3,%xmm2
.Ll176:
# [387] +outputtable[4]*mul4
	movsd	32(%rax),%xmm3
	mulsd	104(%rcx),%xmm3
	addsd	%xmm2,%xmm3
.Ll177:
# [388] +outputtable[5]*mul5
	movsd	40(%rax),%xmm2
	mulsd	112(%rcx),%xmm2
	addsd	%xmm3,%xmm2
.Ll178:
# [389] +outputtable[6]*mul6
	movsd	48(%rax),%xmm3
	mulsd	120(%rcx),%xmm3
	addsd	%xmm2,%xmm3
.Ll179:
# [390] +outputtable[7]*mul7;
	movsd	56(%rax),%xmm2
	mulsd	128(%rcx),%xmm2
	addsd	%xmm3,%xmm2
# Var modulator located in register xmm2
.Ll180:
# [392] pa:=pa+freq2;
	movsd	288(%rcx),%xmm3
	addsd	%xmm1,%xmm3
	movsd	%xmm3,288(%rcx)
.Ll181:
# [393] pa2:=pa+modulator;
	movsd	288(%rcx),%xmm3
	addsd	%xmm2,%xmm3
	movsd	%xmm3,296(%rcx)
.Ll182:
# [401] if wavemode=0 then
	cmpl	$0,324(%rcx)
	jne	.Lj573
.Ll183:
# [403] if pa>=wlength then
	movsd	288(%rcx),%xmm3
	comisd	144(%rcx),%xmm3
	jp	.Lj575
	jnae	.Lj575
.Ll184:
# [404] pa:=pa-wlength;
	movsd	288(%rcx),%xmm3
	subsd	144(%rcx),%xmm3
	movsd	%xmm3,288(%rcx)
.Lj575:
.Ll185:
# [406] pa2:=pa+modulator;
	movsd	288(%rcx),%xmm3
	addsd	%xmm2,%xmm3
	movsd	%xmm3,296(%rcx)
.Ll186:
# [408] if pa2>=wlength then
	movsd	296(%rcx),%xmm3
	comisd	144(%rcx),%xmm3
	jp	.Lj582
	jnae	.Lj582
	.balign 8,0x90
.Lj584:
.Ll187:
# [409] repeat pa2:=pa2-wlength until pa2<wlength;
	movsd	296(%rcx),%xmm3
	subsd	144(%rcx),%xmm3
	movsd	%xmm3,296(%rcx)
	movsd	296(%rcx),%xmm3
	comisd	144(%rcx),%xmm3
	jp	.Lj584
	jnb	.Lj584
.Lj582:
.Ll188:
# [410] if pa2<0 then
	movsd	296(%rcx),%xmm3
	comisd	_$FMSYNTH$_Ld6(%rip),%xmm3
	jp	.Lj599
	jnb	.Lj599
	.balign 8,0x90
.Lj593:
.Ll189:
# [411] repeat pa2:=pa2+wlength until pa2>0;
	movsd	296(%rcx),%xmm3
	addsd	144(%rcx),%xmm3
	movsd	%xmm3,296(%rcx)
	movsd	296(%rcx),%xmm3
	comisd	_$FMSYNTH$_Ld6(%rip),%xmm3
	jp	.Lj593
	jna	.Lj593
	jmp	.Lj599
.Lj573:
.Ll190:
# [417] if pa>=wlend then
	movsd	288(%rcx),%xmm3
	comisd	160(%rcx),%xmm3
	jp	.Lj601
	jnae	.Lj601
.Ll191:
# [418] pa:=pa-wlend+wlstart;
	movsd	288(%rcx),%xmm3
	subsd	160(%rcx),%xmm3
	addsd	152(%rcx),%xmm3
	movsd	%xmm3,288(%rcx)
.Lj601:
.Ll192:
# [420] pa2:=pa+modulator;
	movsd	288(%rcx),%xmm3
	addsd	%xmm2,%xmm3
	movsd	%xmm3,296(%rcx)
.Ll193:
# [422] if pa2>=wlend then
	movsd	296(%rcx),%xmm3
	comisd	160(%rcx),%xmm3
	jp	.Lj608
	jnae	.Lj608
	.balign 8,0x90
.Lj610:
.Ll194:
# [423] repeat pa2:=pa2-wlend+wlstart until pa2<wlend;
	movsd	296(%rcx),%xmm3
	subsd	160(%rcx),%xmm3
	addsd	152(%rcx),%xmm3
	movsd	%xmm3,296(%rcx)
	movsd	296(%rcx),%xmm3
	comisd	160(%rcx),%xmm3
	jp	.Lj610
	jnb	.Lj610
.Lj608:
.Ll195:
# [424] if pa2<0 then
	movsd	296(%rcx),%xmm3
	comisd	_$FMSYNTH$_Ld6(%rip),%xmm3
	jp	.Lj617
	jnb	.Lj617
	.balign 8,0x90
.Lj619:
.Ll196:
# [425] repeat pa2:=pa2+wlength until pa2>0;
	movsd	296(%rcx),%xmm3
	addsd	144(%rcx),%xmm3
	movsd	%xmm3,296(%rcx)
	movsd	296(%rcx),%xmm3
	comisd	_$FMSYNTH$_Ld6(%rip),%xmm3
	jp	.Lj619
	jna	.Lj619
.Lj617:
.Lj599:
.Ll197:
# [428] intpa:=trunc(pa2);
	movsd	296(%rcx),%xmm3
	cvttsd2siq	%xmm3,%rax
# PeepHole Optimization,MovMov2Mov1
	movl	%eax,328(%rcx)
.Ll198:
# [429] pa21:=intpa+1; if pa21>=wlength then
	leal	1(%eax),%eax
# Var pa21 located in register eax
	cvtsi2sd	%eax,%xmm3
	comisd	144(%rcx),%xmm3
	jp	.Lj630
	jnae	.Lj630
.Ll199:
# [430] if wavemode=0 then pa21:=0 else pa21:=trunc(wlstart);
	cmpl	$0,324(%rcx)
	jne	.Lj633
	movl	$0,%eax
	jmp	.Lj636
.Lj633:
	movsd	152(%rcx),%xmm3
	cvttsd2siq	%xmm3,%rdx
	movl	%edx,%eax
.Lj636:
.Lj630:
.Ll200:
# [431] sample:=wptr[intpa];
	movq	136(%rcx),%r10
	movslq	328(%rcx),%rdx
# Var sample located in register xmm8
	movsd	(%r10,%rdx,8),%xmm8
.Ll201:
# [432] s2:=wptr[pa21];
	movq	136(%rcx),%r10
	movslq	%eax,%rdx
# Var s2 located in register xmm9
	movsd	(%r10,%rdx,8),%xmm9
.Ll202:
# [433] d:=pa2-intpa;
	cvtsi2sdl	328(%rcx),%xmm6
	movsd	296(%rcx),%xmm3
	subsd	%xmm6,%xmm3
# Var d located in register xmm3
.Ll203:
# [434] sample:=(1-d)*sample+d*s2;
	movsd	_$FMSYNTH$_Ld11(%rip),%xmm6
	subsd	%xmm3,%xmm6
	mulsd	%xmm8,%xmm6
	movapd	%xmm3,%xmm8
	mulsd	%xmm9,%xmm8
	addsd	%xmm6,%xmm8
# Var sample located in register xmm8
.Ll204:
# [440] if adsrstate = 5 then   // release
	cmpl	$5,320(%rcx)
	jne	.Lj648
.Ll205:
# [442] adsrval:=adsrval+ar4;
	movsd	168(%rcx),%xmm6
	addsd	224(%rcx),%xmm6
	movsd	%xmm6,168(%rcx)
.Ll206:
# [443] if ar4<0 then begin if adsrval<av4 then begin adsrval:=av4; adsrstate:=6; end; end
	movsd	224(%rcx),%xmm6
	comisd	_$FMSYNTH$_Ld6(%rip),%xmm6
	jp	.Lj652
	jnb	.Lj652
	movsd	168(%rcx),%xmm6
	comisd	232(%rcx),%xmm6
	jp	.Lj669
	jnb	.Lj669
	movq	232(%rcx),%rdx
	movq	%rdx,168(%rcx)
	movl	$6,320(%rcx)
	jmp	.Lj669
.Lj652:
.Ll207:
# [444] else begin if adsrval>av4 then begin adsrval:=av4; adsrstate:=6; end; end;
	movsd	168(%rcx),%xmm6
	comisd	232(%rcx),%xmm6
	jp	.Lj669
	jna	.Lj669
	movq	232(%rcx),%rdx
	movq	%rdx,168(%rcx)
	movl	$6,320(%rcx)
.Ll208:
# [445] goto p101;
	jmp	.Lj669
.Lj648:
.Ll209:
# [447] if adsrstate =   3 then  // release
	cmpl	$3,320(%rcx)
	jne	.Lj671
.Ll210:
# [449] adsrval:=adsrval+ar3;
	movsd	168(%rcx),%xmm6
	addsd	208(%rcx),%xmm6
	movsd	%xmm6,168(%rcx)
.Ll211:
# [450] if ar3<0 then begin if adsrval<av3 then begin adsrval:=av3; adsrstate:=4; end; end
	movsd	208(%rcx),%xmm6
	comisd	_$FMSYNTH$_Ld6(%rip),%xmm6
	jp	.Lj675
	jnb	.Lj675
	movsd	168(%rcx),%xmm6
	comisd	216(%rcx),%xmm6
	jp	.Lj669
	jnb	.Lj669
	movq	216(%rcx),%rdx
	movq	%rdx,168(%rcx)
	movl	$4,320(%rcx)
	jmp	.Lj669
.Lj675:
.Ll212:
# [451] else begin if adsrval>av3 then begin adsrval:=av3; adsrstate:=4; end; end;
	movsd	168(%rcx),%xmm6
	comisd	216(%rcx),%xmm6
	jp	.Lj669
	jna	.Lj669
	movq	216(%rcx),%rdx
	movq	%rdx,168(%rcx)
	movl	$4,320(%rcx)
.Ll213:
# [452] goto p101;
	jmp	.Lj669
.Lj671:
.Ll214:
# [454] if adsrstate= 2 then  // release
	cmpl	$2,320(%rcx)
	jne	.Lj693
.Ll215:
# [456] adsrval:=adsrval+ar2;
	movsd	168(%rcx),%xmm6
	addsd	192(%rcx),%xmm6
	movsd	%xmm6,168(%rcx)
.Ll216:
# [457] if ar2<0 then begin if adsrval<av2 then begin adsrval:=av2; adsrstate:=3; end; end
	movsd	192(%rcx),%xmm6
	comisd	_$FMSYNTH$_Ld6(%rip),%xmm6
	jp	.Lj697
	jnb	.Lj697
	movsd	168(%rcx),%xmm6
	comisd	200(%rcx),%xmm6
	jp	.Lj669
	jnb	.Lj669
	movq	200(%rcx),%rdx
	movq	%rdx,168(%rcx)
	movl	$3,320(%rcx)
	jmp	.Lj669
.Lj697:
.Ll217:
# [458] else begin if adsrval>av2 then begin adsrval:=av2; adsrstate:=3; end; end;
	movsd	168(%rcx),%xmm6
	comisd	200(%rcx),%xmm6
	jp	.Lj669
	jna	.Lj669
	movq	200(%rcx),%rdx
	movq	%rdx,168(%rcx)
	movl	$3,320(%rcx)
.Ll218:
# [459] goto p101;
	jmp	.Lj669
.Lj693:
.Ll219:
# [461] if adsrstate=1 then    // release
	cmpl	$1,320(%rcx)
	jne	.Lj715
.Ll220:
# [463] adsrval:=adsrval+ar1;
	movsd	168(%rcx),%xmm6
	addsd	176(%rcx),%xmm6
	movsd	%xmm6,168(%rcx)
.Ll221:
# [464] if ar1<0 then begin if adsrval<av1 then begin adsrval:=av1; adsrstate:=2; end; end
	movsd	176(%rcx),%xmm6
	comisd	_$FMSYNTH$_Ld6(%rip),%xmm6
	jp	.Lj719
	jnb	.Lj719
	movsd	168(%rcx),%xmm6
	comisd	184(%rcx),%xmm6
	jp	.Lj728
	jnb	.Lj728
	movq	184(%rcx),%rdx
	movq	%rdx,168(%rcx)
	movl	$2,320(%rcx)
	jmp	.Lj728
.Lj719:
.Ll222:
# [465] else begin if adsrval>av1 then begin  adsrval:=av1; adsrstate:=2; end;  end;
	movsd	168(%rcx),%xmm6
	comisd	184(%rcx),%xmm6
	jp	.Lj730
	jna	.Lj730
	movq	184(%rcx),%rdx
	movq	%rdx,168(%rcx)
	movl	$2,320(%rcx)
.Lj730:
.Lj728:
.Lj669:
.Lj715:
.Ll223:
	movsd	256(%rcx),%xmm10
.Ll224:
# [469] h1:=((1-adsrbias)*adsrval)+adsrbias;
	movsd	_$FMSYNTH$_Ld11(%rip),%xmm6
	subsd	%xmm10,%xmm6
	mulsd	168(%rcx),%xmm6
	addsd	%xmm10,%xmm6
	movapd	%xmm6,%xmm4
.Ll225:
# [470] if adsrstate<>0 then sample:=sample*flogtable[round(65535*h1)] else sample:=0;
	cmpl	$0,320(%rcx)
	je	.Lj741
	movsd	_$FMSYNTH$_Ld31(%rip),%xmm6
	mulsd	%xmm4,%xmm6
	cvtsd2siq	%xmm6,%rdx
	movapd	%xmm8,%xmm6
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%r10
	mulsd	(%r10,%rdx,8),%xmm6
	movapd	%xmm6,%xmm8
	jmp	.Lj744
.Lj741:
	movsd	_$FMSYNTH$_Ld6(%rip),%xmm8
.Lj744:
.Ll226:
# [473] h1:=1.000-keysense;
	movsd	_$FMSYNTH$_Ld11(%rip),%xmm6
	subsd	272(%rcx),%xmm6
	movapd	%xmm6,%xmm4
.Ll227:
# [474] h1:=h1+vel*keysense;
	movsd	264(%rcx),%xmm6
	mulsd	272(%rcx),%xmm6
	addsd	%xmm4,%xmm6
	movapd	%xmm6,%xmm4
.Ll228:
# [475] h1:=h1*c6*expr;
	movapd	%xmm4,%xmm6
	mulsd	40(%rcx),%xmm6
	mulsd	280(%rcx),%xmm6
	movapd	%xmm6,%xmm4
.Ll229:
# [476] sample:=sample*h1;
	movapd	%xmm8,%xmm6
	mulsd	%xmm4,%xmm6
	movapd	%xmm6,%xmm8
.Ll230:
# [491] result:=sample;
	movapd	%xmm8,%xmm0
.Ll231:
# [493] end;
	movdqa	(%rsp),%xmm6
	movdqa	16(%rsp),%xmm8
	movdqa	32(%rsp),%xmm9
	movdqa	48(%rsp),%xmm10
	leaq	72(%rsp),%rsp
	ret
.seh_endproc
.Lc58:
.Lt13:
.Ll232:

.section .text.n_fmsynth_$$_initnotes,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITNOTES
FMSYNTH_$$_INITNOTES:
.Lc60:
# Var i located in register edx
# Var q located in register xmm1
# [501] begin
# Var q located in register xmm1
.Ll233:
# [502] q:=c03;
	movsd	_$FMSYNTH$_Ld32(%rip),%xmm1
# Var i located in register edx
.Ll234:
# [503] for i:=0 to 127 do
	movl	$0,%edx
	subl	$1,%edx
	.balign 8,0x90
.Lj763:
	addl	$1,%edx
# PeepHole Optimization,var2a
.Ll235:
# [505] fnotes[i]:=q;
	movl	%edx,%eax
	leaq	U_$FMSYNTH_$$_FNOTES(%rip),%rcx
	movsd	%xmm1,(%rcx,%rax,8)
.Ll236:
# [506] q:=q*a212;
	movapd	%xmm1,%xmm0
	mulsd	_$FMSYNTH$_Ld8(%rip),%xmm0
	movapd	%xmm0,%xmm1
.Ll237:
	cmpl	$127,%edx
	jl	.Lj763
.Ll238:
# [508] end;
	ret
.Lc61:
.Lt11:
.Ll239:

.section .text.n_fmsynth_$$_init$,"x"
	.balign 16,0x90
.globl	INIT$_$FMSYNTH
INIT$_$FMSYNTH:
.globl	FMSYNTH_$$_init$
FMSYNTH_$$_init$:
.Lc62:
.seh_proc FMSYNTH_$$_init$
.Ll240:
# [512] initialization
	leaq	-40(%rsp),%rsp
.Lc64:
.seh_stackalloc 40
.seh_endprologue
.Ll241:
# [514] initflogtable;
	call	FMSYNTH_$$_INITFLOGTABLE
.Ll242:
# [515] initfsinetable;
	call	FMSYNTH_$$_INITFSINETABLE
.Ll243:
# [516] initnotes;
	call	FMSYNTH_$$_INITNOTES
.Ll244:
# [517] initsamples0;
	call	FMSYNTH_$$_INITSAMPLES0
.Ll245:
# [518] initsamples1;
	call	FMSYNTH_$$_INITSAMPLES1
.Ll246:
# [521] end.
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc63:
.Lt2:
.Ll247:

.section .text.n_fmsynth_$$_finalize_implicit$,"x"
	.balign 16,0x90
.globl	FINALIZE$_$FMSYNTH
FINALIZE$_$FMSYNTH:
.globl	FMSYNTH_$$_finalize_implicit$
FMSYNTH_$$_finalize_implicit$:
.Lc65:
.seh_proc FMSYNTH_$$_finalize_implicit$
	leaq	-40(%rsp),%rsp
.Lc67:
.seh_stackalloc 40
.seh_endprologue
	leaq	INIT_$FMSYNTH_$$_DEF25(%rip),%rax
	movq	%rax,%rdx
	leaq	U_$FMSYNTH_$$_WAVES0(%rip),%rcx
	call	fpc_finalize
	leaq	INIT_$FMSYNTH_$$_DEF26(%rip),%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rcx
	call	fpc_finalize
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc66:
.Lt12:
.Ll248:
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

.section .bss
	.balign 8
# [79] waves1:array [0..16383] of TWaveSample1;
	.globl U_$FMSYNTH_$$_WAVES1
U_$FMSYNTH_$$_WAVES1:
	.zero 655360

.section .data.n_VMT_$FMSYNTH_$$_TFMOPERATOR,"d"
	.balign 8
.globl	VMT_$FMSYNTH_$$_TFMOPERATOR
VMT_$FMSYNTH_$$_TFMOPERATOR:
	.quad	336,-336
	.quad	VMT_$SYSTEM_$$_TOBJECT
	.quad	.Ld33
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
# [523] 
	.balign 8
.Ld33:
	.byte	11
	.ascii	"TFmOperator"

.section .data.n_VMT_$FMSYNTH_$$_TFMVOICE,"d"
	.balign 8
.globl	VMT_$FMSYNTH_$$_TFMVOICE
VMT_$FMSYNTH_$$_TFMVOICE:
	.quad	168,-168
	.quad	VMT_$SYSTEM_$$_TOBJECT
	.quad	.Ld34
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
.Ld34:
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
# [81] sampleindex0:integer=0;

.section .data.n_tc_$fmsynth_$$_sampleindex0,"d"
	.balign 4
.globl	TC_$FMSYNTH_$$_SAMPLEINDEX0
TC_$FMSYNTH_$$_SAMPLEINDEX0:
	.long	0
# [82] sampleindex1:integer=0;

.section .data.n_tc_$fmsynth_$$_sampleindex1,"d"
	.balign 4
.globl	TC_$FMSYNTH_$$_SAMPLEINDEX1
TC_$FMSYNTH_$$_SAMPLEINDEX1:
	.long	0
# [83] waveidx:integer=0;

.section .data.n_tc_$fmsynth_$$_waveidx,"d"
	.balign 4
.globl	TC_$FMSYNTH_$$_WAVEIDX
TC_$FMSYNTH_$$_WAVEIDX:
	.long	0
# [86] procedure initvoices;

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
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld4
_$FMSYNTH$_Ld4:
	.ascii	"C:\\xi\\\000"

.section .rodata.n__$FMSYNTH$_Ld5,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,4
.globl	_$FMSYNTH$_Ld5
_$FMSYNTH$_Ld5:
	.ascii	"*.xi\000"

.section .rodata.n__$FMSYNTH$_Ld6,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld6
_$FMSYNTH$_Ld6:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0

.section .rodata.n__$FMSYNTH$_Ld7,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld7
_$FMSYNTH$_Ld7:
# value: 0d+1.2627800000000001E+002
	.byte	111,18,131,192,202,145,95,64

.section .rodata.n__$FMSYNTH$_Ld8,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld8
_$FMSYNTH$_Ld8:
# value: 0d+1.0594630943592953E+000
	.byte	99,121,217,146,143,243,240,63

.section .rodata.n__$FMSYNTH$_Ld9,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld9
_$FMSYNTH$_Ld9:
# value: 0d+1.000000000E+00
	.byte	0,0,128,63

.section .rodata.n__$FMSYNTH$_Ld10,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld10
_$FMSYNTH$_Ld10:
# value: 0d+0.000000000E+00
	.byte	0,0,0,0

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

.section .data.n_RTTI_$FMSYNTH_$$_DEF17,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_DEF17
RTTI_$FMSYNTH_$$_DEF17:
	.byte	29
	.ascii	"\000"
	.quad	RTTI_$SYSTEM_$$_DOUBLE

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
	.quad	RTTI_$FMSYNTH_$$_DEF17
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

.section .data.n_RTTI_$FMSYNTH_$$_DEF19,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_DEF19
RTTI_$FMSYNTH_$$_DEF19:
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
	.quad	RTTI_$FMSYNTH_$$_DEF19
	.quad	8

.section .data.n_INIT_$FMSYNTH_$$_DEF25,"d"
	.balign 8
.globl	INIT_$FMSYNTH_$$_DEF25
INIT_$FMSYNTH_$$_DEF25:
	.byte	12
	.ascii	"\000"
	.quad	1049600,128
	.quad	INIT_$FMSYNTH_$$_TWAVESAMPLE0
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_INIT_$FMSYNTH_$$_DEF26,"d"
	.balign 8
.globl	INIT_$FMSYNTH_$$_DEF26
INIT_$FMSYNTH_$$_DEF26:
	.byte	12
	.ascii	"\000"
	.quad	655360,16384
	.quad	INIT_$FMSYNTH_$$_TWAVESAMPLE1
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SMALLINT
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc68:
	.long	.Lc70-.Lc69
.Lc69:
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
.Lc70:
	.long	.Lc72-.Lc71
.Lc71:
	.secrel32	.Lc68
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
.Lc72:
	.long	.Lc74-.Lc73
.Lc73:
	.secrel32	.Lc68
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
.Lc74:
	.long	.Lc76-.Lc75
.Lc75:
	.secrel32	.Lc68
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
.Lc76:
	.long	.Lc78-.Lc77
.Lc77:
	.secrel32	.Lc68
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
.Lc78:
	.long	.Lc80-.Lc79
.Lc79:
	.secrel32	.Lc68
	.quad	.Lc21
	.quad	.Lc22-.Lc21
	.byte	4
	.long	.Lc23-.Lc21
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc80:
	.long	.Lc82-.Lc81
.Lc81:
	.secrel32	.Lc68
	.quad	.Lc24
	.quad	.Lc25-.Lc24
	.byte	4
	.long	.Lc26-.Lc24
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc27-.Lc26
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc28-.Lc27
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc82:
	.long	.Lc84-.Lc83
.Lc83:
	.secrel32	.Lc68
	.quad	.Lc29
	.quad	.Lc30-.Lc29
	.byte	4
	.long	.Lc31-.Lc29
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc84:
	.long	.Lc86-.Lc85
.Lc85:
	.secrel32	.Lc68
	.quad	.Lc32
	.quad	.Lc33-.Lc32
	.balign 4,0
.Lc86:
	.long	.Lc88-.Lc87
.Lc87:
	.secrel32	.Lc68
	.quad	.Lc34
	.quad	.Lc35-.Lc34
	.byte	4
	.long	.Lc36-.Lc34
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc88:
	.long	.Lc90-.Lc89
.Lc89:
	.secrel32	.Lc68
	.quad	.Lc37
	.quad	.Lc38-.Lc37
	.balign 4,0
.Lc90:
	.long	.Lc92-.Lc91
.Lc91:
	.secrel32	.Lc68
	.quad	.Lc39
	.quad	.Lc40-.Lc39
	.byte	4
	.long	.Lc41-.Lc39
	.byte	14
	.uleb128	32
	.balign 4,0
.Lc92:
	.long	.Lc94-.Lc93
.Lc93:
	.secrel32	.Lc68
	.quad	.Lc42
	.quad	.Lc43-.Lc42
	.byte	4
	.long	.Lc44-.Lc42
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc45-.Lc44
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc46-.Lc45
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc94:
	.long	.Lc96-.Lc95
.Lc95:
	.secrel32	.Lc68
	.quad	.Lc47
	.quad	.Lc48-.Lc47
	.byte	4
	.long	.Lc49-.Lc47
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc96:
	.long	.Lc98-.Lc97
.Lc97:
	.secrel32	.Lc68
	.quad	.Lc50
	.quad	.Lc51-.Lc50
	.byte	4
	.long	.Lc52-.Lc50
	.byte	14
	.uleb128	64
	.balign 4,0
.Lc98:
	.long	.Lc100-.Lc99
.Lc99:
	.secrel32	.Lc68
	.quad	.Lc53
	.quad	.Lc54-.Lc53
	.balign 4,0
.Lc100:
	.long	.Lc102-.Lc101
.Lc101:
	.secrel32	.Lc68
	.quad	.Lc55
	.quad	.Lc56-.Lc55
	.balign 4,0
.Lc102:
	.long	.Lc104-.Lc103
.Lc103:
	.secrel32	.Lc68
	.quad	.Lc57
	.quad	.Lc58-.Lc57
	.byte	4
	.long	.Lc59-.Lc57
	.byte	14
	.uleb128	80
	.balign 4,0
.Lc104:
	.long	.Lc106-.Lc105
.Lc105:
	.secrel32	.Lc68
	.quad	.Lc60
	.quad	.Lc61-.Lc60
	.balign 4,0
.Lc106:
	.long	.Lc108-.Lc107
.Lc107:
	.secrel32	.Lc68
	.quad	.Lc62
	.quad	.Lc63-.Lc62
	.byte	4
	.long	.Lc64-.Lc62
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc108:
	.long	.Lc110-.Lc109
.Lc109:
	.secrel32	.Lc68
	.quad	.Lc65
	.quad	.Lc66-.Lc65
	.byte	4
	.long	.Lc67-.Lc65
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc110:
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
# Symbol MATH
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
# Symbol WAVES1
	.uleb128	3
	.ascii	"WAVES1\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_WAVES1
	.long	.La31-.Ldebug_info0
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
	.long	.La33-.Ldebug_info0
# Symbol SAMPLEINDEX1
	.uleb128	3
	.ascii	"SAMPLEINDEX1\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$FMSYNTH_$$_SAMPLEINDEX1
	.long	.La33-.Ldebug_info0
# Symbol WAVEIDX
	.uleb128	3
	.ascii	"WAVEIDX\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$FMSYNTH_$$_WAVEIDX
	.long	.La33-.Ldebug_info0
# Symbol INITVOICES
# Syms - End unit FMSYNTH has index 18
# Syms - Begin Staticsymtable
# Symbol RETRO
# Symbol FMSYNTH_$$_init$
# Symbol INITSAMPLES0
# Symbol INITSAMPLES1
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
	.long	.La33-.Ldebug_info0
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
	.long	.La35-.Ldebug_info0
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La33-.Ldebug_info0
# Symbol FH
	.uleb128	5
	.ascii	"FH\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La33-.Ldebug_info0
# Symbol CURRENTDIR2
	.uleb128	5
	.ascii	"CURRENTDIR2\000"
	.byte	3
	.byte	118
	.sleb128	-648
	.long	.La37-.Ldebug_info0
# Symbol DUMMY
	.uleb128	5
	.ascii	"DUMMY\000"
	.byte	3
	.byte	118
	.sleb128	-664
	.long	.La39-.Ldebug_info0
# Symbol INTWAVE
	.uleb128	5
	.ascii	"INTWAVE\000"
	.byte	3
	.byte	118
	.sleb128	-2720
	.long	.La41-.Ldebug_info0
# Symbol fin$0
# Definition Array[0..15] Of Byte
.La39:
	.uleb128	6
	.uleb128	16
	.long	.La43-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	15
	.uleb128	1
	.long	.La45-.Ldebug_info0
	.byte	0
.La40:
	.uleb128	8
	.long	.La39-.Ldebug_info0
# Definition Array[0..1024] Of SmallInt
.La41:
	.uleb128	6
	.uleb128	2050
	.long	.La47-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	1024
	.uleb128	2
	.long	.La47-.Ldebug_info0
	.byte	0
.La42:
	.uleb128	8
	.long	.La41-.Ldebug_info0
	.byte	0
# Procdef $fin$0(<^untyped>) is nested;
	.uleb128	9
	.ascii	"fin$0\000"
	.byte	1
	.byte	65
	.quad	FMSYNTH$_$INITSAMPLES0_$$_fin$0
	.quad	.Lt4
# Symbol parentfp
	.uleb128	10
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La49-.Ldebug_info0
	.byte	0
# Procdef initsamples1;
	.uleb128	4
	.ascii	"INITSAMPLES1\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH_$$_INITSAMPLES1
	.quad	.Lt5
# Symbol TSAMPLEINFO
# Symbol SR
	.uleb128	5
	.ascii	"SR\000"
	.byte	3
	.byte	118
	.sleb128	-640
	.long	.La35-.Ldebug_info0
# Symbol J
	.uleb128	5
	.ascii	"J\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La33-.Ldebug_info0
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La33-.Ldebug_info0
# Symbol FH
	.uleb128	5
	.ascii	"FH\000"
	.byte	2
	.byte	144
	.uleb128	12
	.long	.La33-.Ldebug_info0
# Symbol CURRENTDIR2
	.uleb128	5
	.ascii	"CURRENTDIR2\000"
	.byte	3
	.byte	118
	.sleb128	-648
	.long	.La37-.Ldebug_info0
# Symbol DUMMY
	.uleb128	5
	.ascii	"DUMMY\000"
	.byte	3
	.byte	118
	.sleb128	-904
	.long	.La53-.Ldebug_info0
# Symbol INTWAVE
	.uleb128	5
	.ascii	"INTWAVE\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La55-.Ldebug_info0
# Symbol SAMPLENUM
	.uleb128	5
	.ascii	"SAMPLENUM\000"
	.byte	3
	.byte	118
	.sleb128	-912
	.long	.La57-.Ldebug_info0
# Symbol SAMPLEINFO
	.uleb128	5
	.ascii	"SAMPLEINFO\000"
	.byte	3
	.byte	118
	.sleb128	-2192
	.long	.La59-.Ldebug_info0
# Symbol INTEGRATOR
	.uleb128	5
	.ascii	"INTEGRATOR\000"
	.byte	2
	.byte	144
	.uleb128	23
	.long	.La1-.Ldebug_info0
# Symbol fin$1
# Definition TSampleinfo
.La51:
	.uleb128	11
	.ascii	"TSAMPLEINFO\000"
	.long	.La61-.Ldebug_info0
.La61:
	.uleb128	12
	.ascii	"TSAMPLEINFO\000"
	.uleb128	40
	.uleb128	13
	.ascii	"SLEN\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La62-.Ldebug_info0
	.uleb128	13
	.ascii	"SLS\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La62-.Ldebug_info0
	.uleb128	13
	.ascii	"SLL\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La62-.Ldebug_info0
	.uleb128	13
	.ascii	"VOL\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La43-.Ldebug_info0
	.uleb128	13
	.ascii	"FINETUNE\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La43-.Ldebug_info0
	.uleb128	13
	.ascii	"SAMPLETYPE\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La43-.Ldebug_info0
	.uleb128	13
	.ascii	"PAN\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La43-.Ldebug_info0
	.uleb128	13
	.ascii	"RELNOTE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La45-.Ldebug_info0
	.uleb128	13
	.ascii	"SNL\000"
	.byte	2
	.byte	35
	.uleb128	17
	.long	.La43-.Ldebug_info0
	.uleb128	13
	.ascii	"SAMPLENAME\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La64-.Ldebug_info0
	.byte	0
.La52:
	.uleb128	8
	.long	.La51-.Ldebug_info0
# Definition Array[0..255] Of Byte
.La53:
	.uleb128	6
	.uleb128	256
	.long	.La43-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	255
	.uleb128	1
	.long	.La43-.Ldebug_info0
	.byte	0
.La54:
	.uleb128	8
	.long	.La53-.Ldebug_info0
# Definition Array[0..31] Of TSampleinfo
.La59:
	.uleb128	6
	.uleb128	1280
	.long	.La51-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	31
	.uleb128	40
	.long	.La45-.Ldebug_info0
	.byte	0
.La60:
	.uleb128	8
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef $fin$1(<^untyped>) is nested;
	.uleb128	9
	.ascii	"fin$1\000"
	.byte	1
	.byte	65
	.quad	FMSYNTH$_$INITSAMPLES1_$$_fin$1
	.quad	.Lt6
# Symbol parentfp
	.uleb128	10
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La49-.Ldebug_info0
	.byte	0
# Procdef initflogtable;
	.uleb128	4
	.ascii	"INITFLOGTABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH_$$_INITFLOGTABLE
	.quad	.Lt7
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La33-.Ldebug_info0
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
	.quad	.Lt8
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef operator :=(<var TSingleStereoSample>;LongInt):Array[0..1] Of Double;
	.uleb128	14
	.ascii	"assign\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La7-.Ldebug_info0
	.quad	FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
	.quad	.Lt9
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
	.long	.La33-.Ldebug_info0
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
	.uleb128	14
	.ascii	"star\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La7-.Ldebug_info0
	.quad	FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
	.quad	.Lt10
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
	.long	.La66-.Ldebug_info0
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
	.quad	.Lt11
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La33-.Ldebug_info0
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
	.quad	.Lt12
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition Byte
.La43:
	.uleb128	11
	.ascii	"BYTE\000"
	.long	.La68-.Ldebug_info0
.La68:
	.uleb128	15
	.ascii	"BYTE\000"
	.byte	7
	.byte	1
.La44:
	.uleb128	8
	.long	.La43-.Ldebug_info0
# Definition ShortInt
.La45:
	.uleb128	11
	.ascii	"SHORTINT\000"
	.long	.La69-.Ldebug_info0
.La69:
	.uleb128	15
	.ascii	"SHORTINT\000"
	.byte	5
	.byte	1
.La46:
	.uleb128	8
	.long	.La45-.Ldebug_info0
# Definition Word
.La57:
	.uleb128	11
	.ascii	"WORD\000"
	.long	.La70-.Ldebug_info0
.La70:
	.uleb128	15
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La58:
	.uleb128	8
	.long	.La57-.Ldebug_info0
# Definition SmallInt
.La47:
	.uleb128	11
	.ascii	"SMALLINT\000"
	.long	.La71-.Ldebug_info0
.La71:
	.uleb128	15
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.La48:
	.uleb128	8
	.long	.La47-.Ldebug_info0
# Definition LongWord
.La62:
	.uleb128	11
	.ascii	"LONGWORD\000"
	.long	.La72-.Ldebug_info0
.La72:
	.uleb128	15
	.ascii	"LONGWORD\000"
	.byte	7
	.byte	4
.La63:
	.uleb128	8
	.long	.La62-.Ldebug_info0
# Definition LongInt
.La33:
	.uleb128	11
	.ascii	"LONGINT\000"
	.long	.La73-.Ldebug_info0
.La73:
	.uleb128	15
	.ascii	"LONGINT\000"
	.byte	5
	.byte	4
.La34:
	.uleb128	8
	.long	.La33-.Ldebug_info0
# Definition AnsiString
.La37:
	.uleb128	11
	.ascii	"ANSISTRING\000"
	.long	.La74-.Ldebug_info0
.La74:
	.uleb128	16
	.long	.La75-.Ldebug_info0
.La38:
	.uleb128	8
	.long	.La37-.Ldebug_info0
# Definition Single
.La66:
	.uleb128	11
	.ascii	"SINGLE\000"
	.long	.La77-.Ldebug_info0
.La77:
	.uleb128	15
	.ascii	"SINGLE\000"
	.byte	4
	.byte	4
.La67:
	.uleb128	8
	.long	.La66-.Ldebug_info0
# Definition Double
.La1:
	.uleb128	11
	.ascii	"DOUBLE\000"
	.long	.La78-.Ldebug_info0
.La78:
	.uleb128	15
	.ascii	"DOUBLE\000"
	.byte	4
	.byte	8
.La2:
	.uleb128	8
	.long	.La1-.Ldebug_info0
# Definition ^untyped
.La49:
	.uleb128	11
	.ascii	"parentfp_void_pointer\000"
	.long	.La79-.Ldebug_info0
.La79:
	.uleb128	17
.La50:
	.uleb128	8
	.long	.La49-.Ldebug_info0
# Definition PSmallInt
.La55:
	.uleb128	11
	.ascii	"PSMALLINT\000"
	.long	.La80-.Ldebug_info0
.La80:
	.uleb128	16
	.long	.La47-.Ldebug_info0
.La56:
	.uleb128	8
	.long	.La55-.Ldebug_info0
# Definition Char
.La75:
	.uleb128	11
	.ascii	"CHAR\000"
	.long	.La81-.Ldebug_info0
.La81:
	.uleb128	15
	.ascii	"Char\000"
	.byte	8
	.byte	1
.La76:
	.uleb128	8
	.long	.La75-.Ldebug_info0
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
.La35:
	.uleb128	11
	.ascii	"TRAWBYTESEARCHREC\000"
	.long	.La82-.Ldebug_info0
.La82:
	.uleb128	12
	.ascii	"TRAWBYTESEARCHREC\000"
	.uleb128	640
	.uleb128	13
	.ascii	"TIME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La33-.Ldebug_info0
	.uleb128	13
	.ascii	"SIZE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La83-.Ldebug_info0
	.uleb128	13
	.ascii	"ATTR\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La33-.Ldebug_info0
	.uleb128	13
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La85-.Ldebug_info0
	.uleb128	13
	.ascii	"EXCLUDEATTR\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La33-.Ldebug_info0
	.uleb128	13
	.ascii	"FINDHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La87-.Ldebug_info0
	.uleb128	13
	.ascii	"FINDDATA\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La89-.Ldebug_info0
	.byte	0
.La36:
	.uleb128	8
	.long	.La35-.Ldebug_info0
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
	.uleb128	11
	.ascii	"PSINGLESAMPLE\000"
	.long	.La91-.Ldebug_info0
.La91:
	.uleb128	16
	.long	.La1-.Ldebug_info0
.La4:
	.uleb128	8
	.long	.La3-.Ldebug_info0
# Definition PSingleStereosample
.La5:
	.uleb128	11
	.ascii	"PSINGLESTEREOSAMPLE\000"
	.long	.La92-.Ldebug_info0
.La92:
	.uleb128	16
	.long	.La1-.Ldebug_info0
.La6:
	.uleb128	8
	.long	.La5-.Ldebug_info0
# Definition TSingleStereoSample
.La7:
	.uleb128	11
	.ascii	"TSINGLESTEREOSAMPLE\000"
	.long	.La93-.Ldebug_info0
.La93:
	.uleb128	18
	.ascii	"TSINGLESTEREOSAMPLE\000"
	.uleb128	16
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	1
	.uleb128	8
	.long	.La45-.Ldebug_info0
	.byte	0
.La8:
	.uleb128	8
	.long	.La7-.Ldebug_info0
# Definition TFmOperator
.La9:
	.uleb128	11
	.ascii	"TFMOPERATOR\000"
	.long	.La94-.Ldebug_info0
.La94:
	.uleb128	16
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
	.long	.La97-.Ldebug_info0
	.uleb128	13
	.ascii	"FREQ\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"C3\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"C4\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"C5\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"C6\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"LFO1\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"LFO2\000"
	.byte	2
	.byte	35
	.uleb128	56
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"LFO3\000"
	.byte	2
	.byte	35
	.uleb128	64
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"MUL0\000"
	.byte	2
	.byte	35
	.uleb128	72
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"MUL1\000"
	.byte	2
	.byte	35
	.uleb128	80
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"MUL2\000"
	.byte	2
	.byte	35
	.uleb128	88
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"MUL3\000"
	.byte	2
	.byte	35
	.uleb128	96
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"MUL4\000"
	.byte	2
	.byte	35
	.uleb128	104
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"MUL5\000"
	.byte	2
	.byte	35
	.uleb128	112
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"MUL6\000"
	.byte	2
	.byte	35
	.uleb128	120
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"MUL7\000"
	.byte	3
	.byte	35
	.uleb128	128
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"WPTR\000"
	.byte	3
	.byte	35
	.uleb128	136
	.long	.La3-.Ldebug_info0
	.uleb128	13
	.ascii	"WLENGTH\000"
	.byte	3
	.byte	35
	.uleb128	144
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"WLSTART\000"
	.byte	3
	.byte	35
	.uleb128	152
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"WLEND\000"
	.byte	3
	.byte	35
	.uleb128	160
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"ADSRSTATE\000"
	.byte	3
	.byte	35
	.uleb128	320
	.long	.La33-.Ldebug_info0
	.uleb128	13
	.ascii	"ADSRVAL\000"
	.byte	3
	.byte	35
	.uleb128	168
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"AR1\000"
	.byte	3
	.byte	35
	.uleb128	176
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"AV1\000"
	.byte	3
	.byte	35
	.uleb128	184
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"AR2\000"
	.byte	3
	.byte	35
	.uleb128	192
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"AV2\000"
	.byte	3
	.byte	35
	.uleb128	200
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"AR3\000"
	.byte	3
	.byte	35
	.uleb128	208
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"AV3\000"
	.byte	3
	.byte	35
	.uleb128	216
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"AR4\000"
	.byte	3
	.byte	35
	.uleb128	224
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"AV4\000"
	.byte	3
	.byte	35
	.uleb128	232
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"AV\000"
	.byte	3
	.byte	35
	.uleb128	240
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"AR\000"
	.byte	3
	.byte	35
	.uleb128	248
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"ADSRBIAS\000"
	.byte	3
	.byte	35
	.uleb128	256
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"VEL\000"
	.byte	3
	.byte	35
	.uleb128	264
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"KEYSENSE\000"
	.byte	3
	.byte	35
	.uleb128	272
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"EXPR\000"
	.byte	3
	.byte	35
	.uleb128	280
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"PA\000"
	.byte	3
	.byte	35
	.uleb128	288
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"PA2\000"
	.byte	3
	.byte	35
	.uleb128	296
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"WAVEMODE\000"
	.byte	3
	.byte	35
	.uleb128	324
	.long	.La33-.Ldebug_info0
	.uleb128	13
	.ascii	"INTPA\000"
	.byte	3
	.byte	35
	.uleb128	328
	.long	.La33-.Ldebug_info0
	.uleb128	13
	.ascii	"FREQMOD\000"
	.byte	3
	.byte	35
	.uleb128	304
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"OUTPUTTABLE\000"
	.byte	3
	.byte	35
	.uleb128	312
	.long	.La3-.Ldebug_info0
# Procdef getsample(<TFmOperator>):Double;
	.uleb128	14
	.ascii	"GETSAMPLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La1-.Ldebug_info0
	.quad	FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
	.quad	.Lt13
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
	.uleb128	0
	.long	.La33-.Ldebug_info0
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
	.quad	.Lt14
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
	.quad	.Lt15
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
	.uleb128	14
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La9-.Ldebug_info0
	.quad	FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
	.quad	.Lt16
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
	.long	.La98-.Ldebug_info0
# Symbol MODE
	.uleb128	10
	.ascii	"MODE\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La33-.Ldebug_info0
# Symbol OUTS
	.uleb128	10
	.ascii	"OUTS\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La98-.Ldebug_info0
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
	.quad	.Lt17
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
	.long	.La98-.Ldebug_info0
	.byte	0
	.byte	0
.La10:
	.uleb128	8
	.long	.La9-.Ldebug_info0
# Definition TFmVoice
.La12:
	.uleb128	11
	.ascii	"TFMVOICE\000"
	.long	.La100-.Ldebug_info0
.La100:
	.uleb128	16
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
	.long	.La97-.Ldebug_info0
	.uleb128	13
	.ascii	"OPERATORS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La101-.Ldebug_info0
	.uleb128	13
	.ascii	"OUTPUTS\000"
	.byte	2
	.byte	35
	.uleb128	72
	.long	.La103-.Ldebug_info0
	.uleb128	13
	.ascii	"OUTMULS\000"
	.byte	3
	.byte	35
	.uleb128	136
	.long	.La105-.Ldebug_info0
# Procdef constructor create(<TFmVoice>;<Pointer>);
	.uleb128	14
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La12-.Ldebug_info0
	.quad	FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
	.quad	.Lt18
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
	.long	.La98-.Ldebug_info0
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef getsample(<TFmVoice>):Double;
	.uleb128	14
	.ascii	"GETSAMPLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La1-.Ldebug_info0
	.quad	FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
	.quad	.Lt19
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
	.long	.La33-.Ldebug_info0
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
	.quad	.Lt20
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
	.long	.La33-.Ldebug_info0
	.byte	0
	.byte	0
.La13:
	.uleb128	8
	.long	.La12-.Ldebug_info0
# Definition TWaveSample1
.La15:
	.uleb128	11
	.ascii	"TWAVESAMPLE1\000"
	.long	.La107-.Ldebug_info0
.La107:
	.uleb128	12
	.ascii	"TWAVESAMPLE1\000"
	.uleb128	40
	.uleb128	13
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La37-.Ldebug_info0
	.uleb128	13
	.ascii	"LEN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La33-.Ldebug_info0
	.uleb128	13
	.ascii	"LSTART\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La33-.Ldebug_info0
	.uleb128	13
	.ascii	"LEND\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La33-.Ldebug_info0
	.uleb128	13
	.ascii	"SPEED\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"WAVE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La108-.Ldebug_info0
	.byte	0
.La16:
	.uleb128	8
	.long	.La15-.Ldebug_info0
# Definition TWaveSample0
.La17:
	.uleb128	11
	.ascii	"TWAVESAMPLE0\000"
	.long	.La110-.Ldebug_info0
.La110:
	.uleb128	12
	.ascii	"TWAVESAMPLE0\000"
	.uleb128	8200
	.uleb128	13
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La37-.Ldebug_info0
	.uleb128	13
	.ascii	"WAVE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La111-.Ldebug_info0
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
	.long	.La33-.Ldebug_info0
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
	.long	.La47-.Ldebug_info0
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
	.long	.La45-.Ldebug_info0
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
	.long	.La33-.Ldebug_info0
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
	.long	.La45-.Ldebug_info0
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
	.long	.La45-.Ldebug_info0
	.byte	0
.La30:
	.uleb128	8
	.long	.La29-.Ldebug_info0
# Definition Array[0..16383] Of TWaveSample1
.La31:
	.uleb128	6
	.uleb128	655360
	.long	.La15-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	16383
	.uleb128	40
	.long	.La47-.Ldebug_info0
	.byte	0
.La32:
	.uleb128	8
	.long	.La31-.Ldebug_info0
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
# Definition TSampleinfo.Array[0..21] Of Char
.La64:
	.uleb128	6
	.uleb128	22
	.long	.La75-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	21
	.uleb128	1
	.long	.La45-.Ldebug_info0
	.byte	0
.La65:
	.uleb128	8
	.long	.La64-.Ldebug_info0
# Definition Int64
.La83:
	.uleb128	11
	.ascii	"INT64\000"
	.long	.La113-.Ldebug_info0
.La113:
	.uleb128	15
	.ascii	"Int64\000"
	.byte	5
	.byte	8
.La84:
	.uleb128	8
	.long	.La83-.Ldebug_info0
# Definition RawByteString
.La85:
	.uleb128	11
	.ascii	"RAWBYTESTRING\000"
	.long	.La114-.Ldebug_info0
.La114:
	.uleb128	16
	.long	.La75-.Ldebug_info0
.La86:
	.uleb128	8
	.long	.La85-.Ldebug_info0
# Definition QWord
.La87:
	.uleb128	11
	.ascii	"QWORD\000"
	.long	.La115-.Ldebug_info0
.La115:
	.uleb128	15
	.ascii	"QWord\000"
	.byte	7
	.byte	8
.La88:
	.uleb128	8
	.long	.La87-.Ldebug_info0
# Definition WIN32_FIND_DATAW
.La89:
	.uleb128	11
	.ascii	"WIN32_FIND_DATAW\000"
	.long	.La116-.Ldebug_info0
.La116:
	.uleb128	12
	.ascii	"WIN32_FIND_DATAW\000"
	.uleb128	592
	.uleb128	13
	.ascii	"DWFILEATTRIBUTES\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La62-.Ldebug_info0
	.uleb128	13
	.ascii	"FTCREATIONTIME\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La117-.Ldebug_info0
	.uleb128	13
	.ascii	"FTLASTACCESSTIME\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La117-.Ldebug_info0
	.uleb128	13
	.ascii	"FTLASTWRITETIME\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La117-.Ldebug_info0
	.uleb128	13
	.ascii	"NFILESIZEHIGH\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La62-.Ldebug_info0
	.uleb128	13
	.ascii	"NFILESIZELOW\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La62-.Ldebug_info0
	.uleb128	13
	.ascii	"DWRESERVED0\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La62-.Ldebug_info0
	.uleb128	13
	.ascii	"DWRESERVED1\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La62-.Ldebug_info0
	.uleb128	13
	.ascii	"CFILENAME\000"
	.byte	2
	.byte	35
	.uleb128	44
	.long	.La119-.Ldebug_info0
	.uleb128	13
	.ascii	"CALTERNATEFILENAME\000"
	.byte	3
	.byte	35
	.uleb128	564
	.long	.La121-.Ldebug_info0
	.byte	0
.La90:
	.uleb128	8
	.long	.La89-.Ldebug_info0
# Definition TObject
.La95:
	.uleb128	11
	.ascii	"TOBJECT\000"
	.long	.La123-.Ldebug_info0
.La123:
	.uleb128	16
	.long	.La97-.Ldebug_info0
.La97:
	.uleb128	19
	.ascii	"TOBJECT\000"
	.uleb128	8
	.uleb128	22
	.byte	1
	.ascii	"_vptr$TOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La98-.Ldebug_info0
# Procdef constructor Create(<TObject>;<Pointer>);
	.uleb128	23
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La95-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La95-.Ldebug_info0
# Symbol vmt
	.uleb128	25
	.ascii	"vmt\000"
	.long	.La98-.Ldebug_info0
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
	.long	.La95-.Ldebug_info0
# Symbol vmt
	.uleb128	25
	.ascii	"vmt\000"
	.long	.La98-.Ldebug_info0
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
	.long	.La95-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La124-.Ldebug_info0
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
	.long	.La95-.Ldebug_info0
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
	.long	.La126-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La95-.Ldebug_info0
# Symbol EXCEPTOBJECT
	.uleb128	25
	.ascii	"EXCEPTOBJECT\000"
	.long	.La95-.Ldebug_info0
# Symbol EXCEPTADDR
	.uleb128	25
	.ascii	"EXCEPTADDR\000"
	.long	.La98-.Ldebug_info0
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
	.long	.La95-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	25
	.ascii	"MESSAGE\000"
	.long	.La128-.Ldebug_info0
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
	.long	.La95-.Ldebug_info0
	.byte	0
# Procdef class InitInstance(<Class Of TObject>;Pointer):TObject;
	.uleb128	23
	.ascii	"INITINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La95-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La130-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	25
	.ascii	"INSTANCE\000"
	.long	.La98-.Ldebug_info0
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
	.long	.La95-.Ldebug_info0
	.byte	0
# Procdef class ClassType(<Class Of TObject>):Class Of TObject;
	.uleb128	23
	.ascii	"CLASSTYPE\000"
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
# Procdef class ClassInfo(<Class Of TObject>):^untyped;
	.uleb128	23
	.ascii	"CLASSINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La98-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La136-.Ldebug_info0
	.byte	0
# Procdef class ClassName(<Class Of TObject>;<var ShortString>):ShortString;
	.uleb128	23
	.ascii	"CLASSNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La138-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La140-.Ldebug_info0
# Symbol result
	.uleb128	29
	.ascii	"result\000"
	.long	.La138-.Ldebug_info0
	.byte	0
# Procdef class ClassNameIs(<Class Of TObject>;const ShortString):Boolean;
	.uleb128	23
	.ascii	"CLASSNAMEIS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La142-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La144-.Ldebug_info0
# Symbol NAME
	.uleb128	25
	.ascii	"NAME\000"
	.long	.La138-.Ldebug_info0
	.byte	0
# Procdef class ClassParent(<Class Of TObject>):Class Of TObject;
	.uleb128	23
	.ascii	"CLASSPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La132-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La146-.Ldebug_info0
	.byte	0
# Procdef class InstanceSize(<Class Of TObject>):Int64;
	.uleb128	23
	.ascii	"INSTANCESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La83-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La148-.Ldebug_info0
	.byte	0
# Procdef class InheritsFrom(<Class Of TObject>;TClass):Boolean;
	.uleb128	23
	.ascii	"INHERITSFROM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La142-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La150-.Ldebug_info0
# Symbol ACLASS
	.uleb128	25
	.ascii	"ACLASS\000"
	.long	.La132-.Ldebug_info0
	.byte	0
# Procdef class StringMessageTable(<Class Of TObject>):^TStringMessageTable;
	.uleb128	23
	.ascii	"STRINGMESSAGETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La152-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La154-.Ldebug_info0
	.byte	0
# Procdef class MethodAddress(<Class Of TObject>;const ShortString):^untyped;
	.uleb128	23
	.ascii	"METHODADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La98-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La156-.Ldebug_info0
# Symbol NAME
	.uleb128	25
	.ascii	"NAME\000"
	.long	.La138-.Ldebug_info0
	.byte	0
# Procdef class MethodName(<Class Of TObject>;<var ShortString>;Pointer):ShortString;
	.uleb128	23
	.ascii	"METHODNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La138-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol result
	.uleb128	29
	.ascii	"result\000"
	.long	.La138-.Ldebug_info0
# Symbol ADDRESS
	.uleb128	25
	.ascii	"ADDRESS\000"
	.long	.La98-.Ldebug_info0
	.byte	0
# Procdef FieldAddress(<TObject>;const ShortString):^untyped;
	.uleb128	23
	.ascii	"FIELDADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La98-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La95-.Ldebug_info0
# Symbol NAME
	.uleb128	25
	.ascii	"NAME\000"
	.long	.La138-.Ldebug_info0
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
	.long	.La95-.Ldebug_info0
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
	.long	.La95-.Ldebug_info0
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
	.long	.La95-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	25
	.ascii	"MESSAGE\000"
	.long	.La128-.Ldebug_info0
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
	.long	.La95-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	25
	.ascii	"MESSAGE\000"
	.long	.La128-.Ldebug_info0
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
	.long	.La95-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	25
	.ascii	"MESSAGE\000"
	.long	.La128-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	23
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La142-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La95-.Ldebug_info0
# Symbol IID
	.uleb128	25
	.ascii	"IID\000"
	.long	.La160-.Ldebug_info0
# Symbol OBJ
	.uleb128	25
	.ascii	"OBJ\000"
	.long	.La128-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	23
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La142-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La95-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	25
	.ascii	"IIDSTR\000"
	.long	.La138-.Ldebug_info0
# Symbol OBJ
	.uleb128	25
	.ascii	"OBJ\000"
	.long	.La128-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceByStr(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	23
	.ascii	"GETINTERFACEBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La142-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La95-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	25
	.ascii	"IIDSTR\000"
	.long	.La138-.Ldebug_info0
# Symbol OBJ
	.uleb128	25
	.ascii	"OBJ\000"
	.long	.La128-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceWeak(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	23
	.ascii	"GETINTERFACEWEAK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La142-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La95-.Ldebug_info0
# Symbol IID
	.uleb128	25
	.ascii	"IID\000"
	.long	.La160-.Ldebug_info0
# Symbol OBJ
	.uleb128	25
	.ascii	"OBJ\000"
	.long	.La128-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntry(<Class Of TObject>;const TGuid):^tinterfaceentry;
	.uleb128	23
	.ascii	"GETINTERFACEENTRY\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La162-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La164-.Ldebug_info0
# Symbol IID
	.uleb128	25
	.ascii	"IID\000"
	.long	.La160-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntryByStr(<Class Of TObject>;const ShortString):^tinterfaceentry;
	.uleb128	23
	.ascii	"GETINTERFACEENTRYBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La162-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La166-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	25
	.ascii	"IIDSTR\000"
	.long	.La138-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceTable(<Class Of TObject>):^tinterfacetable;
	.uleb128	23
	.ascii	"GETINTERFACETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La168-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La170-.Ldebug_info0
	.byte	0
# Procdef class UnitName(<Class Of TObject>;<var AnsiString>):AnsiString;
	.uleb128	23
	.ascii	"UNITNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La37-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La172-.Ldebug_info0
# Symbol result
	.uleb128	29
	.ascii	"result\000"
	.long	.La37-.Ldebug_info0
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
	.long	.La142-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La95-.Ldebug_info0
# Symbol OBJ
	.uleb128	25
	.ascii	"OBJ\000"
	.long	.La95-.Ldebug_info0
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
	.long	.La83-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La95-.Ldebug_info0
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
	.long	.La37-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La95-.Ldebug_info0
# Symbol result
	.uleb128	29
	.ascii	"result\000"
	.long	.La37-.Ldebug_info0
	.byte	0
	.byte	0
.La96:
	.uleb128	8
	.long	.La95-.Ldebug_info0
# Definition Pointer
.La98:
	.uleb128	11
	.ascii	"POINTER\000"
	.long	.La174-.Ldebug_info0
.La174:
	.uleb128	17
.La99:
	.uleb128	8
	.long	.La98-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of TFmOperator
.La101:
	.uleb128	6
	.uleb128	64
	.long	.La9-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	8
	.long	.La45-.Ldebug_info0
	.byte	0
.La102:
	.uleb128	8
	.long	.La101-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of Double
.La103:
	.uleb128	6
	.uleb128	64
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	8
	.long	.La45-.Ldebug_info0
	.byte	0
.La104:
	.uleb128	8
	.long	.La103-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of Single
.La105:
	.uleb128	6
	.uleb128	32
	.long	.La66-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	4
	.long	.La45-.Ldebug_info0
	.byte	0
.La106:
	.uleb128	8
	.long	.La105-.Ldebug_info0
# Definition TWaveSample1.^Double
.La108:
	.uleb128	16
	.long	.La1-.Ldebug_info0
.La109:
	.uleb128	8
	.long	.La108-.Ldebug_info0
# Definition TWaveSample0.Array[0..1023] Of Double
.La111:
	.uleb128	6
	.uleb128	8192
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	1023
	.uleb128	8
	.long	.La47-.Ldebug_info0
	.byte	0
.La112:
	.uleb128	8
	.long	.La111-.Ldebug_info0
# Definition FILETIME
.La117:
	.uleb128	11
	.ascii	"FILETIME\000"
	.long	.La175-.Ldebug_info0
.La175:
	.uleb128	12
	.ascii	"FILETIME\000"
	.uleb128	8
	.uleb128	13
	.ascii	"DWLOWDATETIME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La62-.Ldebug_info0
	.uleb128	13
	.ascii	"DWHIGHDATETIME\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La62-.Ldebug_info0
	.byte	0
.La118:
	.uleb128	8
	.long	.La117-.Ldebug_info0
# Definition WIN32_FIND_DATAW.Array[0..259] Of WideChar
.La119:
	.uleb128	6
	.uleb128	520
	.long	.La176-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	259
	.uleb128	2
	.long	.La47-.Ldebug_info0
	.byte	0
.La120:
	.uleb128	8
	.long	.La119-.Ldebug_info0
# Definition WIN32_FIND_DATAW.Array[0..13] Of WideChar
.La121:
	.uleb128	6
	.uleb128	28
	.long	.La176-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	13
	.uleb128	2
	.long	.La45-.Ldebug_info0
	.byte	0
.La122:
	.uleb128	8
	.long	.La121-.Ldebug_info0
# Definition TObject.Class Of TObject
.La124:
	.uleb128	16
	.long	.La178-.Ldebug_info0
.La125:
	.uleb128	8
	.long	.La124-.Ldebug_info0
# Definition HRESULT
.La126:
	.uleb128	11
	.ascii	"HRESULT\000"
	.long	.La180-.Ldebug_info0
.La180:
	.uleb128	15
	.ascii	"HRESULT\000"
	.byte	5
	.byte	4
.La127:
	.uleb128	8
	.long	.La126-.Ldebug_info0
# Definition <Formal type>
.La128:
	.uleb128	11
	.ascii	"formal\000"
	.long	.La181-.Ldebug_info0
.La181:
	.uleb128	15
	.ascii	"FormalDef\000"
	.byte	7
	.byte	0
.La129:
	.uleb128	8
	.long	.La128-.Ldebug_info0
# Definition TObject.Class Of TObject
.La130:
	.uleb128	16
	.long	.La178-.Ldebug_info0
.La131:
	.uleb128	8
	.long	.La130-.Ldebug_info0
# Definition TClass
.La132:
	.uleb128	11
	.ascii	"TCLASS\000"
	.long	.La182-.Ldebug_info0
.La182:
	.uleb128	16
	.long	.La178-.Ldebug_info0
.La133:
	.uleb128	8
	.long	.La132-.Ldebug_info0
# Definition TObject.Class Of TObject
.La134:
	.uleb128	16
	.long	.La178-.Ldebug_info0
.La135:
	.uleb128	8
	.long	.La134-.Ldebug_info0
# Definition TObject.Class Of TObject
.La136:
	.uleb128	16
	.long	.La178-.Ldebug_info0
.La137:
	.uleb128	8
	.long	.La136-.Ldebug_info0
# Definition ShortString
.La138:
	.uleb128	11
	.ascii	"SHORTSTRING\000"
	.long	.La183-.Ldebug_info0
.La183:
	.uleb128	12
	.ascii	"ShortString\000"
	.uleb128	256
	.uleb128	13
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La43-.Ldebug_info0
	.uleb128	13
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La184-.Ldebug_info0
	.byte	0
.La184:
	.uleb128	30
	.uleb128	256
	.uleb128	1
	.long	.La75-.Ldebug_info0
	.uleb128	31
	.uleb128	1
	.uleb128	255
	.long	.La43-.Ldebug_info0
	.byte	0
.La139:
	.uleb128	8
	.long	.La138-.Ldebug_info0
# Definition TObject.Class Of TObject
.La140:
	.uleb128	16
	.long	.La178-.Ldebug_info0
.La141:
	.uleb128	8
	.long	.La140-.Ldebug_info0
# Definition Boolean
.La142:
	.uleb128	11
	.ascii	"BOOLEAN\000"
	.long	.La185-.Ldebug_info0
.La185:
	.uleb128	15
	.ascii	"Boolean\000"
	.byte	2
	.byte	1
.La143:
	.uleb128	8
	.long	.La142-.Ldebug_info0
# Definition TObject.Class Of TObject
.La144:
	.uleb128	16
	.long	.La178-.Ldebug_info0
.La145:
	.uleb128	8
	.long	.La144-.Ldebug_info0
# Definition TObject.Class Of TObject
.La146:
	.uleb128	16
	.long	.La178-.Ldebug_info0
.La147:
	.uleb128	8
	.long	.La146-.Ldebug_info0
# Definition TObject.Class Of TObject
.La148:
	.uleb128	16
	.long	.La178-.Ldebug_info0
.La149:
	.uleb128	8
	.long	.La148-.Ldebug_info0
# Definition TObject.Class Of TObject
.La150:
	.uleb128	16
	.long	.La178-.Ldebug_info0
.La151:
	.uleb128	8
	.long	.La150-.Ldebug_info0
# Definition pstringmessagetable
.La152:
	.uleb128	11
	.ascii	"PSTRINGMESSAGETABLE\000"
	.long	.La186-.Ldebug_info0
.La186:
	.uleb128	16
	.long	.La187-.Ldebug_info0
.La153:
	.uleb128	8
	.long	.La152-.Ldebug_info0
# Definition TObject.Class Of TObject
.La154:
	.uleb128	16
	.long	.La178-.Ldebug_info0
.La155:
	.uleb128	8
	.long	.La154-.Ldebug_info0
# Definition TObject.Class Of TObject
.La156:
	.uleb128	16
	.long	.La178-.Ldebug_info0
.La157:
	.uleb128	8
	.long	.La156-.Ldebug_info0
# Definition TObject.Class Of TObject
.La158:
	.uleb128	16
	.long	.La178-.Ldebug_info0
.La159:
	.uleb128	8
	.long	.La158-.Ldebug_info0
# Definition TGuid
.La160:
	.uleb128	11
	.ascii	"TGUID\000"
	.long	.La189-.Ldebug_info0
.La189:
	.uleb128	12
	.ascii	"TGUID\000"
	.uleb128	16
	.uleb128	13
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La62-.Ldebug_info0
	.uleb128	13
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La57-.Ldebug_info0
	.uleb128	13
	.ascii	"DATA3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La57-.Ldebug_info0
	.uleb128	13
	.ascii	"DATA4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La190-.Ldebug_info0
	.uleb128	13
	.ascii	"D1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La62-.Ldebug_info0
	.uleb128	13
	.ascii	"D2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La57-.Ldebug_info0
	.uleb128	13
	.ascii	"D3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La57-.Ldebug_info0
	.uleb128	13
	.ascii	"D4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La192-.Ldebug_info0
	.uleb128	13
	.ascii	"TIME_LOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La62-.Ldebug_info0
	.uleb128	13
	.ascii	"TIME_MID\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La57-.Ldebug_info0
	.uleb128	13
	.ascii	"TIME_HI_AND_VERSION\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La57-.Ldebug_info0
	.uleb128	13
	.ascii	"CLOCK_SEQ_HI_AND_RESERVED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La43-.Ldebug_info0
	.uleb128	13
	.ascii	"CLOCK_SEQ_LOW\000"
	.byte	2
	.byte	35
	.uleb128	9
	.long	.La43-.Ldebug_info0
	.uleb128	13
	.ascii	"NODE\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La194-.Ldebug_info0
	.byte	0
.La161:
	.uleb128	8
	.long	.La160-.Ldebug_info0
# Definition pinterfaceentry
.La162:
	.uleb128	11
	.ascii	"PINTERFACEENTRY\000"
	.long	.La196-.Ldebug_info0
.La196:
	.uleb128	16
	.long	.La197-.Ldebug_info0
.La163:
	.uleb128	8
	.long	.La162-.Ldebug_info0
# Definition TObject.Class Of TObject
.La164:
	.uleb128	16
	.long	.La178-.Ldebug_info0
.La165:
	.uleb128	8
	.long	.La164-.Ldebug_info0
# Definition TObject.Class Of TObject
.La166:
	.uleb128	16
	.long	.La178-.Ldebug_info0
.La167:
	.uleb128	8
	.long	.La166-.Ldebug_info0
# Definition pinterfacetable
.La168:
	.uleb128	11
	.ascii	"PINTERFACETABLE\000"
	.long	.La199-.Ldebug_info0
.La199:
	.uleb128	16
	.long	.La200-.Ldebug_info0
.La169:
	.uleb128	8
	.long	.La168-.Ldebug_info0
# Definition TObject.Class Of TObject
.La170:
	.uleb128	16
	.long	.La178-.Ldebug_info0
.La171:
	.uleb128	8
	.long	.La170-.Ldebug_info0
# Definition TObject.Class Of TObject
.La172:
	.uleb128	16
	.long	.La178-.Ldebug_info0
.La173:
	.uleb128	8
	.long	.La172-.Ldebug_info0
# Definition WideChar
.La176:
	.uleb128	11
	.ascii	"WIDECHAR\000"
	.long	.La202-.Ldebug_info0
.La202:
	.uleb128	15
	.ascii	"WideChar\000"
	.byte	8
	.byte	2
.La177:
	.uleb128	8
	.long	.La176-.Ldebug_info0
# Definition <record type>
.La178:
	.uleb128	11
	.ascii	"__vtbl_ptr_type\000"
	.long	.La203-.Ldebug_info0
.La203:
	.uleb128	32
	.uleb128	40
	.byte	0
.La179:
	.uleb128	8
	.long	.La178-.Ldebug_info0
# Definition TStringMessageTable
.La187:
	.uleb128	11
	.ascii	"TSTRINGMESSAGETABLE\000"
	.long	.La204-.Ldebug_info0
.La204:
	.uleb128	12
	.ascii	"TSTRINGMESSAGETABLE\000"
	.uleb128	24
	.uleb128	13
	.ascii	"COUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La33-.Ldebug_info0
	.uleb128	13
	.ascii	"MSGSTRTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La205-.Ldebug_info0
	.byte	0
.La188:
	.uleb128	8
	.long	.La187-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La190:
	.uleb128	6
	.uleb128	8
	.long	.La43-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La45-.Ldebug_info0
	.byte	0
.La191:
	.uleb128	8
	.long	.La190-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La192:
	.uleb128	6
	.uleb128	8
	.long	.La43-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La45-.Ldebug_info0
	.byte	0
.La193:
	.uleb128	8
	.long	.La192-.Ldebug_info0
# Definition TGuid.Array[0..5] Of Byte
.La194:
	.uleb128	6
	.uleb128	6
	.long	.La43-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	5
	.uleb128	1
	.long	.La45-.Ldebug_info0
	.byte	0
.La195:
	.uleb128	8
	.long	.La194-.Ldebug_info0
# Definition tinterfaceentry
.La197:
	.uleb128	11
	.ascii	"TINTERFACEENTRY\000"
	.long	.La207-.Ldebug_info0
.La207:
	.uleb128	12
	.ascii	"TINTERFACEENTRY\000"
	.uleb128	40
	.uleb128	13
	.ascii	"IID\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La208-.Ldebug_info0
	.uleb128	13
	.ascii	"VTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La98-.Ldebug_info0
	.uleb128	13
	.ascii	"IOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La87-.Ldebug_info0
	.uleb128	13
	.ascii	"IIDSTR\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La210-.Ldebug_info0
	.uleb128	13
	.ascii	"ITYPE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La212-.Ldebug_info0
	.uleb128	13
	.ascii	"__PAD_DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La83-.Ldebug_info0
	.byte	0
.La198:
	.uleb128	8
	.long	.La197-.Ldebug_info0
# Definition tinterfacetable
.La200:
	.uleb128	11
	.ascii	"TINTERFACETABLE\000"
	.long	.La214-.Ldebug_info0
.La214:
	.uleb128	12
	.ascii	"TINTERFACETABLE\000"
	.uleb128	48
	.uleb128	13
	.ascii	"ENTRYCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La87-.Ldebug_info0
	.uleb128	13
	.ascii	"ENTRIES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La215-.Ldebug_info0
	.byte	0
.La201:
	.uleb128	8
	.long	.La200-.Ldebug_info0
# Definition TStringMessageTable.Array[0..0] Of TMsgStrTable
.La205:
	.uleb128	6
	.uleb128	16
	.long	.La217-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	0
	.uleb128	16
	.long	.La45-.Ldebug_info0
	.byte	0
.La206:
	.uleb128	8
	.long	.La205-.Ldebug_info0
# Definition PGuid
.La208:
	.uleb128	11
	.ascii	"PGUID\000"
	.long	.La219-.Ldebug_info0
.La219:
	.uleb128	16
	.long	.La160-.Ldebug_info0
.La209:
	.uleb128	8
	.long	.La208-.Ldebug_info0
# Definition PShortString
.La210:
	.uleb128	11
	.ascii	"PSHORTSTRING\000"
	.long	.La220-.Ldebug_info0
.La220:
	.uleb128	16
	.long	.La138-.Ldebug_info0
.La211:
	.uleb128	8
	.long	.La210-.Ldebug_info0
# Definition tinterfaceentrytype
.La212:
	.uleb128	11
	.ascii	"TINTERFACEENTRYTYPE\000"
	.long	.La221-.Ldebug_info0
.La221:
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
.La213:
	.uleb128	8
	.long	.La212-.Ldebug_info0
# Definition tinterfacetable.Array[0..0] Of tinterfaceentry
.La215:
	.uleb128	6
	.uleb128	40
	.long	.La197-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	0
	.uleb128	40
	.long	.La45-.Ldebug_info0
	.byte	0
.La216:
	.uleb128	8
	.long	.La215-.Ldebug_info0
# Definition TMsgStrTable
.La217:
	.uleb128	11
	.ascii	"TMSGSTRTABLE\000"
	.long	.La222-.Ldebug_info0
.La222:
	.uleb128	12
	.ascii	"TMSGSTRTABLE\000"
	.uleb128	16
	.uleb128	13
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La210-.Ldebug_info0
	.uleb128	13
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La98-.Ldebug_info0
	.byte	0
.La218:
	.uleb128	8
	.long	.La217-.Ldebug_info0
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
	.uleb128	22
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 12
	.uleb128	12
	.uleb128	19
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 13
	.uleb128	13
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
# Abbrev 14
	.uleb128	14
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
# Abbrev 15
	.uleb128	15
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
# Abbrev 16
	.uleb128	16
	.uleb128	15
	.byte	0
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 17
	.uleb128	17
	.uleb128	15
	.byte	0
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
# function: FMSYNTH$_$INITSAMPLES0_$$_fin$0
# [100:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	111
# [100:1]
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
# [100:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll4
	.byte	5
	.uleb128	1
	.byte	111
# [100:1]
	.byte	2
	.uleb128	.Ll5-.Ll4
	.byte	1
# [101:14]
	.byte	2
	.uleb128	.Ll6-.Ll5
	.byte	5
	.uleb128	14
	.byte	13
# [102:32]
	.byte	2
	.uleb128	.Ll7-.Ll6
	.byte	5
	.uleb128	32
	.byte	13
# [104:35]
	.byte	2
	.uleb128	.Ll8-.Ll7
	.byte	5
	.uleb128	35
	.byte	14
# [105:14]
	.byte	2
	.uleb128	.Ll9-.Ll8
	.byte	5
	.uleb128	14
	.byte	13
# [106:45]
	.byte	2
	.uleb128	.Ll10-.Ll9
	.byte	5
	.uleb128	45
	.byte	13
# [107:14]
	.byte	2
	.uleb128	.Ll11-.Ll10
	.byte	5
	.uleb128	14
	.byte	13
# [108:3]
	.byte	2
	.uleb128	.Ll12-.Ll11
	.byte	5
	.uleb128	3
	.byte	13
# [109:15]
	.byte	2
	.uleb128	.Ll13-.Ll12
	.byte	5
	.uleb128	15
	.byte	13
# [110:18]
	.byte	2
	.uleb128	.Ll14-.Ll13
	.byte	5
	.uleb128	18
	.byte	13
# [111:10]
	.byte	2
	.uleb128	.Ll15-.Ll14
	.byte	5
	.uleb128	10
	.byte	13
# [112:1]
	.byte	2
	.uleb128	.Ll16-.Ll15
	.byte	5
	.uleb128	1
	.byte	13
# [100:1]
	.byte	2
	.uleb128	.Ll17-.Ll16
	.byte	3
	.sleb128	-12
	.byte	1
# [113:1]
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
# function: FMSYNTH$_$INITSAMPLES1_$$_fin$1
# [135:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll20
	.byte	5
	.uleb128	1
	.byte	146
# [135:1]
	.byte	2
	.uleb128	.Ll21-.Ll20
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll22
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITSAMPLES1
# [135:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll23
	.byte	5
	.uleb128	1
	.byte	146
# [135:1]
	.byte	2
	.uleb128	.Ll24-.Ll23
	.byte	1
# [136:14]
	.byte	2
	.uleb128	.Ll25-.Ll24
	.byte	5
	.uleb128	14
	.byte	13
# [137:32]
	.byte	2
	.uleb128	.Ll26-.Ll25
	.byte	5
	.uleb128	32
	.byte	13
# [139:35]
	.byte	2
	.uleb128	.Ll27-.Ll26
	.byte	5
	.uleb128	35
	.byte	14
# [140:14]
	.byte	2
	.uleb128	.Ll28-.Ll27
	.byte	5
	.uleb128	14
	.byte	13
# [141:14]
	.byte	2
	.uleb128	.Ll29-.Ll28
	.byte	13
# [142:14]
	.byte	2
	.uleb128	.Ll30-.Ll29
	.byte	13
# [143:15]
	.byte	2
	.uleb128	.Ll31-.Ll30
	.byte	5
	.uleb128	15
	.byte	13
# [144:15]
	.byte	2
	.uleb128	.Ll32-.Ll31
	.byte	13
# [146:24]
	.byte	2
	.uleb128	.Ll33-.Ll32
	.byte	5
	.uleb128	24
	.byte	14
# [147:28]
	.byte	2
	.uleb128	.Ll34-.Ll33
	.byte	5
	.uleb128	28
	.byte	13
# [148:32]
	.byte	2
	.uleb128	.Ll35-.Ll34
	.byte	5
	.uleb128	32
	.byte	13
# [149:52]
	.byte	2
	.uleb128	.Ll36-.Ll35
	.byte	5
	.uleb128	52
	.byte	13
# [150:37]
	.byte	2
	.uleb128	.Ll37-.Ll36
	.byte	5
	.uleb128	37
	.byte	13
# [151:5]
	.byte	2
	.uleb128	.Ll38-.Ll37
	.byte	5
	.uleb128	5
	.byte	13
# [152:29]
	.byte	2
	.uleb128	.Ll39-.Ll38
	.byte	5
	.uleb128	29
	.byte	13
# [154:27]
	.byte	2
	.uleb128	.Ll40-.Ll39
	.byte	5
	.uleb128	27
	.byte	14
# [155:26]
	.byte	2
	.uleb128	.Ll41-.Ll40
	.byte	5
	.uleb128	26
	.byte	13
# [152:9]
	.byte	2
	.uleb128	.Ll42-.Ll41
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	-3
	.byte	1
# [157:5]
	.byte	2
	.uleb128	.Ll43-.Ll42
	.byte	5
	.uleb128	5
	.byte	17
# [158:42]
	.byte	2
	.uleb128	.Ll44-.Ll43
	.byte	5
	.uleb128	42
	.byte	13
# [159:45]
	.byte	2
	.uleb128	.Ll45-.Ll44
	.byte	5
	.uleb128	45
	.byte	13
# [160:45]
	.byte	2
	.uleb128	.Ll46-.Ll45
	.byte	13
# [161:63]
	.byte	2
	.uleb128	.Ll47-.Ll46
	.byte	5
	.uleb128	63
	.byte	13
# [162:20]
	.byte	2
	.uleb128	.Ll48-.Ll47
	.byte	5
	.uleb128	20
	.byte	13
# [144:7]
	.byte	2
	.uleb128	.Ll49-.Ll48
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-18
	.byte	1
# [164:15]
	.byte	2
	.uleb128	.Ll50-.Ll49
	.byte	5
	.uleb128	15
	.byte	32
# [165:10]
	.byte	2
	.uleb128	.Ll51-.Ll50
	.byte	5
	.uleb128	10
	.byte	13
# [166:1]
	.byte	2
	.uleb128	.Ll52-.Ll51
	.byte	5
	.uleb128	1
	.byte	13
# [135:1]
	.byte	2
	.uleb128	.Ll53-.Ll52
	.byte	3
	.sleb128	-31
	.byte	1
# [167:1]
	.byte	2
	.uleb128	.Ll54-.Ll53
	.byte	44
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll55
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITVOICES
# [175:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll56
	.byte	5
	.uleb128	1
	.byte	186
# [176:1]
	.byte	2
	.uleb128	.Ll57-.Ll56
	.byte	13
# [177:14]
	.byte	2
	.uleb128	.Ll58-.Ll57
	.byte	5
	.uleb128	14
	.byte	13
# [176:1]
	.byte	2
	.uleb128	.Ll59-.Ll58
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [178:1]
	.byte	2
	.uleb128	.Ll60-.Ll59
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll61
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
# [184:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll62
	.byte	5
	.uleb128	1
	.byte	195
# [184:1]
	.byte	2
	.uleb128	.Ll63-.Ll62
	.byte	1
# [190:1]
	.byte	2
	.uleb128	.Ll64-.Ll63
	.byte	18
# [185:1]
	.byte	2
	.uleb128	.Ll65-.Ll64
	.byte	3
	.sleb128	-5
	.byte	1
# [186:1]
	.byte	2
	.uleb128	.Ll66-.Ll65
	.byte	13
# [187:1]
	.byte	2
	.uleb128	.Ll67-.Ll66
	.byte	13
# [184:1]
	.byte	2
	.uleb128	.Ll68-.Ll67
	.byte	3
	.sleb128	-3
	.byte	1
# [187:29]
	.byte	2
	.uleb128	.Ll69-.Ll68
	.byte	5
	.uleb128	29
	.byte	15
# [188:1]
	.byte	2
	.uleb128	.Ll70-.Ll69
	.byte	5
	.uleb128	1
	.byte	13
# [189:1]
	.byte	2
	.uleb128	.Ll71-.Ll70
	.byte	13
# [190:1]
	.byte	2
	.uleb128	.Ll72-.Ll71
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll73
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
# [198:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll74
	.byte	5
	.uleb128	1
	.byte	209
# [199:1]
	.byte	2
	.uleb128	.Ll75-.Ll74
	.byte	13
# [200:25]
	.byte	2
	.uleb128	.Ll76-.Ll75
	.byte	5
	.uleb128	25
	.byte	13
# [199:1]
	.byte	2
	.uleb128	.Ll77-.Ll76
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [201:1]
	.byte	2
	.uleb128	.Ll78-.Ll77
	.byte	14
# [202:1]
	.byte	2
	.uleb128	.Ll79-.Ll78
	.byte	13
# [204:1]
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
# function: FMSYNTH_$$_INITFLOGTABLE
# [215:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll82
	.byte	5
	.uleb128	1
	.byte	226
# [217:1]
	.byte	2
	.uleb128	.Ll83-.Ll82
	.byte	14
# [218:1]
	.byte	2
	.uleb128	.Ll84-.Ll83
	.byte	13
# [220:7]
	.byte	2
	.uleb128	.Ll85-.Ll84
	.byte	5
	.uleb128	7
	.byte	14
# [223:15]
	.byte	2
	.uleb128	.Ll86-.Ll85
	.byte	5
	.uleb128	15
	.byte	15
# [224:9]
	.byte	2
	.uleb128	.Ll87-.Ll86
	.byte	5
	.uleb128	9
	.byte	13
# [218:1]
	.byte	2
	.uleb128	.Ll88-.Ll87
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-6
	.byte	1
# [227:1]
	.byte	2
	.uleb128	.Ll89-.Ll88
	.byte	21
# [228:1]
	.byte	2
	.uleb128	.Ll90-.Ll89
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll91
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITFSINETABLE
# [235:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll92
	.byte	5
	.uleb128	1
	.byte	246
# [236:1]
	.byte	2
	.uleb128	.Ll93-.Ll92
	.byte	13
# [237:1]
	.byte	2
	.uleb128	.Ll94-.Ll93
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll95
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
# [241:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll96
	.byte	5
	.uleb128	1
	.byte	252
# [242:12]
	.byte	2
	.uleb128	.Ll97-.Ll96
	.byte	5
	.uleb128	12
	.byte	13
# [243:12]
	.byte	2
	.uleb128	.Ll98-.Ll97
	.byte	13
# [244:1]
	.byte	2
	.uleb128	.Ll99-.Ll98
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll100
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
# [248:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll101
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	247
	.byte	1
# [249:17]
	.byte	2
	.uleb128	.Ll102-.Ll101
	.byte	5
	.uleb128	17
	.byte	13
# [250:17]
	.byte	2
	.uleb128	.Ll103-.Ll102
	.byte	13
# [251:1]
	.byte	2
	.uleb128	.Ll104-.Ll103
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll105
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
# [258:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll106
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	257
	.byte	1
# [258:1]
	.byte	2
	.uleb128	.Ll107-.Ll106
	.byte	1
# [275:1]
	.byte	2
	.uleb128	.Ll108-.Ll107
	.byte	29
# [259:1]
	.byte	2
	.uleb128	.Ll109-.Ll108
	.byte	3
	.sleb128	-16
	.byte	1
# [260:8]
	.byte	2
	.uleb128	.Ll110-.Ll109
	.byte	5
	.uleb128	8
	.byte	13
# [272:3]
	.byte	2
	.uleb128	.Ll111-.Ll110
	.byte	5
	.uleb128	3
	.byte	24
# [275:1]
	.byte	2
	.uleb128	.Ll112-.Ll111
	.byte	5
	.uleb128	1
	.byte	15
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll113
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
# [279:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll114
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	278
	.byte	1
# [279:1]
	.byte	2
	.uleb128	.Ll115-.Ll114
	.byte	1
# [280:1]
	.byte	2
	.uleb128	.Ll116-.Ll115
	.byte	13
# [281:1]
	.byte	2
	.uleb128	.Ll117-.Ll116
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll118
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE
# [287:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll119
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	286
	.byte	1
# [288:1]
	.byte	2
	.uleb128	.Ll120-.Ll119
	.byte	13
# [290:34]
	.byte	2
	.uleb128	.Ll121-.Ll120
	.byte	5
	.uleb128	34
	.byte	14
# [291:33]
	.byte	2
	.uleb128	.Ll122-.Ll121
	.byte	5
	.uleb128	33
	.byte	13
# [292:34]
	.byte	2
	.uleb128	.Ll123-.Ll122
	.byte	5
	.uleb128	34
	.byte	13
# [293:33]
	.byte	2
	.uleb128	.Ll124-.Ll123
	.byte	5
	.uleb128	33
	.byte	13
# [294:33]
	.byte	2
	.uleb128	.Ll125-.Ll124
	.byte	13
# [295:34]
	.byte	2
	.uleb128	.Ll126-.Ll125
	.byte	5
	.uleb128	34
	.byte	13
# [296:34]
	.byte	2
	.uleb128	.Ll127-.Ll126
	.byte	13
# [299:1]
	.byte	2
	.uleb128	.Ll128-.Ll127
	.byte	5
	.uleb128	1
	.byte	15
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll129
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
# [303:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll130
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	302
	.byte	1
# [304:12]
	.byte	2
	.uleb128	.Ll131-.Ll130
	.byte	5
	.uleb128	12
	.byte	13
# [305:12]
	.byte	2
	.uleb128	.Ll132-.Ll131
	.byte	13
# [306:1]
	.byte	2
	.uleb128	.Ll133-.Ll132
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll134
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_INIT
# [310:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll135
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	309
	.byte	1
# [312:1]
	.byte	2
	.uleb128	.Ll136-.Ll135
	.byte	14
# [313:1]
	.byte	2
	.uleb128	.Ll137-.Ll136
	.byte	13
# [314:1]
	.byte	2
	.uleb128	.Ll138-.Ll137
	.byte	13
# [315:1]
	.byte	2
	.uleb128	.Ll139-.Ll138
	.byte	13
# [316:1]
	.byte	2
	.uleb128	.Ll140-.Ll139
	.byte	13
# [317:1]
	.byte	2
	.uleb128	.Ll141-.Ll140
	.byte	13
# [318:1]
	.byte	2
	.uleb128	.Ll142-.Ll141
	.byte	13
# [319:1]
	.byte	2
	.uleb128	.Ll143-.Ll142
	.byte	13
# [320:1]
	.byte	2
	.uleb128	.Ll144-.Ll143
	.byte	13
# [321:1]
	.byte	2
	.uleb128	.Ll145-.Ll144
	.byte	13
# [322:1]
	.byte	2
	.uleb128	.Ll146-.Ll145
	.byte	13
# [323:1]
	.byte	2
	.uleb128	.Ll147-.Ll146
	.byte	13
# [324:1]
	.byte	2
	.uleb128	.Ll148-.Ll147
	.byte	13
# [325:1]
	.byte	2
	.uleb128	.Ll149-.Ll148
	.byte	13
# [326:1]
	.byte	2
	.uleb128	.Ll150-.Ll149
	.byte	13
# [327:1]
	.byte	2
	.uleb128	.Ll151-.Ll150
	.byte	13
# [328:1]
	.byte	2
	.uleb128	.Ll152-.Ll151
	.byte	13
# [329:1]
	.byte	2
	.uleb128	.Ll153-.Ll152
	.byte	13
# [330:1]
	.byte	2
	.uleb128	.Ll154-.Ll153
	.byte	13
# [331:1]
	.byte	2
	.uleb128	.Ll155-.Ll154
	.byte	13
# [332:1]
	.byte	2
	.uleb128	.Ll156-.Ll155
	.byte	13
# [333:1]
	.byte	2
	.uleb128	.Ll157-.Ll156
	.byte	13
# [334:1]
	.byte	2
	.uleb128	.Ll158-.Ll157
	.byte	13
# [335:1]
	.byte	2
	.uleb128	.Ll159-.Ll158
	.byte	13
# [336:1]
	.byte	2
	.uleb128	.Ll160-.Ll159
	.byte	13
# [337:1]
	.byte	2
	.uleb128	.Ll161-.Ll160
	.byte	13
# [338:1]
	.byte	2
	.uleb128	.Ll162-.Ll161
	.byte	13
# [339:1]
	.byte	2
	.uleb128	.Ll163-.Ll162
	.byte	13
# [340:1]
	.byte	2
	.uleb128	.Ll164-.Ll163
	.byte	13
# [341:1]
	.byte	2
	.uleb128	.Ll165-.Ll164
	.byte	13
# [342:1]
	.byte	2
	.uleb128	.Ll166-.Ll165
	.byte	13
# [347:1]
	.byte	2
	.uleb128	.Ll167-.Ll166
	.byte	17
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll168
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
# [364:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll169
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	363
	.byte	1
# [369:14]
	.byte	2
	.uleb128	.Ll170-.Ll169
	.byte	5
	.uleb128	14
	.byte	17
# [364:1]
	.byte	2
	.uleb128	.Ll171-.Ll170
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-5
	.byte	1
# [383:26]
	.byte	2
	.uleb128	.Ll172-.Ll171
	.byte	5
	.uleb128	26
	.byte	31
# [384:16]
	.byte	2
	.uleb128	.Ll173-.Ll172
	.byte	5
	.uleb128	16
	.byte	13
# [385:16]
	.byte	2
	.uleb128	.Ll174-.Ll173
	.byte	13
# [386:16]
	.byte	2
	.uleb128	.Ll175-.Ll174
	.byte	13
# [387:16]
	.byte	2
	.uleb128	.Ll176-.Ll175
	.byte	13
# [388:16]
	.byte	2
	.uleb128	.Ll177-.Ll176
	.byte	13
# [389:16]
	.byte	2
	.uleb128	.Ll178-.Ll177
	.byte	13
# [390:16]
	.byte	2
	.uleb128	.Ll179-.Ll178
	.byte	13
# [392:7]
	.byte	2
	.uleb128	.Ll180-.Ll179
	.byte	5
	.uleb128	7
	.byte	14
# [393:8]
	.byte	2
	.uleb128	.Ll181-.Ll180
	.byte	5
	.uleb128	8
	.byte	13
# [401:12]
	.byte	2
	.uleb128	.Ll182-.Ll181
	.byte	5
	.uleb128	12
	.byte	20
# [403:8]
	.byte	2
	.uleb128	.Ll183-.Ll182
	.byte	5
	.uleb128	8
	.byte	14
# [404:13]
	.byte	2
	.uleb128	.Ll184-.Ll183
	.byte	5
	.uleb128	13
	.byte	13
# [406:10]
	.byte	2
	.uleb128	.Ll185-.Ll184
	.byte	5
	.uleb128	10
	.byte	14
# [408:9]
	.byte	2
	.uleb128	.Ll186-.Ll185
	.byte	5
	.uleb128	9
	.byte	14
# [409:20]
	.byte	2
	.uleb128	.Ll187-.Ll186
	.byte	5
	.uleb128	20
	.byte	13
# [410:9]
	.byte	2
	.uleb128	.Ll188-.Ll187
	.byte	5
	.uleb128	9
	.byte	13
# [411:20]
	.byte	2
	.uleb128	.Ll189-.Ll188
	.byte	5
	.uleb128	20
	.byte	13
# [417:8]
	.byte	2
	.uleb128	.Ll190-.Ll189
	.byte	5
	.uleb128	8
	.byte	18
# [418:11]
	.byte	2
	.uleb128	.Ll191-.Ll190
	.byte	5
	.uleb128	11
	.byte	13
# [420:10]
	.byte	2
	.uleb128	.Ll192-.Ll191
	.byte	5
	.uleb128	10
	.byte	14
# [422:9]
	.byte	2
	.uleb128	.Ll193-.Ll192
	.byte	5
	.uleb128	9
	.byte	14
# [423:20]
	.byte	2
	.uleb128	.Ll194-.Ll193
	.byte	5
	.uleb128	20
	.byte	13
# [424:9]
	.byte	2
	.uleb128	.Ll195-.Ll194
	.byte	5
	.uleb128	9
	.byte	13
# [425:20]
	.byte	2
	.uleb128	.Ll196-.Ll195
	.byte	5
	.uleb128	20
	.byte	13
# [428:18]
	.byte	2
	.uleb128	.Ll197-.Ll196
	.byte	5
	.uleb128	18
	.byte	15
# [429:12]
	.byte	2
	.uleb128	.Ll198-.Ll197
	.byte	5
	.uleb128	12
	.byte	13
# [430:19]
	.byte	2
	.uleb128	.Ll199-.Ll198
	.byte	5
	.uleb128	19
	.byte	13
# [431:9]
	.byte	2
	.uleb128	.Ll200-.Ll199
	.byte	5
	.uleb128	9
	.byte	13
# [432:5]
	.byte	2
	.uleb128	.Ll201-.Ll200
	.byte	5
	.uleb128	5
	.byte	13
# [433:8]
	.byte	2
	.uleb128	.Ll202-.Ll201
	.byte	5
	.uleb128	8
	.byte	13
# [434:9]
	.byte	2
	.uleb128	.Ll203-.Ll202
	.byte	5
	.uleb128	9
	.byte	13
# [440:14]
	.byte	2
	.uleb128	.Ll204-.Ll203
	.byte	5
	.uleb128	14
	.byte	18
# [442:19]
	.byte	2
	.uleb128	.Ll205-.Ll204
	.byte	5
	.uleb128	19
	.byte	14
# [443:9]
	.byte	2
	.uleb128	.Ll206-.Ll205
	.byte	5
	.uleb128	9
	.byte	13
# [444:31]
	.byte	2
	.uleb128	.Ll207-.Ll206
	.byte	5
	.uleb128	31
	.byte	13
# [445:3]
	.byte	2
	.uleb128	.Ll208-.Ll207
	.byte	5
	.uleb128	3
	.byte	13
# [447:15]
	.byte	2
	.uleb128	.Ll209-.Ll208
	.byte	5
	.uleb128	15
	.byte	14
# [449:19]
	.byte	2
	.uleb128	.Ll210-.Ll209
	.byte	5
	.uleb128	19
	.byte	14
# [450:9]
	.byte	2
	.uleb128	.Ll211-.Ll210
	.byte	5
	.uleb128	9
	.byte	13
# [451:31]
	.byte	2
	.uleb128	.Ll212-.Ll211
	.byte	5
	.uleb128	31
	.byte	13
# [452:3]
	.byte	2
	.uleb128	.Ll213-.Ll212
	.byte	5
	.uleb128	3
	.byte	13
# [454:17]
	.byte	2
	.uleb128	.Ll214-.Ll213
	.byte	5
	.uleb128	17
	.byte	14
# [456:20]
	.byte	2
	.uleb128	.Ll215-.Ll214
	.byte	5
	.uleb128	20
	.byte	14
# [457:9]
	.byte	2
	.uleb128	.Ll216-.Ll215
	.byte	5
	.uleb128	9
	.byte	13
# [458:31]
	.byte	2
	.uleb128	.Ll217-.Ll216
	.byte	5
	.uleb128	31
	.byte	13
# [459:3]
	.byte	2
	.uleb128	.Ll218-.Ll217
	.byte	5
	.uleb128	3
	.byte	13
# [461:17]
	.byte	2
	.uleb128	.Ll219-.Ll218
	.byte	5
	.uleb128	17
	.byte	14
# [463:19]
	.byte	2
	.uleb128	.Ll220-.Ll219
	.byte	5
	.uleb128	19
	.byte	14
# [464:9]
	.byte	2
	.uleb128	.Ll221-.Ll220
	.byte	5
	.uleb128	9
	.byte	13
# [465:32]
	.byte	2
	.uleb128	.Ll222-.Ll221
	.byte	5
	.uleb128	32
	.byte	13
# [364:1]
	.byte	2
	.uleb128	.Ll223-.Ll222
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-101
	.byte	1
# [469:6]
	.byte	2
	.uleb128	.Ll224-.Ll223
	.byte	5
	.uleb128	6
	.byte	117
# [470:13]
	.byte	2
	.uleb128	.Ll225-.Ll224
	.byte	5
	.uleb128	13
	.byte	13
# [473:10]
	.byte	2
	.uleb128	.Ll226-.Ll225
	.byte	5
	.uleb128	10
	.byte	15
# [474:11]
	.byte	2
	.uleb128	.Ll227-.Ll226
	.byte	5
	.uleb128	11
	.byte	13
# [475:7]
	.byte	2
	.uleb128	.Ll228-.Ll227
	.byte	5
	.uleb128	7
	.byte	13
# [476:15]
	.byte	2
	.uleb128	.Ll229-.Ll228
	.byte	5
	.uleb128	15
	.byte	13
# [491:1]
	.byte	2
	.uleb128	.Ll230-.Ll229
	.byte	5
	.uleb128	1
	.byte	27
# [493:1]
	.byte	2
	.uleb128	.Ll231-.Ll230
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll232
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITNOTES
# [502:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll233
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	501
	.byte	1
# [503:1]
	.byte	2
	.uleb128	.Ll234-.Ll233
	.byte	13
# [505:10]
	.byte	2
	.uleb128	.Ll235-.Ll234
	.byte	5
	.uleb128	10
	.byte	14
# [506:7]
	.byte	2
	.uleb128	.Ll236-.Ll235
	.byte	5
	.uleb128	7
	.byte	13
# [503:1]
	.byte	2
	.uleb128	.Ll237-.Ll236
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-3
	.byte	1
# [508:1]
	.byte	2
	.uleb128	.Ll238-.Ll237
	.byte	17
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll239
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: INIT$_$FMSYNTH
# function: FMSYNTH_$$_init$
# [512:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll240
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	511
	.byte	1
# [514:1]
	.byte	2
	.uleb128	.Ll241-.Ll240
	.byte	14
# [515:1]
	.byte	2
	.uleb128	.Ll242-.Ll241
	.byte	13
# [516:1]
	.byte	2
	.uleb128	.Ll243-.Ll242
	.byte	13
# [517:1]
	.byte	2
	.uleb128	.Ll244-.Ll243
	.byte	13
# [518:1]
	.byte	2
	.uleb128	.Ll245-.Ll244
	.byte	13
# [521:1]
	.byte	2
	.uleb128	.Ll246-.Ll245
	.byte	15
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll247
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FINALIZE$_$FMSYNTH
# function: FMSYNTH_$$_finalize_implicit$
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll248
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

