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
# [127] begin
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
.Lt3:
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
# [128] currentdir2:='C:\s\';
	leaq	_$FMSYNTH$_Ld1(%rip),%rdx
	leaq	-648(%rbp),%rcx
	call	fpc_ansistr_assign
.Ll7:
# [129] if findfirst(currentdir2+'*.s2',faAnyFile,sr)=0 then
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
# [131] fh:=fileopen(currentdir2+sr.name,$40);
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
# [132] fileread(fh,dummy,16);
	movslq	%esi,%rcx
	leaq	-664(%rbp),%rdx
	movl	$16,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll10:
# [133] waves1[sampleindex1].name:=copy(sr.name,1,length(sr.name)-3);
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
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$48,%rax,%rcx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rax
	leaq	(%rax,%rcx),%rcx
	call	fpc_ansistr_assign
.Ll11:
# [134] waves1[sampleindex1].wave:=getmem(8*1024);
	movq	$8192,%rcx
	call	SYSTEM_$$_GETMEM$QWORD$$POINTER
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$48,%rdx,%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rcx
	movq	%rax,32(%rcx,%rdx)
.Ll12:
# [135] waves1[sampleindex1].len:=1024;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rax
	movl	$1024,8(%rax,%rdx)
.Ll13:
# [136] waves1[sampleindex1].lend:=1024;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$48,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movl	$1024,16(%rdx,%rax)
.Ll14:
# [137] waves1[sampleindex1].lstart:=0;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$48,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movl	$0,12(%rdx,%rax)
.Ll15:
# [138] waves1[sampleindex1].speed:=1024;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$48,%rax,%rax
	movq	_$FMSYNTH$_Ld3(%rip),%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rcx
	movq	%rdx,24(%rcx,%rax)
.Ll16:
# [139] waves1[sampleindex1].note:=0;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$48,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movl	$0,40(%rdx,%rax)
.Ll17:
# [140] waves1[sampleindex1].finetune:=0;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rax
	movl	$0,44(%rax,%rdx)
.Ll18:
# [142] fileread(fh,intwave,2048);
	movslq	%esi,%rcx
	leaq	-2720(%rbp),%rdx
	movl	$2048,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll19:
# [143] for i:=0 to 1023 do waves1[sampleindex1].wave[i]:=intwave[i]/32768;
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj92:
	addl	$1,%ebx
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$48,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movq	32(%rdx,%rax),%rcx
	movslq	%ebx,%rax
# PeepHole Optimization,var2a
	movl	%ebx,%edx
	movswl	-2720(%rbp,%rdx,2),%edx
	cvtsi2sd	%edx,%xmm0
	mulsd	_$FMSYNTH$_Ld4(%rip),%xmm0
	movsd	%xmm0,(%rcx,%rax,8)
	cmpl	$1023,%ebx
	jl	.Lj92
.Ll20:
# [144] fileclose(fh);
	movslq	%esi,%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll21:
# [146] sounds[soundindex].name:=waves1[sampleindex1].name;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$48,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movq	(%rdx,%rax),%rdx
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rax,%rcx),%rcx
	call	fpc_ansistr_assign
.Ll22:
# [147] sounds[soundindex].samples[0]:= waves1[sampleindex1];
	leaq	INIT_$FMSYNTH_$$_TWAVESAMPLE1(%rip),%r8
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	leaq	8(%rdx,%rax),%rdx
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$48,%rax,%rcx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rax
	leaq	(%rax,%rcx),%rcx
	call	fpc_copy_proc
.Ll23:
# [148] for i:=0 to 127 do sounds[soundindex].notes[i]:=0;
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj109:
	addl	$1,%ebx
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	leaq	(%rcx,%rdx),%rdx
	movl	$0,2312(%rdx,%rax,4)
	cmpl	$127,%ebx
	jl	.Lj109
.Ll24:
# [149] sampleindex1+=1;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	leal	1(%eax),%eax
	movl	%eax,TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip)
.Ll25:
# [150] soundindex+=1;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	leal	1(%eax),%eax
	movl	%eax,TC_$FMSYNTH_$$_SOUNDINDEX(%rip)
.Ll26:
# [151] until (findnext(sr)<>0) or (sampleindex0=128);
	leaq	-640(%rbp),%rcx
	call	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj34
	cmpl	$128,TC_$FMSYNTH_$$_SAMPLEINDEX0(%rip)
	jne	.Lj32
.Lj34:
.Lj17:
.Ll27:
# [152] findclose(sr);
	leaq	-640(%rbp),%rcx
	call	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
.Lj121:
.Ll28:
	nop
.Lj8:
	movq	%rbp,%rcx
	call	FMSYNTH$_$INITSAMPLES0_$$_fin$0
.Ll29:
# [153] end;
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
.Lt2:
.Ll30:

.section .text.n_fmsynth$_$initsamples1_$$_fin$1,"x"
	.balign 16,0x90
FMSYNTH$_$INITSAMPLES1_$$_fin$1:
.Lc11:
.seh_proc FMSYNTH$_$INITSAMPLES1_$$_fin$1
.Ll31:
# [171] begin
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
.Ll32:
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
.Lt5:
.Ll33:

.section .text.n_fmsynth_$$_initsamples1,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITSAMPLES1
FMSYNTH_$$_INITSAMPLES1:
.Lc16:
# Temps allocated between rbp-2304 and rbp-2192
.seh_proc FMSYNTH_$$_INITSAMPLES1
.Ll34:
	pushq	%rbp
.seh_pushreg %rbp
.Lc18:
.Lc19:
	movq	%rsp,%rbp
.Lc20:
	leaq	-2336(%rsp),%rsp
.seh_stackalloc 2336
# Var k located in register eax
# Var j located in register esi
# Var i located in register ebx
# Var fh located in register r12d
# Var intwave located in register rdi
# Var integrator located in register xmm6
# Var maxval located in register xmm8
# Var ffti located in register eax
# Var fftv located in register xmm0
	movq	%rbx,-2304(%rbp)
	movq	%rdi,-2296(%rbp)
	movq	%rsi,-2288(%rbp)
	movq	%r12,-2280(%rbp)
	movq	%r13,-2272(%rbp)
	movq	%r14,-2264(%rbp)
	movdqa	%xmm6,-2256(%rbp)
	movdqa	%xmm8,-2240(%rbp)
.seh_savereg %rbx, 32
.seh_savereg %rdi, 40
.seh_savereg %rsi, 48
.seh_savereg %r12, 56
.seh_savereg %r13, 64
.seh_savereg %r14, 72
.seh_savexmm %xmm6, 80
.seh_savexmm %xmm8, 96
.seh_endprologue
# Var sr located at rbp-640, size=OS_NO
# Var currentdir2 located at rbp-648, size=OS_64
# Var dummy located at rbp-904, size=OS_NO
# Var samplenum located at rbp-912, size=OS_16
# Var sampleinfo located at rbp-2192, size=OS_NO
.Ll35:
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rdx
	leaq	-640(%rbp),%rcx
	call	fpc_initialize
	movq	$0,-648(%rbp)
	movq	$0,-2208(%rbp)
	movq	$0,-2200(%rbp)
.Lj144:
	nop
.Lj140:
.Ll36:
# [172] currentdir2:='C:\xi\';
	leaq	_$FMSYNTH$_Ld5(%rip),%rdx
	leaq	-648(%rbp),%rcx
	call	fpc_ansistr_assign
.Ll37:
# [173] if findfirst(currentdir2+'*.xi',faAnyFile,sr)=0 then
	leaq	-2200(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	_$FMSYNTH$_Ld6(%rip),%r8
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
	jne	.Lj150
	.balign 8,0x90
.Lj165:
.Ll38:
# [175] fh:=fileopen(currentdir2+sr.name,$40);
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
.Ll39:
# [176] fileread(fh,dummy,21);  //text header
	movslq	%r12d,%rcx
	leaq	-904(%rbp),%rdx
	movl	$21,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll40:
# [177] fileread(fh,dummy,22);  // instr name
	movslq	%r12d,%rcx
	leaq	-904(%rbp),%rdx
	movl	$22,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll41:
# [178] for i:=0 to 21 do sounds[soundindex].name+=chr(dummy[i]);
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj196:
	addl	$1,%ebx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	movzbl	-904(%rbp,%rax,1),%edx
	leaq	-2208(%rbp),%rcx
	movl	$0,%r8d
	call	fpc_char_to_ansistr
	movq	-2208(%rbp),%r8
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	movq	(%rax,%rdx),%rdx
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rcx
	leaq	(%rcx,%rax),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
	cmpl	$21,%ebx
	jl	.Lj196
.Ll42:
# [179] fileread(fh,dummy,21);
	movslq	%r12d,%rcx
	leaq	-904(%rbp),%rdx
	movl	$21,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll43:
# [180] fileread(fh,dummy,$e8);  //inst headers
	movslq	%r12d,%rcx
	leaq	-904(%rbp),%rdx
	movl	$232,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll44:
# [181] for i:=0 to 95 do sounds[soundindex].notes[i]:=dummy[i+2];
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj225:
	addl	$1,%ebx
	movslq	%ebx,%rax
	movzbl	-902(%rbp,%rax,1),%r8d
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	leaq	(%rcx,%rdx),%rdx
	movl	%r8d,2312(%rdx,%rax,4)
	cmpl	$95,%ebx
	jl	.Lj225
.Ll45:
# [182] fileread(fh,samplenum,2);
	movslq	%r12d,%rcx
	leaq	-912(%rbp),%rdx
	movl	$2,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll46:
# [183] for i:=0 to samplenum-1 do fileread(fh,sampleinfo[i],40);
	movzwl	-912(%rbp),%eax
	leal	-1(%eax),%r13d
	movl	$0,%ebx
	cmpl	%ebx,%r13d
	jl	.Lj237
	subl	$1,%ebx
	.balign 8,0x90
.Lj238:
	addl	$1,%ebx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	leaq	-2192(%rbp,%rax),%rdx
	movslq	%r12d,%rcx
	movl	$40,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
	cmpl	%ebx,%r13d
	jg	.Lj238
.Lj237:
.Ll47:
# [184] for i:=0 to samplenum-1 do
	movzwl	-912(%rbp),%eax
	leal	-1(%eax),%r13d
	movl	$0,%ebx
	cmpl	%ebx,%r13d
	jl	.Lj248
	subl	$1,%ebx
	.balign 8,0x90
.Lj249:
	addl	$1,%ebx
# PeepHole Optimization,var2a
.Ll48:
# [186] waves1[sampleindex1].len:=sampleinfo[i].slen div 2;
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	movl	-2192(%rbp,%rax),%eax
	shrl	$1,%eax
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$48,%rdx,%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rcx
	movl	%eax,8(%rcx,%rdx)
.Ll49:
# [187] waves1[sampleindex1].name:='';
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$48,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	leaq	(%rdx,%rax),%rcx
	movq	$0,%rdx
	call	fpc_ansistr_assign
# PeepHole Optimization,var2a
.Ll50:
# [188] for j:=0 to sampleinfo[i].snl-1 do waves1[sampleindex1].name+=sampleinfo[i].samplename[j];
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	movzbl	-2175(%rbp,%rax),%eax
	leal	-1(%eax),%r14d
	movl	$0,%esi
	cmpl	%esi,%r14d
	jl	.Lj259
	subl	$1,%esi
	.balign 8,0x90
.Lj260:
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
	imulq	$48,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movq	(%rdx,%rax),%rdx
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$48,%rax,%rcx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rax
	leaq	(%rax,%rcx),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
	cmpl	%esi,%r14d
	jg	.Lj260
.Lj259:
# PeepHole Optimization,var2a
.Ll51:
# [190] intwave:=getmem(sampleinfo[i].slen);
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	movl	-2192(%rbp,%rax),%ecx
	call	SYSTEM_$$_GETMEM$QWORD$$POINTER
	movq	%rax,%rdi
# PeepHole Optimization,var2a
.Ll52:
# [191] waves1[sampleindex1].wave:=getmem(4*sampleinfo[i].slen+1024);
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	movl	-2192(%rbp,%rax),%eax
	shlq	$2,%rax
	leaq	1024(%rax),%rcx
	call	SYSTEM_$$_GETMEM$QWORD$$POINTER
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$48,%rdx,%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rcx
	movq	%rax,32(%rcx,%rdx)
# PeepHole Optimization,var2a
.Ll53:
# [192] fileread(fh,intwave^,sampleinfo[i].slen);
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	movl	-2192(%rbp,%rax),%r8d
	movq	%rdi,%rdx
	movslq	%r12d,%rcx
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll54:
# [193] integrator:=0;
	movsd	_$FMSYNTH$_Ld7(%rip),%xmm6
.Ll55:
# [194] maxval:=0;
	movsd	_$FMSYNTH$_Ld7(%rip),%xmm8
# PeepHole Optimization,var2a
.Ll56:
# [196] for j:=0 to (sampleinfo[i].slen div 2)-1 do
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
	jl	.Lj296
	subl	$1,%esi
	.balign 8,0x90
.Lj297:
	addl	$1,%esi
.Ll57:
# [198] integrator+=intwave[j]/32768;
	movslq	%esi,%rdx
	movswl	(%rdi,%rdx,2),%edx
	cvtsi2sd	%edx,%xmm0
	mulsd	_$FMSYNTH$_Ld4(%rip),%xmm0
	addsd	%xmm6,%xmm0
	movapd	%xmm0,%xmm6
.Ll58:
# [199] if abs(integrator)>maxval then maxval:=abs(integrator);
	movapd	%xmm6,%xmm0
	andpd	FPC_ABSMASK_DOUBLE(%rip),%xmm0
	comisd	%xmm0,%xmm8
	jp	.Lj301
	jnb	.Lj301
	movapd	%xmm6,%xmm0
	andpd	FPC_ABSMASK_DOUBLE(%rip),%xmm0
	movapd	%xmm0,%xmm8
.Lj301:
.Ll59:
# [200] waves1[sampleindex1].wave[j]:=integrator;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$48,%rdx,%rcx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movq	32(%rdx,%rcx),%rcx
	movslq	%esi,%rdx
	movsd	%xmm6,(%rcx,%rdx,8)
.Ll60:
	cmpl	%esi,%eax
	jg	.Lj297
.Lj296:
# PeepHole Optimization,var2a
.Ll61:
# [202] for j:= (sampleinfo[i].slen div 2) to (sampleinfo[i].slen div 2)+127 do
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	movl	-2192(%rbp,%rax),%eax
	shrl	$1,%eax
	leal	127(%eax),%eax
# PeepHole Optimization,var2a
	movl	%ebx,%edx
	imulq	$40,%rdx,%rdx
	movl	-2192(%rbp,%rdx),%edx
	shrl	$1,%edx
	movl	%edx,%esi
	cmpl	%esi,%eax
	jl	.Lj310
	subl	$1,%esi
	.balign 8,0x90
.Lj311:
	addl	$1,%esi
.Ll62:
# [204] waves1[sampleindex1].wave[j]:=0;       // add a silence to the end of the sample
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$48,%rdx,%rcx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movq	32(%rdx,%rcx),%r8
	movslq	%esi,%rdx
	movq	_$FMSYNTH$_Ld7(%rip),%rcx
	movq	%rcx,(%r8,%rdx,8)
.Ll63:
	cmpl	%esi,%eax
	jg	.Lj311
.Lj310:
# PeepHole Optimization,var2a
.Ll64:
# [208] for j:=0 to (sampleinfo[i].slen div 2)-1 do waves1[sampleindex1].wave[j]*=1/maxval;
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
	jl	.Lj317
	subl	$1,%esi
	.balign 8,0x90
.Lj318:
	addl	$1,%esi
.Ll65:
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%r8d
# PeepHole Optimization,var2a
.Ll66:
	movl	%r8d,%ecx
	imulq	$48,%rcx,%rcx
	movq	32(%rdx,%rcx),%r9
	movslq	%esi,%rcx
	movsd	_$FMSYNTH$_Ld8(%rip),%xmm0
	divsd	%xmm8,%xmm0
	mulsd	(%r9,%rcx,8),%xmm0
	andl	$4294967295,%r8d
	imulq	$48,%r8,%r8
	movq	32(%rdx,%r8),%rdx
	movsd	%xmm0,(%rdx,%rcx,8)
	cmpl	%esi,%eax
	jg	.Lj318
.Lj317:
.Ll67:
# [209] freemem(intwave);
	movq	%rdi,%rcx
	call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
# PeepHole Optimization,var2a
.Ll68:
# [210] if (sampleinfo[i].sampletype and 1) =0 then begin waves1[sampleindex1].lstart:=waves1[sampleindex1].len; waves1[sampleindex1].lend:=waves1[sampleindex1].len+127 ;  end else
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
# PeepHole Optimization,var15
	movw	-2178(%rbp,%rax),%ax
	andw	$1,%ax
	testw	%ax,%ax
	jne	.Lj330
.Ll69:
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rax
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%ecx
# PeepHole Optimization,var2a
.Ll70:
	movl	%ecx,%edx
	imulq	$48,%rdx,%r8
	andl	$4294967295,%ecx
	imulq	$48,%rcx,%rdx
	movl	8(%rax,%rdx),%edx
	movl	%edx,12(%rax,%r8)
.Ll71:
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rax
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%ecx
# PeepHole Optimization,var2a
.Ll72:
	movl	%ecx,%edx
	imulq	$48,%rdx,%rdx
	movl	8(%rax,%rdx),%edx
	leal	127(%edx),%r8d
	andl	$4294967295,%ecx
	imulq	$48,%rcx,%rdx
	movl	%r8d,16(%rax,%rdx)
	jmp	.Lj343
.Lj330:
# PeepHole Optimization,var2a
.Ll73:
# [211] begin waves1[sampleindex1].lstart:=sampleinfo[i].sls div 2;
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	movl	-2188(%rbp,%rax),%eax
	shrl	$1,%eax
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$48,%rdx,%rcx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movl	%eax,12(%rdx,%rcx)
# PeepHole Optimization,var2a
.Ll74:
# [212] waves1[sampleindex1].lend:=((sampleinfo[i].sls+sampleinfo[i].sll) div 2); end;
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
	imulq	$48,%rdx,%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rcx
	movl	%eax,16(%rcx,%rdx)
.Lj343:
# PeepHole Optimization,var2a
.Ll75:
# [216] waves1[sampleindex1].speed:= 31.964988724534648167259106371593 *power(a212,sampleinfo[i].relnote + sampleinfo[i].finetune/128);
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	movsbl	-2176(%rbp,%rax),%eax
	cvtsi2sd	%eax,%xmm0
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$40,%rax,%rax
	movsbl	-2179(%rbp,%rax),%eax
	cvtsi2sd	%eax,%xmm1
	mulsd	_$FMSYNTH$_Ld10(%rip),%xmm1
	addsd	%xmm0,%xmm1
	movsd	_$FMSYNTH$_Ld11(%rip),%xmm0
	call	MATH_$$_POWER$DOUBLE$DOUBLE$$DOUBLE
	mulsd	_$FMSYNTH$_Ld9(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$48,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movsd	%xmm0,24(%rdx,%rax)
.Ll76:
# [218] sounds[soundindex].samples[i]:=waves1[sampleindex1];
	leaq	INIT_$FMSYNTH_$$_TWAVESAMPLE1(%rip),%r8
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	leaq	8(%rax,%rdx),%rdx
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$48,%rax,%rcx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rax
	leaq	(%rax,%rcx),%rcx
	call	fpc_copy_proc
.Ll77:
# [219] sampleindex1+=1;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	leal	1(%eax),%eax
	movl	%eax,TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip)
.Ll78:
	cmpl	%ebx,%r13d
	jg	.Lj249
.Lj248:
.Ll79:
# [221] soundindex+=1;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	leal	1(%eax),%eax
	movl	%eax,TC_$FMSYNTH_$$_SOUNDINDEX(%rip)
.Ll80:
# [222] fileclose(fh);
	movslq	%r12d,%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll81:
# [223] until (findnext(sr)<>0) or (sampleindex1=16384);
	leaq	-640(%rbp),%rcx
	call	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj167
	cmpl	$16384,TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip)
	jne	.Lj165
.Lj167:
.Lj150:
.Ll82:
# [224] findclose(sr);
	leaq	-640(%rbp),%rcx
	call	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
.Lj371:
.Ll83:
	nop
.Lj141:
	movq	%rbp,%rcx
	call	FMSYNTH$_$INITSAMPLES1_$$_fin$1
.Ll84:
# [225] end;
	movq	-2304(%rbp),%rbx
	movq	-2296(%rbp),%rdi
	movq	-2288(%rbp),%rsi
	movq	-2280(%rbp),%r12
	movq	-2272(%rbp),%r13
	movq	-2264(%rbp),%r14
	movdqa	-2256(%rbp),%xmm6
	movdqa	-2240(%rbp),%xmm8
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj140
	.rva	.Lj141
	.rva	FMSYNTH$_$INITSAMPLES1_$$_fin$1

.section .text.n_fmsynth_$$_initsamples1,"x"
.seh_endproc
.Lc17:
.Lt4:
.Ll85:

.section .text.n_fmsynth$_$initsamples2_$$_fin$2,"x"
	.balign 16,0x90
FMSYNTH$_$INITSAMPLES2_$$_fin$2:
.Lc21:
.seh_proc FMSYNTH$_$INITSAMPLES2_$$_fin$2
.Ll86:
# [241] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc23:
.Lc24:
	movq	%rcx,%rbp
