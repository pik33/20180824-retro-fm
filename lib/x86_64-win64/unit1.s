	.file "unit1.pas"
# Begin asmlist al_begin

.section .debug_line
.Ldebug_linesection0:
.Ldebug_line0:

.section .debug_abbrev
.Ldebug_abbrevsection0:
.Ldebug_abbrev0:

.section .text.b_DEBUGSTART_$UNIT1,"x"
.globl	DEBUGSTART_$UNIT1
DEBUGSTART_$UNIT1:
# End asmlist al_begin
# Begin asmlist al_procedures

.section .text.n_unit1$_$tform1_$_button1click$tobject_$$_fin$3,"x"
	.balign 16,0x90
UNIT1$_$TFORM1_$_BUTTON1CLICK$TOBJECT_$$_fin$3:
.Lc1:
.seh_proc UNIT1$_$TFORM1_$_BUTTON1CLICK$TOBJECT_$$_fin$3
.Ll1:
# [unit1.pas]
# [72] begin
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
	leaq	-24776(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	-24744(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	-24736(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	-8(%rbp),%rax
	movq	%rax,%rcx
	call	fpc_ansistr_decr_ref
	leaq	-16(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	-24(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rdx
	leaq	-664(%rbp),%rcx
	call	fpc_finalize
	leaq	RTTI_$UNIT1_$$_DEF10(%rip),%rdx
	leaq	-16680(%rbp),%rcx
	call	fpc_finalize
	leaq	-24728(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc2:
.Lt1:
.Ll3:

.section .text.n_unit1$_$tform1_$__$$_button1click$tobject,"x"
	.balign 16,0x90
.globl	UNIT1$_$TFORM1_$__$$_BUTTON1CLICK$TOBJECT
UNIT1$_$TFORM1_$__$$_BUTTON1CLICK$TOBJECT:
.Lc6:
# Temps allocated between rbp-24912 and rbp-24728
.seh_proc UNIT1$_$TFORM1_$__$$_BUTTON1CLICK$TOBJECT
.Ll4:
	pushq	%rbp
.seh_pushreg %rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	movq	$6,%r10
.Lj2294:
	leaq	-4096(%rsp),%rsp
	movl	%eax,(%rsp)
	subq	$1,%r10
	jne	.Lj2294
	leaq	-384(%rsp),%rsp
.seh_stackalloc 24960
# Var Sender located in register rax
# Var $self located in register rax
# Var l located in register r15d
# Var i located in register edi
# Var j located in register esi
# Var ilf located in register r13d
# Var ild located in register eax
# Var ild2 located in register eax
# Var ild3 located in register eax
# Var sel located in register eax
# Var selstart located in register r14d
# Var d located in register al
# Var testt located in register rax
	movq	%rbx,-24912(%rbp)
	movq	%rdi,-24904(%rbp)
	movq	%rsi,-24896(%rbp)
	movq	%r12,-24888(%rbp)
	movq	%r13,-24880(%rbp)
	movq	%r14,-24872(%rbp)
	movq	%r15,-24864(%rbp)
.seh_savereg %rbx, 48
.seh_savereg %rdi, 56
.seh_savereg %rsi, 64
.seh_savereg %r12, 72
.seh_savereg %r13, 80
.seh_savereg %r14, 88
.seh_savereg %r15, 96
.seh_endprologue
# Var s located at rbp-8, size=OS_64
# Var currentdir located at rbp-16, size=OS_64
# Var currentdir2 located at rbp-24, size=OS_64
# Var sr located at rbp-664, size=OS_NO
# Var filenames located at rbp-16680, size=OS_NO
# Var directories located at rbp-24688, size=OS_NO
# Var buf located at rbp-24720, size=OS_NO
# Var fn located at rbp-24728, size=OS_64
	movq	%rcx,-24816(%rbp)
	movq	%rdx,-24808(%rbp)
.Ll5:
	movq	$0,-8(%rbp)
	movq	$0,-16(%rbp)
	movq	$0,-24(%rbp)
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rax
	leaq	-664(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_initialize
	leaq	RTTI_$UNIT1_$$_DEF10(%rip),%rax
	leaq	-16680(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_initialize
	movq	$0,-24728(%rbp)
	movq	$0,-24776(%rbp)
	movq	$0,-24744(%rbp)
	movq	$0,-24736(%rbp)
.Lj11:
	nop
.Lj7:
.Ll6:
# [58] label p101;
	movl	TC_$UNIT1$_$TFORM1_$_BUTTON1CLICK$TOBJECT_$$_defaultselstart(%rip),%r14d
	movl	TC_$UNIT1$_$TFORM1_$_BUTTON1CLICK$TOBJECT_$$_defaultsel(%rip),%eax
	movq	%rax,-24784(%rbp)
.Ll7:
# [75] songtime:=0;
	movq	$0,U_$RETRO_$$_SONGTIME(%rip)
.Ll8:
# [76] pause:=false;
	movb	$0,TC_$UMAIN_$$_PAUSE(%rip)
.Ll9:
# [77] siddelay:=20000;
	movq	$20000,TC_$RETRO_$$_SIDDELAY(%rip)
.Ll10:
# [79] initmachine(0); //---------- Start the retromachine -------------------
	movl	$0,%ecx
	call	RETRO_$$_INITMACHINE$LONGINT
.Ll11:
# [80] poke($70002,0);
	movl	$0,%eax
	movl	$458754,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll12:
# [81] application.processmessages;
	movq	TC_$FORMS_$$_APPLICATION(%rip),%rcx
	call	FORMS$_$TAPPLICATION_$__$$_PROCESSMESSAGES
.Ll13:
# [82] exec65032;
	call	UNIT65032_$$_EXEC65032
.Ll14:
# [83] main1;
	call	UMAIN_$$_MAIN1
.Ll15:
# [90] currentdir2:='d:\sid\';
	leaq	_$UNIT1$_Ld1(%rip),%rax
	leaq	-24(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
.Ll16:
# [92] setcurrentdir(currentdir2);
	movq	-24(%rbp),%rcx
	call	SYSUTILS_$$_SETCURRENTDIR$RAWBYTESTRING$$BOOLEAN
.Ll17:
# [93] box2(897,67,1782,115,36);
	movl	$36,32(%rsp)
	movl	$115,%r9d
	movl	$1782,%r8d
	movl	$67,%eax
	movl	$897,%ecx
	movl	%eax,%edx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll18:
# [94] s:=currentdir2;
	movq	-24(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
.Ll19:
# [95] if length(s)>55 then s:=copy(s,1,55);
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj52
	movq	-8(%rax),%rax
.Lj52:
	cmpq	$55,%rax
	jng	.Lj51
	movq	-8(%rbp),%r10
	leaq	-24736(%rbp),%rdx
	movq	$55,%rax
	movq	$1,%r8
	movq	%rax,%r9
	movq	%rdx,%rcx
	movq	%r10,%rdx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
.Lj51:
.Ll20:
# [96] l:=length(s);
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj67
	movq	-8(%rax),%rax
.Lj67:
	movl	%eax,%r15d
.Ll21:
# [98] outtextxyz(1344-8*l,75,s,44,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	%r15d,%edx
	shll	$3,%edx
	movl	$1344,%eax
	subl	%edx,%eax
	movl	%eax,%r10d
	movq	-8(%rbp),%rcx
	movl	$44,%eax
	movl	$75,%edx
	movl	%eax,%r9d
	movq	%rcx,%r8
	movl	%r10d,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll22:
# [100] ilf:=0;
	movl	$0,%r13d
.Ll23:
# [101] if length(currentdir2)=3 then
	movq	-24(%rbp),%rax
	testq	%rax,%rax
	je	.Lj84
	movq	-8(%rax),%rax
.Lj84:
	cmpq	$3,%rax
	jne	.Lj83
.Ll24:
# [104] for d := 'A' to 'Z' do
	movb	$65,-24792(%rbp)
	subb	$1,-24792(%rbp)
	.balign 8,0x90
.Lj87:
	addb	$1,-24792(%rbp)
.Ll25:
# [106] s := d + ':\';
	movzbl	-24792(%rbp),%edx
	leaq	-24736(%rbp),%rax
	movl	$0,%r8d
	movq	%rax,%rcx
	call	fpc_char_to_ansistr
	movq	-24736(%rbp),%r10
	leaq	_$UNIT1$_Ld2(%rip),%rax
	movq	%rax,%rdx
	leaq	-8(%rbp),%rax
	movl	$0,%r9d
	movq	%rax,%rcx
	movq	%rdx,%r8
	movq	%r10,%rdx
	call	fpc_ansistr_concat
.Ll26:
# [107] case GetDriveType(PChar(s)) of
	movq	-8(%rbp),%rcx
	testq	%rcx,%rcx
	jne	.Lj107
	leaq	FPC_EMPTYCHAR(%rip),%rcx
.Lj107:
	call	_$dll$kernel32$GetDriveTypeA
	cmpl	$3,%eax
	jb	.Lj103
	subl	$3,%eax
	je	.Lj104
	subl	$2,%eax
	jne	.Lj103
.Lj104:
# PeepHole Optimization,var2a
.Ll27:
# [113] filenames[ilf,0]:=s;
	movl	%r13d,%eax
	shlq	$4,%rax
	leaq	-16680(%rbp,%rax),%rax
	movq	-8(%rbp),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_assign
# PeepHole Optimization,var2a
.Ll28:
# [114] filenames[ilf,1]:='[DIR]';
	movl	%r13d,%eax
	shlq	$4,%rax
	leaq	-16672(%rbp,%rax),%rax
	leaq	_$UNIT1$_Ld3(%rip),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_assign
.Ll29:
# [115] ilf+=1;
	leal	1(%r13d),%eax
	movl	%eax,%r13d
.Lj103:
.Ll30:
	cmpb	$90,-24792(%rbp)
	jb	.Lj87
.Lj83:
.Ll31:
# [124] currentdir:=currentdir2+'*.*';
	leaq	_$UNIT1$_Ld4(%rip),%rax
	movq	%rax,%r8
	movq	-24(%rbp),%rdx
	leaq	-16(%rbp),%rax
	movl	$0,%r9d
	movq	%rax,%rcx
	call	fpc_ansistr_concat
.Ll32:
# [125] if findfirst(currentdir,fadirectory,sr)=0 then
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rdx
	leaq	-664(%rbp),%rcx
	call	fpc_finalize
	leaq	-664(%rbp),%r8
	movq	-16(%rbp),%rax
	movl	$16,%edx
	movq	%rax,%rcx
	call	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj127
	.balign 8,0x90
.Lj134:
.Ll33:
# [127] if (sr.attr and faDirectory) = faDirectory then
	movl	-648(%rbp),%eax
	andl	$16,%eax
	cmpl	$16,%eax
	jne	.Lj138
# PeepHole Optimization,var2a
.Ll34:
# [129] filenames[ilf,0]:=sr.name;
	movl	%r13d,%eax
	shlq	$4,%rax
	leaq	-16680(%rbp,%rax),%rax
	movq	-640(%rbp),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_assign
# PeepHole Optimization,var2a
.Ll35:
# [130] filenames[ilf,1]:='[DIR]';
	movl	%r13d,%eax
	shlq	$4,%rax
	leaq	-16672(%rbp,%rax),%rax
	leaq	_$UNIT1$_Ld3(%rip),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_assign
.Ll36:
# [131] ilf+=1;
	leal	1(%r13d),%eax
	movl	%eax,%r13d
.Lj138:
.Ll37:
# [133] until (findnext(sr)<>0) or (ilf=1000);
	leaq	-664(%rbp),%rcx
	call	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj136
	cmpl	$1000,%r13d
	jne	.Lj134
.Lj136:
.Lj127:
.Ll38:
# [134] sysutils.findclose(sr);
	leaq	-664(%rbp),%rcx
	call	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
.Ll39:
# [136] currentdir:=currentdir2+'*.sid';
	leaq	_$UNIT1$_Ld5(%rip),%rax
	movq	%rax,%r8
	movq	-24(%rbp),%rdx
	leaq	-16(%rbp),%rax
	movl	$0,%r9d
	movq	%rax,%rcx
	call	fpc_ansistr_concat
.Ll40:
# [138] if findfirst(currentdir,faAnyFile,sr)=0 then
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rdx
	leaq	-664(%rbp),%rcx
	call	fpc_finalize
	leaq	-664(%rbp),%r8
	movq	-16(%rbp),%rax
	movl	$511,%edx
	movq	%rax,%rcx
	call	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj163
	.balign 8,0x90
.Lj170:
# PeepHole Optimization,var2a
.Ll41:
# [140] filenames[ilf,0]:=sr.name;
	movl	%r13d,%eax
	shlq	$4,%rax
	leaq	-16680(%rbp,%rax),%rax
	movq	-640(%rbp),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_assign
# PeepHole Optimization,var2a
.Ll42:
# [141] filenames[ilf,1]:='';
	movl	%r13d,%eax
	shlq	$4,%rax
	leaq	-16672(%rbp,%rax),%rax
	movq	$0,%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_assign
.Ll43:
# [142] ilf+=1;
	leal	1(%r13d),%eax
	movl	%eax,%r13d
.Ll44:
# [143] until (findnext(sr)<>0) or (ilf=1000);
	leaq	-664(%rbp),%rcx
	call	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj172
	cmpl	$1000,%r13d
	jne	.Lj170
.Lj172:
.Lj163:
.Ll45:
# [144] sysutils.findclose(sr);
	leaq	-664(%rbp),%rcx
	call	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
.Ll46:
# [146] currentdir:=currentdir2+'*.dmp';
	leaq	_$UNIT1$_Ld6(%rip),%rax
	movq	%rax,%r8
	movq	-24(%rbp),%rdx
	leaq	-16(%rbp),%rax
	movl	$0,%r9d
	movq	%rax,%rcx
	call	fpc_ansistr_concat
.Ll47:
# [147] if findfirst(currentdir,faAnyFile,sr)=0 then
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rdx
	leaq	-664(%rbp),%rcx
	call	fpc_finalize
	leaq	-664(%rbp),%r8
	movq	-16(%rbp),%rax
	movl	$511,%edx
	movq	%rax,%rcx
	call	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj197
	.balign 8,0x90
.Lj204:
# PeepHole Optimization,var2a
.Ll48:
# [149] filenames[ilf,0]:=sr.name;
	movl	%r13d,%eax
	shlq	$4,%rax
	leaq	-16680(%rbp,%rax),%rax
	movq	-640(%rbp),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_assign
# PeepHole Optimization,var2a
.Ll49:
# [150] filenames[ilf,1]:='';
	movl	%r13d,%eax
	shlq	$4,%rax
	leaq	-16672(%rbp,%rax),%rax
	movq	$0,%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_assign
.Ll50:
# [151] ilf+=1;
	leal	1(%r13d),%eax
	movl	%eax,%r13d
.Ll51:
# [152] until (findnext(sr)<>0) or (ilf=1000);
	leaq	-664(%rbp),%rcx
	call	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj206
	cmpl	$1000,%r13d
	jne	.Lj204
.Lj206:
.Lj197:
.Ll52:
# [153] sysutils.findclose(sr);
	leaq	-664(%rbp),%rcx
	call	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
.Ll53:
# [157] box(920,132,840,32,36);
	movl	$36,32(%rsp)
	movl	$32,%r9d
	movl	$840,%r8d
	movl	$132,%eax
	movl	$920,%ecx
	movl	%eax,%edx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll54:
# [158] if ilf<26 then ild:=ilf-1 else ild:=26;
	cmpl	$26,%r13d
	jnl	.Lj233
	leal	-1(%r13d),%edx
	movl	%edx,%eax
	movq	%rax,-24800(%rbp)
	jmp	.Lj236
.Lj233:
	movl	$26,%eax
	movq	%rax,-24800(%rbp)
.Lj236:
.Ll55:
# [159] for i:=0 to ild do
	movl	-24800(%rbp),%eax
	movl	%eax,%ebx
	movl	$0,%edi
	cmpl	%edi,%ebx
	jl	.Lj242
	subl	$1,%edi
	.balign 8,0x90
.Lj243:
	addl	$1,%edi
# PeepHole Optimization,var2a
.Ll56:
# [161] if filenames[i,1]='' then l:=length(filenames[i,0])-4 else  l:=length(filenames[i,0]);
	movl	%edi,%eax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj245
# PeepHole Optimization,var2a
	movl	%edi,%eax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj248
	movq	-8(%rax),%rax
.Lj248:
	leaq	-4(%rax),%rax
	movl	%eax,%r15d
	jmp	.Lj249
.Lj245:
# PeepHole Optimization,var2a
	movl	%edi,%eax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj252
	movq	-8(%rax),%rax
.Lj252:
	movl	%eax,%r15d
.Lj249:
# PeepHole Optimization,var2a
.Ll57:
# [162] if filenames[i,1]='' then  s:=copy(filenames[i,0],1,length(filenames[i,0])-4) else s:=filenames[i,0];
	movl	%edi,%eax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj254
# PeepHole Optimization,var2a
	movl	%edi,%eax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj259
	movq	-8(%rax),%rax
.Lj259:
	leaq	-4(%rax),%rax
	movq	%rax,%r9
# PeepHole Optimization,var2a
	movl	%edi,%eax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rdx
	leaq	-24736(%rbp),%rax
	movq	$1,%r8
	movq	%rax,%rcx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
	jmp	.Lj268
.Lj254:
# PeepHole Optimization,var2a
	movl	%edi,%eax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
.Lj268:
.Ll58:
# [163] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj275
	movq	-8(%rax),%rax
.Lj275:
	cmpq	$40,%rax
	jng	.Lj274
	movq	-8(%rbp),%r10
	leaq	-24736(%rbp),%rdx
	movq	$40,%rax
	movq	$1,%r8
	movq	%rax,%r9
	movq	%rdx,%rcx
	movq	%r10,%rdx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
	movl	$40,%r15d
.Lj274:
.Ll59:
# [164] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj292
	movq	-8(%rax),%rax
.Lj292:
	movl	%eax,%r12d
	movl	$1,%esi
	cmpl	%esi,%r12d
	jl	.Lj294
	subl	$1,%esi
	.balign 8,0x90
.Lj295:
	addl	$1,%esi
	movq	-8(%rbp),%rax
	movslq	%esi,%rdx
	cmpb	$95,-1(%rax,%rdx,1)
	jne	.Lj297
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_unique
	movslq	%esi,%rdx
	movb	$32,-1(%rax,%rdx,1)
.Lj297:
	cmpl	%esi,%r12d
	jg	.Lj295
.Lj294:
# PeepHole Optimization,var2a
.Ll60:
# [165] if filenames[i,1]='' then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
	movl	%edi,%eax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj303
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	%edi,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%edx
	movl	%r15d,%ecx
	shll	$3,%ecx
	movl	$1344,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movq	-8(%rbp),%rax
	movl	$44,%r9d
	movq	%rax,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj303:
# PeepHole Optimization,var2a
.Ll61:
# [166] if filenames[i,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'[DIR]',44,2,2);   end;
	movl	%edi,%eax
	shlq	$4,%rax
	movq	-16672(%rbp,%rax),%rax
	leaq	_$UNIT1$_Ld3(%rip),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	jne	.Lj317
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	%edi,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%edx
	movl	%r15d,%ecx
	shll	$3,%ecx
	movl	$1344,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movq	-8(%rbp),%rax
	movl	$44,%r9d
	movq	%rax,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	%edi,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%edx
	leaq	_$UNIT1$_Ld3(%rip),%rax
	movq	%rax,%r8
	movl	$44,%eax
	movl	$1672,%ecx
	movl	%eax,%r9d
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj317:
.Ll62:
	cmpl	%edi,%ebx
	jg	.Lj243
.Lj242:
.Ll63:
# [168] application.processmessages;
	movq	TC_$FORMS_$$_APPLICATION(%rip),%rcx
	call	FORMS$_$TAPPLICATION_$__$$_PROCESSMESSAGES
.Ll64:
# [169] poke($70003,1);
	movl	$1,%eax
	movl	$458755,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll65:
# [170] poke($70004,1);
	movl	$1,%eax
	movl	$458756,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll66:
# [171] poke($70005,1);
	movl	$1,%eax
	movl	$458757,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll67:
# [172] poke ($70001,1);
	movl	$1,%eax
	movl	$458753,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll68:
# [175] openmidi;
	call	MIDI_$$_OPENMIDI
.Ll69:
# [176] filetype:=4;
	movl	$4,U_$RETRO_$$_FILETYPE(%rip)
.Ll70:
# [177] sc:=TSynthctrl.create(true);
	leaq	VMT_$SYNTHCONTROL_$$_TSYNTHCTRL(%rip),%rax
	movq	%rax,%rcx
	movl	$1,%eax
	movq	$1,%rdx
	movl	%eax,%r8d
	call	SYNTHCONTROL$_$TSYNTHCTRL_$__$$_CREATE$BOOLEAN$$TSYNTHCTRL
# PeepHole Optimization,MovMov2MovMov1
	movq	%rax,U_$UNIT1_$$_SC(%rip)
.Ll71:
# [178] sc.Start;
	movq	%rax,%rcx
	call	CLASSES$_$TTHREAD_$__$$_START
	.balign 8,0x90
.Lj376:
.Ll72:
# [184] if not pause then main2 else begin timer1:=-1; for i:=$d400 to $d400+25 do poke(i,0); end;
	cmpb	$0,TC_$UMAIN_$$_PAUSE(%rip)
	jne	.Lj380
	call	UMAIN_$$_MAIN2
	jmp	.Lj381
.Lj380:
	movq	$-1,TC_$RETRO_$$_TIMER1(%rip)
	movl	$54272,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj386:
	addl	$1,%edi
	movl	%edi,%eax
	movl	$0,%edx
	movl	%eax,%ecx
	call	RETRO_$$_POKE$LONGINT$BYTE
	cmpl	$54297,%edi
	jl	.Lj386
.Lj381:
.Ll73:
# [186] if peek($60028)=ord('5') then begin poke ($60028,0); siddelay:=20000; songfreq:=50; skip:=0; end;
	movl	$393256,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$53,%al
	jne	.Lj392
	movl	$0,%eax
	movl	$393256,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
	movq	$20000,TC_$RETRO_$$_SIDDELAY(%rip)
	movq	$50,U_$RETRO_$$_SONGFREQ(%rip)
	movl	$0,U_$RETRO_$$_SKIP(%rip)
.Lj392:
.Ll74:
# [187] if peek($60028)=ord('1') then begin poke ($60028,0); siddelay:=10000; songfreq:=100; skip:=0; end;
	movl	$393256,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$49,%al
	jne	.Lj406
	movl	$0,%eax
	movl	$393256,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
	movq	$10000,TC_$RETRO_$$_SIDDELAY(%rip)
	movq	$100,U_$RETRO_$$_SONGFREQ(%rip)
	movl	$0,U_$RETRO_$$_SKIP(%rip)
.Lj406:
.Ll75:
# [188] if peek($60028)=ord('2') then begin poke ($60028,0); siddelay:=5000; songfreq:=200; skip:=0;end;
	movl	$393256,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$50,%al
	jne	.Lj420
	movl	$0,%eax
	movl	$393256,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
	movq	$5000,TC_$RETRO_$$_SIDDELAY(%rip)
	movq	$200,U_$RETRO_$$_SONGFREQ(%rip)
	movl	$0,U_$RETRO_$$_SKIP(%rip)
.Lj420:
.Ll76:
# [189] if peek($60028)=ord('3') then begin poke ($60028,0); siddelay:=6666; songfreq:=150; skip:=0; end;
	movl	$393256,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$51,%al
	jne	.Lj434
	movl	$0,%eax
	movl	$393256,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
	movq	$6666,TC_$RETRO_$$_SIDDELAY(%rip)
	movq	$150,U_$RETRO_$$_SONGFREQ(%rip)
	movl	$0,U_$RETRO_$$_SKIP(%rip)
.Lj434:
.Ll77:
# [190] if peek($60028)=ord('4') then begin poke ($60028,0); siddelay:=2500; songfreq:=400; skip:=0; end;
	movl	$393256,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$52,%al
	jne	.Lj448
	movl	$0,%eax
	movl	$393256,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
	movq	$2500,TC_$RETRO_$$_SIDDELAY(%rip)
	movq	$400,U_$RETRO_$$_SONGFREQ(%rip)
	movl	$0,U_$RETRO_$$_SKIP(%rip)
.Lj448:
.Ll78:
# [192] if dpeek($60028)=16442 then begin dpoke($60028,0); if peek($70003)=0 then poke ($70003,1) else poke ($70003,0); end;
	movl	$393256,%ecx
	call	RETRO_$$_DPEEK$LONGINT$$WORD
	cmpw	$16442,%ax
	jne	.Lj462
	movl	$0,%eax
	movl	$393256,%ecx
	movl	%eax,%edx
	call	RETRO_$$_DPOKE$LONGINT$WORD
	movl	$458755,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	testb	%al,%al
	jne	.Lj470
	movl	$1,%eax
	movl	$458755,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
	jmp	.Lj477
.Lj470:
	movl	$0,%eax
	movl	$458755,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Lj477:
.Lj462:
.Ll79:
# [193] if dpeek($60028)=16443 then begin dpoke($60028,0); if peek($70004)=0 then poke ($70004,1) else poke ($70004,0); end;
	movl	$393256,%ecx
	call	RETRO_$$_DPEEK$LONGINT$$WORD
	cmpw	$16443,%ax
	jne	.Lj483
	movl	$0,%eax
	movl	$393256,%ecx
	movl	%eax,%edx
	call	RETRO_$$_DPOKE$LONGINT$WORD
	movl	$458756,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	testb	%al,%al
	jne	.Lj491
	movl	$1,%eax
	movl	$458756,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
	jmp	.Lj498
.Lj491:
	movl	$0,%eax
	movl	$458756,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Lj498:
.Lj483:
.Ll80:
# [194] if dpeek($60028)=16444 then begin dpoke($60028,0); if peek($70005)=0 then poke ($70005,1) else poke ($70005,0); end;
	movl	$393256,%ecx
	call	RETRO_$$_DPEEK$LONGINT$$WORD
	cmpw	$16444,%ax
	jne	.Lj504
	movl	$0,%eax
	movl	$393256,%ecx
	movl	%eax,%edx
	call	RETRO_$$_DPOKE$LONGINT$WORD
	movl	$458757,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	testb	%al,%al
	jne	.Lj512
	movl	$1,%eax
	movl	$458757,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
	jmp	.Lj519
.Lj512:
	movl	$0,%eax
	movl	$458757,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Lj519:
.Lj504:
.Ll81:
# [196] if dpeek($60028)=16445 then begin edelay:=not edelay;   dpoke($60028,0); end;  //f4=delay
	movl	$393256,%ecx
	call	RETRO_$$_DPEEK$LONGINT$$WORD
	cmpw	$16445,%ax
	jne	.Lj525
	cmpb	$0,TC_$RETRO_$$_EDELAY(%rip)
	seteb	TC_$RETRO_$$_EDELAY(%rip)
	movl	$0,%eax
	movl	$393256,%ecx
	movl	%eax,%edx
	call	RETRO_$$_DPOKE$LONGINT$WORD
.Lj525:
.Ll82:
# [197] if dpeek($60028)=16446 then begin ereverb:=not ereverb; dpoke($60028,0); end; //f5=reverb
	movl	$393256,%ecx
	call	RETRO_$$_DPEEK$LONGINT$$WORD
	cmpw	$16446,%ax
	jne	.Lj535
	cmpb	$0,TC_$RETRO_$$_EREVERB(%rip)
	seteb	TC_$RETRO_$$_EREVERB(%rip)
	movl	$0,%eax
	movl	$393256,%ecx
	movl	%eax,%edx
	call	RETRO_$$_DPOKE$LONGINT$WORD
.Lj535:
.Ll83:
# [199] if dpeek($60028)=16465 then
	movl	$393256,%ecx
	call	RETRO_$$_DPEEK$LONGINT$$WORD
	cmpw	$16465,%ax
	jne	.Lj545
.Ll84:
# [201] dpoke($60028,0);
	movl	$0,%eax
	movl	$393256,%ecx
	movl	%eax,%edx
	call	RETRO_$$_DPOKE$LONGINT$WORD
.Ll85:
# [202] if sel<ild then
	movl	-24800(%rbp),%eax
	movl	-24784(%rbp),%edx
	cmpl	%eax,%edx
	jnl	.Lj553
.Ll86:
# [204] box(920,132+32*sel,840,32,34);
	movl	$34,32(%rsp)
	movl	-24784(%rbp),%eax
	movl	%eax,%edx
	shll	$5,%edx
	leal	132(%edx),%eax
	movl	%eax,%r10d
	movl	$32,%edx
	movl	$840,%eax
	movl	$920,%ecx
	movl	%eax,%r8d
	movl	%edx,%r9d
	movl	%r10d,%edx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll87:
# [205] if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj565
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj568
	movq	-8(%rax),%rax
.Lj568:
	leaq	-4(%rax),%rax
	movl	%eax,%r15d
	jmp	.Lj569
.Lj565:
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj572
	movq	-8(%rax),%rax
.Lj572:
	movl	%eax,%r15d
.Lj569:
.Ll88:
# [206] if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj574
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj579
	movq	-8(%rax),%rax
.Lj579:
	leaq	-4(%rax),%rax
	movq	%rax,%r9
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rdx
	leaq	-24736(%rbp),%rax
	movq	$1,%r8
	movq	%rax,%rcx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
	jmp	.Lj588
.Lj574:
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
.Lj588:
.Ll89:
# [207] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj595
	movq	-8(%rax),%rax
.Lj595:
	cmpq	$40,%rax
	jng	.Lj594
	movq	-8(%rbp),%r10
	leaq	-24736(%rbp),%rdx
	movq	$40,%rax
	movq	$1,%r8
	movq	%rax,%r9
	movq	%rdx,%rcx
	movq	%r10,%rdx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
	movl	$40,%r15d
.Lj594:
.Ll90:
# [208] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj612
	movq	-8(%rax),%rax
.Lj612:
	movl	%eax,%ebx
	movl	$1,%esi
	cmpl	%esi,%ebx
	jl	.Lj614
	subl	$1,%esi
	.balign 8,0x90
.Lj615:
	addl	$1,%esi
	movq	-8(%rbp),%rax
	movslq	%esi,%rdx
	cmpb	$95,-1(%rax,%rdx,1)
	jne	.Lj617
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_unique
	movslq	%esi,%rdx
	movb	$32,-1(%rax,%rdx,1)
.Lj617:
	cmpl	%esi,%ebx
	jg	.Lj615
.Lj614:
.Ll91:
# [209] if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj623
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	-24784(%rbp),%edx
	movl	%edx,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%r10d
	movl	%r15d,%edx
	shll	$3,%edx
	movl	$1344,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movq	-8(%rbp),%rax
	movl	$44,%r9d
	movq	%rax,%r8
	movl	%edx,%ecx
	movl	%r10d,%edx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj623:
.Ll92:
# [210] if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16672(%rbp,%rax),%rax
	leaq	_$UNIT1$_Ld3(%rip),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	jne	.Lj637
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	-24784(%rbp),%eax
	movl	%eax,%edx
	shll	$5,%edx
	leal	132(%edx),%eax
	movl	%eax,%r10d
	movl	%r15d,%edx
	shll	$3,%edx
	movl	$1344,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movq	-8(%rbp),%rax
	movl	$44,%r9d
	movq	%rax,%r8
	movl	%edx,%ecx
	movl	%r10d,%edx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	-24784(%rbp),%edx
	movl	%edx,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%r10d
	leaq	_$UNIT1$_Ld3(%rip),%rax
	movq	%rax,%rdx
	movl	$44,%eax
	movl	$1672,%ecx
	movl	%eax,%r9d
	movq	%rdx,%r8
	movl	%r10d,%edx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj637:
.Ll93:
# [212] sel+=1;
	movl	-24784(%rbp),%eax
	leal	1(%eax),%edx
	movl	%edx,%eax
	movq	%rax,-24784(%rbp)
.Ll94:
# [213] box(920,132+32*sel,840,32,36);
	movl	$36,32(%rsp)
	movl	-24784(%rbp),%edx
	movl	%edx,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%r10d
	movl	$32,%edx
	movl	$840,%eax
	movl	$920,%ecx
	movl	%eax,%r8d
	movl	%edx,%r9d
	movl	%r10d,%edx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll95:
# [214] if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj679
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj682
	movq	-8(%rax),%rax
.Lj682:
	leaq	-4(%rax),%rax
	movl	%eax,%r15d
	jmp	.Lj683
.Lj679:
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj686
	movq	-8(%rax),%rax
.Lj686:
	movl	%eax,%r15d
.Lj683:
.Ll96:
# [215] if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj688
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj693
	movq	-8(%rax),%rax
.Lj693:
	leaq	-4(%rax),%rax
	movq	%rax,%r9
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rdx
	leaq	-24736(%rbp),%rax
	movq	$1,%r8
	movq	%rax,%rcx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
	jmp	.Lj702
.Lj688:
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
.Lj702:
.Ll97:
# [216] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj709
	movq	-8(%rax),%rax
.Lj709:
	cmpq	$40,%rax
	jng	.Lj708
	movq	-8(%rbp),%r10
	leaq	-24736(%rbp),%rdx
	movq	$40,%rax
	movq	$1,%r8
	movq	%rax,%r9
	movq	%rdx,%rcx
	movq	%r10,%rdx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
	movl	$40,%r15d
.Lj708:
.Ll98:
# [217] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj726
	movq	-8(%rax),%rax
.Lj726:
	movl	%eax,%ebx
	movl	$1,%esi
	cmpl	%esi,%ebx
	jl	.Lj728
	subl	$1,%esi
	.balign 8,0x90
.Lj729:
	addl	$1,%esi
	movq	-8(%rbp),%rax
	movslq	%esi,%rdx
	cmpb	$95,-1(%rax,%rdx,1)
	jne	.Lj731
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_unique
	movslq	%esi,%rdx
	movb	$32,-1(%rax,%rdx,1)
.Lj731:
	cmpl	%esi,%ebx
	jg	.Lj729
.Lj728:
.Ll99:
# [218] if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj737
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	-24784(%rbp),%edx
	movl	%edx,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%r10d
	movl	%r15d,%edx
	shll	$3,%edx
	movl	$1344,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movq	-8(%rbp),%rax
	movl	$44,%r9d
	movq	%rax,%r8
	movl	%edx,%ecx
	movl	%r10d,%edx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj737:
.Ll100:
# [219] if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16672(%rbp,%rax),%rax
	leaq	_$UNIT1$_Ld3(%rip),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	jne	.Lj780
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	-24784(%rbp),%eax
	movl	%eax,%edx
	shll	$5,%edx
	leal	132(%edx),%eax
	movl	%eax,%r10d
	movl	%r15d,%edx
	shll	$3,%edx
	movl	$1344,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movq	-8(%rbp),%rax
	movl	$44,%r9d
	movq	%rax,%r8
	movl	%edx,%ecx
	movl	%r10d,%edx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	-24784(%rbp),%edx
	movl	%edx,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%r10d
	leaq	_$UNIT1$_Ld3(%rip),%rax
	movq	%rax,%rdx
	movl	$44,%eax
	movl	$1672,%ecx
	movl	%eax,%r9d
	movq	%rdx,%r8
	movl	%r10d,%edx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	jmp	.Lj780
.Lj553:
.Ll101:
# [222] else if sel+selstart<ilf-1 then
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rdx
	movslq	%r13d,%rax
	leaq	-1(%rax),%rax
	cmpq	%rax,%rdx
	jnl	.Lj782
.Ll102:
# [224] selstart+=1;
	leal	1(%r14d),%eax
	movl	%eax,%r14d
.Ll103:
# [225] box2(897,118,1782,1008,34);
	movl	$34,32(%rsp)
	movl	$1008,%r9d
	movl	$1782,%r8d
	movl	$118,%eax
	movl	$897,%ecx
	movl	%eax,%edx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll104:
# [226] box(920,132+32*sel,840,32,36);
	movl	$36,32(%rsp)
	movl	-24784(%rbp),%eax
	movl	%eax,%edx
	shll	$5,%edx
	leal	132(%edx),%eax
	movl	%eax,%r10d
	movl	$32,%edx
	movl	$840,%eax
	movl	$920,%ecx
	movl	%eax,%r8d
	movl	%edx,%r9d
	movl	%r10d,%edx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll105:
# [227] for i:=0 to ild do
	movl	-24800(%rbp),%eax
	movl	%eax,%ebx
	movl	$0,%edi
	cmpl	%edi,%ebx
	jl	.Lj808
	subl	$1,%edi
	.balign 8,0x90
.Lj809:
	addl	$1,%edi
.Ll106:
# [229] if filenames[i+selstart,1]='' then l:=length(filenames[i+selstart,0])-4 else  l:=length(filenames[i+selstart,0]);
	movslq	%edi,%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj811
	movslq	%edi,%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj814
	movq	-8(%rax),%rax
.Lj814:
	leaq	-4(%rax),%rax
	movl	%eax,%r15d
	jmp	.Lj815
.Lj811:
	movslq	%edi,%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj818
	movq	-8(%rax),%rax
.Lj818:
	movl	%eax,%r15d
.Lj815:
.Ll107:
# [230] if filenames[i+selstart,1]='' then  s:=copy(filenames[i+selstart,0],1,length(filenames[i+selstart,0])-4) else s:=filenames[i+selstart,0];
	movslq	%edi,%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj820
	movslq	%edi,%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj825
	movq	-8(%rax),%rax
.Lj825:
	leaq	-4(%rax),%rax
	movq	%rax,%r9
	movslq	%edi,%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rdx
	leaq	-24736(%rbp),%rax
	movq	$1,%r8
	movq	%rax,%rcx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
	jmp	.Lj834
.Lj820:
	movslq	%edi,%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
.Lj834:
.Ll108:
# [231] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj841
	movq	-8(%rax),%rax
.Lj841:
	cmpq	$40,%rax
	jng	.Lj840
	movq	-8(%rbp),%r10
	leaq	-24736(%rbp),%rdx
	movq	$40,%rax
	movq	$1,%r8
	movq	%rax,%r9
	movq	%rdx,%rcx
	movq	%r10,%rdx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
	movl	$40,%r15d
.Lj840:
.Ll109:
# [232] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj858
	movq	-8(%rax),%rax
.Lj858:
	movl	%eax,%r12d
	movl	$1,%esi
	cmpl	%esi,%r12d
	jl	.Lj860
	subl	$1,%esi
	.balign 8,0x90
.Lj861:
	addl	$1,%esi
	movq	-8(%rbp),%rdx
	movslq	%esi,%rax
	cmpb	$95,-1(%rdx,%rax,1)
	jne	.Lj863
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_unique
	movslq	%esi,%rdx
	movb	$32,-1(%rax,%rdx,1)
.Lj863:
	cmpl	%esi,%r12d
	jg	.Lj861
.Lj860:
.Ll110:
# [233] if filenames[i+selstart,1]='' then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
	movslq	%edi,%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj869
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	%edi,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%edx
	movl	%r15d,%ecx
	shll	$3,%ecx
	movl	$1344,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movq	-8(%rbp),%rax
	movl	$44,%r9d
	movq	%rax,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj869:
.Ll111:
# [234] if filenames[i+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'[DIR]',44,2,2);   end;
	movslq	%edi,%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16672(%rbp,%rax),%rax
	leaq	_$UNIT1$_Ld3(%rip),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	jne	.Lj883
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	%edi,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%edx
	movl	%r15d,%ecx
	shll	$3,%ecx
	movl	$1344,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movq	-8(%rbp),%rax
	movl	$44,%r9d
	movq	%rax,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	%edi,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%edx
	leaq	_$UNIT1$_Ld3(%rip),%rax
	movq	%rax,%r8
	movl	$44,%eax
	movl	$1672,%ecx
	movl	%eax,%r9d
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj883:
.Ll112:
	cmpl	%edi,%ebx
	jg	.Lj809
.Lj808:
.Lj782:
.Lj780:
.Lj545:
.Ll113:
# [239] if dpeek($60028)=16466 then
	movl	$393256,%ecx
	call	RETRO_$$_DPEEK$LONGINT$$WORD
	cmpw	$16466,%ax
	jne	.Lj913
.Ll114:
# [241] dpoke($60028,0);
	movl	$0,%eax
	movl	$393256,%ecx
	movl	%eax,%edx
	call	RETRO_$$_DPOKE$LONGINT$WORD
.Ll115:
# [242] if sel>0 then
	movl	-24784(%rbp),%eax
	cmpl	$0,%eax
	jng	.Lj921
.Ll116:
# [244] box(920,132+32*sel,840,32,34);
	movl	$34,32(%rsp)
	movl	-24784(%rbp),%edx
	movl	%edx,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%r10d
	movl	$32,%edx
	movl	$840,%eax
	movl	$920,%ecx
	movl	%eax,%r8d
	movl	%edx,%r9d
	movl	%r10d,%edx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll117:
# [245] if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj933
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj936
	movq	-8(%rax),%rax
.Lj936:
	leaq	-4(%rax),%rax
	movl	%eax,%r15d
	jmp	.Lj937
.Lj933:
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj940
	movq	-8(%rax),%rax
.Lj940:
	movl	%eax,%r15d
.Lj937:
.Ll118:
# [246] if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj942
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj947
	movq	-8(%rax),%rax
.Lj947:
	leaq	-4(%rax),%rax
	movq	%rax,%r9
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rdx
	leaq	-24736(%rbp),%rax
	movq	$1,%r8
	movq	%rax,%rcx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
	jmp	.Lj956
.Lj942:
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
.Lj956:
.Ll119:
# [247] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj963
	movq	-8(%rax),%rax
.Lj963:
	cmpq	$40,%rax
	jng	.Lj962
	movq	-8(%rbp),%r10
	leaq	-24736(%rbp),%rdx
	movq	$40,%rax
	movq	$1,%r8
	movq	%rax,%r9
	movq	%rdx,%rcx
	movq	%r10,%rdx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
	movl	$40,%r15d
.Lj962:
.Ll120:
# [248] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj980
	movq	-8(%rax),%rax
.Lj980:
	movl	%eax,%ebx
	movl	$1,%esi
	cmpl	%esi,%ebx
	jl	.Lj982
	subl	$1,%esi
	.balign 8,0x90
.Lj983:
	addl	$1,%esi
	movq	-8(%rbp),%rdx
	movslq	%esi,%rax
	cmpb	$95,-1(%rdx,%rax,1)
	jne	.Lj985
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_unique
	movslq	%esi,%rdx
	movb	$32,-1(%rax,%rdx,1)
.Lj985:
	cmpl	%esi,%ebx
	jg	.Lj983
.Lj982:
.Ll121:
# [249] if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj991
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	-24784(%rbp),%edx
	movl	%edx,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%r10d
	movl	%r15d,%edx
	shll	$3,%edx
	movl	$1344,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movq	-8(%rbp),%rax
	movl	$44,%r9d
	movq	%rax,%r8
	movl	%edx,%ecx
	movl	%r10d,%edx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj991:
.Ll122:
# [250] if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16672(%rbp,%rax),%rax
	leaq	_$UNIT1$_Ld3(%rip),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	jne	.Lj1005
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	-24784(%rbp),%edx
	movl	%edx,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%r10d
	movl	%r15d,%edx
	shll	$3,%edx
	movl	$1344,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movq	-8(%rbp),%rax
	movl	$44,%r9d
	movq	%rax,%r8
	movl	%edx,%ecx
	movl	%r10d,%edx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	-24784(%rbp),%eax
	movl	%eax,%edx
	shll	$5,%edx
	leal	132(%edx),%eax
	movl	%eax,%r10d
	leaq	_$UNIT1$_Ld3(%rip),%rax
	movq	%rax,%rdx
	movl	$44,%eax
	movl	$1672,%ecx
	movl	%eax,%r9d
	movq	%rdx,%r8
	movl	%r10d,%edx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj1005:
.Ll123:
# [252] sel-=1;
	movl	-24784(%rbp),%eax
	leal	-1(%eax),%edx
	movl	%edx,%eax
	movq	%rax,-24784(%rbp)
.Ll124:
# [253] box(920,132+32*sel,840,32,36);
	movl	$36,32(%rsp)
	movl	-24784(%rbp),%edx
	movl	%edx,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%r10d
	movl	$32,%edx
	movl	$840,%eax
	movl	$920,%ecx
	movl	%eax,%r8d
	movl	%edx,%r9d
	movl	%r10d,%edx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll125:
# [254] if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj1047
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj1050
	movq	-8(%rax),%rax
.Lj1050:
	leaq	-4(%rax),%rax
	movl	%eax,%r15d
	jmp	.Lj1051
.Lj1047:
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj1054
	movq	-8(%rax),%rax
.Lj1054:
	movl	%eax,%r15d
.Lj1051:
.Ll126:
# [255] if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj1056
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj1061
	movq	-8(%rax),%rax
.Lj1061:
	leaq	-4(%rax),%rax
	movq	%rax,%r9
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rdx
	leaq	-24736(%rbp),%rax
	movq	$1,%r8
	movq	%rax,%rcx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
	jmp	.Lj1070
.Lj1056:
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
.Lj1070:
.Ll127:
# [256] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj1077
	movq	-8(%rax),%rax
.Lj1077:
	cmpq	$40,%rax
	jng	.Lj1076
	movq	-8(%rbp),%r10
	leaq	-24736(%rbp),%rdx
	movq	$40,%rax
	movq	$1,%r8
	movq	%rax,%r9
	movq	%rdx,%rcx
	movq	%r10,%rdx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
	movl	$40,%r15d
.Lj1076:
.Ll128:
# [257] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj1094
	movq	-8(%rax),%rax
.Lj1094:
	movl	%eax,%ebx
	movl	$1,%esi
	cmpl	%esi,%ebx
	jl	.Lj1096
	subl	$1,%esi
	.balign 8,0x90
.Lj1097:
	addl	$1,%esi
	movq	-8(%rbp),%rax
	movslq	%esi,%rdx
	cmpb	$95,-1(%rax,%rdx,1)
	jne	.Lj1099
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_unique
	movslq	%esi,%rdx
	movb	$32,-1(%rax,%rdx,1)
.Lj1099:
	cmpl	%esi,%ebx
	jg	.Lj1097
.Lj1096:
.Ll129:
# [258] if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj1105
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	-24784(%rbp),%edx
	movl	%edx,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%r10d
	movl	%r15d,%edx
	shll	$3,%edx
	movl	$1344,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movq	-8(%rbp),%rax
	movl	$44,%r9d
	movq	%rax,%r8
	movl	%edx,%ecx
	movl	%r10d,%edx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj1105:
.Ll130:
# [259] if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16672(%rbp,%rax),%rax
	leaq	_$UNIT1$_Ld3(%rip),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	jne	.Lj1148
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	-24784(%rbp),%edx
	movl	%edx,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%r10d
	movl	%r15d,%edx
	shll	$3,%edx
	movl	$1344,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movq	-8(%rbp),%rax
	movl	$44,%r9d
	movq	%rax,%r8
	movl	%edx,%ecx
	movl	%r10d,%edx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	-24784(%rbp),%edx
	movl	%edx,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%r10d
	leaq	_$UNIT1$_Ld3(%rip),%rax
	movq	%rax,%rdx
	movl	$44,%eax
	movl	$1672,%ecx
	movl	%eax,%r9d
	movq	%rdx,%r8
	movl	%r10d,%edx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	jmp	.Lj1148
.Lj921:
.Ll131:
# [262] else if sel+selstart>0 then
	movslq	-24784(%rbp),%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	cmpq	$0,%rax
	jng	.Lj1150
.Ll132:
# [264] selstart-=1;
	leal	-1(%r14d),%eax
	movl	%eax,%r14d
.Ll133:
# [265] box2(897,118,1782,1008,34);
	movl	$34,32(%rsp)
	movl	$1008,%r9d
	movl	$1782,%r8d
	movl	$118,%eax
	movl	$897,%ecx
	movl	%eax,%edx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll134:
# [266] box(920,132+32*sel,840,32,36);
	movl	$36,32(%rsp)
	movl	-24784(%rbp),%eax
	movl	%eax,%edx
	shll	$5,%edx
	leal	132(%edx),%eax
	movl	%eax,%r10d
	movl	$32,%edx
	movl	$840,%eax
	movl	$920,%ecx
	movl	%eax,%r8d
	movl	%edx,%r9d
	movl	%r10d,%edx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll135:
# [267] for i:=0 to ild do
	movl	-24800(%rbp),%eax
	movl	%eax,%ebx
	movl	$0,%edi
	cmpl	%edi,%ebx
	jl	.Lj1176
	subl	$1,%edi
	.balign 8,0x90
.Lj1177:
	addl	$1,%edi
.Ll136:
# [269] if filenames[i+selstart,1]='' then l:=length(filenames[i+selstart,0])-4 else  l:=length(filenames[i+selstart,0]);
	movslq	%edi,%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj1179
	movslq	%edi,%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj1182
	movq	-8(%rax),%rax
.Lj1182:
	leaq	-4(%rax),%rax
	movl	%eax,%r15d
	jmp	.Lj1183
.Lj1179:
	movslq	%edi,%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj1186
	movq	-8(%rax),%rax
.Lj1186:
	movl	%eax,%r15d
.Lj1183:
.Ll137:
# [270] if filenames[i+selstart,1]='' then s:=copy(filenames[i+selstart,0],1,length(filenames[i+selstart,0])-4) else s:=filenames[i+selstart,0];
	movslq	%edi,%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj1188
	movslq	%edi,%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj1193
	movq	-8(%rax),%rax
.Lj1193:
	leaq	-4(%rax),%rax
	movq	%rax,%r9
	movslq	%edi,%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rdx
	leaq	-24736(%rbp),%rax
	movq	$1,%r8
	movq	%rax,%rcx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
	jmp	.Lj1202
.Lj1188:
	movslq	%edi,%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
.Lj1202:
.Ll138:
# [271] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj1209
	movq	-8(%rax),%rax
.Lj1209:
	cmpq	$40,%rax
	jng	.Lj1208
	movq	-8(%rbp),%r10
	leaq	-24736(%rbp),%rdx
	movq	$40,%rax
	movq	$1,%r8
	movq	%rax,%r9
	movq	%rdx,%rcx
	movq	%r10,%rdx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
	movl	$40,%r15d
.Lj1208:
.Ll139:
# [272] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj1226
	movq	-8(%rax),%rax
.Lj1226:
	movl	%eax,%r12d
	movl	$1,%esi
	cmpl	%esi,%r12d
	jl	.Lj1228
	subl	$1,%esi
	.balign 8,0x90
.Lj1229:
	addl	$1,%esi
	movq	-8(%rbp),%rdx
	movslq	%esi,%rax
	cmpb	$95,-1(%rdx,%rax,1)
	jne	.Lj1231
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_unique
	movslq	%esi,%rdx
	movb	$32,-1(%rax,%rdx,1)
.Lj1231:
	cmpl	%esi,%r12d
	jg	.Lj1229
.Lj1228:
.Ll140:
# [273] if filenames[i+selstart,1]='' then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
	movslq	%edi,%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj1237
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	%edi,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%edx
	movl	%r15d,%ecx
	shll	$3,%ecx
	movl	$1344,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movq	-8(%rbp),%rax
	movl	$44,%r9d
	movq	%rax,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj1237:
.Ll141:
# [274] if filenames[i+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'[DIR]',44,2,2);   end;
	movslq	%edi,%rax
	movslq	%r14d,%rdx
	leaq	(%rax,%rdx),%rax
	shlq	$4,%rax
	movq	-16672(%rbp,%rax),%rax
	leaq	_$UNIT1$_Ld3(%rip),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	jne	.Lj1251
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	%edi,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%edx
	movl	%r15d,%ecx
	shll	$3,%ecx
	movl	$1344,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movq	-8(%rbp),%rax
	movl	$44,%r9d
	movq	%rax,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	%edi,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%edx
	leaq	_$UNIT1$_Ld3(%rip),%rax
	movq	%rax,%r8
	movl	$44,%eax
	movl	$1672,%ecx
	movl	%eax,%r9d
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj1251:
.Ll142:
	cmpl	%edi,%ebx
	jg	.Lj1177
.Lj1176:
.Lj1150:
.Lj1148:
.Lj913:
.Ll143:
# [280] if dpeek($60028)=16471 then
	movl	$393256,%ecx
	call	RETRO_$$_DPEEK$LONGINT$$WORD
	cmpw	$16471,%ax
	jne	.Lj1281
.Ll144:
# [282] dpoke($60028,0);
	movl	$0,%eax
	movl	$393256,%ecx
	movl	%eax,%edx
	call	RETRO_$$_DPOKE$LONGINT$WORD
.Ll145:
# [283] if songs>0 then
	cmpw	$0,TC_$UNIT1_$$_SONGS(%rip)
	jna	.Lj1289
.Ll146:
# [285] if song<songs then
	movw	TC_$UNIT1_$$_SONG(%rip),%ax
	cmpw	TC_$UNIT1_$$_SONGS(%rip),%ax
	jnb	.Lj1291
.Ll147:
# [287] sdl_pauseaudio(1);
	movl	$1,%ecx
	call	_$dll$sdl2$SDL_PauseAudio
.Ll148:
# [288] for i:=1 to 100000000 do;
	movl	$1,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj1296:
	addl	$1,%edi
	cmpl	$100000000,%edi
	jl	.Lj1296
.Ll149:
# [289] song+=1;
	movzwl	TC_$UNIT1_$$_SONG(%rip),%eax
	leal	1(%eax),%eax
	movw	%ax,TC_$UNIT1_$$_SONG(%rip)
.Ll150:
# [290] jsr6502(song,init);
	movzwl	U_$UNIT1_$$_INIT(%rip),%eax
	movzwl	TC_$UNIT1_$$_SONG(%rip),%ecx
	movq	%rax,%rdx
	call	UNIT6502_$$_JSR6502$WORD$INT64
.Ll151:
# [291] sdl_pauseaudio(0);
	movl	$0,%ecx
	call	_$dll$sdl2$SDL_PauseAudio
.Lj1291:
.Lj1289:
.Lj1281:
.Ll152:
# [296] if dpeek($60028)=16470 then
	movl	$393256,%ecx
	call	RETRO_$$_DPEEK$LONGINT$$WORD
	cmpw	$16470,%ax
	jne	.Lj1306
.Ll153:
# [298] dpoke($60028,0);
	movl	$0,%eax
	movl	$393256,%ecx
	movl	%eax,%edx
	call	RETRO_$$_DPOKE$LONGINT$WORD
.Ll154:
# [299] if songs>0 then
	cmpw	$0,TC_$UNIT1_$$_SONGS(%rip)
	jna	.Lj1314
.Ll155:
# [301] if song>0 then
	cmpw	$0,TC_$UNIT1_$$_SONG(%rip)
	jna	.Lj1316
.Ll156:
# [303] sdl_pauseaudio(1);
	movl	$1,%ecx
	call	_$dll$sdl2$SDL_PauseAudio
.Ll157:
# [304] for i:=1 to 100000000 do;
	movl	$1,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj1321:
	addl	$1,%edi
	cmpl	$100000000,%edi
	jl	.Lj1321
.Ll158:
# [305] song-=1;
	movzwl	TC_$UNIT1_$$_SONG(%rip),%eax
	leal	-1(%eax),%eax
	movw	%ax,TC_$UNIT1_$$_SONG(%rip)
.Ll159:
# [306] jsr6502(song,init);
	movzwl	U_$UNIT1_$$_INIT(%rip),%eax
	movzwl	TC_$UNIT1_$$_SONG(%rip),%ecx
	movq	%rax,%rdx
	call	UNIT6502_$$_JSR6502$WORD$INT64
.Ll160:
# [307] sdl_pauseaudio(0);
	movl	$0,%ecx
	call	_$dll$sdl2$SDL_PauseAudio
.Lj1316:
.Lj1314:
.Lj1306:
.Ll161:
# [312] if peek($60028)=13 then
	movl	$393256,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$13,%al
	jne	.Lj1331
.Ll162:
# [314] if filenames[sel+selstart,1]='[DIR]' then
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16672(%rbp,%rax),%rax
	leaq	_$UNIT1$_Ld3(%rip),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	jne	.Lj1335
.Ll163:
# [316] box2(897,118,1782,1008,34);
	movl	$34,32(%rsp)
	movl	$1008,%r9d
	movl	$1782,%r8d
	movl	$118,%eax
	movl	$897,%ecx
	movl	%eax,%edx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll164:
# [317] s:=filenames[sel+selstart,0];
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
.Ll165:
# [318] if copy(s,length(s),1)<>'\' then
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj1360
	movq	-8(%rax),%rax
.Lj1360:
	movq	%rax,%r8
	movq	-8(%rbp),%rdx
	leaq	-24736(%rbp),%rax
	movq	$1,%r9
	movq	%rax,%rcx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	_$UNIT1$_Ld7(%rip),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	je	.Lj1355
.Ll166:
# [320] setcurrentdir(currentdir2+s);
	leaq	-24744(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movq	-8(%rbp),%r8
	movq	-24(%rbp),%rdx
	leaq	-24744(%rbp),%rax
	movl	$65535,%r9d
	movq	%rax,%rcx
	call	fpc_ansistr_concat
	movq	-24744(%rbp),%rcx
	call	SYSUTILS_$$_SETCURRENTDIR$RAWBYTESTRING$$BOOLEAN
.Ll167:
# [321] currentdir2:=getcurrentdir+'\';
	leaq	-24736(%rbp),%rcx
	call	SYSUTILS_$$_GETCURRENTDIR$$ANSISTRING
	movq	-24736(%rbp),%r10
	leaq	_$UNIT1$_Ld7(%rip),%rax
	movq	%rax,%rdx
	leaq	-24(%rbp),%rax
	movl	$0,%r9d
	movq	%rax,%rcx
	movq	%rdx,%r8
	movq	%r10,%rdx
	call	fpc_ansistr_concat
.Ll168:
# [322] if copy(currentdir2,length(currentdir2)-1,2)='\\'then currentdir2:=copy(currentdir2,1,length(currentdir2)-1);
	movq	-24(%rbp),%rax
	testq	%rax,%rax
	je	.Lj1395
	movq	-8(%rax),%rax
.Lj1395:
	leaq	-1(%rax),%rax
	movq	%rax,%r8
	movq	-24(%rbp),%rdx
	leaq	-24736(%rbp),%rax
	movq	$2,%r9
	movq	%rax,%rcx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	_$UNIT1$_Ld8(%rip),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	jne	.Lj1417
	movq	-24(%rbp),%rax
	testq	%rax,%rax
	je	.Lj1408
	movq	-8(%rax),%rax
.Lj1408:
	leaq	-1(%rax),%rax
	movq	%rax,%r9
	movq	-24(%rbp),%rdx
	leaq	-24736(%rbp),%rax
	movq	$1,%r8
	movq	%rax,%rcx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-24(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
	jmp	.Lj1417
.Lj1355:
.Ll169:
# [326] setcurrentdir(s);
	movq	-8(%rbp),%rcx
	call	SYSUTILS_$$_SETCURRENTDIR$RAWBYTESTRING$$BOOLEAN
.Ll170:
# [327] currentdir2:=getcurrentdir;
	leaq	-24736(%rbp),%rcx
	call	SYSUTILS_$$_GETCURRENTDIR$$ANSISTRING
	movq	-24736(%rbp),%rax
	leaq	-24(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
.Lj1417:
.Ll171:
# [330] ilf:=0;
	movl	$0,%r13d
.Ll172:
# [331] if length(currentdir2)=3 then
	movq	-24(%rbp),%rax
	testq	%rax,%rax
	je	.Lj1430
	movq	-8(%rax),%rax
.Lj1430:
	cmpq	$3,%rax
	jne	.Lj1429
.Ll173:
# [334] for d := 'A' to 'Z' do
	movb	$65,-24792(%rbp)
	subb	$1,-24792(%rbp)
	.balign 8,0x90
.Lj1433:
	addb	$1,-24792(%rbp)
.Ll174:
# [336] s := d + ':\';
	movzbl	-24792(%rbp),%edx
	leaq	-24736(%rbp),%rax
	movl	$0,%r8d
	movq	%rax,%rcx
	call	fpc_char_to_ansistr
	movq	-24736(%rbp),%r10
	leaq	_$UNIT1$_Ld2(%rip),%rax
	movq	%rax,%rdx
	leaq	-8(%rbp),%rax
	movl	$0,%r9d
	movq	%rax,%rcx
	movq	%rdx,%r8
	movq	%r10,%rdx
	call	fpc_ansistr_concat
.Ll175:
# [337] case GetDriveType(PChar(s)) of
	movq	-8(%rbp),%rcx
	testq	%rcx,%rcx
	jne	.Lj1453
	leaq	FPC_EMPTYCHAR(%rip),%rcx
.Lj1453:
	call	_$dll$kernel32$GetDriveTypeA
	cmpl	$3,%eax
	jb	.Lj1449
	subl	$3,%eax
	je	.Lj1450
	subl	$2,%eax
	jne	.Lj1449
.Lj1450:
# PeepHole Optimization,var2a
.Ll176:
# [343] filenames[ilf,0]:=s;
	movl	%r13d,%eax
	shlq	$4,%rax
	leaq	-16680(%rbp,%rax),%rax
	movq	-8(%rbp),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_assign
# PeepHole Optimization,var2a
.Ll177:
# [344] filenames[ilf,1]:='[DIR]';
	movl	%r13d,%eax
	shlq	$4,%rax
	leaq	-16672(%rbp,%rax),%rax
	leaq	_$UNIT1$_Ld3(%rip),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_assign
.Ll178:
# [345] ilf+=1;
	leal	1(%r13d),%eax
	movl	%eax,%r13d
.Lj1449:
.Ll179:
	cmpb	$90,-24792(%rbp)
	jb	.Lj1433
.Lj1429:
.Ll180:
# [354] currentdir:=currentdir2+'*.*';
	leaq	_$UNIT1$_Ld4(%rip),%rax
	movq	%rax,%r8
	movq	-24(%rbp),%rdx
	leaq	-16(%rbp),%rax
	movl	$0,%r9d
	movq	%rax,%rcx
	call	fpc_ansistr_concat
.Ll181:
# [355] if findfirst(currentdir,fadirectory,sr)=0 then
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rdx
	leaq	-664(%rbp),%rcx
	call	fpc_finalize
	leaq	-664(%rbp),%r8
	movq	-16(%rbp),%rax
	movl	$16,%edx
	movq	%rax,%rcx
	call	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj1473
	.balign 8,0x90
.Lj1480:
.Ll182:
# [357] if (sr.attr and faDirectory) = faDirectory then
	movl	-648(%rbp),%eax
	andl	$16,%eax
	cmpl	$16,%eax
	jne	.Lj1484
# PeepHole Optimization,var2a
.Ll183:
# [359] filenames[ilf,0]:=sr.name;
	movl	%r13d,%eax
	shlq	$4,%rax
	leaq	-16680(%rbp,%rax),%rax
	movq	-640(%rbp),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_assign
# PeepHole Optimization,var2a
.Ll184:
# [360] filenames[ilf,1]:='[DIR]';
	movl	%r13d,%eax
	shlq	$4,%rax
	leaq	-16672(%rbp,%rax),%rax
	leaq	_$UNIT1$_Ld3(%rip),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_assign
.Ll185:
# [361] ilf+=1;
	leal	1(%r13d),%eax
	movl	%eax,%r13d
.Lj1484:
.Ll186:
# [363] until (findnext(sr)<>0) or (ilf=1000);
	leaq	-664(%rbp),%rcx
	call	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj1482
	cmpl	$1000,%r13d
	jne	.Lj1480
.Lj1482:
.Lj1473:
.Ll187:
# [364] sysutils.findclose(sr);
	leaq	-664(%rbp),%rcx
	call	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
.Ll188:
# [366] currentdir:=currentdir2+'*.sid';
	leaq	_$UNIT1$_Ld5(%rip),%rax
	movq	%rax,%r8
	movq	-24(%rbp),%rdx
	leaq	-16(%rbp),%rax
	movl	$0,%r9d
	movq	%rax,%rcx
	call	fpc_ansistr_concat
.Ll189:
# [368] if findfirst(currentdir,faAnyFile,sr)=0 then
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rdx
	leaq	-664(%rbp),%rcx
	call	fpc_finalize
	leaq	-664(%rbp),%r8
	movq	-16(%rbp),%rax
	movl	$511,%edx
	movq	%rax,%rcx
	call	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj1509
	.balign 8,0x90
.Lj1516:
# PeepHole Optimization,var2a
.Ll190:
# [370] filenames[ilf,0]:=sr.name;
	movl	%r13d,%eax
	shlq	$4,%rax
	leaq	-16680(%rbp,%rax),%rax
	movq	-640(%rbp),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_assign
# PeepHole Optimization,var2a
.Ll191:
# [371] filenames[ilf,1]:='';
	movl	%r13d,%eax
	shlq	$4,%rax
	leaq	-16672(%rbp,%rax),%rax
	movq	$0,%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_assign
.Ll192:
# [372] ilf+=1;
	leal	1(%r13d),%eax
	movl	%eax,%r13d
.Ll193:
# [373] until (findnext(sr)<>0) or (ilf=1000);
	leaq	-664(%rbp),%rcx
	call	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj1518
	cmpl	$1000,%r13d
	jne	.Lj1516
.Lj1518:
.Lj1509:
.Ll194:
# [374] sysutils.findclose(sr);
	leaq	-664(%rbp),%rcx
	call	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
.Ll195:
# [376] currentdir:=currentdir2+'*.dmp';
	leaq	_$UNIT1$_Ld6(%rip),%rax
	movq	%rax,%r8
	movq	-24(%rbp),%rdx
	leaq	-16(%rbp),%rax
	movl	$0,%r9d
	movq	%rax,%rcx
	call	fpc_ansistr_concat
.Ll196:
# [377] if findfirst(currentdir,faAnyFile,sr)=0 then
	leaq	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC(%rip),%rdx
	leaq	-664(%rbp),%rcx
	call	fpc_finalize
	leaq	-664(%rbp),%r8
	movq	-16(%rbp),%rax
	movl	$511,%edx
	movq	%rax,%rcx
	call	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj1543
	.balign 8,0x90
.Lj1550:
# PeepHole Optimization,var2a
.Ll197:
# [379] filenames[ilf,0]:=sr.name;
	movl	%r13d,%eax
	shlq	$4,%rax
	leaq	-16680(%rbp,%rax),%rax
	movq	-640(%rbp),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_assign
# PeepHole Optimization,var2a
.Ll198:
# [380] filenames[ilf,1]:='';
	movl	%r13d,%eax
	shlq	$4,%rax
	leaq	-16672(%rbp,%rax),%rax
	movq	$0,%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_assign
.Ll199:
# [381] ilf+=1;
	leal	1(%r13d),%eax
	movl	%eax,%r13d
.Ll200:
# [382] until (findnext(sr)<>0) or (ilf=1000);
	leaq	-664(%rbp),%rcx
	call	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
	testl	%eax,%eax
	jne	.Lj1552
	cmpl	$1000,%r13d
	jne	.Lj1550
.Lj1552:
.Lj1543:
.Ll201:
# [383] sysutils.findclose(sr);
	leaq	-664(%rbp),%rcx
	call	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
.Ll202:
# [387] box(920,132,840,32,36);
	movl	$36,32(%rsp)
	movl	$32,%r9d
	movl	$840,%r8d
	movl	$132,%eax
	movl	$920,%ecx
	movl	%eax,%edx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll203:
# [388] if ilf<26 then ild:=ilf-1 else ild:=26;
	cmpl	$26,%r13d
	jnl	.Lj1579
	leal	-1(%r13d),%eax
	movl	%eax,%edx
	movq	%rdx,-24800(%rbp)
	jmp	.Lj1582
.Lj1579:
	movl	$26,%eax
	movq	%rax,-24800(%rbp)
.Lj1582:
.Ll204:
# [389] for i:=0 to ild do
	movl	-24800(%rbp),%eax
	movl	%eax,%ebx
	movl	$0,%edi
	cmpl	%edi,%ebx
	jl	.Lj1588
	subl	$1,%edi
	.balign 8,0x90
.Lj1589:
	addl	$1,%edi
# PeepHole Optimization,var2a
.Ll205:
# [391] if filenames[i,1]='' then l:=length(filenames[i,0])-4 else  l:=length(filenames[i,0]);
	movl	%edi,%eax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj1591
# PeepHole Optimization,var2a
	movl	%edi,%eax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj1594
	movq	-8(%rax),%rax
.Lj1594:
	leaq	-4(%rax),%rax
	movl	%eax,%r15d
	jmp	.Lj1595
.Lj1591:
# PeepHole Optimization,var2a
	movl	%edi,%eax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj1598
	movq	-8(%rax),%rax
.Lj1598:
	movl	%eax,%r15d
.Lj1595:
# PeepHole Optimization,var2a
.Ll206:
# [392] if filenames[i,1]='' then  s:=copy(filenames[i,0],1,length(filenames[i,0])-4) else s:=filenames[i,0];
	movl	%edi,%eax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj1600
# PeepHole Optimization,var2a
	movl	%edi,%eax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj1605
	movq	-8(%rax),%rax
.Lj1605:
	leaq	-4(%rax),%rax
	movq	%rax,%r9
# PeepHole Optimization,var2a
	movl	%edi,%eax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rdx
	leaq	-24736(%rbp),%rax
	movq	$1,%r8
	movq	%rax,%rcx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
	jmp	.Lj1614
.Lj1600:
# PeepHole Optimization,var2a
	movl	%edi,%eax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
.Lj1614:
.Ll207:
# [393] if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj1621
	movq	-8(%rax),%rax
.Lj1621:
	cmpq	$40,%rax
	jng	.Lj1620
	movq	-8(%rbp),%r10
	leaq	-24736(%rbp),%rdx
	movq	$40,%rax
	movq	$1,%r8
	movq	%rax,%r9
	movq	%rdx,%rcx
	movq	%r10,%rdx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
	movl	$40,%r15d
.Lj1620:
.Ll208:
# [394] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj1638
	movq	-8(%rax),%rax
.Lj1638:
	movl	%eax,%r12d
	movl	$1,%esi
	cmpl	%esi,%r12d
	jl	.Lj1640
	subl	$1,%esi
	.balign 8,0x90
.Lj1641:
	addl	$1,%esi
	movq	-8(%rbp),%rdx
	movslq	%esi,%rax
	cmpb	$95,-1(%rdx,%rax,1)
	jne	.Lj1643
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_unique
	movslq	%esi,%rdx
	movb	$32,-1(%rax,%rdx,1)
.Lj1643:
	cmpl	%esi,%r12d
	jg	.Lj1641
.Lj1640:
# PeepHole Optimization,var2a
.Ll209:
# [395] if filenames[i,1]='' then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
	movl	%edi,%eax
	shlq	$4,%rax
	cmpq	$0,-16672(%rbp,%rax)
	jne	.Lj1649
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	%edi,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%edx
	movl	%r15d,%ecx
	shll	$3,%ecx
	movl	$1344,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movq	-8(%rbp),%rax
	movl	$44,%r9d
	movq	%rax,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj1649:
# PeepHole Optimization,var2a
.Ll210:
# [396] if filenames[i,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'[DIR]',44,2,2);   end;
	movl	%edi,%eax
	shlq	$4,%rax
	movq	-16672(%rbp,%rax),%rax
	leaq	_$UNIT1$_Ld3(%rip),%rdx
	movq	%rax,%rcx
	call	fpc_ansistr_compare_equal
	testq	%rax,%rax
	jne	.Lj1663
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	%edi,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%edx
	movl	%r15d,%ecx
	shll	$3,%ecx
	movl	$1344,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movq	-8(%rbp),%rax
	movl	$44,%r9d
	movq	%rax,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	%edi,%eax
	shll	$5,%eax
	leal	132(%eax),%eax
	movl	%eax,%edx
	leaq	_$UNIT1$_Ld3(%rip),%rax
	movq	%rax,%r8
	movl	$44,%eax
	movl	$1672,%ecx
	movl	%eax,%r9d
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj1663:
.Ll211:
	cmpl	%edi,%ebx
	jg	.Lj1589
.Lj1588:
.Ll212:
# [398] application.processmessages;
	movq	TC_$FORMS_$$_APPLICATION(%rip),%rcx
	call	FORMS$_$TAPPLICATION_$__$$_PROCESSMESSAGES
.Ll213:
# [399] sel:=0; selstart:=0;
	movl	$0,%eax
	movq	%rax,-24784(%rbp)
	movl	$0,%r14d
.Ll214:
# [400] box2(897,67,1782,115,36);
	movl	$36,32(%rsp)
	movl	$115,%r9d
	movl	$1782,%r8d
	movl	$67,%eax
	movl	$897,%ecx
	movl	%eax,%edx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll215:
# [401] s:=currentdir2;
	movq	-24(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
.Ll216:
# [402] if length(s)>55 then s:=copy(s,1,55);
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj1714
	movq	-8(%rax),%rax
.Lj1714:
	cmpq	$55,%rax
	jng	.Lj1713
	movq	-8(%rbp),%r10
	leaq	-24736(%rbp),%rdx
	movq	$55,%rax
	movq	$1,%r8
	movq	%rax,%r9
	movq	%rdx,%rcx
	movq	%r10,%rdx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
.Lj1713:
.Ll217:
# [403] l:=length(s);
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj1729
	movq	-8(%rax),%rax
.Lj1729:
	movl	%eax,%r15d
.Ll218:
# [405] outtextxyz(1344-8*l,75,s,44,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	%r15d,%edx
	shll	$3,%edx
	movl	$1344,%eax
	subl	%edx,%eax
	movl	%eax,%r10d
	movq	-8(%rbp),%rcx
	movl	$44,%eax
	movl	$75,%edx
	movl	%eax,%r9d
	movq	%rcx,%r8
	movl	%r10d,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll219:
# [407] poke($60028,0);
	movl	$0,%eax
	movl	$393256,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
	jmp	.Lj1746
.Lj1335:
.Ll220:
# [410] sdl_pauseaudio(1);
	movl	$1,%ecx
	call	_$dll$sdl2$SDL_PauseAudio
.Ll221:
# [411] poke($60028,0);
	movl	$0,%eax
	movl	$393256,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll222:
# [412] fuck:=0;
	movl	$0,TC_$UNIT1_$$_FUCK(%rip)
	.balign 8,0x90
.Lj1755:
.Ll223:
# [413] repeat until fuck2=0;
	cmpl	$0,TC_$UNIT1_$$_FUCK2(%rip)
	jne	.Lj1755
.Ll224:
# [414] if fh>=0 then fileclose(fh);
	cmpl	$0,U_$RETRO_$$_FH(%rip)
	jnge	.Lj1759
	movslq	U_$RETRO_$$_FH(%rip),%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Lj1759:
.Ll225:
# [415] fh:=-1;
	movl	$-1,U_$RETRO_$$_FH(%rip)
.Ll226:
# [416] songtime:=0;
	movq	$0,U_$RETRO_$$_SONGTIME(%rip)
.Ll227:
# [417] timer1:=-1;
	movq	$-1,TC_$RETRO_$$_TIMER1(%rip)
.Ll228:
# [418] for i:=0 to 6 do raml^[$3500+i]:=0;
	movl	$0,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj1770:
	addl	$1,%edi
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movslq	%edi,%rax
	movl	$0,54272(%rdx,%rax,4)
	cmpl	$6,%edi
	jl	.Lj1770
.Ll229:
# [419] fh:=-1;
	movl	$-1,U_$RETRO_$$_FH(%rip)
.Ll230:
# [420] fn:= currentdir2+filenames[sel+selstart,0];
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%r8
	movq	-24(%rbp),%rdx
	leaq	-24728(%rbp),%rax
	movl	$0,%r9d
	movq	%rax,%rcx
	call	fpc_ansistr_concat
.Ll231:
# [421] fh:=fileopen(fn,$40);
	movq	-24728(%rbp),%rax
	movl	$64,%edx
	movq	%rax,%rcx
	call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$QWORD
	movl	%eax,U_$RETRO_$$_FH(%rip)
.Ll232:
# [422] s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4);
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rax
	testq	%rax,%rax
	je	.Lj1793
	movq	-8(%rax),%rax
.Lj1793:
	leaq	-4(%rax),%rax
	movq	%rax,%r9
	movslq	-24784(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	shlq	$4,%rax
	movq	-16680(%rbp,%rax),%rdx
	leaq	-24736(%rbp),%rax
	movq	$1,%r8
	movq	%rax,%rcx
	call	fpc_ansistr_copy
	movq	-24736(%rbp),%rax
	leaq	-8(%rbp),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
.Ll233:
# [423] for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj1804
	movq	-8(%rax),%rax
.Lj1804:
	movl	%eax,%ebx
	movl	$1,%esi
	cmpl	%esi,%ebx
	jl	.Lj1806
	subl	$1,%esi
	.balign 8,0x90
.Lj1807:
	addl	$1,%esi
	movq	-8(%rbp),%rdx
	movslq	%esi,%rax
	cmpb	$95,-1(%rdx,%rax,1)
	jne	.Lj1809
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_unique
	movslq	%esi,%rdx
	movb	$32,-1(%rax,%rdx,1)
.Lj1809:
	cmpl	%esi,%ebx
	jg	.Lj1807
.Lj1806:
.Ll234:
# [424] siddelay:=20000;
	movq	$20000,TC_$RETRO_$$_SIDDELAY(%rip)
.Ll235:
# [425] filetype:=0;
	movl	$0,U_$RETRO_$$_FILETYPE(%rip)
.Ll236:
# [426] fileread(fh,buf,4);
	movslq	U_$RETRO_$$_FH(%rip),%rax
	movq	%rax,%rcx
	leaq	-24720(%rbp),%rax
	movl	$4,%r8d
	movq	%rax,%rdx
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll237:
# [427] if (buf[0]=ord('S')) and (buf[1]=ord('D')) and (buf[2]=ord('M')) and (buf[3]=ord('P')) then
	cmpb	$83,-24720(%rbp)
	jne	.Lj1825
	cmpb	$68,-24719(%rbp)
	jne	.Lj1825
	cmpb	$77,-24718(%rbp)
	jne	.Lj1825
	cmpb	$80,-24717(%rbp)
	jne	.Lj1825
.Ll238:
# [429] box(18,132,800,600,178);
	movl	$178,32(%rsp)
	movl	$600,%r9d
	movl	$800,%r8d
	movl	$132,%eax
	movl	$18,%ecx
	movl	%eax,%edx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll239:
# [430] outtextxyz(18,132,'type: SDMP',188,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	_$UNIT1$_Ld9(%rip),%rax
	movq	%rax,%r10
	movl	$188,%r8d
	movl	$132,%eax
	movl	$18,%ecx
	movl	%eax,%edx
	movl	%r8d,%r9d
	movq	%r10,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll240:
# [431] songs:=0;
	movw	$0,TC_$UNIT1_$$_SONGS(%rip)
.Ll241:
# [432] fileread(fh,buf,4);
	movslq	U_$RETRO_$$_FH(%rip),%rax
	movq	%rax,%rcx
	leaq	-24720(%rbp),%rax
	movl	$4,%r8d
	movq	%rax,%rdx
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll242:
# [433] siddelay:=1000000 div buf[0];
	movzbl	-24720(%rbp),%ecx
	movq	$1000000,%rax
	cqto
	idivq	%rcx
	movq	%rax,TC_$RETRO_$$_SIDDELAY(%rip)
.Ll243:
# [434] outtextxyz(18,196,'speed: '+inttostr(buf[0])+' Hz',188,2,2);
	leaq	-24736(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	_$UNIT1$_Ld10(%rip),%rax
	movq	%rax,-24768(%rbp)
	movzbl	-24720(%rbp),%eax
	leaq	-24744(%rbp),%rcx
	movl	%eax,%edx
	call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	movq	-24744(%rbp),%rax
	movq	%rax,-24760(%rbp)
	leaq	_$UNIT1$_Ld11(%rip),%rax
	movq	%rax,-24752(%rbp)
	leaq	-24768(%rbp),%r10
	leaq	-24736(%rbp),%rdx
	movl	$0,%eax
	movq	$2,%r8
	movl	%eax,%r9d
	movq	%rdx,%rcx
	movq	%r10,%rdx
	call	fpc_ansistr_concat_multi
	movq	-24736(%rbp),%r10
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	$188,%r8d
	movl	$196,%eax
	movl	$18,%ecx
	movl	%eax,%edx
	movl	%r8d,%r9d
	movq	%r10,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll244:
# [435] title:='                                ';
	leaq	_$UNIT1$_Ld12(%rip),%r8
	leaq	U_$UNIT1_$$_TITLE(%rip),%rax
	movq	$32,%rdx
	movq	%rax,%rcx
	call	fpc_shortstr_to_shortstr
.Ll245:
# [436] fileread(fh,title[1],16);
	movslq	U_$RETRO_$$_FH(%rip),%rax
	movq	%rax,%rcx
	leaq	U_$UNIT1_$$_TITLE+1(%rip),%rax
	movl	$16,%r8d
	movq	%rax,%rdx
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll246:
# [437] fileread(fh,buf,1);
	movslq	U_$RETRO_$$_FH(%rip),%rax
	movq	%rax,%rcx
	leaq	-24720(%rbp),%rax
	movl	$1,%r8d
	movq	%rax,%rdx
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll247:
# [438] outtextxyz(18,164,'title: '+title,188,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	-24736(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	U_$UNIT1_$$_TITLE(%rip),%rdx
	leaq	-24776(%rbp),%rax
	movl	$0,%r8d
	movq	%rax,%rcx
	call	fpc_shortstr_to_ansistr
	movq	-24776(%rbp),%r8
	leaq	_$UNIT1$_Ld13(%rip),%rax
	movq	%rax,%rdx
	leaq	-24736(%rbp),%rax
	movl	$0,%r9d
	movq	%rax,%rcx
	call	fpc_ansistr_concat
	movq	-24736(%rbp),%r10
	movl	$188,%r8d
	movl	$164,%eax
	movl	$18,%ecx
	movl	%eax,%edx
	movl	%r8d,%r9d
	movq	%r10,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll248:
# [439] box(18,912,800,32,244);
	movl	$244,32(%rsp)
	movl	$32,%r9d
	movl	$800,%r8d
	movl	$912,%eax
	movl	$18,%ecx
	movl	%eax,%edx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll249:
# [440] outtextxyz(18,912,'SIDCog DMP file, '+inttostr(songfreq)+' Hz',250,2,2);
	leaq	-24776(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	_$UNIT1$_Ld14(%rip),%rax
	movq	%rax,-24768(%rbp)
	movq	U_$RETRO_$$_SONGFREQ(%rip),%rax
	leaq	-24744(%rbp),%rcx
	movq	%rax,%rdx
	call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	movq	-24744(%rbp),%rax
	movq	%rax,-24760(%rbp)
	leaq	_$UNIT1$_Ld11(%rip),%rax
	movq	%rax,-24752(%rbp)
	leaq	-24768(%rbp),%r10
	leaq	-24776(%rbp),%rdx
	movl	$0,%eax
	movq	$2,%r8
	movl	%eax,%r9d
	movq	%rdx,%rcx
	movq	%r10,%rdx
	call	fpc_ansistr_concat_multi
	movq	-24776(%rbp),%r10
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	$250,%r8d
	movl	$912,%eax
	movl	$18,%ecx
	movl	%eax,%edx
	movl	%r8d,%r9d
	movq	%r10,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	jmp	.Lj1963
.Lj1825:
.Ll250:
# [442] else if (buf[0]=ord('P')) and (buf[1]=ord('S')) and (buf[2]=ord('I')) and (buf[3]=ord('D')) then
	cmpb	$80,-24720(%rbp)
	jne	.Lj1965
	cmpb	$83,-24719(%rbp)
	jne	.Lj1965
	cmpb	$73,-24718(%rbp)
	jne	.Lj1965
	cmpb	$68,-24717(%rbp)
	jne	.Lj1965
.Ll251:
# [444] reset6502;
	call	UNIT6502_$$_RESET6502
.Ll252:
# [445] sidopen(fh);
	movl	U_$RETRO_$$_FH(%rip),%ecx
	call	UNIT1_$$_SIDOPEN$LONGINT
.Ll253:
# [446] if cia>0 then siddelay:={985248}1000000 div (50*round(19652/cia));
	cmpl	$0,U_$UNIT1_$$_CIA(%rip)
	jng	.Lj1972
	cvtsi2sdl	U_$UNIT1_$$_CIA(%rip),%xmm0
	movsd	_$UNIT1$_Ld15(%rip),%xmm1
	divsd	%xmm0,%xmm1
	cvtsd2siq	%xmm1,%rax
	imulq	$50,%rax,%rcx
	movq	$1000000,%rax
	cqto
	idivq	%rcx
	movq	%rax,TC_$RETRO_$$_SIDDELAY(%rip)
.Lj1972:
.Ll254:
# [447] filetype:=1;
	movl	$1,U_$RETRO_$$_FILETYPE(%rip)
.Ll255:
# [448] fuck:=1;
	movl	$1,TC_$UNIT1_$$_FUCK(%rip)
.Ll256:
# [449] box(18,912,800,32,244);
	movl	$244,32(%rsp)
	movl	$32,%r9d
	movl	$800,%r8d
	movl	$912,%eax
	movl	$18,%ecx
	movl	%eax,%edx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll257:
# [450] outtextxyz(18,912,'PSID file, '+inttostr(1000000 div siddelay)+' Hz',250,2,2);
	leaq	-24776(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	_$UNIT1$_Ld16(%rip),%rax
	movq	%rax,-24768(%rbp)
	movq	$1000000,%rax
	cqto
	idivq	TC_$RETRO_$$_SIDDELAY(%rip)
	leaq	-24744(%rbp),%rcx
	movq	%rax,%rdx
	call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	movq	-24744(%rbp),%rax
	movq	%rax,-24760(%rbp)
	leaq	_$UNIT1$_Ld11(%rip),%rax
	movq	%rax,-24752(%rbp)
	leaq	-24768(%rbp),%r10
	leaq	-24776(%rbp),%rdx
	movl	$0,%eax
	movq	$2,%r8
	movl	%eax,%r9d
	movq	%rdx,%rcx
	movq	%r10,%rdx
	call	fpc_ansistr_concat_multi
	movq	-24776(%rbp),%r10
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	$250,%r8d
	movl	$912,%eax
	movl	$18,%ecx
	movl	%eax,%edx
	movl	%r8d,%r9d
	movq	%r10,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	jmp	.Lj2013
.Lj1965:
.Ll258:
# [453] else if (buf[0]=ord('R')) and (buf[1]=ord('S')) and (buf[2]=ord('I')) and (buf[3]=ord('D')) then
	cmpb	$82,-24720(%rbp)
	jne	.Lj2015
	cmpb	$83,-24719(%rbp)
	jne	.Lj2015
	cmpb	$73,-24718(%rbp)
	jne	.Lj2015
	cmpb	$68,-24717(%rbp)
	jne	.Lj2015
.Ll259:
# [461] box(18,132,800,600,178);
	movl	$178,32(%rsp)
	movl	$600,%r9d
	movl	$800,%r8d
	movl	$132,%eax
	movl	$18,%ecx
	movl	%eax,%edx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll260:
# [462] outtextxyz(18,132,'type: RSID, not yet supported',44,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	_$UNIT1$_Ld17(%rip),%rax
	movq	%rax,%r10
	movl	$44,%r8d
	movl	$132,%eax
	movl	$18,%ecx
	movl	%eax,%edx
	movl	%r8d,%r9d
	movq	%r10,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll261:
# [463] goto p101;
	jmp	.Lj2041
.Lj2015:
.Ll262:
# [468] fileread(fh,buf,21);
	movslq	U_$RETRO_$$_FH(%rip),%rax
	movq	%rax,%rcx
	leaq	-24720(%rbp),%rax
	movl	$21,%r8d
	movq	%rax,%rdx
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll263:
# [469] box(18,132,800,600,178);
	movl	$178,32(%rsp)
	movl	$600,%r9d
	movl	$800,%r8d
	movl	$132,%eax
	movl	$18,%ecx
	movl	%eax,%edx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll264:
# [470] outtextxyz(18,132,'type: unknown, 50 Hz SDMP assumed',188,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	_$UNIT1$_Ld18(%rip),%rax
	movq	%rax,%r10
	movl	$188,%r8d
	movl	$132,%eax
	movl	$18,%ecx
	movl	%eax,%edx
	movl	%r8d,%r9d
	movq	%r10,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll265:
# [471] box(18,912,800,32,244);
	movl	$244,32(%rsp)
	movl	$32,%r9d
	movl	$800,%r8d
	movl	$912,%eax
	movl	$18,%ecx
	movl	%eax,%edx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll266:
# [472] outtextxyz(18,912,'SIDCog DMP file, 50 Hz',250,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	_$UNIT1$_Ld19(%rip),%rax
	movq	%rax,%r10
	movl	$250,%r8d
	movl	$912,%eax
	movl	$18,%ecx
	movl	%eax,%edx
	movl	%r8d,%r9d
	movq	%r10,%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj2013:
.Lj1963:
.Ll267:
# [476] skip:=0;
	movl	$0,U_$RETRO_$$_SKIP(%rip)
.Ll268:
# [477] songname:=s;
	movq	-8(%rbp),%rax
	leaq	U_$UMAIN_$$_SONGNAME(%rip),%rcx
	movq	%rax,%rdx
	call	fpc_ansistr_assign
.Ll269:
# [478] songtime:=0;
	movq	$0,U_$RETRO_$$_SONGTIME(%rip)
.Ll270:
# [479] timer1:=-1;
	movq	$-1,TC_$RETRO_$$_TIMER1(%rip)
.Ll271:
# [480] for i:=0 to 1000000 do;
	movl	$0,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj2105:
	addl	$1,%edi
	cmpl	$1000000,%edi
	jl	.Lj2105
.Ll272:
# [481] sdl_pauseaudio(0);
	movl	$0,%ecx
	call	_$dll$sdl2$SDL_PauseAudio
.Lj1746:
.Lj1331:
.Lj2041:
.Ll273:
# [485] if peek($60028)=ord('i') then begin poke ($60028,0); poke($70001, peek($70001) xor 1); end;
	movl	$393256,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$105,%al
	jne	.Lj2109
	movl	$0,%eax
	movl	$393256,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
	movl	$458753,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	xorl	$1,%eax
# PeepHole Optimization,var9
	andl	$255,%eax
	movl	$458753,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Lj2109:
.Ll274:
# [487] if (peek($60028)=ord('f')) and (peek($70002)=0) then
	movl	$393256,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$102,%al
	jne	.Lj2123
	movl	$458754,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	testb	%al,%al
	jne	.Lj2123
.Ll275:
# [489] poke($60028,0);
	movl	$0,%eax
	movl	$393256,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
	.balign 8,0x90
.Lj2133:
.Ll276:
# [490] repeat until peek($70000)=1;
	movl	$458752,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$1,%al
	jne	.Lj2133
.Ll277:
# [491] poke ($70000,2);
	movl	$2,%eax
	movl	$458752,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll278:
# [492] SDL_DestroyTexture( sdlTexture );
	movq	U_$RETRO_$$_SDLTEXTURE(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyTexture
.Ll279:
# [493] SDL_DestroyRenderer( sdlRenderer );
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyRenderer
.Ll280:
# [494] poke($70002,1);
	movl	$1,%eax
	movl	$458754,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll281:
# [495] sdl_setwindowfullscreen(scr,sdl_window_fullscreen_desktop);
	movq	U_$RETRO_$$_SCR(%rip),%rax
	movl	$4097,%edx
	movq	%rax,%rcx
	call	_$dll$sdl2$SDL_SetWindowFullscreen
.Ll282:
# [496] sdlRenderer := SDL_CreateRenderer(scr, -1, 14);
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	movl	$14,%eax
	movl	$-1,%edx
	movl	%eax,%r8d
	call	_$dll$sdl2$SDL_CreateRenderer
	movq	%rax,U_$RETRO_$$_SDLRENDERER(%rip)
.Ll283:
# [497] sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
	movl	$1200,32(%rsp)
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%r10
	movl	$1920,%ecx
	movl	$1,%eax
	movl	$372645892,%edx
	movl	%eax,%r8d
	movl	%ecx,%r9d
	movq	%r10,%rcx
	call	_$dll$sdl2$SDL_CreateTexture
	movq	%rax,U_$RETRO_$$_SDLTEXTURE(%rip)
.Ll284:
# [498] SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1200,%eax
	movl	$1920,%edx
	movl	%eax,%r8d
	call	_$dll$sdl2$SDL_RenderSetLogicalSize
.Ll285:
# [499] poke ($70000,1);
	movl	$1,%eax
	movl	$458752,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Lj2123:
.Ll286:
# [502] if (peek($60028)=ord('f')) and (peek($70002)=1) then
	movl	$393256,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$102,%al
	jne	.Lj2185
	movl	$458754,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$1,%al
	jne	.Lj2185
.Ll287:
# [504] poke($60028,0);
	movl	$0,%eax
	movl	$393256,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
	.balign 8,0x90
.Lj2195:
.Ll288:
# [505] repeat until peek($70000)=1;
	movl	$458752,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$1,%al
	jne	.Lj2195
.Ll289:
# [506] poke ($70000,2);
	movl	$2,%eax
	movl	$458752,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll290:
# [507] SDL_DestroyTexture( sdlTexture );
	movq	U_$RETRO_$$_SDLTEXTURE(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyTexture
.Ll291:
# [508] SDL_DestroyRenderer( sdlRenderer );
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyRenderer
.Ll292:
# [509] poke($70002,0);
	movl	$0,%eax
	movl	$458754,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll293:
# [510] sdl_setwindowfullscreen(scr,0);
	movq	U_$RETRO_$$_SCR(%rip),%rax
	movl	$0,%edx
	movq	%rax,%rcx
	call	_$dll$sdl2$SDL_SetWindowFullscreen
.Ll294:
# [511] sdlRenderer := SDL_CreateRenderer(scr, -1, 14);
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	movl	$14,%eax
	movl	$-1,%edx
	movl	%eax,%r8d
	call	_$dll$sdl2$SDL_CreateRenderer
	movq	%rax,U_$RETRO_$$_SDLRENDERER(%rip)
.Ll295:
# [512] sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
	movl	$1200,32(%rsp)
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%r10
	movl	$1920,%ecx
	movl	$1,%eax
	movl	$372645892,%edx
	movl	%eax,%r8d
	movl	%ecx,%r9d
	movq	%r10,%rcx
	call	_$dll$sdl2$SDL_CreateTexture
	movq	%rax,U_$RETRO_$$_SDLTEXTURE(%rip)
.Ll296:
# [513] SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1200,%eax
	movl	$1920,%edx
	movl	%eax,%r8d
	call	_$dll$sdl2$SDL_RenderSetLogicalSize
.Ll297:
# [514] poke ($70000,1);
	movl	$1,%eax
	movl	$458752,%ecx
	movl	%eax,%edx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Lj2185:
.Ll298:
# [517] application.processmessages;
	movq	TC_$FORMS_$$_APPLICATION(%rip),%rcx
	call	FORMS$_$TAPPLICATION_$__$$_PROCESSMESSAGES
.Ll299:
# [518] until (peek($6002b)<>0) and (peek($60028)=27) ;
	movl	$393259,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	testb	%al,%al
	je	.Lj376
	movl	$393256,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$27,%al
	jne	.Lj376
.Ll300:
# [519] timer1:=-1;
	movq	$-1,TC_$RETRO_$$_TIMER1(%rip)
.Ll301:
# [520] fileclose(fh);
	movslq	U_$RETRO_$$_FH(%rip),%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll302:
# [521] stopmachine;
	call	RETRO_$$_STOPMACHINE
.Ll303:
# [522] halt;
	movl	$0,%ecx
	call	SYSTEM_$$_HALT$LONGINT
.Lj2259:
.Ll304:
	nop
.Lj8:
	movq	%rbp,%rcx
	call	UNIT1$_$TFORM1_$_BUTTON1CLICK$TOBJECT_$$_fin$3
.Ll305:
# [523] end;
	movq	-24912(%rbp),%rbx
	movq	-24904(%rbp),%rdi
	movq	-24896(%rbp),%rsi
	movq	-24888(%rbp),%r12
	movq	-24880(%rbp),%r13
	movq	-24872(%rbp),%r14
	movq	-24864(%rbp),%r15
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj7
	.rva	.Lj8
	.rva	UNIT1$_$TFORM1_$_BUTTON1CLICK$TOBJECT_$$_fin$3

.section .text.n_unit1$_$tform1_$__$$_button1click$tobject,"x"
.seh_endproc
.Lc7:
.Lt4:
.Ll306:

.section .text.n_unit1$_$tform1_$__$$_button2click$tobject,"x"
	.balign 16,0x90
.globl	UNIT1$_$TFORM1_$__$$_BUTTON2CLICK$TOBJECT
UNIT1$_$TFORM1_$__$$_BUTTON2CLICK$TOBJECT:
.Lc11:
.seh_proc UNIT1$_$TFORM1_$__$$_BUTTON2CLICK$TOBJECT
.Ll307:
# [526] begin
	leaq	-40(%rsp),%rsp
.Lc13:
.seh_stackalloc 40
# Var Sender located in register rdx
# Var $self located in register rax
.seh_endprologue
	movq	%rcx,%rax
.Ll308:
# [527] form2.show
	movq	U_$UNIT2_$$_FORM2(%rip),%rcx
	call	FORMS$_$TCUSTOMFORM_$__$$_SHOW
.Ll309:
# [528] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc12:
.Lt5:
.Ll310:

.section .text.n_unit1$_$tform1_$__$$_formclose$tobject$tcloseaction,"x"
	.balign 16,0x90
.globl	UNIT1$_$TFORM1_$__$$_FORMCLOSE$TOBJECT$TCLOSEACTION
UNIT1$_$TFORM1_$__$$_FORMCLOSE$TOBJECT$TCLOSEACTION:
.Lc14:
# Var Sender located in register rdx
# Var CloseAction located in register r8
# Var $self located in register rax
.Ll311:
# [532] begin
	movq	%rcx,%rax
.Ll312:
# [533] closeaction:=cafree;
	movl	$2,(%r8)
.Ll313:
# [534] end;
	ret
.Lc15:
.Lt6:
.Ll314:

.section .text.n_unit1$_$tform1_$__$$_formcreate$tobject,"x"
	.balign 16,0x90
.globl	UNIT1$_$TFORM1_$__$$_FORMCREATE$TOBJECT
UNIT1$_$TFORM1_$__$$_FORMCREATE$TOBJECT:
.Lc16:
# Var Sender located in register rdx
# Var $self located in register rax
.Ll315:
# [537] begin
	movq	%rcx,%rax
.Ll316:
# [538] DefaultFormatSettings.DecimalSeparator := '.';
	movb	$46,TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS+3(%rip)
.Ll317:
# [540] end;
	ret
.Lc17:
.Lt7:
.Ll318:

.section .text.n_unit1$_$sidopen$longint_$$_fin$4,"x"
	.balign 16,0x90
UNIT1$_$SIDOPEN$LONGINT_$$_fin$4:
.Lc18:
.seh_proc UNIT1$_$SIDOPEN$LONGINT_$$_fin$4
.Ll319:
# [552] begin
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
.Ll320:
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	-80(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc19:
.Lt3:
.Ll321:

.section .text.n_unit1_$$_sidopen$longint,"x"
	.balign 16,0x90
.globl	UNIT1_$$_SIDOPEN$LONGINT
UNIT1_$$_SIDOPEN$LONGINT:
.Lc23:
# Temps allocated between rbp-104 and rbp-72
.seh_proc UNIT1_$$_SIDOPEN$LONGINT
.Ll322:
	pushq	%rbp
.seh_pushreg %rbp
.Lc25:
.Lc26:
	movq	%rsp,%rbp
.Lc27:
	leaq	-160(%rsp),%rsp
.seh_stackalloc 160
# Var fh located in register ebx
# Var i located in register esi
# Var il located in register sil
	movq	%rbx,-104(%rbp)
	movq	%rsi,-96(%rbp)
.seh_savereg %rbx, 56
.seh_savereg %rsi, 64
.seh_endprologue
# Var speed located at rbp-8, size=OS_32
# Var version located at rbp-16, size=OS_16
# Var offset located at rbp-24, size=OS_16
# Var load located at rbp-32, size=OS_16
# Var startsong located at rbp-40, size=OS_16
# Var flags located at rbp-48, size=OS_16
# Var magic located at rbp-56, size=OS_NO
# Var dump located at rbp-64, size=OS_16
# Var b located at rbp-72, size=OS_8
	movl	%ecx,%ebx
.Ll323:
	movq	$0,-88(%rbp)
	movq	$0,-80(%rbp)
.Lj2315:
	nop
.Lj2311:
.Ll324:
# [544] var i:integer;
	leaq	TC_$UNIT1$_$SIDOPEN$LONGINT_$$_defaultmagic(%rip),%r8
	leaq	-56(%rbp),%rcx
	movq	$4,%rdx
	call	fpc_shortstr_to_shortstr
.Ll325:
# [553] reset6502;
	call	UNIT6502_$$_RESET6502
.Ll326:
# [554] title:='                                ';
	leaq	_$UNIT1$_Ld12(%rip),%r8
	leaq	U_$UNIT1_$$_TITLE(%rip),%rcx
	movq	$32,%rdx
	call	fpc_shortstr_to_shortstr
.Ll327:
# [555] author:='                                ';
	leaq	_$UNIT1$_Ld12(%rip),%r8
	leaq	U_$UNIT1_$$_AUTHOR(%rip),%rcx
	movq	$32,%rdx
	call	fpc_shortstr_to_shortstr
.Ll328:
# [556] copyright:='                                ';
	leaq	_$UNIT1$_Ld12(%rip),%r8
	leaq	U_$UNIT1_$$_COPYRIGHT(%rip),%rcx
	movq	$32,%rdx
	call	fpc_shortstr_to_shortstr
.Ll329:
# [561] fileread(fh,version,2); version:=(version shl 8) or (version shr 8);
	movslq	%ebx,%rcx
	leaq	-16(%rbp),%rdx
	movl	$2,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
	movzwl	-16(%rbp),%eax
	movl	%eax,%edx
	shll	$8,%edx
	shrl	$8,%eax
	orl	%edx,%eax
	movw	%ax,-16(%rbp)
.Ll330:
# [562] fileread(fh,offset,2); offset:=(offset shl 8) or (offset shr 8);
	movslq	%ebx,%rcx
	leaq	-24(%rbp),%rdx
	movl	$2,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
	movzwl	-24(%rbp),%eax
	movl	%eax,%edx
	shll	$8,%edx
	shrl	$8,%eax
	orl	%edx,%eax
	movw	%ax,-24(%rbp)
.Ll331:
# [563] fileread(fh,load,2); load:=(load shl 8) or (load shr 8);
	movslq	%ebx,%rcx
	leaq	-32(%rbp),%rdx
	movl	$2,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
	movzwl	-32(%rbp),%eax
	movl	%eax,%edx
	shll	$8,%edx
	shrl	$8,%eax
	orl	%edx,%eax
	movw	%ax,-32(%rbp)
.Ll332:
# [564] fileread(fh,init,2); init:=(init shl 8) or (init shr 8);
	movslq	%ebx,%rcx
	leaq	U_$UNIT1_$$_INIT(%rip),%rdx
	movl	$2,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
	movzwl	U_$UNIT1_$$_INIT(%rip),%eax
	movl	%eax,%edx
	shll	$8,%edx
	shrl	$8,%eax
	orl	%edx,%eax
	movw	%ax,U_$UNIT1_$$_INIT(%rip)
.Ll333:
# [565] fileread(fh,play,2);  play:=(play shl 8) or (play shr 8);
	movslq	%ebx,%rcx
	leaq	U_$RETRO_$$_PLAY(%rip),%rdx
	movl	$2,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
	movzwl	U_$RETRO_$$_PLAY(%rip),%eax
	movl	%eax,%edx
	shll	$8,%edx
	shrl	$8,%eax
	orl	%edx,%eax
	movw	%ax,U_$RETRO_$$_PLAY(%rip)
.Ll334:
# [566] fileread(fh,songs,2); songs:=(songs shl 8) or (songs shr 8);
	movslq	%ebx,%rcx
	leaq	TC_$UNIT1_$$_SONGS(%rip),%rdx
	movl	$2,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
	movzwl	TC_$UNIT1_$$_SONGS(%rip),%eax
	movl	%eax,%edx
	shll	$8,%edx
	shrl	$8,%eax
	orl	%edx,%eax
	movw	%ax,TC_$UNIT1_$$_SONGS(%rip)
.Ll335:
# [567] fileread(fh,startsong,2); startsong:=(startsong shl 8) or (startsong shr 8);
	movslq	%ebx,%rcx
	leaq	-40(%rbp),%rdx
	movl	$2,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
	movzwl	-40(%rbp),%eax
	movl	%eax,%edx
	shll	$8,%edx
	shrl	$8,%eax
	orl	%edx,%eax
	movw	%ax,-40(%rbp)
.Ll336:
# [568] fileread(fh,speed,4);
	movslq	%ebx,%rcx
	leaq	-8(%rbp),%rdx
	movl	$4,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll337:
	movl	-8(%rbp),%edx
.Ll338:
# [569] speed:=speed shr 24+((speed shr 8) and $0000FF00) + ((speed shl 8) and $00FF0000) + (speed shl 24);
	movl	%edx,%eax
	shrl	$8,%eax
	andl	$65280,%eax
	movl	%edx,%ecx
	shrl	$24,%ecx
	leal	(%eax,%ecx),%ecx
	movl	%edx,%eax
	shll	$8,%eax
	andl	$16711680,%eax
	leal	(%ecx,%eax),%eax
	shll	$24,%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-8(%rbp)
.Ll339:
# [570] fileread(fh,title[1],32);
	movslq	%ebx,%rcx
	leaq	U_$UNIT1_$$_TITLE+1(%rip),%rdx
	movl	$32,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll340:
# [571] fileread(fh,author[1],32);
	movslq	%ebx,%rcx
	leaq	U_$UNIT1_$$_AUTHOR+1(%rip),%rdx
	movl	$32,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll341:
# [572] fileread(fh,copyright[1],32);
	movslq	%ebx,%rcx
	leaq	U_$UNIT1_$$_COPYRIGHT+1(%rip),%rdx
	movl	$32,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll342:
# [573] if version>1 then begin
	cmpw	$1,-16(%rbp)
	jna	.Lj2439
.Ll343:
# [574] fileread(fh,flags,2); flags:=(flags shl 8) or (flags shr 8);
	movslq	%ebx,%rcx
	leaq	-48(%rbp),%rdx
	movl	$2,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
	movzwl	-48(%rbp),%eax
	movl	%eax,%edx
	shll	$8,%edx
	shrl	$8,%eax
	orl	%edx,%eax
	movw	%ax,-48(%rbp)
.Ll344:
# [575] fileread(fh,dump,2);
	movslq	%ebx,%rcx
	leaq	-64(%rbp),%rdx
	movl	$2,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll345:
# [576] fileread(fh,dump,2);
	movslq	%ebx,%rcx
	leaq	-64(%rbp),%rdx
	movl	$2,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll346:
# [577] b:=0; if load=0 then begin b:=1; fileread(fh,load,2); end;
	movb	$0,-72(%rbp)
	cmpw	$0,-32(%rbp)
	jne	.Lj2465
	movb	$1,-72(%rbp)
	movslq	%ebx,%rcx
	leaq	-32(%rbp),%rdx
	movl	$2,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Lj2465:
.Lj2439:
.Ll347:
# [579] for i:=1 to 32 do if byte(title[i])=$F1 then title[i]:=char(26);
	movl	$1,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj2476:
	addl	$1,%esi
	movb	%sil,%al
# PeepHole Optimization,var9
	andl	$255,%eax
	leaq	U_$UNIT1_$$_TITLE(%rip),%rdx
	cmpb	$241,(%rdx,%rax,1)
	jne	.Lj2478
	movb	%sil,%al
# PeepHole Optimization,var9
	andl	$255,%eax
	leaq	U_$UNIT1_$$_TITLE(%rip),%rdx
	movb	$26,(%rdx,%rax,1)
.Lj2478:
	cmpl	$32,%esi
	jl	.Lj2476
.Ll348:
# [580] for i:=1 to 32 do if byte(author[i])=$F1 then author[i]:=char(26);
	movl	$1,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj2483:
	addl	$1,%esi
	movb	%sil,%al
# PeepHole Optimization,var9
	andl	$255,%eax
	leaq	U_$UNIT1_$$_AUTHOR(%rip),%rdx
	cmpb	$241,(%rdx,%rax,1)
	jne	.Lj2485
	movb	%sil,%al
# PeepHole Optimization,var9
	andl	$255,%eax
	leaq	U_$UNIT1_$$_AUTHOR(%rip),%rdx
	movb	$26,(%rdx,%rax,1)
.Lj2485:
	cmpl	$32,%esi
	jl	.Lj2483
.Ll349:
# [581] box(18,132,800,600,178);
	movl	$178,32(%rsp)
	movl	$600,%r9d
	movl	$800,%r8d
	movl	$132,%edx
	movl	$18,%ecx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll350:
# [582] outtextxyz(18,132,'type: PSID',188,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	_$UNIT1$_Ld20(%rip),%r8
	movl	$188,%r9d
	movl	$132,%edx
	movl	$18,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll351:
# [583] outtextxyz(18,164,'version: '+inttostr(version),188,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	-80(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movzwl	-16(%rbp),%edx
	leaq	-88(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	movq	-88(%rbp),%r8
	leaq	_$UNIT1$_Ld21(%rip),%rdx
	leaq	-80(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
	movq	-80(%rbp),%r8
	movl	$188,%r9d
	movl	$164,%edx
	movl	$18,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll352:
# [584] outtextxyz(18,196,'offset: ' +inttohex(offset,4),188,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movzwl	-24(%rbp),%edx
	leaq	-80(%rbp),%rcx
	movl	$4,%r8d
	call	SYSUTILS_$$_INTTOHEX$LONGINT$LONGINT$$ANSISTRING
	movq	-80(%rbp),%r8
	leaq	_$UNIT1$_Ld22(%rip),%rdx
	leaq	-88(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
	movq	-88(%rbp),%r8
	movl	$188,%r9d
	movl	$196,%edx
	movl	$18,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll353:
# [585] outtextxyz(18,228,'load: '+inttohex(load,4),188-144*b,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movzwl	-32(%rbp),%edx
	leaq	-80(%rbp),%rcx
	movl	$4,%r8d
	call	SYSUTILS_$$_INTTOHEX$LONGINT$LONGINT$$ANSISTRING
	movq	-80(%rbp),%r8
	leaq	_$UNIT1$_Ld23(%rip),%rdx
	leaq	-88(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
	movq	-88(%rbp),%r8
	movzbl	-72(%rbp),%eax
	imull	$144,%eax,%eax
	movl	$188,%r9d
	subl	%eax,%r9d
	movl	$228,%edx
	movl	$18,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll354:
# [586] outtextxyz(18,260,'init: '+inttohex(init,4),188,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movzwl	U_$UNIT1_$$_INIT(%rip),%edx
	leaq	-80(%rbp),%rcx
	movl	$4,%r8d
	call	SYSUTILS_$$_INTTOHEX$LONGINT$LONGINT$$ANSISTRING
	movq	-80(%rbp),%r8
	leaq	_$UNIT1$_Ld24(%rip),%rdx
	leaq	-88(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
	movq	-88(%rbp),%r8
	movl	$188,%r9d
	movl	$260,%edx
	movl	$18,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll355:
# [587] outtextxyz(18,292,'play: '+inttohex(play,4),188,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movzwl	U_$RETRO_$$_PLAY(%rip),%edx
	leaq	-80(%rbp),%rcx
	movl	$4,%r8d
	call	SYSUTILS_$$_INTTOHEX$LONGINT$LONGINT$$ANSISTRING
	movq	-80(%rbp),%r8
	leaq	_$UNIT1$_Ld25(%rip),%rdx
	leaq	-88(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
	movq	-88(%rbp),%r8
	movl	$188,%r9d
	movl	$292,%edx
	movl	$18,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll356:
# [588] outtextxyz(18,324,'songs: '+inttostr(songs),188,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movzwl	TC_$UNIT1_$$_SONGS(%rip),%edx
	leaq	-80(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	movq	-80(%rbp),%r8
	leaq	_$UNIT1$_Ld26(%rip),%rdx
	leaq	-88(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
	movq	-88(%rbp),%r8
	movl	$188,%r9d
	movl	$324,%edx
	movl	$18,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll357:
# [589] outtextxyz(18,356,'startsong: '+inttostr(startsong),188,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movzwl	-40(%rbp),%edx
	leaq	-80(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	movq	-80(%rbp),%r8
	leaq	_$UNIT1$_Ld27(%rip),%rdx
	leaq	-88(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
	movq	-88(%rbp),%r8
	movl	$188,%r9d
	movl	$356,%edx
	movl	$18,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll358:
# [590] outtextxyz(18,388,'speed: '+inttohex(speed,8),188,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movl	-8(%rbp),%edx
	leaq	-80(%rbp),%rcx
	movl	$8,%r8d
	call	SYSUTILS_$$_INTTOHEX$QWORD$LONGINT$$ANSISTRING
	movq	-80(%rbp),%r8
	leaq	_$UNIT1$_Ld10(%rip),%rdx
	leaq	-88(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
	movq	-88(%rbp),%r8
	movl	$188,%r9d
	movl	$388,%edx
	movl	$18,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll359:
# [591] outtextxyz(18,420,'title: '+title,188,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	U_$UNIT1_$$_TITLE(%rip),%rdx
	leaq	-80(%rbp),%rcx
	movl	$0,%r8d
	call	fpc_shortstr_to_ansistr
	movq	-80(%rbp),%r8
	leaq	_$UNIT1$_Ld13(%rip),%rdx
	leaq	-88(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
	movq	-88(%rbp),%r8
	movl	$188,%r9d
	movl	$420,%edx
	movl	$18,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll360:
# [592] outtextxyz(18,452,'author: '+author,188,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	U_$UNIT1_$$_AUTHOR(%rip),%rdx
	leaq	-80(%rbp),%rcx
	movl	$0,%r8d
	call	fpc_shortstr_to_ansistr
	movq	-80(%rbp),%r8
	leaq	_$UNIT1$_Ld28(%rip),%rdx
	leaq	-88(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
	movq	-88(%rbp),%r8
	movl	$188,%r9d
	movl	$452,%edx
	movl	$18,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll361:
# [593] outtextxyz(18,484,'copyright: '+copyright,188,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	U_$UNIT1_$$_COPYRIGHT(%rip),%rdx
	leaq	-80(%rbp),%rcx
	movl	$0,%r8d
	call	fpc_shortstr_to_ansistr
	movq	-80(%rbp),%r8
	leaq	_$UNIT1$_Ld29(%rip),%rdx
	leaq	-88(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
	movq	-88(%rbp),%r8
	movl	$188,%r9d
	movl	$484,%edx
	movl	$18,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll362:
# [594] outtextxyz(18,516,'flags: '+inttohex(flags,4),188,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movzwl	-48(%rbp),%edx
	leaq	-80(%rbp),%rcx
	movl	$4,%r8d
	call	SYSUTILS_$$_INTTOHEX$LONGINT$LONGINT$$ANSISTRING
	movq	-80(%rbp),%r8
	leaq	_$UNIT1$_Ld30(%rip),%rdx
	leaq	-88(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
	movq	-88(%rbp),%r8
	movl	$188,%r9d
	movl	$516,%edx
	movl	$18,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll363:
# [597] song:=startsong-1;
	movzwl	-40(%rbp),%eax
	leal	-1(%eax),%eax
	movw	%ax,TC_$UNIT1_$$_SONG(%rip)
.Ll364:
# [598] fuck:=0;
	movl	$0,TC_$UNIT1_$$_FUCK(%rip)
.Ll365:
# [599] for i:=0 to 100000000 do begin end;
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj2822:
	addl	$1,%esi
	cmpl	$100000000,%esi
	jl	.Lj2822
.Ll366:
# [600] reset6502;
	call	UNIT6502_$$_RESET6502
.Ll367:
# [601] for i:=0 to 65535 do write6502(i,0);
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj2825:
	addl	$1,%esi
	movslq	%esi,%rcx
	movl	$0,%edx
	call	UNIT6502_$$_WRITE6502$INT64$BYTE
	cmpl	$65535,%esi
	jl	.Lj2825
	.balign 8,0x90
.Lj2830:
.Ll368:
# [603] il:=fileread(fh,b,1);
	movslq	%ebx,%rcx
	leaq	-72(%rbp),%rdx
	movl	$1,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
	movb	%al,%sil
.Ll369:
# [604] write6502(load,b);
	movzwl	-32(%rbp),%ecx
	movzbl	-72(%rbp),%edx
	call	UNIT6502_$$_WRITE6502$INT64$BYTE
.Ll370:
# [605] load+=1;
	movzwl	-32(%rbp),%eax
	leal	1(%eax),%eax
	movw	%ax,-32(%rbp)
.Ll371:
# [606] until il<>1;
	cmpb	$1,%sil
	je	.Lj2830
.Ll372:
# [607] fileseek(fh,0,fsfrombeginning);
	movslq	%ebx,%rcx
	movl	$0,%r8d
	movl	$0,%edx
	call	SYSUTILS_$$_FILESEEK$QWORD$LONGINT$LONGINT$$LONGINT
.Ll373:
# [609] reset6502;
	call	UNIT6502_$$_RESET6502
.Ll374:
# [611] jsr6502(song,init);
	movzwl	U_$UNIT1_$$_INIT(%rip),%edx
	movzwl	TC_$UNIT1_$$_SONG(%rip),%ecx
	call	UNIT6502_$$_JSR6502$WORD$INT64
.Ll375:
# [612] cia:=read6502($dc04)+256*read6502($dc05);
	movq	$56324,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%bl
# PeepHole Optimization,var9
	andl	$255,%ebx
	movq	$56325,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	shll	$8,%eax
	leal	(%ebx,%eax),%eax
	movl	%eax,U_$UNIT1_$$_CIA(%rip)
.Ll376:
# [613] outtextxyz(18,578,'cia: '+inttohex(read6502($dc04)+256*read6502($dc05),4),188,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movq	$56324,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%bl
# PeepHole Optimization,var9
	andl	$255,%ebx
	movq	$56325,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	shlq	$8,%rax
	leaq	(%rbx,%rax),%rdx
	leaq	-80(%rbp),%rcx
	movl	$4,%r8d
	call	SYSUTILS_$$_INTTOHEX$INT64$LONGINT$$ANSISTRING
	movq	-80(%rbp),%r8
	leaq	_$UNIT1$_Ld31(%rip),%rdx
	leaq	-88(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
	movq	-88(%rbp),%r8
	movl	$188,%r9d
	movl	$578,%edx
	movl	$18,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj2893:
.Ll377:
	nop
.Lj2312:
	movq	%rbp,%rcx
	call	UNIT1$_$SIDOPEN$LONGINT_$$_fin$4
.Ll378:
# [617] end;
	movq	-104(%rbp),%rbx
	movq	-96(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj2311
	.rva	.Lj2312
	.rva	UNIT1$_$SIDOPEN$LONGINT_$$_fin$4

.section .text.n_unit1_$$_sidopen$longint,"x"
.seh_endproc
.Lc24:
.Lt2:
.Ll379:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 8
# [36] Form1: TForm1;
	.globl U_$UNIT1_$$_FORM1
U_$UNIT1_$$_FORM1:
	.zero 8

.section .bss
# [37] var ram6502:array[0..65535] of byte;
	.globl U_$UNIT1_$$_RAM6502
U_$UNIT1_$$_RAM6502:
	.zero 65536

.section .bss
	.balign 4
# [40] cia:integer;
	.globl U_$UNIT1_$$_CIA
U_$UNIT1_$$_CIA:
	.zero 4

.section .bss
	.balign 2
# [43] init:word;
	.globl U_$UNIT1_$$_INIT
U_$UNIT1_$$_INIT:
	.zero 2

.section .bss
# [44] title,author,copyright:string[32];
	.globl U_$UNIT1_$$_TITLE
U_$UNIT1_$$_TITLE:
	.zero 33

.section .bss
	.globl U_$UNIT1_$$_AUTHOR
U_$UNIT1_$$_AUTHOR:
	.zero 33

.section .bss
	.globl U_$UNIT1_$$_COPYRIGHT
U_$UNIT1_$$_COPYRIGHT:
	.zero 33

.section .bss
	.balign 8
# [45] sc:TSynthCtrl;
	.globl U_$UNIT1_$$_SC
U_$UNIT1_$$_SC:
	.zero 8

.section .data.n_VMT_$UNIT1_$$_TFORM1,"d"
	.balign 8
.globl	VMT_$UNIT1_$$_TFORM1
VMT_$UNIT1_$$_TFORM1:
	.quad	1960,-1960
	.quad	VMT_$FORMS_$$_TFORM
	.quad	.Ld32
	.quad	0
	.quad	.Ld33
	.quad	.Ld38
	.quad	RTTI_$UNIT1_$$_TFORM1
	.quad	0,0,0,0
	.quad	FORMS$_$TCUSTOMFORM_$__$$_DESTROY
	.quad	LCLCLASSES$_$TLCLCOMPONENT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	CLASSES$_$TCOMPONENT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DEFAULTHANDLER$formal
	.quad	FORMS$_$TCUSTOMFORM_$__$$_AFTERCONSTRUCTION
	.quad	FORMS$_$TCUSTOMFORM_$__$$_BEFOREDESTRUCTION
	.quad	FPC_EMPTYMETHOD
	.quad	SYSTEM$_$TOBJECT_$__$$_DISPATCH$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_DISPATCHSTR$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_EQUALS$TOBJECT$$BOOLEAN
	.quad	SYSTEM$_$TOBJECT_$__$$_GETHASHCODE$$INT64
	.quad	SYSTEM$_$TOBJECT_$__$$_TOSTRING$$ANSISTRING
	.quad	CONTROLS$_$TCONTROL_$__$$_ASSIGNTO$TPERSISTENT
	.quad	CONTROLS$_$TCONTROL_$__$$_DEFINEPROPERTIES$TFILER
	.quad	CLASSES$_$TCOMPONENT_$__$$_GETOWNER$$TPERSISTENT
	.quad	CLASSES$_$TPERSISTENT_$__$$_ASSIGN$TPERSISTENT
	.quad	CLASSES$_$TCOMPONENT_$__$$_GETNAMEPATH$$ANSISTRING
	.quad	FORMS$_$TCUSTOMFORM_$__$$_GETCHILDREN$TGETCHILDPROC$TCOMPONENT
	.quad	CLASSES$_$TCOMPONENT_$__$$_GETCHILDOWNER$$TCOMPONENT
	.quad	CLASSES$_$TCOMPONENT_$__$$_GETCHILDPARENT$$TCOMPONENT
	.quad	FORMS$_$TFORM_$__$$_LOADED
	.quad	CLASSES$_$TCOMPONENT_$__$$_LOADING
	.quad	FORMS$_$TCUSTOMFORM_$__$$_NOTIFICATION$TCOMPONENT$TOPERATION
	.quad	FPC_EMPTYMETHOD
	.quad	CONTROLS$_$TCONTROL_$__$$_READSTATE$TREADER
	.quad	CONTROLS$_$TCONTROL_$__$$_SETNAME$ANSISTRING
	.quad	FPC_EMPTYMETHOD
	.quad	CONTROLS$_$TCONTROL_$__$$_SETPARENTCOMPONENT$TCOMPONENT
	.quad	CLASSES$_$TCOMPONENT_$__$$_UPDATING
	.quad	CLASSES$_$TCOMPONENT_$__$$_UPDATED
	.quad	FPC_EMPTYMETHOD
	.quad	CLASSES$_$TCOMPONENT_$__$$_VALIDATERENAME$TCOMPONENT$ANSISTRING$ANSISTRING
	.quad	CLASSES$_$TCOMPONENT_$__$$_VALIDATECONTAINER$TCOMPONENT
	.quad	FPC_EMPTYMETHOD
	.quad	CLASSES$_$TCOMPONENT_$__$$_QUERYINTERFACE$TGUID$formal$$HRESULT
	.quad	CLASSES$_$TCOMPONENT_$__$$_WRITESTATE$TWRITER
	.quad	FORMS$_$TFORM_$__$$_CREATE$TCOMPONENT$$TFORM
	.quad	CLASSES$_$TCOMPONENT_$__$$_EXECUTEACTION$TBASICACTION$$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_GETPARENTCOMPONENT$$TCOMPONENT
	.quad	CONTROLS$_$TCONTROL_$__$$_HASPARENT$$BOOLEAN
	.quad	CLASSES$_$TCOMPONENT_$__$$_UPDATEACTION$TBASICACTION$$BOOLEAN
	.quad	FORMS$_$TCUSTOMFORM_$__$$_WSREGISTERCLASS
	.quad	LCLCLASSES$_$TLCLCOMPONENT_$__$$_GETWSCOMPONENTCLASS$TLCLCOMPONENT$$TWSLCLCOMPONENTCLASS
	.quad	FORMS$_$TCUSTOMFORM_$__$$_REMOVEALLHANDLERSOFOBJECT$TOBJECT
	.quad	CONTROLS$_$TCONTROL_$__$$_GETCURSOR$$TCURSOR
	.quad	CONTROLS$_$TCONTROL_$__$$_SETCURSOR$TCURSOR
	.quad	FORMS$_$TCUSTOMFORM_$__$$_SETVISIBLE$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_DOONPARENTHANDLEDESTRUCTION
	.quad	FORMS$_$TCUSTOMFORM_$__$$_DOAUTOSIZE
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DOALLAUTOSIZE
	.quad	CONTROLS$_$TCONTROL_$__$$_ANCHORSIDECHANGED$TANCHORSIDE
	.quad	CONTROLS$_$TCONTROL_$__$$_FOREIGNANCHORSIDECHANGED$TANCHORSIDE$TANCHORSIDECHANGEOPERATION
	.quad	CONTROLS$_$TCONTROL_$__$$_SETALIGN$TALIGN
	.quad	CONTROLS$_$TCONTROL_$__$$_SETANCHORS$TANCHORS
	.quad	FORMS$_$TCUSTOMFORM_$__$$_SETAUTOSIZE$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_BOUNDSCHANGED
	.quad	CONTROLS$_$TCONTROL_$__$$_CREATECONTROLBORDERSPACING$$TCONTROLBORDERSPACING
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DOCONSTRAINTSCHANGE$TOBJECT
	.quad	CONTROLS$_$TCONTROL_$__$$_DOBORDERSPACINGCHANGE$TOBJECT$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_ISBORDERSPACINGINNERBORDERSTORED$$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_SENDMOVESIZEMESSAGES$BOOLEAN$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_CONSTRAINEDRESIZE$crc2DEA86E4
	.quad	FORMS$_$TCUSTOMFORM_$__$$_CALCULATEPREFERREDSIZE$LONGINT$LONGINT$BOOLEAN
	.quad	FORMS$_$TSCROLLINGWINCONTROL_$__$$_DOONRESIZE
	.quad	CONTROLS$_$TCONTROL_$__$$_DOONCHANGEBOUNDS
	.quad	CONTROLS$_$TCONTROL_$__$$_RESIZE
	.quad	FORMS$_$TCUSTOMFORM_$__$$_REQUESTALIGN
	.quad	CONTROLS$_$TCONTROL_$__$$_CHANGEBOUNDS$LONGINT$LONGINT$LONGINT$LONGINT$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DOSETBOUNDS$LONGINT$LONGINT$LONGINT$LONGINT
	.quad	CONTROLS$_$TWINCONTROL_$__$$_CHANGESCALE$LONGINT$LONGINT
	.quad	CONTROLS$_$TCONTROL_$__$$_CANAUTOSIZE$LONGINT$LONGINT$$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_SETBIDIMODE$TBIDIMODE
	.quad	CONTROLS$_$TCONTROL_$__$$_SETPARENTBIDIMODE$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_GETCLIENTORIGIN$$TPOINT
	.quad	CONTROLS$_$TWINCONTROL_$__$$_GETCLIENTRECT$$TRECT
	.quad	FORMS$_$TSCROLLINGWINCONTROL_$__$$_GETLOGICALCLIENTRECT$$TRECT
	.quad	CONTROLS$_$TCONTROL_$__$$_GETSCROLLEDCLIENTRECT$$TRECT
	.quad	FORMS$_$TSCROLLINGWINCONTROL_$__$$_GETCLIENTSCROLLOFFSET$$TPOINT
	.quad	CONTROLS$_$TWINCONTROL_$__$$_GETCONTROLORIGIN$$TPOINT
	.quad	CONTROLS$_$TWINCONTROL_$__$$_ISCLIENTHEIGHTSTORED$$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_ISCLIENTWIDTHSTORED$$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_GETDOCKEDGE$TPOINT$$TALIGN
	.quad	CONTROLS$_$TCONTROL_$__$$_GETDRAGIMAGES$$TDRAGIMAGELIST
	.quad	FORMS$_$TCUSTOMFORM_$__$$_GETFLOATING$$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_GETFLOATINGDOCKSITECLASS$$TWINCONTROLCLASS
	.quad	CONTROLS$_$TCONTROL_$__$$_BEFOREDRAGSTART
	.quad	FORMS$_$TCUSTOMFORM_$__$$_BEGINAUTODRAG
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DOFLOATMSG$TDRAGDOCKOBJECT
	.quad	CONTROLS$_$TCONTROL_$__$$_DOCKTRACKNOTARGET$TDRAGDOCKOBJECT$LONGINT$LONGINT
	.quad	FORMS$_$TCUSTOMFORM_$__$$_DODOCK$TWINCONTROL$TRECT
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DODRAGMSG$TDRAGMESSAGE$TPOINT$TDRAGOBJECT$TCONTROL$BOOLEAN$$INT64
	.quad	CONTROLS$_$TCONTROL_$__$$_DOENDDOCK$TOBJECT$LONGINT$LONGINT
	.quad	CONTROLS$_$TCONTROL_$__$$_DOENDDRAG$TOBJECT$LONGINT$LONGINT
	.quad	CONTROLS$_$TCONTROL_$__$$_DOSTARTDOCK$TDRAGOBJECT
	.quad	CONTROLS$_$TCONTROL_$__$$_DOSTARTDRAG$TDRAGOBJECT
	.quad	CONTROLS$_$TCONTROL_$__$$_DRAGCANCELED
	.quad	CONTROLS$_$TCONTROL_$__$$_DRAGOVER$TOBJECT$LONGINT$LONGINT$TDRAGSTATE$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_POSITIONDOCKRECT$TDRAGDOCKOBJECT
	.quad	CONTROLS$_$TCONTROL_$__$$_SETDRAGMODE$TDRAGMODE
	.quad	FORMS$_$TCUSTOMFORM_$__$$_GETDEFAULTDOCKCAPTION$$ANSISTRING
	.quad	CONTROLS$_$TCONTROL_$__$$_CLICK
	.quad	CONTROLS$_$TCONTROL_$__$$_DBLCLICK
	.quad	CONTROLS$_$TCONTROL_$__$$_TRIPLECLICK
	.quad	CONTROLS$_$TCONTROL_$__$$_QUADCLICK
	.quad	CONTROLS$_$TCONTROL_$__$$_MOUSEDOWN$TMOUSEBUTTON$TSHIFTSTATE$LONGINT$LONGINT
	.quad	CONTROLS$_$TCONTROL_$__$$_MOUSEMOVE$TSHIFTSTATE$LONGINT$LONGINT
	.quad	CONTROLS$_$TCONTROL_$__$$_MOUSEUP$TMOUSEBUTTON$TSHIFTSTATE$LONGINT$LONGINT
	.quad	CONTROLS$_$TCONTROL_$__$$_MOUSEENTER
	.quad	CONTROLS$_$TCONTROL_$__$$_MOUSELEAVE
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DIALOGCHAR$TLMKEY$$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_GETPALETTE$$QWORD
	.quad	CONTROLS$_$TWINCONTROL_$__$$_CHILDCLASSALLOWED$TCLASS$$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_LOADEDALL
	.quad	CONTROLS$_$TWINCONTROL_$__$$_FORMENDUPDATED
	.quad	CONTROLS$_$TCUSTOMCONTROL_$__$$_FONTCHANGED$TOBJECT
	.quad	CONTROLS$_$TCONTROL_$__$$_PARENTFONTCHANGED
	.quad	CONTROLS$_$TCONTROL_$__$$_GETACTION$$TBASICACTION
	.quad	CONTROLS$_$TWINCONTROL_$__$$_REALGETTEXT$$TTRANSLATESTRING
	.quad	CONTROLS$_$TWINCONTROL_$__$$_REALSETTEXT$TTRANSLATESTRING
	.quad	CONTROLS$_$TCONTROL_$__$$_TEXTCHANGED
	.quad	CONTROLS$_$TCONTROL_$__$$_GETCACHEDTEXT$TTRANSLATESTRING$$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_SETACTION$TBASICACTION
	.quad	CONTROLS$_$TCUSTOMCONTROL_$__$$_SETCOLOR$TGRAPHICSCOLOR
	.quad	CONTROLS$_$TCONTROL_$__$$_SETENABLED$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_SETHINT$TTRANSLATESTRING
	.quad	FORMS$_$TCUSTOMFORM_$__$$_SETPARENT$TWINCONTROL
	.quad	FORMS$_$TCUSTOMFORM_$__$$_WNDPROC$TMESSAGE
	.quad	CONTROLS$_$TWINCONTROL_$__$$_PARENTFORMHANDLEINITIALIZED
	.quad	CONTROLS$_$TWINCONTROL_$__$$_GETMOUSECAPTURE$$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_CAPTURECHANGED
	.quad	CONTROLS$_$TWINCONTROL_$__$$_CANTAB$$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_GETDEVICECONTEXT$QWORD$$QWORD
	.quad	CONTROLS$_$TCONTROL_$__$$_GETENABLED$$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_GETPOPUPMENU$$TPOPUPMENU
	.quad	CONTROLS$_$TCONTROL_$__$$_DOONSHOWHINT$PHINTINFO
	.quad	CONTROLS$_$TCONTROL_$__$$_DOMOUSEWHEEL$TSHIFTSTATE$LONGINT$TPOINT$$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_DOMOUSEWHEELDOWN$TSHIFTSTATE$TPOINT$$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_DOMOUSEWHEELUP$TSHIFTSTATE$TPOINT$$BOOLEAN
	.quad	FORMS$_$TCUSTOMFORM_$__$$_VISIBLECHANGING
	.quad	FORMS$_$TCUSTOMFORM_$__$$_VISIBLECHANGED
	.quad	CONTROLS$_$TCONTROL_$__$$_ENABLEDCHANGING
	.quad	CONTROLS$_$TCONTROL_$__$$_ENABLEDCHANGED
	.quad	CONTROLS$_$TCONTROL_$__$$_DOCONTEXTPOPUP$TPOINT$BOOLEAN
	.quad	FORMS$_$TCUSTOMFORM_$__$$_SETZORDER$BOOLEAN
	.quad	FORMS$_$TCUSTOMFORM_$__$$_GETCONTROLCLASSDEFAULTSIZE$$TSIZE
	.quad	FORMS$_$TCUSTOMFORM_$__$$_COLORISSTORED$$BOOLEAN
	.quad	FORMS$_$TCUSTOMDESIGNCONTROL_$__$$_DOAUTOADJUSTLAYOUT$TLAYOUTADJUSTMENTPOLICY$DOUBLE$DOUBLE
	.quad	CONTROLS$_$TCONTROL_$__$$_GETACTIONLINKCLASS$$TCONTROLACTIONLINKCLASS
	.quad	CONTROLS$_$TCONTROL_$__$$_ACTIONCHANGE$TOBJECT$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_DRAGDROP$TOBJECT$LONGINT$LONGINT
	.quad	FORMS$_$TCUSTOMFORM_$__$$_DOCK$TWINCONTROL$TRECT
	.quad	CONTROLS$_$TCONTROL_$__$$_MANUALDOCK$TWINCONTROL$TCONTROL$TALIGN$BOOLEAN$$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_MANUALFLOAT$TRECT$BOOLEAN$$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_CREATEACCESSIBLEOBJECT$$TLAZACCESSIBLEOBJECT
	.quad	CONTROLS$_$TCONTROL_$__$$_GETSELECTEDCHILDACCESSIBLEOBJECT$$TLAZACCESSIBLEOBJECT
	.quad	CONTROLS$_$TCONTROL_$__$$_GETCHILDACCESSIBLEOBJECTATPOS$TPOINT$$TLAZACCESSIBLEOBJECT
	.quad	CONTROLS$_$TCONTROL_$__$$_ADJUSTSIZE
	.quad	CONTROLS$_$TWINCONTROL_$__$$_AUTOSIZEPHASES$$TCONTROLAUTOSIZEPHASES
	.quad	CONTROLS$_$TWINCONTROL_$__$$_AUTOSIZEDELAYED$$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_AUTOSIZEDELAYEDREPORT$$ANSISTRING
	.quad	FORMS$_$TCUSTOMFORM_$__$$_AUTOSIZEDELAYEDHANDLE$$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_SETBOUNDS$LONGINT$LONGINT$LONGINT$LONGINT
	.quad	CONTROLS$_$TCONTROL_$__$$_SETINITIALBOUNDS$LONGINT$LONGINT$LONGINT$LONGINT
	.quad	CONTROLS$_$TCONTROL_$__$$_SETBOUNDSKEEPBASE$LONGINT$LONGINT$LONGINT$LONGINT
	.quad	FORMS$_$TCUSTOMFORM_$__$$_GETPREFERREDSIZE$LONGINT$LONGINT$BOOLEAN$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_GETDEFAULTCOLOR$TDEFAULTCOLORTYPE$$TGRAPHICSCOLOR
	.quad	CONTROLS$_$TCONTROL_$__$$_INVALIDATEPREFERREDSIZE
	.quad	CONTROLS$_$TCONTROL_$__$$_UPDATEBASEBOUNDS$BOOLEAN$BOOLEAN$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_WRITELAYOUTDEBUGREPORT$ANSISTRING
	.quad	FORMS$_$TCUSTOMDESIGNCONTROL_$__$$_AUTOADJUSTLAYOUT$crc5F4A49A3
	.quad	CONTROLS$_$TCONTROL_$__$$_SHOULDAUTOADJUST$BOOLEAN$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_FIXDESIGNFONTSPPI$LONGINT
	.quad	CONTROLS$_$TCONTROL_$__$$_SCALEFONTSPPI$DOUBLE
	.quad	CONTROLS$_$TCONTROL_$__$$_EDITINGDONE
	.quad	CONTROLS$_$TCONTROL_$__$$_EXECUTEDEFAULTACTION
	.quad	CONTROLS$_$TCONTROL_$__$$_EXECUTECANCELACTION
	.quad	CONTROLS$_$TCONTROL_$__$$_ISPARENTOF$TCONTROL$$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_ISVISIBLE$$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_ISCONTROLVISIBLE$$BOOLEAN
	.quad	FORMS$_$TCUSTOMFORM_$__$$_FORMISUPDATING$$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_REPAINT
	.quad	CONTROLS$_$TWINCONTROL_$__$$_INVALIDATE
	.quad	CONTROLS$_$TCONTROL_$__$$_CHECKNEWPARENT$TWINCONTROL
	.quad	CONTROLS$_$TWINCONTROL_$__$$_SETTEMPCURSOR$TCURSOR
	.quad	CONTROLS$_$TCONTROL_$__$$_UPDATEROLESFORFORM
	.quad	CONTROLS$_$TCONTROL_$__$$_ACTIVEDEFAULTCONTROLCHANGED$TCONTROL
	.quad	CONTROLS$_$TCONTROL_$__$$_GETTEXTBUF$PCHAR$LONGINT$$LONGINT
	.quad	CONTROLS$_$TWINCONTROL_$__$$_GETTEXTLEN$$LONGINT
	.quad	CONTROLS$_$TCONTROL_$__$$_SETTEXTBUF$PCHAR
	.quad	CONTROLS$_$TWINCONTROL_$__$$_GETCHILDRENRECT$BOOLEAN$$TRECT
	.quad	CONTROLS$_$TWINCONTROL_$__$$_UPDATE
	.quad	CONTROLS$_$TCONTROL_$__$$_HANDLEOBJECTSHOULDBEVISIBLE$$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_PARENTHANDLESALLOCATED$$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_INITIATEACTION
	.quad	CONTROLS$_$TCONTROL_$__$$_SHOWHELP
	.quad	CONTROLS$_$TCONTROL_$__$$_USERIGHTTOLEFTALIGNMENT$$BOOLEAN
	.quad	CONTROLS$_$TCONTROL_$__$$_USERIGHTTOLEFTREADING$$BOOLEAN
	.quad	FORMS$_$TCUSTOMFORM_$__$$_ADJUSTCLIENTRECT$TRECT
	.quad	FORMS$_$TSCROLLINGWINCONTROL_$__$$_ALIGNCONTROLS$TCONTROL$TRECT
	.quad	CONTROLS$_$TWINCONTROL_$__$$_CUSTOMALIGNINSERTBEFORE$TCONTROL$TCONTROL$$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_CUSTOMALIGNPOSITION$crc472CC6C4
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DOALIGNCHILDCONTROLS$TALIGN$TCONTROL$TFPLIST$TRECT$$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DOCHILDSIZINGCHANGE$TOBJECT
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DOSENDSHOWHIDETOINTERFACE
	.quad	CONTROLS$_$TWINCONTROL_$__$$_CONTROLSALIGNED
	.quad	FORMS$_$TCUSTOMFORM_$__$$_DOSENDBOUNDSTOINTERFACE
	.quad	CONTROLS$_$TWINCONTROL_$__$$_REALIZEBOUNDS
	.quad	FORMS$_$TCUSTOMFORM_$__$$_ALLAUTOSIZED
	.quad	FORMS$_$TSCROLLINGWINCONTROL_$__$$_GETPREFERREDSIZECLIENTFRAME$LONGINT$LONGINT
	.quad	FORMS$_$TCUSTOMFORM_$__$$_PAINTWINDOW$QWORD
	.quad	CONTROLS$_$TWINCONTROL_$__$$_CREATEBRUSH
	.quad	CONTROLS$_$TWINCONTROL_$__$$_SCALECONTROLS$LONGINT$LONGINT
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DODOCKCLIENTMSG$TDRAGDOCKOBJECT$TPOINT$$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DOUNDOCKCLIENTMSG$TCONTROL$TCONTROL$$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DOADDDOCKCLIENT$TCONTROL$TRECT
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DOCKOVER$TDRAGDOCKOBJECT$LONGINT$LONGINT$TDRAGSTATE$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DODOCKOVER$TDRAGDOCKOBJECT$LONGINT$LONGINT$TDRAGSTATE$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DOREMOVEDOCKCLIENT$TCONTROL
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DOUNDOCK$TWINCONTROL$TCONTROL$BOOLEAN$$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_GETSITEINFO$TCONTROL$TRECT$TPOINT$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_RELOADDOCKEDCONTROL$ANSISTRING$TCONTROL
	.quad	CONTROLS$_$TWINCONTROL_$__$$_CREATEDOCKMANAGER$$TDOCKMANAGER
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DOGETDOCKCAPTION$TCONTROL$ANSISTRING
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DOENTER
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DOEXIT
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DOUTF8KEYPRESS$TUTF8CHAR$$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_CHILDKEY$TLMKEY$$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_CONTROLKEYDOWN$WORD$TSHIFTSTATE
	.quad	CONTROLS$_$TWINCONTROL_$__$$_CONTROLKEYUP$WORD$TSHIFTSTATE
	.quad	CONTROLS$_$TWINCONTROL_$__$$_KEYDOWN$WORD$TSHIFTSTATE
	.quad	CONTROLS$_$TWINCONTROL_$__$$_KEYDOWNBEFOREINTERFACE$WORD$TSHIFTSTATE
	.quad	CONTROLS$_$TWINCONTROL_$__$$_KEYDOWNAFTERINTERFACE$WORD$TSHIFTSTATE
	.quad	CONTROLS$_$TWINCONTROL_$__$$_KEYPRESS$CHAR
	.quad	CONTROLS$_$TWINCONTROL_$__$$_KEYUP$WORD$TSHIFTSTATE
	.quad	CONTROLS$_$TWINCONTROL_$__$$_KEYUPBEFOREINTERFACE$WORD$TSHIFTSTATE
	.quad	CONTROLS$_$TWINCONTROL_$__$$_KEYUPAFTERINTERFACE$WORD$TSHIFTSTATE
	.quad	CONTROLS$_$TWINCONTROL_$__$$_UTF8KEYPRESS$TUTF8CHAR
	.quad	CONTROLS$_$TWINCONTROL_$__$$_CREATEHANDLE
	.quad	FORMS$_$TCUSTOMFORM_$__$$_CREATEPARAMS$TCREATEPARAMS
	.quad	FORMS$_$TFORM_$__$$_CREATEWND
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DESTROYHANDLE
	.quad	FORMS$_$TCUSTOMFORM_$__$$_DESTROYWND
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DOFLIPCHILDREN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_FINALIZEWND
	.quad	FORMS$_$TCUSTOMFORM_$__$$_INITIALIZEWND
	.quad	FORMS$_$TCUSTOMFORM_$__$$_CHILDHANDLESCREATED
	.quad	CONTROLS$_$TWINCONTROL_$__$$_SETBORDERSTYLE$TBORDERSTYLE
	.quad	CONTROLS$_$TWINCONTROL_$__$$_SHOWCONTROL$TCONTROL
	.quad	FORMS$_$TCUSTOMFORM_$__$$_UPDATESHOWING
	.quad	CONTROLS$_$TWINCONTROL_$__$$_WSSETTEXT$ANSISTRING
	.quad	FORMS$_$TSCROLLINGWINCONTROL_$__$$_SCROLLBY$LONGINT$LONGINT
	.quad	CONTROLS$_$TWINCONTROL_$__$$_DOCKDROP$TDRAGDOCKOBJECT$LONGINT$LONGINT
	.quad	FORMS$_$TCUSTOMFORM_$__$$_CANFOCUS$$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_CANSETFOCUS$$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_FOCUSED$$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_PERFORMTAB$BOOLEAN$$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_ADDCONTROL
	.quad	CONTROLS$_$TWINCONTROL_$__$$_INSERTCONTROL$TCONTROL$LONGINT
	.quad	CONTROLS$_$TWINCONTROL_$__$$_REMOVECONTROL$TCONTROL
	.quad	FORMS$_$TCUSTOMFORM_$__$$_SETFOCUS
	.quad	CONTROLS$_$TWINCONTROL_$__$$_FLIPCHILDREN$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_GETDOCKCAPTION$TCONTROL$$ANSISTRING
	.quad	FORMS$_$TCUSTOMFORM_$__$$_UPDATEDOCKCAPTION$TCONTROL
	.quad	CONTROLS$_$TWINCONTROL_$__$$_GETTABORDERLIST$TFPLIST
	.quad	CONTROLS$_$TWINCONTROL_$__$$_ERASEBACKGROUND$QWORD
	.quad	CONTROLS$_$TWINCONTROL_$__$$_INTFUTF8KEYPRESS$TUTF8CHAR$LONGINT$BOOLEAN$$BOOLEAN
	.quad	CONTROLS$_$TWINCONTROL_$__$$_INTFGETDROPFILESTARGET$$TWINCONTROL
	.quad	CONTROLS$_$TWINCONTROL_$__$$_PAINTTO$QWORD$LONGINT$LONGINT
	.quad	CONTROLS$_$TCUSTOMCONTROL_$__$$_PAINT
	.quad	FORMS$_$TSCROLLINGWINCONTROL_$__$$_AUTOSCROLLENABLED$$BOOLEAN
	.quad	FORMS$_$TSCROLLINGWINCONTROL_$__$$_CALCULATEAUTORANGES
	.quad	FORMS$_$TSCROLLINGWINCONTROL_$__$$_COMPUTESCROLLBARS
	.quad	FORMS$_$TCUSTOMFORM_$__$$_SETAUTOSCROLL$BOOLEAN
	.quad	FORMS$_$TCUSTOMFORM_$__$$_RESIZING$TWINDOWSTATE
	.quad	FORMS$_$TCUSTOMFORM_$__$$_SETSCALED$BOOLEAN
	.quad	FORMS$_$TCUSTOMFORM_$__$$_DOSHOWWINDOW
	.quad	FORMS$_$TCUSTOMFORM_$__$$_ACTIVATE
	.quad	FORMS$_$TCUSTOMFORM_$__$$_ACTIVECHANGED
	.quad	FORMS$_$TCUSTOMFORM_$__$$_DEACTIVATE
	.quad	FORMS$_$TCUSTOMFORM_$__$$_DOCLOSE$TCLOSEACTION
	.quad	FORMS$_$TCUSTOMFORM_$__$$_DOCREATE
	.quad	FORMS$_$TCUSTOMFORM_$__$$_DODESTROY
	.quad	FORMS$_$TCUSTOMFORM_$__$$_DOHIDE
	.quad	FORMS$_$TCUSTOMFORM_$__$$_DOSHOW
	.quad	FORMS$_$TCUSTOMFORM_$__$$_HANDLECREATEEXCEPTION$$BOOLEAN
	.quad	FORMS$_$TCUSTOMFORM_$__$$_HANDLEDESTROYEXCEPTION$$BOOLEAN
	.quad	FORMS$_$TCUSTOMFORM_$__$$_HANDLESHOWHIDEEXCEPTION$$BOOLEAN
	.quad	FORMS$_$TCUSTOMFORM_$__$$_MOVETODEFAULTPOSITION
	.quad	FORMS$_$TCUSTOMFORM_$__$$_DOFIRSTSHOW
	.quad	FORMS$_$TCUSTOMFORM_$__$$_PROCESSRESOURCE
	.quad	FORMS$_$TCUSTOMFORM_$__$$_UPDATEACTIONS
	.quad	FORMS$_$TCUSTOMFORM_$__$$_CREATENEW$TCOMPONENT$LONGINT$$TCUSTOMFORM
	.quad	FORMS$_$TCUSTOMFORM_$__$$_CLOSEQUERY$$BOOLEAN
	.quad	FORMS$_$TCUSTOMFORM_$__$$_ISSHORTCUT$TLMKEY$$BOOLEAN
	.quad	FORMS$_$TCUSTOMFORM_$__$$_SETFOCUSEDCONTROL$TWINCONTROL$$BOOLEAN
	.quad	FORMS$_$TCUSTOMFORM_$__$$_SHOWMODAL$$LONGINT
	.quad	FORMS$_$TCUSTOMFORM_$__$$_WANTCHILDKEY$TCONTROL$TMESSAGE$$BOOLEAN
	.quad	FORMS$_$TCUSTOMFORM_$__$$_ACTIVEMDICHILD$$TCUSTOMFORM
	.quad	FORMS$_$TCUSTOMFORM_$__$$_GETMDICHILDREN$LONGINT$$TCUSTOMFORM
	.quad	FORMS$_$TCUSTOMFORM_$__$$_MDICHILDCOUNT$$LONGINT
	.quad	0
# [621] 
	.balign 8
.Ld32:
	.byte	6
	.ascii	"TForm1"
	.balign 8
.Ld33:
	.long	4
	.quad	.Ld34
	.quad	UNIT1$_$TFORM1_$__$$_BUTTON1CLICK$TOBJECT
	.quad	.Ld35
	.quad	UNIT1$_$TFORM1_$__$$_BUTTON2CLICK$TOBJECT
	.quad	.Ld36
	.quad	UNIT1$_$TFORM1_$__$$_FORMCLOSE$TOBJECT$TCLOSEACTION
	.quad	.Ld37
	.quad	UNIT1$_$TFORM1_$__$$_FORMCREATE$TOBJECT
	.balign 8
.Ld34:
	.byte	12
	.ascii	"Button1Click"
	.balign 8
.Ld35:
	.byte	12
	.ascii	"Button2Click"
	.balign 8
.Ld36:
	.byte	9
	.ascii	"FormClose"
	.balign 8
.Ld37:
	.byte	10
	.ascii	"FormCreate"
	.balign 8
.Ld38:
	.short	8
	.quad	.Ld39
	.quad	1896
	.short	1
	.byte	7
	.ascii	"Button1"
	.quad	1904
	.short	1
	.byte	7
	.ascii	"Button2"
	.quad	1912
	.short	2
	.byte	9
	.ascii	"CheckBox1"
	.quad	1920
	.short	3
	.byte	11
	.ascii	"OpenDialog1"
	.quad	1928
	.short	4
	.byte	12
	.ascii	"RadioButton1"
	.quad	1936
	.short	4
	.byte	12
	.ascii	"RadioButton2"
	.quad	1944
	.short	4
	.byte	12
	.ascii	"RadioButton3"
	.quad	1952
	.short	4
	.byte	12
	.ascii	"RadioButton4"
	.balign 8
.Ld39:
	.short	4
	.quad	VMT_$STDCTRLS_$$_TBUTTON
	.quad	VMT_$STDCTRLS_$$_TCHECKBOX
	.quad	VMT_$DIALOGS_$$_TOPENDIALOG
	.quad	VMT_$STDCTRLS_$$_TRADIOBUTTON
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .data.n_tc_$unit1_$$_fuck,"d"
	.balign 4
.globl	TC_$UNIT1_$$_FUCK
TC_$UNIT1_$$_FUCK:
	.long	0
# [39] fuck2:integer=0;

.section .data.n_tc_$unit1_$$_fuck2,"d"
	.balign 4
.globl	TC_$UNIT1_$$_FUCK2
TC_$UNIT1_$$_FUCK2:
	.long	0

.section .data.n_tc_$unit1_$$_song,"d"
	.balign 2
.globl	TC_$UNIT1_$$_SONG
TC_$UNIT1_$$_SONG:
	.short	0
# [42] songs:word=0;

.section .data.n_tc_$unit1_$$_songs,"d"
	.balign 2
.globl	TC_$UNIT1_$$_SONGS
TC_$UNIT1_$$_SONGS:
	.short	0

.section .data.n_tc_$unit1$_$tform1_$_button1click$tobject_$$_defaultsel,"d"
	.balign 4
TC_$UNIT1$_$TFORM1_$_BUTTON1CLICK$TOBJECT_$$_defaultsel:
	.long	0
# [66] selstart:integer=0;

.section .data.n_tc_$unit1$_$tform1_$_button1click$tobject_$$_defaultselstart,"d"
	.balign 4
TC_$UNIT1$_$TFORM1_$_BUTTON1CLICK$TOBJECT_$$_defaultselstart:
	.long	0
# [67] buf:array[0..25] of  byte;

.section .rodata.n__$UNIT1$_Ld1,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,7
.globl	_$UNIT1$_Ld1
_$UNIT1$_Ld1:
	.ascii	"d:\\sid\\\000"

.section .rodata.n__$UNIT1$_Ld2,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,2
.globl	_$UNIT1$_Ld2
_$UNIT1$_Ld2:
	.ascii	":\\\000"

.section .rodata.n__$UNIT1$_Ld3,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,5
.globl	_$UNIT1$_Ld3
_$UNIT1$_Ld3:
	.ascii	"[DIR]\000"

.section .rodata.n__$UNIT1$_Ld4,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,3
.globl	_$UNIT1$_Ld4
_$UNIT1$_Ld4:
	.ascii	"*.*\000"

.section .rodata.n__$UNIT1$_Ld5,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,5
.globl	_$UNIT1$_Ld5
_$UNIT1$_Ld5:
	.ascii	"*.sid\000"

.section .rodata.n__$UNIT1$_Ld6,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,5
.globl	_$UNIT1$_Ld6
_$UNIT1$_Ld6:
	.ascii	"*.dmp\000"

.section .rodata.n__$UNIT1$_Ld7,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$UNIT1$_Ld7
_$UNIT1$_Ld7:
	.ascii	"\\\000"

.section .rodata.n__$UNIT1$_Ld8,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,2
.globl	_$UNIT1$_Ld8
_$UNIT1$_Ld8:
	.ascii	"\\\\\000"

.section .rodata.n__$UNIT1$_Ld9,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,10
.globl	_$UNIT1$_Ld9
_$UNIT1$_Ld9:
	.ascii	"type: SDMP\000"

.section .rodata.n__$UNIT1$_Ld10,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,7
.globl	_$UNIT1$_Ld10
_$UNIT1$_Ld10:
	.ascii	"speed: \000"

.section .rodata.n__$UNIT1$_Ld11,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,3
.globl	_$UNIT1$_Ld11
_$UNIT1$_Ld11:
	.ascii	" Hz\000"

.section .rodata.n__$UNIT1$_Ld12,"d"
	.balign 8
.globl	_$UNIT1$_Ld12
_$UNIT1$_Ld12:
	.ascii	"                                 \000"

.section .rodata.n__$UNIT1$_Ld13,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,7
.globl	_$UNIT1$_Ld13
_$UNIT1$_Ld13:
	.ascii	"title: \000"

.section .rodata.n__$UNIT1$_Ld14,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,17
.globl	_$UNIT1$_Ld14
_$UNIT1$_Ld14:
	.ascii	"SIDCog DMP file, \000"

.section .rodata.n__$UNIT1$_Ld15,"d"
	.balign 8
.globl	_$UNIT1$_Ld15
_$UNIT1$_Ld15:
# value: 0d+1.9652000000000000E+004
	.byte	0,0,0,0,0,49,211,64

.section .rodata.n__$UNIT1$_Ld16,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,11
.globl	_$UNIT1$_Ld16
_$UNIT1$_Ld16:
	.ascii	"PSID file, \000"

.section .rodata.n__$UNIT1$_Ld17,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,29
.globl	_$UNIT1$_Ld17
_$UNIT1$_Ld17:
	.ascii	"type: RSID, not yet supported\000"

.section .rodata.n__$UNIT1$_Ld18,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,33
.globl	_$UNIT1$_Ld18
_$UNIT1$_Ld18:
	.ascii	"type: unknown, 50 Hz SDMP assumed\000"

.section .rodata.n__$UNIT1$_Ld19,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,22
.globl	_$UNIT1$_Ld19
_$UNIT1$_Ld19:
	.ascii	"SIDCog DMP file, 50 Hz\000"

.section .data.n_tc_$unit1$_$sidopen$longint_$$_defaultmagic,"d"
TC_$UNIT1$_$SIDOPEN$LONGINT_$$_defaultmagic:
	.byte	4
# [548] magic:string[4]='    ';
	.ascii	"    "
# [549] dump:word;

.section .rodata.n__$UNIT1$_Ld20,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,10
.globl	_$UNIT1$_Ld20
_$UNIT1$_Ld20:
	.ascii	"type: PSID\000"

.section .rodata.n__$UNIT1$_Ld21,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,9
.globl	_$UNIT1$_Ld21
_$UNIT1$_Ld21:
	.ascii	"version: \000"

.section .rodata.n__$UNIT1$_Ld22,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,8
.globl	_$UNIT1$_Ld22
_$UNIT1$_Ld22:
	.ascii	"offset: \000"

.section .rodata.n__$UNIT1$_Ld23,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,6
.globl	_$UNIT1$_Ld23
_$UNIT1$_Ld23:
	.ascii	"load: \000"

.section .rodata.n__$UNIT1$_Ld24,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,6
.globl	_$UNIT1$_Ld24
_$UNIT1$_Ld24:
	.ascii	"init: \000"

.section .rodata.n__$UNIT1$_Ld25,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,6
.globl	_$UNIT1$_Ld25
_$UNIT1$_Ld25:
	.ascii	"play: \000"

.section .rodata.n__$UNIT1$_Ld26,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,7
.globl	_$UNIT1$_Ld26
_$UNIT1$_Ld26:
	.ascii	"songs: \000"

.section .rodata.n__$UNIT1$_Ld27,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,11
.globl	_$UNIT1$_Ld27
_$UNIT1$_Ld27:
	.ascii	"startsong: \000"

.section .rodata.n__$UNIT1$_Ld28,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,8
.globl	_$UNIT1$_Ld28
_$UNIT1$_Ld28:
	.ascii	"author: \000"

.section .rodata.n__$UNIT1$_Ld29,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,11
.globl	_$UNIT1$_Ld29
_$UNIT1$_Ld29:
	.ascii	"copyright: \000"

.section .rodata.n__$UNIT1$_Ld30,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,7
.globl	_$UNIT1$_Ld30
_$UNIT1$_Ld30:
	.ascii	"flags: \000"

.section .rodata.n__$UNIT1$_Ld31,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,5
.globl	_$UNIT1$_Ld31
_$UNIT1$_Ld31:
	.ascii	"cia: \000"
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .data.n_RTTI_$UNIT1_$$_DEF11,"d"
	.balign 8
.globl	RTTI_$UNIT1_$$_DEF11
RTTI_$UNIT1_$$_DEF11:
	.byte	12
	.ascii	"\000"
	.quad	16,2
	.quad	RTTI_$SYSTEM_$$_ANSISTRING
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$UNIT1_$$_DEF10,"d"
	.balign 8
.globl	RTTI_$UNIT1_$$_DEF10
RTTI_$UNIT1_$$_DEF10:
	.byte	12
	.ascii	"\000"
	.quad	16016,2002
	.quad	RTTI_$SYSTEM_$$_ANSISTRING
	.byte	2
	.quad	RTTI_$SYSTEM_$$_SMALLINT
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_RTTI_$UNIT1_$$_DEF12,"d"
	.balign 8
.globl	RTTI_$UNIT1_$$_DEF12
RTTI_$UNIT1_$$_DEF12:
	.byte	12
	.ascii	"\000"
	.quad	8008,1001
	.quad	RTTI_$SYSTEM_$$_ANSISTRING
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SMALLINT

.section .data.n_RTTI_$UNIT1_$$_DEF293,"d"
	.balign 8
.globl	RTTI_$UNIT1_$$_DEF293
RTTI_$UNIT1_$$_DEF293:
	.byte	12
	.ascii	"\000"
	.quad	24,3
	.quad	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT

.section .data.n_RTTI_$UNIT1_$$_DEF296,"d"
	.balign 8
.globl	RTTI_$UNIT1_$$_DEF296
RTTI_$UNIT1_$$_DEF296:
	.byte	12
	.ascii	"\000"
	.quad	24,3
	.quad	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT

.section .data.n_RTTI_$UNIT1_$$_DEF297,"d"
	.balign 8
.globl	RTTI_$UNIT1_$$_DEF297
RTTI_$UNIT1_$$_DEF297:
	.byte	12
	.ascii	"\000"
	.quad	24,3
	.quad	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT

.section .data.n_INIT_$UNIT1_$$_TFORM1,"d"
	.balign 8
.globl	INIT_$UNIT1_$$_TFORM1
INIT_$UNIT1_$$_TFORM1:
	.byte	15,6
	.ascii	"TForm1"
	.long	8,0

.section .data.n_RTTI_$UNIT1_$$_TFORM1,"d"
	.balign 8
.globl	RTTI_$UNIT1_$$_TFORM1
RTTI_$UNIT1_$$_TFORM1:
	.byte	15,6
	.ascii	"TForm1"
	.quad	VMT_$UNIT1_$$_TFORM1
	.quad	RTTI_$FORMS_$$_TFORM
	.short	103
	.byte	5
	.ascii	"Unit1"
	.short	0
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc28:
	.long	.Lc30-.Lc29
.Lc29:
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
.Lc30:
	.long	.Lc32-.Lc31
.Lc31:
	.secrel32	.Lc28
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
.Lc32:
	.long	.Lc34-.Lc33
.Lc33:
	.secrel32	.Lc28
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
.Lc34:
	.long	.Lc36-.Lc35
.Lc35:
	.secrel32	.Lc28
	.quad	.Lc11
	.quad	.Lc12-.Lc11
	.byte	4
	.long	.Lc13-.Lc11
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc36:
	.long	.Lc38-.Lc37
.Lc37:
	.secrel32	.Lc28
	.quad	.Lc14
	.quad	.Lc15-.Lc14
	.balign 4,0
.Lc38:
	.long	.Lc40-.Lc39
.Lc39:
	.secrel32	.Lc28
	.quad	.Lc16
	.quad	.Lc17-.Lc16
	.balign 4,0
.Lc40:
	.long	.Lc42-.Lc41
.Lc41:
	.secrel32	.Lc28
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
.Lc42:
	.long	.Lc44-.Lc43
.Lc43:
	.secrel32	.Lc28
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
.Lc44:
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
# [52] procedure sidopen (fh:integer);     forward;
	.ascii	"unit1.pas\000"
	.ascii	"Free Pascal 3.0.4 2017/12/03\000"
	.ascii	"D:/Programowanie/20180824 retro-fm/\000"
	.byte	9
	.byte	3
	.secrel32	.Ldebug_line0
	.quad	DEBUGSTART_$UNIT1
	.quad	DEBUGEND_$UNIT1
# Syms - Begin unit UNIT1 has index 10
# Symbol UNIT1
# Symbol SYSTEM
# Symbol OBJPAS
# Symbol CLASSES
# Symbol SYSUTILS
# Symbol FILEUTIL
# Symbol FORMS
# Symbol CONTROLS
# Symbol GRAPHICS
# Symbol DIALOGS
# Symbol STDCTRLS
# Symbol UMAIN
# Symbol RETRO
# Symbol SDL2
# Symbol UNIT6502
# Symbol WINDOWS
# Symbol UNIT65032
# Symbol MIDI
# Symbol SYNTHCONTROL
# Symbol TFORM1
# Symbol FORM1
	.uleb128	2
	.ascii	"FORM1\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT1_$$_FORM1
	.long	.La1-.Ldebug_info0
# Symbol RAM6502
	.uleb128	2
	.ascii	"RAM6502\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT1_$$_RAM6502
	.long	.La4-.Ldebug_info0
# Symbol FUCK
	.uleb128	2
	.ascii	"FUCK\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$UNIT1_$$_FUCK
	.long	.La6-.Ldebug_info0
# Symbol FUCK2
	.uleb128	2
	.ascii	"FUCK2\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$UNIT1_$$_FUCK2
	.long	.La6-.Ldebug_info0
# Symbol CIA
	.uleb128	2
	.ascii	"CIA\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT1_$$_CIA
	.long	.La6-.Ldebug_info0
# Symbol SONG
	.uleb128	2
	.ascii	"SONG\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$UNIT1_$$_SONG
	.long	.La8-.Ldebug_info0
# Symbol SONGS
	.uleb128	2
	.ascii	"SONGS\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$UNIT1_$$_SONGS
	.long	.La8-.Ldebug_info0
# Symbol INIT
	.uleb128	2
	.ascii	"INIT\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT1_$$_INIT
	.long	.La8-.Ldebug_info0
# Symbol TITLE
	.uleb128	2
	.ascii	"TITLE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT1_$$_TITLE
	.long	.La10-.Ldebug_info0
# Symbol AUTHOR
	.uleb128	2
	.ascii	"AUTHOR\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT1_$$_AUTHOR
	.long	.La10-.Ldebug_info0
# Symbol COPYRIGHT
	.uleb128	2
	.ascii	"COPYRIGHT\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT1_$$_COPYRIGHT
	.long	.La10-.Ldebug_info0
# Symbol SC
	.uleb128	2
	.ascii	"SC\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT1_$$_SC
	.long	.La12-.Ldebug_info0
# Syms - End unit UNIT1 has index 10
# Syms - Begin Staticsymtable
# Symbol UNIT2
# Symbol UNIT1_$$_init$
# Symbol SIDOPEN
# Syms - End Staticsymtable
# Procdef $fin$3(<^untyped>) is nested;
	.uleb128	3
	.ascii	"fin$3\000"
	.byte	1
	.byte	65
	.quad	UNIT1$_$TFORM1_$_BUTTON1CLICK$TOBJECT_$$_fin$3
	.quad	.Lt1
# Symbol parentfp
	.uleb128	4
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La15-.Ldebug_info0
	.byte	0
# Procdef sidopen(LongInt);
	.uleb128	5
	.ascii	"SIDOPEN\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT1_$$_SIDOPEN$LONGINT
	.quad	.Lt2
# Symbol FH
	.uleb128	4
	.ascii	"FH\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La6-.Ldebug_info0
# Symbol I
	.uleb128	6
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La6-.Ldebug_info0
# Symbol SPEED
	.uleb128	6
	.ascii	"SPEED\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La17-.Ldebug_info0
# Symbol VERSION
	.uleb128	6
	.ascii	"VERSION\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La8-.Ldebug_info0
# Symbol OFFSET
	.uleb128	6
	.ascii	"OFFSET\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La8-.Ldebug_info0
# Symbol LOAD
	.uleb128	6
	.ascii	"LOAD\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La8-.Ldebug_info0
# Symbol STARTSONG
	.uleb128	6
	.ascii	"STARTSONG\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La8-.Ldebug_info0
# Symbol FLAGS
	.uleb128	6
	.ascii	"FLAGS\000"
	.byte	2
	.byte	118
	.sleb128	-48
	.long	.La8-.Ldebug_info0
# Symbol MAGIC
	.uleb128	6
	.ascii	"MAGIC\000"
	.byte	2
	.byte	118
	.sleb128	-56
	.long	.La19-.Ldebug_info0
# Symbol defaultmagic
	.uleb128	6
	.ascii	"defaultmagic\000"
	.byte	9
	.byte	3
	.quad	TC_$UNIT1$_$SIDOPEN$LONGINT_$$_defaultmagic
	.long	.La19-.Ldebug_info0
# Symbol DUMP
	.uleb128	6
	.ascii	"DUMP\000"
	.byte	2
	.byte	118
	.sleb128	-64
	.long	.La8-.Ldebug_info0
# Symbol IL
	.uleb128	6
	.ascii	"IL\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La21-.Ldebug_info0
# Symbol B
	.uleb128	6
	.ascii	"B\000"
	.byte	3
	.byte	118
	.sleb128	-72
	.long	.La21-.Ldebug_info0
# Symbol fin$4
# Definition ShortString
.La19:
	.uleb128	7
	.ascii	"ShortString\000"
	.uleb128	5
	.uleb128	8
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La21-.Ldebug_info0
	.uleb128	8
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La23-.Ldebug_info0
	.byte	0
.La23:
	.uleb128	9
	.uleb128	5
	.uleb128	1
	.long	.La24-.Ldebug_info0
	.uleb128	10
	.uleb128	1
	.uleb128	4
	.long	.La21-.Ldebug_info0
	.byte	0
.La20:
	.uleb128	11
	.long	.La19-.Ldebug_info0
	.byte	0
# Procdef $fin$4(<^untyped>) is nested;
	.uleb128	3
	.ascii	"fin$4\000"
	.byte	1
	.byte	65
	.quad	UNIT1$_$SIDOPEN$LONGINT_$$_fin$4
	.quad	.Lt3
# Symbol parentfp
	.uleb128	4
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La15-.Ldebug_info0
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition Byte
.La21:
	.uleb128	12
	.ascii	"BYTE\000"
	.long	.La26-.Ldebug_info0
.La26:
	.uleb128	13
	.ascii	"BYTE\000"
	.byte	7
	.byte	1
.La22:
	.uleb128	11
	.long	.La21-.Ldebug_info0
# Definition Word
.La8:
	.uleb128	12
	.ascii	"WORD\000"
	.long	.La27-.Ldebug_info0
.La27:
	.uleb128	13
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La9:
	.uleb128	11
	.long	.La8-.Ldebug_info0
# Definition LongWord
.La17:
	.uleb128	12
	.ascii	"LONGWORD\000"
	.long	.La28-.Ldebug_info0
.La28:
	.uleb128	13
	.ascii	"LONGWORD\000"
	.byte	7
	.byte	4
.La18:
	.uleb128	11
	.long	.La17-.Ldebug_info0
# Definition LongInt
.La6:
	.uleb128	12
	.ascii	"LONGINT\000"
	.long	.La29-.Ldebug_info0
.La29:
	.uleb128	13
	.ascii	"LONGINT\000"
	.byte	5
	.byte	4
.La7:
	.uleb128	11
	.long	.La6-.Ldebug_info0
# Definition Char
.La24:
	.uleb128	12
	.ascii	"CHAR\000"
	.long	.La30-.Ldebug_info0
.La30:
	.uleb128	13
	.ascii	"Char\000"
	.byte	8
	.byte	1
.La25:
	.uleb128	11
	.long	.La24-.Ldebug_info0
# Definition ^untyped
.La15:
	.uleb128	12
	.ascii	"parentfp_void_pointer\000"
	.long	.La31-.Ldebug_info0
.La31:
	.uleb128	14
.La16:
	.uleb128	11
	.long	.La15-.Ldebug_info0
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
# Defs - Begin unit UNIT65032 has index 14
# Defs - End unit UNIT65032 has index 14
# Defs - Begin unit SYNTHCONTROL has index 17
# Definition TSynthCtrl
.La12:
	.uleb128	12
	.ascii	"TSYNTHCTRL\000"
	.long	.La32-.Ldebug_info0
.La32:
	.uleb128	15
	.long	.La14-.Ldebug_info0
.La14:
	.uleb128	16
	.ascii	"TSYNTHCTRL\000"
	.uleb128	88
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La35-.Ldebug_info0
# Procdef Execute(<TSynthCtrl>);
	.uleb128	18
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
# Symbol this
	.uleb128	19
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	0
	.byte	1
	.long	.La12-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TSynthCtrl>;<Pointer>;Boolean);
	.uleb128	20
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La12-.Ldebug_info0
# Symbol this
	.uleb128	19
	.ascii	"this\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.byte	1
	.long	.La12-.Ldebug_info0
# Symbol vmt
	.uleb128	4
	.ascii	"vmt\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La36-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	4
	.ascii	"CREATESUSPENDED\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La38-.Ldebug_info0
	.byte	0
	.byte	0
.La13:
	.uleb128	11
	.long	.La12-.Ldebug_info0
# Defs - End unit SYNTHCONTROL has index 17
# Defs - Begin unit UNIT2 has index 16
# Defs - End unit UNIT2 has index 16
# Defs - Begin unit UNIT1 has index 10
# Definition TForm1
.La1:
	.uleb128	12
	.ascii	"TFORM1\000"
	.long	.La40-.Ldebug_info0
.La40:
	.uleb128	15
	.long	.La3-.Ldebug_info0
.La3:
	.uleb128	16
	.ascii	"TFORM1\000"
	.uleb128	1960
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La43-.Ldebug_info0
	.uleb128	8
	.ascii	"BUTTON1\000"
	.byte	3
	.byte	35
	.uleb128	1896
	.long	.La44-.Ldebug_info0
	.uleb128	8
	.ascii	"BUTTON2\000"
	.byte	3
	.byte	35
	.uleb128	1904
	.long	.La44-.Ldebug_info0
	.uleb128	8
	.ascii	"CHECKBOX1\000"
	.byte	3
	.byte	35
	.uleb128	1912
	.long	.La47-.Ldebug_info0
	.uleb128	8
	.ascii	"OPENDIALOG1\000"
	.byte	3
	.byte	35
	.uleb128	1920
	.long	.La50-.Ldebug_info0
	.uleb128	8
	.ascii	"RADIOBUTTON1\000"
	.byte	3
	.byte	35
	.uleb128	1928
	.long	.La53-.Ldebug_info0
	.uleb128	8
	.ascii	"RADIOBUTTON2\000"
	.byte	3
	.byte	35
	.uleb128	1936
	.long	.La53-.Ldebug_info0
	.uleb128	8
	.ascii	"RADIOBUTTON3\000"
	.byte	3
	.byte	35
	.uleb128	1944
	.long	.La53-.Ldebug_info0
	.uleb128	8
	.ascii	"RADIOBUTTON4\000"
	.byte	3
	.byte	35
	.uleb128	1952
	.long	.La53-.Ldebug_info0
# Procdef Button1Click(<TForm1>;TObject);
	.uleb128	5
	.ascii	"BUTTON1CLICK\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT1$_$TFORM1_$__$$_BUTTON1CLICK$TOBJECT
	.quad	.Lt4
# Symbol this
	.uleb128	19
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	0
	.byte	1
	.long	.La1-.Ldebug_info0
# Symbol SENDER
	.uleb128	4
	.ascii	"SENDER\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La56-.Ldebug_info0
# Symbol P101
# Symbol S
	.uleb128	6
	.ascii	"S\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La59-.Ldebug_info0
# Symbol CURRENTDIR
	.uleb128	6
	.ascii	"CURRENTDIR\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La59-.Ldebug_info0
# Symbol CURRENTDIR2
	.uleb128	6
	.ascii	"CURRENTDIR2\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La59-.Ldebug_info0
# Symbol SR
	.uleb128	6
	.ascii	"SR\000"
	.byte	3
	.byte	118
	.sleb128	-664
	.long	.La61-.Ldebug_info0
# Symbol FILENAMES
	.uleb128	6
	.ascii	"FILENAMES\000"
	.byte	4
	.byte	118
	.sleb128	-16680
	.long	.La63-.Ldebug_info0
# Symbol DIRECTORIES
# Symbol L
	.uleb128	6
	.ascii	"L\000"
	.byte	2
	.byte	144
	.uleb128	15
	.long	.La6-.Ldebug_info0
# Symbol I
	.uleb128	6
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La6-.Ldebug_info0
# Symbol J
	.uleb128	6
	.ascii	"J\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La6-.Ldebug_info0
# Symbol ILF
	.uleb128	6
	.ascii	"ILF\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La6-.Ldebug_info0
# Symbol ILD
	.uleb128	6
	.ascii	"ILD\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La6-.Ldebug_info0
# Symbol ILD2
# Symbol ILD3
# Symbol SEL
	.uleb128	6
	.ascii	"SEL\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La6-.Ldebug_info0
# Symbol defaultsel
	.uleb128	6
	.ascii	"defaultsel\000"
	.byte	9
	.byte	3
	.quad	TC_$UNIT1$_$TFORM1_$_BUTTON1CLICK$TOBJECT_$$_defaultsel
	.long	.La6-.Ldebug_info0
# Symbol SELSTART
	.uleb128	6
	.ascii	"SELSTART\000"
	.byte	2
	.byte	144
	.uleb128	14
	.long	.La6-.Ldebug_info0
# Symbol defaultselstart
	.uleb128	6
	.ascii	"defaultselstart\000"
	.byte	9
	.byte	3
	.quad	TC_$UNIT1$_$TFORM1_$_BUTTON1CLICK$TOBJECT_$$_defaultselstart
	.long	.La6-.Ldebug_info0
# Symbol BUF
	.uleb128	6
	.ascii	"BUF\000"
	.byte	4
	.byte	118
	.sleb128	-24720
	.long	.La65-.Ldebug_info0
# Symbol FN
	.uleb128	6
	.ascii	"FN\000"
	.byte	4
	.byte	118
	.sleb128	-24728
	.long	.La59-.Ldebug_info0
# Symbol D
	.uleb128	6
	.ascii	"D\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La24-.Ldebug_info0
# Symbol TESTT
# Symbol fin$3
# Definition Array[0..1000] Of Array[0..1] Of AnsiString
.La63:
	.uleb128	21
	.uleb128	16016
	.long	.La67-.Ldebug_info0
	.uleb128	22
	.sleb128	0
	.sleb128	1000
	.uleb128	16
	.long	.La69-.Ldebug_info0
	.byte	0
.La64:
	.uleb128	11
	.long	.La63-.Ldebug_info0
# Definition Array[0..25] Of Byte
.La65:
	.uleb128	21
	.uleb128	26
	.long	.La21-.Ldebug_info0
	.uleb128	22
	.sleb128	0
	.sleb128	25
	.uleb128	1
	.long	.La71-.Ldebug_info0
	.byte	0
.La66:
	.uleb128	11
	.long	.La65-.Ldebug_info0
	.byte	0
# Procdef Button2Click(<TForm1>;TObject);
	.uleb128	5
	.ascii	"BUTTON2CLICK\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT1$_$TFORM1_$__$$_BUTTON2CLICK$TOBJECT
	.quad	.Lt5
# Symbol this
	.uleb128	19
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	0
	.byte	1
	.long	.La1-.Ldebug_info0
# Symbol SENDER
	.uleb128	4
	.ascii	"SENDER\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef FormClose(<TForm1>;TObject;var TCloseAction);
	.uleb128	5
	.ascii	"FORMCLOSE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT1$_$TFORM1_$__$$_FORMCLOSE$TOBJECT$TCLOSEACTION
	.quad	.Lt6
# Symbol this
	.uleb128	19
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	0
	.byte	1
	.long	.La1-.Ldebug_info0
# Symbol SENDER
	.uleb128	4
	.ascii	"SENDER\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La56-.Ldebug_info0
# Symbol CLOSEACTION
	.uleb128	4
	.ascii	"CLOSEACTION\000"
	.byte	3
	.byte	146
	.uleb128	8
	.sleb128	0
	.long	.La73-.Ldebug_info0
	.byte	0
# Procdef FormCreate(<TForm1>;TObject);
	.uleb128	5
	.ascii	"FORMCREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT1$_$TFORM1_$__$$_FORMCREATE$TOBJECT
	.quad	.Lt7
# Symbol this
	.uleb128	19
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	0
	.byte	1
	.long	.La1-.Ldebug_info0
# Symbol SENDER
	.uleb128	4
	.ascii	"SENDER\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La56-.Ldebug_info0
	.byte	0
	.byte	0
.La2:
	.uleb128	11
	.long	.La1-.Ldebug_info0
# Definition Array[0..65535] Of Byte
.La4:
	.uleb128	21
	.uleb128	65536
	.long	.La21-.Ldebug_info0
	.uleb128	22
	.sleb128	0
	.sleb128	65535
	.uleb128	1
	.long	.La8-.Ldebug_info0
	.byte	0
.La5:
	.uleb128	11
	.long	.La4-.Ldebug_info0
# Definition ShortString
.La10:
	.uleb128	7
	.ascii	"ShortString\000"
	.uleb128	33
	.uleb128	8
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La21-.Ldebug_info0
	.uleb128	8
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La75-.Ldebug_info0
	.byte	0
.La75:
	.uleb128	9
	.uleb128	33
	.uleb128	1
	.long	.La24-.Ldebug_info0
	.uleb128	10
	.uleb128	1
	.uleb128	32
	.long	.La21-.Ldebug_info0
	.byte	0
.La11:
	.uleb128	11
	.long	.La10-.Ldebug_info0
# Defs - End unit UNIT1 has index 10
# Defs - Begin unit RETRO has index 12
# Defs - End unit RETRO has index 12
# Defs - Begin unit UMAIN has index 11
# Defs - End unit UMAIN has index 11
# Defs - Begin unit UNIT1 has index 10
# Defs - End unit UNIT1 has index 10
# Defs - Begin Staticsymtable
# Defs - End Staticsymtable
# Definition TThread
.La33:
	.uleb128	12
	.ascii	"TTHREAD\000"
	.long	.La76-.Ldebug_info0
.La76:
	.uleb128	15
	.long	.La35-.Ldebug_info0
.La35:
	.uleb128	16
	.ascii	"TTHREAD\000"
	.uleb128	88
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La58-.Ldebug_info0
	.uleb128	23
	.ascii	"FHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"FTERMINATED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FFREEONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	17
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FFINISHED\000"
	.byte	2
	.byte	35
	.uleb128	18
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FSUSPENDED\000"
	.byte	2
	.byte	35
	.uleb128	20
	.byte	3
	.long	.La79-.Ldebug_info0
	.uleb128	23
	.ascii	"FRETURNVALUE\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FFATALEXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La56-.Ldebug_info0
	.uleb128	23
	.ascii	"FEXTERNALTHREAD\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FSYNCHRONIZEENTRY\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La83-.Ldebug_info0
	.uleb128	23
	.ascii	"FTHREADID\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	2
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"RETURNVALUE\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"TERMINATED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FINITIALSUSPENDED\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FREEONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	17
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"HANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"EXTERNALTHREAD\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FINISHED\000"
	.byte	2
	.byte	35
	.uleb128	18
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"THREADID\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	2
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"ONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FATALEXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La56-.Ldebug_info0
# Procdef class GetCurrentThread:TThread; Static;
	.uleb128	24
	.ascii	"GETCURRENTTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef class GetIsSingleProcessor:Boolean; Static;
	.uleb128	24
	.ascii	"GETISSINGLEPROCESSOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef CallOnTerminate(<TThread>);
	.uleb128	25
	.ascii	"CALLONTERMINATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef GetPriority(<TThread>):<enumeration type>;
	.uleb128	24
	.ascii	"GETPRIORITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La85-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef SetPriority(<TThread>;TThreadPriority);
	.uleb128	25
	.ascii	"SETPRIORITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La85-.Ldebug_info0
	.byte	0
# Procdef SetSuspended(<TThread>;Boolean);
	.uleb128	25
	.ascii	"SETSUSPENDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef GetSuspended(<TThread>):Boolean;
	.uleb128	24
	.ascii	"GETSUSPENDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef InitSynchronizeEvent(<TThread>);
	.uleb128	25
	.ascii	"INITSYNCHRONIZEEVENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef DoneSynchronizeEvent(<TThread>);
	.uleb128	25
	.ascii	"DONESYNCHRONIZEEVENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef SysCreate(<TThread>;Boolean;const QWord);
	.uleb128	25
	.ascii	"SYSCREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	27
	.ascii	"CREATESUSPENDED\000"
	.long	.La38-.Ldebug_info0
# Symbol STACKSIZE
	.uleb128	27
	.ascii	"STACKSIZE\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef SysDestroy(<TThread>);
	.uleb128	25
	.ascii	"SYSDESTROY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef DoTerminate(<TThread>);
	.uleb128	18
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef Execute(<TThread>);
	.uleb128	18
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef Synchronize(<TThread>;TThreadMethod);
	.uleb128	25
	.ascii	"SYNCHRONIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	27
	.ascii	"AMETHOD\000"
	.long	.La87-.Ldebug_info0
	.byte	0
# Procdef Queue(<TThread>;TThreadMethod);
	.uleb128	25
	.ascii	"QUEUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	27
	.ascii	"AMETHOD\000"
	.long	.La87-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TThread>;<Pointer>;Boolean;const QWord="4194304");
	.uleb128	20
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	27
	.ascii	"CREATESUSPENDED\000"
	.long	.La38-.Ldebug_info0
# Symbol STACKSIZE
	.uleb128	27
	.ascii	"STACKSIZE\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TThread>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef class CreateAnonymousThread(TProcedure):TThread; Static;
	.uleb128	20
	.ascii	"CREATEANONYMOUSTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol APROC
	.uleb128	27
	.ascii	"APROC\000"
	.long	.La89-.Ldebug_info0
	.byte	0
# Procdef class NameThreadForDebugging(UnicodeString;QWord="18446744073709551615"); Static;
	.uleb128	29
	.ascii	"NAMETHREADFORDEBUGGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREADNAME
	.uleb128	27
	.ascii	"ATHREADNAME\000"
	.long	.La91-.Ldebug_info0
# Symbol ATHREADID
	.uleb128	27
	.ascii	"ATHREADID\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef class NameThreadForDebugging(AnsiString;QWord="18446744073709551615"); Static;
	.uleb128	29
	.ascii	"NAMETHREADFORDEBUGGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREADNAME
	.uleb128	27
	.ascii	"ATHREADNAME\000"
	.long	.La59-.Ldebug_info0
# Symbol ATHREADID
	.uleb128	27
	.ascii	"ATHREADID\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef class SetReturnValue(LongInt); Static;
	.uleb128	29
	.ascii	"SETRETURNVALUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef class CheckTerminated:Boolean; Static;
	.uleb128	20
	.ascii	"CHECKTERMINATED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef class Synchronize(<Class Of TThread>;TThread;TThreadMethod);
	.uleb128	29
	.ascii	"SYNCHRONIZE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La93-.Ldebug_info0
# Symbol ATHREAD
	.uleb128	27
	.ascii	"ATHREAD\000"
	.long	.La33-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	27
	.ascii	"AMETHOD\000"
	.long	.La87-.Ldebug_info0
	.byte	0
# Procdef class Queue(TThread;TThreadMethod); Static;
	.uleb128	29
	.ascii	"QUEUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	27
	.ascii	"ATHREAD\000"
	.long	.La33-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	27
	.ascii	"AMETHOD\000"
	.long	.La87-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThread;TThreadMethod); Static;
	.uleb128	29
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	27
	.ascii	"ATHREAD\000"
	.long	.La33-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	27
	.ascii	"AMETHOD\000"
	.long	.La87-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThreadMethod); Static;
	.uleb128	29
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AMETHOD
	.uleb128	27
	.ascii	"AMETHOD\000"
	.long	.La87-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThread); Static;
	.uleb128	29
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	27
	.ascii	"ATHREAD\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef class SpinWait(LongWord); Static;
	.uleb128	29
	.ascii	"SPINWAIT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AITERATIONS
	.uleb128	27
	.ascii	"AITERATIONS\000"
	.long	.La17-.Ldebug_info0
	.byte	0
# Procdef class Sleep(LongWord); Static;
	.uleb128	29
	.ascii	"SLEEP\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AMILLISECONDS
	.uleb128	27
	.ascii	"AMILLISECONDS\000"
	.long	.La17-.Ldebug_info0
	.byte	0
# Procdef class Yield; Static;
	.uleb128	29
	.ascii	"YIELD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	0
# Procdef class GetSystemTimes(out TThread.TSystemTimes); Static;
	.uleb128	29
	.ascii	"GETSYSTEMTIMES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ASYSTEMTIMES
	.uleb128	27
	.ascii	"ASYSTEMTIMES\000"
	.long	.La95-.Ldebug_info0
	.byte	0
# Procdef class GetTickCount:DWord; Static;
	.uleb128	20
	.ascii	"GETTICKCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La17-.Ldebug_info0
	.byte	0
# Procdef class GetTickCount64:QWord; Static;
	.uleb128	20
	.ascii	"GETTICKCOUNT64\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadMethod;TNotifyEvent="nil"):TThread; Static;
	.uleb128	20
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	27
	.ascii	"AMETHOD\000"
	.long	.La87-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	27
	.ascii	"AONTERMINATE\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteStatusHandler;TThreadStatusNotifyEvent;TNotifyEvent="nil"):TThread; Static;
	.uleb128	20
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	27
	.ascii	"AMETHOD\000"
	.long	.La97-.Ldebug_info0
# Symbol AONSTATUS
	.uleb128	27
	.ascii	"AONSTATUS\000"
	.long	.La99-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	27
	.ascii	"AONTERMINATE\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteCallBack;Pointer="nil";TNotifyCallBack="nil"):TThread; Static;
	.uleb128	20
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	27
	.ascii	"AMETHOD\000"
	.long	.La101-.Ldebug_info0
# Symbol ADATA
	.uleb128	27
	.ascii	"ADATA\000"
	.long	.La36-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	27
	.ascii	"AONTERMINATE\000"
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteStatusCallBack;TThreadStatusNotifyCallBack;Pointer="nil";TNotifyCallBack="nil"):TThread; Static;
	.uleb128	20
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	27
	.ascii	"AMETHOD\000"
	.long	.La105-.Ldebug_info0
# Symbol AONSTATUS
	.uleb128	27
	.ascii	"AONSTATUS\000"
	.long	.La107-.Ldebug_info0
# Symbol ADATA
	.uleb128	27
	.ascii	"ADATA\000"
	.long	.La36-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	27
	.ascii	"AONTERMINATE\000"
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef AfterConstruction(<TThread>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef Start(<TThread>);
	.uleb128	29
	.ascii	"START\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef Resume(<TThread>);
	.uleb128	29
	.ascii	"RESUME\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef Suspend(<TThread>);
	.uleb128	29
	.ascii	"SUSPEND\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef Terminate(<TThread>);
	.uleb128	29
	.ascii	"TERMINATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef WaitFor(<TThread>):LongInt;
	.uleb128	20
	.ascii	"WAITFOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
	.byte	0
.La34:
	.uleb128	11
	.long	.La33-.Ldebug_info0
# Definition Pointer
.La36:
	.uleb128	12
	.ascii	"POINTER\000"
	.long	.La109-.Ldebug_info0
.La109:
	.uleb128	14
.La37:
	.uleb128	11
	.long	.La36-.Ldebug_info0
# Definition Boolean
.La38:
	.uleb128	12
	.ascii	"BOOLEAN\000"
	.long	.La110-.Ldebug_info0
.La110:
	.uleb128	13
	.ascii	"Boolean\000"
	.byte	2
	.byte	1
.La39:
	.uleb128	11
	.long	.La38-.Ldebug_info0
# Definition TForm
.La41:
	.uleb128	12
	.ascii	"TFORM\000"
	.long	.La111-.Ldebug_info0
.La111:
	.uleb128	15
	.long	.La43-.Ldebug_info0
.La43:
	.uleb128	16
	.ascii	"TFORM\000"
	.uleb128	1896
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La114-.Ldebug_info0
	.uleb128	23
	.ascii	"FLCLVERSION\000"
	.byte	3
	.byte	35
	.uleb128	1888
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"LCLVERSION\000"
	.byte	3
	.byte	35
	.uleb128	1888
	.byte	3
	.long	.La59-.Ldebug_info0
# Procdef LCLVersionIsStored(<TForm>):Boolean;
	.uleb128	24
	.ascii	"LCLVERSIONISSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
	.byte	0
# Procdef CreateWnd(<TForm>);
	.uleb128	18
	.ascii	"CREATEWND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2016
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TForm>);
	.uleb128	18
	.ascii	"LOADED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	264
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TForm>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La41-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	27
	.ascii	"THEOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef Cascade(<TForm>);
	.uleb128	29
	.ascii	"CASCADE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
	.byte	0
# Procdef Next(<TForm>);
	.uleb128	29
	.ascii	"NEXT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
	.byte	0
# Procdef Previous(<TForm>);
	.uleb128	29
	.ascii	"PREVIOUS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
	.byte	0
# Procdef Tile(<TForm>);
	.uleb128	29
	.ascii	"TILE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
	.byte	0
	.byte	0
.La42:
	.uleb128	11
	.long	.La41-.Ldebug_info0
# Definition TButton
.La44:
	.uleb128	12
	.ascii	"TBUTTON\000"
	.long	.La118-.Ldebug_info0
.La118:
	.uleb128	15
	.long	.La46-.Ldebug_info0
.La46:
	.uleb128	16
	.ascii	"TBUTTON\000"
	.uleb128	1424
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La121-.Ldebug_info0
	.byte	0
.La45:
	.uleb128	11
	.long	.La44-.Ldebug_info0
# Definition TCheckBox
.La47:
	.uleb128	12
	.ascii	"TCHECKBOX\000"
	.long	.La122-.Ldebug_info0
.La122:
	.uleb128	15
	.long	.La49-.Ldebug_info0
.La49:
	.uleb128	16
	.ascii	"TCHECKBOX\000"
	.uleb128	1424
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La125-.Ldebug_info0
# Procdef constructor Create(<TCheckBox>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La47-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La47-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	27
	.ascii	"THEOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
	.byte	0
.La48:
	.uleb128	11
	.long	.La47-.Ldebug_info0
# Definition TOpenDialog
.La50:
	.uleb128	12
	.ascii	"TOPENDIALOG\000"
	.long	.La126-.Ldebug_info0
.La126:
	.uleb128	15
	.long	.La52-.Ldebug_info0
.La52:
	.uleb128	16
	.ascii	"TOPENDIALOG\000"
	.uleb128	352
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La129-.Ldebug_info0
	.uleb128	23
	.ascii	"FONFOLDERCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	304
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONSELECTIONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	320
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FOPTIONS\000"
	.byte	3
	.byte	35
	.uleb128	336
	.byte	3
	.long	.La130-.Ldebug_info0
	.uleb128	23
	.ascii	"FLASTSELECTIONCHANGEFILENAME\000"
	.byte	3
	.byte	35
	.uleb128	344
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"OPTIONS\000"
	.byte	3
	.byte	35
	.uleb128	336
	.byte	3
	.long	.La130-.Ldebug_info0
	.uleb128	23
	.ascii	"ONFOLDERCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	304
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONSELECTIONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	320
	.byte	3
	.long	.La81-.Ldebug_info0
# Procdef class WSRegisterClass(<Class Of TOpenDialog>);
	.uleb128	18
	.ascii	"WSREGISTERCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	432
	.byte	34
	.byte	2
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La132-.Ldebug_info0
	.byte	0
# Procdef DereferenceLinks(<TOpenDialog>);
	.uleb128	18
	.ascii	"DEREFERENCELINKS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	584
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La50-.Ldebug_info0
	.byte	0
# Procdef CheckFile(<TOpenDialog>;var AnsiString):Boolean;
	.uleb128	31
	.ascii	"CHECKFILE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	592
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La50-.Ldebug_info0
# Symbol AFILENAME
	.uleb128	27
	.ascii	"AFILENAME\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef CheckFileMustExist(<TOpenDialog>;const AnsiString):Boolean;
	.uleb128	31
	.ascii	"CHECKFILEMUSTEXIST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	600
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La50-.Ldebug_info0
# Symbol AFILENAME
	.uleb128	27
	.ascii	"AFILENAME\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef CheckAllFiles(<TOpenDialog>):Boolean;
	.uleb128	31
	.ascii	"CHECKALLFILES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	608
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La50-.Ldebug_info0
	.byte	0
# Procdef DoExecute(<TOpenDialog>):Boolean;
	.uleb128	31
	.ascii	"DOEXECUTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	456
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La50-.Ldebug_info0
	.byte	0
# Procdef DefaultTitle(<TOpenDialog>;<var AnsiString>):AnsiString;
	.uleb128	31
	.ascii	"DEFAULTTITLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	464
	.byte	34
	.byte	2
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La50-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TOpenDialog>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La50-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La50-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	27
	.ascii	"THEOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef DoCanClose(<TOpenDialog>;var Boolean);
	.uleb128	28
	.ascii	"DOCANCLOSE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	528
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La50-.Ldebug_info0
# Symbol CANCLOSE
	.uleb128	27
	.ascii	"CANCLOSE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DoFolderChange(<TOpenDialog>);
	.uleb128	28
	.ascii	"DOFOLDERCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	616
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La50-.Ldebug_info0
	.byte	0
# Procdef DoSelectionChange(<TOpenDialog>);
	.uleb128	28
	.ascii	"DOSELECTIONCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	624
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La50-.Ldebug_info0
	.byte	0
# Procdef IntfSetOption(<TOpenDialog>;const TOpenOption;const Boolean);
	.uleb128	29
	.ascii	"INTFSETOPTION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La50-.Ldebug_info0
# Symbol AOPTION
	.uleb128	27
	.ascii	"AOPTION\000"
	.long	.La134-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
	.byte	0
.La51:
	.uleb128	11
	.long	.La50-.Ldebug_info0
# Definition TRadioButton
.La53:
	.uleb128	12
	.ascii	"TRADIOBUTTON\000"
	.long	.La136-.Ldebug_info0
.La136:
	.uleb128	15
	.long	.La55-.Ldebug_info0
.La55:
	.uleb128	16
	.ascii	"TRADIOBUTTON\000"
	.uleb128	1424
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La125-.Ldebug_info0
# Procdef class WSRegisterClass(<Class Of TRadioButton>);
	.uleb128	18
	.ascii	"WSREGISTERCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	432
	.byte	34
	.byte	2
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La137-.Ldebug_info0
	.byte	0
# Procdef ApplyChanges(<TRadioButton>);
	.uleb128	18
	.ascii	"APPLYCHANGES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2288
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef DialogChar(<TRadioButton>;var TLMKey):Boolean;
	.uleb128	31
	.ascii	"DIALOGCHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	976
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La53-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef RealSetText(<TRadioButton>;const TTranslateString);
	.uleb128	18
	.ascii	"REALSETTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1048
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La53-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La141-.Ldebug_info0
	.byte	0
# Procdef DoClickOnChange(<TRadioButton>);
	.uleb128	18
	.ascii	"DOCLICKONCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2272
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef CreateParams(<TRadioButton>;var TCreateParams);
	.uleb128	18
	.ascii	"CREATEPARAMS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2008
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La53-.Ldebug_info0
# Symbol PARAMS
	.uleb128	27
	.ascii	"PARAMS\000"
	.long	.La143-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TRadioButton>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La53-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La53-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	27
	.ascii	"THEOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
	.byte	0
.La54:
	.uleb128	11
	.long	.La53-.Ldebug_info0
# Definition TObject
.La56:
	.uleb128	12
	.ascii	"TOBJECT\000"
	.long	.La145-.Ldebug_info0
.La145:
	.uleb128	15
	.long	.La58-.Ldebug_info0
.La58:
	.uleb128	16
	.ascii	"TOBJECT\000"
	.uleb128	8
	.uleb128	33
	.byte	1
	.ascii	"_vptr$TOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La36-.Ldebug_info0
# Procdef constructor Create(<TObject>;<Pointer>);
	.uleb128	20
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La56-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TObject>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
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
	.long	.La56-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La146-.Ldebug_info0
	.byte	0
# Procdef FreeInstance(<TObject>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
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
	.long	.La148-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
# Symbol EXCEPTOBJECT
	.uleb128	27
	.ascii	"EXCEPTOBJECT\000"
	.long	.La56-.Ldebug_info0
# Symbol EXCEPTADDR
	.uleb128	27
	.ascii	"EXCEPTADDR\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef DefaultHandler(<TObject>;var <Formal type>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La150-.Ldebug_info0
	.byte	0
# Procdef Free(<TObject>);
	.uleb128	29
	.ascii	"FREE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef class InitInstance(<Class Of TObject>;Pointer):TObject;
	.uleb128	20
	.ascii	"INITINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La56-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La152-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	27
	.ascii	"INSTANCE\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef CleanupInstance(<TObject>);
	.uleb128	29
	.ascii	"CLEANUPINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef class ClassType(<Class Of TObject>):Class Of TObject;
	.uleb128	20
	.ascii	"CLASSTYPE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La154-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La156-.Ldebug_info0
	.byte	0
# Procdef class ClassInfo(<Class Of TObject>):^untyped;
	.uleb128	20
	.ascii	"CLASSINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef class ClassName(<Class Of TObject>;<var ShortString>):ShortString;
	.uleb128	20
	.ascii	"CLASSNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La160-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La162-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La160-.Ldebug_info0
	.byte	0
# Procdef class ClassNameIs(<Class Of TObject>;const ShortString):Boolean;
	.uleb128	20
	.ascii	"CLASSNAMEIS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La164-.Ldebug_info0
# Symbol NAME
	.uleb128	27
	.ascii	"NAME\000"
	.long	.La160-.Ldebug_info0
	.byte	0
# Procdef class ClassParent(<Class Of TObject>):Class Of TObject;
	.uleb128	20
	.ascii	"CLASSPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La154-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La166-.Ldebug_info0
	.byte	0
# Procdef class InstanceSize(<Class Of TObject>):Int64;
	.uleb128	20
	.ascii	"INSTANCESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La168-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La170-.Ldebug_info0
	.byte	0
# Procdef class InheritsFrom(<Class Of TObject>;TClass):Boolean;
	.uleb128	20
	.ascii	"INHERITSFROM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La172-.Ldebug_info0
# Symbol ACLASS
	.uleb128	27
	.ascii	"ACLASS\000"
	.long	.La154-.Ldebug_info0
	.byte	0
# Procdef class StringMessageTable(<Class Of TObject>):^TStringMessageTable;
	.uleb128	20
	.ascii	"STRINGMESSAGETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La174-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La176-.Ldebug_info0
	.byte	0
# Procdef class MethodAddress(<Class Of TObject>;const ShortString):^untyped;
	.uleb128	20
	.ascii	"METHODADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La178-.Ldebug_info0
# Symbol NAME
	.uleb128	27
	.ascii	"NAME\000"
	.long	.La160-.Ldebug_info0
	.byte	0
# Procdef class MethodName(<Class Of TObject>;<var ShortString>;Pointer):ShortString;
	.uleb128	20
	.ascii	"METHODNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La160-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La180-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La160-.Ldebug_info0
# Symbol ADDRESS
	.uleb128	27
	.ascii	"ADDRESS\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef FieldAddress(<TObject>;const ShortString):^untyped;
	.uleb128	20
	.ascii	"FIELDADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
# Symbol NAME
	.uleb128	27
	.ascii	"NAME\000"
	.long	.La160-.Ldebug_info0
	.byte	0
# Procdef AfterConstruction(<TObject>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef BeforeDestruction(<TObject>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef DefaultHandlerStr(<TObject>;var <Formal type>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La150-.Ldebug_info0
	.byte	0
# Procdef Dispatch(<TObject>;var <Formal type>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La150-.Ldebug_info0
	.byte	0
# Procdef DispatchStr(<TObject>;var <Formal type>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La150-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	20
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
# Symbol IID
	.uleb128	27
	.ascii	"IID\000"
	.long	.La182-.Ldebug_info0
# Symbol OBJ
	.uleb128	27
	.ascii	"OBJ\000"
	.long	.La150-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	20
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	27
	.ascii	"IIDSTR\000"
	.long	.La160-.Ldebug_info0
# Symbol OBJ
	.uleb128	27
	.ascii	"OBJ\000"
	.long	.La150-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceByStr(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	20
	.ascii	"GETINTERFACEBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	27
	.ascii	"IIDSTR\000"
	.long	.La160-.Ldebug_info0
# Symbol OBJ
	.uleb128	27
	.ascii	"OBJ\000"
	.long	.La150-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceWeak(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	20
	.ascii	"GETINTERFACEWEAK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
# Symbol IID
	.uleb128	27
	.ascii	"IID\000"
	.long	.La182-.Ldebug_info0
# Symbol OBJ
	.uleb128	27
	.ascii	"OBJ\000"
	.long	.La150-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntry(<Class Of TObject>;const TGuid):^tinterfaceentry;
	.uleb128	20
	.ascii	"GETINTERFACEENTRY\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La184-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol IID
	.uleb128	27
	.ascii	"IID\000"
	.long	.La182-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntryByStr(<Class Of TObject>;const ShortString):^tinterfaceentry;
	.uleb128	20
	.ascii	"GETINTERFACEENTRYBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La184-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La188-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	27
	.ascii	"IIDSTR\000"
	.long	.La160-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceTable(<Class Of TObject>):^tinterfacetable;
	.uleb128	20
	.ascii	"GETINTERFACETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La190-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La192-.Ldebug_info0
	.byte	0
# Procdef class UnitName(<Class Of TObject>;<var AnsiString>):AnsiString;
	.uleb128	20
	.ascii	"UNITNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La59-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol result
	.uleb128	32
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
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
# Symbol OBJ
	.uleb128	27
	.ascii	"OBJ\000"
	.long	.La56-.Ldebug_info0
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
	.long	.La168-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La56-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
	.byte	0
.La57:
	.uleb128	11
	.long	.La56-.Ldebug_info0
# Definition AnsiString
.La59:
	.uleb128	12
	.ascii	"ANSISTRING\000"
	.long	.La196-.Ldebug_info0
.La196:
	.uleb128	15
	.long	.La24-.Ldebug_info0
.La60:
	.uleb128	11
	.long	.La59-.Ldebug_info0
# Definition TRawbyteSearchRec
.La61:
	.uleb128	12
	.ascii	"TRAWBYTESEARCHREC\000"
	.long	.La197-.Ldebug_info0
.La197:
	.uleb128	7
	.ascii	"TRAWBYTESEARCHREC\000"
	.uleb128	640
	.uleb128	8
	.ascii	"TIME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"SIZE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"ATTR\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La198-.Ldebug_info0
	.uleb128	8
	.ascii	"EXCLUDEATTR\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"FINDHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La77-.Ldebug_info0
	.uleb128	8
	.ascii	"FINDDATA\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La200-.Ldebug_info0
	.byte	0
.La62:
	.uleb128	11
	.long	.La61-.Ldebug_info0
# Definition Array[0..1] Of AnsiString
.La67:
	.uleb128	21
	.uleb128	16
	.long	.La59-.Ldebug_info0
	.uleb128	22
	.sleb128	0
	.sleb128	1
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.byte	0
.La68:
	.uleb128	11
	.long	.La67-.Ldebug_info0
# Definition SmallInt
.La69:
	.uleb128	12
	.ascii	"SMALLINT\000"
	.long	.La202-.Ldebug_info0
.La202:
	.uleb128	13
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.La70:
	.uleb128	11
	.long	.La69-.Ldebug_info0
# Definition ShortInt
.La71:
	.uleb128	12
	.ascii	"SHORTINT\000"
	.long	.La203-.Ldebug_info0
.La203:
	.uleb128	13
	.ascii	"SHORTINT\000"
	.byte	5
	.byte	1
.La72:
	.uleb128	11
	.long	.La71-.Ldebug_info0
# Definition TCloseAction
.La73:
	.uleb128	12
	.ascii	"TCLOSEACTION\000"
	.long	.La204-.Ldebug_info0
.La204:
	.uleb128	34
	.ascii	"TCLOSEACTION\000"
	.byte	4
	.uleb128	35
	.ascii	"CANONE\000"
	.long	0
	.uleb128	35
	.ascii	"CAHIDE\000"
	.long	1
	.uleb128	35
	.ascii	"CAFREE\000"
	.long	2
	.uleb128	35
	.ascii	"CAMINIMIZE\000"
	.long	3
	.byte	0
.La74:
	.uleb128	11
	.long	.La73-.Ldebug_info0
# Definition QWord
.La77:
	.uleb128	12
	.ascii	"QWORD\000"
	.long	.La205-.Ldebug_info0
.La205:
	.uleb128	13
	.ascii	"QWord\000"
	.byte	7
	.byte	8
.La78:
	.uleb128	11
	.long	.La77-.Ldebug_info0
# Definition LongBool
.La79:
	.uleb128	12
	.ascii	"LONGBOOL\000"
	.long	.La206-.Ldebug_info0
.La206:
	.uleb128	13
	.ascii	"LongBool\000"
	.byte	2
	.byte	4
.La80:
	.uleb128	11
	.long	.La79-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject) of object;Register>
.La81:
	.uleb128	12
	.ascii	"TNOTIFYEVENT\000"
	.long	.La207-.Ldebug_info0
.La207:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La208-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La208:
	.uleb128	37
	.ascii	"TNOTIFYEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.byte	0
.La82:
	.uleb128	11
	.long	.La81-.Ldebug_info0
# Definition TThread.PThreadQueueEntry
.La83:
	.uleb128	12
	.ascii	"PTHREADQUEUEENTRY\000"
	.long	.La209-.Ldebug_info0
.La209:
	.uleb128	15
	.long	.La210-.Ldebug_info0
.La84:
	.uleb128	11
	.long	.La83-.Ldebug_info0
# Definition TThreadPriority
.La85:
	.uleb128	12
	.ascii	"TTHREADPRIORITY\000"
	.long	.La212-.Ldebug_info0
.La212:
	.uleb128	34
	.ascii	"TTHREADPRIORITY\000"
	.byte	4
	.uleb128	35
	.ascii	"TPIDLE\000"
	.long	0
	.uleb128	35
	.ascii	"TPLOWEST\000"
	.long	1
	.uleb128	35
	.ascii	"TPLOWER\000"
	.long	2
	.uleb128	35
	.ascii	"TPNORMAL\000"
	.long	3
	.uleb128	35
	.ascii	"TPHIGHER\000"
	.long	4
	.uleb128	35
	.ascii	"TPHIGHEST\000"
	.long	5
	.uleb128	35
	.ascii	"TPTIMECRITICAL\000"
	.long	6
	.byte	0
.La86:
	.uleb128	11
	.long	.La85-.Ldebug_info0
# Definition <procedure variable type of procedure of object;Register>
.La87:
	.uleb128	12
	.ascii	"TTHREADMETHOD\000"
	.long	.La213-.Ldebug_info0
.La213:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La214-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La214:
	.uleb128	37
	.ascii	"TTHREADMETHOD\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.byte	0
.La88:
	.uleb128	11
	.long	.La87-.Ldebug_info0
# Definition <procedure variable type of procedure;Register>
.La89:
	.uleb128	12
	.ascii	"TPROCEDURE\000"
	.long	.La215-.Ldebug_info0
.La215:
	.uleb128	37
	.ascii	"TPROCEDURE\000"
	.byte	1
	.byte	0
.La90:
	.uleb128	11
	.long	.La89-.Ldebug_info0
# Definition UnicodeString
.La91:
	.uleb128	12
	.ascii	"UNICODESTRING\000"
	.long	.La216-.Ldebug_info0
.La216:
	.uleb128	15
	.long	.La217-.Ldebug_info0
.La92:
	.uleb128	11
	.long	.La91-.Ldebug_info0
# Definition TThread.Class Of TThread
.La93:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La94:
	.uleb128	11
	.long	.La93-.Ldebug_info0
# Definition TThread.TSystemTimes
.La95:
	.uleb128	12
	.ascii	"TSYSTEMTIMES\000"
	.long	.La221-.Ldebug_info0
.La221:
	.uleb128	7
	.ascii	"TSYSTEMTIMES\000"
	.uleb128	32
	.uleb128	8
	.ascii	"IDLETIME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La77-.Ldebug_info0
	.uleb128	8
	.ascii	"USERTIME\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La77-.Ldebug_info0
	.uleb128	8
	.ascii	"KERNELTIME\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La77-.Ldebug_info0
	.uleb128	8
	.ascii	"NICETIME\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La77-.Ldebug_info0
	.byte	0
.La96:
	.uleb128	11
	.long	.La95-.Ldebug_info0
# Definition <procedure variable type of procedure(TThreadReportStatus) of object;Register>
.La97:
	.uleb128	12
	.ascii	"TTHREADEXECUTESTATUSHANDLER\000"
	.long	.La222-.Ldebug_info0
.La222:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La223-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La223:
	.uleb128	37
	.ascii	"TTHREADEXECUTESTATUSHANDLER\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"REPORTSTATUS\000"
	.long	.La224-.Ldebug_info0
	.byte	0
.La98:
	.uleb128	11
	.long	.La97-.Ldebug_info0
# Definition <procedure variable type of procedure(TThread;const AnsiString) of object;Register>
.La99:
	.uleb128	12
	.ascii	"TTHREADSTATUSNOTIFYEVENT\000"
	.long	.La226-.Ldebug_info0
.La226:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La227-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La227:
	.uleb128	37
	.ascii	"TTHREADSTATUSNOTIFYEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La33-.Ldebug_info0
	.uleb128	27
	.ascii	"STATUS\000"
	.long	.La59-.Ldebug_info0
	.byte	0
.La100:
	.uleb128	11
	.long	.La99-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer);Register>
.La101:
	.uleb128	12
	.ascii	"TTHREADEXECUTECALLBACK\000"
	.long	.La228-.Ldebug_info0
.La228:
	.uleb128	37
	.ascii	"TTHREADEXECUTECALLBACK\000"
	.byte	1
	.uleb128	27
	.ascii	"ADATA\000"
	.long	.La36-.Ldebug_info0
	.byte	0
.La102:
	.uleb128	11
	.long	.La101-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;Pointer);Register>
.La103:
	.uleb128	12
	.ascii	"TNOTIFYCALLBACK\000"
	.long	.La229-.Ldebug_info0
.La229:
	.uleb128	37
	.ascii	"TNOTIFYCALLBACK\000"
	.byte	1
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"ADATA\000"
	.long	.La36-.Ldebug_info0
	.byte	0
.La104:
	.uleb128	11
	.long	.La103-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer;TThreadReportStatus);Register>
.La105:
	.uleb128	12
	.ascii	"TTHREADEXECUTESTATUSCALLBACK\000"
	.long	.La230-.Ldebug_info0
.La230:
	.uleb128	37
	.ascii	"TTHREADEXECUTESTATUSCALLBACK\000"
	.byte	1
	.uleb128	27
	.ascii	"ADATA\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"REPORTSTATUS\000"
	.long	.La224-.Ldebug_info0
	.byte	0
.La106:
	.uleb128	11
	.long	.La105-.Ldebug_info0
# Definition <procedure variable type of procedure(TThread;Pointer;const AnsiString);Register>
.La107:
	.uleb128	12
	.ascii	"TTHREADSTATUSNOTIFYCALLBACK\000"
	.long	.La231-.Ldebug_info0
.La231:
	.uleb128	37
	.ascii	"TTHREADSTATUSNOTIFYCALLBACK\000"
	.byte	1
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La33-.Ldebug_info0
	.uleb128	27
	.ascii	"ADATA\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"STATUS\000"
	.long	.La59-.Ldebug_info0
	.byte	0
.La108:
	.uleb128	11
	.long	.La107-.Ldebug_info0
# Definition TCustomForm
.La112:
	.uleb128	12
	.ascii	"TCUSTOMFORM\000"
	.long	.La232-.Ldebug_info0
.La232:
	.uleb128	15
	.long	.La114-.Ldebug_info0
.La114:
	.uleb128	16
	.ascii	"TCUSTOMFORM\000"
	.uleb128	1888
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La235-.Ldebug_info0
	.uleb128	23
	.ascii	"FACTIVE\000"
	.byte	3
	.byte	35
	.uleb128	1448
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FACTIVECONTROL\000"
	.byte	3
	.byte	35
	.uleb128	1456
	.byte	3
	.long	.La236-.Ldebug_info0
	.uleb128	23
	.ascii	"FACTIVEDEFAULTCONTROL\000"
	.byte	3
	.byte	35
	.uleb128	1464
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"FALLOWDROPFILES\000"
	.byte	3
	.byte	35
	.uleb128	1472
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FALPHABLEND\000"
	.byte	3
	.byte	35
	.uleb128	1473
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FALPHABLENDVALUE\000"
	.byte	3
	.byte	35
	.uleb128	1474
	.byte	3
	.long	.La21-.Ldebug_info0
	.uleb128	23
	.ascii	"FBORDERICONS\000"
	.byte	3
	.byte	35
	.uleb128	1476
	.byte	3
	.long	.La242-.Ldebug_info0
	.uleb128	23
	.ascii	"FDEFAULTCONTROL\000"
	.byte	3
	.byte	35
	.uleb128	1480
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"FCANCELCONTROL\000"
	.byte	3
	.byte	35
	.uleb128	1488
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"FDEFAULTMONITOR\000"
	.byte	3
	.byte	35
	.uleb128	1496
	.byte	3
	.long	.La244-.Ldebug_info0
	.uleb128	23
	.ascii	"FDESIGNER\000"
	.byte	3
	.byte	35
	.uleb128	1504
	.byte	3
	.long	.La246-.Ldebug_info0
	.uleb128	23
	.ascii	"FFORMSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	1512
	.byte	3
	.long	.La249-.Ldebug_info0
	.uleb128	23
	.ascii	"FFORMUPDATECOUNT\000"
	.byte	3
	.byte	35
	.uleb128	1516
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FFORMHANDLERS\000"
	.byte	3
	.byte	35
	.uleb128	1520
	.byte	3
	.long	.La251-.Ldebug_info0
	.uleb128	23
	.ascii	"FHELPFILE\000"
	.byte	3
	.byte	35
	.uleb128	1544
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"FICON\000"
	.byte	3
	.byte	35
	.uleb128	1552
	.byte	3
	.long	.La253-.Ldebug_info0
	.uleb128	23
	.ascii	"FONSHOWMODALFINISHED\000"
	.byte	3
	.byte	35
	.uleb128	1560
	.byte	3
	.long	.La256-.Ldebug_info0
	.uleb128	23
	.ascii	"FPOPUPMODE\000"
	.byte	3
	.byte	35
	.uleb128	1576
	.byte	3
	.long	.La258-.Ldebug_info0
	.uleb128	23
	.ascii	"FPOPUPPARENT\000"
	.byte	3
	.byte	35
	.uleb128	1584
	.byte	3
	.long	.La112-.Ldebug_info0
	.uleb128	23
	.ascii	"FSMALLICONHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	1592
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"FBIGICONHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	1600
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"FKEYPREVIEW\000"
	.byte	3
	.byte	35
	.uleb128	1608
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FMENU\000"
	.byte	3
	.byte	35
	.uleb128	1616
	.byte	3
	.long	.La260-.Ldebug_info0
	.uleb128	23
	.ascii	"FMODALRESULT\000"
	.byte	3
	.byte	35
	.uleb128	1624
	.byte	3
	.long	.La263-.Ldebug_info0
	.uleb128	23
	.ascii	"FLASTFOCUSEDCONTROL\000"
	.byte	3
	.byte	35
	.uleb128	1632
	.byte	3
	.long	.La236-.Ldebug_info0
	.uleb128	23
	.ascii	"FOLDBORDERSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	1640
	.byte	3
	.long	.La265-.Ldebug_info0
	.uleb128	23
	.ascii	"FONACTIVATE\000"
	.byte	3
	.byte	35
	.uleb128	1648
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONCLOSE\000"
	.byte	3
	.byte	35
	.uleb128	1664
	.byte	3
	.long	.La267-.Ldebug_info0
	.uleb128	23
	.ascii	"FONCLOSEQUERY\000"
	.byte	3
	.byte	35
	.uleb128	1680
	.byte	3
	.long	.La269-.Ldebug_info0
	.uleb128	23
	.ascii	"FONCREATE\000"
	.byte	3
	.byte	35
	.uleb128	1696
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONDEACTIVATE\000"
	.byte	3
	.byte	35
	.uleb128	1712
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONDESTROY\000"
	.byte	3
	.byte	35
	.uleb128	1728
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONDROPFILES\000"
	.byte	3
	.byte	35
	.uleb128	1744
	.byte	3
	.long	.La271-.Ldebug_info0
	.uleb128	23
	.ascii	"FONHELP\000"
	.byte	3
	.byte	35
	.uleb128	1760
	.byte	3
	.long	.La273-.Ldebug_info0
	.uleb128	23
	.ascii	"FONHIDE\000"
	.byte	3
	.byte	35
	.uleb128	1776
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONSHORTCUT\000"
	.byte	3
	.byte	35
	.uleb128	1792
	.byte	3
	.long	.La275-.Ldebug_info0
	.uleb128	23
	.ascii	"FONSHOW\000"
	.byte	3
	.byte	35
	.uleb128	1808
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONWINDOWSTATECHANGE\000"
	.byte	3
	.byte	35
	.uleb128	1824
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FPOSITION\000"
	.byte	3
	.byte	35
	.uleb128	1840
	.byte	3
	.long	.La277-.Ldebug_info0
	.uleb128	23
	.ascii	"FRESTOREDLEFT\000"
	.byte	3
	.byte	35
	.uleb128	1844
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FRESTOREDTOP\000"
	.byte	3
	.byte	35
	.uleb128	1848
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FRESTOREDWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	1852
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FRESTOREDHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	1856
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FSHOWINTASKBAR\000"
	.byte	3
	.byte	35
	.uleb128	1860
	.byte	3
	.long	.La279-.Ldebug_info0
	.uleb128	23
	.ascii	"FWINDOWSTATE\000"
	.byte	3
	.byte	35
	.uleb128	1864
	.byte	3
	.long	.La281-.Ldebug_info0
	.uleb128	23
	.ascii	"FACTIONLISTS\000"
	.byte	3
	.byte	35
	.uleb128	1872
	.byte	2
	.long	.La283-.Ldebug_info0
	.uleb128	23
	.ascii	"FFORMBORDERSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	1880
	.byte	2
	.long	.La265-.Ldebug_info0
	.uleb128	23
	.ascii	"FFORMSTATE\000"
	.byte	3
	.byte	35
	.uleb128	1884
	.byte	2
	.long	.La286-.Ldebug_info0
	.uleb128	23
	.ascii	"ACTIVE\000"
	.byte	3
	.byte	35
	.uleb128	1448
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"ACTIVECONTROL\000"
	.byte	3
	.byte	35
	.uleb128	1456
	.byte	3
	.long	.La236-.Ldebug_info0
	.uleb128	23
	.ascii	"ACTIVEDEFAULTCONTROL\000"
	.byte	3
	.byte	35
	.uleb128	1464
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"ALLOWDROPFILES\000"
	.byte	3
	.byte	35
	.uleb128	1472
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"ALPHABLEND\000"
	.byte	3
	.byte	35
	.uleb128	1473
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"ALPHABLENDVALUE\000"
	.byte	3
	.byte	35
	.uleb128	1474
	.byte	3
	.long	.La21-.Ldebug_info0
	.uleb128	23
	.ascii	"BORDERICONS\000"
	.byte	3
	.byte	35
	.uleb128	1476
	.byte	3
	.long	.La242-.Ldebug_info0
	.uleb128	23
	.ascii	"BORDERSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	1880
	.byte	2
	.long	.La265-.Ldebug_info0
	.uleb128	23
	.ascii	"CANCELCONTROL\000"
	.byte	3
	.byte	35
	.uleb128	1488
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"DEFAULTCONTROL\000"
	.byte	3
	.byte	35
	.uleb128	1480
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"DEFAULTMONITOR\000"
	.byte	3
	.byte	35
	.uleb128	1496
	.byte	3
	.long	.La244-.Ldebug_info0
	.uleb128	23
	.ascii	"DESIGNER\000"
	.byte	3
	.byte	35
	.uleb128	1504
	.byte	3
	.long	.La246-.Ldebug_info0
	.uleb128	23
	.ascii	"FORMSTATE\000"
	.byte	3
	.byte	35
	.uleb128	1884
	.byte	2
	.long	.La286-.Ldebug_info0
	.uleb128	23
	.ascii	"FORMSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	1512
	.byte	3
	.long	.La249-.Ldebug_info0
	.uleb128	23
	.ascii	"HELPFILE\000"
	.byte	3
	.byte	35
	.uleb128	1544
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"ICON\000"
	.byte	3
	.byte	35
	.uleb128	1552
	.byte	3
	.long	.La253-.Ldebug_info0
	.uleb128	23
	.ascii	"KEYPREVIEW\000"
	.byte	3
	.byte	35
	.uleb128	1608
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"MENU\000"
	.byte	3
	.byte	35
	.uleb128	1616
	.byte	3
	.long	.La260-.Ldebug_info0
	.uleb128	23
	.ascii	"MODALRESULT\000"
	.byte	3
	.byte	35
	.uleb128	1624
	.byte	3
	.long	.La263-.Ldebug_info0
	.uleb128	23
	.ascii	"POPUPMODE\000"
	.byte	3
	.byte	35
	.uleb128	1576
	.byte	3
	.long	.La258-.Ldebug_info0
	.uleb128	23
	.ascii	"POPUPPARENT\000"
	.byte	3
	.byte	35
	.uleb128	1584
	.byte	3
	.long	.La112-.Ldebug_info0
	.uleb128	23
	.ascii	"ONACTIVATE\000"
	.byte	3
	.byte	35
	.uleb128	1648
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONCLOSE\000"
	.byte	3
	.byte	35
	.uleb128	1664
	.byte	3
	.long	.La267-.Ldebug_info0
	.uleb128	23
	.ascii	"ONCLOSEQUERY\000"
	.byte	3
	.byte	35
	.uleb128	1680
	.byte	3
	.long	.La269-.Ldebug_info0
	.uleb128	23
	.ascii	"ONCREATE\000"
	.byte	3
	.byte	35
	.uleb128	1696
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONDEACTIVATE\000"
	.byte	3
	.byte	35
	.uleb128	1712
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONDESTROY\000"
	.byte	3
	.byte	35
	.uleb128	1728
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONDROPFILES\000"
	.byte	3
	.byte	35
	.uleb128	1744
	.byte	3
	.long	.La271-.Ldebug_info0
	.uleb128	23
	.ascii	"ONHELP\000"
	.byte	3
	.byte	35
	.uleb128	1760
	.byte	3
	.long	.La273-.Ldebug_info0
	.uleb128	23
	.ascii	"ONHIDE\000"
	.byte	3
	.byte	35
	.uleb128	1776
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONSHORTCUT\000"
	.byte	3
	.byte	35
	.uleb128	1792
	.byte	3
	.long	.La275-.Ldebug_info0
	.uleb128	23
	.ascii	"ONSHOW\000"
	.byte	3
	.byte	35
	.uleb128	1808
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONSHOWMODALFINISHED\000"
	.byte	3
	.byte	35
	.uleb128	1560
	.byte	3
	.long	.La256-.Ldebug_info0
	.uleb128	23
	.ascii	"ONWINDOWSTATECHANGE\000"
	.byte	3
	.byte	35
	.uleb128	1824
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"POSITION\000"
	.byte	3
	.byte	35
	.uleb128	1840
	.byte	3
	.long	.La277-.Ldebug_info0
	.uleb128	23
	.ascii	"RESTOREDLEFT\000"
	.byte	3
	.byte	35
	.uleb128	1844
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"RESTOREDTOP\000"
	.byte	3
	.byte	35
	.uleb128	1848
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"RESTOREDWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	1852
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"RESTOREDHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	1856
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"SHOWINTASKBAR\000"
	.byte	3
	.byte	35
	.uleb128	1860
	.byte	3
	.long	.La279-.Ldebug_info0
	.uleb128	23
	.ascii	"WINDOWSTATE\000"
	.byte	3
	.byte	35
	.uleb128	1864
	.byte	3
	.long	.La281-.Ldebug_info0
# Procdef GetClientHandle(<TCustomForm>):QWord;
	.uleb128	24
	.ascii	"GETCLIENTHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef GetEffectiveShowInTaskBar(<TCustomForm>):<enumeration type>;
	.uleb128	24
	.ascii	"GETEFFECTIVESHOWINTASKBAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La279-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef GetMonitor(<TCustomForm>):TMonitor;
	.uleb128	24
	.ascii	"GETMONITOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La288-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef IsAutoScrollStored(<TCustomForm>):Boolean;
	.uleb128	24
	.ascii	"ISAUTOSCROLLSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef IsForm(<TCustomForm>):Boolean;
	.uleb128	24
	.ascii	"ISFORM\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef IsIconStored(<TCustomForm>):Boolean;
	.uleb128	24
	.ascii	"ISICONSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef CloseModal(<TCustomForm>);
	.uleb128	25
	.ascii	"CLOSEMODAL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef FreeIconHandles(<TCustomForm>);
	.uleb128	25
	.ascii	"FREEICONHANDLES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef IconChanged(<TCustomForm>;TObject);
	.uleb128	25
	.ascii	"ICONCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol SENDER
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef Moved(<TCustomForm>;Int64);
	.uleb128	25
	.ascii	"MOVED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol DATA
	.uleb128	27
	.ascii	"DATA\000"
	.long	.La168-.Ldebug_info0
	.byte	0
# Procdef SetActive(<TCustomForm>;Boolean);
	.uleb128	25
	.ascii	"SETACTIVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetActiveControl(<TCustomForm>;TWinControl);
	.uleb128	25
	.ascii	"SETACTIVECONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol AWINCONTROL
	.uleb128	27
	.ascii	"AWINCONTROL\000"
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef SetActiveDefaultControl(<TCustomForm>;TControl);
	.uleb128	25
	.ascii	"SETACTIVEDEFAULTCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef SetAllowDropFiles(<TCustomForm>;const Boolean);
	.uleb128	25
	.ascii	"SETALLOWDROPFILES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetAlphaBlend(<TCustomForm>;const Boolean);
	.uleb128	25
	.ascii	"SETALPHABLEND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetAlphaBlendValue(<TCustomForm>;const Byte);
	.uleb128	25
	.ascii	"SETALPHABLENDVALUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La21-.Ldebug_info0
	.byte	0
# Procdef SetBorderIcons(<TCustomForm>;TBorderIcons);
	.uleb128	25
	.ascii	"SETBORDERICONS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol NEWICONS
	.uleb128	27
	.ascii	"NEWICONS\000"
	.long	.La242-.Ldebug_info0
	.byte	0
# Procdef SetFormBorderStyle(<TCustomForm>;TFormBorderStyle);
	.uleb128	25
	.ascii	"SETFORMBORDERSTYLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol NEWSTYLE
	.uleb128	27
	.ascii	"NEWSTYLE\000"
	.long	.La265-.Ldebug_info0
	.byte	0
# Procdef SetCancelControl(<TCustomForm>;TControl);
	.uleb128	25
	.ascii	"SETCANCELCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol NEWCONTROL
	.uleb128	27
	.ascii	"NEWCONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef SetDefaultControl(<TCustomForm>;TControl);
	.uleb128	25
	.ascii	"SETDEFAULTCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol NEWCONTROL
	.uleb128	27
	.ascii	"NEWCONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef SetFormStyle(<TCustomForm>;TFormStyle);
	.uleb128	25
	.ascii	"SETFORMSTYLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La249-.Ldebug_info0
	.byte	0
# Procdef SetIcon(<TCustomForm>;TIcon);
	.uleb128	25
	.ascii	"SETICON\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La253-.Ldebug_info0
	.byte	0
# Procdef SetMenu(<TCustomForm>;TMainMenu);
	.uleb128	25
	.ascii	"SETMENU\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La260-.Ldebug_info0
	.byte	0
# Procdef SetModalResult(<TCustomForm>;TModalResult);
	.uleb128	25
	.ascii	"SETMODALRESULT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La263-.Ldebug_info0
	.byte	0
# Procdef SetPopupMode(<TCustomForm>;const TPopupMode);
	.uleb128	25
	.ascii	"SETPOPUPMODE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La258-.Ldebug_info0
	.byte	0
# Procdef SetPopupParent(<TCustomForm>;const TCustomForm);
	.uleb128	25
	.ascii	"SETPOPUPPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef SetPosition(<TCustomForm>;TPosition);
	.uleb128	25
	.ascii	"SETPOSITION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La277-.Ldebug_info0
	.byte	0
# Procdef SetShowInTaskbar(<TCustomForm>;TShowInTaskbar);
	.uleb128	25
	.ascii	"SETSHOWINTASKBAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La279-.Ldebug_info0
	.byte	0
# Procdef SetLastFocusedControl(<TCustomForm>;TWinControl);
	.uleb128	25
	.ascii	"SETLASTFOCUSEDCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef SetWindowFocus(<TCustomForm>);
	.uleb128	25
	.ascii	"SETWINDOWFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef SetWindowState(<TCustomForm>;TWindowState);
	.uleb128	25
	.ascii	"SETWINDOWSTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La281-.Ldebug_info0
	.byte	0
# Procdef AddHandler(<TCustomForm>;TFormHandlerType;const TMethod;Boolean="FALSE");
	.uleb128	25
	.ascii	"ADDHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol HANDLERTYPE
	.uleb128	27
	.ascii	"HANDLERTYPE\000"
	.long	.La291-.Ldebug_info0
# Symbol HANDLER
	.uleb128	27
	.ascii	"HANDLER\000"
	.long	.La293-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	27
	.ascii	"ASFIRST\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef RemoveHandler(<TCustomForm>;TFormHandlerType;const TMethod);
	.uleb128	25
	.ascii	"REMOVEHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol HANDLERTYPE
	.uleb128	27
	.ascii	"HANDLERTYPE\000"
	.long	.La291-.Ldebug_info0
# Symbol HANDLER
	.uleb128	27
	.ascii	"HANDLER\000"
	.long	.La293-.Ldebug_info0
	.byte	0
# Procdef FindDefaultForActiveControl(<TCustomForm>):TWinControl;
	.uleb128	24
	.ascii	"FINDDEFAULTFORACTIVECONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La236-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef UpdateMenu(<TCustomForm>);
	.uleb128	25
	.ascii	"UPDATEMENU\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef UpdateShowInTaskBar(<TCustomForm>);
	.uleb128	25
	.ascii	"UPDATESHOWINTASKBAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef WMActivate(<TCustomForm>;var TLMActivate);
	.uleb128	25
	.ascii	"WMACTIVATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La295-.Ldebug_info0
	.byte	0
# Procdef WMCloseQuery(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"WMCLOSEQUERY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef WMHelp(<TCustomForm>;var TLMHelp);
	.uleb128	25
	.ascii	"WMHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La299-.Ldebug_info0
	.byte	0
# Procdef WMMove(<TCustomForm>;var TLMMove);
	.uleb128	25
	.ascii	"WMMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La301-.Ldebug_info0
	.byte	0
# Procdef WMShowWindow(<TCustomForm>;var TWMShowWindow);
	.uleb128	25
	.ascii	"WMSHOWWINDOW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La303-.Ldebug_info0
	.byte	0
# Procdef WMSize(<TCustomForm>;var TWMSize);
	.uleb128	25
	.ascii	"WMSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La305-.Ldebug_info0
	.byte	0
# Procdef WMWindowPosChanged(<TCustomForm>;var TLMWindowPosMsg);
	.uleb128	25
	.ascii	"WMWINDOWPOSCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La307-.Ldebug_info0
	.byte	0
# Procdef CMBiDiModeChanged(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMBIDIMODECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMParentBiDiModeChanged(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMPARENTBIDIMODECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMAppShowBtnGlyphChanged(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMAPPSHOWBTNGLYPHCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMAppShowMenuGlyphChanged(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMAPPSHOWMENUGLYPHCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMIconChanged(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMICONCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMRelease(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMRELEASE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMActivate(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMACTIVATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMDeactivate(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMDEACTIVATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMShowingChanged(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMSHOWINGCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef WMDPIChanged(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"WMDPICHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MSG
	.uleb128	27
	.ascii	"MSG\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TCustomForm>);
	.uleb128	18
	.ascii	"WSREGISTERCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	432
	.byte	34
	.byte	2
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La309-.Ldebug_info0
	.byte	0
# Procdef DoShowWindow(<TCustomForm>);
	.uleb128	18
	.ascii	"DOSHOWWINDOW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2304
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef Activate(<TCustomForm>);
	.uleb128	18
	.ascii	"ACTIVATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2312
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef ActiveChanged(<TCustomForm>);
	.uleb128	18
	.ascii	"ACTIVECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2320
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef AdjustClientRect(<TCustomForm>;var TRect);
	.uleb128	18
	.ascii	"ADJUSTCLIENTRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1680
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol RECT
	.uleb128	27
	.ascii	"RECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef BeginFormUpdate(<TCustomForm>);
	.uleb128	25
	.ascii	"BEGINFORMUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef ColorIsStored(<TCustomForm>):Boolean;
	.uleb128	31
	.ascii	"COLORISSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1264
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef CreateParams(<TCustomForm>;var TCreateParams);
	.uleb128	18
	.ascii	"CREATEPARAMS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2008
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol PARAMS
	.uleb128	27
	.ascii	"PARAMS\000"
	.long	.La143-.Ldebug_info0
	.byte	0
# Procdef CreateWnd(<TCustomForm>);
	.uleb128	18
	.ascii	"CREATEWND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2016
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef Deactivate(<TCustomForm>);
	.uleb128	18
	.ascii	"DEACTIVATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2328
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef DoClose(<TCustomForm>;var TCloseAction);
	.uleb128	18
	.ascii	"DOCLOSE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2336
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol CLOSEACTION
	.uleb128	27
	.ascii	"CLOSEACTION\000"
	.long	.La73-.Ldebug_info0
	.byte	0
# Procdef DoCreate(<TCustomForm>);
	.uleb128	18
	.ascii	"DOCREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2344
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef DoDestroy(<TCustomForm>);
	.uleb128	18
	.ascii	"DODESTROY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2352
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef DoHide(<TCustomForm>);
	.uleb128	18
	.ascii	"DOHIDE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2360
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef DoShow(<TCustomForm>);
	.uleb128	18
	.ascii	"DOSHOW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2368
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef EndFormUpdate(<TCustomForm>);
	.uleb128	25
	.ascii	"ENDFORMUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef HandleCreateException(<TCustomForm>):Boolean;
	.uleb128	31
	.ascii	"HANDLECREATEEXCEPTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2376
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef HandleDestroyException(<TCustomForm>):Boolean;
	.uleb128	31
	.ascii	"HANDLEDESTROYEXCEPTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2384
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef HandleShowHideException(<TCustomForm>):Boolean;
	.uleb128	31
	.ascii	"HANDLESHOWHIDEEXCEPTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2392
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef InitializeWnd(<TCustomForm>);
	.uleb128	18
	.ascii	"INITIALIZEWND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2056
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TCustomForm>);
	.uleb128	18
	.ascii	"LOADED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	264
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef ChildHandlesCreated(<TCustomForm>);
	.uleb128	18
	.ascii	"CHILDHANDLESCREATED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2064
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef Notification(<TCustomForm>;TComponent;TOperation);
	.uleb128	18
	.ascii	"NOTIFICATION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	280
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	27
	.ascii	"ACOMPONENT\000"
	.long	.La115-.Ldebug_info0
# Symbol OPERATION
	.uleb128	27
	.ascii	"OPERATION\000"
	.long	.La313-.Ldebug_info0
	.byte	0
# Procdef PaintWindow(<TCustomForm>;QWord);
	.uleb128	18
	.ascii	"PAINTWINDOW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1776
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol DC
	.uleb128	27
	.ascii	"DC\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef RequestAlign(<TCustomForm>);
	.uleb128	18
	.ascii	"REQUESTALIGN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	632
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef Resizing(<TCustomForm>;TWindowState);
	.uleb128	18
	.ascii	"RESIZING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2288
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol STATE
	.uleb128	27
	.ascii	"STATE\000"
	.long	.La281-.Ldebug_info0
	.byte	0
# Procdef CalculatePreferredSize(<TCustomForm>;var LongInt;var LongInt;Boolean);
	.uleb128	18
	.ascii	"CALCULATEPREFERREDSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	600
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol PREFERREDWIDTH
	.uleb128	27
	.ascii	"PREFERREDWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol PREFERREDHEIGHT
	.uleb128	27
	.ascii	"PREFERREDHEIGHT\000"
	.long	.La6-.Ldebug_info0
# Symbol WITHTHEMESPACE
	.uleb128	27
	.ascii	"WITHTHEMESPACE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetZOrder(<TCustomForm>;Boolean);
	.uleb128	18
	.ascii	"SETZORDER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1248
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol TOPMOST
	.uleb128	27
	.ascii	"TOPMOST\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetParent(<TCustomForm>;TWinControl);
	.uleb128	18
	.ascii	"SETPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1104
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol NEWPARENT
	.uleb128	27
	.ascii	"NEWPARENT\000"
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef MoveToDefaultPosition(<TCustomForm>);
	.uleb128	18
	.ascii	"MOVETODEFAULTPOSITION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2400
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef UpdateShowing(<TCustomForm>);
	.uleb128	18
	.ascii	"UPDATESHOWING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2088
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef SetVisible(<TCustomForm>;Boolean);
	.uleb128	18
	.ascii	"SETVISIBLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	472
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef AllAutoSized(<TCustomForm>);
	.uleb128	18
	.ascii	"ALLAUTOSIZED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1760
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef DoFirstShow(<TCustomForm>);
	.uleb128	18
	.ascii	"DOFIRSTSHOW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2408
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef UpdateWindowState(<TCustomForm>);
	.uleb128	25
	.ascii	"UPDATEWINDOWSTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef VisibleChanging(<TCustomForm>);
	.uleb128	18
	.ascii	"VISIBLECHANGING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1208
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef VisibleChanged(<TCustomForm>);
	.uleb128	18
	.ascii	"VISIBLECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1216
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef WndProc(<TCustomForm>;var TMessage);
	.uleb128	18
	.ascii	"WNDPROC\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1112
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol THEMESSAGE
	.uleb128	27
	.ascii	"THEMESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef VisibleIsStored(<TCustomForm>):Boolean;
	.uleb128	24
	.ascii	"VISIBLEISSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef DoSendBoundsToInterface(<TCustomForm>);
	.uleb128	18
	.ascii	"DOSENDBOUNDSTOINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1744
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef DoAutoSize(<TCustomForm>);
	.uleb128	18
	.ascii	"DOAUTOSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	488
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef SetAutoSize(<TCustomForm>;Boolean);
	.uleb128	18
	.ascii	"SETAUTOSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	536
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetAutoScroll(<TCustomForm>;Boolean);
	.uleb128	18
	.ascii	"SETAUTOSCROLL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2280
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetScaled(<TCustomForm>;const Boolean);
	.uleb128	18
	.ascii	"SETSCALED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2296
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol ASCALED
	.uleb128	27
	.ascii	"ASCALED\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DoAddActionList(<TCustomForm>;TCustomActionList);
	.uleb128	25
	.ascii	"DOADDACTIONLIST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol LIST
	.uleb128	27
	.ascii	"LIST\000"
	.long	.La315-.Ldebug_info0
	.byte	0
# Procdef DoRemoveActionList(<TCustomForm>;TCustomActionList);
	.uleb128	25
	.ascii	"DOREMOVEACTIONLIST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol LIST
	.uleb128	27
	.ascii	"LIST\000"
	.long	.La315-.Ldebug_info0
	.byte	0
# Procdef ProcessResource(<TCustomForm>);
	.uleb128	18
	.ascii	"PROCESSRESOURCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2416
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef BeginAutoDrag(<TCustomForm>);
	.uleb128	18
	.ascii	"BEGINAUTODRAG\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	792
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef DoDock(<TCustomForm>;TWinControl;var TRect);
	.uleb128	18
	.ascii	"DODOCK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	816
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol NEWDOCKSITE
	.uleb128	27
	.ascii	"NEWDOCKSITE\000"
	.long	.La236-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef GetFloating(<TCustomForm>):Boolean;
	.uleb128	31
	.ascii	"GETFLOATING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	768
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef GetDefaultDockCaption(<TCustomForm>;<var AnsiString>):AnsiString;
	.uleb128	31
	.ascii	"GETDEFAULTDOCKCAPTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	896
	.byte	34
	.byte	2
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef CMActionExecute(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMACTIONEXECUTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMActionUpdate(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMACTIONUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef DoExecuteAction(<TCustomForm>;TBasicAction):Boolean;
	.uleb128	24
	.ascii	"DOEXECUTEACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol EXEACTION
	.uleb128	27
	.ascii	"EXEACTION\000"
	.long	.La318-.Ldebug_info0
	.byte	0
# Procdef DoUpdateAction(<TCustomForm>;TBasicAction):Boolean;
	.uleb128	24
	.ascii	"DOUPDATEACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol THEACTION
	.uleb128	27
	.ascii	"THEACTION\000"
	.long	.La318-.Ldebug_info0
	.byte	0
# Procdef UpdateActions(<TCustomForm>);
	.uleb128	18
	.ascii	"UPDATEACTIONS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2424
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TCustomForm>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La112-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol AOWNER
	.uleb128	27
	.ascii	"AOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef constructor CreateNew(<TCustomForm>;<Pointer>;TComponent;LongInt="0");
	.uleb128	30
	.ascii	"CREATENEW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2432
	.byte	34
	.long	.La112-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol AOWNER
	.uleb128	27
	.ascii	"AOWNER\000"
	.long	.La115-.Ldebug_info0
# Symbol NUM
	.uleb128	27
	.ascii	"NUM\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TCustomForm>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef AfterConstruction(<TCustomForm>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef BeforeDestruction(<TCustomForm>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef class GetControlClassDefaultSize(<Class Of TCustomForm>):<record type>;
	.uleb128	30
	.ascii	"GETCONTROLCLASSDEFAULTSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1256
	.byte	34
	.long	.La321-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La323-.Ldebug_info0
	.byte	0
# Procdef BigIconHandle(<TCustomForm>):QWord;
	.uleb128	20
	.ascii	"BIGICONHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef Close(<TCustomForm>);
	.uleb128	29
	.ascii	"CLOSE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef CloseQuery(<TCustomForm>):Boolean;
	.uleb128	30
	.ascii	"CLOSEQUERY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2440
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef DefocusControl(<TCustomForm>;TWinControl;Boolean);
	.uleb128	29
	.ascii	"DEFOCUSCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol CONTROL
	.uleb128	27
	.ascii	"CONTROL\000"
	.long	.La236-.Ldebug_info0
# Symbol REMOVING
	.uleb128	27
	.ascii	"REMOVING\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DestroyWnd(<TCustomForm>);
	.uleb128	28
	.ascii	"DESTROYWND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2032
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef EnsureVisible(<TCustomForm>;Boolean="TRUE");
	.uleb128	29
	.ascii	"ENSUREVISIBLE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol AMOVETOTOP
	.uleb128	27
	.ascii	"AMOVETOTOP\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef FocusControl(<TCustomForm>;TWinControl);
	.uleb128	29
	.ascii	"FOCUSCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol WINCONTROL
	.uleb128	27
	.ascii	"WINCONTROL\000"
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef FormIsUpdating(<TCustomForm>):Boolean;
	.uleb128	30
	.ascii	"FORMISUPDATING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1536
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef GetFormImage(<TCustomForm>):TBitmap;
	.uleb128	20
	.ascii	"GETFORMIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La325-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef GetRolesForControl(<TCustomForm>;TControl):Set Of TControlRoleForForm;
	.uleb128	20
	.ascii	"GETROLESFORCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La328-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetRealPopupParent(<TCustomForm>):TCustomForm;
	.uleb128	20
	.ascii	"GETREALPOPUPPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef Hide(<TCustomForm>);
	.uleb128	29
	.ascii	"HIDE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef IntfDropFiles(<TCustomForm>;const {Open} Array Of AnsiString;<const Int64>);
	.uleb128	29
	.ascii	"INTFDROPFILES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol FILENAMES
	.uleb128	27
	.ascii	"FILENAMES\000"
	.long	.La330-.Ldebug_info0
# Symbol highFILENAMES
	.uleb128	27
	.ascii	"highFILENAMES\000"
	.long	.La168-.Ldebug_info0
# Definition {Open} Array Of AnsiString
.La330:
	.uleb128	38
	.long	.La59-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.byte	0
.La331:
	.uleb128	11
	.long	.La330-.Ldebug_info0
	.byte	0
# Procdef IntfHelp(<TCustomForm>;TComponent);
	.uleb128	29
	.ascii	"INTFHELP\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	27
	.ascii	"ACOMPONENT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef IsShortcut(<TCustomForm>;var TLMKey):Boolean;
	.uleb128	30
	.ascii	"ISSHORTCUT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2448
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef MakeFullyVisible(<TCustomForm>;TMonitor="nil";Boolean="FALSE");
	.uleb128	29
	.ascii	"MAKEFULLYVISIBLE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol AMONITOR
	.uleb128	27
	.ascii	"AMONITOR\000"
	.long	.La288-.Ldebug_info0
# Symbol USEWORKAREA
	.uleb128	27
	.ascii	"USEWORKAREA\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef AutoSizeDelayedHandle(<TCustomForm>):Boolean;
	.uleb128	30
	.ascii	"AUTOSIZEDELAYEDHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1384
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef GetPreferredSize(<TCustomForm>;var LongInt;var LongInt;Boolean="FALSE";Boolean="TRUE");
	.uleb128	28
	.ascii	"GETPREFERREDSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1416
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol PREFERREDWIDTH
	.uleb128	27
	.ascii	"PREFERREDWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol PREFERREDHEIGHT
	.uleb128	27
	.ascii	"PREFERREDHEIGHT\000"
	.long	.La6-.Ldebug_info0
# Symbol RAW
	.uleb128	27
	.ascii	"RAW\000"
	.long	.La38-.Ldebug_info0
# Symbol WITHTHEMESPACE
	.uleb128	27
	.ascii	"WITHTHEMESPACE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef Release(<TCustomForm>);
	.uleb128	29
	.ascii	"RELEASE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef CanFocus(<TCustomForm>):Boolean;
	.uleb128	30
	.ascii	"CANFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2120
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef SetFocus(<TCustomForm>);
	.uleb128	28
	.ascii	"SETFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2176
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef SetFocusedControl(<TCustomForm>;TWinControl):Boolean;
	.uleb128	30
	.ascii	"SETFOCUSEDCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2456
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol CONTROL
	.uleb128	27
	.ascii	"CONTROL\000"
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef SetRestoredBounds(<TCustomForm>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	29
	.ascii	"SETRESTOREDBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol ALEFT
	.uleb128	27
	.ascii	"ALEFT\000"
	.long	.La6-.Ldebug_info0
# Symbol ATOP
	.uleb128	27
	.ascii	"ATOP\000"
	.long	.La6-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	27
	.ascii	"AWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	27
	.ascii	"AHEIGHT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Show(<TCustomForm>);
	.uleb128	29
	.ascii	"SHOW\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef ShowModal(<TCustomForm>):LongInt;
	.uleb128	30
	.ascii	"SHOWMODAL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2464
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef ShowOnTop(<TCustomForm>);
	.uleb128	29
	.ascii	"SHOWONTOP\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef SmallIconHandle(<TCustomForm>):QWord;
	.uleb128	20
	.ascii	"SMALLICONHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef GetChildren(<TCustomForm>;TGetChildProc;TComponent);
	.uleb128	28
	.ascii	"GETCHILDREN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	240
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol PROC
	.uleb128	27
	.ascii	"PROC\000"
	.long	.La332-.Ldebug_info0
# Symbol ROOT
	.uleb128	27
	.ascii	"ROOT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef WantChildKey(<TCustomForm>;TControl;var TMessage):Boolean;
	.uleb128	30
	.ascii	"WANTCHILDKEY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2472
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol CHILD
	.uleb128	27
	.ascii	"CHILD\000"
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef RemoveAllHandlersOfObject(<TCustomForm>;TObject);
	.uleb128	28
	.ascii	"REMOVEALLHANDLERSOFOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	448
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol ANOBJECT
	.uleb128	27
	.ascii	"ANOBJECT\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef AddHandlerFirstShow(<TCustomForm>;TNotifyEvent;Boolean="FALSE");
	.uleb128	29
	.ascii	"ADDHANDLERFIRSTSHOW\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol ONFIRSTSHOWHANDLER
	.uleb128	27
	.ascii	"ONFIRSTSHOWHANDLER\000"
	.long	.La81-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	27
	.ascii	"ASFIRST\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerFirstShow(<TCustomForm>;TNotifyEvent);
	.uleb128	29
	.ascii	"REMOVEHANDLERFIRSTSHOW\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol ONFIRSTSHOWHANDLER
	.uleb128	27
	.ascii	"ONFIRSTSHOWHANDLER\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef AddHandlerClose(<TCustomForm>;TCloseEvent;Boolean="FALSE");
	.uleb128	29
	.ascii	"ADDHANDLERCLOSE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol ONCLOSEHANDLER
	.uleb128	27
	.ascii	"ONCLOSEHANDLER\000"
	.long	.La267-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	27
	.ascii	"ASFIRST\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerClose(<TCustomForm>;TCloseEvent);
	.uleb128	29
	.ascii	"REMOVEHANDLERCLOSE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol ONCLOSEHANDLER
	.uleb128	27
	.ascii	"ONCLOSEHANDLER\000"
	.long	.La267-.Ldebug_info0
	.byte	0
# Procdef AddHandlerCreate(<TCustomForm>;TNotifyEvent;Boolean="FALSE");
	.uleb128	29
	.ascii	"ADDHANDLERCREATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol ONCREATEHANDLER
	.uleb128	27
	.ascii	"ONCREATEHANDLER\000"
	.long	.La81-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	27
	.ascii	"ASFIRST\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerCreate(<TCustomForm>;TNotifyEvent);
	.uleb128	29
	.ascii	"REMOVEHANDLERCREATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol ONCREATEHANDLER
	.uleb128	27
	.ascii	"ONCREATEHANDLER\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef ActiveMDIChild(<TCustomForm>):TCustomForm;
	.uleb128	30
	.ascii	"ACTIVEMDICHILD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2480
	.byte	34
	.long	.La112-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef GetMDIChildren(<TCustomForm>;LongInt):TCustomForm;
	.uleb128	30
	.ascii	"GETMDICHILDREN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2488
	.byte	34
	.long	.La112-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol AINDEX
	.uleb128	27
	.ascii	"AINDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef MDIChildCount(<TCustomForm>):LongInt;
	.uleb128	30
	.ascii	"MDICHILDCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2496
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef AutoScale(<TCustomForm>);
	.uleb128	29
	.ascii	"AUTOSCALE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
	.byte	0
# Procdef Dock(<TCustomForm>;TWinControl;TRect);
	.uleb128	28
	.ascii	"DOCK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1304
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol NEWDOCKSITE
	.uleb128	27
	.ascii	"NEWDOCKSITE\000"
	.long	.La236-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef UpdateDockCaption(<TCustomForm>;TControl);
	.uleb128	28
	.ascii	"UPDATEDOCKCAPTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2200
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La112-.Ldebug_info0
# Symbol EXCLUDE
	.uleb128	27
	.ascii	"EXCLUDE\000"
	.long	.La239-.Ldebug_info0
	.byte	0
	.byte	0
.La113:
	.uleb128	11
	.long	.La112-.Ldebug_info0
# Definition TComponent
.La115:
	.uleb128	12
	.ascii	"TCOMPONENT\000"
	.long	.La334-.Ldebug_info0
.La334:
	.uleb128	15
	.long	.La117-.Ldebug_info0
.La117:
	.uleb128	16
	.ascii	"TCOMPONENT\000"
	.uleb128	96
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La337-.Ldebug_info0
	.uleb128	23
	.ascii	"FOWNER\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La115-.Ldebug_info0
	.uleb128	23
	.ascii	"FNAME\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"FTAG\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La168-.Ldebug_info0
	.uleb128	23
	.ascii	"FCOMPONENTS\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La338-.Ldebug_info0
	.uleb128	23
	.ascii	"FFREENOTIFIES\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La338-.Ldebug_info0
	.uleb128	23
	.ascii	"FDESIGNINFO\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FVCLCOMOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	3
	.long	.La36-.Ldebug_info0
	.uleb128	23
	.ascii	"FCOMPONENTSTATE\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La341-.Ldebug_info0
	.uleb128	23
	.ascii	"FCOMPONENTSTYLE\000"
	.byte	2
	.byte	35
	.uleb128	84
	.byte	2
	.long	.La343-.Ldebug_info0
	.uleb128	23
	.ascii	"COMPONENTSTATE\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La341-.Ldebug_info0
	.uleb128	23
	.ascii	"COMPONENTSTYLE\000"
	.byte	2
	.byte	35
	.uleb128	84
	.byte	2
	.long	.La343-.Ldebug_info0
	.uleb128	23
	.ascii	"DESIGNINFO\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"OWNER\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La115-.Ldebug_info0
	.uleb128	23
	.ascii	"VCLCOMOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	3
	.long	.La36-.Ldebug_info0
	.uleb128	23
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"TAG\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La168-.Ldebug_info0
# Procdef GetComObject(<TComponent>;<var IUnknown>):IUnknown;
	.uleb128	24
	.ascii	"GETCOMOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La345-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La345-.Ldebug_info0
	.byte	0
# Procdef GetComponent(<TComponent>;LongInt):TComponent;
	.uleb128	24
	.ascii	"GETCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La115-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol AINDEX
	.uleb128	27
	.ascii	"AINDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetComponentCount(<TComponent>):LongInt;
	.uleb128	24
	.ascii	"GETCOMPONENTCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef GetComponentIndex(<TComponent>):LongInt;
	.uleb128	24
	.ascii	"GETCOMPONENTINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef Insert(<TComponent>;TComponent);
	.uleb128	25
	.ascii	"INSERT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	27
	.ascii	"ACOMPONENT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef ReadLeft(<TComponent>;TReader);
	.uleb128	25
	.ascii	"READLEFT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol READER
	.uleb128	27
	.ascii	"READER\000"
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef ReadTop(<TComponent>;TReader);
	.uleb128	25
	.ascii	"READTOP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol READER
	.uleb128	27
	.ascii	"READER\000"
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef Remove(<TComponent>;TComponent);
	.uleb128	25
	.ascii	"REMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	27
	.ascii	"ACOMPONENT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef RemoveNotification(<TComponent>;TComponent);
	.uleb128	25
	.ascii	"REMOVENOTIFICATION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	27
	.ascii	"ACOMPONENT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef SetComponentIndex(<TComponent>;LongInt);
	.uleb128	25
	.ascii	"SETCOMPONENTINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetReference(<TComponent>;Boolean);
	.uleb128	25
	.ascii	"SETREFERENCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol ENABLE
	.uleb128	27
	.ascii	"ENABLE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef WriteLeft(<TComponent>;TWriter);
	.uleb128	25
	.ascii	"WRITELEFT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol WRITER
	.uleb128	27
	.ascii	"WRITER\000"
	.long	.La351-.Ldebug_info0
	.byte	0
# Procdef WriteTop(<TComponent>;TWriter);
	.uleb128	25
	.ascii	"WRITETOP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol WRITER
	.uleb128	27
	.ascii	"WRITER\000"
	.long	.La351-.Ldebug_info0
	.byte	0
# Procdef ChangeName(<TComponent>;const AnsiString);
	.uleb128	25
	.ascii	"CHANGENAME\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol NEWNAME
	.uleb128	27
	.ascii	"NEWNAME\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef DefineProperties(<TComponent>;TFiler);
	.uleb128	18
	.ascii	"DEFINEPROPERTIES\000"
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
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol FILER
	.uleb128	27
	.ascii	"FILER\000"
	.long	.La354-.Ldebug_info0
	.byte	0
# Procdef GetChildren(<TComponent>;TGetChildProc;TComponent);
	.uleb128	18
	.ascii	"GETCHILDREN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	240
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol PROC
	.uleb128	27
	.ascii	"PROC\000"
	.long	.La357-.Ldebug_info0
# Symbol ROOT
	.uleb128	27
	.ascii	"ROOT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef GetChildOwner(<TComponent>):TComponent;
	.uleb128	31
	.ascii	"GETCHILDOWNER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	248
	.byte	34
	.byte	2
	.long	.La115-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef GetChildParent(<TComponent>):TComponent;
	.uleb128	31
	.ascii	"GETCHILDPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	256
	.byte	34
	.byte	2
	.long	.La115-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef GetOwner(<TComponent>):TPersistent;
	.uleb128	31
	.ascii	"GETOWNER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	216
	.byte	34
	.byte	2
	.long	.La335-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TComponent>);
	.uleb128	18
	.ascii	"LOADED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	264
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef Loading(<TComponent>);
	.uleb128	18
	.ascii	"LOADING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	272
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef Notification(<TComponent>;TComponent;TOperation);
	.uleb128	18
	.ascii	"NOTIFICATION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	280
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	27
	.ascii	"ACOMPONENT\000"
	.long	.La115-.Ldebug_info0
# Symbol OPERATION
	.uleb128	27
	.ascii	"OPERATION\000"
	.long	.La313-.Ldebug_info0
	.byte	0
# Procdef PaletteCreated(<TComponent>);
	.uleb128	18
	.ascii	"PALETTECREATED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	288
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef ReadState(<TComponent>;TReader);
	.uleb128	18
	.ascii	"READSTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	296
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol READER
	.uleb128	27
	.ascii	"READER\000"
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef SetAncestor(<TComponent>;Boolean);
	.uleb128	25
	.ascii	"SETANCESTOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetDesigning(<TComponent>;Boolean;Boolean="TRUE");
	.uleb128	25
	.ascii	"SETDESIGNING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
# Symbol SETCHILDREN
	.uleb128	27
	.ascii	"SETCHILDREN\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetDesignInstance(<TComponent>;Boolean);
	.uleb128	25
	.ascii	"SETDESIGNINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetInline(<TComponent>;Boolean);
	.uleb128	25
	.ascii	"SETINLINE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetName(<TComponent>;const AnsiString);
	.uleb128	18
	.ascii	"SETNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	304
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol NEWNAME
	.uleb128	27
	.ascii	"NEWNAME\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef SetChildOrder(<TComponent>;TComponent;LongInt);
	.uleb128	18
	.ascii	"SETCHILDORDER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	312
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol CHILD
	.uleb128	27
	.ascii	"CHILD\000"
	.long	.La115-.Ldebug_info0
# Symbol ORDER
	.uleb128	27
	.ascii	"ORDER\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetParentComponent(<TComponent>;TComponent);
	.uleb128	18
	.ascii	"SETPARENTCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	320
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef Updating(<TComponent>);
	.uleb128	18
	.ascii	"UPDATING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	328
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef Updated(<TComponent>);
	.uleb128	18
	.ascii	"UPDATED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	336
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef class UpdateRegistry(<Class Of TComponent>;Boolean;const AnsiString;const AnsiString);
	.uleb128	18
	.ascii	"UPDATEREGISTRY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	344
	.byte	34
	.byte	2
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La359-.Ldebug_info0
# Symbol REGISTER
	.uleb128	27
	.ascii	"REGISTER\000"
	.long	.La38-.Ldebug_info0
# Symbol CLASSID
	.uleb128	27
	.ascii	"CLASSID\000"
	.long	.La59-.Ldebug_info0
# Symbol PROGID
	.uleb128	27
	.ascii	"PROGID\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef ValidateRename(<TComponent>;TComponent;const AnsiString;const AnsiString);
	.uleb128	18
	.ascii	"VALIDATERENAME\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	352
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	27
	.ascii	"ACOMPONENT\000"
	.long	.La115-.Ldebug_info0
# Symbol CURNAME
	.uleb128	27
	.ascii	"CURNAME\000"
	.long	.La59-.Ldebug_info0
# Symbol NEWNAME
	.uleb128	27
	.ascii	"NEWNAME\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef ValidateContainer(<TComponent>;TComponent);
	.uleb128	18
	.ascii	"VALIDATECONTAINER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	360
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	27
	.ascii	"ACOMPONENT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef ValidateInsert(<TComponent>;TComponent);
	.uleb128	18
	.ascii	"VALIDATEINSERT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	368
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	27
	.ascii	"ACOMPONENT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef QueryInterface(<TComponent>;constref TGuid;out <Formal type>):LongInt; StdCall;
	.uleb128	40
	.ascii	"QUERYINTERFACE\000"
	.byte	1
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	376
	.byte	34
	.byte	2
	.long	.La148-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol IID
	.uleb128	27
	.ascii	"IID\000"
	.long	.La182-.Ldebug_info0
# Symbol OBJ
	.uleb128	27
	.ascii	"OBJ\000"
	.long	.La150-.Ldebug_info0
	.byte	0
# Procdef _AddRef(<TComponent>):LongInt; StdCall;
	.uleb128	41
	.ascii	"_ADDREF\000"
	.byte	1
	.byte	1
	.byte	2
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef _Release(<TComponent>):LongInt; StdCall;
	.uleb128	41
	.ascii	"_RELEASE\000"
	.byte	1
	.byte	1
	.byte	2
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef iicrGetComponent(<TComponent>):TComponent;
	.uleb128	24
	.ascii	"IICRGETCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La115-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef GetTypeInfoCount(<TComponent>;out LongInt):LongInt; StdCall;
	.uleb128	41
	.ascii	"GETTYPEINFOCOUNT\000"
	.byte	1
	.byte	1
	.byte	2
	.long	.La148-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol COUNT
	.uleb128	27
	.ascii	"COUNT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetTypeInfo(<TComponent>;LongInt;LongInt;out <Formal type>):LongInt; StdCall;
	.uleb128	41
	.ascii	"GETTYPEINFO\000"
	.byte	1
	.byte	1
	.byte	2
	.long	.La148-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol LOCALEID
	.uleb128	27
	.ascii	"LOCALEID\000"
	.long	.La6-.Ldebug_info0
# Symbol TYPEINFO
	.uleb128	27
	.ascii	"TYPEINFO\000"
	.long	.La150-.Ldebug_info0
	.byte	0
# Procdef GetIDsOfNames(<TComponent>;const TGuid;Pointer;LongInt;LongInt;Pointer):LongInt; StdCall;
	.uleb128	41
	.ascii	"GETIDSOFNAMES\000"
	.byte	1
	.byte	1
	.byte	2
	.long	.La148-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol IID
	.uleb128	27
	.ascii	"IID\000"
	.long	.La182-.Ldebug_info0
# Symbol NAMES
	.uleb128	27
	.ascii	"NAMES\000"
	.long	.La36-.Ldebug_info0
# Symbol NAMECOUNT
	.uleb128	27
	.ascii	"NAMECOUNT\000"
	.long	.La6-.Ldebug_info0
# Symbol LOCALEID
	.uleb128	27
	.ascii	"LOCALEID\000"
	.long	.La6-.Ldebug_info0
# Symbol DISPIDS
	.uleb128	27
	.ascii	"DISPIDS\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef Invoke(<TComponent>;LongInt;const TGuid;LongInt;Word;var <Formal type>;Pointer;Pointer;Pointer):LongInt; StdCall;
	.uleb128	41
	.ascii	"INVOKE\000"
	.byte	1
	.byte	1
	.byte	2
	.long	.La148-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol DISPID
	.uleb128	27
	.ascii	"DISPID\000"
	.long	.La6-.Ldebug_info0
# Symbol IID
	.uleb128	27
	.ascii	"IID\000"
	.long	.La182-.Ldebug_info0
# Symbol LOCALEID
	.uleb128	27
	.ascii	"LOCALEID\000"
	.long	.La6-.Ldebug_info0
# Symbol FLAGS
	.uleb128	27
	.ascii	"FLAGS\000"
	.long	.La8-.Ldebug_info0
# Symbol PARAMS
	.uleb128	27
	.ascii	"PARAMS\000"
	.long	.La150-.Ldebug_info0
# Symbol VARRESULT
	.uleb128	27
	.ascii	"VARRESULT\000"
	.long	.La36-.Ldebug_info0
# Symbol EXCEPINFO
	.uleb128	27
	.ascii	"EXCEPINFO\000"
	.long	.La36-.Ldebug_info0
# Symbol ARGERR
	.uleb128	27
	.ascii	"ARGERR\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef WriteState(<TComponent>;TWriter);
	.uleb128	28
	.ascii	"WRITESTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	384
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol WRITER
	.uleb128	27
	.ascii	"WRITER\000"
	.long	.La351-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TComponent>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La115-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol AOWNER
	.uleb128	27
	.ascii	"AOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TComponent>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef BeforeDestruction(<TComponent>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef DestroyComponents(<TComponent>);
	.uleb128	29
	.ascii	"DESTROYCOMPONENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef Destroying(<TComponent>);
	.uleb128	29
	.ascii	"DESTROYING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef ExecuteAction(<TComponent>;TBasicAction):Boolean;
	.uleb128	30
	.ascii	"EXECUTEACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	400
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol ACTION
	.uleb128	27
	.ascii	"ACTION\000"
	.long	.La318-.Ldebug_info0
	.byte	0
# Procdef FindComponent(<TComponent>;const AnsiString):TComponent;
	.uleb128	20
	.ascii	"FINDCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol ANAME
	.uleb128	27
	.ascii	"ANAME\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef FreeNotification(<TComponent>;TComponent);
	.uleb128	29
	.ascii	"FREENOTIFICATION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	27
	.ascii	"ACOMPONENT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef RemoveFreeNotification(<TComponent>;TComponent);
	.uleb128	29
	.ascii	"REMOVEFREENOTIFICATION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	27
	.ascii	"ACOMPONENT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef FreeOnRelease(<TComponent>);
	.uleb128	29
	.ascii	"FREEONRELEASE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef GetEnumerator(<TComponent>):TComponentEnumerator;
	.uleb128	20
	.ascii	"GETENUMERATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La361-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef GetNamePath(<TComponent>;<var AnsiString>):AnsiString;
	.uleb128	30
	.ascii	"GETNAMEPATH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	232
	.byte	34
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef GetParentComponent(<TComponent>):TComponent;
	.uleb128	30
	.ascii	"GETPARENTCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	408
	.byte	34
	.long	.La115-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef HasParent(<TComponent>):Boolean;
	.uleb128	30
	.ascii	"HASPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	416
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef InsertComponent(<TComponent>;TComponent);
	.uleb128	29
	.ascii	"INSERTCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	27
	.ascii	"ACOMPONENT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef RemoveComponent(<TComponent>;TComponent);
	.uleb128	29
	.ascii	"REMOVECOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	27
	.ascii	"ACOMPONENT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef SafeCallException(<TComponent>;TObject;Pointer):LongInt;
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
	.long	.La148-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol EXCEPTOBJECT
	.uleb128	27
	.ascii	"EXCEPTOBJECT\000"
	.long	.La56-.Ldebug_info0
# Symbol EXCEPTADDR
	.uleb128	27
	.ascii	"EXCEPTADDR\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef SetSubComponent(<TComponent>;Boolean);
	.uleb128	29
	.ascii	"SETSUBCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol ASUBCOMPONENT
	.uleb128	27
	.ascii	"ASUBCOMPONENT\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef UpdateAction(<TComponent>;TBasicAction):Boolean;
	.uleb128	30
	.ascii	"UPDATEACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	424
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol ACTION
	.uleb128	27
	.ascii	"ACTION\000"
	.long	.La318-.Ldebug_info0
	.byte	0
# Procdef IsImplementorOf(<TComponent>;const IUnknown):Boolean;
	.uleb128	20
	.ascii	"ISIMPLEMENTOROF\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol INTF
	.uleb128	27
	.ascii	"INTF\000"
	.long	.La345-.Ldebug_info0
	.byte	0
# Procdef ReferenceInterface(<TComponent>;const IUnknown;TOperation);
	.uleb128	29
	.ascii	"REFERENCEINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol INTF
	.uleb128	27
	.ascii	"INTF\000"
	.long	.La345-.Ldebug_info0
# Symbol OP
	.uleb128	27
	.ascii	"OP\000"
	.long	.La313-.Ldebug_info0
	.byte	0
	.byte	0
.La116:
	.uleb128	11
	.long	.La115-.Ldebug_info0
# Definition TCustomButton
.La119:
	.uleb128	12
	.ascii	"TCUSTOMBUTTON\000"
	.long	.La364-.Ldebug_info0
.La364:
	.uleb128	15
	.long	.La121-.Ldebug_info0
.La121:
	.uleb128	16
	.ascii	"TCUSTOMBUTTON\000"
	.uleb128	1424
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La367-.Ldebug_info0
	.uleb128	23
	.ascii	"FMODALRESULT\000"
	.byte	3
	.byte	35
	.uleb128	1408
	.byte	3
	.long	.La263-.Ldebug_info0
	.uleb128	23
	.ascii	"FSHORTCUT\000"
	.byte	3
	.byte	35
	.uleb128	1412
	.byte	3
	.long	.La368-.Ldebug_info0
	.uleb128	23
	.ascii	"FSHORTCUTKEY2\000"
	.byte	3
	.byte	35
	.uleb128	1414
	.byte	3
	.long	.La368-.Ldebug_info0
	.uleb128	23
	.ascii	"FCANCEL\000"
	.byte	3
	.byte	35
	.uleb128	1416
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FDEFAULT\000"
	.byte	3
	.byte	35
	.uleb128	1417
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FACTIVE\000"
	.byte	3
	.byte	35
	.uleb128	1418
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FROLESUPDATELOCKED\000"
	.byte	3
	.byte	35
	.uleb128	1419
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"ACTIVE\000"
	.byte	3
	.byte	35
	.uleb128	1418
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"DEFAULT\000"
	.byte	3
	.byte	35
	.uleb128	1417
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"MODALRESULT\000"
	.byte	3
	.byte	35
	.uleb128	1408
	.byte	3
	.long	.La263-.Ldebug_info0
	.uleb128	23
	.ascii	"SHORTCUT\000"
	.byte	3
	.byte	35
	.uleb128	1412
	.byte	3
	.long	.La368-.Ldebug_info0
	.uleb128	23
	.ascii	"SHORTCUTKEY2\000"
	.byte	3
	.byte	35
	.uleb128	1414
	.byte	3
	.long	.La368-.Ldebug_info0
	.uleb128	23
	.ascii	"CANCEL\000"
	.byte	3
	.byte	35
	.uleb128	1416
	.byte	3
	.long	.La38-.Ldebug_info0
# Procdef SetCancel(<TCustomButton>;Boolean);
	.uleb128	25
	.ascii	"SETCANCEL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
# Symbol NEWCANCEL
	.uleb128	27
	.ascii	"NEWCANCEL\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetDefault(<TCustomButton>;Boolean);
	.uleb128	25
	.ascii	"SETDEFAULT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetModalResult(<TCustomButton>;const TModalResult);
	.uleb128	25
	.ascii	"SETMODALRESULT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La263-.Ldebug_info0
	.byte	0
# Procdef CMUIActivate(<TCustomButton>;var TMessage);
	.uleb128	25
	.ascii	"CMUIACTIVATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef WMSetFocus(<TCustomButton>;var TLMSetFocus);
	.uleb128	25
	.ascii	"WMSETFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La370-.Ldebug_info0
	.byte	0
# Procdef WMKillFocus(<TCustomButton>;var TWMKillFocus);
	.uleb128	25
	.ascii	"WMKILLFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La372-.Ldebug_info0
	.byte	0
# Procdef UpdateFocus(<TCustomButton>;Boolean);
	.uleb128	25
	.ascii	"UPDATEFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
# Symbol AFOCUSED
	.uleb128	27
	.ascii	"AFOCUSED\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TCustomButton>);
	.uleb128	18
	.ascii	"WSREGISTERCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	432
	.byte	34
	.byte	2
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La374-.Ldebug_info0
	.byte	0
# Procdef CreateWnd(<TCustomButton>);
	.uleb128	18
	.ascii	"CREATEWND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2016
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
	.byte	0
# Procdef CreateParams(<TCustomButton>;var TCreateParams);
	.uleb128	18
	.ascii	"CREATEPARAMS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2008
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
# Symbol PARAMS
	.uleb128	27
	.ascii	"PARAMS\000"
	.long	.La143-.Ldebug_info0
	.byte	0
# Procdef ControlKeyDown(<TCustomButton>;var Word;TShiftState);
	.uleb128	18
	.ascii	"CONTROLKEYDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1920
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
# Symbol KEY
	.uleb128	27
	.ascii	"KEY\000"
	.long	.La8-.Ldebug_info0
# Symbol SHIFT
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
	.byte	0
# Procdef ControlKeyUp(<TCustomButton>;var Word;TShiftState);
	.uleb128	18
	.ascii	"CONTROLKEYUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1928
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
# Symbol KEY
	.uleb128	27
	.ascii	"KEY\000"
	.long	.La8-.Ldebug_info0
# Symbol SHIFT
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
	.byte	0
# Procdef DialogChar(<TCustomButton>;var TLMKey):Boolean;
	.uleb128	31
	.ascii	"DIALOGCHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	976
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef ChildClassAllowed(<TCustomButton>;TClass):Boolean;
	.uleb128	31
	.ascii	"CHILDCLASSALLOWED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	992
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
# Symbol CHILDCLASS
	.uleb128	27
	.ascii	"CHILDCLASS\000"
	.long	.La154-.Ldebug_info0
	.byte	0
# Procdef class GetControlClassDefaultSize(<Class Of TCustomButton>):<record type>;
	.uleb128	31
	.ascii	"GETCONTROLCLASSDEFAULTSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1256
	.byte	34
	.byte	2
	.long	.La321-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La378-.Ldebug_info0
	.byte	0
# Procdef WSSetDefault(<TCustomButton>);
	.uleb128	25
	.ascii	"WSSETDEFAULT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
	.byte	0
# Procdef WSSetText(<TCustomButton>;const AnsiString);
	.uleb128	18
	.ascii	"WSSETTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2096
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
# Symbol ATEXT
	.uleb128	27
	.ascii	"ATEXT\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef TextChanged(<TCustomButton>);
	.uleb128	18
	.ascii	"TEXTCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1056
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TCustomButton>);
	.uleb128	18
	.ascii	"LOADED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	264
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
	.byte	0
# Procdef UpdateDefaultCancel(<TCustomButton>);
	.uleb128	25
	.ascii	"UPDATEDEFAULTCANCEL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TCustomButton>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La119-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	27
	.ascii	"THEOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef Click(<TCustomButton>);
	.uleb128	28
	.ascii	"CLICK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	904
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
	.byte	0
# Procdef ExecuteDefaultAction(<TCustomButton>);
	.uleb128	28
	.ascii	"EXECUTEDEFAULTACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1496
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
	.byte	0
# Procdef ExecuteCancelAction(<TCustomButton>);
	.uleb128	28
	.ascii	"EXECUTECANCELACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1504
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
	.byte	0
# Procdef ActiveDefaultControlChanged(<TCustomButton>;TControl);
	.uleb128	28
	.ascii	"ACTIVEDEFAULTCONTROLCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1584
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
# Symbol NEWCONTROL
	.uleb128	27
	.ascii	"NEWCONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef UpdateRolesForForm(<TCustomButton>);
	.uleb128	28
	.ascii	"UPDATEROLESFORFORM\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1576
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
	.byte	0
# Procdef UseRightToLeftAlignment(<TCustomButton>):Boolean;
	.uleb128	30
	.ascii	"USERIGHTTOLEFTALIGNMENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1664
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La119-.Ldebug_info0
	.byte	0
	.byte	0
.La120:
	.uleb128	11
	.long	.La119-.Ldebug_info0
# Definition TCustomCheckBox
.La123:
	.uleb128	12
	.ascii	"TCUSTOMCHECKBOX\000"
	.long	.La380-.Ldebug_info0
.La380:
	.uleb128	15
	.long	.La125-.Ldebug_info0
.La125:
	.uleb128	16
	.ascii	"TCUSTOMCHECKBOX\000"
	.uleb128	1424
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La367-.Ldebug_info0
	.uleb128	23
	.ascii	"FALIGNMENT\000"
	.byte	3
	.byte	35
	.uleb128	1408
	.byte	3
	.long	.La381-.Ldebug_info0
	.uleb128	23
	.ascii	"FALLOWGRAYED\000"
	.byte	3
	.byte	35
	.uleb128	1412
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FSTATE\000"
	.byte	3
	.byte	35
	.uleb128	1416
	.byte	3
	.long	.La383-.Ldebug_info0
	.uleb128	23
	.ascii	"FSHORTCUT\000"
	.byte	3
	.byte	35
	.uleb128	1420
	.byte	3
	.long	.La368-.Ldebug_info0
	.uleb128	23
	.ascii	"FSHORTCUTKEY2\000"
	.byte	3
	.byte	35
	.uleb128	1422
	.byte	3
	.long	.La368-.Ldebug_info0
	.uleb128	23
	.ascii	"ALLOWGRAYED\000"
	.byte	3
	.byte	35
	.uleb128	1412
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"SHORTCUT\000"
	.byte	3
	.byte	35
	.uleb128	1420
	.byte	3
	.long	.La368-.Ldebug_info0
	.uleb128	23
	.ascii	"SHORTCUTKEY2\000"
	.byte	3
	.byte	35
	.uleb128	1422
	.byte	3
	.long	.La368-.Ldebug_info0
# Procdef GetAlignment(<TCustomCheckBox>):<enumeration type>;
	.uleb128	24
	.ascii	"GETALIGNMENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La381-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef SetAlignment(<TCustomCheckBox>;TLeftRight);
	.uleb128	25
	.ascii	"SETALIGNMENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La381-.Ldebug_info0
	.byte	0
# Procdef SetState(<TCustomCheckBox>;TCheckBoxState);
	.uleb128	25
	.ascii	"SETSTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La383-.Ldebug_info0
	.byte	0
# Procdef GetState(<TCustomCheckBox>):<enumeration type>;
	.uleb128	24
	.ascii	"GETSTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La383-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef DoChange(<TCustomCheckBox>;var <Formal type>);
	.uleb128	25
	.ascii	"DOCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol MSG
	.uleb128	27
	.ascii	"MSG\000"
	.long	.La150-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TCustomCheckBox>);
	.uleb128	18
	.ascii	"WSREGISTERCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	432
	.byte	34
	.byte	2
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La385-.Ldebug_info0
	.byte	0
# Procdef Click(<TCustomCheckBox>);
	.uleb128	18
	.ascii	"CLICK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	904
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef DoClickOnChange(<TCustomCheckBox>);
	.uleb128	18
	.ascii	"DOCLICKONCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2272
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef RetrieveState(<TCustomCheckBox>):<enumeration type>;
	.uleb128	24
	.ascii	"RETRIEVESTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La383-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef InitializeWnd(<TCustomCheckBox>);
	.uleb128	18
	.ascii	"INITIALIZEWND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2056
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef Toggle(<TCustomCheckBox>);
	.uleb128	18
	.ascii	"TOGGLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2280
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef DialogChar(<TCustomCheckBox>;var TLMKey):Boolean;
	.uleb128	31
	.ascii	"DIALOGCHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	976
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef GetChecked(<TCustomCheckBox>):Boolean;
	.uleb128	31
	.ascii	"GETCHECKED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2248
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef SetChecked(<TCustomCheckBox>;Boolean);
	.uleb128	18
	.ascii	"SETCHECKED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2256
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef RealSetText(<TCustomCheckBox>;const TTranslateString);
	.uleb128	18
	.ascii	"REALSETTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1048
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La141-.Ldebug_info0
	.byte	0
# Procdef ApplyChanges(<TCustomCheckBox>);
	.uleb128	18
	.ascii	"APPLYCHANGES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2288
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef class GetControlClassDefaultSize(<Class Of TCustomCheckBox>):<record type>;
	.uleb128	31
	.ascii	"GETCONTROLCLASSDEFAULTSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1256
	.byte	34
	.byte	2
	.long	.La321-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La387-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TCustomCheckBox>);
	.uleb128	18
	.ascii	"LOADED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	264
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef WSSetText(<TCustomCheckBox>;const AnsiString);
	.uleb128	18
	.ascii	"WSSETTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2096
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol ATEXT
	.uleb128	27
	.ascii	"ATEXT\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef TextChanged(<TCustomCheckBox>);
	.uleb128	18
	.ascii	"TEXTCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1056
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef CreateParams(<TCustomCheckBox>;var TCreateParams);
	.uleb128	18
	.ascii	"CREATEPARAMS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2008
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol PARAMS
	.uleb128	27
	.ascii	"PARAMS\000"
	.long	.La143-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TCustomCheckBox>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La123-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	27
	.ascii	"THEOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
	.byte	0
.La124:
	.uleb128	11
	.long	.La123-.Ldebug_info0
# Definition TFileDialog
.La127:
	.uleb128	12
	.ascii	"TFILEDIALOG\000"
	.long	.La389-.Ldebug_info0
.La389:
	.uleb128	15
	.long	.La129-.Ldebug_info0
.La129:
	.uleb128	16
	.ascii	"TFILEDIALOG\000"
	.uleb128	304
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La392-.Ldebug_info0
	.uleb128	23
	.ascii	"FINTERNALFILTERINDEX\000"
	.byte	3
	.byte	35
	.uleb128	208
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FDEFAULTEXT\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"FFILENAME\000"
	.byte	3
	.byte	35
	.uleb128	224
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"FFILES\000"
	.byte	3
	.byte	35
	.uleb128	232
	.byte	3
	.long	.La393-.Ldebug_info0
	.uleb128	23
	.ascii	"FFILTER\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"FFILTERINDEX\000"
	.byte	3
	.byte	35
	.uleb128	248
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FHISTORYLIST\000"
	.byte	3
	.byte	35
	.uleb128	256
	.byte	3
	.long	.La393-.Ldebug_info0
	.uleb128	23
	.ascii	"FINITIALDIR\000"
	.byte	3
	.byte	35
	.uleb128	264
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"FONHELPCLICKED\000"
	.byte	3
	.byte	35
	.uleb128	272
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONTYPECHANGE\000"
	.byte	3
	.byte	35
	.uleb128	288
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FILES\000"
	.byte	3
	.byte	35
	.uleb128	232
	.byte	3
	.long	.La393-.Ldebug_info0
	.uleb128	23
	.ascii	"HISTORYLIST\000"
	.byte	3
	.byte	35
	.uleb128	256
	.byte	3
	.long	.La393-.Ldebug_info0
	.uleb128	23
	.ascii	"DEFAULTEXT\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"FILENAME\000"
	.byte	3
	.byte	35
	.uleb128	224
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"FILTER\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"INITIALDIR\000"
	.byte	3
	.byte	35
	.uleb128	264
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"ONHELPCLICKED\000"
	.byte	3
	.byte	35
	.uleb128	272
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONTYPECHANGE\000"
	.byte	3
	.byte	35
	.uleb128	288
	.byte	3
	.long	.La81-.Ldebug_info0
# Procdef SetDefaultExt(<TFileDialog>;const AnsiString);
	.uleb128	25
	.ascii	"SETDEFAULTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La127-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef SetFilterIndex(<TFileDialog>;const LongInt);
	.uleb128	25
	.ascii	"SETFILTERINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La127-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TFileDialog>);
	.uleb128	18
	.ascii	"WSREGISTERCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	432
	.byte	34
	.byte	2
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La396-.Ldebug_info0
	.byte	0
# Procdef GetFilterIndex(<TFileDialog>):LongInt;
	.uleb128	31
	.ascii	"GETFILTERINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	544
	.byte	34
	.byte	2
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La127-.Ldebug_info0
	.byte	0
# Procdef SetFileName(<TFileDialog>;const AnsiString);
	.uleb128	18
	.ascii	"SETFILENAME\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	552
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La127-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef SetFilter(<TFileDialog>;const AnsiString);
	.uleb128	18
	.ascii	"SETFILTER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	560
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La127-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef SetHistoryList(<TFileDialog>;const TStrings);
	.uleb128	18
	.ascii	"SETHISTORYLIST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	568
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La127-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La393-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TFileDialog>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La127-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La127-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	27
	.ascii	"THEOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TFileDialog>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La127-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef DoCanClose(<TFileDialog>;var Boolean);
	.uleb128	28
	.ascii	"DOCANCLOSE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	528
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La127-.Ldebug_info0
# Symbol CANCLOSE
	.uleb128	27
	.ascii	"CANCLOSE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DoTypeChange(<TFileDialog>);
	.uleb128	28
	.ascii	"DOTYPECHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	576
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La127-.Ldebug_info0
	.byte	0
# Procdef IntfFileTypeChanged(<TFileDialog>;LongInt);
	.uleb128	29
	.ascii	"INTFFILETYPECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La127-.Ldebug_info0
# Symbol NEWFILTERINDEX
	.uleb128	27
	.ascii	"NEWFILTERINDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef class FindMaskInFilter(<Class Of TFileDialog>;AnsiString;AnsiString):LongInt;
	.uleb128	20
	.ascii	"FINDMASKINFILTER\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La398-.Ldebug_info0
# Symbol AFILTER
	.uleb128	27
	.ascii	"AFILTER\000"
	.long	.La59-.Ldebug_info0
# Symbol AMASK
	.uleb128	27
	.ascii	"AMASK\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef class ExtractAllFilterMasks(<Class Of TFileDialog>;<var AnsiString>;AnsiString;Boolean="TRUE"):AnsiString;
	.uleb128	20
	.ascii	"EXTRACTALLFILTERMASKS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La59-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La400-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
# Symbol AFILTER
	.uleb128	27
	.ascii	"AFILTER\000"
	.long	.La59-.Ldebug_info0
# Symbol SKIPALLFILESMASK
	.uleb128	27
	.ascii	"SKIPALLFILESMASK\000"
	.long	.La38-.Ldebug_info0
	.byte	0
	.byte	0
.La128:
	.uleb128	11
	.long	.La127-.Ldebug_info0
# Definition TOpenOptions
.La130:
	.uleb128	12
	.ascii	"TOPENOPTIONS\000"
	.long	.La402-.Ldebug_info0
.La402:
	.uleb128	42
	.ascii	"TOPENOPTIONS\000"
	.byte	7
	.short	4
.La131:
	.uleb128	11
	.long	.La130-.Ldebug_info0
# Definition TOpenDialog.Class Of TOpenDialog
.La132:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La133:
	.uleb128	11
	.long	.La132-.Ldebug_info0
# Definition TOpenOption
.La134:
	.uleb128	12
	.ascii	"TOPENOPTION\000"
	.long	.La403-.Ldebug_info0
.La403:
	.uleb128	34
	.ascii	"TOPENOPTION\000"
	.byte	4
	.uleb128	35
	.ascii	"OFREADONLY\000"
	.long	0
	.uleb128	35
	.ascii	"OFOVERWRITEPROMPT\000"
	.long	1
	.uleb128	35
	.ascii	"OFHIDEREADONLY\000"
	.long	2
	.uleb128	35
	.ascii	"OFNOCHANGEDIR\000"
	.long	3
	.uleb128	35
	.ascii	"OFSHOWHELP\000"
	.long	4
	.uleb128	35
	.ascii	"OFNOVALIDATE\000"
	.long	5
	.uleb128	35
	.ascii	"OFALLOWMULTISELECT\000"
	.long	6
	.uleb128	35
	.ascii	"OFEXTENSIONDIFFERENT\000"
	.long	7
	.uleb128	35
	.ascii	"OFPATHMUSTEXIST\000"
	.long	8
	.uleb128	35
	.ascii	"OFFILEMUSTEXIST\000"
	.long	9
	.uleb128	35
	.ascii	"OFCREATEPROMPT\000"
	.long	10
	.uleb128	35
	.ascii	"OFSHAREAWARE\000"
	.long	11
	.uleb128	35
	.ascii	"OFNOREADONLYRETURN\000"
	.long	12
	.uleb128	35
	.ascii	"OFNOTESTFILECREATE\000"
	.long	13
	.uleb128	35
	.ascii	"OFNONETWORKBUTTON\000"
	.long	14
	.uleb128	35
	.ascii	"OFNOLONGNAMES\000"
	.long	15
	.uleb128	35
	.ascii	"OFOLDSTYLEDIALOG\000"
	.long	16
	.uleb128	35
	.ascii	"OFNODEREFERENCELINKS\000"
	.long	17
	.uleb128	35
	.ascii	"OFENABLEINCLUDENOTIFY\000"
	.long	18
	.uleb128	35
	.ascii	"OFENABLESIZING\000"
	.long	19
	.uleb128	35
	.ascii	"OFDONTADDTORECENT\000"
	.long	20
	.uleb128	35
	.ascii	"OFFORCESHOWHIDDEN\000"
	.long	21
	.uleb128	35
	.ascii	"OFVIEWDETAIL\000"
	.long	22
	.uleb128	35
	.ascii	"OFAUTOPREVIEW\000"
	.long	23
	.byte	0
.La135:
	.uleb128	11
	.long	.La134-.Ldebug_info0
# Definition TRadioButton.Class Of TRadioButton
.La137:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La138:
	.uleb128	11
	.long	.La137-.Ldebug_info0
# Definition TLMKey
.La139:
	.uleb128	12
	.ascii	"TLMKEY\000"
	.long	.La404-.Ldebug_info0
.La404:
	.uleb128	7
	.ascii	"TLMKEY\000"
	.uleb128	32
	.uleb128	8
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"CHARCODE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La8-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La8-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSED2\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"KEYDATA\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La168-.Ldebug_info0
	.byte	0
.La140:
	.uleb128	11
	.long	.La139-.Ldebug_info0
# Definition TTranslateString
.La141:
	.uleb128	12
	.ascii	"TTRANSLATESTRING\000"
	.long	.La405-.Ldebug_info0
.La405:
	.uleb128	15
	.long	.La24-.Ldebug_info0
.La142:
	.uleb128	11
	.long	.La141-.Ldebug_info0
# Definition TCreateParams
.La143:
	.uleb128	12
	.ascii	"TCREATEPARAMS\000"
	.long	.La406-.Ldebug_info0
.La406:
	.uleb128	7
	.ascii	"TCREATEPARAMS\000"
	.uleb128	184
	.uleb128	8
	.ascii	"CAPTION\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La407-.Ldebug_info0
	.uleb128	8
	.ascii	"STYLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"EXSTYLE\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"WIDTH\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"HEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"WNDPARENT\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La77-.Ldebug_info0
	.uleb128	8
	.ascii	"PARAM\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La36-.Ldebug_info0
	.uleb128	8
	.ascii	"WINDOWCLASS\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La409-.Ldebug_info0
	.uleb128	8
	.ascii	"WINCLASSNAME\000"
	.byte	2
	.byte	35
	.uleb128	120
	.long	.La411-.Ldebug_info0
	.byte	0
.La144:
	.uleb128	11
	.long	.La143-.Ldebug_info0
# Definition TObject.Class Of TObject
.La146:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La147:
	.uleb128	11
	.long	.La146-.Ldebug_info0
# Definition HRESULT
.La148:
	.uleb128	12
	.ascii	"HRESULT\000"
	.long	.La413-.Ldebug_info0
.La413:
	.uleb128	13
	.ascii	"HRESULT\000"
	.byte	5
	.byte	4
.La149:
	.uleb128	11
	.long	.La148-.Ldebug_info0
# Definition <Formal type>
.La150:
	.uleb128	12
	.ascii	"formal\000"
	.long	.La414-.Ldebug_info0
.La414:
	.uleb128	13
	.ascii	"FormalDef\000"
	.byte	7
	.byte	0
.La151:
	.uleb128	11
	.long	.La150-.Ldebug_info0
# Definition TObject.Class Of TObject
.La152:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La153:
	.uleb128	11
	.long	.La152-.Ldebug_info0
# Definition TClass
.La154:
	.uleb128	12
	.ascii	"TCLASS\000"
	.long	.La415-.Ldebug_info0
.La415:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La155:
	.uleb128	11
	.long	.La154-.Ldebug_info0
# Definition TObject.Class Of TObject
.La156:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La157:
	.uleb128	11
	.long	.La156-.Ldebug_info0
# Definition TObject.Class Of TObject
.La158:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La159:
	.uleb128	11
	.long	.La158-.Ldebug_info0
# Definition ShortString
.La160:
	.uleb128	12
	.ascii	"SHORTSTRING\000"
	.long	.La416-.Ldebug_info0
.La416:
	.uleb128	7
	.ascii	"ShortString\000"
	.uleb128	256
	.uleb128	8
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La21-.Ldebug_info0
	.uleb128	8
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La417-.Ldebug_info0
	.byte	0
.La417:
	.uleb128	9
	.uleb128	256
	.uleb128	1
	.long	.La24-.Ldebug_info0
	.uleb128	10
	.uleb128	1
	.uleb128	255
	.long	.La21-.Ldebug_info0
	.byte	0
.La161:
	.uleb128	11
	.long	.La160-.Ldebug_info0
# Definition TObject.Class Of TObject
.La162:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La163:
	.uleb128	11
	.long	.La162-.Ldebug_info0
# Definition TObject.Class Of TObject
.La164:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La165:
	.uleb128	11
	.long	.La164-.Ldebug_info0
# Definition TObject.Class Of TObject
.La166:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La167:
	.uleb128	11
	.long	.La166-.Ldebug_info0
# Definition Int64
.La168:
	.uleb128	12
	.ascii	"INT64\000"
	.long	.La418-.Ldebug_info0
.La418:
	.uleb128	13
	.ascii	"Int64\000"
	.byte	5
	.byte	8
.La169:
	.uleb128	11
	.long	.La168-.Ldebug_info0
# Definition TObject.Class Of TObject
.La170:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La171:
	.uleb128	11
	.long	.La170-.Ldebug_info0
# Definition TObject.Class Of TObject
.La172:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La173:
	.uleb128	11
	.long	.La172-.Ldebug_info0
# Definition pstringmessagetable
.La174:
	.uleb128	12
	.ascii	"PSTRINGMESSAGETABLE\000"
	.long	.La419-.Ldebug_info0
.La419:
	.uleb128	15
	.long	.La420-.Ldebug_info0
.La175:
	.uleb128	11
	.long	.La174-.Ldebug_info0
# Definition TObject.Class Of TObject
.La176:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La177:
	.uleb128	11
	.long	.La176-.Ldebug_info0
# Definition TObject.Class Of TObject
.La178:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La179:
	.uleb128	11
	.long	.La178-.Ldebug_info0
# Definition TObject.Class Of TObject
.La180:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La181:
	.uleb128	11
	.long	.La180-.Ldebug_info0
# Definition TGuid
.La182:
	.uleb128	12
	.ascii	"TGUID\000"
	.long	.La422-.Ldebug_info0
.La422:
	.uleb128	7
	.ascii	"TGUID\000"
	.uleb128	16
	.uleb128	8
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La8-.Ldebug_info0
	.uleb128	8
	.ascii	"DATA3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La8-.Ldebug_info0
	.uleb128	8
	.ascii	"DATA4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La423-.Ldebug_info0
	.uleb128	8
	.ascii	"D1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"D2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La8-.Ldebug_info0
	.uleb128	8
	.ascii	"D3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La8-.Ldebug_info0
	.uleb128	8
	.ascii	"D4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La425-.Ldebug_info0
	.uleb128	8
	.ascii	"TIME_LOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"TIME_MID\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La8-.Ldebug_info0
	.uleb128	8
	.ascii	"TIME_HI_AND_VERSION\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La8-.Ldebug_info0
	.uleb128	8
	.ascii	"CLOCK_SEQ_HI_AND_RESERVED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La21-.Ldebug_info0
	.uleb128	8
	.ascii	"CLOCK_SEQ_LOW\000"
	.byte	2
	.byte	35
	.uleb128	9
	.long	.La21-.Ldebug_info0
	.uleb128	8
	.ascii	"NODE\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La427-.Ldebug_info0
	.byte	0
.La183:
	.uleb128	11
	.long	.La182-.Ldebug_info0
# Definition pinterfaceentry
.La184:
	.uleb128	12
	.ascii	"PINTERFACEENTRY\000"
	.long	.La429-.Ldebug_info0
.La429:
	.uleb128	15
	.long	.La430-.Ldebug_info0
.La185:
	.uleb128	11
	.long	.La184-.Ldebug_info0
# Definition TObject.Class Of TObject
.La186:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La187:
	.uleb128	11
	.long	.La186-.Ldebug_info0
# Definition TObject.Class Of TObject
.La188:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La189:
	.uleb128	11
	.long	.La188-.Ldebug_info0
# Definition pinterfacetable
.La190:
	.uleb128	12
	.ascii	"PINTERFACETABLE\000"
	.long	.La432-.Ldebug_info0
.La432:
	.uleb128	15
	.long	.La433-.Ldebug_info0
.La191:
	.uleb128	11
	.long	.La190-.Ldebug_info0
# Definition TObject.Class Of TObject
.La192:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La193:
	.uleb128	11
	.long	.La192-.Ldebug_info0
# Definition TObject.Class Of TObject
.La194:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La195:
	.uleb128	11
	.long	.La194-.Ldebug_info0
# Definition RawByteString
.La198:
	.uleb128	12
	.ascii	"RAWBYTESTRING\000"
	.long	.La435-.Ldebug_info0
.La435:
	.uleb128	15
	.long	.La24-.Ldebug_info0
.La199:
	.uleb128	11
	.long	.La198-.Ldebug_info0
# Definition WIN32_FIND_DATAW
.La200:
	.uleb128	12
	.ascii	"WIN32_FIND_DATAW\000"
	.long	.La436-.Ldebug_info0
.La436:
	.uleb128	7
	.ascii	"WIN32_FIND_DATAW\000"
	.uleb128	592
	.uleb128	8
	.ascii	"DWFILEATTRIBUTES\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"FTCREATIONTIME\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La437-.Ldebug_info0
	.uleb128	8
	.ascii	"FTLASTACCESSTIME\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La437-.Ldebug_info0
	.uleb128	8
	.ascii	"FTLASTWRITETIME\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La437-.Ldebug_info0
	.uleb128	8
	.ascii	"NFILESIZEHIGH\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"NFILESIZELOW\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"DWRESERVED0\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"DWRESERVED1\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"CFILENAME\000"
	.byte	2
	.byte	35
	.uleb128	44
	.long	.La439-.Ldebug_info0
	.uleb128	8
	.ascii	"CALTERNATEFILENAME\000"
	.byte	3
	.byte	35
	.uleb128	564
	.long	.La441-.Ldebug_info0
	.byte	0
.La201:
	.uleb128	11
	.long	.La200-.Ldebug_info0
# Definition TThread.TThreadQueueEntry
.La210:
	.uleb128	12
	.ascii	"TTHREADQUEUEENTRY\000"
	.long	.La443-.Ldebug_info0
.La443:
	.uleb128	7
	.ascii	"TTHREADQUEUEENTRY\000"
	.uleb128	48
	.uleb128	8
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La87-.Ldebug_info0
	.uleb128	8
	.ascii	"THREAD\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La33-.Ldebug_info0
	.uleb128	8
	.ascii	"EXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La444-.Ldebug_info0
	.uleb128	8
	.ascii	"SYNCEVENT\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La447-.Ldebug_info0
	.uleb128	8
	.ascii	"NEXT\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La83-.Ldebug_info0
	.byte	0
.La211:
	.uleb128	11
	.long	.La210-.Ldebug_info0
# Definition WideChar
.La217:
	.uleb128	12
	.ascii	"WIDECHAR\000"
	.long	.La449-.Ldebug_info0
.La449:
	.uleb128	13
	.ascii	"WideChar\000"
	.byte	8
	.byte	2
.La218:
	.uleb128	11
	.long	.La217-.Ldebug_info0
# Definition <record type>
.La219:
	.uleb128	12
	.ascii	"__vtbl_ptr_type\000"
	.long	.La450-.Ldebug_info0
.La450:
	.uleb128	43
	.uleb128	40
	.byte	0
.La220:
	.uleb128	11
	.long	.La219-.Ldebug_info0
# Definition <procedure variable type of procedure(const AnsiString) of object;Register>
.La224:
	.uleb128	12
	.ascii	"TTHREADREPORTSTATUS\000"
	.long	.La451-.Ldebug_info0
.La451:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La452-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La452:
	.uleb128	37
	.ascii	"TTHREADREPORTSTATUS\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"STATUS\000"
	.long	.La59-.Ldebug_info0
	.byte	0
.La225:
	.uleb128	11
	.long	.La224-.Ldebug_info0
# Definition TCustomDesignControl
.La233:
	.uleb128	12
	.ascii	"TCUSTOMDESIGNCONTROL\000"
	.long	.La453-.Ldebug_info0
.La453:
	.uleb128	15
	.long	.La235-.Ldebug_info0
.La235:
	.uleb128	16
	.ascii	"TCUSTOMDESIGNCONTROL\000"
	.uleb128	1448
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La456-.Ldebug_info0
	.uleb128	23
	.ascii	"FSCALED\000"
	.byte	3
	.byte	35
	.uleb128	1432
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FDESIGNTIMEPPI\000"
	.byte	3
	.byte	35
	.uleb128	1436
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FPIXELSPERINCH\000"
	.byte	3
	.byte	35
	.uleb128	1440
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"DESIGNTIMEDPI\000"
	.byte	3
	.byte	35
	.uleb128	1436
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"DESIGNTIMEPPI\000"
	.byte	3
	.byte	35
	.uleb128	1436
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"PIXELSPERINCH\000"
	.byte	3
	.byte	35
	.uleb128	1440
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"SCALED\000"
	.byte	3
	.byte	35
	.uleb128	1432
	.byte	3
	.long	.La38-.Ldebug_info0
# Procdef SetDesignTimePPI(<TCustomDesignControl>;const LongInt);
	.uleb128	25
	.ascii	"SETDESIGNTIMEPPI\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La233-.Ldebug_info0
# Symbol ADESIGNTIMEPPI
	.uleb128	27
	.ascii	"ADESIGNTIMEPPI\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetScaled(<TCustomDesignControl>;const Boolean);
	.uleb128	18
	.ascii	"SETSCALED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2296
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La233-.Ldebug_info0
# Symbol ASCALED
	.uleb128	27
	.ascii	"ASCALED\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef AutoAdjustLayout(<TCustomDesignControl>;TLayoutAdjustmentPolicy;const LongInt;const LongInt;const LongInt;const LongInt);
	.uleb128	18
	.ascii	"AUTOADJUSTLAYOUT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1456
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La233-.Ldebug_info0
# Symbol AMODE
	.uleb128	27
	.ascii	"AMODE\000"
	.long	.La457-.Ldebug_info0
# Symbol AFROMPPI
	.uleb128	27
	.ascii	"AFROMPPI\000"
	.long	.La6-.Ldebug_info0
# Symbol ATOPPI
	.uleb128	27
	.ascii	"ATOPPI\000"
	.long	.La6-.Ldebug_info0
# Symbol AOLDFORMWIDTH
	.uleb128	27
	.ascii	"AOLDFORMWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol ANEWFORMWIDTH
	.uleb128	27
	.ascii	"ANEWFORMWIDTH\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef DoAutoAdjustLayout(<TCustomDesignControl>;const TLayoutAdjustmentPolicy;const Double;const Double);
	.uleb128	18
	.ascii	"DOAUTOADJUSTLAYOUT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1272
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La233-.Ldebug_info0
# Symbol AMODE
	.uleb128	27
	.ascii	"AMODE\000"
	.long	.La457-.Ldebug_info0
# Symbol AXPROPORTION
	.uleb128	27
	.ascii	"AXPROPORTION\000"
	.long	.La459-.Ldebug_info0
# Symbol AYPROPORTION
	.uleb128	27
	.ascii	"AYPROPORTION\000"
	.long	.La459-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TCustomDesignControl>);
	.uleb128	18
	.ascii	"LOADED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	264
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La233-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TCustomDesignControl>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La233-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La233-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	27
	.ascii	"THEOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
	.byte	0
.La234:
	.uleb128	11
	.long	.La233-.Ldebug_info0
# Definition TWinControl
.La236:
	.uleb128	12
	.ascii	"TWINCONTROL\000"
	.long	.La461-.Ldebug_info0
.La461:
	.uleb128	15
	.long	.La238-.Ldebug_info0
.La238:
	.uleb128	16
	.ascii	"TWINCONTROL\000"
	.uleb128	1384
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La241-.Ldebug_info0
	.uleb128	23
	.ascii	"FALIGNORDER\000"
	.byte	3
	.byte	35
	.uleb128	992
	.byte	3
	.long	.La338-.Ldebug_info0
	.uleb128	23
	.ascii	"FBORDERWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	1000
	.byte	3
	.long	.La462-.Ldebug_info0
	.uleb128	23
	.ascii	"FBOUNDSLOCKCOUNT\000"
	.byte	3
	.byte	35
	.uleb128	1004
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FBOUNDSREALIZED\000"
	.byte	3
	.byte	35
	.uleb128	1008
	.byte	3
	.long	.La311-.Ldebug_info0
	.uleb128	23
	.ascii	"FBORDERSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	1024
	.byte	3
	.long	.La464-.Ldebug_info0
	.uleb128	23
	.ascii	"FBRUSH\000"
	.byte	3
	.byte	35
	.uleb128	1032
	.byte	3
	.long	.La466-.Ldebug_info0
	.uleb128	23
	.ascii	"FADJUSTCLIENTRECTREALIZED\000"
	.byte	3
	.byte	35
	.uleb128	1040
	.byte	3
	.long	.La311-.Ldebug_info0
	.uleb128	23
	.ascii	"FADJUSTCLIENTRECT\000"
	.byte	3
	.byte	35
	.uleb128	1056
	.byte	3
	.long	.La311-.Ldebug_info0
	.uleb128	23
	.ascii	"FCHILDSIZING\000"
	.byte	3
	.byte	35
	.uleb128	1072
	.byte	3
	.long	.La469-.Ldebug_info0
	.uleb128	23
	.ascii	"FCONTROLS\000"
	.byte	3
	.byte	35
	.uleb128	1080
	.byte	3
	.long	.La338-.Ldebug_info0
	.uleb128	23
	.ascii	"FONGETDOCKCAPTION\000"
	.byte	3
	.byte	35
	.uleb128	1088
	.byte	3
	.long	.La472-.Ldebug_info0
	.uleb128	23
	.ascii	"FDEFWNDPROC\000"
	.byte	3
	.byte	35
	.uleb128	1104
	.byte	3
	.long	.La36-.Ldebug_info0
	.uleb128	23
	.ascii	"FDOCKCLIENTS\000"
	.byte	3
	.byte	35
	.uleb128	1112
	.byte	3
	.long	.La338-.Ldebug_info0
	.uleb128	23
	.ascii	"FCLIENTWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	1120
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FCLIENTHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	1124
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FDOCKMANAGER\000"
	.byte	3
	.byte	35
	.uleb128	1128
	.byte	3
	.long	.La474-.Ldebug_info0
	.uleb128	23
	.ascii	"FONALIGNINSERTBEFORE\000"
	.byte	3
	.byte	35
	.uleb128	1136
	.byte	3
	.long	.La477-.Ldebug_info0
	.uleb128	23
	.ascii	"FONALIGNPOSITION\000"
	.byte	3
	.byte	35
	.uleb128	1152
	.byte	3
	.long	.La479-.Ldebug_info0
	.uleb128	23
	.ascii	"FONDOCKDROP\000"
	.byte	3
	.byte	35
	.uleb128	1168
	.byte	3
	.long	.La481-.Ldebug_info0
	.uleb128	23
	.ascii	"FONDOCKOVER\000"
	.byte	3
	.byte	35
	.uleb128	1184
	.byte	3
	.long	.La483-.Ldebug_info0
	.uleb128	23
	.ascii	"FONGETSITEINFO\000"
	.byte	3
	.byte	35
	.uleb128	1200
	.byte	3
	.long	.La485-.Ldebug_info0
	.uleb128	23
	.ascii	"FONKEYDOWN\000"
	.byte	3
	.byte	35
	.uleb128	1216
	.byte	3
	.long	.La487-.Ldebug_info0
	.uleb128	23
	.ascii	"FONKEYPRESS\000"
	.byte	3
	.byte	35
	.uleb128	1232
	.byte	3
	.long	.La489-.Ldebug_info0
	.uleb128	23
	.ascii	"FONKEYUP\000"
	.byte	3
	.byte	35
	.uleb128	1248
	.byte	3
	.long	.La487-.Ldebug_info0
	.uleb128	23
	.ascii	"FONENTER\000"
	.byte	3
	.byte	35
	.uleb128	1264
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONEXIT\000"
	.byte	3
	.byte	35
	.uleb128	1280
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONUNDOCK\000"
	.byte	3
	.byte	35
	.uleb128	1296
	.byte	3
	.long	.La491-.Ldebug_info0
	.uleb128	23
	.ascii	"FONUTF8KEYPRESS\000"
	.byte	3
	.byte	35
	.uleb128	1312
	.byte	3
	.long	.La493-.Ldebug_info0
	.uleb128	23
	.ascii	"FPARENTWINDOW\000"
	.byte	3
	.byte	35
	.uleb128	1328
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"FREALIZEBOUNDSLOCKCOUNT\000"
	.byte	3
	.byte	35
	.uleb128	1336
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	1344
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"FTABORDER\000"
	.byte	3
	.byte	35
	.uleb128	1352
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FTABLIST\000"
	.byte	3
	.byte	35
	.uleb128	1360
	.byte	3
	.long	.La338-.Ldebug_info0
	.uleb128	23
	.ascii	"FTABSTOP\000"
	.byte	3
	.byte	35
	.uleb128	1368
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FSHOWING\000"
	.byte	3
	.byte	35
	.uleb128	1369
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FDOUBLEBUFFERED\000"
	.byte	3
	.byte	35
	.uleb128	1370
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FDOCKSITE\000"
	.byte	3
	.byte	35
	.uleb128	1371
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FUSEDOCKMANAGER\000"
	.byte	3
	.byte	35
	.uleb128	1372
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FDESIGNERDELETING\000"
	.byte	3
	.byte	35
	.uleb128	1373
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FWINCONTROLFLAGS\000"
	.byte	3
	.byte	35
	.uleb128	1376
	.byte	2
	.long	.La495-.Ldebug_info0
	.uleb128	23
	.ascii	"WINDOWHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	1344
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"ONGETSITEINFO\000"
	.byte	3
	.byte	35
	.uleb128	1200
	.byte	3
	.long	.La485-.Ldebug_info0
	.uleb128	23
	.ascii	"ONGETDOCKCAPTION\000"
	.byte	3
	.byte	35
	.uleb128	1088
	.byte	3
	.long	.La472-.Ldebug_info0
	.uleb128	23
	.ascii	"BORDERWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	1000
	.byte	3
	.long	.La462-.Ldebug_info0
	.uleb128	23
	.ascii	"BOUNDSLOCKCOUNT\000"
	.byte	3
	.byte	35
	.uleb128	1004
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"CACHEDCLIENTHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	1124
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"CACHEDCLIENTWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	1120
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"CHILDSIZING\000"
	.byte	3
	.byte	35
	.uleb128	1072
	.byte	3
	.long	.La469-.Ldebug_info0
	.uleb128	23
	.ascii	"DEFWNDPROC\000"
	.byte	3
	.byte	35
	.uleb128	1104
	.byte	3
	.long	.La36-.Ldebug_info0
	.uleb128	23
	.ascii	"DOCKMANAGER\000"
	.byte	3
	.byte	35
	.uleb128	1128
	.byte	3
	.long	.La474-.Ldebug_info0
	.uleb128	23
	.ascii	"DOCKSITE\000"
	.byte	3
	.byte	35
	.uleb128	1371
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"DOUBLEBUFFERED\000"
	.byte	3
	.byte	35
	.uleb128	1370
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"TABSTOP\000"
	.byte	3
	.byte	35
	.uleb128	1368
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"ONALIGNINSERTBEFORE\000"
	.byte	3
	.byte	35
	.uleb128	1136
	.byte	3
	.long	.La477-.Ldebug_info0
	.uleb128	23
	.ascii	"ONALIGNPOSITION\000"
	.byte	3
	.byte	35
	.uleb128	1152
	.byte	3
	.long	.La479-.Ldebug_info0
	.uleb128	23
	.ascii	"ONDOCKDROP\000"
	.byte	3
	.byte	35
	.uleb128	1168
	.byte	3
	.long	.La481-.Ldebug_info0
	.uleb128	23
	.ascii	"ONDOCKOVER\000"
	.byte	3
	.byte	35
	.uleb128	1184
	.byte	3
	.long	.La483-.Ldebug_info0
	.uleb128	23
	.ascii	"ONENTER\000"
	.byte	3
	.byte	35
	.uleb128	1264
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONEXIT\000"
	.byte	3
	.byte	35
	.uleb128	1280
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONKEYDOWN\000"
	.byte	3
	.byte	35
	.uleb128	1216
	.byte	3
	.long	.La487-.Ldebug_info0
	.uleb128	23
	.ascii	"ONKEYPRESS\000"
	.byte	3
	.byte	35
	.uleb128	1232
	.byte	3
	.long	.La489-.Ldebug_info0
	.uleb128	23
	.ascii	"ONKEYUP\000"
	.byte	3
	.byte	35
	.uleb128	1248
	.byte	3
	.long	.La487-.Ldebug_info0
	.uleb128	23
	.ascii	"ONUNDOCK\000"
	.byte	3
	.byte	35
	.uleb128	1296
	.byte	3
	.long	.La491-.Ldebug_info0
	.uleb128	23
	.ascii	"ONUTF8KEYPRESS\000"
	.byte	3
	.byte	35
	.uleb128	1312
	.byte	3
	.long	.La493-.Ldebug_info0
	.uleb128	23
	.ascii	"PARENTWINDOW\000"
	.byte	3
	.byte	35
	.uleb128	1328
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"SHOWING\000"
	.byte	3
	.byte	35
	.uleb128	1369
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"USEDOCKMANAGER\000"
	.byte	3
	.byte	35
	.uleb128	1372
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"DESIGNERDELETING\000"
	.byte	3
	.byte	35
	.uleb128	1373
	.byte	3
	.long	.La38-.Ldebug_info0
# Procdef AlignControl(<TWinControl>;TControl);
	.uleb128	25
	.ascii	"ALIGNCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetBrush(<TWinControl>):TBrush;
	.uleb128	24
	.ascii	"GETBRUSH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La466-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef GetControl(<TWinControl>;const LongInt):TControl;
	.uleb128	24
	.ascii	"GETCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La239-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetControlCount(<TWinControl>):LongInt;
	.uleb128	24
	.ascii	"GETCONTROLCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef GetDockClientCount(<TWinControl>):LongInt;
	.uleb128	24
	.ascii	"GETDOCKCLIENTCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef GetDockClients(<TWinControl>;LongInt):TControl;
	.uleb128	24
	.ascii	"GETDOCKCLIENTS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La239-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetHandle(<TWinControl>):QWord;
	.uleb128	24
	.ascii	"GETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef GetIsResizing(<TWinControl>):Boolean;
	.uleb128	24
	.ascii	"GETISRESIZING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef GetTabOrder(<TWinControl>):SmallInt;
	.uleb128	24
	.ascii	"GETTABORDER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La497-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef GetVisibleDockClientCount(<TWinControl>):LongInt;
	.uleb128	24
	.ascii	"GETVISIBLEDOCKCLIENTCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef SetChildSizing(<TWinControl>;const TControlChildSizing);
	.uleb128	25
	.ascii	"SETCHILDSIZING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La469-.Ldebug_info0
	.byte	0
# Procdef SetDockSite(<TWinControl>;const Boolean);
	.uleb128	25
	.ascii	"SETDOCKSITE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol NEWDOCKSITE
	.uleb128	27
	.ascii	"NEWDOCKSITE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetHandle(<TWinControl>;QWord);
	.uleb128	25
	.ascii	"SETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol NEWHANDLE
	.uleb128	27
	.ascii	"NEWHANDLE\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef SetBorderWidth(<TWinControl>;TBorderWidth);
	.uleb128	25
	.ascii	"SETBORDERWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La462-.Ldebug_info0
	.byte	0
# Procdef SetParentWindow(<TWinControl>;const QWord);
	.uleb128	25
	.ascii	"SETPARENTWINDOW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef SetTabOrder(<TWinControl>;TTabOrder);
	.uleb128	25
	.ascii	"SETTABORDER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol NEWTABORDER
	.uleb128	27
	.ascii	"NEWTABORDER\000"
	.long	.La497-.Ldebug_info0
	.byte	0
# Procdef SetTabStop(<TWinControl>;Boolean);
	.uleb128	25
	.ascii	"SETTABSTOP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol NEWTABSTOP
	.uleb128	27
	.ascii	"NEWTABSTOP\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetUseDockManager(<TWinControl>;const Boolean);
	.uleb128	25
	.ascii	"SETUSEDOCKMANAGER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef UpdateTabOrder(<TWinControl>;TTabOrder);
	.uleb128	25
	.ascii	"UPDATETABORDER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol NEWTABORDER
	.uleb128	27
	.ascii	"NEWTABORDER\000"
	.long	.La497-.Ldebug_info0
	.byte	0
# Procdef Insert(<TWinControl>;TControl);
	.uleb128	25
	.ascii	"INSERT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef Insert(<TWinControl>;TControl;LongInt);
	.uleb128	25
	.ascii	"INSERT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Remove(<TWinControl>;TControl);
	.uleb128	25
	.ascii	"REMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef AlignNonAlignedControls(<TWinControl>;TFPList;var Boolean);
	.uleb128	25
	.ascii	"ALIGNNONALIGNEDCONTROLS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol LISTOFCONTROLS
	.uleb128	27
	.ascii	"LISTOFCONTROLS\000"
	.long	.La338-.Ldebug_info0
# Symbol BOUNDSMODIFIED
	.uleb128	27
	.ascii	"BOUNDSMODIFIED\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TWinControl>);
	.uleb128	18
	.ascii	"WSREGISTERCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	432
	.byte	34
	.byte	2
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La499-.Ldebug_info0
	.byte	0
# Procdef AdjustClientRect(<TWinControl>;var TRect);
	.uleb128	18
	.ascii	"ADJUSTCLIENTRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1680
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef GetAdjustedLogicalClientRect(<TWinControl>;out TRect);
	.uleb128	25
	.ascii	"GETADJUSTEDLOGICALCLIENTRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef CreateControlAlignList(<TWinControl>;TAlign;TFPList;TControl);
	.uleb128	25
	.ascii	"CREATECONTROLALIGNLIST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol THEALIGN
	.uleb128	27
	.ascii	"THEALIGN\000"
	.long	.La501-.Ldebug_info0
# Symbol ALIGNLIST
	.uleb128	27
	.ascii	"ALIGNLIST\000"
	.long	.La338-.Ldebug_info0
# Symbol STARTCONTROL
	.uleb128	27
	.ascii	"STARTCONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef AlignControls(<TWinControl>;TControl;var TRect);
	.uleb128	18
	.ascii	"ALIGNCONTROLS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1688
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
# Symbol REMAININGCLIENTRECT
	.uleb128	27
	.ascii	"REMAININGCLIENTRECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef CustomAlignInsertBefore(<TWinControl>;TControl;TControl):Boolean;
	.uleb128	31
	.ascii	"CUSTOMALIGNINSERTBEFORE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1696
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ACONTROL1
	.uleb128	27
	.ascii	"ACONTROL1\000"
	.long	.La239-.Ldebug_info0
# Symbol ACONTROL2
	.uleb128	27
	.ascii	"ACONTROL2\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef CustomAlignPosition(<TWinControl>;TControl;var LongInt;var LongInt;var LongInt;var LongInt;var TRect;TAlignInfo);
	.uleb128	18
	.ascii	"CUSTOMALIGNPOSITION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1704
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
# Symbol ANEWLEFT
	.uleb128	27
	.ascii	"ANEWLEFT\000"
	.long	.La6-.Ldebug_info0
# Symbol ANEWTOP
	.uleb128	27
	.ascii	"ANEWTOP\000"
	.long	.La6-.Ldebug_info0
# Symbol ANEWWIDTH
	.uleb128	27
	.ascii	"ANEWWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol ANEWHEIGHT
	.uleb128	27
	.ascii	"ANEWHEIGHT\000"
	.long	.La6-.Ldebug_info0
# Symbol ALIGNRECT
	.uleb128	27
	.ascii	"ALIGNRECT\000"
	.long	.La311-.Ldebug_info0
# Symbol ALIGNINFO
	.uleb128	27
	.ascii	"ALIGNINFO\000"
	.long	.La503-.Ldebug_info0
	.byte	0
# Procdef DoAlignChildControls(<TWinControl>;TAlign;TControl;TFPList;var TRect):Boolean;
	.uleb128	31
	.ascii	"DOALIGNCHILDCONTROLS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1712
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol THEALIGN
	.uleb128	27
	.ascii	"THEALIGN\000"
	.long	.La501-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
# Symbol ACONTROLLIST
	.uleb128	27
	.ascii	"ACONTROLLIST\000"
	.long	.La338-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef DoChildSizingChange(<TWinControl>;TObject);
	.uleb128	18
	.ascii	"DOCHILDSIZINGCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1720
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol SENDER
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef InvalidatePreferredChildSizes(<TWinControl>);
	.uleb128	25
	.ascii	"INVALIDATEPREFERREDCHILDSIZES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef CanTab(<TWinControl>):Boolean;
	.uleb128	31
	.ascii	"CANTAB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1144
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef IsClientHeightStored(<TWinControl>):Boolean;
	.uleb128	31
	.ascii	"ISCLIENTHEIGHTSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	736
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef IsClientWidthStored(<TWinControl>):Boolean;
	.uleb128	31
	.ascii	"ISCLIENTWIDTHSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	744
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef DoSendShowHideToInterface(<TWinControl>);
	.uleb128	18
	.ascii	"DOSENDSHOWHIDETOINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1728
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef ControlsAligned(<TWinControl>);
	.uleb128	18
	.ascii	"CONTROLSALIGNED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1736
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef DoSendBoundsToInterface(<TWinControl>);
	.uleb128	18
	.ascii	"DOSENDBOUNDSTOINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1744
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef RealizeBounds(<TWinControl>);
	.uleb128	18
	.ascii	"REALIZEBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1752
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef RealizeBoundsRecursive(<TWinControl>);
	.uleb128	25
	.ascii	"REALIZEBOUNDSRECURSIVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef InvalidateBoundsRealized(<TWinControl>);
	.uleb128	25
	.ascii	"INVALIDATEBOUNDSREALIZED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef CreateSubClass(<TWinControl>;var TCreateParams;PChar);
	.uleb128	25
	.ascii	"CREATESUBCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol PARAMS
	.uleb128	27
	.ascii	"PARAMS\000"
	.long	.La143-.Ldebug_info0
# Symbol CONTROLCLASSNAME
	.uleb128	27
	.ascii	"CONTROLCLASSNAME\000"
	.long	.La407-.Ldebug_info0
	.byte	0
# Procdef DoConstraintsChange(<TWinControl>;TObject);
	.uleb128	18
	.ascii	"DOCONSTRAINTSCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	560
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol SENDER
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef DoSetBounds(<TWinControl>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	18
	.ascii	"DOSETBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	648
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ALEFT
	.uleb128	27
	.ascii	"ALEFT\000"
	.long	.La6-.Ldebug_info0
# Symbol ATOP
	.uleb128	27
	.ascii	"ATOP\000"
	.long	.La6-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	27
	.ascii	"AWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	27
	.ascii	"AHEIGHT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef DoAutoSize(<TWinControl>);
	.uleb128	18
	.ascii	"DOAUTOSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	488
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef DoAllAutoSize(<TWinControl>);
	.uleb128	18
	.ascii	"DOALLAUTOSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	496
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef AllAutoSized(<TWinControl>);
	.uleb128	18
	.ascii	"ALLAUTOSIZED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1760
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef CalculatePreferredSize(<TWinControl>;var LongInt;var LongInt;Boolean);
	.uleb128	18
	.ascii	"CALCULATEPREFERREDSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	600
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol PREFERREDWIDTH
	.uleb128	27
	.ascii	"PREFERREDWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol PREFERREDHEIGHT
	.uleb128	27
	.ascii	"PREFERREDHEIGHT\000"
	.long	.La6-.Ldebug_info0
# Symbol WITHTHEMESPACE
	.uleb128	27
	.ascii	"WITHTHEMESPACE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef GetPreferredSizeClientFrame(<TWinControl>;out LongInt;out LongInt);
	.uleb128	18
	.ascii	"GETPREFERREDSIZECLIENTFRAME\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1768
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	27
	.ascii	"AWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	27
	.ascii	"AHEIGHT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetChildren(<TWinControl>;TGetChildProc;TComponent);
	.uleb128	18
	.ascii	"GETCHILDREN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	240
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol PROC
	.uleb128	27
	.ascii	"PROC\000"
	.long	.La332-.Ldebug_info0
# Symbol ROOT
	.uleb128	27
	.ascii	"ROOT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef ChildClassAllowed(<TWinControl>;TClass):Boolean;
	.uleb128	31
	.ascii	"CHILDCLASSALLOWED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	992
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol CHILDCLASS
	.uleb128	27
	.ascii	"CHILDCLASS\000"
	.long	.La154-.Ldebug_info0
	.byte	0
# Procdef PaintControls(<TWinControl>;QWord;TControl);
	.uleb128	25
	.ascii	"PAINTCONTROLS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol DC
	.uleb128	27
	.ascii	"DC\000"
	.long	.La77-.Ldebug_info0
# Symbol FIRST
	.uleb128	27
	.ascii	"FIRST\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef PaintHandler(<TWinControl>;var TLMPaint);
	.uleb128	25
	.ascii	"PAINTHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol THEMESSAGE
	.uleb128	27
	.ascii	"THEMESSAGE\000"
	.long	.La505-.Ldebug_info0
	.byte	0
# Procdef PaintWindow(<TWinControl>;QWord);
	.uleb128	18
	.ascii	"PAINTWINDOW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1776
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol DC
	.uleb128	27
	.ascii	"DC\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef CreateBrush(<TWinControl>);
	.uleb128	18
	.ascii	"CREATEBRUSH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1784
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef ScaleControls(<TWinControl>;LongInt;LongInt);
	.uleb128	18
	.ascii	"SCALECONTROLS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1792
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MULTIPLIER
	.uleb128	27
	.ascii	"MULTIPLIER\000"
	.long	.La6-.Ldebug_info0
# Symbol DIVIDER
	.uleb128	27
	.ascii	"DIVIDER\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef ChangeScale(<TWinControl>;LongInt;LongInt);
	.uleb128	18
	.ascii	"CHANGESCALE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	656
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MULTIPLIER
	.uleb128	27
	.ascii	"MULTIPLIER\000"
	.long	.La6-.Ldebug_info0
# Symbol DIVIDER
	.uleb128	27
	.ascii	"DIVIDER\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef CMBiDiModeChanged(<TWinControl>;var TMessage);
	.uleb128	25
	.ascii	"CMBIDIMODECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMBorderChanged(<TWinControl>;var TMessage);
	.uleb128	25
	.ascii	"CMBORDERCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMEnabledChanged(<TWinControl>;var TMessage);
	.uleb128	25
	.ascii	"CMENABLEDCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMShowingChanged(<TWinControl>;var TMessage);
	.uleb128	25
	.ascii	"CMSHOWINGCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMShowHintChanged(<TWinControl>;var TMessage);
	.uleb128	25
	.ascii	"CMSHOWHINTCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMVisibleChanged(<TWinControl>;var TMessage);
	.uleb128	25
	.ascii	"CMVISIBLECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMEnter(<TWinControl>;var TMessage);
	.uleb128	25
	.ascii	"CMENTER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMExit(<TWinControl>;var TMessage);
	.uleb128	25
	.ascii	"CMEXIT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef WMContextMenu(<TWinControl>;var TLMContextMenu);
	.uleb128	25
	.ascii	"WMCONTEXTMENU\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La507-.Ldebug_info0
	.byte	0
# Procdef WMEraseBkgnd(<TWinControl>;var TLMEraseBkgnd);
	.uleb128	25
	.ascii	"WMERASEBKGND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La509-.Ldebug_info0
	.byte	0
# Procdef WMNotify(<TWinControl>;var TLMNotify);
	.uleb128	25
	.ascii	"WMNOTIFY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La511-.Ldebug_info0
	.byte	0
# Procdef WMSetFocus(<TWinControl>;var TLMSetFocus);
	.uleb128	25
	.ascii	"WMSETFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La370-.Ldebug_info0
	.byte	0
# Procdef WMKillFocus(<TWinControl>;var TWMKillFocus);
	.uleb128	25
	.ascii	"WMKILLFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La372-.Ldebug_info0
	.byte	0
# Procdef WMShowWindow(<TWinControl>;var TWMShowWindow);
	.uleb128	25
	.ascii	"WMSHOWWINDOW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La303-.Ldebug_info0
	.byte	0
# Procdef WMEnter(<TWinControl>;var TWMNoParams);
	.uleb128	25
	.ascii	"WMENTER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La513-.Ldebug_info0
	.byte	0
# Procdef WMExit(<TWinControl>;var TWMNoParams);
	.uleb128	25
	.ascii	"WMEXIT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La513-.Ldebug_info0
	.byte	0
# Procdef WMKeyDown(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"WMKEYDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef WMSysKeyDown(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"WMSYSKEYDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef WMKeyUp(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"WMKEYUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef WMSysKeyUp(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"WMSYSKEYUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef WMChar(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"WMCHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef WMSysChar(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"WMSYSCHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef WMPaint(<TWinControl>;var TLMPaint);
	.uleb128	25
	.ascii	"WMPAINT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MSG
	.uleb128	27
	.ascii	"MSG\000"
	.long	.La505-.Ldebug_info0
	.byte	0
# Procdef WMDestroy(<TWinControl>;var TWMNoParams);
	.uleb128	25
	.ascii	"WMDESTROY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La513-.Ldebug_info0
	.byte	0
# Procdef WMMove(<TWinControl>;var TLMMove);
	.uleb128	25
	.ascii	"WMMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La301-.Ldebug_info0
	.byte	0
# Procdef WMSize(<TWinControl>;var TWMSize);
	.uleb128	25
	.ascii	"WMSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La305-.Ldebug_info0
	.byte	0
# Procdef WMWindowPosChanged(<TWinControl>;var TLMWindowPosMsg);
	.uleb128	25
	.ascii	"WMWINDOWPOSCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La307-.Ldebug_info0
	.byte	0
# Procdef CNKeyDown(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"CNKEYDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef CNSysKeyDown(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"CNSYSKEYDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef CNKeyUp(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"CNKEYUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef CNSysKeyUp(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"CNSYSKEYUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef CNChar(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"CNCHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef DoDragMsg(<TWinControl>;TDragMessage;TPoint;TDragObject;TControl;Boolean):Int64;
	.uleb128	31
	.ascii	"DODRAGMSG\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	824
	.byte	34
	.byte	2
	.long	.La168-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ADRAGMESSAGE
	.uleb128	27
	.ascii	"ADRAGMESSAGE\000"
	.long	.La515-.Ldebug_info0
# Symbol APOSITION
	.uleb128	27
	.ascii	"APOSITION\000"
	.long	.La517-.Ldebug_info0
# Symbol ADRAGOBJECT
	.uleb128	27
	.ascii	"ADRAGOBJECT\000"
	.long	.La519-.Ldebug_info0
# Symbol ATARGET
	.uleb128	27
	.ascii	"ATARGET\000"
	.long	.La239-.Ldebug_info0
# Symbol ADOCKING
	.uleb128	27
	.ascii	"ADOCKING\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DoDockClientMsg(<TWinControl>;TDragDockObject;TPoint):Boolean;
	.uleb128	31
	.ascii	"DODOCKCLIENTMSG\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1800
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol DRAGDOCKOBJECT
	.uleb128	27
	.ascii	"DRAGDOCKOBJECT\000"
	.long	.La522-.Ldebug_info0
# Symbol APOSITION
	.uleb128	27
	.ascii	"APOSITION\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef DoUndockClientMsg(<TWinControl>;TControl;TControl):Boolean;
	.uleb128	31
	.ascii	"DOUNDOCKCLIENTMSG\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1808
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol NEWTARGET
	.uleb128	27
	.ascii	"NEWTARGET\000"
	.long	.La239-.Ldebug_info0
# Symbol CLIENT
	.uleb128	27
	.ascii	"CLIENT\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef DoAddDockClient(<TWinControl>;TControl;const TRect);
	.uleb128	18
	.ascii	"DOADDDOCKCLIENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1816
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol CLIENT
	.uleb128	27
	.ascii	"CLIENT\000"
	.long	.La239-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef DockOver(<TWinControl>;TDragDockObject;LongInt;LongInt;TDragState;var Boolean);
	.uleb128	18
	.ascii	"DOCKOVER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1824
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol SOURCE
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La522-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
# Symbol STATE
	.uleb128	27
	.ascii	"STATE\000"
	.long	.La525-.Ldebug_info0
# Symbol ACCEPT
	.uleb128	27
	.ascii	"ACCEPT\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DoDockOver(<TWinControl>;TDragDockObject;LongInt;LongInt;TDragState;var Boolean);
	.uleb128	18
	.ascii	"DODOCKOVER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1832
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol SOURCE
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La522-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
# Symbol STATE
	.uleb128	27
	.ascii	"STATE\000"
	.long	.La525-.Ldebug_info0
# Symbol ACCEPT
	.uleb128	27
	.ascii	"ACCEPT\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DoRemoveDockClient(<TWinControl>;TControl);
	.uleb128	18
	.ascii	"DOREMOVEDOCKCLIENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1840
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol CLIENT
	.uleb128	27
	.ascii	"CLIENT\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef DoUnDock(<TWinControl>;TWinControl;TControl;Boolean="TRUE"):Boolean;
	.uleb128	31
	.ascii	"DOUNDOCK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1848
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol NEWTARGET
	.uleb128	27
	.ascii	"NEWTARGET\000"
	.long	.La236-.Ldebug_info0
# Symbol CLIENT
	.uleb128	27
	.ascii	"CLIENT\000"
	.long	.La239-.Ldebug_info0
# Symbol KEEPDOCKSITESIZE
	.uleb128	27
	.ascii	"KEEPDOCKSITESIZE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef GetSiteInfo(<TWinControl>;TControl;var TRect;TPoint;var Boolean);
	.uleb128	18
	.ascii	"GETSITEINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1856
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol CLIENT
	.uleb128	27
	.ascii	"CLIENT\000"
	.long	.La239-.Ldebug_info0
# Symbol INFLUENCERECT
	.uleb128	27
	.ascii	"INFLUENCERECT\000"
	.long	.La311-.Ldebug_info0
# Symbol MOUSEPOS
	.uleb128	27
	.ascii	"MOUSEPOS\000"
	.long	.La517-.Ldebug_info0
# Symbol CANDOCK
	.uleb128	27
	.ascii	"CANDOCK\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef GetParentHandle(<TWinControl>):QWord;
	.uleb128	24
	.ascii	"GETPARENTHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef GetTopParentHandle(<TWinControl>):QWord;
	.uleb128	24
	.ascii	"GETTOPPARENTHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef ReloadDockedControl(<TWinControl>;const AnsiString;var TControl);
	.uleb128	18
	.ascii	"RELOADDOCKEDCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1864
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ACONTROLNAME
	.uleb128	27
	.ascii	"ACONTROLNAME\000"
	.long	.La59-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef CreateDockManager(<TWinControl>):TDockManager;
	.uleb128	31
	.ascii	"CREATEDOCKMANAGER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1872
	.byte	34
	.byte	2
	.long	.La474-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef SetDockManager(<TWinControl>;TDockManager);
	.uleb128	25
	.ascii	"SETDOCKMANAGER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol AMGR
	.uleb128	27
	.ascii	"AMGR\000"
	.long	.La474-.Ldebug_info0
	.byte	0
# Procdef DoFloatMsg(<TWinControl>;TDragDockObject);
	.uleb128	18
	.ascii	"DOFLOATMSG\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	800
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ADOCKSOURCE
	.uleb128	27
	.ascii	"ADOCKSOURCE\000"
	.long	.La522-.Ldebug_info0
	.byte	0
# Procdef DoGetDockCaption(<TWinControl>;TControl;var AnsiString);
	.uleb128	18
	.ascii	"DOGETDOCKCAPTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1880
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
# Symbol ACAPTION
	.uleb128	27
	.ascii	"ACAPTION\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef DoEnter(<TWinControl>);
	.uleb128	18
	.ascii	"DOENTER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1888
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef DoExit(<TWinControl>);
	.uleb128	18
	.ascii	"DOEXIT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1896
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef DoKeyDownBeforeInterface(<TWinControl>;var TLMKey;Boolean):Boolean;
	.uleb128	24
	.ascii	"DOKEYDOWNBEFOREINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
# Symbol ISRECURSECALL
	.uleb128	27
	.ascii	"ISRECURSECALL\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DoRemainingKeyDown(<TWinControl>;var TLMKey):Boolean;
	.uleb128	24
	.ascii	"DOREMAININGKEYDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef DoRemainingKeyUp(<TWinControl>;var TLMKey):Boolean;
	.uleb128	24
	.ascii	"DOREMAININGKEYUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef DoKeyPress(<TWinControl>;var TLMKey):Boolean;
	.uleb128	24
	.ascii	"DOKEYPRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef DoUTF8KeyPress(<TWinControl>;var TUTF8Char):Boolean;
	.uleb128	31
	.ascii	"DOUTF8KEYPRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1904
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol UTF8KEY
	.uleb128	27
	.ascii	"UTF8KEY\000"
	.long	.La527-.Ldebug_info0
	.byte	0
# Procdef DoKeyUpBeforeInterface(<TWinControl>;var TLMKey):Boolean;
	.uleb128	24
	.ascii	"DOKEYUPBEFOREINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef ChildKey(<TWinControl>;var TLMKey):Boolean;
	.uleb128	31
	.ascii	"CHILDKEY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1912
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef SendDialogChar(<TWinControl>;var TLMKey):Boolean;
	.uleb128	24
	.ascii	"SENDDIALOGCHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef DialogChar(<TWinControl>;var TLMKey):Boolean;
	.uleb128	31
	.ascii	"DIALOGCHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	976
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef ControlKeyDown(<TWinControl>;var Word;TShiftState);
	.uleb128	18
	.ascii	"CONTROLKEYDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1920
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol KEY
	.uleb128	27
	.ascii	"KEY\000"
	.long	.La8-.Ldebug_info0
# Symbol SHIFT
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
	.byte	0
# Procdef ControlKeyUp(<TWinControl>;var Word;TShiftState);
	.uleb128	18
	.ascii	"CONTROLKEYUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1928
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol KEY
	.uleb128	27
	.ascii	"KEY\000"
	.long	.La8-.Ldebug_info0
# Symbol SHIFT
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
	.byte	0
# Procdef KeyDown(<TWinControl>;var Word;TShiftState);
	.uleb128	18
	.ascii	"KEYDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1936
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol KEY
	.uleb128	27
	.ascii	"KEY\000"
	.long	.La8-.Ldebug_info0
# Symbol SHIFT
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
	.byte	0
# Procdef KeyDownBeforeInterface(<TWinControl>;var Word;TShiftState);
	.uleb128	18
	.ascii	"KEYDOWNBEFOREINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1944
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol KEY
	.uleb128	27
	.ascii	"KEY\000"
	.long	.La8-.Ldebug_info0
# Symbol SHIFT
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
	.byte	0
# Procdef KeyDownAfterInterface(<TWinControl>;var Word;TShiftState);
	.uleb128	18
	.ascii	"KEYDOWNAFTERINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1952
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol KEY
	.uleb128	27
	.ascii	"KEY\000"
	.long	.La8-.Ldebug_info0
# Symbol SHIFT
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
	.byte	0
# Procdef KeyPress(<TWinControl>;var Char);
	.uleb128	18
	.ascii	"KEYPRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1960
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol KEY
	.uleb128	27
	.ascii	"KEY\000"
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef KeyUp(<TWinControl>;var Word;TShiftState);
	.uleb128	18
	.ascii	"KEYUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1968
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol KEY
	.uleb128	27
	.ascii	"KEY\000"
	.long	.La8-.Ldebug_info0
# Symbol SHIFT
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
	.byte	0
# Procdef KeyUpBeforeInterface(<TWinControl>;var Word;TShiftState);
	.uleb128	18
	.ascii	"KEYUPBEFOREINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1976
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol KEY
	.uleb128	27
	.ascii	"KEY\000"
	.long	.La8-.Ldebug_info0
# Symbol SHIFT
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
	.byte	0
# Procdef KeyUpAfterInterface(<TWinControl>;var Word;TShiftState);
	.uleb128	18
	.ascii	"KEYUPAFTERINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1984
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol KEY
	.uleb128	27
	.ascii	"KEY\000"
	.long	.La8-.Ldebug_info0
# Symbol SHIFT
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
	.byte	0
# Procdef UTF8KeyPress(<TWinControl>;var TUTF8Char);
	.uleb128	18
	.ascii	"UTF8KEYPRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1992
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol UTF8KEY
	.uleb128	27
	.ascii	"UTF8KEY\000"
	.long	.La527-.Ldebug_info0
	.byte	0
# Procdef FindNextControl(<TWinControl>;TWinControl;Boolean;Boolean;Boolean):TWinControl;
	.uleb128	24
	.ascii	"FINDNEXTCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La236-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol CURRENTCONTROL
	.uleb128	27
	.ascii	"CURRENTCONTROL\000"
	.long	.La236-.Ldebug_info0
# Symbol GOFORWARD
	.uleb128	27
	.ascii	"GOFORWARD\000"
	.long	.La38-.Ldebug_info0
# Symbol CHECKTABSTOP
	.uleb128	27
	.ascii	"CHECKTABSTOP\000"
	.long	.La38-.Ldebug_info0
# Symbol CHECKPARENT
	.uleb128	27
	.ascii	"CHECKPARENT\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SelectFirst(<TWinControl>);
	.uleb128	25
	.ascii	"SELECTFIRST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef RealGetText(<TWinControl>;<var TTranslateString>):AnsiString;
	.uleb128	31
	.ascii	"REALGETTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1040
	.byte	34
	.byte	2
	.long	.La141-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La141-.Ldebug_info0
	.byte	0
# Procdef GetBorderStyle(<TWinControl>):<enumeration type>;
	.uleb128	24
	.ascii	"GETBORDERSTYLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La464-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef GetClientOrigin(<TWinControl>):<record type>;
	.uleb128	31
	.ascii	"GETCLIENTORIGIN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	688
	.byte	34
	.byte	2
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef GetClientRect(<TWinControl>;<var TRect>):<record type>;
	.uleb128	31
	.ascii	"GETCLIENTRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	696
	.byte	34
	.byte	2
	.long	.La311-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef GetControlOrigin(<TWinControl>):<record type>;
	.uleb128	31
	.ascii	"GETCONTROLORIGIN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	728
	.byte	34
	.byte	2
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef GetDeviceContext(<TWinControl>;var QWord):QWord;
	.uleb128	31
	.ascii	"GETDEVICECONTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1152
	.byte	34
	.byte	2
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol WINDOWHANDLE
	.uleb128	27
	.ascii	"WINDOWHANDLE\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef IsControlMouseMsg(<TWinControl>;var <Formal type>):Boolean;
	.uleb128	24
	.ascii	"ISCONTROLMOUSEMSG\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol THEMESSAGE
	.uleb128	27
	.ascii	"THEMESSAGE\000"
	.long	.La150-.Ldebug_info0
	.byte	0
# Procdef CreateHandle(<TWinControl>);
	.uleb128	18
	.ascii	"CREATEHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2000
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef CreateParams(<TWinControl>;var TCreateParams);
	.uleb128	18
	.ascii	"CREATEPARAMS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2008
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol PARAMS
	.uleb128	27
	.ascii	"PARAMS\000"
	.long	.La143-.Ldebug_info0
	.byte	0
# Procdef CreateWnd(<TWinControl>);
	.uleb128	18
	.ascii	"CREATEWND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2016
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef DestroyHandle(<TWinControl>);
	.uleb128	18
	.ascii	"DESTROYHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2024
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef DestroyWnd(<TWinControl>);
	.uleb128	18
	.ascii	"DESTROYWND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2032
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef DoFlipChildren(<TWinControl>);
	.uleb128	18
	.ascii	"DOFLIPCHILDREN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2040
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef FinalizeWnd(<TWinControl>);
	.uleb128	18
	.ascii	"FINALIZEWND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2048
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef FixupTabList(<TWinControl>);
	.uleb128	25
	.ascii	"FIXUPTABLIST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef FontChanged(<TWinControl>;TObject);
	.uleb128	18
	.ascii	"FONTCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1016
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol SENDER
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef InitializeWnd(<TWinControl>);
	.uleb128	18
	.ascii	"INITIALIZEWND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2056
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TWinControl>);
	.uleb128	18
	.ascii	"LOADED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	264
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef FormEndUpdated(<TWinControl>);
	.uleb128	18
	.ascii	"FORMENDUPDATED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1008
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef MainWndProc(<TWinControl>;var TMessage);
	.uleb128	25
	.ascii	"MAINWNDPROC\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MSG
	.uleb128	27
	.ascii	"MSG\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef ParentFormHandleInitialized(<TWinControl>);
	.uleb128	18
	.ascii	"PARENTFORMHANDLEINITIALIZED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1120
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef ChildHandlesCreated(<TWinControl>);
	.uleb128	18
	.ascii	"CHILDHANDLESCREATED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2064
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef GetMouseCapture(<TWinControl>):Boolean;
	.uleb128	31
	.ascii	"GETMOUSECAPTURE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1128
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef RealSetText(<TWinControl>;const TTranslateString);
	.uleb128	18
	.ascii	"REALSETTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1048
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La141-.Ldebug_info0
	.byte	0
# Procdef RemoveFocus(<TWinControl>;Boolean);
	.uleb128	25
	.ascii	"REMOVEFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol REMOVING
	.uleb128	27
	.ascii	"REMOVING\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SendMoveSizeMessages(<TWinControl>;Boolean;Boolean);
	.uleb128	18
	.ascii	"SENDMOVESIZEMESSAGES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	584
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol SIZECHANGED
	.uleb128	27
	.ascii	"SIZECHANGED\000"
	.long	.La38-.Ldebug_info0
# Symbol POSCHANGED
	.uleb128	27
	.ascii	"POSCHANGED\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetBorderStyle(<TWinControl>;TBorderStyle);
	.uleb128	18
	.ascii	"SETBORDERSTYLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2072
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol NEWSTYLE
	.uleb128	27
	.ascii	"NEWSTYLE\000"
	.long	.La464-.Ldebug_info0
	.byte	0
# Procdef SetColor(<TWinControl>;TGraphicsColor);
	.uleb128	18
	.ascii	"SETCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1080
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La529-.Ldebug_info0
	.byte	0
# Procdef SetChildZPosition(<TWinControl>;const TControl;const LongInt);
	.uleb128	25
	.ascii	"SETCHILDZPOSITION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ACHILD
	.uleb128	27
	.ascii	"ACHILD\000"
	.long	.La239-.Ldebug_info0
# Symbol APOSITION
	.uleb128	27
	.ascii	"APOSITION\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef ShowControl(<TWinControl>;TControl);
	.uleb128	18
	.ascii	"SHOWCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2080
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef UpdateControlState(<TWinControl>);
	.uleb128	25
	.ascii	"UPDATECONTROLSTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef UpdateShowing(<TWinControl>);
	.uleb128	18
	.ascii	"UPDATESHOWING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2088
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef WndProc(<TWinControl>;var TMessage);
	.uleb128	18
	.ascii	"WNDPROC\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1112
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef WSSetText(<TWinControl>;const AnsiString);
	.uleb128	18
	.ascii	"WSSETTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2096
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ATEXT
	.uleb128	27
	.ascii	"ATEXT\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef AutoSizePhases(<TWinControl>):Set Of TControlAutoSizePhase;
	.uleb128	30
	.ascii	"AUTOSIZEPHASES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1360
	.byte	34
	.long	.La531-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef AutoSizeDelayed(<TWinControl>):Boolean;
	.uleb128	30
	.ascii	"AUTOSIZEDELAYED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1368
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef AutoSizeDelayedReport(<TWinControl>;<var AnsiString>):AnsiString;
	.uleb128	30
	.ascii	"AUTOSIZEDELAYEDREPORT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1376
	.byte	34
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef AutoSizeDelayedHandle(<TWinControl>):Boolean;
	.uleb128	30
	.ascii	"AUTOSIZEDELAYEDHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1384
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef BeginUpdateBounds(<TWinControl>);
	.uleb128	29
	.ascii	"BEGINUPDATEBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef EndUpdateBounds(<TWinControl>);
	.uleb128	29
	.ascii	"ENDUPDATEBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef LockRealizeBounds(<TWinControl>);
	.uleb128	29
	.ascii	"LOCKREALIZEBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef UnlockRealizeBounds(<TWinControl>);
	.uleb128	29
	.ascii	"UNLOCKREALIZEBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef ControlAtPos(<TWinControl>;const TPoint;Boolean):TControl;
	.uleb128	20
	.ascii	"CONTROLATPOS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol POS
	.uleb128	27
	.ascii	"POS\000"
	.long	.La517-.Ldebug_info0
# Symbol ALLOWDISABLED
	.uleb128	27
	.ascii	"ALLOWDISABLED\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef ControlAtPos(<TWinControl>;const TPoint;Boolean;Boolean):TControl;
	.uleb128	20
	.ascii	"CONTROLATPOS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol POS
	.uleb128	27
	.ascii	"POS\000"
	.long	.La517-.Ldebug_info0
# Symbol ALLOWDISABLED
	.uleb128	27
	.ascii	"ALLOWDISABLED\000"
	.long	.La38-.Ldebug_info0
# Symbol ALLOWWINCONTROLS
	.uleb128	27
	.ascii	"ALLOWWINCONTROLS\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef ControlAtPos(<TWinControl>;const TPoint;TControlAtPosFlags):TControl;
	.uleb128	20
	.ascii	"CONTROLATPOS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol POS
	.uleb128	27
	.ascii	"POS\000"
	.long	.La517-.Ldebug_info0
# Symbol FLAGS
	.uleb128	27
	.ascii	"FLAGS\000"
	.long	.La533-.Ldebug_info0
	.byte	0
# Procdef ContainsControl(<TWinControl>;TControl):Boolean;
	.uleb128	20
	.ascii	"CONTAINSCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol CONTROL
	.uleb128	27
	.ascii	"CONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef DoAdjustClientRectChange(<TWinControl>;const Boolean="TRUE");
	.uleb128	29
	.ascii	"DOADJUSTCLIENTRECTCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol INVALIDATERECT
	.uleb128	27
	.ascii	"INVALIDATERECT\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef InvalidateClientRectCache(<TWinControl>;Boolean);
	.uleb128	29
	.ascii	"INVALIDATECLIENTRECTCACHE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol WITHCHILDCONTROLS
	.uleb128	27
	.ascii	"WITHCHILDCONTROLS\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef ClientRectNeedsInterfaceUpdate(<TWinControl>):Boolean;
	.uleb128	20
	.ascii	"CLIENTRECTNEEDSINTERFACEUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef SetBounds(<TWinControl>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	28
	.ascii	"SETBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1392
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ALEFT
	.uleb128	27
	.ascii	"ALEFT\000"
	.long	.La6-.Ldebug_info0
# Symbol ATOP
	.uleb128	27
	.ascii	"ATOP\000"
	.long	.La6-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	27
	.ascii	"AWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	27
	.ascii	"AHEIGHT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetChildrenRect(<TWinControl>;<var TRect>;Boolean):<record type>;
	.uleb128	30
	.ascii	"GETCHILDRENRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1616
	.byte	34
	.long	.La311-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
# Symbol SCROLLED
	.uleb128	27
	.ascii	"SCROLLED\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DisableAlign(<TWinControl>);
	.uleb128	29
	.ascii	"DISABLEALIGN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef EnableAlign(<TWinControl>);
	.uleb128	29
	.ascii	"ENABLEALIGN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef ReAlign(<TWinControl>);
	.uleb128	29
	.ascii	"REALIGN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef ScrollBy_WS(<TWinControl>;LongInt;LongInt);
	.uleb128	29
	.ascii	"SCROLLBY_WS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol DELTAX
	.uleb128	27
	.ascii	"DELTAX\000"
	.long	.La6-.Ldebug_info0
# Symbol DELTAY
	.uleb128	27
	.ascii	"DELTAY\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef ScrollBy(<TWinControl>;LongInt;LongInt);
	.uleb128	28
	.ascii	"SCROLLBY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2104
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol DELTAX
	.uleb128	27
	.ascii	"DELTAX\000"
	.long	.La6-.Ldebug_info0
# Symbol DELTAY
	.uleb128	27
	.ascii	"DELTAY\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef WriteLayoutDebugReport(<TWinControl>;const AnsiString);
	.uleb128	28
	.ascii	"WRITELAYOUTDEBUGREPORT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1448
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol PREFIX
	.uleb128	27
	.ascii	"PREFIX\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef AutoAdjustLayout(<TWinControl>;TLayoutAdjustmentPolicy;const LongInt;const LongInt;const LongInt;const LongInt);
	.uleb128	28
	.ascii	"AUTOADJUSTLAYOUT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1456
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol AMODE
	.uleb128	27
	.ascii	"AMODE\000"
	.long	.La457-.Ldebug_info0
# Symbol AFROMPPI
	.uleb128	27
	.ascii	"AFROMPPI\000"
	.long	.La6-.Ldebug_info0
# Symbol ATOPPI
	.uleb128	27
	.ascii	"ATOPPI\000"
	.long	.La6-.Ldebug_info0
# Symbol AOLDFORMWIDTH
	.uleb128	27
	.ascii	"AOLDFORMWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol ANEWFORMWIDTH
	.uleb128	27
	.ascii	"ANEWFORMWIDTH\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TWinControl>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La236-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	27
	.ascii	"THEOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef constructor CreateParented(<TWinControl>;<Pointer>;QWord);
	.uleb128	20
	.ascii	"CREATEPARENTED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol APARENTWINDOW
	.uleb128	27
	.ascii	"APARENTWINDOW\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef class CreateParentedControl(<Class Of TWinControl>;QWord):TWinControl;
	.uleb128	20
	.ascii	"CREATEPARENTEDCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La535-.Ldebug_info0
# Symbol APARENTWINDOW
	.uleb128	27
	.ascii	"APARENTWINDOW\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TWinControl>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef DockDrop(<TWinControl>;TDragDockObject;LongInt;LongInt);
	.uleb128	28
	.ascii	"DOCKDROP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2112
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol DRAGDOCKOBJECT
	.uleb128	27
	.ascii	"DRAGDOCKOBJECT\000"
	.long	.La522-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef CanFocus(<TWinControl>):Boolean;
	.uleb128	30
	.ascii	"CANFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2120
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef CanSetFocus(<TWinControl>):Boolean;
	.uleb128	30
	.ascii	"CANSETFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2128
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef GetControlIndex(<TWinControl>;TControl):LongInt;
	.uleb128	20
	.ascii	"GETCONTROLINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef SetControlIndex(<TWinControl>;TControl;LongInt);
	.uleb128	29
	.ascii	"SETCONTROLINDEX\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
# Symbol NEWINDEX
	.uleb128	27
	.ascii	"NEWINDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Focused(<TWinControl>):Boolean;
	.uleb128	30
	.ascii	"FOCUSED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2136
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef PerformTab(<TWinControl>;Boolean):Boolean;
	.uleb128	30
	.ascii	"PERFORMTAB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2144
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol FORWARDTAB
	.uleb128	27
	.ascii	"FORWARDTAB\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef FindChildControl(<TWinControl>;const AnsiString):TControl;
	.uleb128	20
	.ascii	"FINDCHILDCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol CONTROLNAME
	.uleb128	27
	.ascii	"CONTROLNAME\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef SelectNext(<TWinControl>;TWinControl;Boolean;Boolean);
	.uleb128	29
	.ascii	"SELECTNEXT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol CURCONTROL
	.uleb128	27
	.ascii	"CURCONTROL\000"
	.long	.La236-.Ldebug_info0
# Symbol GOFORWARD
	.uleb128	27
	.ascii	"GOFORWARD\000"
	.long	.La38-.Ldebug_info0
# Symbol CHECKTABSTOP
	.uleb128	27
	.ascii	"CHECKTABSTOP\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetTempCursor(<TWinControl>;TCursor);
	.uleb128	28
	.ascii	"SETTEMPCURSOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1568
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La537-.Ldebug_info0
	.byte	0
# Procdef BroadCast(<TWinControl>;var <Formal type>);
	.uleb128	29
	.ascii	"BROADCAST\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol TOALLMESSAGE
	.uleb128	27
	.ascii	"TOALLMESSAGE\000"
	.long	.La150-.Ldebug_info0
	.byte	0
# Procdef NotifyControls(<TWinControl>;Word);
	.uleb128	29
	.ascii	"NOTIFYCONTROLS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MSG
	.uleb128	27
	.ascii	"MSG\000"
	.long	.La8-.Ldebug_info0
	.byte	0
# Procdef DefaultHandler(<TWinControl>;var <Formal type>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol AMESSAGE
	.uleb128	27
	.ascii	"AMESSAGE\000"
	.long	.La150-.Ldebug_info0
	.byte	0
# Procdef GetTextLen(<TWinControl>):LongInt;
	.uleb128	30
	.ascii	"GETTEXTLEN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1600
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef Invalidate(<TWinControl>);
	.uleb128	28
	.ascii	"INVALIDATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1552
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef AddControl(<TWinControl>);
	.uleb128	28
	.ascii	"ADDCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2152
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef InsertControl(<TWinControl>;TControl);
	.uleb128	29
	.ascii	"INSERTCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef InsertControl(<TWinControl>;TControl;LongInt);
	.uleb128	28
	.ascii	"INSERTCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2160
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef RemoveControl(<TWinControl>;TControl);
	.uleb128	28
	.ascii	"REMOVECONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2168
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetEnumeratorControls(<TWinControl>):TWinControlEnumerator;
	.uleb128	20
	.ascii	"GETENUMERATORCONTROLS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La539-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef GetEnumeratorControlsReverse(<TWinControl>):TWinControlEnumerator;
	.uleb128	20
	.ascii	"GETENUMERATORCONTROLSREVERSE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La539-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef Repaint(<TWinControl>);
	.uleb128	28
	.ascii	"REPAINT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1544
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef Update(<TWinControl>);
	.uleb128	28
	.ascii	"UPDATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1624
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef SetFocus(<TWinControl>);
	.uleb128	28
	.ascii	"SETFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2176
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef FlipChildren(<TWinControl>;Boolean);
	.uleb128	28
	.ascii	"FLIPCHILDREN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2184
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ALLLEVELS
	.uleb128	27
	.ascii	"ALLLEVELS\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef ScaleBy(<TWinControl>;LongInt;LongInt);
	.uleb128	29
	.ascii	"SCALEBY\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol MULTIPLIER
	.uleb128	27
	.ascii	"MULTIPLIER\000"
	.long	.La6-.Ldebug_info0
# Symbol DIVIDER
	.uleb128	27
	.ascii	"DIVIDER\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetDockCaption(<TWinControl>;<var AnsiString>;TControl):AnsiString;
	.uleb128	30
	.ascii	"GETDOCKCAPTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2192
	.byte	34
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef UpdateDockCaption(<TWinControl>;TControl="nil");
	.uleb128	28
	.ascii	"UPDATEDOCKCAPTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2200
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol EXCLUDE
	.uleb128	27
	.ascii	"EXCLUDE\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetTabOrderList(<TWinControl>;TFPList);
	.uleb128	28
	.ascii	"GETTABORDERLIST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2208
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol LIST
	.uleb128	27
	.ascii	"LIST\000"
	.long	.La338-.Ldebug_info0
	.byte	0
# Procdef HandleAllocated(<TWinControl>):Boolean;
	.uleb128	20
	.ascii	"HANDLEALLOCATED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef ParentHandlesAllocated(<TWinControl>):Boolean;
	.uleb128	30
	.ascii	"PARENTHANDLESALLOCATED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1640
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef HandleNeeded(<TWinControl>);
	.uleb128	29
	.ascii	"HANDLENEEDED\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef BrushCreated(<TWinControl>):Boolean;
	.uleb128	20
	.ascii	"BRUSHCREATED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef EraseBackground(<TWinControl>;QWord);
	.uleb128	28
	.ascii	"ERASEBACKGROUND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2216
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol DC
	.uleb128	27
	.ascii	"DC\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef IntfUTF8KeyPress(<TWinControl>;var TUTF8Char;LongInt;Boolean):Boolean;
	.uleb128	30
	.ascii	"INTFUTF8KEYPRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2224
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol UTF8KEY
	.uleb128	27
	.ascii	"UTF8KEY\000"
	.long	.La527-.Ldebug_info0
# Symbol REPEATCOUNT
	.uleb128	27
	.ascii	"REPEATCOUNT\000"
	.long	.La6-.Ldebug_info0
# Symbol SYSTEMKEY
	.uleb128	27
	.ascii	"SYSTEMKEY\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef IntfGetDropFilesTarget(<TWinControl>):TWinControl;
	.uleb128	30
	.ascii	"INTFGETDROPFILESTARGET\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2232
	.byte	34
	.long	.La236-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef PaintTo(<TWinControl>;QWord;LongInt;LongInt);
	.uleb128	28
	.ascii	"PAINTTO\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2240
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol DC
	.uleb128	27
	.ascii	"DC\000"
	.long	.La77-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef PaintTo(<TWinControl>;TCanvas;LongInt;LongInt);
	.uleb128	29
	.ascii	"PAINTTO\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ACANVAS
	.uleb128	27
	.ascii	"ACANVAS\000"
	.long	.La542-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetShape(<TWinControl>;TBitmap);
	.uleb128	29
	.ascii	"SETSHAPE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ASHAPE
	.uleb128	27
	.ascii	"ASHAPE\000"
	.long	.La325-.Ldebug_info0
	.byte	0
# Procdef SetShape(<TWinControl>;TRegion);
	.uleb128	29
	.ascii	"SETSHAPE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol ASHAPE
	.uleb128	27
	.ascii	"ASHAPE\000"
	.long	.La545-.Ldebug_info0
	.byte	0
	.byte	0
.La237:
	.uleb128	11
	.long	.La236-.Ldebug_info0
# Definition TControl
.La239:
	.uleb128	12
	.ascii	"TCONTROL\000"
	.long	.La548-.Ldebug_info0
.La548:
	.uleb128	15
	.long	.La241-.Ldebug_info0
.La241:
	.uleb128	16
	.ascii	"TCONTROL\000"
	.uleb128	992
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La551-.Ldebug_info0
	.uleb128	23
	.ascii	"FACTIONLINK\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La552-.Ldebug_info0
	.uleb128	23
	.ascii	"FALIGN\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La501-.Ldebug_info0
	.uleb128	23
	.ascii	"FANCHORS\000"
	.byte	2
	.byte	35
	.uleb128	124
	.byte	3
	.long	.La555-.Ldebug_info0
	.uleb128	23
	.ascii	"FANCHORSIDES\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La557-.Ldebug_info0
	.uleb128	23
	.ascii	"FANCHOREDCONTROLS\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La338-.Ldebug_info0
	.uleb128	23
	.ascii	"FAUTOSIZINGLOCKCOUNT\000"
	.byte	3
	.byte	35
	.uleb128	168
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FBASEBOUNDS\000"
	.byte	3
	.byte	35
	.uleb128	172
	.byte	3
	.long	.La311-.Ldebug_info0
	.uleb128	23
	.ascii	"FBASEBOUNDSLOCK\000"
	.byte	3
	.byte	35
	.uleb128	188
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FBASEPARENTCLIENTSIZE\000"
	.byte	3
	.byte	35
	.uleb128	192
	.byte	3
	.long	.La321-.Ldebug_info0
	.uleb128	23
	.ascii	"FBIDIMODE\000"
	.byte	3
	.byte	35
	.uleb128	200
	.byte	3
	.long	.La559-.Ldebug_info0
	.uleb128	23
	.ascii	"FBORDERSPACING\000"
	.byte	3
	.byte	35
	.uleb128	208
	.byte	3
	.long	.La561-.Ldebug_info0
	.uleb128	23
	.ascii	"FBOUNDSRECTFORNEWPARENT\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La311-.Ldebug_info0
	.uleb128	23
	.ascii	"FCAPTION\000"
	.byte	3
	.byte	35
	.uleb128	232
	.byte	3
	.long	.La141-.Ldebug_info0
	.uleb128	23
	.ascii	"FCAPTUREMOUSEBUTTONS\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La564-.Ldebug_info0
	.uleb128	23
	.ascii	"FCOLOR\000"
	.byte	3
	.byte	35
	.uleb128	244
	.byte	3
	.long	.La529-.Ldebug_info0
	.uleb128	23
	.ascii	"FCONSTRAINTS\000"
	.byte	3
	.byte	35
	.uleb128	248
	.byte	3
	.long	.La566-.Ldebug_info0
	.uleb128	23
	.ascii	"FCONTROLFLAGS\000"
	.byte	3
	.byte	35
	.uleb128	256
	.byte	3
	.long	.La569-.Ldebug_info0
	.uleb128	23
	.ascii	"FCONTROLHANDLERS\000"
	.byte	3
	.byte	35
	.uleb128	264
	.byte	3
	.long	.La571-.Ldebug_info0
	.uleb128	23
	.ascii	"FCONTROLSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	336
	.byte	3
	.long	.La573-.Ldebug_info0
	.uleb128	23
	.ascii	"FDESKTOPFONT\000"
	.byte	3
	.byte	35
	.uleb128	340
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FDOCKORIENTATION\000"
	.byte	3
	.byte	35
	.uleb128	344
	.byte	3
	.long	.La575-.Ldebug_info0
	.uleb128	23
	.ascii	"FDRAGCURSOR\000"
	.byte	3
	.byte	35
	.uleb128	348
	.byte	3
	.long	.La537-.Ldebug_info0
	.uleb128	23
	.ascii	"FDRAGKIND\000"
	.byte	3
	.byte	35
	.uleb128	352
	.byte	3
	.long	.La577-.Ldebug_info0
	.uleb128	23
	.ascii	"FDRAGMODE\000"
	.byte	3
	.byte	35
	.uleb128	356
	.byte	3
	.long	.La579-.Ldebug_info0
	.uleb128	23
	.ascii	"FFLOATINGDOCKSITECLASS\000"
	.byte	3
	.byte	35
	.uleb128	360
	.byte	3
	.long	.La581-.Ldebug_info0
	.uleb128	23
	.ascii	"FFONT\000"
	.byte	3
	.byte	35
	.uleb128	368
	.byte	3
	.long	.La583-.Ldebug_info0
	.uleb128	23
	.ascii	"FHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	376
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FHELPCONTEXT\000"
	.byte	3
	.byte	35
	.uleb128	380
	.byte	3
	.long	.La586-.Ldebug_info0
	.uleb128	23
	.ascii	"FHELPKEYWORD\000"
	.byte	3
	.byte	35
	.uleb128	384
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"FHELPTYPE\000"
	.byte	3
	.byte	35
	.uleb128	392
	.byte	3
	.long	.La588-.Ldebug_info0
	.uleb128	23
	.ascii	"FHINT\000"
	.byte	3
	.byte	35
	.uleb128	400
	.byte	3
	.long	.La141-.Ldebug_info0
	.uleb128	23
	.ascii	"FHOSTDOCKSITE\000"
	.byte	3
	.byte	35
	.uleb128	408
	.byte	3
	.long	.La236-.Ldebug_info0
	.uleb128	23
	.ascii	"FLASTDOCHANGEBOUNDS\000"
	.byte	3
	.byte	35
	.uleb128	416
	.byte	3
	.long	.La311-.Ldebug_info0
	.uleb128	23
	.ascii	"FLASTDOCHANGECLIENTSIZE\000"
	.byte	3
	.byte	35
	.uleb128	432
	.byte	3
	.long	.La517-.Ldebug_info0
	.uleb128	23
	.ascii	"FLASTRESIZECLIENTHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	440
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FLASTRESIZECLIENTWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	444
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FLASTRESIZEHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	448
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FLASTRESIZEWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	452
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FLEFT\000"
	.byte	3
	.byte	35
	.uleb128	456
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FLOADEDCLIENTSIZE\000"
	.byte	3
	.byte	35
	.uleb128	460
	.byte	3
	.long	.La321-.Ldebug_info0
	.uleb128	23
	.ascii	"FLRDOCKWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	468
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FONCHANGEBOUNDS\000"
	.byte	3
	.byte	35
	.uleb128	472
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONCLICK\000"
	.byte	3
	.byte	35
	.uleb128	488
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONCONSTRAINEDRESIZE\000"
	.byte	3
	.byte	35
	.uleb128	504
	.byte	3
	.long	.La590-.Ldebug_info0
	.uleb128	23
	.ascii	"FONCONTEXTPOPUP\000"
	.byte	3
	.byte	35
	.uleb128	520
	.byte	3
	.long	.La592-.Ldebug_info0
	.uleb128	23
	.ascii	"FONDBLCLICK\000"
	.byte	3
	.byte	35
	.uleb128	536
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONDRAGDROP\000"
	.byte	3
	.byte	35
	.uleb128	552
	.byte	3
	.long	.La594-.Ldebug_info0
	.uleb128	23
	.ascii	"FONDRAGOVER\000"
	.byte	3
	.byte	35
	.uleb128	568
	.byte	3
	.long	.La596-.Ldebug_info0
	.uleb128	23
	.ascii	"FONEDITINGDONE\000"
	.byte	3
	.byte	35
	.uleb128	584
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONENDDOCK\000"
	.byte	3
	.byte	35
	.uleb128	600
	.byte	3
	.long	.La598-.Ldebug_info0
	.uleb128	23
	.ascii	"FONENDDRAG\000"
	.byte	3
	.byte	35
	.uleb128	616
	.byte	3
	.long	.La598-.Ldebug_info0
	.uleb128	23
	.ascii	"FONMOUSEDOWN\000"
	.byte	3
	.byte	35
	.uleb128	632
	.byte	3
	.long	.La600-.Ldebug_info0
	.uleb128	23
	.ascii	"FONMOUSEENTER\000"
	.byte	3
	.byte	35
	.uleb128	648
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONMOUSELEAVE\000"
	.byte	3
	.byte	35
	.uleb128	664
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONMOUSEMOVE\000"
	.byte	3
	.byte	35
	.uleb128	680
	.byte	3
	.long	.La602-.Ldebug_info0
	.uleb128	23
	.ascii	"FONMOUSEUP\000"
	.byte	3
	.byte	35
	.uleb128	696
	.byte	3
	.long	.La600-.Ldebug_info0
	.uleb128	23
	.ascii	"FONMOUSEWHEEL\000"
	.byte	3
	.byte	35
	.uleb128	712
	.byte	3
	.long	.La604-.Ldebug_info0
	.uleb128	23
	.ascii	"FONMOUSEWHEELDOWN\000"
	.byte	3
	.byte	35
	.uleb128	728
	.byte	3
	.long	.La606-.Ldebug_info0
	.uleb128	23
	.ascii	"FONMOUSEWHEELUP\000"
	.byte	3
	.byte	35
	.uleb128	744
	.byte	3
	.long	.La606-.Ldebug_info0
	.uleb128	23
	.ascii	"FONQUADCLICK\000"
	.byte	3
	.byte	35
	.uleb128	760
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONRESIZE\000"
	.byte	3
	.byte	35
	.uleb128	776
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONSHOWHINT\000"
	.byte	3
	.byte	35
	.uleb128	792
	.byte	3
	.long	.La608-.Ldebug_info0
	.uleb128	23
	.ascii	"FONSTARTDOCK\000"
	.byte	3
	.byte	35
	.uleb128	808
	.byte	3
	.long	.La610-.Ldebug_info0
	.uleb128	23
	.ascii	"FONSTARTDRAG\000"
	.byte	3
	.byte	35
	.uleb128	824
	.byte	3
	.long	.La612-.Ldebug_info0
	.uleb128	23
	.ascii	"FONTRIPLECLICK\000"
	.byte	3
	.byte	35
	.uleb128	840
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FPARENT\000"
	.byte	3
	.byte	35
	.uleb128	856
	.byte	3
	.long	.La236-.Ldebug_info0
	.uleb128	23
	.ascii	"FPARENTBIDIMODE\000"
	.byte	3
	.byte	35
	.uleb128	864
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FPOPUPMENU\000"
	.byte	3
	.byte	35
	.uleb128	872
	.byte	3
	.long	.La614-.Ldebug_info0
	.uleb128	23
	.ascii	"FPREFERREDMINWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	880
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FPREFERREDMINHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	884
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FPREFERREDWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	888
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FPREFERREDHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	892
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FREADBOUNDS\000"
	.byte	3
	.byte	35
	.uleb128	896
	.byte	3
	.long	.La311-.Ldebug_info0
	.uleb128	23
	.ascii	"FSESSIONPROPERTIES\000"
	.byte	3
	.byte	35
	.uleb128	912
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"FSIZELOCK\000"
	.byte	3
	.byte	35
	.uleb128	920
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FTBDOCKHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	924
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FTOP\000"
	.byte	3
	.byte	35
	.uleb128	928
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FUNDOCKHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	932
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FUNDOCKWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	936
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	940
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FWINDOWPROC\000"
	.byte	3
	.byte	35
	.uleb128	944
	.byte	3
	.long	.La617-.Ldebug_info0
	.uleb128	23
	.ascii	"FISCONTROL\000"
	.byte	3
	.byte	35
	.uleb128	960
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FSHOWHINT\000"
	.byte	3
	.byte	35
	.uleb128	961
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FPARENTCOLOR\000"
	.byte	3
	.byte	35
	.uleb128	962
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FPARENTFONT\000"
	.byte	3
	.byte	35
	.uleb128	963
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FPARENTSHOWHINT\000"
	.byte	3
	.byte	35
	.uleb128	964
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FAUTOSIZE\000"
	.byte	3
	.byte	35
	.uleb128	965
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FAUTOSIZINGALL\000"
	.byte	3
	.byte	35
	.uleb128	966
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FAUTOSIZINGSELF\000"
	.byte	3
	.byte	35
	.uleb128	967
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FENABLED\000"
	.byte	3
	.byte	35
	.uleb128	968
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FMOUSEENTERED\000"
	.byte	3
	.byte	35
	.uleb128	969
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FVISIBLE\000"
	.byte	3
	.byte	35
	.uleb128	970
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FACCESSIBLEOBJECT\000"
	.byte	3
	.byte	35
	.uleb128	976
	.byte	2
	.long	.La619-.Ldebug_info0
	.uleb128	23
	.ascii	"FCONTROLSTATE\000"
	.byte	3
	.byte	35
	.uleb128	984
	.byte	2
	.long	.La622-.Ldebug_info0
	.uleb128	23
	.ascii	"FCURSOR\000"
	.byte	3
	.byte	35
	.uleb128	988
	.byte	2
	.long	.La537-.Ldebug_info0
	.uleb128	23
	.ascii	"AUTOSIZING\000"
	.byte	3
	.byte	35
	.uleb128	967
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"AUTOSIZINGLOCKCOUNT\000"
	.byte	3
	.byte	35
	.uleb128	168
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"ACTIONLINK\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La552-.Ldebug_info0
	.uleb128	23
	.ascii	"DESKTOPFONT\000"
	.byte	3
	.byte	35
	.uleb128	340
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"DRAGCURSOR\000"
	.byte	3
	.byte	35
	.uleb128	348
	.byte	3
	.long	.La537-.Ldebug_info0
	.uleb128	23
	.ascii	"DRAGKIND\000"
	.byte	3
	.byte	35
	.uleb128	352
	.byte	3
	.long	.La577-.Ldebug_info0
	.uleb128	23
	.ascii	"DRAGMODE\000"
	.byte	3
	.byte	35
	.uleb128	356
	.byte	3
	.long	.La579-.Ldebug_info0
	.uleb128	23
	.ascii	"PARENTCOLOR\000"
	.byte	3
	.byte	35
	.uleb128	962
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"PARENTFONT\000"
	.byte	3
	.byte	35
	.uleb128	963
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"PARENTSHOWHINT\000"
	.byte	3
	.byte	35
	.uleb128	964
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"SESSIONPROPERTIES\000"
	.byte	3
	.byte	35
	.uleb128	912
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"ONCONSTRAINEDRESIZE\000"
	.byte	3
	.byte	35
	.uleb128	504
	.byte	3
	.long	.La590-.Ldebug_info0
	.uleb128	23
	.ascii	"ONCONTEXTPOPUP\000"
	.byte	3
	.byte	35
	.uleb128	520
	.byte	3
	.long	.La592-.Ldebug_info0
	.uleb128	23
	.ascii	"ONDBLCLICK\000"
	.byte	3
	.byte	35
	.uleb128	536
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONTRIPLECLICK\000"
	.byte	3
	.byte	35
	.uleb128	840
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONQUADCLICK\000"
	.byte	3
	.byte	35
	.uleb128	760
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONDRAGDROP\000"
	.byte	3
	.byte	35
	.uleb128	552
	.byte	3
	.long	.La594-.Ldebug_info0
	.uleb128	23
	.ascii	"ONDRAGOVER\000"
	.byte	3
	.byte	35
	.uleb128	568
	.byte	3
	.long	.La596-.Ldebug_info0
	.uleb128	23
	.ascii	"ONENDDOCK\000"
	.byte	3
	.byte	35
	.uleb128	600
	.byte	3
	.long	.La598-.Ldebug_info0
	.uleb128	23
	.ascii	"ONENDDRAG\000"
	.byte	3
	.byte	35
	.uleb128	616
	.byte	3
	.long	.La598-.Ldebug_info0
	.uleb128	23
	.ascii	"ONMOUSEDOWN\000"
	.byte	3
	.byte	35
	.uleb128	632
	.byte	3
	.long	.La600-.Ldebug_info0
	.uleb128	23
	.ascii	"ONMOUSEMOVE\000"
	.byte	3
	.byte	35
	.uleb128	680
	.byte	3
	.long	.La602-.Ldebug_info0
	.uleb128	23
	.ascii	"ONMOUSEUP\000"
	.byte	3
	.byte	35
	.uleb128	696
	.byte	3
	.long	.La600-.Ldebug_info0
	.uleb128	23
	.ascii	"ONMOUSEENTER\000"
	.byte	3
	.byte	35
	.uleb128	648
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONMOUSELEAVE\000"
	.byte	3
	.byte	35
	.uleb128	664
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONMOUSEWHEEL\000"
	.byte	3
	.byte	35
	.uleb128	712
	.byte	3
	.long	.La604-.Ldebug_info0
	.uleb128	23
	.ascii	"ONMOUSEWHEELDOWN\000"
	.byte	3
	.byte	35
	.uleb128	728
	.byte	3
	.long	.La606-.Ldebug_info0
	.uleb128	23
	.ascii	"ONMOUSEWHEELUP\000"
	.byte	3
	.byte	35
	.uleb128	744
	.byte	3
	.long	.La606-.Ldebug_info0
	.uleb128	23
	.ascii	"ONSTARTDOCK\000"
	.byte	3
	.byte	35
	.uleb128	808
	.byte	3
	.long	.La610-.Ldebug_info0
	.uleb128	23
	.ascii	"ONSTARTDRAG\000"
	.byte	3
	.byte	35
	.uleb128	824
	.byte	3
	.long	.La612-.Ldebug_info0
	.uleb128	23
	.ascii	"ONEDITINGDONE\000"
	.byte	3
	.byte	35
	.uleb128	584
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	8
	.ascii	"FCOMPSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	990
	.long	.La21-.Ldebug_info0
	.uleb128	23
	.ascii	"BASEBOUNDS\000"
	.byte	3
	.byte	35
	.uleb128	172
	.byte	3
	.long	.La311-.Ldebug_info0
	.uleb128	23
	.ascii	"READBOUNDS\000"
	.byte	3
	.byte	35
	.uleb128	896
	.byte	3
	.long	.La311-.Ldebug_info0
	.uleb128	23
	.ascii	"BASEPARENTCLIENTSIZE\000"
	.byte	3
	.byte	35
	.uleb128	192
	.byte	3
	.long	.La321-.Ldebug_info0
	.uleb128	23
	.ascii	"ALIGN\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La501-.Ldebug_info0
	.uleb128	23
	.ascii	"ANCHORS\000"
	.byte	2
	.byte	35
	.uleb128	124
	.byte	3
	.long	.La555-.Ldebug_info0
	.uleb128	23
	.ascii	"AUTOSIZE\000"
	.byte	3
	.byte	35
	.uleb128	965
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"BORDERSPACING\000"
	.byte	3
	.byte	35
	.uleb128	208
	.byte	3
	.long	.La561-.Ldebug_info0
	.uleb128	23
	.ascii	"BOUNDSRECTFORNEWPARENT\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La311-.Ldebug_info0
	.uleb128	23
	.ascii	"CAPTUREMOUSEBUTTONS\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La564-.Ldebug_info0
	.uleb128	23
	.ascii	"COLOR\000"
	.byte	3
	.byte	35
	.uleb128	244
	.byte	3
	.long	.La529-.Ldebug_info0
	.uleb128	23
	.ascii	"CONSTRAINTS\000"
	.byte	3
	.byte	35
	.uleb128	248
	.byte	3
	.long	.La566-.Ldebug_info0
	.uleb128	23
	.ascii	"CONTROLSTATE\000"
	.byte	3
	.byte	35
	.uleb128	984
	.byte	2
	.long	.La622-.Ldebug_info0
	.uleb128	23
	.ascii	"CONTROLSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	336
	.byte	3
	.long	.La573-.Ldebug_info0
	.uleb128	23
	.ascii	"FONT\000"
	.byte	3
	.byte	35
	.uleb128	368
	.byte	3
	.long	.La583-.Ldebug_info0
	.uleb128	23
	.ascii	"ISCONTROL\000"
	.byte	3
	.byte	35
	.uleb128	960
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"MOUSEENTERED\000"
	.byte	3
	.byte	35
	.uleb128	969
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"ONCHANGEBOUNDS\000"
	.byte	3
	.byte	35
	.uleb128	472
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONCLICK\000"
	.byte	3
	.byte	35
	.uleb128	488
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONRESIZE\000"
	.byte	3
	.byte	35
	.uleb128	776
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONSHOWHINT\000"
	.byte	3
	.byte	35
	.uleb128	792
	.byte	3
	.long	.La608-.Ldebug_info0
	.uleb128	23
	.ascii	"PARENT\000"
	.byte	3
	.byte	35
	.uleb128	856
	.byte	3
	.long	.La236-.Ldebug_info0
	.uleb128	23
	.ascii	"SHOWHINT\000"
	.byte	3
	.byte	35
	.uleb128	961
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"VISIBLE\000"
	.byte	3
	.byte	35
	.uleb128	970
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"WINDOWPROC\000"
	.byte	3
	.byte	35
	.uleb128	944
	.byte	3
	.long	.La617-.Ldebug_info0
	.uleb128	23
	.ascii	"DOCKORIENTATION\000"
	.byte	3
	.byte	35
	.uleb128	344
	.byte	3
	.long	.La575-.Ldebug_info0
	.uleb128	23
	.ascii	"HOSTDOCKSITE\000"
	.byte	3
	.byte	35
	.uleb128	408
	.byte	3
	.long	.La236-.Ldebug_info0
	.uleb128	23
	.ascii	"BIDIMODE\000"
	.byte	3
	.byte	35
	.uleb128	200
	.byte	3
	.long	.La559-.Ldebug_info0
	.uleb128	23
	.ascii	"PARENTBIDIMODE\000"
	.byte	3
	.byte	35
	.uleb128	864
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"LEFT\000"
	.byte	3
	.byte	35
	.uleb128	456
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"HEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	376
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"HINT\000"
	.byte	3
	.byte	35
	.uleb128	400
	.byte	3
	.long	.La141-.Ldebug_info0
	.uleb128	23
	.ascii	"TOP\000"
	.byte	3
	.byte	35
	.uleb128	928
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"WIDTH\000"
	.byte	3
	.byte	35
	.uleb128	940
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"HELPTYPE\000"
	.byte	3
	.byte	35
	.uleb128	392
	.byte	3
	.long	.La588-.Ldebug_info0
	.uleb128	23
	.ascii	"HELPKEYWORD\000"
	.byte	3
	.byte	35
	.uleb128	384
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"HELPCONTEXT\000"
	.byte	3
	.byte	35
	.uleb128	380
	.byte	3
	.long	.La586-.Ldebug_info0
# Procdef CaptureMouseButtonsIsStored(<TControl>):Boolean;
	.uleb128	24
	.ascii	"CAPTUREMOUSEBUTTONSISSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef DoActionChange(<TControl>;TObject);
	.uleb128	25
	.ascii	"DOACTIONCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SENDER
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef GetAccessibleDescription(<TControl>;<var TTranslateString>):AnsiString;
	.uleb128	24
	.ascii	"GETACCESSIBLEDESCRIPTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La141-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La141-.Ldebug_info0
	.byte	0
# Procdef GetAccessibleValue(<TControl>;<var TTranslateString>):AnsiString;
	.uleb128	24
	.ascii	"GETACCESSIBLEVALUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La141-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La141-.Ldebug_info0
	.byte	0
# Procdef GetAccessibleRole(<TControl>):<enumeration type>;
	.uleb128	24
	.ascii	"GETACCESSIBLEROLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La624-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetAutoSizingAll(<TControl>):Boolean;
	.uleb128	24
	.ascii	"GETAUTOSIZINGALL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetAnchorSide(<TControl>;TAnchorKind):TAnchorSide;
	.uleb128	24
	.ascii	"GETANCHORSIDE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La626-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol KIND
	.uleb128	27
	.ascii	"KIND\000"
	.long	.La629-.Ldebug_info0
	.byte	0
# Procdef GetAnchoredControls(<TControl>;LongInt):TControl;
	.uleb128	24
	.ascii	"GETANCHOREDCONTROLS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La239-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetBoundsRect(<TControl>;<var TRect>):<record type>;
	.uleb128	24
	.ascii	"GETBOUNDSRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La311-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef GetClientHeight(<TControl>):LongInt;
	.uleb128	24
	.ascii	"GETCLIENTHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetClientWidth(<TControl>):LongInt;
	.uleb128	24
	.ascii	"GETCLIENTWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetLRDockWidth(<TControl>):LongInt;
	.uleb128	24
	.ascii	"GETLRDOCKWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetTBDockHeight(<TControl>):LongInt;
	.uleb128	24
	.ascii	"GETTBDOCKHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetText(<TControl>;<var TTranslateString>):AnsiString;
	.uleb128	24
	.ascii	"GETTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La141-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La141-.Ldebug_info0
	.byte	0
# Procdef GetUndockHeight(<TControl>):LongInt;
	.uleb128	24
	.ascii	"GETUNDOCKHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetUndockWidth(<TControl>):LongInt;
	.uleb128	24
	.ascii	"GETUNDOCKWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsAnchorsStored(<TControl>):Boolean;
	.uleb128	24
	.ascii	"ISANCHORSSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsBiDiModeStored(<TControl>):Boolean;
	.uleb128	24
	.ascii	"ISBIDIMODESTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsEnabledStored(<TControl>):Boolean;
	.uleb128	24
	.ascii	"ISENABLEDSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsFontStored(<TControl>):Boolean;
	.uleb128	24
	.ascii	"ISFONTSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsHintStored(<TControl>):Boolean;
	.uleb128	24
	.ascii	"ISHINTSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsHelpContextStored(<TControl>):Boolean;
	.uleb128	24
	.ascii	"ISHELPCONTEXTSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsHelpKeyWordStored(<TControl>):Boolean;
	.uleb128	24
	.ascii	"ISHELPKEYWORDSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsShowHintStored(<TControl>):Boolean;
	.uleb128	24
	.ascii	"ISSHOWHINTSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsVisibleStored(<TControl>):Boolean;
	.uleb128	24
	.ascii	"ISVISIBLESTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef DoBeforeMouseMessage(<TControl>);
	.uleb128	25
	.ascii	"DOBEFOREMOUSEMESSAGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef DoConstrainedResize(<TControl>;var LongInt;var LongInt;var LongInt;var LongInt);
	.uleb128	25
	.ascii	"DOCONSTRAINEDRESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol NEWLEFT
	.uleb128	27
	.ascii	"NEWLEFT\000"
	.long	.La6-.Ldebug_info0
# Symbol NEWTOP
	.uleb128	27
	.ascii	"NEWTOP\000"
	.long	.La6-.Ldebug_info0
# Symbol NEWWIDTH
	.uleb128	27
	.ascii	"NEWWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol NEWHEIGHT
	.uleb128	27
	.ascii	"NEWHEIGHT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef DoMouseDown(<TControl>;var TLMMouse;TMouseButton;TShiftState);
	.uleb128	25
	.ascii	"DOMOUSEDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
# Symbol BUTTON
	.uleb128	27
	.ascii	"BUTTON\000"
	.long	.La633-.Ldebug_info0
# Symbol SHIFT
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
	.byte	0
# Procdef DoMouseUp(<TControl>;var TLMMouse;TMouseButton);
	.uleb128	25
	.ascii	"DOMOUSEUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
# Symbol BUTTON
	.uleb128	27
	.ascii	"BUTTON\000"
	.long	.La633-.Ldebug_info0
	.byte	0
# Procdef SetAccessibleDescription(<TControl>;TTranslateString);
	.uleb128	25
	.ascii	"SETACCESSIBLEDESCRIPTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La141-.Ldebug_info0
	.byte	0
# Procdef SetAccessibleValue(<TControl>;TTranslateString);
	.uleb128	25
	.ascii	"SETACCESSIBLEVALUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La141-.Ldebug_info0
	.byte	0
# Procdef SetAccessibleRole(<TControl>;TLazAccessibilityRole);
	.uleb128	25
	.ascii	"SETACCESSIBLEROLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La624-.Ldebug_info0
	.byte	0
# Procdef SetAnchorSide(<TControl>;TAnchorKind;TAnchorSide);
	.uleb128	25
	.ascii	"SETANCHORSIDE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol KIND
	.uleb128	27
	.ascii	"KIND\000"
	.long	.La629-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La626-.Ldebug_info0
	.byte	0
# Procdef SetBorderSpacing(<TControl>;const TControlBorderSpacing);
	.uleb128	25
	.ascii	"SETBORDERSPACING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La561-.Ldebug_info0
	.byte	0
# Procdef SetBoundsRect(<TControl>;const TRect);
	.uleb128	25
	.ascii	"SETBOUNDSRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef SetBoundsRectForNewParent(<TControl>;const TRect);
	.uleb128	25
	.ascii	"SETBOUNDSRECTFORNEWPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef SetClientHeight(<TControl>;LongInt);
	.uleb128	25
	.ascii	"SETCLIENTHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetClientSize(<TControl>;const TPoint);
	.uleb128	25
	.ascii	"SETCLIENTSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef SetClientWidth(<TControl>;LongInt);
	.uleb128	25
	.ascii	"SETCLIENTWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetConstraints(<TControl>;const TSizeConstraints);
	.uleb128	25
	.ascii	"SETCONSTRAINTS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La566-.Ldebug_info0
	.byte	0
# Procdef SetDesktopFont(<TControl>;const Boolean);
	.uleb128	25
	.ascii	"SETDESKTOPFONT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetDragCursor(<TControl>;const TCursor);
	.uleb128	25
	.ascii	"SETDRAGCURSOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La537-.Ldebug_info0
	.byte	0
# Procdef SetFont(<TControl>;TFont);
	.uleb128	25
	.ascii	"SETFONT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef SetHeight(<TControl>;LongInt);
	.uleb128	25
	.ascii	"SETHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetHelpContext(<TControl>;const THelpContext);
	.uleb128	25
	.ascii	"SETHELPCONTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La586-.Ldebug_info0
	.byte	0
# Procdef SetHelpKeyword(<TControl>;const AnsiString);
	.uleb128	25
	.ascii	"SETHELPKEYWORD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef SetHostDockSite(<TControl>;const TWinControl);
	.uleb128	25
	.ascii	"SETHOSTDOCKSITE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef SetLeft(<TControl>;LongInt);
	.uleb128	25
	.ascii	"SETLEFT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetMouseCapture(<TControl>;Boolean);
	.uleb128	25
	.ascii	"SETMOUSECAPTURE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetParentShowHint(<TControl>;Boolean);
	.uleb128	25
	.ascii	"SETPARENTSHOWHINT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetParentColor(<TControl>;Boolean);
	.uleb128	25
	.ascii	"SETPARENTCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetParentFont(<TControl>;Boolean);
	.uleb128	25
	.ascii	"SETPARENTFONT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetPopupMenu(<TControl>;TPopupMenu);
	.uleb128	25
	.ascii	"SETPOPUPMENU\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La614-.Ldebug_info0
	.byte	0
# Procdef SetShowHint(<TControl>;Boolean);
	.uleb128	25
	.ascii	"SETSHOWHINT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetText(<TControl>;const TTranslateString);
	.uleb128	25
	.ascii	"SETTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La141-.Ldebug_info0
	.byte	0
# Procdef SetTop(<TControl>;LongInt);
	.uleb128	25
	.ascii	"SETTOP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetWidth(<TControl>;LongInt);
	.uleb128	25
	.ascii	"SETWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TControl>);
	.uleb128	18
	.ascii	"WSREGISTERCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	432
	.byte	34
	.byte	2
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La635-.Ldebug_info0
	.byte	0
# Procdef GetCursor(<TControl>):SmallInt;
	.uleb128	31
	.ascii	"GETCURSOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	456
	.byte	34
	.byte	2
	.long	.La537-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef SetCursor(<TControl>;TCursor);
	.uleb128	18
	.ascii	"SETCURSOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	464
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La537-.Ldebug_info0
	.byte	0
# Procdef SetVisible(<TControl>;Boolean);
	.uleb128	18
	.ascii	"SETVISIBLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	472
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DoOnParentHandleDestruction(<TControl>);
	.uleb128	18
	.ascii	"DOONPARENTHANDLEDESTRUCTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	480
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef DoAutoSize(<TControl>);
	.uleb128	18
	.ascii	"DOAUTOSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	488
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef DoAllAutoSize(<TControl>);
	.uleb128	18
	.ascii	"DOALLAUTOSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	496
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef BeginAutoSizing(<TControl>);
	.uleb128	25
	.ascii	"BEGINAUTOSIZING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef EndAutoSizing(<TControl>);
	.uleb128	25
	.ascii	"ENDAUTOSIZING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef AnchorSideChanged(<TControl>;TAnchorSide);
	.uleb128	18
	.ascii	"ANCHORSIDECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	504
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol THEANCHORSIDE
	.uleb128	27
	.ascii	"THEANCHORSIDE\000"
	.long	.La626-.Ldebug_info0
	.byte	0
# Procdef ForeignAnchorSideChanged(<TControl>;TAnchorSide;TAnchorSideChangeOperation);
	.uleb128	18
	.ascii	"FOREIGNANCHORSIDECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	512
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol THEANCHORSIDE
	.uleb128	27
	.ascii	"THEANCHORSIDE\000"
	.long	.La626-.Ldebug_info0
# Symbol OPERATION
	.uleb128	27
	.ascii	"OPERATION\000"
	.long	.La637-.Ldebug_info0
	.byte	0
# Procdef SetAlign(<TControl>;TAlign);
	.uleb128	18
	.ascii	"SETALIGN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	520
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La501-.Ldebug_info0
	.byte	0
# Procdef SetAnchors(<TControl>;const TAnchors);
	.uleb128	18
	.ascii	"SETANCHORS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	528
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La555-.Ldebug_info0
	.byte	0
# Procdef SetAutoSize(<TControl>;Boolean);
	.uleb128	18
	.ascii	"SETAUTOSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	536
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef BoundsChanged(<TControl>);
	.uleb128	18
	.ascii	"BOUNDSCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	544
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef CreateControlBorderSpacing(<TControl>):TControlBorderSpacing;
	.uleb128	31
	.ascii	"CREATECONTROLBORDERSPACING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	552
	.byte	34
	.byte	2
	.long	.La561-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef DoConstraintsChange(<TControl>;TObject);
	.uleb128	18
	.ascii	"DOCONSTRAINTSCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	560
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SENDER
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef DoBorderSpacingChange(<TControl>;TObject;Boolean);
	.uleb128	18
	.ascii	"DOBORDERSPACINGCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	568
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SENDER
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
# Symbol INNERSPACECHANGED
	.uleb128	27
	.ascii	"INNERSPACECHANGED\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef IsBorderSpacingInnerBorderStored(<TControl>):Boolean;
	.uleb128	31
	.ascii	"ISBORDERSPACINGINNERBORDERSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	576
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsCaptionStored(<TControl>):Boolean;
	.uleb128	24
	.ascii	"ISCAPTIONSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef SendMoveSizeMessages(<TControl>;Boolean;Boolean);
	.uleb128	18
	.ascii	"SENDMOVESIZEMESSAGES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	584
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SIZECHANGED
	.uleb128	27
	.ascii	"SIZECHANGED\000"
	.long	.La38-.Ldebug_info0
# Symbol POSCHANGED
	.uleb128	27
	.ascii	"POSCHANGED\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef ConstrainedResize(<TControl>;var TConstraintSize;var TConstraintSize;var TConstraintSize;var TConstraintSize);
	.uleb128	18
	.ascii	"CONSTRAINEDRESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	592
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MINWIDTH
	.uleb128	27
	.ascii	"MINWIDTH\000"
	.long	.La639-.Ldebug_info0
# Symbol MINHEIGHT
	.uleb128	27
	.ascii	"MINHEIGHT\000"
	.long	.La639-.Ldebug_info0
# Symbol MAXWIDTH
	.uleb128	27
	.ascii	"MAXWIDTH\000"
	.long	.La639-.Ldebug_info0
# Symbol MAXHEIGHT
	.uleb128	27
	.ascii	"MAXHEIGHT\000"
	.long	.La639-.Ldebug_info0
	.byte	0
# Procdef CalculatePreferredSize(<TControl>;var LongInt;var LongInt;Boolean);
	.uleb128	18
	.ascii	"CALCULATEPREFERREDSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	600
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol PREFERREDWIDTH
	.uleb128	27
	.ascii	"PREFERREDWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol PREFERREDHEIGHT
	.uleb128	27
	.ascii	"PREFERREDHEIGHT\000"
	.long	.La6-.Ldebug_info0
# Symbol WITHTHEMESPACE
	.uleb128	27
	.ascii	"WITHTHEMESPACE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DoOnResize(<TControl>);
	.uleb128	18
	.ascii	"DOONRESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	608
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef DoOnChangeBounds(<TControl>);
	.uleb128	18
	.ascii	"DOONCHANGEBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	616
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef CheckOnChangeBounds(<TControl>);
	.uleb128	25
	.ascii	"CHECKONCHANGEBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef Resize(<TControl>);
	.uleb128	18
	.ascii	"RESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	624
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef RequestAlign(<TControl>);
	.uleb128	18
	.ascii	"REQUESTALIGN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	632
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef UpdateAnchorRules(<TControl>);
	.uleb128	25
	.ascii	"UPDATEANCHORRULES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef ChangeBounds(<TControl>;LongInt;LongInt;LongInt;LongInt;Boolean);
	.uleb128	18
	.ascii	"CHANGEBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	640
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ALEFT
	.uleb128	27
	.ascii	"ALEFT\000"
	.long	.La6-.Ldebug_info0
# Symbol ATOP
	.uleb128	27
	.ascii	"ATOP\000"
	.long	.La6-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	27
	.ascii	"AWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	27
	.ascii	"AHEIGHT\000"
	.long	.La6-.Ldebug_info0
# Symbol KEEPBASE
	.uleb128	27
	.ascii	"KEEPBASE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DoSetBounds(<TControl>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	18
	.ascii	"DOSETBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	648
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ALEFT
	.uleb128	27
	.ascii	"ALEFT\000"
	.long	.La6-.Ldebug_info0
# Symbol ATOP
	.uleb128	27
	.ascii	"ATOP\000"
	.long	.La6-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	27
	.ascii	"AWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	27
	.ascii	"AHEIGHT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef ScaleConstraints(<TControl>;LongInt;LongInt);
	.uleb128	25
	.ascii	"SCALECONSTRAINTS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MULTIPLIER
	.uleb128	27
	.ascii	"MULTIPLIER\000"
	.long	.La6-.Ldebug_info0
# Symbol DIVIDER
	.uleb128	27
	.ascii	"DIVIDER\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef ChangeScale(<TControl>;LongInt;LongInt);
	.uleb128	18
	.ascii	"CHANGESCALE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	656
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MULTIPLIER
	.uleb128	27
	.ascii	"MULTIPLIER\000"
	.long	.La6-.Ldebug_info0
# Symbol DIVIDER
	.uleb128	27
	.ascii	"DIVIDER\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef CanAutoSize(<TControl>;var LongInt;var LongInt):Boolean;
	.uleb128	31
	.ascii	"CANAUTOSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	664
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol NEWWIDTH
	.uleb128	27
	.ascii	"NEWWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol NEWHEIGHT
	.uleb128	27
	.ascii	"NEWHEIGHT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef UpdateAlignIndex(<TControl>);
	.uleb128	25
	.ascii	"UPDATEALIGNINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef SetBiDiMode(<TControl>;TBiDiMode);
	.uleb128	18
	.ascii	"SETBIDIMODE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	672
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La559-.Ldebug_info0
	.byte	0
# Procdef SetParentBiDiMode(<TControl>;Boolean);
	.uleb128	18
	.ascii	"SETPARENTBIDIMODE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	680
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef IsAParentAligning(<TControl>):Boolean;
	.uleb128	24
	.ascii	"ISAPARENTALIGNING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetClientOrigin(<TControl>):<record type>;
	.uleb128	31
	.ascii	"GETCLIENTORIGIN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	688
	.byte	34
	.byte	2
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetClientRect(<TControl>;<var TRect>):<record type>;
	.uleb128	31
	.ascii	"GETCLIENTRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	696
	.byte	34
	.byte	2
	.long	.La311-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef GetLogicalClientRect(<TControl>;<var TRect>):<record type>;
	.uleb128	31
	.ascii	"GETLOGICALCLIENTRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	704
	.byte	34
	.byte	2
	.long	.La311-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef GetScrolledClientRect(<TControl>;<var TRect>):<record type>;
	.uleb128	31
	.ascii	"GETSCROLLEDCLIENTRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	712
	.byte	34
	.byte	2
	.long	.La311-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef GetClientScrollOffset(<TControl>):<record type>;
	.uleb128	31
	.ascii	"GETCLIENTSCROLLOFFSET\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	720
	.byte	34
	.byte	2
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetControlOrigin(<TControl>):<record type>;
	.uleb128	31
	.ascii	"GETCONTROLORIGIN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	728
	.byte	34
	.byte	2
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsClientHeightStored(<TControl>):Boolean;
	.uleb128	31
	.ascii	"ISCLIENTHEIGHTSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	736
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsClientWidthStored(<TControl>):Boolean;
	.uleb128	31
	.ascii	"ISCLIENTWIDTHSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	744
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef WidthIsAnchored(<TControl>):Boolean;
	.uleb128	24
	.ascii	"WIDTHISANCHORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef HeightIsAnchored(<TControl>):Boolean;
	.uleb128	24
	.ascii	"HEIGHTISANCHORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef WMCancelMode(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"WMCANCELMODE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef WMContextMenu(<TControl>;var TLMContextMenu);
	.uleb128	25
	.ascii	"WMCONTEXTMENU\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La507-.Ldebug_info0
	.byte	0
# Procdef WMLButtonDown(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMLBUTTONDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMRButtonDown(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMRBUTTONDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMMButtonDown(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMMBUTTONDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMXButtonDown(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMXBUTTONDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMLButtonDBLCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMLBUTTONDBLCLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMRButtonDBLCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMRBUTTONDBLCLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMMButtonDBLCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMMBUTTONDBLCLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMXButtonDBLCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMXBUTTONDBLCLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMLButtonTripleCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMLBUTTONTRIPLECLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMRButtonTripleCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMRBUTTONTRIPLECLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMMButtonTripleCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMMBUTTONTRIPLECLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMXButtonTripleCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMXBUTTONTRIPLECLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMLButtonQuadCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMLBUTTONQUADCLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMRButtonQuadCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMRBUTTONQUADCLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMMButtonQuadCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMMBUTTONQUADCLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMXButtonQuadCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMXBUTTONQUADCLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMMouseMove(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMMOUSEMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMLButtonUp(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMLBUTTONUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMRButtonUp(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMRBUTTONUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMMButtonUp(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMMBUTTONUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMXButtonUp(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMXBUTTONUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La631-.Ldebug_info0
	.byte	0
# Procdef WMMouseWheel(<TControl>;var TLMMouseEvent);
	.uleb128	25
	.ascii	"WMMOUSEWHEEL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La641-.Ldebug_info0
	.byte	0
# Procdef WMMove(<TControl>;var TLMMove);
	.uleb128	25
	.ascii	"WMMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La301-.Ldebug_info0
	.byte	0
# Procdef WMSize(<TControl>;var TWMSize);
	.uleb128	25
	.ascii	"WMSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La305-.Ldebug_info0
	.byte	0
# Procdef WMWindowPosChanged(<TControl>;var TLMWindowPosMsg);
	.uleb128	25
	.ascii	"WMWINDOWPOSCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La307-.Ldebug_info0
	.byte	0
# Procdef CMChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef LMCaptureChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"LMCAPTURECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMBiDiModeChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMBIDIMODECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMSysFontChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMSYSFONTCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMEnabledChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMENABLEDCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMHitTest(<TControl>;var TLMNCHITTEST);
	.uleb128	25
	.ascii	"CMHITTEST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La643-.Ldebug_info0
	.byte	0
# Procdef CMMouseEnter(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMMOUSEENTER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMMouseLeave(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMMOUSELEAVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMHintShow(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMHINTSHOW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMParentBiDiModeChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMPARENTBIDIMODECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMParentColorChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMPARENTCOLORCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMParentFontChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMPARENTFONTCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMParentShowHintChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMPARENTSHOWHINTCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMVisibleChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMVISIBLECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMTextChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMTEXTCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CMCursorChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMCURSORCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef CalculateDockSizes(<TControl>);
	.uleb128	25
	.ascii	"CALCULATEDOCKSIZES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef CreateFloatingDockSite(<TControl>;const TRect):TWinControl;
	.uleb128	24
	.ascii	"CREATEFLOATINGDOCKSITE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La236-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol BOUNDS
	.uleb128	27
	.ascii	"BOUNDS\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef GetDockEdge(<TControl>;const TPoint):<enumeration type>;
	.uleb128	31
	.ascii	"GETDOCKEDGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	752
	.byte	34
	.byte	2
	.long	.La501-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MOUSEPOS
	.uleb128	27
	.ascii	"MOUSEPOS\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef GetDragImages(<TControl>):TDragImageList;
	.uleb128	31
	.ascii	"GETDRAGIMAGES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	760
	.byte	34
	.byte	2
	.long	.La645-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetFloating(<TControl>):Boolean;
	.uleb128	31
	.ascii	"GETFLOATING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	768
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetFloatingDockSiteClass(<TControl>):Class Of TWinControl;
	.uleb128	31
	.ascii	"GETFLOATINGDOCKSITECLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	776
	.byte	34
	.byte	2
	.long	.La581-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef BeforeDragStart(<TControl>);
	.uleb128	18
	.ascii	"BEFOREDRAGSTART\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	784
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef BeginAutoDrag(<TControl>);
	.uleb128	18
	.ascii	"BEGINAUTODRAG\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	792
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef DoFloatMsg(<TControl>;TDragDockObject);
	.uleb128	18
	.ascii	"DOFLOATMSG\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	800
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ADOCKSOURCE
	.uleb128	27
	.ascii	"ADOCKSOURCE\000"
	.long	.La522-.Ldebug_info0
	.byte	0
# Procdef DockTrackNoTarget(<TControl>;TDragDockObject;LongInt;LongInt);
	.uleb128	18
	.ascii	"DOCKTRACKNOTARGET\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	808
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SOURCE
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La522-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef DoDock(<TControl>;TWinControl;var TRect);
	.uleb128	18
	.ascii	"DODOCK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	816
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol NEWDOCKSITE
	.uleb128	27
	.ascii	"NEWDOCKSITE\000"
	.long	.La236-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef DoDragMsg(<TControl>;TDragMessage;TPoint;TDragObject;TControl;Boolean):Int64;
	.uleb128	31
	.ascii	"DODRAGMSG\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	824
	.byte	34
	.byte	2
	.long	.La168-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ADRAGMESSAGE
	.uleb128	27
	.ascii	"ADRAGMESSAGE\000"
	.long	.La515-.Ldebug_info0
# Symbol APOSITION
	.uleb128	27
	.ascii	"APOSITION\000"
	.long	.La517-.Ldebug_info0
# Symbol ADRAGOBJECT
	.uleb128	27
	.ascii	"ADRAGOBJECT\000"
	.long	.La519-.Ldebug_info0
# Symbol ATARGET
	.uleb128	27
	.ascii	"ATARGET\000"
	.long	.La239-.Ldebug_info0
# Symbol ADOCKING
	.uleb128	27
	.ascii	"ADOCKING\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DoEndDock(<TControl>;TObject;LongInt;LongInt);
	.uleb128	18
	.ascii	"DOENDDOCK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	832
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol TARGET
	.uleb128	27
	.ascii	"TARGET\000"
	.long	.La56-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef DoEndDrag(<TControl>;TObject;LongInt;LongInt);
	.uleb128	18
	.ascii	"DOENDDRAG\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	840
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol TARGET
	.uleb128	27
	.ascii	"TARGET\000"
	.long	.La56-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef DoStartDock(<TControl>;var TDragObject);
	.uleb128	18
	.ascii	"DOSTARTDOCK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	848
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol DRAGOBJECT
	.uleb128	27
	.ascii	"DRAGOBJECT\000"
	.long	.La519-.Ldebug_info0
	.byte	0
# Procdef DoStartDrag(<TControl>;var TDragObject);
	.uleb128	18
	.ascii	"DOSTARTDRAG\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	856
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol DRAGOBJECT
	.uleb128	27
	.ascii	"DRAGOBJECT\000"
	.long	.La519-.Ldebug_info0
	.byte	0
# Procdef DragCanceled(<TControl>);
	.uleb128	18
	.ascii	"DRAGCANCELED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	864
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef DragOver(<TControl>;TObject;LongInt;LongInt;TDragState;var Boolean);
	.uleb128	18
	.ascii	"DRAGOVER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	872
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SOURCE
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La56-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
# Symbol STATE
	.uleb128	27
	.ascii	"STATE\000"
	.long	.La525-.Ldebug_info0
# Symbol ACCEPT
	.uleb128	27
	.ascii	"ACCEPT\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef PositionDockRect(<TControl>;TDragDockObject);
	.uleb128	18
	.ascii	"POSITIONDOCKRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	880
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol DRAGDOCKOBJECT
	.uleb128	27
	.ascii	"DRAGDOCKOBJECT\000"
	.long	.La522-.Ldebug_info0
	.byte	0
# Procdef SetDragMode(<TControl>;TDragMode);
	.uleb128	18
	.ascii	"SETDRAGMODE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	888
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La579-.Ldebug_info0
	.byte	0
# Procdef GetDefaultDockCaption(<TControl>;<var AnsiString>):AnsiString;
	.uleb128	31
	.ascii	"GETDEFAULTDOCKCAPTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	896
	.byte	34
	.byte	2
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef Click(<TControl>);
	.uleb128	18
	.ascii	"CLICK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	904
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef DblClick(<TControl>);
	.uleb128	18
	.ascii	"DBLCLICK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	912
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef TripleClick(<TControl>);
	.uleb128	18
	.ascii	"TRIPLECLICK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	920
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef QuadClick(<TControl>);
	.uleb128	18
	.ascii	"QUADCLICK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	928
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetMousePosFromMessage(<TControl>;const TSmallPoint):<record type>;
	.uleb128	24
	.ascii	"GETMOUSEPOSFROMMESSAGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGEMOUSEPOS
	.uleb128	27
	.ascii	"MESSAGEMOUSEPOS\000"
	.long	.La648-.Ldebug_info0
	.byte	0
# Procdef MouseDown(<TControl>;TMouseButton;TShiftState;LongInt;LongInt);
	.uleb128	18
	.ascii	"MOUSEDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	936
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol BUTTON
	.uleb128	27
	.ascii	"BUTTON\000"
	.long	.La633-.Ldebug_info0
# Symbol SHIFT
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef MouseMove(<TControl>;TShiftState;LongInt;LongInt);
	.uleb128	18
	.ascii	"MOUSEMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	944
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SHIFT
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef MouseUp(<TControl>;TMouseButton;TShiftState;LongInt;LongInt);
	.uleb128	18
	.ascii	"MOUSEUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	952
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol BUTTON
	.uleb128	27
	.ascii	"BUTTON\000"
	.long	.La633-.Ldebug_info0
# Symbol SHIFT
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef MouseEnter(<TControl>);
	.uleb128	18
	.ascii	"MOUSEENTER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	960
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef MouseLeave(<TControl>);
	.uleb128	18
	.ascii	"MOUSELEAVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	968
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef DialogChar(<TControl>;var TLMKey):Boolean;
	.uleb128	31
	.ascii	"DIALOGCHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	976
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef UpdateMouseCursor(<TControl>;LongInt;LongInt);
	.uleb128	25
	.ascii	"UPDATEMOUSECURSOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Changed(<TControl>);
	.uleb128	25
	.ascii	"CHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetPalette(<TControl>):QWord;
	.uleb128	31
	.ascii	"GETPALETTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	984
	.byte	34
	.byte	2
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef ChildClassAllowed(<TControl>;TClass):Boolean;
	.uleb128	31
	.ascii	"CHILDCLASSALLOWED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	992
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol CHILDCLASS
	.uleb128	27
	.ascii	"CHILDCLASS\000"
	.long	.La154-.Ldebug_info0
	.byte	0
# Procdef ReadState(<TControl>;TReader);
	.uleb128	18
	.ascii	"READSTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	296
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol READER
	.uleb128	27
	.ascii	"READER\000"
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TControl>);
	.uleb128	18
	.ascii	"LOADED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	264
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef LoadedAll(<TControl>);
	.uleb128	18
	.ascii	"LOADEDALL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1000
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef DefineProperties(<TControl>;TFiler);
	.uleb128	18
	.ascii	"DEFINEPROPERTIES\000"
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
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol FILER
	.uleb128	27
	.ascii	"FILER\000"
	.long	.La354-.Ldebug_info0
	.byte	0
# Procdef AssignTo(<TControl>;TPersistent);
	.uleb128	18
	.ascii	"ASSIGNTO\000"
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol DEST
	.uleb128	27
	.ascii	"DEST\000"
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef FormEndUpdated(<TControl>);
	.uleb128	18
	.ascii	"FORMENDUPDATED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1008
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef InvalidateControl(<TControl>;Boolean;Boolean);
	.uleb128	25
	.ascii	"INVALIDATECONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol CTRLISVISIBLE
	.uleb128	27
	.ascii	"CTRLISVISIBLE\000"
	.long	.La38-.Ldebug_info0
# Symbol CTRLISOPAQUE
	.uleb128	27
	.ascii	"CTRLISOPAQUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef InvalidateControl(<TControl>;Boolean;Boolean;Boolean);
	.uleb128	25
	.ascii	"INVALIDATECONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol CTRLISVISIBLE
	.uleb128	27
	.ascii	"CTRLISVISIBLE\000"
	.long	.La38-.Ldebug_info0
# Symbol CTRLISOPAQUE
	.uleb128	27
	.ascii	"CTRLISOPAQUE\000"
	.long	.La38-.Ldebug_info0
# Symbol IGNOREWINCONTROLS
	.uleb128	27
	.ascii	"IGNOREWINCONTROLS\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef FontChanged(<TControl>;TObject);
	.uleb128	18
	.ascii	"FONTCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1016
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SENDER
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef ParentFontChanged(<TControl>);
	.uleb128	18
	.ascii	"PARENTFONTCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1024
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetAction(<TControl>):TBasicAction;
	.uleb128	31
	.ascii	"GETACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1032
	.byte	34
	.byte	2
	.long	.La318-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef RealGetText(<TControl>;<var TTranslateString>):AnsiString;
	.uleb128	31
	.ascii	"REALGETTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1040
	.byte	34
	.byte	2
	.long	.La141-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La141-.Ldebug_info0
	.byte	0
# Procdef RealSetText(<TControl>;const TTranslateString);
	.uleb128	18
	.ascii	"REALSETTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1048
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La141-.Ldebug_info0
	.byte	0
# Procdef TextChanged(<TControl>);
	.uleb128	18
	.ascii	"TEXTCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1056
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetCachedText(<TControl>;var TTranslateString):Boolean;
	.uleb128	31
	.ascii	"GETCACHEDTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1064
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol CACHEDTEXT
	.uleb128	27
	.ascii	"CACHEDTEXT\000"
	.long	.La141-.Ldebug_info0
	.byte	0
# Procdef SetAction(<TControl>;TBasicAction);
	.uleb128	18
	.ascii	"SETACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1072
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La318-.Ldebug_info0
	.byte	0
# Procdef SetColor(<TControl>;TGraphicsColor);
	.uleb128	18
	.ascii	"SETCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1080
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La529-.Ldebug_info0
	.byte	0
# Procdef SetEnabled(<TControl>;Boolean);
	.uleb128	18
	.ascii	"SETENABLED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1088
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetHint(<TControl>;const TTranslateString);
	.uleb128	18
	.ascii	"SETHINT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1096
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La141-.Ldebug_info0
	.byte	0
# Procdef SetName(<TControl>;const AnsiString);
	.uleb128	18
	.ascii	"SETNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	304
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef SetParent(<TControl>;TWinControl);
	.uleb128	18
	.ascii	"SETPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1104
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol NEWPARENT
	.uleb128	27
	.ascii	"NEWPARENT\000"
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef SetParentComponent(<TControl>;TComponent);
	.uleb128	18
	.ascii	"SETPARENTCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	320
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol NEWPARENTCOMPONENT
	.uleb128	27
	.ascii	"NEWPARENTCOMPONENT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef WndProc(<TControl>;var TMessage);
	.uleb128	18
	.ascii	"WNDPROC\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1112
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol THEMESSAGE
	.uleb128	27
	.ascii	"THEMESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef ParentFormHandleInitialized(<TControl>);
	.uleb128	18
	.ascii	"PARENTFORMHANDLEINITIALIZED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1120
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetMouseCapture(<TControl>):Boolean;
	.uleb128	31
	.ascii	"GETMOUSECAPTURE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1128
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef CaptureChanged(<TControl>);
	.uleb128	18
	.ascii	"CAPTURECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1136
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef Notification(<TControl>;TComponent;TOperation);
	.uleb128	18
	.ascii	"NOTIFICATION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	280
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	27
	.ascii	"ACOMPONENT\000"
	.long	.La115-.Ldebug_info0
# Symbol OPERATION
	.uleb128	27
	.ascii	"OPERATION\000"
	.long	.La313-.Ldebug_info0
	.byte	0
# Procdef CanTab(<TControl>):Boolean;
	.uleb128	31
	.ascii	"CANTAB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1144
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetDeviceContext(<TControl>;var QWord):QWord;
	.uleb128	31
	.ascii	"GETDEVICECONTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1152
	.byte	34
	.byte	2
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol WINDOWHANDLE
	.uleb128	27
	.ascii	"WINDOWHANDLE\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef GetEnabled(<TControl>):Boolean;
	.uleb128	31
	.ascii	"GETENABLED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1160
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetPopupMenu(<TControl>):TPopupMenu;
	.uleb128	31
	.ascii	"GETPOPUPMENU\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1168
	.byte	34
	.byte	2
	.long	.La614-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef DoOnShowHint(<TControl>;PHintInfo);
	.uleb128	18
	.ascii	"DOONSHOWHINT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1176
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol HINTINFO
	.uleb128	27
	.ascii	"HINTINFO\000"
	.long	.La650-.Ldebug_info0
	.byte	0
# Procdef DoMouseWheel(<TControl>;TShiftState;LongInt;TPoint):Boolean;
	.uleb128	31
	.ascii	"DOMOUSEWHEEL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1184
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SHIFT
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
# Symbol WHEELDELTA
	.uleb128	27
	.ascii	"WHEELDELTA\000"
	.long	.La6-.Ldebug_info0
# Symbol MOUSEPOS
	.uleb128	27
	.ascii	"MOUSEPOS\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef DoMouseWheelDown(<TControl>;TShiftState;TPoint):Boolean;
	.uleb128	31
	.ascii	"DOMOUSEWHEELDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1192
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SHIFT
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
# Symbol MOUSEPOS
	.uleb128	27
	.ascii	"MOUSEPOS\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef DoMouseWheelUp(<TControl>;TShiftState;TPoint):Boolean;
	.uleb128	31
	.ascii	"DOMOUSEWHEELUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1200
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SHIFT
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
# Symbol MOUSEPOS
	.uleb128	27
	.ascii	"MOUSEPOS\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef VisibleChanging(<TControl>);
	.uleb128	18
	.ascii	"VISIBLECHANGING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1208
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef VisibleChanged(<TControl>);
	.uleb128	18
	.ascii	"VISIBLECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1216
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef EnabledChanging(<TControl>);
	.uleb128	18
	.ascii	"ENABLEDCHANGING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1224
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef EnabledChanged(<TControl>);
	.uleb128	18
	.ascii	"ENABLEDCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1232
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef AddHandler(<TControl>;TControlHandlerType;const TMethod;Boolean="FALSE");
	.uleb128	25
	.ascii	"ADDHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol HANDLERTYPE
	.uleb128	27
	.ascii	"HANDLERTYPE\000"
	.long	.La652-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	27
	.ascii	"AMETHOD\000"
	.long	.La293-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	27
	.ascii	"ASFIRST\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef RemoveHandler(<TControl>;TControlHandlerType;const TMethod);
	.uleb128	25
	.ascii	"REMOVEHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol HANDLERTYPE
	.uleb128	27
	.ascii	"HANDLERTYPE\000"
	.long	.La652-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	27
	.ascii	"AMETHOD\000"
	.long	.La293-.Ldebug_info0
	.byte	0
# Procdef DoCallNotifyHandler(<TControl>;TControlHandlerType);
	.uleb128	25
	.ascii	"DOCALLNOTIFYHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol HANDLERTYPE
	.uleb128	27
	.ascii	"HANDLERTYPE\000"
	.long	.La652-.Ldebug_info0
	.byte	0
# Procdef DoCallKeyEventHandler(<TControl>;TControlHandlerType;var Word;TShiftState);
	.uleb128	25
	.ascii	"DOCALLKEYEVENTHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol HANDLERTYPE
	.uleb128	27
	.ascii	"HANDLERTYPE\000"
	.long	.La652-.Ldebug_info0
# Symbol KEY
	.uleb128	27
	.ascii	"KEY\000"
	.long	.La8-.Ldebug_info0
# Symbol SHIFT
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
	.byte	0
# Procdef DoCallMouseWheelEventHandler(<TControl>;TControlHandlerType;TShiftState;LongInt;TPoint;var Boolean);
	.uleb128	25
	.ascii	"DOCALLMOUSEWHEELEVENTHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol HANDLERTYPE
	.uleb128	27
	.ascii	"HANDLERTYPE\000"
	.long	.La652-.Ldebug_info0
# Symbol SHIFT
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
# Symbol WHEELDELTA
	.uleb128	27
	.ascii	"WHEELDELTA\000"
	.long	.La6-.Ldebug_info0
# Symbol MOUSEPOS
	.uleb128	27
	.ascii	"MOUSEPOS\000"
	.long	.La517-.Ldebug_info0
# Symbol HANDLED
	.uleb128	27
	.ascii	"HANDLED\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DoContextPopup(<TControl>;TPoint;var Boolean);
	.uleb128	18
	.ascii	"DOCONTEXTPOPUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1240
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MOUSEPOS
	.uleb128	27
	.ascii	"MOUSEPOS\000"
	.long	.La517-.Ldebug_info0
# Symbol HANDLED
	.uleb128	27
	.ascii	"HANDLED\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetZOrder(<TControl>;Boolean);
	.uleb128	18
	.ascii	"SETZORDER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1248
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol TOPMOST
	.uleb128	27
	.ascii	"TOPMOST\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef class GetControlClassDefaultSize(<Class Of TControl>):<record type>;
	.uleb128	31
	.ascii	"GETCONTROLCLASSDEFAULTSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1256
	.byte	34
	.byte	2
	.long	.La321-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La654-.Ldebug_info0
	.byte	0
# Procdef ColorIsStored(<TControl>):Boolean;
	.uleb128	31
	.ascii	"COLORISSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1264
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef DoAutoAdjustLayout(<TControl>;const TLayoutAdjustmentPolicy;const Double;const Double);
	.uleb128	18
	.ascii	"DOAUTOADJUSTLAYOUT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1272
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol AMODE
	.uleb128	27
	.ascii	"AMODE\000"
	.long	.La457-.Ldebug_info0
# Symbol AXPROPORTION
	.uleb128	27
	.ascii	"AXPROPORTION\000"
	.long	.La459-.Ldebug_info0
# Symbol AYPROPORTION
	.uleb128	27
	.ascii	"AYPROPORTION\000"
	.long	.La459-.Ldebug_info0
	.byte	0
# Procdef DoFixDesignFontPPI(<TControl>;const TFont;const LongInt);
	.uleb128	25
	.ascii	"DOFIXDESIGNFONTPPI\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol AFONT
	.uleb128	27
	.ascii	"AFONT\000"
	.long	.La583-.Ldebug_info0
# Symbol ADESIGNTIMEPPI
	.uleb128	27
	.ascii	"ADESIGNTIMEPPI\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef DoScaleFontPPI(<TControl>;const TFont;const Double);
	.uleb128	25
	.ascii	"DOSCALEFONTPPI\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol AFONT
	.uleb128	27
	.ascii	"AFONT\000"
	.long	.La583-.Ldebug_info0
# Symbol APROPORTION
	.uleb128	27
	.ascii	"APROPORTION\000"
	.long	.La459-.Ldebug_info0
	.byte	0
# Procdef GetActionLinkClass(<TControl>):Class Of TControlActionLink;
	.uleb128	31
	.ascii	"GETACTIONLINKCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1280
	.byte	34
	.byte	2
	.long	.La656-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef ActionChange(<TControl>;TObject;Boolean);
	.uleb128	18
	.ascii	"ACTIONCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1288
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SENDER
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
# Symbol CHECKDEFAULTS
	.uleb128	27
	.ascii	"CHECKDEFAULTS\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DragDrop(<TControl>;TObject;LongInt;LongInt);
	.uleb128	28
	.ascii	"DRAGDROP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1296
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SOURCE
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La56-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Dock(<TControl>;TWinControl;TRect);
	.uleb128	28
	.ascii	"DOCK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1304
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol NEWDOCKSITE
	.uleb128	27
	.ascii	"NEWDOCKSITE\000"
	.long	.La236-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef ManualDock(<TControl>;TWinControl;TControl="nil";TAlign="0";Boolean="TRUE"):Boolean;
	.uleb128	30
	.ascii	"MANUALDOCK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1312
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol NEWDOCKSITE
	.uleb128	27
	.ascii	"NEWDOCKSITE\000"
	.long	.La236-.Ldebug_info0
# Symbol DROPCONTROL
	.uleb128	27
	.ascii	"DROPCONTROL\000"
	.long	.La239-.Ldebug_info0
# Symbol CONTROLSIDE
	.uleb128	27
	.ascii	"CONTROLSIDE\000"
	.long	.La501-.Ldebug_info0
# Symbol KEEPDOCKSITESIZE
	.uleb128	27
	.ascii	"KEEPDOCKSITESIZE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef ManualFloat(<TControl>;TRect;Boolean="TRUE"):Boolean;
	.uleb128	30
	.ascii	"MANUALFLOAT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1320
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol THESCREENRECT
	.uleb128	27
	.ascii	"THESCREENRECT\000"
	.long	.La311-.Ldebug_info0
# Symbol KEEPDOCKSITESIZE
	.uleb128	27
	.ascii	"KEEPDOCKSITESIZE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef ReplaceDockedControl(<TControl>;TControl;TWinControl;TControl;TAlign):Boolean;
	.uleb128	20
	.ascii	"REPLACEDOCKEDCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol CONTROL
	.uleb128	27
	.ascii	"CONTROL\000"
	.long	.La239-.Ldebug_info0
# Symbol NEWDOCKSITE
	.uleb128	27
	.ascii	"NEWDOCKSITE\000"
	.long	.La236-.Ldebug_info0
# Symbol DROPCONTROL
	.uleb128	27
	.ascii	"DROPCONTROL\000"
	.long	.La239-.Ldebug_info0
# Symbol CONTROLSIDE
	.uleb128	27
	.ascii	"CONTROLSIDE\000"
	.long	.La501-.Ldebug_info0
	.byte	0
# Procdef Dragging(<TControl>):Boolean;
	.uleb128	20
	.ascii	"DRAGGING\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetAccessibleObject(<TControl>):TLazAccessibleObject;
	.uleb128	20
	.ascii	"GETACCESSIBLEOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La619-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef CreateAccessibleObject(<TControl>):TLazAccessibleObject;
	.uleb128	30
	.ascii	"CREATEACCESSIBLEOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1328
	.byte	34
	.long	.La619-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetSelectedChildAccessibleObject(<TControl>):TLazAccessibleObject;
	.uleb128	30
	.ascii	"GETSELECTEDCHILDACCESSIBLEOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1336
	.byte	34
	.long	.La619-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetChildAccessibleObjectAtPos(<TControl>;TPoint):TLazAccessibleObject;
	.uleb128	30
	.ascii	"GETCHILDACCESSIBLEOBJECTATPOS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1344
	.byte	34
	.long	.La619-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol APOS
	.uleb128	27
	.ascii	"APOS\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef ScaleDesignToForm(<TControl>;const LongInt):LongInt;
	.uleb128	20
	.ascii	"SCALEDESIGNTOFORM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ASIZE
	.uleb128	27
	.ascii	"ASIZE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef ScaleFormToDesign(<TControl>;const LongInt):LongInt;
	.uleb128	20
	.ascii	"SCALEFORMTODESIGN\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ASIZE
	.uleb128	27
	.ascii	"ASIZE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Scale96ToForm(<TControl>;const LongInt):LongInt;
	.uleb128	20
	.ascii	"SCALE96TOFORM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ASIZE
	.uleb128	27
	.ascii	"ASIZE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef ScaleFormTo96(<TControl>;const LongInt):LongInt;
	.uleb128	20
	.ascii	"SCALEFORMTO96\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ASIZE
	.uleb128	27
	.ascii	"ASIZE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Scale96ToFont(<TControl>;const LongInt):LongInt;
	.uleb128	20
	.ascii	"SCALE96TOFONT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ASIZE
	.uleb128	27
	.ascii	"ASIZE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef ScaleFontTo96(<TControl>;const LongInt):LongInt;
	.uleb128	20
	.ascii	"SCALEFONTTO96\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ASIZE
	.uleb128	27
	.ascii	"ASIZE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef ScaleScreenToFont(<TControl>;const LongInt):LongInt;
	.uleb128	20
	.ascii	"SCALESCREENTOFONT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ASIZE
	.uleb128	27
	.ascii	"ASIZE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef ScaleFontToScreen(<TControl>;const LongInt):LongInt;
	.uleb128	20
	.ascii	"SCALEFONTTOSCREEN\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ASIZE
	.uleb128	27
	.ascii	"ASIZE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Scale96ToScreen(<TControl>;const LongInt):LongInt;
	.uleb128	20
	.ascii	"SCALE96TOSCREEN\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ASIZE
	.uleb128	27
	.ascii	"ASIZE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef ScaleScreenTo96(<TControl>;const LongInt):LongInt;
	.uleb128	20
	.ascii	"SCALESCREENTO96\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ASIZE
	.uleb128	27
	.ascii	"ASIZE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef AdjustSize(<TControl>);
	.uleb128	28
	.ascii	"ADJUSTSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1352
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef AutoSizePhases(<TControl>):Set Of TControlAutoSizePhase;
	.uleb128	30
	.ascii	"AUTOSIZEPHASES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1360
	.byte	34
	.long	.La531-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef AutoSizeDelayed(<TControl>):Boolean;
	.uleb128	30
	.ascii	"AUTOSIZEDELAYED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1368
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef AutoSizeDelayedReport(<TControl>;<var AnsiString>):AnsiString;
	.uleb128	30
	.ascii	"AUTOSIZEDELAYEDREPORT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1376
	.byte	34
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef AutoSizeDelayedHandle(<TControl>):Boolean;
	.uleb128	30
	.ascii	"AUTOSIZEDELAYEDHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1384
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef AnchorToNeighbour(<TControl>;TAnchorKind;LongInt;TControl);
	.uleb128	29
	.ascii	"ANCHORTONEIGHBOUR\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SIDE
	.uleb128	27
	.ascii	"SIDE\000"
	.long	.La629-.Ldebug_info0
# Symbol SPACE
	.uleb128	27
	.ascii	"SPACE\000"
	.long	.La6-.Ldebug_info0
# Symbol SIBLING
	.uleb128	27
	.ascii	"SIBLING\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef AnchorParallel(<TControl>;TAnchorKind;LongInt;TControl);
	.uleb128	29
	.ascii	"ANCHORPARALLEL\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SIDE
	.uleb128	27
	.ascii	"SIDE\000"
	.long	.La629-.Ldebug_info0
# Symbol SPACE
	.uleb128	27
	.ascii	"SPACE\000"
	.long	.La6-.Ldebug_info0
# Symbol SIBLING
	.uleb128	27
	.ascii	"SIBLING\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef AnchorHorizontalCenterTo(<TControl>;TControl);
	.uleb128	29
	.ascii	"ANCHORHORIZONTALCENTERTO\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SIBLING
	.uleb128	27
	.ascii	"SIBLING\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef AnchorVerticalCenterTo(<TControl>;TControl);
	.uleb128	29
	.ascii	"ANCHORVERTICALCENTERTO\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SIBLING
	.uleb128	27
	.ascii	"SIBLING\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef AnchorToCompanion(<TControl>;TAnchorKind;LongInt;TControl;Boolean="TRUE");
	.uleb128	29
	.ascii	"ANCHORTOCOMPANION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SIDE
	.uleb128	27
	.ascii	"SIDE\000"
	.long	.La629-.Ldebug_info0
# Symbol SPACE
	.uleb128	27
	.ascii	"SPACE\000"
	.long	.La6-.Ldebug_info0
# Symbol SIBLING
	.uleb128	27
	.ascii	"SIBLING\000"
	.long	.La239-.Ldebug_info0
# Symbol FREECOMPOSITESIDE
	.uleb128	27
	.ascii	"FREECOMPOSITESIDE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef AnchorSame(<TControl>;TAnchorKind;TControl);
	.uleb128	29
	.ascii	"ANCHORSAME\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SIDE
	.uleb128	27
	.ascii	"SIDE\000"
	.long	.La629-.Ldebug_info0
# Symbol SIBLING
	.uleb128	27
	.ascii	"SIBLING\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef AnchorAsAlign(<TControl>;TAlign;LongInt);
	.uleb128	29
	.ascii	"ANCHORASALIGN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol THEALIGN
	.uleb128	27
	.ascii	"THEALIGN\000"
	.long	.La501-.Ldebug_info0
# Symbol SPACE
	.uleb128	27
	.ascii	"SPACE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef AnchorClient(<TControl>;LongInt);
	.uleb128	29
	.ascii	"ANCHORCLIENT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SPACE
	.uleb128	27
	.ascii	"SPACE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef AnchoredControlCount(<TControl>):LongInt;
	.uleb128	20
	.ascii	"ANCHOREDCONTROLCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef SetBounds(<TControl>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	28
	.ascii	"SETBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1392
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ALEFT
	.uleb128	27
	.ascii	"ALEFT\000"
	.long	.La6-.Ldebug_info0
# Symbol ATOP
	.uleb128	27
	.ascii	"ATOP\000"
	.long	.La6-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	27
	.ascii	"AWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	27
	.ascii	"AHEIGHT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetInitialBounds(<TControl>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	28
	.ascii	"SETINITIALBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1400
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ALEFT
	.uleb128	27
	.ascii	"ALEFT\000"
	.long	.La6-.Ldebug_info0
# Symbol ATOP
	.uleb128	27
	.ascii	"ATOP\000"
	.long	.La6-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	27
	.ascii	"AWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	27
	.ascii	"AHEIGHT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetBoundsKeepBase(<TControl>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	28
	.ascii	"SETBOUNDSKEEPBASE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1408
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ALEFT
	.uleb128	27
	.ascii	"ALEFT\000"
	.long	.La6-.Ldebug_info0
# Symbol ATOP
	.uleb128	27
	.ascii	"ATOP\000"
	.long	.La6-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	27
	.ascii	"AWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	27
	.ascii	"AHEIGHT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetPreferredSize(<TControl>;var LongInt;var LongInt;Boolean="FALSE";Boolean="TRUE");
	.uleb128	28
	.ascii	"GETPREFERREDSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1416
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol PREFERREDWIDTH
	.uleb128	27
	.ascii	"PREFERREDWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol PREFERREDHEIGHT
	.uleb128	27
	.ascii	"PREFERREDHEIGHT\000"
	.long	.La6-.Ldebug_info0
# Symbol RAW
	.uleb128	27
	.ascii	"RAW\000"
	.long	.La38-.Ldebug_info0
# Symbol WITHTHEMESPACE
	.uleb128	27
	.ascii	"WITHTHEMESPACE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef GetDefaultWidth(<TControl>):LongInt;
	.uleb128	20
	.ascii	"GETDEFAULTWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetDefaultHeight(<TControl>):LongInt;
	.uleb128	20
	.ascii	"GETDEFAULTHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetDefaultColor(<TControl>;const TDefaultColorType):LongInt;
	.uleb128	30
	.ascii	"GETDEFAULTCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1424
	.byte	34
	.long	.La529-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol DEFAULTCOLORTYPE
	.uleb128	27
	.ascii	"DEFAULTCOLORTYPE\000"
	.long	.La658-.Ldebug_info0
	.byte	0
# Procdef GetColorResolvingParent(<TControl>):LongInt;
	.uleb128	20
	.ascii	"GETCOLORRESOLVINGPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La529-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetRGBColorResolvingParent(<TControl>):LongInt;
	.uleb128	20
	.ascii	"GETRGBCOLORRESOLVINGPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La529-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetSidePosition(<TControl>;TAnchorKind):LongInt;
	.uleb128	20
	.ascii	"GETSIDEPOSITION\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol SIDE
	.uleb128	27
	.ascii	"SIDE\000"
	.long	.La629-.Ldebug_info0
	.byte	0
# Procdef CNPreferredSizeChanged(<TControl>);
	.uleb128	29
	.ascii	"CNPREFERREDSIZECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef InvalidatePreferredSize(<TControl>);
	.uleb128	28
	.ascii	"INVALIDATEPREFERREDSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1432
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetAnchorsDependingOnParent(<TControl>;Boolean):Set Of TAnchorKind;
	.uleb128	20
	.ascii	"GETANCHORSDEPENDINGONPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La555-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol WITHNORMALANCHORS
	.uleb128	27
	.ascii	"WITHNORMALANCHORS\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DisableAutoSizing(<TControl>);
	.uleb128	29
	.ascii	"DISABLEAUTOSIZING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef EnableAutoSizing(<TControl>);
	.uleb128	29
	.ascii	"ENABLEAUTOSIZING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef UpdateBaseBounds(<TControl>;Boolean;Boolean;Boolean);
	.uleb128	28
	.ascii	"UPDATEBASEBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1440
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol STOREBOUNDS
	.uleb128	27
	.ascii	"STOREBOUNDS\000"
	.long	.La38-.Ldebug_info0
# Symbol STOREPARENTCLIENTSIZE
	.uleb128	27
	.ascii	"STOREPARENTCLIENTSIZE\000"
	.long	.La38-.Ldebug_info0
# Symbol USELOADEDVALUES
	.uleb128	27
	.ascii	"USELOADEDVALUES\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef WriteLayoutDebugReport(<TControl>;const AnsiString);
	.uleb128	28
	.ascii	"WRITELAYOUTDEBUGREPORT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1448
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol PREFIX
	.uleb128	27
	.ascii	"PREFIX\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef AutoAdjustLayout(<TControl>;TLayoutAdjustmentPolicy;const LongInt;const LongInt;const LongInt;const LongInt);
	.uleb128	28
	.ascii	"AUTOADJUSTLAYOUT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1456
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol AMODE
	.uleb128	27
	.ascii	"AMODE\000"
	.long	.La457-.Ldebug_info0
# Symbol AFROMPPI
	.uleb128	27
	.ascii	"AFROMPPI\000"
	.long	.La6-.Ldebug_info0
# Symbol ATOPPI
	.uleb128	27
	.ascii	"ATOPPI\000"
	.long	.La6-.Ldebug_info0
# Symbol AOLDFORMWIDTH
	.uleb128	27
	.ascii	"AOLDFORMWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol ANEWFORMWIDTH
	.uleb128	27
	.ascii	"ANEWFORMWIDTH\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef ShouldAutoAdjust(<TControl>;var Boolean;var Boolean);
	.uleb128	28
	.ascii	"SHOULDAUTOADJUST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1464
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	27
	.ascii	"AWIDTH\000"
	.long	.La38-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	27
	.ascii	"AHEIGHT\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef FixDesignFontsPPI(<TControl>;const LongInt);
	.uleb128	28
	.ascii	"FIXDESIGNFONTSPPI\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1472
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ADESIGNTIMEPPI
	.uleb128	27
	.ascii	"ADESIGNTIMEPPI\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef ScaleFontsPPI(<TControl>;const Double);
	.uleb128	28
	.ascii	"SCALEFONTSPPI\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1480
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol APROPORTION
	.uleb128	27
	.ascii	"APROPORTION\000"
	.long	.La459-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TControl>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La239-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	27
	.ascii	"THEOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TControl>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef BeforeDestruction(<TControl>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef EditingDone(<TControl>);
	.uleb128	28
	.ascii	"EDITINGDONE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1488
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef ExecuteDefaultAction(<TControl>);
	.uleb128	28
	.ascii	"EXECUTEDEFAULTACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1496
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef ExecuteCancelAction(<TControl>);
	.uleb128	28
	.ascii	"EXECUTECANCELACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1504
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef BeginDrag(<TControl>;Boolean;LongInt="-1");
	.uleb128	29
	.ascii	"BEGINDRAG\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol IMMEDIATE
	.uleb128	27
	.ascii	"IMMEDIATE\000"
	.long	.La38-.Ldebug_info0
# Symbol THRESHOLD
	.uleb128	27
	.ascii	"THRESHOLD\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef EndDrag(<TControl>;Boolean);
	.uleb128	29
	.ascii	"ENDDRAG\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol DROP
	.uleb128	27
	.ascii	"DROP\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef BringToFront(<TControl>);
	.uleb128	29
	.ascii	"BRINGTOFRONT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef HasParent(<TControl>):Boolean;
	.uleb128	30
	.ascii	"HASPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	416
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetParentComponent(<TControl>):TComponent;
	.uleb128	30
	.ascii	"GETPARENTCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	408
	.byte	34
	.long	.La115-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsParentOf(<TControl>;TControl):Boolean;
	.uleb128	30
	.ascii	"ISPARENTOF\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1512
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetTopParent(<TControl>):TControl;
	.uleb128	20
	.ascii	"GETTOPPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsVisible(<TControl>):Boolean;
	.uleb128	30
	.ascii	"ISVISIBLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1520
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsControlVisible(<TControl>):Boolean;
	.uleb128	30
	.ascii	"ISCONTROLVISIBLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1528
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsEnabled(<TControl>):Boolean;
	.uleb128	20
	.ascii	"ISENABLED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsParentColor(<TControl>):Boolean;
	.uleb128	20
	.ascii	"ISPARENTCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsParentFont(<TControl>):Boolean;
	.uleb128	20
	.ascii	"ISPARENTFONT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef FormIsUpdating(<TControl>):Boolean;
	.uleb128	30
	.ascii	"FORMISUPDATING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1536
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsProcessingPaintMsg(<TControl>):Boolean;
	.uleb128	20
	.ascii	"ISPROCESSINGPAINTMSG\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef Hide(<TControl>);
	.uleb128	29
	.ascii	"HIDE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef Refresh(<TControl>);
	.uleb128	29
	.ascii	"REFRESH\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef Repaint(<TControl>);
	.uleb128	28
	.ascii	"REPAINT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1544
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef Invalidate(<TControl>);
	.uleb128	28
	.ascii	"INVALIDATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1552
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef CheckChildClassAllowed(<TControl>;TClass;Boolean):Boolean;
	.uleb128	20
	.ascii	"CHECKCHILDCLASSALLOWED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol CHILDCLASS
	.uleb128	27
	.ascii	"CHILDCLASS\000"
	.long	.La154-.Ldebug_info0
# Symbol EXCEPTIONONINVALID
	.uleb128	27
	.ascii	"EXCEPTIONONINVALID\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef CheckNewParent(<TControl>;TWinControl);
	.uleb128	28
	.ascii	"CHECKNEWPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1560
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol APARENT
	.uleb128	27
	.ascii	"APARENT\000"
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef SendToBack(<TControl>);
	.uleb128	29
	.ascii	"SENDTOBACK\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef SetTempCursor(<TControl>;TCursor);
	.uleb128	28
	.ascii	"SETTEMPCURSOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1568
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La537-.Ldebug_info0
	.byte	0
# Procdef UpdateRolesForForm(<TControl>);
	.uleb128	28
	.ascii	"UPDATEROLESFORFORM\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1576
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef ActiveDefaultControlChanged(<TControl>;TControl);
	.uleb128	28
	.ascii	"ACTIVEDEFAULTCONTROLCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1584
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol NEWCONTROL
	.uleb128	27
	.ascii	"NEWCONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef GetTextBuf(<TControl>;PChar;LongInt):LongInt;
	.uleb128	30
	.ascii	"GETTEXTBUF\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1592
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol BUFFER
	.uleb128	27
	.ascii	"BUFFER\000"
	.long	.La407-.Ldebug_info0
# Symbol BUFSIZE
	.uleb128	27
	.ascii	"BUFSIZE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetTextLen(<TControl>):LongInt;
	.uleb128	30
	.ascii	"GETTEXTLEN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1600
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef SetTextBuf(<TControl>;PChar);
	.uleb128	28
	.ascii	"SETTEXTBUF\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1608
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol BUFFER
	.uleb128	27
	.ascii	"BUFFER\000"
	.long	.La407-.Ldebug_info0
	.byte	0
# Procdef Perform(<TControl>;LongWord;Int64;Int64):Int64;
	.uleb128	20
	.ascii	"PERFORM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La168-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol MSG
	.uleb128	27
	.ascii	"MSG\000"
	.long	.La17-.Ldebug_info0
# Symbol WPARAM
	.uleb128	27
	.ascii	"WPARAM\000"
	.long	.La168-.Ldebug_info0
# Symbol LPARAM
	.uleb128	27
	.ascii	"LPARAM\000"
	.long	.La168-.Ldebug_info0
	.byte	0
# Procdef ScreenToClient(<TControl>;const TPoint):<record type>;
	.uleb128	20
	.ascii	"SCREENTOCLIENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol APOINT
	.uleb128	27
	.ascii	"APOINT\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef ClientToScreen(<TControl>;const TPoint):<record type>;
	.uleb128	20
	.ascii	"CLIENTTOSCREEN\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol APOINT
	.uleb128	27
	.ascii	"APOINT\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef ScreenToControl(<TControl>;const TPoint):<record type>;
	.uleb128	20
	.ascii	"SCREENTOCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol APOINT
	.uleb128	27
	.ascii	"APOINT\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef ControlToScreen(<TControl>;const TPoint):<record type>;
	.uleb128	20
	.ascii	"CONTROLTOSCREEN\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol APOINT
	.uleb128	27
	.ascii	"APOINT\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef ClientToParent(<TControl>;const TPoint;TWinControl="nil"):<record type>;
	.uleb128	20
	.ascii	"CLIENTTOPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol POINT
	.uleb128	27
	.ascii	"POINT\000"
	.long	.La517-.Ldebug_info0
# Symbol APARENT
	.uleb128	27
	.ascii	"APARENT\000"
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef ParentToClient(<TControl>;const TPoint;TWinControl="nil"):<record type>;
	.uleb128	20
	.ascii	"PARENTTOCLIENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol POINT
	.uleb128	27
	.ascii	"POINT\000"
	.long	.La517-.Ldebug_info0
# Symbol APARENT
	.uleb128	27
	.ascii	"APARENT\000"
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef GetChildrenRect(<TControl>;<var TRect>;Boolean):<record type>;
	.uleb128	30
	.ascii	"GETCHILDRENRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1616
	.byte	34
	.long	.La311-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
# Symbol SCROLLED
	.uleb128	27
	.ascii	"SCROLLED\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef Show(<TControl>);
	.uleb128	29
	.ascii	"SHOW\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef Update(<TControl>);
	.uleb128	28
	.ascii	"UPDATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1624
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef HandleObjectShouldBeVisible(<TControl>):Boolean;
	.uleb128	30
	.ascii	"HANDLEOBJECTSHOULDBEVISIBLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1632
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef ParentDestroyingHandle(<TControl>):Boolean;
	.uleb128	20
	.ascii	"PARENTDESTROYINGHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef ParentHandlesAllocated(<TControl>):Boolean;
	.uleb128	30
	.ascii	"PARENTHANDLESALLOCATED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1640
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef InitiateAction(<TControl>);
	.uleb128	28
	.ascii	"INITIATEACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1648
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef ShowHelp(<TControl>);
	.uleb128	28
	.ascii	"SHOWHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1656
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef HasHelp(<TControl>):Boolean;
	.uleb128	20
	.ascii	"HASHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef RemoveAllHandlersOfObject(<TControl>;TObject);
	.uleb128	28
	.ascii	"REMOVEALLHANDLERSOFOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	448
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ANOBJECT
	.uleb128	27
	.ascii	"ANOBJECT\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef AddHandlerOnResize(<TControl>;const TNotifyEvent;Boolean="FALSE");
	.uleb128	29
	.ascii	"ADDHANDLERONRESIZE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ONRESIZEEVENT
	.uleb128	27
	.ascii	"ONRESIZEEVENT\000"
	.long	.La81-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	27
	.ascii	"ASFIRST\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerOnResize(<TControl>;const TNotifyEvent);
	.uleb128	29
	.ascii	"REMOVEHANDLERONRESIZE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ONRESIZEEVENT
	.uleb128	27
	.ascii	"ONRESIZEEVENT\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef AddHandlerOnChangeBounds(<TControl>;const TNotifyEvent;Boolean="FALSE");
	.uleb128	29
	.ascii	"ADDHANDLERONCHANGEBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ONCHANGEBOUNDSEVENT
	.uleb128	27
	.ascii	"ONCHANGEBOUNDSEVENT\000"
	.long	.La81-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	27
	.ascii	"ASFIRST\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerOnChangeBounds(<TControl>;const TNotifyEvent);
	.uleb128	29
	.ascii	"REMOVEHANDLERONCHANGEBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ONCHANGEBOUNDSEVENT
	.uleb128	27
	.ascii	"ONCHANGEBOUNDSEVENT\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef AddHandlerOnVisibleChanging(<TControl>;const TNotifyEvent;Boolean="FALSE");
	.uleb128	29
	.ascii	"ADDHANDLERONVISIBLECHANGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ONVISIBLECHANGINGEVENT
	.uleb128	27
	.ascii	"ONVISIBLECHANGINGEVENT\000"
	.long	.La81-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	27
	.ascii	"ASFIRST\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerOnVisibleChanging(<TControl>;const TNotifyEvent);
	.uleb128	29
	.ascii	"REMOVEHANDLERONVISIBLECHANGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ONVISIBLECHANGINGEVENT
	.uleb128	27
	.ascii	"ONVISIBLECHANGINGEVENT\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef AddHandlerOnVisibleChanged(<TControl>;const TNotifyEvent;Boolean="FALSE");
	.uleb128	29
	.ascii	"ADDHANDLERONVISIBLECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ONVISIBLECHANGEDEVENT
	.uleb128	27
	.ascii	"ONVISIBLECHANGEDEVENT\000"
	.long	.La81-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	27
	.ascii	"ASFIRST\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerOnVisibleChanged(<TControl>;const TNotifyEvent);
	.uleb128	29
	.ascii	"REMOVEHANDLERONVISIBLECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ONVISIBLECHANGEDEVENT
	.uleb128	27
	.ascii	"ONVISIBLECHANGEDEVENT\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef AddHandlerOnEnabledChanged(<TControl>;const TNotifyEvent;Boolean="FALSE");
	.uleb128	29
	.ascii	"ADDHANDLERONENABLEDCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ONENABLEDCHANGEDEVENT
	.uleb128	27
	.ascii	"ONENABLEDCHANGEDEVENT\000"
	.long	.La81-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	27
	.ascii	"ASFIRST\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerOnEnableChanging(<TControl>;const TNotifyEvent);
	.uleb128	29
	.ascii	"REMOVEHANDLERONENABLECHANGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ONENABLECHANGINGEVENT
	.uleb128	27
	.ascii	"ONENABLECHANGINGEVENT\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef AddHandlerOnKeyDown(<TControl>;const TKeyEvent;Boolean="FALSE");
	.uleb128	29
	.ascii	"ADDHANDLERONKEYDOWN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ONKEYDOWNEVENT
	.uleb128	27
	.ascii	"ONKEYDOWNEVENT\000"
	.long	.La487-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	27
	.ascii	"ASFIRST\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerOnKeyDown(<TControl>;const TKeyEvent);
	.uleb128	29
	.ascii	"REMOVEHANDLERONKEYDOWN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ONKEYDOWNEVENT
	.uleb128	27
	.ascii	"ONKEYDOWNEVENT\000"
	.long	.La487-.Ldebug_info0
	.byte	0
# Procdef AddHandlerOnBeforeDestruction(<TControl>;const TNotifyEvent;Boolean="FALSE");
	.uleb128	29
	.ascii	"ADDHANDLERONBEFOREDESTRUCTION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ONBEFOREDESTRUCTIONEVENT
	.uleb128	27
	.ascii	"ONBEFOREDESTRUCTIONEVENT\000"
	.long	.La81-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	27
	.ascii	"ASFIRST\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerOnBeforeDestruction(<TControl>;const TNotifyEvent);
	.uleb128	29
	.ascii	"REMOVEHANDLERONBEFOREDESTRUCTION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ONBEFOREDESTRUCTIONEVENT
	.uleb128	27
	.ascii	"ONBEFOREDESTRUCTIONEVENT\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef AddHandlerOnMouseWheel(<TControl>;const TMouseWheelEvent;Boolean="FALSE");
	.uleb128	29
	.ascii	"ADDHANDLERONMOUSEWHEEL\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ONMOUSEWHEELEVENT
	.uleb128	27
	.ascii	"ONMOUSEWHEELEVENT\000"
	.long	.La604-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	27
	.ascii	"ASFIRST\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerOnMouseWheel(<TControl>;const TMouseWheelEvent);
	.uleb128	29
	.ascii	"REMOVEHANDLERONMOUSEWHEEL\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol ONMOUSEWHEELEVENT
	.uleb128	27
	.ascii	"ONMOUSEWHEELEVENT\000"
	.long	.La604-.Ldebug_info0
	.byte	0
# Procdef UseRightToLeftAlignment(<TControl>):Boolean;
	.uleb128	30
	.ascii	"USERIGHTTOLEFTALIGNMENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1664
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef UseRightToLeftReading(<TControl>):Boolean;
	.uleb128	30
	.ascii	"USERIGHTTOLEFTREADING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1672
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef UseRightToLeftScrollBar(<TControl>):Boolean;
	.uleb128	20
	.ascii	"USERIGHTTOLEFTSCROLLBAR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef IsRightToLeft(<TControl>):Boolean;
	.uleb128	20
	.ascii	"ISRIGHTTOLEFT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La239-.Ldebug_info0
	.byte	0
	.byte	0
.La240:
	.uleb128	11
	.long	.La239-.Ldebug_info0
# Definition TBorderIcons
.La242:
	.uleb128	12
	.ascii	"TBORDERICONS\000"
	.long	.La660-.Ldebug_info0
.La660:
	.uleb128	42
	.ascii	"TBORDERICONS\000"
	.byte	7
	.short	4
.La243:
	.uleb128	11
	.long	.La242-.Ldebug_info0
# Definition TDefaultMonitor
.La244:
	.uleb128	12
	.ascii	"TDEFAULTMONITOR\000"
	.long	.La661-.Ldebug_info0
.La661:
	.uleb128	34
	.ascii	"TDEFAULTMONITOR\000"
	.byte	4
	.uleb128	35
	.ascii	"DMDESKTOP\000"
	.long	0
	.uleb128	35
	.ascii	"DMPRIMARY\000"
	.long	1
	.uleb128	35
	.ascii	"DMMAINFORM\000"
	.long	2
	.uleb128	35
	.ascii	"DMACTIVEFORM\000"
	.long	3
	.byte	0
.La245:
	.uleb128	11
	.long	.La244-.Ldebug_info0
# Definition TIDesigner
.La246:
	.uleb128	12
	.ascii	"TIDESIGNER\000"
	.long	.La662-.Ldebug_info0
.La662:
	.uleb128	15
	.long	.La248-.Ldebug_info0
.La248:
	.uleb128	16
	.ascii	"TIDESIGNER\000"
	.uleb128	24
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La58-.Ldebug_info0
	.uleb128	23
	.ascii	"FLOOKUPROOT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	2
	.long	.La115-.Ldebug_info0
	.uleb128	23
	.ascii	"FDEFAULTFORMBOUNDSVALID\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	2
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"LOOKUPROOT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	2
	.long	.La115-.Ldebug_info0
	.uleb128	23
	.ascii	"DEFAULTFORMBOUNDSVALID\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	2
	.long	.La38-.Ldebug_info0
# Procdef IsDesignMsg(<TIDesigner>;TControl;var TMessage):Boolean;
	.uleb128	30
	.ascii	"ISDESIGNMSG\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	200
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La246-.Ldebug_info0
# Symbol SENDER
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef UTF8KeyPress(<TIDesigner>;var TUTF8Char);
	.uleb128	28
	.ascii	"UTF8KEYPRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	208
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La246-.Ldebug_info0
# Symbol UTF8KEY
	.uleb128	27
	.ascii	"UTF8KEY\000"
	.long	.La527-.Ldebug_info0
	.byte	0
# Procdef Modified(<TIDesigner>);
	.uleb128	28
	.ascii	"MODIFIED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	216
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La246-.Ldebug_info0
	.byte	0
# Procdef Notification(<TIDesigner>;TComponent;TOperation);
	.uleb128	28
	.ascii	"NOTIFICATION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	224
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La246-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	27
	.ascii	"ACOMPONENT\000"
	.long	.La115-.Ldebug_info0
# Symbol OPERATION
	.uleb128	27
	.ascii	"OPERATION\000"
	.long	.La313-.Ldebug_info0
	.byte	0
# Procdef PaintGrid(<TIDesigner>);
	.uleb128	28
	.ascii	"PAINTGRID\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	232
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La246-.Ldebug_info0
	.byte	0
# Procdef ValidateRename(<TIDesigner>;TComponent;const AnsiString;const AnsiString);
	.uleb128	28
	.ascii	"VALIDATERENAME\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	240
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La246-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	27
	.ascii	"ACOMPONENT\000"
	.long	.La115-.Ldebug_info0
# Symbol CURNAME
	.uleb128	27
	.ascii	"CURNAME\000"
	.long	.La59-.Ldebug_info0
# Symbol NEWNAME
	.uleb128	27
	.ascii	"NEWNAME\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef GetShiftState(<TIDesigner>):Set Of TShiftStateEnum;
	.uleb128	30
	.ascii	"GETSHIFTSTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	248
	.byte	34
	.long	.La376-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La246-.Ldebug_info0
	.byte	0
# Procdef SelectOnlyThisComponent(<TIDesigner>;TComponent);
	.uleb128	28
	.ascii	"SELECTONLYTHISCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	256
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La246-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	27
	.ascii	"ACOMPONENT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef UniqueName(<TIDesigner>;<var AnsiString>;const AnsiString):AnsiString;
	.uleb128	30
	.ascii	"UNIQUENAME\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	264
	.byte	34
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La246-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
# Symbol BASENAME
	.uleb128	27
	.ascii	"BASENAME\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef PrepareFreeDesigner(<TIDesigner>;Boolean);
	.uleb128	28
	.ascii	"PREPAREFREEDESIGNER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	272
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La246-.Ldebug_info0
# Symbol AFREECOMPONENT
	.uleb128	27
	.ascii	"AFREECOMPONENT\000"
	.long	.La38-.Ldebug_info0
	.byte	0
	.byte	0
.La247:
	.uleb128	11
	.long	.La246-.Ldebug_info0
# Definition TFormStyle
.La249:
	.uleb128	12
	.ascii	"TFORMSTYLE\000"
	.long	.La663-.Ldebug_info0
.La663:
	.uleb128	34
	.ascii	"TFORMSTYLE\000"
	.byte	4
	.uleb128	35
	.ascii	"FSNORMAL\000"
	.long	0
	.uleb128	35
	.ascii	"FSMDICHILD\000"
	.long	1
	.uleb128	35
	.ascii	"FSMDIFORM\000"
	.long	2
	.uleb128	35
	.ascii	"FSSTAYONTOP\000"
	.long	3
	.uleb128	35
	.ascii	"FSSPLASH\000"
	.long	4
	.uleb128	35
	.ascii	"FSSYSTEMSTAYONTOP\000"
	.long	5
	.byte	0
.La250:
	.uleb128	11
	.long	.La249-.Ldebug_info0
# Definition TCustomForm.Array[TFormHandlerType] Of TMethodList
.La251:
	.uleb128	21
	.uleb128	24
	.long	.La664-.Ldebug_info0
	.uleb128	22
	.sleb128	0
	.sleb128	2
	.uleb128	8
	.long	.La291-.Ldebug_info0
	.byte	0
.La252:
	.uleb128	11
	.long	.La251-.Ldebug_info0
# Definition TIcon
.La253:
	.uleb128	12
	.ascii	"TICON\000"
	.long	.La667-.Ldebug_info0
.La667:
	.uleb128	15
	.long	.La255-.Ldebug_info0
.La255:
	.uleb128	16
	.ascii	"TICON\000"
	.uleb128	120
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La670-.Ldebug_info0
# Procdef GetIconHandle(<TIcon>):QWord;
	.uleb128	24
	.ascii	"GETICONHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La253-.Ldebug_info0
	.byte	0
# Procdef SetIconHandle(<TIcon>;const QWord);
	.uleb128	25
	.ascii	"SETICONHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La253-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef class GetStreamSignature(<Class Of TIcon>):DWord;
	.uleb128	31
	.ascii	"GETSTREAMSIGNATURE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	784
	.byte	34
	.byte	2
	.long	.La17-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La671-.Ldebug_info0
	.byte	0
# Procdef class GetTypeID(<Class Of TIcon>):Word;
	.uleb128	31
	.ascii	"GETTYPEID\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	792
	.byte	34
	.byte	2
	.long	.La8-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La673-.Ldebug_info0
	.byte	0
# Procdef HandleNeeded(<TIcon>);
	.uleb128	18
	.ascii	"HANDLENEEDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	608
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La253-.Ldebug_info0
	.byte	0
# Procdef LoadFromResourceHandle(<TIcon>;QWord;QWord);
	.uleb128	28
	.ascii	"LOADFROMRESOURCEHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	816
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La253-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	27
	.ascii	"INSTANCE\000"
	.long	.La77-.Ldebug_info0
# Symbol RESHANDLE
	.uleb128	27
	.ascii	"RESHANDLE\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef ReleaseHandle(<TIcon>):QWord;
	.uleb128	20
	.ascii	"RELEASEHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La253-.Ldebug_info0
	.byte	0
# Procdef GetResourceType(<TIcon>):^Char;
	.uleb128	30
	.ascii	"GETRESOURCETYPE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	504
	.byte	34
	.long	.La407-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La253-.Ldebug_info0
	.byte	0
	.byte	0
.La254:
	.uleb128	11
	.long	.La253-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;LongInt) of object;Register>
.La256:
	.uleb128	12
	.ascii	"TMODALDIALOGFINISHED\000"
	.long	.La675-.Ldebug_info0
.La675:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La676-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La676:
	.uleb128	37
	.ascii	"TMODALDIALOGFINISHED\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"ARESULT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
.La257:
	.uleb128	11
	.long	.La256-.Ldebug_info0
# Definition TPopupMode
.La258:
	.uleb128	12
	.ascii	"TPOPUPMODE\000"
	.long	.La677-.Ldebug_info0
.La677:
	.uleb128	34
	.ascii	"TPOPUPMODE\000"
	.byte	4
	.uleb128	35
	.ascii	"PMNONE\000"
	.long	0
	.uleb128	35
	.ascii	"PMAUTO\000"
	.long	1
	.uleb128	35
	.ascii	"PMEXPLICIT\000"
	.long	2
	.byte	0
.La259:
	.uleb128	11
	.long	.La258-.Ldebug_info0
# Definition TMainMenu
.La260:
	.uleb128	12
	.ascii	"TMAINMENU\000"
	.long	.La678-.Ldebug_info0
.La678:
	.uleb128	15
	.long	.La262-.Ldebug_info0
.La262:
	.uleb128	16
	.ascii	"TMAINMENU\000"
	.uleb128	224
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La681-.Ldebug_info0
	.uleb128	23
	.ascii	"FWINDOWHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"WINDOWHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La77-.Ldebug_info0
# Procdef GetHeight(<TMainMenu>):LongInt;
	.uleb128	24
	.ascii	"GETHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La260-.Ldebug_info0
	.byte	0
# Procdef SetWindowHandle(<TMainMenu>;const QWord);
	.uleb128	25
	.ascii	"SETWINDOWHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La260-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef ItemChanged(<TMainMenu>);
	.uleb128	25
	.ascii	"ITEMCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La260-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TMainMenu>);
	.uleb128	18
	.ascii	"WSREGISTERCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	432
	.byte	34
	.byte	2
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La682-.Ldebug_info0
	.byte	0
# Procdef MenuChanged(<TMainMenu>;TObject;TMenuItem;Boolean);
	.uleb128	18
	.ascii	"MENUCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	488
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La260-.Ldebug_info0
# Symbol SENDER
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
# Symbol SOURCE
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La684-.Ldebug_info0
# Symbol REBUILD
	.uleb128	27
	.ascii	"REBUILD\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TMainMenu>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La260-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La260-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol AOWNER
	.uleb128	27
	.ascii	"AOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
	.byte	0
.La261:
	.uleb128	11
	.long	.La260-.Ldebug_info0
# Definition TModalResult
.La263:
	.uleb128	12
	.ascii	"TMODALRESULT\000"
	.long	.La687-.Ldebug_info0
.La687:
	.uleb128	13
	.ascii	"TMODALRESULT\000"
	.byte	5
	.byte	4
.La264:
	.uleb128	11
	.long	.La263-.Ldebug_info0
# Definition TFormBorderStyle
.La265:
	.uleb128	12
	.ascii	"TFORMBORDERSTYLE\000"
	.long	.La688-.Ldebug_info0
.La688:
	.uleb128	34
	.ascii	"TFORMBORDERSTYLE\000"
	.byte	4
	.uleb128	35
	.ascii	"BSNONE\000"
	.long	0
	.uleb128	35
	.ascii	"BSSINGLE\000"
	.long	1
	.uleb128	35
	.ascii	"BSSIZEABLE\000"
	.long	2
	.uleb128	35
	.ascii	"BSDIALOG\000"
	.long	3
	.uleb128	35
	.ascii	"BSTOOLWINDOW\000"
	.long	4
	.uleb128	35
	.ascii	"BSSIZETOOLWIN\000"
	.long	5
	.byte	0
.La266:
	.uleb128	11
	.long	.La265-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;var TCloseAction) of object;Register>
.La267:
	.uleb128	12
	.ascii	"TCLOSEEVENT\000"
	.long	.La689-.Ldebug_info0
.La689:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La690-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La690:
	.uleb128	37
	.ascii	"TCLOSEEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"CLOSEACTION\000"
	.long	.La73-.Ldebug_info0
	.byte	0
.La268:
	.uleb128	11
	.long	.La267-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;var Boolean) of object;Register>
.La269:
	.uleb128	12
	.ascii	"TCLOSEQUERYEVENT\000"
	.long	.La691-.Ldebug_info0
.La691:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La692-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La692:
	.uleb128	37
	.ascii	"TCLOSEQUERYEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"CANCLOSE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
.La270:
	.uleb128	11
	.long	.La269-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;const {Open} Array Of AnsiString) of object;Register>
.La271:
	.uleb128	12
	.ascii	"TDROPFILESEVENT\000"
	.long	.La693-.Ldebug_info0
.La693:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La694-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La694:
	.uleb128	37
	.ascii	"TDROPFILESEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"FILENAMES\000"
	.long	.La695-.Ldebug_info0
	.uleb128	27
	.ascii	"highFILENAMES\000"
	.long	.La168-.Ldebug_info0
	.byte	0
.La272:
	.uleb128	11
	.long	.La271-.Ldebug_info0
# Definition <procedure variable type of function(Word;Int64;var Boolean):Boolean of object;Register>
.La273:
	.uleb128	12
	.ascii	"THELPEVENT\000"
	.long	.La697-.Ldebug_info0
.La697:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La698-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La698:
	.uleb128	44
	.ascii	"THELPEVENT\000"
	.byte	1
	.long	.La38-.Ldebug_info0
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"COMMAND\000"
	.long	.La8-.Ldebug_info0
	.uleb128	27
	.ascii	"DATA\000"
	.long	.La168-.Ldebug_info0
	.uleb128	27
	.ascii	"CALLHELP\000"
	.long	.La38-.Ldebug_info0
	.byte	0
.La274:
	.uleb128	11
	.long	.La273-.Ldebug_info0
# Definition <procedure variable type of procedure(var TLMKey;var Boolean) of object;Register>
.La275:
	.uleb128	12
	.ascii	"TSHORTCUTEVENT\000"
	.long	.La699-.Ldebug_info0
.La699:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La700-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La700:
	.uleb128	37
	.ascii	"TSHORTCUTEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"MSG\000"
	.long	.La139-.Ldebug_info0
	.uleb128	27
	.ascii	"HANDLED\000"
	.long	.La38-.Ldebug_info0
	.byte	0
.La276:
	.uleb128	11
	.long	.La275-.Ldebug_info0
# Definition TPosition
.La277:
	.uleb128	12
	.ascii	"TPOSITION\000"
	.long	.La701-.Ldebug_info0
.La701:
	.uleb128	34
	.ascii	"TPOSITION\000"
	.byte	4
	.uleb128	35
	.ascii	"PODESIGNED\000"
	.long	0
	.uleb128	35
	.ascii	"PODEFAULT\000"
	.long	1
	.uleb128	35
	.ascii	"PODEFAULTPOSONLY\000"
	.long	2
	.uleb128	35
	.ascii	"PODEFAULTSIZEONLY\000"
	.long	3
	.uleb128	35
	.ascii	"POSCREENCENTER\000"
	.long	4
	.uleb128	35
	.ascii	"PODESKTOPCENTER\000"
	.long	5
	.uleb128	35
	.ascii	"POMAINFORMCENTER\000"
	.long	6
	.uleb128	35
	.ascii	"POOWNERFORMCENTER\000"
	.long	7
	.uleb128	35
	.ascii	"POWORKAREACENTER\000"
	.long	8
	.byte	0
.La278:
	.uleb128	11
	.long	.La277-.Ldebug_info0
# Definition TShowInTaskbar
.La279:
	.uleb128	12
	.ascii	"TSHOWINTASKBAR\000"
	.long	.La702-.Ldebug_info0
.La702:
	.uleb128	34
	.ascii	"TSHOWINTASKBAR\000"
	.byte	4
	.uleb128	35
	.ascii	"STDEFAULT\000"
	.long	0
	.uleb128	35
	.ascii	"STALWAYS\000"
	.long	1
	.uleb128	35
	.ascii	"STNEVER\000"
	.long	2
	.byte	0
.La280:
	.uleb128	11
	.long	.La279-.Ldebug_info0
# Definition TWindowState
.La281:
	.uleb128	12
	.ascii	"TWINDOWSTATE\000"
	.long	.La703-.Ldebug_info0
.La703:
	.uleb128	34
	.ascii	"TWINDOWSTATE\000"
	.byte	4
	.uleb128	35
	.ascii	"WSNORMAL\000"
	.long	0
	.uleb128	35
	.ascii	"WSMINIMIZED\000"
	.long	1
	.uleb128	35
	.ascii	"WSMAXIMIZED\000"
	.long	2
	.uleb128	35
	.ascii	"WSFULLSCREEN\000"
	.long	3
	.byte	0
.La282:
	.uleb128	11
	.long	.La281-.Ldebug_info0
# Definition TList
.La283:
	.uleb128	12
	.ascii	"TLIST\000"
	.long	.La704-.Ldebug_info0
.La704:
	.uleb128	15
	.long	.La285-.Ldebug_info0
.La285:
	.uleb128	16
	.ascii	"TLIST\000"
	.uleb128	32
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La58-.Ldebug_info0
	.uleb128	23
	.ascii	"FLIST\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La338-.Ldebug_info0
	.uleb128	23
	.ascii	"FOBSERVERS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La338-.Ldebug_info0
# Procdef CopyMove(<TList>;TList);
	.uleb128	25
	.ascii	"COPYMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol ALIST
	.uleb128	27
	.ascii	"ALIST\000"
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef MergeMove(<TList>;TList);
	.uleb128	25
	.ascii	"MERGEMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol ALIST
	.uleb128	27
	.ascii	"ALIST\000"
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef DoCopy(<TList>;TList;TList);
	.uleb128	25
	.ascii	"DOCOPY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol LISTA
	.uleb128	27
	.ascii	"LISTA\000"
	.long	.La283-.Ldebug_info0
# Symbol LISTB
	.uleb128	27
	.ascii	"LISTB\000"
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef DoSrcUnique(<TList>;TList;TList);
	.uleb128	25
	.ascii	"DOSRCUNIQUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol LISTA
	.uleb128	27
	.ascii	"LISTA\000"
	.long	.La283-.Ldebug_info0
# Symbol LISTB
	.uleb128	27
	.ascii	"LISTB\000"
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef DoAnd(<TList>;TList;TList);
	.uleb128	25
	.ascii	"DOAND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol LISTA
	.uleb128	27
	.ascii	"LISTA\000"
	.long	.La283-.Ldebug_info0
# Symbol LISTB
	.uleb128	27
	.ascii	"LISTB\000"
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef DoDestUnique(<TList>;TList;TList);
	.uleb128	25
	.ascii	"DODESTUNIQUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol LISTA
	.uleb128	27
	.ascii	"LISTA\000"
	.long	.La283-.Ldebug_info0
# Symbol LISTB
	.uleb128	27
	.ascii	"LISTB\000"
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef DoOr(<TList>;TList;TList);
	.uleb128	25
	.ascii	"DOOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol LISTA
	.uleb128	27
	.ascii	"LISTA\000"
	.long	.La283-.Ldebug_info0
# Symbol LISTB
	.uleb128	27
	.ascii	"LISTB\000"
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef DoXOr(<TList>;TList;TList);
	.uleb128	25
	.ascii	"DOXOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol LISTA
	.uleb128	27
	.ascii	"LISTA\000"
	.long	.La283-.Ldebug_info0
# Symbol LISTB
	.uleb128	27
	.ascii	"LISTB\000"
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef Get(<TList>;LongInt):^untyped;
	.uleb128	24
	.ascii	"GET\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La36-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Grow(<TList>);
	.uleb128	18
	.ascii	"GROW\000"
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef Put(<TList>;LongInt;Pointer);
	.uleb128	25
	.ascii	"PUT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol ITEM
	.uleb128	27
	.ascii	"ITEM\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef Notify(<TList>;Pointer;TListNotification);
	.uleb128	18
	.ascii	"NOTIFY\000"
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
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol PTR
	.uleb128	27
	.ascii	"PTR\000"
	.long	.La36-.Ldebug_info0
# Symbol ACTION
	.uleb128	27
	.ascii	"ACTION\000"
	.long	.La705-.Ldebug_info0
	.byte	0
# Procdef SetCapacity(<TList>;LongInt);
	.uleb128	25
	.ascii	"SETCAPACITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol NEWCAPACITY
	.uleb128	27
	.ascii	"NEWCAPACITY\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetCapacity(<TList>):LongInt;
	.uleb128	24
	.ascii	"GETCAPACITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef SetCount(<TList>;LongInt);
	.uleb128	25
	.ascii	"SETCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol NEWCOUNT
	.uleb128	27
	.ascii	"NEWCOUNT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetCount(<TList>):LongInt;
	.uleb128	24
	.ascii	"GETCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef GetList(<TList>):^TPointerList;
	.uleb128	24
	.ascii	"GETLIST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La707-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TList>;<Pointer>);
	.uleb128	20
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TList>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef FPOAttachObserver(<TList>;TObject);
	.uleb128	29
	.ascii	"FPOATTACHOBSERVER\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol AOBSERVER
	.uleb128	27
	.ascii	"AOBSERVER\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef FPODetachObserver(<TList>;TObject);
	.uleb128	29
	.ascii	"FPODETACHOBSERVER\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol AOBSERVER
	.uleb128	27
	.ascii	"AOBSERVER\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef FPONotifyObservers(<TList>;TObject;TFPObservedOperation;Pointer);
	.uleb128	29
	.ascii	"FPONOTIFYOBSERVERS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol ASENDER
	.uleb128	27
	.ascii	"ASENDER\000"
	.long	.La56-.Ldebug_info0
# Symbol AOPERATION
	.uleb128	27
	.ascii	"AOPERATION\000"
	.long	.La709-.Ldebug_info0
# Symbol DATA
	.uleb128	27
	.ascii	"DATA\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef AddList(<TList>;TList);
	.uleb128	29
	.ascii	"ADDLIST\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol ALIST
	.uleb128	27
	.ascii	"ALIST\000"
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef Add(<TList>;Pointer):LongInt;
	.uleb128	20
	.ascii	"ADD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol ITEM
	.uleb128	27
	.ascii	"ITEM\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef Clear(<TList>);
	.uleb128	28
	.ascii	"CLEAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	216
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef Delete(<TList>;LongInt);
	.uleb128	29
	.ascii	"DELETE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef class Error(<Class Of TList>;const AnsiString;Int64);
	.uleb128	28
	.ascii	"ERROR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	224
	.byte	34
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La711-.Ldebug_info0
# Symbol MSG
	.uleb128	27
	.ascii	"MSG\000"
	.long	.La59-.Ldebug_info0
# Symbol DATA
	.uleb128	27
	.ascii	"DATA\000"
	.long	.La168-.Ldebug_info0
	.byte	0
# Procdef Exchange(<TList>;LongInt;LongInt);
	.uleb128	29
	.ascii	"EXCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol INDEX1
	.uleb128	27
	.ascii	"INDEX1\000"
	.long	.La6-.Ldebug_info0
# Symbol INDEX2
	.uleb128	27
	.ascii	"INDEX2\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Expand(<TList>):TList;
	.uleb128	20
	.ascii	"EXPAND\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef Extract(<TList>;Pointer):^untyped;
	.uleb128	20
	.ascii	"EXTRACT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol ITEM
	.uleb128	27
	.ascii	"ITEM\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef First(<TList>):^untyped;
	.uleb128	20
	.ascii	"FIRST\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef GetEnumerator(<TList>):TListEnumerator;
	.uleb128	20
	.ascii	"GETENUMERATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La713-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef IndexOf(<TList>;Pointer):LongInt;
	.uleb128	20
	.ascii	"INDEXOF\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol ITEM
	.uleb128	27
	.ascii	"ITEM\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef Insert(<TList>;LongInt;Pointer);
	.uleb128	29
	.ascii	"INSERT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol ITEM
	.uleb128	27
	.ascii	"ITEM\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef Last(<TList>):^untyped;
	.uleb128	20
	.ascii	"LAST\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef Move(<TList>;LongInt;LongInt);
	.uleb128	29
	.ascii	"MOVE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol CURINDEX
	.uleb128	27
	.ascii	"CURINDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol NEWINDEX
	.uleb128	27
	.ascii	"NEWINDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Assign(<TList>;TList;TListAssignOp="0";TList="nil");
	.uleb128	29
	.ascii	"ASSIGN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol LISTA
	.uleb128	27
	.ascii	"LISTA\000"
	.long	.La283-.Ldebug_info0
# Symbol AOPERATOR
	.uleb128	27
	.ascii	"AOPERATOR\000"
	.long	.La716-.Ldebug_info0
# Symbol LISTB
	.uleb128	27
	.ascii	"LISTB\000"
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef Remove(<TList>;Pointer):LongInt;
	.uleb128	20
	.ascii	"REMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol ITEM
	.uleb128	27
	.ascii	"ITEM\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef Pack(<TList>);
	.uleb128	29
	.ascii	"PACK\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef Sort(<TList>;TListSortCompare);
	.uleb128	29
	.ascii	"SORT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La283-.Ldebug_info0
# Symbol COMPARE
	.uleb128	27
	.ascii	"COMPARE\000"
	.long	.La718-.Ldebug_info0
	.byte	0
	.byte	0
.La284:
	.uleb128	11
	.long	.La283-.Ldebug_info0
# Definition TFormState
.La286:
	.uleb128	12
	.ascii	"TFORMSTATE\000"
	.long	.La720-.Ldebug_info0
.La720:
	.uleb128	42
	.ascii	"TFORMSTATE\000"
	.byte	7
	.short	4
.La287:
	.uleb128	11
	.long	.La286-.Ldebug_info0
# Definition TMonitor
.La288:
	.uleb128	12
	.ascii	"TMONITOR\000"
	.long	.La721-.Ldebug_info0
.La721:
	.uleb128	15
	.long	.La290-.Ldebug_info0
.La290:
	.uleb128	16
	.ascii	"TMONITOR\000"
	.uleb128	24
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La58-.Ldebug_info0
	.uleb128	23
	.ascii	"FHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"FMONITORNUM\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"HANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"MONITORNUM\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La6-.Ldebug_info0
# Procdef GetInfo(<TMonitor>;out tagMonitorInfo):Boolean;
	.uleb128	24
	.ascii	"GETINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La288-.Ldebug_info0
# Symbol INFO
	.uleb128	27
	.ascii	"INFO\000"
	.long	.La722-.Ldebug_info0
	.byte	0
# Procdef GetLeft(<TMonitor>):LongInt;
	.uleb128	24
	.ascii	"GETLEFT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La288-.Ldebug_info0
	.byte	0
# Procdef GetHeight(<TMonitor>):LongInt;
	.uleb128	24
	.ascii	"GETHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La288-.Ldebug_info0
	.byte	0
# Procdef GetPixelsPerInch(<TMonitor>):LongInt;
	.uleb128	24
	.ascii	"GETPIXELSPERINCH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La288-.Ldebug_info0
	.byte	0
# Procdef GetTop(<TMonitor>):LongInt;
	.uleb128	24
	.ascii	"GETTOP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La288-.Ldebug_info0
	.byte	0
# Procdef GetWidth(<TMonitor>):LongInt;
	.uleb128	24
	.ascii	"GETWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La288-.Ldebug_info0
	.byte	0
# Procdef GetBoundsRect(<TMonitor>;<var TRect>):<record type>;
	.uleb128	24
	.ascii	"GETBOUNDSRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La311-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La288-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef GetWorkareaRect(<TMonitor>;<var TRect>):<record type>;
	.uleb128	24
	.ascii	"GETWORKAREARECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La311-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La288-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef GetPrimary(<TMonitor>):Boolean;
	.uleb128	24
	.ascii	"GETPRIMARY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La288-.Ldebug_info0
	.byte	0
	.byte	0
.La289:
	.uleb128	11
	.long	.La288-.Ldebug_info0
# Definition TFormHandlerType
.La291:
	.uleb128	12
	.ascii	"TFORMHANDLERTYPE\000"
	.long	.La724-.Ldebug_info0
.La724:
	.uleb128	34
	.ascii	"TFORMHANDLERTYPE\000"
	.byte	4
	.uleb128	35
	.ascii	"FHTFIRSTSHOW\000"
	.long	0
	.uleb128	35
	.ascii	"FHTCLOSE\000"
	.long	1
	.uleb128	35
	.ascii	"FHTCREATE\000"
	.long	2
	.byte	0
.La292:
	.uleb128	11
	.long	.La291-.Ldebug_info0
# Definition TMethod
.La293:
	.uleb128	12
	.ascii	"TMETHOD\000"
	.long	.La725-.Ldebug_info0
.La725:
	.uleb128	7
	.ascii	"TMETHOD\000"
	.uleb128	16
	.uleb128	8
	.ascii	"CODE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La36-.Ldebug_info0
	.uleb128	8
	.ascii	"DATA\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La36-.Ldebug_info0
	.byte	0
.La294:
	.uleb128	11
	.long	.La293-.Ldebug_info0
# Definition TLMActivate
.La295:
	.uleb128	12
	.ascii	"TLMACTIVATE\000"
	.long	.La726-.Ldebug_info0
.La726:
	.uleb128	7
	.ascii	"TLMACTIVATE\000"
	.uleb128	32
	.uleb128	8
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"ACTIVE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La8-.Ldebug_info0
	.uleb128	8
	.ascii	"MINIMIZED\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La727-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"ACTIVEWINDOW\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La77-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La168-.Ldebug_info0
	.byte	0
.La296:
	.uleb128	11
	.long	.La295-.Ldebug_info0
# Definition TMessage
.La297:
	.uleb128	12
	.ascii	"TMESSAGE\000"
	.long	.La729-.Ldebug_info0
.La729:
	.uleb128	7
	.ascii	"TMESSAGE\000"
	.uleb128	32
	.uleb128	8
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"WPARAM\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"LPARAM\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"WPARAMLO\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La8-.Ldebug_info0
	.uleb128	8
	.ascii	"WPARAMHI\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La8-.Ldebug_info0
	.uleb128	8
	.ascii	"WPARAMFILLER\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La730-.Ldebug_info0
	.uleb128	8
	.ascii	"LPARAMLO\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La8-.Ldebug_info0
	.uleb128	8
	.ascii	"LPARAMHI\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La8-.Ldebug_info0
	.uleb128	8
	.ascii	"LPARAMFILLER\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La730-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULTLO\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La8-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULTHI\000"
	.byte	2
	.byte	35
	.uleb128	26
	.long	.La8-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULTFILLER\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La730-.Ldebug_info0
	.byte	0
.La298:
	.uleb128	11
	.long	.La297-.Ldebug_info0
# Definition TLMHelp
.La299:
	.uleb128	12
	.ascii	"TLMHELP\000"
	.long	.La732-.Ldebug_info0
.La732:
	.uleb128	7
	.ascii	"TLMHELP\000"
	.uleb128	32
	.uleb128	8
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"HELPINFO\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La733-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La168-.Ldebug_info0
	.byte	0
.La300:
	.uleb128	11
	.long	.La299-.Ldebug_info0
# Definition TLMMove
.La301:
	.uleb128	12
	.ascii	"TLMMOVE\000"
	.long	.La735-.Ldebug_info0
.La735:
	.uleb128	7
	.ascii	"TLMMOVE\000"
	.uleb128	32
	.uleb128	8
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"MOVETYPE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"XPOS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La69-.Ldebug_info0
	.uleb128	8
	.ascii	"YPOS\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La69-.Ldebug_info0
	.uleb128	8
	.ascii	"POS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La648-.Ldebug_info0
	.uleb128	8
	.ascii	"DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La168-.Ldebug_info0
	.byte	0
.La302:
	.uleb128	11
	.long	.La301-.Ldebug_info0
# Definition TWMShowWindow
.La303:
	.uleb128	12
	.ascii	"TWMSHOWWINDOW\000"
	.long	.La736-.Ldebug_info0
.La736:
	.uleb128	7
	.ascii	"TWMSHOWWINDOW\000"
	.uleb128	32
	.uleb128	8
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"MSGFILLER\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La730-.Ldebug_info0
	.uleb128	8
	.ascii	"SHOW\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La727-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La8-.Ldebug_info0
	.uleb128	8
	.ascii	"WPARAMFILLER\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La730-.Ldebug_info0
	.uleb128	8
	.ascii	"STATUS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La168-.Ldebug_info0
	.byte	0
.La304:
	.uleb128	11
	.long	.La303-.Ldebug_info0
# Definition TWMSize
.La305:
	.uleb128	12
	.ascii	"TWMSIZE\000"
	.long	.La737-.Ldebug_info0
.La737:
	.uleb128	7
	.ascii	"TWMSIZE\000"
	.uleb128	32
	.uleb128	8
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"MSGFILLER\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La730-.Ldebug_info0
	.uleb128	8
	.ascii	"SIZETYPE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"WIDTH\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La8-.Ldebug_info0
	.uleb128	8
	.ascii	"HEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La8-.Ldebug_info0
	.uleb128	8
	.ascii	"LPARAMFILLER\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La730-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La168-.Ldebug_info0
	.byte	0
.La306:
	.uleb128	11
	.long	.La305-.Ldebug_info0
# Definition TLMWindowPosMsg
.La307:
	.uleb128	12
	.ascii	"TLMWINDOWPOSMSG\000"
	.long	.La738-.Ldebug_info0
.La738:
	.uleb128	7
	.ascii	"TLMWINDOWPOSMSG\000"
	.uleb128	32
	.uleb128	8
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"WINDOWPOS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La739-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La168-.Ldebug_info0
	.byte	0
.La308:
	.uleb128	11
	.long	.La307-.Ldebug_info0
# Definition TCustomForm.Class Of TCustomForm
.La309:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La310:
	.uleb128	11
	.long	.La309-.Ldebug_info0
# Definition TRect
.La311:
	.uleb128	12
	.ascii	"TRECT\000"
	.long	.La741-.Ldebug_info0
.La741:
	.uleb128	7
	.ascii	"TRECT\000"
	.uleb128	16
	.uleb128	8
	.ascii	"LEFT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"TOP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"RIGHT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"BOTTOM\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"TOPLEFT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La517-.Ldebug_info0
	.uleb128	8
	.ascii	"BOTTOMRIGHT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La517-.Ldebug_info0
	.uleb128	8
	.ascii	"VECTOR\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La742-.Ldebug_info0
# Procdef getHeight(<var TRect>):LongInt;
	.uleb128	41
	.ascii	"GETHEIGHT\000"
	.byte	1
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef getLocation(<var TRect>):<record type>;
	.uleb128	41
	.ascii	"GETLOCATION\000"
	.byte	1
	.byte	1
	.byte	3
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef getSize(<var TRect>):<record type>;
	.uleb128	41
	.ascii	"GETSIZE\000"
	.byte	1
	.byte	1
	.byte	3
	.long	.La321-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef getWidth(<var TRect>):LongInt;
	.uleb128	41
	.ascii	"GETWIDTH\000"
	.byte	1
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef setHeight(<var TRect>;LongInt);
	.uleb128	45
	.ascii	"SETHEIGHT\000"
	.byte	1
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef setSize(<var TRect>;TSize);
	.uleb128	45
	.ascii	"SETSIZE\000"
	.byte	1
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La321-.Ldebug_info0
	.byte	0
# Procdef setWidth(<var TRect>;LongInt);
	.uleb128	45
	.ascii	"SETWIDTH\000"
	.byte	1
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<var TRect>;TPoint);
	.uleb128	46
	.ascii	"CREATE\000"
	.byte	1
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol ORIGIN
	.uleb128	27
	.ascii	"ORIGIN\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<var TRect>;TPoint;LongInt;LongInt);
	.uleb128	46
	.ascii	"CREATE\000"
	.byte	1
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol ORIGIN
	.uleb128	27
	.ascii	"ORIGIN\000"
	.long	.La517-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	27
	.ascii	"AWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	27
	.ascii	"AHEIGHT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<var TRect>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	46
	.ascii	"CREATE\000"
	.byte	1
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol ALEFT
	.uleb128	27
	.ascii	"ALEFT\000"
	.long	.La6-.Ldebug_info0
# Symbol ATOP
	.uleb128	27
	.ascii	"ATOP\000"
	.long	.La6-.Ldebug_info0
# Symbol ARIGHT
	.uleb128	27
	.ascii	"ARIGHT\000"
	.long	.La6-.Ldebug_info0
# Symbol ABOTTOM
	.uleb128	27
	.ascii	"ABOTTOM\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<var TRect>;TPoint;TPoint;Boolean="FALSE");
	.uleb128	46
	.ascii	"CREATE\000"
	.byte	1
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol P1
	.uleb128	27
	.ascii	"P1\000"
	.long	.La517-.Ldebug_info0
# Symbol P2
	.uleb128	27
	.ascii	"P2\000"
	.long	.La517-.Ldebug_info0
# Symbol NORMALIZE
	.uleb128	27
	.ascii	"NORMALIZE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<var TRect>;TRect;Boolean="FALSE");
	.uleb128	46
	.ascii	"CREATE\000"
	.byte	1
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol R
	.uleb128	27
	.ascii	"R\000"
	.long	.La311-.Ldebug_info0
# Symbol NORMALIZE
	.uleb128	27
	.ascii	"NORMALIZE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef operator =(TRect;TRect):Boolean;
	.uleb128	46
	.ascii	"equal\000"
	.byte	1
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol L
	.uleb128	27
	.ascii	"L\000"
	.long	.La311-.Ldebug_info0
# Symbol R
	.uleb128	27
	.ascii	"R\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef operator <>(TRect;TRect):Boolean;
	.uleb128	46
	.ascii	"not_equal\000"
	.byte	1
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol L
	.uleb128	27
	.ascii	"L\000"
	.long	.La311-.Ldebug_info0
# Symbol R
	.uleb128	27
	.ascii	"R\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef operator +(<var TRect>;TRect;TRect):<record type>;
	.uleb128	46
	.ascii	"plus\000"
	.byte	1
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
# Symbol L
	.uleb128	27
	.ascii	"L\000"
	.long	.La311-.Ldebug_info0
# Symbol R
	.uleb128	27
	.ascii	"R\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef operator *(<var TRect>;TRect;TRect):<record type>;
	.uleb128	46
	.ascii	"star\000"
	.byte	1
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
# Symbol L
	.uleb128	27
	.ascii	"L\000"
	.long	.La311-.Ldebug_info0
# Symbol R
	.uleb128	27
	.ascii	"R\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef class Empty(<var TRect>):<record type>; Static;
	.uleb128	46
	.ascii	"EMPTY\000"
	.byte	1
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef NormalizeRect(<var TRect>);
	.uleb128	47
	.ascii	"NORMALIZERECT\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef IsEmpty(<var TRect>):Boolean;
	.uleb128	46
	.ascii	"ISEMPTY\000"
	.byte	1
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef Contains(<var TRect>;TPoint):Boolean;
	.uleb128	46
	.ascii	"CONTAINS\000"
	.byte	1
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol PT
	.uleb128	27
	.ascii	"PT\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef Contains(<var TRect>;TRect):Boolean;
	.uleb128	46
	.ascii	"CONTAINS\000"
	.byte	1
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol R
	.uleb128	27
	.ascii	"R\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef IntersectsWith(<var TRect>;TRect):Boolean;
	.uleb128	46
	.ascii	"INTERSECTSWITH\000"
	.byte	1
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol R
	.uleb128	27
	.ascii	"R\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef class Intersect(<var TRect>;TRect;TRect):<record type>; Static;
	.uleb128	46
	.ascii	"INTERSECT\000"
	.byte	1
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
# Symbol R1
	.uleb128	27
	.ascii	"R1\000"
	.long	.La311-.Ldebug_info0
# Symbol R2
	.uleb128	27
	.ascii	"R2\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef Intersect(<var TRect>;TRect);
	.uleb128	47
	.ascii	"INTERSECT\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol R
	.uleb128	27
	.ascii	"R\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef class Union(<var TRect>;TRect;TRect):<record type>; Static;
	.uleb128	46
	.ascii	"UNION\000"
	.byte	1
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
# Symbol R1
	.uleb128	27
	.ascii	"R1\000"
	.long	.La311-.Ldebug_info0
# Symbol R2
	.uleb128	27
	.ascii	"R2\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef Union(<var TRect>;TRect);
	.uleb128	47
	.ascii	"UNION\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol R
	.uleb128	27
	.ascii	"R\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef class Union(<var TRect>;const {Open} Array Of TPoint;<const Int64>):<record type>; Static;
	.uleb128	46
	.ascii	"UNION\000"
	.byte	1
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
# Symbol POINTS
	.uleb128	27
	.ascii	"POINTS\000"
	.long	.La744-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	27
	.ascii	"highPOINTS\000"
	.long	.La168-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La744:
	.uleb128	38
	.long	.La517-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.byte	0
.La745:
	.uleb128	11
	.long	.La744-.Ldebug_info0
	.byte	0
# Procdef Offset(<var TRect>;LongInt;LongInt);
	.uleb128	47
	.ascii	"OFFSET\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol DX
	.uleb128	27
	.ascii	"DX\000"
	.long	.La6-.Ldebug_info0
# Symbol DY
	.uleb128	27
	.ascii	"DY\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Offset(<var TRect>;TPoint);
	.uleb128	47
	.ascii	"OFFSET\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol DP
	.uleb128	27
	.ascii	"DP\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef SetLocation(<var TRect>;LongInt;LongInt);
	.uleb128	47
	.ascii	"SETLOCATION\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetLocation(<var TRect>;TPoint);
	.uleb128	47
	.ascii	"SETLOCATION\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol P
	.uleb128	27
	.ascii	"P\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef Inflate(<var TRect>;LongInt;LongInt);
	.uleb128	47
	.ascii	"INFLATE\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol DX
	.uleb128	27
	.ascii	"DX\000"
	.long	.La6-.Ldebug_info0
# Symbol DY
	.uleb128	27
	.ascii	"DY\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Inflate(<var TRect>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	47
	.ascii	"INFLATE\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol DL
	.uleb128	27
	.ascii	"DL\000"
	.long	.La6-.Ldebug_info0
# Symbol DT
	.uleb128	27
	.ascii	"DT\000"
	.long	.La6-.Ldebug_info0
# Symbol DR
	.uleb128	27
	.ascii	"DR\000"
	.long	.La6-.Ldebug_info0
# Symbol DB
	.uleb128	27
	.ascii	"DB\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef CenterPoint(<var TRect>):<record type>;
	.uleb128	46
	.ascii	"CENTERPOINT\000"
	.byte	1
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef SplitRect(<var TRect>;<var TRect>;TSplitRectType;LongInt):<record type>;
	.uleb128	46
	.ascii	"SPLITRECT\000"
	.byte	1
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
# Symbol SPLITTYPE
	.uleb128	27
	.ascii	"SPLITTYPE\000"
	.long	.La746-.Ldebug_info0
# Symbol ASIZE
	.uleb128	27
	.ascii	"ASIZE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SplitRect(<var TRect>;<var TRect>;TSplitRectType;Double):<record type>;
	.uleb128	46
	.ascii	"SPLITRECT\000"
	.byte	1
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La311-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
# Symbol SPLITTYPE
	.uleb128	27
	.ascii	"SPLITTYPE\000"
	.long	.La746-.Ldebug_info0
# Symbol PERCENT
	.uleb128	27
	.ascii	"PERCENT\000"
	.long	.La459-.Ldebug_info0
	.byte	0
	.byte	0
.La312:
	.uleb128	11
	.long	.La311-.Ldebug_info0
# Definition TOperation
.La313:
	.uleb128	12
	.ascii	"TOPERATION\000"
	.long	.La748-.Ldebug_info0
.La748:
	.uleb128	34
	.ascii	"TOPERATION\000"
	.byte	4
	.uleb128	35
	.ascii	"OPINSERT\000"
	.long	0
	.uleb128	35
	.ascii	"OPREMOVE\000"
	.long	1
	.byte	0
.La314:
	.uleb128	11
	.long	.La313-.Ldebug_info0
# Definition TCustomActionList
.La315:
	.uleb128	12
	.ascii	"TCUSTOMACTIONLIST\000"
	.long	.La749-.Ldebug_info0
.La749:
	.uleb128	15
	.long	.La317-.Ldebug_info0
.La317:
	.uleb128	16
	.ascii	"TCUSTOMACTIONLIST\000"
	.uleb128	192
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La551-.Ldebug_info0
	.uleb128	23
	.ascii	"FACTIONS\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La338-.Ldebug_info0
	.uleb128	23
	.ascii	"FIMAGECHANGELINK\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La750-.Ldebug_info0
	.uleb128	23
	.ascii	"FIMAGES\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La753-.Ldebug_info0
	.uleb128	23
	.ascii	"FONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONEXECUTE\000"
	.byte	3
	.byte	35
	.uleb128	152
	.byte	3
	.long	.La756-.Ldebug_info0
	.uleb128	23
	.ascii	"FONUPDATE\000"
	.byte	3
	.byte	35
	.uleb128	168
	.byte	3
	.long	.La756-.Ldebug_info0
	.uleb128	23
	.ascii	"FSTATE\000"
	.byte	3
	.byte	35
	.uleb128	184
	.byte	3
	.long	.La758-.Ldebug_info0
	.uleb128	23
	.ascii	"ONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONEXECUTE\000"
	.byte	3
	.byte	35
	.uleb128	152
	.byte	3
	.long	.La756-.Ldebug_info0
	.uleb128	23
	.ascii	"ONUPDATE\000"
	.byte	3
	.byte	35
	.uleb128	168
	.byte	3
	.long	.La756-.Ldebug_info0
	.uleb128	23
	.ascii	"IMAGES\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La753-.Ldebug_info0
	.uleb128	23
	.ascii	"STATE\000"
	.byte	3
	.byte	35
	.uleb128	184
	.byte	3
	.long	.La758-.Ldebug_info0
# Procdef GetAction(<TCustomActionList>;LongInt):TContainedAction;
	.uleb128	24
	.ascii	"GETACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La760-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetActionCount(<TCustomActionList>):LongInt;
	.uleb128	24
	.ascii	"GETACTIONCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
	.byte	0
# Procdef ImageListChange(<TCustomActionList>;TObject);
	.uleb128	25
	.ascii	"IMAGELISTCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
# Symbol SENDER
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef SetAction(<TCustomActionList>;LongInt;TContainedAction);
	.uleb128	25
	.ascii	"SETACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La760-.Ldebug_info0
	.byte	0
# Procdef SetState(<TCustomActionList>;const TActionListState);
	.uleb128	25
	.ascii	"SETSTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La758-.Ldebug_info0
	.byte	0
# Procdef AddAction(<TCustomActionList>;TContainedAction);
	.uleb128	18
	.ascii	"ADDACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	456
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
# Symbol ACTION
	.uleb128	27
	.ascii	"ACTION\000"
	.long	.La760-.Ldebug_info0
	.byte	0
# Procdef RemoveAction(<TCustomActionList>;TContainedAction);
	.uleb128	18
	.ascii	"REMOVEACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	464
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
# Symbol ACTION
	.uleb128	27
	.ascii	"ACTION\000"
	.long	.La760-.Ldebug_info0
	.byte	0
# Procdef Change(<TCustomActionList>);
	.uleb128	18
	.ascii	"CHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	472
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
	.byte	0
# Procdef GetChildren(<TCustomActionList>;TGetChildProc;TComponent);
	.uleb128	18
	.ascii	"GETCHILDREN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	240
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
# Symbol PROC
	.uleb128	27
	.ascii	"PROC\000"
	.long	.La357-.Ldebug_info0
# Symbol ROOT
	.uleb128	27
	.ascii	"ROOT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef Notification(<TCustomActionList>;TComponent;TOperation);
	.uleb128	18
	.ascii	"NOTIFICATION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	280
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	27
	.ascii	"ACOMPONENT\000"
	.long	.La115-.Ldebug_info0
# Symbol OPERATION
	.uleb128	27
	.ascii	"OPERATION\000"
	.long	.La313-.Ldebug_info0
	.byte	0
# Procdef SetChildOrder(<TCustomActionList>;TComponent;LongInt);
	.uleb128	18
	.ascii	"SETCHILDORDER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	312
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
# Symbol COMPONENT
	.uleb128	27
	.ascii	"COMPONENT\000"
	.long	.La115-.Ldebug_info0
# Symbol ORDER
	.uleb128	27
	.ascii	"ORDER\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetImages(<TCustomActionList>;TCustomImageList);
	.uleb128	18
	.ascii	"SETIMAGES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	480
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La753-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TCustomActionList>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La315-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol AOWNER
	.uleb128	27
	.ascii	"AOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TCustomActionList>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef ActionByName(<TCustomActionList>;const AnsiString):TContainedAction;
	.uleb128	20
	.ascii	"ACTIONBYNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La760-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
# Symbol ACTIONNAME
	.uleb128	27
	.ascii	"ACTIONNAME\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef ExecuteAction(<TCustomActionList>;TBasicAction):Boolean;
	.uleb128	30
	.ascii	"EXECUTEACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	400
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
# Symbol ACTION
	.uleb128	27
	.ascii	"ACTION\000"
	.long	.La318-.Ldebug_info0
	.byte	0
# Procdef GetEnumerator(<TCustomActionList>):TActionListEnumerator;
	.uleb128	20
	.ascii	"GETENUMERATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La763-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
	.byte	0
# Procdef IndexOfName(<TCustomActionList>;const AnsiString):LongInt;
	.uleb128	20
	.ascii	"INDEXOFNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
# Symbol ACTIONNAME
	.uleb128	27
	.ascii	"ACTIONNAME\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef IsShortCut(<TCustomActionList>;var TLMKey):Boolean;
	.uleb128	20
	.ascii	"ISSHORTCUT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef UpdateAction(<TCustomActionList>;TBasicAction):Boolean;
	.uleb128	30
	.ascii	"UPDATEACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	424
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La315-.Ldebug_info0
# Symbol ACTION
	.uleb128	27
	.ascii	"ACTION\000"
	.long	.La318-.Ldebug_info0
	.byte	0
	.byte	0
.La316:
	.uleb128	11
	.long	.La315-.Ldebug_info0
# Definition TBasicAction
.La318:
	.uleb128	12
	.ascii	"TBASICACTION\000"
	.long	.La766-.Ldebug_info0
.La766:
	.uleb128	15
	.long	.La320-.Ldebug_info0
.La320:
	.uleb128	16
	.ascii	"TBASICACTION\000"
	.uleb128	160
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La117-.Ldebug_info0
	.uleb128	23
	.ascii	"FACTIONCOMPONENT\000"
	.byte	2
	.byte	35
	.uleb128	96
	.byte	3
	.long	.La115-.Ldebug_info0
	.uleb128	23
	.ascii	"FONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONEXECUTE\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONUPDATE\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FCLIENTS\000"
	.byte	3
	.byte	35
	.uleb128	152
	.byte	2
	.long	.La338-.Ldebug_info0
	.uleb128	23
	.ascii	"ONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ACTIONCOMPONENT\000"
	.byte	2
	.byte	35
	.uleb128	96
	.byte	3
	.long	.La115-.Ldebug_info0
	.uleb128	23
	.ascii	"ONEXECUTE\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONUPDATE\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La81-.Ldebug_info0
# Procdef Change(<TBasicAction>);
	.uleb128	18
	.ascii	"CHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	432
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La318-.Ldebug_info0
	.byte	0
# Procdef SetOnExecute(<TBasicAction>;TNotifyEvent);
	.uleb128	18
	.ascii	"SETONEXECUTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	440
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La318-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TBasicAction>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La318-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La318-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol AOWNER
	.uleb128	27
	.ascii	"AOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TBasicAction>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La318-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef HandlesTarget(<TBasicAction>;TObject):Boolean;
	.uleb128	30
	.ascii	"HANDLESTARGET\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	448
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La318-.Ldebug_info0
# Symbol TARGET
	.uleb128	27
	.ascii	"TARGET\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef UpdateTarget(<TBasicAction>;TObject);
	.uleb128	28
	.ascii	"UPDATETARGET\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	456
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La318-.Ldebug_info0
# Symbol TARGET
	.uleb128	27
	.ascii	"TARGET\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef ExecuteTarget(<TBasicAction>;TObject);
	.uleb128	28
	.ascii	"EXECUTETARGET\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	464
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La318-.Ldebug_info0
# Symbol TARGET
	.uleb128	27
	.ascii	"TARGET\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef Execute(<TBasicAction>):Boolean;
	.uleb128	30
	.ascii	"EXECUTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	472
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La318-.Ldebug_info0
	.byte	0
# Procdef RegisterChanges(<TBasicAction>;TBasicActionLink);
	.uleb128	29
	.ascii	"REGISTERCHANGES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La318-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La767-.Ldebug_info0
	.byte	0
# Procdef UnRegisterChanges(<TBasicAction>;TBasicActionLink);
	.uleb128	29
	.ascii	"UNREGISTERCHANGES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La318-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La767-.Ldebug_info0
	.byte	0
# Procdef Update(<TBasicAction>):Boolean;
	.uleb128	30
	.ascii	"UPDATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	480
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La318-.Ldebug_info0
	.byte	0
	.byte	0
.La319:
	.uleb128	11
	.long	.La318-.Ldebug_info0
# Definition TSize
.La321:
	.uleb128	12
	.ascii	"TSIZE\000"
	.long	.La770-.Ldebug_info0
.La770:
	.uleb128	7
	.ascii	"TSIZE\000"
	.uleb128	8
	.uleb128	8
	.ascii	"CX\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"CY\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"WIDTH\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"HEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La6-.Ldebug_info0
# Procdef constructor Create(<var TSize>;LongInt;LongInt);
	.uleb128	46
	.ascii	"CREATE\000"
	.byte	1
	.byte	1
	.long	.La321-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La321-.Ldebug_info0
# Symbol AX
	.uleb128	27
	.ascii	"AX\000"
	.long	.La6-.Ldebug_info0
# Symbol AY
	.uleb128	27
	.ascii	"AY\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<var TSize>;TSize);
	.uleb128	46
	.ascii	"CREATE\000"
	.byte	1
	.byte	1
	.long	.La321-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La321-.Ldebug_info0
# Symbol ASZ
	.uleb128	27
	.ascii	"ASZ\000"
	.long	.La321-.Ldebug_info0
	.byte	0
# Procdef Add(<var TSize>;const TSize):<record type>;
	.uleb128	46
	.ascii	"ADD\000"
	.byte	1
	.byte	1
	.long	.La321-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La321-.Ldebug_info0
# Symbol ASZ
	.uleb128	27
	.ascii	"ASZ\000"
	.long	.La321-.Ldebug_info0
	.byte	0
# Procdef Distance(<var TSize>;const TSize):Double;
	.uleb128	46
	.ascii	"DISTANCE\000"
	.byte	1
	.byte	1
	.long	.La459-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La321-.Ldebug_info0
# Symbol ASZ
	.uleb128	27
	.ascii	"ASZ\000"
	.long	.La321-.Ldebug_info0
	.byte	0
# Procdef IsZero(<var TSize>):Boolean;
	.uleb128	46
	.ascii	"ISZERO\000"
	.byte	1
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La321-.Ldebug_info0
	.byte	0
# Procdef Subtract(<var TSize>;const TSize):<record type>;
	.uleb128	46
	.ascii	"SUBTRACT\000"
	.byte	1
	.byte	1
	.long	.La321-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La321-.Ldebug_info0
# Symbol ASZ
	.uleb128	27
	.ascii	"ASZ\000"
	.long	.La321-.Ldebug_info0
	.byte	0
# Procdef operator =(const TSize;const TSize):Boolean;
	.uleb128	46
	.ascii	"equal\000"
	.byte	1
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol ASZ1
	.uleb128	27
	.ascii	"ASZ1\000"
	.long	.La321-.Ldebug_info0
# Symbol ASZ2
	.uleb128	27
	.ascii	"ASZ2\000"
	.long	.La321-.Ldebug_info0
	.byte	0
# Procdef operator <>(const TSize;const TSize):Boolean;
	.uleb128	46
	.ascii	"not_equal\000"
	.byte	1
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol ASZ1
	.uleb128	27
	.ascii	"ASZ1\000"
	.long	.La321-.Ldebug_info0
# Symbol ASZ2
	.uleb128	27
	.ascii	"ASZ2\000"
	.long	.La321-.Ldebug_info0
	.byte	0
# Procdef operator +(const TSize;const TSize):<record type>;
	.uleb128	46
	.ascii	"plus\000"
	.byte	1
	.byte	1
	.long	.La321-.Ldebug_info0
# Symbol ASZ1
	.uleb128	27
	.ascii	"ASZ1\000"
	.long	.La321-.Ldebug_info0
# Symbol ASZ2
	.uleb128	27
	.ascii	"ASZ2\000"
	.long	.La321-.Ldebug_info0
	.byte	0
# Procdef operator -(const TSize;const TSize):<record type>;
	.uleb128	46
	.ascii	"minus\000"
	.byte	1
	.byte	1
	.long	.La321-.Ldebug_info0
# Symbol ASZ1
	.uleb128	27
	.ascii	"ASZ1\000"
	.long	.La321-.Ldebug_info0
# Symbol ASZ2
	.uleb128	27
	.ascii	"ASZ2\000"
	.long	.La321-.Ldebug_info0
	.byte	0
	.byte	0
.La322:
	.uleb128	11
	.long	.La321-.Ldebug_info0
# Definition TCustomForm.Class Of TCustomForm
.La323:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La324:
	.uleb128	11
	.long	.La323-.Ldebug_info0
# Definition TBitmap
.La325:
	.uleb128	12
	.ascii	"TBITMAP\000"
	.long	.La771-.Ldebug_info0
.La771:
	.uleb128	15
	.long	.La327-.Ldebug_info0
.La327:
	.uleb128	16
	.ascii	"TBITMAP\000"
	.uleb128	120
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La774-.Ldebug_info0
# Procdef InitializeReader(<TBitmap>;TLazIntfImage;TFPCustomImageReader);
	.uleb128	18
	.ascii	"INITIALIZEREADER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	792
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La325-.Ldebug_info0
# Symbol AIMAGE
	.uleb128	27
	.ascii	"AIMAGE\000"
	.long	.La775-.Ldebug_info0
# Symbol AREADER
	.uleb128	27
	.ascii	"AREADER\000"
	.long	.La778-.Ldebug_info0
	.byte	0
# Procdef class GetReaderClass(<Class Of TBitmap>):Class Of TFPCustomImageReader;
	.uleb128	31
	.ascii	"GETREADERCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	776
	.byte	34
	.byte	2
	.long	.La781-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La783-.Ldebug_info0
	.byte	0
# Procdef class GetWriterClass(<Class Of TBitmap>):Class Of TFPCustomImageWriter;
	.uleb128	31
	.ascii	"GETWRITERCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	784
	.byte	34
	.byte	2
	.long	.La785-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La787-.Ldebug_info0
	.byte	0
# Procdef class GetSharedImageClass(<Class Of TBitmap>):Class Of TSharedRasterImage;
	.uleb128	31
	.ascii	"GETSHAREDIMAGECLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	592
	.byte	34
	.byte	2
	.long	.La789-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La791-.Ldebug_info0
	.byte	0
# Procdef class GetFileExtensions(<Class Of TBitmap>;<var AnsiString>):AnsiString;
	.uleb128	30
	.ascii	"GETFILEEXTENSIONS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	512
	.byte	34
	.long	.La59-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La793-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef GetResourceType(<TBitmap>):^Char;
	.uleb128	30
	.ascii	"GETRESOURCETYPE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	504
	.byte	34
	.long	.La407-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La325-.Ldebug_info0
	.byte	0
# Procdef LoadFromStream(<TBitmap>;TStream;LongWord);
	.uleb128	28
	.ascii	"LOADFROMSTREAM\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	760
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La325-.Ldebug_info0
# Symbol ASTREAM
	.uleb128	27
	.ascii	"ASTREAM\000"
	.long	.La795-.Ldebug_info0
# Symbol ASIZE
	.uleb128	27
	.ascii	"ASIZE\000"
	.long	.La17-.Ldebug_info0
	.byte	0
	.byte	0
.La326:
	.uleb128	11
	.long	.La325-.Ldebug_info0
# Definition TControlRolesForForm
.La328:
	.uleb128	12
	.ascii	"TCONTROLROLESFORFORM\000"
	.long	.La798-.Ldebug_info0
.La798:
	.uleb128	42
	.ascii	"TCONTROLROLESFORFORM\000"
	.byte	7
	.short	4
.La329:
	.uleb128	11
	.long	.La328-.Ldebug_info0
# Definition <procedure variable type of procedure(TComponent) of object;Register>
.La332:
	.uleb128	12
	.ascii	"TGETCHILDPROC\000"
	.long	.La799-.Ldebug_info0
.La799:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La800-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La800:
	.uleb128	37
	.ascii	"TGETCHILDPROC\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"CHILD\000"
	.long	.La115-.Ldebug_info0
	.byte	0
.La333:
	.uleb128	11
	.long	.La332-.Ldebug_info0
# Definition TPersistent
.La335:
	.uleb128	12
	.ascii	"TPERSISTENT\000"
	.long	.La801-.Ldebug_info0
.La801:
	.uleb128	15
	.long	.La337-.Ldebug_info0
.La337:
	.uleb128	16
	.ascii	"TPERSISTENT\000"
	.uleb128	24
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La58-.Ldebug_info0
	.uleb128	23
	.ascii	"FOBSERVERS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La338-.Ldebug_info0
# Procdef AssignError(<TPersistent>;TPersistent);
	.uleb128	25
	.ascii	"ASSIGNERROR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol SOURCE
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef AssignTo(<TPersistent>;TPersistent);
	.uleb128	18
	.ascii	"ASSIGNTO\000"
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol DEST
	.uleb128	27
	.ascii	"DEST\000"
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef DefineProperties(<TPersistent>;TFiler);
	.uleb128	18
	.ascii	"DEFINEPROPERTIES\000"
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
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol FILER
	.uleb128	27
	.ascii	"FILER\000"
	.long	.La354-.Ldebug_info0
	.byte	0
# Procdef GetOwner(<TPersistent>):TPersistent;
	.uleb128	31
	.ascii	"GETOWNER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	216
	.byte	34
	.byte	2
	.long	.La335-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TPersistent>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef Assign(<TPersistent>;TPersistent);
	.uleb128	28
	.ascii	"ASSIGN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	224
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol SOURCE
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef FPOAttachObserver(<TPersistent>;TObject);
	.uleb128	29
	.ascii	"FPOATTACHOBSERVER\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol AOBSERVER
	.uleb128	27
	.ascii	"AOBSERVER\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef FPODetachObserver(<TPersistent>;TObject);
	.uleb128	29
	.ascii	"FPODETACHOBSERVER\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol AOBSERVER
	.uleb128	27
	.ascii	"AOBSERVER\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef FPONotifyObservers(<TPersistent>;TObject;TFPObservedOperation;Pointer);
	.uleb128	29
	.ascii	"FPONOTIFYOBSERVERS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol ASENDER
	.uleb128	27
	.ascii	"ASENDER\000"
	.long	.La56-.Ldebug_info0
# Symbol AOPERATION
	.uleb128	27
	.ascii	"AOPERATION\000"
	.long	.La709-.Ldebug_info0
# Symbol DATA
	.uleb128	27
	.ascii	"DATA\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef GetNamePath(<TPersistent>;<var AnsiString>):AnsiString;
	.uleb128	30
	.ascii	"GETNAMEPATH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	232
	.byte	34
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
	.byte	0
.La336:
	.uleb128	11
	.long	.La335-.Ldebug_info0
# Definition TFPList
.La338:
	.uleb128	12
	.ascii	"TFPLIST\000"
	.long	.La802-.Ldebug_info0
.La802:
	.uleb128	15
	.long	.La340-.Ldebug_info0
.La340:
	.uleb128	16
	.ascii	"TFPLIST\000"
	.uleb128	24
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La58-.Ldebug_info0
	.uleb128	23
	.ascii	"FLIST\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La707-.Ldebug_info0
	.uleb128	23
	.ascii	"FCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FCAPACITY\000"
	.byte	2
	.byte	35
	.uleb128	20
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"CAPACITY\000"
	.byte	2
	.byte	35
	.uleb128	20
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"COUNT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"LIST\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La707-.Ldebug_info0
# Procdef CopyMove(<TFPList>;TFPList);
	.uleb128	25
	.ascii	"COPYMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol ALIST
	.uleb128	27
	.ascii	"ALIST\000"
	.long	.La338-.Ldebug_info0
	.byte	0
# Procdef MergeMove(<TFPList>;TFPList);
	.uleb128	25
	.ascii	"MERGEMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol ALIST
	.uleb128	27
	.ascii	"ALIST\000"
	.long	.La338-.Ldebug_info0
	.byte	0
# Procdef DoCopy(<TFPList>;TFPList;TFPList);
	.uleb128	25
	.ascii	"DOCOPY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol LISTA
	.uleb128	27
	.ascii	"LISTA\000"
	.long	.La338-.Ldebug_info0
# Symbol LISTB
	.uleb128	27
	.ascii	"LISTB\000"
	.long	.La338-.Ldebug_info0
	.byte	0
# Procdef DoSrcUnique(<TFPList>;TFPList;TFPList);
	.uleb128	25
	.ascii	"DOSRCUNIQUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol LISTA
	.uleb128	27
	.ascii	"LISTA\000"
	.long	.La338-.Ldebug_info0
# Symbol LISTB
	.uleb128	27
	.ascii	"LISTB\000"
	.long	.La338-.Ldebug_info0
	.byte	0
# Procdef DoAnd(<TFPList>;TFPList;TFPList);
	.uleb128	25
	.ascii	"DOAND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol LISTA
	.uleb128	27
	.ascii	"LISTA\000"
	.long	.La338-.Ldebug_info0
# Symbol LISTB
	.uleb128	27
	.ascii	"LISTB\000"
	.long	.La338-.Ldebug_info0
	.byte	0
# Procdef DoDestUnique(<TFPList>;TFPList;TFPList);
	.uleb128	25
	.ascii	"DODESTUNIQUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol LISTA
	.uleb128	27
	.ascii	"LISTA\000"
	.long	.La338-.Ldebug_info0
# Symbol LISTB
	.uleb128	27
	.ascii	"LISTB\000"
	.long	.La338-.Ldebug_info0
	.byte	0
# Procdef DoOr(<TFPList>;TFPList;TFPList);
	.uleb128	25
	.ascii	"DOOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol LISTA
	.uleb128	27
	.ascii	"LISTA\000"
	.long	.La338-.Ldebug_info0
# Symbol LISTB
	.uleb128	27
	.ascii	"LISTB\000"
	.long	.La338-.Ldebug_info0
	.byte	0
# Procdef DoXOr(<TFPList>;TFPList;TFPList);
	.uleb128	25
	.ascii	"DOXOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol LISTA
	.uleb128	27
	.ascii	"LISTA\000"
	.long	.La338-.Ldebug_info0
# Symbol LISTB
	.uleb128	27
	.ascii	"LISTB\000"
	.long	.La338-.Ldebug_info0
	.byte	0
# Procdef Get(<TFPList>;LongInt):^untyped;
	.uleb128	24
	.ascii	"GET\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La36-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Put(<TFPList>;LongInt;Pointer);
	.uleb128	25
	.ascii	"PUT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol ITEM
	.uleb128	27
	.ascii	"ITEM\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef SetCapacity(<TFPList>;LongInt);
	.uleb128	25
	.ascii	"SETCAPACITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol NEWCAPACITY
	.uleb128	27
	.ascii	"NEWCAPACITY\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetCount(<TFPList>;LongInt);
	.uleb128	25
	.ascii	"SETCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol NEWCOUNT
	.uleb128	27
	.ascii	"NEWCOUNT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef RaiseIndexError(<TFPList>;LongInt);
	.uleb128	25
	.ascii	"RAISEINDEXERROR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TFPList>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef AddList(<TFPList>;TFPList);
	.uleb128	29
	.ascii	"ADDLIST\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol ALIST
	.uleb128	27
	.ascii	"ALIST\000"
	.long	.La338-.Ldebug_info0
	.byte	0
# Procdef Add(<TFPList>;Pointer):LongInt;
	.uleb128	20
	.ascii	"ADD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol ITEM
	.uleb128	27
	.ascii	"ITEM\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef Clear(<TFPList>);
	.uleb128	29
	.ascii	"CLEAR\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
	.byte	0
# Procdef Delete(<TFPList>;LongInt);
	.uleb128	29
	.ascii	"DELETE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef class Error(<Class Of TFPList>;const AnsiString;Int64);
	.uleb128	29
	.ascii	"ERROR\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La803-.Ldebug_info0
# Symbol MSG
	.uleb128	27
	.ascii	"MSG\000"
	.long	.La59-.Ldebug_info0
# Symbol DATA
	.uleb128	27
	.ascii	"DATA\000"
	.long	.La168-.Ldebug_info0
	.byte	0
# Procdef Exchange(<TFPList>;LongInt;LongInt);
	.uleb128	29
	.ascii	"EXCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol INDEX1
	.uleb128	27
	.ascii	"INDEX1\000"
	.long	.La6-.Ldebug_info0
# Symbol INDEX2
	.uleb128	27
	.ascii	"INDEX2\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Expand(<TFPList>):TFPList;
	.uleb128	20
	.ascii	"EXPAND\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
	.byte	0
# Procdef Extract(<TFPList>;Pointer):^untyped;
	.uleb128	20
	.ascii	"EXTRACT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol ITEM
	.uleb128	27
	.ascii	"ITEM\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef First(<TFPList>):^untyped;
	.uleb128	20
	.ascii	"FIRST\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
	.byte	0
# Procdef GetEnumerator(<TFPList>):TFPListEnumerator;
	.uleb128	20
	.ascii	"GETENUMERATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La805-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
	.byte	0
# Procdef IndexOf(<TFPList>;Pointer):LongInt;
	.uleb128	20
	.ascii	"INDEXOF\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol ITEM
	.uleb128	27
	.ascii	"ITEM\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef IndexOfItem(<TFPList>;Pointer;TDirection):LongInt;
	.uleb128	20
	.ascii	"INDEXOFITEM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol ITEM
	.uleb128	27
	.ascii	"ITEM\000"
	.long	.La36-.Ldebug_info0
# Symbol DIRECTION
	.uleb128	27
	.ascii	"DIRECTION\000"
	.long	.La808-.Ldebug_info0
	.byte	0
# Procdef Insert(<TFPList>;LongInt;Pointer);
	.uleb128	29
	.ascii	"INSERT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol ITEM
	.uleb128	27
	.ascii	"ITEM\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef Last(<TFPList>):^untyped;
	.uleb128	20
	.ascii	"LAST\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La36-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
	.byte	0
# Procdef Move(<TFPList>;LongInt;LongInt);
	.uleb128	29
	.ascii	"MOVE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol CURINDEX
	.uleb128	27
	.ascii	"CURINDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol NEWINDEX
	.uleb128	27
	.ascii	"NEWINDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Assign(<TFPList>;TFPList;TListAssignOp="0";TFPList="nil");
	.uleb128	29
	.ascii	"ASSIGN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol LISTA
	.uleb128	27
	.ascii	"LISTA\000"
	.long	.La338-.Ldebug_info0
# Symbol AOPERATOR
	.uleb128	27
	.ascii	"AOPERATOR\000"
	.long	.La716-.Ldebug_info0
# Symbol LISTB
	.uleb128	27
	.ascii	"LISTB\000"
	.long	.La338-.Ldebug_info0
	.byte	0
# Procdef Remove(<TFPList>;Pointer):LongInt;
	.uleb128	20
	.ascii	"REMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol ITEM
	.uleb128	27
	.ascii	"ITEM\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef Pack(<TFPList>);
	.uleb128	29
	.ascii	"PACK\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
	.byte	0
# Procdef Sort(<TFPList>;TListSortCompare);
	.uleb128	29
	.ascii	"SORT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol COMPARE
	.uleb128	27
	.ascii	"COMPARE\000"
	.long	.La718-.Ldebug_info0
	.byte	0
# Procdef ForEachCall(<TFPList>;TListCallback;Pointer);
	.uleb128	29
	.ascii	"FOREACHCALL\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol PROC2CALL
	.uleb128	27
	.ascii	"PROC2CALL\000"
	.long	.La810-.Ldebug_info0
# Symbol ARG
	.uleb128	27
	.ascii	"ARG\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef ForEachCall(<TFPList>;TListStaticCallback;Pointer);
	.uleb128	29
	.ascii	"FOREACHCALL\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La338-.Ldebug_info0
# Symbol PROC2CALL
	.uleb128	27
	.ascii	"PROC2CALL\000"
	.long	.La812-.Ldebug_info0
# Symbol ARG
	.uleb128	27
	.ascii	"ARG\000"
	.long	.La36-.Ldebug_info0
	.byte	0
	.byte	0
.La339:
	.uleb128	11
	.long	.La338-.Ldebug_info0
# Definition TComponentState
.La341:
	.uleb128	12
	.ascii	"TCOMPONENTSTATE\000"
	.long	.La814-.Ldebug_info0
.La814:
	.uleb128	42
	.ascii	"TCOMPONENTSTATE\000"
	.byte	7
	.short	4
.La342:
	.uleb128	11
	.long	.La341-.Ldebug_info0
# Definition TComponentStyle
.La343:
	.uleb128	12
	.ascii	"TCOMPONENTSTYLE\000"
	.long	.La815-.Ldebug_info0
.La815:
	.uleb128	42
	.ascii	"TCOMPONENTSTYLE\000"
	.byte	7
	.short	4
.La344:
	.uleb128	11
	.long	.La343-.Ldebug_info0
# Definition IUnknown
.La345:
	.uleb128	12
	.ascii	"IUNKNOWN\000"
	.long	.La816-.Ldebug_info0
.La816:
	.uleb128	15
	.long	.La347-.Ldebug_info0
.La347:
	.uleb128	16
	.ascii	"IUNKNOWN\000"
	.uleb128	0
# Procdef QueryInterface(<IUnknown>;constref TGuid;out <Formal type>):LongInt; StdCall;
	.uleb128	48
	.ascii	"QUERYINTERFACE\000"
	.byte	1
	.byte	1
	.byte	1
	.byte	4
	.byte	6
	.byte	16
	.uleb128	0
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La345-.Ldebug_info0
# Symbol IID
	.uleb128	27
	.ascii	"IID\000"
	.long	.La182-.Ldebug_info0
# Symbol OBJ
	.uleb128	27
	.ascii	"OBJ\000"
	.long	.La150-.Ldebug_info0
	.byte	0
# Procdef _AddRef(<IUnknown>):LongInt; StdCall;
	.uleb128	48
	.ascii	"_ADDREF\000"
	.byte	1
	.byte	1
	.byte	1
	.byte	4
	.byte	6
	.byte	16
	.uleb128	8
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La345-.Ldebug_info0
	.byte	0
# Procdef _Release(<IUnknown>):LongInt; StdCall;
	.uleb128	48
	.ascii	"_RELEASE\000"
	.byte	1
	.byte	1
	.byte	1
	.byte	4
	.byte	6
	.byte	16
	.uleb128	16
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La345-.Ldebug_info0
	.byte	0
	.byte	0
.La346:
	.uleb128	11
	.long	.La345-.Ldebug_info0
# Definition TReader
.La348:
	.uleb128	12
	.ascii	"TREADER\000"
	.long	.La817-.Ldebug_info0
.La817:
	.uleb128	15
	.long	.La350-.Ldebug_info0
.La350:
	.uleb128	16
	.ascii	"TREADER\000"
	.uleb128	256
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La356-.Ldebug_info0
	.uleb128	23
	.ascii	"FDRIVER\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La818-.Ldebug_info0
	.uleb128	23
	.ascii	"FOWNER\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La115-.Ldebug_info0
	.uleb128	23
	.ascii	"FPARENT\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La115-.Ldebug_info0
	.uleb128	23
	.ascii	"FFIXUPS\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La56-.Ldebug_info0
	.uleb128	23
	.ascii	"FLOADED\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	3
	.long	.La338-.Ldebug_info0
	.uleb128	23
	.ascii	"FONFINDMETHOD\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La821-.Ldebug_info0
	.uleb128	23
	.ascii	"FONSETMETHODPROPERTY\000"
	.byte	2
	.byte	35
	.uleb128	96
	.byte	3
	.long	.La823-.Ldebug_info0
	.uleb128	23
	.ascii	"FONSETNAME\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La825-.Ldebug_info0
	.uleb128	23
	.ascii	"FONREFERENCENAME\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La827-.Ldebug_info0
	.uleb128	23
	.ascii	"FONANCESTORNOTFOUND\000"
	.byte	3
	.byte	35
	.uleb128	144
	.byte	3
	.long	.La829-.Ldebug_info0
	.uleb128	23
	.ascii	"FONERROR\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La831-.Ldebug_info0
	.uleb128	23
	.ascii	"FONPROPERTYNOTFOUND\000"
	.byte	3
	.byte	35
	.uleb128	176
	.byte	3
	.long	.La833-.Ldebug_info0
	.uleb128	23
	.ascii	"FONFINDCOMPONENTCLASS\000"
	.byte	3
	.byte	35
	.uleb128	192
	.byte	3
	.long	.La835-.Ldebug_info0
	.uleb128	23
	.ascii	"FONCREATECOMPONENT\000"
	.byte	3
	.byte	35
	.uleb128	208
	.byte	3
	.long	.La837-.Ldebug_info0
	.uleb128	23
	.ascii	"FPROPNAME\000"
	.byte	3
	.byte	35
	.uleb128	224
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"FCANHANDLEEXCEPTS\000"
	.byte	3
	.byte	35
	.uleb128	232
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FONREADSTRINGPROPERTY\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La839-.Ldebug_info0
	.uleb128	23
	.ascii	"PROPNAME\000"
	.byte	3
	.byte	35
	.uleb128	224
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"CANHANDLEEXCEPTIONS\000"
	.byte	3
	.byte	35
	.uleb128	232
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"DRIVER\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La818-.Ldebug_info0
	.uleb128	23
	.ascii	"OWNER\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La115-.Ldebug_info0
	.uleb128	23
	.ascii	"PARENT\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La115-.Ldebug_info0
	.uleb128	23
	.ascii	"ONERROR\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La831-.Ldebug_info0
	.uleb128	23
	.ascii	"ONPROPERTYNOTFOUND\000"
	.byte	3
	.byte	35
	.uleb128	176
	.byte	3
	.long	.La833-.Ldebug_info0
	.uleb128	23
	.ascii	"ONFINDMETHOD\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La821-.Ldebug_info0
	.uleb128	23
	.ascii	"ONSETMETHODPROPERTY\000"
	.byte	2
	.byte	35
	.uleb128	96
	.byte	3
	.long	.La823-.Ldebug_info0
	.uleb128	23
	.ascii	"ONSETNAME\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La825-.Ldebug_info0
	.uleb128	23
	.ascii	"ONREFERENCENAME\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La827-.Ldebug_info0
	.uleb128	23
	.ascii	"ONANCESTORNOTFOUND\000"
	.byte	3
	.byte	35
	.uleb128	144
	.byte	3
	.long	.La829-.Ldebug_info0
	.uleb128	23
	.ascii	"ONCREATECOMPONENT\000"
	.byte	3
	.byte	35
	.uleb128	208
	.byte	3
	.long	.La837-.Ldebug_info0
	.uleb128	23
	.ascii	"ONFINDCOMPONENTCLASS\000"
	.byte	3
	.byte	35
	.uleb128	192
	.byte	3
	.long	.La835-.Ldebug_info0
	.uleb128	23
	.ascii	"ONREADSTRINGPROPERTY\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La839-.Ldebug_info0
# Procdef DoFixupReferences(<TReader>);
	.uleb128	25
	.ascii	"DOFIXUPREFERENCES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef FindComponentClass(<TReader>;const AnsiString):Class Of TComponent;
	.uleb128	24
	.ascii	"FINDCOMPONENTCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La841-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol ACLASSNAME
	.uleb128	27
	.ascii	"ACLASSNAME\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef Error(<TReader>;const AnsiString):Boolean;
	.uleb128	31
	.ascii	"ERROR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	224
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef FindMethod(<TReader>;TComponent;const AnsiString):^untyped;
	.uleb128	31
	.ascii	"FINDMETHOD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	232
	.byte	34
	.byte	2
	.long	.La36-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol AROOT
	.uleb128	27
	.ascii	"AROOT\000"
	.long	.La115-.Ldebug_info0
# Symbol AMETHODNAME
	.uleb128	27
	.ascii	"AMETHODNAME\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef ReadProperty(<TReader>;TPersistent);
	.uleb128	25
	.ascii	"READPROPERTY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol AINSTANCE
	.uleb128	27
	.ascii	"AINSTANCE\000"
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef ReadPropValue(<TReader>;TPersistent;Pointer);
	.uleb128	25
	.ascii	"READPROPVALUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	27
	.ascii	"INSTANCE\000"
	.long	.La335-.Ldebug_info0
# Symbol PROPINFO
	.uleb128	27
	.ascii	"PROPINFO\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef PropertyError(<TReader>);
	.uleb128	25
	.ascii	"PROPERTYERROR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef ReadData(<TReader>;TComponent);
	.uleb128	25
	.ascii	"READDATA\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	27
	.ascii	"INSTANCE\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef CreateDriver(<TReader>;TStream;LongInt):TAbstractObjectReader;
	.uleb128	31
	.ascii	"CREATEDRIVER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	240
	.byte	34
	.byte	2
	.long	.La818-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol STREAM
	.uleb128	27
	.ascii	"STREAM\000"
	.long	.La795-.Ldebug_info0
# Symbol BUFSIZE
	.uleb128	27
	.ascii	"BUFSIZE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TReader>;<Pointer>;TStream;LongInt);
	.uleb128	20
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol STREAM
	.uleb128	27
	.ascii	"STREAM\000"
	.long	.La795-.Ldebug_info0
# Symbol BUFSIZE
	.uleb128	27
	.ascii	"BUFSIZE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TReader>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef BeginReferences(<TReader>);
	.uleb128	29
	.ascii	"BEGINREFERENCES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef CheckValue(<TReader>;TValueType);
	.uleb128	29
	.ascii	"CHECKVALUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La843-.Ldebug_info0
	.byte	0
# Procdef DefineProperty(<TReader>;const AnsiString;TReaderProc;TWriterProc;Boolean);
	.uleb128	28
	.ascii	"DEFINEPROPERTY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	208
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol NAME
	.uleb128	27
	.ascii	"NAME\000"
	.long	.La59-.Ldebug_info0
# Symbol AREADDATA
	.uleb128	27
	.ascii	"AREADDATA\000"
	.long	.La845-.Ldebug_info0
# Symbol WRITEDATA
	.uleb128	27
	.ascii	"WRITEDATA\000"
	.long	.La847-.Ldebug_info0
# Symbol HASDATA
	.uleb128	27
	.ascii	"HASDATA\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DefineBinaryProperty(<TReader>;const AnsiString;TStreamProc;TStreamProc;Boolean);
	.uleb128	28
	.ascii	"DEFINEBINARYPROPERTY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	216
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol NAME
	.uleb128	27
	.ascii	"NAME\000"
	.long	.La59-.Ldebug_info0
# Symbol AREADDATA
	.uleb128	27
	.ascii	"AREADDATA\000"
	.long	.La849-.Ldebug_info0
# Symbol WRITEDATA
	.uleb128	27
	.ascii	"WRITEDATA\000"
	.long	.La849-.Ldebug_info0
# Symbol HASDATA
	.uleb128	27
	.ascii	"HASDATA\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef EndOfList(<TReader>):Boolean;
	.uleb128	20
	.ascii	"ENDOFLIST\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef EndReferences(<TReader>);
	.uleb128	29
	.ascii	"ENDREFERENCES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef FixupReferences(<TReader>);
	.uleb128	29
	.ascii	"FIXUPREFERENCES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef NextValue(<TReader>):<enumeration type>;
	.uleb128	20
	.ascii	"NEXTVALUE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La843-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef Read(<TReader>;var <Formal type>;LongInt);
	.uleb128	28
	.ascii	"READ\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	248
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol BUF
	.uleb128	27
	.ascii	"BUF\000"
	.long	.La150-.Ldebug_info0
# Symbol COUNT
	.uleb128	27
	.ascii	"COUNT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef ReadBoolean(<TReader>):Boolean;
	.uleb128	20
	.ascii	"READBOOLEAN\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef ReadChar(<TReader>):Char;
	.uleb128	20
	.ascii	"READCHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef ReadWideChar(<TReader>):WideChar;
	.uleb128	20
	.ascii	"READWIDECHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La217-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef ReadUnicodeChar(<TReader>):WideChar;
	.uleb128	20
	.ascii	"READUNICODECHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La217-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef ReadCollection(<TReader>;TCollection);
	.uleb128	29
	.ascii	"READCOLLECTION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol COLLECTION
	.uleb128	27
	.ascii	"COLLECTION\000"
	.long	.La851-.Ldebug_info0
	.byte	0
# Procdef ReadComponent(<TReader>;TComponent):TComponent;
	.uleb128	20
	.ascii	"READCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol COMPONENT
	.uleb128	27
	.ascii	"COMPONENT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef ReadComponents(<TReader>;TComponent;TComponent;TReadComponentsProc);
	.uleb128	29
	.ascii	"READCOMPONENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol AOWNER
	.uleb128	27
	.ascii	"AOWNER\000"
	.long	.La115-.Ldebug_info0
# Symbol APARENT
	.uleb128	27
	.ascii	"APARENT\000"
	.long	.La115-.Ldebug_info0
# Symbol PROC
	.uleb128	27
	.ascii	"PROC\000"
	.long	.La854-.Ldebug_info0
	.byte	0
# Procdef ReadFloat(<TReader>):Double;
	.uleb128	20
	.ascii	"READFLOAT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La459-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef ReadSingle(<TReader>):Single;
	.uleb128	20
	.ascii	"READSINGLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La856-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef ReadDate(<TReader>):Double;
	.uleb128	20
	.ascii	"READDATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La858-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef ReadCurrency(<TReader>):Currency;
	.uleb128	20
	.ascii	"READCURRENCY\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La860-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef ReadIdent(<TReader>;<var AnsiString>):AnsiString;
	.uleb128	20
	.ascii	"READIDENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef ReadInteger(<TReader>):LongInt;
	.uleb128	20
	.ascii	"READINTEGER\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef ReadInt64(<TReader>):Int64;
	.uleb128	20
	.ascii	"READINT64\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La168-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef ReadSet(<TReader>;Pointer):LongInt;
	.uleb128	20
	.ascii	"READSET\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol ENUMTYPE
	.uleb128	27
	.ascii	"ENUMTYPE\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef ReadListBegin(<TReader>);
	.uleb128	29
	.ascii	"READLISTBEGIN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef ReadListEnd(<TReader>);
	.uleb128	29
	.ascii	"READLISTEND\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef ReadRootComponent(<TReader>;TComponent):TComponent;
	.uleb128	20
	.ascii	"READROOTCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol AROOT
	.uleb128	27
	.ascii	"AROOT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef ReadVariant(<TReader>;<var Variant>):Variant;
	.uleb128	20
	.ascii	"READVARIANT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La862-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La862-.Ldebug_info0
	.byte	0
# Procdef ReadSignature(<TReader>);
	.uleb128	29
	.ascii	"READSIGNATURE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef ReadString(<TReader>;<var AnsiString>):AnsiString;
	.uleb128	20
	.ascii	"READSTRING\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef ReadWideString(<TReader>;<var WideString>):WideString;
	.uleb128	20
	.ascii	"READWIDESTRING\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La864-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La864-.Ldebug_info0
	.byte	0
# Procdef ReadUnicodeString(<TReader>;<var UnicodeString>):UnicodeString;
	.uleb128	20
	.ascii	"READUNICODESTRING\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La91-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La91-.Ldebug_info0
	.byte	0
# Procdef ReadValue(<TReader>):<enumeration type>;
	.uleb128	20
	.ascii	"READVALUE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La843-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef CopyValue(<TReader>;TWriter);
	.uleb128	29
	.ascii	"COPYVALUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La348-.Ldebug_info0
# Symbol WRITER
	.uleb128	27
	.ascii	"WRITER\000"
	.long	.La351-.Ldebug_info0
	.byte	0
	.byte	0
.La349:
	.uleb128	11
	.long	.La348-.Ldebug_info0
# Definition TWriter
.La351:
	.uleb128	12
	.ascii	"TWRITER\000"
	.long	.La866-.Ldebug_info0
.La866:
	.uleb128	15
	.long	.La353-.Ldebug_info0
.La353:
	.uleb128	16
	.ascii	"TWRITER\000"
	.uleb128	136
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La356-.Ldebug_info0
	.uleb128	23
	.ascii	"FDRIVER\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La867-.Ldebug_info0
	.uleb128	23
	.ascii	"FDESTROYDRIVER\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FROOTANCESTOR\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La115-.Ldebug_info0
	.uleb128	23
	.ascii	"FPROPPATH\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"FANCESTORS\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	3
	.long	.La870-.Ldebug_info0
	.uleb128	23
	.ascii	"FANCESTORPOS\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FCURRENTPOS\000"
	.byte	2
	.byte	35
	.uleb128	84
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FONFINDANCESTOR\000"
	.byte	2
	.byte	35
	.uleb128	88
	.byte	3
	.long	.La873-.Ldebug_info0
	.uleb128	23
	.ascii	"FONWRITEMETHODPROPERTY\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	3
	.long	.La875-.Ldebug_info0
	.uleb128	23
	.ascii	"FONWRITESTRINGPROPERTY\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La839-.Ldebug_info0
	.uleb128	23
	.ascii	"ROOTANCESTOR\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La115-.Ldebug_info0
	.uleb128	23
	.ascii	"ONFINDANCESTOR\000"
	.byte	2
	.byte	35
	.uleb128	88
	.byte	3
	.long	.La873-.Ldebug_info0
	.uleb128	23
	.ascii	"ONWRITEMETHODPROPERTY\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	3
	.long	.La875-.Ldebug_info0
	.uleb128	23
	.ascii	"ONWRITESTRINGPROPERTY\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La839-.Ldebug_info0
	.uleb128	23
	.ascii	"DRIVER\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La867-.Ldebug_info0
	.uleb128	23
	.ascii	"PROPERTYPATH\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La59-.Ldebug_info0
# Procdef AddToAncestorList(<TWriter>;TComponent);
	.uleb128	25
	.ascii	"ADDTOANCESTORLIST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol COMPONENT
	.uleb128	27
	.ascii	"COMPONENT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef WriteComponentData(<TWriter>;TComponent);
	.uleb128	25
	.ascii	"WRITECOMPONENTDATA\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	27
	.ascii	"INSTANCE\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef DetermineAncestor(<TWriter>;TComponent);
	.uleb128	25
	.ascii	"DETERMINEANCESTOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol COMPONENT
	.uleb128	27
	.ascii	"COMPONENT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef DoFindAncestor(<TWriter>;TComponent);
	.uleb128	25
	.ascii	"DOFINDANCESTOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol COMPONENT
	.uleb128	27
	.ascii	"COMPONENT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef SetRoot(<TWriter>;TComponent);
	.uleb128	18
	.ascii	"SETROOT\000"
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol AROOT
	.uleb128	27
	.ascii	"AROOT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef WriteBinary(<TWriter>;TStreamProc);
	.uleb128	25
	.ascii	"WRITEBINARY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol AWRITEDATA
	.uleb128	27
	.ascii	"AWRITEDATA\000"
	.long	.La849-.Ldebug_info0
	.byte	0
# Procdef WriteProperty(<TWriter>;TPersistent;Pointer);
	.uleb128	25
	.ascii	"WRITEPROPERTY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	27
	.ascii	"INSTANCE\000"
	.long	.La335-.Ldebug_info0
# Symbol PROPINFO
	.uleb128	27
	.ascii	"PROPINFO\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef WriteProperties(<TWriter>;TPersistent);
	.uleb128	25
	.ascii	"WRITEPROPERTIES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	27
	.ascii	"INSTANCE\000"
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef WriteChildren(<TWriter>;TComponent);
	.uleb128	25
	.ascii	"WRITECHILDREN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol COMPONENT
	.uleb128	27
	.ascii	"COMPONENT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef CreateDriver(<TWriter>;TStream;LongInt):TAbstractObjectWriter;
	.uleb128	31
	.ascii	"CREATEDRIVER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	224
	.byte	34
	.byte	2
	.long	.La867-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol STREAM
	.uleb128	27
	.ascii	"STREAM\000"
	.long	.La795-.Ldebug_info0
# Symbol BUFSIZE
	.uleb128	27
	.ascii	"BUFSIZE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TWriter>;<Pointer>;TAbstractObjectWriter);
	.uleb128	20
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol ADRIVER
	.uleb128	27
	.ascii	"ADRIVER\000"
	.long	.La867-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TWriter>;<Pointer>;TStream;LongInt);
	.uleb128	20
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol STREAM
	.uleb128	27
	.ascii	"STREAM\000"
	.long	.La795-.Ldebug_info0
# Symbol BUFSIZE
	.uleb128	27
	.ascii	"BUFSIZE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TWriter>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef DefineProperty(<TWriter>;const AnsiString;TReaderProc;TWriterProc;Boolean);
	.uleb128	28
	.ascii	"DEFINEPROPERTY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	208
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol NAME
	.uleb128	27
	.ascii	"NAME\000"
	.long	.La59-.Ldebug_info0
# Symbol READDATA
	.uleb128	27
	.ascii	"READDATA\000"
	.long	.La845-.Ldebug_info0
# Symbol AWRITEDATA
	.uleb128	27
	.ascii	"AWRITEDATA\000"
	.long	.La847-.Ldebug_info0
# Symbol HASDATA
	.uleb128	27
	.ascii	"HASDATA\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DefineBinaryProperty(<TWriter>;const AnsiString;TStreamProc;TStreamProc;Boolean);
	.uleb128	28
	.ascii	"DEFINEBINARYPROPERTY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	216
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol NAME
	.uleb128	27
	.ascii	"NAME\000"
	.long	.La59-.Ldebug_info0
# Symbol READDATA
	.uleb128	27
	.ascii	"READDATA\000"
	.long	.La849-.Ldebug_info0
# Symbol AWRITEDATA
	.uleb128	27
	.ascii	"AWRITEDATA\000"
	.long	.La849-.Ldebug_info0
# Symbol HASDATA
	.uleb128	27
	.ascii	"HASDATA\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef Write(<TWriter>;const <Formal type>;LongInt);
	.uleb128	28
	.ascii	"WRITE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	232
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol BUFFER
	.uleb128	27
	.ascii	"BUFFER\000"
	.long	.La150-.Ldebug_info0
# Symbol COUNT
	.uleb128	27
	.ascii	"COUNT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef WriteBoolean(<TWriter>;Boolean);
	.uleb128	29
	.ascii	"WRITEBOOLEAN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef WriteCollection(<TWriter>;TCollection);
	.uleb128	29
	.ascii	"WRITECOLLECTION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La851-.Ldebug_info0
	.byte	0
# Procdef WriteComponent(<TWriter>;TComponent);
	.uleb128	29
	.ascii	"WRITECOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol COMPONENT
	.uleb128	27
	.ascii	"COMPONENT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef WriteChar(<TWriter>;Char);
	.uleb128	29
	.ascii	"WRITECHAR\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef WriteWideChar(<TWriter>;WideChar);
	.uleb128	29
	.ascii	"WRITEWIDECHAR\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La217-.Ldebug_info0
	.byte	0
# Procdef WriteDescendent(<TWriter>;TComponent;TComponent);
	.uleb128	29
	.ascii	"WRITEDESCENDENT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol AROOT
	.uleb128	27
	.ascii	"AROOT\000"
	.long	.La115-.Ldebug_info0
# Symbol AANCESTOR
	.uleb128	27
	.ascii	"AANCESTOR\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef WriteFloat(<TWriter>;const Double);
	.uleb128	29
	.ascii	"WRITEFLOAT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La459-.Ldebug_info0
	.byte	0
# Procdef WriteSingle(<TWriter>;const Single);
	.uleb128	29
	.ascii	"WRITESINGLE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La856-.Ldebug_info0
	.byte	0
# Procdef WriteDate(<TWriter>;const TDateTime);
	.uleb128	29
	.ascii	"WRITEDATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La858-.Ldebug_info0
	.byte	0
# Procdef WriteCurrency(<TWriter>;const Currency);
	.uleb128	29
	.ascii	"WRITECURRENCY\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La860-.Ldebug_info0
	.byte	0
# Procdef WriteIdent(<TWriter>;const AnsiString);
	.uleb128	29
	.ascii	"WRITEIDENT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol IDENT
	.uleb128	27
	.ascii	"IDENT\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef WriteInteger(<TWriter>;LongInt);
	.uleb128	29
	.ascii	"WRITEINTEGER\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef WriteInteger(<TWriter>;Int64);
	.uleb128	29
	.ascii	"WRITEINTEGER\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La168-.Ldebug_info0
	.byte	0
# Procdef WriteSet(<TWriter>;LongInt;Pointer);
	.uleb128	29
	.ascii	"WRITESET\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La6-.Ldebug_info0
# Symbol SETTYPE
	.uleb128	27
	.ascii	"SETTYPE\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef WriteListBegin(<TWriter>);
	.uleb128	29
	.ascii	"WRITELISTBEGIN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
	.byte	0
# Procdef WriteListEnd(<TWriter>);
	.uleb128	29
	.ascii	"WRITELISTEND\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
	.byte	0
# Procdef WriteSignature(<TWriter>);
	.uleb128	29
	.ascii	"WRITESIGNATURE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
	.byte	0
# Procdef WriteRootComponent(<TWriter>;TComponent);
	.uleb128	29
	.ascii	"WRITEROOTCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol AROOT
	.uleb128	27
	.ascii	"AROOT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef WriteString(<TWriter>;const AnsiString);
	.uleb128	29
	.ascii	"WRITESTRING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef WriteWideString(<TWriter>;const WideString);
	.uleb128	29
	.ascii	"WRITEWIDESTRING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La864-.Ldebug_info0
	.byte	0
# Procdef WriteUnicodeString(<TWriter>;const UnicodeString);
	.uleb128	29
	.ascii	"WRITEUNICODESTRING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La91-.Ldebug_info0
	.byte	0
# Procdef WriteVariant(<TWriter>;const Variant);
	.uleb128	29
	.ascii	"WRITEVARIANT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La351-.Ldebug_info0
# Symbol VARVALUE
	.uleb128	27
	.ascii	"VARVALUE\000"
	.long	.La862-.Ldebug_info0
	.byte	0
	.byte	0
.La352:
	.uleb128	11
	.long	.La351-.Ldebug_info0
# Definition TFiler
.La354:
	.uleb128	12
	.ascii	"TFILER\000"
	.long	.La877-.Ldebug_info0
.La877:
	.uleb128	15
	.long	.La356-.Ldebug_info0
.La356:
	.uleb128	16
	.ascii	"TFILER\000"
	.uleb128	40
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La58-.Ldebug_info0
	.uleb128	23
	.ascii	"FROOT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La115-.Ldebug_info0
	.uleb128	23
	.ascii	"FLOOKUPROOT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La115-.Ldebug_info0
	.uleb128	23
	.ascii	"FANCESTOR\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La335-.Ldebug_info0
	.uleb128	23
	.ascii	"FIGNORECHILDREN\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"ROOT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La115-.Ldebug_info0
	.uleb128	23
	.ascii	"LOOKUPROOT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La115-.Ldebug_info0
	.uleb128	23
	.ascii	"ANCESTOR\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La335-.Ldebug_info0
	.uleb128	23
	.ascii	"IGNORECHILDREN\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La38-.Ldebug_info0
# Procdef SetRoot(<TFiler>;TComponent);
	.uleb128	18
	.ascii	"SETROOT\000"
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La354-.Ldebug_info0
# Symbol AROOT
	.uleb128	27
	.ascii	"AROOT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef DefineProperty(<TFiler>;const AnsiString;TReaderProc;TWriterProc;Boolean);
	.uleb128	28
	.ascii	"DEFINEPROPERTY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	208
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La354-.Ldebug_info0
# Symbol NAME
	.uleb128	27
	.ascii	"NAME\000"
	.long	.La59-.Ldebug_info0
# Symbol READDATA
	.uleb128	27
	.ascii	"READDATA\000"
	.long	.La845-.Ldebug_info0
# Symbol WRITEDATA
	.uleb128	27
	.ascii	"WRITEDATA\000"
	.long	.La847-.Ldebug_info0
# Symbol HASDATA
	.uleb128	27
	.ascii	"HASDATA\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DefineBinaryProperty(<TFiler>;const AnsiString;TStreamProc;TStreamProc;Boolean);
	.uleb128	28
	.ascii	"DEFINEBINARYPROPERTY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	216
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La354-.Ldebug_info0
# Symbol NAME
	.uleb128	27
	.ascii	"NAME\000"
	.long	.La59-.Ldebug_info0
# Symbol READDATA
	.uleb128	27
	.ascii	"READDATA\000"
	.long	.La849-.Ldebug_info0
# Symbol WRITEDATA
	.uleb128	27
	.ascii	"WRITEDATA\000"
	.long	.La849-.Ldebug_info0
# Symbol HASDATA
	.uleb128	27
	.ascii	"HASDATA\000"
	.long	.La38-.Ldebug_info0
	.byte	0
	.byte	0
.La355:
	.uleb128	11
	.long	.La354-.Ldebug_info0
# Definition <procedure variable type of procedure(TComponent) of object;Register>
.La357:
	.uleb128	12
	.ascii	"TGETCHILDPROC\000"
	.long	.La878-.Ldebug_info0
.La878:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La879-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La879:
	.uleb128	37
	.ascii	"TGETCHILDPROC\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"CHILD\000"
	.long	.La115-.Ldebug_info0
	.byte	0
.La358:
	.uleb128	11
	.long	.La357-.Ldebug_info0
# Definition TComponent.Class Of TComponent
.La359:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La360:
	.uleb128	11
	.long	.La359-.Ldebug_info0
# Definition TComponentEnumerator
.La361:
	.uleb128	12
	.ascii	"TCOMPONENTENUMERATOR\000"
	.long	.La880-.Ldebug_info0
.La880:
	.uleb128	15
	.long	.La363-.Ldebug_info0
.La363:
	.uleb128	16
	.ascii	"TCOMPONENTENUMERATOR\000"
	.uleb128	24
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La58-.Ldebug_info0
	.uleb128	23
	.ascii	"FCOMPONENT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La115-.Ldebug_info0
	.uleb128	23
	.ascii	"FPOSITION\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La6-.Ldebug_info0
# Procdef constructor Create(<TComponentEnumerator>;<Pointer>;TComponent);
	.uleb128	20
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La361-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La361-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	27
	.ascii	"ACOMPONENT\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef GetCurrent(<TComponentEnumerator>):TComponent;
	.uleb128	20
	.ascii	"GETCURRENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La361-.Ldebug_info0
	.byte	0
# Procdef MoveNext(<TComponentEnumerator>):Boolean;
	.uleb128	20
	.ascii	"MOVENEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La361-.Ldebug_info0
	.byte	0
	.byte	0
.La362:
	.uleb128	11
	.long	.La361-.Ldebug_info0
# Definition TButtonControl
.La365:
	.uleb128	12
	.ascii	"TBUTTONCONTROL\000"
	.long	.La881-.Ldebug_info0
.La881:
	.uleb128	15
	.long	.La367-.Ldebug_info0
.La367:
	.uleb128	16
	.ascii	"TBUTTONCONTROL\000"
	.uleb128	1408
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La238-.Ldebug_info0
	.uleb128	23
	.ascii	"FONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	1384
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FCLICKSDISABLED\000"
	.byte	3
	.byte	35
	.uleb128	1400
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"CLICKSDISABLED\000"
	.byte	3
	.byte	35
	.uleb128	1400
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"ONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	1384
	.byte	3
	.long	.La81-.Ldebug_info0
# Procdef IsCheckedStored(<TButtonControl>):Boolean;
	.uleb128	24
	.ascii	"ISCHECKEDSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La365-.Ldebug_info0
	.byte	0
# Procdef WMDefaultClicked(<TButtonControl>;var TMessage);
	.uleb128	25
	.ascii	"WMDEFAULTCLICKED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La365-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TButtonControl>);
	.uleb128	18
	.ascii	"WSREGISTERCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	432
	.byte	34
	.byte	2
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La882-.Ldebug_info0
	.byte	0
# Procdef GetActionLinkClass(<TButtonControl>):Class Of TControlActionLink;
	.uleb128	31
	.ascii	"GETACTIONLINKCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1280
	.byte	34
	.byte	2
	.long	.La656-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La365-.Ldebug_info0
	.byte	0
# Procdef GetChecked(<TButtonControl>):Boolean;
	.uleb128	31
	.ascii	"GETCHECKED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2248
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La365-.Ldebug_info0
	.byte	0
# Procdef SetChecked(<TButtonControl>;Boolean);
	.uleb128	18
	.ascii	"SETCHECKED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2256
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La365-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DoOnChange(<TButtonControl>);
	.uleb128	18
	.ascii	"DOONCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2264
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La365-.Ldebug_info0
	.byte	0
# Procdef Click(<TButtonControl>);
	.uleb128	18
	.ascii	"CLICK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	904
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La365-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TButtonControl>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La365-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La365-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	27
	.ascii	"THEOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
	.byte	0
.La366:
	.uleb128	11
	.long	.La365-.Ldebug_info0
# Definition TShortCut
.La368:
	.uleb128	12
	.ascii	"TSHORTCUT\000"
	.long	.La884-.Ldebug_info0
.La884:
	.uleb128	13
	.ascii	"TSHORTCUT\000"
	.byte	7
	.byte	2
.La369:
	.uleb128	11
	.long	.La368-.Ldebug_info0
# Definition TLMSetFocus
.La370:
	.uleb128	12
	.ascii	"TLMSETFOCUS\000"
	.long	.La885-.Ldebug_info0
.La885:
	.uleb128	7
	.ascii	"TLMSETFOCUS\000"
	.uleb128	32
	.uleb128	8
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"FOCUSEDWND\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La77-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La168-.Ldebug_info0
	.byte	0
.La371:
	.uleb128	11
	.long	.La370-.Ldebug_info0
# Definition TWMKillFocus
.La372:
	.uleb128	12
	.ascii	"TWMKILLFOCUS\000"
	.long	.La886-.Ldebug_info0
.La886:
	.uleb128	7
	.ascii	"TWMKILLFOCUS\000"
	.uleb128	32
	.uleb128	8
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"MSGFILLER\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La730-.Ldebug_info0
	.uleb128	8
	.ascii	"FOCUSEDWND\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La77-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La168-.Ldebug_info0
	.byte	0
.La373:
	.uleb128	11
	.long	.La372-.Ldebug_info0
# Definition TCustomButton.Class Of TCustomButton
.La374:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La375:
	.uleb128	11
	.long	.La374-.Ldebug_info0
# Definition TShiftState
.La376:
	.uleb128	12
	.ascii	"TSHIFTSTATE\000"
	.long	.La887-.Ldebug_info0
.La887:
	.uleb128	42
	.ascii	"TSHIFTSTATE\000"
	.byte	7
	.short	4
.La377:
	.uleb128	11
	.long	.La376-.Ldebug_info0
# Definition TCustomButton.Class Of TCustomButton
.La378:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La379:
	.uleb128	11
	.long	.La378-.Ldebug_info0
# Definition TLeftRight
.La381:
	.uleb128	12
	.ascii	"TLEFTRIGHT\000"
	.long	.La888-.Ldebug_info0
.La888:
	.uleb128	49
	.ascii	"TLEFTRIGHT\000"
	.byte	4
	.long	.La889-.Ldebug_info0
	.uleb128	35
	.ascii	"TALEFTJUSTIFY\000"
	.long	0
	.uleb128	35
	.ascii	"TARIGHTJUSTIFY\000"
	.long	1
	.byte	0
.La382:
	.uleb128	11
	.long	.La381-.Ldebug_info0
# Definition TCheckBoxState
.La383:
	.uleb128	12
	.ascii	"TCHECKBOXSTATE\000"
	.long	.La891-.Ldebug_info0
.La891:
	.uleb128	34
	.ascii	"TCHECKBOXSTATE\000"
	.byte	4
	.uleb128	35
	.ascii	"CBUNCHECKED\000"
	.long	0
	.uleb128	35
	.ascii	"CBCHECKED\000"
	.long	1
	.uleb128	35
	.ascii	"CBGRAYED\000"
	.long	2
	.byte	0
.La384:
	.uleb128	11
	.long	.La383-.Ldebug_info0
# Definition TCustomCheckBox.Class Of TCustomCheckBox
.La385:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La386:
	.uleb128	11
	.long	.La385-.Ldebug_info0
# Definition TCustomCheckBox.Class Of TCustomCheckBox
.La387:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La388:
	.uleb128	11
	.long	.La387-.Ldebug_info0
# Definition TCommonDialog
.La390:
	.uleb128	12
	.ascii	"TCOMMONDIALOG\000"
	.long	.La892-.Ldebug_info0
.La892:
	.uleb128	15
	.long	.La392-.Ldebug_info0
.La392:
	.uleb128	16
	.ascii	"TCOMMONDIALOG\000"
	.uleb128	208
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La551-.Ldebug_info0
	.uleb128	23
	.ascii	"FHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"FHEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FWIDTH\000"
	.byte	2
	.byte	35
	.uleb128	124
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FONCANCLOSE\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La269-.Ldebug_info0
	.uleb128	23
	.ascii	"FONSHOW\000"
	.byte	3
	.byte	35
	.uleb128	144
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONCLOSE\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FTITLE\000"
	.byte	3
	.byte	35
	.uleb128	176
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"FUSERCHOICE\000"
	.byte	3
	.byte	35
	.uleb128	184
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FHELPCONTEXT\000"
	.byte	3
	.byte	35
	.uleb128	188
	.byte	3
	.long	.La586-.Ldebug_info0
	.uleb128	23
	.ascii	"FDOCANCLOSECALLED\000"
	.byte	3
	.byte	35
	.uleb128	192
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FDOSHOWCALLED\000"
	.byte	3
	.byte	35
	.uleb128	193
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FDOCLOSECALLED\000"
	.byte	3
	.byte	35
	.uleb128	194
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FCLOSING\000"
	.byte	3
	.byte	35
	.uleb128	195
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FWSEVENTCAPABILITIES\000"
	.byte	3
	.byte	35
	.uleb128	196
	.byte	3
	.long	.La893-.Ldebug_info0
	.uleb128	8
	.ascii	"FCOMPSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	200
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"HANDLE\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"USERCHOICE\000"
	.byte	3
	.byte	35
	.uleb128	184
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"ONCLOSE\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONCANCLOSE\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La269-.Ldebug_info0
	.uleb128	23
	.ascii	"ONSHOW\000"
	.byte	3
	.byte	35
	.uleb128	144
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"HELPCONTEXT\000"
	.byte	3
	.byte	35
	.uleb128	188
	.byte	3
	.long	.La586-.Ldebug_info0
	.uleb128	23
	.ascii	"TITLE\000"
	.byte	3
	.byte	35
	.uleb128	176
	.byte	3
	.long	.La141-.Ldebug_info0
# Procdef SetHandle(<TCommonDialog>;const QWord);
	.uleb128	25
	.ascii	"SETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La390-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef IsTitleStored(<TCommonDialog>):Boolean;
	.uleb128	24
	.ascii	"ISTITLESTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La390-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TCommonDialog>);
	.uleb128	18
	.ascii	"WSREGISTERCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	432
	.byte	34
	.byte	2
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La895-.Ldebug_info0
	.byte	0
# Procdef DoExecute(<TCommonDialog>):Boolean;
	.uleb128	31
	.ascii	"DOEXECUTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	456
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La390-.Ldebug_info0
	.byte	0
# Procdef DefaultTitle(<TCommonDialog>;<var AnsiString>):AnsiString;
	.uleb128	31
	.ascii	"DEFAULTTITLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	464
	.byte	34
	.byte	2
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La390-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef GetHeight(<TCommonDialog>):LongInt;
	.uleb128	31
	.ascii	"GETHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	472
	.byte	34
	.byte	2
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La390-.Ldebug_info0
	.byte	0
# Procdef GetWidth(<TCommonDialog>):LongInt;
	.uleb128	31
	.ascii	"GETWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	480
	.byte	34
	.byte	2
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La390-.Ldebug_info0
	.byte	0
# Procdef SetHeight(<TCommonDialog>;const LongInt);
	.uleb128	18
	.ascii	"SETHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	488
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La390-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetWidth(<TCommonDialog>;const LongInt);
	.uleb128	18
	.ascii	"SETWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	496
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La390-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef ResetShowCloseFlags(<TCommonDialog>);
	.uleb128	25
	.ascii	"RESETSHOWCLOSEFLAGS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La390-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TCommonDialog>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La390-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La390-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	27
	.ascii	"THEOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef Execute(<TCommonDialog>):Boolean;
	.uleb128	30
	.ascii	"EXECUTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	504
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La390-.Ldebug_info0
	.byte	0
# Procdef Close(<TCommonDialog>);
	.uleb128	28
	.ascii	"CLOSE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	512
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La390-.Ldebug_info0
	.byte	0
# Procdef DoShow(<TCommonDialog>);
	.uleb128	28
	.ascii	"DOSHOW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	520
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La390-.Ldebug_info0
	.byte	0
# Procdef DoCanClose(<TCommonDialog>;var Boolean);
	.uleb128	28
	.ascii	"DOCANCLOSE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	528
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La390-.Ldebug_info0
# Symbol CANCLOSE
	.uleb128	27
	.ascii	"CANCLOSE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DoClose(<TCommonDialog>);
	.uleb128	28
	.ascii	"DOCLOSE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	536
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La390-.Ldebug_info0
	.byte	0
# Procdef HandleAllocated(<TCommonDialog>):Boolean;
	.uleb128	20
	.ascii	"HANDLEALLOCATED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La390-.Ldebug_info0
	.byte	0
	.byte	0
.La391:
	.uleb128	11
	.long	.La390-.Ldebug_info0
# Definition TStrings
.La393:
	.uleb128	12
	.ascii	"TSTRINGS\000"
	.long	.La897-.Ldebug_info0
.La897:
	.uleb128	15
	.long	.La395-.Ldebug_info0
.La395:
	.uleb128	16
	.ascii	"TSTRINGS\000"
	.uleb128	56
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La337-.Ldebug_info0
	.uleb128	23
	.ascii	"FSPECIALCHARSINITED\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FQUOTECHAR\000"
	.byte	2
	.byte	35
	.uleb128	25
	.byte	3
	.long	.La24-.Ldebug_info0
	.uleb128	23
	.ascii	"FDELIMITER\000"
	.byte	2
	.byte	35
	.uleb128	26
	.byte	3
	.long	.La24-.Ldebug_info0
	.uleb128	23
	.ascii	"FNAMEVALUESEPARATOR\000"
	.byte	2
	.byte	35
	.uleb128	27
	.byte	3
	.long	.La24-.Ldebug_info0
	.uleb128	23
	.ascii	"FUPDATECOUNT\000"
	.byte	2
	.byte	35
	.uleb128	28
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FADAPTER\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La898-.Ldebug_info0
	.uleb128	23
	.ascii	"FLBS\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La901-.Ldebug_info0
	.uleb128	23
	.ascii	"FSKIPLASTLINEBREAK\000"
	.byte	2
	.byte	35
	.uleb128	44
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FSTRICTDELIMITER\000"
	.byte	2
	.byte	35
	.uleb128	45
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FLINEBREAK\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"UPDATECOUNT\000"
	.byte	2
	.byte	35
	.uleb128	28
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"STRICTDELIMITER\000"
	.byte	2
	.byte	35
	.uleb128	45
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"STRINGSADAPTER\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La898-.Ldebug_info0
# Procdef GetCommaText(<TStrings>;<var AnsiString>):AnsiString;
	.uleb128	24
	.ascii	"GETCOMMATEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef GetName(<TStrings>;<var AnsiString>;LongInt):AnsiString;
	.uleb128	24
	.ascii	"GETNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetValue(<TStrings>;<var AnsiString>;const AnsiString):AnsiString;
	.uleb128	24
	.ascii	"GETVALUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
# Symbol NAME
	.uleb128	27
	.ascii	"NAME\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef GetLBS(<TStrings>):<enumeration type>;
	.uleb128	24
	.ascii	"GETLBS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La901-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
	.byte	0
# Procdef SetLBS(<TStrings>;TTextLineBreakStyle);
	.uleb128	25
	.ascii	"SETLBS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La901-.Ldebug_info0
	.byte	0
# Procdef ReadData(<TStrings>;TReader);
	.uleb128	25
	.ascii	"READDATA\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol READER
	.uleb128	27
	.ascii	"READER\000"
	.long	.La348-.Ldebug_info0
	.byte	0
# Procdef SetCommaText(<TStrings>;const AnsiString);
	.uleb128	25
	.ascii	"SETCOMMATEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef SetStringsAdapter(<TStrings>;const IStringsAdapter);
	.uleb128	25
	.ascii	"SETSTRINGSADAPTER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La898-.Ldebug_info0
	.byte	0
# Procdef SetValue(<TStrings>;const AnsiString;const AnsiString);
	.uleb128	25
	.ascii	"SETVALUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol NAME
	.uleb128	27
	.ascii	"NAME\000"
	.long	.La59-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef SetDelimiter(<TStrings>;Char);
	.uleb128	25
	.ascii	"SETDELIMITER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol C
	.uleb128	27
	.ascii	"C\000"
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef SetQuoteChar(<TStrings>;Char);
	.uleb128	25
	.ascii	"SETQUOTECHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol C
	.uleb128	27
	.ascii	"C\000"
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef SetNameValueSeparator(<TStrings>;Char);
	.uleb128	25
	.ascii	"SETNAMEVALUESEPARATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol C
	.uleb128	27
	.ascii	"C\000"
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef WriteData(<TStrings>;TWriter);
	.uleb128	25
	.ascii	"WRITEDATA\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol WRITER
	.uleb128	27
	.ascii	"WRITER\000"
	.long	.La351-.Ldebug_info0
	.byte	0
# Procdef DoSetTextStr(<TStrings>;const AnsiString;Boolean);
	.uleb128	25
	.ascii	"DOSETTEXTSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La59-.Ldebug_info0
# Symbol DOCLEAR
	.uleb128	27
	.ascii	"DOCLEAR\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef GetDelimiter(<TStrings>):Char;
	.uleb128	24
	.ascii	"GETDELIMITER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La24-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
	.byte	0
# Procdef GetNameValueSeparator(<TStrings>):Char;
	.uleb128	24
	.ascii	"GETNAMEVALUESEPARATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La24-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
	.byte	0
# Procdef GetQuoteChar(<TStrings>):Char;
	.uleb128	24
	.ascii	"GETQUOTECHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La24-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
	.byte	0
# Procdef GetLineBreak(<TStrings>;<var AnsiString>):AnsiString;
	.uleb128	24
	.ascii	"GETLINEBREAK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef SetLineBreak(<TStrings>;const AnsiString);
	.uleb128	25
	.ascii	"SETLINEBREAK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol S
	.uleb128	27
	.ascii	"S\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef GetSkipLastLineBreak(<TStrings>):Boolean;
	.uleb128	24
	.ascii	"GETSKIPLASTLINEBREAK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
	.byte	0
# Procdef SetSkipLastLineBreak(<TStrings>;const Boolean);
	.uleb128	25
	.ascii	"SETSKIPLASTLINEBREAK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DefineProperties(<TStrings>;TFiler);
	.uleb128	18
	.ascii	"DEFINEPROPERTIES\000"
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
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol FILER
	.uleb128	27
	.ascii	"FILER\000"
	.long	.La354-.Ldebug_info0
	.byte	0
# Procdef Error(<TStrings>;const AnsiString;LongInt);
	.uleb128	25
	.ascii	"ERROR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol MSG
	.uleb128	27
	.ascii	"MSG\000"
	.long	.La59-.Ldebug_info0
# Symbol DATA
	.uleb128	27
	.ascii	"DATA\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Error(<TStrings>;const PAnsiString;LongInt);
	.uleb128	25
	.ascii	"ERROR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol MSG
	.uleb128	27
	.ascii	"MSG\000"
	.long	.La903-.Ldebug_info0
# Symbol DATA
	.uleb128	27
	.ascii	"DATA\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Get(<TStrings>;<var AnsiString>;LongInt):AnsiString;
	.uleb128	31
	.ascii	"GET\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	240
	.byte	34
	.byte	2
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetCapacity(<TStrings>):LongInt;
	.uleb128	31
	.ascii	"GETCAPACITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	248
	.byte	34
	.byte	2
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
	.byte	0
# Procdef GetCount(<TStrings>):LongInt;
	.uleb128	31
	.ascii	"GETCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	256
	.byte	34
	.byte	2
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
	.byte	0
# Procdef GetObject(<TStrings>;LongInt):TObject;
	.uleb128	31
	.ascii	"GETOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	264
	.byte	34
	.byte	2
	.long	.La56-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetTextStr(<TStrings>;<var AnsiString>):AnsiString;
	.uleb128	31
	.ascii	"GETTEXTSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	272
	.byte	34
	.byte	2
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef Put(<TStrings>;LongInt;const AnsiString);
	.uleb128	18
	.ascii	"PUT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	280
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol S
	.uleb128	27
	.ascii	"S\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef PutObject(<TStrings>;LongInt;TObject);
	.uleb128	18
	.ascii	"PUTOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	288
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol AOBJECT
	.uleb128	27
	.ascii	"AOBJECT\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef SetCapacity(<TStrings>;LongInt);
	.uleb128	18
	.ascii	"SETCAPACITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	296
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol NEWCAPACITY
	.uleb128	27
	.ascii	"NEWCAPACITY\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetTextStr(<TStrings>;const AnsiString);
	.uleb128	18
	.ascii	"SETTEXTSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	304
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef SetUpdateState(<TStrings>;Boolean);
	.uleb128	18
	.ascii	"SETUPDATESTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	312
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol UPDATING
	.uleb128	27
	.ascii	"UPDATING\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DoCompareText(<TStrings>;const AnsiString;const AnsiString):Int64;
	.uleb128	31
	.ascii	"DOCOMPARETEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	320
	.byte	34
	.byte	2
	.long	.La168-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol S1
	.uleb128	27
	.ascii	"S1\000"
	.long	.La59-.Ldebug_info0
# Symbol S2
	.uleb128	27
	.ascii	"S2\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef GetDelimitedText(<TStrings>;<var AnsiString>):AnsiString;
	.uleb128	24
	.ascii	"GETDELIMITEDTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef SetDelimitedText(<TStrings>;const AnsiString);
	.uleb128	25
	.ascii	"SETDELIMITEDTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef GetValueFromIndex(<TStrings>;<var AnsiString>;LongInt):AnsiString;
	.uleb128	24
	.ascii	"GETVALUEFROMINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetValueFromIndex(<TStrings>;LongInt;const AnsiString);
	.uleb128	25
	.ascii	"SETVALUEFROMINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef CheckSpecialChars(<TStrings>);
	.uleb128	25
	.ascii	"CHECKSPECIALCHARS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
	.byte	0
# Procdef class GetNextLine(<Class Of TStrings>;const AnsiString;var AnsiString;var LongInt):Boolean;
	.uleb128	24
	.ascii	"GETNEXTLINE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La905-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La59-.Ldebug_info0
# Symbol S
	.uleb128	27
	.ascii	"S\000"
	.long	.La59-.Ldebug_info0
# Symbol P
	.uleb128	27
	.ascii	"P\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetNextLinebreak(<TStrings>;const AnsiString;var AnsiString;var LongInt):Boolean;
	.uleb128	24
	.ascii	"GETNEXTLINEBREAK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La59-.Ldebug_info0
# Symbol S
	.uleb128	27
	.ascii	"S\000"
	.long	.La59-.Ldebug_info0
# Symbol P
	.uleb128	27
	.ascii	"P\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TStrings>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef Add(<TStrings>;const AnsiString):LongInt;
	.uleb128	30
	.ascii	"ADD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	328
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol S
	.uleb128	27
	.ascii	"S\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef AddObject(<TStrings>;const AnsiString;TObject):LongInt;
	.uleb128	30
	.ascii	"ADDOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	336
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol S
	.uleb128	27
	.ascii	"S\000"
	.long	.La59-.Ldebug_info0
# Symbol AOBJECT
	.uleb128	27
	.ascii	"AOBJECT\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef Add(<TStrings>;const AnsiString;const Array Of Const;<const Int64>):LongInt;
	.uleb128	20
	.ascii	"ADD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol FMT
	.uleb128	27
	.ascii	"FMT\000"
	.long	.La59-.Ldebug_info0
# Symbol ARGS
	.uleb128	27
	.ascii	"ARGS\000"
	.long	.La907-.Ldebug_info0
# Symbol highARGS
	.uleb128	27
	.ascii	"highARGS\000"
	.long	.La168-.Ldebug_info0
# Definition Array Of Const
.La907:
	.uleb128	38
	.long	.La909-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	16
	.long	.La168-.Ldebug_info0
	.byte	0
.La908:
	.uleb128	11
	.long	.La907-.Ldebug_info0
	.byte	0
# Procdef AddObject(<TStrings>;const AnsiString;Array Of Const;<const Int64>;TObject):LongInt;
	.uleb128	20
	.ascii	"ADDOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol FMT
	.uleb128	27
	.ascii	"FMT\000"
	.long	.La59-.Ldebug_info0
# Symbol ARGS
	.uleb128	27
	.ascii	"ARGS\000"
	.long	.La911-.Ldebug_info0
# Symbol highARGS
	.uleb128	27
	.ascii	"highARGS\000"
	.long	.La168-.Ldebug_info0
# Symbol AOBJECT
	.uleb128	27
	.ascii	"AOBJECT\000"
	.long	.La56-.Ldebug_info0
# Definition Array Of Const
.La911:
	.uleb128	38
	.long	.La909-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	16
	.long	.La168-.Ldebug_info0
	.byte	0
.La912:
	.uleb128	11
	.long	.La911-.Ldebug_info0
	.byte	0
# Procdef Append(<TStrings>;const AnsiString);
	.uleb128	29
	.ascii	"APPEND\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol S
	.uleb128	27
	.ascii	"S\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef AddStrings(<TStrings>;TStrings);
	.uleb128	28
	.ascii	"ADDSTRINGS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	344
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol THESTRINGS
	.uleb128	27
	.ascii	"THESTRINGS\000"
	.long	.La393-.Ldebug_info0
	.byte	0
# Procdef AddStrings(<TStrings>;TStrings;Boolean);
	.uleb128	29
	.ascii	"ADDSTRINGS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol THESTRINGS
	.uleb128	27
	.ascii	"THESTRINGS\000"
	.long	.La393-.Ldebug_info0
# Symbol CLEARFIRST
	.uleb128	27
	.ascii	"CLEARFIRST\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef AddStrings(<TStrings>;const {Open} Array Of AnsiString;<const Int64>);
	.uleb128	28
	.ascii	"ADDSTRINGS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	352
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol THESTRINGS
	.uleb128	27
	.ascii	"THESTRINGS\000"
	.long	.La913-.Ldebug_info0
# Symbol highTHESTRINGS
	.uleb128	27
	.ascii	"highTHESTRINGS\000"
	.long	.La168-.Ldebug_info0
# Definition {Open} Array Of AnsiString
.La913:
	.uleb128	38
	.long	.La59-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.byte	0
.La914:
	.uleb128	11
	.long	.La913-.Ldebug_info0
	.byte	0
# Procdef AddStrings(<TStrings>;const {Open} Array Of AnsiString;<const Int64>;Boolean);
	.uleb128	29
	.ascii	"ADDSTRINGS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol THESTRINGS
	.uleb128	27
	.ascii	"THESTRINGS\000"
	.long	.La915-.Ldebug_info0
# Symbol highTHESTRINGS
	.uleb128	27
	.ascii	"highTHESTRINGS\000"
	.long	.La168-.Ldebug_info0
# Symbol CLEARFIRST
	.uleb128	27
	.ascii	"CLEARFIRST\000"
	.long	.La38-.Ldebug_info0
# Definition {Open} Array Of AnsiString
.La915:
	.uleb128	38
	.long	.La59-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.byte	0
.La916:
	.uleb128	11
	.long	.La915-.Ldebug_info0
	.byte	0
# Procdef AddText(<TStrings>;const AnsiString);
	.uleb128	28
	.ascii	"ADDTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	360
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol S
	.uleb128	27
	.ascii	"S\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef Assign(<TStrings>;TPersistent);
	.uleb128	28
	.ascii	"ASSIGN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	224
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol SOURCE
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef BeginUpdate(<TStrings>);
	.uleb128	29
	.ascii	"BEGINUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
	.byte	0
# Procdef Clear(<TStrings>);
	.uleb128	28
	.ascii	"CLEAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	368
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
	.byte	0
# Procdef Delete(<TStrings>;LongInt);
	.uleb128	28
	.ascii	"DELETE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	376
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef EndUpdate(<TStrings>);
	.uleb128	29
	.ascii	"ENDUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
	.byte	0
# Procdef Equals(<TStrings>;TObject):Boolean;
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
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol OBJ
	.uleb128	27
	.ascii	"OBJ\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef Equals(<TStrings>;TStrings):Boolean;
	.uleb128	20
	.ascii	"EQUALS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol THESTRINGS
	.uleb128	27
	.ascii	"THESTRINGS\000"
	.long	.La393-.Ldebug_info0
	.byte	0
# Procdef Exchange(<TStrings>;LongInt;LongInt);
	.uleb128	28
	.ascii	"EXCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	384
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol INDEX1
	.uleb128	27
	.ascii	"INDEX1\000"
	.long	.La6-.Ldebug_info0
# Symbol INDEX2
	.uleb128	27
	.ascii	"INDEX2\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetEnumerator(<TStrings>):TStringsEnumerator;
	.uleb128	20
	.ascii	"GETENUMERATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La917-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
	.byte	0
# Procdef GetText(<TStrings>):^Char;
	.uleb128	30
	.ascii	"GETTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La407-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
	.byte	0
# Procdef IndexOf(<TStrings>;const AnsiString):LongInt;
	.uleb128	30
	.ascii	"INDEXOF\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	400
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol S
	.uleb128	27
	.ascii	"S\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef IndexOfName(<TStrings>;const AnsiString):LongInt;
	.uleb128	30
	.ascii	"INDEXOFNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	408
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol NAME
	.uleb128	27
	.ascii	"NAME\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef IndexOfObject(<TStrings>;TObject):LongInt;
	.uleb128	30
	.ascii	"INDEXOFOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	416
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol AOBJECT
	.uleb128	27
	.ascii	"AOBJECT\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef Insert(<TStrings>;LongInt;const AnsiString);
	.uleb128	28
	.ascii	"INSERT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	424
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol S
	.uleb128	27
	.ascii	"S\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef InsertObject(<TStrings>;LongInt;const AnsiString;TObject);
	.uleb128	29
	.ascii	"INSERTOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol S
	.uleb128	27
	.ascii	"S\000"
	.long	.La59-.Ldebug_info0
# Symbol AOBJECT
	.uleb128	27
	.ascii	"AOBJECT\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef LoadFromFile(<TStrings>;const AnsiString);
	.uleb128	28
	.ascii	"LOADFROMFILE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	432
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol FILENAME
	.uleb128	27
	.ascii	"FILENAME\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef LoadFromStream(<TStrings>;TStream);
	.uleb128	28
	.ascii	"LOADFROMSTREAM\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	440
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol STREAM
	.uleb128	27
	.ascii	"STREAM\000"
	.long	.La795-.Ldebug_info0
	.byte	0
# Procdef Move(<TStrings>;LongInt;LongInt);
	.uleb128	28
	.ascii	"MOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	448
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol CURINDEX
	.uleb128	27
	.ascii	"CURINDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol NEWINDEX
	.uleb128	27
	.ascii	"NEWINDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SaveToFile(<TStrings>;const AnsiString);
	.uleb128	28
	.ascii	"SAVETOFILE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	456
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol FILENAME
	.uleb128	27
	.ascii	"FILENAME\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef SaveToStream(<TStrings>;TStream);
	.uleb128	28
	.ascii	"SAVETOSTREAM\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	464
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol STREAM
	.uleb128	27
	.ascii	"STREAM\000"
	.long	.La795-.Ldebug_info0
	.byte	0
# Procdef SetText(<TStrings>;PChar);
	.uleb128	28
	.ascii	"SETTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	472
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol THETEXT
	.uleb128	27
	.ascii	"THETEXT\000"
	.long	.La407-.Ldebug_info0
	.byte	0
# Procdef GetNameValue(<TStrings>;LongInt;out AnsiString;out AnsiString);
	.uleb128	29
	.ascii	"GETNAMEVALUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol ANAME
	.uleb128	27
	.ascii	"ANAME\000"
	.long	.La59-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef ExtractName(<TStrings>;<var AnsiString>;const AnsiString):AnsiString;
	.uleb128	20
	.ascii	"EXTRACTNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La393-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
# Symbol S
	.uleb128	27
	.ascii	"S\000"
	.long	.La59-.Ldebug_info0
	.byte	0
	.byte	0
.La394:
	.uleb128	11
	.long	.La393-.Ldebug_info0
# Definition TFileDialog.Class Of TFileDialog
.La396:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La397:
	.uleb128	11
	.long	.La396-.Ldebug_info0
# Definition TFileDialog.Class Of TFileDialog
.La398:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La399:
	.uleb128	11
	.long	.La398-.Ldebug_info0
# Definition TFileDialog.Class Of TFileDialog
.La400:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La401:
	.uleb128	11
	.long	.La400-.Ldebug_info0
# Definition PChar
.La407:
	.uleb128	12
	.ascii	"PCHAR\000"
	.long	.La920-.Ldebug_info0
.La920:
	.uleb128	15
	.long	.La24-.Ldebug_info0
.La408:
	.uleb128	11
	.long	.La407-.Ldebug_info0
# Definition tagWNDCLASSA
.La409:
	.uleb128	12
	.ascii	"TAGWNDCLASSA\000"
	.long	.La921-.Ldebug_info0
.La921:
	.uleb128	7
	.ascii	"TAGWNDCLASSA\000"
	.uleb128	72
	.uleb128	8
	.ascii	"STYLE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"LPFNWNDPROC\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La36-.Ldebug_info0
	.uleb128	8
	.ascii	"CBCLSEXTRA\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"CBWNDEXTRA\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"HINSTANCE\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La77-.Ldebug_info0
	.uleb128	8
	.ascii	"HICON\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La77-.Ldebug_info0
	.uleb128	8
	.ascii	"HCURSOR\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La77-.Ldebug_info0
	.uleb128	8
	.ascii	"HBRBACKGROUND\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La77-.Ldebug_info0
	.uleb128	8
	.ascii	"LPSZMENUNAME\000"
	.byte	2
	.byte	35
	.uleb128	56
	.long	.La407-.Ldebug_info0
	.uleb128	8
	.ascii	"LPSZCLASSNAME\000"
	.byte	2
	.byte	35
	.uleb128	64
	.long	.La407-.Ldebug_info0
	.byte	0
.La410:
	.uleb128	11
	.long	.La409-.Ldebug_info0
# Definition TCreateParams.Array[0..63] Of Char
.La411:
	.uleb128	21
	.uleb128	64
	.long	.La24-.Ldebug_info0
	.uleb128	22
	.sleb128	0
	.sleb128	63
	.uleb128	1
	.long	.La71-.Ldebug_info0
	.byte	0
.La412:
	.uleb128	11
	.long	.La411-.Ldebug_info0
# Definition TStringMessageTable
.La420:
	.uleb128	12
	.ascii	"TSTRINGMESSAGETABLE\000"
	.long	.La922-.Ldebug_info0
.La922:
	.uleb128	7
	.ascii	"TSTRINGMESSAGETABLE\000"
	.uleb128	24
	.uleb128	8
	.ascii	"COUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"MSGSTRTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La923-.Ldebug_info0
	.byte	0
.La421:
	.uleb128	11
	.long	.La420-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La423:
	.uleb128	21
	.uleb128	8
	.long	.La21-.Ldebug_info0
	.uleb128	22
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La71-.Ldebug_info0
	.byte	0
.La424:
	.uleb128	11
	.long	.La423-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La425:
	.uleb128	21
	.uleb128	8
	.long	.La21-.Ldebug_info0
	.uleb128	22
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La71-.Ldebug_info0
	.byte	0
.La426:
	.uleb128	11
	.long	.La425-.Ldebug_info0
# Definition TGuid.Array[0..5] Of Byte
.La427:
	.uleb128	21
	.uleb128	6
	.long	.La21-.Ldebug_info0
	.uleb128	22
	.sleb128	0
	.sleb128	5
	.uleb128	1
	.long	.La71-.Ldebug_info0
	.byte	0
.La428:
	.uleb128	11
	.long	.La427-.Ldebug_info0
# Definition tinterfaceentry
.La430:
	.uleb128	12
	.ascii	"TINTERFACEENTRY\000"
	.long	.La925-.Ldebug_info0
.La925:
	.uleb128	7
	.ascii	"TINTERFACEENTRY\000"
	.uleb128	40
	.uleb128	8
	.ascii	"IID\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La926-.Ldebug_info0
	.uleb128	8
	.ascii	"VTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La36-.Ldebug_info0
	.uleb128	8
	.ascii	"IOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La77-.Ldebug_info0
	.uleb128	8
	.ascii	"IIDSTR\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La928-.Ldebug_info0
	.uleb128	8
	.ascii	"ITYPE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La930-.Ldebug_info0
	.uleb128	8
	.ascii	"__PAD_DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La168-.Ldebug_info0
	.byte	0
.La431:
	.uleb128	11
	.long	.La430-.Ldebug_info0
# Definition tinterfacetable
.La433:
	.uleb128	12
	.ascii	"TINTERFACETABLE\000"
	.long	.La932-.Ldebug_info0
.La932:
	.uleb128	7
	.ascii	"TINTERFACETABLE\000"
	.uleb128	48
	.uleb128	8
	.ascii	"ENTRYCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La77-.Ldebug_info0
	.uleb128	8
	.ascii	"ENTRIES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La933-.Ldebug_info0
	.byte	0
.La434:
	.uleb128	11
	.long	.La433-.Ldebug_info0
# Definition FILETIME
.La437:
	.uleb128	12
	.ascii	"FILETIME\000"
	.long	.La935-.Ldebug_info0
.La935:
	.uleb128	7
	.ascii	"FILETIME\000"
	.uleb128	8
	.uleb128	8
	.ascii	"DWLOWDATETIME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"DWHIGHDATETIME\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La17-.Ldebug_info0
	.byte	0
.La438:
	.uleb128	11
	.long	.La437-.Ldebug_info0
# Definition WIN32_FIND_DATAW.Array[0..259] Of WideChar
.La439:
	.uleb128	21
	.uleb128	520
	.long	.La217-.Ldebug_info0
	.uleb128	22
	.sleb128	0
	.sleb128	259
	.uleb128	2
	.long	.La69-.Ldebug_info0
	.byte	0
.La440:
	.uleb128	11
	.long	.La439-.Ldebug_info0
# Definition WIN32_FIND_DATAW.Array[0..13] Of WideChar
.La441:
	.uleb128	21
	.uleb128	28
	.long	.La217-.Ldebug_info0
	.uleb128	22
	.sleb128	0
	.sleb128	13
	.uleb128	2
	.long	.La71-.Ldebug_info0
	.byte	0
.La442:
	.uleb128	11
	.long	.La441-.Ldebug_info0
# Definition Exception
.La444:
	.uleb128	12
	.ascii	"EXCEPTION\000"
	.long	.La936-.Ldebug_info0
.La936:
	.uleb128	15
	.long	.La446-.Ldebug_info0
.La446:
	.uleb128	16
	.ascii	"EXCEPTION\000"
	.uleb128	24
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La58-.Ldebug_info0
	.uleb128	23
	.ascii	"FMESSAGE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La59-.Ldebug_info0
	.uleb128	23
	.ascii	"FHELPCONTEXT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"HELPCONTEXT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"MESSAGE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La59-.Ldebug_info0
# Procdef constructor Create(<Exception>;<Pointer>;const AnsiString);
	.uleb128	20
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La444-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La444-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol MSG
	.uleb128	27
	.ascii	"MSG\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef constructor CreateFmt(<Exception>;<Pointer>;const AnsiString;const Array Of Const;<const Int64>);
	.uleb128	20
	.ascii	"CREATEFMT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La444-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La444-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol MSG
	.uleb128	27
	.ascii	"MSG\000"
	.long	.La59-.Ldebug_info0
# Symbol ARGS
	.uleb128	27
	.ascii	"ARGS\000"
	.long	.La937-.Ldebug_info0
# Symbol highARGS
	.uleb128	27
	.ascii	"highARGS\000"
	.long	.La168-.Ldebug_info0
# Definition Array Of Const
.La937:
	.uleb128	38
	.long	.La909-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	16
	.long	.La168-.Ldebug_info0
	.byte	0
.La938:
	.uleb128	11
	.long	.La937-.Ldebug_info0
	.byte	0
# Procdef constructor CreateRes(<Exception>;<Pointer>;PAnsiString);
	.uleb128	20
	.ascii	"CREATERES\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La444-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La444-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	27
	.ascii	"RESSTRING\000"
	.long	.La903-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResFmt(<Exception>;<Pointer>;PAnsiString;const Array Of Const;<const Int64>);
	.uleb128	20
	.ascii	"CREATERESFMT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La444-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La444-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	27
	.ascii	"RESSTRING\000"
	.long	.La903-.Ldebug_info0
# Symbol ARGS
	.uleb128	27
	.ascii	"ARGS\000"
	.long	.La939-.Ldebug_info0
# Symbol highARGS
	.uleb128	27
	.ascii	"highARGS\000"
	.long	.La168-.Ldebug_info0
# Definition Array Of Const
.La939:
	.uleb128	38
	.long	.La909-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	16
	.long	.La168-.Ldebug_info0
	.byte	0
.La940:
	.uleb128	11
	.long	.La939-.Ldebug_info0
	.byte	0
# Procdef constructor CreateHelp(<Exception>;<Pointer>;const AnsiString;LongInt);
	.uleb128	20
	.ascii	"CREATEHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La444-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La444-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol MSG
	.uleb128	27
	.ascii	"MSG\000"
	.long	.La59-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	27
	.ascii	"AHELPCONTEXT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef constructor CreateFmtHelp(<Exception>;<Pointer>;const AnsiString;const Array Of Const;<const Int64>;LongInt);
	.uleb128	20
	.ascii	"CREATEFMTHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La444-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La444-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol MSG
	.uleb128	27
	.ascii	"MSG\000"
	.long	.La59-.Ldebug_info0
# Symbol ARGS
	.uleb128	27
	.ascii	"ARGS\000"
	.long	.La941-.Ldebug_info0
# Symbol highARGS
	.uleb128	27
	.ascii	"highARGS\000"
	.long	.La168-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	27
	.ascii	"AHELPCONTEXT\000"
	.long	.La6-.Ldebug_info0
# Definition Array Of Const
.La941:
	.uleb128	38
	.long	.La909-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	16
	.long	.La168-.Ldebug_info0
	.byte	0
.La942:
	.uleb128	11
	.long	.La941-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResHelp(<Exception>;<Pointer>;PAnsiString;LongInt);
	.uleb128	20
	.ascii	"CREATERESHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La444-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La444-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	27
	.ascii	"RESSTRING\000"
	.long	.La903-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	27
	.ascii	"AHELPCONTEXT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResFmtHelp(<Exception>;<Pointer>;PAnsiString;const Array Of Const;<const Int64>;LongInt);
	.uleb128	20
	.ascii	"CREATERESFMTHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La444-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La444-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	27
	.ascii	"RESSTRING\000"
	.long	.La903-.Ldebug_info0
# Symbol ARGS
	.uleb128	27
	.ascii	"ARGS\000"
	.long	.La943-.Ldebug_info0
# Symbol highARGS
	.uleb128	27
	.ascii	"highARGS\000"
	.long	.La168-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	27
	.ascii	"AHELPCONTEXT\000"
	.long	.La6-.Ldebug_info0
# Definition Array Of Const
.La943:
	.uleb128	38
	.long	.La909-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	16
	.long	.La168-.Ldebug_info0
	.byte	0
.La944:
	.uleb128	11
	.long	.La943-.Ldebug_info0
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La444-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
	.byte	0
.La445:
	.uleb128	11
	.long	.La444-.Ldebug_info0
# Definition PRTLEvent
.La447:
	.uleb128	12
	.ascii	"PRTLEVENT\000"
	.long	.La945-.Ldebug_info0
.La945:
	.uleb128	14
.La448:
	.uleb128	11
	.long	.La447-.Ldebug_info0
# Definition TScrollingWinControl
.La454:
	.uleb128	12
	.ascii	"TSCROLLINGWINCONTROL\000"
	.long	.La946-.Ldebug_info0
.La946:
	.uleb128	15
	.long	.La456-.Ldebug_info0
.La456:
	.uleb128	16
	.ascii	"TSCROLLINGWINCONTROL\000"
	.uleb128	1432
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La949-.Ldebug_info0
	.uleb128	23
	.ascii	"FHORZSCROLLBAR\000"
	.byte	3
	.byte	35
	.uleb128	1408
	.byte	3
	.long	.La950-.Ldebug_info0
	.uleb128	23
	.ascii	"FVERTSCROLLBAR\000"
	.byte	3
	.byte	35
	.uleb128	1416
	.byte	3
	.long	.La950-.Ldebug_info0
	.uleb128	23
	.ascii	"FAUTOSCROLL\000"
	.byte	3
	.byte	35
	.uleb128	1424
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FISUPDATING\000"
	.byte	3
	.byte	35
	.uleb128	1425
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"AUTOSCROLL\000"
	.byte	3
	.byte	35
	.uleb128	1424
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"HORZSCROLLBAR\000"
	.byte	3
	.byte	35
	.uleb128	1408
	.byte	3
	.long	.La950-.Ldebug_info0
	.uleb128	23
	.ascii	"VERTSCROLLBAR\000"
	.byte	3
	.byte	35
	.uleb128	1416
	.byte	3
	.long	.La950-.Ldebug_info0
# Procdef SetHorzScrollBar(<TScrollingWinControl>;TControlScrollBar);
	.uleb128	25
	.ascii	"SETHORZSCROLLBAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La950-.Ldebug_info0
	.byte	0
# Procdef SetVertScrollBar(<TScrollingWinControl>;TControlScrollBar);
	.uleb128	25
	.ascii	"SETVERTSCROLLBAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La950-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TScrollingWinControl>);
	.uleb128	18
	.ascii	"WSREGISTERCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	432
	.byte	34
	.byte	2
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La953-.Ldebug_info0
	.byte	0
# Procdef AlignControls(<TScrollingWinControl>;TControl;var TRect);
	.uleb128	18
	.ascii	"ALIGNCONTROLS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1688
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef AutoScrollEnabled(<TScrollingWinControl>):Boolean;
	.uleb128	31
	.ascii	"AUTOSCROLLENABLED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2256
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
	.byte	0
# Procdef CalculateAutoRanges(<TScrollingWinControl>);
	.uleb128	18
	.ascii	"CALCULATEAUTORANGES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2264
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
	.byte	0
# Procdef CreateWnd(<TScrollingWinControl>);
	.uleb128	18
	.ascii	"CREATEWND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2016
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
	.byte	0
# Procdef GetClientScrollOffset(<TScrollingWinControl>):<record type>;
	.uleb128	31
	.ascii	"GETCLIENTSCROLLOFFSET\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	720
	.byte	34
	.byte	2
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
	.byte	0
# Procdef GetLogicalClientRect(<TScrollingWinControl>;<var TRect>):<record type>;
	.uleb128	31
	.ascii	"GETLOGICALCLIENTRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	704
	.byte	34
	.byte	2
	.long	.La311-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef DoOnResize(<TScrollingWinControl>);
	.uleb128	18
	.ascii	"DOONRESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	608
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
	.byte	0
# Procdef GetPreferredSizeClientFrame(<TScrollingWinControl>;out LongInt;out LongInt);
	.uleb128	18
	.ascii	"GETPREFERREDSIZECLIENTFRAME\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1768
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	27
	.ascii	"AWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	27
	.ascii	"AHEIGHT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef WMSize(<TScrollingWinControl>;var TWMSize);
	.uleb128	25
	.ascii	"WMSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La305-.Ldebug_info0
	.byte	0
# Procdef WMHScroll(<TScrollingWinControl>;var TLMScroll);
	.uleb128	25
	.ascii	"WMHSCROLL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La955-.Ldebug_info0
	.byte	0
# Procdef WMVScroll(<TScrollingWinControl>;var TLMScroll);
	.uleb128	25
	.ascii	"WMVSCROLL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La955-.Ldebug_info0
	.byte	0
# Procdef ComputeScrollbars(<TScrollingWinControl>);
	.uleb128	18
	.ascii	"COMPUTESCROLLBARS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2272
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
	.byte	0
# Procdef SetAutoScroll(<TScrollingWinControl>;Boolean);
	.uleb128	18
	.ascii	"SETAUTOSCROLL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2280
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TScrollingWinControl>);
	.uleb128	18
	.ascii	"LOADED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	264
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
	.byte	0
# Procdef Resizing(<TScrollingWinControl>;TWindowState);
	.uleb128	18
	.ascii	"RESIZING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2288
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
# Symbol STATE
	.uleb128	27
	.ascii	"STATE\000"
	.long	.La281-.Ldebug_info0
	.byte	0
# Procdef SetAutoSize(<TScrollingWinControl>;Boolean);
	.uleb128	18
	.ascii	"SETAUTOSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	536
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TScrollingWinControl>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La454-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	27
	.ascii	"THEOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TScrollingWinControl>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef UpdateScrollbars(<TScrollingWinControl>);
	.uleb128	29
	.ascii	"UPDATESCROLLBARS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
	.byte	0
# Procdef class GetControlClassDefaultSize(<Class Of TScrollingWinControl>):<record type>;
	.uleb128	30
	.ascii	"GETCONTROLCLASSDEFAULTSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1256
	.byte	34
	.long	.La321-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La957-.Ldebug_info0
	.byte	0
# Procdef ScrollBy(<TScrollingWinControl>;LongInt;LongInt);
	.uleb128	28
	.ascii	"SCROLLBY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2104
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
# Symbol DELTAX
	.uleb128	27
	.ascii	"DELTAX\000"
	.long	.La6-.Ldebug_info0
# Symbol DELTAY
	.uleb128	27
	.ascii	"DELTAY\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef ScrollInView(<TScrollingWinControl>;TControl);
	.uleb128	29
	.ascii	"SCROLLINVIEW\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La454-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
	.byte	0
.La455:
	.uleb128	11
	.long	.La454-.Ldebug_info0
# Definition TLayoutAdjustmentPolicy
.La457:
	.uleb128	12
	.ascii	"TLAYOUTADJUSTMENTPOLICY\000"
	.long	.La959-.Ldebug_info0
.La959:
	.uleb128	34
	.ascii	"TLAYOUTADJUSTMENTPOLICY\000"
	.byte	4
	.uleb128	35
	.ascii	"LAPDEFAULT\000"
	.long	0
	.uleb128	35
	.ascii	"LAPFIXEDLAYOUT\000"
	.long	1
	.uleb128	35
	.ascii	"LAPAUTOADJUSTWITHOUTHORIZONTALSCROLLING\000"
	.long	2
	.uleb128	35
	.ascii	"LAPAUTOADJUSTFORDPI\000"
	.long	3
	.byte	0
.La458:
	.uleb128	11
	.long	.La457-.Ldebug_info0
# Definition Double
.La459:
	.uleb128	12
	.ascii	"DOUBLE\000"
	.long	.La960-.Ldebug_info0
.La960:
	.uleb128	13
	.ascii	"DOUBLE\000"
	.byte	4
	.byte	8
.La460:
	.uleb128	11
	.long	.La459-.Ldebug_info0
# Definition TBorderWidth
.La462:
	.uleb128	12
	.ascii	"TBORDERWIDTH\000"
	.long	.La961-.Ldebug_info0
.La961:
	.uleb128	50
	.ascii	"TBORDERWIDTH\000"
	.uleb128	0
	.uleb128	2147483647
	.long	.La17-.Ldebug_info0
.La463:
	.uleb128	11
	.long	.La462-.Ldebug_info0
# Definition TBorderStyle
.La464:
	.uleb128	12
	.ascii	"TBORDERSTYLE\000"
	.long	.La962-.Ldebug_info0
.La962:
	.uleb128	49
	.ascii	"TBORDERSTYLE\000"
	.byte	4
	.long	.La265-.Ldebug_info0
	.uleb128	35
	.ascii	"BSNONE\000"
	.long	0
	.uleb128	35
	.ascii	"BSSINGLE\000"
	.long	1
	.byte	0
.La465:
	.uleb128	11
	.long	.La464-.Ldebug_info0
# Definition TBrush
.La466:
	.uleb128	12
	.ascii	"TBRUSH\000"
	.long	.La963-.Ldebug_info0
.La963:
	.uleb128	15
	.long	.La468-.Ldebug_info0
.La468:
	.uleb128	16
	.ascii	"TBRUSH\000"
	.uleb128	264
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La966-.Ldebug_info0
	.uleb128	23
	.ascii	"FBRUSHHANDLECACHED\000"
	.byte	3
	.byte	35
	.uleb128	232
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FCOLOR\000"
	.byte	3
	.byte	35
	.uleb128	236
	.byte	3
	.long	.La529-.Ldebug_info0
	.uleb128	23
	.ascii	"FBITMAP\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La967-.Ldebug_info0
	.uleb128	23
	.ascii	"FREFERENCE\000"
	.byte	3
	.byte	35
	.uleb128	248
	.byte	3
	.long	.La970-.Ldebug_info0
	.uleb128	23
	.ascii	"FINTERNALUPDATEINDEX\000"
	.byte	3
	.byte	35
	.uleb128	256
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"BITMAP\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La967-.Ldebug_info0
	.uleb128	23
	.ascii	"COLOR\000"
	.byte	3
	.byte	35
	.uleb128	236
	.byte	3
	.long	.La529-.Ldebug_info0
# Procdef FreeReference(<TBrush>);
	.uleb128	25
	.ascii	"FREEREFERENCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La466-.Ldebug_info0
	.byte	0
# Procdef GetHandle(<TBrush>):QWord;
	.uleb128	24
	.ascii	"GETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La466-.Ldebug_info0
	.byte	0
# Procdef GetReference(<TBrush>;<var TWSBrushReference>):TWSBrushReference;
	.uleb128	24
	.ascii	"GETREFERENCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La970-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La466-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La970-.Ldebug_info0
	.byte	0
# Procdef GetColor(<TBrush>):LongInt;
	.uleb128	24
	.ascii	"GETCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La529-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La466-.Ldebug_info0
	.byte	0
# Procdef ReferenceNeeded(<TBrush>);
	.uleb128	25
	.ascii	"REFERENCENEEDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La466-.Ldebug_info0
	.byte	0
# Procdef SetHandle(<TBrush>;const QWord);
	.uleb128	25
	.ascii	"SETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La466-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef DoChange(<TBrush>;var <Formal type>);
	.uleb128	25
	.ascii	"DOCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La466-.Ldebug_info0
# Symbol MSG
	.uleb128	27
	.ascii	"MSG\000"
	.long	.La150-.Ldebug_info0
	.byte	0
# Procdef DoAllocateResources(<TBrush>);
	.uleb128	18
	.ascii	"DOALLOCATERESOURCES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	264
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La466-.Ldebug_info0
	.byte	0
# Procdef DoDeAllocateResources(<TBrush>);
	.uleb128	18
	.ascii	"DODEALLOCATERESOURCES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	272
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La466-.Ldebug_info0
	.byte	0
# Procdef DoCopyProps(<TBrush>;TFPCanvasHelper);
	.uleb128	18
	.ascii	"DOCOPYPROPS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	280
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La466-.Ldebug_info0
# Symbol FROM
	.uleb128	27
	.ascii	"FROM\000"
	.long	.La972-.Ldebug_info0
	.byte	0
# Procdef SetColor(<TBrush>;const TGraphicsColor;const TFPColor);
	.uleb128	18
	.ascii	"SETCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	336
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La466-.Ldebug_info0
# Symbol NEWCOLOR
	.uleb128	27
	.ascii	"NEWCOLOR\000"
	.long	.La529-.Ldebug_info0
# Symbol NEWFPCOLOR
	.uleb128	27
	.ascii	"NEWFPCOLOR\000"
	.long	.La975-.Ldebug_info0
	.byte	0
# Procdef SetFPColor(<TBrush>;const TFPColor);
	.uleb128	18
	.ascii	"SETFPCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	288
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La466-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La975-.Ldebug_info0
	.byte	0
# Procdef SetBitmap(<TBrush>;TCustomBitmap);
	.uleb128	25
	.ascii	"SETBITMAP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La466-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La967-.Ldebug_info0
	.byte	0
# Procdef SetColor(<TBrush>;TGraphicsColor);
	.uleb128	25
	.ascii	"SETCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La466-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La529-.Ldebug_info0
	.byte	0
# Procdef SetStyle(<TBrush>;TFPBrushStyle);
	.uleb128	18
	.ascii	"SETSTYLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	320
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La466-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La977-.Ldebug_info0
	.byte	0
# Procdef Assign(<TBrush>;TPersistent);
	.uleb128	28
	.ascii	"ASSIGN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	224
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La466-.Ldebug_info0
# Symbol SOURCE
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TBrush>;<Pointer>);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	312
	.byte	34
	.long	.La466-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La466-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TBrush>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La466-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef EqualsBrush(<TBrush>;TBrush):Boolean;
	.uleb128	20
	.ascii	"EQUALSBRUSH\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La466-.Ldebug_info0
# Symbol ABRUSH
	.uleb128	27
	.ascii	"ABRUSH\000"
	.long	.La466-.Ldebug_info0
	.byte	0
	.byte	0
.La467:
	.uleb128	11
	.long	.La466-.Ldebug_info0
# Definition TControlChildSizing
.La469:
	.uleb128	12
	.ascii	"TCONTROLCHILDSIZING\000"
	.long	.La979-.Ldebug_info0
.La979:
	.uleb128	15
	.long	.La471-.Ldebug_info0
.La471:
	.uleb128	16
	.ascii	"TCONTROLCHILDSIZING\000"
	.uleb128	88
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La337-.Ldebug_info0
	.uleb128	23
	.ascii	"FCONTROL\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La236-.Ldebug_info0
	.uleb128	23
	.ascii	"FCONTROLSPERLINE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FENLARGEHORIZONTAL\000"
	.byte	2
	.byte	35
	.uleb128	36
	.byte	3
	.long	.La980-.Ldebug_info0
	.uleb128	23
	.ascii	"FENLARGEVERTICAL\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La980-.Ldebug_info0
	.uleb128	23
	.ascii	"FHORIZONTALSPACING\000"
	.byte	2
	.byte	35
	.uleb128	44
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FLAYOUT\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La982-.Ldebug_info0
	.uleb128	23
	.ascii	"FLEFTRIGHTSPACING\000"
	.byte	2
	.byte	35
	.uleb128	52
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FSHRINKHORIZONTAL\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	3
	.long	.La980-.Ldebug_info0
	.uleb128	23
	.ascii	"FSHRINKVERTICAL\000"
	.byte	2
	.byte	35
	.uleb128	76
	.byte	3
	.long	.La980-.Ldebug_info0
	.uleb128	23
	.ascii	"FTOPBOTTOMSPACING\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FVERTICALSPACING\000"
	.byte	2
	.byte	35
	.uleb128	84
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"CONTROL\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La236-.Ldebug_info0
	.uleb128	23
	.ascii	"ONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"LEFTRIGHTSPACING\000"
	.byte	2
	.byte	35
	.uleb128	52
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"TOPBOTTOMSPACING\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"HORIZONTALSPACING\000"
	.byte	2
	.byte	35
	.uleb128	44
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"VERTICALSPACING\000"
	.byte	2
	.byte	35
	.uleb128	84
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"ENLARGEHORIZONTAL\000"
	.byte	2
	.byte	35
	.uleb128	36
	.byte	3
	.long	.La980-.Ldebug_info0
	.uleb128	23
	.ascii	"ENLARGEVERTICAL\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La980-.Ldebug_info0
	.uleb128	23
	.ascii	"SHRINKHORIZONTAL\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	3
	.long	.La980-.Ldebug_info0
	.uleb128	23
	.ascii	"SHRINKVERTICAL\000"
	.byte	2
	.byte	35
	.uleb128	76
	.byte	3
	.long	.La980-.Ldebug_info0
	.uleb128	23
	.ascii	"LAYOUT\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La982-.Ldebug_info0
	.uleb128	23
	.ascii	"CONTROLSPERLINE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La6-.Ldebug_info0
# Procdef SetControlsPerLine(<TControlChildSizing>;const LongInt);
	.uleb128	25
	.ascii	"SETCONTROLSPERLINE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La469-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetEnlargeHorizontal(<TControlChildSizing>;const TChildControlResizeStyle);
	.uleb128	25
	.ascii	"SETENLARGEHORIZONTAL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La469-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La980-.Ldebug_info0
	.byte	0
# Procdef SetEnlargeVertical(<TControlChildSizing>;const TChildControlResizeStyle);
	.uleb128	25
	.ascii	"SETENLARGEVERTICAL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La469-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La980-.Ldebug_info0
	.byte	0
# Procdef SetHorizontalSpacing(<TControlChildSizing>;const LongInt);
	.uleb128	25
	.ascii	"SETHORIZONTALSPACING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La469-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetLayout(<TControlChildSizing>;const TControlChildrenLayout);
	.uleb128	25
	.ascii	"SETLAYOUT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La469-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La982-.Ldebug_info0
	.byte	0
# Procdef SetLeftRightSpacing(<TControlChildSizing>;const LongInt);
	.uleb128	25
	.ascii	"SETLEFTRIGHTSPACING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La469-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetShrinkHorizontal(<TControlChildSizing>;const TChildControlResizeStyle);
	.uleb128	25
	.ascii	"SETSHRINKHORIZONTAL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La469-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La980-.Ldebug_info0
	.byte	0
# Procdef SetShrinkVertical(<TControlChildSizing>;const TChildControlResizeStyle);
	.uleb128	25
	.ascii	"SETSHRINKVERTICAL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La469-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La980-.Ldebug_info0
	.byte	0
# Procdef SetTopBottomSpacing(<TControlChildSizing>;const LongInt);
	.uleb128	25
	.ascii	"SETTOPBOTTOMSPACING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La469-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetVerticalSpacing(<TControlChildSizing>;const LongInt);
	.uleb128	25
	.ascii	"SETVERTICALSPACING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La469-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Change(<TControlChildSizing>);
	.uleb128	18
	.ascii	"CHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	240
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La469-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TControlChildSizing>;<Pointer>;TWinControl);
	.uleb128	20
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La469-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La469-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol OWNERCONTROL
	.uleb128	27
	.ascii	"OWNERCONTROL\000"
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef Assign(<TControlChildSizing>;TPersistent);
	.uleb128	28
	.ascii	"ASSIGN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	224
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La469-.Ldebug_info0
# Symbol SOURCE
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef AssignTo(<TControlChildSizing>;TPersistent);
	.uleb128	28
	.ascii	"ASSIGNTO\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	200
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La469-.Ldebug_info0
# Symbol DEST
	.uleb128	27
	.ascii	"DEST\000"
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef IsEqual(<TControlChildSizing>;TControlChildSizing):Boolean;
	.uleb128	20
	.ascii	"ISEQUAL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La469-.Ldebug_info0
# Symbol SIZING
	.uleb128	27
	.ascii	"SIZING\000"
	.long	.La469-.Ldebug_info0
	.byte	0
# Procdef SetGridSpacing(<TControlChildSizing>;LongInt);
	.uleb128	29
	.ascii	"SETGRIDSPACING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La469-.Ldebug_info0
# Symbol SPACING
	.uleb128	27
	.ascii	"SPACING\000"
	.long	.La6-.Ldebug_info0
	.byte	0
	.byte	0
.La470:
	.uleb128	11
	.long	.La469-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TControl;var AnsiString) of object;Register>
.La472:
	.uleb128	12
	.ascii	"TGETDOCKCAPTIONEVENT\000"
	.long	.La984-.Ldebug_info0
.La984:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La985-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La985:
	.uleb128	37
	.ascii	"TGETDOCKCAPTIONEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
	.uleb128	27
	.ascii	"ACAPTION\000"
	.long	.La59-.Ldebug_info0
	.byte	0
.La473:
	.uleb128	11
	.long	.La472-.Ldebug_info0
# Definition TDockManager
.La474:
	.uleb128	12
	.ascii	"TDOCKMANAGER\000"
	.long	.La986-.Ldebug_info0
.La986:
	.uleb128	15
	.long	.La476-.Ldebug_info0
.La476:
	.uleb128	16
	.ascii	"TDOCKMANAGER\000"
	.uleb128	24
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La337-.Ldebug_info0
# Procdef constructor Create(<TDockManager>;<Pointer>;TWinControl);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	240
	.byte	34
	.long	.La474-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La474-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol ADOCKSITE
	.uleb128	27
	.ascii	"ADOCKSITE\000"
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef BeginUpdate(<TDockManager>);
	.uleb128	28
	.ascii	"BEGINUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	248
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La474-.Ldebug_info0
	.byte	0
# Procdef EndUpdate(<TDockManager>);
	.uleb128	28
	.ascii	"ENDUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	256
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La474-.Ldebug_info0
	.byte	0
# Procdef GetControlBounds(<TDockManager>;TControl;out TRect);
	.uleb128	28
	.ascii	"GETCONTROLBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	264
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La474-.Ldebug_info0
# Symbol CONTROL
	.uleb128	27
	.ascii	"CONTROL\000"
	.long	.La239-.Ldebug_info0
# Symbol ACONTROLBOUNDS
	.uleb128	27
	.ascii	"ACONTROLBOUNDS\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef GetDockEdge(<TDockManager>;TDragDockObject):Boolean;
	.uleb128	30
	.ascii	"GETDOCKEDGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	272
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La474-.Ldebug_info0
# Symbol ADOCKOBJECT
	.uleb128	27
	.ascii	"ADOCKOBJECT\000"
	.long	.La522-.Ldebug_info0
	.byte	0
# Procdef InsertControl(<TDockManager>;TDragDockObject);
	.uleb128	28
	.ascii	"INSERTCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	280
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La474-.Ldebug_info0
# Symbol ADOCKOBJECT
	.uleb128	27
	.ascii	"ADOCKOBJECT\000"
	.long	.La522-.Ldebug_info0
	.byte	0
# Procdef InsertControl(<TDockManager>;TControl;TAlign;TControl);
	.uleb128	28
	.ascii	"INSERTCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	288
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La474-.Ldebug_info0
# Symbol CONTROL
	.uleb128	27
	.ascii	"CONTROL\000"
	.long	.La239-.Ldebug_info0
# Symbol INSERTAT
	.uleb128	27
	.ascii	"INSERTAT\000"
	.long	.La501-.Ldebug_info0
# Symbol DROPCTL
	.uleb128	27
	.ascii	"DROPCTL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef LoadFromStream(<TDockManager>;TStream);
	.uleb128	28
	.ascii	"LOADFROMSTREAM\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	296
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La474-.Ldebug_info0
# Symbol STREAM
	.uleb128	27
	.ascii	"STREAM\000"
	.long	.La795-.Ldebug_info0
	.byte	0
# Procdef PaintSite(<TDockManager>;QWord);
	.uleb128	28
	.ascii	"PAINTSITE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	304
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La474-.Ldebug_info0
# Symbol DC
	.uleb128	27
	.ascii	"DC\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef MessageHandler(<TDockManager>;TControl;var TMessage);
	.uleb128	28
	.ascii	"MESSAGEHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	312
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La474-.Ldebug_info0
# Symbol SENDER
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La239-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	27
	.ascii	"MESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef PositionDockRect(<TDockManager>;TDragDockObject);
	.uleb128	28
	.ascii	"POSITIONDOCKRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	320
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La474-.Ldebug_info0
# Symbol ADOCKOBJECT
	.uleb128	27
	.ascii	"ADOCKOBJECT\000"
	.long	.La522-.Ldebug_info0
	.byte	0
# Procdef PositionDockRect(<TDockManager>;TControl;TControl;TAlign;var TRect);
	.uleb128	28
	.ascii	"POSITIONDOCKRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	328
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La474-.Ldebug_info0
# Symbol CLIENT
	.uleb128	27
	.ascii	"CLIENT\000"
	.long	.La239-.Ldebug_info0
# Symbol DROPCTL
	.uleb128	27
	.ascii	"DROPCTL\000"
	.long	.La239-.Ldebug_info0
# Symbol DROPALIGN
	.uleb128	27
	.ascii	"DROPALIGN\000"
	.long	.La501-.Ldebug_info0
# Symbol DOCKRECT
	.uleb128	27
	.ascii	"DOCKRECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef RemoveControl(<TDockManager>;TControl);
	.uleb128	28
	.ascii	"REMOVECONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	336
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La474-.Ldebug_info0
# Symbol CONTROL
	.uleb128	27
	.ascii	"CONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef ResetBounds(<TDockManager>;Boolean);
	.uleb128	28
	.ascii	"RESETBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	344
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La474-.Ldebug_info0
# Symbol FORCE
	.uleb128	27
	.ascii	"FORCE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SaveToStream(<TDockManager>;TStream);
	.uleb128	28
	.ascii	"SAVETOSTREAM\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	352
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La474-.Ldebug_info0
# Symbol STREAM
	.uleb128	27
	.ascii	"STREAM\000"
	.long	.La795-.Ldebug_info0
	.byte	0
# Procdef SetReplacingControl(<TDockManager>;TControl);
	.uleb128	28
	.ascii	"SETREPLACINGCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	360
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La474-.Ldebug_info0
# Symbol CONTROL
	.uleb128	27
	.ascii	"CONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef AutoFreeByControl(<TDockManager>):Boolean;
	.uleb128	30
	.ascii	"AUTOFREEBYCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	368
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La474-.Ldebug_info0
	.byte	0
	.byte	0
.La475:
	.uleb128	11
	.long	.La474-.Ldebug_info0
# Definition <procedure variable type of function(TWinControl;TControl;TControl):Boolean of object;Register>
.La477:
	.uleb128	12
	.ascii	"TALIGNINSERTBEFOREEVENT\000"
	.long	.La987-.Ldebug_info0
.La987:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La988-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La988:
	.uleb128	44
	.ascii	"TALIGNINSERTBEFOREEVENT\000"
	.byte	1
	.long	.La38-.Ldebug_info0
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La236-.Ldebug_info0
	.uleb128	27
	.ascii	"CONTROL1\000"
	.long	.La239-.Ldebug_info0
	.uleb128	27
	.ascii	"CONTROL2\000"
	.long	.La239-.Ldebug_info0
	.byte	0
.La478:
	.uleb128	11
	.long	.La477-.Ldebug_info0
# Definition <procedure variable type of procedure(TWinControl;TControl;var LongInt;var LongInt;var LongInt;var LongInt;var TRect;TAlignInfo) of object;Register>
.La479:
	.uleb128	12
	.ascii	"TALIGNPOSITIONEVENT\000"
	.long	.La989-.Ldebug_info0
.La989:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La990-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La990:
	.uleb128	37
	.ascii	"TALIGNPOSITIONEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La236-.Ldebug_info0
	.uleb128	27
	.ascii	"CONTROL\000"
	.long	.La239-.Ldebug_info0
	.uleb128	27
	.ascii	"NEWLEFT\000"
	.long	.La6-.Ldebug_info0
	.uleb128	27
	.ascii	"NEWTOP\000"
	.long	.La6-.Ldebug_info0
	.uleb128	27
	.ascii	"NEWWIDTH\000"
	.long	.La6-.Ldebug_info0
	.uleb128	27
	.ascii	"NEWHEIGHT\000"
	.long	.La6-.Ldebug_info0
	.uleb128	27
	.ascii	"ALIGNRECT\000"
	.long	.La311-.Ldebug_info0
	.uleb128	27
	.ascii	"ALIGNINFO\000"
	.long	.La503-.Ldebug_info0
	.byte	0
.La480:
	.uleb128	11
	.long	.La479-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TDragDockObject;LongInt;LongInt) of object;Register>
.La481:
	.uleb128	12
	.ascii	"TDOCKDROPEVENT\000"
	.long	.La991-.Ldebug_info0
.La991:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La992-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La992:
	.uleb128	37
	.ascii	"TDOCKDROPEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La522-.Ldebug_info0
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
.La482:
	.uleb128	11
	.long	.La481-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TDragDockObject;LongInt;LongInt;TDragState;var Boolean) of object;Register>
.La483:
	.uleb128	12
	.ascii	"TDOCKOVEREVENT\000"
	.long	.La993-.Ldebug_info0
.La993:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La994-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La994:
	.uleb128	37
	.ascii	"TDOCKOVEREVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La522-.Ldebug_info0
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.uleb128	27
	.ascii	"STATE\000"
	.long	.La525-.Ldebug_info0
	.uleb128	27
	.ascii	"ACCEPT\000"
	.long	.La38-.Ldebug_info0
	.byte	0
.La484:
	.uleb128	11
	.long	.La483-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TControl;var TRect;TPoint;var Boolean) of object;Register>
.La485:
	.uleb128	12
	.ascii	"TGETSITEINFOEVENT\000"
	.long	.La995-.Ldebug_info0
.La995:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La996-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La996:
	.uleb128	37
	.ascii	"TGETSITEINFOEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"DOCKCLIENT\000"
	.long	.La239-.Ldebug_info0
	.uleb128	27
	.ascii	"INFLUENCERECT\000"
	.long	.La311-.Ldebug_info0
	.uleb128	27
	.ascii	"MOUSEPOS\000"
	.long	.La517-.Ldebug_info0
	.uleb128	27
	.ascii	"CANDOCK\000"
	.long	.La38-.Ldebug_info0
	.byte	0
.La486:
	.uleb128	11
	.long	.La485-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;var Word;TShiftState) of object;Register>
.La487:
	.uleb128	12
	.ascii	"TKEYEVENT\000"
	.long	.La997-.Ldebug_info0
.La997:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La998-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La998:
	.uleb128	37
	.ascii	"TKEYEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"KEY\000"
	.long	.La8-.Ldebug_info0
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
	.byte	0
.La488:
	.uleb128	11
	.long	.La487-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;var Char) of object;Register>
.La489:
	.uleb128	12
	.ascii	"TKEYPRESSEVENT\000"
	.long	.La999-.Ldebug_info0
.La999:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1000-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La1000:
	.uleb128	37
	.ascii	"TKEYPRESSEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"KEY\000"
	.long	.La24-.Ldebug_info0
	.byte	0
.La490:
	.uleb128	11
	.long	.La489-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TControl;TWinControl;var Boolean) of object;Register>
.La491:
	.uleb128	12
	.ascii	"TUNDOCKEVENT\000"
	.long	.La1001-.Ldebug_info0
.La1001:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1002-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La1002:
	.uleb128	37
	.ascii	"TUNDOCKEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"CLIENT\000"
	.long	.La239-.Ldebug_info0
	.uleb128	27
	.ascii	"NEWTARGET\000"
	.long	.La236-.Ldebug_info0
	.uleb128	27
	.ascii	"ALLOW\000"
	.long	.La38-.Ldebug_info0
	.byte	0
.La492:
	.uleb128	11
	.long	.La491-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;var TUTF8Char) of object;Register>
.La493:
	.uleb128	12
	.ascii	"TUTF8KEYPRESSEVENT\000"
	.long	.La1003-.Ldebug_info0
.La1003:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1004-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La1004:
	.uleb128	37
	.ascii	"TUTF8KEYPRESSEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"UTF8KEY\000"
	.long	.La527-.Ldebug_info0
	.byte	0
.La494:
	.uleb128	11
	.long	.La493-.Ldebug_info0
# Definition TWinControlFlags
.La495:
	.uleb128	12
	.ascii	"TWINCONTROLFLAGS\000"
	.long	.La1005-.Ldebug_info0
.La1005:
	.uleb128	42
	.ascii	"TWINCONTROLFLAGS\000"
	.byte	7
	.short	4
.La496:
	.uleb128	11
	.long	.La495-.Ldebug_info0
# Definition TTabOrder
.La497:
	.uleb128	12
	.ascii	"TTABORDER\000"
	.long	.La1006-.Ldebug_info0
.La1006:
	.uleb128	51
	.ascii	"TTABORDER\000"
	.sleb128	-1
	.sleb128	32767
	.long	.La69-.Ldebug_info0
.La498:
	.uleb128	11
	.long	.La497-.Ldebug_info0
# Definition TWinControl.Class Of TWinControl
.La499:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La500:
	.uleb128	11
	.long	.La499-.Ldebug_info0
# Definition TAlign
.La501:
	.uleb128	12
	.ascii	"TALIGN\000"
	.long	.La1007-.Ldebug_info0
.La1007:
	.uleb128	34
	.ascii	"TALIGN\000"
	.byte	4
	.uleb128	35
	.ascii	"ALNONE\000"
	.long	0
	.uleb128	35
	.ascii	"ALTOP\000"
	.long	1
	.uleb128	35
	.ascii	"ALBOTTOM\000"
	.long	2
	.uleb128	35
	.ascii	"ALLEFT\000"
	.long	3
	.uleb128	35
	.ascii	"ALRIGHT\000"
	.long	4
	.uleb128	35
	.ascii	"ALCLIENT\000"
	.long	5
	.uleb128	35
	.ascii	"ALCUSTOM\000"
	.long	6
	.byte	0
.La502:
	.uleb128	11
	.long	.La501-.Ldebug_info0
# Definition TAlignInfo
.La503:
	.uleb128	12
	.ascii	"TALIGNINFO\000"
	.long	.La1008-.Ldebug_info0
.La1008:
	.uleb128	7
	.ascii	"TALIGNINFO\000"
	.uleb128	24
	.uleb128	8
	.ascii	"ALIGNLIST\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La338-.Ldebug_info0
	.uleb128	8
	.ascii	"CONTROLINDEX\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"ALIGN\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La501-.Ldebug_info0
	.uleb128	8
	.ascii	"SCRATCH\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La6-.Ldebug_info0
	.byte	0
.La504:
	.uleb128	11
	.long	.La503-.Ldebug_info0
# Definition TLMPaint
.La505:
	.uleb128	12
	.ascii	"TLMPAINT\000"
	.long	.La1009-.Ldebug_info0
.La1009:
	.uleb128	7
	.ascii	"TLMPAINT\000"
	.uleb128	32
	.uleb128	8
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"DC\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La77-.Ldebug_info0
	.uleb128	8
	.ascii	"PAINTSTRUCT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La1010-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La168-.Ldebug_info0
	.byte	0
.La506:
	.uleb128	11
	.long	.La505-.Ldebug_info0
# Definition TLMContextMenu
.La507:
	.uleb128	12
	.ascii	"TLMCONTEXTMENU\000"
	.long	.La1012-.Ldebug_info0
.La1012:
	.uleb128	7
	.ascii	"TLMCONTEXTMENU\000"
	.uleb128	32
	.uleb128	8
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"HWND\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La77-.Ldebug_info0
	.uleb128	8
	.ascii	"XPOS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La69-.Ldebug_info0
	.uleb128	8
	.ascii	"YPOS\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La69-.Ldebug_info0
	.uleb128	8
	.ascii	"POS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La648-.Ldebug_info0
	.uleb128	8
	.ascii	"DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La168-.Ldebug_info0
	.byte	0
.La508:
	.uleb128	11
	.long	.La507-.Ldebug_info0
# Definition TLMEraseBkgnd
.La509:
	.uleb128	12
	.ascii	"TLMERASEBKGND\000"
	.long	.La1013-.Ldebug_info0
.La1013:
	.uleb128	7
	.ascii	"TLMERASEBKGND\000"
	.uleb128	32
	.uleb128	8
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"DC\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La77-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La168-.Ldebug_info0
	.byte	0
.La510:
	.uleb128	11
	.long	.La509-.Ldebug_info0
# Definition TLMNotify
.La511:
	.uleb128	12
	.ascii	"TLMNOTIFY\000"
	.long	.La1014-.Ldebug_info0
.La1014:
	.uleb128	7
	.ascii	"TLMNOTIFY\000"
	.uleb128	32
	.uleb128	8
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"IDCTRL\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"NMHDR\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La1015-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La168-.Ldebug_info0
	.byte	0
.La512:
	.uleb128	11
	.long	.La511-.Ldebug_info0
# Definition TWMNoParams
.La513:
	.uleb128	12
	.ascii	"TWMNOPARAMS\000"
	.long	.La1017-.Ldebug_info0
.La1017:
	.uleb128	7
	.ascii	"TWMNOPARAMS\000"
	.uleb128	32
	.uleb128	8
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSEDW\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSEDL\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La168-.Ldebug_info0
	.byte	0
.La514:
	.uleb128	11
	.long	.La513-.Ldebug_info0
# Definition TDragMessage
.La515:
	.uleb128	12
	.ascii	"TDRAGMESSAGE\000"
	.long	.La1018-.Ldebug_info0
.La1018:
	.uleb128	34
	.ascii	"TDRAGMESSAGE\000"
	.byte	4
	.uleb128	35
	.ascii	"DMDRAGENTER\000"
	.long	0
	.uleb128	35
	.ascii	"DMDRAGLEAVE\000"
	.long	1
	.uleb128	35
	.ascii	"DMDRAGMOVE\000"
	.long	2
	.uleb128	35
	.ascii	"DMDRAGDROP\000"
	.long	3
	.uleb128	35
	.ascii	"DMDRAGCANCEL\000"
	.long	4
	.uleb128	35
	.ascii	"DMFINDTARGET\000"
	.long	5
	.byte	0
.La516:
	.uleb128	11
	.long	.La515-.Ldebug_info0
# Definition TPoint
.La517:
	.uleb128	12
	.ascii	"TPOINT\000"
	.long	.La1019-.Ldebug_info0
.La1019:
	.uleb128	7
	.ascii	"TPOINT\000"
	.uleb128	8
	.uleb128	8
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La6-.Ldebug_info0
# Procdef constructor Create(<var TPoint>;LongInt;LongInt);
	.uleb128	46
	.ascii	"CREATE\000"
	.byte	1
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol AX
	.uleb128	27
	.ascii	"AX\000"
	.long	.La6-.Ldebug_info0
# Symbol AY
	.uleb128	27
	.ascii	"AY\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<var TPoint>;TPoint);
	.uleb128	46
	.ascii	"CREATE\000"
	.byte	1
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol APT
	.uleb128	27
	.ascii	"APT\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef class Zero:<record type>; Static;
	.uleb128	46
	.ascii	"ZERO\000"
	.byte	1
	.byte	1
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef Add(<var TPoint>;const TPoint):<record type>;
	.uleb128	46
	.ascii	"ADD\000"
	.byte	1
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol APT
	.uleb128	27
	.ascii	"APT\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef Distance(<var TPoint>;const TPoint):Double;
	.uleb128	46
	.ascii	"DISTANCE\000"
	.byte	1
	.byte	1
	.long	.La459-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol APT
	.uleb128	27
	.ascii	"APT\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef IsZero(<var TPoint>):Boolean;
	.uleb128	46
	.ascii	"ISZERO\000"
	.byte	1
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef Subtract(<var TPoint>;const TPoint):<record type>;
	.uleb128	46
	.ascii	"SUBTRACT\000"
	.byte	1
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol APT
	.uleb128	27
	.ascii	"APT\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef SetLocation(<var TPoint>;const TPoint);
	.uleb128	47
	.ascii	"SETLOCATION\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol APT
	.uleb128	27
	.ascii	"APT\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef SetLocation(<var TPoint>;LongInt;LongInt);
	.uleb128	47
	.ascii	"SETLOCATION\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol AX
	.uleb128	27
	.ascii	"AX\000"
	.long	.La6-.Ldebug_info0
# Symbol AY
	.uleb128	27
	.ascii	"AY\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Offset(<var TPoint>;const TPoint);
	.uleb128	47
	.ascii	"OFFSET\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol APT
	.uleb128	27
	.ascii	"APT\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef Offset(<var TPoint>;LongInt;LongInt);
	.uleb128	47
	.ascii	"OFFSET\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol DX
	.uleb128	27
	.ascii	"DX\000"
	.long	.La6-.Ldebug_info0
# Symbol DY
	.uleb128	27
	.ascii	"DY\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef class PointInCircle(const TPoint;const TPoint;const LongInt):Boolean; Static;
	.uleb128	46
	.ascii	"POINTINCIRCLE\000"
	.byte	1
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol APT
	.uleb128	27
	.ascii	"APT\000"
	.long	.La517-.Ldebug_info0
# Symbol ACENTER
	.uleb128	27
	.ascii	"ACENTER\000"
	.long	.La517-.Ldebug_info0
# Symbol ARADIUS
	.uleb128	27
	.ascii	"ARADIUS\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef operator =(const TPoint;const TPoint):Boolean;
	.uleb128	46
	.ascii	"equal\000"
	.byte	1
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol APT1
	.uleb128	27
	.ascii	"APT1\000"
	.long	.La517-.Ldebug_info0
# Symbol APT2
	.uleb128	27
	.ascii	"APT2\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef operator <>(const TPoint;const TPoint):Boolean;
	.uleb128	46
	.ascii	"not_equal\000"
	.byte	1
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol APT1
	.uleb128	27
	.ascii	"APT1\000"
	.long	.La517-.Ldebug_info0
# Symbol APT2
	.uleb128	27
	.ascii	"APT2\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef operator +(const TPoint;const TPoint):<record type>;
	.uleb128	46
	.ascii	"plus\000"
	.byte	1
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol APT1
	.uleb128	27
	.ascii	"APT1\000"
	.long	.La517-.Ldebug_info0
# Symbol APT2
	.uleb128	27
	.ascii	"APT2\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef operator -(const TPoint;const TPoint):<record type>;
	.uleb128	46
	.ascii	"minus\000"
	.byte	1
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol APT1
	.uleb128	27
	.ascii	"APT1\000"
	.long	.La517-.Ldebug_info0
# Symbol APT2
	.uleb128	27
	.ascii	"APT2\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef operator :=(const TSmallPoint):<record type>;
	.uleb128	46
	.ascii	"assign\000"
	.byte	1
	.byte	1
	.long	.La517-.Ldebug_info0
# Symbol ASPT
	.uleb128	27
	.ascii	"ASPT\000"
	.long	.La648-.Ldebug_info0
	.byte	0
# Procdef operator explicit(const TPoint):<record type>;
	.uleb128	46
	.ascii	"explicit\000"
	.byte	1
	.byte	1
	.long	.La648-.Ldebug_info0
# Symbol APT
	.uleb128	27
	.ascii	"APT\000"
	.long	.La517-.Ldebug_info0
	.byte	0
	.byte	0
.La518:
	.uleb128	11
	.long	.La517-.Ldebug_info0
# Definition TDragObject
.La519:
	.uleb128	12
	.ascii	"TDRAGOBJECT\000"
	.long	.La1020-.Ldebug_info0
.La1020:
	.uleb128	15
	.long	.La521-.Ldebug_info0
.La521:
	.uleb128	16
	.ascii	"TDRAGOBJECT\000"
	.uleb128	56
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La58-.Ldebug_info0
	.uleb128	23
	.ascii	"FALWAYSSHOWDRAGIMAGES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FDRAGPOS\000"
	.byte	2
	.byte	35
	.uleb128	12
	.byte	3
	.long	.La517-.Ldebug_info0
	.uleb128	23
	.ascii	"FCONTROL\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"FDRAGTARGET\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"FDRAGTARGETPOS\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La517-.Ldebug_info0
	.uleb128	23
	.ascii	"FAUTOFREE\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FAUTOCREATED\000"
	.byte	2
	.byte	35
	.uleb128	49
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FDROPPED\000"
	.byte	2
	.byte	35
	.uleb128	50
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"ALWAYSSHOWDRAGIMAGES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"AUTOCREATED\000"
	.byte	2
	.byte	35
	.uleb128	49
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"AUTOFREE\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"CONTROL\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"DRAGPOS\000"
	.byte	2
	.byte	35
	.uleb128	12
	.byte	3
	.long	.La517-.Ldebug_info0
	.uleb128	23
	.ascii	"DRAGTARGET\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"DRAGTARGETPOS\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La517-.Ldebug_info0
	.uleb128	23
	.ascii	"DROPPED\000"
	.byte	2
	.byte	35
	.uleb128	50
	.byte	3
	.long	.La38-.Ldebug_info0
# Procdef EndDrag(<TDragObject>;TObject;LongInt;LongInt);
	.uleb128	18
	.ascii	"ENDDRAG\000"
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La519-.Ldebug_info0
# Symbol TARGET
	.uleb128	27
	.ascii	"TARGET\000"
	.long	.La56-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetDragImages(<TDragObject>):TDragImageList;
	.uleb128	31
	.ascii	"GETDRAGIMAGES\000"
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
	.long	.La645-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La519-.Ldebug_info0
	.byte	0
# Procdef GetDragCursor(<TDragObject>;Boolean;LongInt;LongInt):SmallInt;
	.uleb128	31
	.ascii	"GETDRAGCURSOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	216
	.byte	34
	.byte	2
	.long	.La537-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La519-.Ldebug_info0
# Symbol ACCEPTED
	.uleb128	27
	.ascii	"ACCEPTED\000"
	.long	.La38-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TDragObject>;<Pointer>;TControl);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	224
	.byte	34
	.long	.La519-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La519-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef constructor AutoCreate(<TDragObject>;<Pointer>;TControl);
	.uleb128	20
	.ascii	"AUTOCREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La519-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La519-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef HideDragImage(<TDragObject>);
	.uleb128	28
	.ascii	"HIDEDRAGIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	232
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La519-.Ldebug_info0
	.byte	0
# Procdef ShowDragImage(<TDragObject>);
	.uleb128	28
	.ascii	"SHOWDRAGIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	240
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La519-.Ldebug_info0
	.byte	0
	.byte	0
.La520:
	.uleb128	11
	.long	.La519-.Ldebug_info0
# Definition TDragDockObject
.La522:
	.uleb128	12
	.ascii	"TDRAGDOCKOBJECT\000"
	.long	.La1021-.Ldebug_info0
.La1021:
	.uleb128	15
	.long	.La524-.Ldebug_info0
.La524:
	.uleb128	16
	.ascii	"TDRAGDOCKOBJECT\000"
	.uleb128	120
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La521-.Ldebug_info0
	.uleb128	23
	.ascii	"FDOCKOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La517-.Ldebug_info0
	.uleb128	23
	.ascii	"FDOCKRECT\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La311-.Ldebug_info0
	.uleb128	23
	.ascii	"FDROPALIGN\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La501-.Ldebug_info0
	.uleb128	23
	.ascii	"FDROPONCONTROL\000"
	.byte	2
	.byte	35
	.uleb128	88
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"FERASEDOCKRECT\000"
	.byte	2
	.byte	35
	.uleb128	96
	.byte	3
	.long	.La311-.Ldebug_info0
	.uleb128	23
	.ascii	"FFLOATING\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FINCREASEDOCKAREA\000"
	.byte	2
	.byte	35
	.uleb128	113
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"DOCKOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La517-.Ldebug_info0
	.uleb128	23
	.ascii	"DOCKRECT\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La311-.Ldebug_info0
	.uleb128	23
	.ascii	"DROPALIGN\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La501-.Ldebug_info0
	.uleb128	23
	.ascii	"DROPONCONTROL\000"
	.byte	2
	.byte	35
	.uleb128	88
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"FLOATING\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"INCREASEDOCKAREA\000"
	.byte	2
	.byte	35
	.uleb128	113
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"ERASEDOCKRECT\000"
	.byte	2
	.byte	35
	.uleb128	96
	.byte	3
	.long	.La311-.Ldebug_info0
# Procdef AdjustDockRect(<TDragDockObject>;TRect);
	.uleb128	18
	.ascii	"ADJUSTDOCKRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	248
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La522-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef GetDragCursor(<TDragDockObject>;Boolean;LongInt;LongInt):SmallInt;
	.uleb128	31
	.ascii	"GETDRAGCURSOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	216
	.byte	34
	.byte	2
	.long	.La537-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La522-.Ldebug_info0
# Symbol ACCEPTED
	.uleb128	27
	.ascii	"ACCEPTED\000"
	.long	.La38-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef EndDrag(<TDragDockObject>;TObject;LongInt;LongInt);
	.uleb128	18
	.ascii	"ENDDRAG\000"
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La522-.Ldebug_info0
# Symbol TARGET
	.uleb128	27
	.ascii	"TARGET\000"
	.long	.La56-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef InitDock(<TDragDockObject>;TPoint);
	.uleb128	18
	.ascii	"INITDOCK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	256
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La522-.Ldebug_info0
# Symbol APOSITION
	.uleb128	27
	.ascii	"APOSITION\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef ShowDockImage(<TDragDockObject>);
	.uleb128	18
	.ascii	"SHOWDOCKIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	264
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La522-.Ldebug_info0
	.byte	0
# Procdef HideDockImage(<TDragDockObject>);
	.uleb128	18
	.ascii	"HIDEDOCKIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	272
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La522-.Ldebug_info0
	.byte	0
# Procdef MoveDockImage(<TDragDockObject>);
	.uleb128	18
	.ascii	"MOVEDOCKIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	280
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La522-.Ldebug_info0
	.byte	0
# Procdef HasOnDrawImage(<TDragDockObject>):Boolean;
	.uleb128	31
	.ascii	"HASONDRAWIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	288
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La522-.Ldebug_info0
	.byte	0
	.byte	0
.La523:
	.uleb128	11
	.long	.La522-.Ldebug_info0
# Definition TDragState
.La525:
	.uleb128	12
	.ascii	"TDRAGSTATE\000"
	.long	.La1022-.Ldebug_info0
.La1022:
	.uleb128	34
	.ascii	"TDRAGSTATE\000"
	.byte	4
	.uleb128	35
	.ascii	"DSDRAGENTER\000"
	.long	0
	.uleb128	35
	.ascii	"DSDRAGLEAVE\000"
	.long	1
	.uleb128	35
	.ascii	"DSDRAGMOVE\000"
	.long	2
	.byte	0
.La526:
	.uleb128	11
	.long	.La525-.Ldebug_info0
# Definition TUTF8Char
.La527:
	.uleb128	12
	.ascii	"TUTF8CHAR\000"
	.long	.La1023-.Ldebug_info0
.La1023:
	.uleb128	7
	.ascii	"ShortString\000"
	.uleb128	8
	.uleb128	8
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La21-.Ldebug_info0
	.uleb128	8
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La1024-.Ldebug_info0
	.byte	0
.La1024:
	.uleb128	9
	.uleb128	8
	.uleb128	1
	.long	.La24-.Ldebug_info0
	.uleb128	10
	.uleb128	1
	.uleb128	7
	.long	.La21-.Ldebug_info0
	.byte	0
.La528:
	.uleb128	11
	.long	.La527-.Ldebug_info0
# Definition TGraphicsColor
.La529:
	.uleb128	12
	.ascii	"TGRAPHICSCOLOR\000"
	.long	.La1025-.Ldebug_info0
.La1025:
	.uleb128	13
	.ascii	"TGRAPHICSCOLOR\000"
	.byte	5
	.byte	4
.La530:
	.uleb128	11
	.long	.La529-.Ldebug_info0
# Definition TControlAutoSizePhases
.La531:
	.uleb128	12
	.ascii	"TCONTROLAUTOSIZEPHASES\000"
	.long	.La1026-.Ldebug_info0
.La1026:
	.uleb128	42
	.ascii	"TCONTROLAUTOSIZEPHASES\000"
	.byte	7
	.short	4
.La532:
	.uleb128	11
	.long	.La531-.Ldebug_info0
# Definition TControlAtPosFlags
.La533:
	.uleb128	12
	.ascii	"TCONTROLATPOSFLAGS\000"
	.long	.La1027-.Ldebug_info0
.La1027:
	.uleb128	42
	.ascii	"TCONTROLATPOSFLAGS\000"
	.byte	7
	.short	4
.La534:
	.uleb128	11
	.long	.La533-.Ldebug_info0
# Definition TWinControl.Class Of TWinControl
.La535:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La536:
	.uleb128	11
	.long	.La535-.Ldebug_info0
# Definition TCursor
.La537:
	.uleb128	12
	.ascii	"TCURSOR\000"
	.long	.La1028-.Ldebug_info0
.La1028:
	.uleb128	13
	.ascii	"TCURSOR\000"
	.byte	5
	.byte	2
.La538:
	.uleb128	11
	.long	.La537-.Ldebug_info0
# Definition TWinControlEnumerator
.La539:
	.uleb128	12
	.ascii	"TWINCONTROLENUMERATOR\000"
	.long	.La1029-.Ldebug_info0
.La1029:
	.uleb128	15
	.long	.La541-.Ldebug_info0
.La541:
	.uleb128	16
	.ascii	"TWINCONTROLENUMERATOR\000"
	.uleb128	24
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La58-.Ldebug_info0
	.uleb128	23
	.ascii	"FINDEX\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	2
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FLOWTOHIGH\000"
	.byte	2
	.byte	35
	.uleb128	12
	.byte	2
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FPARENT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	2
	.long	.La236-.Ldebug_info0
# Procdef GetCurrent(<TWinControlEnumerator>):TControl;
	.uleb128	24
	.ascii	"GETCURRENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La239-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La539-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TWinControlEnumerator>;<Pointer>;TWinControl;Boolean="TRUE");
	.uleb128	20
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La539-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La539-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol PARENT
	.uleb128	27
	.ascii	"PARENT\000"
	.long	.La236-.Ldebug_info0
# Symbol ALOWTOHIGH
	.uleb128	27
	.ascii	"ALOWTOHIGH\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef GetEnumerator(<TWinControlEnumerator>):TWinControlEnumerator;
	.uleb128	20
	.ascii	"GETENUMERATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La539-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La539-.Ldebug_info0
	.byte	0
# Procdef MoveNext(<TWinControlEnumerator>):Boolean;
	.uleb128	20
	.ascii	"MOVENEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La539-.Ldebug_info0
	.byte	0
	.byte	0
.La540:
	.uleb128	11
	.long	.La539-.Ldebug_info0
# Definition TCanvas
.La542:
	.uleb128	12
	.ascii	"TCANVAS\000"
	.long	.La1030-.Ldebug_info0
.La1030:
	.uleb128	15
	.long	.La544-.Ldebug_info0
.La544:
	.uleb128	16
	.ascii	"TCANVAS\000"
	.uleb128	288
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1033-.Ldebug_info0
	.uleb128	23
	.ascii	"FANTIALIASINGMODE\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La1034-.Ldebug_info0
	.uleb128	23
	.ascii	"FAUTOREDRAW\000"
	.byte	2
	.byte	35
	.uleb128	124
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FSTATE\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La1036-.Ldebug_info0
	.uleb128	23
	.ascii	"FSAVEDFONTHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"FSAVEDPENHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	144
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"FSAVEDBRUSHHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	152
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"FSAVEDREGIONHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"FCOPYMODE\000"
	.byte	3
	.byte	35
	.uleb128	168
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	176
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"FONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	184
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONCHANGING\000"
	.byte	3
	.byte	35
	.uleb128	200
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FTEXTSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La1038-.Ldebug_info0
	.uleb128	23
	.ascii	"FLOCK\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"FREGION\000"
	.byte	3
	.byte	35
	.uleb128	248
	.byte	3
	.long	.La545-.Ldebug_info0
	.uleb128	23
	.ascii	"FLAZPEN\000"
	.byte	3
	.byte	35
	.uleb128	256
	.byte	3
	.long	.La1040-.Ldebug_info0
	.uleb128	23
	.ascii	"FLAZFONT\000"
	.byte	3
	.byte	35
	.uleb128	264
	.byte	3
	.long	.La583-.Ldebug_info0
	.uleb128	23
	.ascii	"FLAZBRUSH\000"
	.byte	3
	.byte	35
	.uleb128	272
	.byte	3
	.long	.La466-.Ldebug_info0
	.uleb128	23
	.ascii	"FSAVEDHANDLESTATES\000"
	.byte	3
	.byte	35
	.uleb128	280
	.byte	3
	.long	.La338-.Ldebug_info0
	.uleb128	23
	.ascii	"TEXTSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La1038-.Ldebug_info0
	.uleb128	23
	.ascii	"ANTIALIASINGMODE\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La1034-.Ldebug_info0
	.uleb128	23
	.ascii	"AUTOREDRAW\000"
	.byte	2
	.byte	35
	.uleb128	124
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"BRUSH\000"
	.byte	3
	.byte	35
	.uleb128	272
	.byte	3
	.long	.La466-.Ldebug_info0
	.uleb128	23
	.ascii	"COPYMODE\000"
	.byte	3
	.byte	35
	.uleb128	168
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FONT\000"
	.byte	3
	.byte	35
	.uleb128	264
	.byte	3
	.long	.La583-.Ldebug_info0
	.uleb128	23
	.ascii	"PEN\000"
	.byte	3
	.byte	35
	.uleb128	256
	.byte	3
	.long	.La1040-.Ldebug_info0
	.uleb128	23
	.ascii	"REGION\000"
	.byte	3
	.byte	35
	.uleb128	248
	.byte	3
	.long	.La545-.Ldebug_info0
	.uleb128	23
	.ascii	"ONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	184
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONCHANGING\000"
	.byte	3
	.byte	35
	.uleb128	200
	.byte	3
	.long	.La81-.Ldebug_info0
# Procdef BrushChanged(<TCanvas>;TObject);
	.uleb128	25
	.ascii	"BRUSHCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ABRUSH
	.uleb128	27
	.ascii	"ABRUSH\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef FontChanged(<TCanvas>;TObject);
	.uleb128	25
	.ascii	"FONTCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol AFONT
	.uleb128	27
	.ascii	"AFONT\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef PenChanged(<TCanvas>;TObject);
	.uleb128	25
	.ascii	"PENCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol APEN
	.uleb128	27
	.ascii	"APEN\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef RegionChanged(<TCanvas>;TObject);
	.uleb128	25
	.ascii	"REGIONCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol AREGION
	.uleb128	27
	.ascii	"AREGION\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef GetHandle(<TCanvas>):QWord;
	.uleb128	24
	.ascii	"GETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef SetAntialiasingMode(<TCanvas>;const TAntialiasingMode);
	.uleb128	25
	.ascii	"SETANTIALIASINGMODE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La1034-.Ldebug_info0
	.byte	0
# Procdef SetAutoRedraw(<TCanvas>;Boolean);
	.uleb128	18
	.ascii	"SETAUTOREDRAW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	816
	.byte	34
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetLazFont(<TCanvas>;TFont);
	.uleb128	25
	.ascii	"SETLAZFONT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef SetLazPen(<TCanvas>;TPen);
	.uleb128	25
	.ascii	"SETLAZPEN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La1040-.Ldebug_info0
	.byte	0
# Procdef SetLazBrush(<TCanvas>;TBrush);
	.uleb128	25
	.ascii	"SETLAZBRUSH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La466-.Ldebug_info0
	.byte	0
# Procdef SetRegion(<TCanvas>;TRegion);
	.uleb128	25
	.ascii	"SETREGION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La545-.Ldebug_info0
	.byte	0
# Procdef DoCreateDefaultFont(<TCanvas>):TFPCustomFont;
	.uleb128	31
	.ascii	"DOCREATEDEFAULTFONT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	240
	.byte	34
	.byte	2
	.long	.La1043-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef DoCreateDefaultPen(<TCanvas>):TFPCustomPen;
	.uleb128	31
	.ascii	"DOCREATEDEFAULTPEN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	248
	.byte	34
	.byte	2
	.long	.La1046-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef DoCreateDefaultBrush(<TCanvas>):TFPCustomBrush;
	.uleb128	31
	.ascii	"DOCREATEDEFAULTBRUSH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	256
	.byte	34
	.byte	2
	.long	.La964-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef SetColor(<TCanvas>;LongInt;LongInt;const TFPColor);
	.uleb128	18
	.ascii	"SETCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	312
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La975-.Ldebug_info0
	.byte	0
# Procdef GetColor(<TCanvas>;LongInt;LongInt):<record type>;
	.uleb128	31
	.ascii	"GETCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	320
	.byte	34
	.byte	2
	.long	.La975-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetHeight(<TCanvas>;LongInt);
	.uleb128	18
	.ascii	"SETHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	328
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetHeight(<TCanvas>):LongInt;
	.uleb128	31
	.ascii	"GETHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	336
	.byte	34
	.byte	2
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef SetWidth(<TCanvas>;LongInt);
	.uleb128	18
	.ascii	"SETWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	344
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetWidth(<TCanvas>):LongInt;
	.uleb128	31
	.ascii	"GETWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	352
	.byte	34
	.byte	2
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef SetPenPos(<TCanvas>;const TPoint);
	.uleb128	18
	.ascii	"SETPENPOS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef DoLockCanvas(<TCanvas>);
	.uleb128	18
	.ascii	"DOLOCKCANVAS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	400
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef DoUnlockCanvas(<TCanvas>);
	.uleb128	18
	.ascii	"DOUNLOCKCANVAS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	408
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef DoTextOut(<TCanvas>;LongInt;LongInt;AnsiString);
	.uleb128	18
	.ascii	"DOTEXTOUT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	416
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
# Symbol TEXT
	.uleb128	27
	.ascii	"TEXT\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef DoGetTextSize(<TCanvas>;AnsiString;var LongInt;var LongInt);
	.uleb128	18
	.ascii	"DOGETTEXTSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	424
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol TEXT
	.uleb128	27
	.ascii	"TEXT\000"
	.long	.La59-.Ldebug_info0
# Symbol W
	.uleb128	27
	.ascii	"W\000"
	.long	.La6-.Ldebug_info0
# Symbol H
	.uleb128	27
	.ascii	"H\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef DoGetTextHeight(<TCanvas>;AnsiString):LongInt;
	.uleb128	31
	.ascii	"DOGETTEXTHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	432
	.byte	34
	.byte	2
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol TEXT
	.uleb128	27
	.ascii	"TEXT\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef DoGetTextWidth(<TCanvas>;AnsiString):LongInt;
	.uleb128	31
	.ascii	"DOGETTEXTWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	440
	.byte	34
	.byte	2
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol TEXT
	.uleb128	27
	.ascii	"TEXT\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef DoRectangle(<TCanvas>;const TRect);
	.uleb128	18
	.ascii	"DORECTANGLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	480
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol BOUNDS
	.uleb128	27
	.ascii	"BOUNDS\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef DoRectangleFill(<TCanvas>;const TRect);
	.uleb128	18
	.ascii	"DORECTANGLEFILL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	488
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol BOUNDS
	.uleb128	27
	.ascii	"BOUNDS\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef DoRectangleAndFill(<TCanvas>;const TRect);
	.uleb128	18
	.ascii	"DORECTANGLEANDFILL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	496
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol BOUNDS
	.uleb128	27
	.ascii	"BOUNDS\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef DoEllipse(<TCanvas>;const TRect);
	.uleb128	18
	.ascii	"DOELLIPSE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	512
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol BOUNDS
	.uleb128	27
	.ascii	"BOUNDS\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef DoEllipseFill(<TCanvas>;const TRect);
	.uleb128	18
	.ascii	"DOELLIPSEFILL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	504
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol BOUNDS
	.uleb128	27
	.ascii	"BOUNDS\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef DoEllipseAndFill(<TCanvas>;const TRect);
	.uleb128	18
	.ascii	"DOELLIPSEANDFILL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	520
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol BOUNDS
	.uleb128	27
	.ascii	"BOUNDS\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef DoPolygon(<TCanvas>;const {Open} Array Of TPoint;<const Int64>);
	.uleb128	18
	.ascii	"DOPOLYGON\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	536
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol POINTS
	.uleb128	27
	.ascii	"POINTS\000"
	.long	.La1049-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	27
	.ascii	"highPOINTS\000"
	.long	.La168-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La1049:
	.uleb128	38
	.long	.La517-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.byte	0
.La1050:
	.uleb128	11
	.long	.La1049-.Ldebug_info0
	.byte	0
# Procdef DoPolygonFill(<TCanvas>;const {Open} Array Of TPoint;<const Int64>);
	.uleb128	18
	.ascii	"DOPOLYGONFILL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	528
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol POINTS
	.uleb128	27
	.ascii	"POINTS\000"
	.long	.La1051-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	27
	.ascii	"highPOINTS\000"
	.long	.La168-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La1051:
	.uleb128	38
	.long	.La517-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.byte	0
.La1052:
	.uleb128	11
	.long	.La1051-.Ldebug_info0
	.byte	0
# Procdef DoPolygonAndFill(<TCanvas>;const {Open} Array Of TPoint;<const Int64>);
	.uleb128	18
	.ascii	"DOPOLYGONANDFILL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	544
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol POINTS
	.uleb128	27
	.ascii	"POINTS\000"
	.long	.La1053-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	27
	.ascii	"highPOINTS\000"
	.long	.La168-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La1053:
	.uleb128	38
	.long	.La517-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.byte	0
.La1054:
	.uleb128	11
	.long	.La1053-.Ldebug_info0
	.byte	0
# Procdef DoPolyline(<TCanvas>;const {Open} Array Of TPoint;<const Int64>);
	.uleb128	18
	.ascii	"DOPOLYLINE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	552
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol POINTS
	.uleb128	27
	.ascii	"POINTS\000"
	.long	.La1055-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	27
	.ascii	"highPOINTS\000"
	.long	.La168-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La1055:
	.uleb128	38
	.long	.La517-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.byte	0
.La1056:
	.uleb128	11
	.long	.La1055-.Ldebug_info0
	.byte	0
# Procdef DoPolyBezier(<TCanvas>;PPoint;LongInt;Boolean="FALSE";Boolean="FALSE");
	.uleb128	18
	.ascii	"DOPOLYBEZIER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	616
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol POINTS
	.uleb128	27
	.ascii	"POINTS\000"
	.long	.La1057-.Ldebug_info0
# Symbol NUMPTS
	.uleb128	27
	.ascii	"NUMPTS\000"
	.long	.La6-.Ldebug_info0
# Symbol FILLED
	.uleb128	27
	.ascii	"FILLED\000"
	.long	.La38-.Ldebug_info0
# Symbol CONTINUOUS
	.uleb128	27
	.ascii	"CONTINUOUS\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef DoFloodFill(<TCanvas>;LongInt;LongInt);
	.uleb128	18
	.ascii	"DOFLOODFILL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	560
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef DoMoveTo(<TCanvas>;LongInt;LongInt);
	.uleb128	18
	.ascii	"DOMOVETO\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	568
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef DoLineTo(<TCanvas>;LongInt;LongInt);
	.uleb128	18
	.ascii	"DOLINETO\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	576
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef DoLine(<TCanvas>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	18
	.ascii	"DOLINE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	584
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X1
	.uleb128	27
	.ascii	"X1\000"
	.long	.La6-.Ldebug_info0
# Symbol Y1
	.uleb128	27
	.ascii	"Y1\000"
	.long	.La6-.Ldebug_info0
# Symbol X2
	.uleb128	27
	.ascii	"X2\000"
	.long	.La6-.Ldebug_info0
# Symbol Y2
	.uleb128	27
	.ascii	"Y2\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef DoCopyRect(<TCanvas>;LongInt;LongInt;TFPCustomCanvas;const TRect);
	.uleb128	18
	.ascii	"DOCOPYRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	592
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
# Symbol SRCCANVAS
	.uleb128	27
	.ascii	"SRCCANVAS\000"
	.long	.La1031-.Ldebug_info0
# Symbol SOURCERECT
	.uleb128	27
	.ascii	"SOURCERECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef DoDraw(<TCanvas>;LongInt;LongInt;const TFPCustomImage);
	.uleb128	18
	.ascii	"DODRAW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	600
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
# Symbol IMAGE
	.uleb128	27
	.ascii	"IMAGE\000"
	.long	.La1059-.Ldebug_info0
	.byte	0
# Procdef CheckHelper(<TCanvas>;TFPCanvasHelper);
	.uleb128	18
	.ascii	"CHECKHELPER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	624
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol AHELPER
	.uleb128	27
	.ascii	"AHELPER\000"
	.long	.La972-.Ldebug_info0
	.byte	0
# Procdef GetDefaultColor(<TCanvas>;const TDefaultColorType):LongInt;
	.uleb128	31
	.ascii	"GETDEFAULTCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	824
	.byte	34
	.byte	2
	.long	.La529-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ADEFAULTCOLORTYPE
	.uleb128	27
	.ascii	"ADEFAULTCOLORTYPE\000"
	.long	.La658-.Ldebug_info0
	.byte	0
# Procdef GetClipRect(<TCanvas>;<var TRect>):<record type>;
	.uleb128	31
	.ascii	"GETCLIPRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	360
	.byte	34
	.byte	2
	.long	.La311-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef SetClipRect(<TCanvas>;const TRect);
	.uleb128	18
	.ascii	"SETCLIPRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	368
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef GetClipping(<TCanvas>):Boolean;
	.uleb128	31
	.ascii	"GETCLIPPING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	376
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef SetClipping(<TCanvas>;const Boolean);
	.uleb128	18
	.ascii	"SETCLIPPING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	384
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef GetPixel(<TCanvas>;LongInt;LongInt):LongInt;
	.uleb128	31
	.ascii	"GETPIXEL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	832
	.byte	34
	.byte	2
	.long	.La529-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef CreateBrush(<TCanvas>);
	.uleb128	18
	.ascii	"CREATEBRUSH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	840
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef CreateFont(<TCanvas>);
	.uleb128	18
	.ascii	"CREATEFONT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	848
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef CreateHandle(<TCanvas>);
	.uleb128	18
	.ascii	"CREATEHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	856
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef CreatePen(<TCanvas>);
	.uleb128	18
	.ascii	"CREATEPEN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	864
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef CreateRegion(<TCanvas>);
	.uleb128	18
	.ascii	"CREATEREGION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	872
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef DeselectHandles(<TCanvas>);
	.uleb128	18
	.ascii	"DESELECTHANDLES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	880
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef PenChanging(<TCanvas>;TObject);
	.uleb128	18
	.ascii	"PENCHANGING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	888
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol APEN
	.uleb128	27
	.ascii	"APEN\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef FontChanging(<TCanvas>;TObject);
	.uleb128	18
	.ascii	"FONTCHANGING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	896
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol AFONT
	.uleb128	27
	.ascii	"AFONT\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef BrushChanging(<TCanvas>;TObject);
	.uleb128	18
	.ascii	"BRUSHCHANGING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	904
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ABRUSH
	.uleb128	27
	.ascii	"ABRUSH\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef RegionChanging(<TCanvas>;TObject);
	.uleb128	18
	.ascii	"REGIONCHANGING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	912
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol AREGION
	.uleb128	27
	.ascii	"AREGION\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef RealizeAutoRedraw(<TCanvas>);
	.uleb128	18
	.ascii	"REALIZEAUTOREDRAW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	920
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef RealizeAntialiasing(<TCanvas>);
	.uleb128	18
	.ascii	"REALIZEANTIALIASING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	928
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef RequiredState(<TCanvas>;TCanvasState);
	.uleb128	18
	.ascii	"REQUIREDSTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	936
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol REQSTATE
	.uleb128	27
	.ascii	"REQSTATE\000"
	.long	.La1036-.Ldebug_info0
	.byte	0
# Procdef SetHandle(<TCanvas>;QWord);
	.uleb128	18
	.ascii	"SETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	944
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol NEWHANDLE
	.uleb128	27
	.ascii	"NEWHANDLE\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef SetInternalPenPos(<TCanvas>;const TPoint);
	.uleb128	18
	.ascii	"SETINTERNALPENPOS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	952
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef SetPixel(<TCanvas>;LongInt;LongInt;TGraphicsColor);
	.uleb128	18
	.ascii	"SETPIXEL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	960
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La529-.Ldebug_info0
	.byte	0
# Procdef FreeHandle(<TCanvas>);
	.uleb128	18
	.ascii	"FREEHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	968
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TCanvas>;<Pointer>);
	.uleb128	20
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TCanvas>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef Lock(<TCanvas>);
	.uleb128	28
	.ascii	"LOCK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	976
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef TryLock(<TCanvas>):Boolean;
	.uleb128	20
	.ascii	"TRYLOCK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef Unlock(<TCanvas>);
	.uleb128	28
	.ascii	"UNLOCK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	984
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef Refresh(<TCanvas>);
	.uleb128	28
	.ascii	"REFRESH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	992
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef Changing(<TCanvas>);
	.uleb128	28
	.ascii	"CHANGING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1000
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef Changed(<TCanvas>);
	.uleb128	28
	.ascii	"CHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1008
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef SaveHandleState(<TCanvas>);
	.uleb128	28
	.ascii	"SAVEHANDLESTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1016
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef RestoreHandleState(<TCanvas>);
	.uleb128	28
	.ascii	"RESTOREHANDLESTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1024
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef Arc(<TCanvas>;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt);
	.uleb128	28
	.ascii	"ARC\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1032
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ALEFT
	.uleb128	27
	.ascii	"ALEFT\000"
	.long	.La6-.Ldebug_info0
# Symbol ATOP
	.uleb128	27
	.ascii	"ATOP\000"
	.long	.La6-.Ldebug_info0
# Symbol ARIGHT
	.uleb128	27
	.ascii	"ARIGHT\000"
	.long	.La6-.Ldebug_info0
# Symbol ABOTTOM
	.uleb128	27
	.ascii	"ABOTTOM\000"
	.long	.La6-.Ldebug_info0
# Symbol ANGLE16DEG
	.uleb128	27
	.ascii	"ANGLE16DEG\000"
	.long	.La6-.Ldebug_info0
# Symbol ANGLE16DEGLENGTH
	.uleb128	27
	.ascii	"ANGLE16DEGLENGTH\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Arc(<TCanvas>;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt);
	.uleb128	28
	.ascii	"ARC\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1040
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ALEFT
	.uleb128	27
	.ascii	"ALEFT\000"
	.long	.La6-.Ldebug_info0
# Symbol ATOP
	.uleb128	27
	.ascii	"ATOP\000"
	.long	.La6-.Ldebug_info0
# Symbol ARIGHT
	.uleb128	27
	.ascii	"ARIGHT\000"
	.long	.La6-.Ldebug_info0
# Symbol ABOTTOM
	.uleb128	27
	.ascii	"ABOTTOM\000"
	.long	.La6-.Ldebug_info0
# Symbol SX
	.uleb128	27
	.ascii	"SX\000"
	.long	.La6-.Ldebug_info0
# Symbol SY
	.uleb128	27
	.ascii	"SY\000"
	.long	.La6-.Ldebug_info0
# Symbol EX
	.uleb128	27
	.ascii	"EX\000"
	.long	.La6-.Ldebug_info0
# Symbol EY
	.uleb128	27
	.ascii	"EY\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef ArcTo(<TCanvas>;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt);
	.uleb128	28
	.ascii	"ARCTO\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1048
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ALEFT
	.uleb128	27
	.ascii	"ALEFT\000"
	.long	.La6-.Ldebug_info0
# Symbol ATOP
	.uleb128	27
	.ascii	"ATOP\000"
	.long	.La6-.Ldebug_info0
# Symbol ARIGHT
	.uleb128	27
	.ascii	"ARIGHT\000"
	.long	.La6-.Ldebug_info0
# Symbol ABOTTOM
	.uleb128	27
	.ascii	"ABOTTOM\000"
	.long	.La6-.Ldebug_info0
# Symbol SX
	.uleb128	27
	.ascii	"SX\000"
	.long	.La6-.Ldebug_info0
# Symbol SY
	.uleb128	27
	.ascii	"SY\000"
	.long	.La6-.Ldebug_info0
# Symbol EX
	.uleb128	27
	.ascii	"EX\000"
	.long	.La6-.Ldebug_info0
# Symbol EY
	.uleb128	27
	.ascii	"EY\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef AngleArc(<TCanvas>;LongInt;LongInt;LongWord;Single;Single);
	.uleb128	29
	.ascii	"ANGLEARC\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
# Symbol RADIUS
	.uleb128	27
	.ascii	"RADIUS\000"
	.long	.La17-.Ldebug_info0
# Symbol STARTANGLE
	.uleb128	27
	.ascii	"STARTANGLE\000"
	.long	.La856-.Ldebug_info0
# Symbol SWEEPANGLE
	.uleb128	27
	.ascii	"SWEEPANGLE\000"
	.long	.La856-.Ldebug_info0
	.byte	0
# Procdef BrushCopy(<TCanvas>;TRect;TBitmap;TRect;TGraphicsColor);
	.uleb128	28
	.ascii	"BRUSHCOPY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1056
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ADESTRECT
	.uleb128	27
	.ascii	"ADESTRECT\000"
	.long	.La311-.Ldebug_info0
# Symbol ABITMAP
	.uleb128	27
	.ascii	"ABITMAP\000"
	.long	.La325-.Ldebug_info0
# Symbol ASOURCERECT
	.uleb128	27
	.ascii	"ASOURCERECT\000"
	.long	.La311-.Ldebug_info0
# Symbol ATRANSPARENTCOLOR
	.uleb128	27
	.ascii	"ATRANSPARENTCOLOR\000"
	.long	.La529-.Ldebug_info0
	.byte	0
# Procdef Chord(<TCanvas>;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt);
	.uleb128	28
	.ascii	"CHORD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1064
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X1
	.uleb128	27
	.ascii	"X1\000"
	.long	.La6-.Ldebug_info0
# Symbol Y1
	.uleb128	27
	.ascii	"Y1\000"
	.long	.La6-.Ldebug_info0
# Symbol X2
	.uleb128	27
	.ascii	"X2\000"
	.long	.La6-.Ldebug_info0
# Symbol Y2
	.uleb128	27
	.ascii	"Y2\000"
	.long	.La6-.Ldebug_info0
# Symbol ANGLE16DEG
	.uleb128	27
	.ascii	"ANGLE16DEG\000"
	.long	.La6-.Ldebug_info0
# Symbol ANGLE16DEGLENGTH
	.uleb128	27
	.ascii	"ANGLE16DEGLENGTH\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Chord(<TCanvas>;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt);
	.uleb128	28
	.ascii	"CHORD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1072
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X1
	.uleb128	27
	.ascii	"X1\000"
	.long	.La6-.Ldebug_info0
# Symbol Y1
	.uleb128	27
	.ascii	"Y1\000"
	.long	.La6-.Ldebug_info0
# Symbol X2
	.uleb128	27
	.ascii	"X2\000"
	.long	.La6-.Ldebug_info0
# Symbol Y2
	.uleb128	27
	.ascii	"Y2\000"
	.long	.La6-.Ldebug_info0
# Symbol SX
	.uleb128	27
	.ascii	"SX\000"
	.long	.La6-.Ldebug_info0
# Symbol SY
	.uleb128	27
	.ascii	"SY\000"
	.long	.La6-.Ldebug_info0
# Symbol EX
	.uleb128	27
	.ascii	"EX\000"
	.long	.La6-.Ldebug_info0
# Symbol EY
	.uleb128	27
	.ascii	"EY\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef CopyRect(<TCanvas>;const TRect;TCanvas;const TRect);
	.uleb128	28
	.ascii	"COPYRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1080
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol DEST
	.uleb128	27
	.ascii	"DEST\000"
	.long	.La311-.Ldebug_info0
# Symbol SRCCANVAS
	.uleb128	27
	.ascii	"SRCCANVAS\000"
	.long	.La542-.Ldebug_info0
# Symbol SOURCE
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef Draw(<TCanvas>;LongInt;LongInt;TGraphic);
	.uleb128	28
	.ascii	"DRAW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1088
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
# Symbol SRCGRAPHIC
	.uleb128	27
	.ascii	"SRCGRAPHIC\000"
	.long	.La1062-.Ldebug_info0
	.byte	0
# Procdef DrawFocusRect(<TCanvas>;const TRect);
	.uleb128	28
	.ascii	"DRAWFOCUSRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1096
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef StretchDraw(<TCanvas>;const TRect;TGraphic);
	.uleb128	28
	.ascii	"STRETCHDRAW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1104
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol DESTRECT
	.uleb128	27
	.ascii	"DESTRECT\000"
	.long	.La311-.Ldebug_info0
# Symbol SRCGRAPHIC
	.uleb128	27
	.ascii	"SRCGRAPHIC\000"
	.long	.La1062-.Ldebug_info0
	.byte	0
# Procdef Ellipse(<TCanvas>;const TRect);
	.uleb128	29
	.ascii	"ELLIPSE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef Ellipse(<TCanvas>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	28
	.ascii	"ELLIPSE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1112
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X1
	.uleb128	27
	.ascii	"X1\000"
	.long	.La6-.Ldebug_info0
# Symbol Y1
	.uleb128	27
	.ascii	"Y1\000"
	.long	.La6-.Ldebug_info0
# Symbol X2
	.uleb128	27
	.ascii	"X2\000"
	.long	.La6-.Ldebug_info0
# Symbol Y2
	.uleb128	27
	.ascii	"Y2\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef FillRect(<TCanvas>;const TRect);
	.uleb128	28
	.ascii	"FILLRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1120
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef FillRect(<TCanvas>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	29
	.ascii	"FILLRECT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X1
	.uleb128	27
	.ascii	"X1\000"
	.long	.La6-.Ldebug_info0
# Symbol Y1
	.uleb128	27
	.ascii	"Y1\000"
	.long	.La6-.Ldebug_info0
# Symbol X2
	.uleb128	27
	.ascii	"X2\000"
	.long	.La6-.Ldebug_info0
# Symbol Y2
	.uleb128	27
	.ascii	"Y2\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef FloodFill(<TCanvas>;LongInt;LongInt;TGraphicsColor;TGraphicsFillStyle);
	.uleb128	28
	.ascii	"FLOODFILL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1128
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
# Symbol FILLCOLOR
	.uleb128	27
	.ascii	"FILLCOLOR\000"
	.long	.La529-.Ldebug_info0
# Symbol FILLSTYLE
	.uleb128	27
	.ascii	"FILLSTYLE\000"
	.long	.La1065-.Ldebug_info0
	.byte	0
# Procdef Frame3d(<TCanvas>;var TRect;const LongInt;const TGraphicsBevelCut);
	.uleb128	28
	.ascii	"FRAME3D\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1136
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
# Symbol FRAMEWIDTH
	.uleb128	27
	.ascii	"FRAMEWIDTH\000"
	.long	.La6-.Ldebug_info0
# Symbol STYLE
	.uleb128	27
	.ascii	"STYLE\000"
	.long	.La1067-.Ldebug_info0
	.byte	0
# Procdef Frame3d(<TCanvas>;var TRect;TGraphicsColor;TGraphicsColor;const LongInt);
	.uleb128	29
	.ascii	"FRAME3D\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
# Symbol TOPCOLOR
	.uleb128	27
	.ascii	"TOPCOLOR\000"
	.long	.La529-.Ldebug_info0
# Symbol BOTTOMCOLOR
	.uleb128	27
	.ascii	"BOTTOMCOLOR\000"
	.long	.La529-.Ldebug_info0
# Symbol FRAMEWIDTH
	.uleb128	27
	.ascii	"FRAMEWIDTH\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Frame(<TCanvas>;const TRect);
	.uleb128	28
	.ascii	"FRAME\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1144
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef Frame(<TCanvas>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	29
	.ascii	"FRAME\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X1
	.uleb128	27
	.ascii	"X1\000"
	.long	.La6-.Ldebug_info0
# Symbol Y1
	.uleb128	27
	.ascii	"Y1\000"
	.long	.La6-.Ldebug_info0
# Symbol X2
	.uleb128	27
	.ascii	"X2\000"
	.long	.La6-.Ldebug_info0
# Symbol Y2
	.uleb128	27
	.ascii	"Y2\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef FrameRect(<TCanvas>;const TRect);
	.uleb128	28
	.ascii	"FRAMERECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1152
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef FrameRect(<TCanvas>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	29
	.ascii	"FRAMERECT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X1
	.uleb128	27
	.ascii	"X1\000"
	.long	.La6-.Ldebug_info0
# Symbol Y1
	.uleb128	27
	.ascii	"Y1\000"
	.long	.La6-.Ldebug_info0
# Symbol X2
	.uleb128	27
	.ascii	"X2\000"
	.long	.La6-.Ldebug_info0
# Symbol Y2
	.uleb128	27
	.ascii	"Y2\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetTextMetrics(<TCanvas>;out TLCLTextMetric):Boolean;
	.uleb128	30
	.ascii	"GETTEXTMETRICS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1160
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol TM
	.uleb128	27
	.ascii	"TM\000"
	.long	.La1069-.Ldebug_info0
	.byte	0
# Procdef GradientFill(<TCanvas>;TRect;TGraphicsColor;TGraphicsColor;TGradientDirection);
	.uleb128	29
	.ascii	"GRADIENTFILL\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
# Symbol ASTART
	.uleb128	27
	.ascii	"ASTART\000"
	.long	.La529-.Ldebug_info0
# Symbol ASTOP
	.uleb128	27
	.ascii	"ASTOP\000"
	.long	.La529-.Ldebug_info0
# Symbol ADIRECTION
	.uleb128	27
	.ascii	"ADIRECTION\000"
	.long	.La1071-.Ldebug_info0
	.byte	0
# Procdef RadialPie(<TCanvas>;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt);
	.uleb128	28
	.ascii	"RADIALPIE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1168
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X1
	.uleb128	27
	.ascii	"X1\000"
	.long	.La6-.Ldebug_info0
# Symbol Y1
	.uleb128	27
	.ascii	"Y1\000"
	.long	.La6-.Ldebug_info0
# Symbol X2
	.uleb128	27
	.ascii	"X2\000"
	.long	.La6-.Ldebug_info0
# Symbol Y2
	.uleb128	27
	.ascii	"Y2\000"
	.long	.La6-.Ldebug_info0
# Symbol STARTANGLE16DEG
	.uleb128	27
	.ascii	"STARTANGLE16DEG\000"
	.long	.La6-.Ldebug_info0
# Symbol ANGLE16DEGLENGTH
	.uleb128	27
	.ascii	"ANGLE16DEGLENGTH\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Pie(<TCanvas>;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt);
	.uleb128	28
	.ascii	"PIE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1176
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ELLIPSEX1
	.uleb128	27
	.ascii	"ELLIPSEX1\000"
	.long	.La6-.Ldebug_info0
# Symbol ELLIPSEY1
	.uleb128	27
	.ascii	"ELLIPSEY1\000"
	.long	.La6-.Ldebug_info0
# Symbol ELLIPSEX2
	.uleb128	27
	.ascii	"ELLIPSEX2\000"
	.long	.La6-.Ldebug_info0
# Symbol ELLIPSEY2
	.uleb128	27
	.ascii	"ELLIPSEY2\000"
	.long	.La6-.Ldebug_info0
# Symbol STARTX
	.uleb128	27
	.ascii	"STARTX\000"
	.long	.La6-.Ldebug_info0
# Symbol STARTY
	.uleb128	27
	.ascii	"STARTY\000"
	.long	.La6-.Ldebug_info0
# Symbol ENDX
	.uleb128	27
	.ascii	"ENDX\000"
	.long	.La6-.Ldebug_info0
# Symbol ENDY
	.uleb128	27
	.ascii	"ENDY\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef PolyBezier(<TCanvas>;PPoint;LongInt;Boolean="FALSE";Boolean="FALSE");
	.uleb128	28
	.ascii	"POLYBEZIER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1184
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol POINTS
	.uleb128	27
	.ascii	"POINTS\000"
	.long	.La1057-.Ldebug_info0
# Symbol NUMPTS
	.uleb128	27
	.ascii	"NUMPTS\000"
	.long	.La6-.Ldebug_info0
# Symbol FILLED
	.uleb128	27
	.ascii	"FILLED\000"
	.long	.La38-.Ldebug_info0
# Symbol CONTINUOUS
	.uleb128	27
	.ascii	"CONTINUOUS\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef PolyBezier(<TCanvas>;const {Open} Array Of TPoint;<const Int64>;Boolean="FALSE";Boolean="FALSE");
	.uleb128	29
	.ascii	"POLYBEZIER\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol POINTS
	.uleb128	27
	.ascii	"POINTS\000"
	.long	.La1073-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	27
	.ascii	"highPOINTS\000"
	.long	.La168-.Ldebug_info0
# Symbol FILLED
	.uleb128	27
	.ascii	"FILLED\000"
	.long	.La38-.Ldebug_info0
# Symbol CONTINUOUS
	.uleb128	27
	.ascii	"CONTINUOUS\000"
	.long	.La38-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La1073:
	.uleb128	38
	.long	.La517-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.byte	0
.La1074:
	.uleb128	11
	.long	.La1073-.Ldebug_info0
	.byte	0
# Procdef Polygon(<TCanvas>;const {Open} Array Of TPoint;<const Int64>;Boolean;LongInt="0";LongInt="-1");
	.uleb128	29
	.ascii	"POLYGON\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol POINTS
	.uleb128	27
	.ascii	"POINTS\000"
	.long	.La1075-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	27
	.ascii	"highPOINTS\000"
	.long	.La168-.Ldebug_info0
# Symbol WINDING
	.uleb128	27
	.ascii	"WINDING\000"
	.long	.La38-.Ldebug_info0
# Symbol STARTINDEX
	.uleb128	27
	.ascii	"STARTINDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol NUMPTS
	.uleb128	27
	.ascii	"NUMPTS\000"
	.long	.La6-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La1075:
	.uleb128	38
	.long	.La517-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.byte	0
.La1076:
	.uleb128	11
	.long	.La1075-.Ldebug_info0
	.byte	0
# Procdef Polygon(<TCanvas>;PPoint;LongInt;Boolean="FALSE");
	.uleb128	28
	.ascii	"POLYGON\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1192
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol POINTS
	.uleb128	27
	.ascii	"POINTS\000"
	.long	.La1057-.Ldebug_info0
# Symbol NUMPTS
	.uleb128	27
	.ascii	"NUMPTS\000"
	.long	.La6-.Ldebug_info0
# Symbol WINDING
	.uleb128	27
	.ascii	"WINDING\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef Polygon(<TCanvas>;const {Open} Array Of TPoint;<const Int64>);
	.uleb128	29
	.ascii	"POLYGON\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol POINTS
	.uleb128	27
	.ascii	"POINTS\000"
	.long	.La1077-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	27
	.ascii	"highPOINTS\000"
	.long	.La168-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La1077:
	.uleb128	38
	.long	.La517-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.byte	0
.La1078:
	.uleb128	11
	.long	.La1077-.Ldebug_info0
	.byte	0
# Procdef Polyline(<TCanvas>;const {Open} Array Of TPoint;<const Int64>;LongInt;LongInt="-1");
	.uleb128	29
	.ascii	"POLYLINE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol POINTS
	.uleb128	27
	.ascii	"POINTS\000"
	.long	.La1079-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	27
	.ascii	"highPOINTS\000"
	.long	.La168-.Ldebug_info0
# Symbol STARTINDEX
	.uleb128	27
	.ascii	"STARTINDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol NUMPTS
	.uleb128	27
	.ascii	"NUMPTS\000"
	.long	.La6-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La1079:
	.uleb128	38
	.long	.La517-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.byte	0
.La1080:
	.uleb128	11
	.long	.La1079-.Ldebug_info0
	.byte	0
# Procdef Polyline(<TCanvas>;PPoint;LongInt);
	.uleb128	28
	.ascii	"POLYLINE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1200
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol POINTS
	.uleb128	27
	.ascii	"POINTS\000"
	.long	.La1057-.Ldebug_info0
# Symbol NUMPTS
	.uleb128	27
	.ascii	"NUMPTS\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Polyline(<TCanvas>;const {Open} Array Of TPoint;<const Int64>);
	.uleb128	29
	.ascii	"POLYLINE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol POINTS
	.uleb128	27
	.ascii	"POINTS\000"
	.long	.La1081-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	27
	.ascii	"highPOINTS\000"
	.long	.La168-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La1081:
	.uleb128	38
	.long	.La517-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.byte	0
.La1082:
	.uleb128	11
	.long	.La1081-.Ldebug_info0
	.byte	0
# Procdef Rectangle(<TCanvas>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	28
	.ascii	"RECTANGLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1208
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X1
	.uleb128	27
	.ascii	"X1\000"
	.long	.La6-.Ldebug_info0
# Symbol Y1
	.uleb128	27
	.ascii	"Y1\000"
	.long	.La6-.Ldebug_info0
# Symbol X2
	.uleb128	27
	.ascii	"X2\000"
	.long	.La6-.Ldebug_info0
# Symbol Y2
	.uleb128	27
	.ascii	"Y2\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Rectangle(<TCanvas>;const TRect);
	.uleb128	29
	.ascii	"RECTANGLE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef RoundRect(<TCanvas>;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt);
	.uleb128	28
	.ascii	"ROUNDRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1216
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X1
	.uleb128	27
	.ascii	"X1\000"
	.long	.La6-.Ldebug_info0
# Symbol Y1
	.uleb128	27
	.ascii	"Y1\000"
	.long	.La6-.Ldebug_info0
# Symbol X2
	.uleb128	27
	.ascii	"X2\000"
	.long	.La6-.Ldebug_info0
# Symbol Y2
	.uleb128	27
	.ascii	"Y2\000"
	.long	.La6-.Ldebug_info0
# Symbol RX
	.uleb128	27
	.ascii	"RX\000"
	.long	.La6-.Ldebug_info0
# Symbol RY
	.uleb128	27
	.ascii	"RY\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef RoundRect(<TCanvas>;const TRect;LongInt;LongInt);
	.uleb128	29
	.ascii	"ROUNDRECT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol RECT
	.uleb128	27
	.ascii	"RECT\000"
	.long	.La311-.Ldebug_info0
# Symbol RX
	.uleb128	27
	.ascii	"RX\000"
	.long	.La6-.Ldebug_info0
# Symbol RY
	.uleb128	27
	.ascii	"RY\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef TextOut(<TCanvas>;LongInt;LongInt;const AnsiString);
	.uleb128	28
	.ascii	"TEXTOUT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1224
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
# Symbol TEXT
	.uleb128	27
	.ascii	"TEXT\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef TextRect(<TCanvas>;const TRect;LongInt;LongInt;const AnsiString);
	.uleb128	29
	.ascii	"TEXTRECT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
# Symbol TEXT
	.uleb128	27
	.ascii	"TEXT\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef TextRect(<TCanvas>;TRect;LongInt;LongInt;const AnsiString;const TTextStyle);
	.uleb128	28
	.ascii	"TEXTRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1232
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol ARECT
	.uleb128	27
	.ascii	"ARECT\000"
	.long	.La311-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
# Symbol TEXT
	.uleb128	27
	.ascii	"TEXT\000"
	.long	.La59-.Ldebug_info0
# Symbol STYLE
	.uleb128	27
	.ascii	"STYLE\000"
	.long	.La1038-.Ldebug_info0
	.byte	0
# Procdef TextExtent(<TCanvas>;const AnsiString):<record type>;
	.uleb128	30
	.ascii	"TEXTEXTENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1240
	.byte	34
	.long	.La321-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol TEXT
	.uleb128	27
	.ascii	"TEXT\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef TextHeight(<TCanvas>;const AnsiString):LongInt;
	.uleb128	30
	.ascii	"TEXTHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1248
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol TEXT
	.uleb128	27
	.ascii	"TEXT\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef TextWidth(<TCanvas>;const AnsiString):LongInt;
	.uleb128	30
	.ascii	"TEXTWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1256
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol TEXT
	.uleb128	27
	.ascii	"TEXT\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef TextFitInfo(<TCanvas>;const AnsiString;LongInt):LongInt;
	.uleb128	20
	.ascii	"TEXTFITINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol TEXT
	.uleb128	27
	.ascii	"TEXT\000"
	.long	.La59-.Ldebug_info0
# Symbol MAXWIDTH
	.uleb128	27
	.ascii	"MAXWIDTH\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef HandleAllocated(<TCanvas>):Boolean;
	.uleb128	30
	.ascii	"HANDLEALLOCATED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1264
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
	.byte	0
# Procdef GetUpdatedHandle(<TCanvas>;TCanvasState):QWord;
	.uleb128	30
	.ascii	"GETUPDATEDHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	1272
	.byte	34
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La542-.Ldebug_info0
# Symbol REQSTATE
	.uleb128	27
	.ascii	"REQSTATE\000"
	.long	.La1036-.Ldebug_info0
	.byte	0
	.byte	0
.La543:
	.uleb128	11
	.long	.La542-.Ldebug_info0
# Definition TRegion
.La545:
	.uleb128	12
	.ascii	"TREGION\000"
	.long	.La1083-.Ldebug_info0
.La1083:
	.uleb128	15
	.long	.La547-.Ldebug_info0
.La547:
	.uleb128	16
	.ascii	"TREGION\000"
	.uleb128	64
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1086-.Ldebug_info0
	.uleb128	23
	.ascii	"FREFERENCE\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La1087-.Ldebug_info0
# Procdef AddOperation(<TRegion>;TRegionOperation);
	.uleb128	25
	.ascii	"ADDOPERATION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La545-.Ldebug_info0
# Symbol AOP
	.uleb128	27
	.ascii	"AOP\000"
	.long	.La1089-.Ldebug_info0
	.byte	0
# Procdef ClearSubRegions(<TRegion>);
	.uleb128	25
	.ascii	"CLEARSUBREGIONS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La545-.Ldebug_info0
	.byte	0
# Procdef AddSubRegion(<TRegion>;QWord);
	.uleb128	25
	.ascii	"ADDSUBREGION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La545-.Ldebug_info0
# Symbol AHANDLE
	.uleb128	27
	.ascii	"AHANDLE\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef FreeReference(<TRegion>);
	.uleb128	25
	.ascii	"FREEREFERENCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La545-.Ldebug_info0
	.byte	0
# Procdef GetReference(<TRegion>;<var TWSRegionReference>):TWSRegionReference;
	.uleb128	24
	.ascii	"GETREFERENCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La1087-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La545-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La1087-.Ldebug_info0
	.byte	0
# Procdef GetHandle(<TRegion>):QWord;
	.uleb128	24
	.ascii	"GETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La545-.Ldebug_info0
	.byte	0
# Procdef ReferenceNeeded(<TRegion>);
	.uleb128	25
	.ascii	"REFERENCENEEDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La545-.Ldebug_info0
	.byte	0
# Procdef SetHandle(<TRegion>;const QWord);
	.uleb128	25
	.ascii	"SETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La545-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef SetClipRect(<TRegion>;TRect);
	.uleb128	25
	.ascii	"SETCLIPRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La545-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef GetClipRect(<TRegion>;<var TRect>):<record type>;
	.uleb128	24
	.ascii	"GETCLIPRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La311-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La545-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TRegion>;<Pointer>);
	.uleb128	20
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La545-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La545-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TRegion>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La545-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef Assign(<TRegion>;TPersistent);
	.uleb128	28
	.ascii	"ASSIGN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	224
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La545-.Ldebug_info0
# Symbol SOURCE
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef AddRectangle(<TRegion>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	29
	.ascii	"ADDRECTANGLE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La545-.Ldebug_info0
# Symbol X1
	.uleb128	27
	.ascii	"X1\000"
	.long	.La6-.Ldebug_info0
# Symbol Y1
	.uleb128	27
	.ascii	"Y1\000"
	.long	.La6-.Ldebug_info0
# Symbol X2
	.uleb128	27
	.ascii	"X2\000"
	.long	.La6-.Ldebug_info0
# Symbol Y2
	.uleb128	27
	.ascii	"Y2\000"
	.long	.La6-.Ldebug_info0
	.byte	0
	.byte	0
.La546:
	.uleb128	11
	.long	.La545-.Ldebug_info0
# Definition TLCLComponent
.La549:
	.uleb128	12
	.ascii	"TLCLCOMPONENT\000"
	.long	.La1091-.Ldebug_info0
.La1091:
	.uleb128	15
	.long	.La551-.Ldebug_info0
.La551:
	.uleb128	16
	.ascii	"TLCLCOMPONENT\000"
	.uleb128	112
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La117-.Ldebug_info0
	.uleb128	23
	.ascii	"FWIDGETSETCLASS\000"
	.byte	2
	.byte	35
	.uleb128	96
	.byte	3
	.long	.La1092-.Ldebug_info0
	.uleb128	23
	.ascii	"FLCLREFCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"LCLREFCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"WIDGETSETCLASS\000"
	.byte	2
	.byte	35
	.uleb128	96
	.byte	3
	.long	.La1092-.Ldebug_info0
# Procdef class WSRegisterClass(<Class Of TLCLComponent>);
	.uleb128	18
	.ascii	"WSREGISTERCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	432
	.byte	34
	.byte	2
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La1094-.Ldebug_info0
	.byte	0
# Procdef class GetWSComponentClass(<Class Of TLCLComponent>;TLCLComponent):Class Of TWSLCLComponent;
	.uleb128	31
	.ascii	"GETWSCOMPONENTCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	440
	.byte	34
	.byte	2
	.long	.La1092-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La1096-.Ldebug_info0
# Symbol ASELF
	.uleb128	27
	.ascii	"ASELF\000"
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TLCLComponent>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La549-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	27
	.ascii	"THEOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TLCLComponent>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef class NewInstance(<Class Of TLCLComponent>):TObject;
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
	.long	.La56-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La1098-.Ldebug_info0
	.byte	0
# Procdef RemoveAllHandlersOfObject(<TLCLComponent>;TObject);
	.uleb128	28
	.ascii	"REMOVEALLHANDLERSOFOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	448
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol ANOBJECT
	.uleb128	27
	.ascii	"ANOBJECT\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef IncLCLRefCount(<TLCLComponent>);
	.uleb128	29
	.ascii	"INCLCLREFCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef DecLCLRefCount(<TLCLComponent>);
	.uleb128	29
	.ascii	"DECLCLREFCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
	.byte	0
.La550:
	.uleb128	11
	.long	.La549-.Ldebug_info0
# Definition TControlActionLink
.La552:
	.uleb128	12
	.ascii	"TCONTROLACTIONLINK\000"
	.long	.La1100-.Ldebug_info0
.La1100:
	.uleb128	15
	.long	.La554-.Ldebug_info0
.La554:
	.uleb128	16
	.ascii	"TCONTROLACTIONLINK\000"
	.uleb128	40
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1103-.Ldebug_info0
	.uleb128	23
	.ascii	"FCLIENT\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	2
	.long	.La239-.Ldebug_info0
# Procdef AssignClient(<TControlActionLink>;TObject);
	.uleb128	18
	.ascii	"ASSIGNCLIENT\000"
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La552-.Ldebug_info0
# Symbol ACLIENT
	.uleb128	27
	.ascii	"ACLIENT\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef SetCaption(<TControlActionLink>;const AnsiString);
	.uleb128	18
	.ascii	"SETCAPTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	272
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La552-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef SetEnabled(<TControlActionLink>;Boolean);
	.uleb128	18
	.ascii	"SETENABLED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	288
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La552-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetHint(<TControlActionLink>;const AnsiString);
	.uleb128	18
	.ascii	"SETHINT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	328
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La552-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef SetHelpContext(<TControlActionLink>;THelpContext);
	.uleb128	18
	.ascii	"SETHELPCONTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	304
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La552-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La586-.Ldebug_info0
	.byte	0
# Procdef SetHelpKeyword(<TControlActionLink>;const AnsiString);
	.uleb128	18
	.ascii	"SETHELPKEYWORD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	312
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La552-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef SetHelpType(<TControlActionLink>;THelpType);
	.uleb128	18
	.ascii	"SETHELPTYPE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	320
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La552-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La588-.Ldebug_info0
	.byte	0
# Procdef SetVisible(<TControlActionLink>;Boolean);
	.uleb128	18
	.ascii	"SETVISIBLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	352
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La552-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetOnExecute(<TControlActionLink>;TNotifyEvent);
	.uleb128	18
	.ascii	"SETONEXECUTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	232
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La552-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La81-.Ldebug_info0
	.byte	0
# Procdef IsOnExecuteLinked(<TControlActionLink>):Boolean;
	.uleb128	31
	.ascii	"ISONEXECUTELINKED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	216
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La552-.Ldebug_info0
	.byte	0
# Procdef DoShowHint(<TControlActionLink>;var AnsiString):Boolean;
	.uleb128	31
	.ascii	"DOSHOWHINT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	440
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La552-.Ldebug_info0
# Symbol HINTSTR
	.uleb128	27
	.ascii	"HINTSTR\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef IsCaptionLinked(<TControlActionLink>):Boolean;
	.uleb128	30
	.ascii	"ISCAPTIONLINKED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	360
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La552-.Ldebug_info0
	.byte	0
# Procdef IsEnabledLinked(<TControlActionLink>):Boolean;
	.uleb128	30
	.ascii	"ISENABLEDLINKED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	376
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La552-.Ldebug_info0
	.byte	0
# Procdef IsHelpLinked(<TControlActionLink>):Boolean;
	.uleb128	30
	.ascii	"ISHELPLINKED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	400
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La552-.Ldebug_info0
	.byte	0
# Procdef IsHintLinked(<TControlActionLink>):Boolean;
	.uleb128	30
	.ascii	"ISHINTLINKED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	408
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La552-.Ldebug_info0
	.byte	0
# Procdef IsVisibleLinked(<TControlActionLink>):Boolean;
	.uleb128	30
	.ascii	"ISVISIBLELINKED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	432
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La552-.Ldebug_info0
	.byte	0
	.byte	0
.La553:
	.uleb128	11
	.long	.La552-.Ldebug_info0
# Definition TAnchors
.La555:
	.uleb128	12
	.ascii	"TANCHORS\000"
	.long	.La1104-.Ldebug_info0
.La1104:
	.uleb128	42
	.ascii	"TANCHORS\000"
	.byte	7
	.short	4
.La556:
	.uleb128	11
	.long	.La555-.Ldebug_info0
# Definition TControl.Array[TAnchorKind] Of TAnchorSide
.La557:
	.uleb128	21
	.uleb128	32
	.long	.La626-.Ldebug_info0
	.uleb128	22
	.sleb128	0
	.sleb128	3
	.uleb128	8
	.long	.La629-.Ldebug_info0
	.byte	0
.La558:
	.uleb128	11
	.long	.La557-.Ldebug_info0
# Definition TBiDiMode
.La559:
	.uleb128	12
	.ascii	"TBIDIMODE\000"
	.long	.La1105-.Ldebug_info0
.La1105:
	.uleb128	34
	.ascii	"TBIDIMODE\000"
	.byte	4
	.uleb128	35
	.ascii	"BDLEFTTORIGHT\000"
	.long	0
	.uleb128	35
	.ascii	"BDRIGHTTOLEFT\000"
	.long	1
	.uleb128	35
	.ascii	"BDRIGHTTOLEFTNOALIGN\000"
	.long	2
	.uleb128	35
	.ascii	"BDRIGHTTOLEFTREADINGONLY\000"
	.long	3
	.byte	0
.La560:
	.uleb128	11
	.long	.La559-.Ldebug_info0
# Definition TControlBorderSpacing
.La561:
	.uleb128	12
	.ascii	"TCONTROLBORDERSPACING\000"
	.long	.La1106-.Ldebug_info0
.La1106:
	.uleb128	15
	.long	.La563-.Ldebug_info0
.La563:
	.uleb128	16
	.ascii	"TCONTROLBORDERSPACING\000"
	.uleb128	88
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La337-.Ldebug_info0
	.uleb128	23
	.ascii	"FAROUND\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FBOTTOM\000"
	.byte	2
	.byte	35
	.uleb128	28
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FCELLALIGNHORIZONTAL\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La1107-.Ldebug_info0
	.uleb128	23
	.ascii	"FCELLALIGNVERTICAL\000"
	.byte	2
	.byte	35
	.uleb128	36
	.byte	3
	.long	.La1107-.Ldebug_info0
	.uleb128	23
	.ascii	"FCONTROL\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"FINNERBORDER\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FLEFT\000"
	.byte	2
	.byte	35
	.uleb128	52
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FRIGHT\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FTOP\000"
	.byte	2
	.byte	35
	.uleb128	76
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FDEFAULT\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La1109-.Ldebug_info0
	.uleb128	23
	.ascii	"CONTROL\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"ONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"LEFT\000"
	.byte	2
	.byte	35
	.uleb128	52
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"TOP\000"
	.byte	2
	.byte	35
	.uleb128	76
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"RIGHT\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"BOTTOM\000"
	.byte	2
	.byte	35
	.uleb128	28
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"AROUND\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"INNERBORDER\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"CELLALIGNHORIZONTAL\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La1107-.Ldebug_info0
	.uleb128	23
	.ascii	"CELLALIGNVERTICAL\000"
	.byte	2
	.byte	35
	.uleb128	36
	.byte	3
	.long	.La1107-.Ldebug_info0
# Procdef GetAroundBottom(<TControlBorderSpacing>):LongInt;
	.uleb128	24
	.ascii	"GETAROUNDBOTTOM\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
	.byte	0
# Procdef GetAroundLeft(<TControlBorderSpacing>):LongInt;
	.uleb128	24
	.ascii	"GETAROUNDLEFT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
	.byte	0
# Procdef GetAroundRight(<TControlBorderSpacing>):LongInt;
	.uleb128	24
	.ascii	"GETAROUNDRIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
	.byte	0
# Procdef GetAroundTop(<TControlBorderSpacing>):LongInt;
	.uleb128	24
	.ascii	"GETAROUNDTOP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
	.byte	0
# Procdef GetControlBottom(<TControlBorderSpacing>):LongInt;
	.uleb128	24
	.ascii	"GETCONTROLBOTTOM\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
	.byte	0
# Procdef GetControlHeight(<TControlBorderSpacing>):LongInt;
	.uleb128	24
	.ascii	"GETCONTROLHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
	.byte	0
# Procdef GetControlLeft(<TControlBorderSpacing>):LongInt;
	.uleb128	24
	.ascii	"GETCONTROLLEFT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
	.byte	0
# Procdef GetControlRight(<TControlBorderSpacing>):LongInt;
	.uleb128	24
	.ascii	"GETCONTROLRIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
	.byte	0
# Procdef GetControlTop(<TControlBorderSpacing>):LongInt;
	.uleb128	24
	.ascii	"GETCONTROLTOP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
	.byte	0
# Procdef GetControlWidth(<TControlBorderSpacing>):LongInt;
	.uleb128	24
	.ascii	"GETCONTROLWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
	.byte	0
# Procdef IsAroundStored(<TControlBorderSpacing>):Boolean;
	.uleb128	24
	.ascii	"ISAROUNDSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
	.byte	0
# Procdef IsBottomStored(<TControlBorderSpacing>):Boolean;
	.uleb128	24
	.ascii	"ISBOTTOMSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
	.byte	0
# Procdef IsInnerBorderStored(<TControlBorderSpacing>):Boolean;
	.uleb128	24
	.ascii	"ISINNERBORDERSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
	.byte	0
# Procdef IsLeftStored(<TControlBorderSpacing>):Boolean;
	.uleb128	24
	.ascii	"ISLEFTSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
	.byte	0
# Procdef IsRightStored(<TControlBorderSpacing>):Boolean;
	.uleb128	24
	.ascii	"ISRIGHTSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
	.byte	0
# Procdef IsTopStored(<TControlBorderSpacing>):Boolean;
	.uleb128	24
	.ascii	"ISTOPSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
	.byte	0
# Procdef SetAround(<TControlBorderSpacing>;const LongInt);
	.uleb128	25
	.ascii	"SETAROUND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetBottom(<TControlBorderSpacing>;const LongInt);
	.uleb128	25
	.ascii	"SETBOTTOM\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetCellAlignHorizontal(<TControlBorderSpacing>;const TControlCellAlign);
	.uleb128	25
	.ascii	"SETCELLALIGNHORIZONTAL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La1107-.Ldebug_info0
	.byte	0
# Procdef SetCellAlignVertical(<TControlBorderSpacing>;const TControlCellAlign);
	.uleb128	25
	.ascii	"SETCELLALIGNVERTICAL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La1107-.Ldebug_info0
	.byte	0
# Procdef SetInnerBorder(<TControlBorderSpacing>;const LongInt);
	.uleb128	25
	.ascii	"SETINNERBORDER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetLeft(<TControlBorderSpacing>;const LongInt);
	.uleb128	25
	.ascii	"SETLEFT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetRight(<TControlBorderSpacing>;const LongInt);
	.uleb128	25
	.ascii	"SETRIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetSpace(<TControlBorderSpacing>;TAnchorKind;const LongInt);
	.uleb128	25
	.ascii	"SETSPACE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
# Symbol KIND
	.uleb128	27
	.ascii	"KIND\000"
	.long	.La629-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetTop(<TControlBorderSpacing>;const LongInt);
	.uleb128	25
	.ascii	"SETTOP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Change(<TControlBorderSpacing>;Boolean);
	.uleb128	18
	.ascii	"CHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	240
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
# Symbol INNERSPACECHANGED
	.uleb128	27
	.ascii	"INNERSPACECHANGED\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TControlBorderSpacing>;<Pointer>;TControl;PControlBorderSpacingDefault="nil");
	.uleb128	20
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La561-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol OWNERCONTROL
	.uleb128	27
	.ascii	"OWNERCONTROL\000"
	.long	.La239-.Ldebug_info0
# Symbol ADEFAULT
	.uleb128	27
	.ascii	"ADEFAULT\000"
	.long	.La1109-.Ldebug_info0
	.byte	0
# Procdef Assign(<TControlBorderSpacing>;TPersistent);
	.uleb128	28
	.ascii	"ASSIGN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	224
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
# Symbol SOURCE
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef AssignTo(<TControlBorderSpacing>;TPersistent);
	.uleb128	28
	.ascii	"ASSIGNTO\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	200
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
# Symbol DEST
	.uleb128	27
	.ascii	"DEST\000"
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef IsEqual(<TControlBorderSpacing>;TControlBorderSpacing):Boolean;
	.uleb128	20
	.ascii	"ISEQUAL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
# Symbol SPACING
	.uleb128	27
	.ascii	"SPACING\000"
	.long	.La561-.Ldebug_info0
	.byte	0
# Procdef GetSpaceAround(<TControlBorderSpacing>;var TRect);
	.uleb128	28
	.ascii	"GETSPACEAROUND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	248
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
# Symbol SPACEAROUND
	.uleb128	27
	.ascii	"SPACEAROUND\000"
	.long	.La311-.Ldebug_info0
	.byte	0
# Procdef GetSideSpace(<TControlBorderSpacing>;TAnchorKind):LongInt;
	.uleb128	20
	.ascii	"GETSIDESPACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
# Symbol KIND
	.uleb128	27
	.ascii	"KIND\000"
	.long	.La629-.Ldebug_info0
	.byte	0
# Procdef GetSpace(<TControlBorderSpacing>;TAnchorKind):LongInt;
	.uleb128	30
	.ascii	"GETSPACE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	256
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
# Symbol KIND
	.uleb128	27
	.ascii	"KIND\000"
	.long	.La629-.Ldebug_info0
	.byte	0
# Procdef AutoAdjustLayout(<TControlBorderSpacing>;const Double;const Double);
	.uleb128	29
	.ascii	"AUTOADJUSTLAYOUT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La561-.Ldebug_info0
# Symbol AXPROPORTION
	.uleb128	27
	.ascii	"AXPROPORTION\000"
	.long	.La459-.Ldebug_info0
# Symbol AYPROPORTION
	.uleb128	27
	.ascii	"AYPROPORTION\000"
	.long	.La459-.Ldebug_info0
	.byte	0
	.byte	0
.La562:
	.uleb128	11
	.long	.La561-.Ldebug_info0
# Definition TCaptureMouseButtons
.La564:
	.uleb128	12
	.ascii	"TCAPTUREMOUSEBUTTONS\000"
	.long	.La1111-.Ldebug_info0
.La1111:
	.uleb128	42
	.ascii	"TCAPTUREMOUSEBUTTONS\000"
	.byte	7
	.short	4
.La565:
	.uleb128	11
	.long	.La564-.Ldebug_info0
# Definition TSizeConstraints
.La566:
	.uleb128	12
	.ascii	"TSIZECONSTRAINTS\000"
	.long	.La1112-.Ldebug_info0
.La1112:
	.uleb128	15
	.long	.La568-.Ldebug_info0
.La568:
	.uleb128	16
	.ascii	"TSIZECONSTRAINTS\000"
	.uleb128	88
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La337-.Ldebug_info0
	.uleb128	23
	.ascii	"FCONTROL\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"FMAXHEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La639-.Ldebug_info0
	.uleb128	23
	.ascii	"FMAXINTERFACEHEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	36
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FMAXINTERFACEWIDTH\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FMAXWIDTH\000"
	.byte	2
	.byte	35
	.uleb128	44
	.byte	3
	.long	.La639-.Ldebug_info0
	.uleb128	23
	.ascii	"FMINHEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La639-.Ldebug_info0
	.uleb128	23
	.ascii	"FMININTERFACEHEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	52
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FMININTERFACEWIDTH\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FMINWIDTH\000"
	.byte	2
	.byte	35
	.uleb128	60
	.byte	3
	.long	.La639-.Ldebug_info0
	.uleb128	23
	.ascii	"FONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FOPTIONS\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La1113-.Ldebug_info0
	.uleb128	23
	.ascii	"MAXINTERFACEHEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	36
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"MAXINTERFACEWIDTH\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"MININTERFACEHEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	52
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"MININTERFACEWIDTH\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"CONTROL\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"OPTIONS\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La1113-.Ldebug_info0
	.uleb128	23
	.ascii	"ONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"MAXHEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La639-.Ldebug_info0
	.uleb128	23
	.ascii	"MAXWIDTH\000"
	.byte	2
	.byte	35
	.uleb128	44
	.byte	3
	.long	.La639-.Ldebug_info0
	.uleb128	23
	.ascii	"MINHEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La639-.Ldebug_info0
	.uleb128	23
	.ascii	"MINWIDTH\000"
	.byte	2
	.byte	35
	.uleb128	60
	.byte	3
	.long	.La639-.Ldebug_info0
# Procdef SetOptions(<TSizeConstraints>;const TSizeConstraintsOptions);
	.uleb128	25
	.ascii	"SETOPTIONS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La566-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La1113-.Ldebug_info0
	.byte	0
# Procdef Change(<TSizeConstraints>);
	.uleb128	18
	.ascii	"CHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	240
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La566-.Ldebug_info0
	.byte	0
# Procdef AssignTo(<TSizeConstraints>;TPersistent);
	.uleb128	18
	.ascii	"ASSIGNTO\000"
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La566-.Ldebug_info0
# Symbol DEST
	.uleb128	27
	.ascii	"DEST\000"
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef SetMaxHeight(<TSizeConstraints>;TConstraintSize);
	.uleb128	18
	.ascii	"SETMAXHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	248
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La566-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La639-.Ldebug_info0
	.byte	0
# Procdef SetMaxWidth(<TSizeConstraints>;TConstraintSize);
	.uleb128	18
	.ascii	"SETMAXWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	256
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La566-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La639-.Ldebug_info0
	.byte	0
# Procdef SetMinHeight(<TSizeConstraints>;TConstraintSize);
	.uleb128	18
	.ascii	"SETMINHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	264
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La566-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La639-.Ldebug_info0
	.byte	0
# Procdef SetMinWidth(<TSizeConstraints>;TConstraintSize);
	.uleb128	18
	.ascii	"SETMINWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	272
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La566-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La639-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TSizeConstraints>;<Pointer>;TControl);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	280
	.byte	34
	.long	.La566-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La566-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	27
	.ascii	"ACONTROL\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef UpdateInterfaceConstraints(<TSizeConstraints>);
	.uleb128	28
	.ascii	"UPDATEINTERFACECONSTRAINTS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	288
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La566-.Ldebug_info0
	.byte	0
# Procdef SetInterfaceConstraints(<TSizeConstraints>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	28
	.ascii	"SETINTERFACECONSTRAINTS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	296
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La566-.Ldebug_info0
# Symbol MINW
	.uleb128	27
	.ascii	"MINW\000"
	.long	.La6-.Ldebug_info0
# Symbol MINH
	.uleb128	27
	.ascii	"MINH\000"
	.long	.La6-.Ldebug_info0
# Symbol MAXW
	.uleb128	27
	.ascii	"MAXW\000"
	.long	.La6-.Ldebug_info0
# Symbol MAXH
	.uleb128	27
	.ascii	"MAXH\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef EffectiveMinWidth(<TSizeConstraints>):LongInt;
	.uleb128	30
	.ascii	"EFFECTIVEMINWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	304
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La566-.Ldebug_info0
	.byte	0
# Procdef EffectiveMinHeight(<TSizeConstraints>):LongInt;
	.uleb128	30
	.ascii	"EFFECTIVEMINHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	312
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La566-.Ldebug_info0
	.byte	0
# Procdef EffectiveMaxWidth(<TSizeConstraints>):LongInt;
	.uleb128	30
	.ascii	"EFFECTIVEMAXWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	320
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La566-.Ldebug_info0
	.byte	0
# Procdef EffectiveMaxHeight(<TSizeConstraints>):LongInt;
	.uleb128	30
	.ascii	"EFFECTIVEMAXHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	328
	.byte	34
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La566-.Ldebug_info0
	.byte	0
# Procdef MinMaxWidth(<TSizeConstraints>;LongInt):LongInt;
	.uleb128	20
	.ascii	"MINMAXWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La566-.Ldebug_info0
# Symbol WIDTH
	.uleb128	27
	.ascii	"WIDTH\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef MinMaxHeight(<TSizeConstraints>;LongInt):LongInt;
	.uleb128	20
	.ascii	"MINMAXHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La566-.Ldebug_info0
# Symbol HEIGHT
	.uleb128	27
	.ascii	"HEIGHT\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef AutoAdjustLayout(<TSizeConstraints>;const Double;const Double);
	.uleb128	29
	.ascii	"AUTOADJUSTLAYOUT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La566-.Ldebug_info0
# Symbol AXPROPORTION
	.uleb128	27
	.ascii	"AXPROPORTION\000"
	.long	.La459-.Ldebug_info0
# Symbol AYPROPORTION
	.uleb128	27
	.ascii	"AYPROPORTION\000"
	.long	.La459-.Ldebug_info0
	.byte	0
	.byte	0
.La567:
	.uleb128	11
	.long	.La566-.Ldebug_info0
# Definition TControlFlags
.La569:
	.uleb128	12
	.ascii	"TCONTROLFLAGS\000"
	.long	.La1115-.Ldebug_info0
.La1115:
	.uleb128	42
	.ascii	"TCONTROLFLAGS\000"
	.byte	7
	.short	4
.La570:
	.uleb128	11
	.long	.La569-.Ldebug_info0
# Definition TControl.Array[TControlHandlerType] Of TMethodList
.La571:
	.uleb128	21
	.uleb128	72
	.long	.La664-.Ldebug_info0
	.uleb128	22
	.sleb128	0
	.sleb128	8
	.uleb128	8
	.long	.La652-.Ldebug_info0
	.byte	0
.La572:
	.uleb128	11
	.long	.La571-.Ldebug_info0
# Definition TControlStyle
.La573:
	.uleb128	12
	.ascii	"TCONTROLSTYLE\000"
	.long	.La1116-.Ldebug_info0
.La1116:
	.uleb128	42
	.ascii	"TCONTROLSTYLE\000"
	.byte	7
	.short	4
.La574:
	.uleb128	11
	.long	.La573-.Ldebug_info0
# Definition TDockOrientation
.La575:
	.uleb128	12
	.ascii	"TDOCKORIENTATION\000"
	.long	.La1117-.Ldebug_info0
.La1117:
	.uleb128	34
	.ascii	"TDOCKORIENTATION\000"
	.byte	4
	.uleb128	35
	.ascii	"DONOORIENT\000"
	.long	0
	.uleb128	35
	.ascii	"DOHORIZONTAL\000"
	.long	1
	.uleb128	35
	.ascii	"DOVERTICAL\000"
	.long	2
	.uleb128	35
	.ascii	"DOPAGES\000"
	.long	3
	.byte	0
.La576:
	.uleb128	11
	.long	.La575-.Ldebug_info0
# Definition TDragKind
.La577:
	.uleb128	12
	.ascii	"TDRAGKIND\000"
	.long	.La1118-.Ldebug_info0
.La1118:
	.uleb128	34
	.ascii	"TDRAGKIND\000"
	.byte	4
	.uleb128	35
	.ascii	"DKDRAG\000"
	.long	0
	.uleb128	35
	.ascii	"DKDOCK\000"
	.long	1
	.byte	0
.La578:
	.uleb128	11
	.long	.La577-.Ldebug_info0
# Definition TDragMode
.La579:
	.uleb128	12
	.ascii	"TDRAGMODE\000"
	.long	.La1119-.Ldebug_info0
.La1119:
	.uleb128	34
	.ascii	"TDRAGMODE\000"
	.byte	4
	.uleb128	35
	.ascii	"DMMANUAL\000"
	.long	0
	.uleb128	35
	.ascii	"DMAUTOMATIC\000"
	.long	1
	.byte	0
.La580:
	.uleb128	11
	.long	.La579-.Ldebug_info0
# Definition TWinControlClass
.La581:
	.uleb128	12
	.ascii	"TWINCONTROLCLASS\000"
	.long	.La1120-.Ldebug_info0
.La1120:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La582:
	.uleb128	11
	.long	.La581-.Ldebug_info0
# Definition TFont
.La583:
	.uleb128	12
	.ascii	"TFONT\000"
	.long	.La1121-.Ldebug_info0
.La1121:
	.uleb128	15
	.long	.La585-.Ldebug_info0
.La585:
	.uleb128	16
	.ascii	"TFONT\000"
	.uleb128	160
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1045-.Ldebug_info0
	.uleb128	23
	.ascii	"FCANUTF8\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FCANUTF8VALID\000"
	.byte	2
	.byte	35
	.uleb128	105
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FISMONOSPACE\000"
	.byte	2
	.byte	35
	.uleb128	106
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FISMONOSPACEVALID\000"
	.byte	2
	.byte	35
	.uleb128	107
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FORIENTATION\000"
	.byte	2
	.byte	35
	.uleb128	108
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FPITCH\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La1122-.Ldebug_info0
	.uleb128	23
	.ascii	"FQUALITY\000"
	.byte	2
	.byte	35
	.uleb128	116
	.byte	3
	.long	.La1124-.Ldebug_info0
	.uleb128	23
	.ascii	"FSTYLE\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La1126-.Ldebug_info0
	.uleb128	23
	.ascii	"FCHARSET\000"
	.byte	2
	.byte	35
	.uleb128	124
	.byte	3
	.long	.La1128-.Ldebug_info0
	.uleb128	23
	.ascii	"FPIXELSPERINCH\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FUPDATECOUNT\000"
	.byte	3
	.byte	35
	.uleb128	132
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FCHANGED\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FFONTHANDLECACHED\000"
	.byte	3
	.byte	35
	.uleb128	137
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FCOLOR\000"
	.byte	3
	.byte	35
	.uleb128	140
	.byte	3
	.long	.La529-.Ldebug_info0
	.uleb128	23
	.ascii	"FHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	144
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FREFERENCE\000"
	.byte	3
	.byte	35
	.uleb128	152
	.byte	3
	.long	.La1130-.Ldebug_info0
	.uleb128	23
	.ascii	"PIXELSPERINCH\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"COLOR\000"
	.byte	3
	.byte	35
	.uleb128	140
	.byte	3
	.long	.La529-.Ldebug_info0
	.uleb128	23
	.ascii	"QUALITY\000"
	.byte	2
	.byte	35
	.uleb128	116
	.byte	3
	.long	.La1124-.Ldebug_info0
# Procdef FreeReference(<TFont>);
	.uleb128	25
	.ascii	"FREEREFERENCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef GetCanUTF8(<TFont>):Boolean;
	.uleb128	24
	.ascii	"GETCANUTF8\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef GetHandle(<TFont>):QWord;
	.uleb128	24
	.ascii	"GETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef GetData(<TFont>;<var TFontData>):<record type>;
	.uleb128	24
	.ascii	"GETDATA\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La1132-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La1132-.Ldebug_info0
	.byte	0
# Procdef GetIsMonoSpace(<TFont>):Boolean;
	.uleb128	24
	.ascii	"GETISMONOSPACE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef GetReference(<TFont>;<var TWSFontReference>):TWSFontReference;
	.uleb128	24
	.ascii	"GETREFERENCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La1130-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La1130-.Ldebug_info0
	.byte	0
# Procdef IsHeightStored(<TFont>):Boolean;
	.uleb128	24
	.ascii	"ISHEIGHTSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef IsNameStored(<TFont>):Boolean;
	.uleb128	24
	.ascii	"ISNAMESTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef SetData(<TFont>;const TFontData);
	.uleb128	25
	.ascii	"SETDATA\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol FONTDATA
	.uleb128	27
	.ascii	"FONTDATA\000"
	.long	.La1132-.Ldebug_info0
	.byte	0
# Procdef SetHandle(<TFont>;const QWord);
	.uleb128	25
	.ascii	"SETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La77-.Ldebug_info0
	.byte	0
# Procdef ReferenceNeeded(<TFont>);
	.uleb128	25
	.ascii	"REFERENCENEEDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef SetPixelsPerInch(<TFont>;const LongInt);
	.uleb128	25
	.ascii	"SETPIXELSPERINCH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol APIXELSPERINCH
	.uleb128	27
	.ascii	"APIXELSPERINCH\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetCharSet(<TFont>):Byte;
	.uleb128	24
	.ascii	"GETCHARSET\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La1128-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef GetHeight(<TFont>):LongInt;
	.uleb128	24
	.ascii	"GETHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef GetName(<TFont>;<var AnsiString>):AnsiString;
	.uleb128	24
	.ascii	"GETNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La59-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef GetOrientation(<TFont>):LongInt;
	.uleb128	24
	.ascii	"GETORIENTATION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef GetPitch(<TFont>):<enumeration type>;
	.uleb128	24
	.ascii	"GETPITCH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La1122-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef GetSize(<TFont>):LongInt;
	.uleb128	24
	.ascii	"GETSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef GetStyle(<TFont>):Set Of TFontStyle;
	.uleb128	24
	.ascii	"GETSTYLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La1134-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef Changed(<TFont>);
	.uleb128	18
	.ascii	"CHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	304
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef DoAllocateResources(<TFont>);
	.uleb128	18
	.ascii	"DOALLOCATERESOURCES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	264
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef DoCopyProps(<TFont>;TFPCanvasHelper);
	.uleb128	18
	.ascii	"DOCOPYPROPS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	280
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol FROM
	.uleb128	27
	.ascii	"FROM\000"
	.long	.La972-.Ldebug_info0
	.byte	0
# Procdef DoDeAllocateResources(<TFont>);
	.uleb128	18
	.ascii	"DODEALLOCATERESOURCES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	272
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef SetCharSet(<TFont>;const TFontCharSet);
	.uleb128	25
	.ascii	"SETCHARSET\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La1128-.Ldebug_info0
	.byte	0
# Procdef SetColor(<TFont>;const TGraphicsColor;const TFPColor);
	.uleb128	18
	.ascii	"SETCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	344
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol NEWCOLOR
	.uleb128	27
	.ascii	"NEWCOLOR\000"
	.long	.La529-.Ldebug_info0
# Symbol NEWFPCOLOR
	.uleb128	27
	.ascii	"NEWFPCOLOR\000"
	.long	.La975-.Ldebug_info0
	.byte	0
# Procdef SetColor(<TFont>;TGraphicsColor);
	.uleb128	25
	.ascii	"SETCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La529-.Ldebug_info0
	.byte	0
# Procdef GetColor(<TFont>):LongInt;
	.uleb128	24
	.ascii	"GETCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La529-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef SetFlags(<TFont>;LongInt;Boolean);
	.uleb128	18
	.ascii	"SETFLAGS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	248
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetFPColor(<TFont>;const TFPColor);
	.uleb128	18
	.ascii	"SETFPCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	288
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La975-.Ldebug_info0
	.byte	0
# Procdef SetHeight(<TFont>;LongInt);
	.uleb128	25
	.ascii	"SETHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetName(<TFont>;AnsiString);
	.uleb128	18
	.ascii	"SETNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	320
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef SetOrientation(<TFont>;LongInt);
	.uleb128	18
	.ascii	"SETORIENTATION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	336
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetPitch(<TFont>;TFontPitch);
	.uleb128	25
	.ascii	"SETPITCH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La1122-.Ldebug_info0
	.byte	0
# Procdef SetSize(<TFont>;LongInt);
	.uleb128	18
	.ascii	"SETSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	328
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetStyle(<TFont>;TFontStyles);
	.uleb128	25
	.ascii	"SETSTYLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La1134-.Ldebug_info0
	.byte	0
# Procdef SetQuality(<TFont>;const TFontQuality);
	.uleb128	25
	.ascii	"SETQUALITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La1124-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TFont>;<Pointer>);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	312
	.byte	34
	.long	.La583-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TFont>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef Assign(<TFont>;TPersistent);
	.uleb128	28
	.ascii	"ASSIGN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	224
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol SOURCE
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef Assign(<TFont>;const LOGFONTA);
	.uleb128	29
	.ascii	"ASSIGN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol ALOGFONT
	.uleb128	27
	.ascii	"ALOGFONT\000"
	.long	.La1136-.Ldebug_info0
	.byte	0
# Procdef BeginUpdate(<TFont>);
	.uleb128	29
	.ascii	"BEGINUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef EndUpdate(<TFont>);
	.uleb128	29
	.ascii	"ENDUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef HandleAllocated(<TFont>):Boolean;
	.uleb128	20
	.ascii	"HANDLEALLOCATED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef IsDefault(<TFont>):Boolean;
	.uleb128	20
	.ascii	"ISDEFAULT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef IsEqual(<TFont>;TFont):Boolean;
	.uleb128	30
	.ascii	"ISEQUAL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	352
	.byte	34
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
# Symbol AFONT
	.uleb128	27
	.ascii	"AFONT\000"
	.long	.La583-.Ldebug_info0
	.byte	0
# Procdef SetDefault(<TFont>);
	.uleb128	29
	.ascii	"SETDEFAULT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La583-.Ldebug_info0
	.byte	0
	.byte	0
.La584:
	.uleb128	11
	.long	.La583-.Ldebug_info0
# Definition THelpContext
.La586:
	.uleb128	12
	.ascii	"THELPCONTEXT\000"
	.long	.La1138-.Ldebug_info0
.La1138:
	.uleb128	51
	.ascii	"THELPCONTEXT\000"
	.sleb128	-2147483647
	.sleb128	2147483647
	.long	.La6-.Ldebug_info0
.La587:
	.uleb128	11
	.long	.La586-.Ldebug_info0
# Definition THelpType
.La588:
	.uleb128	12
	.ascii	"THELPTYPE\000"
	.long	.La1139-.Ldebug_info0
.La1139:
	.uleb128	34
	.ascii	"THELPTYPE\000"
	.byte	4
	.uleb128	35
	.ascii	"HTKEYWORD\000"
	.long	0
	.uleb128	35
	.ascii	"HTCONTEXT\000"
	.long	1
	.byte	0
.La589:
	.uleb128	11
	.long	.La588-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;var TConstraintSize;var TConstraintSize;var TConstraintSize;var TConstraintSize) of object;Register>
.La590:
	.uleb128	12
	.ascii	"TCONSTRAINEDRESIZEEVENT\000"
	.long	.La1140-.Ldebug_info0
.La1140:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1141-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La1141:
	.uleb128	37
	.ascii	"TCONSTRAINEDRESIZEEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"MINWIDTH\000"
	.long	.La639-.Ldebug_info0
	.uleb128	27
	.ascii	"MINHEIGHT\000"
	.long	.La639-.Ldebug_info0
	.uleb128	27
	.ascii	"MAXWIDTH\000"
	.long	.La639-.Ldebug_info0
	.uleb128	27
	.ascii	"MAXHEIGHT\000"
	.long	.La639-.Ldebug_info0
	.byte	0
.La591:
	.uleb128	11
	.long	.La590-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TPoint;var Boolean) of object;Register>
.La592:
	.uleb128	12
	.ascii	"TCONTEXTPOPUPEVENT\000"
	.long	.La1142-.Ldebug_info0
.La1142:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1143-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La1143:
	.uleb128	37
	.ascii	"TCONTEXTPOPUPEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"MOUSEPOS\000"
	.long	.La517-.Ldebug_info0
	.uleb128	27
	.ascii	"HANDLED\000"
	.long	.La38-.Ldebug_info0
	.byte	0
.La593:
	.uleb128	11
	.long	.La592-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TObject;LongInt;LongInt) of object;Register>
.La594:
	.uleb128	12
	.ascii	"TDRAGDROPEVENT\000"
	.long	.La1144-.Ldebug_info0
.La1144:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1145-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La1145:
	.uleb128	37
	.ascii	"TDRAGDROPEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
.La595:
	.uleb128	11
	.long	.La594-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TObject;LongInt;LongInt;TDragState;var Boolean) of object;Register>
.La596:
	.uleb128	12
	.ascii	"TDRAGOVEREVENT\000"
	.long	.La1146-.Ldebug_info0
.La1146:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1147-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La1147:
	.uleb128	37
	.ascii	"TDRAGOVEREVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.uleb128	27
	.ascii	"STATE\000"
	.long	.La525-.Ldebug_info0
	.uleb128	27
	.ascii	"ACCEPT\000"
	.long	.La38-.Ldebug_info0
	.byte	0
.La597:
	.uleb128	11
	.long	.La596-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TObject;LongInt;LongInt) of object;Register>
.La598:
	.uleb128	12
	.ascii	"TENDDRAGEVENT\000"
	.long	.La1148-.Ldebug_info0
.La1148:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1149-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La1149:
	.uleb128	37
	.ascii	"TENDDRAGEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"TARGET\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
.La599:
	.uleb128	11
	.long	.La598-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TMouseButton;TShiftState;LongInt;LongInt) of object;Register>
.La600:
	.uleb128	12
	.ascii	"TMOUSEEVENT\000"
	.long	.La1150-.Ldebug_info0
.La1150:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1151-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La1151:
	.uleb128	37
	.ascii	"TMOUSEEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"BUTTON\000"
	.long	.La633-.Ldebug_info0
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
.La601:
	.uleb128	11
	.long	.La600-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TShiftState;LongInt;LongInt) of object;Register>
.La602:
	.uleb128	12
	.ascii	"TMOUSEMOVEEVENT\000"
	.long	.La1152-.Ldebug_info0
.La1152:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1153-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La1153:
	.uleb128	37
	.ascii	"TMOUSEMOVEEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
.La603:
	.uleb128	11
	.long	.La602-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TShiftState;LongInt;TPoint;var Boolean) of object;Register>
.La604:
	.uleb128	12
	.ascii	"TMOUSEWHEELEVENT\000"
	.long	.La1154-.Ldebug_info0
.La1154:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1155-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La1155:
	.uleb128	37
	.ascii	"TMOUSEWHEELEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
	.uleb128	27
	.ascii	"WHEELDELTA\000"
	.long	.La6-.Ldebug_info0
	.uleb128	27
	.ascii	"MOUSEPOS\000"
	.long	.La517-.Ldebug_info0
	.uleb128	27
	.ascii	"HANDLED\000"
	.long	.La38-.Ldebug_info0
	.byte	0
.La605:
	.uleb128	11
	.long	.La604-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TShiftState;TPoint;var Boolean) of object;Register>
.La606:
	.uleb128	12
	.ascii	"TMOUSEWHEELUPDOWNEVENT\000"
	.long	.La1156-.Ldebug_info0
.La1156:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1157-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La1157:
	.uleb128	37
	.ascii	"TMOUSEWHEELUPDOWNEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"SHIFT\000"
	.long	.La376-.Ldebug_info0
	.uleb128	27
	.ascii	"MOUSEPOS\000"
	.long	.La517-.Ldebug_info0
	.uleb128	27
	.ascii	"HANDLED\000"
	.long	.La38-.Ldebug_info0
	.byte	0
.La607:
	.uleb128	11
	.long	.La606-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;PHintInfo) of object;Register>
.La608:
	.uleb128	12
	.ascii	"TCONTROLSHOWHINTEVENT\000"
	.long	.La1158-.Ldebug_info0
.La1158:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1159-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La1159:
	.uleb128	37
	.ascii	"TCONTROLSHOWHINTEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"HINTINFO\000"
	.long	.La650-.Ldebug_info0
	.byte	0
.La609:
	.uleb128	11
	.long	.La608-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;var TDragDockObject) of object;Register>
.La610:
	.uleb128	12
	.ascii	"TSTARTDOCKEVENT\000"
	.long	.La1160-.Ldebug_info0
.La1160:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1161-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La1161:
	.uleb128	37
	.ascii	"TSTARTDOCKEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"DRAGOBJECT\000"
	.long	.La522-.Ldebug_info0
	.byte	0
.La611:
	.uleb128	11
	.long	.La610-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;var TDragObject) of object;Register>
.La612:
	.uleb128	12
	.ascii	"TSTARTDRAGEVENT\000"
	.long	.La1162-.Ldebug_info0
.La1162:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1163-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La1163:
	.uleb128	37
	.ascii	"TSTARTDRAGEVENT\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.uleb128	27
	.ascii	"DRAGOBJECT\000"
	.long	.La519-.Ldebug_info0
	.byte	0
.La613:
	.uleb128	11
	.long	.La612-.Ldebug_info0
# Definition TPopupMenu
.La614:
	.uleb128	12
	.ascii	"TPOPUPMENU\000"
	.long	.La1164-.Ldebug_info0
.La1164:
	.uleb128	15
	.long	.La616-.Ldebug_info0
.La616:
	.uleb128	16
	.ascii	"TPOPUPMENU\000"
	.uleb128	280
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La681-.Ldebug_info0
	.uleb128	23
	.ascii	"FALIGNMENT\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La1165-.Ldebug_info0
	.uleb128	23
	.ascii	"FAUTOPOPUP\000"
	.byte	3
	.byte	35
	.uleb128	220
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FONCLOSE\000"
	.byte	3
	.byte	35
	.uleb128	224
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FONPOPUP\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"FPOPUPCOMPONENT\000"
	.byte	3
	.byte	35
	.uleb128	256
	.byte	3
	.long	.La115-.Ldebug_info0
	.uleb128	23
	.ascii	"FPOPUPPOINT\000"
	.byte	3
	.byte	35
	.uleb128	264
	.byte	3
	.long	.La517-.Ldebug_info0
	.uleb128	23
	.ascii	"FTRACKBUTTON\000"
	.byte	3
	.byte	35
	.uleb128	272
	.byte	3
	.long	.La1167-.Ldebug_info0
	.uleb128	23
	.ascii	"POPUPCOMPONENT\000"
	.byte	3
	.byte	35
	.uleb128	256
	.byte	3
	.long	.La115-.Ldebug_info0
	.uleb128	23
	.ascii	"POPUPPOINT\000"
	.byte	3
	.byte	35
	.uleb128	264
	.byte	3
	.long	.La517-.Ldebug_info0
	.uleb128	23
	.ascii	"ALIGNMENT\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La1165-.Ldebug_info0
	.uleb128	23
	.ascii	"AUTOPOPUP\000"
	.byte	3
	.byte	35
	.uleb128	220
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"TRACKBUTTON\000"
	.byte	3
	.byte	35
	.uleb128	272
	.byte	3
	.long	.La1167-.Ldebug_info0
	.uleb128	23
	.ascii	"ONPOPUP\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La81-.Ldebug_info0
	.uleb128	23
	.ascii	"ONCLOSE\000"
	.byte	3
	.byte	35
	.uleb128	224
	.byte	3
	.long	.La81-.Ldebug_info0
# Procdef GetHelpContext(<TPopupMenu>):LongInt;
	.uleb128	24
	.ascii	"GETHELPCONTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La586-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La614-.Ldebug_info0
	.byte	0
# Procdef SetHelpContext(<TPopupMenu>;const THelpContext);
	.uleb128	25
	.ascii	"SETHELPCONTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La614-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La586-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TPopupMenu>);
	.uleb128	18
	.ascii	"WSREGISTERCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	432
	.byte	34
	.byte	2
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La1169-.Ldebug_info0
	.byte	0
# Procdef DoPopup(<TPopupMenu>;TObject);
	.uleb128	18
	.ascii	"DOPOPUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	528
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La614-.Ldebug_info0
# Symbol SENDER
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef DoClose(<TPopupMenu>);
	.uleb128	18
	.ascii	"DOCLOSE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	536
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La614-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TPopupMenu>;<Pointer>;TComponent);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La614-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La614-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol AOWNER
	.uleb128	27
	.ascii	"AOWNER\000"
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TPopupMenu>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La614-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef PopUp(<TPopupMenu>);
	.uleb128	29
	.ascii	"POPUP\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La614-.Ldebug_info0
	.byte	0
# Procdef PopUp(<TPopupMenu>;LongInt;LongInt);
	.uleb128	28
	.ascii	"POPUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	544
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La614-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Close(<TPopupMenu>);
	.uleb128	29
	.ascii	"CLOSE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La614-.Ldebug_info0
	.byte	0
	.byte	0
.La615:
	.uleb128	11
	.long	.La614-.Ldebug_info0
# Definition <procedure variable type of procedure(var TMessage) of object;Register>
.La617:
	.uleb128	12
	.ascii	"TWNDMETHOD\000"
	.long	.La1171-.Ldebug_info0
.La1171:
	.uleb128	36
	.byte	16
	.uleb128	8
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1172-.Ldebug_info0
	.uleb128	8
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La56-.Ldebug_info0
	.byte	0
.La1172:
	.uleb128	37
	.ascii	"TWNDMETHOD\000"
	.byte	1
	.uleb128	27
	.ascii	"this\000"
	.long	.La36-.Ldebug_info0
	.uleb128	27
	.ascii	"THEMESSAGE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
.La618:
	.uleb128	11
	.long	.La617-.Ldebug_info0
# Definition TLazAccessibleObject
.La619:
	.uleb128	12
	.ascii	"TLAZACCESSIBLEOBJECT\000"
	.long	.La1173-.Ldebug_info0
.La1173:
	.uleb128	15
	.long	.La621-.Ldebug_info0
.La621:
	.uleb128	16
	.ascii	"TLAZACCESSIBLEOBJECT\000"
	.uleb128	112
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La58-.Ldebug_info0
	.uleb128	23
	.ascii	"FHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La168-.Ldebug_info0
	.uleb128	23
	.ascii	"FPOSITION\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La517-.Ldebug_info0
	.uleb128	23
	.ascii	"FSIZE\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La321-.Ldebug_info0
	.uleb128	23
	.ascii	"FLASTSEARCHNODE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La1174-.Ldebug_info0
	.uleb128	23
	.ascii	"FLASTSEARCHINDEX\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FLASTSEARCHINSUBCONTROLS\000"
	.byte	2
	.byte	35
	.uleb128	44
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FCHILDRENSORTEDFORDATAOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	2
	.long	.La1177-.Ldebug_info0
	.uleb128	23
	.ascii	"FACCESSIBLEDESCRIPTION\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	2
	.long	.La141-.Ldebug_info0
	.uleb128	23
	.ascii	"FACCESSIBLEVALUE\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	2
	.long	.La141-.Ldebug_info0
	.uleb128	23
	.ascii	"FACCESSIBLEROLE\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	2
	.long	.La624-.Ldebug_info0
	.uleb128	8
	.ascii	"OWNERCONTROL\000"
	.byte	2
	.byte	35
	.uleb128	80
	.long	.La239-.Ldebug_info0
	.uleb128	8
	.ascii	"PARENT\000"
	.byte	2
	.byte	35
	.uleb128	88
	.long	.La619-.Ldebug_info0
	.uleb128	8
	.ascii	"DATAOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	96
	.long	.La56-.Ldebug_info0
	.uleb128	8
	.ascii	"SECONDARYHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	104
	.long	.La168-.Ldebug_info0
	.uleb128	23
	.ascii	"ACCESSIBLEDESCRIPTION\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	2
	.long	.La141-.Ldebug_info0
	.uleb128	23
	.ascii	"ACCESSIBLEROLE\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	2
	.long	.La624-.Ldebug_info0
# Procdef GetHandle(<TLazAccessibleObject>):Int64;
	.uleb128	24
	.ascii	"GETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La168-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
	.byte	0
# Procdef GetPosition(<TLazAccessibleObject>):<record type>;
	.uleb128	24
	.ascii	"GETPOSITION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
	.byte	0
# Procdef GetSize(<TLazAccessibleObject>):<record type>;
	.uleb128	24
	.ascii	"GETSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La321-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
	.byte	0
# Procdef SetHandle(<TLazAccessibleObject>;Int64);
	.uleb128	25
	.ascii	"SETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La168-.Ldebug_info0
	.byte	0
# Procdef SetPosition(<TLazAccessibleObject>;TPoint);
	.uleb128	25
	.ascii	"SETPOSITION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef SetSize(<TLazAccessibleObject>;TSize);
	.uleb128	25
	.ascii	"SETSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La321-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TLazAccessibleObject>);
	.uleb128	18
	.ascii	"WSREGISTERCLASS\000"
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
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La1180-.Ldebug_info0
	.byte	0
# Procdef GetAccessibleValue(<TLazAccessibleObject>;<var TTranslateString>):AnsiString;
	.uleb128	31
	.ascii	"GETACCESSIBLEVALUE\000"
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
	.long	.La141-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La141-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TLazAccessibleObject>;<Pointer>;TControl);
	.uleb128	30
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	216
	.byte	34
	.long	.La619-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol AOWNER
	.uleb128	27
	.ascii	"AOWNER\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TLazAccessibleObject>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef HandleAllocated(<TLazAccessibleObject>):Boolean;
	.uleb128	20
	.ascii	"HANDLEALLOCATED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
	.byte	0
# Procdef InitializeHandle(<TLazAccessibleObject>);
	.uleb128	28
	.ascii	"INITIALIZEHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	224
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
	.byte	0
# Procdef SetAccessibleDescription(<TLazAccessibleObject>;const TTranslateString);
	.uleb128	29
	.ascii	"SETACCESSIBLEDESCRIPTION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
# Symbol ADESCRIPTION
	.uleb128	27
	.ascii	"ADESCRIPTION\000"
	.long	.La141-.Ldebug_info0
	.byte	0
# Procdef SetAccessibleValue(<TLazAccessibleObject>;const TTranslateString);
	.uleb128	29
	.ascii	"SETACCESSIBLEVALUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La141-.Ldebug_info0
	.byte	0
# Procdef SetAccessibleRole(<TLazAccessibleObject>;const TLazAccessibilityRole);
	.uleb128	29
	.ascii	"SETACCESSIBLEROLE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
# Symbol AROLE
	.uleb128	27
	.ascii	"AROLE\000"
	.long	.La624-.Ldebug_info0
	.byte	0
# Procdef FindOwnerWinControl(<TLazAccessibleObject>):TWinControl;
	.uleb128	20
	.ascii	"FINDOWNERWINCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La236-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
	.byte	0
# Procdef AddChildAccessibleObject(<TLazAccessibleObject>):TLazAccessibleObject;
	.uleb128	30
	.ascii	"ADDCHILDACCESSIBLEOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	232
	.byte	34
	.long	.La619-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
	.byte	0
# Procdef InsertChildAccessibleObject(<TLazAccessibleObject>;TLazAccessibleObject);
	.uleb128	29
	.ascii	"INSERTCHILDACCESSIBLEOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
# Symbol AOBJECT
	.uleb128	27
	.ascii	"AOBJECT\000"
	.long	.La619-.Ldebug_info0
	.byte	0
# Procdef ClearChildAccessibleObjects(<TLazAccessibleObject>);
	.uleb128	29
	.ascii	"CLEARCHILDACCESSIBLEOBJECTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
	.byte	0
# Procdef RemoveChildAccessibleObject(<TLazAccessibleObject>;TLazAccessibleObject;Boolean="TRUE");
	.uleb128	29
	.ascii	"REMOVECHILDACCESSIBLEOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
# Symbol AOBJECT
	.uleb128	27
	.ascii	"AOBJECT\000"
	.long	.La619-.Ldebug_info0
# Symbol AFREEOBJECT
	.uleb128	27
	.ascii	"AFREEOBJECT\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef GetChildAccessibleObjectWithDataObject(<TLazAccessibleObject>;TObject):TLazAccessibleObject;
	.uleb128	20
	.ascii	"GETCHILDACCESSIBLEOBJECTWITHDATAOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La619-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
# Symbol ADATAOBJECT
	.uleb128	27
	.ascii	"ADATAOBJECT\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef GetChildAccessibleObjectsCount(<TLazAccessibleObject>):LongInt;
	.uleb128	20
	.ascii	"GETCHILDACCESSIBLEOBJECTSCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
	.byte	0
# Procdef GetChildAccessibleObject(<TLazAccessibleObject>;LongInt):TLazAccessibleObject;
	.uleb128	20
	.ascii	"GETCHILDACCESSIBLEOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La619-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
# Symbol AINDEX
	.uleb128	27
	.ascii	"AINDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef GetFirstChildAccessibleObject(<TLazAccessibleObject>):TLazAccessibleObject;
	.uleb128	20
	.ascii	"GETFIRSTCHILDACCESSIBLEOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La619-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
	.byte	0
# Procdef GetNextChildAccessibleObject(<TLazAccessibleObject>):TLazAccessibleObject;
	.uleb128	20
	.ascii	"GETNEXTCHILDACCESSIBLEOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La619-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
	.byte	0
# Procdef GetSelectedChildAccessibleObject(<TLazAccessibleObject>):TLazAccessibleObject;
	.uleb128	30
	.ascii	"GETSELECTEDCHILDACCESSIBLEOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	240
	.byte	34
	.long	.La619-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
	.byte	0
# Procdef GetChildAccessibleObjectAtPos(<TLazAccessibleObject>;TPoint):TLazAccessibleObject;
	.uleb128	30
	.ascii	"GETCHILDACCESSIBLEOBJECTATPOS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	248
	.byte	34
	.long	.La619-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
# Symbol APOS
	.uleb128	27
	.ascii	"APOS\000"
	.long	.La517-.Ldebug_info0
	.byte	0
# Procdef GetEnumerator(<TLazAccessibleObject>):TLazAccessibleObjectEnumerator;
	.uleb128	20
	.ascii	"GETENUMERATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La1182-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La619-.Ldebug_info0
	.byte	0
	.byte	0
.La620:
	.uleb128	11
	.long	.La619-.Ldebug_info0
# Definition TControlState
.La622:
	.uleb128	12
	.ascii	"TCONTROLSTATE\000"
	.long	.La1185-.Ldebug_info0
.La1185:
	.uleb128	42
	.ascii	"TCONTROLSTATE\000"
	.byte	7
	.short	4
.La623:
	.uleb128	11
	.long	.La622-.Ldebug_info0
# Definition TLazAccessibilityRole
.La624:
	.uleb128	12
	.ascii	"TLAZACCESSIBILITYROLE\000"
	.long	.La1186-.Ldebug_info0
.La1186:
	.uleb128	34
	.ascii	"TLAZACCESSIBILITYROLE\000"
	.byte	4
	.uleb128	35
	.ascii	"LARANIMATION\000"
	.long	0
	.uleb128	35
	.ascii	"LARBUTTON\000"
	.long	1
	.uleb128	35
	.ascii	"LARCELL\000"
	.long	2
	.uleb128	35
	.ascii	"LARCHART\000"
	.long	3
	.uleb128	35
	.ascii	"LARCHECKBOX\000"
	.long	4
	.uleb128	35
	.ascii	"LARCLOCK\000"
	.long	5
	.uleb128	35
	.ascii	"LARCOLORPICKER\000"
	.long	6
	.uleb128	35
	.ascii	"LARCOMBOBOX\000"
	.long	7
	.uleb128	35
	.ascii	"LARDATEFIELD\000"
	.long	8
	.uleb128	35
	.ascii	"LARGRID\000"
	.long	9
	.uleb128	35
	.ascii	"LARGROUP\000"
	.long	10
	.uleb128	35
	.ascii	"LARIGNORE\000"
	.long	11
	.uleb128	35
	.ascii	"LARIMAGE\000"
	.long	12
	.uleb128	35
	.ascii	"LARLABEL\000"
	.long	13
	.uleb128	35
	.ascii	"LARLISTBOX\000"
	.long	14
	.uleb128	35
	.ascii	"LARLISTITEM\000"
	.long	15
	.uleb128	35
	.ascii	"LARMENUBAR\000"
	.long	16
	.uleb128	35
	.ascii	"LARMENUITEM\000"
	.long	17
	.uleb128	35
	.ascii	"LARPROGRESSINDICATOR\000"
	.long	18
	.uleb128	35
	.ascii	"LARRADIOBUTTON\000"
	.long	19
	.uleb128	35
	.ascii	"LARRESIZEGRIP\000"
	.long	20
	.uleb128	35
	.ascii	"LARSCROLLBAR\000"
	.long	21
	.uleb128	35
	.ascii	"LARSPINNER\000"
	.long	22
	.uleb128	35
	.ascii	"LARTABCONTROL\000"
	.long	23
	.uleb128	35
	.ascii	"LARTEXTEDITORMULTILINE\000"
	.long	24
	.uleb128	35
	.ascii	"LARTEXTEDITORSINGLELINE\000"
	.long	25
	.uleb128	35
	.ascii	"LARTRACKBAR\000"
	.long	26
	.uleb128	35
	.ascii	"LARTREEVIEW\000"
	.long	27
	.uleb128	35
	.ascii	"LARTREEITEM\000"
	.long	28
	.uleb128	35
	.ascii	"LARWINDOW\000"
	.long	29
	.byte	0
.La625:
	.uleb128	11
	.long	.La624-.Ldebug_info0
# Definition TAnchorSide
.La626:
	.uleb128	12
	.ascii	"TANCHORSIDE\000"
	.long	.La1187-.Ldebug_info0
.La1187:
	.uleb128	15
	.long	.La628-.Ldebug_info0
.La628:
	.uleb128	16
	.ascii	"TANCHORSIDE\000"
	.uleb128	56
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La337-.Ldebug_info0
	.uleb128	23
	.ascii	"FKIND\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La629-.Ldebug_info0
	.uleb128	23
	.ascii	"FCONTROL\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"FOWNER\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"FSIDE\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La1188-.Ldebug_info0
	.uleb128	23
	.ascii	"OWNER\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"KIND\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La629-.Ldebug_info0
	.uleb128	23
	.ascii	"CONTROL\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La239-.Ldebug_info0
	.uleb128	23
	.ascii	"SIDE\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La1188-.Ldebug_info0
# Procdef IsSideStored(<TAnchorSide>):Boolean;
	.uleb128	24
	.ascii	"ISSIDESTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La626-.Ldebug_info0
	.byte	0
# Procdef SetControl(<TAnchorSide>;const TControl);
	.uleb128	25
	.ascii	"SETCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La626-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La239-.Ldebug_info0
	.byte	0
# Procdef SetSide(<TAnchorSide>;const TAnchorSideReference);
	.uleb128	25
	.ascii	"SETSIDE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La626-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La1188-.Ldebug_info0
	.byte	0
# Procdef GetOwner(<TAnchorSide>):TPersistent;
	.uleb128	31
	.ascii	"GETOWNER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	216
	.byte	34
	.byte	2
	.long	.La335-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La626-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TAnchorSide>;<Pointer>;TControl;TAnchorKind);
	.uleb128	20
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La626-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La626-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	27
	.ascii	"THEOWNER\000"
	.long	.La239-.Ldebug_info0
# Symbol THEKIND
	.uleb128	27
	.ascii	"THEKIND\000"
	.long	.La629-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TAnchorSide>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La626-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef GetSidePosition(<TAnchorSide>;out TControl;out TAnchorSideReference;out LongInt);
	.uleb128	29
	.ascii	"GETSIDEPOSITION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La626-.Ldebug_info0
# Symbol REFERENCECONTROL
	.uleb128	27
	.ascii	"REFERENCECONTROL\000"
	.long	.La239-.Ldebug_info0
# Symbol REFERENCESIDE
	.uleb128	27
	.ascii	"REFERENCESIDE\000"
	.long	.La1188-.Ldebug_info0
# Symbol POSITION
	.uleb128	27
	.ascii	"POSITION\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef CheckSidePosition(<TAnchorSide>;TControl;TAnchorSideReference;out TControl;out TAnchorSideReference;out LongInt):Boolean;
	.uleb128	20
	.ascii	"CHECKSIDEPOSITION\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La626-.Ldebug_info0
# Symbol NEWCONTROL
	.uleb128	27
	.ascii	"NEWCONTROL\000"
	.long	.La239-.Ldebug_info0
# Symbol NEWSIDE
	.uleb128	27
	.ascii	"NEWSIDE\000"
	.long	.La1188-.Ldebug_info0
# Symbol REFERENCECONTROL
	.uleb128	27
	.ascii	"REFERENCECONTROL\000"
	.long	.La239-.Ldebug_info0
# Symbol REFERENCESIDE
	.uleb128	27
	.ascii	"REFERENCESIDE\000"
	.long	.La1188-.Ldebug_info0
# Symbol POSITION
	.uleb128	27
	.ascii	"POSITION\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Assign(<TAnchorSide>;TPersistent);
	.uleb128	28
	.ascii	"ASSIGN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	224
	.byte	34
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La626-.Ldebug_info0
# Symbol SOURCE
	.uleb128	27
	.ascii	"SOURCE\000"
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef IsAnchoredToParent(<TAnchorSide>;TAnchorKind):Boolean;
	.uleb128	20
	.ascii	"ISANCHOREDTOPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La626-.Ldebug_info0
# Symbol PARENTSIDE
	.uleb128	27
	.ascii	"PARENTSIDE\000"
	.long	.La629-.Ldebug_info0
	.byte	0
# Procdef FixCenterAnchoring(<TAnchorSide>);
	.uleb128	29
	.ascii	"FIXCENTERANCHORING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La626-.Ldebug_info0
	.byte	0
	.byte	0
.La627:
	.uleb128	11
	.long	.La626-.Ldebug_info0
# Definition TAnchorKind
.La629:
	.uleb128	12
	.ascii	"TANCHORKIND\000"
	.long	.La1190-.Ldebug_info0
.La1190:
	.uleb128	34
	.ascii	"TANCHORKIND\000"
	.byte	4
	.uleb128	35
	.ascii	"AKTOP\000"
	.long	0
	.uleb128	35
	.ascii	"AKLEFT\000"
	.long	1
	.uleb128	35
	.ascii	"AKRIGHT\000"
	.long	2
	.uleb128	35
	.ascii	"AKBOTTOM\000"
	.long	3
	.byte	0
.La630:
	.uleb128	11
	.long	.La629-.Ldebug_info0
# Definition TLMMouse
.La631:
	.uleb128	12
	.ascii	"TLMMOUSE\000"
	.long	.La1191-.Ldebug_info0
.La1191:
	.uleb128	7
	.ascii	"TLMMOUSE\000"
	.uleb128	32
	.uleb128	8
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"KEYS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"XPOS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La69-.Ldebug_info0
	.uleb128	8
	.ascii	"YPOS\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La69-.Ldebug_info0
	.uleb128	8
	.ascii	"POS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La648-.Ldebug_info0
	.uleb128	8
	.ascii	"DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La168-.Ldebug_info0
	.byte	0
.La632:
	.uleb128	11
	.long	.La631-.Ldebug_info0
# Definition TMouseButton
.La633:
	.uleb128	12
	.ascii	"TMOUSEBUTTON\000"
	.long	.La1192-.Ldebug_info0
.La1192:
	.uleb128	34
	.ascii	"TMOUSEBUTTON\000"
	.byte	4
	.uleb128	35
	.ascii	"MBLEFT\000"
	.long	0
	.uleb128	35
	.ascii	"MBRIGHT\000"
	.long	1
	.uleb128	35
	.ascii	"MBMIDDLE\000"
	.long	2
	.uleb128	35
	.ascii	"MBEXTRA1\000"
	.long	3
	.uleb128	35
	.ascii	"MBEXTRA2\000"
	.long	4
	.byte	0
.La634:
	.uleb128	11
	.long	.La633-.Ldebug_info0
# Definition TControl.Class Of TControl
.La635:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La636:
	.uleb128	11
	.long	.La635-.Ldebug_info0
# Definition TAnchorSideChangeOperation
.La637:
	.uleb128	12
	.ascii	"TANCHORSIDECHANGEOPERATION\000"
	.long	.La1193-.Ldebug_info0
.La1193:
	.uleb128	34
	.ascii	"TANCHORSIDECHANGEOPERATION\000"
	.byte	4
	.uleb128	35
	.ascii	"ASCOADD\000"
	.long	0
	.uleb128	35
	.ascii	"ASCOREMOVE\000"
	.long	1
	.uleb128	35
	.ascii	"ASCOCHANGESIDE\000"
	.long	2
	.byte	0
.La638:
	.uleb128	11
	.long	.La637-.Ldebug_info0
# Definition TConstraintSize
.La639:
	.uleb128	12
	.ascii	"TCONSTRAINTSIZE\000"
	.long	.La1194-.Ldebug_info0
.La1194:
	.uleb128	50
	.ascii	"TCONSTRAINTSIZE\000"
	.uleb128	0
	.uleb128	2147483647
	.long	.La17-.Ldebug_info0
.La640:
	.uleb128	11
	.long	.La639-.Ldebug_info0
# Definition TLMMouseEvent
.La641:
	.uleb128	12
	.ascii	"TLMMOUSEEVENT\000"
	.long	.La1195-.Ldebug_info0
.La1195:
	.uleb128	7
	.ascii	"TLMMOUSEEVENT\000"
	.uleb128	48
	.uleb128	8
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La8-.Ldebug_info0
	.uleb128	8
	.ascii	"WHEELDELTA\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La69-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSED1\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La69-.Ldebug_info0
	.uleb128	8
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La69-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSED2\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La6-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"USERDATA\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La36-.Ldebug_info0
	.uleb128	8
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La376-.Ldebug_info0
	.byte	0
.La642:
	.uleb128	11
	.long	.La641-.Ldebug_info0
# Definition TLMNCHITTEST
.La643:
	.uleb128	12
	.ascii	"TLMNCHITTEST\000"
	.long	.La1196-.Ldebug_info0
.La1196:
	.uleb128	7
	.ascii	"TLMNCHITTEST\000"
	.uleb128	32
	.uleb128	8
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La17-.Ldebug_info0
	.uleb128	8
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"XPOS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La69-.Ldebug_info0
	.uleb128	8
	.ascii	"YPOS\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La69-.Ldebug_info0
	.uleb128	8
	.ascii	"POS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La648-.Ldebug_info0
	.uleb128	8
	.ascii	"DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La168-.Ldebug_info0
	.uleb128	8
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La168-.Ldebug_info0
	.byte	0
.La644:
	.uleb128	11
	.long	.La643-.Ldebug_info0
# Definition TDragImageList
.La645:
	.uleb128	12
	.ascii	"TDRAGIMAGELIST\000"
	.long	.La1197-.Ldebug_info0
.La1197:
	.uleb128	15
	.long	.La647-.Ldebug_info0
.La647:
	.uleb128	16
	.ascii	"TDRAGIMAGELIST\000"
	.uleb128	328
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La755-.Ldebug_info0
	.uleb128	23
	.ascii	"FDRAGCURSOR\000"
	.byte	3
	.byte	35
	.uleb128	288
	.byte	3
	.long	.La537-.Ldebug_info0
	.uleb128	23
	.ascii	"FDRAGGING\000"
	.byte	3
	.byte	35
	.uleb128	290
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FDRAGHOTSPOT\000"
	.byte	3
	.byte	35
	.uleb128	292
	.byte	3
	.long	.La517-.Ldebug_info0
	.uleb128	23
	.ascii	"FOLDCURSOR\000"
	.byte	3
	.byte	35
	.uleb128	300
	.byte	3
	.long	.La537-.Ldebug_info0
	.uleb128	23
	.ascii	"FIMAGEINDEX\000"
	.byte	3
	.byte	35
	.uleb128	304
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FLASTDRAGPOS\000"
	.byte	3
	.byte	35
	.uleb128	308
	.byte	3
	.long	.La517-.Ldebug_info0
	.uleb128	23
	.ascii	"FLOCKEDWINDOW\000"
	.byte	3
	.byte	35
	.uleb128	320
	.byte	3
	.long	.La77-.Ldebug_info0
	.uleb128	23
	.ascii	"DRAGCURSOR\000"
	.byte	3
	.byte	35
	.uleb128	288
	.byte	3
	.long	.La537-.Ldebug_info0
	.uleb128	23
	.ascii	"DRAGHOTSPOT\000"
	.byte	3
	.byte	35
	.uleb128	292
	.byte	3
	.long	.La517-.Ldebug_info0
	.uleb128	23
	.ascii	"DRAGGING\000"
	.byte	3
	.byte	35
	.uleb128	290
	.byte	3
	.long	.La38-.Ldebug_info0
# Procdef SetDragCursor(<TDragImageList>;const TCursor);
	.uleb128	25
	.ascii	"SETDRAGCURSOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La645-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La537-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TDragImageList>);
	.uleb128	18
	.ascii	"WSREGISTERCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	432
	.byte	34
	.byte	2
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La1198-.Ldebug_info0
	.byte	0
# Procdef Initialize(<TDragImageList>);
	.uleb128	18
	.ascii	"INITIALIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	504
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La645-.Ldebug_info0
	.byte	0
# Procdef BeginDrag(<TDragImageList>;QWord;LongInt;LongInt):Boolean;
	.uleb128	20
	.ascii	"BEGINDRAG\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La645-.Ldebug_info0
# Symbol WINDOW
	.uleb128	27
	.ascii	"WINDOW\000"
	.long	.La77-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef DragLock(<TDragImageList>;QWord;LongInt;LongInt):Boolean;
	.uleb128	20
	.ascii	"DRAGLOCK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La645-.Ldebug_info0
# Symbol WINDOW
	.uleb128	27
	.ascii	"WINDOW\000"
	.long	.La77-.Ldebug_info0
# Symbol XPOS
	.uleb128	27
	.ascii	"XPOS\000"
	.long	.La6-.Ldebug_info0
# Symbol YPOS
	.uleb128	27
	.ascii	"YPOS\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef DragMove(<TDragImageList>;LongInt;LongInt):Boolean;
	.uleb128	20
	.ascii	"DRAGMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La645-.Ldebug_info0
# Symbol X
	.uleb128	27
	.ascii	"X\000"
	.long	.La6-.Ldebug_info0
# Symbol Y
	.uleb128	27
	.ascii	"Y\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef DragUnlock(<TDragImageList>);
	.uleb128	29
	.ascii	"DRAGUNLOCK\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La645-.Ldebug_info0
	.byte	0
# Procdef EndDrag(<TDragImageList>):Boolean;
	.uleb128	20
	.ascii	"ENDDRAG\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La645-.Ldebug_info0
	.byte	0
# Procdef GetHotSpot(<TDragImageList>):<record type>;
	.uleb128	30
	.ascii	"GETHOTSPOT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	552
	.byte	34
	.long	.La517-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La645-.Ldebug_info0
	.byte	0
# Procdef HideDragImage(<TDragImageList>);
	.uleb128	29
	.ascii	"HIDEDRAGIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La645-.Ldebug_info0
	.byte	0
# Procdef SetDragImage(<TDragImageList>;LongInt;LongInt;LongInt):Boolean;
	.uleb128	20
	.ascii	"SETDRAGIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La645-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol HOTSPOTX
	.uleb128	27
	.ascii	"HOTSPOTX\000"
	.long	.La6-.Ldebug_info0
# Symbol HOTSPOTY
	.uleb128	27
	.ascii	"HOTSPOTY\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef ShowDragImage(<TDragImageList>);
	.uleb128	29
	.ascii	"SHOWDRAGIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La645-.Ldebug_info0
	.byte	0
	.byte	0
.La646:
	.uleb128	11
	.long	.La645-.Ldebug_info0
# Definition TSmallPoint
.La648:
	.uleb128	12
	.ascii	"TSMALLPOINT\000"
	.long	.La1200-.Ldebug_info0
.La1200:
	.uleb128	7
	.ascii	"TSMALLPOINT\000"
	.uleb128	4
	.uleb128	8
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La69-.Ldebug_info0
	.uleb128	8
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La69-.Ldebug_info0
	.byte	0
.La649:
	.uleb128	11
	.long	.La648-.Ldebug_info0
# Definition PHintInfo
.La650:
	.uleb128	12
	.ascii	"PHINTINFO\000"
	.long	.La1201-.Ldebug_info0
.La1201:
	.uleb128	15
	.long	.La1202-.Ldebug_info0
.La651:
	.uleb128	11
	.long	.La650-.Ldebug_info0
# Definition TControlHandlerType
.La652:
	.uleb128	12
	.ascii	"TCONTROLHANDLERTYPE\000"
	.long	.La1204-.Ldebug_info0
.La1204:
	.uleb128	34
	.ascii	"TCONTROLHANDLERTYPE\000"
	.byte	4
	.uleb128	35
	.ascii	"CHTONRESIZE\000"
	.long	0
	.uleb128	35
	.ascii	"CHTONCHANGEBOUNDS\000"
	.long	1
	.uleb128	35
	.ascii	"CHTONVISIBLECHANGING\000"
	.long	2
	.uleb128	35
	.ascii	"CHTONVISIBLECHANGED\000"
	.long	3
	.uleb128	35
	.ascii	"CHTONENABLEDCHANGING\000"
	.long	4
	.uleb128	35
	.ascii	"CHTONENABLEDCHANGED\000"
	.long	5
	.uleb128	35
	.ascii	"CHTONKEYDOWN\000"
	.long	6
	.uleb128	35
	.ascii	"CHTONBEFOREDESTRUCTION\000"
	.long	7
	.uleb128	35
	.ascii	"CHTONMOUSEWHEEL\000"
	.long	8
	.byte	0
.La653:
	.uleb128	11
	.long	.La652-.Ldebug_info0
# Definition TControl.Class Of TControl
.La654:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La655:
	.uleb128	11
	.long	.La654-.Ldebug_info0
# Definition TControlActionLinkClass
.La656:
	.uleb128	12
	.ascii	"TCONTROLACTIONLINKCLASS\000"
	.long	.La1205-.Ldebug_info0
.La1205:
	.uleb128	15
	.long	.La219-.Ldebug_info0
.La657:
	.uleb128	11
	.long	.La656-.Ldebug_info0
# Definition TDefaultColorType
.La658:
	.uleb128	12
	.ascii	"TDEFAULTCOLORTYPE\000"
	.long	.La1206-.Ldebug_info0
.La1206:
	.uleb128	34
	.ascii	"TDEFAULTCOLORTYPE\000"
	.byte	4
	.uleb128	35
	.ascii	"DCTBRUSH\000"
	.long	0
	.uleb128	35
	.ascii	"DCTFONT\000"
	.long	1
	.byte	0
.La659:
	.uleb128	11
	.long	.La658-.Ldebug_info0
# Definition TMethodList
.La664:
	.uleb128	12
	.ascii	"TMETHODLIST\000"
	.long	.La1207-.Ldebug_info0
.La1207:
	.uleb128	15
	.long	.La666-.Ldebug_info0
.La666:
	.uleb128	16
	.ascii	"TMETHODLIST\000"
	.uleb128	32
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La58-.Ldebug_info0
	.uleb128	23
	.ascii	"FALLOWDUPLICATES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La38-.Ldebug_info0
	.uleb128	23
	.ascii	"FITEMS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La1208-.Ldebug_info0
	.uleb128	23
	.ascii	"FCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"ALLOWDUPLICATES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La38-.Ldebug_info0
# Procdef GetItems(<TMethodList>;<var TMethod>;LongInt):<record type>;
	.uleb128	24
	.ascii	"GETITEMS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La293-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La664-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La293-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetAllowDuplicates(<TMethodList>;Boolean);
	.uleb128	25
	.ascii	"SETALLOWDUPLICATES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La664-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetItems(<TMethodList>;LongInt;const TMethod);
	.uleb128	25
	.ascii	"SETITEMS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La664-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La293-.Ldebug_info0
	.byte	0
# Procdef InternalInsert(<TMethodList>;LongInt;const TMethod);
	.uleb128	25
	.ascii	"INTERNALINSERT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La664-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	27
	.ascii	"AMETHOD\000"
	.long	.La293-.Ldebug_info0
	.byte	0
# Procdef RaiseIndexOutOfBounds(<TMethodList>;LongInt);
	.uleb128	25
	.ascii	"RAISEINDEXOUTOFBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La664-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TMethodList>;<Pointer>);
	.uleb128	28
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
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La664-.Ldebug_info0
# Symbol vmt
	.uleb128	27
	.ascii	"vmt\000"
	.long	.La36-.Ldebug_info0
	.byte	0
# Procdef Count(<TMethodList>):LongInt;
	.uleb128	20
	.ascii	"COUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La664-.Ldebug_info0
	.byte	0
# Procdef NextDownIndex(<TMethodList>;var LongInt):Boolean;
	.uleb128	20
	.ascii	"NEXTDOWNINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La664-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef IndexOf(<TMethodList>;const TMethod):LongInt;
	.uleb128	20
	.ascii	"INDEXOF\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La664-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	27
	.ascii	"AMETHOD\000"
	.long	.La293-.Ldebug_info0
	.byte	0
# Procdef Delete(<TMethodList>;LongInt);
	.uleb128	29
	.ascii	"DELETE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La664-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef Remove(<TMethodList>;const TMethod);
	.uleb128	29
	.ascii	"REMOVE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La664-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	27
	.ascii	"AMETHOD\000"
	.long	.La293-.Ldebug_info0
	.byte	0
# Procdef Add(<TMethodList>;const TMethod);
	.uleb128	29
	.ascii	"ADD\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La664-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	27
	.ascii	"AMETHOD\000"
	.long	.La293-.Ldebug_info0
	.byte	0
# Procdef Add(<TMethodList>;const TMethod;Boolean);
	.uleb128	29
	.ascii	"ADD\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La664-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	27
	.ascii	"AMETHOD\000"
	.long	.La293-.Ldebug_info0
# Symbol ASLAST
	.uleb128	27
	.ascii	"ASLAST\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef Insert(<TMethodList>;LongInt;const TMethod);
	.uleb128	29
	.ascii	"INSERT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La664-.Ldebug_info0
# Symbol INDEX
	.uleb128	27
	.ascii	"INDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	27
	.ascii	"AMETHOD\000"
	.long	.La293-.Ldebug_info0
	.byte	0
# Procdef Move(<TMethodList>;LongInt;LongInt);
	.uleb128	29
	.ascii	"MOVE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La664-.Ldebug_info0
# Symbol OLDINDEX
	.uleb128	27
	.ascii	"OLDINDEX\000"
	.long	.La6-.Ldebug_info0
# Symbol NEWINDEX
	.uleb128	27
	.ascii	"NEWINDEX\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef RemoveAllMethodsOfObject(<TMethodList>;const TObject);
	.uleb128	29
	.ascii	"REMOVEALLMETHODSOFOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La664-.Ldebug_info0
# Symbol ANOBJECT
	.uleb128	27
	.ascii	"ANOBJECT\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef CallNotifyEvents(<TMethodList>;TObject);
	.uleb128	29
	.ascii	"CALLNOTIFYEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La664-.Ldebug_info0
# Symbol SENDER
	.uleb128	27
	.ascii	"SENDER\000"
	.long	.La56-.Ldebug_info0
	.byte	0
# Procdef GetReversedEnumerator(<TMethodList>;<var TMethodList.TItemsEnumerator>):<record type>;
	.uleb128	20
	.ascii	"GETREVERSEDENUMERATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La1210-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La664-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La1210-.Ldebug_info0
	.byte	0
# Procdef GetEnumerator(<TMethodList>;<var TMethodList.TItemsEnumerator>):<record type>;
	.uleb128	20
	.ascii	"GETENUMERATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La1210-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La664-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La1210-.Ldebug_info0
	.byte	0
	.byte	0
.La665:
	.uleb128	11
	.long	.La664-.Ldebug_info0
# Definition TCustomIcon
.La668:
	.uleb128	12
	.ascii	"TCUSTOMICON\000"
	.long	.La1212-.Ldebug_info0
.La1212:
	.uleb128	15
	.long	.La670-.Ldebug_info0
.La670:
	.uleb128	16
	.ascii	"TCUSTOMICON\000"
	.uleb128	120
	.uleb128	17
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1215-.Ldebug_info0
	.uleb128	23
	.ascii	"FCURRENT\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	2
	.long	.La6-.Ldebug_info0
	.uleb128	23
	.ascii	"FREQUESTEDSIZE\000"
	.byte	2
	.byte	35
	.uleb128	108
	.byte	2
	.long	.La321-.Ldebug_info0
	.uleb128	23
	.ascii	"CURRENT\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	2
	.long	.La6-.Ldebug_info0
# Procdef GetCount(<TCustomIcon>):LongInt;
	.uleb128	24
	.ascii	"GETCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
	.byte	0
# Procdef SetCurrent(<TCustomIcon>;const LongInt);
	.uleb128	25
	.ascii	"SETCURRENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef MaskHandleNeeded(<TCustomIcon>);
	.uleb128	18
	.ascii	"MASKHANDLENEEDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	616
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
	.byte	0
# Procdef PaletteNeeded(<TCustomIcon>);
	.uleb128	18
	.ascii	"PALETTENEEDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	624
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
	.byte	0
# Procdef CanShareImage(<TCustomIcon>;TSharedRasterImageClass):Boolean;
	.uleb128	31
	.ascii	"CANSHAREIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	528
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
# Symbol ACLASS
	.uleb128	27
	.ascii	"ACLASS\000"
	.long	.La789-.Ldebug_info0
	.byte	0
# Procdef CheckRequestedSize(<TCustomIcon>);
	.uleb128	25
	.ascii	"CHECKREQUESTEDSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
	.byte	0
# Procdef GetIndex(<TCustomIcon>;TPixelFormat;Word;Word):LongInt;
	.uleb128	24
	.ascii	"GETINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La6-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
# Symbol AFORMAT
	.uleb128	27
	.ascii	"AFORMAT\000"
	.long	.La1216-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	27
	.ascii	"AHEIGHT\000"
	.long	.La8-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	27
	.ascii	"AWIDTH\000"
	.long	.La8-.Ldebug_info0
	.byte	0
# Procdef GetBitmapHandle(<TCustomIcon>):QWord;
	.uleb128	31
	.ascii	"GETBITMAPHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	544
	.byte	34
	.byte	2
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
	.byte	0
# Procdef class GetDefaultSize(<Class Of TCustomIcon>):<record type>;
	.uleb128	31
	.ascii	"GETDEFAULTSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	776
	.byte	34
	.byte	2
	.long	.La321-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La1218-.Ldebug_info0
	.byte	0
# Procdef GetMaskHandle(<TCustomIcon>):QWord;
	.uleb128	31
	.ascii	"GETMASKHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	560
	.byte	34
	.byte	2
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
	.byte	0
# Procdef GetPalette(<TCustomIcon>):QWord;
	.uleb128	31
	.ascii	"GETPALETTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	288
	.byte	34
	.byte	2
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
	.byte	0
# Procdef GetPixelFormat(<TCustomIcon>):<enumeration type>;
	.uleb128	31
	.ascii	"GETPIXELFORMAT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	568
	.byte	34
	.byte	2
	.long	.La1216-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
	.byte	0
# Procdef GetRawImagePtr(<TCustomIcon>):^TRawImage;
	.uleb128	31
	.ascii	"GETRAWIMAGEPTR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	576
	.byte	34
	.byte	2
	.long	.La1220-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
	.byte	0
# Procdef GetRawImageDescriptionPtr(<TCustomIcon>):^TRawImageDescription;
	.uleb128	31
	.ascii	"GETRAWIMAGEDESCRIPTIONPTR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	584
	.byte	34
	.byte	2
	.long	.La1222-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
	.byte	0
# Procdef GetTransparent(<TCustomIcon>):Boolean;
	.uleb128	31
	.ascii	"GETTRANSPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	296
	.byte	34
	.byte	2
	.long	.La38-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
	.byte	0
# Procdef class GetSharedImageClass(<Class Of TCustomIcon>):Class Of TSharedRasterImage;
	.uleb128	31
	.ascii	"GETSHAREDIMAGECLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	592
	.byte	34
	.byte	2
	.long	.La789-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La1224-.Ldebug_info0
	.byte	0
# Procdef class GetStreamSignature(<Class Of TCustomIcon>):DWord;
	.uleb128	31
	.ascii	"GETSTREAMSIGNATURE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	784
	.byte	34
	.byte	2
	.long	.La17-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La1226-.Ldebug_info0
	.byte	0
# Procdef class GetTypeID(<Class Of TCustomIcon>):Word;
	.uleb128	31
	.ascii	"GETTYPEID\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	792
	.byte	34
	.byte	2
	.long	.La8-.Ldebug_info0
# Symbol self
	.uleb128	26
	.ascii	"self\000"
	.byte	1
	.long	.La1228-.Ldebug_info0
	.byte	0
# Procdef HandleNeeded(<TCustomIcon>);
	.uleb128	18
	.ascii	"HANDLENEEDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	608
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
	.byte	0
# Procdef InternalReleaseBitmapHandle(<TCustomIcon>):QWord;
	.uleb128	31
	.ascii	"INTERNALRELEASEBITMAPHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	632
	.byte	34
	.byte	2
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
	.byte	0
# Procdef InternalReleaseMaskHandle(<TCustomIcon>):QWord;
	.uleb128	31
	.ascii	"INTERNALRELEASEMASKHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	640
	.byte	34
	.byte	2
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
	.byte	0
# Procdef InternalReleasePalette(<TCustomIcon>):QWord;
	.uleb128	31
	.ascii	"INTERNALRELEASEPALETTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	648
	.byte	34
	.byte	2
	.long	.La77-.Ldebug_info0
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
	.byte	0
# Procdef ReadData(<TCustomIcon>;TStream);
	.uleb128	18
	.ascii	"READDATA\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	328
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
# Symbol STREAM
	.uleb128	27
	.ascii	"STREAM\000"
	.long	.La795-.Ldebug_info0
	.byte	0
# Procdef ReadStream(<TCustomIcon>;TMemoryStream;LongInt);
	.uleb128	18
	.ascii	"READSTREAM\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	680
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
# Symbol ASTREAM
	.uleb128	27
	.ascii	"ASTREAM\000"
	.long	.La1230-.Ldebug_info0
# Symbol ASIZE
	.uleb128	27
	.ascii	"ASIZE\000"
	.long	.La6-.Ldebug_info0
	.byte	0
# Procdef SetMasked(<TCustomIcon>;Boolean);
	.uleb128	18
	.ascii	"SETMASKED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	656
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef SetPixelFormat(<TCustomIcon>;TPixelFormat);
	.uleb128	18
	.ascii	"SETPIXELFORMAT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	704
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
# Symbol AVALUE
	.uleb128	27
	.ascii	"AVALUE\000"
	.long	.La1216-.Ldebug_info0
	.byte	0
# Procdef SetTransparent(<TCustomIcon>;Boolean);
	.uleb128	18
	.ascii	"SETTRANSPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	352
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
# Symbol VALUE
	.uleb128	27
	.ascii	"VALUE\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef UnshareImage(<TCustomIcon>;Boolean);
	.uleb128	18
	.ascii	"UNSHAREIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	664
	.byte	34
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
# Symbol COPYCONTENT
	.uleb128	27
	.ascii	"COPYCONTENT\000"
	.long	.La38-.Ldebug_info0
	.byte	0
# Procdef UpdateCurrentView(<TCustomIcon>);
	.uleb128	25
	.ascii	"UPDATECURRENTVIEW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	26
	.ascii	"this\000"
	.byte	1
	.long	.La668-.Ldebug_info0
	.byte	0
# Procdef SetHandle(<TCustomIcon>;QWord);
	.uleb128	18
	.ascii	"SETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.byte	34