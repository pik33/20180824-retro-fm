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
# [113] begin
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
	leaq	-2752(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	-2744(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rax
	movq	%rax,%rdx
	leaq	-640(%rbp),%rcx
	call	fpc_finalize
	leaq	-664(%rbp),%rcx
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
# Temps allocated between rbp-2776 and rbp-2736
.seh_proc FMSYNTH_$$_INITSAMPLES0
.Ll4:
	pushq	%rbp
.seh_pushreg %rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	leaq	-2816(%rsp),%rsp
.seh_stackalloc 2816
	movq	%rbx,-2776(%rbp)
.seh_savereg %rbx, 40
.seh_endprologue
# Var sr located at rbp-640, size=OS_NO
# Var i located at rbp-648, size=OS_S32
# Var fh located at rbp-656, size=OS_S32
# Var currentdir2 located at rbp-664, size=OS_64
# Var dummy located at rbp-680, size=OS_128
# Var intwave located at rbp-2736, size=OS_NO
.Ll5:
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rdx
	leaq	-640(%rbp),%rcx
	call	fpc_initialize
	movq	$0,-664(%rbp)
	movq	$0,-2752(%rbp)
	movq	$0,-2744(%rbp)
.Lj11:
	nop
.Lj7:
.Ll6:
# [114] currentdir2:='C:\s\';
	leaq	_$FMSYNTH$_Ld1(%rip),%rax
	movq	%rax,%rdx
	leaq	-664(%rbp),%rcx
	call	fpc_ansistr_assign
.Ll7:
# [115] if findfirst(currentdir2+'*.s2',faAnyFile,sr)=0 then
	leaq	-2744(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	_$FMSYNTH$_Ld2(%rip),%r8
	movq	-664(%rbp),%rdx
	leaq	-2744(%rbp),%rcx
	movl	$65535,%r9d
	call	fpc_ansistr_concat
	movq	-2744(%rbp),%rbx
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
# [117] fh:=fileopen(currentdir2+sr.name,$40);
	leaq	-2744(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movq	-616(%rbp),%r8
	movq	-664(%rbp),%rdx
	leaq	-2744(%rbp),%rcx
	movl	$65535,%r9d
	call	fpc_ansistr_concat
	movq	-2744(%rbp),%rcx
	movl	$64,%edx
	call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$QWORD
	movl	%eax,-656(%rbp)
.Ll9:
# [118] fileread(fh,dummy,16);
	movslq	-656(%rbp),%rcx
	leaq	-680(%rbp),%rdx
	movl	$16,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll10:
# [119] waves0[sampleindex0].name:=copy(sr.name,1,length(sr.name)-3); ;
	movq	-616(%rbp),%rax
	testq	%rax,%rax
	je	.Lj59
	movq	-8(%rax),%rax
.Lj59:
	leaq	-3(%rax),%r9
	movq	-616(%rbp),%rdx
	leaq	-2752(%rbp),%rcx
	movq	$1,%r8
	call	fpc_ansistr_copy
	movq	-2752(%rbp),%rdx
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX0(%rip),%eax
	imulq	$8200,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES0(%rip),%rcx
	leaq	(%rcx,%rax),%rcx
	call	fpc_ansistr_assign
.Ll11:
# [120] fileread(fh,intwave,2048);
	movslq	-656(%rbp),%rcx
	leaq	-2736(%rbp),%rdx
	movl	$2048,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll12:
# [121] for i:=0 to 1023 do waves0[sampleindex0].wave[i]:=intwave[i]/32768;
	movl	$0,-648(%rbp)
	subl	$1,-648(%rbp)
	.balign 8,0x90
.Lj76:
	addl	$1,-648(%rbp)
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX0(%rip),%eax
	imulq	$8200,%rax,%rdx
	movl	-648(%rbp),%ecx
	movl	-648(%rbp),%eax
	movswl	-2736(%rbp,%rax,2),%eax
	cvtsi2sd	%eax,%xmm0
	mulsd	_$FMSYNTH$_Ld3(%rip),%xmm0
	leaq	U_$FMSYNTH_$$_WAVES0(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movsd	%xmm0,8(%rax,%rcx,8)
	cmpl	$1023,-648(%rbp)
	jl	.Lj76
.Ll13:
# [122] fileclose(fh);
	movslq	-656(%rbp),%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll14:
# [123] sampleindex0+=1;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX0(%rip),%eax
	leal	1(%eax),%eax
	movl	%eax,TC_$FMSYNTH_$$_SAMPLEINDEX0(%rip)
.Ll15:
# [124] until (findnext(sr)<>0) or (sampleindex0=128);
	leaq	-640(%rbp),%rcx
	call	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj34
	cmpl	$128,TC_$FMSYNTH_$$_SAMPLEINDEX0(%rip)
	jne	.Lj32
.Lj34:
.Lj17:
.Ll16:
# [125] findclose(sr);
	leaq	-640(%rbp),%rcx
	call	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
.Lj88:
.Ll17:
	nop
.Lj8:
	movq	%rbp,%rcx
	call	FMSYNTH$_$INITSAMPLES0_$$_fin$0
.Ll18:
# [126] end;
	movq	-2776(%rbp),%rbx
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
.Ll19:

.section .text.n_fmsynth$_$initsamples1_$$_fin$1,"x"
	.balign 16,0x90
FMSYNTH$_$INITSAMPLES1_$$_fin$1:
.Lc11:
.seh_proc FMSYNTH$_$INITSAMPLES1_$$_fin$1
.Ll20:
# [144] begin
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
	leaq	-2280(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	-2272(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rax
	movq	%rax,%rdx
	leaq	-640(%rbp),%rcx
	call	fpc_finalize
	leaq	-680(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc12:
.Lt5:
.Ll22:

.section .text.n_fmsynth_$$_initsamples1,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITSAMPLES1
FMSYNTH_$$_INITSAMPLES1:
.Lc16:
# Temps allocated between rbp-2312 and rbp-2264
.seh_proc FMSYNTH_$$_INITSAMPLES1
.Ll23:
	pushq	%rbp
.seh_pushreg %rbp
.Lc18:
.Lc19:
	movq	%rsp,%rbp
.Lc20:
	leaq	-2352(%rsp),%rsp
.seh_stackalloc 2352
	movq	%rbx,-2312(%rbp)
	movq	%rsi,-2304(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rsi, 48
.seh_endprologue
# Var sr located at rbp-640, size=OS_NO
# Var k located at rbp-648, size=OS_S32
# Var j located at rbp-656, size=OS_S32
# Var i located at rbp-664, size=OS_S32
# Var fh located at rbp-672, size=OS_S32
# Var currentdir2 located at rbp-680, size=OS_64
# Var dummy located at rbp-936, size=OS_NO
# Var intwave located at rbp-944, size=OS_64
# Var samplenum located at rbp-952, size=OS_16
# Var sampleinfo located at rbp-2232, size=OS_NO
# Var integrator located at rbp-2240, size=OS_F64
# Var maxval located at rbp-2248, size=OS_F64
# Var ffti located at rbp-2256, size=OS_S32
# Var fftv located at rbp-2264, size=OS_F64
.Ll24:
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rdx
	leaq	-640(%rbp),%rcx
	call	fpc_initialize
	movq	$0,-680(%rbp)
	movq	$0,-2280(%rbp)
	movq	$0,-2272(%rbp)
.Lj111:
	nop
.Lj107:
.Ll25:
# [145] currentdir2:='C:\xi\';
	leaq	_$FMSYNTH$_Ld4(%rip),%rax
	movq	%rax,%rdx
	leaq	-680(%rbp),%rcx
	call	fpc_ansistr_assign
.Ll26:
# [146] if findfirst(currentdir2+'*.xi',faAnyFile,sr)=0 then
	leaq	-2272(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	_$FMSYNTH$_Ld5(%rip),%r8
	movq	-680(%rbp),%rdx
	leaq	-2272(%rbp),%rcx
	movl	$65535,%r9d
	call	fpc_ansistr_concat
	movq	-2272(%rbp),%rbx
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
# [148] fh:=fileopen(currentdir2+sr.name,$40);
	leaq	-2272(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movq	-616(%rbp),%r8
	movq	-680(%rbp),%rdx
	leaq	-2272(%rbp),%rcx
	movl	$65535,%r9d
	call	fpc_ansistr_concat
	movq	-2272(%rbp),%rcx
	movl	$64,%edx
	call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$QWORD
	movl	%eax,-672(%rbp)
.Ll28:
# [149] fileread(fh,dummy,$40);  //text header
	movslq	-672(%rbp),%rcx
	leaq	-936(%rbp),%rdx
	movl	$64,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll29:
# [150] fileread(fh,dummy,$e8);  //inst headers
	movslq	-672(%rbp),%rcx
	leaq	-936(%rbp),%rdx
	movl	$232,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll30:
# [151] fileread(fh,samplenum,2);
	movslq	-672(%rbp),%rcx
	leaq	-952(%rbp),%rdx
	movl	$2,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll31:
# [152] for i:=0 to samplenum-1 do fileread(fh,sampleinfo[i],40);
	movzwl	-952(%rbp),%eax
	leal	-1(%eax),%ebx
	movl	$0,-664(%rbp)
	cmpl	-664(%rbp),%ebx
	jl	.Lj170
	subl	$1,-664(%rbp)
	.balign 8,0x90
.Lj171:
	addl	$1,-664(%rbp)
	movl	-664(%rbp),%eax
	imulq	$40,%rax,%rax
	leaq	-2232(%rbp,%rax),%rdx
	movslq	-672(%rbp),%rcx
	movl	$40,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
	cmpl	-664(%rbp),%ebx
	jg	.Lj171
.Lj170:
.Ll32:
# [153] for i:=0 to samplenum-1 do
	movzwl	-952(%rbp),%eax
	leal	-1(%eax),%ebx
	movl	$0,-664(%rbp)
	cmpl	-664(%rbp),%ebx
	jl	.Lj181
	subl	$1,-664(%rbp)
	.balign 8,0x90
.Lj182:
	addl	$1,-664(%rbp)
.Ll33:
# [155] waves1[sampleindex1].len:=sampleinfo[i].slen div 2;
	movl	-664(%rbp),%eax
	imulq	$40,%rax,%rax
	movl	-2232(%rbp,%rax),%eax
	shrl	$1,%eax
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$40,%rdx,%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rcx
	movl	%eax,8(%rcx,%rdx)
.Ll34:
# [156] waves1[sampleindex1].name:='';
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$40,%rax,%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rax
	leaq	(%rax,%rdx),%rcx
	movq	$0,%rdx
	call	fpc_ansistr_assign
.Ll35:
# [157] for j:=0 to sampleinfo[i].snl-1 do waves1[sampleindex1].name+=sampleinfo[i].samplename[j];
	movl	-664(%rbp),%eax
	imulq	$40,%rax,%rax
	movzbl	-2215(%rbp,%rax),%eax
	leal	-1(%eax),%esi
	movl	$0,-656(%rbp)
	cmpl	-656(%rbp),%esi
	jl	.Lj192
	subl	$1,-656(%rbp)
	.balign 8,0x90
.Lj193:
	addl	$1,-656(%rbp)
	movl	-664(%rbp),%eax
	imulq	$40,%rax,%rax
	movl	-656(%rbp),%edx
	leaq	-2214(%rbp,%rax),%rax
	movzbl	(%rax,%rdx,1),%edx
	leaq	-2280(%rbp),%rcx
	movl	$0,%r8d
	call	fpc_char_to_ansistr
	movq	-2280(%rbp),%r8
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$40,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movq	(%rdx,%rax),%rdx
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$40,%rax,%rcx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rax
	leaq	(%rax,%rcx),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
	cmpl	-656(%rbp),%esi
	jg	.Lj193
.Lj192:
.Ll36:
# [158] intwave:=getmem(sampleinfo[i].slen);
	movl	-664(%rbp),%eax
	imulq	$40,%rax,%rax
	movl	-2232(%rbp,%rax),%ecx
	call	SYSTEM_$$_GETMEM$QWORD$$POINTER
	movq	%rax,-944(%rbp)
.Ll37:
# [159] waves1[sampleindex1].wave:=getmem(4*sampleinfo[i].slen+16);
	movl	-664(%rbp),%eax
	imulq	$40,%rax,%rax
	movl	-2232(%rbp,%rax),%eax
	shlq	$2,%rax
	leaq	16(%rax),%rcx
	call	SYSTEM_$$_GETMEM$QWORD$$POINTER
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$40,%rdx,%rcx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movq	%rax,32(%rdx,%rcx)
.Ll38:
# [160] fileread(fh,intwave^,sampleinfo[i].slen);
	movl	-664(%rbp),%eax
	imulq	$40,%rax,%rax
	movl	-2232(%rbp,%rax),%r8d
	movq	-944(%rbp),%rdx
	movslq	-672(%rbp),%rcx
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll39:
# [161] integrator:=0;
	movq	_$FMSYNTH$_Ld6(%rip),%rax
	movq	%rax,-2240(%rbp)
.Ll40:
# [162] maxval:=0;
	movq	_$FMSYNTH$_Ld6(%rip),%rax
	movq	%rax,-2248(%rbp)
.Ll41:
# [164] for j:=0 to (sampleinfo[i].slen div 2)-1 do
	movl	-664(%rbp),%eax
	imulq	$40,%rax,%rax
	movl	-2232(%rbp,%rax),%eax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$1,%rdx
	addq	%rdx,%rax
	sarq	$1,%rax
	leaq	-1(%rax),%rax
	movl	$0,-656(%rbp)
	cmpl	-656(%rbp),%eax
	jl	.Lj229
	subl	$1,-656(%rbp)
	.balign 8,0x90
.Lj230:
	addl	$1,-656(%rbp)
.Ll42:
# [166] integrator+=intwave[j]/32768;
	movq	-944(%rbp),%rcx
	movslq	-656(%rbp),%rdx
	movswl	(%rcx,%rdx,2),%edx
	cvtsi2sd	%edx,%xmm0
	mulsd	_$FMSYNTH$_Ld3(%rip),%xmm0
	addsd	-2240(%rbp),%xmm0
	movsd	%xmm0,-2240(%rbp)
.Ll43:
# [167] if abs(integrator)>maxval then maxval:=abs(integrator);
	movsd	-2240(%rbp),%xmm0
	andpd	FPC_ABSMASK_DOUBLE(%rip),%xmm0
	comisd	-2248(%rbp),%xmm0
	jp	.Lj234
	jna	.Lj234
	movsd	-2240(%rbp),%xmm0
	andpd	FPC_ABSMASK_DOUBLE(%rip),%xmm0
	movsd	%xmm0,-2248(%rbp)
.Lj234:
.Ll44:
# [168] waves1[sampleindex1].wave[j]:=integrator;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$40,%rdx,%rcx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movq	32(%rdx,%rcx),%r8
	movslq	-656(%rbp),%rdx
	movq	-2240(%rbp),%rcx
	movq	%rcx,(%r8,%rdx,8)
.Ll45:
	cmpl	-656(%rbp),%eax
	jg	.Lj230
.Lj229:
.Ll46:
# [178] for j:=0 to (sampleinfo[i].slen div 2)-1 do waves1[sampleindex1].wave[j]*=1/maxval;
	movl	-664(%rbp),%eax
	imulq	$40,%rax,%rax
	movl	-2232(%rbp,%rax),%eax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$1,%rdx
	addq	%rdx,%rax
	sarq	$1,%rax
	leaq	-1(%rax),%rax
	movl	$0,-656(%rbp)
	cmpl	-656(%rbp),%eax
	jl	.Lj243
	subl	$1,-656(%rbp)
	.balign 8,0x90
.Lj244:
	addl	$1,-656(%rbp)
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$40,%rdx,%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rcx
	movq	32(%rcx,%rdx),%rcx
	movslq	-656(%rbp),%rdx
	movsd	_$FMSYNTH$_Ld7(%rip),%xmm0
	divsd	-2248(%rbp),%xmm0
	mulsd	(%rcx,%rdx,8),%xmm0
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$40,%rdx,%rcx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movq	32(%rdx,%rcx),%rcx
	movslq	-656(%rbp),%rdx
	movsd	%xmm0,(%rcx,%rdx,8)
	cmpl	-656(%rbp),%eax
	jg	.Lj244
.Lj243:
.Ll47:
# [192] freemem(intwave);
	movq	-944(%rbp),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
.Ll48:
# [194] if (sampleinfo[i].sampletype and 1) =0 then begin waves1[sampleindex1].lstart:=waves1[sampleindex1].len-1 ; waves1[sampleindex1].lend:=waves1[sampleindex1].len ;  end else
	movl	-664(%rbp),%eax
	imulq	$40,%rax,%rax
# PeepHole Optimization,var15
	movw	-2218(%rbp,%rax),%ax
	andw	$1,%ax
	testw	%ax,%ax
	jne	.Lj250
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$40,%rax,%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rax
	movl	8(%rax,%rdx),%eax
	leal	-1(%eax),%ecx
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$40,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movl	%ecx,12(%rdx,%rax)
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$40,%rax,%rcx
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$40,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movl	8(%rdx,%rax),%eax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movl	%eax,16(%rdx,%rcx)
	jmp	.Lj255
.Lj250:
.Ll49:
# [195] begin waves1[sampleindex1].lstart:=sampleinfo[i].sls div 2;
	movl	-664(%rbp),%eax
	imulq	$40,%rax,%rax
	movl	-2228(%rbp,%rax),%eax
	shrl	$1,%eax
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$40,%rdx,%rcx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movl	%eax,12(%rdx,%rcx)
.Ll50:
# [196] waves1[sampleindex1].lend:=((sampleinfo[i].sls+sampleinfo[i].sll) div 2); end;
	movl	-664(%rbp),%eax
	imulq	$40,%rax,%rdx
	movl	-664(%rbp),%eax
	imulq	$40,%rax,%rax
	movl	-2228(%rbp,%rdx),%edx
	movl	-2224(%rbp,%rax),%eax
	leal	(%edx,%eax),%eax
	shrl	$1,%eax
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%edx
	imulq	$40,%rdx,%rcx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movl	%eax,16(%rdx,%rcx)
.Lj255:
.Ll51:
# [197] waves1[sampleindex1].speed:=31.569678791045951421351411329291*power(a212,sampleinfo[i].relnote+sampleinfo[i].finetune/128);
	movl	-664(%rbp),%eax
	imulq	$40,%rax,%rax
	movsbl	-2216(%rbp,%rax),%eax
	cvtsi2sd	%eax,%xmm0
	movl	-664(%rbp),%eax
	imulq	$40,%rax,%rax
	movsbl	-2219(%rbp,%rax),%eax
	cvtsi2sd	%eax,%xmm1
	mulsd	_$FMSYNTH$_Ld9(%rip),%xmm1
	addsd	%xmm0,%xmm1
	movsd	_$FMSYNTH$_Ld10(%rip),%xmm0
	call	MATH_$$_POWER$DOUBLE$DOUBLE$$DOUBLE
	mulsd	_$FMSYNTH$_Ld8(%rip),%xmm0
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	imulq	$40,%rax,%rax
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rdx
	movsd	%xmm0,24(%rdx,%rax)
.Ll52:
# [198] sampleindex1+=1;
	movl	TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip),%eax
	leal	1(%eax),%eax
	movl	%eax,TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip)
.Ll53:
	cmpl	-664(%rbp),%ebx
	jg	.Lj182
.Lj181:
.Ll54:
# [200] fileclose(fh);
	movslq	-672(%rbp),%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll55:
# [201] until (findnext(sr)<>0) or (sampleindex1=16384);
	leaq	-640(%rbp),%rcx
	call	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj134
	cmpl	$16384,TC_$FMSYNTH_$$_SAMPLEINDEX1(%rip)
	jne	.Lj132
.Lj134:
.Lj117:
.Ll56:
# [202] findclose(sr);
	leaq	-640(%rbp),%rcx
	call	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
.Lj275:
.Ll57:
	nop
.Lj108:
	movq	%rbp,%rcx
	call	FMSYNTH$_$INITSAMPLES1_$$_fin$1
.Ll58:
# [203] end;
	movq	-2312(%rbp),%rbx
	movq	-2304(%rbp),%rsi
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
.Lt4:
.Ll59:

.section .text.n_fmsynth_$$_initvoices,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITVOICES
FMSYNTH_$$_INITVOICES:
.Lc21:
.seh_proc FMSYNTH_$$_INITVOICES
.Ll60:
# [211] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc23:
.Lc24:
	movq	%rsp,%rbp
.Lc25:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var i located at rbp-8, size=OS_S32
.Ll61:
# [212] for i:=0 to 31 do
	movl	$0,-8(%rbp)
	subl	$1,-8(%rbp)
	.balign 8,0x90
.Lj294:
	addl	$1,-8(%rbp)
.Ll62:
# [213] voices[i]:=TFmVoice.create;
	leaq	VMT_$FMSYNTH_$$_TFMVOICE(%rip),%rax
	movq	%rax,%rcx
	movq	$1,%rdx
	call	FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
	movl	-8(%rbp),%ecx
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	%rax,(%rdx,%rcx,8)
.Ll63:
	cmpl	$31,-8(%rbp)
	jl	.Lj294
.Ll64:
# [214] end;
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc22:
.Lt1:
.Ll65:

.section .text.n_fmsynth$_$tfmvoice_$__$$_create$$tfmvoice,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE:
.Lc26:
.seh_proc FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
.Ll66:
# [220] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc28:
.Lc29:
	movq	%rsp,%rbp
.Lc30:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var $vmt located at rbp-8, size=OS_64
# Var $self located at rbp-16, size=OS_64
# Var i located at rbp-24, size=OS_S32
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
.Ll67:
	cmpq	$1,-8(%rbp)
	jne	.Lj304
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-16(%rbp)
.Lj304:
	cmpq	$0,-16(%rbp)
	je	.Lj301
.Lj316:
.Ll68:
# [226] end;
	nop
.Lj315:
.Ll69:
# [221] for i:=0 to 7 do operators[i]:=TFmOperator.create(0,@outputs);
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj320:
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
	jl	.Lj320
.Ll70:
# [222] for i:=0 to 7 do operators[i].init;
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj333:
	addl	$1,-24(%rbp)
	movq	-16(%rbp),%rax
	movl	-24(%rbp),%edx
	movq	8(%rax,%rdx,8),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_INIT
	cmpl	$7,-24(%rbp)
	jl	.Lj333
.Ll71:
# [223] for i:=0 to 7 do operators[i].outputtable:=@outputs;
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj338:
	addl	$1,-24(%rbp)
	movq	-16(%rbp),%rax
	movl	-24(%rbp),%edx
	movq	8(%rax,%rdx,8),%rdx
	movq	-16(%rbp),%rax
	leaq	72(%rax),%rax
	movq	%rax,328(%rdx)
	cmpl	$7,-24(%rbp)
	jl	.Lj338
.Ll72:
# [224] outmuls[0]:=1;
	movq	-16(%rbp),%rax
	movl	_$FMSYNTH$_Ld11(%rip),%edx
	movl	%edx,136(%rax)
.Ll73:
# [225] for i:=1 to 7 do outmuls[i]:=0;
	movl	$1,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj345:
	addl	$1,-24(%rbp)
	movq	-16(%rbp),%rax
	movl	-24(%rbp),%edx
	movl	_$FMSYNTH$_Ld12(%rip),%ecx
	movl	%ecx,136(%rax,%rdx,4)
	cmpl	$7,-24(%rbp)
	jl	.Lj345
.Ll74:
	cmpq	$0,-16(%rbp)
	je	.Lj313
	cmpq	$0,-8(%rbp)
	je	.Lj313
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*136(%rax)
	jmp	.Lj313
.Lj312:
	cmpq	$0,-8(%rbp)
	je	.Lj354
	movq	-16(%rbp),%rcx
	movq	$-1,%rdx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
.Lj354:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj359:
	nop
.Lj313:
.Lj301:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj315
	.rva	.Lj312
	.rva	.Lj313

.section .text.n_fmsynth$_$tfmvoice_$__$$_create$$tfmvoice,"x"
.seh_endproc
.Lc27:
.Lt18:
.Ll75:

.section .text.n_fmsynth$_$tfmvoice_$__$$_getsample$$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE:
.Lc31:
# Temps allocated between rbp-56 and rbp-40
.seh_proc FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
.Ll76:
# [234] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc33:
.Lc34:
	movq	%rsp,%rbp
.Lc35:
	leaq	-96(%rsp),%rsp
.seh_stackalloc 96
.seh_endprologue
# Var $self located at rbp-8, size=OS_64
# Var $result located at rbp-16, size=OS_F64
# Var i located at rbp-24, size=OS_S32
# Var j located at rbp-32, size=OS_S32
# Var output located at rbp-40, size=OS_F64
	movq	%rcx,-8(%rbp)
.Ll77:
# [235] for i:=0 to 7 do
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj364:
	addl	$1,-24(%rbp)
.Ll78:
# [236] outputs[i]:=operators[i].getsample;
	movq	-8(%rbp),%rax
	movl	-24(%rbp),%edx
	movq	8(%rax,%rdx,8),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
	movq	-8(%rbp),%rax
	movl	-24(%rbp),%edx
	movsd	%xmm0,72(%rax,%rdx,8)
.Ll79:
	cmpl	$7,-24(%rbp)
	jl	.Lj364
.Ll80:
# [237] output:=0;
	movq	_$FMSYNTH$_Ld6(%rip),%rax
	movq	%rax,-40(%rbp)
.Ll81:
# [238] for i:=0 to 7 do output+=outmuls[i]*outputs[i];
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj373:
	addl	$1,-24(%rbp)
	movq	-8(%rbp),%rax
	movl	-24(%rbp),%edx
	cvtss2sd	136(%rax,%rdx,4),%xmm0
	movq	-8(%rbp),%rax
	movl	-24(%rbp),%edx
	mulsd	72(%rax,%rdx,8),%xmm0
	addsd	-40(%rbp),%xmm0
	movsd	%xmm0,-40(%rbp)
	cmpl	$7,-24(%rbp)
	jl	.Lj373
.Ll82:
# [239] result:=output;
	movq	-40(%rbp),%rax
	movq	%rax,-16(%rbp)
.Ll83:
# [240] end;
	movsd	-16(%rbp),%xmm0
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc32:
.Lt19:
.Ll84:

.section .text.n_fmsynth_$$_initflogtable,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITFLOGTABLE
FMSYNTH_$$_INITFLOGTABLE:
.Lc36:
# Temps allocated between rbp-40 and rbp-24
.seh_proc FMSYNTH_$$_INITFLOGTABLE
.Ll85:
# [250] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc38:
.Lc39:
	movq	%rsp,%rbp
.Lc40:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var i located at rbp-8, size=OS_S32
# Var q located at rbp-16, size=OS_F64
# Var q2 located at rbp-24, size=OS_F64
.Ll86:
# [251] q:=1;
	movq	_$FMSYNTH$_Ld7(%rip),%rax
	movq	%rax,-16(%rbp)
.Ll87:
# [253] q2:= 0.99989460157410704627595119007091;
	movq	_$FMSYNTH$_Ld13(%rip),%rax
	movq	%rax,-24(%rbp)
.Ll88:
# [254] for i:=65540 downto 0 do
	movl	$65540,-8(%rbp)
	addl	$1,-8(%rbp)
	.balign 8,0x90
.Lj386:
	subl	$1,-8(%rbp)
.Ll89:
# [256] if i>65535 then flogtable[i]:=1
	cmpl	$65535,-8(%rbp)
	jng	.Lj388
	movl	-8(%rbp),%edx
	movq	_$FMSYNTH$_Ld7(%rip),%rax
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%rcx
	movq	%rax,(%rcx,%rdx,8)
	jmp	.Lj391
.Lj388:
.Ll90:
# [259] flogtable[i]:=q;
	movl	-8(%rbp),%eax
	movq	-16(%rbp),%rdx
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%rcx
	movq	%rdx,(%rcx,%rax,8)
.Ll91:
# [260] q:=q*q2;
	movsd	-16(%rbp),%xmm0
	mulsd	-24(%rbp),%xmm0
	movsd	%xmm0,-16(%rbp)
.Lj391:
.Ll92:
	cmpl	$0,-8(%rbp)
	jg	.Lj386
.Ll93:
# [263] flogtable[0]:=0;
	movq	_$FMSYNTH$_Ld6(%rip),%rax
	movq	%rax,U_$FMSYNTH_$$_FLOGTABLE(%rip)
.Ll94:
# [264] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc37:
.Lt7:
.Ll95:

.section .text.n_fmsynth_$$_initfsinetable,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITFSINETABLE
FMSYNTH_$$_INITFSINETABLE:
.Lc41:
# Temps allocated between rbp-24 and rbp-8
.seh_proc FMSYNTH_$$_INITFSINETABLE
.Ll96:
# [271] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc43:
.Lc44:
	movq	%rsp,%rbp
.Lc45:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var i located at rbp-8, size=OS_S32
.Ll97:
# [272] for i:=-655360 to 655360 do fsinetable[i]:=sin(2*pi*i/1024);
	movl	$-655360,-8(%rbp)
	subl	$1,-8(%rbp)
	.balign 8,0x90
.Lj402:
	addl	$1,-8(%rbp)
	cvtsi2sdl	-8(%rbp),%xmm0
	mulsd	_$FMSYNTH$_Ld14(%rip),%xmm0
	mulsd	_$FMSYNTH$_Ld15(%rip),%xmm0
	call	fpc_sin_real
	movslq	-8(%rbp),%rdx
	leaq	U_$FMSYNTH_$$_FSINETABLE(%rip),%rax
	movsd	%xmm0,5242880(%rax,%rdx,8)
	cmpl	$655360,-8(%rbp)
	jl	.Lj402
.Ll98:
# [273] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc42:
.Lt8:
.Ll99:

.section .text.n_fmsynth_$$_assign$longint$$tsinglestereosample,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE:
.Lc46:
# Temps allocated between rbp-32 and rbp-16
.seh_proc FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
.Ll100:
# [277] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc48:
.Lc49:
	movq	%rsp,%rbp
.Lc50:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# Var b located at rbp-8, size=OS_S32
# Var $result located at rbp-16, size=OS_64
	movq	%rcx,-16(%rbp)
	movl	%edx,-8(%rbp)
.Ll101:
# [278] result[0]:=b;
	movq	-16(%rbp),%rax
	cvtsi2sdl	-8(%rbp),%xmm0
	movsd	%xmm0,(%rax)
.Ll102:
# [279] result[1]:=b;
	movq	-16(%rbp),%rax
	cvtsi2sdl	-8(%rbp),%xmm0
	movsd	%xmm0,8(%rax)
.Ll103:
# [280] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc47:
.Lt9:
.Ll104:

.section .text.n_fmsynth_$$_star$tsinglestereosample$single$$tsinglestereosample,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE:
.Lc51:
# Temps allocated between rbp-56 and rbp-24
.seh_proc FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
.Ll105:
# [284] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc53:
.Lc54:
	movq	%rsp,%rbp
.Lc55:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var a located at rbp-8, size=OS_64
# Var b located at rbp-16, size=OS_F32
# Var $result located at rbp-24, size=OS_64
	movq	%rcx,-24(%rbp)
	movq	%rdx,-8(%rbp)
	movss	%xmm2,-16(%rbp)
	movq	-8(%rbp),%rdx
	movq	(%rdx),%rax
	movq	%rax,-40(%rbp)
	movq	8(%rdx),%rax
	movq	%rax,-32(%rbp)
.Ll106:
# [285] result[0]:=a[0]*b;
	cvtss2sd	-16(%rbp),%xmm0
	mulsd	-40(%rbp),%xmm0
	movq	-24(%rbp),%rax
	movsd	%xmm0,(%rax)
.Ll107:
# [286] result[1]:=a[1]*b;
	cvtss2sd	-16(%rbp),%xmm0
	mulsd	-32(%rbp),%xmm0
	movq	-24(%rbp),%rax
	movsd	%xmm0,8(%rax)
.Ll108:
# [287] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc52:
.Lt10:
.Ll109:

.section .text.n_fmsynth$_$tfmoperator_$__$$_create$longint$pointer$$tfmoperator,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR:
.Lc56:
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
.Ll110:
# [294] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc58:
.Lc59:
	movq	%rsp,%rbp
.Lc60:
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
.Ll111:
	cmpq	$1,-24(%rbp)
	jne	.Lj422
	movq	-32(%rbp),%rax
	movq	-32(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-32(%rbp)
.Lj422:
	cmpq	$0,-32(%rbp)
	je	.Lj419
.Lj434:
.Ll112:
# [311] end;
	nop
.Lj433:
.Ll113:
# [295] outputtable:=outs;
	movq	-32(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rdx,328(%rax)
.Ll114:
# [296] if mode=0 then wptr:=@fsinetable;
	cmpl	$0,-8(%rbp)
	jne	.Lj439
	movq	-32(%rbp),%rax
	leaq	U_$FMSYNTH_$$_FSINETABLE(%rip),%rdx
	movq	%rdx,136(%rax)
.Lj439:
.Ll115:
# [308] wlength:=1024;
	movq	-32(%rbp),%rdx
	movq	_$FMSYNTH$_Ld16(%rip),%rax
	movq	%rax,144(%rdx)
.Ll116:
	cmpq	$0,-32(%rbp)
	je	.Lj431
	cmpq	$0,-24(%rbp)
	je	.Lj431
	movq	-32(%rbp),%rcx
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	call	*136(%rax)
	jmp	.Lj431
.Lj430:
	cmpq	$0,-24(%rbp)
	je	.Lj450
	movq	-32(%rbp),%rcx
	movq	$-1,%rdx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
.Lj450:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj455:
	nop
.Lj431:
.Lj419:
	movq	-32(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj433
	.rva	.Lj430
	.rva	.Lj431

.section .text.n_fmsynth$_$tfmoperator_$__$$_create$longint$pointer$$tfmoperator,"x"
.seh_endproc
.Lc57:
.Lt16:
.Ll117:

.section .text.n_fmsynth$_$tfmoperator_$__$$_destroy,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY:
.Lc61:
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
.Ll118:
# [315] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc63:
.Lc64:
	movq	%rsp,%rbp
.Lc65:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var $vmt located at rbp-8, size=OS_64
# Var $self located at rbp-16, size=OS_64
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
.Ll119:
	cmpq	$0,-8(%rbp)
	jng	.Lj459
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	(%rdx),%rdx
	movq	%rax,%rcx
	call	*144(%rdx)
.Lj459:
.Ll120:
# [316] freemem(wptr);
	movq	-16(%rbp),%rax
	movq	136(%rax),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER$$QWORD
.Ll121:
# [317] end;
	cmpq	$0,-16(%rbp)
	je	.Lj465
	cmpq	$0,-8(%rbp)
	je	.Lj465
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*112(%rax)
.Lj465:
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc62:
.Lt17:
.Ll122:

.section .text.n_fmsynth$_$tfmvoice_$__$$_setfreq$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE
FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE:
.Lc66:
# Temps allocated between rbp-40 and rbp-24
.seh_proc FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE
.Ll123:
# [323] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc68:
.Lc69:
	movq	%rsp,%rbp
.Lc70:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
# Var afreq located at rbp-8, size=OS_F64
# Var $self located at rbp-16, size=OS_64
# Var i located at rbp-24, size=OS_S32
	movq	%rcx,-16(%rbp)
	movsd	%xmm1,-8(%rbp)
.Ll124:
# [324] for i:=0 to 7 do operators[i].setfreq(afreq);
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj473:
	addl	$1,-24(%rbp)
	movq	-16(%rbp),%rdx
	movl	-24(%rbp),%eax
	movq	8(%rdx,%rax,8),%rcx
	movsd	-8(%rbp),%xmm0
	movapd	%xmm0,%xmm1
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
	cmpl	$7,-24(%rbp)
	jl	.Lj473
.Ll125:
# [326] operators[1].setfreq(1.0043*afreq);
	movsd	_$FMSYNTH$_Ld17(%rip),%xmm1
	mulsd	-8(%rbp),%xmm1
	movq	-16(%rbp),%rax
	movq	16(%rax),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll126:
# [327] operators[2].setfreq(1.006*afreq);
	movsd	_$FMSYNTH$_Ld18(%rip),%xmm1
	mulsd	-8(%rbp),%xmm1
	movq	-16(%rbp),%rax
	movq	24(%rax),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll127:
# [328] operators[3].setfreq(1.0017*afreq);
	movsd	_$FMSYNTH$_Ld19(%rip),%xmm1
	mulsd	-8(%rbp),%xmm1
	movq	-16(%rbp),%rax
	movq	32(%rax),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll128:
# [329] operators[4].setfreq(0.995*afreq);
	movsd	_$FMSYNTH$_Ld20(%rip),%xmm1
	mulsd	-8(%rbp),%xmm1
	movq	-16(%rbp),%rax
	movq	40(%rax),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll129:
# [330] operators[5].setfreq(0.991*afreq);
	movsd	_$FMSYNTH$_Ld21(%rip),%xmm1
	mulsd	-8(%rbp),%xmm1
	movq	-16(%rbp),%rax
	movq	48(%rax),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll130:
# [331] operators[6].setfreq(0.9939*afreq);
	movsd	_$FMSYNTH$_Ld22(%rip),%xmm1
	mulsd	-8(%rbp),%xmm1
	movq	-16(%rbp),%rax
	movq	56(%rax),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll131:
# [332] operators[7].setfreq(0.9961*afreq);
	movsd	_$FMSYNTH$_Ld23(%rip),%xmm1
	mulsd	-8(%rbp),%xmm1
	movq	-16(%rbp),%rax
	movq	64(%rax),%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll132:
# [335] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc67:
.Lt20:
.Ll133:

.section .text.n_fmsynth$_$tfmoperator_$__$$_setfreq$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE:
.Lc71:
# Temps allocated between rbp-32 and rbp-16
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
.Ll134:
# [339] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc73:
.Lc74:
	movq	%rsp,%rbp
.Lc75:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# Var afreq located at rbp-8, size=OS_F64
# Var $self located at rbp-16, size=OS_64
	movq	%rcx,-16(%rbp)
	movsd	%xmm1,-8(%rbp)
.Ll135:
# [340] if wavemode=0 then freq:=afreq*wlength/96000
	movq	-16(%rbp),%rax
	cmpl	$0,312(%rax)
	jne	.Lj509
	movq	-16(%rbp),%rax
	movsd	-8(%rbp),%xmm0
	mulsd	144(%rax),%xmm0
	divsd	_$FMSYNTH$_Ld24(%rip),%xmm0
	movq	-16(%rbp),%rax
	movsd	%xmm0,8(%rax)
	jmp	.Lj512
.Lj509:
.Ll136:
# [341] else freq:=(afreq*freqmod)/96000 ;// afreq*freqmod;
	movq	-16(%rbp),%rax
	movsd	-8(%rbp),%xmm0
	mulsd	320(%rax),%xmm0
	divsd	_$FMSYNTH$_Ld24(%rip),%xmm0
	movq	-16(%rbp),%rax
	movsd	%xmm0,8(%rax)
.Lj512:
.Ll137:
# [342] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc72:
.Lt15:
.Ll138:

.section .text.n_fmsynth$_$tfmoperator_$__$$_init,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_INIT
FMSYNTH$_$TFMOPERATOR_$__$$_INIT:
.Lc76:
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_INIT
.Ll139:
# [346] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc78:
.Lc79:
	movq	%rsp,%rbp
.Lc80:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var $self located at rbp-8, size=OS_64
	movq	%rcx,-8(%rbp)
.Ll140:
# [348] freq:=440*(65536/96000);    //341
	movq	-8(%rbp),%rdx
	movq	_$FMSYNTH$_Ld25(%rip),%rax
	movq	%rax,8(%rdx)
.Ll141:
# [349] c3:=0;
	movq	-8(%rbp),%rdx
	movq	_$FMSYNTH$_Ld6(%rip),%rax
	movq	%rax,16(%rdx)
.Ll142:
# [350] c4:=1;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,24(%rax)
.Ll143:
# [351] c5:=1;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,32(%rax)
.Ll144:
# [352] c6:=1;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,40(%rax)
.Ll145:
# [353] lfo1:=1;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,48(%rax)
.Ll146:
# [354] lfo2:=1;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,56(%rax)
.Ll147:
# [355] lfo3:=1;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,64(%rax)
.Ll148:
# [356] mul0:=0;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,72(%rax)
.Ll149:
# [357] mul1:=0;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,80(%rax)
.Ll150:
# [358] mul2:=0;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,88(%rax)
.Ll151:
# [359] mul3:=0;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,96(%rax)
.Ll152:
# [360] mul4:=0;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,104(%rax)
.Ll153:
# [361] mul5:=0;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,112(%rax)
.Ll154:
# [362] mul6:=0;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,120(%rax)
.Ll155:
# [363] mul7:=0;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,128(%rax)
.Ll156:
# [364] wlength:=1024;//65536;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld16(%rip),%rdx
	movq	%rdx,144(%rax)
.Ll157:
# [365] adsrstate:=0;
	movq	-8(%rbp),%rax
	movl	$0,168(%rax)
.Ll158:
# [366] adsrval:=0;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,176(%rax)
.Ll159:
# [367] ar1:=1/96;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld26(%rip),%rdx
	movq	%rdx,184(%rax)
.Ll160:
# [368] ar2:=-1/96000;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld27(%rip),%rdx
	movq	%rdx,200(%rax)
.Ll161:
# [369] ar3:=-1/960000;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld28(%rip),%rdx
	movq	%rdx,216(%rax)
.Ll162:
# [370] ar4:=-3/960000;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld29(%rip),%rdx
	movq	%rdx,232(%rax)
.Ll163:
# [371] av1:=1;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,192(%rax)
.Ll164:
# [372] av2:=0.95;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld30(%rip),%rdx
	movq	%rdx,208(%rax)
.Ll165:
# [373] av3:=0.9;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld31(%rip),%rdx
	movq	%rdx,224(%rax)
.Ll166:
# [374] av4:=0.0;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,240(%rax)
.Ll167:
# [375] adsrbias:=0;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld6(%rip),%rdx
	movq	%rdx,264(%rax)
.Ll168:
# [376] vel:=1;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,272(%rax)
.Ll169:
# [377] keysense:=1;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,280(%rax)
.Ll170:
# [378] expr:=1;
	movq	-8(%rbp),%rax
	movq	_$FMSYNTH$_Ld7(%rip),%rdx
	movq	%rdx,288(%rax)
.Ll171:
# [383] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc77:
.Lt14:
.Ll172:

.section .text.n_fmsynth$_$tfmoperator_$__$$_getsample$$double,"x"
	.balign 16,0x90
.globl	FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE:
.Lc81:
# Temps allocated between rbp-112 and rbp-96
.seh_proc FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
.Ll173:
# [400] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc83:
.Lc84:
	movq	%rsp,%rbp
.Lc85:
	leaq	-112(%rsp),%rsp
.seh_stackalloc 112
.seh_endprologue
# Var $self located at rbp-8, size=OS_64
# Var $result located at rbp-16, size=OS_F64
# Var res64a located at rbp-24, size=OS_F64
# Var modulator located at rbp-32, size=OS_F64
# Var i located at rbp-40, size=OS_S32
# Var j located at rbp-48, size=OS_S32
# Var sample located at rbp-56, size=OS_F64
# Var freq2 located at rbp-64, size=OS_F64
# Var h1 located at rbp-72, size=OS_F64
# Var pa21 located at rbp-80, size=OS_S32
# Var d located at rbp-88, size=OS_F64
# Var s2 located at rbp-96, size=OS_F64
	movq	%rcx,-8(%rbp)
.Ll174:
# [402] if (adsrstate=0) or ((adsrstate=6) and (adsrval=0)) then begin sample:=0; goto p999; end;
	movq	-8(%rbp),%rax
	cmpl	$0,168(%rax)
	je	.Lj581
	movq	-8(%rbp),%rax
	cmpl	$6,168(%rax)
	jne	.Lj582
	movq	-8(%rbp),%rax
	movsd	176(%rax),%xmm0
	comisd	_$FMSYNTH$_Ld6(%rip),%xmm0
	jp	.Lj582
	jne	.Lj582
.Lj581:
	movq	_$FMSYNTH$_Ld6(%rip),%rax
	movq	%rax,-56(%rbp)
	jmp	.Lj588
.Lj582:
.Ll175:
# [406] freq2:=(freq+(c3*lfo1))*c4*lfo2;
	movq	-8(%rbp),%rax
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rcx
	movsd	16(%rdx),%xmm0
	mulsd	48(%rcx),%xmm0
	addsd	8(%rax),%xmm0
	movq	-8(%rbp),%rax
	mulsd	24(%rax),%xmm0
	movq	-8(%rbp),%rax
	mulsd	56(%rax),%xmm0
	movsd	%xmm0,-64(%rbp)
.Ll176:
# [420] modulator:=outputtable[0]*mul0
	movq	-8(%rbp),%rax
	movq	328(%rax),%rax
	movq	-8(%rbp),%rdx
	movsd	(%rax),%xmm1
	mulsd	72(%rdx),%xmm1
.Ll177:
# [421] +outputtable[1]*mul1
	movq	-8(%rbp),%rax
	movq	328(%rax),%rax
	movq	-8(%rbp),%rdx
	movsd	8(%rax),%xmm0
	mulsd	80(%rdx),%xmm0
	addsd	%xmm1,%xmm0
.Ll178:
# [422] +outputtable[2]*mul2
	movq	-8(%rbp),%rax
	movq	328(%rax),%rax
	movq	-8(%rbp),%rdx
	movsd	16(%rax),%xmm1
	mulsd	88(%rdx),%xmm1
	addsd	%xmm0,%xmm1
.Ll179:
# [423] +outputtable[3]*mul3
	movq	-8(%rbp),%rax
	movq	328(%rax),%rax
	movq	-8(%rbp),%rdx
	movsd	24(%rax),%xmm0
	mulsd	96(%rdx),%xmm0
	addsd	%xmm1,%xmm0
.Ll180:
# [424] +outputtable[4]*mul4
	movq	-8(%rbp),%rax
	movq	328(%rax),%rdx
	movq	-8(%rbp),%rax
	movsd	32(%rdx),%xmm1
	mulsd	104(%rax),%xmm1
	addsd	%xmm0,%xmm1
.Ll181:
# [425] +outputtable[5]*mul5
	movq	-8(%rbp),%rax
	movq	328(%rax),%rdx
	movq	-8(%rbp),%rax
	movsd	40(%rdx),%xmm0
	mulsd	112(%rax),%xmm0
	addsd	%xmm1,%xmm0
.Ll182:
# [426] +outputtable[6]*mul6
	movq	-8(%rbp),%rax
	movq	328(%rax),%rdx
	movq	-8(%rbp),%rax
	movsd	48(%rdx),%xmm1
	mulsd	120(%rax),%xmm1
	addsd	%xmm0,%xmm1
.Ll183:
# [427] +outputtable[7]*mul7;
	movq	-8(%rbp),%rax
	movq	328(%rax),%rax
	movq	-8(%rbp),%rdx
	movsd	56(%rax),%xmm0
	mulsd	128(%rdx),%xmm0
	addsd	%xmm1,%xmm0
.Ll184:
	movsd	%xmm0,-32(%rbp)
.Ll185:
# [429] pa:=pa+freq2;
	movq	-8(%rbp),%rax
	movsd	296(%rax),%xmm0
	addsd	-64(%rbp),%xmm0
	movq	-8(%rbp),%rax
	movsd	%xmm0,296(%rax)
.Ll186:
# [430] pa2:=pa+modulator;
	movq	-8(%rbp),%rax
	movsd	296(%rax),%xmm0
	addsd	-32(%rbp),%xmm0
	movq	-8(%rbp),%rax
	movsd	%xmm0,304(%rax)
.Ll187:
# [438] if wavemode=0 then
	movq	-8(%rbp),%rax
	cmpl	$0,312(%rax)
	jne	.Lj598
.Ll188:
# [440] if pa>=wlength then
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rax
	movsd	296(%rdx),%xmm0
	comisd	144(%rax),%xmm0
	jp	.Lj600
	jnae	.Lj600
.Ll189:
# [441] pa:=pa-wlength;
	movq	-8(%rbp),%rax
	movq	-8(%rbp),%rdx
	movsd	296(%rax),%xmm0
	subsd	144(%rdx),%xmm0
	movq	-8(%rbp),%rax
	movsd	%xmm0,296(%rax)
.Lj600:
.Ll190:
# [443] pa2:=pa+modulator;
	movq	-8(%rbp),%rax
	movsd	296(%rax),%xmm0
	addsd	-32(%rbp),%xmm0
	movq	-8(%rbp),%rax
	movsd	%xmm0,304(%rax)
.Ll191:
# [445] if pa2>=wlength then
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rax
	movsd	304(%rdx),%xmm0
	comisd	144(%rax),%xmm0
	jp	.Lj607
	jnae	.Lj607
	.balign 8,0x90
.Lj609:
.Ll192:
# [446] repeat pa2:=pa2-wlength until pa2<wlength;
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rax
	movsd	304(%rdx),%xmm0
	subsd	144(%rax),%xmm0
	movq	-8(%rbp),%rax
	movsd	%xmm0,304(%rax)
	movq	-8(%rbp),%rax
	movq	-8(%rbp),%rdx
	movsd	304(%rax),%xmm0
	comisd	144(%rdx),%xmm0
	jp	.Lj609
	jnb	.Lj609
.Lj607:
.Ll193:
# [447] if pa2<0 then
	movq	-8(%rbp),%rax
	movsd	304(%rax),%xmm0
	comisd	_$FMSYNTH$_Ld6(%rip),%xmm0
	jp	.Lj624
	jnb	.Lj624
	.balign 8,0x90
.Lj618:
.Ll194:
# [448] repeat pa2:=pa2+wlength until pa2>0;
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rax
	movsd	304(%rdx),%xmm0
	addsd	144(%rax),%xmm0
	movq	-8(%rbp),%rax
	movsd	%xmm0,304(%rax)
	movq	-8(%rbp),%rax
	movsd	304(%rax),%xmm0
	comisd	_$FMSYNTH$_Ld6(%rip),%xmm0
	jp	.Lj618
	jna	.Lj618
	jmp	.Lj624
.Lj598:
.Ll195:
# [454] if pa>=wlend then
	movq	-8(%rbp),%rax
	movq	-8(%rbp),%rdx
	movsd	296(%rax),%xmm0
	comisd	160(%rdx),%xmm0
	jp	.Lj626
	jnae	.Lj626
.Ll196:
# [455] pa:=pa-wlend+wlstart;
	movq	-8(%rbp),%rax
	movq	-8(%rbp),%rdx
	movsd	296(%rax),%xmm0
	subsd	160(%rdx),%xmm0
	movq	-8(%rbp),%rax
	addsd	152(%rax),%xmm0
	movq	-8(%rbp),%rax
	movsd	%xmm0,296(%rax)
.Lj626:
.Ll197:
# [457] pa2:=pa+modulator;
	movq	-8(%rbp),%rax
	movsd	296(%rax),%xmm0
	addsd	-32(%rbp),%xmm0
	movq	-8(%rbp),%rax
	movsd	%xmm0,304(%rax)
.Ll198:
# [459] if pa2>=wlend then
	movq	-8(%rbp),%rax
	movq	-8(%rbp),%rdx
	movsd	304(%rax),%xmm0
	comisd	160(%rdx),%xmm0
	jp	.Lj633
	jnae	.Lj633
	.balign 8,0x90
.Lj635:
.Ll199:
# [460] repeat pa2:=pa2-wlend+wlstart until pa2<wlend;
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rax
	movsd	304(%rdx),%xmm0
	subsd	160(%rax),%xmm0
	movq	-8(%rbp),%rax
	addsd	152(%rax),%xmm0
	movq	-8(%rbp),%rax
	movsd	%xmm0,304(%rax)
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rax
	movsd	304(%rdx),%xmm0
	comisd	160(%rax),%xmm0
	jp	.Lj635
	jnb	.Lj635
.Lj633:
.Ll200:
# [461] if pa2<0 then
	movq	-8(%rbp),%rax
	movsd	304(%rax),%xmm0
	comisd	_$FMSYNTH$_Ld6(%rip),%xmm0
	jp	.Lj642
	jnb	.Lj642
	.balign 8,0x90
.Lj644:
.Ll201:
# [462] repeat pa2:=pa2+wlength until pa2>=0;
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rax
	movsd	304(%rdx),%xmm0
	addsd	144(%rax),%xmm0
	movq	-8(%rbp),%rax
	movsd	%xmm0,304(%rax)
	movq	-8(%rbp),%rax
	movsd	304(%rax),%xmm0
	comisd	_$FMSYNTH$_Ld6(%rip),%xmm0
	jp	.Lj644
	jnae	.Lj644
.Lj642:
.Lj624:
.Ll202:
# [465] intpa:=trunc(pa2);
	movq	-8(%rbp),%rax
	movsd	304(%rax),%xmm0
	cvttsd2siq	%xmm0,%rax
	movq	-8(%rbp),%rdx
	movl	%eax,316(%rdx)
.Ll203:
# [466] pa21:=intpa+1; if pa21>=wlength then
	movq	-8(%rbp),%rax
	movl	316(%rax),%eax
	leal	1(%eax),%eax
	movl	%eax,-80(%rbp)
	movq	-8(%rbp),%rax
	cvtsi2sdl	-80(%rbp),%xmm0
	comisd	144(%rax),%xmm0
	jp	.Lj655
	jnae	.Lj655
.Ll204:
# [467] if wavemode=0 then pa21:=0 else pa21:=trunc(wlstart);
	movq	-8(%rbp),%rax
	cmpl	$0,312(%rax)
	jne	.Lj658
	movl	$0,-80(%rbp)
	jmp	.Lj661
.Lj658:
	movq	-8(%rbp),%rax
	movsd	152(%rax),%xmm0
	cvttsd2siq	%xmm0,%rax
	movl	%eax,-80(%rbp)
.Lj661:
.Lj655:
.Ll205:
# [468] sample:=wptr[intpa];
	movq	-8(%rbp),%rax
	movq	136(%rax),%rdx
	movq	-8(%rbp),%rax
	movslq	316(%rax),%rax
	movq	(%rdx,%rax,8),%rax
	movq	%rax,-56(%rbp)
.Ll206:
# [469] s2:=wptr[pa21];
	movq	-8(%rbp),%rax
	movq	136(%rax),%rdx
	movslq	-80(%rbp),%rax
	movq	(%rdx,%rax,8),%rax
	movq	%rax,-96(%rbp)
.Ll207:
# [470] d:=pa2-intpa;
	movq	-8(%rbp),%rax
	cvtsi2sdl	316(%rax),%xmm0
	movq	-8(%rbp),%rax
	movsd	304(%rax),%xmm1
	subsd	%xmm0,%xmm1
	movsd	%xmm1,-88(%rbp)
.Ll208:
# [471] sample:=(1-d)*sample+d*s2;
	movsd	_$FMSYNTH$_Ld7(%rip),%xmm0
	subsd	-88(%rbp),%xmm0
	mulsd	-56(%rbp),%xmm0
	movsd	-88(%rbp),%xmm1
	mulsd	-96(%rbp),%xmm1
	addsd	%xmm0,%xmm1
	movsd	%xmm1,-56(%rbp)
.Ll209:
# [477] if adsrstate = 5 then   // release
	movq	-8(%rbp),%rax
	cmpl	$5,168(%rax)
	jne	.Lj673
.Ll210:
# [479] adsrval:=adsrval+ar4;
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rax
	movsd	176(%rdx),%xmm0
	addsd	232(%rax),%xmm0
	movq	-8(%rbp),%rax
	movsd	%xmm0,176(%rax)
.Ll211:
# [480] if ar4<0 then begin if adsrval<av4 then begin adsrval:=av4; adsrstate:=6; end; end
	movq	-8(%rbp),%rax
	movsd	232(%rax),%xmm0
	comisd	_$FMSYNTH$_Ld6(%rip),%xmm0
	jp	.Lj677
	jnb	.Lj677
	movq	-8(%rbp),%rax
	movq	-8(%rbp),%rdx
	movsd	176(%rax),%xmm0
	comisd	240(%rdx),%xmm0
	jp	.Lj694
	jnb	.Lj694
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rax
	movq	240(%rax),%rax
	movq	%rax,176(%rdx)
	movq	-8(%rbp),%rax
	movl	$6,168(%rax)
	jmp	.Lj694
.Lj677:
.Ll212:
# [481] else begin if adsrval>av4 then begin adsrval:=av4; adsrstate:=6; end; end;
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rax
	movsd	176(%rdx),%xmm0
	comisd	240(%rax),%xmm0
	jp	.Lj694
	jna	.Lj694
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rax
	movq	240(%rax),%rax
	movq	%rax,176(%rdx)
	movq	-8(%rbp),%rax
	movl	$6,168(%rax)
.Ll213:
# [482] goto p101;
	jmp	.Lj694
.Lj673:
.Ll214:
# [484] if adsrstate =   3 then  // release
	movq	-8(%rbp),%rax
	cmpl	$3,168(%rax)
	jne	.Lj696
.Ll215:
# [486] adsrval:=adsrval+ar3;
	movq	-8(%rbp),%rax
	movq	-8(%rbp),%rdx
	movsd	176(%rax),%xmm0
	addsd	216(%rdx),%xmm0
	movq	-8(%rbp),%rax
	movsd	%xmm0,176(%rax)
.Ll216:
# [487] if ar3<0 then begin if adsrval<av3 then begin adsrval:=av3; adsrstate:=4; end; end
	movq	-8(%rbp),%rax
	movsd	216(%rax),%xmm0
	comisd	_$FMSYNTH$_Ld6(%rip),%xmm0
	jp	.Lj700
	jnb	.Lj700
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rax
	movsd	176(%rdx),%xmm0
	comisd	224(%rax),%xmm0
	jp	.Lj694
	jnb	.Lj694
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rax
	movq	224(%rax),%rax
	movq	%rax,176(%rdx)
	movq	-8(%rbp),%rax
	movl	$4,168(%rax)
	jmp	.Lj694
.Lj700:
.Ll217:
# [488] else begin if adsrval>av3 then begin adsrval:=av3; adsrstate:=4; end; end;
	movq	-8(%rbp),%rax
	movq	-8(%rbp),%rdx
	movsd	176(%rax),%xmm0
	comisd	224(%rdx),%xmm0
	jp	.Lj694
	jna	.Lj694
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rax
	movq	224(%rax),%rax
	movq	%rax,176(%rdx)
	movq	-8(%rbp),%rax
	movl	$4,168(%rax)
.Ll218:
# [489] goto p101;
	jmp	.Lj694
.Lj696:
.Ll219:
# [491] if adsrstate= 2 then  // release
	movq	-8(%rbp),%rax
	cmpl	$2,168(%rax)
	jne	.Lj718
.Ll220:
# [493] adsrval:=adsrval+ar2;
	movq	-8(%rbp),%rax
	movq	-8(%rbp),%rdx
	movsd	176(%rax),%xmm0
	addsd	200(%rdx),%xmm0
	movq	-8(%rbp),%rax
	movsd	%xmm0,176(%rax)
.Ll221:
# [494] if ar2<0 then begin if adsrval<av2 then begin adsrval:=av2; adsrstate:=3; end; end
	movq	-8(%rbp),%rax
	movsd	200(%rax),%xmm0
	comisd	_$FMSYNTH$_Ld6(%rip),%xmm0
	jp	.Lj722
	jnb	.Lj722
	movq	-8(%rbp),%rax
	movq	-8(%rbp),%rdx
	movsd	176(%rax),%xmm0
	comisd	208(%rdx),%xmm0
	jp	.Lj694
	jnb	.Lj694
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rax
	movq	208(%rax),%rax
	movq	%rax,176(%rdx)
	movq	-8(%rbp),%rax
	movl	$3,168(%rax)
	jmp	.Lj694
.Lj722:
.Ll222:
# [495] else begin if adsrval>av2 then begin adsrval:=av2; adsrstate:=3; end; end;
	movq	-8(%rbp),%rax
	movq	-8(%rbp),%rdx
	movsd	176(%rax),%xmm0
	comisd	208(%rdx),%xmm0
	jp	.Lj694
	jna	.Lj694
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rax
	movq	208(%rax),%rax
	movq	%rax,176(%rdx)
	movq	-8(%rbp),%rax
	movl	$3,168(%rax)
.Ll223:
# [496] goto p101;
	jmp	.Lj694
.Lj718:
.Ll224:
# [498] if adsrstate=1 then    // release
	movq	-8(%rbp),%rax
	cmpl	$1,168(%rax)
	jne	.Lj740
.Ll225:
# [500] adsrval:=adsrval+ar1;
	movq	-8(%rbp),%rax
	movq	-8(%rbp),%rdx
	movsd	176(%rax),%xmm0
	addsd	184(%rdx),%xmm0
	movq	-8(%rbp),%rax
	movsd	%xmm0,176(%rax)
.Ll226:
# [501] if ar1<0 then begin if adsrval<av1 then begin adsrval:=av1; adsrstate:=2; end; end
	movq	-8(%rbp),%rax
	movsd	184(%rax),%xmm0
	comisd	_$FMSYNTH$_Ld6(%rip),%xmm0
	jp	.Lj744
	jnb	.Lj744
	movq	-8(%rbp),%rax
	movq	-8(%rbp),%rdx
	movsd	176(%rax),%xmm0
	comisd	192(%rdx),%xmm0
	jp	.Lj753
	jnb	.Lj753
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rax
	movq	192(%rax),%rax
	movq	%rax,176(%rdx)
	movq	-8(%rbp),%rax
	movl	$2,168(%rax)
	jmp	.Lj753
.Lj744:
.Ll227:
# [502] else begin if adsrval>av1 then begin  adsrval:=av1; adsrstate:=2; end;  end;
	movq	-8(%rbp),%rax
	movq	-8(%rbp),%rdx
	movsd	176(%rax),%xmm0
	comisd	192(%rdx),%xmm0
	jp	.Lj755
	jna	.Lj755
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rax
	movq	192(%rax),%rax
	movq	%rax,176(%rdx)
	movq	-8(%rbp),%rax
	movl	$2,168(%rax)
.Lj755:
.Lj753:
.Lj694:
.Lj740:
.Ll228:
# [506] h1:=((1-adsrbias)*adsrval)+adsrbias;
	movq	-8(%rbp),%rax
	movsd	_$FMSYNTH$_Ld7(%rip),%xmm0
	subsd	264(%rax),%xmm0
	movq	-8(%rbp),%rax
	mulsd	176(%rax),%xmm0
	movq	-8(%rbp),%rax
	addsd	264(%rax),%xmm0
	movsd	%xmm0,-72(%rbp)
.Ll229:
# [507] if adsrstate<>0 then sample:=sample*flogtable[round(65535*h1)] else sample:=0;
	movq	-8(%rbp),%rax
	cmpl	$0,168(%rax)
	je	.Lj764
	movsd	_$FMSYNTH$_Ld32(%rip),%xmm0
	mulsd	-72(%rbp),%xmm0
	cvtsd2siq	%xmm0,%rax
	movsd	-56(%rbp),%xmm0
	leaq	U_$FMSYNTH_$$_FLOGTABLE(%rip),%rdx
	mulsd	(%rdx,%rax,8),%xmm0
	movsd	%xmm0,-56(%rbp)
	jmp	.Lj767
.Lj764:
	movq	_$FMSYNTH$_Ld6(%rip),%rax
	movq	%rax,-56(%rbp)
.Lj767:
.Ll230:
# [510] h1:=1.000-keysense;
	movq	-8(%rbp),%rax
	movsd	_$FMSYNTH$_Ld7(%rip),%xmm0
	subsd	280(%rax),%xmm0
	movsd	%xmm0,-72(%rbp)
.Ll231:
# [511] h1:=h1+vel*keysense;
	movq	-8(%rbp),%rdx
	movq	-8(%rbp),%rax
	movsd	272(%rdx),%xmm0
	mulsd	280(%rax),%xmm0
	addsd	-72(%rbp),%xmm0
	movsd	%xmm0,-72(%rbp)
.Ll232:
# [512] h1:=h1*c6*expr;
	movq	-8(%rbp),%rax
	movsd	-72(%rbp),%xmm0
	mulsd	40(%rax),%xmm0
	movq	-8(%rbp),%rax
	mulsd	288(%rax),%xmm0
	movsd	%xmm0,-72(%rbp)
.Ll233:
# [513] sample:=sample*h1;
	movsd	-56(%rbp),%xmm0
	mulsd	-72(%rbp),%xmm0
	movsd	%xmm0,-56(%rbp)
.Lj588:
.Ll234:
# [529] result:=sample;
	movq	-56(%rbp),%rax
	movq	%rax,-16(%rbp)
.Ll235:
# [531] end;
	movsd	-16(%rbp),%xmm0
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc82:
.Lt13:
.Ll236:

.section .text.n_fmsynth_$$_initnotes,"x"
	.balign 16,0x90
.globl	FMSYNTH_$$_INITNOTES
FMSYNTH_$$_INITNOTES:
.Lc86:
# Temps allocated between rbp-32 and rbp-16
.seh_proc FMSYNTH_$$_INITNOTES
.Ll237:
# [539] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc88:
.Lc89:
	movq	%rsp,%rbp
.Lc90:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# Var i located at rbp-8, size=OS_S32
# Var q located at rbp-16, size=OS_F64
.Ll238:
# [540] q:=c03;
	movq	_$FMSYNTH$_Ld33(%rip),%rax
	movq	%rax,-16(%rbp)
.Ll239:
# [541] for i:=0 to 127 do
	movl	$0,-8(%rbp)
	subl	$1,-8(%rbp)
	.balign 8,0x90
.Lj786:
	addl	$1,-8(%rbp)
.Ll240:
# [543] fnotes[i]:=q;
	movl	-8(%rbp),%eax
	movq	-16(%rbp),%rdx
	leaq	U_$FMSYNTH_$$_FNOTES(%rip),%rcx
	movq	%rdx,(%rcx,%rax,8)
.Ll241:
# [544] q:=q*a212;
	movsd	-16(%rbp),%xmm0
	mulsd	_$FMSYNTH$_Ld10(%rip),%xmm0
	movsd	%xmm0,-16(%rbp)
.Ll242:
	cmpl	$127,-8(%rbp)
	jl	.Lj786
.Ll243:
# [546] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc87:
.Lt11:
.Ll244:

.section .text.n_fmsynth_$$_init$,"x"
	.balign 16,0x90
.globl	INIT$_$FMSYNTH
INIT$_$FMSYNTH:
.globl	FMSYNTH_$$_init$
FMSYNTH_$$_init$:
.Lc91:
.seh_proc FMSYNTH_$$_init$
.Ll245:
# [550] initialization
	pushq	%rbp
.seh_pushreg %rbp
.Lc93:
.Lc94:
	movq	%rsp,%rbp
.Lc95:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
.Ll246:
# [552] initflogtable;
	call	FMSYNTH_$$_INITFLOGTABLE
.Ll247:
# [553] initfsinetable;
	call	FMSYNTH_$$_INITFSINETABLE
.Ll248:
# [554] initnotes;
	call	FMSYNTH_$$_INITNOTES
.Ll249:
# [558] end.
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc92:
.Lt6:
.Ll250:

.section .text.n_fmsynth_$$_finalize_implicit$,"x"
	.balign 16,0x90
.globl	FINALIZE$_$FMSYNTH
FINALIZE$_$FMSYNTH:
.globl	FMSYNTH_$$_finalize_implicit$
FMSYNTH_$$_finalize_implicit$:
.Lc96:
.seh_proc FMSYNTH_$$_finalize_implicit$
	pushq	%rbp
.seh_pushreg %rbp
.Lc98:
.Lc99:
	movq	%rsp,%rbp
.Lc100:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	INIT_$FMSYNTH_$$_DEF27(%rip),%rax
	movq	%rax,%rdx
	leaq	U_$FMSYNTH_$$_WAVES0(%rip),%rcx
	call	fpc_finalize
	leaq	INIT_$FMSYNTH_$$_DEF28(%rip),%rdx
	leaq	U_$FMSYNTH_$$_WAVES1(%rip),%rcx
	call	fpc_finalize
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc97:
.Lt12:
.Ll251:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 8
# [fmsynth.pas]
# [81] var flogtable:array[0..65540] of myfloat;
	.globl U_$FMSYNTH_$$_FLOGTABLE
U_$FMSYNTH_$$_FLOGTABLE:
	.zero 524328

.section .bss
	.balign 8
# [82] foutputtable:array[0..8191] of myfloat;
	.globl U_$FMSYNTH_$$_FOUTPUTTABLE
U_$FMSYNTH_$$_FOUTPUTTABLE:
	.zero 65536

.section .bss
	.balign 8
# [83] fnotes:array[0..127] of myfloat;
	.globl U_$FMSYNTH_$$_FNOTES
U_$FMSYNTH_$$_FNOTES:
	.zero 1024

.section .bss
	.balign 8
# [84] fsinetable:array[-655360..655360] of myfloat;
	.globl U_$FMSYNTH_$$_FSINETABLE
U_$FMSYNTH_$$_FSINETABLE:
	.zero 10485768

.section .bss
	.balign 8
# [86] fmoperator:TFmOperator;
	.globl U_$FMSYNTH_$$_FMOPERATOR
U_$FMSYNTH_$$_FMOPERATOR:
	.zero 8

.section .bss
	.balign 8
# [87] voices:array [0..31] of TFmVoice;
	.globl U_$FMSYNTH_$$_VOICES
U_$FMSYNTH_$$_VOICES:
	.zero 256

.section .bss
	.balign 8
# [88] waves0:array [0..127] of TWaveSample0;
	.globl U_$FMSYNTH_$$_WAVES0
U_$FMSYNTH_$$_WAVES0:
	.zero 1049600

.section .bss
	.balign 8
# [89] waves1:array [0..16383] of TWaveSample1;
	.globl U_$FMSYNTH_$$_WAVES1
U_$FMSYNTH_$$_WAVES1:
	.zero 655360

.section .bss
	.balign 8
# [94] fftwave:^double;
	.globl U_$FMSYNTH_$$_FFTWAVE
U_$FMSYNTH_$$_FFTWAVE:
	.zero 8

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
	.quad	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
	.quad	SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
	.quad	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLERSTR$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_DISPATCH$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_DISPATCHSTR$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_EQUALS$TOBJECT$$BOOLEAN
	.quad	SYSTEM$_$TOBJECT_$__$$_GETHASHCODE$$INT64
	.quad	SYSTEM$_$TOBJECT_$__$$_TOSTRING$$ANSISTRING
	.quad	0
# [560] 
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
	.quad	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
	.quad	SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
	.quad	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLERSTR$formal
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
# [91] sampleindex0:integer=0;

.section .data.n_tc_$fmsynth_$$_sampleindex0,"d"
	.balign 4
.globl	TC_$FMSYNTH_$$_SAMPLEINDEX0
TC_$FMSYNTH_$$_SAMPLEINDEX0:
	.long	0
# [92] sampleindex1:integer=0;

.section .data.n_tc_$fmsynth_$$_sampleindex1,"d"
	.balign 4
.globl	TC_$FMSYNTH_$$_SAMPLEINDEX1
TC_$FMSYNTH_$$_SAMPLEINDEX1:
	.long	0
# [93] waveidx:integer=0;

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
# [97] procedure initvoices;

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
# value: 0d+1.0000000000000000E+000
	.byte	0,0,0,0,0,0,240,63

.section .rodata.n__$FMSYNTH$_Ld8,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld8
_$FMSYNTH$_Ld8:
# value: 0d+3.1569678791045952E+001
	.byte	102,196,32,120,214,145,63,64

.section .rodata.n__$FMSYNTH$_Ld9,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld9
_$FMSYNTH$_Ld9:
# value: 0d+7.8125000000000000E-003
	.byte	0,0,0,0,0,0,128,63

.section .rodata.n__$FMSYNTH$_Ld10,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld10
_$FMSYNTH$_Ld10:
# value: 0d+1.0594630943592953E+000
	.byte	99,121,217,146,143,243,240,63

.section .rodata.n__$FMSYNTH$_Ld11,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld11
_$FMSYNTH$_Ld11:
# value: 0d+1.000000000E+00
	.byte	0,0,128,63

.section .rodata.n__$FMSYNTH$_Ld12,"d"
	.balign 4
.globl	_$FMSYNTH$_Ld12
_$FMSYNTH$_Ld12:
# value: 0d+0.000000000E+00
	.byte	0,0,0,0

.section .rodata.n__$FMSYNTH$_Ld13,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld13
_$FMSYNTH$_Ld13:
# value: 0d+9.9989460157410703E-001
	.byte	206,165,166,246,34,255,239,63

.section .rodata.n__$FMSYNTH$_Ld14,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld14
_$FMSYNTH$_Ld14:
# value: 0d+6.2831853071795862E+000
	.byte	24,45,68,84,251,33,25,64

.section .rodata.n__$FMSYNTH$_Ld15,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld15
_$FMSYNTH$_Ld15:
# value: 0d+9.7656250000000000E-004
	.byte	0,0,0,0,0,0,80,63

.section .rodata.n__$FMSYNTH$_Ld16,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld16
_$FMSYNTH$_Ld16:
# value: 0d+1.0240000000000000E+003
	.byte	0,0,0,0,0,0,144,64

.section .rodata.n__$FMSYNTH$_Ld17,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld17
_$FMSYNTH$_Ld17:
# value: 0d+1.0043000000000000E+000
	.byte	253,246,117,224,156,17,240,63

.section .rodata.n__$FMSYNTH$_Ld18,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld18
_$FMSYNTH$_Ld18:
# value: 0d+1.0060000000000000E+000
	.byte	127,106,188,116,147,24,240,63

.section .rodata.n__$FMSYNTH$_Ld19,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld19
_$FMSYNTH$_Ld19:
# value: 0d+1.0017000000000000E+000
	.byte	130,115,70,148,246,6,240,63

.section .rodata.n__$FMSYNTH$_Ld20,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld20
_$FMSYNTH$_Ld20:
# value: 0d+9.9500000000000000E-001
	.byte	215,163,112,61,10,215,239,63

.section .rodata.n__$FMSYNTH$_Ld21,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld21
_$FMSYNTH$_Ld21:
# value: 0d+9.9099999999999999E-001
	.byte	131,192,202,161,69,182,239,63

.section .rodata.n__$FMSYNTH$_Ld22,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld22
_$FMSYNTH$_Ld22:
# value: 0d+9.9390000000000001E-001
	.byte	32,210,111,95,7,206,239,63

.section .rodata.n__$FMSYNTH$_Ld23,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld23
_$FMSYNTH$_Ld23:
# value: 0d+9.9609999999999999E-001
	.byte	142,117,113,27,13,224,239,63

.section .rodata.n__$FMSYNTH$_Ld24,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld24
_$FMSYNTH$_Ld24:
# value: 0d+9.6000000000000000E+004
	.byte	0,0,0,0,0,112,247,64

.section .rodata.n__$FMSYNTH$_Ld25,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld25
_$FMSYNTH$_Ld25:
# value: 0d+3.0037333333333333E+002
	.byte	198,146,95,44,249,197,114,64

.section .rodata.n__$FMSYNTH$_Ld26,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld26
_$FMSYNTH$_Ld26:
# value: 0d+1.0416666666666666E-002
	.byte	85,85,85,85,85,85,133,63

.section .rodata.n__$FMSYNTH$_Ld27,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld27
_$FMSYNTH$_Ld27:
# value: 0d-1.0416666666666666E-005
	.byte	165,226,236,195,103,216,229,190

.section .rodata.n__$FMSYNTH$_Ld28,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld28
_$FMSYNTH$_Ld28:
# value: 0d-1.0416666666666667E-006
	.byte	30,130,189,156,236,121,177,190

.section .rodata.n__$FMSYNTH$_Ld29,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld29
_$FMSYNTH$_Ld29:
# value: 0d-3.1250000000000001E-006
	.byte	45,67,28,235,226,54,202,190

.section .rodata.n__$FMSYNTH$_Ld30,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld30
_$FMSYNTH$_Ld30:
# value: 0d+9.4999999999999996E-001
	.byte	102,102,102,102,102,102,238,63

.section .rodata.n__$FMSYNTH$_Ld31,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld31
_$FMSYNTH$_Ld31:
# value: 0d+9.0000000000000002E-001
	.byte	205,204,204,204,204,204,236,63

.section .rodata.n__$FMSYNTH$_Ld32,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld32
_$FMSYNTH$_Ld32:
# value: 0d+6.5535000000000000E+004
	.byte	0,0,0,0,224,255,239,64

.section .rodata.n__$FMSYNTH$_Ld33,"d"
	.balign 8
.globl	_$FMSYNTH$_Ld33
_$FMSYNTH$_Ld33:
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

.section .data.n_INIT_$FMSYNTH_$$_TSAMPLEINFO,"d"
	.balign 8
.globl	INIT_$FMSYNTH_$$_TSAMPLEINFO
INIT_$FMSYNTH_$$_TSAMPLEINFO:
	.byte	13,11
	.ascii	"TSampleinfo"
	.long	40,0

.section .data.n_RTTI_$FMSYNTH_$$_DEF21,"d"
	.balign 8
.globl	RTTI_$FMSYNTH_$$_DEF21
RTTI_$FMSYNTH_$$_DEF21:
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
	.quad	RTTI_$FMSYNTH_$$_DEF21
	.quad	18

.section .data.n_INIT_$FMSYNTH_$$_DEF27,"d"
	.balign 8
.globl	INIT_$FMSYNTH_$$_DEF27
INIT_$FMSYNTH_$$_DEF27:
	.byte	12
	.ascii	"\000"
	.quad	1049600,128
	.quad	INIT_$FMSYNTH_$$_TWAVESAMPLE0
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_INIT_$FMSYNTH_$$_DEF28,"d"
	.balign 8
.globl	INIT_$FMSYNTH_$$_DEF28
INIT_$FMSYNTH_$$_DEF28:
	.byte	12
	.ascii	"\000"
	.quad	655360,16384
	.quad	INIT_$FMSYNTH_$$_TWAVESAMPLE1
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SMALLINT
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc101:
	.long	.Lc103-.Lc102
.Lc102:
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
.Lc103:
	.long	.Lc105-.Lc104
.Lc104:
	.secrel32	.Lc101
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
.Lc105:
	.long	.Lc107-.Lc106
.Lc106:
	.secrel32	.Lc101
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
.Lc107:
	.long	.Lc109-.Lc108
.Lc108:
	.secrel32	.Lc101
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
.Lc109:
	.long	.Lc111-.Lc110
.Lc110:
	.secrel32	.Lc101
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
.Lc111:
	.long	.Lc113-.Lc112
.Lc112:
	.secrel32	.Lc101
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
.Lc113:
	.long	.Lc115-.Lc114
.Lc114:
	.secrel32	.Lc101
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
.Lc115:
	.long	.Lc117-.Lc116
.Lc116:
	.secrel32	.Lc101
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
.Lc117:
	.long	.Lc119-.Lc118
.Lc118:
	.secrel32	.Lc101
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
.Lc119:
	.long	.Lc121-.Lc120
.Lc120:
	.secrel32	.Lc101
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
.Lc121:
	.long	.Lc123-.Lc122
.Lc122:
	.secrel32	.Lc101
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
.Lc123:
	.long	.Lc125-.Lc124
.Lc124:
	.secrel32	.Lc101
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
.Lc125:
	.long	.Lc127-.Lc126
.Lc126:
	.secrel32	.Lc101
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
.Lc127:
	.long	.Lc129-.Lc128
.Lc128:
	.secrel32	.Lc101
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
.Lc129:
	.long	.Lc131-.Lc130
.Lc130:
	.secrel32	.Lc101
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
.Lc131:
	.long	.Lc133-.Lc132
.Lc132:
	.secrel32	.Lc101
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
.Lc133:
	.long	.Lc135-.Lc134
.Lc134:
	.secrel32	.Lc101
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
.Lc135:
	.long	.Lc137-.Lc136
.Lc136:
	.secrel32	.Lc101
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
.Lc137:
	.long	.Lc139-.Lc138
.Lc138:
	.secrel32	.Lc101
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
.Lc139:
	.long	.Lc141-.Lc140
.Lc140:
	.secrel32	.Lc101
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
.Lc141:
	.long	.Lc143-.Lc142
.Lc142:
	.secrel32	.Lc101
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
.Lc143:
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
	.long	.La21-.Ldebug_info0
# Symbol FOUTPUTTABLE
	.uleb128	3
	.ascii	"FOUTPUTTABLE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FOUTPUTTABLE
	.long	.La23-.Ldebug_info0
# Symbol FNOTES
	.uleb128	3
	.ascii	"FNOTES\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FNOTES
	.long	.La25-.Ldebug_info0
# Symbol FSINETABLE
	.uleb128	3
	.ascii	"FSINETABLE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FSINETABLE
	.long	.La27-.Ldebug_info0
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
	.long	.La29-.Ldebug_info0
# Symbol WAVES0
	.uleb128	3
	.ascii	"WAVES0\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_WAVES0
	.long	.La31-.Ldebug_info0
# Symbol WAVES1
	.uleb128	3
	.ascii	"WAVES1\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_WAVES1
	.long	.La33-.Ldebug_info0
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
	.long	.La35-.Ldebug_info0
# Symbol SAMPLEINDEX1
	.uleb128	3
	.ascii	"SAMPLEINDEX1\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$FMSYNTH_$$_SAMPLEINDEX1
	.long	.La35-.Ldebug_info0
# Symbol WAVEIDX
	.uleb128	3
	.ascii	"WAVEIDX\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$FMSYNTH_$$_WAVEIDX
	.long	.La35-.Ldebug_info0
# Symbol FFTWAVE
	.uleb128	3
	.ascii	"FFTWAVE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$FMSYNTH_$$_FFTWAVE
	.long	.La37-.Ldebug_info0
# Symbol TRANSPOSE
	.uleb128	3
	.ascii	"TRANSPOSE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$FMSYNTH_$$_TRANSPOSE
	.long	.La35-.Ldebug_info0
# Symbol INITVOICES
# Symbol INITSAMPLES0
# Symbol INITSAMPLES1
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
	.byte	118
	.sleb128	-8
	.long	.La35-.Ldebug_info0
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
	.long	.La39-.Ldebug_info0
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	3
	.byte	118
	.sleb128	-648
	.long	.La35-.Ldebug_info0
# Symbol FH
	.uleb128	5
	.ascii	"FH\000"
	.byte	3
	.byte	118
	.sleb128	-656
	.long	.La35-.Ldebug_info0
# Symbol CURRENTDIR2
	.uleb128	5
	.ascii	"CURRENTDIR2\000"
	.byte	3
	.byte	118
	.sleb128	-664
	.long	.La41-.Ldebug_info0
# Symbol DUMMY
	.uleb128	5
	.ascii	"DUMMY\000"
	.byte	3
	.byte	118
	.sleb128	-680
	.long	.La43-.Ldebug_info0
# Symbol INTWAVE
	.uleb128	5
	.ascii	"INTWAVE\000"
	.byte	3
	.byte	118
	.sleb128	-2736
	.long	.La45-.Ldebug_info0
# Symbol fin$0
# Definition Array[0..15] Of Byte
.La43:
	.uleb128	6
	.uleb128	16
	.long	.La47-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	15
	.uleb128	1
	.long	.La49-.Ldebug_info0
	.byte	0
.La44:
	.uleb128	8
	.long	.La43-.Ldebug_info0
# Definition Array[0..1024] Of SmallInt
.La45:
	.uleb128	6
	.uleb128	2050
	.long	.La51-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	1024
	.uleb128	2
	.long	.La51-.Ldebug_info0
	.byte	0
.La46:
	.uleb128	8
	.long	.La45-.Ldebug_info0
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
	.long	.La53-.Ldebug_info0
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
	.long	.La39-.Ldebug_info0
# Symbol K
# Symbol J
	.uleb128	5
	.ascii	"J\000"
	.byte	3
	.byte	118
	.sleb128	-656
	.long	.La35-.Ldebug_info0
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	3
	.byte	118
	.sleb128	-664
	.long	.La35-.Ldebug_info0
# Symbol FH
	.uleb128	5
	.ascii	"FH\000"
	.byte	3
	.byte	118
	.sleb128	-672
	.long	.La35-.Ldebug_info0
# Symbol CURRENTDIR2
	.uleb128	5
	.ascii	"CURRENTDIR2\000"
	.byte	3
	.byte	118
	.sleb128	-680
	.long	.La41-.Ldebug_info0
# Symbol DUMMY
	.uleb128	5
	.ascii	"DUMMY\000"
	.byte	3
	.byte	118
	.sleb128	-936
	.long	.La55-.Ldebug_info0
# Symbol INTWAVE
	.uleb128	5
	.ascii	"INTWAVE\000"
	.byte	3
	.byte	118
	.sleb128	-944
	.long	.La57-.Ldebug_info0
# Symbol SAMPLENUM
	.uleb128	5
	.ascii	"SAMPLENUM\000"
	.byte	3
	.byte	118
	.sleb128	-952
	.long	.La59-.Ldebug_info0
# Symbol SAMPLEINFO
	.uleb128	5
	.ascii	"SAMPLEINFO\000"
	.byte	3
	.byte	118
	.sleb128	-2232
	.long	.La61-.Ldebug_info0
# Symbol INTEGRATOR
	.uleb128	5
	.ascii	"INTEGRATOR\000"
	.byte	3
	.byte	118
	.sleb128	-2240
	.long	.La1-.Ldebug_info0
# Symbol MAXVAL
	.uleb128	5
	.ascii	"MAXVAL\000"
	.byte	3
	.byte	118
	.sleb128	-2248
	.long	.La1-.Ldebug_info0
# Symbol FFTI
# Symbol FFTV
# Symbol fin$1
# Definition Array[0..255] Of Byte
.La55:
	.uleb128	6
	.uleb128	256
	.long	.La47-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	255
	.uleb128	1
	.long	.La47-.Ldebug_info0
	.byte	0
.La56:
	.uleb128	8
	.long	.La55-.Ldebug_info0
# Definition Array[0..31] Of TSampleinfo
.La61:
	.uleb128	6
	.uleb128	1280
	.long	.La19-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	31
	.uleb128	40
	.long	.La49-.Ldebug_info0
	.byte	0
.La62:
	.uleb128	8
	.long	.La61-.Ldebug_info0
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
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef $FMSYNTH_$$_init$; Register;
	.uleb128	4
	.ascii	"FMSYNTH_$$_init$\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	FMSYNTH_$$_init$
	.quad	.Lt6
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
	.byte	118
	.sleb128	-8
	.long	.La35-.Ldebug_info0
# Symbol Q
	.uleb128	5
	.ascii	"Q\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La1-.Ldebug_info0
# Symbol Q2
	.uleb128	5
	.ascii	"Q2\000"
	.byte	2
	.byte	118
	.sleb128	-24
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
	.byte	118
	.sleb128	-8
	.long	.La35-.Ldebug_info0
	.byte	0
# Procdef operator :=(<var TSingleStereoSample>;LongInt):Array[0..1] Of Double;
	.uleb128	11
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
	.byte	118
	.sleb128	-16
	.byte	6
	.long	.La7-.Ldebug_info0
# Symbol B
	.uleb128	10
	.ascii	"B\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La35-.Ldebug_info0
# Symbol RESULT
	.uleb128	5
	.ascii	"RESULT\000"
	.byte	3
	.byte	118
	.sleb128	-16
	.byte	6
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
	.quad	.Lt10
# Symbol result
	.uleb128	5
	.ascii	"result\000"
	.byte	3
	.byte	118
	.sleb128	-24
	.byte	6
	.long	.La7-.Ldebug_info0
# Symbol A
	.uleb128	10
	.ascii	"A\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La7-.Ldebug_info0
# Symbol B
	.uleb128	10
	.ascii	"B\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La63-.Ldebug_info0
# Symbol RESULT
	.uleb128	5
	.ascii	"RESULT\000"
	.byte	3
	.byte	118
	.sleb128	-24
	.byte	6
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
	.byte	118
	.sleb128	-8
	.long	.La35-.Ldebug_info0
# Symbol Q
	.uleb128	5
	.ascii	"Q\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
.La47:
	.uleb128	12
	.ascii	"BYTE\000"
	.long	.La65-.Ldebug_info0
.La65:
	.uleb128	13
	.ascii	"BYTE\000"
	.byte	7
	.byte	1
.La48:
	.uleb128	8
	.long	.La47-.Ldebug_info0
# Definition ShortInt
.La49:
	.uleb128	12
	.ascii	"SHORTINT\000"
	.long	.La66-.Ldebug_info0
.La66:
	.uleb128	13
	.ascii	"SHORTINT\000"
	.byte	5
	.byte	1
.La50:
	.uleb128	8
	.long	.La49-.Ldebug_info0
# Definition Word
.La59:
	.uleb128	12
	.ascii	"WORD\000"
	.long	.La67-.Ldebug_info0
.La67:
	.uleb128	13
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La60:
	.uleb128	8
	.long	.La59-.Ldebug_info0
# Definition SmallInt
.La51:
	.uleb128	12
	.ascii	"SMALLINT\000"
	.long	.La68-.Ldebug_info0
.La68:
	.uleb128	13
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.La52:
	.uleb128	8
	.long	.La51-.Ldebug_info0
# Definition LongInt
.La35:
	.uleb128	12
	.ascii	"LONGINT\000"
	.long	.La69-.Ldebug_info0
.La69:
	.uleb128	13
	.ascii	"LONGINT\000"
	.byte	5
	.byte	4
.La36:
	.uleb128	8
	.long	.La35-.Ldebug_info0
# Definition AnsiString
.La41:
	.uleb128	12
	.ascii	"ANSISTRING\000"
	.long	.La70-.Ldebug_info0
.La70:
	.uleb128	14
	.long	.La71-.Ldebug_info0
.La42:
	.uleb128	8
	.long	.La41-.Ldebug_info0
# Definition Single
.La63:
	.uleb128	12
	.ascii	"SINGLE\000"
	.long	.La73-.Ldebug_info0
.La73:
	.uleb128	13
	.ascii	"SINGLE\000"
	.byte	4
	.byte	4
.La64:
	.uleb128	8
	.long	.La63-.Ldebug_info0
# Definition Double
.La1:
	.uleb128	12
	.ascii	"DOUBLE\000"
	.long	.La74-.Ldebug_info0
.La74:
	.uleb128	13
	.ascii	"DOUBLE\000"
	.byte	4
	.byte	8
.La2:
	.uleb128	8
	.long	.La1-.Ldebug_info0
# Definition ^untyped
.La53:
	.uleb128	12
	.ascii	"parentfp_void_pointer\000"
	.long	.La75-.Ldebug_info0
.La75:
	.uleb128	15
.La54:
	.uleb128	8
	.long	.La53-.Ldebug_info0
# Definition PSmallInt
.La57:
	.uleb128	12
	.ascii	"PSMALLINT\000"
	.long	.La76-.Ldebug_info0
.La76:
	.uleb128	14
	.long	.La51-.Ldebug_info0
.La58:
	.uleb128	8
	.long	.La57-.Ldebug_info0
# Definition Char
.La71:
	.uleb128	12
	.ascii	"CHAR\000"
	.long	.La77-.Ldebug_info0
.La77:
	.uleb128	13
	.ascii	"Char\000"
	.byte	8
	.byte	1
.La72:
	.uleb128	8
	.long	.La71-.Ldebug_info0
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
.La39:
	.uleb128	12
	.ascii	"TRAWBYTESEARCHREC\000"
	.long	.La78-.Ldebug_info0
.La78:
	.uleb128	16
	.ascii	"TRAWBYTESEARCHREC\000"
	.uleb128	640
	.uleb128	17
	.ascii	"TIME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La35-.Ldebug_info0
	.uleb128	17
	.ascii	"SIZE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La79-.Ldebug_info0
	.uleb128	17
	.ascii	"ATTR\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La35-.Ldebug_info0
	.uleb128	17
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La81-.Ldebug_info0
	.uleb128	17
	.ascii	"EXCLUDEATTR\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La35-.Ldebug_info0
	.uleb128	17
	.ascii	"FINDHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La83-.Ldebug_info0
	.uleb128	17
	.ascii	"FINDDATA\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La85-.Ldebug_info0
	.byte	0
.La40:
	.uleb128	8
	.long	.La39-.Ldebug_info0
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
# Defs - Begin unit UNIT65032 has index 14
# Defs - End unit UNIT65032 has index 14
# Defs - Begin unit SYNTHCONTROL has index 17
# Defs - End unit SYNTHCONTROL has index 17
# Defs - Begin unit FFT has index 256
# Defs - End unit FFT has index 256
# Defs - Begin unit UNIT2 has index 16
# Defs - End unit UNIT2 has index 16
# Defs - Begin unit UNIT1 has index 10
# Defs - End unit UNIT1 has index 10
# Defs - Begin unit FMSYNTH has index 18
# Definition PSinglesample
.La3:
	.uleb128	12
	.ascii	"PSINGLESAMPLE\000"
	.long	.La87-.Ldebug_info0
.La87:
	.uleb128	14
	.long	.La1-.Ldebug_info0
.La4:
	.uleb128	8
	.long	.La3-.Ldebug_info0
# Definition PSingleStereosample
.La5:
	.uleb128	12
	.ascii	"PSINGLESTEREOSAMPLE\000"
	.long	.La88-.Ldebug_info0
.La88:
	.uleb128	14
	.long	.La1-.Ldebug_info0
.La6:
	.uleb128	8
	.long	.La5-.Ldebug_info0
# Definition TSingleStereoSample
.La7:
	.uleb128	12
	.ascii	"TSINGLESTEREOSAMPLE\000"
	.long	.La89-.Ldebug_info0
.La89:
	.uleb128	18
	.ascii	"TSINGLESTEREOSAMPLE\000"
	.uleb128	16
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	1
	.uleb128	8
	.long	.La49-.Ldebug_info0
	.byte	0
.La8:
	.uleb128	8
	.long	.La7-.Ldebug_info0
# Definition TFmOperator
.La9:
	.uleb128	12
	.ascii	"TFMOPERATOR\000"
	.long	.La90-.Ldebug_info0
.La90:
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
	.long	.La93-.Ldebug_info0
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
	.uleb128	168
	.long	.La35-.Ldebug_info0
	.uleb128	17
	.ascii	"ADSRVAL\000"
	.byte	3
	.byte	35
	.uleb128	176
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AR1\000"
	.byte	3
	.byte	35
	.uleb128	184
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AV1\000"
	.byte	3
	.byte	35
	.uleb128	192
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AR2\000"
	.byte	3
	.byte	35
	.uleb128	200
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AV2\000"
	.byte	3
	.byte	35
	.uleb128	208
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AR3\000"
	.byte	3
	.byte	35
	.uleb128	216
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AV3\000"
	.byte	3
	.byte	35
	.uleb128	224
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AR4\000"
	.byte	3
	.byte	35
	.uleb128	232
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AV4\000"
	.byte	3
	.byte	35
	.uleb128	240
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AV\000"
	.byte	3
	.byte	35
	.uleb128	248
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"AR\000"
	.byte	3
	.byte	35
	.uleb128	256
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"ADSRBIAS\000"
	.byte	3
	.byte	35
	.uleb128	264
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"VEL\000"
	.byte	3
	.byte	35
	.uleb128	272
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"KEYSENSE\000"
	.byte	3
	.byte	35
	.uleb128	280
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"EXPR\000"
	.byte	3
	.byte	35
	.uleb128	288
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"PA\000"
	.byte	3
	.byte	35
	.uleb128	296
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"PA2\000"
	.byte	3
	.byte	35
	.uleb128	304
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"WAVEMODE\000"
	.byte	3
	.byte	35
	.uleb128	312
	.long	.La35-.Ldebug_info0
	.uleb128	17
	.ascii	"INTPA\000"
	.byte	3
	.byte	35
	.uleb128	316
	.long	.La35-.Ldebug_info0
	.uleb128	17
	.ascii	"FREQMOD\000"
	.byte	3
	.byte	35
	.uleb128	320
	.long	.La1-.Ldebug_info0
	.uleb128	17
	.ascii	"OUTPUTTABLE\000"
	.byte	3
	.byte	35
	.uleb128	328
	.long	.La3-.Ldebug_info0
# Procdef getsample(<TFmOperator>):Double;
	.uleb128	11
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
	.byte	118
	.sleb128	-8
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol result
	.uleb128	5
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La1-.Ldebug_info0
# Symbol GETSAMPLE
	.uleb128	5
	.ascii	"GETSAMPLE\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La1-.Ldebug_info0
# Symbol RESULT
	.uleb128	5
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La1-.Ldebug_info0
# Symbol P101
# Symbol P999
# Symbol RES64A
# Symbol MODULATOR
	.uleb128	5
	.ascii	"MODULATOR\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La1-.Ldebug_info0
# Symbol I
# Symbol J
# Symbol SAMPLE
	.uleb128	5
	.ascii	"SAMPLE\000"
	.byte	2
	.byte	118
	.sleb128	-56
	.long	.La1-.Ldebug_info0
# Symbol FREQ2
	.uleb128	5
	.ascii	"FREQ2\000"
	.byte	2
	.byte	118
	.sleb128	-64
	.long	.La1-.Ldebug_info0
# Symbol H1
	.uleb128	5
	.ascii	"H1\000"
	.byte	3
	.byte	118
	.sleb128	-72
	.long	.La1-.Ldebug_info0
# Symbol PA21
	.uleb128	5
	.ascii	"PA21\000"
	.byte	3
	.byte	118
	.sleb128	-80
	.long	.La35-.Ldebug_info0
# Symbol D
	.uleb128	5
	.ascii	"D\000"
	.byte	3
	.byte	118
	.sleb128	-88
	.long	.La1-.Ldebug_info0
# Symbol S2
	.uleb128	5
	.ascii	"S2\000"
	.byte	3
	.byte	118
	.sleb128	-96
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
	.byte	118
	.sleb128	-8
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
	.byte	118
	.sleb128	-16
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol AFREQ
	.uleb128	10
	.ascii	"AFREQ\000"
	.byte	2
	.byte	118
	.sleb128	-8
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
	.long	.La94-.Ldebug_info0
# Symbol MODE
	.uleb128	10
	.ascii	"MODE\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La35-.Ldebug_info0
# Symbol OUTS
	.uleb128	10
	.ascii	"OUTS\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La94-.Ldebug_info0
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
	.byte	118
	.sleb128	-16
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol vmt
	.uleb128	10
	.ascii	"vmt\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La94-.Ldebug_info0
	.byte	0
	.byte	0
.La10:
	.uleb128	8
	.long	.La9-.Ldebug_info0
# Definition TFmVoice
.La12:
	.uleb128	12
	.ascii	"TFMVOICE\000"
	.long	.La96-.Ldebug_info0
.La96:
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
	.long	.La93-.Ldebug_info0
	.uleb128	17
	.ascii	"OPERATORS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La97-.Ldebug_info0
	.uleb128	17
	.ascii	"OUTPUTS\000"
	.byte	2
	.byte	35
	.uleb128	72
	.long	.La99-.Ldebug_info0
	.uleb128	17
	.ascii	"OUTMULS\000"
	.byte	3
	.byte	35
	.uleb128	136
	.long	.La101-.Ldebug_info0
# Procdef constructor create(<TFmVoice>;<Pointer>);
	.uleb128	11
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
	.long	.La94-.Ldebug_info0
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La35-.Ldebug_info0
	.byte	0
# Procdef getsample(<TFmVoice>):Double;
	.uleb128	11
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
	.byte	118
	.sleb128	-8
	.byte	1
	.long	.La12-.Ldebug_info0
# Symbol result
	.uleb128	5
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La1-.Ldebug_info0
# Symbol GETSAMPLE
	.uleb128	5
	.ascii	"GETSAMPLE\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La1-.Ldebug_info0
# Symbol RESULT
	.uleb128	5
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La1-.Ldebug_info0
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La35-.Ldebug_info0
# Symbol J
# Symbol OUTPUT
	.uleb128	5
	.ascii	"OUTPUT\000"
	.byte	2
	.byte	118
	.sleb128	-40
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
	.byte	118
	.sleb128	-16
	.byte	1
	.long	.La12-.Ldebug_info0
# Symbol AFREQ
	.uleb128	10
	.ascii	"AFREQ\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La1-.Ldebug_info0
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La35-.Ldebug_info0
	.byte	0
	.byte	0
.La13:
	.uleb128	8
	.long	.La12-.Ldebug_info0
# Definition TWaveSample1
.La15:
	.uleb128	12
	.ascii	"TWAVESAMPLE1\000"
	.long	.La103-.Ldebug_info0
.La103:
	.uleb128	16
	.ascii	"TWAVESAMPLE1\000"
	.uleb128	40
	.uleb128	17
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La41-.Ldebug_info0
	.uleb128	17
	.ascii	"LEN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La35-.Ldebug_info0
	.uleb128	17
	.ascii	"LSTART\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La35-.Ldebug_info0
	.uleb128	17
	.ascii	"LEND\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La35-.Ldebug_info0
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
	.long	.La104-.Ldebug_info0
	.byte	0
.La16:
	.uleb128	8
	.long	.La15-.Ldebug_info0
# Definition TWaveSample0
.La17:
	.uleb128	12
	.ascii	"TWAVESAMPLE0\000"
	.long	.La106-.Ldebug_info0
.La106:
	.uleb128	16
	.ascii	"TWAVESAMPLE0\000"
	.uleb128	8200
	.uleb128	17
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La41-.Ldebug_info0
	.uleb128	17
	.ascii	"WAVE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La107-.Ldebug_info0
	.byte	0
.La18:
	.uleb128	8
	.long	.La17-.Ldebug_info0
# Definition TSampleinfo
.La19:
	.uleb128	12
	.ascii	"TSAMPLEINFO\000"
	.long	.La109-.Ldebug_info0
.La109:
	.uleb128	16
	.ascii	"TSAMPLEINFO\000"
	.uleb128	40
	.uleb128	17
	.ascii	"SLEN\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La110-.Ldebug_info0
	.uleb128	17
	.ascii	"SLS\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La110-.Ldebug_info0
	.uleb128	17
	.ascii	"SLL\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La110-.Ldebug_info0
	.uleb128	17
	.ascii	"VOL\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La47-.Ldebug_info0
	.uleb128	17
	.ascii	"FINETUNE\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La49-.Ldebug_info0
	.uleb128	17
	.ascii	"SAMPLETYPE\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La47-.Ldebug_info0
	.uleb128	17
	.ascii	"PAN\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La47-.Ldebug_info0
	.uleb128	17
	.ascii	"RELNOTE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La49-.Ldebug_info0
	.uleb128	17
	.ascii	"SNL\000"
	.byte	2
	.byte	35
	.uleb128	17
	.long	.La47-.Ldebug_info0
	.uleb128	17
	.ascii	"SAMPLENAME\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La112-.Ldebug_info0
	.byte	0
.La20:
	.uleb128	8
	.long	.La19-.Ldebug_info0
# Definition Array[0..65540] Of Double
.La21:
	.uleb128	6
	.uleb128	524328
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	65540
	.uleb128	8
	.long	.La35-.Ldebug_info0
	.byte	0
.La22:
	.uleb128	8
	.long	.La21-.Ldebug_info0
# Definition Array[0..8191] Of Double
.La23:
	.uleb128	6
	.uleb128	65536
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	8191
	.uleb128	8
	.long	.La51-.Ldebug_info0
	.byte	0
.La24:
	.uleb128	8
	.long	.La23-.Ldebug_info0
# Definition Array[0..127] Of Double
.La25:
	.uleb128	6
	.uleb128	1024
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	127
	.uleb128	8
	.long	.La49-.Ldebug_info0
	.byte	0
.La26:
	.uleb128	8
	.long	.La25-.Ldebug_info0
# Definition Array[-655360..655360] Of Double
.La27:
	.uleb128	6
	.uleb128	10485768
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	-655360
	.sleb128	655360
	.uleb128	8
	.long	.La35-.Ldebug_info0
	.byte	0
.La28:
	.uleb128	8
	.long	.La27-.Ldebug_info0
# Definition Array[0..31] Of TFmVoice
.La29:
	.uleb128	6
	.uleb128	256
	.long	.La12-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	31
	.uleb128	8
	.long	.La49-.Ldebug_info0
	.byte	0
.La30:
	.uleb128	8
	.long	.La29-.Ldebug_info0
# Definition Array[0..127] Of TWaveSample0
.La31:
	.uleb128	6
	.uleb128	1049600
	.long	.La17-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	127
	.uleb128	8200
	.long	.La49-.Ldebug_info0
	.byte	0
.La32:
	.uleb128	8
	.long	.La31-.Ldebug_info0
# Definition Array[0..16383] Of TWaveSample1
.La33:
	.uleb128	6
	.uleb128	655360
	.long	.La15-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	16383
	.uleb128	40
	.long	.La51-.Ldebug_info0
	.byte	0
.La34:
	.uleb128	8
	.long	.La33-.Ldebug_info0
# Definition ^Double
.La37:
	.uleb128	14
	.long	.La1-.Ldebug_info0
.La38:
	.uleb128	8
	.long	.La37-.Ldebug_info0
# Defs - End unit FMSYNTH has index 18
# Defs - Begin unit RETRO has index 12
# Defs - End unit RETRO has index 12
# Defs - Begin unit FMSYNTH has index 18
# Defs - End unit FMSYNTH has index 18
# Defs - Begin Staticsymtable
# Defs - End Staticsymtable
# Definition Int64
.La79:
	.uleb128	12
	.ascii	"INT64\000"
	.long	.La114-.Ldebug_info0
.La114:
	.uleb128	13
	.ascii	"Int64\000"
	.byte	5
	.byte	8
.La80:
	.uleb128	8
	.long	.La79-.Ldebug_info0
# Definition RawByteString
.La81:
	.uleb128	12
	.ascii	"RAWBYTESTRING\000"
	.long	.La115-.Ldebug_info0
.La115:
	.uleb128	14
	.long	.La71-.Ldebug_info0
.La82:
	.uleb128	8
	.long	.La81-.Ldebug_info0
# Definition QWord
.La83:
	.uleb128	12
	.ascii	"QWORD\000"
	.long	.La116-.Ldebug_info0
.La116:
	.uleb128	13
	.ascii	"QWord\000"
	.byte	7
	.byte	8
.La84:
	.uleb128	8
	.long	.La83-.Ldebug_info0
# Definition WIN32_FIND_DATAW
.La85:
	.uleb128	12
	.ascii	"WIN32_FIND_DATAW\000"
	.long	.La117-.Ldebug_info0
.La117:
	.uleb128	16
	.ascii	"WIN32_FIND_DATAW\000"
	.uleb128	592
	.uleb128	17
	.ascii	"DWFILEATTRIBUTES\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La110-.Ldebug_info0
	.uleb128	17
	.ascii	"FTCREATIONTIME\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La118-.Ldebug_info0
	.uleb128	17
	.ascii	"FTLASTACCESSTIME\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La118-.Ldebug_info0
	.uleb128	17
	.ascii	"FTLASTWRITETIME\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La118-.Ldebug_info0
	.uleb128	17
	.ascii	"NFILESIZEHIGH\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La110-.Ldebug_info0
	.uleb128	17
	.ascii	"NFILESIZELOW\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La110-.Ldebug_info0
	.uleb128	17
	.ascii	"DWRESERVED0\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La110-.Ldebug_info0
	.uleb128	17
	.ascii	"DWRESERVED1\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La110-.Ldebug_info0
	.uleb128	17
	.ascii	"CFILENAME\000"
	.byte	2
	.byte	35
	.uleb128	44
	.long	.La120-.Ldebug_info0
	.uleb128	17
	.ascii	"CALTERNATEFILENAME\000"
	.byte	3
	.byte	35
	.uleb128	564
	.long	.La122-.Ldebug_info0
	.byte	0
.La86:
	.uleb128	8
	.long	.La85-.Ldebug_info0
# Definition TObject
.La91:
	.uleb128	12
	.ascii	"TOBJECT\000"
	.long	.La124-.Ldebug_info0
.La124:
	.uleb128	14
	.long	.La93-.Ldebug_info0
.La93:
	.uleb128	19
	.ascii	"TOBJECT\000"
	.uleb128	8
	.uleb128	22
	.byte	1
	.ascii	"_vptr$TOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La94-.Ldebug_info0
# Procdef constructor Create(<TObject>;<Pointer>);
	.uleb128	23
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La91-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La91-.Ldebug_info0
# Symbol vmt
	.uleb128	25
	.ascii	"vmt\000"
	.long	.La94-.Ldebug_info0
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
	.long	.La91-.Ldebug_info0
# Symbol vmt
	.uleb128	25
	.ascii	"vmt\000"
	.long	.La94-.Ldebug_info0
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
	.long	.La91-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La125-.Ldebug_info0
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
	.long	.La91-.Ldebug_info0
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
	.long	.La127-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La91-.Ldebug_info0
# Symbol EXCEPTOBJECT
	.uleb128	25
	.ascii	"EXCEPTOBJECT\000"
	.long	.La91-.Ldebug_info0
# Symbol EXCEPTADDR
	.uleb128	25
	.ascii	"EXCEPTADDR\000"
	.long	.La94-.Ldebug_info0
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
	.long	.La91-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	25
	.ascii	"MESSAGE\000"
	.long	.La129-.Ldebug_info0
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
	.long	.La91-.Ldebug_info0
	.byte	0
# Procdef class InitInstance(<Class Of TObject>;Pointer):TObject;
	.uleb128	23
	.ascii	"INITINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La91-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La131-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	25
	.ascii	"INSTANCE\000"
	.long	.La94-.Ldebug_info0
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
	.long	.La91-.Ldebug_info0
	.byte	0
# Procdef class ClassType(<Class Of TObject>):Class Of TObject;
	.uleb128	23
	.ascii	"CLASSTYPE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La133-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La135-.Ldebug_info0
	.byte	0
# Procdef class ClassInfo(<Class Of TObject>):^untyped;
	.uleb128	23
	.ascii	"CLASSINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La94-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La137-.Ldebug_info0
	.byte	0
# Procdef class ClassName(<Class Of TObject>;<var ShortString>):ShortString;
	.uleb128	23
	.ascii	"CLASSNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La139-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La141-.Ldebug_info0
# Symbol result
	.uleb128	29
	.ascii	"result\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef class ClassNameIs(<Class Of TObject>;const ShortString):Boolean;
	.uleb128	23
	.ascii	"CLASSNAMEIS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La143-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La145-.Ldebug_info0
# Symbol NAME
	.uleb128	25
	.ascii	"NAME\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef class ClassParent(<Class Of TObject>):Class Of TObject;
	.uleb128	23
	.ascii	"CLASSPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La133-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La147-.Ldebug_info0
	.byte	0
# Procdef class InstanceSize(<Class Of TObject>):Int64;
	.uleb128	23
	.ascii	"INSTANCESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La79-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La149-.Ldebug_info0
	.byte	0
# Procdef class InheritsFrom(<Class Of TObject>;TClass):Boolean;
	.uleb128	23
	.ascii	"INHERITSFROM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La143-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La151-.Ldebug_info0
# Symbol ACLASS
	.uleb128	25
	.ascii	"ACLASS\000"
	.long	.La133-.Ldebug_info0
	.byte	0
# Procdef class StringMessageTable(<Class Of TObject>):^TStringMessageTable;
	.uleb128	23
	.ascii	"STRINGMESSAGETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La153-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La155-.Ldebug_info0
	.byte	0
# Procdef class MethodAddress(<Class Of TObject>;const ShortString):^untyped;
	.uleb128	23
	.ascii	"METHODADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La94-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La157-.Ldebug_info0
# Symbol NAME
	.uleb128	25
	.ascii	"NAME\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef class MethodName(<Class Of TObject>;<var ShortString>;Pointer):ShortString;
	.uleb128	23
	.ascii	"METHODNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La139-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La159-.Ldebug_info0
# Symbol result
	.uleb128	29
	.ascii	"result\000"
	.long	.La139-.Ldebug_info0
# Symbol ADDRESS
	.uleb128	25
	.ascii	"ADDRESS\000"
	.long	.La94-.Ldebug_info0
	.byte	0
# Procdef FieldAddress(<TObject>;const ShortString):^untyped;
	.uleb128	23
	.ascii	"FIELDADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La94-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La91-.Ldebug_info0
# Symbol NAME
	.uleb128	25
	.ascii	"NAME\000"
	.long	.La139-.Ldebug_info0
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
	.long	.La91-.Ldebug_info0
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
	.long	.La91-.Ldebug_info0
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
	.long	.La91-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	25
	.ascii	"MESSAGE\000"
	.long	.La129-.Ldebug_info0
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
	.long	.La91-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	25
	.ascii	"MESSAGE\000"
	.long	.La129-.Ldebug_info0
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
	.long	.La91-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	25
	.ascii	"MESSAGE\000"
	.long	.La129-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	23
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La143-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La91-.Ldebug_info0
# Symbol IID
	.uleb128	25
	.ascii	"IID\000"
	.long	.La161-.Ldebug_info0
# Symbol OBJ
	.uleb128	25
	.ascii	"OBJ\000"
	.long	.La129-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	23
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La143-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La91-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	25
	.ascii	"IIDSTR\000"
	.long	.La139-.Ldebug_info0
# Symbol OBJ
	.uleb128	25
	.ascii	"OBJ\000"
	.long	.La129-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceByStr(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	23
	.ascii	"GETINTERFACEBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La143-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La91-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	25
	.ascii	"IIDSTR\000"
	.long	.La139-.Ldebug_info0
# Symbol OBJ
	.uleb128	25
	.ascii	"OBJ\000"
	.long	.La129-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceWeak(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	23
	.ascii	"GETINTERFACEWEAK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La143-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La91-.Ldebug_info0
# Symbol IID
	.uleb128	25
	.ascii	"IID\000"
	.long	.La161-.Ldebug_info0
# Symbol OBJ
	.uleb128	25
	.ascii	"OBJ\000"
	.long	.La129-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntry(<Class Of TObject>;const TGuid):^tinterfaceentry;
	.uleb128	23
	.ascii	"GETINTERFACEENTRY\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La163-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La165-.Ldebug_info0
# Symbol IID
	.uleb128	25
	.ascii	"IID\000"
	.long	.La161-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntryByStr(<Class Of TObject>;const ShortString):^tinterfaceentry;
	.uleb128	23
	.ascii	"GETINTERFACEENTRYBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La163-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La167-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	25
	.ascii	"IIDSTR\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceTable(<Class Of TObject>):^tinterfacetable;
	.uleb128	23
	.ascii	"GETINTERFACETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La169-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La171-.Ldebug_info0
	.byte	0
# Procdef class UnitName(<Class Of TObject>;<var AnsiString>):AnsiString;
	.uleb128	23
	.ascii	"UNITNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La173-.Ldebug_info0
# Symbol result
	.uleb128	29
	.ascii	"result\000"
	.long	.La41-.Ldebug_info0
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
	.long	.La143-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La91-.Ldebug_info0
# Symbol OBJ
	.uleb128	25
	.ascii	"OBJ\000"
	.long	.La91-.Ldebug_info0
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
	.long	.La79-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La91-.Ldebug_info0
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
	.long	.La41-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La91-.Ldebug_info0
# Symbol result
	.uleb128	29
	.ascii	"result\000"
	.long	.La41-.Ldebug_info0
	.byte	0
	.byte	0
.La92:
	.uleb128	8
	.long	.La91-.Ldebug_info0
# Definition Pointer
.La94:
	.uleb128	12
	.ascii	"POINTER\000"
	.long	.La175-.Ldebug_info0
.La175:
	.uleb128	15
.La95:
	.uleb128	8
	.long	.La94-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of TFmOperator
.La97:
	.uleb128	6
	.uleb128	64
	.long	.La9-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	8
	.long	.La49-.Ldebug_info0
	.byte	0
.La98:
	.uleb128	8
	.long	.La97-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of Double
.La99:
	.uleb128	6
	.uleb128	64
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	8
	.long	.La49-.Ldebug_info0
	.byte	0
.La100:
	.uleb128	8
	.long	.La99-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of Single
.La101:
	.uleb128	6
	.uleb128	32
	.long	.La63-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	4
	.long	.La49-.Ldebug_info0
	.byte	0
.La102:
	.uleb128	8
	.long	.La101-.Ldebug_info0
# Definition TWaveSample1.^Double
.La104:
	.uleb128	14
	.long	.La1-.Ldebug_info0
.La105:
	.uleb128	8
	.long	.La104-.Ldebug_info0
# Definition TWaveSample0.Array[0..1023] Of Double
.La107:
	.uleb128	6
	.uleb128	8192
	.long	.La1-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	1023
	.uleb128	8
	.long	.La51-.Ldebug_info0
	.byte	0
.La108:
	.uleb128	8
	.long	.La107-.Ldebug_info0
# Definition LongWord
.La110:
	.uleb128	12
	.ascii	"LONGWORD\000"
	.long	.La176-.Ldebug_info0
.La176:
	.uleb128	13
	.ascii	"LONGWORD\000"
	.byte	7
	.byte	4
.La111:
	.uleb128	8
	.long	.La110-.Ldebug_info0
# Definition TSampleinfo.Array[0..21] Of Char
.La112:
	.uleb128	6
	.uleb128	22
	.long	.La71-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	21
	.uleb128	1
	.long	.La49-.Ldebug_info0
	.byte	0
.La113:
	.uleb128	8
	.long	.La112-.Ldebug_info0
# Definition FILETIME
.La118:
	.uleb128	12
	.ascii	"FILETIME\000"
	.long	.La177-.Ldebug_info0
.La177:
	.uleb128	16
	.ascii	"FILETIME\000"
	.uleb128	8
	.uleb128	17
	.ascii	"DWLOWDATETIME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La110-.Ldebug_info0
	.uleb128	17
	.ascii	"DWHIGHDATETIME\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La110-.Ldebug_info0
	.byte	0
.La119:
	.uleb128	8
	.long	.La118-.Ldebug_info0
# Definition WIN32_FIND_DATAW.Array[0..259] Of WideChar
.La120:
	.uleb128	6
	.uleb128	520
	.long	.La178-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	259
	.uleb128	2
	.long	.La51-.Ldebug_info0
	.byte	0
.La121:
	.uleb128	8
	.long	.La120-.Ldebug_info0
# Definition WIN32_FIND_DATAW.Array[0..13] Of WideChar
.La122:
	.uleb128	6
	.uleb128	28
	.long	.La178-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	13
	.uleb128	2
	.long	.La49-.Ldebug_info0
	.byte	0
.La123:
	.uleb128	8
	.long	.La122-.Ldebug_info0
# Definition TObject.Class Of TObject
.La125:
	.uleb128	14
	.long	.La180-.Ldebug_info0
.La126:
	.uleb128	8
	.long	.La125-.Ldebug_info0
# Definition HRESULT
.La127:
	.uleb128	12
	.ascii	"HRESULT\000"
	.long	.La182-.Ldebug_info0
.La182:
	.uleb128	13
	.ascii	"HRESULT\000"
	.byte	5
	.byte	4
.La128:
	.uleb128	8
	.long	.La127-.Ldebug_info0
# Definition <Formal type>
.La129:
	.uleb128	12
	.ascii	"formal\000"
	.long	.La183-.Ldebug_info0
.La183:
	.uleb128	13
	.ascii	"FormalDef\000"
	.byte	7
	.byte	0
.La130:
	.uleb128	8
	.long	.La129-.Ldebug_info0
# Definition TObject.Class Of TObject
.La131:
	.uleb128	14
	.long	.La180-.Ldebug_info0
.La132:
	.uleb128	8
	.long	.La131-.Ldebug_info0
# Definition TClass
.La133:
	.uleb128	12
	.ascii	"TCLASS\000"
	.long	.La184-.Ldebug_info0
.La184:
	.uleb128	14
	.long	.La180-.Ldebug_info0
.La134:
	.uleb128	8
	.long	.La133-.Ldebug_info0
# Definition TObject.Class Of TObject
.La135:
	.uleb128	14
	.long	.La180-.Ldebug_info0
.La136:
	.uleb128	8
	.long	.La135-.Ldebug_info0
# Definition TObject.Class Of TObject
.La137:
	.uleb128	14
	.long	.La180-.Ldebug_info0
.La138:
	.uleb128	8
	.long	.La137-.Ldebug_info0
# Definition ShortString
.La139:
	.uleb128	12
	.ascii	"SHORTSTRING\000"
	.long	.La185-.Ldebug_info0
.La185:
	.uleb128	16
	.ascii	"ShortString\000"
	.uleb128	256
	.uleb128	17
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La47-.Ldebug_info0
	.uleb128	17
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La186-.Ldebug_info0
	.byte	0
.La186:
	.uleb128	30
	.uleb128	256
	.uleb128	1
	.long	.La71-.Ldebug_info0
	.uleb128	31
	.uleb128	1
	.uleb128	255
	.long	.La47-.Ldebug_info0
	.byte	0
.La140:
	.uleb128	8
	.long	.La139-.Ldebug_info0
# Definition TObject.Class Of TObject
.La141:
	.uleb128	14
	.long	.La180-.Ldebug_info0
.La142:
	.uleb128	8
	.long	.La141-.Ldebug_info0
# Definition Boolean
.La143:
	.uleb128	12
	.ascii	"BOOLEAN\000"
	.long	.La187-.Ldebug_info0
.La187:
	.uleb128	13
	.ascii	"Boolean\000"
	.byte	2
	.byte	1
.La144:
	.uleb128	8
	.long	.La143-.Ldebug_info0
# Definition TObject.Class Of TObject
.La145:
	.uleb128	14
	.long	.La180-.Ldebug_info0
.La146:
	.uleb128	8
	.long	.La145-.Ldebug_info0
# Definition TObject.Class Of TObject
.La147:
	.uleb128	14
	.long	.La180-.Ldebug_info0
.La148:
	.uleb128	8
	.long	.La147-.Ldebug_info0
# Definition TObject.Class Of TObject
.La149:
	.uleb128	14
	.long	.La180-.Ldebug_info0
.La150:
	.uleb128	8
	.long	.La149-.Ldebug_info0
# Definition TObject.Class Of TObject
.La151:
	.uleb128	14
	.long	.La180-.Ldebug_info0
.La152:
	.uleb128	8
	.long	.La151-.Ldebug_info0
# Definition pstringmessagetable
.La153:
	.uleb128	12
	.ascii	"PSTRINGMESSAGETABLE\000"
	.long	.La188-.Ldebug_info0
.La188:
	.uleb128	14
	.long	.La189-.Ldebug_info0
.La154:
	.uleb128	8
	.long	.La153-.Ldebug_info0
# Definition TObject.Class Of TObject
.La155:
	.uleb128	14
	.long	.La180-.Ldebug_info0
.La156:
	.uleb128	8
	.long	.La155-.Ldebug_info0
# Definition TObject.Class Of TObject
.La157:
	.uleb128	14
	.long	.La180-.Ldebug_info0
.La158:
	.uleb128	8
	.long	.La157-.Ldebug_info0
# Definition TObject.Class Of TObject
.La159:
	.uleb128	14
	.long	.La180-.Ldebug_info0
.La160:
	.uleb128	8
	.long	.La159-.Ldebug_info0
# Definition TGuid
.La161:
	.uleb128	12
	.ascii	"TGUID\000"
	.long	.La191-.Ldebug_info0
.La191:
	.uleb128	16
	.ascii	"TGUID\000"
	.uleb128	16
	.uleb128	17
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La110-.Ldebug_info0
	.uleb128	17
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La59-.Ldebug_info0
	.uleb128	17
	.ascii	"DATA3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La59-.Ldebug_info0
	.uleb128	17
	.ascii	"DATA4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La192-.Ldebug_info0
	.uleb128	17
	.ascii	"D1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La110-.Ldebug_info0
	.uleb128	17
	.ascii	"D2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La59-.Ldebug_info0
	.uleb128	17
	.ascii	"D3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La59-.Ldebug_info0
	.uleb128	17
	.ascii	"D4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La194-.Ldebug_info0
	.uleb128	17
	.ascii	"TIME_LOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La110-.Ldebug_info0
	.uleb128	17
	.ascii	"TIME_MID\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La59-.Ldebug_info0
	.uleb128	17
	.ascii	"TIME_HI_AND_VERSION\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La59-.Ldebug_info0
	.uleb128	17
	.ascii	"CLOCK_SEQ_HI_AND_RESERVED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La47-.Ldebug_info0
	.uleb128	17
	.ascii	"CLOCK_SEQ_LOW\000"
	.byte	2
	.byte	35
	.uleb128	9
	.long	.La47-.Ldebug_info0
	.uleb128	17
	.ascii	"NODE\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La196-.Ldebug_info0
	.byte	0
.La162:
	.uleb128	8
	.long	.La161-.Ldebug_info0
# Definition pinterfaceentry
.La163:
	.uleb128	12
	.ascii	"PINTERFACEENTRY\000"
	.long	.La198-.Ldebug_info0
.La198:
	.uleb128	14
	.long	.La199-.Ldebug_info0
.La164:
	.uleb128	8
	.long	.La163-.Ldebug_info0
# Definition TObject.Class Of TObject
.La165:
	.uleb128	14
	.long	.La180-.Ldebug_info0
.La166:
	.uleb128	8
	.long	.La165-.Ldebug_info0
# Definition TObject.Class Of TObject
.La167:
	.uleb128	14
	.long	.La180-.Ldebug_info0
.La168:
	.uleb128	8
	.long	.La167-.Ldebug_info0
# Definition pinterfacetable
.La169:
	.uleb128	12
	.ascii	"PINTERFACETABLE\000"
	.long	.La201-.Ldebug_info0
.La201:
	.uleb128	14
	.long	.La202-.Ldebug_info0
.La170:
	.uleb128	8
	.long	.La169-.Ldebug_info0
# Definition TObject.Class Of TObject
.La171:
	.uleb128	14
	.long	.La180-.Ldebug_info0
.La172:
	.uleb128	8
	.long	.La171-.Ldebug_info0
# Definition TObject.Class Of TObject
.La173:
	.uleb128	14
	.long	.La180-.Ldebug_info0
.La174:
	.uleb128	8
	.long	.La173-.Ldebug_info0
# Definition WideChar
.La178:
	.uleb128	12
	.ascii	"WIDECHAR\000"
	.long	.La204-.Ldebug_info0
.La204:
	.uleb128	13
	.ascii	"WideChar\000"
	.byte	8
	.byte	2
.La179:
	.uleb128	8
	.long	.La178-.Ldebug_info0
# Definition <record type>
.La180:
	.uleb128	12
	.ascii	"__vtbl_ptr_type\000"
	.long	.La205-.Ldebug_info0
.La205:
	.uleb128	32
	.uleb128	40
	.byte	0
.La181:
	.uleb128	8
	.long	.La180-.Ldebug_info0
# Definition TStringMessageTable
.La189:
	.uleb128	12
	.ascii	"TSTRINGMESSAGETABLE\000"
	.long	.La206-.Ldebug_info0
.La206:
	.uleb128	16
	.ascii	"TSTRINGMESSAGETABLE\000"
	.uleb128	24
	.uleb128	17
	.ascii	"COUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La35-.Ldebug_info0
	.uleb128	17
	.ascii	"MSGSTRTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La207-.Ldebug_info0
	.byte	0
.La190:
	.uleb128	8
	.long	.La189-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La192:
	.uleb128	6
	.uleb128	8
	.long	.La47-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La49-.Ldebug_info0
	.byte	0
.La193:
	.uleb128	8
	.long	.La192-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La194:
	.uleb128	6
	.uleb128	8
	.long	.La47-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La49-.Ldebug_info0
	.byte	0
.La195:
	.uleb128	8
	.long	.La194-.Ldebug_info0
# Definition TGuid.Array[0..5] Of Byte
.La196:
	.uleb128	6
	.uleb128	6
	.long	.La47-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	5
	.uleb128	1
	.long	.La49-.Ldebug_info0
	.byte	0
.La197:
	.uleb128	8
	.long	.La196-.Ldebug_info0
# Definition tinterfaceentry
.La199:
	.uleb128	12
	.ascii	"TINTERFACEENTRY\000"
	.long	.La209-.Ldebug_info0
.La209:
	.uleb128	16
	.ascii	"TINTERFACEENTRY\000"
	.uleb128	40
	.uleb128	17
	.ascii	"IID\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La210-.Ldebug_info0
	.uleb128	17
	.ascii	"VTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La94-.Ldebug_info0
	.uleb128	17
	.ascii	"IOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La83-.Ldebug_info0
	.uleb128	17
	.ascii	"IIDSTR\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La212-.Ldebug_info0
	.uleb128	17
	.ascii	"ITYPE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La214-.Ldebug_info0
	.uleb128	17
	.ascii	"__PAD_DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La79-.Ldebug_info0
	.byte	0
.La200:
	.uleb128	8
	.long	.La199-.Ldebug_info0
# Definition tinterfacetable
.La202:
	.uleb128	12
	.ascii	"TINTERFACETABLE\000"
	.long	.La216-.Ldebug_info0
.La216:
	.uleb128	16
	.ascii	"TINTERFACETABLE\000"
	.uleb128	48
	.uleb128	17
	.ascii	"ENTRYCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La83-.Ldebug_info0
	.uleb128	17
	.ascii	"ENTRIES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La217-.Ldebug_info0
	.byte	0
.La203:
	.uleb128	8
	.long	.La202-.Ldebug_info0
# Definition TStringMessageTable.Array[0..0] Of TMsgStrTable
.La207:
	.uleb128	6
	.uleb128	16
	.long	.La219-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	0
	.uleb128	16
	.long	.La49-.Ldebug_info0
	.byte	0
.La208:
	.uleb128	8
	.long	.La207-.Ldebug_info0
# Definition PGuid
.La210:
	.uleb128	12
	.ascii	"PGUID\000"
	.long	.La221-.Ldebug_info0
.La221:
	.uleb128	14
	.long	.La161-.Ldebug_info0
.La211:
	.uleb128	8
	.long	.La210-.Ldebug_info0
# Definition PShortString
.La212:
	.uleb128	12
	.ascii	"PSHORTSTRING\000"
	.long	.La222-.Ldebug_info0
.La222:
	.uleb128	14
	.long	.La139-.Ldebug_info0
.La213:
	.uleb128	8
	.long	.La212-.Ldebug_info0
# Definition tinterfaceentrytype
.La214:
	.uleb128	12
	.ascii	"TINTERFACEENTRYTYPE\000"
	.long	.La223-.Ldebug_info0
.La223:
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
.La215:
	.uleb128	8
	.long	.La214-.Ldebug_info0
# Definition tinterfacetable.Array[0..0] Of tinterfaceentry
.La217:
	.uleb128	6
	.uleb128	40
	.long	.La199-.Ldebug_info0
	.uleb128	7
	.sleb128	0
	.sleb128	0
	.uleb128	40
	.long	.La49-.Ldebug_info0
	.byte	0
.La218:
	.uleb128	8
	.long	.La217-.Ldebug_info0
# Definition TMsgStrTable
.La219:
	.uleb128	12
	.ascii	"TMSGSTRTABLE\000"
	.long	.La224-.Ldebug_info0
.La224:
	.uleb128	16
	.ascii	"TMSGSTRTABLE\000"
	.uleb128	16
	.uleb128	17
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La212-.Ldebug_info0
	.uleb128	17
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La94-.Ldebug_info0
	.byte	0
.La220:
	.uleb128	8
	.long	.La219-.Ldebug_info0
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
# function: FMSYNTH$_$INITSAMPLES0_$$_fin$0
# [113:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	124
# [113:1]
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
# [113:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll4
	.byte	5
	.uleb128	1
	.byte	124
# [113:1]
	.byte	2
	.uleb128	.Ll5-.Ll4
	.byte	1
# [114:14]
	.byte	2
	.uleb128	.Ll6-.Ll5
	.byte	5
	.uleb128	14
	.byte	13
# [115:32]
	.byte	2
	.uleb128	.Ll7-.Ll6
	.byte	5
	.uleb128	32
	.byte	13
# [117:35]
	.byte	2
	.uleb128	.Ll8-.Ll7
	.byte	5
	.uleb128	35
	.byte	14
# [118:14]
	.byte	2
	.uleb128	.Ll9-.Ll8
	.byte	5
	.uleb128	14
	.byte	13
# [119:45]
	.byte	2
	.uleb128	.Ll10-.Ll9
	.byte	5
	.uleb128	45
	.byte	13
# [120:14]
	.byte	2
	.uleb128	.Ll11-.Ll10
	.byte	5
	.uleb128	14
	.byte	13
# [121:3]
	.byte	2
	.uleb128	.Ll12-.Ll11
	.byte	5
	.uleb128	3
	.byte	13
# [122:15]
	.byte	2
	.uleb128	.Ll13-.Ll12
	.byte	5
	.uleb128	15
	.byte	13
# [123:18]
	.byte	2
	.uleb128	.Ll14-.Ll13
	.byte	5
	.uleb128	18
	.byte	13
# [124:10]
	.byte	2
	.uleb128	.Ll15-.Ll14
	.byte	5
	.uleb128	10
	.byte	13
# [125:1]
	.byte	2
	.uleb128	.Ll16-.Ll15
	.byte	5
	.uleb128	1
	.byte	13
# [113:1]
	.byte	2
	.uleb128	.Ll17-.Ll16
	.byte	3
	.sleb128	-12
	.byte	1
# [126:1]
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
# [144:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll20
	.byte	5
	.uleb128	1
	.byte	155
# [144:1]
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
# [144:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll23
	.byte	5
	.uleb128	1
	.byte	155
# [144:1]
	.byte	2
	.uleb128	.Ll24-.Ll23
	.byte	1
# [145:14]
	.byte	2
	.uleb128	.Ll25-.Ll24
	.byte	5
	.uleb128	14
	.byte	13
# [146:32]
	.byte	2
	.uleb128	.Ll26-.Ll25
	.byte	5
	.uleb128	32
	.byte	13
# [148:35]
	.byte	2
	.uleb128	.Ll27-.Ll26
	.byte	5
	.uleb128	35
	.byte	14
# [149:14]
	.byte	2
	.uleb128	.Ll28-.Ll27
	.byte	5
	.uleb128	14
	.byte	13
# [150:14]
	.byte	2
	.uleb128	.Ll29-.Ll28
	.byte	13
# [151:14]
	.byte	2
	.uleb128	.Ll30-.Ll29
	.byte	13
# [152:15]
	.byte	2
	.uleb128	.Ll31-.Ll30
	.byte	5
	.uleb128	15
	.byte	13
# [153:15]
	.byte	2
	.uleb128	.Ll32-.Ll31
	.byte	13
# [155:43]
	.byte	2
	.uleb128	.Ll33-.Ll32
	.byte	5
	.uleb128	43
	.byte	14
# [156:24]
	.byte	2
	.uleb128	.Ll34-.Ll33
	.byte	5
	.uleb128	24
	.byte	13
# [157:29]
	.byte	2
	.uleb128	.Ll35-.Ll34
	.byte	5
	.uleb128	29
	.byte	13
# [158:33]
	.byte	2
	.uleb128	.Ll36-.Ll35
	.byte	5
	.uleb128	33
	.byte	13
# [159:53]
	.byte	2
	.uleb128	.Ll37-.Ll36
	.byte	5
	.uleb128	53
	.byte	13
# [160:38]
	.byte	2
	.uleb128	.Ll38-.Ll37
	.byte	5
	.uleb128	38
	.byte	13
# [161:5]
	.byte	2
	.uleb128	.Ll39-.Ll38
	.byte	5
	.uleb128	5
	.byte	13
# [162:5]
	.byte	2
	.uleb128	.Ll40-.Ll39
	.byte	13
# [164:30]
	.byte	2
	.uleb128	.Ll41-.Ll40
	.byte	5
	.uleb128	30
	.byte	14
# [166:19]
	.byte	2
	.uleb128	.Ll42-.Ll41
	.byte	5
	.uleb128	19
	.byte	14
# [167:25]
	.byte	2
	.uleb128	.Ll43-.Ll42
	.byte	5
	.uleb128	25
	.byte	13
# [168:26]
	.byte	2
	.uleb128	.Ll44-.Ll43
	.byte	5
	.uleb128	26
	.byte	13
# [164:9]
	.byte	2
	.uleb128	.Ll45-.Ll44
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	-4
	.byte	1
# [178:30]
	.byte	2
	.uleb128	.Ll46-.Ll45
	.byte	5
	.uleb128	30
	.byte	26
# [192:4]
	.byte	2
	.uleb128	.Ll47-.Ll46
	.byte	5
	.uleb128	4
	.byte	26
# [194:21]
	.byte	2
	.uleb128	.Ll48-.Ll47
	.byte	5
	.uleb128	21
	.byte	14
# [195:52]
	.byte	2
	.uleb128	.Ll49-.Ll48
	.byte	5
	.uleb128	52
	.byte	13
# [196:46]
	.byte	2
	.uleb128	.Ll50-.Ll49
	.byte	5
	.uleb128	46
	.byte	13
# [197:90]
	.byte	2
	.uleb128	.Ll51-.Ll50
	.byte	5
	.uleb128	90
	.byte	13
# [198:20]
	.byte	2
	.uleb128	.Ll52-.Ll51
	.byte	5
	.uleb128	20
	.byte	13
# [153:7]
	.byte	2
	.uleb128	.Ll53-.Ll52
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-45
	.byte	1
# [200:15]
	.byte	2
	.uleb128	.Ll54-.Ll53
	.byte	5
	.uleb128	15
	.byte	59
# [201:10]
	.byte	2
	.uleb128	.Ll55-.Ll54
	.byte	5
	.uleb128	10
	.byte	13
# [202:1]
	.byte	2
	.uleb128	.Ll56-.Ll55
	.byte	5
	.uleb128	1
	.byte	13
# [144:1]
	.byte	2
	.uleb128	.Ll57-.Ll56
	.byte	3
	.sleb128	-58
	.byte	1
# [203:1]
	.byte	2
	.uleb128	.Ll58-.Ll57
	.byte	71
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll59
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITVOICES
# [211:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll60
	.byte	5
	.uleb128	1
	.byte	222
# [212:1]
	.byte	2
	.uleb128	.Ll61-.Ll60
	.byte	13
# [213:14]
	.byte	2
	.uleb128	.Ll62-.Ll61
	.byte	5
	.uleb128	14
	.byte	13
# [212:1]
	.byte	2
	.uleb128	.Ll63-.Ll62
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [214:1]
	.byte	2
	.uleb128	.Ll64-.Ll63
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll65
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
# [220:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll66
	.byte	5
	.uleb128	1
	.byte	231
# [220:1]
	.byte	2
	.uleb128	.Ll67-.Ll66
	.byte	1
# [226:1]
	.byte	2
	.uleb128	.Ll68-.Ll67
	.byte	18
# [221:1]
	.byte	2
	.uleb128	.Ll69-.Ll68
	.byte	3
	.sleb128	-5
	.byte	1
# [222:1]
	.byte	2
	.uleb128	.Ll70-.Ll69
	.byte	13
# [223:1]
	.byte	2
	.uleb128	.Ll71-.Ll70
	.byte	13
# [224:1]
	.byte	2
	.uleb128	.Ll72-.Ll71
	.byte	13
# [225:1]
	.byte	2
	.uleb128	.Ll73-.Ll72
	.byte	13
# [226:1]
	.byte	2
	.uleb128	.Ll74-.Ll73
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll75
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
# [234:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll76
	.byte	5
	.uleb128	1
	.byte	245
# [235:1]
	.byte	2
	.uleb128	.Ll77-.Ll76
	.byte	13
# [236:15]
	.byte	2
	.uleb128	.Ll78-.Ll77
	.byte	5
	.uleb128	15
	.byte	13
# [235:1]
	.byte	2
	.uleb128	.Ll79-.Ll78
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [237:1]
	.byte	2
	.uleb128	.Ll80-.Ll79
	.byte	14
# [238:1]
	.byte	2
	.uleb128	.Ll81-.Ll80
	.byte	13
# [239:1]
	.byte	2
	.uleb128	.Ll82-.Ll81
	.byte	13
# [240:1]
	.byte	2
	.uleb128	.Ll83-.Ll82
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll84
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITFLOGTABLE
# [250:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll85
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	249
	.byte	1
# [251:1]
	.byte	2
	.uleb128	.Ll86-.Ll85
	.byte	13
# [253:1]
	.byte	2
	.uleb128	.Ll87-.Ll86
	.byte	14
# [254:1]
	.byte	2
	.uleb128	.Ll88-.Ll87
	.byte	13
# [256:7]
	.byte	2
	.uleb128	.Ll89-.Ll88
	.byte	5
	.uleb128	7
	.byte	14
# [259:14]
	.byte	2
	.uleb128	.Ll90-.Ll89
	.byte	5
	.uleb128	14
	.byte	15
# [260:9]
	.byte	2
	.uleb128	.Ll91-.Ll90
	.byte	5
	.uleb128	9
	.byte	13
# [254:1]
	.byte	2
	.uleb128	.Ll92-.Ll91
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-6
	.byte	1
# [263:1]
	.byte	2
	.uleb128	.Ll93-.Ll92
	.byte	21
# [264:1]
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
# function: FMSYNTH_$$_INITFSINETABLE
# [271:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll96
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	270
	.byte	1
# [272:1]
	.byte	2
	.uleb128	.Ll97-.Ll96
	.byte	13
# [273:1]
	.byte	2
	.uleb128	.Ll98-.Ll97
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll99
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_assign$LONGINT$$TSINGLESTEREOSAMPLE
# [277:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll100
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	276
	.byte	1
# [278:7]
	.byte	2
	.uleb128	.Ll101-.Ll100
	.byte	5
	.uleb128	7
	.byte	13
# [279:7]
	.byte	2
	.uleb128	.Ll102-.Ll101
	.byte	13
# [280:1]
	.byte	2
	.uleb128	.Ll103-.Ll102
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll104
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_star$TSINGLESTEREOSAMPLE$SINGLE$$TSINGLESTEREOSAMPLE
# [284:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll105
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	283
	.byte	1
# [285:17]
	.byte	2
	.uleb128	.Ll106-.Ll105
	.byte	5
	.uleb128	17
	.byte	13
# [286:17]
	.byte	2
	.uleb128	.Ll107-.Ll106
	.byte	13
# [287:1]
	.byte	2
	.uleb128	.Ll108-.Ll107
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll109
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
# [294:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll110
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	293
	.byte	1
# [294:1]
	.byte	2
	.uleb128	.Ll111-.Ll110
	.byte	1
# [311:1]
	.byte	2
	.uleb128	.Ll112-.Ll111
	.byte	29
# [295:1]
	.byte	2
	.uleb128	.Ll113-.Ll112
	.byte	3
	.sleb128	-16
	.byte	1
# [296:8]
	.byte	2
	.uleb128	.Ll114-.Ll113
	.byte	5
	.uleb128	8
	.byte	13
# [308:3]
	.byte	2
	.uleb128	.Ll115-.Ll114
	.byte	5
	.uleb128	3
	.byte	24
# [311:1]
	.byte	2
	.uleb128	.Ll116-.Ll115
	.byte	5
	.uleb128	1
	.byte	15
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll117
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_DESTROY
# [315:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll118
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	314
	.byte	1
# [315:1]
	.byte	2
	.uleb128	.Ll119-.Ll118
	.byte	1
# [316:13]
	.byte	2
	.uleb128	.Ll120-.Ll119
	.byte	5
	.uleb128	13
	.byte	13
# [317:1]
	.byte	2
	.uleb128	.Ll121-.Ll120
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll122
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMVOICE_$__$$_SETFREQ$DOUBLE
# [323:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll123
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	322
	.byte	1
# [324:1]
	.byte	2
	.uleb128	.Ll124-.Ll123
	.byte	13
# [326:34]
	.byte	2
	.uleb128	.Ll125-.Ll124
	.byte	5
	.uleb128	34
	.byte	14
# [327:33]
	.byte	2
	.uleb128	.Ll126-.Ll125
	.byte	5
	.uleb128	33
	.byte	13
# [328:34]
	.byte	2
	.uleb128	.Ll127-.Ll126
	.byte	5
	.uleb128	34
	.byte	13
# [329:33]
	.byte	2
	.uleb128	.Ll128-.Ll127
	.byte	5
	.uleb128	33
	.byte	13
# [330:33]
	.byte	2
	.uleb128	.Ll129-.Ll128
	.byte	13
# [331:34]
	.byte	2
	.uleb128	.Ll130-.Ll129
	.byte	5
	.uleb128	34
	.byte	13
# [332:34]
	.byte	2
	.uleb128	.Ll131-.Ll130
	.byte	13
# [335:1]
	.byte	2
	.uleb128	.Ll132-.Ll131
	.byte	5
	.uleb128	1
	.byte	15
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll133
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_SETFREQ$DOUBLE
# [339:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll134
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	338
	.byte	1
# [340:4]
	.byte	2
	.uleb128	.Ll135-.Ll134
	.byte	5
	.uleb128	4
	.byte	13
# [341:19]
	.byte	2
	.uleb128	.Ll136-.Ll135
	.byte	5
	.uleb128	19
	.byte	13
# [342:1]
	.byte	2
	.uleb128	.Ll137-.Ll136
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll138
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_INIT
# [346:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll139
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	345
	.byte	1
# [348:1]
	.byte	2
	.uleb128	.Ll140-.Ll139
	.byte	14
# [349:1]
	.byte	2
	.uleb128	.Ll141-.Ll140
	.byte	13
# [350:1]
	.byte	2
	.uleb128	.Ll142-.Ll141
	.byte	13
# [351:1]
	.byte	2
	.uleb128	.Ll143-.Ll142
	.byte	13
# [352:1]
	.byte	2
	.uleb128	.Ll144-.Ll143
	.byte	13
# [353:1]
	.byte	2
	.uleb128	.Ll145-.Ll144
	.byte	13
# [354:1]
	.byte	2
	.uleb128	.Ll146-.Ll145
	.byte	13
# [355:1]
	.byte	2
	.uleb128	.Ll147-.Ll146
	.byte	13
# [356:1]
	.byte	2
	.uleb128	.Ll148-.Ll147
	.byte	13
# [357:1]
	.byte	2
	.uleb128	.Ll149-.Ll148
	.byte	13
# [358:1]
	.byte	2
	.uleb128	.Ll150-.Ll149
	.byte	13
# [359:1]
	.byte	2
	.uleb128	.Ll151-.Ll150
	.byte	13
# [360:1]
	.byte	2
	.uleb128	.Ll152-.Ll151
	.byte	13
# [361:1]
	.byte	2
	.uleb128	.Ll153-.Ll152
	.byte	13
# [362:1]
	.byte	2
	.uleb128	.Ll154-.Ll153
	.byte	13
# [363:1]
	.byte	2
	.uleb128	.Ll155-.Ll154
	.byte	13
# [364:1]
	.byte	2
	.uleb128	.Ll156-.Ll155
	.byte	13
# [365:1]
	.byte	2
	.uleb128	.Ll157-.Ll156
	.byte	13
# [366:1]
	.byte	2
	.uleb128	.Ll158-.Ll157
	.byte	13
# [367:1]
	.byte	2
	.uleb128	.Ll159-.Ll158
	.byte	13
# [368:1]
	.byte	2
	.uleb128	.Ll160-.Ll159
	.byte	13
# [369:1]
	.byte	2
	.uleb128	.Ll161-.Ll160
	.byte	13
# [370:1]
	.byte	2
	.uleb128	.Ll162-.Ll161
	.byte	13
# [371:1]
	.byte	2
	.uleb128	.Ll163-.Ll162
	.byte	13
# [372:1]
	.byte	2
	.uleb128	.Ll164-.Ll163
	.byte	13
# [373:1]
	.byte	2
	.uleb128	.Ll165-.Ll164
	.byte	13
# [374:1]
	.byte	2
	.uleb128	.Ll166-.Ll165
	.byte	13
# [375:1]
	.byte	2
	.uleb128	.Ll167-.Ll166
	.byte	13
# [376:1]
	.byte	2
	.uleb128	.Ll168-.Ll167
	.byte	13
# [377:1]
	.byte	2
	.uleb128	.Ll169-.Ll168
	.byte	13
# [378:1]
	.byte	2
	.uleb128	.Ll170-.Ll169
	.byte	13
# [383:1]
	.byte	2
	.uleb128	.Ll171-.Ll170
	.byte	17
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll172
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH$_$TFMOPERATOR_$__$$_GETSAMPLE$$DOUBLE
# [400:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll173
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	399
	.byte	1
# [402:5]
	.byte	2
	.uleb128	.Ll174-.Ll173
	.byte	5
	.uleb128	5
	.byte	14
# [406:9]
	.byte	2
	.uleb128	.Ll175-.Ll174
	.byte	5
	.uleb128	9
	.byte	16
# [420:12]
	.byte	2
	.uleb128	.Ll176-.Ll175
	.byte	5
	.uleb128	12
	.byte	26
# [421:2]
	.byte	2
	.uleb128	.Ll177-.Ll176
	.byte	5
	.uleb128	2
	.byte	13
# [422:2]
	.byte	2
	.uleb128	.Ll178-.Ll177
	.byte	13
# [423:2]
	.byte	2
	.uleb128	.Ll179-.Ll178
	.byte	13
# [424:2]
	.byte	2
	.uleb128	.Ll180-.Ll179
	.byte	13
# [425:2]
	.byte	2
	.uleb128	.Ll181-.Ll180
	.byte	13
# [426:2]
	.byte	2
	.uleb128	.Ll182-.Ll181
	.byte	13
# [427:2]
	.byte	2
	.uleb128	.Ll183-.Ll182
	.byte	13
# [420:1]
	.byte	2
	.uleb128	.Ll184-.Ll183
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-7
	.byte	1
# [429:5]
	.byte	2
	.uleb128	.Ll185-.Ll184
	.byte	5
	.uleb128	5
	.byte	21
# [430:6]
	.byte	2
	.uleb128	.Ll186-.Ll185
	.byte	5
	.uleb128	6
	.byte	13
# [438:4]
	.byte	2
	.uleb128	.Ll187-.Ll186
	.byte	5
	.uleb128	4
	.byte	20
# [440:6]
	.byte	2
	.uleb128	.Ll188-.Ll187
	.byte	5
	.uleb128	6
	.byte	14
# [441:11]
	.byte	2
	.uleb128	.Ll189-.Ll188
	.byte	5
	.uleb128	11
	.byte	13
# [443:8]
	.byte	2
	.uleb128	.Ll190-.Ll189
	.byte	5
	.uleb128	8
	.byte	14
# [445:6]
	.byte	2
	.uleb128	.Ll191-.Ll190
	.byte	5
	.uleb128	6
	.byte	14
# [446:17]
	.byte	2
	.uleb128	.Ll192-.Ll191
	.byte	5
	.uleb128	17
	.byte	13
# [447:6]
	.byte	2
	.uleb128	.Ll193-.Ll192
	.byte	5
	.uleb128	6
	.byte	13
# [448:17]
	.byte	2
	.uleb128	.Ll194-.Ll193
	.byte	5
	.uleb128	17
	.byte	13
# [454:6]
	.byte	2
	.uleb128	.Ll195-.Ll194
	.byte	5
	.uleb128	6
	.byte	18
# [455:9]
	.byte	2
	.uleb128	.Ll196-.Ll195
	.byte	5
	.uleb128	9
	.byte	13
# [457:8]
	.byte	2
	.uleb128	.Ll197-.Ll196
	.byte	5
	.uleb128	8
	.byte	14
# [459:6]
	.byte	2
	.uleb128	.Ll198-.Ll197
	.byte	5
	.uleb128	6
	.byte	14
# [460:17]
	.byte	2
	.uleb128	.Ll199-.Ll198
	.byte	5
	.uleb128	17
	.byte	13
# [461:6]
	.byte	2
	.uleb128	.Ll200-.Ll199
	.byte	5
	.uleb128	6
	.byte	13
# [462:17]
	.byte	2
	.uleb128	.Ll201-.Ll200
	.byte	5
	.uleb128	17
	.byte	13
# [465:17]
	.byte	2
	.uleb128	.Ll202-.Ll201
	.byte	15
# [466:7]
	.byte	2
	.uleb128	.Ll203-.Ll202
	.byte	5
	.uleb128	7
	.byte	13
# [467:11]
	.byte	2
	.uleb128	.Ll204-.Ll203
	.byte	5
	.uleb128	11
	.byte	13
# [468:9]
	.byte	2
	.uleb128	.Ll205-.Ll204
	.byte	5
	.uleb128	9
	.byte	13
# [469:5]
	.byte	2
	.uleb128	.Ll206-.Ll205
	.byte	5
	.uleb128	5
	.byte	13
# [470:8]
	.byte	2
	.uleb128	.Ll207-.Ll206
	.byte	5
	.uleb128	8
	.byte	13
# [471:9]
	.byte	2
	.uleb128	.Ll208-.Ll207
	.byte	5
	.uleb128	9
	.byte	13
# [477:4]
	.byte	2
	.uleb128	.Ll209-.Ll208
	.byte	5
	.uleb128	4
	.byte	18
# [479:12]
	.byte	2
	.uleb128	.Ll210-.Ll209
	.byte	5
	.uleb128	12
	.byte	14
# [480:6]
	.byte	2
	.uleb128	.Ll211-.Ll210
	.byte	5
	.uleb128	6
	.byte	13
# [481:24]
	.byte	2
	.uleb128	.Ll212-.Ll211
	.byte	5
	.uleb128	24
	.byte	13
# [482:3]
	.byte	2
	.uleb128	.Ll213-.Ll212
	.byte	5
	.uleb128	3
	.byte	13
# [484:5]
	.byte	2
	.uleb128	.Ll214-.Ll213
	.byte	5
	.uleb128	5
	.byte	14
# [486:12]
	.byte	2
	.uleb128	.Ll215-.Ll214
	.byte	5
	.uleb128	12
	.byte	14
# [487:6]
	.byte	2
	.uleb128	.Ll216-.Ll215
	.byte	5
	.uleb128	6
	.byte	13
# [488:24]
	.byte	2
	.uleb128	.Ll217-.Ll216
	.byte	5
	.uleb128	24
	.byte	13
# [489:3]
	.byte	2
	.uleb128	.Ll218-.Ll217
	.byte	5
	.uleb128	3
	.byte	13
# [491:8]
	.byte	2
	.uleb128	.Ll219-.Ll218
	.byte	5
	.uleb128	8
	.byte	14
# [493:13]
	.byte	2
	.uleb128	.Ll220-.Ll219
	.byte	5
	.uleb128	13
	.byte	14
# [494:6]
	.byte	2
	.uleb128	.Ll221-.Ll220
	.byte	5
	.uleb128	6
	.byte	13
# [495:24]
	.byte	2
	.uleb128	.Ll222-.Ll221
	.byte	5
	.uleb128	24
	.byte	13
# [496:3]
	.byte	2
	.uleb128	.Ll223-.Ll222
	.byte	5
	.uleb128	3
	.byte	13
# [498:8]
	.byte	2
	.uleb128	.Ll224-.Ll223
	.byte	5
	.uleb128	8
	.byte	14
# [500:12]
	.byte	2
	.uleb128	.Ll225-.Ll224
	.byte	5
	.uleb128	12
	.byte	14
# [501:6]
	.byte	2
	.uleb128	.Ll226-.Ll225
	.byte	5
	.uleb128	6
	.byte	13
# [502:25]
	.byte	2
	.uleb128	.Ll227-.Ll226
	.byte	5
	.uleb128	25
	.byte	13
# [506:9]
	.byte	2
	.uleb128	.Ll228-.Ll227
	.byte	5
	.uleb128	9
	.byte	16
# [507:4]
	.byte	2
	.uleb128	.Ll229-.Ll228
	.byte	5
	.uleb128	4
	.byte	13
# [510:11]
	.byte	2
	.uleb128	.Ll230-.Ll229
	.byte	5
	.uleb128	11
	.byte	15
# [511:8]
	.byte	2
	.uleb128	.Ll231-.Ll230
	.byte	5
	.uleb128	8
	.byte	13
# [512:8]
	.byte	2
	.uleb128	.Ll232-.Ll231
	.byte	13
# [513:15]
	.byte	2
	.uleb128	.Ll233-.Ll232
	.byte	5
	.uleb128	15
	.byte	13
# [529:1]
	.byte	2
	.uleb128	.Ll234-.Ll233
	.byte	5
	.uleb128	1
	.byte	28
# [531:1]
	.byte	2
	.uleb128	.Ll235-.Ll234
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll236
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FMSYNTH_$$_INITNOTES
# [539:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll237
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	538
	.byte	1
# [540:1]
	.byte	2
	.uleb128	.Ll238-.Ll237
	.byte	13
# [541:1]
	.byte	2
	.uleb128	.Ll239-.Ll238
	.byte	13
# [543:9]
	.byte	2
	.uleb128	.Ll240-.Ll239
	.byte	5
	.uleb128	9
	.byte	14
# [544:7]
	.byte	2
	.uleb128	.Ll241-.Ll240
	.byte	5
	.uleb128	7
	.byte	13
# [541:1]
	.byte	2
	.uleb128	.Ll242-.Ll241
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-3
	.byte	1
# [546:1]
	.byte	2
	.uleb128	.Ll243-.Ll242
	.byte	17
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll244
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: INIT$_$FMSYNTH
# function: FMSYNTH_$$_init$
# [550:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll245
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	549
	.byte	1
# [552:1]
	.byte	2
	.uleb128	.Ll246-.Ll245
	.byte	14
# [553:1]
	.byte	2
	.uleb128	.Ll247-.Ll246
	.byte	13
# [554:1]
	.byte	2
	.uleb128	.Ll248-.Ll247
	.byte	13
# [558:1]
	.byte	2
	.uleb128	.Ll249-.Ll248
	.byte	16
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll250
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FINALIZE$_$FMSYNTH
# function: FMSYNTH_$$_finalize_implicit$
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll251
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