.Lc25:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
# Var $parentfp located in register rbp
.seh_endprologue
.Ll87:
	leaq	-1320(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rax
	movq	%rax,%rdx
	leaq	-640(%rbp),%rcx
	call	fpc_finalize
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rdx
	leaq	-1280(%rbp),%rcx
	call	fpc_finalize
	leaq	-1288(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	-1296(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc22:
.Lt7:
.Ll88:

.section .text.n_fmsynth_$$_initsamples2,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITSAMPLES2
FMSYNTH_$$_INITSAMPLES2:
.Lc26:
# Temps allocated between rbp-1432 and rbp-1312
.seh_proc FMSYNTH_$$_INITSAMPLES2
.Ll89:
	pushq	%rbp
.seh_pushreg %rbp
.Lc28:
.Lc29:
	movq	%rsp,%rbp
.Lc30:
	leaq	-1472(%rsp),%rsp
.seh_stackalloc 1472
# Var i located in register ebx
# Var j located in register esi
# Var fh located in register edi
# Var intwave located in register r12
# Var filelength located in register r13
# Var oldsi located in register r15d
# Var maxval located in register xmm6
	movq	%rbx,-1432(%rbp)
	movq	%rdi,-1424(%rbp)
	movq	%rsi,-1416(%rbp)
	movq	%r12,-1408(%rbp)
	movq	%r13,-1400(%rbp)
	movq	%r14,-1392(%rbp)
	movq	%r15,-1384(%rbp)
	movdqa	%xmm6,-1376(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rdi, 48
.seh_savereg %rsi, 56
.seh_savereg %r12, 64
.seh_savereg %r13, 72
.seh_savereg %r14, 80
.seh_savereg %r15, 88
.seh_savexmm %xmm6, 96
.seh_endprologue
# Var sr located at rbp-640, size=OS_NO
# Var sr2 located at rbp-1280, size=OS_NO
# Var currentdir2 located at rbp-1288, size=OS_64
# Var currentdir3 located at rbp-1296, size=OS_64
# Var dummy located at rbp-1312, size=OS_128
.Ll90:
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rdx
	leaq	-640(%rbp),%rcx
	call	fpc_initialize
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rdx
	leaq	-1280(%rbp),%rcx
	call	fpc_initialize
	movq	$0,-1288(%rbp)
	movq	$0,-1296(%rbp)
	movq	$0,-1320(%rbp)
.Lj394:
	nop
.Lj390:
.Ll91:
# [242] currentdir2:='C:\wav\';
	leaq	_$FMSYNTH$_Ld12(%rip),%rdx
	leaq	-1288(%rbp),%rcx
	call	fpc_ansistr_assign
.Ll92:
# [243] if findfirst(currentdir2+'*',faDirectory,sr)=0 then
	leaq	-1320(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	_$FMSYNTH$_Ld13(%rip),%r8
	movq	-1288(%rbp),%rdx
	leaq	-1320(%rbp),%rcx
	movl	$65535,%r9d
	call	fpc_ansistr_concat
	movq	-1320(%rbp),%r14
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rdx
	leaq	-640(%rbp),%rcx
	call	fpc_finalize
	leaq	-640(%rbp),%r8
	movl	$16,%edx
	movq	%r14,%rcx
	call	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj400
	.balign 8,0x90
.Lj415:
.Ll93:
# [245] if (sr.name='.') or (sr.name='..') then goto p999;
	leaq	_$FMSYNTH$_Ld14(%rip),%rdx
	movq	-616(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj429
	leaq	_$FMSYNTH$_Ld15(%rip),%rdx
	movq	-616(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj429
.Ll94:
# [246] sounds[soundindex].name:=sr.name ;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rax,%rdx),%rcx
	movq	-616(%rbp),%rdx
	call	fpc_ansistr_assign
.Ll95:
# [247] currentdir3:=currentdir2+sr.name ;
	movq	-616(%rbp),%r8
	movq	-1288(%rbp),%rdx
	leaq	-1296(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
.Ll96:
# [248] oldsi:=sampleindex1;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%r15d
.Ll97:
# [249] i:=0;
	movl	$0,%ebx
.Ll98:
# [250] if findfirst(currentdir3+'\*.wav',faanyfile,sr2)=0 then
	leaq	-1320(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	_$FMSYNTH$_Ld16(%rip),%r8
	movq	-1296(%rbp),%rdx
	leaq	-1320(%rbp),%rcx
	movl	$65535,%r9d
	call	fpc_ansistr_concat
	movq	-1320(%rbp),%r14
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rdx
	leaq	-1280(%rbp),%rcx
	call	fpc_finalize
	leaq	-1280(%rbp),%r8
	movl	$511,%edx
	movq	%r14,%rcx
	call	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj447
	.balign 8,0x90
.Lj462:
.Ll99:
# [254] fh:= fileopen(currentdir3+'\'+sr2.name,$40);
	leaq	-1320(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movq	-1296(%rbp),%rax
	movq	%rax,-1344(%rbp)
	leaq	_$FMSYNTH$_Ld17(%rip),%rax
	movq	%rax,-1336(%rbp)
	movq	-1256(%rbp),%rax
	movq	%rax,-1328(%rbp)
	leaq	-1344(%rbp),%rdx
	leaq	-1320(%rbp),%rcx
	movl	$65535,%r9d
	movq	$2,%r8
	call	fpc_ansistr_concat_multi
	movq	-1320(%rbp),%rcx
	movl	$64,%edx
	call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$QWORD
	movl	%eax,%edi
.Ll100:
# [255] filelength:=fileseek(fh,0,fsfromend)-44;
	movslq	%edi,%rcx
	movl	$2,%r8d
	movl	$0,%edx
	call	SYSUTILS_$$_FILESEEK$QWORD$LONGINT$LONGINT$$LONGINT
	movslq	%eax,%rax
	leaq	-44(%rax),%rax
	movq	%rax,%r13
.Ll101:
# [256] fileseek(fh,44,fsfrombeginning);
	movslq	%edi,%rcx
	movl	$0,%r8d
	movl	$44,%edx
	call	SYSUTILS_$$_FILESEEK$QWORD$LONGINT$LONGINT$$LONGINT
.Ll102:
# [257] waves1[sampleindex1].name:=sr.name+' '+copy(sr2.name,1,length(sr2.name)-4);
	movq	-616(%rbp),%rax
	movq	%rax,-1344(%rbp)
	leaq	_$FMSYNTH$_Ld18(%rip),%rax
	movq	%rax,-1336(%rbp)
	movq	-1256(%rbp),%rax
	testq	%rax,%rax
	je	.Lj497
	movq	-8(%rax),%rax
.Lj497:
	leaq	-4(%rax),%r9
	movq	-1256(%rbp),%rdx
	leaq	-1320(%rbp),%rcx
	movq	$1,%r8
	call	fpc_ansistr_copy
	movq	-1320(%rbp),%rax
	movq	%rax,-1328(%rbp)
	leaq	-1344(%rbp),%rdx
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$48,%rax,%rcx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rax
	leaq	(%rax,%rcx),%rcx
	movl	$0,%r9d
	movq	$2,%r8
	call	fpc_ansistr_concat_multi
.Ll103:
# [258] waves1[sampleindex1].wave:=getmem(4*filelength+1024);
	movq	%r13,%rax
	shlq	$2,%rax
	leaq	1024(%rax),%rcx
	call	SYSTEM_$$_GETMEM$QWORD$$POINTER
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$48,%rdx,%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rcx
	movq	%rax,32(%rcx,%rdx)
.Ll104:
# [259] waves1[sampleindex1].len:=(filelength) div 2;
	movq	%r13,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$1,%rdx
	addq	%rdx,%rax
	sarq	$1,%rax
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$48,%rdx,%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rcx
	movl	%eax,8(%rcx,%rdx)
.Ll105:
# [260] waves1[sampleindex1].lend:=(filelength div 2)+128;
	movq	%r13,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$1,%rdx
	addq	%rdx,%rax
	sarq	$1,%rax
	leaq	128(%rax),%rax
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$48,%rdx,%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rcx
	movl	%eax,16(%rcx,%rdx)
.Ll106:
# [261] waves1[sampleindex1].lstart:=filelength div 2;
	movq	%r13,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$1,%rdx
	addq	%rdx,%rax
	sarq	$1,%rax
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$48,%rdx,%rcx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movl	%eax,12(%rdx,%rcx)
.Ll107:
# [262] waves1[sampleindex1].speed:=1024;  // todo!
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$48,%rax,%rcx
	movq	_$FMSYNTH$_Ld3(%rip),%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rax
	movq	%rdx,24(%rax,%rcx)
.Ll108:
# [263] waves1[sampleindex1].note:=0;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$48,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movl	$0,40(%rdx,%rax)
.Ll109:
# [264] waves1[sampleindex1].finetune:=0;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$48,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movl	$0,44(%rdx,%rax)
.Ll110:
# [265] intwave:=getmem(filelength);
	movq	%r13,%rcx
	call	SYSTEM_$$_GETMEM$QWORD$$POINTER
	movq	%rax,%r12
.Ll111:
# [266] fileread(fh,intwave^,filelength) ;
	movl	%r13d,%r8d
	movq	%r12,%rdx
	movslq	%edi,%rcx
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll112:
# [267] maxval:=0;
	movsd	_$FMSYNTH$_Ld7(%rip),%xmm6
.Ll113:
# [268] for j:=0 to filelength div 2 do begin waves1[sampleindex1].wave[j]:=intwave[j]/32768; if (abs(intwave[j])/32768)>maxval then maxval:=abs(intwave[j])/32768; end;
	movq	%r13,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$1,%rdx
	addq	%rdx,%rax
	sarq	$1,%rax
	movl	$0,%esi
	cmpl	%esi,%eax
	jl	.Lj541
	subl	$1,%esi
	.balign 8,0x90
.Lj542:
	addl	$1,%esi
	movslq	%esi,%rdx
	movswl	(%r12,%rdx,2),%ecx
	cvtsi2sd	%ecx,%xmm0
	mulsd	_$FMSYNTH$_Ld4(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%ecx
	imulq	$48,%rcx,%r8
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rcx
	movq	32(%rcx,%r8),%rcx
	movsd	%xmm0,(%rcx,%rdx,8)
	movslq	%esi,%rdx
	movswl	(%r12,%rdx,2),%edx
	movl	%edx,%ecx
	negl	%ecx
	cmovnsl	%ecx,%edx
	cvtsi2sd	%edx,%xmm0
	mulsd	_$FMSYNTH$_Ld4(%rip),%xmm0
	comisd	%xmm0,%xmm6
	jp	.Lj548
	jnb	.Lj548
	movslq	%esi,%rdx
	movswl	(%r12,%rdx,2),%edx
	movl	%edx,%ecx
	negl	%ecx
	cmovnsl	%ecx,%edx
	cvtsi2sd	%edx,%xmm0
	mulsd	_$FMSYNTH$_Ld4(%rip),%xmm0
	movapd	%xmm0,%xmm6
.Lj548:
	cmpl	%esi,%eax
	jg	.Lj542
.Lj541:
.Ll114:
# [269] for j:=0 to (filelength div 2)-1 do waves1[sampleindex1].wave[j]*=1/maxval;
	movq	%r13,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$1,%rdx
	addq	%rdx,%rax
	sarq	$1,%rax
	leaq	-1(%rax),%rax
	movl	$0,%esi
	cmpl	%esi,%eax
	jl	.Lj555
	subl	$1,%esi
	.balign 8,0x90
.Lj556:
	addl	$1,%esi
.Ll115:
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%r8d
# PeepHole Optimization,var2a
.Ll116:
	movl	%r8d,%ecx
	imulq	$48,%rcx,%rcx
	movq	32(%rdx,%rcx),%r9
	movslq	%esi,%rcx
	movsd	_$FMSYNTH$_Ld8(%rip),%xmm0
	divsd	%xmm6,%xmm0
	mulsd	(%r9,%rcx,8),%xmm0
	andl	$4294967295,%r8d
	imulq	$48,%r8,%r8
	movq	32(%rdx,%r8),%rdx
	movsd	%xmm0,(%rdx,%rcx,8)
	cmpl	%esi,%eax
	jg	.Lj556
.Lj555:
.Ll117:
# [270] freemem(intwave);
	movq	%r12,%rcx
	call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
.Ll118:
# [271] sounds[soundindex].samples[i]:=waves1[sampleindex1];
	leaq	INIT_$FMSYNTH_$$_TWAVESAMPLE1(%rip),%r8
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	leaq	8(%rax,%rdx),%rdx
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$48,%rax,%rcx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rax
	leaq	(%rax,%rcx),%rcx
	call	fpc_copy_proc
.Ll119:
# [272] case sr2.name of
	leaq	_$FMSYNTH$_Ld19(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj579
	leaq	_$FMSYNTH$_Ld20(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj587
	leaq	_$FMSYNTH$_Ld21(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj595
	leaq	_$FMSYNTH$_Ld22(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj603
	leaq	_$FMSYNTH$_Ld23(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj611
	leaq	_$FMSYNTH$_Ld24(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj619
	leaq	_$FMSYNTH$_Ld25(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj627
	leaq	_$FMSYNTH$_Ld26(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj635
	leaq	_$FMSYNTH$_Ld27(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj643
	leaq	_$FMSYNTH$_Ld28(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj651
	leaq	_$FMSYNTH$_Ld29(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj659
	leaq	_$FMSYNTH$_Ld30(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj667
	leaq	_$FMSYNTH$_Ld31(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj675
	leaq	_$FMSYNTH$_Ld32(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj683
	leaq	_$FMSYNTH$_Ld33(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj691
	leaq	_$FMSYNTH$_Ld34(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj699
	leaq	_$FMSYNTH$_Ld35(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj707
	leaq	_$FMSYNTH$_Ld36(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj715
	leaq	_$FMSYNTH$_Ld37(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj723
	leaq	_$FMSYNTH$_Ld38(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj731
	leaq	_$FMSYNTH$_Ld39(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj739
	leaq	_$FMSYNTH$_Ld40(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj747
	leaq	_$FMSYNTH$_Ld41(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj755
	leaq	_$FMSYNTH$_Ld42(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj763
	leaq	_$FMSYNTH$_Ld43(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj771
	leaq	_$FMSYNTH$_Ld44(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj779
	leaq	_$FMSYNTH$_Ld45(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj787
	leaq	_$FMSYNTH$_Ld46(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj795
	leaq	_$FMSYNTH$_Ld47(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj803
	leaq	_$FMSYNTH$_Ld48(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj811
	leaq	_$FMSYNTH$_Ld49(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj819
	leaq	_$FMSYNTH$_Ld50(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj827
	leaq	_$FMSYNTH$_Ld51(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj835
	leaq	_$FMSYNTH$_Ld52(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj843
	leaq	_$FMSYNTH$_Ld53(%rip),%rdx
	movq	-1256(%rbp),%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	jne	.Lj852
	jmp	.Lj851
.Lj595:
.Ll120:
# [273] 'G2.wav':begin for j:=0 to 43-12 do sounds[soundindex].notes[j]:=i; sounds[soundindex].samples[i].speed:=44100/fnotes[43]; end;
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj855:
	addl	$1,%esi
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%esi,%eax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	leaq	(%rcx,%rdx),%rdx
	movl	%ebx,2312(%rdx,%rax,4)
	cmpl	$31,%esi
	jl	.Lj855
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+344(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll121:
	jmp	.Lj852
.Lj619:
.Ll122:
# [274] 'G#2.wav':begin sounds[soundindex].notes[44-12]:=i; sounds[soundindex].samples[i].speed:=44100/fnotes[44]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	movl	%ebx,2440(%rax,%rdx)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+352(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll123:
	jmp	.Lj852
.Lj827:
.Ll124:
# [275] 'A2.wav':begin sounds[soundindex].notes[45-12]:=i;  sounds[soundindex].samples[i].speed:=400.90909090909090909090909090909; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	movl	%ebx,2444(%rax,%rdx)
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%r8
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rcx
	movq	_$FMSYNTH$_Ld55(%rip),%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%r8,%rax),%rax
	movq	%rdx,32(%rax,%rcx)
.Ll125:
	jmp	.Lj852
.Lj851:
.Ll126:
# [276] 'A#2.wav':begin sounds[soundindex].notes[46-12]:=i; sounds[soundindex].samples[i].speed:=44100/fnotes[46]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2448(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+368(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll127:
	jmp	.Lj852
.Lj803:
.Ll128:
# [277] 'B2.wav':begin sounds[soundindex].notes[47-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[47]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2452(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+376(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll129:
	jmp	.Lj852
.Lj755:
.Ll130:
# [278] 'C3.wav':begin sounds[soundindex].notes[48-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[48]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2456(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+384(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll131:
	jmp	.Lj852
.Lj779:
.Ll132:
# [279] 'C#3.wav':begin sounds[soundindex].notes[49-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[49]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2460(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+392(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll133:
	jmp	.Lj852
.Lj707:
.Ll134:
# [280] 'D3.wav':begin sounds[soundindex].notes[50-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[50]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2464(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+400(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll135:
	jmp	.Lj852
.Lj731:
.Ll136:
# [281] 'D#3.wav':begin sounds[soundindex].notes[51-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[51]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2468(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+408(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll137:
	jmp	.Lj852
.Lj683:
.Ll138:
# [282] 'E3.wav':begin sounds[soundindex].notes[52-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[52]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2472(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+416(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll139:
	jmp	.Lj852
.Lj643:
.Ll140:
# [283] 'F3.wav':begin sounds[soundindex].notes[53-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[53]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2476(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+424(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll141:
	jmp	.Lj852
.Lj659:
.Ll142:
# [284] 'F#3.wav':begin sounds[soundindex].notes[54-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[54]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2480(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+432(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll143:
	jmp	.Lj852
.Lj587:
.Ll144:
# [285] 'G3.wav':begin sounds[soundindex].notes[55-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[55]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2484(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+440(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll145:
	jmp	.Lj852
.Lj611:
.Ll146:
# [286] 'G#3.wav':begin sounds[soundindex].notes[56-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[56]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2488(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+448(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll147:
	jmp	.Lj852
.Lj819:
.Ll148:
# [287] 'A3.wav':begin sounds[soundindex].notes[57-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[57]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2492(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+456(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll149:
	jmp	.Lj852
.Lj843:
.Ll150:
# [288] 'A#3.wav':begin sounds[soundindex].notes[58-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[58]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2496(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+464(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll151:
	jmp	.Lj852
.Lj795:
.Ll152:
# [289] 'B3.wav':begin sounds[soundindex].notes[59-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[59]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2500(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+472(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll153:
	jmp	.Lj852
.Lj747:
.Ll154:
# [290] 'C4.wav':begin sounds[soundindex].notes[60-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[60]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2504(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+480(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll155:
	jmp	.Lj852
.Lj771:
.Ll156:
# [291] 'C#4.wav':begin sounds[soundindex].notes[61-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[61]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2508(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+488(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll157:
	jmp	.Lj852
.Lj699:
.Ll158:
# [292] 'D4.wav':begin sounds[soundindex].notes[62-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[62]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2512(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+496(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll159:
	jmp	.Lj852
.Lj723:
.Ll160:
# [293] 'D#4.wav':begin sounds[soundindex].notes[63-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[63]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2516(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+504(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll161:
	jmp	.Lj852
.Lj675:
.Ll162:
# [294] 'E4.wav':begin sounds[soundindex].notes[64-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[64]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2520(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+512(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll163:
	jmp	.Lj852
.Lj635:
.Ll164:
# [295] 'F4.wav':begin sounds[soundindex].notes[65-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[65]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2524(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+520(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll165:
	jmp	.Lj852
.Lj651:
.Ll166:
# [296] 'F#4.wav':begin sounds[soundindex].notes[66-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[66]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2528(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+528(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll167:
	jmp	.Lj852
.Lj579:
.Ll168:
# [297] 'G4.wav':begin sounds[soundindex].notes[67-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[67]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2532(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+536(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll169:
	jmp	.Lj852
.Lj603:
.Ll170:
# [298] 'G#4.wav':begin sounds[soundindex].notes[68-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[68]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2536(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+544(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll171:
	jmp	.Lj852
.Lj811:
.Ll172:
# [299] 'A4.wav': begin sounds[soundindex].notes[69-12]:=i; sounds[soundindex].samples[i].speed:=44100/fnotes[69]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2540(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+552(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll173:
	jmp	.Lj852
.Lj835:
.Ll174:
# [300] 'A#4.wav':begin sounds[soundindex].notes[70-12]:=i; sounds[soundindex].samples[i].speed:=44100/fnotes[70]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2544(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+560(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll175:
	jmp	.Lj852
.Lj787:
.Ll176:
# [301] 'B4.wav':begin sounds[soundindex].notes[71-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[71]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	movl	%ebx,2548(%rax,%rdx)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+568(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll177:
	jmp	.Lj852
.Lj739:
.Ll178:
# [302] 'C5.wav':begin sounds[soundindex].notes[72-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[72]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2552(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+576(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll179:
	jmp	.Lj852
.Lj763:
.Ll180:
# [303] 'C#5.wav':begin sounds[soundindex].notes[73-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[73]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2556(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+584(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll181:
	jmp	.Lj852
.Lj691:
.Ll182:
# [304] 'D5.wav':begin sounds[soundindex].notes[74-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[74]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2560(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+592(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll183:
	jmp	.Lj852
.Lj715:
.Ll184:
# [305] 'D#5.wav':begin sounds[soundindex].notes[75-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[75]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2564(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+600(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll185:
	jmp	.Lj852
.Lj667:
.Ll186:
# [306] 'E5.wav':begin sounds[soundindex].notes[76-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[76]; end;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movl	%ebx,2568(%rdx,%rax)
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+608(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Ll187:
	jmp	.Lj852
.Lj627:
.Ll188:
# [307] 'F5.wav':begin for j:=77 to 127 do sounds[soundindex].notes[j-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[77]; end;
	movl	$77,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj994:
	addl	$1,%esi
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rdx
	movslq	%esi,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rcx
	leaq	(%rdx,%rcx),%rdx
	movl	%ebx,2264(%rdx,%rax,4)
	cmpl	$127,%esi
	jl	.Lj994
	movsd	_$FMSYNTH$_Ld54(%rip),%xmm0
	divsd	U_$FMSYNTH_$$_FNOTES+616(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	imulq	$2824,%rax,%rcx
# PeepHole Optimization,var2a
	movl	%ebx,%eax
	imulq	$48,%rax,%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movsd	%xmm0,32(%rax,%rdx)
.Lj852:
.Ll189:
# [310] sampleindex1+=1;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	leal	1(%eax),%eax
	movl	%eax,TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip)
.Ll190:
# [311] i+=1;
	leal	1(%ebx),%eax
	movl	%eax,%ebx
.Ll191:
# [312] until (findnext(sr2)<>0);
	leaq	-1280(%rbp),%rcx
	call	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	je	.Lj462
.Lj447:
.Ll192:
# [313] soundindex+=1;
	movl	TC_$FMSYNTH_$$_SOUNDINDEX(%rip),%eax
	leal	1(%eax),%eax
	movl	%eax,TC_$FMSYNTH_$$_SOUNDINDEX(%rip)
.Lj429:
.Ll193:
# [316] until (findnext(sr)<>0);
	leaq	-640(%rbp),%rcx
	call	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	je	.Lj415
.Lj400:
.Ll194:
# [317] findclose(sr);
	leaq	-640(%rbp),%rcx
	call	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
.Lj1011:
.Ll195:
	nop
.Lj391:
	movq	%rbp,%rcx
	call	FMSYNTH$_$INITSAMPLES2_$$_fin$2
.Ll196:
# [318] end;
	movq	-1432(%rbp),%rbx
	movq	-1424(%rbp),%rdi
	movq	-1416(%rbp),%rsi
	movq	-1408(%rbp),%r12
	movq	-1400(%rbp),%r13
	movq	-1392(%rbp),%r14
	movq	-1384(%rbp),%r15
	movdqa	-1376(%rbp),%xmm6
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj390
	.rva	.Lj391
	.rva	FMSYNTH$_$INITSAMPLES2_$$_fin$2

.section .text.n_fmsynth_$$_initsamples2,"x"
.seh_endproc
.Lc27:
.Lt6:
.Ll197:

.section .text.n_fmsynth_$$_initvoices,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITVOICES
FMSYNTH_$$_INITVOICES:
.Lc31:
.seh_proc FMSYNTH_$$_INITVOICES
.Ll198:
# [325] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc33:
.seh_stackalloc 32
# Var i located in register ebx
.seh_endprologue
# Var i located in register ebx
.Ll199:
# [326] for i:=0 to 31 do
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj1042:
	addl	$1,%ebx
.Ll200:
# [327] voices[i]:=TFmVoice.create;
	leaq	VMT_$FMSYNTH_$$_TFMVOICE(%rip),%rcx
	movq	$1,%rdx
	call	FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
# PeepHole Optimization,var2a
	movl	%ebx,%edx
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rcx
	movq	%rax,(%rcx,%rdx,8)
.Ll201:
	cmpl	$31,%ebx
	jl	.Lj1042
.Ll202:
# [328] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc32:
.Lt1:
.Ll203:

.section .text.n_fmsynth$_$tfmvoice_$__$$_create$$tfmvoice,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE:
.Lc34:
.seh_proc FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
.Ll204:
# [334] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc36:
.Lc37:
	movq	%rsp,%rbp
.Lc38:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var $vmt located at rbp-8, size=OS_64
# Var $self located at rbp-16, size=OS_64
# Var i located at rbp-24, size=OS_S32
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
.Ll205:
	cmpq	$1,-8(%rbp)
	jne	.Lj1052
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-16(%rbp)
.Lj1052:
	cmpq	$0,-16(%rbp)
	je	.Lj1049
.Lj1064:
.Ll206:
# [340] end;
	nop
.Lj1063:
.Ll207:
# [335] for i:=0 to 7 do operators[i]:=TFmOperator.create(0,@outputs);
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj1068:
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
	jl	.Lj1068
.Ll208:
# [336] for i:=0 to 7 do operators[i].init;
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj1081:
	addl	$1,-24(%rbp)
	movq	-16(%rbp),%rax
	movl	-24(%rbp),%edx
	movq	8(%rax,%rdx,8),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_INIT
	cmpl	$7,-24(%rbp)
	jl	.Lj1081
.Ll209:
# [337] for i:=0 to 7 do operators[i].outputtable:=@outputs;
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj1086:
	addl	$1,-24(%rbp)
.Ll210:
	movq	-16(%rbp),%rdx
.Ll211:
	movl	-24(%rbp),%eax
	movq	8(%rdx,%rax,8),%rcx
	leaq	72(%rdx),%rax
	movq	%rax,312(%rcx)
	cmpl	$7,-24(%rbp)
	jl	.Lj1086
.Ll212:
# [338] outmuls[0]:=1;
	movq	-16(%rbp),%rax
	movl	_$FMSYNTH$_Ld56(%rip),%edx
	movl	%edx,136(%rax)
.Ll213:
# [339] for i:=1 to 7 do outmuls[i]:=0;
	movl	$1,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj1095:
	addl	$1,-24(%rbp)
	movq	-16(%rbp),%rax
	movl	-24(%rbp),%edx
	movl	_$FMSYNTH$_Ld57(%rip),%ecx
	movl	%ecx,136(%rax,%rdx,4)
	cmpl	$7,-24(%rbp)
	jl	.Lj1095
.Ll214:
	cmpq	$0,-16(%rbp)
	je	.Lj1061
	cmpq	$0,-8(%rbp)
	je	.Lj1061
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*136(%rax)
	jmp	.Lj1061
.Lj1060:
	cmpq	$0,-8(%rbp)
	je	.Lj1104
	movq	-16(%rbp),%rcx
	movq	$-1,%rdx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
.Lj1104:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj1109:
	nop
.Lj1061:
.Lj1049:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj1063
	.rva	.Lj1060
	.rva	.Lj1061

.section .text.n_fmsynth$_$tfmvoice_$__$$_create$$tfmvoice,"x"
.seh_endproc
.Lc35:
.Lt20:
.Ll215:

.section .text.n_fmsynth$_$tfmvoice_$__$$_getsample$$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE:
.Lc39:
.seh_proc FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
.Ll216:
# [348] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc41:
.seh_stackalloc 40
# Var $self located in register rbx
# Var $result located in register xmm0
# Var i located in register edx
# Var j located in register eax
# Var output located in register xmm0
.seh_endprologue
	movq	%rcx,%rbx
# Var i located in register esi
.Ll217:
# [349] for i:=0 to 7 do
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj1114:
	addl	$1,%esi
# PeepHole Optimization,var2a
.Ll218:
# [350] outputs[i]:=operators[i].getsample;
	movl	%esi,%eax
	movq	8(%rbx,%rax,8),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
# PeepHole Optimization,var2a
	movl	%esi,%eax
	movsd	%xmm0,72(%rbx,%rax,8)
.Ll219:
	cmpl	$7,%esi
	jl	.Lj1114
# Var output located in register xmm0
.Ll220:
# [351] output:=0;
	movsd	_$FMSYNTH$_Ld7(%rip),%xmm0
# Var i located in register edx
.Ll221:
# [352] for i:=0 to 7 do output+=outmuls[i]*outputs[i];
	movl	$0,%edx
	subl	$1,%edx
	.balign 8,0x90
.Lj1123:
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
	jl	.Lj1123
# Var $result located in register xmm0
# Var output located in register xmm0
.Ll222:
# [354] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc40:
.Lt21:
.Ll223:

.section .text.n_fmsynth_$$_initflogtable,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITFLOGTABLE
FMSYNTH_$$_INITFLOGTABLE:
.Lc42:
# Var i located in register edx
# Var q located in register xmm1
# Var q2 located in register xmm2
# [364] begin
# Var q located in register xmm1
.Ll224:
# [365] q:=1;
	movsd	_$FMSYNTH$_Ld8(%rip),%xmm1
# Var q2 located in register xmm2
.Ll225:
# [367] q2:= 0.99989460157410704627595119007091;
	movsd	_$FMSYNTH$_Ld58(%rip),%xmm2
# Var i located in register edx
.Ll226:
# [368] for i:=65540 downto 0 do
	movl	$65540,%edx
	addl	$1,%edx
	.balign 8,0x90
.Lj1136:
	subl	$1,%edx
.Ll227:
# [370] if i>65535 then flogtable[i]:=1
	cmpl	$65535,%edx
	jng	.Lj1138
# PeepHole Optimization,var2a
	movl	%edx,%eax
	movq	_$FMSYNTH$_Ld8(%rip),%rcx
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%r8
	movq	%rcx,(%r8,%rax,8)
	jmp	.Lj1141
.Lj1138:
# PeepHole Optimization,var2a
.Ll228:
# [373] flogtable[i]:=q;
	movl	%edx,%eax
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%rcx
	movsd	%xmm1,(%rcx,%rax,8)
.Ll229:
# [374] q:=q*q2;
	movapd	%xmm1,%xmm0
	mulsd	%xmm2,%xmm0
	movapd	%xmm0,%xmm1
.Lj1141:
.Ll230:
	testl	%edx,%edx
	jg	.Lj1136
.Ll231:
# [377] flogtable[0]:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rax
	movq	%rax,U_$FMSYNTH_$$_FLOGTABLE(%rip)
.Ll232:
# [378] end;
	ret
.Lc43:
.Lt9:
.Ll233:

.section .text.n_fmsynth_$$_initfsinetable,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITFSINETABLE
FMSYNTH_$$_INITFSINETABLE:
.Lc44:
.seh_proc FMSYNTH_$$_INITFSINETABLE
.Ll234:
# [385] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc46:
.seh_stackalloc 32
# Var i located in register ebx
.seh_endprologue
# Var i located in register ebx
.Ll235:
# [386] for i:=-655360 to 655360 do fsinetable[i]:=sin(2*pi*i/1024);
	movl	$-655360,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj1152:
	addl	$1,%ebx
	cvtsi2sd	%ebx,%xmm0
	mulsd	_$FMSYNTH$_Ld59(%rip),%xmm0
	mulsd	_$FMSYNTH$_Ld60(%rip),%xmm0
	call	fpc_sin_real
	movslq	%ebx,%rax
	leaq	U_$FMSYNTH_$$_FSINETABLE(%rip),%rdx
	movsd	%xmm0,5242880(%rdx,%rax,8)
	cmpl	$655360,%ebx
	jl	.Lj1152
.Ll236:
# [387] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc45:
.Lt10:
.Ll237:

.section .text.n_fmsynth_$$_assign$longint$$tsinglestereosample,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE:
.Lc47:
# Var b located in register edx
# Var $result located in register rax
.Ll238:
# [391] begin
	movq	%rcx,%rax
.Ll239:
# [392] result[0]:=b;
	cvtsi2sd	%edx,%xmm0
	movsd	%xmm0,(%rax)
.Ll240:
# [393] result[1]:=b;
	cvtsi2sd	%edx,%xmm0
	movsd	%xmm0,8(%rax)
.Ll241:
# [394] end;
	ret
.Lc48:
.Lt11:
.Ll242:

.section .text.n_fmsynth_$$_star$tsinglestereosample$single$$tsinglestereosample,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE:
.Lc49:
# Temps allocated between rsp+8 and rsp+24
.seh_proc FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
.Ll243:
# [398] begin
	leaq	-24(%rsp),%rsp
.Lc51:
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
.Ll244:
# [399] result[0]:=a[0]*b;
	cvtss2sd	%xmm0,%xmm1
	mulsd	8(%rsp),%xmm1
	movsd	%xmm1,(%rax)
.Ll245:
# [400] result[1]:=a[1]*b;
	cvtss2sd	%xmm0,%xmm0
	mulsd	16(%rsp),%xmm0
	movsd	%xmm0,8(%rax)
.Ll246:
# [401] end;
	leaq	24(%rsp),%rsp
	ret
.seh_endproc
.Lc50:
.Lt12:
.Ll247:

.section .text.n_fmsynth$_$tfmoperator_$__$$_create$longint$pointer$$tfmoperator,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR:
.Lc52:
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
.Ll248:
# [408] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc54:
.Lc55:
	movq	%rsp,%rbp
.Lc56:
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
.Ll249:
	cmpq	$1,-24(%rbp)
	jne	.Lj1172
	movq	-32(%rbp),%rax
	movq	-32(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-32(%rbp)
.Lj1172:
	cmpq	$0,-32(%rbp)
	je	.Lj1169
.Lj1184:
.Ll250:
# [425] end;
	nop
.Lj1183:
.Ll251:
# [409] outputtable:=outs;
	movq	-32(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rdx,312(%rax)
.Ll252:
# [410] if mode=0 then wptr:=@fsinetable;
	cmpl	$0,-8(%rbp)
	jne	.Lj1189
	movq	-32(%rbp),%rax
	leaq	U_$FMSYNTH_$$_FSINETABLE(%rip),%rdx
	movq	%rdx,136(%rax)
.Lj1189:
.Ll253:
# [422] wlength:=1024;
	movq	-32(%rbp),%rdx
	movq	_$FMSYNTH$_Ld3(%rip),%rax
	movq	%rax,144(%rdx)
.Ll254:
	cmpq	$0,-32(%rbp)
	je	.Lj1181
	cmpq	$0,-24(%rbp)
	je	.Lj1181
	movq	-32(%rbp),%rcx
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	call	*136(%rax)
	jmp	.Lj1181
.Lj1180:
	cmpq	$0,-24(%rbp)
	je	.Lj1200
	movq	-32(%rbp),%rcx
	movq	$-1,%rdx
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
.Lj1200:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj1205:
	nop
.Lj1181:
.Lj1169:
	movq	-32(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj1183
	.rva	.Lj1180
	.rva	.Lj1181

.section .text.n_fmsynth$_$tfmoperator_$__$$_create$longint$pointer$$tfmoperator,"x"
.seh_endproc
.Lc53:
.Lt18:
.Ll255:

.section .text.n_fmsynth$_$tfmoperator_$__$$_destroy,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY:
.Lc57:
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
.Ll256:
# [429] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc59:
.seh_stackalloc 40
# Var $vmt located in register rsi
# Var $self located in register rbx
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
.Ll257:
	cmpq	$0,%rsi
	jng	.Lj1209
	movq	%rbx,%rcx
	movq	%rbx,%rax
	movq	(%rax),%rax
	call	*144(%rax)
.Lj1209:
.Ll258:
# [430] freemem(wptr);
	movq	136(%rbx),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
# Var $self located in register rbx
.Ll259:
# [431] inherited destroy;
	movq	%rbx,%rcx
	movq	$0,%rdx
	call	SYSTEM$_$TOBJECT_$__$$_DESTROY
.Ll260:
# [432] end;
	testq	%rbx,%rbx
	je	.Lj1219
	testq	%rsi,%rsi
	je	.Lj1219
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*112(%rax)
.Lj1219:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc58:
.Lt19:
.Ll261:

.section .text.n_fmsynth$_$tfmvoice_$__$$_setfreq$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE
FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE:
.Lc60:
.seh_proc FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE
.Ll262:
# [438] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-56(%rsp),%rsp
.Lc62:
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
.Ll263:
# [439] for i:=0 to 7 do operators[i].setfreq(afreq);
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj1227:
	addl	$1,%esi
# PeepHole Optimization,var2a
	movl	%esi,%eax
	movq	8(%rbx,%rax,8),%rcx
	movapd	%xmm6,%xmm1
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
	cmpl	$7,%esi
	jl	.Lj1227
.Ll264:
# [441] operators[1].setfreq(1.0043*afreq);
	movsd	_$FMSYNTH$_Ld61(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	16(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll265:
# [442] operators[2].setfreq(1.006*afreq);
	movsd	_$FMSYNTH$_Ld62(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	24(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll266:
# [443] operators[3].setfreq(1.0017*afreq);
	movsd	_$FMSYNTH$_Ld63(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	32(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll267:
# [444] operators[4].setfreq(0.995*afreq);
	movsd	_$FMSYNTH$_Ld64(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	40(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll268:
# [445] operators[5].setfreq(0.991*afreq);
	movsd	_$FMSYNTH$_Ld65(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	48(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll269:
# [446] operators[6].setfreq(0.9939*afreq);
	movsd	_$FMSYNTH$_Ld66(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	56(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll270:
# [447] operators[7].setfreq(0.9961*afreq);
	movsd	_$FMSYNTH$_Ld67(%rip),%xmm1
	mulsd	%xmm6,%xmm1
	movq	64(%rbx),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll271:
# [450] end;
	nop
	movdqa	32(%rsp),%xmm6
	leaq	56(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc61:
.Lt22:
.Ll272:

.section .text.n_fmsynth$_$tfmoperator_$__$$_setfreq$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE:
.Lc63:
# Var afreq located in register xmm0
# Var $self located in register rax
.Ll273:
# [454] begin
	movq	%rcx,%rax
	movapd	%xmm1,%xmm0
.Ll274:
# [455] if wavemode=0 then freq:=afreq*wlength/96000
	cmpl	$0,332(%rax)
	jne	.Lj1263
	movapd	%xmm0,%xmm1
	mulsd	144(%rax),%xmm1
	mulsd	_$FMSYNTH$_Ld68(%rip),%xmm1
	movsd	%xmm1,8(%rax)
	jmp	.Lj1266
.Lj1263:
.Ll275:
# [456] else freq:=(afreq*freqmod)/96000 ;// afreq*freqmod;
	mulsd	304(%rax),%xmm0
	mulsd	_$FMSYNTH$_Ld68(%rip),%xmm0
	movsd	%xmm0,8(%rax)
.Lj1266:
.Ll276:
# [457] end;
	ret
.Lc64:
.Lt17:
.Ll277:

.section .text.n_fmsynth$_$tfmoperator_$__$$_init,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_INIT
FMSYNTH$_$TFMOPERATOR_$__$$_INIT:
.Lc65:
# Var $self located in register rax
.Ll278:
# [461] begin
	movq	%rcx,%rax
.Ll279:
# [463] freq:=440*(65536/96000);    //341
	movq	_$FMSYNTH$_Ld69(%rip),%rdx
	movq	%rdx,8(%rax)
.Ll280:
# [464] c3:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,16(%rax)
.Ll281:
# [465] c4:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,24(%rax)
.Ll282:
# [466] c5:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,32(%rax)
.Ll283:
# [467] c6:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,40(%rax)
.Ll284:
# [468] lfo1:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,48(%rax)
.Ll285:
# [469] lfo2:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,56(%rax)
.Ll286:
# [470] lfo3:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,64(%rax)
.Ll287:
# [471] mul0:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,72(%rax)
.Ll288:
# [472] mul1:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,80(%rax)
.Ll289:
# [473] mul2:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,88(%rax)
.Ll290:
# [474] mul3:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,96(%rax)
.Ll291:
# [475] mul4:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,104(%rax)
.Ll292:
# [476] mul5:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,112(%rax)
.Ll293:
# [477] mul6:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,120(%rax)
.Ll294:
# [478] mul7:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,128(%rax)
.Ll295:
# [479] wlength:=1024;//65536;
	movq	_$FMSYNTH$_Ld3(%rip),%rdx
	movq	%rdx,144(%rax)
.Ll296:
# [480] adsrstate:=0;
	movl	$0,328(%rax)
.Ll297:
# [481] adsrval:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,168(%rax)
.Ll298:
# [482] ar1:=1/96;
	movq	_$FMSYNTH$_Ld70(%rip),%rdx
	movq	%rdx,176(%rax)
.Ll299:
# [483] ar2:=-1/96000;
	movq	_$FMSYNTH$_Ld71(%rip),%rdx
	movq	%rdx,192(%rax)
.Ll300:
# [484] ar3:=-1/960000;
	movq	_$FMSYNTH$_Ld72(%rip),%rdx
	movq	%rdx,208(%rax)
.Ll301:
# [485] ar4:=-3/960000;
	movq	_$FMSYNTH$_Ld73(%rip),%rdx
	movq	%rdx,224(%rax)
.Ll302:
# [486] av1:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,184(%rax)
.Ll303:
# [487] av2:=0.95;
	movq	_$FMSYNTH$_Ld74(%rip),%rdx
	movq	%rdx,200(%rax)
.Ll304:
# [488] av3:=0.9;
	movq	_$FMSYNTH$_Ld75(%rip),%rdx
	movq	%rdx,216(%rax)
.Ll305:
# [489] av4:=0.0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,232(%rax)
.Ll306:
# [490] adsrbias:=0;
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,256(%rax)
.Ll307:
# [491] vel:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,264(%rax)
.Ll308:
# [492] keysense:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,272(%rax)
.Ll309:
# [493] expr:=1;
	movq	_$FMSYNTH$_Ld8(%rip),%rdx
	movq	%rdx,280(%rax)
.Ll310:
# [498] end;
	ret
.Lc66:
.Lt16:
.Ll311:

.section .text.n_fmsynth$_$tfmoperator_$__$$_getsample$$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE:
.Lc67:
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
.Ll312:
# [515] begin
	leaq	-72(%rsp),%rsp
.Lc69:
.seh_stackalloc 72
	movdqa	%xmm6,(%rsp)
	movdqa	%xmm8,16(%rsp)
	movdqa	%xmm9,32(%rsp)
	movdqa	%xmm10,48(%rsp)
# Var $self located in register rcx
# Var $result located in register xmm0
# Var res64a located in register xmm10
# Var modulator located in register xmm3
# Var i located in register r9d
# Var j located in register r8d
# Var sample located in register xmm4
# Var freq2 located in register xmm2
# Var h1 located in register xmm5
# Var pa21 located in register edx
# Var d located in register xmm6
# Var s2 located in register xmm8
.seh_savexmm %xmm6, 0
.seh_savexmm %xmm8, 16
.seh_savexmm %xmm9, 32
.seh_savexmm %xmm10, 48
.seh_endprologue
.Ll313:
	movl	328(%rcx),%eax
.Ll314:
# [517] if (adsrstate=0) or ((adsrstate=6) and (adsrval=0)) then begin sample:=0; goto p999; end;
	testl	%eax,%eax
	je	.Lj1335
	cmpl	$6,%eax
	jne	.Lj1336
	movsd	168(%rcx),%xmm1
	comisd	_$FMSYNTH$_Ld7(%rip),%xmm1
	jp	.Lj1336
	jne	.Lj1336
.Lj1335:
	movsd	_$FMSYNTH$_Ld7(%rip),%xmm4
	jmp	.Lj1344
.Lj1336:
.Ll315:
# [521] freq2:=(freq+(c3*lfo1))*c4*lfo2;
	movsd	16(%rcx),%xmm1
	mulsd	48(%rcx),%xmm1
	addsd	8(%rcx),%xmm1
	mulsd	24(%rcx),%xmm1
	mulsd	56(%rcx),%xmm1
	movapd	%xmm1,%xmm2
.Ll316:
	movq	312(%rcx),%rax
.Ll317:
# [535] modulator:=outputtable[0]*mul0
	movsd	(%rax),%xmm9
	mulsd	72(%rcx),%xmm9
.Ll318:
# [536] +outputtable[1]*mul1
	movsd	8(%rax),%xmm1
	mulsd	80(%rcx),%xmm1
	addsd	%xmm9,%xmm1
.Ll319:
# [537] +outputtable[2]*mul2
	movsd	16(%rax),%xmm9
	mulsd	88(%rcx),%xmm9
	addsd	%xmm1,%xmm9
.Ll320:
# [538] +outputtable[3]*mul3
	movsd	24(%rax),%xmm1
	mulsd	96(%rcx),%xmm1
	addsd	%xmm9,%xmm1
.Ll321:
# [539] +outputtable[4]*mul4
	movsd	32(%rax),%xmm9
	mulsd	104(%rcx),%xmm9
	addsd	%xmm1,%xmm9
.Ll322:
# [540] +outputtable[5]*mul5
	movsd	40(%rax),%xmm1
	mulsd	112(%rcx),%xmm1
	addsd	%xmm9,%xmm1
.Ll323:
# [541] +outputtable[6]*mul6
	movsd	48(%rax),%xmm9
	mulsd	120(%rcx),%xmm9
	addsd	%xmm1,%xmm9
.Ll324:
# [542] +outputtable[7]*mul7;
	movsd	56(%rax),%xmm1
	mulsd	128(%rcx),%xmm1
	addsd	%xmm9,%xmm1
.Ll325:
	movapd	%xmm1,%xmm3
.Ll326:
# [544] pa:=pa+freq2;
	movsd	288(%rcx),%xmm1
	addsd	%xmm2,%xmm1
	movsd	%xmm1,288(%rcx)
.Ll327:
# [545] pa2:=pa+modulator;
	movsd	288(%rcx),%xmm1
	addsd	%xmm3,%xmm1
	movsd	%xmm1,296(%rcx)
.Ll328:
# [569] if pa>=wlend then
	movsd	288(%rcx),%xmm1
	comisd	160(%rcx),%xmm1
	jp	.Lj1356
	jnae	.Lj1356
.Ll329:
# [570] pa:=pa-wlend+wlstart;
	movsd	288(%rcx),%xmm1
	subsd	160(%rcx),%xmm1
	addsd	152(%rcx),%xmm1
	movsd	%xmm1,288(%rcx)
.Lj1356:
.Ll330:
# [572] pa2:=pa+modulator;
	movsd	288(%rcx),%xmm1
	addsd	%xmm3,%xmm1
	movsd	%xmm1,296(%rcx)
.Ll331:
# [574] if pa2>=wlend then
	movsd	296(%rcx),%xmm1
	comisd	160(%rcx),%xmm1
	jp	.Lj1363
	jnae	.Lj1363
	.balign 8,0x90
.Lj1365:
.Ll332:
# [575] repeat pa2:=pa2-wlend+wlstart until pa2<wlend;
	movsd	296(%rcx),%xmm1
	subsd	160(%rcx),%xmm1
	addsd	152(%rcx),%xmm1
	movsd	%xmm1,296(%rcx)
	movsd	296(%rcx),%xmm1
	comisd	160(%rcx),%xmm1
	jp	.Lj1365
	jnb	.Lj1365
.Lj1363:
.Ll333:
# [576] if pa2<0 then
	movsd	296(%rcx),%xmm1
	comisd	_$FMSYNTH$_Ld7(%rip),%xmm1
	jp	.Lj1372
	jnb	.Lj1372
	.balign 8,0x90
.Lj1374:
.Ll334:
# [577] repeat pa2:=pa2+wlength until pa2>=0;
	movsd	296(%rcx),%xmm1
	addsd	144(%rcx),%xmm1
	movsd	%xmm1,296(%rcx)
	movsd	296(%rcx),%xmm1
	comisd	_$FMSYNTH$_Ld7(%rip),%xmm1
	jp	.Lj1374
	jnae	.Lj1374
.Lj1372:
.Ll335:
# [580] intpa:=trunc(pa2);
	movsd	296(%rcx),%xmm1
	cvttsd2siq	%xmm1,%rax
# PeepHole Optimization,MovMov2Mov1
	movl	%eax,336(%rcx)
.Ll336:
# [581] pa21:=intpa+1; if pa21>=wlength then
	leal	1(%eax),%eax
	movl	%eax,%edx
	cvtsi2sd	%edx,%xmm1
	comisd	144(%rcx),%xmm1
	jp	.Lj1385
	jnae	.Lj1385
.Ll337:
# [582] if wavemode=0 then pa21:=0 else pa21:=trunc(wlstart);
	cmpl	$0,332(%rcx)
	jne	.Lj1388
	movl	$0,%edx
	jmp	.Lj1391
.Lj1388:
	movsd	152(%rcx),%xmm1
	cvttsd2siq	%xmm1,%rax
	movl	%eax,%edx
.Lj1391:
.Lj1385:
.Ll338:
# [583] sample:=wptr[intpa];
	movq	136(%rcx),%r10
	movslq	336(%rcx),%rax
	movsd	(%r10,%rax,8),%xmm4
.Ll339:
# [584] s2:=wptr[pa21];
	movq	136(%rcx),%r10
	movslq	%edx,%rax
	movsd	(%r10,%rax,8),%xmm8
.Ll340:
# [585] d:=pa2-intpa;
	cvtsi2sdl	336(%rcx),%xmm9
	movsd	296(%rcx),%xmm1
	subsd	%xmm9,%xmm1
	movapd	%xmm1,%xmm6
.Ll341:
# [586] sample:=(1-d)*sample+d*s2;
	movsd	_$FMSYNTH$_Ld8(%rip),%xmm1
	subsd	%xmm6,%xmm1
	mulsd	%xmm4,%xmm1
	movapd	%xmm6,%xmm9
	mulsd	%xmm8,%xmm9
	addsd	%xmm1,%xmm9
	movapd	%xmm9,%xmm4
.Ll342:
# [592] if adsrstate = 5 then   // release
	cmpl	$5,328(%rcx)
	jne	.Lj1403
.Ll343:
# [594] adsrval:=adsrval+ar4;
	movsd	168(%rcx),%xmm1
	addsd	224(%rcx),%xmm1
	movsd	%xmm1,168(%rcx)
.Ll344:
# [595] if ar4<0 then begin if adsrval<av4 then begin adsrval:=av4; adsrstate:=6; end; end
	movsd	224(%rcx),%xmm1
	comisd	_$FMSYNTH$_Ld7(%rip),%xmm1
	jp	.Lj1407
	jnb	.Lj1407
	movsd	168(%rcx),%xmm1
	comisd	232(%rcx),%xmm1
	jp	.Lj1424
	jnb	.Lj1424
	movq	232(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$6,328(%rcx)
	jmp	.Lj1424
.Lj1407:
.Ll345:
# [596] else begin if adsrval>av4 then begin adsrval:=av4; adsrstate:=6; end; end;
	movsd	168(%rcx),%xmm1
	comisd	232(%rcx),%xmm1
	jp	.Lj1424
	jna	.Lj1424
	movq	232(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$6,328(%rcx)
.Ll346:
# [597] goto p101;
	jmp	.Lj1424
.Lj1403:
.Ll347:
# [599] if adsrstate =   3 then  // release
	cmpl	$3,328(%rcx)
	jne	.Lj1426
.Ll348:
# [601] adsrval:=adsrval+ar3;
	movsd	168(%rcx),%xmm1
	addsd	208(%rcx),%xmm1
	movsd	%xmm1,168(%rcx)
.Ll349:
# [602] if ar3<0 then begin if adsrval<av3 then begin adsrval:=av3; adsrstate:=4; end; end
	movsd	208(%rcx),%xmm1
	comisd	_$FMSYNTH$_Ld7(%rip),%xmm1
	jp	.Lj1430
	jnb	.Lj1430
	movsd	168(%rcx),%xmm1
	comisd	216(%rcx),%xmm1
	jp	.Lj1424
	jnb	.Lj1424
	movq	216(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$4,328(%rcx)
	jmp	.Lj1424
.Lj1430:
.Ll350:
# [603] else begin if adsrval>av3 then begin adsrval:=av3; adsrstate:=4; end; end;
	movsd	168(%rcx),%xmm1
	comisd	216(%rcx),%xmm1
	jp	.Lj1424
	jna	.Lj1424
	movq	216(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$4,328(%rcx)
.Ll351:
# [604] goto p101;
	jmp	.Lj1424
.Lj1426:
.Ll352:
# [606] if adsrstate= 2 then  // release
	cmpl	$2,328(%rcx)
	jne	.Lj1448
.Ll353:
# [608] adsrval:=adsrval+ar2;
	movsd	168(%rcx),%xmm1
	addsd	192(%rcx),%xmm1
	movsd	%xmm1,168(%rcx)
.Ll354:
# [609] if ar2<0 then begin if adsrval<av2 then begin adsrval:=av2; adsrstate:=3; end; end
	movsd	192(%rcx),%xmm1
	comisd	_$FMSYNTH$_Ld7(%rip),%xmm1
	jp	.Lj1452
	jnb	.Lj1452
	movsd	168(%rcx),%xmm1
	comisd	200(%rcx),%xmm1
	jp	.Lj1424
	jnb	.Lj1424
	movq	200(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$3,328(%rcx)
	jmp	.Lj1424
.Lj1452:
.Ll355:
# [610] else begin if adsrval>av2 then begin adsrval:=av2; adsrstate:=3; end; end;
	movsd	168(%rcx),%xmm1
	comisd	200(%rcx),%xmm1
	jp	.Lj1424
	jna	.Lj1424
	movq	200(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$3,328(%rcx)
.Ll356:
# [611] goto p101;
	jmp	.Lj1424
.Lj1448:
.Ll357:
# [613] if adsrstate=1 then    // release
	cmpl	$1,328(%rcx)
	jne	.Lj1470
.Ll358:
# [615] adsrval:=adsrval+ar1;
	movsd	168(%rcx),%xmm1
	addsd	176(%rcx),%xmm1
	movsd	%xmm1,168(%rcx)
.Ll359:
# [616] if ar1<0 then begin if adsrval<av1 then begin adsrval:=av1; adsrstate:=2; end; end
	movsd	176(%rcx),%xmm1
	comisd	_$FMSYNTH$_Ld7(%rip),%xmm1
	jp	.Lj1474
	jnb	.Lj1474
	movsd	168(%rcx),%xmm1
	comisd	184(%rcx),%xmm1
	jp	.Lj1483
	jnb	.Lj1483
	movq	184(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$2,328(%rcx)
	jmp	.Lj1483
.Lj1474:
.Ll360:
# [617] else begin if adsrval>av1 then begin  adsrval:=av1; adsrstate:=2; end;  end;
	movsd	168(%rcx),%xmm1
	comisd	184(%rcx),%xmm1
	jp	.Lj1485
	jna	.Lj1485
	movq	184(%rcx),%rax
	movq	%rax,168(%rcx)
	movl	$2,328(%rcx)
.Lj1485:
.Lj1483:
.Lj1424:
.Lj1470:
.Ll361:
	movsd	256(%rcx),%xmm9
.Ll362:
# [621] h1:=((1-adsrbias)*adsrval)+adsrbias;
	movsd	_$FMSYNTH$_Ld8(%rip),%xmm1
	subsd	%xmm9,%xmm1
	mulsd	168(%rcx),%xmm1
	addsd	%xmm9,%xmm1
	movapd	%xmm1,%xmm5
.Ll363:
# [622] if adsrstate<>0 then sample:=sample*flogtable[round(65535*h1)] else sample:=0;
	cmpl	$0,328(%rcx)
	je	.Lj1496
	movsd	_$FMSYNTH$_Ld76(%rip),%xmm1
	mulsd	%xmm5,%xmm1
	cvtsd2siq	%xmm1,%rax
	movapd	%xmm4,%xmm1
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%r10
	mulsd	(%r10,%rax,8),%xmm1
	movapd	%xmm1,%xmm4
	jmp	.Lj1499
.Lj1496:
	movsd	_$FMSYNTH$_Ld7(%rip),%xmm4
.Lj1499:
.Ll364:
# [625] h1:=1.000-keysense;
	movsd	_$FMSYNTH$_Ld8(%rip),%xmm1
	subsd	272(%rcx),%xmm1
	movapd	%xmm1,%xmm5
.Ll365:
# [626] h1:=h1+vel*keysense;
	movsd	264(%rcx),%xmm1
	mulsd	272(%rcx),%xmm1
	addsd	%xmm5,%xmm1
	movapd	%xmm1,%xmm5
.Ll366:
# [627] h1:=h1*c6*expr;
	movapd	%xmm5,%xmm1
	mulsd	40(%rcx),%xmm1
	mulsd	280(%rcx),%xmm1
	movapd	%xmm1,%xmm5
.Ll367:
# [628] sample:=sample*h1;
	movapd	%xmm4,%xmm1
	mulsd	%xmm5,%xmm1
	movapd	%xmm1,%xmm4
.Lj1344:
.Ll368:
# [644] result:=sample;
	movapd	%xmm4,%xmm0
.Ll369:
# [646] end;
	movdqa	(%rsp),%xmm6
	movdqa	16(%rsp),%xmm8
	movdqa	32(%rsp),%xmm9
	movdqa	48(%rsp),%xmm10
	leaq	72(%rsp),%rsp
	ret
.seh_endproc
.Lc68:
.Lt15:
.Ll370:

.section .text.n_fmsynth_$$_initnotes,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITNOTES
FMSYNTH_$$_INITNOTES:
.Lc70:
# Var i located in register edx
# Var q located in register xmm1
# [654] begin
# Var q located in register xmm1
.Ll371:
# [655] q:=c03;
	movsd	_$FMSYNTH$_Ld77(%rip),%xmm1
# Var i located in register edx
.Ll372:
# [656] for i:=0 to 127 do
	movl	$0,%edx
	subl	$1,%edx
	.balign 8,0x90
.Lj1518:
	addl	$1,%edx
# PeepHole Optimization,var2a
.Ll373:
# [658] fnotes[i]:=q;
	movl	%edx,%eax
	leaq	U_$FMSYNTH_$$_FNOTES(%rip),%rcx
	movsd	%xmm1,(%rcx,%rax,8)
.Ll374:
# [659] q:=q*a212;
	movapd	%xmm1,%xmm0
	mulsd	_$FMSYNTH$_Ld11(%rip),%xmm0
	movapd	%xmm0,%xmm1
.Ll375:
	cmpl	$127,%edx
	jl	.Lj1518
.Ll376:
# [661] end;
	ret
.Lc71:
.Lt13:
.Ll377:

.section .text.n_fmsynth_$$_init$,"x"
	.balign 16,0x90
.globl	INIT$_$FMSYNTH
INIT$_$FMSYNTH:
.globl	FMSYNTH_$$_init$
FMSYNTH_$$_init$:
.Lc72:
.seh_proc FMSYNTH_$$_init$
.Ll378:
# [665] initialization
	leaq	-40(%rsp),%rsp
.Lc74:
.seh_stackalloc 40
.seh_endprologue
.Ll379:
# [667] initflogtable;
	call	FMSYNTH_$$_INITFLOGTABLE
.Ll380:
# [668] initfsinetable;
	call	FMSYNTH_$$_INITFSINETABLE
.Ll381:
# [669] initnotes;
	call	FMSYNTH_$$_INITNOTES
.Ll382:
# [673] end.
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc73:
.Lt8:
.Ll383:

.section .text.n_fmsynth_$$_finalize_implicit$,"x"
	.balign 16,0x90
.globl	FINALIZE$_$FMSYNTH
FINALIZE$_$FMSYNTH:
.globl	FMSYNTH_$$_finalize_implicit$
FMSYNTH_$$_finalize_implicit$:
.Lc75:
.seh_proc FMSYNTH_$$_finalize_implicit$
	leaq	-40(%rsp),%rsp
.Lc77:
.seh_stackalloc 40
.seh_endprologue
	leaq	INIT_$FMSYNTH_$$_DEF30(%rip),%rax
	movq	%rax,%rdx
	leaq	U_$FMSYNTH_$$_WAVES0(%rip),%rcx
	call	fpc_finalize
	leaq	INIT_$FMSYNTH_$$_DEF31(%rip),%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rcx
	call	fpc_finalize
	leaq	INIT_$FMSYNTH_$$_DEF32(%rip),%rdx
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rcx
	call	fpc_finalize
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc76:
.Lt14:
.Ll384:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 8
# [fmsynth.pas]
# [92] var flogtable:array[0..65540] of myfloat;
	.globl U_$FMSYNTH_$$_FLOGTABLE
U_$FMSYNTH_$$_FLOGTABLE:
	.zero 524328

.section .bss
	.balign 8
# [93] foutputtable:array[0..8191] of myfloat;
	.globl U_$FMSYNTH_$$_FOUTPUTTABLE
U_$FMSYNTH_$$_FOUTPUTTABLE:
	.zero 65536

.section .bss
	.balign 8
# [94] fnotes:array[0..127] of myfloat;
	.globl U_$FMSYNTH_$$_FNOTES
U_$FMSYNTH_$$_FNOTES:
	.zero 1024

.section .bss
	.balign 8
# [95] fsinetable:array[-655360..655360] of myfloat;
	.globl U_$FMSYNTH_$$_FSINETABLE
U_$FMSYNTH_$$_FSINETABLE:
	.zero 10485768

.section .bss
	.balign 8
# [97] fmoperator:TFmOperator;
	.globl U_$FMSYNTH_$$_FMOPERATOR
U_$FMSYNTH_$$_FMOPERATOR:
	.zero 8

.section .bss
	.balign 8
# [98] voices:array [0..31] of TFmVoice;
	.globl U_$FMSYNTH_$$_VOICES
U_$FMSYNTH_$$_VOICES:
	.zero 256

.section .bss
	.balign 8
# [99] waves0:array [0..127] of TWaveSample0;
	.globl U_$FMSYNTH_$$_WAVES0
U_$FMSYNTH_$$_WAVES0:
	.zero 1049600

.section .bss
	.balign 8
# [100] waves1:array [0..16383] of TWaveSample1;
	.globl U_$FMSYNTH_$$_WAVES1
U_$FMSYNTH_$$_WAVES1:
	.zero 786432

.section .bss
	.balign 8
# [101] sounds:array[0..8191] of TMultiSample;
	.globl U_$FMSYNTH_$$_SOUNDS
U_$FMSYNTH_$$_SOUNDS:
	.zero 23134208

.section .bss
	.balign 8
# [107] fftwave:^double;
	.globl U_$FMSYNTH_$$_FFTWAVE
U_$FMSYNTH_$$_FFTWAVE:
	.zero 8

.section .data.n_VMT_$FMSYNTH_$$_TFMOPERATOR,"d"
	.balign 8
.globl	VMT_$FMSYNTH_$$_TFMOPERATOR
VMT_$FMSYNTH_$$_TFMOPERATOR:
	.quad	344,-344
	.quad	VMT_$SYSTEM_$$_TOBJECT
	.quad	.Ld78
	.quad	0,0,0
	.quad	RTTI_$FMSYNTH_$$_TFMOPERATOR
	.quad	0,0
	.quad	FPC_EMPTYINTF
	.quad	0
	.quad	FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
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
# [675] 
	.balign 8
.Ld78:
	.byte	11
	.ascii	"TFmOperator"

.section .data.n_VMT_$FMSYNTH_$$_TFMVOICE,"d"
	.balign 8
.globl	VMT_$FMSYNTH_$$_TFMVOICE
VMT_$FMSYNTH_$$_TFMVOICE:
	.quad	168,-168
	.quad	VMT_$SYSTEM_$$_TOBJECT
	.quad	.Ld79
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
.Ld79:
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
# [103] sampleindex0:integer=0;

.section .data.n_tc_$fmsynth_$$_sampleindex0,"d"
	.balign 4
.globl	TC_$FMSYNTH_$$_SAMPLEINDEX0
TC_$FMSYNTH_$$_SAMPLEINDEX0:
	.long	0
# [104] sampleindex1:integer=0;

.section .data.n_tc_$fmsynth_$$_sampleindex1,"d"
	.balign 4
.globl	TC_$FMSYNTH_$$_SAMPLEINDEX1
TC_$FMSYNTH_$$_SAMPLEINDEX1:
	.long	0
# [105] soundindex:integer=0;

.section .data.n_tc_$fmsynth_$$_soundindex,"d"
	.balign 4
.globl	TC_$FMSYNTH_$$_SOUNDINDEX
TC_$FMSYNTH_$$_SOUNDINDEX:
	.long	0
# [106] waveidx:integer=0;

.section .data.n_tc_$fmsynth_$$_waveidx,"d"
	.balign 4
.globl	TC_$FMSYNTH_$$_WAVEIDX
TC_$FMSYNTH_$$_WAVEIDX:
	.long	0

.section .data.n_tc_$fmsynth_$$_transpose,"d"
	.balign 4
.globl	TC_$FMSYNTH_$$_TRANSPOSE
TC_$FMSYNTH_$$_TRANSPOSE:
	.long	0
# [110] procedure initvoices;

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
# value: 0d+1.0240000000000000E+003
	.byte	0,0,0,0,0,0,144,64

.section .rodata.n__$FMSYNTH$_Ld4,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld4
_$FMSYNTH$_Ld4:
# value: 0d+3.0517578125000000E-005
	.byte	0,0,0,0,0,0,0,63

.section .rodata.n__$FMSYNTH$_Ld5,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld5
_$FMSYNTH$_Ld5:
	.ascii	"C:\\xi\\\000"

.section .rodata.n__$FMSYNTH$_Ld6,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,4
.globl	_$FMSYNTH$_Ld6
_$FMSYNTH$_Ld6:
	.ascii	"*.xi\000"

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
# value: 0d+3.1964988724534649E+001
	.byte	148,226,68,128,9,247,63,64

.section .rodata.n__$FMSYNTH$_Ld10,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld10
_$FMSYNTH$_Ld10:
# value: 0d+7.8125000000000000E-003
	.byte	0,0,0,0,0,0,128,63

.section .rodata.n__$FMSYNTH$_Ld11,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld11
_$FMSYNTH$_Ld11:
# value: 0d+1.0594630943592953E+000
	.byte	99,121,217,146,143,243,240,63

.section .rodata.n__$FMSYNTH$_Ld12,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,7
.globl	_$FMSYNTH$_Ld12
_$FMSYNTH$_Ld12:
	.ascii	"C:\\wav\\\000"

.section .rodata.n__$FMSYNTH$_Ld13,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$FMSYNTH$_Ld13
_$FMSYNTH$_Ld13:
	.ascii	"*\000"

.section .rodata.n__$FMSYNTH$_Ld14,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$FMSYNTH$_Ld14
_$FMSYNTH$_Ld14:
	.ascii	".\000"

.section .rodata.n__$FMSYNTH$_Ld15,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,2
.globl	_$FMSYNTH$_Ld15
_$FMSYNTH$_Ld15:
	.ascii	"..\000"

.section .rodata.n__$FMSYNTH$_Ld16,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld16
_$FMSYNTH$_Ld16:
	.ascii	"\\*.wav\000"

.section .rodata.n__$FMSYNTH$_Ld17,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$FMSYNTH$_Ld17
_$FMSYNTH$_Ld17:
	.ascii	"\\\000"

.section .rodata.n__$FMSYNTH$_Ld18,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$FMSYNTH$_Ld18
_$FMSYNTH$_Ld18:
	.ascii	" \000"

.section .rodata.n__$FMSYNTH$_Ld19,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld19
_$FMSYNTH$_Ld19:
	.ascii	"G4.wav\000"

.section .rodata.n__$FMSYNTH$_Ld20,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld20
_$FMSYNTH$_Ld20:
	.ascii	"G3.wav\000"

.section .rodata.n__$FMSYNTH$_Ld21,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld21
_$FMSYNTH$_Ld21:
	.ascii	"G2.wav\000"

.section .rodata.n__$FMSYNTH$_Ld22,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,7
.globl	_$FMSYNTH$_Ld22
_$FMSYNTH$_Ld22:
	.ascii	"G#4.wav\000"

.section .rodata.n__$FMSYNTH$_Ld23,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,7
.globl	_$FMSYNTH$_Ld23
_$FMSYNTH$_Ld23:
	.ascii	"G#3.wav\000"

.section .rodata.n__$FMSYNTH$_Ld24,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,7
.globl	_$FMSYNTH$_Ld24
_$FMSYNTH$_Ld24:
	.ascii	"G#2.wav\000"

.section .rodata.n__$FMSYNTH$_Ld25,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld25
_$FMSYNTH$_Ld25:
	.ascii	"F5.wav\000"

.section .rodata.n__$FMSYNTH$_Ld26,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld26
_$FMSYNTH$_Ld26:
	.ascii	"F4.wav\000"

.section .rodata.n__$FMSYNTH$_Ld27,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld27
_$FMSYNTH$_Ld27:
	.ascii	"F3.wav\000"

.section .rodata.n__$FMSYNTH$_Ld28,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,7
.globl	_$FMSYNTH$_Ld28
_$FMSYNTH$_Ld28:
	.ascii	"F#4.wav\000"

.section .rodata.n__$FMSYNTH$_Ld29,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,7
.globl	_$FMSYNTH$_Ld29
_$FMSYNTH$_Ld29:
	.ascii	"F#3.wav\000"

.section .rodata.n__$FMSYNTH$_Ld30,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld30
_$FMSYNTH$_Ld30:
	.ascii	"E5.wav\000"

.section .rodata.n__$FMSYNTH$_Ld31,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld31
_$FMSYNTH$_Ld31:
	.ascii	"E4.wav\000"

.section .rodata.n__$FMSYNTH$_Ld32,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld32
_$FMSYNTH$_Ld32:
	.ascii	"E3.wav\000"

.section .rodata.n__$FMSYNTH$_Ld33,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld33
_$FMSYNTH$_Ld33:
	.ascii	"D5.wav\000"

.section .rodata.n__$FMSYNTH$_Ld34,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld34
_$FMSYNTH$_Ld34:
	.ascii	"D4.wav\000"

.section .rodata.n__$FMSYNTH$_Ld35,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld35
_$FMSYNTH$_Ld35:
	.ascii	"D3.wav\000"

.section .rodata.n__$FMSYNTH$_Ld36,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,7
.globl	_$FMSYNTH$_Ld36
_$FMSYNTH$_Ld36:
	.ascii	"D#5.wav\000"

.section .rodata.n__$FMSYNTH$_Ld37,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,7
.globl	_$FMSYNTH$_Ld37
_$FMSYNTH$_Ld37:
	.ascii	"D#4.wav\000"

.section .rodata.n__$FMSYNTH$_Ld38,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,7
.globl	_$FMSYNTH$_Ld38
_$FMSYNTH$_Ld38:
	.ascii	"D#3.wav\000"

.section .rodata.n__$FMSYNTH$_Ld39,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld39
_$FMSYNTH$_Ld39:
	.ascii	"C5.wav\000"

.section .rodata.n__$FMSYNTH$_Ld40,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld40
_$FMSYNTH$_Ld40:
	.ascii	"C4.wav\000"

.section .rodata.n__$FMSYNTH$_Ld41,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld41
_$FMSYNTH$_Ld41:
	.ascii	"C3.wav\000"

.section .rodata.n__$FMSYNTH$_Ld42,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,7
.globl	_$FMSYNTH$_Ld42
_$FMSYNTH$_Ld42:
	.ascii	"C#5.wav\000"

.section .rodata.n__$FMSYNTH$_Ld43,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,7
.globl	_$FMSYNTH$_Ld43
_$FMSYNTH$_Ld43:
	.ascii	"C#4.wav\000"

.section .rodata.n__$FMSYNTH$_Ld44,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,7
.globl	_$FMSYNTH$_Ld44
_$FMSYNTH$_Ld44:
	.ascii	"C#3.wav\000"

.section .rodata.n__$FMSYNTH$_Ld45,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld45
_$FMSYNTH$_Ld45:
	.ascii	"B4.wav\000"

.section .rodata.n__$FMSYNTH$_Ld46,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld46
_$FMSYNTH$_Ld46:
	.ascii	"B3.wav\000"

.section .rodata.n__$FMSYNTH$_Ld47,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld47
_$FMSYNTH$_Ld47:
	.ascii	"B2.wav\000"

.section .rodata.n__$FMSYNTH$_Ld48,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld48
_$FMSYNTH$_Ld48:
	.ascii	"A4.wav\000"

.section .rodata.n__$FMSYNTH$_Ld49,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld49
_$FMSYNTH$_Ld49:
	.ascii	"A3.wav\000"

.section .rodata.n__$FMSYNTH$_Ld50,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,6
.globl	_$FMSYNTH$_Ld50
_$FMSYNTH$_Ld50:
	.ascii	"A2.wav\000"

.section .rodata.n__$FMSYNTH$_Ld51,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,7
.globl	_$FMSYNTH$_Ld51
_$FMSYNTH$_Ld51:
	.ascii	"A#4.wav\000"

.section .rodata.n__$FMSYNTH$_Ld52,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,7
.globl	_$FMSYNTH$_Ld52
_$FMSYNTH$_Ld52:
	.ascii	"A#3.wav\000"

.section .rodata.n__$FMSYNTH$_Ld53,"d"
	.balign 8
	.short	65535,1
	.long	0
	.quad	-1,7
.globl	_$FMSYNTH$_Ld53
_$FMSYNTH$_Ld53:
	.ascii	"A#2.wav\000"

.section .rodata.n__$FMSYNTH$_Ld54,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld54
_$FMSYNTH$_Ld54:
# value: 0d+4.4100000000000000E+004
	.byte	0,0,0,0,128,136,229,64

.section .rodata.n__$FMSYNTH$_Ld55,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld55
_$FMSYNTH$_Ld55:
# value: 0d+4.0090909090909093E+002
	.byte	47,186,232,162,139,14,121,64

.section .rodata.n__$FMSYNTH$_Ld56,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld56
_$FMSYNTH$_Ld56:
# value: 0d+1.000000000E+00
	.byte	0,0,128,63

.section .rodata.n__$FMSYNTH$_Ld57,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld57
_$FMSYNTH$_Ld57:
# value: 0d+0.000000000E+00
	.byte	0,0,0,0

.section .rodata.n__$FMSYNTH$_Ld58,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld58
_$FMSYNTH$_Ld58:
# value: 0d+9.9989460157410703E-001
	.byte	206,165,166,246,34,255,239,63

.section .rodata.n__$FMSYNTH$_Ld59,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld59
_$FMSYNTH$_Ld59:
# value: 0d+6.2831853071795862E+000
	.byte	24,45,68,84,251,33,25,64

.section .rodata.n__$FMSYNTH$_Ld60,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld60
_$FMSYNTH$_Ld60:
# value: 0d+9.7656250000000000E-004
	.byte	0,0,0,0,0,0,80,63

.section .rodata.n__$FMSYNTH$_Ld61,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld61
_$FMSYNTH$_Ld61:
# value: 0d+1.0043000000000000E+000
	.byte	253,246,117,224,156,17,240,63

.section .rodata.n__$FMSYNTH$_Ld62,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld62
_$FMSYNTH$_Ld62:
# value: 0d+1.0060000000000000E+000
	.byte	127,106,188,116,147,24,240,63

.section .rodata.n__$FMSYNTH$_Ld63,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld63
_$FMSYNTH$_Ld63:
# value: 0d+1.0017000000000000E+000
	.byte	130,115,70,148,246,6,240,63

.section .rodata.n__$FMSYNTH$_Ld64,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld64
_$FMSYNTH$_Ld64:
# value: 0d+9.9500000000000000E-001
	.byte	215,163,112,61,10,215,239,63

.section .rodata.n__$FMSYNTH$_Ld65,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld65
_$FMSYNTH$_Ld65:
# value: 0d+9.9099999999999999E-001
	.byte	131,192,202,161,69,182,239,63

.section .rodata.n__$FMSYNTH$_Ld66,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld66
_$FMSYNTH$_Ld66:
# value: 0d+9.9390000000000001E-001
	.byte	32,210,111,95,7,206,239,63

.section .rodata.n__$FMSYNTH$_Ld67,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld67
_$FMSYNTH$_Ld67:
# value: 0d+9.9609999999999999E-001
	.byte	142,117,113,27,13,224,239,63

.section .rodata.n__$FMSYNTH$_Ld68,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld68
_$FMSYNTH$_Ld68:
# value: 0d+1.0416666666666666E-005
	.byte	165,226,236,195,103,216,229,62

.section .rodata.n__$FMSYNTH$_Ld69,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld69
_$FMSYNTH$_Ld69:
# value: 0d+3.0037333333333333E+002
	.byte	198,146,95,44,249,197,114,64

.section .rodata.n__$FMSYNTH$_Ld70,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld70
_$FMSYNTH$_Ld70:
# value: 0d+1.0416666666666666E-002
	.byte	85,85,85,85,85,85,133,63

.section .rodata.n__$FMSYNTH$_Ld71,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld71
_$FMSYNTH$_Ld71:
# value: 0d-1.0416666666666666E-005
	.byte	165,226,236,195,103,216,229,190

.section .rodata.n__$FMSYNTH$_Ld72,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld72
_$FMSYNTH$_Ld72:
# value: 0d-1.0416666666666667E-006
	.byte	30,130,189,156,236,121,177,190

.section .rodata.n__$FMSYNTH$_Ld73,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld73
_$FMSYNTH$_Ld73:
# value: 0d-3.1250000000000001E-006
	.byte	45,67,28,235,226,54,202,190

.section .rodata.n__$FMSYNTH$_Ld74,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld74
_$FMSYNTH$_Ld74:
# value: 0d+9.4999999999999996E-001
	.byte	102,102,102,102,102,102,238,63

.section .rodata.n__$FMSYNTH$_Ld75,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld75
_$FMSYNTH$_Ld75:
# value: 0d+9.0000000000000002E-001
	.byte	205,204,204,204,204,204,236,63

.section .rodata.n__$FMSYNTH$_Ld76,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld76
_$FMSYNTH$_Ld76:
# value: 0d+6.5535000000000000E+004
	.byte	0,0,0,0,224,255,239,64

.section .rodata.n__$FMSYNTH$_Ld77,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld77
_$FMSYNTH$_Ld77:
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
	.long	48,1
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
	.long	48,8
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
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	40
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.quad	44

.section .data.n_INIT_$FMSYNTH_$$_DEF19,"d"
	.balign 8
.globl	INIT_$FMSYNTH_$$_DEF19
INIT_$FMSYNTH_$$_DEF19:
	.byte	12
	.ascii	"\000"
	.quad	2304,48
	.quad	INIT_$FMSYNTH_$$_TWAVESAMPLE1
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_INIT_$FMSYNTH_$$_TMULTISAMPLE,"d"
	.balign 8
.globl	INIT_$FMSYNTH_$$_TMULTISAMPLE
INIT_$FMSYNTH_$$_TMULTISAMPLE:
	.byte	13,12
	.ascii	"TMultiSample"
	.long	2824,2
	.quad	RTTI_$SYSTEM_$$_ANSISTRING
	.quad	0
	.quad	INIT_$FMSYNTH_$$_DEF19
	.quad	8

.section .data.n_RTTI_$FMSYNTH_$$_DEF19,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_DEF19
RTTI_$FMSYNTH_$$_DEF19:
	.byte	12
	.ascii	"\000"
	.quad	2304,48
	.quad	RTTI_$FMSYNTH_$$_TWAVESAMPLE1
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$FMSYNTH_$$_DEF20,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_DEF20
RTTI_$FMSYNTH_$$_DEF20:
	.byte	12
	.ascii	"\000"
	.quad	512,128
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$FMSYNTH_$$_TMULTISAMPLE,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_TMULTISAMPLE
RTTI_$FMSYNTH_$$_TMULTISAMPLE:
	.byte	13,12
	.ascii	"TMultiSample"
	.long	2824,3
	.quad	RTTI_$SYSTEM_$$_ANSISTRING
	.quad	0
	.quad	RTTI_$FMSYNTH_$$_DEF19
	.quad	8
	.quad	RTTI_$FMSYNTH_$$_DEF20
	.quad	2312

.section .data.n_INIT_$FMSYNTH_$$_TWAVESAMPLE0,"d"
	.balign 8
.globl	INIT_$FMSYNTH_$$_TWAVESAMPLE0
INIT_$FMSYNTH_$$_TWAVESAMPLE0:
	.byte	13,12
	.ascii	"TWaveSample0"
	.long	8200,1
	.quad	RTTI_$SYSTEM_$$_ANSISTRING
	.quad	0

.section .data.n_RTTI_$FMSYNTH_$$_DEF22,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_DEF22
RTTI_$FMSYNTH_$$_DEF22:
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
	.quad	RTTI_$FMSYNTH_$$_DEF22
	.quad	8

.section .data.n_INIT_$FMSYNTH_$$_TSAMPLEINFO,"d"
	.balign 8
.globl	INIT_$FMSYNTH_$$_TSAMPLEINFO
INIT_$FMSYNTH_$$_TSAMPLEINFO:
	.byte	13,11
	.ascii	"TSampleinfo"
	.long	40,0

.section .data.n_RTTI_$FMSYNTH_$$_DEF24,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_DEF24
RTTI_$FMSYNTH_$$_DEF24:
	.byte	12
	.ascii	"\000"
	.quad	22,22
	.quad	RTTI_$SYSTEM_$$_CHAR
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$FMSYNTH_$$_TSAMPLEINFO,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_TSAMPLEINFO
RTTI_$FMSYNTH_$$_TSAMPLEINFO:
	.byte	13,11
	.ascii	"TSampleinfo"
	.long	40,10
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGWORD
	.quad	8
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	12
	.quad	RTTI_$SYSTEM_$$_SHORTINT
	.quad	13
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	14
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	15
	.quad	RTTI_$SYSTEM_$$_SHORTINT
	.quad	16
	.quad	RTTI_$SYSTEM_$$_BYTE
	.quad	17
	.quad	RTTI_$FMSYNTH_$$_DEF24
	.quad	18

.section .data.n_INIT_$FMSYNTH_$$_DEF30,"d"
	.balign 8
.globl	INIT_$FMSYNTH_$$_DEF30
INIT_$FMSYNTH_$$_DEF30:
	.byte	12
	.ascii	"\000"
	.quad	1049600,128
	.quad	INIT_$FMSYNTH_$$_TWAVESAMPLE0
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_INIT_$FMSYNTH_$$_DEF31,"d"
	.balign 8
.globl	INIT_$FMSYNTH_$$_DEF31
INIT_$FMSYNTH_$$_DEF31:
	.byte	12
	.ascii	"\000"
	.quad	786432,16384
	.quad	INIT_$FMSYNTH_$$_TWAVESAMPLE1
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SMALLINT

.section .data.n_INIT_$FMSYNTH_$$_DEF32,"d"
	.balign 8
.globl	INIT_$FMSYNTH_$$_DEF32
INIT_$FMSYNTH_$$_DEF32:
	.byte	12
	.ascii	"\000"
	.quad	23134208,8192
	.quad	INIT_$FMSYNTH_$$_TMULTISAMPLE
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SMALLINT

.section .data.n_RTTI_$FMSYNTH_$$_DEF353,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_DEF353
RTTI_$FMSYNTH_$$_DEF353:
	.byte	12
	.ascii	"\000"
	.quad	24,3
	.quad	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT

.section .data.n_RTTI_$FMSYNTH_$$_DEF355,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_DEF355
RTTI_$FMSYNTH_$$_DEF355:
	.byte	12
	.ascii	"\000"
	.quad	24,3
	.quad	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc78:
	.long	.Lc80-.Lc79
.Lc79:
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
.Lc80:
	.long	.Lc82-.Lc81
.Lc81:
	.secrel32	.Lc78
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
.Lc82:
	.long	.Lc84-.Lc83
.Lc83:
	.secrel32	.Lc78
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
.Lc84:
	.long	.Lc86-.Lc85
.Lc85:
	.secrel32	.Lc78
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
.Lc86:
	.long	.Lc88-.Lc87
.Lc87:
	.secrel32	.Lc78
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
.Lc88:
	.long	.Lc90-.Lc89
.Lc89:
	.secrel32	.Lc78
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
.Lc90:
	.long	.Lc92-.Lc91
.Lc91:
	.secrel32	.Lc78
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
.Lc92:
	.long	.Lc94-.Lc93
.Lc93:
	.secrel32	.Lc78
	.quad	.Lc31
	.quad	.Lc32-.Lc31
	.byte	4
	.long	.Lc33-.Lc31
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc94:
	.long	.Lc96-.Lc95
.Lc95:
	.secrel32	.Lc78
	.quad	.Lc34
	.quad	.Lc35-.Lc34
	.byte	4
	.long	.Lc36-.Lc34
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc37-.Lc36
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc38-.Lc37
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc96:
	.long	.Lc98-.Lc97
.Lc97:
	.secrel32	.Lc78
	.quad	.Lc39
	.quad	.Lc40-.Lc39
	.byte	4
	.long	.Lc41-.Lc39
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc98:
	.long	.Lc100-.Lc99
.Lc99:
	.secrel32	.Lc78
	.quad	.Lc42
	.quad	.Lc43-.Lc42
	.balign 4,0
.Lc100:
	.long	.Lc102-.Lc101
.Lc101:
	.secrel32	.Lc78
	.quad	.Lc44
	.quad	.Lc45-.Lc44
	.byte	4
	.long	.Lc46-.Lc44
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc102:
	.long	.Lc104-.Lc103
.Lc103:
	.secrel32	.Lc78
	.quad	.Lc47
	.quad	.Lc48-.Lc47
	.balign 4,0
.Lc104:
	.long	.Lc106-.Lc105
.Lc105:
	.secrel32	.Lc78
	.quad	.Lc49
	.quad	.Lc50-.Lc49
	.byte	4
	.long	.Lc51-.Lc49
	.byte	14
	.uleb128	32
	.balign 4,0
.Lc106:
	.long	.Lc108-.Lc107
.Lc107:
	.secrel32	.Lc78
	.quad	.Lc52
	.quad	.Lc53-.Lc52
	.byte	4
	.long	.Lc54-.Lc52
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc55-.Lc54
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc56-.Lc55
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc108:
	.long	.Lc110-.Lc109
.Lc109:
	.secrel32	.Lc78
	.quad	.Lc57
	.quad	.Lc58-.Lc57
	.byte	4
	.long	.Lc59-.Lc57
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc110:
	.long	.Lc112-.Lc111
.Lc111:
	.secrel32	.Lc78
	.quad	.Lc60
	.quad	.Lc61-.Lc60
	.byte	4
	.long	.Lc62-.Lc60
	.byte	14
	.uleb128	64
	.balign 4,0
.Lc112:
	.long	.Lc114-.Lc113
.Lc113:
	.secrel32	.Lc78
	.quad	.Lc63
	.quad	.Lc64-.Lc63
	.balign 4,0
.Lc114:
	.long	.Lc116-.Lc115
.Lc115:
	.secrel32	.Lc78
	.quad	.Lc65
	.quad	.Lc66-.Lc65
	.balign 4,0
.Lc116:
	.long	.Lc118-.Lc117
.Lc117:
	.secrel32	.Lc78
	.quad	.Lc67
	.quad	.Lc68-.Lc67
	.byte	4
	.long	.Lc69-.Lc67
	.byte	14
	.uleb128	80
	.balign 4,0
.Lc118:
	.long	.Lc120-.Lc119
.Lc119:
	.secrel32	.Lc78
	.quad	.Lc70
	.quad	.Lc71-.Lc70
	.balign 4,0
.Lc120:
	.long	.Lc122-.Lc121
.Lc121:
	.secrel32	.Lc78
	.quad	.Lc72
	.quad	.Lc73-.Lc72
	.byte	4
	.long	.Lc74-.Lc72
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc122:
	.long	.Lc124-.Lc123
.Lc123:
	.secrel32	.Lc78
	.quad	.Lc75
	.quad	.Lc76-.Lc75
	.byte	4
	.long	.Lc77-.Lc75
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc124:
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
# Symbol MATH
# Symbol MYFLOAT
# Symbol PSINGLESAMPLE
# Symbol TSINGLESAMPLE
# Symbol PSINGLESTEREOSAMPLE
# Symbol TSINGLESTEREOSAMPLE
# Symbol TFMOPERATOR
# Symbol TFMVOICE
# Symbol TWAVESAMPLE1
# Symbol TMULTISAMPLE
# Symbol TWAVESAMPLE0
# Symbol TSAMPLEINFO
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
	.long	.La23-.Ldebug_info0
# Symbol FOUTPUTTABLE
	.uleb128	3
	.ascii	"FOUTPUTTABLE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FOUTPUTTABLE
	.long	.La25-.Ldebug_info0
# Symbol FNOTES
	.uleb128	3
	.ascii	"FNOTES\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FNOTES
	.long	.La27-.Ldebug_info0
# Symbol FSINETABLE
	.uleb128	3
	.ascii	"FSINETABLE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FSINETABLE
	.long	.La29-.Ldebug_info0
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
	.long	.La31-.Ldebug_info0
# Symbol WAVES0
	.uleb128	3
	.ascii	"WAVES0\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_WAVES0
	.long	.La33-.Ldebug_info0
# Symbol WAVES1
	.uleb128	3
	.ascii	"WAVES1\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_WAVES1
	.long	.La35-.Ldebug_info0
# Symbol SOUNDS
	.uleb128	3
	.ascii	"SOUNDS\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_SOUNDS
	.long	.La37-.Ldebug_info0
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
	.long	.La39-.Ldebug_info0
# Symbol SAMPLEINDEX1
	.uleb128	3
	.ascii	"SAMPLEINDEX1\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$FMSYNTH_$$_SAMPLEINDEX1
	.long	.La39-.Ldebug_info0
# Symbol SOUNDINDEX
	.uleb128	3
	.ascii	"SOUNDINDEX\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$FMSYNTH_$$_SOUNDINDEX
	.long	.La39-.Ldebug_info0
# Symbol WAVEIDX
	.uleb128	3
	.ascii	"WAVEIDX\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$FMSYNTH_$$_WAVEIDX
	.long	.La39-.Ldebug_info0
# Symbol FFTWAVE
	.uleb128	3
	.ascii	"FFTWAVE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FFTWAVE
	.long	.La41-.Ldebug_info0
# Symbol TRANSPOSE
	.uleb128	3
	.ascii	"TRANSPOSE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$FMSYNTH_$$_TRANSPOSE
	.long	.La39-.Ldebug_info0
# Symbol INITVOICES
# Symbol INITSAMPLES0
# Symbol INITSAMPLES1
# Symbol INITSAMPLES2
# Syms - End unit FMSYNTH has index 18
# Syms - Begin Staticsymtable
# Symbol RETRO
# Symbol UNIT1
# Symbol FMSYNTH_$$_init$
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
	.long	.La39-.Ldebug_info0
	.byte	0
# Procdef initsamples0;
	.uleb128	4
	.ascii	"INITSAMPLES0\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH_$$_INITSAMPLES0
	.quad	.Lt2
# Symbol SR
	.uleb128	5
	.ascii	"SR\000"
	.byte	3
	.byte	118
	.sleb128	-640
	.long	.La43-.Ldebug_info0
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La39-.Ldebug_info0
# Symbol FH
	.uleb128	5
	.ascii	"FH\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La39-.Ldebug_info0
# Symbol CURRENTDIR2
	.uleb128	5
	.ascii	"CURRENTDIR2\000"
	.byte	3
	.byte	118
	.sleb128	-648
	.long	.La45-.Ldebug_info0
# Symbol DUMMY
	.uleb128	5
	.ascii	"DUMMY\000"
	.byte	3
	.byte	118
	.sleb128	-664
	.long	.La47-.Ldebug_info0
# Symbol INTWAVE
	.uleb128	5
	.ascii	"INTWAVE\000"
	.byte	3
	.byte	118
	.sleb128	-2720
	.long	.La49-.Ldebug_info0
# Symbol fin$0
# Definition Array[0..15] Of Byte
.La47:
	.uleb128	6
	.uleb128	16
	.long	.La51-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	15
	.uleb128	1
	.long	.La53-.Ldebug_info0
	.byte	0
.La48:
	.uleb128	8
	.long	.La47-.Ldebug_info0
# Definition Array[0..1024] Of SmallInt
.La49:
	.uleb128	6
	.uleb128	2050
	.long	.La55-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	1024
	.uleb128	2
	.long	.La55-.Ldebug_info0
	.byte	0
.La50:
	.uleb128	8
	.long	.La49-.Ldebug_info0
	.byte	0
# Procdef $fin$0(<^untyped>) is nested;
	.uleb128	9
	.ascii	"fin$0\000"
	.byte	1
	.byte	65
	.quad	FMSYNTH$_$INITSAMPLES0_$$_fin$0
	.quad	.Lt3
# Symbol parentfp
	.uleb128	10
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La57-.Ldebug_info0
	.byte	0
# Procdef initsamples1;
	.uleb128	4
	.ascii	"INITSAMPLES1\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH_$$_INITSAMPLES1
	.quad	.Lt4
# Symbol SR
	.uleb128	5
	.ascii	"SR\000"
	.byte	3
	.byte	118
	.sleb128	-640
	.long	.La43-.Ldebug_info0
# Symbol K
# Symbol J
	.uleb128	5
	.ascii	"J\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La39-.Ldebug_info0
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La39-.Ldebug_info0
# Symbol FH
	.uleb128	5
	.ascii	"FH\000"
	.byte	2
	.byte	144
	.uleb128	12
	.long	.La39-.Ldebug_info0
# Symbol CURRENTDIR2
	.uleb128	5
	.ascii	"CURRENTDIR2\000"
	.byte	3
	.byte	118
	.sleb128	-648
	.long	.La45-.Ldebug_info0
# Symbol DUMMY
	.uleb128	5
	.ascii	"DUMMY\000"
	.byte	3
	.byte	118
	.sleb128	-904
	.long	.La59-.Ldebug_info0
# Symbol INTWAVE
	.uleb128	5
	.ascii	"INTWAVE\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La61-.Ldebug_info0
# Symbol SAMPLENUM
	.uleb128	5
	.ascii	"SAMPLENUM\000"
	.byte	3
	.byte	118
	.sleb128	-912
	.long	.La63-.Ldebug_info0
# Symbol SAMPLEINFO
	.uleb128	5
	.ascii	"SAMPLEINFO\000"
	.byte	3
	.byte	118
	.sleb128	-2192
	.long	.La65-.Ldebug_info0
# Symbol INTEGRATOR
	.uleb128	5
	.ascii	"INTEGRATOR\000"
	.byte	2
	.byte	144
	.uleb128	23
	.long	.La1-.Ldebug_info0
# Symbol MAXVAL
	.uleb128	5
	.ascii	"MAXVAL\000"
	.byte	2
	.byte	144
	.uleb128	25
	.long	.La1-.Ldebug_info0
# Symbol FFTI
# Symbol FFTV
# Symbol fin$1
# Definition Array[0..255] Of Byte
.La59:
	.uleb128	6
	.uleb128	256
	.long	.La51-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	255
	.uleb128	1
	.long	.La51-.Ldebug_info0
	.byte	0
.La60:
	.uleb128	8
	.long	.La59-.Ldebug_info0
# Definition Array[0..31] Of TSampleinfo
.La65:
	.uleb128	6
	.uleb128	1280
	.long	.La21-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	31
	.uleb128	40
	.long	.La53-.Ldebug_info0
	.byte	0
.La66:
	.uleb128	8
	.long	.La65-.Ldebug_info0
	.byte	0
# Procdef $fin$1(<^untyped>) is nested;
	.uleb128	9
	.ascii	"fin$1\000"
	.byte	1
	.byte	65
	.quad	FMSYNTH$_$INITSAMPLES1_$$_fin$1
	.quad	.Lt5
# Symbol parentfp
	.uleb128	10
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La57-.Ldebug_info0
	.byte	0
# Procdef initsamples2;
	.uleb128	4
	.ascii	"INITSAMPLES2\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH_$$_INITSAMPLES2
	.quad	.Lt6
# Symbol P999
# Symbol SR
	.uleb128	5
	.ascii	"SR\000"
	.byte	3
	.byte	118
	.sleb128	-640
	.long	.La43-.Ldebug_info0
# Symbol SR2
	.uleb128	5
	.ascii	"SR2\000"
	.byte	3
	.byte	118
	.sleb128	-1280
	.long	.La43-.Ldebug_info0
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La39-.Ldebug_info0
# Symbol J
	.uleb128	5
	.ascii	"J\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La39-.Ldebug_info0
# Symbol FH
	.uleb128	5
	.ascii	"FH\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La39-.Ldebug_info0
# Symbol CURRENTDIR2
	.uleb128	5
	.ascii	"CURRENTDIR2\000"
	.byte	3
	.byte	118
	.sleb128	-1288
	.long	.La45-.Ldebug_info0
# Symbol CURRENTDIR3
	.uleb128	5
	.ascii	"CURRENTDIR3\000"
	.byte	3
	.byte	118
	.sleb128	-1296
	.long	.La45-.Ldebug_info0
# Symbol DUMMY
# Symbol INTWAVE
	.uleb128	5
	.ascii	"INTWAVE\000"
	.byte	2
	.byte	144
	.uleb128	12
	.long	.La61-.Ldebug_info0
# Symbol FILELENGTH
	.uleb128	5
	.ascii	"FILELENGTH\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La67-.Ldebug_info0
# Symbol OLDSI
	.uleb128	5
	.ascii	"OLDSI\000"
	.byte	2
	.byte	144
	.uleb128	15
	.long	.La39-.Ldebug_info0
# Symbol MAXVAL
	.uleb128	5
	.ascii	"MAXVAL\000"
	.byte	2
	.byte	144
	.uleb128	23
	.long	.La1-.Ldebug_info0
# Symbol fin$2
	.byte	0
# Procdef $fin$2(<^untyped>) is nested;
	.uleb128	9
	.ascii	"fin$2\000"
	.byte	1
	.byte	65
	.quad	FMSYNTH$_$INITSAMPLES2_$$_fin$2
	.quad	.Lt7
# Symbol parentfp
	.uleb128	10
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La57-.Ldebug_info0
	.byte	0
# Procdef $FMSYNTH_$$_init$; Register;
	.uleb128	4
	.ascii	"FMSYNTH_$$_init$\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH_$$_init$
	.quad	.Lt8
	.byte	0
# Procdef initflogtable;
	.uleb128	4
	.ascii	"INITFLOGTABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH_$$_INITFLOGTABLE
	.quad	.Lt9
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La39-.Ldebug_info0
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
	.quad	.Lt10
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La39-.Ldebug_info0
	.byte	0
# Procdef operator :=(<var TSingleStereoSample>;LongInt):Array[0..1] Of Double;
	.uleb128	11
	.ascii	"assign\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La7-.Ldebug_info0
	.quad	FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
	.quad	.Lt11
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
	.long	.La39-.Ldebug_info0
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
	.quad	.Lt12
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
	.long	.La69-.Ldebug_info0
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
	.quad	.Lt13
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La39-.Ldebug_info0
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
	.quad	.Lt14
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition Byte
.La51:
	.uleb128	12
	.ascii	"BYTE\000"
	.long	.La71-.Ldebug_info0
.La71:
	.uleb128	13
	.ascii	"BYTE\000"
	.byte	7
	.byte	1
.La52:
	.uleb128	8
	.long	.La51-.Ldebug_info0
# Definition ShortInt
.La53:
	.uleb128	12
	.ascii	"SHORTINT\000"
	.long	.La72-.Ldebug_info0
.La72:
	.uleb128	13
	.ascii	"SHORTINT\000"
	.byte	5
	.byte	1
.La54:
	.uleb128	8
	.long	.La53-.Ldebug_info0
# Definition Word
.La63:
	.uleb128	12
	.ascii	"WORD\000"
	.long	.La73-.Ldebug_info0
.La73:
	.uleb128	13
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La64:
	.uleb128	8
	.long	.La63-.Ldebug_info0
# Definition SmallInt
.La55:
	.uleb128	12
	.ascii	"SMALLINT\000"
	.long	.La74-.Ldebug_info0
.La74:
	.uleb128	13
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.La56:
	.uleb128	8
	.long	.La55-.Ldebug_info0
# Definition LongInt
.La39:
	.uleb128	12
	.ascii	"LONGINT\000"
	.long	.La75-.Ldebug_info0
.La75:
	.uleb128	13
	.ascii	"LONGINT\000"
	.byte	5
	.byte	4
.La40:
	.uleb128	8
	.long	.La39-.Ldebug_info0
# Definition Int64
.La67:
	.uleb128	12
	.ascii	"INT64\000"
	.long	.La76-.Ldebug_info0
.La76:
	.uleb128	13
	.ascii	"Int64\000"
	.byte	5
	.byte	8
.La68:
	.uleb128	8
	.long	.La67-.Ldebug_info0
# Definition AnsiString
.La45:
	.uleb128	12
	.ascii	"ANSISTRING\000"
	.long	.La77-.Ldebug_info0
.La77:
	.uleb128	14
	.long	.La78-.Ldebug_info0
.La46:
	.uleb128	8
	.long	.La45-.Ldebug_info0
# Definition Single
.La69:
	.uleb128	12
	.ascii	"SINGLE\000"
	.long	.La80-.Ldebug_info0
.La80:
	.uleb128	13
	.ascii	"SINGLE\000"
	.byte	4
	.byte	4
.La70:
	.uleb128	8
	.long	.La69-.Ldebug_info0
# Definition Double
.La1:
	.uleb128	12
	.ascii	"DOUBLE\000"
	.long	.La81-.Ldebug_info0
.La81:
	.uleb128	13
	.ascii	"DOUBLE\000"
	.byte	4
	.byte	8
.La2:
	.uleb128	8
	.long	.La1-.Ldebug_info0
# Definition ^untyped
.La57:
	.uleb128	12
	.ascii	"parentfp_void_pointer\000"
	.long	.La82-.Ldebug_info0
.La82:
	.uleb128	15
.La58:
	.uleb128	8
	.long	.La57-.Ldebug_info0
# Definition PSmallInt
.La61:
	.uleb128	12
	.ascii	"PSMALLINT\000"
	.long	.La83-.Ldebug_info0
.La83:
	.uleb128	14
	.long	.La55-.Ldebug_info0
.La62:
	.uleb128	8
	.long	.La61-.Ldebug_info0
# Definition Char
.La78:
	.uleb128	12
	.ascii	"CHAR\000"
	.long	.La84-.Ldebug_info0
.La84:
	.uleb128	13
	.ascii	"Char\000"
	.byte	8
	.byte	1
.La79:
	.uleb128	8
	.long	.La78-.Ldebug_info0
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
# Definition TRawbyteSearchRec
.La43:
	.uleb128	12
	.ascii	"TRAWBYTESEARCHREC\000"
	.long	.La85-.Ldebug_info0
.La85:
	.uleb128	16
	.ascii	"TRAWBYTESEARCHREC\000"
	.uleb128	640
	.uleb128	17
	.ascii	"TIME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La39-.Ldebug_info0
	.uleb128	17
	.ascii	"SIZE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La67-.Ldebug_info0
	.uleb128	17
	.ascii	"ATTR\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La39-.Ldebug_info0
	.uleb128	17
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La86-.Ldebug_info0
	.uleb128	17
	.ascii	"EXCLUDEATTR\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La39-.Ldebug_info0
	.uleb128	17
	.ascii	"FINDHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La88-.Ldebug_info0
	.uleb128	17
	.ascii	"FINDDATA\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La90-.Ldebug_info0
	.byte	0
.La44:
	.uleb128	8
	.long	.La43-.Ldebug_info0
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
# Defs - Begin unit UMAIN has index 11
# Defs - End unit UMAIN has index 11
# Defs - Begin unit SYNTHCONTROL has index 17
# Defs - End unit SYNTHCONTROL has index 17
# Defs - Begin unit FFT has index 256
# Defs - End unit FFT has index 256
# Defs - Begin unit TOOLWIN has index 205
# Defs - End unit TOOLWIN has index 205
# Defs - Begin unit WSTOOLWIN has index 207
# Defs - End unit WSTOOLWIN has index 207
# Defs - Begin unit WSCOMCTRLS has index 206
# Defs - End unit WSCOMCTRLS has index 206
# Defs - Begin unit COMCTRLS has index 169
# Defs - End unit COMCTRLS has index 169
# Defs - Begin unit UNIT2 has index 16
# Defs - End unit UNIT2 has index 16
# Defs - Begin unit UNIT1 has index 10
# Defs - End unit UNIT1 has index 10
# Defs - Begin unit FMSYNTH has index 18
# Definition PSinglesample
.La3:
	.uleb128	12
	.ascii	"PSINGLESAMPLE\000"
	.long	.La92-.Ldebug_info0
.La92:
	.uleb128	14
	.long	.La1-.Ldebug_info0
.La4:
	.uleb128	8
	.long	.La3-.Ldebug_info0
# Definition PSingleStereosample
.La5:
	.uleb128	12
	.ascii	"PSINGLESTEREOSAMPLE\000"
	.long	.La93-.Ldebug_info0
.La93:
	.uleb128	14
	.long	.La1-.Ldebug_info0
.La6:
	.uleb128	8
	.long	.La5-.Ldebug_info0
# Definition TSingleStereoSample
.La7:
	.uleb128	12
	.ascii	"TSINGLESTEREOSAMPLE\000"
	.long	.La94-.Ldebug_info0
.La94:
	.uleb128	18
	.ascii	"TSINGLESTEREOSAMPLE\000"
	.uleb128	16
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	1
	.uleb128	8
	.long	.La53-.Ldebug_info0
	.byte	0
.La8:
	.uleb128	8
	.long	.La7-.Ldebug_info0
# Definition TFmOperator
.La9:
	.uleb128	12
	.ascii	"TFMOPERATOR\000"
	.long	.La95-.Ldebug_info0
.La95:
	.uleb128	14
	.long	.La11-.Ldebug_info0
.La11:
	.uleb128	19
	.ascii	"TFMOPERATOR\000"
	.uleb128	344
	.uleb128	20
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La98-.Ldebug_info0
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
	.uleb128	328
	.long	.La39-.Ldebug_info0
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
	.uleb128	332
	.long	.La39-.Ldebug_info0
	.uleb128	17
	.ascii	"INTPA\000"
	.byte	3
	.byte	35
	.uleb128	336
	.long	.La39-.Ldebug_info0
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
	.uleb128	17
	.ascii	"PAN\000"
	.byte	3
	.byte	35
	.uleb128	320
	.long	.La1-.Ldebug_info0
# Procdef getsample(<TFmOperator>):Double;
	.uleb128	11
	.ascii	"GETSAMPLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La1-.Ldebug_info0
	.quad	FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
	.quad	.Lt15
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
# Symbol P999
# Symbol RES64A
# Symbol MODULATOR
	.uleb128	5
	.ascii	"MODULATOR\000"
	.byte	2
	.byte	144
	.uleb128	20
	.long	.La1-.Ldebug_info0
# Symbol I
# Symbol J
# Symbol SAMPLE
	.uleb128	5
	.ascii	"SAMPLE\000"
	.byte	2
	.byte	144
	.uleb128	21
	.long	.La1-.Ldebug_info0
# Symbol FREQ2
	.uleb128	5
	.ascii	"FREQ2\000"
	.byte	2
	.byte	144
	.uleb128	19
	.long	.La1-.Ldebug_info0
# Symbol H1
	.uleb128	5
	.ascii	"H1\000"
	.byte	2
	.byte	144
	.uleb128	22
	.long	.La1-.Ldebug_info0
# Symbol PA21
	.uleb128	5
	.ascii	"PA21\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La39-.Ldebug_info0
# Symbol D
	.uleb128	5
	.ascii	"D\000"
	.byte	2
	.byte	144
	.uleb128	23
	.long	.La1-.Ldebug_info0
# Symbol S2
	.uleb128	5
	.ascii	"S2\000"
	.byte	2
	.byte	144
	.uleb128	25
	.long	.La1-.Ldebug_info0
	.byte	0
# Procdef init(<TFmOperator>);
	.uleb128	4
	.ascii	"INIT\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH$_$TFMOPERATOR_$__$$_INIT
	.quad	.Lt16
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
	.quad	.Lt17
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
	.quad	.Lt18
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
	.long	.La99-.Ldebug_info0
# Symbol MODE
	.uleb128	10
	.ascii	"MODE\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La39-.Ldebug_info0
# Symbol OUTS
	.uleb128	10
	.ascii	"OUTS\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La99-.Ldebug_info0
# Symbol Q
# Symbol I
	.byte	0
# Procdef destructor destroy(<TFmOperator>;<Pointer>);
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
	.quad	FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
	.quad	.Lt19
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
	.long	.La99-.Ldebug_info0
	.byte	0
	.byte	0
.La10:
	.uleb128	8
	.long	.La9-.Ldebug_info0
# Definition TFmVoice
.La12:
	.uleb128	12
	.ascii	"TFMVOICE\000"
	.long	.La101-.Ldebug_info0
.La101:
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
	.long	.La98-.Ldebug_info0
	.uleb128	17
	.ascii	"OPERATORS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La102-.Ldebug_info0
	.uleb128	17
	.ascii	"OUTPUTS\000"
	.byte	2
	.byte	35
	.uleb128	72
	.long	.La104-.Ldebug_info0
	.uleb128	17
	.ascii	"OUTMULS\000"
	.byte	3
	.byte	35
	.uleb128	136
	.long	.La106-.Ldebug_info0
# Procdef constructor create(<TFmVoice>;<Pointer>);
	.uleb128	11
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La12-.Ldebug_info0
	.quad	FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
	.quad	.Lt20
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
	.long	.La99-.Ldebug_info0
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La39-.Ldebug_info0
	.byte	0
# Procdef getsample(<TFmVoice>):Double;
	.uleb128	11
	.ascii	"GETSAMPLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La1-.Ldebug_info0
	.quad	FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
	.quad	.Lt21
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
	.long	.La39-.Ldebug_info0
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
	.quad	.Lt22
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
	.long	.La39-.Ldebug_info0
	.byte	0
	.byte	0
.La13:
	.uleb128	8
	.long	.La12-.Ldebug_info0
# Definition TWaveSample1
.La15:
	.uleb128	12
	.ascii	"TWAVESAMPLE1\000"
	.long	.La108-.Ldebug_info0
.La108:
	.uleb128	16
	.ascii	"TWAVESAMPLE1\000"
	.uleb128	48
	.uleb128	17
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La45-.Ldebug_info0
	.uleb128	17
	.ascii	"LEN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La39-.Ldebug_info0
	.uleb128	17
	.ascii	"LSTART\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La39-.Ldebug_info0
	.uleb128	17
	.ascii	"LEND\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La39-.Ldebug_info0
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
	.long	.La109-.Ldebug_info0
	.uleb128	17
	.ascii	"NOTE\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La39-.Ldebug_info0
	.uleb128	17
	.ascii	"FINETUNE\000"
	.byte	2
	.byte	35
	.uleb128	44
	.long	.La39-.Ldebug_info0
	.byte	0
.La16:
	.uleb128	8
	.long	.La15-.Ldebug_info0
# Definition TMultiSample
.La17:
	.uleb128	12
	.ascii	"TMULTISAMPLE\000"
	.long	.La111-.Ldebug_info0
.La111:
	.uleb128	16
	.ascii	"TMULTISAMPLE\000"
	.uleb128	2824
	.uleb128	17
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La45-.Ldebug_info0
	.uleb128	17
	.ascii	"SAMPLES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La112-.Ldebug_info0
	.uleb128	17
	.ascii	"NOTES\000"
	.byte	3
	.byte	35
	.uleb128	2312
	.long	.La114-.Ldebug_info0
	.byte	0
.La18:
	.uleb128	8
	.long	.La17-.Ldebug_info0
# Definition TWaveSample0
.La19:
	.uleb128	12
	.ascii	"TWAVESAMPLE0\000"
	.long	.La116-.Ldebug_info0
.La116:
	.uleb128	16
	.ascii	"TWAVESAMPLE0\000"
	.uleb128	8200
	.uleb128	17
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La45-.Ldebug_info0
	.uleb128	17
	.ascii	"WAVE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La117-.Ldebug_info0
	.byte	0
.La20:
	.uleb128	8
	.long	.La19-.Ldebug_info0
# Definition TSampleinfo
.La21:
	.uleb128	12
	.ascii	"TSAMPLEINFO\000"
	.long	.La119-.Ldebug_info0
.La119:
	.uleb128	16
	.ascii	"TSAMPLEINFO\000"
	.uleb128	40
	.uleb128	17
	.ascii	"SLEN\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La120-.Ldebug_info0
	.uleb128	17
	.ascii	"SLS\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La120-.Ldebug_info0
	.uleb128	17
	.ascii	"SLL\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La120-.Ldebug_info0
	.uleb128	17
	.ascii	"VOL\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La51-.Ldebug_info0
	.uleb128	17
	.ascii	"FINETUNE\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La53-.Ldebug_info0
	.uleb128	17
	.ascii	"SAMPLETYPE\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La51-.Ldebug_info0
	.uleb128	17
	.ascii	"PAN\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La51-.Ldebug_info0
	.uleb128	17
	.ascii	"RELNOTE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La53-.Ldebug_info0
	.uleb128	17
	.ascii	"SNL\000"
	.byte	2
	.byte	35
	.uleb128	17
	.long	.La51-.Ldebug_info0
	.uleb128	17
	.ascii	"SAMPLENAME\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La122-.Ldebug_info0
	.byte	0
.La22:
	.uleb128	8
	.long	.La21-.Ldebug_info0
# Definition Array[0..65540] Of Double
.La23:
	.uleb128	6
	.uleb128	524328
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	65540
	.uleb128	8
	.long	.La39-.Ldebug_info0
	.byte	0
.La24:
	.uleb128	8
	.long	.La23-.Ldebug_info0
# Definition Array[0..8191] Of Double
.La25:
	.uleb128	6
	.uleb128	65536
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	8191
	.uleb128	8
	.long	.La55-.Ldebug_info0
	.byte	0
.La26:
	.uleb128	8
	.long	.La25-.Ldebug_info0
# Definition Array[0..127] Of Double
.La27:
	.uleb128	6
	.uleb128	1024
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	127
	.uleb128	8
	.long	.La53-.Ldebug_info0
	.byte	0
.La28:
	.uleb128	8
	.long	.La27-.Ldebug_info0
# Definition Array[-655360..655360] Of Double
.La29:
	.uleb128	6
	.uleb128	10485768
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	-655360
	.sleb128	655360
	.uleb128	8
	.long	.La39-.Ldebug_info0
	.byte	0
.La30:
	.uleb128	8
	.long	.La29-.Ldebug_info0
# Definition Array[0..31] Of TFmVoice
.La31:
	.uleb128	6
	.uleb128	256
	.long	.La12-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	31
	.uleb128	8
	.long	.La53-.Ldebug_info0
	.byte	0
.La32:
	.uleb128	8
	.long	.La31-.Ldebug_info0
# Definition Array[0..127] Of TWaveSample0
.La33:
	.uleb128	6
	.uleb128	1049600
	.long	.La19-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	127
	.uleb128	8200
	.long	.La53-.Ldebug_info0
	.byte	0
.La34:
	.uleb128	8
	.long	.La33-.Ldebug_info0
# Definition Array[0..16383] Of TWaveSample1
.La35:
	.uleb128	6
	.uleb128	786432
	.long	.La15-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	16383
	.uleb128	48
	.long	.La55-.Ldebug_info0
	.byte	0
.La36:
	.uleb128	8
	.long	.La35-.Ldebug_info0
# Definition Array[0..8191] Of TMultiSample
.La37:
	.uleb128	6
	.uleb128	23134208
	.long	.La17-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	8191
	.uleb128	2824
	.long	.La55-.Ldebug_info0
	.byte	0
.La38:
	.uleb128	8
	.long	.La37-.Ldebug_info0
# Definition ^Double
.La41:
	.uleb128	14
	.long	.La1-.Ldebug_info0
.La42:
	.uleb128	8
	.long	.La41-.Ldebug_info0
# Defs - End unit FMSYNTH has index 18
# Defs - Begin unit RETRO has index 12
# Defs - End unit RETRO has index 12
# Defs - Begin unit FMSYNTH has index 18
# Defs - End unit FMSYNTH has index 18
# Defs - Begin Staticsymtable
# Defs - End Staticsymtable
# Definition RawByteString
.La86:
	.uleb128	12
	.ascii	"RAWBYTESTRING\000"
	.long	.La124-.Ldebug_info0
.La124:
	.uleb128	14
	.long	.La78-.Ldebug_info0
.La87:
	.uleb128	8
	.long	.La86-.Ldebug_info0
# Definition QWord
.La88:
	.uleb128	12
	.ascii	"QWORD\000"
	.long	.La125-.Ldebug_info0
.La125:
	.uleb128	13
	.ascii	"QWord\000"
	.byte	7
	.byte	8
.La89:
	.uleb128	8
	.long	.La88-.Ldebug_info0
# Definition WIN32_FIND_DATAW
.La90:
	.uleb128	12
	.ascii	"WIN32_FIND_DATAW\000"
	.long	.La126-.Ldebug_info0
.La126:
	.uleb128	16
	.ascii	"WIN32_FIND_DATAW\000"
	.uleb128	592
	.uleb128	17
	.ascii	"DWFILEATTRIBUTES\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La120-.Ldebug_info0
	.uleb128	17
	.ascii	"FTCREATIONTIME\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La127-.Ldebug_info0
	.uleb128	17
	.ascii	"FTLASTACCESSTIME\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La127-.Ldebug_info0
	.uleb128	17
	.ascii	"FTLASTWRITETIME\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La127-.Ldebug_info0
	.uleb128	17
	.ascii	"NFILESIZEHIGH\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La120-.Ldebug_info0
	.uleb128	17
	.ascii	"NFILESIZELOW\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La120-.Ldebug_info0
	.uleb128	17
	.ascii	"DWRESERVED0\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La120-.Ldebug_info0
	.uleb128	17
	.ascii	"DWRESERVED1\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La120-.Ldebug_info0
	.uleb128	17
	.ascii	"CFILENAME\000"
	.byte	2
	.byte	35
	.uleb128	44
	.long	.La129-.Ldebug_info0
	.uleb128	17
	.ascii	"CALTERNATEFILENAME\000"
	.byte	3
	.byte	35
	.uleb128	564
	.long	.La131-.Ldebug_info0
	.byte	0
.La91:
	.uleb128	8
	.long	.La90-.Ldebug_info0
# Definition TObject
.La96:
	.uleb128	12
	.ascii	"TOBJECT\000"
	.long	.La133-.Ldebug_info0
.La133:
	.uleb128	14
	.long	.La98-.Ldebug_info0
.La98:
	.uleb128	19
	.ascii	"TOBJECT\000"
	.uleb128	8
	.uleb128	23
	.byte	1
	.ascii	"_vptr$TOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La99-.Ldebug_info0
# Procdef constructor Create(<TObject>;<Pointer>);
	.uleb128	24
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La96-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
# Symbol vmt
	.uleb128	26
	.ascii	"vmt\000"
	.long	.La99-.Ldebug_info0
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
# Symbol vmt
	.uleb128	26
	.ascii	"vmt\000"
	.long	.La99-.Ldebug_info0
	.byte	0
# Procdef class newinstance(<Class Of TObject>):TObject;
	.uleb128	28
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
	.long	.La96-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La134-.Ldebug_info0
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
	.byte	0
# Procdef SafeCallException(<TObject>;TObject;Pointer):LongInt;
	.uleb128	28
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
	.long	.La136-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
# Symbol EXCEPTOBJECT
	.uleb128	26
	.ascii	"EXCEPTOBJECT\000"
	.long	.La96-.Ldebug_info0
# Symbol EXCEPTADDR
	.uleb128	26
	.ascii	"EXCEPTADDR\000"
	.long	.La99-.Ldebug_info0
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	26
	.ascii	"MESSAGE\000"
	.long	.La138-.Ldebug_info0
	.byte	0
# Procdef Free(<TObject>);
	.uleb128	29
	.ascii	"FREE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
	.byte	0
# Procdef class InitInstance(<Class Of TObject>;Pointer):TObject;
	.uleb128	24
	.ascii	"INITINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La96-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La140-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	26
	.ascii	"INSTANCE\000"
	.long	.La99-.Ldebug_info0
	.byte	0
# Procdef CleanupInstance(<TObject>);
	.uleb128	29
	.ascii	"CLEANUPINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
	.byte	0
# Procdef class ClassType(<Class Of TObject>):Class Of TObject;
	.uleb128	24
	.ascii	"CLASSTYPE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La142-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La144-.Ldebug_info0
	.byte	0
# Procdef class ClassInfo(<Class Of TObject>):^untyped;
	.uleb128	24
	.ascii	"CLASSINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La99-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La146-.Ldebug_info0
	.byte	0
# Procdef class ClassName(<Class Of TObject>;<var ShortString>):ShortString;
	.uleb128	24
	.ascii	"CLASSNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La148-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La150-.Ldebug_info0
# Symbol result
	.uleb128	30
	.ascii	"result\000"
	.long	.La148-.Ldebug_info0
	.byte	0
# Procdef class ClassNameIs(<Class Of TObject>;const ShortString):Boolean;
	.uleb128	24
	.ascii	"CLASSNAMEIS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La152-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La154-.Ldebug_info0
# Symbol NAME
	.uleb128	26
	.ascii	"NAME\000"
	.long	.La148-.Ldebug_info0
	.byte	0
# Procdef class ClassParent(<Class Of TObject>):Class Of TObject;
	.uleb128	24
	.ascii	"CLASSPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La142-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La156-.Ldebug_info0
	.byte	0
# Procdef class InstanceSize(<Class Of TObject>):Int64;
	.uleb128	24
	.ascii	"INSTANCESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La67-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef class InheritsFrom(<Class Of TObject>;TClass):Boolean;
	.uleb128	24
	.ascii	"INHERITSFROM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La152-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La160-.Ldebug_info0
# Symbol ACLASS
	.uleb128	26
	.ascii	"ACLASS\000"
	.long	.La142-.Ldebug_info0
	.byte	0
# Procdef class StringMessageTable(<Class Of TObject>):^TStringMessageTable;
	.uleb128	24
	.ascii	"STRINGMESSAGETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La162-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La164-.Ldebug_info0
	.byte	0
# Procdef class MethodAddress(<Class Of TObject>;const ShortString):^untyped;
	.uleb128	24
	.ascii	"METHODADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La99-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La166-.Ldebug_info0
# Symbol NAME
	.uleb128	26
	.ascii	"NAME\000"
	.long	.La148-.Ldebug_info0
	.byte	0
# Procdef class MethodName(<Class Of TObject>;<var ShortString>;Pointer):ShortString;
	.uleb128	24
	.ascii	"METHODNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La148-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La168-.Ldebug_info0
# Symbol result
	.uleb128	30
	.ascii	"result\000"
	.long	.La148-.Ldebug_info0
# Symbol ADDRESS
	.uleb128	26
	.ascii	"ADDRESS\000"
	.long	.La99-.Ldebug_info0
	.byte	0
# Procdef FieldAddress(<TObject>;const ShortString):^untyped;
	.uleb128	24
	.ascii	"FIELDADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La99-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
# Symbol NAME
	.uleb128	26
	.ascii	"NAME\000"
	.long	.La148-.Ldebug_info0
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	26
	.ascii	"MESSAGE\000"
	.long	.La138-.Ldebug_info0
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	26
	.ascii	"MESSAGE\000"
	.long	.La138-.Ldebug_info0
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
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	26
	.ascii	"MESSAGE\000"
	.long	.La138-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	24
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La152-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
# Symbol IID
	.uleb128	26
	.ascii	"IID\000"
	.long	.La170-.Ldebug_info0
# Symbol OBJ
	.uleb128	26
	.ascii	"OBJ\000"
	.long	.La138-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	24
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La152-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	26
	.ascii	"IIDSTR\000"
	.long	.La148-.Ldebug_info0
# Symbol OBJ
	.uleb128	26
	.ascii	"OBJ\000"
	.long	.La138-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceByStr(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	24
	.ascii	"GETINTERFACEBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La152-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	26
	.ascii	"IIDSTR\000"
	.long	.La148-.Ldebug_info0
# Symbol OBJ
	.uleb128	26
	.ascii	"OBJ\000"
	.long	.La138-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceWeak(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	24
	.ascii	"GETINTERFACEWEAK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La152-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
# Symbol IID
	.uleb128	26
	.ascii	"IID\000"
	.long	.La170-.Ldebug_info0
# Symbol OBJ
	.uleb128	26
	.ascii	"OBJ\000"
	.long	.La138-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntry(<Class Of TObject>;const TGuid):^tinterfaceentry;
	.uleb128	24
	.ascii	"GETINTERFACEENTRY\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La172-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La174-.Ldebug_info0
# Symbol IID
	.uleb128	26
	.ascii	"IID\000"
	.long	.La170-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntryByStr(<Class Of TObject>;const ShortString):^tinterfaceentry;
	.uleb128	24
	.ascii	"GETINTERFACEENTRYBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La172-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La176-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	26
	.ascii	"IIDSTR\000"
	.long	.La148-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceTable(<Class Of TObject>):^tinterfacetable;
	.uleb128	24
	.ascii	"GETINTERFACETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La178-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La180-.Ldebug_info0
	.byte	0
# Procdef class UnitName(<Class Of TObject>;<var AnsiString>):AnsiString;
	.uleb128	24
	.ascii	"UNITNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La45-.Ldebug_info0
# Symbol self
	.uleb128	25
	.ascii	"self\000"
	.byte	1
	.long	.La182-.Ldebug_info0
# Symbol result
	.uleb128	30
	.ascii	"result\000"
	.long	.La45-.Ldebug_info0
	.byte	0
# Procdef Equals(<TObject>;TObject):Boolean;
	.uleb128	28
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
	.long	.La152-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
# Symbol OBJ
	.uleb128	26
	.ascii	"OBJ\000"
	.long	.La96-.Ldebug_info0
	.byte	0
# Procdef GetHashCode(<TObject>):Int64;
	.uleb128	28
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
	.long	.La67-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
	.byte	0
# Procdef ToString(<TObject>;<var AnsiString>):AnsiString;
	.uleb128	28
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
	.long	.La45-.Ldebug_info0
# Symbol this
	.uleb128	25
	.ascii	"this\000"
	.byte	1
	.long	.La96-.Ldebug_info0
# Symbol result
	.uleb128	30
	.ascii	"result\000"
	.long	.La45-.Ldebug_info0
	.byte	0
	.byte	0
.La97:
	.uleb128	8
	.long	.La96-.Ldebug_info0
# Definition Pointer
.La99:
	.uleb128	12
	.ascii	"POINTER\000"
	.long	.La184-.Ldebug_info0
.La184:
	.uleb128	15
.La100:
	.uleb128	8
	.long	.La99-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of TFmOperator
.La102:
	.uleb128	6
	.uleb128	64
	.long	.La9-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	8
	.long	.La53-.Ldebug_info0
	.byte	0
.La103:
	.uleb128	8
	.long	.La102-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of Double
.La104:
	.uleb128	6
	.uleb128	64
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	8
	.long	.La53-.Ldebug_info0
	.byte	0
.La105:
	.uleb128	8
	.long	.La104-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of Single
.La106:
	.uleb128	6
	.uleb128	32
	.long	.La69-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	4
	.long	.La53-.Ldebug_info0
	.byte	0
.La107:
	.uleb128	8
	.long	.La106-.Ldebug_info0
# Definition TWaveSample1.^Double
.La109:
	.uleb128	14
	.long	.La1-.Ldebug_info0
.La110:
	.uleb128	8
	.long	.La109-.Ldebug_info0
# Definition TMultiSample.Array[0..47] Of TWaveSample1
.La112:
	.uleb128	6
	.uleb128	2304
	.long	.La15-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	47
	.uleb128	48
	.long	.La53-.Ldebug_info0
	.byte	0
.La113:
	.uleb128	8
	.long	.La112-.Ldebug_info0
# Definition TMultiSample.Array[0..127] Of LongInt
.La114:
	.uleb128	6
	.uleb128	512
	.long	.La39-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	127
	.uleb128	4
	.long	.La53-.Ldebug_info0
	.byte	0
.La115:
	.uleb128	8
	.long	.La114-.Ldebug_info0
# Definition TWaveSample0.Array[0..1023] Of Double
.La117:
	.uleb128	6
	.uleb128	8192
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	1023
	.uleb128	8
	.long	.La55-.Ldebug_info0
	.byte	0
.La118:
	.uleb128	8
	.long	.La117-.Ldebug_info0
# Definition LongWord
.La120:
	.uleb128	12
	.ascii	"LONGWORD\000"
	.long	.La185-.Ldebug_info0
.La185:
	.uleb128	13
	.ascii	"LONGWORD\000"
	.byte	7
	.byte	4
.La121:
	.uleb128	8
	.long	.La120-.Ldebug_info0
# Definition TSampleinfo.Array[0..21] Of Char
.La122:
	.uleb128	6
	.uleb128	22
	.long	.La78-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	21
	.uleb128	1
	.long	.La53-.Ldebug_info0
	.byte	0
.La123:
	.uleb128	8
	.long	.La122-.Ldebug_info0
# Definition FILETIME
.La127:
	.uleb128	12
	.ascii	"FILETIME\000"
	.long	.La186-.Ldebug_info0
.La186:
	.uleb128	16
	.ascii	"FILETIME\000"
	.uleb128	8
	.uleb128	17
	.ascii	"DWLOWDATETIME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La120-.Ldebug_info0
	.uleb128	17
	.ascii	"DWHIGHDATETIME\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La120-.Ldebug_info0
	.byte	0
.La128:
	.uleb128	8
	.long	.La127-.Ldebug_info0
# Definition WIN32_FIND_DATAW.Array[0..259] Of WideChar
.La129:
	.uleb128	6
	.uleb128	520
	.long	.La187-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	259
	.uleb128	2
	.long	.La55-.Ldebug_info0
	.byte	0
.La130:
	.uleb128	8
	.long	.La129-.Ldebug_info0
# Definition WIN32_FIND_DATAW.Array[0..13] Of WideChar
.La131:
	.uleb128	6
	.uleb128	28
	.long	.La187-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	13
	.uleb128	2
	.long	.La53-.Ldebug_info0
	.byte	0
.La132:
	.uleb128	8
	.long	.La131-.Ldebug_info0
# Definition TObject.Class Of TObject
.La134:
	.uleb128	14
	.long	.La189-.Ldebug_info0
.La135:
	.uleb128	8
	.long	.La134-.Ldebug_info0
# Definition HRESULT
.La136:
	.uleb128	12
	.ascii	"HRESULT\000"
	.long	.La191-.Ldebug_info0
.La191:
	.uleb128	13
	.ascii	"HRESULT\000"
	.byte	5
	.byte	4
.La137:
	.uleb128	8
	.long	.La136-.Ldebug_info0
# Definition <Formal type>
.La138:
	.uleb128	12
	.ascii	"formal\000"
	.long	.La192-.Ldebug_info0
.La192:
	.uleb128	13
	.ascii	"FormalDef\000"
	.byte	7
	.byte	0
.La139:
	.uleb128	8
	.long	.La138-.Ldebug_info0
# Definition TObject.Class Of TObject
.La140:
	.uleb128	14
	.long	.La189-.Ldebug_info0
.La141:
	.uleb128	8
	.long	.La140-.Ldebug_info0
# Definition TClass
.La142:
	.uleb128	12
	.ascii	"TCLASS\000"
	.long	.La193-.Ldebug_info0
.La193:
	.uleb128	14
	.long	.La189-.Ldebug_info0
.La143:
	.uleb128	8
	.long	.La142-.Ldebug_info0
# Definition TObject.Class Of TObject
.La144:
	.uleb128	14
	.long	.La189-.Ldebug_info0
.La145:
	.uleb128	8
	.long	.La144-.Ldebug_info0
# Definition TObject.Class Of TObject
.La146:
	.uleb128	14
	.long	.La189-.Ldebug_info0
.La147:
	.uleb128	8
	.long	.La146-.Ldebug_info0
# Definition ShortString
.La148:
	.uleb128	12
	.ascii	"SHORTSTRING\000"
	.long	.La194-.Ldebug_info0
.La194:
	.uleb128	16
	.ascii	"ShortString\000"
	.uleb128	256
	.uleb128	17
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La51-.Ldebug_info0
	.uleb128	17
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La195-.Ldebug_info0
	.byte	0
.La195:
	.uleb128	31
	.uleb128	256
	.uleb128	1
	.long	.La78-.Ldebug_info0
	.uleb128	32
	.uleb128	1
	.uleb128	255
	.long	.La51-.Ldebug_info0
	.byte	0
.La149:
	.uleb128	8
	.long	.La148-.Ldebug_info0
# Definition TObject.Class Of TObject
.La150:
	.uleb128	14
	.long	.La189-.Ldebug_info0
.La151:
	.uleb128	8
	.long	.La150-.Ldebug_info0
# Definition Boolean
.La152:
	.uleb128	12
	.ascii	"BOOLEAN\000"
	.long	.La196-.Ldebug_info0
.La196:
	.uleb128	13
	.ascii	"Boolean\000"
	.byte	2
	.byte	1
.La153:
	.uleb128	8
	.long	.La152-.Ldebug_info0
# Definition TObject.Class Of TObject
.La154:
	.uleb128	14
	.long	.La189-.Ldebug_info0
.La155:
	.uleb128	8
	.long	.La154-.Ldebug_info0
# Definition TObject.Class Of TObject
.La156:
	.uleb128	14
	.long	.La189-.Ldebug_info0
.La157:
	.uleb128	8
	.long	.La156-.Ldebug_info0
# Definition TObject.Class Of TObject
.La158:
	.uleb128	14
	.long	.La189-.Ldebug_info0
.La159:
	.uleb128	8
	.long	.La158-.Ldebug_info0
# Definition TObject.Class Of TObject
.La160:
	.uleb128	14
	.long	.La189-.Ldebug_info0
.La161:
	.uleb128	8
	.long	.La160-.Ldebug_info0
# Definition pstringmessagetable
.La162:
	.uleb128	12
	.ascii	"PSTRINGMESSAGETABLE\000"
	.long	.La197-.Ldebug_info0
.La197:
	.uleb128	14
	.long	.La198-.Ldebug_info0
.La163:
	.uleb128	8
	.long	.La162-.Ldebug_info0
# Definition TObject.Class Of TObject
.La164:
	.uleb128	14
	.long	.La189-.Ldebug_info0
.La165:
	.uleb128	8
	.long	.La164-.Ldebug_info0
# Definition TObject.Class Of TObject
.La166:
	.uleb128	14
	.long	.La189-.Ldebug_info0
.La167:
	.uleb128	8
	.long	.La166-.Ldebug_info0
# Definition TObject.Class Of TObject
.La168:
	.uleb128	14
	.long	.La189-.Ldebug_info0
.La169:
	.uleb128	8
	.long	.La168-.Ldebug_info0
# Definition TGuid
.La170:
	.uleb128	12
	.ascii	"TGUID\000"
	.long	.La200-.Ldebug_info0
.La200:
	.uleb128	16
	.ascii	"TGUID\000"
	.uleb128	16
	.uleb128	17
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La120-.Ldebug_info0
	.uleb128	17
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La63-.Ldebug_info0
	.uleb128	17
	.ascii	"DATA3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La63-.Ldebug_info0
	.uleb128	17
	.ascii	"DATA4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La201-.Ldebug_info0
	.uleb128	17
	.ascii	"D1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La120-.Ldebug_info0
	.uleb128	17
	.ascii	"D2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La63-.Ldebug_info0
	.uleb128	17
	.ascii	"D3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La63-.Ldebug_info0
	.uleb128	17
	.ascii	"D4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La203-.Ldebug_info0
	.uleb128	17
	.ascii	"TIME_LOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La120-.Ldebug_info0
	.uleb128	17
	.ascii	"TIME_MID\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La63-.Ldebug_info0
	.uleb128	17
	.ascii	"TIME_HI_AND_VERSION\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La63-.Ldebug_info0
	.uleb128	17
	.ascii	"CLOCK_SEQ_HI_AND_RESERVED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La51-.Ldebug_info0
	.uleb128	17
	.ascii	"CLOCK_SEQ_LOW\000"
	.byte	2
	.byte	35
	.uleb128	9
	.long	.La51-.Ldebug_info0
	.uleb128	17
	.ascii	"NODE\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La205-.Ldebug_info0
	.byte	0
.La171:
	.uleb128	8
	.long	.La170-.Ldebug_info0
# Definition pinterfaceentry
.La172:
	.uleb128	12
	.ascii	"PINTERFACEENTRY\000"
	.long	.La207-.Ldebug_info0
.La207:
	.uleb128	14
	.long	.La208-.Ldebug_info0
.La173:
	.uleb128	8
	.long	.La172-.Ldebug_info0
# Definition TObject.Class Of TObject
.La174:
	.uleb128	14
	.long	.La189-.Ldebug_info0
.La175:
	.uleb128	8
	.long	.La174-.Ldebug_info0
# Definition TObject.Class Of TObject
.La176:
	.uleb128	14
	.long	.La189-.Ldebug_info0
.La177:
	.uleb128	8
	.long	.La176-.Ldebug_info0
# Definition pinterfacetable
.La178:
	.uleb128	12
	.ascii	"PINTERFACETABLE\000"
	.long	.La210-.Ldebug_info0
.La210:
	.uleb128	14
	.long	.La211-.Ldebug_info0
.La179:
	.uleb128	8
	.long	.La178-.Ldebug_info0
# Definition TObject.Class Of TObject
.La180:
	.uleb128	14
	.long	.La189-.Ldebug_info0
.La181:
	.uleb128	8
	.long	.La180-.Ldebug_info0
# Definition TObject.Class Of TObject
.La182:
	.uleb128	14
	.long	.La189-.Ldebug_info0
.La183:
	.uleb128	8
	.long	.La182-.Ldebug_info0
# Definition WideChar
.La187:
	.uleb128	12
	.ascii	"WIDECHAR\000"
	.long	.La213-.Ldebug_info0
.La213:
	.uleb128	13
	.ascii	"WideChar\000"
	.byte	8
	.byte	2
.La188:
	.uleb128	8
	.long	.La187-.Ldebug_info0
# Definition <record type>
.La189:
	.uleb128	12
	.ascii	"__vtbl_ptr_type\000"
	.long	.La214-.Ldebug_info0
.La214:
	.uleb128	33
	.uleb128	40
	.byte	0
.La190:
	.uleb128	8
	.long	.La189-.Ldebug_info0
# Definition TStringMessageTable
.La198:
	.uleb128	12
	.ascii	"TSTRINGMESSAGETABLE\000"
	.long	.La215-.Ldebug_info0
.La215:
	.uleb128	16
	.ascii	"TSTRINGMESSAGETABLE\000"
	.uleb128	24
	.uleb128	17
	.ascii	"COUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La39-.Ldebug_info0
	.uleb128	17
	.ascii	"MSGSTRTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La216-.Ldebug_info0
	.byte	0
.La199:
	.uleb128	8
	.long	.La198-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La201:
	.uleb128	6
	.uleb128	8
	.long	.La51-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La53-.Ldebug_info0
	.byte	0
.La202:
	.uleb128	8
	.long	.La201-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La203:
	.uleb128	6
	.uleb128	8
	.long	.La51-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La53-.Ldebug_info0
	.byte	0
.La204:
	.uleb128	8
	.long	.La203-.Ldebug_info0
# Definition TGuid.Array[0..5] Of Byte
.La205:
	.uleb128	6
	.uleb128	6
	.long	.La51-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	5
	.uleb128	1
	.long	.La53-.Ldebug_info0
	.byte	0
.La206:
	.uleb128	8
	.long	.La205-.Ldebug_info0
# Definition tinterfaceentry
.La208:
	.uleb128	12
	.ascii	"TINTERFACEENTRY\000"
	.long	.La218-.Ldebug_info0
.La218:
	.uleb128	16
	.ascii	"TINTERFACEENTRY\000"
	.uleb128	40
	.uleb128	17
	.ascii	"IID\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La219-.Ldebug_info0
	.uleb128	17
	.ascii	"VTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La99-.Ldebug_info0
	.uleb128	17
	.ascii	"IOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La88-.Ldebug_info0
	.uleb128	17
	.ascii	"IIDSTR\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La221-.Ldebug_info0
	.uleb128	17
	.ascii	"ITYPE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La223-.Ldebug_info0
	.uleb128	17
	.ascii	"__PAD_DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La67-.Ldebug_info0
	.byte	0
.La209:
	.uleb128	8
	.long	.La208-.Ldebug_info0
# Definition tinterfacetable
.La211:
	.uleb128	12
	.ascii	"TINTERFACETABLE\000"
	.long	.La225-.Ldebug_info0
.La225:
	.uleb128	16
	.ascii	"TINTERFACETABLE\000"
	.uleb128	48
	.uleb128	17
	.ascii	"ENTRYCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La88-.Ldebug_info0
	.uleb128	17
	.ascii	"ENTRIES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La226-.Ldebug_info0
	.byte	0
.La212:
	.uleb128	8
	.long	.La211-.Ldebug_info0
# Definition TStringMessageTable.Array[0..0] Of TMsgStrTable
.La216:
	.uleb128	6
	.uleb128	16
	.long	.La228-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	0
	.uleb128	16
	.long	.La53-.Ldebug_info0
	.byte	0
.La217:
	.uleb128	8
	.long	.La216-.Ldebug_info0
# Definition PGuid
.La219:
	.uleb128	12
	.ascii	"PGUID\000"
	.long	.La230-.Ldebug_info0
.La230:
	.uleb128	14
	.long	.La170-.Ldebug_info0
.La220:
	.uleb128	8
	.long	.La219-.Ldebug_info0
# Definition PShortString
.La221:
	.uleb128	12
	.ascii	"PSHORTSTRING\000"
	.long	.La231-.Ldebug_info0
.La231:
	.uleb128	14
	.long	.La148-.Ldebug_info0
.La222:
	.uleb128	8
	.long	.La221-.Ldebug_info0
# Definition tinterfaceentrytype
.La223:
	.uleb128	12
	.ascii	"TINTERFACEENTRYTYPE\000"
	.long	.La232-.Ldebug_info0
.La232:
	.uleb128	34
	.ascii	"TINTERFACEENTRYTYPE\000"
	.byte	4
	.uleb128	35
	.ascii	"ETSTANDARD\000"
	.long	0
	.uleb128	35
	.ascii	"ETVIRTUALMETHODRESULT\000"
	.long	1
	.uleb128	35
	.ascii	"ETSTATICMETHODRESULT\000"
	.long	2
	.uleb128	35
	.ascii	"ETFIELDVALUE\000"
	.long	3
	.uleb128	35
	.ascii	"ETVIRTUALMETHODCLASS\000"
	.long	4
	.uleb128	35
	.ascii	"ETSTATICMETHODCLASS\000"
	.long	5
	.uleb128	35
	.ascii	"ETFIELDVALUECLASS\000"
	.long	6
	.byte	0
.La224:
	.uleb128	8
	.long	.La223-.Ldebug_info0
# Definition tinterfacetable.Array[0..0] Of tinterfaceentry
.La226:
	.uleb128	6
	.uleb128	40
	.long	.La208-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	0
	.uleb128	40
	.long	.La53-.Ldebug_info0
	.byte	0
.La227:
	.uleb128	8
	.long	.La226-.Ldebug_info0
# Definition TMsgStrTable
.La228:
	.uleb128	12
	.ascii	"TMSGSTRTABLE\000"
	.long	.La233-.Ldebug_info0
.La233:
	.uleb128	16
	.ascii	"TMSGSTRTABLE\000"
	.uleb128	16
	.uleb128	17
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La221-.Ldebug_info0
	.uleb128	17
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La99-.Ldebug_info0
	.byte	0
.La229:
	.uleb128	8
	.long	.La228-.Ldebug_info0
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
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
# Abbrev 23
	.uleb128	23
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
	.uleb128	76
	.uleb128	11
	.uleb128	77
	.uleb128	10
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
	.byte	0
	.byte	0
# Abbrev 30
	.uleb128	30
	.uleb128	52
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 31
	.uleb128	31
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
# Abbrev 32
	.uleb128	32
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
# Abbrev 33
	.uleb128	33
	.uleb128	19
	.byte	1
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 34
	.uleb128	34
	.uleb128	4
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.byte	0
	.byte	0
# Abbrev 35
	.uleb128	35
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
# [127:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	138
# [127:1]
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
# [127:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll4
	.byte	5
	.uleb128	1
	.byte	138
# [127:1]
	.byte	2
	.uleb128	.Ll5-.Ll4
	.byte	1
# [128:14]
	.byte	2
	.uleb128	.Ll6-.Ll5
	.byte	5
	.uleb128	14
	.byte	13
# [129:32]
	.byte	2
	.uleb128	.Ll7-.Ll6
	.byte	5
	.uleb128	32
	.byte	13
# [131:35]
	.byte	2
	.uleb128	.Ll8-.Ll7
	.byte	5
	.uleb128	35
	.byte	14
# [132:14]
	.byte	2
	.uleb128	.Ll9-.Ll8
	.byte	5
	.uleb128	14
	.byte	13
# [133:45]
	.byte	2
	.uleb128	.Ll10-.Ll9
	.byte	5
	.uleb128	45
	.byte	13
# [134:30]
	.byte	2
	.uleb128	.Ll11-.Ll10
	.byte	5
	.uleb128	30
	.byte	13
# [135:22]
	.byte	2
	.uleb128	.Ll12-.Ll11
	.byte	5
	.uleb128	22
	.byte	13
# [136:22]
	.byte	2
	.uleb128	.Ll13-.Ll12
	.byte	13
# [137:22]
	.byte	2
	.uleb128	.Ll14-.Ll13
	.byte	13
# [138:22]
	.byte	2
	.uleb128	.Ll15-.Ll14
	.byte	13
# [139:22]
	.byte	2
	.uleb128	.Ll16-.Ll15
	.byte	13
# [140:22]
	.byte	2
	.uleb128	.Ll17-.Ll16
	.byte	13
# [142:14]
	.byte	2
	.uleb128	.Ll18-.Ll17
	.byte	5
	.uleb128	14
	.byte	14
# [143:3]
	.byte	2
	.uleb128	.Ll19-.Ll18
	.byte	5
	.uleb128	3
	.byte	13
# [144:15]
	.byte	2
	.uleb128	.Ll20-.Ll19
	.byte	5
	.uleb128	15
	.byte	13
# [146:47]
	.byte	2
	.uleb128	.Ll21-.Ll20
	.byte	5
	.uleb128	47
	.byte	14
# [147:3]
	.byte	2
	.uleb128	.Ll22-.Ll21
	.byte	5
	.uleb128	3
	.byte	13
# [148:3]
	.byte	2
	.uleb128	.Ll23-.Ll22
	.byte	13
# [149:20]
	.byte	2
	.uleb128	.Ll24-.Ll23
	.byte	5
	.uleb128	20
	.byte	13
# [150:16]
	.byte	2
	.uleb128	.Ll25-.Ll24
	.byte	5
	.uleb128	16
	.byte	13
# [151:10]
	.byte	2
	.uleb128	.Ll26-.Ll25
	.byte	5
	.uleb128	10
	.byte	13
# [152:1]
	.byte	2
	.uleb128	.Ll27-.Ll26
	.byte	5
	.uleb128	1
	.byte	13
# [127:1]
	.byte	2
	.uleb128	.Ll28-.Ll27
	.byte	3
	.sleb128	-25
	.byte	1
# [153:1]
	.byte	2
	.uleb128	.Ll29-.Ll28
	.byte	38
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll30
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$INITSAMPLES1_$$_fin$1
# [171:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll31
	.byte	5
	.uleb128	1
	.byte	182
# [171:1]
	.byte	2
	.uleb128	.Ll32-.Ll31
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll33
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITSAMPLES1
# [171:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll34
	.byte	5
	.uleb128	1
	.byte	182
# [171:1]
	.byte	2
	.uleb128	.Ll35-.Ll34
	.byte	1
# [172:14]
	.byte	2
	.uleb128	.Ll36-.Ll35
	.byte	5
	.uleb128	14
	.byte	13
# [173:32]
	.byte	2
	.uleb128	.Ll37-.Ll36
	.byte	5
	.uleb128	32
	.byte	13
# [175:35]
	.byte	2
	.uleb128	.Ll38-.Ll37
	.byte	5
	.uleb128	35
	.byte	14
# [176:14]
	.byte	2
	.uleb128	.Ll39-.Ll38
	.byte	5
	.uleb128	14
	.byte	13
# [177:14]
	.byte	2
	.uleb128	.Ll40-.Ll39
	.byte	13
# [178:3]
	.byte	2
	.uleb128	.Ll41-.Ll40
	.byte	5
	.uleb128	3
	.byte	13
# [179:14]
	.byte	2
	.uleb128	.Ll42-.Ll41
	.byte	5
	.uleb128	14
	.byte	13
# [180:14]
	.byte	2
	.uleb128	.Ll43-.Ll42
	.byte	13
# [181:3]
	.byte	2
	.uleb128	.Ll44-.Ll43
	.byte	5
	.uleb128	3
	.byte	13
# [182:14]
	.byte	2
	.uleb128	.Ll45-.Ll44
	.byte	5
	.uleb128	14
	.byte	13
# [183:15]
	.byte	2
	.uleb128	.Ll46-.Ll45
	.byte	5
	.uleb128	15
	.byte	13
# [184:15]
	.byte	2
	.uleb128	.Ll47-.Ll46
	.byte	13
# [186:42]
	.byte	2
	.uleb128	.Ll48-.Ll47
	.byte	5
	.uleb128	42
	.byte	14
# [187:24]
	.byte	2
	.uleb128	.Ll49-.Ll48
	.byte	5
	.uleb128	24
	.byte	13
# [188:28]
	.byte	2
	.uleb128	.Ll50-.Ll49
	.byte	5
	.uleb128	28
	.byte	13
# [190:32]
	.byte	2
	.uleb128	.Ll51-.Ll50
	.byte	5
	.uleb128	32
	.byte	14
# [191:52]
	.byte	2
	.uleb128	.Ll52-.Ll51
	.byte	5
	.uleb128	52
	.byte	13
# [192:37]
	.byte	2
	.uleb128	.Ll53-.Ll52
	.byte	5
	.uleb128	37
	.byte	13
# [193:5]
	.byte	2
	.uleb128	.Ll54-.Ll53
	.byte	5
	.uleb128	5
	.byte	13
# [194:5]
	.byte	2
	.uleb128	.Ll55-.Ll54
	.byte	13
# [196:29]
	.byte	2
	.uleb128	.Ll56-.Ll55
	.byte	5
	.uleb128	29
	.byte	14
# [198:27]
	.byte	2
	.uleb128	.Ll57-.Ll56
	.byte	5
	.uleb128	27
	.byte	14
# [199:25]
	.byte	2
	.uleb128	.Ll58-.Ll57
	.byte	5
	.uleb128	25
	.byte	13
# [200:26]
	.byte	2
	.uleb128	.Ll59-.Ll58
	.byte	5
	.uleb128	26
	.byte	13
# [196:9]
	.byte	2
	.uleb128	.Ll60-.Ll59
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	-4
	.byte	1
# [202:55]
	.byte	2
	.uleb128	.Ll61-.Ll60
	.byte	5
	.uleb128	55
	.byte	18
# [204:28]
	.byte	2
	.uleb128	.Ll62-.Ll61
	.byte	5
	.uleb128	28
	.byte	14
# [202:9]
	.byte	2
	.uleb128	.Ll63-.Ll62
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	-2
	.byte	1
# [208:29]
	.byte	2
	.uleb128	.Ll64-.Ll63
	.byte	5
	.uleb128	29
	.byte	18
# [171:1]
	.byte	2
	.uleb128	.Ll65-.Ll64
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-37
	.byte	1
# [208:68]
	.byte	2
	.uleb128	.Ll66-.Ll65
	.byte	5
	.uleb128	68
	.byte	49
# [209:5]
	.byte	2
	.uleb128	.Ll67-.Ll66
	.byte	5
	.uleb128	5
	.byte	13
# [210:20]
	.byte	2
	.uleb128	.Ll68-.Ll67
	.byte	5
	.uleb128	20
	.byte	13
# [171:1]
	.byte	2
	.uleb128	.Ll69-.Ll68
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-39
	.byte	1
# [210:74]
	.byte	2
	.uleb128	.Ll70-.Ll69
	.byte	5
	.uleb128	74
	.byte	51
# [171:1]
	.byte	2
	.uleb128	.Ll71-.Ll70
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-39
	.byte	1
# [210:156]
	.byte	2
	.uleb128	.Ll72-.Ll71
	.byte	5
	.uleb128	156
	.byte	51
# [211:51]
	.byte	2
	.uleb128	.Ll73-.Ll72
	.byte	5
	.uleb128	51
	.byte	13
# [212:45]
	.byte	2
	.uleb128	.Ll74-.Ll73
	.byte	5
	.uleb128	45
	.byte	13
# [216:91]
	.byte	2
	.uleb128	.Ll75-.Ll74
	.byte	5
	.uleb128	91
	.byte	16
# [218:5]
	.byte	2
	.uleb128	.Ll76-.Ll75
	.byte	5
	.uleb128	5
	.byte	14
# [219:20]
	.byte	2
	.uleb128	.Ll77-.Ll76
	.byte	5
	.uleb128	20
	.byte	13
# [184:7]
	.byte	2
	.uleb128	.Ll78-.Ll77
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-35
	.byte	1
# [221:16]
	.byte	2
	.uleb128	.Ll79-.Ll78
	.byte	5
	.uleb128	16
	.byte	49
# [222:15]
	.byte	2
	.uleb128	.Ll80-.Ll79
	.byte	5
	.uleb128	15
	.byte	13
# [223:10]
	.byte	2
	.uleb128	.Ll81-.Ll80
	.byte	5
	.uleb128	10
	.byte	13
# [224:1]
	.byte	2
	.uleb128	.Ll82-.Ll81
	.byte	5
	.uleb128	1
	.byte	13
# [171:1]
	.byte	2
	.uleb128	.Ll83-.Ll82
	.byte	3
	.sleb128	-53
	.byte	1
# [225:1]
	.byte	2
	.uleb128	.Ll84-.Ll83
	.byte	66
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll85
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$INITSAMPLES2_$$_fin$2
# [241:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll86
	.byte	5
	.uleb128	1
	.byte	252
# [241:1]
	.byte	2
	.uleb128	.Ll87-.Ll86
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll88
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITSAMPLES2
# [241:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll89
	.byte	5
	.uleb128	1
	.byte	252
# [241:1]
	.byte	2
	.uleb128	.Ll90-.Ll89
	.byte	1
# [242:14]
	.byte	2
	.uleb128	.Ll91-.Ll90
	.byte	5
	.uleb128	14
	.byte	13
# [243:29]
	.byte	2
	.uleb128	.Ll92-.Ll91
	.byte	5
	.uleb128	29
	.byte	13
# [245:6]
	.byte	2
	.uleb128	.Ll93-.Ll92
	.byte	5
	.uleb128	6
	.byte	14
# [246:20]
	.byte	2
	.uleb128	.Ll94-.Ll93
	.byte	5
	.uleb128	20
	.byte	13
# [247:27]
	.byte	2
	.uleb128	.Ll95-.Ll94
	.byte	5
	.uleb128	27
	.byte	13
# [248:3]
	.byte	2
	.uleb128	.Ll96-.Ll95
	.byte	5
	.uleb128	3
	.byte	13
# [249:3]
	.byte	2
	.uleb128	.Ll97-.Ll96
	.byte	13
# [250:36]
	.byte	2
	.uleb128	.Ll98-.Ll97
	.byte	5
	.uleb128	36
	.byte	13
# [254:42]
	.byte	2
	.uleb128	.Ll99-.Ll98
	.byte	5
	.uleb128	42
	.byte	16
# [255:27]
	.byte	2
	.uleb128	.Ll100-.Ll99
	.byte	5
	.uleb128	27
	.byte	13
# [256:15]
	.byte	2
	.uleb128	.Ll101-.Ll100
	.byte	5
	.uleb128	15
	.byte	13
# [257:42]
	.byte	2
	.uleb128	.Ll102-.Ll101
	.byte	5
	.uleb128	42
	.byte	13
# [258:39]
	.byte	2
	.uleb128	.Ll103-.Ll102
	.byte	5
	.uleb128	39
	.byte	13
# [259:43]
	.byte	2
	.uleb128	.Ll104-.Ll103
	.byte	5
	.uleb128	43
	.byte	13
# [260:31]
	.byte	2
	.uleb128	.Ll105-.Ll104
	.byte	5
	.uleb128	31
	.byte	13
# [261:44]
	.byte	2
	.uleb128	.Ll106-.Ll105
	.byte	5
	.uleb128	44
	.byte	13
# [262:23]
	.byte	2
	.uleb128	.Ll107-.Ll106
	.byte	5
	.uleb128	23
	.byte	13
# [263:23]
	.byte	2
	.uleb128	.Ll108-.Ll107
	.byte	13
# [264:23]
	.byte	2
	.uleb128	.Ll109-.Ll108
	.byte	13
# [265:13]
	.byte	2
	.uleb128	.Ll110-.Ll109
	.byte	5
	.uleb128	13
	.byte	13
# [266:35]
	.byte	2
	.uleb128	.Ll111-.Ll110
	.byte	5
	.uleb128	35
	.byte	13
# [267:4]
	.byte	2
	.uleb128	.Ll112-.Ll111
	.byte	5
	.uleb128	4
	.byte	13
# [268:27]
	.byte	2
	.uleb128	.Ll113-.Ll112
	.byte	5
	.uleb128	27
	.byte	13
# [269:16]
	.byte	2
	.uleb128	.Ll114-.Ll113
	.byte	5
	.uleb128	16
	.byte	13
# [241:1]
	.byte	2
	.uleb128	.Ll115-.Ll114
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-28
	.byte	1
# [269:59]
	.byte	2
	.uleb128	.Ll116-.Ll115
	.byte	5
	.uleb128	59
	.byte	40
# [270:4]
	.byte	2
	.uleb128	.Ll117-.Ll116
	.byte	5
	.uleb128	4
	.byte	13
# [271:4]
	.byte	2
	.uleb128	.Ll118-.Ll117
	.byte	13
# [272:4]
	.byte	2
	.uleb128	.Ll119-.Ll118
	.byte	13
# [273:23]
	.byte	2
	.uleb128	.Ll120-.Ll119
	.byte	5
	.uleb128	23
	.byte	13
# [272:4]
	.byte	2
	.uleb128	.Ll121-.Ll120
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-1
	.byte	1
# [274:41]
	.byte	2
	.uleb128	.Ll122-.Ll121
	.byte	5
	.uleb128	41
	.byte	14
# [272:4]
	.byte	2
	.uleb128	.Ll123-.Ll122
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-2
	.byte	1
# [275:40]
	.byte	2
	.uleb128	.Ll124-.Ll123
	.byte	5
	.uleb128	40
	.byte	15
# [272:4]
	.byte	2
	.uleb128	.Ll125-.Ll124
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-3
	.byte	1
# [276:41]
	.byte	2
	.uleb128	.Ll126-.Ll125
	.byte	5
	.uleb128	41
	.byte	16
# [272:4]
	.byte	2
	.uleb128	.Ll127-.Ll126
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-4
	.byte	1
# [277:40]
	.byte	2
	.uleb128	.Ll128-.Ll127
	.byte	5
	.uleb128	40
	.byte	17
# [272:4]
	.byte	2
	.uleb128	.Ll129-.Ll128
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-5
	.byte	1
# [278:40]
	.byte	2
	.uleb128	.Ll130-.Ll129
	.byte	5
	.uleb128	40
	.byte	18
# [272:4]
	.byte	2
	.uleb128	.Ll131-.Ll130
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-6
	.byte	1
# [279:41]
	.byte	2
	.uleb128	.Ll132-.Ll131
	.byte	5
	.uleb128	41
	.byte	19
# [272:4]
	.byte	2
	.uleb128	.Ll133-.Ll132
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-7
	.byte	1
# [280:40]
	.byte	2
	.uleb128	.Ll134-.Ll133
	.byte	5
	.uleb128	40
	.byte	20
# [272:4]
	.byte	2
	.uleb128	.Ll135-.Ll134
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-8
	.byte	1
# [281:41]
	.byte	2
	.uleb128	.Ll136-.Ll135
	.byte	5
	.uleb128	41
	.byte	21
# [272:4]
	.byte	2
	.uleb128	.Ll137-.Ll136
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-9
	.byte	1
# [282:40]
	.byte	2
	.uleb128	.Ll138-.Ll137
	.byte	5
	.uleb128	40
	.byte	22
# [272:4]
	.byte	2
	.uleb128	.Ll139-.Ll138
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-10
	.byte	1
# [283:40]
	.byte	2
	.uleb128	.Ll140-.Ll139
	.byte	5
	.uleb128	40
	.byte	23
# [272:4]
	.byte	2
	.uleb128	.Ll141-.Ll140
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-11
	.byte	1
# [284:41]
	.byte	2
	.uleb128	.Ll142-.Ll141
	.byte	5
	.uleb128	41
	.byte	24
# [272:4]
	.byte	2
	.uleb128	.Ll143-.Ll142
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-12
	.byte	1
# [285:40]
	.byte	2
	.uleb128	.Ll144-.Ll143
	.byte	5
	.uleb128	40
	.byte	25
# [272:4]
	.byte	2
	.uleb128	.Ll145-.Ll144
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-13
	.byte	1
# [286:41]
	.byte	2
	.uleb128	.Ll146-.Ll145
	.byte	5
	.uleb128	41
	.byte	26
# [272:4]
	.byte	2
	.uleb128	.Ll147-.Ll146
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-14
	.byte	1
# [287:40]
	.byte	2
	.uleb128	.Ll148-.Ll147
	.byte	5
	.uleb128	40
	.byte	27
# [272:4]
	.byte	2
	.uleb128	.Ll149-.Ll148
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-15
	.byte	1
# [288:41]
	.byte	2
	.uleb128	.Ll150-.Ll149
	.byte	5
	.uleb128	41
	.byte	28
# [272:4]
	.byte	2
	.uleb128	.Ll151-.Ll150
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-16
	.byte	1
# [289:40]
	.byte	2
	.uleb128	.Ll152-.Ll151
	.byte	5
	.uleb128	40
	.byte	29
# [272:4]
	.byte	2
	.uleb128	.Ll153-.Ll152
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-17
	.byte	1
# [290:40]
	.byte	2
	.uleb128	.Ll154-.Ll153
	.byte	5
	.uleb128	40
	.byte	30
# [272:4]
	.byte	2
	.uleb128	.Ll155-.Ll154
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-18
	.byte	1
# [291:41]
	.byte	2
	.uleb128	.Ll156-.Ll155
	.byte	5
	.uleb128	41
	.byte	31
# [272:4]
	.byte	2
	.uleb128	.Ll157-.Ll156
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-19
	.byte	1
# [292:40]
	.byte	2
	.uleb128	.Ll158-.Ll157
	.byte	5
	.uleb128	40
	.byte	32
# [272:4]
	.byte	2
	.uleb128	.Ll159-.Ll158
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-20
	.byte	1
# [293:41]
	.byte	2
	.uleb128	.Ll160-.Ll159
	.byte	5
	.uleb128	41
	.byte	33
# [272:4]
	.byte	2
	.uleb128	.Ll161-.Ll160
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-21
	.byte	1
# [294:40]
	.byte	2
	.uleb128	.Ll162-.Ll161
	.byte	5
	.uleb128	40
	.byte	34
# [272:4]
	.byte	2
	.uleb128	.Ll163-.Ll162
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-22
	.byte	1
# [295:40]
	.byte	2
	.uleb128	.Ll164-.Ll163
	.byte	5
	.uleb128	40
	.byte	35
# [272:4]
	.byte	2
	.uleb128	.Ll165-.Ll164
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-23
	.byte	1
# [296:41]
	.byte	2
	.uleb128	.Ll166-.Ll165
	.byte	5
	.uleb128	41
	.byte	36
# [272:4]
	.byte	2
	.uleb128	.Ll167-.Ll166
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-24
	.byte	1
# [297:40]
	.byte	2
	.uleb128	.Ll168-.Ll167
	.byte	5
	.uleb128	40
	.byte	37
# [272:4]
	.byte	2
	.uleb128	.Ll169-.Ll168
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-25
	.byte	1
# [298:41]
	.byte	2
	.uleb128	.Ll170-.Ll169
	.byte	5
	.uleb128	41
	.byte	38
# [272:4]
	.byte	2
	.uleb128	.Ll171-.Ll170
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-26
	.byte	1
# [299:41]
	.byte	2
	.uleb128	.Ll172-.Ll171
	.byte	5
	.uleb128	41
	.byte	39
# [272:4]
	.byte	2
	.uleb128	.Ll173-.Ll172
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-27
	.byte	1
# [300:41]
	.byte	2
	.uleb128	.Ll174-.Ll173
	.byte	5
	.uleb128	41
	.byte	40
# [272:4]
	.byte	2
	.uleb128	.Ll175-.Ll174
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-28
	.byte	1
# [301:40]
	.byte	2
	.uleb128	.Ll176-.Ll175
	.byte	5
	.uleb128	40
	.byte	41
# [272:4]
	.byte	2
	.uleb128	.Ll177-.Ll176
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-29
	.byte	1
# [302:40]
	.byte	2
	.uleb128	.Ll178-.Ll177
	.byte	5
	.uleb128	40
	.byte	42
# [272:4]
	.byte	2
	.uleb128	.Ll179-.Ll178
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-30
	.byte	1
# [303:41]
	.byte	2
	.uleb128	.Ll180-.Ll179
	.byte	5
	.uleb128	41
	.byte	43
# [272:4]
	.byte	2
	.uleb128	.Ll181-.Ll180
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-31
	.byte	1
# [304:40]
	.byte	2
	.uleb128	.Ll182-.Ll181
	.byte	5
	.uleb128	40
	.byte	44
# [272:4]
	.byte	2
	.uleb128	.Ll183-.Ll182
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-32
	.byte	1
# [305:41]
	.byte	2
	.uleb128	.Ll184-.Ll183
	.byte	5
	.uleb128	41
	.byte	45
# [272:4]
	.byte	2
	.uleb128	.Ll185-.Ll184
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-33
	.byte	1
# [306:40]
	.byte	2
	.uleb128	.Ll186-.Ll185
	.byte	5
	.uleb128	40
	.byte	46
# [272:4]
	.byte	2
	.uleb128	.Ll187-.Ll186
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	-34
	.byte	1
# [307:23]
	.byte	2
	.uleb128	.Ll188-.Ll187
	.byte	5
	.uleb128	23
	.byte	47
# [310:19]
	.byte	2
	.uleb128	.Ll189-.Ll188
	.byte	5
	.uleb128	19
	.byte	15
# [311:8]
	.byte	2
	.uleb128	.Ll190-.Ll189
	.byte	5
	.uleb128	8
	.byte	13
# [312:11]
	.byte	2
	.uleb128	.Ll191-.Ll190
	.byte	5
	.uleb128	11
	.byte	13
# [313:16]
	.byte	2
	.uleb128	.Ll192-.Ll191
	.byte	5
	.uleb128	16
	.byte	13
# [316:8]
	.byte	2
	.uleb128	.Ll193-.Ll192
	.byte	5
	.uleb128	8
	.byte	15
# [317:1]
	.byte	2
	.uleb128	.Ll194-.Ll193
	.byte	5
	.uleb128	1
	.byte	13
# [241:1]
	.byte	2
	.uleb128	.Ll195-.Ll194
	.byte	3
	.sleb128	-76
	.byte	1
# [318:1]
	.byte	2
	.uleb128	.Ll196-.Ll195
	.byte	89
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll197
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITVOICES
# [325:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll198
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	324
	.byte	1
# [326:1]
	.byte	2
	.uleb128	.Ll199-.Ll198
	.byte	13
# [327:14]
	.byte	2
	.uleb128	.Ll200-.Ll199
	.byte	5
	.uleb128	14
	.byte	13
# [326:1]
	.byte	2
	.uleb128	.Ll201-.Ll200
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [328:1]
	.byte	2
	.uleb128	.Ll202-.Ll201
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll203
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
# [334:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll204
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	333
	.byte	1
# [334:1]
	.byte	2
	.uleb128	.Ll205-.Ll204
	.byte	1
# [340:1]
	.byte	2
	.uleb128	.Ll206-.Ll205
	.byte	18
# [335:1]
	.byte	2
	.uleb128	.Ll207-.Ll206
	.byte	3
	.sleb128	-5
	.byte	1
# [336:1]
	.byte	2
	.uleb128	.Ll208-.Ll207
	.byte	13
# [337:1]
	.byte	2
	.uleb128	.Ll209-.Ll208
	.byte	13
# [334:1]
	.byte	2
	.uleb128	.Ll210-.Ll209
	.byte	3
	.sleb128	-3
	.byte	1
# [337:29]
	.byte	2
	.uleb128	.Ll211-.Ll210
	.byte	5
	.uleb128	29
	.byte	15
# [338:1]
	.byte	2
	.uleb128	.Ll212-.Ll211
	.byte	5
	.uleb128	1
	.byte	13
# [339:1]
	.byte	2
	.uleb128	.Ll213-.Ll212
	.byte	13
# [340:1]
	.byte	2
	.uleb128	.Ll214-.Ll213
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll215
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
# [348:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll216
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	347
	.byte	1
# [349:1]
	.byte	2
	.uleb128	.Ll217-.Ll216
	.byte	13
# [350:25]
	.byte	2
	.uleb128	.Ll218-.Ll217
	.byte	5
	.uleb128	25
	.byte	13
# [349:1]
	.byte	2
	.uleb128	.Ll219-.Ll218
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [351:1]
	.byte	2
	.uleb128	.Ll220-.Ll219
	.byte	14
# [352:1]
	.byte	2
	.uleb128	.Ll221-.Ll220
	.byte	13
# [354:1]
	.byte	2
	.uleb128	.Ll222-.Ll221
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll223
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITFLOGTABLE
# [365:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll224
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	364
	.byte	1
# [367:1]
	.byte	2
	.uleb128	.Ll225-.Ll224
	.byte	14
# [368:1]
	.byte	2
	.uleb128	.Ll226-.Ll225
	.byte	13
# [370:7]
	.byte	2
	.uleb128	.Ll227-.Ll226
	.byte	5
	.uleb128	7
	.byte	14
# [373:15]
	.byte	2
	.uleb128	.Ll228-.Ll227
	.byte	5
	.uleb128	15
	.byte	15
# [374:9]
	.byte	2
	.uleb128	.Ll229-.Ll228
	.byte	5
	.uleb128	9
	.byte	13
# [368:1]
	.byte	2
	.uleb128	.Ll230-.Ll229
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-6
	.byte	1
# [377:1]
	.byte	2
	.uleb128	.Ll231-.Ll230
	.byte	21
# [378:1]
	.byte	2
	.uleb128	.Ll232-.Ll231
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll233
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITFSINETABLE
# [385:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll234
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	384
	.byte	1
# [386:1]
	.byte	2
	.uleb128	.Ll235-.Ll234
	.byte	13
# [387:1]
	.byte	2
	.uleb128	.Ll236-.Ll235
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll237
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
# [391:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll238
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	390
	.byte	1
# [392:12]
	.byte	2
	.uleb128	.Ll239-.Ll238
	.byte	5
	.uleb128	12
	.byte	13
# [393:12]
	.byte	2
	.uleb128	.Ll240-.Ll239
	.byte	13
# [394:1]
	.byte	2
	.uleb128	.Ll241-.Ll240
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll242
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
# [398:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll243
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	397
	.byte	1
# [399:17]
	.byte	2
	.uleb128	.Ll244-.Ll243
	.byte	5
	.uleb128	17
	.byte	13
# [400:17]
	.byte	2
	.uleb128	.Ll245-.Ll244
	.byte	13
# [401:1]
	.byte	2
	.uleb128	.Ll246-.Ll245
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll247
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
# [408:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll248
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	407
	.byte	1
# [408:1]
	.byte	2
	.uleb128	.Ll249-.Ll248
	.byte	1
# [425:1]
	.byte	2
	.uleb128	.Ll250-.Ll249
	.byte	29
# [409:1]
	.byte	2
	.uleb128	.Ll251-.Ll250
	.byte	3
	.sleb128	-16
	.byte	1
# [410:8]
	.byte	2
	.uleb128	.Ll252-.Ll251
	.byte	5
	.uleb128	8
	.byte	13
# [422:3]
	.byte	2
	.uleb128	.Ll253-.Ll252
	.byte	5
	.uleb128	3
	.byte	24
# [425:1]
	.byte	2
	.uleb128	.Ll254-.Ll253
	.byte	5
	.uleb128	1
	.byte	15
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll255
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
# [429:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll256
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	428
	.byte	1
# [429:1]
	.byte	2
	.uleb128	.Ll257-.Ll256
	.byte	1
# [430:1]
	.byte	2
	.uleb128	.Ll258-.Ll257
	.byte	13
# [431:1]
	.byte	2
	.uleb128	.Ll259-.Ll258
	.byte	13
# [432:1]
	.byte	2
	.uleb128	.Ll260-.Ll259
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll261
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE
# [438:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll262
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	437
	.byte	1
# [439:1]
	.byte	2
	.uleb128	.Ll263-.Ll262
	.byte	13
# [441:34]
	.byte	2
	.uleb128	.Ll264-.Ll263
	.byte	5
	.uleb128	34
	.byte	14
# [442:33]
	.byte	2
	.uleb128	.Ll265-.Ll264
	.byte	5
	.uleb128	33
	.byte	13
# [443:34]
	.byte	2
	.uleb128	.Ll266-.Ll265
	.byte	5
	.uleb128	34
	.byte	13
# [444:33]
	.byte	2
	.uleb128	.Ll267-.Ll266
	.byte	5
	.uleb128	33
	.byte	13
# [445:33]
	.byte	2
	.uleb128	.Ll268-.Ll267
	.byte	13
# [446:34]
	.byte	2
	.uleb128	.Ll269-.Ll268
	.byte	5
	.uleb128	34
	.byte	13
# [447:34]
	.byte	2
	.uleb128	.Ll270-.Ll269
	.byte	13
# [450:1]
	.byte	2
	.uleb128	.Ll271-.Ll270
	.byte	5
	.uleb128	1
	.byte	15
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll272
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
# [454:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll273
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	453
	.byte	1
# [455:12]
	.byte	2
	.uleb128	.Ll274-.Ll273
	.byte	5
	.uleb128	12
	.byte	13
# [456:12]
	.byte	2
	.uleb128	.Ll275-.Ll274
	.byte	13
# [457:1]
	.byte	2
	.uleb128	.Ll276-.Ll275
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll277
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_INIT
# [461:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll278
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	460
	.byte	1
# [463:1]
	.byte	2
	.uleb128	.Ll279-.Ll278
	.byte	14
# [464:1]
	.byte	2
	.uleb128	.Ll280-.Ll279
	.byte	13
# [465:1]
	.byte	2
	.uleb128	.Ll281-.Ll280
	.byte	13
# [466:1]
	.byte	2
	.uleb128	.Ll282-.Ll281
	.byte	13
# [467:1]
	.byte	2
	.uleb128	.Ll283-.Ll282
	.byte	13
# [468:1]
	.byte	2
	.uleb128	.Ll284-.Ll283
	.byte	13
# [469:1]
	.byte	2
	.uleb128	.Ll285-.Ll284
	.byte	13
# [470:1]
	.byte	2
	.uleb128	.Ll286-.Ll285
	.byte	13
# [471:1]
	.byte	2
	.uleb128	.Ll287-.Ll286
	.byte	13
# [472:1]
	.byte	2
	.uleb128	.Ll288-.Ll287
	.byte	13
# [473:1]
	.byte	2
	.uleb128	.Ll289-.Ll288
	.byte	13
# [474:1]
	.byte	2
	.uleb128	.Ll290-.Ll289
	.byte	13
# [475:1]
	.byte	2
	.uleb128	.Ll291-.Ll290
	.byte	13
# [476:1]
	.byte	2
	.uleb128	.Ll292-.Ll291
	.byte	13
# [477:1]
	.byte	2
	.uleb128	.Ll293-.Ll292
	.byte	13
# [478:1]
	.byte	2
	.uleb128	.Ll294-.Ll293
	.byte	13
# [479:1]
	.byte	2
	.uleb128	.Ll295-.Ll294
	.byte	13
# [480:1]
	.byte	2
	.uleb128	.Ll296-.Ll295
	.byte	13
# [481:1]
	.byte	2
	.uleb128	.Ll297-.Ll296
	.byte	13
# [482:1]
	.byte	2
	.uleb128	.Ll298-.Ll297
	.byte	13
# [483:1]
	.byte	2
	.uleb128	.Ll299-.Ll298
	.byte	13
# [484:1]
	.byte	2
	.uleb128	.Ll300-.Ll299
	.byte	13
# [485:1]
	.byte	2
	.uleb128	.Ll301-.Ll300
	.byte	13
# [486:1]
	.byte	2
	.uleb128	.Ll302-.Ll301
	.byte	13
# [487:1]
	.byte	2
	.uleb128	.Ll303-.Ll302
	.byte	13
# [488:1]
	.byte	2
	.uleb128	.Ll304-.Ll303
	.byte	13
# [489:1]
	.byte	2
	.uleb128	.Ll305-.Ll304
	.byte	13
# [490:1]
	.byte	2
	.uleb128	.Ll306-.Ll305
	.byte	13
# [491:1]
	.byte	2
	.uleb128	.Ll307-.Ll306
	.byte	13
# [492:1]
	.byte	2
	.uleb128	.Ll308-.Ll307
	.byte	13
# [493:1]
	.byte	2
	.uleb128	.Ll309-.Ll308
	.byte	13
# [498:1]
	.byte	2
	.uleb128	.Ll310-.Ll309
	.byte	17
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll311
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
# [515:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll312
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	514
	.byte	1
# [515:1]
	.byte	2
	.uleb128	.Ll313-.Ll312
	.byte	1
# [517:4]
	.byte	2
	.uleb128	.Ll314-.Ll313
	.byte	5
	.uleb128	4
	.byte	14
# [521:14]
	.byte	2
	.uleb128	.Ll315-.Ll314
	.byte	5
	.uleb128	14
	.byte	16
# [515:1]
	.byte	2
	.uleb128	.Ll316-.Ll315
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-6
	.byte	1
# [535:26]
	.byte	2
	.uleb128	.Ll317-.Ll316
	.byte	5
	.uleb128	26
	.byte	32
# [536:16]
	.byte	2
	.uleb128	.Ll318-.Ll317
	.byte	5
	.uleb128	16
	.byte	13
# [537:16]
	.byte	2
	.uleb128	.Ll319-.Ll318
	.byte	13
# [538:16]
	.byte	2
	.uleb128	.Ll320-.Ll319
	.byte	13
# [539:16]
	.byte	2
	.uleb128	.Ll321-.Ll320
	.byte	13
# [540:16]
	.byte	2
	.uleb128	.Ll322-.Ll321
	.byte	13
# [541:16]
	.byte	2
	.uleb128	.Ll323-.Ll322
	.byte	13
# [542:16]
	.byte	2
	.uleb128	.Ll324-.Ll323
	.byte	13
# [535:1]
	.byte	2
	.uleb128	.Ll325-.Ll324
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-7
	.byte	1
# [544:7]
	.byte	2
	.uleb128	.Ll326-.Ll325
	.byte	5
	.uleb128	7
	.byte	21
# [545:8]
	.byte	2
	.uleb128	.Ll327-.Ll326
	.byte	5
	.uleb128	8
	.byte	13
# [569:8]
	.byte	2
	.uleb128	.Ll328-.Ll327
	.byte	36
# [570:11]
	.byte	2
	.uleb128	.Ll329-.Ll328
	.byte	5
	.uleb128	11
	.byte	13
# [572:10]
	.byte	2
	.uleb128	.Ll330-.Ll329
	.byte	5
	.uleb128	10
	.byte	14
# [574:9]
	.byte	2
	.uleb128	.Ll331-.Ll330
	.byte	5
	.uleb128	9
	.byte	14
# [575:20]
	.byte	2
	.uleb128	.Ll332-.Ll331
	.byte	5
	.uleb128	20
	.byte	13
# [576:9]
	.byte	2
	.uleb128	.Ll333-.Ll332
	.byte	5
	.uleb128	9
	.byte	13
# [577:20]
	.byte	2
	.uleb128	.Ll334-.Ll333
	.byte	5
	.uleb128	20
	.byte	13
# [580:18]
	.byte	2
	.uleb128	.Ll335-.Ll334
	.byte	5
	.uleb128	18
	.byte	15
# [581:12]
	.byte	2
	.uleb128	.Ll336-.Ll335
	.byte	5
	.uleb128	12
	.byte	13
# [582:19]
	.byte	2
	.uleb128	.Ll337-.Ll336
	.byte	5
	.uleb128	19
	.byte	13
# [583:9]
	.byte	2
	.uleb128	.Ll338-.Ll337
	.byte	5
	.uleb128	9
	.byte	13
# [584:5]
	.byte	2
	.uleb128	.Ll339-.Ll338
	.byte	5
	.uleb128	5
	.byte	13
# [585:8]
	.byte	2
	.uleb128	.Ll340-.Ll339
	.byte	5
	.uleb128	8
	.byte	13
# [586:9]
	.byte	2
	.uleb128	.Ll341-.Ll340
	.byte	5
	.uleb128	9
	.byte	13
# [592:14]
	.byte	2
	.uleb128	.Ll342-.Ll341
	.byte	5
	.uleb128	14
	.byte	18
# [594:19]
	.byte	2
	.uleb128	.Ll343-.Ll342
	.byte	5
	.uleb128	19
	.byte	14
# [595:9]
	.byte	2
	.uleb128	.Ll344-.Ll343
	.byte	5
	.uleb128	9
	.byte	13
# [596:31]
	.byte	2
	.uleb128	.Ll345-.Ll344
	.byte	5
	.uleb128	31
	.byte	13
# [597:3]
	.byte	2
	.uleb128	.Ll346-.Ll345
	.byte	5
	.uleb128	3
	.byte	13
# [599:15]
	.byte	2
	.uleb128	.Ll347-.Ll346
	.byte	5
	.uleb128	15
	.byte	14
# [601:19]
	.byte	2
	.uleb128	.Ll348-.Ll347
	.byte	5
	.uleb128	19
	.byte	14
# [602:9]
	.byte	2
	.uleb128	.Ll349-.Ll348
	.byte	5
	.uleb128	9
	.byte	13
# [603:31]
	.byte	2
	.uleb128	.Ll350-.Ll349
	.byte	5
	.uleb128	31
	.byte	13
# [604:3]
	.byte	2
	.uleb128	.Ll351-.Ll350
	.byte	5
	.uleb128	3
	.byte	13
# [606:17]
	.byte	2
	.uleb128	.Ll352-.Ll351
	.byte	5
	.uleb128	17
	.byte	14
# [608:20]
	.byte	2
	.uleb128	.Ll353-.Ll352
	.byte	5
	.uleb128	20
	.byte	14
# [609:9]
	.byte	2
	.uleb128	.Ll354-.Ll353
	.byte	5
	.uleb128	9
	.byte	13
# [610:31]
	.byte	2
	.uleb128	.Ll355-.Ll354
	.byte	5
	.uleb128	31
	.byte	13
# [611:3]
	.byte	2
	.uleb128	.Ll356-.Ll355
	.byte	5
	.uleb128	3
	.byte	13
# [613:17]
	.byte	2
	.uleb128	.Ll357-.Ll356
	.byte	5
	.uleb128	17
	.byte	14
# [615:19]
	.byte	2
	.uleb128	.Ll358-.Ll357
	.byte	5
	.uleb128	19
	.byte	14
# [616:9]
	.byte	2
	.uleb128	.Ll359-.Ll358
	.byte	5
	.uleb128	9
	.byte	13
# [617:32]
	.byte	2
	.uleb128	.Ll360-.Ll359
	.byte	5
	.uleb128	32
	.byte	13
# [515:1]
	.byte	2
	.uleb128	.Ll361-.Ll360
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-102
	.byte	1
# [621:6]
	.byte	2
	.uleb128	.Ll362-.Ll361
	.byte	5
	.uleb128	6
	.byte	118
# [622:13]
	.byte	2
	.uleb128	.Ll363-.Ll362
	.byte	5
	.uleb128	13
	.byte	13
# [625:10]
	.byte	2
	.uleb128	.Ll364-.Ll363
	.byte	5
	.uleb128	10
	.byte	15
# [626:11]
	.byte	2
	.uleb128	.Ll365-.Ll364
	.byte	5
	.uleb128	11
	.byte	13
# [627:7]
	.byte	2
	.uleb128	.Ll366-.Ll365
	.byte	5
	.uleb128	7
	.byte	13
# [628:15]
	.byte	2
	.uleb128	.Ll367-.Ll366
	.byte	5
	.uleb128	15
	.byte	13
# [644:1]
	.byte	2
	.uleb128	.Ll368-.Ll367
	.byte	5
	.uleb128	1
	.byte	28
# [646:1]
	.byte	2
	.uleb128	.Ll369-.Ll368
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll370
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITNOTES
# [655:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll371
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	654
	.byte	1
# [656:1]
	.byte	2
	.uleb128	.Ll372-.Ll371
	.byte	13
# [658:10]
	.byte	2
	.uleb128	.Ll373-.Ll372
	.byte	5
	.uleb128	10
	.byte	14
# [659:7]
	.byte	2
	.uleb128	.Ll374-.Ll373
	.byte	5
	.uleb128	7
	.byte	13
# [656:1]
	.byte	2
	.uleb128	.Ll375-.Ll374
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-3
	.byte	1
# [661:1]
	.byte	2
	.uleb128	.Ll376-.Ll375
	.byte	17
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll377
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: INIT$_$FMSYNTH
# function: FMSYNTH_$$_init$
# [665:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll378
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	664
	.byte	1
# [667:1]
	.byte	2
	.uleb128	.Ll379-.Ll378
	.byte	14
# [668:1]
	.byte	2
	.uleb128	.Ll380-.Ll379
	.byte	13
# [669:1]
	.byte	2
	.uleb128	.Ll381-.Ll380
	.byte	13
# [673:1]
	.byte	2
	.uleb128	.Ll382-.Ll381
	.byte	16
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll383
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FINALIZE$_$FMSYNTH
# function: FMSYNTH_$$_finalize_implicit$
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll384
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

