	.file "umain.pas"
# Begin asmlist al_begin

.section .debug_line
.Ldebug_linesection0:
.Ldebug_line0:

.section .debug_abbrev
.Ldebug_abbrevsection0:
.Ldebug_abbrev0:

.section .text.b_DEBUGSTART_$UMAIN,"x"
.globl	DEBUGSTART_$UMAIN
DEBUGSTART_$UMAIN:
# End asmlist al_begin
# Begin asmlist al_procedures

.section .text.n_umain$_$main1_$$_fin$0,"x"
	.balign 16,0x90
UMAIN$_$MAIN1_$$_fin$0:
.Lc1:
.seh_proc UMAIN$_$MAIN1_$$_fin$0
.Ll1:
# [umain.pas]
# [51] begin
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
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc2:
.Lt2:
.Ll3:

.section .text.n_umain_$$_main1,"x"
	.balign 16,0x90
.globl	UMAIN_$$_MAIN1
UMAIN_$$_MAIN1:
.Lc6:
# Temps allocated between rbp-40 and rbp+0
.seh_proc UMAIN_$$_MAIN1
.Ll4:
	pushq	%rbp
.seh_pushreg %rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	leaq	-128(%rsp),%rsp
.seh_stackalloc 128
# Var t located in register rbx
# Var i located in register esi
	movq	%rbx,-40(%rbp)
	movq	%rsi,-32(%rbp)
.seh_savereg %rbx, 88
.seh_savereg %rsi, 96
.seh_endprologue
.Ll5:
	movq	$0,-8(%rbp)
.Lj11:
	nop
.Lj7:
.Ll6:
# [55] raml^[$18010]:=$01001100;    raml^[$18011]:=$80040004;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16781568,393280(%rax)
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$-2147221500,393284(%rax)
.Ll7:
# [56] raml^[$18012]:=$01001100;    raml^[$18013]:=$00040004;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16781568,393288(%rax)
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$262148,393292(%rax)
.Ll8:
# [57] raml^[$18014]:=$01001100;    raml^[$18015]:=$00040004;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16781568,393296(%rax)
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$262148,393300(%rax)
.Ll9:
# [58] raml^[$18016]:=$01001100;    raml^[$18017]:=$00040004;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16781568,393304(%rax)
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$262148,393308(%rax)
.Ll10:
# [59] raml^[$18018]:=$01001100;    raml^[$18019]:=$00040004;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16781568,393312(%rax)
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$262148,393316(%rax)
.Ll11:
# [60] raml^[$1801a]:=$01001100;    raml^[$1801b]:=$00040004;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16781568,393320(%rax)
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$262148,393324(%rax)
.Ll12:
# [61] raml^[$1801c]:=$01001100;    raml^[$1801d]:=$00040004;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16781568,393328(%rax)
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$262148,393332(%rax)
.Ll13:
# [62] raml^[$1801e]:=$01001100;    raml^[$1801f]:=$00020002;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16781568,393336(%rax)
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$131074,393340(%rax)
.Ll14:
# [66] for i:=0 to 31 do
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj46:
	addl	$1,%esi
.Ll15:
# [67] for j:=0 to 31 do  begin
	movl	$0,U_$UMAIN_$$_J(%rip)
	subl	$1,U_$UMAIN_$$_J(%rip)
	.balign 8,0x90
.Lj49:
	addl	$1,U_$UMAIN_$$_J(%rip)
.Ll16:
# [68] if j<16 then k:=j*16 else k:=(31-j)*16 ;
	cmpl	$16,U_$UMAIN_$$_J(%rip)
	jnl	.Lj51
	movl	U_$UMAIN_$$_J(%rip),%eax
	shll	$4,%eax
	movl	%eax,U_$UMAIN_$$_K(%rip)
	jmp	.Lj54
.Lj51:
	movl	U_$UMAIN_$$_J(%rip),%edx
	movl	$31,%eax
	subl	%edx,%eax
	shll	$4,%eax
	movl	%eax,U_$UMAIN_$$_K(%rip)
.Lj54:
.Ll17:
# [69] if (i<11) or (i>21) or (j<11) or (j>21) then raml^[$14800+i+32*j]:=k else  raml^[$14800+i+32*j]:=$0;
	cmpl	$11,%esi
	jl	.Lj57
	cmpl	$21,%esi
	jg	.Lj57
.Ll18:
	movl	U_$UMAIN_$$_J(%rip),%eax
.Ll19:
	cmpl	$11,%eax
	jl	.Lj57
	cmpl	$21,%eax
	jng	.Lj58
.Lj57:
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	%esi,%rax
	leaq	83968(%rax),%rdx
	movslq	U_$UMAIN_$$_J(%rip),%rax
	shlq	$5,%rax
	leaq	(%rdx,%rax),%rax
	movl	U_$UMAIN_$$_K(%rip),%edx
	movl	%edx,(%rcx,%rax,4)
	jmp	.Lj66
.Lj58:
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	%esi,%rax
	leaq	83968(%rax),%rdx
	movslq	U_$UMAIN_$$_J(%rip),%rax
	shlq	$5,%rax
	leaq	(%rdx,%rax),%rax
	movl	$0,(%rcx,%rax,4)
.Lj66:
.Ll20:
	cmpl	$31,U_$UMAIN_$$_J(%rip)
	jl	.Lj49
.Ll21:
	cmpl	$31,%esi
	jl	.Lj46
.Ll22:
# [72] for i:=0 to 31 do
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj71:
	addl	$1,%esi
.Ll23:
# [73] for j:=0 to 31 do  begin
	movl	$0,U_$UMAIN_$$_J(%rip)
	subl	$1,U_$UMAIN_$$_J(%rip)
	.balign 8,0x90
.Lj74:
	addl	$1,U_$UMAIN_$$_J(%rip)
.Ll24:
# [74] if j<16 then k:=j*16 else k:=(31-j)*16 ;
	cmpl	$16,U_$UMAIN_$$_J(%rip)
	jnl	.Lj76
	movl	U_$UMAIN_$$_J(%rip),%eax
	shll	$4,%eax
	movl	%eax,U_$UMAIN_$$_K(%rip)
	jmp	.Lj79
.Lj76:
	movl	U_$UMAIN_$$_J(%rip),%edx
	movl	$31,%eax
	subl	%edx,%eax
	shll	$4,%eax
	movl	%eax,U_$UMAIN_$$_K(%rip)
.Lj79:
# PeepHole Optimization,var2
# P=movl
# HP1=shll
# HP2=movl
# PeepHole Optimization,var2
.Ll25:
# [75] k:=k shl 8;
	shll	$8,U_$UMAIN_$$_K(%rip)
.Ll26:
# [76] if (i<11) or (i>21) or (j<11) or (j>21) then raml^[$14C00+i+32*j]:=k else  raml^[$14C00+i+32*j]:=$0;
	cmpl	$11,%esi
	jl	.Lj84
	cmpl	$21,%esi
	jg	.Lj84
.Ll27:
	movl	U_$UMAIN_$$_J(%rip),%eax
.Ll28:
	cmpl	$11,%eax
	jl	.Lj84
	cmpl	$21,%eax
	jng	.Lj85
.Lj84:
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	%esi,%rax
	leaq	84992(%rax),%rdx
	movslq	U_$UMAIN_$$_J(%rip),%rax
	shlq	$5,%rax
	leaq	(%rdx,%rax),%rdx
	movl	U_$UMAIN_$$_K(%rip),%eax
	movl	%eax,(%rcx,%rdx,4)
	jmp	.Lj93
.Lj85:
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	%esi,%rax
	leaq	84992(%rax),%rdx
	movslq	U_$UMAIN_$$_J(%rip),%rax
	shlq	$5,%rax
	leaq	(%rdx,%rax),%rax
	movl	$0,(%rcx,%rax,4)
.Lj93:
.Ll29:
	cmpl	$31,U_$UMAIN_$$_J(%rip)
	jl	.Lj74
.Ll30:
	cmpl	$31,%esi
	jl	.Lj71
.Ll31:
# [79] for i:=0 to 31 do
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj98:
	addl	$1,%esi
.Ll32:
# [80] for j:=0 to 31 do  begin
	movl	$0,U_$UMAIN_$$_J(%rip)
	subl	$1,U_$UMAIN_$$_J(%rip)
	.balign 8,0x90
.Lj101:
	addl	$1,U_$UMAIN_$$_J(%rip)
.Ll33:
# [81] if j<16 then k:=j*16 else k:=(31-j)*16 ;
	cmpl	$16,U_$UMAIN_$$_J(%rip)
	jnl	.Lj103
	movl	U_$UMAIN_$$_J(%rip),%eax
	shll	$4,%eax
	movl	%eax,U_$UMAIN_$$_K(%rip)
	jmp	.Lj106
.Lj103:
	movl	U_$UMAIN_$$_J(%rip),%edx
	movl	$31,%eax
	subl	%edx,%eax
	shll	$4,%eax
	movl	%eax,U_$UMAIN_$$_K(%rip)
.Lj106:
# PeepHole Optimization,var2
# P=movl
# HP1=shll
# HP2=movl
# PeepHole Optimization,var2
.Ll34:
# [82] k:=k shl 16;
	shll	$16,U_$UMAIN_$$_K(%rip)
.Ll35:
# [83] if (i<11) or (i>21) or (j<11) or (j>21) then raml^[$15000+i+32*j]:=k else  raml^[$15000+i+32*j]:=$0;
	cmpl	$11,%esi
	jl	.Lj111
	cmpl	$21,%esi
	jg	.Lj111
.Ll36:
	movl	U_$UMAIN_$$_J(%rip),%eax
.Ll37:
	cmpl	$11,%eax
	jl	.Lj111
	cmpl	$21,%eax
	jng	.Lj112
.Lj111:
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	%esi,%rax
	leaq	86016(%rax),%rdx
	movslq	U_$UMAIN_$$_J(%rip),%rax
	shlq	$5,%rax
	leaq	(%rdx,%rax),%rax
	movl	U_$UMAIN_$$_K(%rip),%edx
	movl	%edx,(%rcx,%rax,4)
	jmp	.Lj120
.Lj112:
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	%esi,%rax
	leaq	86016(%rax),%rdx
	movslq	U_$UMAIN_$$_J(%rip),%rax
	shlq	$5,%rax
	leaq	(%rdx,%rax),%rax
	movl	$0,(%rcx,%rax,4)
.Lj120:
.Ll38:
	cmpl	$31,U_$UMAIN_$$_J(%rip)
	jl	.Lj101
.Ll39:
	cmpl	$31,%esi
	jl	.Lj98
.Ll40:
# [90] graphics(16);
	movl	$16,%ecx
	call	RETRO_$$_GRAPHICS$LONGINT
.Ll41:
# [91] cls(146);
	movl	$146,%ecx
	call	RETRO_$$_CLS$LONGINT
.Ll42:
# [92] ttt:=gettime;
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,U_$UMAIN_$$_TTT(%rip)
.Ll43:
# [93] outtextxyz(96,16,'The retromachine SID player v. 0.04 --- 2016.04.28',154,4,2);
	movl	$2,40(%rsp)
	movl	$4,32(%rsp)
	leaq	_$UMAIN$_Ld1(%rip),%r8
	movl	$154,%r9d
	movl	$16,%edx
	movl	$96,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll44:
# [94] box2(8,64,1784,1112,0);
	movl	$0,32(%rsp)
	movl	$1112,%r9d
	movl	$1784,%r8d
	movl	$64,%edx
	movl	$8,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll45:
# [95] box2(10,1062,1782,1110,120);
	movl	$120,32(%rsp)
	movl	$1110,%r9d
	movl	$1782,%r8d
	movl	$1062,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll46:
# [96] outtextxyz(32,1070,'Screen time:',124,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	_$UMAIN$_Ld2(%rip),%r8
	movl	$124,%r9d
	movl	$1070,%edx
	movl	$32,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll47:
# [97] k:=raml^[$18000];
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393216(%rax),%eax
	movl	%eax,U_$UMAIN_$$_K(%rip)
.Ll48:
# [98] raml^[$18003]:=$002040;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$8256,393228(%rax)
.Ll49:
# [99] setataripallette(1);
	movl	$1,%ecx
	call	RETRO_$$_SETATARIPALLETTE$LONGINT
.Ll50:
# [100] setataripallette(2);
	movl	$2,%ecx
	call	RETRO_$$_SETATARIPALLETTE$LONGINT
.Ll51:
# [101] setataripallette(3);
	movl	$3,%ecx
	call	RETRO_$$_SETATARIPALLETTE$LONGINT
.Ll52:
# [102] sethidecolor(250,0,$FF);
	movl	$255,%r8d
	movl	$0,%edx
	movl	$250,%ecx
	call	RETRO_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
.Ll53:
# [103] sethidecolor(44,0,$FF);
	movl	$255,%r8d
	movl	$0,%edx
	movl	$44,%ecx
	call	RETRO_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
.Ll54:
# [104] sethidecolor(190,0,$FF);
	movl	$255,%r8d
	movl	$0,%edx
	movl	$190,%ecx
	call	RETRO_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
.Ll55:
# [105] sethidecolor(188,0,$FF);
	movl	$255,%r8d
	movl	$0,%edx
	movl	$188,%ecx
	call	RETRO_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
.Ll56:
# [106] c:=0;
	movq	$0,TC_$UMAIN_$$_C(%rip)
.Ll57:
# [107] avsct:=0;
	movq	$0,TC_$UMAIN_$$_AVSCT(%rip)
.Ll58:
# [108] avspt:=0;
	movq	$0,TC_$UMAIN_$$_AVSPT(%rip)
.Ll59:
# [109] avall:=0;
	movq	$0,TC_$UMAIN_$$_AVALL(%rip)
.Ll60:
# [110] avsid:=0;
	movq	$0,TC_$UMAIN_$$_AVSID(%rip)
.Ll61:
# [111] box2(10,1011,1782,1012,256+16);
	movl	$272,32(%rsp)
	movl	$1012,%r9d
	movl	$1782,%r8d
	movl	$1011,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll62:
# [112] box2(10,1013,1782,1014,256+17);
	movl	$273,32(%rsp)
	movl	$1014,%r9d
	movl	$1782,%r8d
	movl	$1013,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll63:
# [113] box2(10,1015,1782,1016,256+18);
	movl	$274,32(%rsp)
	movl	$1016,%r9d
	movl	$1782,%r8d
	movl	$1015,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll64:
# [114] box2(10,1017,1782,1018,256+19);
	movl	$275,32(%rsp)
	movl	$1018,%r9d
	movl	$1782,%r8d
	movl	$1017,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll65:
# [115] box2(10,1019,1782,1020,256+20);
	movl	$276,32(%rsp)
	movl	$1020,%r9d
	movl	$1782,%r8d
	movl	$1019,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll66:
# [116] box2(10,1021,1782,1022,256+21);
	movl	$277,32(%rsp)
	movl	$1022,%r9d
	movl	$1782,%r8d
	movl	$1021,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll67:
# [117] box2(10,1023,1782,1024,256+22);
	movl	$278,32(%rsp)
	movl	$1024,%r9d
	movl	$1782,%r8d
	movl	$1023,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll68:
# [118] box2(10,1025,1782,1026,256+23);
	movl	$279,32(%rsp)
	movl	$1026,%r9d
	movl	$1782,%r8d
	movl	$1025,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll69:
# [119] box2(10,1027,1782,1028,256+24);
	movl	$280,32(%rsp)
	movl	$1028,%r9d
	movl	$1782,%r8d
	movl	$1027,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll70:
# [120] box2(10,1029,1782,1030,256+25);
	movl	$281,32(%rsp)
	movl	$1030,%r9d
	movl	$1782,%r8d
	movl	$1029,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll71:
# [121] box2(10,1031,1782,1032,256+26);
	movl	$282,32(%rsp)
	movl	$1032,%r9d
	movl	$1782,%r8d
	movl	$1031,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll72:
# [122] box2(10,1033,1782,1034,256+27);
	movl	$283,32(%rsp)
	movl	$1034,%r9d
	movl	$1782,%r8d
	movl	$1033,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll73:
# [123] box2(10,1035,1782,1036,256+28);
	movl	$284,32(%rsp)
	movl	$1036,%r9d
	movl	$1782,%r8d
	movl	$1035,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll74:
# [124] box2(10,1037,1782,1038,256+29);
	movl	$285,32(%rsp)
	movl	$1038,%r9d
	movl	$1782,%r8d
	movl	$1037,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll75:
# [125] box2(10,1039,1782,1040,256+30);
	movl	$286,32(%rsp)
	movl	$1040,%r9d
	movl	$1782,%r8d
	movl	$1039,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll76:
# [126] box2(10,1041,1782,1042,256+31);
	movl	$287,32(%rsp)
	movl	$1042,%r9d
	movl	$1782,%r8d
	movl	$1041,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll77:
# [127] box2(10,1043,1782,1044,256+32);
	movl	$288,32(%rsp)
	movl	$1044,%r9d
	movl	$1782,%r8d
	movl	$1043,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll78:
# [128] box2(10,1045,1782,1046,256+33);
	movl	$289,32(%rsp)
	movl	$1046,%r9d
	movl	$1782,%r8d
	movl	$1045,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll79:
# [129] box2(10,1047,1782,1048,256+34);
	movl	$290,32(%rsp)
	movl	$1048,%r9d
	movl	$1782,%r8d
	movl	$1047,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll80:
# [130] box2(10,1049,1782,1050,256+35);
	movl	$291,32(%rsp)
	movl	$1050,%r9d
	movl	$1782,%r8d
	movl	$1049,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll81:
# [131] box2(10,1051,1782,1052,256+36);
	movl	$292,32(%rsp)
	movl	$1052,%r9d
	movl	$1782,%r8d
	movl	$1051,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll82:
# [132] box2(10,1053,1782,1054,256+37);
	movl	$293,32(%rsp)
	movl	$1054,%r9d
	movl	$1782,%r8d
	movl	$1053,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll83:
# [133] box2(10,1055,1782,1056,256+38);
	movl	$294,32(%rsp)
	movl	$1056,%r9d
	movl	$1782,%r8d
	movl	$1055,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll84:
# [134] box2(10,1057,1782,1058,256+39);
	movl	$295,32(%rsp)
	movl	$1058,%r9d
	movl	$1782,%r8d
	movl	$1057,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll85:
# [135] outtextxyz(24,1019,'A retromachine SID player by pik33 --- inspired by Johannes Ahlebrand''s Parallax Propeller SIDCog',256+135,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	_$UMAIN$_Ld3(%rip),%r8
	movl	$391,%r9d
	movl	$1019,%edx
	movl	$24,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll86:
# [136] blit($F000000,10,1011,$F800000,10,1011,1771,48,1792,1792);
	movl	$1792,72(%rsp)
	movl	$1792,64(%rsp)
	movl	$48,56(%rsp)
	movl	$1771,48(%rsp)
	movl	$1011,40(%rsp)
	movl	$10,32(%rsp)
	movl	$260046848,%r9d
	movl	$1011,%r8d
	movl	$10,%edx
	movl	$251658240,%ecx
	call	RETRO_$$_BLIT$crc5A667533
.Ll87:
# [137] box2(10,800,894,848,246);
	movl	$246,32(%rsp)
	movl	$848,%r9d
	movl	$894,%r8d
	movl	$800,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll88:
# [138] box2(10,851,894,1008,244);
	movl	$244,32(%rsp)
	movl	$1008,%r9d
	movl	$894,%r8d
	movl	$851,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll89:
# [139] outtextxyz(320,808,'Now playing',250,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	_$UMAIN$_Ld4(%rip),%r8
	movl	$250,%r9d
	movl	$808,%edx
	movl	$320,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll90:
# [140] box2(10,118,894,797,178);
	movl	$178,32(%rsp)
	movl	$797,%r9d
	movl	$894,%r8d
	movl	$118,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll91:
# [141] box2(10,67,894,115,180);
	movl	$180,32(%rsp)
	movl	$115,%r9d
	movl	$894,%r8d
	movl	$67,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll92:
# [142] outtextxyz(320,75,'File info',188,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	_$UMAIN$_Ld5(%rip),%r8
	movl	$188,%r9d
	movl	$75,%edx
	movl	$320,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll93:
# [143] box2(897,118,1782,1008,34);
	movl	$34,32(%rsp)
	movl	$1008,%r9d
	movl	$1782,%r8d
	movl	$118,%edx
	movl	$897,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll94:
# [144] box2(897,67,1782,115,36);
	movl	$36,32(%rsp)
	movl	$115,%r9d
	movl	$1782,%r8d
	movl	$67,%edx
	movl	$897,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll95:
# [145] outtextxyz(1296,75,'Files',47,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	_$UMAIN$_Ld6(%rip),%r8
	movl	$47,%r9d
	movl	$75,%edx
	movl	$1296,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll96:
# [146] sdl_pauseaudio(1); sleep(1000);
	movl	$1,%ecx
	call	_$dll$sdl2$SDL_PauseAudio
	movl	$1000,%ecx
	call	SYSUTILS_$$_SLEEP$LONGWORD
.Ll97:
# [147] t:=gettime;
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,%rbx
.Ll98:
# [148] for i:=1 to 1000000 do
	movl	$1,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj593:
	addl	$1,%esi
.Ll99:
# [149] testvoice.getsample;
	movq	U_$RETRO_$$_TESTVOICE(%rip),%rcx
	call	FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
.Ll100:
	cmpl	$1000000,%esi
	jl	.Lj593
.Ll101:
# [150] t:=gettime-t;
	call	RETRO_$$_GETTIME$$INT64
	subq	%rbx,%rax
	movq	%rax,%rbx
.Ll102:
# [151] box(100,100,200,100,0);
	movl	$0,32(%rsp)
	movl	$100,%r9d
	movl	$200,%r8d
	movl	$100,%edx
	movl	$100,%ecx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll103:
# [152] outtextxyz(100,100,inttostr(t),44,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movq	%rbx,%rdx
	leaq	-8(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	$44,%r9d
	movl	$100,%edx
	movl	$100,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll104:
# [153] sdl_pauseaudio(0);
	movl	$0,%ecx
	call	_$dll$sdl2$SDL_PauseAudio
.Lj626:
.Ll105:
	nop
.Lj8:
	movq	%rbp,%rcx
	call	UMAIN$_$MAIN1_$$_fin$0
.Ll106:
# [154] end;
	movq	-40(%rbp),%rbx
	movq	-32(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj7
	.rva	.Lj8
	.rva	UMAIN$_$MAIN1_$$_fin$0

.section .text.n_umain_$$_main1,"x"
.seh_endproc
.Lc7:
.Lt1:
.Ll107:

.section .text.n_umain$_$main2_$$_fin$1,"x"
	.balign 16,0x90
UMAIN$_$MAIN2_$$_fin$1:
.Lc11:
.seh_proc UMAIN$_$MAIN2_$$_fin$1
.Ll108:
# [167] begin
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
.Ll109:
	leaq	-136(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	-40(%rbp),%rax
	movq	%rax,%rcx
	call	fpc_ansistr_decr_ref
	leaq	-48(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	-56(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc12:
.Lt4:
.Ll110:

.section .text.n_umain_$$_main2,"x"
	.balign 16,0x90
.globl	UMAIN_$$_MAIN2
UMAIN_$$_MAIN2:
.Lc16:
# Temps allocated between rbp-176 and rbp-80
.seh_proc UMAIN_$$_MAIN2
.Ll111:
	pushq	%rbp
.seh_pushreg %rbp
.Lc18:
.Lc19:
	movq	%rsp,%rbp
.Lc20:
	leaq	-256(%rsp),%rsp
.seh_stackalloc 256
# Var ii located in register eax
# Var iii located in register eax
# Var il located in register eax
# Var i located in register ebx
# Var mm located in register rsi
# Var hh located in register rdi
# Var ss located in register rbx
# Var f located in register eax
# Var aa located in register eax
# Var aaa located in register eax
# Var aaaa located in register eax
# Var md located in register eax
	movq	%rbx,-176(%rbp)
	movq	%rdi,-168(%rbp)
	movq	%rsi,-160(%rbp)
.seh_savereg %rbx, 80
.seh_savereg %rdi, 88
.seh_savereg %rsi, 96
.seh_endprologue
# Var buf located at rbp-32, size=OS_NO
# Var mms located at rbp-40, size=OS_64
# Var hhs located at rbp-48, size=OS_64
# Var sss located at rbp-56, size=OS_64
# Var kwas located at rbp-64, size=OS_64
# Var rect located at rbp-80, size=OS_128
.Ll112:
	movq	$0,-40(%rbp)
	movq	$0,-48(%rbp)
	movq	$0,-56(%rbp)
	movq	$0,-136(%rbp)
	movq	$0,-88(%rbp)
.Lj637:
	nop
.Lj633:
.Ll113:
# [170] k:=raml^[$18000];
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393216(%rax),%eax
	movl	%eax,U_$UMAIN_$$_K(%rip)
	.balign 8,0x90
.Lj640:
.Ll114:
# [172] until raml^[$18000]>k;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393216(%rax),%eax
	cmpl	U_$UMAIN_$$_K(%rip),%eax
	jng	.Lj640
.Ll115:
# [177] c:=c+1;
	movq	TC_$UMAIN_$$_C(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UMAIN_$$_C(%rip)
.Ll116:
# [178] if time6502>0 then c6+=1;
	cmpq	$0,U_$RETRO_$$_TIME6502(%rip)
	jng	.Lj646
	movq	TC_$UMAIN_$$_C6(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UMAIN_$$_C6(%rip)
.Lj646:
.Ll117:
# [179] ss:=(songtime div 1000000) mod 60;
	movq	U_$RETRO_$$_SONGTIME(%rip),%rcx
	movq	$4835703278458516699,%rax
	imulq	%rcx
	sarq	$18,%rdx
	shrq	$63,%rcx
	addq	%rcx,%rdx
	movq	%rdx,%rax
	cqto
	movq	$60,%rcx
	idivq	%rcx
	movq	%rdx,%rbx
.Ll118:
# [180] mm:=(songtime div 60000000) mod 60;
	movq	U_$RETRO_$$_SONGTIME(%rip),%rcx
	movq	$-8130577079664715991,%rax
	imulq	%rcx
	addq	%rcx,%rdx
	sarq	$25,%rdx
	shrq	$63,%rcx
	addq	%rcx,%rdx
	movq	%rdx,%rax
	cqto
	movq	$60,%rcx
	idivq	%rcx
	movq	%rdx,%rsi
.Ll119:
# [181] hh:=(songtime div 3600000000);
	movq	U_$RETRO_$$_SONGTIME(%rip),%rcx
	movq	$-7442832613395060283,%rax
	imulq	%rcx
	addq	%rcx,%rdx
	sarq	$31,%rdx
	shrq	$63,%rcx
	addq	%rcx,%rdx
	movq	%rdx,%rdi
.Ll120:
# [182] sss:=inttostr(ss); if ss<10 then sss:='0'+sss;
	movq	%rbx,%rdx
	leaq	-56(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	cmpq	$10,%rbx
	jnl	.Lj660
	movq	-56(%rbp),%r8
	leaq	_$UMAIN$_Ld7(%rip),%rdx
	leaq	-56(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
.Lj660:
.Ll121:
# [183] mms:=inttostr(mm); if mm<10 then mms:='0'+mms;
	movq	%rsi,%rdx
	leaq	-40(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	cmpq	$10,%rsi
	jnl	.Lj674
	movq	-40(%rbp),%r8
	leaq	_$UMAIN$_Ld7(%rip),%rdx
	leaq	-40(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
.Lj674:
.Ll122:
# [184] hhs:=inttostr(hh); if hh<10 then hhs:='0'+hhs;
	movq	%rdi,%rdx
	leaq	-48(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	cmpq	$10,%rdi
	jnl	.Lj688
	movq	-48(%rbp),%r8
	leaq	_$UMAIN$_Ld7(%rip),%rdx
	leaq	-48(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
.Lj688:
.Ll123:
# [185] songfreq:=1000000 div siddelay;
	movq	$1000000,%rax
	cqto
	idivq	TC_$RETRO_$$_SIDDELAY(%rip)
	movq	%rax,U_$RETRO_$$_SONGFREQ(%rip)
.Ll124:
# [187] box(18,864,512,32,244);
	movl	$244,32(%rsp)
	movl	$32,%r9d
	movl	$512,%r8d
	movl	$864,%edx
	movl	$18,%ecx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll125:
# [188] box(18,960,512,32,244);
	movl	$244,32(%rsp)
	movl	$32,%r9d
	movl	$512,%r8d
	movl	$960,%edx
	movl	$18,%ecx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll126:
# [189] outtextxyz(18,864,songname,250,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movq	U_$UMAIN_$$_SONGNAME(%rip),%r8
	movl	$250,%r9d
	movl	$864,%edx
	movl	$18,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll127:
# [195] outtextxyz(18,960,hhs+':'+mms+':'+sss,190,4,2);
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movq	-48(%rbp),%rax
	movq	%rax,-128(%rbp)
	leaq	_$UMAIN$_Ld8(%rip),%rax
	movq	%rax,-120(%rbp)
	movq	-40(%rbp),%rax
	movq	%rax,-112(%rbp)
	leaq	_$UMAIN$_Ld8(%rip),%rax
	movq	%rax,-104(%rbp)
	movq	-56(%rbp),%rax
	movq	%rax,-96(%rbp)
	leaq	-128(%rbp),%rdx
	leaq	-88(%rbp),%rcx
	movl	$0,%r9d
	movq	$4,%r8
	call	fpc_ansistr_concat_multi
	movq	-88(%rbp),%r8
	movl	$2,40(%rsp)
	movl	$4,32(%rsp)
	movl	$190,%r9d
	movl	$960,%edx
	movl	$18,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll128:
# [196] avsid+=sidtime;
	movq	TC_$UMAIN_$$_AVSID(%rip),%rdx
	movq	U_$RETRO_$$_SIDTIME(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movq	%rax,TC_$UMAIN_$$_AVSID(%rip)
.Ll129:
# [197] avsct:=avsct+tim;
	movq	TC_$UMAIN_$$_AVSCT(%rip),%rax
	movq	U_$RETRO_$$_TIM(%rip),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,TC_$UMAIN_$$_AVSCT(%rip)
.Ll130:
# [198] avspt:=avspt+ts;
	movq	TC_$UMAIN_$$_AVSPT(%rip),%rax
	movq	U_$RETRO_$$_TS(%rip),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,TC_$UMAIN_$$_AVSPT(%rip)
.Ll131:
# [199] avall:=avall+t3;
	movq	TC_$UMAIN_$$_AVALL(%rip),%rax
	movq	U_$RETRO_$$_T3(%rip),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,TC_$UMAIN_$$_AVALL(%rip)
.Ll132:
# [200] av6502:=av6502+time6502;
	movq	TC_$UMAIN_$$_AV6502(%rip),%rax
	movq	U_$RETRO_$$_TIME6502(%rip),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,TC_$UMAIN_$$_AV6502(%rip)
.Ll133:
# [201] box2(10,1062,1782,1110,118);
	movl	$118,32(%rsp)
	movl	$1110,%r9d
	movl	$1782,%r8d
	movl	$1062,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll134:
# [202] outtextxyz(32,1070,'Avg screen time: '+inttostr(round(avsct/c))+' us',76,2,2);
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	_$UMAIN$_Ld9(%rip),%rax
	movq	%rax,-112(%rbp)
	cvtsi2sdq	TC_$UMAIN_$$_AVSCT(%rip),%xmm0
	cvtsi2sdq	TC_$UMAIN_$$_C(%rip),%xmm1
	divsd	%xmm1,%xmm0
	cvtsd2siq	%xmm0,%rdx
	leaq	-136(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	movq	-136(%rbp),%rax
	movq	%rax,-104(%rbp)
	leaq	_$UMAIN$_Ld10(%rip),%rax
	movq	%rax,-96(%rbp)
	leaq	-112(%rbp),%rdx
	leaq	-88(%rbp),%rcx
	movl	$0,%r9d
	movq	$2,%r8
	call	fpc_ansistr_concat_multi
	movq	-88(%rbp),%r8
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	$76,%r9d
	movl	$1070,%edx
	movl	$32,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll135:
# [203] outtextxyz(438,1070,'Avg sprite time: '+inttostr(round(avspt/c))+' us',186,2,2);
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	_$UMAIN$_Ld11(%rip),%rax
	movq	%rax,-112(%rbp)
	cvtsi2sdq	TC_$UMAIN_$$_AVSPT(%rip),%xmm0
	cvtsi2sdq	TC_$UMAIN_$$_C(%rip),%xmm1
	divsd	%xmm1,%xmm0
	cvtsd2siq	%xmm0,%rdx
	leaq	-136(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	movq	-136(%rbp),%rax
	movq	%rax,-104(%rbp)
	leaq	_$UMAIN$_Ld10(%rip),%rax
	movq	%rax,-96(%rbp)
	leaq	-112(%rbp),%rdx
	leaq	-88(%rbp),%rcx
	movl	$0,%r9d
	movq	$2,%r8
	call	fpc_ansistr_concat_multi
	movq	-88(%rbp),%r8
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	$186,%r9d
	movl	$1070,%edx
	movl	$438,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll136:
# [204] outtextxyz(828,1070,'Avg SID time: '+inttostr(round(avsid/c))+' us',233,2,2);
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	_$UMAIN$_Ld12(%rip),%rax
	movq	%rax,-112(%rbp)
	cvtsi2sdq	TC_$UMAIN_$$_AVSID(%rip),%xmm0
	cvtsi2sdq	TC_$UMAIN_$$_C(%rip),%xmm1
	divsd	%xmm1,%xmm0
	cvtsd2siq	%xmm0,%rdx
	leaq	-136(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	movq	-136(%rbp),%rax
	movq	%rax,-104(%rbp)
	leaq	_$UMAIN$_Ld10(%rip),%rax
	movq	%rax,-96(%rbp)
	leaq	-112(%rbp),%rdx
	leaq	-88(%rbp),%rcx
	movl	$0,%r9d
	movq	$2,%r8
	call	fpc_ansistr_concat_multi
	movq	-88(%rbp),%r8
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	$233,%r9d
	movl	$1070,%edx
	movl	$828,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll137:
# [205] outtextxyz(1190,1070,'6502 time: '+floattostrf((time6502/16),fffixed,4,1)+' us',124,2,2);
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	_$UMAIN$_Ld13(%rip),%rax
	movq	%rax,-112(%rbp)
	movl	$1,32(%rsp)
	cvtsi2sdq	U_$RETRO_$$_TIME6502(%rip),%xmm1
	mulsd	_$UMAIN$_Ld14(%rip),%xmm1
	leaq	-136(%rbp),%rcx
	movl	$4,%r9d
	movl	$2,%r8d
	call	SYSUTILS_$$_FLOATTOSTRF$DOUBLE$TFLOATFORMAT$LONGINT$LONGINT$$ANSISTRING
	movq	-136(%rbp),%rax
	movq	%rax,-104(%rbp)
	leaq	_$UMAIN$_Ld10(%rip),%rax
	movq	%rax,-96(%rbp)
	leaq	-112(%rbp),%rdx
	leaq	-88(%rbp),%rcx
	movl	$0,%r9d
	movq	$2,%r8
	call	fpc_ansistr_concat_multi
	movq	-88(%rbp),%r8
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	$124,%r9d
	movl	$1070,%edx
	movl	$1190,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll138:
# [206] if peek($70003)=1 then outtextxyz(1500,1070,inttostr(peek($d404)shr 4),108,2,2);
	movl	$458755,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$1,%al
	jne	.Lj874
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	$54276,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	movb	%al,%dl
# PeepHole Optimization,var9
	andl	$255,%edx
	shrl	$4,%edx
	andl	$4294967295,%edx
	leaq	-88(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	movq	-88(%rbp),%r8
	movl	$108,%r9d
	movl	$1070,%edx
	movl	$1500,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj874:
.Ll139:
# [207] if peek($70004)=1 then outtextxyz(1540,1070,inttostr(peek($d40b)shr 4),200,2,2);
	movl	$458756,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$1,%al
	jne	.Lj896
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	$54283,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	movb	%al,%dl
# PeepHole Optimization,var9
	andl	$255,%edx
	shrl	$4,%edx
	andl	$4294967295,%edx
	leaq	-88(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	movq	-88(%rbp),%r8
	movl	$200,%r9d
	movl	$1070,%edx
	movl	$1540,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj896:
.Ll140:
# [208] if peek($70005)=1 then outtextxyz(1580,1070,inttostr(peek($d412)shr 4),40,2,2);
	movl	$458757,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$1,%al
	jne	.Lj918
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	$54290,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	movb	%al,%dl
# PeepHole Optimization,var9
	andl	$255,%edx
	shrl	$4,%edx
	andl	$4294967295,%edx
	leaq	-88(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	movq	-88(%rbp),%r8
	movl	$40,%r9d
	movl	$1070,%edx
	movl	$1580,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj918:
.Ll141:
# [209] outtextxyz(1650,1070,inttostr(dpeek($60028)),44,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	$393256,%ecx
	call	RETRO_$$_DPEEK$LONGINT$$WORD
	movw	%ax,%dx
# PeepHole Optimization,var11
	andl	$65535,%edx
	leaq	-88(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	movq	-88(%rbp),%r8
	movl	$44,%r9d
	movl	$1070,%edx
	movl	$1650,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll142:
# [211] for i:=16 to 39 do lpoke($10000+1024+4*i,lpeek($10000+2048+4*((c div 2) mod 256)+4*i));
	movl	$16,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj959:
	addl	$1,%ebx
	movq	TC_$UMAIN_$$_C(%rip),%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$1,%rdx
	addq	%rdx,%rax
	sarq	$1,%rax
	cqto
	movq	$256,%rcx
	idivq	%rcx
	shlq	$2,%rdx
	leaq	67584(%rdx),%rdx
	movslq	%ebx,%rax
	shlq	$2,%rax
	leaq	(%rdx,%rax),%rcx
	call	RETRO_$$_LPEEK$LONGINT$$LONGWORD
	movl	%eax,%edx
	movl	%ebx,%eax
	shll	$2,%eax
	leal	66560(%eax),%ecx
	call	RETRO_$$_LPOKE$LONGINT$LONGWORD
	cmpl	$39,%ebx
	jl	.Lj959
.Ll143:
# [212] if (c mod 64)=0 then lpoke($10000+1024+4*135,lpeek($10000+2048+(4*(c div 64) mod 256)))   ;
	movq	TC_$UMAIN_$$_C(%rip),%rax
	cqto
	movq	$64,%rcx
	idivq	%rcx
	testq	%rdx,%rdx
	jne	.Lj967
	movq	TC_$UMAIN_$$_C(%rip),%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$63,%rdx
	addq	%rdx,%rax
	sarq	$6,%rax
	shlq	$2,%rax
	cqto
	movq	$256,%rcx
	idivq	%rcx
	leaq	67584(%rdx),%rcx
	call	RETRO_$$_LPEEK$LONGINT$$LONGWORD
	movl	%eax,%edx
	movl	$67100,%ecx
	call	RETRO_$$_LPOKE$LONGINT$LONGWORD
.Lj967:
.Ll144:
# [213] blit($F800000,10+(c mod 1772),1011,$F000000,12,1011,1771-(c mod 1772),48,1792,1792);
	movl	$1792,72(%rsp)
	movl	$1792,64(%rsp)
	movl	$48,56(%rsp)
	movl	$1011,40(%rsp)
	movl	$12,32(%rsp)
	movq	TC_$UMAIN_$$_C(%rip),%rax
	cqto
	movq	$1772,%rcx
	idivq	%rcx
	movq	$1771,%rax
	subq	%rdx,%rax
	movl	%eax,48(%rsp)
	movq	TC_$UMAIN_$$_C(%rip),%rax
	cqto
	movq	$1772,%rcx
	idivq	%rcx
	leaq	10(%rdx),%rdx
	movl	$251658240,%r9d
	movl	$1011,%r8d
	movl	$260046848,%ecx
	call	RETRO_$$_BLIT$crc5A667533
.Ll145:
# [214] blit($F800000,10,1011,$F000000,11+1771-(c mod 1772),1011,(c mod 1772),48,1792,1792);
	movl	$1792,72(%rsp)
	movl	$1792,64(%rsp)
	movl	$48,56(%rsp)
	movl	$1011,40(%rsp)
	movq	TC_$UMAIN_$$_C(%rip),%rax
	cqto
	movq	$1772,%rcx
	idivq	%rcx
	movl	%edx,48(%rsp)
	movq	TC_$UMAIN_$$_C(%rip),%rax
	cqto
	movq	$1772,%rcx
	idivq	%rcx
	movq	$1782,%rax
	subq	%rdx,%rax
	movl	%eax,32(%rsp)
	movl	$251658240,%r9d
	movl	$1011,%r8d
	movl	$10,%edx
	movl	$260046848,%ecx
	call	RETRO_$$_BLIT$crc5A667533
.Ll146:
# [215] box2(10,610,894,797,178);
	movl	$178,32(%rsp)
	movl	$797,%r9d
	movl	$894,%r8d
	movl	$610,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll147:
# [216] box2(10,700,890,701,40);
	movl	$40,32(%rsp)
	movl	$701,%r9d
	movl	$890,%r8d
	movl	$700,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll148:
# [217] box2(10,764,890,765,40);
	movl	$40,32(%rsp)
	movl	$765,%r9d
	movl	$890,%r8d
	movl	$764,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll149:
# [218] box2(10,636,890,637,40);
	movl	$40,32(%rsp)
	movl	$637,%r9d
	movl	$890,%r8d
	movl	$636,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll150:
# [219] for j:=20 to 840 do if abs(scope[j])<46000 then box(20+j,700-scope[j] div 512,2,2,190);
	movl	$20,U_$UMAIN_$$_J(%rip)
	subl	$1,U_$UMAIN_$$_J(%rip)
	.balign 8,0x90
.Lj1056:
	addl	$1,U_$UMAIN_$$_J(%rip)
	movl	U_$UMAIN_$$_J(%rip),%edx
	leaq	U_$RETRO_$$_SCOPE(%rip),%rax
	movl	(%rax,%rdx,4),%edx
	movl	%edx,%eax
	negl	%eax
	cmovnsl	%eax,%edx
	cmpl	$46000,%edx
	jnl	.Lj1058
	movl	$190,32(%rsp)
	movl	U_$UMAIN_$$_J(%rip),%edx
	leaq	U_$RETRO_$$_SCOPE(%rip),%rax
	movslq	(%rax,%rdx,4),%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$511,%rdx
	addq	%rdx,%rax
	sarq	$9,%rax
	movq	$700,%rdx
	subq	%rax,%rdx
	movl	U_$UMAIN_$$_J(%rip),%eax
	leal	20(%eax),%ecx
	movl	$2,%r9d
	movl	$2,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Lj1058:
	cmpl	$840,U_$UMAIN_$$_J(%rip)
	jl	.Lj1056
.Ll151:
# [222] sprx:=round(dpeek($d400)/40+74);
	movl	$54272,%ecx
	call	RETRO_$$_DPEEK$LONGINT$$WORD
# PeepHole Optimization,var11
	andl	$65535,%eax
	cvtsi2sd	%eax,%xmm0
	mulsd	_$UMAIN$_Ld15(%rip),%xmm0
	addsd	_$UMAIN$_Ld16(%rip),%xmm0
	cvtsd2siq	%xmm0,%rax
	movl	%eax,U_$UMAIN_$$_SPRX(%rip)
.Ll152:
# [223] spry:=920-3*(peek($d406) and $F0);
	movl	$54278,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
# PeepHole Optimization,var1
# PeepHole Optimization,var9
	andl	$240,%eax
	leal	(%eax,%eax,2),%edx
	movl	$920,%eax
	subl	%edx,%eax
# PeepHole Optimization,MovMov2Mov1
	movl	%eax,U_$UMAIN_$$_SPRY(%rip)
.Ll153:
# [224] raml^[$18010]:=(spry shl 16)+sprx+2048*(1-peek($70003));
	shll	$16,%eax
	movl	U_$UMAIN_$$_SPRX(%rip),%edx
	leal	(%eax,%edx),%ebx
	movl	$458755,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	movl	$1,%edx
	subl	%eax,%edx
	shll	$11,%edx
	leal	(%ebx,%edx),%eax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movl	%eax,393280(%rdx)
.Ll154:
# [226] spr2x:=round(dpeek($d407)/40+74);
	movl	$54279,%ecx
	call	RETRO_$$_DPEEK$LONGINT$$WORD
# PeepHole Optimization,var11
	andl	$65535,%eax
	cvtsi2sd	%eax,%xmm0
	mulsd	_$UMAIN$_Ld15(%rip),%xmm0
	addsd	_$UMAIN$_Ld16(%rip),%xmm0
	cvtsd2siq	%xmm0,%rax
	movl	%eax,U_$UMAIN_$$_SPR2X(%rip)
.Ll155:
# [227] spr2y:=920-3*(peek($d40d) and $F0);
	movl	$54285,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
# PeepHole Optimization,var1
# PeepHole Optimization,var9
	andl	$240,%eax
	leal	(%eax,%eax,2),%edx
	movl	$920,%eax
	subl	%edx,%eax
# PeepHole Optimization,MovMov2Mov1
	movl	%eax,U_$UMAIN_$$_SPR2Y(%rip)
.Ll156:
# [229] raml^[$18012]:=(spr2y shl 16)+spr2x+2048*(1-peek($70004));
	shll	$16,%eax
	movl	U_$UMAIN_$$_SPR2X(%rip),%edx
	leal	(%eax,%edx),%ebx
	movl	$458756,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	movl	$1,%edx
	subl	%eax,%edx
	shll	$11,%edx
	leal	(%ebx,%edx),%eax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movl	%eax,393288(%rdx)
.Ll157:
# [231] spr3x:=round(dpeek($d40e)/40+74);
	movl	$54286,%ecx
	call	RETRO_$$_DPEEK$LONGINT$$WORD
# PeepHole Optimization,var11
	andl	$65535,%eax
	cvtsi2sd	%eax,%xmm0
	mulsd	_$UMAIN$_Ld15(%rip),%xmm0
	addsd	_$UMAIN$_Ld16(%rip),%xmm0
	cvtsd2siq	%xmm0,%rax
	movl	%eax,U_$UMAIN_$$_SPR3X(%rip)
.Ll158:
# [232] spr3y:=920-3*(peek($d414) and $F0);
	movl	$54292,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
# PeepHole Optimization,var1
# PeepHole Optimization,var9
	andl	$240,%eax
	leal	(%eax,%eax,2),%edx
	movl	$920,%eax
	subl	%edx,%eax
# PeepHole Optimization,MovMov2Mov1
	movl	%eax,U_$UMAIN_$$_SPR3Y(%rip)
.Ll159:
# [234] raml^[$18014]:=(spr3y shl 16)+spr3x+2048*(1-peek($70005));
	shll	$16,%eax
	movl	U_$UMAIN_$$_SPR3X(%rip),%edx
	leal	(%eax,%edx),%ebx
	movl	$458757,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	movl	$1,%edx
	subl	%eax,%edx
	shll	$11,%edx
	leal	(%ebx,%edx),%eax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movl	%eax,393296(%rdx)
.Ll160:
# [236] raml^[$1801e]:=raml^[$1800B];
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393260(%rax),%eax
	movl	%eax,393336(%rdx)
.Ll161:
# [237] box(0,0,300,100,0); outtextxyz(0,0,floattostr(ftt),15,2,2) ;
	movl	$0,32(%rsp)
	movl	$100,%r9d
	movl	$300,%r8d
	movl	$0,%edx
	movl	$0,%ecx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movq	U_$RETRO_$$_FTT(%rip),%rdx
	leaq	-88(%rbp),%rcx
	call	SYSUTILS_$$_FLOATTOSTR$INT64$$ANSISTRING
	movq	-88(%rbp),%r8
	movl	$15,%r9d
	movl	$0,%edx
	movl	$0,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll162:
# [238] box(500,500,300,100,0); outtextxyz(500,500,floattostr(testoperator.adsrstate),15,2,2);        outtextxyz(500,532,floattostr(testoperator.adsrval),15,2,2);
	movl	$0,32(%rsp)
	movl	$100,%r9d
	movl	$300,%r8d
	movl	$500,%edx
	movl	$500,%ecx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movq	U_$RETRO_$$_TESTOPERATOR(%rip),%rax
	movslq	296(%rax),%rdx
	leaq	-88(%rbp),%rcx
	call	SYSUTILS_$$_FLOATTOSTR$INT64$$ANSISTRING
	movq	-88(%rbp),%r8
	movl	$15,%r9d
	movl	$500,%edx
	movl	$500,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movq	U_$RETRO_$$_TESTOPERATOR(%rip),%rax
	movsd	168(%rax),%xmm1
	leaq	-88(%rbp),%rcx
	call	SYSUTILS_$$_FLOATTOSTR$DOUBLE$$ANSISTRING
	movq	-88(%rbp),%r8
	movl	$15,%r9d
	movl	$532,%edx
	movl	$500,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj1175:
.Ll163:
	nop
.Lj634:
	movq	%rbp,%rcx
	call	UMAIN$_$MAIN2_$$_fin$1
.Ll164:
# [240] end;
	movq	-176(%rbp),%rbx
	movq	-168(%rbp),%rdi
	movq	-160(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj633
	.rva	.Lj634
	.rva	UMAIN$_$MAIN2_$$_fin$1

.section .text.n_umain_$$_main2,"x"
.seh_endproc
.Lc17:
.Lt3:
.Ll165:

.section .text.n_umain_$$_init_implicit$,"x"
	.balign 16,0x90
.globl	INIT$_$UMAIN
INIT$_$UMAIN:
.globl	UMAIN_$$_init_implicit$
UMAIN_$$_init_implicit$:
.Lc21:
.seh_proc UMAIN_$$_init_implicit$
	leaq	-40(%rsp),%rsp
.Lc23:
.seh_stackalloc 40
.seh_endprologue
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc22:
.Lt5:
.Ll166:

.section .text.n_umain_$$_finalize_implicit$,"x"
	.balign 16,0x90
.globl	FINALIZE$_$UMAIN
FINALIZE$_$UMAIN:
.globl	UMAIN_$$_finalize_implicit$
UMAIN_$$_finalize_implicit$:
.Lc24:
.seh_proc UMAIN_$$_finalize_implicit$
	leaq	-40(%rsp),%rsp
.Lc26:
.seh_stackalloc 40
.seh_endprologue
	leaq	U_$UMAIN_$$_SONGNAME(%rip),%rax
	movq	%rax,%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc25:
.Lt6:
.Ll167:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 4
# [umain.pas]
# [10] test:integer ;
	.globl U_$UMAIN_$$_TEST
U_$UMAIN_$$_TEST:
	.zero 4

.section .bss
	.balign 4
# [11] iii, i,j,k,l,fh2,lines:integer;
	.globl U_$UMAIN_$$_III
U_$UMAIN_$$_III:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_I
U_$UMAIN_$$_I:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_J
U_$UMAIN_$$_J:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_K
U_$UMAIN_$$_K:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_L
U_$UMAIN_$$_L:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_FH2
U_$UMAIN_$$_FH2:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_LINES
U_$UMAIN_$$_LINES:
	.zero 4

.section .bss
	.balign 8
# [13] event:tsdl_event;
	.globl U_$UMAIN_$$_EVENT
U_$UMAIN_$$_EVENT:
	.zero 56

.section .bss
	.balign 8
# [15] songname:string;
	.globl U_$UMAIN_$$_SONGNAME
U_$UMAIN_$$_SONGNAME:
	.zero 8

.section .bss
	.balign 8
# [16] q1,q2,q3:extended;
	.globl U_$UMAIN_$$_Q1
U_$UMAIN_$$_Q1:
	.zero 8

.section .bss
	.balign 8
	.globl U_$UMAIN_$$_Q2
U_$UMAIN_$$_Q2:
	.zero 8

.section .bss
	.balign 8
	.globl U_$UMAIN_$$_Q3
U_$UMAIN_$$_Q3:
	.zero 8

.section .bss
	.balign 8
# [17] thread:TRetro;
	.globl U_$UMAIN_$$_THREAD
U_$UMAIN_$$_THREAD:
	.zero 8

.section .bss
	.balign 4
# [19] sprx,sprxd,spryd,spry:integer;
	.globl U_$UMAIN_$$_SPRX
U_$UMAIN_$$_SPRX:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPRXD
U_$UMAIN_$$_SPRXD:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPRYD
U_$UMAIN_$$_SPRYD:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPRY
U_$UMAIN_$$_SPRY:
	.zero 4

.section .bss
	.balign 4
# [20] spr2x,spr2xd,spr2yd,spr2y:integer;
	.globl U_$UMAIN_$$_SPR2X
U_$UMAIN_$$_SPR2X:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR2XD
U_$UMAIN_$$_SPR2XD:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR2YD
U_$UMAIN_$$_SPR2YD:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR2Y
U_$UMAIN_$$_SPR2Y:
	.zero 4

.section .bss
	.balign 4
# [21] spr3x,spr3xd,spr3yd,spr3y:integer;
	.globl U_$UMAIN_$$_SPR3X
U_$UMAIN_$$_SPR3X:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR3XD
U_$UMAIN_$$_SPR3XD:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR3YD
U_$UMAIN_$$_SPR3YD:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR3Y
U_$UMAIN_$$_SPR3Y:
	.zero 4

.section .bss
	.balign 4
# [22] spr4x,spr4xd,spr4yd,spr4y:integer;
	.globl U_$UMAIN_$$_SPR4X
U_$UMAIN_$$_SPR4X:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR4XD
U_$UMAIN_$$_SPR4XD:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR4YD
U_$UMAIN_$$_SPR4YD:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR4Y
U_$UMAIN_$$_SPR4Y:
	.zero 4

.section .bss
	.balign 4
# [23] spr5x,spr5xd,spr5yd,spr5y:integer;
	.globl U_$UMAIN_$$_SPR5X
U_$UMAIN_$$_SPR5X:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR5XD
U_$UMAIN_$$_SPR5XD:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR5YD
U_$UMAIN_$$_SPR5YD:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR5Y
U_$UMAIN_$$_SPR5Y:
	.zero 4

.section .bss
	.balign 4
# [24] spr6x,spr6xd,spr6yd,spr6y:integer;
	.globl U_$UMAIN_$$_SPR6X
U_$UMAIN_$$_SPR6X:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR6XD
U_$UMAIN_$$_SPR6XD:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR6YD
U_$UMAIN_$$_SPR6YD:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR6Y
U_$UMAIN_$$_SPR6Y:
	.zero 4

.section .bss
	.balign 4
# [25] spr7x,spr7xd,spr7yd,spr7y:integer;
	.globl U_$UMAIN_$$_SPR7X
U_$UMAIN_$$_SPR7X:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR7XD
U_$UMAIN_$$_SPR7XD:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR7YD
U_$UMAIN_$$_SPR7YD:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR7Y
U_$UMAIN_$$_SPR7Y:
	.zero 4

.section .bss
	.balign 4
# [26] spr8x,spr8xd,spr8yd,spr8y:integer;
	.globl U_$UMAIN_$$_SPR8X
U_$UMAIN_$$_SPR8X:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR8XD
U_$UMAIN_$$_SPR8XD:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR8YD
U_$UMAIN_$$_SPR8YD:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_SPR8Y
U_$UMAIN_$$_SPR8Y:
	.zero 4

.section .bss
	.balign 8
# [35] ttttt,ttt:int64;
	.globl U_$UMAIN_$$_TTTTT
U_$UMAIN_$$_TTTTT:
	.zero 8

.section .bss
	.balign 8
	.globl U_$UMAIN_$$_TTT
U_$UMAIN_$$_TTT:
	.zero 8

.section .bss
	.balign 4
# [36] qq:integer;
	.globl U_$UMAIN_$$_QQ
U_$UMAIN_$$_QQ:
	.zero 4
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .data.n_tc_$umain_$$_licznik,"d"
	.balign 4
.globl	TC_$UMAIN_$$_LICZNIK
TC_$UMAIN_$$_LICZNIK:
	.long	0

.section .data.n_tc_$umain_$$_c,"d"
	.balign 8
.globl	TC_$UMAIN_$$_C
TC_$UMAIN_$$_C:
	.quad	0
# [29] c6:int64=1;

.section .data.n_tc_$umain_$$_c6,"d"
	.balign 8
.globl	TC_$UMAIN_$$_C6
TC_$UMAIN_$$_C6:
	.quad	1
# [30] avsct:int64=0;

.section .data.n_tc_$umain_$$_avsct,"d"
	.balign 8
.globl	TC_$UMAIN_$$_AVSCT
TC_$UMAIN_$$_AVSCT:
	.quad	0
# [31] avspt:int64=0;

.section .data.n_tc_$umain_$$_avspt,"d"
	.balign 8
.globl	TC_$UMAIN_$$_AVSPT
TC_$UMAIN_$$_AVSPT:
	.quad	0
# [32] avall:int64=0;

.section .data.n_tc_$umain_$$_avall,"d"
	.balign 8
.globl	TC_$UMAIN_$$_AVALL
TC_$UMAIN_$$_AVALL:
	.quad	0
# [33] avsid:int64=0;

.section .data.n_tc_$umain_$$_avsid,"d"
	.balign 8
.globl	TC_$UMAIN_$$_AVSID
TC_$UMAIN_$$_AVSID:
	.quad	0
# [34] av6502:int64=0;

.section .data.n_tc_$umain_$$_av6502,"d"
	.balign 8
.globl	TC_$UMAIN_$$_AV6502
TC_$UMAIN_$$_AV6502:
	.quad	0

.section .data.n_tc_$umain_$$_pause,"d"
.globl	TC_$UMAIN_$$_PAUSE
TC_$UMAIN_$$_PAUSE:
	.byte	0
# [40] procedure main1;

.section .rodata.n__$UMAIN$_Ld1,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,50
.globl	_$UMAIN$_Ld1
_$UMAIN$_Ld1:
	.ascii	"The retromachine SID player v. 0.04 --- 2016.04.28\000"

.section .rodata.n__$UMAIN$_Ld2,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,12
.globl	_$UMAIN$_Ld2
_$UMAIN$_Ld2:
	.ascii	"Screen time:\000"

.section .rodata.n__$UMAIN$_Ld3,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,97
.globl	_$UMAIN$_Ld3
_$UMAIN$_Ld3:
	.ascii	"A retromachine SID player by pik33 --- inspired by "
	.ascii	"Johannes Ahlebrand's Parallax Propeller SIDCog\000"

.section .rodata.n__$UMAIN$_Ld4,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,11
.globl	_$UMAIN$_Ld4
_$UMAIN$_Ld4:
	.ascii	"Now playing\000"

.section .rodata.n__$UMAIN$_Ld5,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,9
.globl	_$UMAIN$_Ld5
_$UMAIN$_Ld5:
	.ascii	"File info\000"

.section .rodata.n__$UMAIN$_Ld6,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,5
.globl	_$UMAIN$_Ld6
_$UMAIN$_Ld6:
	.ascii	"Files\000"

.section .rodata.n__$UMAIN$_Ld7,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$UMAIN$_Ld7
_$UMAIN$_Ld7:
	.ascii	"0\000"

.section .rodata.n__$UMAIN$_Ld8,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$UMAIN$_Ld8
_$UMAIN$_Ld8:
	.ascii	":\000"

.section .rodata.n__$UMAIN$_Ld9,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,17
.globl	_$UMAIN$_Ld9
_$UMAIN$_Ld9:
	.ascii	"Avg screen time: \000"

.section .rodata.n__$UMAIN$_Ld10,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,3
.globl	_$UMAIN$_Ld10
_$UMAIN$_Ld10:
	.ascii	" us\000"

.section .rodata.n__$UMAIN$_Ld11,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,17
.globl	_$UMAIN$_Ld11
_$UMAIN$_Ld11:
	.ascii	"Avg sprite time: \000"

.section .rodata.n__$UMAIN$_Ld12,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,14
.globl	_$UMAIN$_Ld12
_$UMAIN$_Ld12:
	.ascii	"Avg SID time: \000"

.section .rodata.n__$UMAIN$_Ld13,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,11
.globl	_$UMAIN$_Ld13
_$UMAIN$_Ld13:
	.ascii	"6502 time: \000"

.section .rodata.n__$UMAIN$_Ld14,"d"
	.balign 8
.globl	_$UMAIN$_Ld14
_$UMAIN$_Ld14:
# value: 0d+6.2500000000000000E-002
	.byte	0,0,0,0,0,0,176,63

.section .rodata.n__$UMAIN$_Ld15,"d"
	.balign 8
.globl	_$UMAIN$_Ld15
_$UMAIN$_Ld15:
# value: 0d+2.5000000000000001E-002
	.byte	154,153,153,153,153,153,153,63

.section .rodata.n__$UMAIN$_Ld16,"d"
	.balign 8
.globl	_$UMAIN$_Ld16
_$UMAIN$_Ld16:
# value: 0d+7.4000000000000000E+001
	.byte	0,0,0,0,0,128,82,64
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .data.n_RTTI_$UMAIN_$$_DEF57,"d"
	.balign 8
.globl	RTTI_$UMAIN_$$_DEF57
RTTI_$UMAIN_$$_DEF57:
	.byte	12
# [245] 
	.ascii	"\000"
	.quad	40,5
	.quad	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT

.section .data.n_RTTI_$UMAIN_$$_DEF59,"d"
	.balign 8
.globl	RTTI_$UMAIN_$$_DEF59
RTTI_$UMAIN_$$_DEF59:
	.byte	12
	.ascii	"\000"
	.quad	24,3
	.quad	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT

.section .data.n_RTTI_$UMAIN_$$_DEF60,"d"
	.balign 8
.globl	RTTI_$UMAIN_$$_DEF60
RTTI_$UMAIN_$$_DEF60:
	.byte	12
	.ascii	"\000"
	.quad	24,3
	.quad	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT

.section .data.n_RTTI_$UMAIN_$$_DEF61,"d"
	.balign 8
.globl	RTTI_$UMAIN_$$_DEF61
RTTI_$UMAIN_$$_DEF61:
	.byte	12
	.ascii	"\000"
	.quad	24,3
	.quad	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT

.section .data.n_RTTI_$UMAIN_$$_DEF62,"d"
	.balign 8
.globl	RTTI_$UMAIN_$$_DEF62
RTTI_$UMAIN_$$_DEF62:
	.byte	12
	.ascii	"\000"
	.quad	24,3
	.quad	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc27:
	.long	.Lc29-.Lc28
.Lc28:
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
.Lc29:
	.long	.Lc31-.Lc30
.Lc30:
	.secrel32	.Lc27
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
.Lc31:
	.long	.Lc33-.Lc32
.Lc32:
	.secrel32	.Lc27
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
.Lc33:
	.long	.Lc35-.Lc34
.Lc34:
	.secrel32	.Lc27
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
.Lc35:
	.long	.Lc37-.Lc36
.Lc36:
	.secrel32	.Lc27
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
.Lc37:
	.long	.Lc39-.Lc38
.Lc38:
	.secrel32	.Lc27
	.quad	.Lc21
	.quad	.Lc22-.Lc21
	.byte	4
	.long	.Lc23-.Lc21
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc39:
	.long	.Lc41-.Lc40
.Lc40:
	.secrel32	.Lc27
	.quad	.Lc24
	.quad	.Lc25-.Lc24
	.byte	4
	.long	.Lc26-.Lc24
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
# [47] procedure main1 ;
	.ascii	"umain.pas\000"
	.ascii	"Free Pascal 3.0.4 2018/02/25\000"
	.ascii	"D:/programowanie/20180824 retro-fm/\000"
	.byte	9
	.byte	3
	.secrel32	.Ldebug_line0
	.quad	DEBUGSTART_$UMAIN
	.quad	DEBUGEND_$UMAIN
# Syms - Begin unit UMAIN has index 11
# Symbol UMAIN
# Symbol SYSTEM
# Symbol OBJPAS
# Symbol SDL2
# Symbol SYSUTILS
# Symbol CLASSES
# Symbol RETRO
# Symbol MIDI
# Symbol MATH
# Symbol TEST
	.uleb128	2
	.ascii	"TEST\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_TEST
	.long	.La1-.Ldebug_info0
# Symbol III
	.uleb128	2
	.ascii	"III\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_III
	.long	.La1-.Ldebug_info0
# Symbol I
	.uleb128	2
	.ascii	"I\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_I
	.long	.La1-.Ldebug_info0
# Symbol J
	.uleb128	2
	.ascii	"J\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_J
	.long	.La1-.Ldebug_info0
# Symbol K
	.uleb128	2
	.ascii	"K\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_K
	.long	.La1-.Ldebug_info0
# Symbol L
	.uleb128	2
	.ascii	"L\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_L
	.long	.La1-.Ldebug_info0
# Symbol FH2
	.uleb128	2
	.ascii	"FH2\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_FH2
	.long	.La1-.Ldebug_info0
# Symbol LINES
	.uleb128	2
	.ascii	"LINES\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_LINES
	.long	.La1-.Ldebug_info0
# Symbol EVENT
	.uleb128	2
	.ascii	"EVENT\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_EVENT
	.long	.La3-.Ldebug_info0
# Symbol LICZNIK
	.uleb128	2
	.ascii	"LICZNIK\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$UMAIN_$$_LICZNIK
	.long	.La1-.Ldebug_info0
# Symbol SONGNAME
	.uleb128	2
	.ascii	"SONGNAME\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SONGNAME
	.long	.La5-.Ldebug_info0
# Symbol Q1
	.uleb128	2
	.ascii	"Q1\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_Q1
	.long	.La7-.Ldebug_info0
# Symbol Q2
	.uleb128	2
	.ascii	"Q2\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_Q2
	.long	.La7-.Ldebug_info0
# Symbol Q3
	.uleb128	2
	.ascii	"Q3\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_Q3
	.long	.La7-.Ldebug_info0
# Symbol THREAD
	.uleb128	2
	.ascii	"THREAD\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_THREAD
	.long	.La9-.Ldebug_info0
# Symbol SPRX
	.uleb128	2
	.ascii	"SPRX\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPRX
	.long	.La1-.Ldebug_info0
# Symbol SPRXD
	.uleb128	2
	.ascii	"SPRXD\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPRXD
	.long	.La1-.Ldebug_info0
# Symbol SPRYD
	.uleb128	2
	.ascii	"SPRYD\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPRYD
	.long	.La1-.Ldebug_info0
# Symbol SPRY
	.uleb128	2
	.ascii	"SPRY\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPRY
	.long	.La1-.Ldebug_info0
# Symbol SPR2X
	.uleb128	2
	.ascii	"SPR2X\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR2X
	.long	.La1-.Ldebug_info0
# Symbol SPR2XD
	.uleb128	2
	.ascii	"SPR2XD\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR2XD
	.long	.La1-.Ldebug_info0
# Symbol SPR2YD
	.uleb128	2
	.ascii	"SPR2YD\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR2YD
	.long	.La1-.Ldebug_info0
# Symbol SPR2Y
	.uleb128	2
	.ascii	"SPR2Y\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR2Y
	.long	.La1-.Ldebug_info0
# Symbol SPR3X
	.uleb128	2
	.ascii	"SPR3X\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR3X
	.long	.La1-.Ldebug_info0
# Symbol SPR3XD
	.uleb128	2
	.ascii	"SPR3XD\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR3XD
	.long	.La1-.Ldebug_info0
# Symbol SPR3YD
	.uleb128	2
	.ascii	"SPR3YD\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR3YD
	.long	.La1-.Ldebug_info0
# Symbol SPR3Y
	.uleb128	2
	.ascii	"SPR3Y\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR3Y
	.long	.La1-.Ldebug_info0
# Symbol SPR4X
	.uleb128	2
	.ascii	"SPR4X\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR4X
	.long	.La1-.Ldebug_info0
# Symbol SPR4XD
	.uleb128	2
	.ascii	"SPR4XD\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR4XD
	.long	.La1-.Ldebug_info0
# Symbol SPR4YD
	.uleb128	2
	.ascii	"SPR4YD\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR4YD
	.long	.La1-.Ldebug_info0
# Symbol SPR4Y
	.uleb128	2
	.ascii	"SPR4Y\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR4Y
	.long	.La1-.Ldebug_info0
# Symbol SPR5X
	.uleb128	2
	.ascii	"SPR5X\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR5X
	.long	.La1-.Ldebug_info0
# Symbol SPR5XD
	.uleb128	2
	.ascii	"SPR5XD\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR5XD
	.long	.La1-.Ldebug_info0
# Symbol SPR5YD
	.uleb128	2
	.ascii	"SPR5YD\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR5YD
	.long	.La1-.Ldebug_info0
# Symbol SPR5Y
	.uleb128	2
	.ascii	"SPR5Y\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR5Y
	.long	.La1-.Ldebug_info0
# Symbol SPR6X
	.uleb128	2
	.ascii	"SPR6X\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR6X
	.long	.La1-.Ldebug_info0
# Symbol SPR6XD
	.uleb128	2
	.ascii	"SPR6XD\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR6XD
	.long	.La1-.Ldebug_info0
# Symbol SPR6YD
	.uleb128	2
	.ascii	"SPR6YD\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR6YD
	.long	.La1-.Ldebug_info0
# Symbol SPR6Y
	.uleb128	2
	.ascii	"SPR6Y\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR6Y
	.long	.La1-.Ldebug_info0
# Symbol SPR7X
	.uleb128	2
	.ascii	"SPR7X\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR7X
	.long	.La1-.Ldebug_info0
# Symbol SPR7XD
	.uleb128	2
	.ascii	"SPR7XD\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR7XD
	.long	.La1-.Ldebug_info0
# Symbol SPR7YD
	.uleb128	2
	.ascii	"SPR7YD\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR7YD
	.long	.La1-.Ldebug_info0
# Symbol SPR7Y
	.uleb128	2
	.ascii	"SPR7Y\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR7Y
	.long	.La1-.Ldebug_info0
# Symbol SPR8X
	.uleb128	2
	.ascii	"SPR8X\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR8X
	.long	.La1-.Ldebug_info0
# Symbol SPR8XD
	.uleb128	2
	.ascii	"SPR8XD\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR8XD
	.long	.La1-.Ldebug_info0
# Symbol SPR8YD
	.uleb128	2
	.ascii	"SPR8YD\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR8YD
	.long	.La1-.Ldebug_info0
# Symbol SPR8Y
	.uleb128	2
	.ascii	"SPR8Y\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SPR8Y
	.long	.La1-.Ldebug_info0
# Symbol C
	.uleb128	2
	.ascii	"C\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$UMAIN_$$_C
	.long	.La12-.Ldebug_info0
# Symbol C6
	.uleb128	2
	.ascii	"C6\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$UMAIN_$$_C6
	.long	.La12-.Ldebug_info0
# Symbol AVSCT
	.uleb128	2
	.ascii	"AVSCT\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$UMAIN_$$_AVSCT
	.long	.La12-.Ldebug_info0
# Symbol AVSPT
	.uleb128	2
	.ascii	"AVSPT\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$UMAIN_$$_AVSPT
	.long	.La12-.Ldebug_info0
# Symbol AVALL
	.uleb128	2
	.ascii	"AVALL\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$UMAIN_$$_AVALL
	.long	.La12-.Ldebug_info0
# Symbol AVSID
	.uleb128	2
	.ascii	"AVSID\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$UMAIN_$$_AVSID
	.long	.La12-.Ldebug_info0
# Symbol AV6502
	.uleb128	2
	.ascii	"AV6502\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$UMAIN_$$_AV6502
	.long	.La12-.Ldebug_info0
# Symbol TTTTT
	.uleb128	2
	.ascii	"TTTTT\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_TTTTT
	.long	.La12-.Ldebug_info0
# Symbol TTT
	.uleb128	2
	.ascii	"TTT\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_TTT
	.long	.La12-.Ldebug_info0
# Symbol QQ
	.uleb128	2
	.ascii	"QQ\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_QQ
	.long	.La1-.Ldebug_info0
# Symbol PAUSE
	.uleb128	2
	.ascii	"PAUSE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$UMAIN_$$_PAUSE
	.long	.La14-.Ldebug_info0
# Symbol MAIN1
# Symbol MAIN2
# Syms - End unit UMAIN has index 11
# Syms - Begin Staticsymtable
# Symbol UMAIN_$$_init$
# Symbol UMAIN_$$_init_implicit$
# Symbol UMAIN_$$_finalize_implicit$
# Syms - End Staticsymtable
# Procdef main1;
	.uleb128	3
	.ascii	"MAIN1\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UMAIN_$$_MAIN1
	.quad	.Lt1
# Symbol T
	.uleb128	4
	.ascii	"T\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La12-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La1-.Ldebug_info0
# Symbol fin$0
	.byte	0
# Procdef $fin$0(<^untyped>) is nested;
	.uleb128	5
	.ascii	"fin$0\000"
	.byte	1
	.byte	65
	.quad	UMAIN$_$MAIN1_$$_fin$0
	.quad	.Lt2
# Symbol parentfp
	.uleb128	6
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef main2;
	.uleb128	3
	.ascii	"MAIN2\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UMAIN_$$_MAIN2
	.quad	.Lt3
# Symbol II
# Symbol III
# Symbol IL
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La1-.Ldebug_info0
# Symbol BUF
# Symbol MM
	.uleb128	4
	.ascii	"MM\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La12-.Ldebug_info0
# Symbol HH
	.uleb128	4
	.ascii	"HH\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La12-.Ldebug_info0
# Symbol SS
	.uleb128	4
	.ascii	"SS\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La12-.Ldebug_info0
# Symbol MMS
	.uleb128	4
	.ascii	"MMS\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La5-.Ldebug_info0
# Symbol HHS
	.uleb128	4
	.ascii	"HHS\000"
	.byte	2
	.byte	118
	.sleb128	-48
	.long	.La5-.Ldebug_info0
# Symbol SSS
	.uleb128	4
	.ascii	"SSS\000"
	.byte	2
	.byte	118
	.sleb128	-56
	.long	.La5-.Ldebug_info0
# Symbol KWAS
# Symbol RECT
# Symbol F
# Symbol AA
# Symbol AAA
# Symbol AAAA
# Symbol MD
# Symbol fin$1
	.byte	0
# Procdef $fin$1(<^untyped>) is nested;
	.uleb128	5
	.ascii	"fin$1\000"
	.byte	1
	.byte	65
	.quad	UMAIN$_$MAIN2_$$_fin$1
	.quad	.Lt4
# Symbol parentfp
	.uleb128	6
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef $UMAIN_$$_init_implicit$; Register;
	.uleb128	3
	.ascii	"UMAIN_$$_init_implicit$\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UMAIN_$$_init_implicit$
	.quad	.Lt5
	.byte	0
# Procdef $UMAIN_$$_finalize_implicit$; Register;
	.uleb128	3
	.ascii	"UMAIN_$$_finalize_implicit$\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UMAIN_$$_finalize_implicit$
	.quad	.Lt6
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition LongInt
.La1:
	.uleb128	7
	.ascii	"LONGINT\000"
	.long	.La18-.Ldebug_info0
.La18:
	.uleb128	8
	.ascii	"LONGINT\000"
	.byte	5
	.byte	4
.La2:
	.uleb128	9
	.long	.La1-.Ldebug_info0
# Definition Int64
.La12:
	.uleb128	7
	.ascii	"INT64\000"
	.long	.La19-.Ldebug_info0
.La19:
	.uleb128	8
	.ascii	"Int64\000"
	.byte	5
	.byte	8
.La13:
	.uleb128	9
	.long	.La12-.Ldebug_info0
# Definition Boolean
.La14:
	.uleb128	7
	.ascii	"BOOLEAN\000"
	.long	.La20-.Ldebug_info0
.La20:
	.uleb128	8
	.ascii	"Boolean\000"
	.byte	2
	.byte	1
.La15:
	.uleb128	9
	.long	.La14-.Ldebug_info0
# Definition AnsiString
.La5:
	.uleb128	7
	.ascii	"ANSISTRING\000"
	.long	.La21-.Ldebug_info0
.La21:
	.uleb128	10
	.long	.La22-.Ldebug_info0
.La6:
	.uleb128	9
	.long	.La5-.Ldebug_info0
# Definition Double
.La7:
	.uleb128	7
	.ascii	"DOUBLE\000"
	.long	.La24-.Ldebug_info0
.La24:
	.uleb128	8
	.ascii	"DOUBLE\000"
	.byte	4
	.byte	8
.La8:
	.uleb128	9
	.long	.La7-.Ldebug_info0
# Definition ^untyped
.La16:
	.uleb128	7
	.ascii	"parentfp_void_pointer\000"
	.long	.La25-.Ldebug_info0
.La25:
	.uleb128	11
.La17:
	.uleb128	9
	.long	.La16-.Ldebug_info0
# Definition Char
.La22:
	.uleb128	7
	.ascii	"CHAR\000"
	.long	.La26-.Ldebug_info0
.La26:
	.uleb128	8
	.ascii	"Char\000"
	.byte	8
	.byte	1
.La23:
	.uleb128	9
	.long	.La22-.Ldebug_info0
# Defs - End unit SYSTEM has index 1
# Defs - Begin unit OBJPAS has index 6
# Defs - End unit OBJPAS has index 6
# Defs - Begin unit SDL2 has index 254
# Definition TSDL_Event
.La3:
	.uleb128	7
	.ascii	"TSDL_EVENT\000"
	.long	.La27-.Ldebug_info0
.La27:
	.uleb128	12
	.ascii	"TSDL_EVENT\000"
	.uleb128	56
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"COMMON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	13
	.ascii	"WINDOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La32-.Ldebug_info0
	.uleb128	13
	.ascii	"KEY\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La34-.Ldebug_info0
	.uleb128	13
	.ascii	"EDIT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La36-.Ldebug_info0
	.uleb128	13
	.ascii	"TEXT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La38-.Ldebug_info0
	.uleb128	13
	.ascii	"MOTION\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La40-.Ldebug_info0
	.uleb128	13
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La42-.Ldebug_info0
	.uleb128	13
	.ascii	"WHEEL\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La44-.Ldebug_info0
	.uleb128	13
	.ascii	"JAXIS\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La46-.Ldebug_info0
	.uleb128	13
	.ascii	"JBALL\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La48-.Ldebug_info0
	.uleb128	13
	.ascii	"JHAT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La50-.Ldebug_info0
	.uleb128	13
	.ascii	"JBUTTON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La52-.Ldebug_info0
	.uleb128	13
	.ascii	"JDEVICE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La54-.Ldebug_info0
	.uleb128	13
	.ascii	"CAXIS\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La56-.Ldebug_info0
	.uleb128	13
	.ascii	"CBUTTON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La58-.Ldebug_info0
	.uleb128	13
	.ascii	"CDEVICE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La60-.Ldebug_info0
	.uleb128	13
	.ascii	"QUIT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La62-.Ldebug_info0
	.uleb128	13
	.ascii	"USER\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La64-.Ldebug_info0
	.uleb128	13
	.ascii	"SYSWM\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La66-.Ldebug_info0
	.uleb128	13
	.ascii	"TFINGER\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La68-.Ldebug_info0
	.uleb128	13
	.ascii	"MGESTURE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La70-.Ldebug_info0
	.uleb128	13
	.ascii	"DGESTURE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La72-.Ldebug_info0
	.uleb128	13
	.ascii	"DROP\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La74-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La76-.Ldebug_info0
	.byte	0
.La4:
	.uleb128	9
	.long	.La3-.Ldebug_info0
# Definition TSDL_CommonEvent
.La30:
	.uleb128	7
	.ascii	"TSDL_COMMONEVENT\000"
	.long	.La78-.Ldebug_info0
.La78:
	.uleb128	12
	.ascii	"TSDL_COMMONEVENT\000"
	.uleb128	8
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.byte	0
.La31:
	.uleb128	9
	.long	.La30-.Ldebug_info0
# Definition TSDL_WindowEvent
.La32:
	.uleb128	7
	.ascii	"TSDL_WINDOWEVENT\000"
	.long	.La79-.Ldebug_info0
.La79:
	.uleb128	12
	.ascii	"TSDL_WINDOWEVENT\000"
	.uleb128	24
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"EVENT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La1-.Ldebug_info0
	.byte	0
.La33:
	.uleb128	9
	.long	.La32-.Ldebug_info0
# Definition TSDL_KeyboardEvent
.La34:
	.uleb128	7
	.ascii	"TSDL_KEYBOARDEVENT\000"
	.long	.La82-.Ldebug_info0
.La82:
	.uleb128	12
	.ascii	"TSDL_KEYBOARDEVENT\000"
	.uleb128	32
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"REPEAT_\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"KEYSYM\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La83-.Ldebug_info0
	.byte	0
.La35:
	.uleb128	9
	.long	.La34-.Ldebug_info0
# Definition TSDL_TextEditingEvent
.La36:
	.uleb128	7
	.ascii	"TSDL_TEXTEDITINGEVENT\000"
	.long	.La85-.Ldebug_info0
.La85:
	.uleb128	12
	.ascii	"TSDL_TEXTEDITINGEVENT\000"
	.uleb128	52
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TEXT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La86-.Ldebug_info0
	.uleb128	13
	.ascii	"START\000"
	.byte	2
	.byte	35
	.uleb128	44
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"LENGTH\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La1-.Ldebug_info0
	.byte	0
.La37:
	.uleb128	9
	.long	.La36-.Ldebug_info0
# Definition TSDL_TextInputEvent
.La38:
	.uleb128	7
	.ascii	"TSDL_TEXTINPUTEVENT\000"
	.long	.La88-.Ldebug_info0
.La88:
	.uleb128	12
	.ascii	"TSDL_TEXTINPUTEVENT\000"
	.uleb128	44
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TEXT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La89-.Ldebug_info0
	.byte	0
.La39:
	.uleb128	9
	.long	.La38-.Ldebug_info0
# Definition TSDL_MouseMotionEvent
.La40:
	.uleb128	7
	.ascii	"TSDL_MOUSEMOTIONEVENT\000"
	.long	.La91-.Ldebug_info0
.La91:
	.uleb128	12
	.ascii	"TSDL_MOUSEMOTIONEVENT\000"
	.uleb128	36
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"XREL\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"YREL\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La1-.Ldebug_info0
	.byte	0
.La41:
	.uleb128	9
	.long	.La40-.Ldebug_info0
# Definition TSDL_MouseButtonEvent
.La42:
	.uleb128	7
	.ascii	"TSDL_MOUSEBUTTONEVENT\000"
	.long	.La92-.Ldebug_info0
.La92:
	.uleb128	12
	.ascii	"TSDL_MOUSEBUTTONEVENT\000"
	.uleb128	28
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	17
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"CLICKS\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	19
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La1-.Ldebug_info0
	.byte	0
.La43:
	.uleb128	9
	.long	.La42-.Ldebug_info0
# Definition TSDL_MouseWheelEvent
.La44:
	.uleb128	7
	.ascii	"TSDL_MOUSEWHEELEVENT\000"
	.long	.La93-.Ldebug_info0
.La93:
	.uleb128	12
	.ascii	"TSDL_MOUSEWHEELEVENT\000"
	.uleb128	24
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La1-.Ldebug_info0
	.byte	0
.La45:
	.uleb128	9
	.long	.La44-.Ldebug_info0
# Definition TSDL_JoyAxisEvent
.La46:
	.uleb128	7
	.ascii	"TSDL_JOYAXISEVENT\000"
	.long	.La94-.Ldebug_info0
.La94:
	.uleb128	12
	.ascii	"TSDL_JOYAXISEVENT\000"
	.uleb128	20
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"AXIS\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"VALUE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La95-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING4\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La97-.Ldebug_info0
	.byte	0
.La47:
	.uleb128	9
	.long	.La46-.Ldebug_info0
# Definition TSDL_JoyBallEvent
.La48:
	.uleb128	7
	.ascii	"TSDL_JOYBALLEVENT\000"
	.long	.La99-.Ldebug_info0
.La99:
	.uleb128	12
	.ascii	"TSDL_JOYBALLEVENT\000"
	.uleb128	20
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"BALL\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"XREL\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La95-.Ldebug_info0
	.uleb128	13
	.ascii	"YREL\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La95-.Ldebug_info0
	.byte	0
.La49:
	.uleb128	9
	.long	.La48-.Ldebug_info0
# Definition TSDL_JoyHatEvent
.La50:
	.uleb128	7
	.ascii	"TSDL_JOYHATEVENT\000"
	.long	.La100-.Ldebug_info0
.La100:
	.uleb128	12
	.ascii	"TSDL_JOYHATEVENT\000"
	.uleb128	16
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"HAT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"VALUE\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La80-.Ldebug_info0
	.byte	0
.La51:
	.uleb128	9
	.long	.La50-.Ldebug_info0
# Definition TSDL_JoyButtonEvent
.La52:
	.uleb128	7
	.ascii	"TSDL_JOYBUTTONEVENT\000"
	.long	.La101-.Ldebug_info0
.La101:
	.uleb128	12
	.ascii	"TSDL_JOYBUTTONEVENT\000"
	.uleb128	16
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La80-.Ldebug_info0
	.byte	0
.La53:
	.uleb128	9
	.long	.La52-.Ldebug_info0
# Definition TSDL_JoyDeviceEvent
.La54:
	.uleb128	7
	.ascii	"TSDL_JOYDEVICEEVENT\000"
	.long	.La102-.Ldebug_info0
.La102:
	.uleb128	12
	.ascii	"TSDL_JOYDEVICEEVENT\000"
	.uleb128	12
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.byte	0
.La55:
	.uleb128	9
	.long	.La54-.Ldebug_info0
# Definition TSDL_ControllerAxisEvent
.La56:
	.uleb128	7
	.ascii	"TSDL_CONTROLLERAXISEVENT\000"
	.long	.La103-.Ldebug_info0
.La103:
	.uleb128	12
	.ascii	"TSDL_CONTROLLERAXISEVENT\000"
	.uleb128	20
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"AXIS\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"VALUE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La95-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING4\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La97-.Ldebug_info0
	.byte	0
.La57:
	.uleb128	9
	.long	.La56-.Ldebug_info0
# Definition TSDL_ControllerButtonEvent
.La58:
	.uleb128	7
	.ascii	"TSDL_CONTROLLERBUTTONEVENT\000"
	.long	.La104-.Ldebug_info0
.La104:
	.uleb128	12
	.ascii	"TSDL_CONTROLLERBUTTONEVENT\000"
	.uleb128	16
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La80-.Ldebug_info0
	.byte	0
.La59:
	.uleb128	9
	.long	.La58-.Ldebug_info0
# Definition TSDL_ControllerDeviceEvent
.La60:
	.uleb128	7
	.ascii	"TSDL_CONTROLLERDEVICEEVENT\000"
	.long	.La105-.Ldebug_info0
.La105:
	.uleb128	12
	.ascii	"TSDL_CONTROLLERDEVICEEVENT\000"
	.uleb128	12
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.byte	0
.La61:
	.uleb128	9
	.long	.La60-.Ldebug_info0
# Definition TSDL_TouchFingerEvent
.La68:
	.uleb128	7
	.ascii	"TSDL_TOUCHFINGEREVENT\000"
	.long	.La106-.Ldebug_info0
.La106:
	.uleb128	12
	.ascii	"TSDL_TOUCHFINGEREVENT\000"
	.uleb128	48
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TOUCHID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La12-.Ldebug_info0
	.uleb128	13
	.ascii	"FINGERID\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La12-.Ldebug_info0
	.uleb128	13
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La107-.Ldebug_info0
	.uleb128	13
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La107-.Ldebug_info0
	.uleb128	13
	.ascii	"DX\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La107-.Ldebug_info0
	.uleb128	13
	.ascii	"DY\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La107-.Ldebug_info0
	.uleb128	13
	.ascii	"PRESSURE\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La107-.Ldebug_info0
	.byte	0
.La69:
	.uleb128	9
	.long	.La68-.Ldebug_info0
# Definition TSDL_MultiGestureEvent
.La70:
	.uleb128	7
	.ascii	"TSDL_MULTIGESTUREEVENT\000"
	.long	.La109-.Ldebug_info0
.La109:
	.uleb128	12
	.ascii	"TSDL_MULTIGESTUREEVENT\000"
	.uleb128	40
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TOUCHID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La12-.Ldebug_info0
	.uleb128	13
	.ascii	"DTHETA\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La107-.Ldebug_info0
	.uleb128	13
	.ascii	"DDIST\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La107-.Ldebug_info0
	.uleb128	13
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La107-.Ldebug_info0
	.uleb128	13
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La107-.Ldebug_info0
	.uleb128	13
	.ascii	"NUMFINGERS\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La97-.Ldebug_info0
	.uleb128	13
	.ascii	"PADDING\000"
	.byte	2
	.byte	35
	.uleb128	34
	.long	.La97-.Ldebug_info0
	.byte	0
.La71:
	.uleb128	9
	.long	.La70-.Ldebug_info0
# Definition TSDL_DollarGestureEvent
.La72:
	.uleb128	7
	.ascii	"TSDL_DOLLARGESTUREEVENT\000"
	.long	.La110-.Ldebug_info0
.La110:
	.uleb128	12
	.ascii	"TSDL_DOLLARGESTUREEVENT\000"
	.uleb128	40
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TOUCHID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La12-.Ldebug_info0
	.uleb128	13
	.ascii	"GESTUREID\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La12-.Ldebug_info0
	.uleb128	13
	.ascii	"NUMFINGERS\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"ERROR\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La107-.Ldebug_info0
	.uleb128	13
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La107-.Ldebug_info0
	.uleb128	13
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La107-.Ldebug_info0
	.byte	0
.La73:
	.uleb128	9
	.long	.La72-.Ldebug_info0
# Definition TSDL_DropEvent
.La74:
	.uleb128	7
	.ascii	"TSDL_DROPEVENT\000"
	.long	.La111-.Ldebug_info0
.La111:
	.uleb128	12
	.ascii	"TSDL_DROPEVENT\000"
	.uleb128	16
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"FILE_\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La112-.Ldebug_info0
	.byte	0
.La75:
	.uleb128	9
	.long	.La74-.Ldebug_info0
# Definition TSDL_QuitEvent
.La62:
	.uleb128	7
	.ascii	"TSDL_QUITEVENT\000"
	.long	.La114-.Ldebug_info0
.La114:
	.uleb128	12
	.ascii	"TSDL_QUITEVENT\000"
	.uleb128	8
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.byte	0
.La63:
	.uleb128	9
	.long	.La62-.Ldebug_info0
# Definition TSDL_UserEvent
.La64:
	.uleb128	7
	.ascii	"TSDL_USEREVENT\000"
	.long	.La115-.Ldebug_info0
.La115:
	.uleb128	12
	.ascii	"TSDL_USEREVENT\000"
	.uleb128	32
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"CODE\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La116-.Ldebug_info0
	.uleb128	13
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La116-.Ldebug_info0
	.byte	0
.La65:
	.uleb128	9
	.long	.La64-.Ldebug_info0
# Definition TSDL_SysWMEvent
.La66:
	.uleb128	7
	.ascii	"TSDL_SYSWMEVENT\000"
	.long	.La118-.Ldebug_info0
.La118:
	.uleb128	12
	.ascii	"TSDL_SYSWMEVENT\000"
	.uleb128	16
	.uleb128	13
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La116-.Ldebug_info0
	.byte	0
.La67:
	.uleb128	9
	.long	.La66-.Ldebug_info0
# Definition TSDL_Keysym
.La83:
	.uleb128	7
	.ascii	"TSDL_KEYSYM\000"
	.long	.La119-.Ldebug_info0
.La119:
	.uleb128	12
	.ascii	"TSDL_KEYSYM\000"
	.uleb128	16
	.uleb128	13
	.ascii	"SCANCODE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"SYM\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"MOD_\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La97-.Ldebug_info0
	.uleb128	13
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La28-.Ldebug_info0
	.byte	0
.La84:
	.uleb128	9
	.long	.La83-.Ldebug_info0
# Defs - End unit SDL2 has index 254
# Defs - Begin unit WINDOWS has index 5
# Defs - End unit WINDOWS has index 5
# Defs - Begin unit SYSCONST has index 27
# Defs - End unit SYSCONST has index 27
# Defs - Begin unit WINDIRS has index 28
# Defs - End unit WINDIRS has index 28
# Defs - Begin unit SYSUTILS has index 23
# Defs - End unit SYSUTILS has index 23
# Defs - Begin unit RTLCONSTS has index 24
# Defs - End unit RTLCONSTS has index 24
# Defs - Begin unit MATH has index 29
# Defs - End unit MATH has index 29
# Defs - Begin unit TYPES has index 25
# Defs - End unit TYPES has index 25
# Defs - Begin unit TYPINFO has index 26
# Defs - End unit TYPINFO has index 26
# Defs - Begin unit CLASSES has index 22
# Defs - End unit CLASSES has index 22
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
# Defs - Begin unit RETRO has index 12
# Definition TRetro
.La9:
	.uleb128	7
	.ascii	"TRETRO\000"
	.long	.La120-.Ldebug_info0
.La120:
	.uleb128	10
	.long	.La11-.Ldebug_info0
.La11:
	.uleb128	14
	.ascii	"TRETRO\000"
	.uleb128	88
	.uleb128	15
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La123-.Ldebug_info0
# Procdef Execute(<TRetro>);
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
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La9-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TRetro>;<Pointer>;Boolean);
	.uleb128	18
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La116-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	19
	.ascii	"CREATESUSPENDED\000"
	.long	.La14-.Ldebug_info0
	.byte	0
	.byte	0
.La10:
	.uleb128	9
	.long	.La9-.Ldebug_info0
# Defs - End unit RETRO has index 12
# Defs - Begin unit UMAIN has index 11
# Defs - End unit UMAIN has index 11
# Defs - Begin Staticsymtable
# Defs - End Staticsymtable
# Definition LongWord
.La28:
	.uleb128	7
	.ascii	"LONGWORD\000"
	.long	.La124-.Ldebug_info0
.La124:
	.uleb128	8
	.ascii	"LONGWORD\000"
	.byte	7
	.byte	4
.La29:
	.uleb128	9
	.long	.La28-.Ldebug_info0
# Definition TSDL_Event.Array[0..55] Of Byte
.La76:
	.uleb128	20
	.uleb128	56
	.long	.La80-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	55
	.uleb128	1
	.long	.La125-.Ldebug_info0
	.byte	0
.La77:
	.uleb128	9
	.long	.La76-.Ldebug_info0
# Definition Byte
.La80:
	.uleb128	7
	.ascii	"BYTE\000"
	.long	.La127-.Ldebug_info0
.La127:
	.uleb128	8
	.ascii	"BYTE\000"
	.byte	7
	.byte	1
.La81:
	.uleb128	9
	.long	.La80-.Ldebug_info0
# Definition TSDL_TextEditingEvent.Array[0..31] Of Char
.La86:
	.uleb128	20
	.uleb128	32
	.long	.La22-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	31
	.uleb128	1
	.long	.La125-.Ldebug_info0
	.byte	0
.La87:
	.uleb128	9
	.long	.La86-.Ldebug_info0
# Definition TSDL_TextInputEvent.Array[0..31] Of Char
.La89:
	.uleb128	20
	.uleb128	32
	.long	.La22-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	31
	.uleb128	1
	.long	.La125-.Ldebug_info0
	.byte	0
.La90:
	.uleb128	9
	.long	.La89-.Ldebug_info0
# Definition SmallInt
.La95:
	.uleb128	7
	.ascii	"SMALLINT\000"
	.long	.La128-.Ldebug_info0
.La128:
	.uleb128	8
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.La96:
	.uleb128	9
	.long	.La95-.Ldebug_info0
# Definition Word
.La97:
	.uleb128	7
	.ascii	"WORD\000"
	.long	.La129-.Ldebug_info0
.La129:
	.uleb128	8
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La98:
	.uleb128	9
	.long	.La97-.Ldebug_info0
# Definition Single
.La107:
	.uleb128	7
	.ascii	"SINGLE\000"
	.long	.La130-.Ldebug_info0
.La130:
	.uleb128	8
	.ascii	"SINGLE\000"
	.byte	4
	.byte	4
.La108:
	.uleb128	9
	.long	.La107-.Ldebug_info0
# Definition PChar
.La112:
	.uleb128	7
	.ascii	"PCHAR\000"
	.long	.La131-.Ldebug_info0
.La131:
	.uleb128	10
	.long	.La22-.Ldebug_info0
.La113:
	.uleb128	9
	.long	.La112-.Ldebug_info0
# Definition Pointer
.La116:
	.uleb128	7
	.ascii	"POINTER\000"
	.long	.La132-.Ldebug_info0
.La132:
	.uleb128	11
.La117:
	.uleb128	9
	.long	.La116-.Ldebug_info0
# Definition TThread
.La121:
	.uleb128	7
	.ascii	"TTHREAD\000"
	.long	.La133-.Ldebug_info0
.La133:
	.uleb128	10
	.long	.La123-.Ldebug_info0
.La123:
	.uleb128	14
	.ascii	"TTHREAD\000"
	.uleb128	88
	.uleb128	15
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La136-.Ldebug_info0
	.uleb128	22
	.ascii	"FHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La137-.Ldebug_info0
	.uleb128	22
	.ascii	"FTERMINATED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	22
	.ascii	"FFREEONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	17
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	22
	.ascii	"FFINISHED\000"
	.byte	2
	.byte	35
	.uleb128	18
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	22
	.ascii	"FSUSPENDED\000"
	.byte	2
	.byte	35
	.uleb128	20
	.byte	3
	.long	.La139-.Ldebug_info0
	.uleb128	22
	.ascii	"FRETURNVALUE\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La1-.Ldebug_info0
	.uleb128	22
	.ascii	"FONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La141-.Ldebug_info0
	.uleb128	22
	.ascii	"FFATALEXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La134-.Ldebug_info0
	.uleb128	22
	.ascii	"FEXTERNALTHREAD\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	22
	.ascii	"FSYNCHRONIZEENTRY\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La143-.Ldebug_info0
	.uleb128	22
	.ascii	"FTHREADID\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	2
	.long	.La137-.Ldebug_info0
	.uleb128	22
	.ascii	"RETURNVALUE\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La1-.Ldebug_info0
	.uleb128	22
	.ascii	"TERMINATED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	22
	.ascii	"FINITIALSUSPENDED\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	22
	.ascii	"FREEONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	17
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	22
	.ascii	"HANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La137-.Ldebug_info0
	.uleb128	22
	.ascii	"EXTERNALTHREAD\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	22
	.ascii	"FINISHED\000"
	.byte	2
	.byte	35
	.uleb128	18
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	22
	.ascii	"THREADID\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	2
	.long	.La137-.Ldebug_info0
	.uleb128	22
	.ascii	"ONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La141-.Ldebug_info0
	.uleb128	22
	.ascii	"FATALEXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La134-.Ldebug_info0
# Procdef class GetCurrentThread:TThread; Static;
	.uleb128	23
	.ascii	"GETCURRENTTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La121-.Ldebug_info0
	.byte	0
# Procdef class GetIsSingleProcessor:Boolean; Static;
	.uleb128	23
	.ascii	"GETISSINGLEPROCESSOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La14-.Ldebug_info0
	.byte	0
# Procdef CallOnTerminate(<TThread>);
	.uleb128	24
	.ascii	"CALLONTERMINATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
	.byte	0
# Procdef GetPriority(<TThread>):<enumeration type>;
	.uleb128	23
	.ascii	"GETPRIORITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La145-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
	.byte	0
# Procdef SetPriority(<TThread>;TThreadPriority);
	.uleb128	24
	.ascii	"SETPRIORITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La145-.Ldebug_info0
	.byte	0
# Procdef SetSuspended(<TThread>;Boolean);
	.uleb128	24
	.ascii	"SETSUSPENDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La14-.Ldebug_info0
	.byte	0
# Procdef GetSuspended(<TThread>):Boolean;
	.uleb128	23
	.ascii	"GETSUSPENDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La14-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
	.byte	0
# Procdef InitSynchronizeEvent(<TThread>);
	.uleb128	24
	.ascii	"INITSYNCHRONIZEEVENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
	.byte	0
# Procdef DoneSynchronizeEvent(<TThread>);
	.uleb128	24
	.ascii	"DONESYNCHRONIZEEVENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
	.byte	0
# Procdef SysCreate(<TThread>;Boolean;const QWord);
	.uleb128	24
	.ascii	"SYSCREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	19
	.ascii	"CREATESUSPENDED\000"
	.long	.La14-.Ldebug_info0
# Symbol STACKSIZE
	.uleb128	19
	.ascii	"STACKSIZE\000"
	.long	.La137-.Ldebug_info0
	.byte	0
# Procdef SysDestroy(<TThread>);
	.uleb128	24
	.ascii	"SYSDESTROY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
	.byte	0
# Procdef DoTerminate(<TThread>);
	.uleb128	16
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
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
	.byte	0
# Procdef Execute(<TThread>);
	.uleb128	16
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
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
	.byte	0
# Procdef Synchronize(<TThread>;TThreadMethod);
	.uleb128	24
	.ascii	"SYNCHRONIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La147-.Ldebug_info0
	.byte	0
# Procdef Queue(<TThread>;TThreadMethod);
	.uleb128	24
	.ascii	"QUEUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La147-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TThread>;<Pointer>;Boolean;const QWord="4194304");
	.uleb128	18
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La121-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La116-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	19
	.ascii	"CREATESUSPENDED\000"
	.long	.La14-.Ldebug_info0
# Symbol STACKSIZE
	.uleb128	19
	.ascii	"STACKSIZE\000"
	.long	.La137-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TThread>;<Pointer>);
	.uleb128	25
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
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La116-.Ldebug_info0
	.byte	0
# Procdef class CreateAnonymousThread(TProcedure):TThread; Static;
	.uleb128	18
	.ascii	"CREATEANONYMOUSTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La121-.Ldebug_info0
# Symbol APROC
	.uleb128	19
	.ascii	"APROC\000"
	.long	.La149-.Ldebug_info0
	.byte	0
# Procdef class NameThreadForDebugging(UnicodeString;QWord="18446744073709551615"); Static;
	.uleb128	26
	.ascii	"NAMETHREADFORDEBUGGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREADNAME
	.uleb128	19
	.ascii	"ATHREADNAME\000"
	.long	.La151-.Ldebug_info0
# Symbol ATHREADID
	.uleb128	19
	.ascii	"ATHREADID\000"
	.long	.La137-.Ldebug_info0
	.byte	0
# Procdef class NameThreadForDebugging(AnsiString;QWord="18446744073709551615"); Static;
	.uleb128	26
	.ascii	"NAMETHREADFORDEBUGGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREADNAME
	.uleb128	19
	.ascii	"ATHREADNAME\000"
	.long	.La5-.Ldebug_info0
# Symbol ATHREADID
	.uleb128	19
	.ascii	"ATHREADID\000"
	.long	.La137-.Ldebug_info0
	.byte	0
# Procdef class SetReturnValue(LongInt); Static;
	.uleb128	26
	.ascii	"SETRETURNVALUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La1-.Ldebug_info0
	.byte	0
# Procdef class CheckTerminated:Boolean; Static;
	.uleb128	18
	.ascii	"CHECKTERMINATED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
	.byte	0
# Procdef class Synchronize(<Class Of TThread>;TThread;TThreadMethod);
	.uleb128	26
	.ascii	"SYNCHRONIZE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol self
	.uleb128	17
	.ascii	"self\000"
	.byte	1
	.long	.La153-.Ldebug_info0
# Symbol ATHREAD
	.uleb128	19
	.ascii	"ATHREAD\000"
	.long	.La121-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La147-.Ldebug_info0
	.byte	0
# Procdef class Queue(TThread;TThreadMethod); Static;
	.uleb128	26
	.ascii	"QUEUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	19
	.ascii	"ATHREAD\000"
	.long	.La121-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La147-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThread;TThreadMethod); Static;
	.uleb128	26
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	19
	.ascii	"ATHREAD\000"
	.long	.La121-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La147-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThreadMethod); Static;
	.uleb128	26
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La147-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThread); Static;
	.uleb128	26
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	19
	.ascii	"ATHREAD\000"
	.long	.La121-.Ldebug_info0
	.byte	0
# Procdef class SpinWait(LongWord); Static;
	.uleb128	26
	.ascii	"SPINWAIT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AITERATIONS
	.uleb128	19
	.ascii	"AITERATIONS\000"
	.long	.La28-.Ldebug_info0
	.byte	0
# Procdef class Sleep(LongWord); Static;
	.uleb128	26
	.ascii	"SLEEP\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AMILLISECONDS
	.uleb128	19
	.ascii	"AMILLISECONDS\000"
	.long	.La28-.Ldebug_info0
	.byte	0
# Procdef class Yield; Static;
	.uleb128	26
	.ascii	"YIELD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	0
# Procdef class GetSystemTimes(out TThread.TSystemTimes); Static;
	.uleb128	26
	.ascii	"GETSYSTEMTIMES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ASYSTEMTIMES
	.uleb128	19
	.ascii	"ASYSTEMTIMES\000"
	.long	.La155-.Ldebug_info0
	.byte	0
# Procdef class GetTickCount:DWord; Static;
	.uleb128	18
	.ascii	"GETTICKCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La28-.Ldebug_info0
	.byte	0
# Procdef class GetTickCount64:QWord; Static;
	.uleb128	18
	.ascii	"GETTICKCOUNT64\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La137-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadMethod;TNotifyEvent="nil"):TThread; Static;
	.uleb128	18
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La121-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La147-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	19
	.ascii	"AONTERMINATE\000"
	.long	.La141-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteStatusHandler;TThreadStatusNotifyEvent;TNotifyEvent="nil"):TThread; Static;
	.uleb128	18
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La121-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La157-.Ldebug_info0
# Symbol AONSTATUS
	.uleb128	19
	.ascii	"AONSTATUS\000"
	.long	.La159-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	19
	.ascii	"AONTERMINATE\000"
	.long	.La141-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteCallBack;Pointer="nil";TNotifyCallBack="nil"):TThread; Static;
	.uleb128	18
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La121-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La161-.Ldebug_info0
# Symbol ADATA
	.uleb128	19
	.ascii	"ADATA\000"
	.long	.La116-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	19
	.ascii	"AONTERMINATE\000"
	.long	.La163-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteStatusCallBack;TThreadStatusNotifyCallBack;Pointer="nil";TNotifyCallBack="nil"):TThread; Static;
	.uleb128	18
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La121-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La165-.Ldebug_info0
# Symbol AONSTATUS
	.uleb128	19
	.ascii	"AONSTATUS\000"
	.long	.La167-.Ldebug_info0
# Symbol ADATA
	.uleb128	19
	.ascii	"ADATA\000"
	.long	.La116-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	19
	.ascii	"AONTERMINATE\000"
	.long	.La163-.Ldebug_info0
	.byte	0
# Procdef AfterConstruction(<TThread>);
	.uleb128	25
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
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
	.byte	0
# Procdef Start(<TThread>);
	.uleb128	26
	.ascii	"START\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
	.byte	0
# Procdef Resume(<TThread>);
	.uleb128	26
	.ascii	"RESUME\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
	.byte	0
# Procdef Suspend(<TThread>);
	.uleb128	26
	.ascii	"SUSPEND\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
	.byte	0
# Procdef Terminate(<TThread>);
	.uleb128	26
	.ascii	"TERMINATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
	.byte	0
# Procdef WaitFor(<TThread>):LongInt;
	.uleb128	18
	.ascii	"WAITFOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La1-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La121-.Ldebug_info0
	.byte	0
	.byte	0
.La122:
	.uleb128	9
	.long	.La121-.Ldebug_info0
# Definition ShortInt
.La125:
	.uleb128	7
	.ascii	"SHORTINT\000"
	.long	.La169-.Ldebug_info0
.La169:
	.uleb128	8
	.ascii	"SHORTINT\000"
	.byte	5
	.byte	1
.La126:
	.uleb128	9
	.long	.La125-.Ldebug_info0
# Definition TObject
.La134:
	.uleb128	7
	.ascii	"TOBJECT\000"
	.long	.La170-.Ldebug_info0
.La170:
	.uleb128	10
	.long	.La136-.Ldebug_info0
.La136:
	.uleb128	14
	.ascii	"TOBJECT\000"
	.uleb128	8
	.uleb128	27
	.byte	1
	.ascii	"_vptr$TOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La116-.Ldebug_info0
# Procdef constructor Create(<TObject>;<Pointer>);
	.uleb128	18
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La134-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La116-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TObject>;<Pointer>);
	.uleb128	25
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
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La116-.Ldebug_info0
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
	.long	.La134-.Ldebug_info0
# Symbol self
	.uleb128	17
	.ascii	"self\000"
	.byte	1
	.long	.La171-.Ldebug_info0
	.byte	0
# Procdef FreeInstance(<TObject>);
	.uleb128	25
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
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
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
	.long	.La173-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
# Symbol EXCEPTOBJECT
	.uleb128	19
	.ascii	"EXCEPTOBJECT\000"
	.long	.La134-.Ldebug_info0
# Symbol EXCEPTADDR
	.uleb128	19
	.ascii	"EXCEPTADDR\000"
	.long	.La116-.Ldebug_info0
	.byte	0
# Procdef DefaultHandler(<TObject>;var <Formal type>);
	.uleb128	25
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
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La175-.Ldebug_info0
	.byte	0
# Procdef Free(<TObject>);
	.uleb128	26
	.ascii	"FREE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
	.byte	0
# Procdef class InitInstance(<Class Of TObject>;Pointer):TObject;
	.uleb128	18
	.ascii	"INITINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La134-.Ldebug_info0
# Symbol self
	.uleb128	17
	.ascii	"self\000"
	.byte	1
	.long	.La177-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	19
	.ascii	"INSTANCE\000"
	.long	.La116-.Ldebug_info0
	.byte	0
# Procdef CleanupInstance(<TObject>);
	.uleb128	26
	.ascii	"CLEANUPINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
	.byte	0
# Procdef class ClassType(<Class Of TObject>):Class Of TObject;
	.uleb128	18
	.ascii	"CLASSTYPE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol self
	.uleb128	17
	.ascii	"self\000"
	.byte	1
	.long	.La181-.Ldebug_info0
	.byte	0
# Procdef class ClassInfo(<Class Of TObject>):^untyped;
	.uleb128	18
	.ascii	"CLASSINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La116-.Ldebug_info0
# Symbol self
	.uleb128	17
	.ascii	"self\000"
	.byte	1
	.long	.La183-.Ldebug_info0
	.byte	0
# Procdef class ClassName(<Class Of TObject>;<var ShortString>):ShortString;
	.uleb128	18
	.ascii	"CLASSNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La185-.Ldebug_info0
# Symbol self
	.uleb128	17
	.ascii	"self\000"
	.byte	1
	.long	.La187-.Ldebug_info0
# Symbol result
	.uleb128	29
	.ascii	"result\000"
	.long	.La185-.Ldebug_info0
	.byte	0
# Procdef class ClassNameIs(<Class Of TObject>;const ShortString):Boolean;
	.uleb128	18
	.ascii	"CLASSNAMEIS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
# Symbol self
	.uleb128	17
	.ascii	"self\000"
	.byte	1
	.long	.La189-.Ldebug_info0
# Symbol NAME
	.uleb128	19
	.ascii	"NAME\000"
	.long	.La185-.Ldebug_info0
	.byte	0
# Procdef class ClassParent(<Class Of TObject>):Class Of TObject;
	.uleb128	18
	.ascii	"CLASSPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol self
	.uleb128	17
	.ascii	"self\000"
	.byte	1
	.long	.La191-.Ldebug_info0
	.byte	0
# Procdef class InstanceSize(<Class Of TObject>):Int64;
	.uleb128	18
	.ascii	"INSTANCESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La12-.Ldebug_info0
# Symbol self
	.uleb128	17
	.ascii	"self\000"
	.byte	1
	.long	.La193-.Ldebug_info0
	.byte	0
# Procdef class InheritsFrom(<Class Of TObject>;TClass):Boolean;
	.uleb128	18
	.ascii	"INHERITSFROM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
# Symbol self
	.uleb128	17
	.ascii	"self\000"
	.byte	1
	.long	.La195-.Ldebug_info0
# Symbol ACLASS
	.uleb128	19
	.ascii	"ACLASS\000"
	.long	.La179-.Ldebug_info0
	.byte	0
# Procdef class StringMessageTable(<Class Of TObject>):^TStringMessageTable;
	.uleb128	18
	.ascii	"STRINGMESSAGETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La197-.Ldebug_info0
# Symbol self
	.uleb128	17
	.ascii	"self\000"
	.byte	1
	.long	.La199-.Ldebug_info0
	.byte	0
# Procdef class MethodAddress(<Class Of TObject>;const ShortString):^untyped;
	.uleb128	18
	.ascii	"METHODADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La116-.Ldebug_info0
# Symbol self
	.uleb128	17
	.ascii	"self\000"
	.byte	1
	.long	.La201-.Ldebug_info0
# Symbol NAME
	.uleb128	19
	.ascii	"NAME\000"
	.long	.La185-.Ldebug_info0
	.byte	0
# Procdef class MethodName(<Class Of TObject>;<var ShortString>;Pointer):ShortString;
	.uleb128	18
	.ascii	"METHODNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La185-.Ldebug_info0
# Symbol self
	.uleb128	17
	.ascii	"self\000"
	.byte	1
	.long	.La203-.Ldebug_info0
# Symbol result
	.uleb128	29
	.ascii	"result\000"
	.long	.La185-.Ldebug_info0
# Symbol ADDRESS
	.uleb128	19
	.ascii	"ADDRESS\000"
	.long	.La116-.Ldebug_info0
	.byte	0
# Procdef FieldAddress(<TObject>;const ShortString):^untyped;
	.uleb128	18
	.ascii	"FIELDADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La116-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
# Symbol NAME
	.uleb128	19
	.ascii	"NAME\000"
	.long	.La185-.Ldebug_info0
	.byte	0
# Procdef AfterConstruction(<TObject>);
	.uleb128	25
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
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
	.byte	0
# Procdef BeforeDestruction(<TObject>);
	.uleb128	25
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
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
	.byte	0
# Procdef DefaultHandlerStr(<TObject>;var <Formal type>);
	.uleb128	25
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
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La175-.Ldebug_info0
	.byte	0
# Procdef Dispatch(<TObject>;var <Formal type>);
	.uleb128	25
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
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La175-.Ldebug_info0
	.byte	0
# Procdef DispatchStr(<TObject>;var <Formal type>);
	.uleb128	25
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
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La175-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	18
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
# Symbol IID
	.uleb128	19
	.ascii	"IID\000"
	.long	.La205-.Ldebug_info0
# Symbol OBJ
	.uleb128	19
	.ascii	"OBJ\000"
	.long	.La175-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	18
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	19
	.ascii	"IIDSTR\000"
	.long	.La185-.Ldebug_info0
# Symbol OBJ
	.uleb128	19
	.ascii	"OBJ\000"
	.long	.La175-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceByStr(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	18
	.ascii	"GETINTERFACEBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	19
	.ascii	"IIDSTR\000"
	.long	.La185-.Ldebug_info0
# Symbol OBJ
	.uleb128	19
	.ascii	"OBJ\000"
	.long	.La175-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceWeak(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	18
	.ascii	"GETINTERFACEWEAK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
# Symbol IID
	.uleb128	19
	.ascii	"IID\000"
	.long	.La205-.Ldebug_info0
# Symbol OBJ
	.uleb128	19
	.ascii	"OBJ\000"
	.long	.La175-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntry(<Class Of TObject>;const TGuid):^tinterfaceentry;
	.uleb128	18
	.ascii	"GETINTERFACEENTRY\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La207-.Ldebug_info0
# Symbol self
	.uleb128	17
	.ascii	"self\000"
	.byte	1
	.long	.La209-.Ldebug_info0
# Symbol IID
	.uleb128	19
	.ascii	"IID\000"
	.long	.La205-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntryByStr(<Class Of TObject>;const ShortString):^tinterfaceentry;
	.uleb128	18
	.ascii	"GETINTERFACEENTRYBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La207-.Ldebug_info0
# Symbol self
	.uleb128	17
	.ascii	"self\000"
	.byte	1
	.long	.La211-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	19
	.ascii	"IIDSTR\000"
	.long	.La185-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceTable(<Class Of TObject>):^tinterfacetable;
	.uleb128	18
	.ascii	"GETINTERFACETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La213-.Ldebug_info0
# Symbol self
	.uleb128	17
	.ascii	"self\000"
	.byte	1
	.long	.La215-.Ldebug_info0
	.byte	0
# Procdef class UnitName(<Class Of TObject>;<var AnsiString>):AnsiString;
	.uleb128	18
	.ascii	"UNITNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La5-.Ldebug_info0
# Symbol self
	.uleb128	17
	.ascii	"self\000"
	.byte	1
	.long	.La217-.Ldebug_info0
# Symbol result
	.uleb128	29
	.ascii	"result\000"
	.long	.La5-.Ldebug_info0
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
	.long	.La14-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
# Symbol OBJ
	.uleb128	19
	.ascii	"OBJ\000"
	.long	.La134-.Ldebug_info0
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
	.long	.La12-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
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
	.long	.La5-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La134-.Ldebug_info0
# Symbol result
	.uleb128	29
	.ascii	"result\000"
	.long	.La5-.Ldebug_info0
	.byte	0
	.byte	0
.La135:
	.uleb128	9
	.long	.La134-.Ldebug_info0
# Definition QWord
.La137:
	.uleb128	7
	.ascii	"QWORD\000"
	.long	.La219-.Ldebug_info0
.La219:
	.uleb128	8
	.ascii	"QWord\000"
	.byte	7
	.byte	8
.La138:
	.uleb128	9
	.long	.La137-.Ldebug_info0
# Definition LongBool
.La139:
	.uleb128	7
	.ascii	"LONGBOOL\000"
	.long	.La220-.Ldebug_info0
.La220:
	.uleb128	8
	.ascii	"LongBool\000"
	.byte	2
	.byte	4
.La140:
	.uleb128	9
	.long	.La139-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject) of object;Register>
.La141:
	.uleb128	7
	.ascii	"TNOTIFYEVENT\000"
	.long	.La221-.Ldebug_info0
.La221:
	.uleb128	30
	.byte	16
	.uleb128	13
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La222-.Ldebug_info0
	.uleb128	13
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La134-.Ldebug_info0
	.byte	0
.La222:
	.uleb128	31
	.ascii	"TNOTIFYEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La116-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La134-.Ldebug_info0
	.byte	0
.La142:
	.uleb128	9
	.long	.La141-.Ldebug_info0
# Definition TThread.PThreadQueueEntry
.La143:
	.uleb128	7
	.ascii	"PTHREADQUEUEENTRY\000"
	.long	.La223-.Ldebug_info0
.La223:
	.uleb128	10
	.long	.La224-.Ldebug_info0
.La144:
	.uleb128	9
	.long	.La143-.Ldebug_info0
# Definition TThreadPriority
.La145:
	.uleb128	7
	.ascii	"TTHREADPRIORITY\000"
	.long	.La226-.Ldebug_info0
.La226:
	.uleb128	32
	.ascii	"TTHREADPRIORITY\000"
	.byte	4
	.uleb128	33
	.ascii	"TPIDLE\000"
	.long	0
	.uleb128	33
	.ascii	"TPLOWEST\000"
	.long	1
	.uleb128	33
	.ascii	"TPLOWER\000"
	.long	2
	.uleb128	33
	.ascii	"TPNORMAL\000"
	.long	3
	.uleb128	33
	.ascii	"TPHIGHER\000"
	.long	4
	.uleb128	33
	.ascii	"TPHIGHEST\000"
	.long	5
	.uleb128	33
	.ascii	"TPTIMECRITICAL\000"
	.long	6
	.byte	0
.La146:
	.uleb128	9
	.long	.La145-.Ldebug_info0
# Definition <procedure variable type of procedure of object;Register>
.La147:
	.uleb128	7
	.ascii	"TTHREADMETHOD\000"
	.long	.La227-.Ldebug_info0
.La227:
	.uleb128	30
	.byte	16
	.uleb128	13
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La228-.Ldebug_info0
	.uleb128	13
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La134-.Ldebug_info0
	.byte	0
.La228:
	.uleb128	31
	.ascii	"TTHREADMETHOD\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La116-.Ldebug_info0
	.byte	0
.La148:
	.uleb128	9
	.long	.La147-.Ldebug_info0
# Definition <procedure variable type of procedure;Register>
.La149:
	.uleb128	7
	.ascii	"TPROCEDURE\000"
	.long	.La229-.Ldebug_info0
.La229:
	.uleb128	31
	.ascii	"TPROCEDURE\000"
	.byte	1
	.byte	0
.La150:
	.uleb128	9
	.long	.La149-.Ldebug_info0
# Definition UnicodeString
.La151:
	.uleb128	7
	.ascii	"UNICODESTRING\000"
	.long	.La230-.Ldebug_info0
.La230:
	.uleb128	10
	.long	.La231-.Ldebug_info0
.La152:
	.uleb128	9
	.long	.La151-.Ldebug_info0
# Definition TThread.Class Of TThread
.La153:
	.uleb128	10
	.long	.La233-.Ldebug_info0
.La154:
	.uleb128	9
	.long	.La153-.Ldebug_info0
# Definition TThread.TSystemTimes
.La155:
	.uleb128	7
	.ascii	"TSYSTEMTIMES\000"
	.long	.La235-.Ldebug_info0
.La235:
	.uleb128	12
	.ascii	"TSYSTEMTIMES\000"
	.uleb128	32
	.uleb128	13
	.ascii	"IDLETIME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La137-.Ldebug_info0
	.uleb128	13
	.ascii	"USERTIME\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La137-.Ldebug_info0
	.uleb128	13
	.ascii	"KERNELTIME\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La137-.Ldebug_info0
	.uleb128	13
	.ascii	"NICETIME\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La137-.Ldebug_info0
	.byte	0
.La156:
	.uleb128	9
	.long	.La155-.Ldebug_info0
# Definition <procedure variable type of procedure(TThreadReportStatus) of object;Register>
.La157:
	.uleb128	7
	.ascii	"TTHREADEXECUTESTATUSHANDLER\000"
	.long	.La236-.Ldebug_info0
.La236:
	.uleb128	30
	.byte	16
	.uleb128	13
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La237-.Ldebug_info0
	.uleb128	13
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La134-.Ldebug_info0
	.byte	0
.La237:
	.uleb128	31
	.ascii	"TTHREADEXECUTESTATUSHANDLER\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La116-.Ldebug_info0
	.uleb128	19
	.ascii	"REPORTSTATUS\000"
	.long	.La238-.Ldebug_info0
	.byte	0
.La158:
	.uleb128	9
	.long	.La157-.Ldebug_info0
# Definition <procedure variable type of procedure(TThread;const AnsiString) of object;Register>
.La159:
	.uleb128	7
	.ascii	"TTHREADSTATUSNOTIFYEVENT\000"
	.long	.La240-.Ldebug_info0
.La240:
	.uleb128	30
	.byte	16
	.uleb128	13
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La241-.Ldebug_info0
	.uleb128	13
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La134-.Ldebug_info0
	.byte	0
.La241:
	.uleb128	31
	.ascii	"TTHREADSTATUSNOTIFYEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La116-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La121-.Ldebug_info0
	.uleb128	19
	.ascii	"STATUS\000"
	.long	.La5-.Ldebug_info0
	.byte	0
.La160:
	.uleb128	9
	.long	.La159-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer);Register>
.La161:
	.uleb128	7
	.ascii	"TTHREADEXECUTECALLBACK\000"
	.long	.La242-.Ldebug_info0
.La242:
	.uleb128	31
	.ascii	"TTHREADEXECUTECALLBACK\000"
	.byte	1
	.uleb128	19
	.ascii	"ADATA\000"
	.long	.La116-.Ldebug_info0
	.byte	0
.La162:
	.uleb128	9
	.long	.La161-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;Pointer);Register>
.La163:
	.uleb128	7
	.ascii	"TNOTIFYCALLBACK\000"
	.long	.La243-.Ldebug_info0
.La243:
	.uleb128	31
	.ascii	"TNOTIFYCALLBACK\000"
	.byte	1
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La134-.Ldebug_info0
	.uleb128	19
	.ascii	"ADATA\000"
	.long	.La116-.Ldebug_info0
	.byte	0
.La164:
	.uleb128	9
	.long	.La163-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer;TThreadReportStatus);Register>
.La165:
	.uleb128	7
	.ascii	"TTHREADEXECUTESTATUSCALLBACK\000"
	.long	.La244-.Ldebug_info0
.La244:
	.uleb128	31
	.ascii	"TTHREADEXECUTESTATUSCALLBACK\000"
	.byte	1
	.uleb128	19
	.ascii	"ADATA\000"
	.long	.La116-.Ldebug_info0
	.uleb128	19
	.ascii	"REPORTSTATUS\000"
	.long	.La238-.Ldebug_info0
	.byte	0
.La166:
	.uleb128	9
	.long	.La165-.Ldebug_info0
# Definition <procedure variable type of procedure(TThread;Pointer;const AnsiString);Register>
.La167:
	.uleb128	7
	.ascii	"TTHREADSTATUSNOTIFYCALLBACK\000"
	.long	.La245-.Ldebug_info0
.La245:
	.uleb128	31
	.ascii	"TTHREADSTATUSNOTIFYCALLBACK\000"
	.byte	1
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La121-.Ldebug_info0
	.uleb128	19
	.ascii	"ADATA\000"
	.long	.La116-.Ldebug_info0
	.uleb128	19
	.ascii	"STATUS\000"
	.long	.La5-.Ldebug_info0
	.byte	0
.La168:
	.uleb128	9
	.long	.La167-.Ldebug_info0
# Definition TObject.Class Of TObject
.La171:
	.uleb128	10
	.long	.La233-.Ldebug_info0
.La172:
	.uleb128	9
	.long	.La171-.Ldebug_info0
# Definition HRESULT
.La173:
	.uleb128	7
	.ascii	"HRESULT\000"
	.long	.La246-.Ldebug_info0
.La246:
	.uleb128	8
	.ascii	"HRESULT\000"
	.byte	5
	.byte	4
.La174:
	.uleb128	9
	.long	.La173-.Ldebug_info0
# Definition <Formal type>
.La175:
	.uleb128	7
	.ascii	"formal\000"
	.long	.La247-.Ldebug_info0
.La247:
	.uleb128	8
	.ascii	"FormalDef\000"
	.byte	7
	.byte	0
.La176:
	.uleb128	9
	.long	.La175-.Ldebug_info0
# Definition TObject.Class Of TObject
.La177:
	.uleb128	10
	.long	.La233-.Ldebug_info0
.La178:
	.uleb128	9
	.long	.La177-.Ldebug_info0
# Definition TClass
.La179:
	.uleb128	7
	.ascii	"TCLASS\000"
	.long	.La248-.Ldebug_info0
.La248:
	.uleb128	10
	.long	.La233-.Ldebug_info0
.La180:
	.uleb128	9
	.long	.La179-.Ldebug_info0
# Definition TObject.Class Of TObject
.La181:
	.uleb128	10
	.long	.La233-.Ldebug_info0
.La182:
	.uleb128	9
	.long	.La181-.Ldebug_info0
# Definition TObject.Class Of TObject
.La183:
	.uleb128	10
	.long	.La233-.Ldebug_info0
.La184:
	.uleb128	9
	.long	.La183-.Ldebug_info0
# Definition ShortString
.La185:
	.uleb128	7
	.ascii	"SHORTSTRING\000"
	.long	.La249-.Ldebug_info0
.La249:
	.uleb128	12
	.ascii	"ShortString\000"
	.uleb128	256
	.uleb128	13
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La250-.Ldebug_info0
	.byte	0
.La250:
	.uleb128	34
	.uleb128	256
	.uleb128	1
	.long	.La22-.Ldebug_info0
	.uleb128	35
	.uleb128	1
	.uleb128	255
	.long	.La80-.Ldebug_info0
	.byte	0
.La186:
	.uleb128	9
	.long	.La185-.Ldebug_info0
# Definition TObject.Class Of TObject
.La187:
	.uleb128	10
	.long	.La233-.Ldebug_info0
.La188:
	.uleb128	9
	.long	.La187-.Ldebug_info0
# Definition TObject.Class Of TObject
.La189:
	.uleb128	10
	.long	.La233-.Ldebug_info0
.La190:
	.uleb128	9
	.long	.La189-.Ldebug_info0
# Definition TObject.Class Of TObject
.La191:
	.uleb128	10
	.long	.La233-.Ldebug_info0
.La192:
	.uleb128	9
	.long	.La191-.Ldebug_info0
# Definition TObject.Class Of TObject
.La193:
	.uleb128	10
	.long	.La233-.Ldebug_info0
.La194:
	.uleb128	9
	.long	.La193-.Ldebug_info0
# Definition TObject.Class Of TObject
.La195:
	.uleb128	10
	.long	.La233-.Ldebug_info0
.La196:
	.uleb128	9
	.long	.La195-.Ldebug_info0
# Definition pstringmessagetable
.La197:
	.uleb128	7
	.ascii	"PSTRINGMESSAGETABLE\000"
	.long	.La251-.Ldebug_info0
.La251:
	.uleb128	10
	.long	.La252-.Ldebug_info0
.La198:
	.uleb128	9
	.long	.La197-.Ldebug_info0
# Definition TObject.Class Of TObject
.La199:
	.uleb128	10
	.long	.La233-.Ldebug_info0
.La200:
	.uleb128	9
	.long	.La199-.Ldebug_info0
# Definition TObject.Class Of TObject
.La201:
	.uleb128	10
	.long	.La233-.Ldebug_info0
.La202:
	.uleb128	9
	.long	.La201-.Ldebug_info0
# Definition TObject.Class Of TObject
.La203:
	.uleb128	10
	.long	.La233-.Ldebug_info0
.La204:
	.uleb128	9
	.long	.La203-.Ldebug_info0
# Definition TGuid
.La205:
	.uleb128	7
	.ascii	"TGUID\000"
	.long	.La254-.Ldebug_info0
.La254:
	.uleb128	12
	.ascii	"TGUID\000"
	.uleb128	16
	.uleb128	13
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La97-.Ldebug_info0
	.uleb128	13
	.ascii	"DATA3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La97-.Ldebug_info0
	.uleb128	13
	.ascii	"DATA4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La255-.Ldebug_info0
	.uleb128	13
	.ascii	"D1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"D2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La97-.Ldebug_info0
	.uleb128	13
	.ascii	"D3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La97-.Ldebug_info0
	.uleb128	13
	.ascii	"D4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La257-.Ldebug_info0
	.uleb128	13
	.ascii	"TIME_LOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"TIME_MID\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La97-.Ldebug_info0
	.uleb128	13
	.ascii	"TIME_HI_AND_VERSION\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La97-.Ldebug_info0
	.uleb128	13
	.ascii	"CLOCK_SEQ_HI_AND_RESERVED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"CLOCK_SEQ_LOW\000"
	.byte	2
	.byte	35
	.uleb128	9
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"NODE\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La259-.Ldebug_info0
	.byte	0
.La206:
	.uleb128	9
	.long	.La205-.Ldebug_info0
# Definition pinterfaceentry
.La207:
	.uleb128	7
	.ascii	"PINTERFACEENTRY\000"
	.long	.La261-.Ldebug_info0
.La261:
	.uleb128	10
	.long	.La262-.Ldebug_info0
.La208:
	.uleb128	9
	.long	.La207-.Ldebug_info0
# Definition TObject.Class Of TObject
.La209:
	.uleb128	10
	.long	.La233-.Ldebug_info0
.La210:
	.uleb128	9
	.long	.La209-.Ldebug_info0
# Definition TObject.Class Of TObject
.La211:
	.uleb128	10
	.long	.La233-.Ldebug_info0
.La212:
	.uleb128	9
	.long	.La211-.Ldebug_info0
# Definition pinterfacetable
.La213:
	.uleb128	7
	.ascii	"PINTERFACETABLE\000"
	.long	.La264-.Ldebug_info0
.La264:
	.uleb128	10
	.long	.La265-.Ldebug_info0
.La214:
	.uleb128	9
	.long	.La213-.Ldebug_info0
# Definition TObject.Class Of TObject
.La215:
	.uleb128	10
	.long	.La233-.Ldebug_info0
.La216:
	.uleb128	9
	.long	.La215-.Ldebug_info0
# Definition TObject.Class Of TObject
.La217:
	.uleb128	10
	.long	.La233-.Ldebug_info0
.La218:
	.uleb128	9
	.long	.La217-.Ldebug_info0
# Definition TThread.TThreadQueueEntry
.La224:
	.uleb128	7
	.ascii	"TTHREADQUEUEENTRY\000"
	.long	.La267-.Ldebug_info0
.La267:
	.uleb128	12
	.ascii	"TTHREADQUEUEENTRY\000"
	.uleb128	48
	.uleb128	13
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La147-.Ldebug_info0
	.uleb128	13
	.ascii	"THREAD\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La121-.Ldebug_info0
	.uleb128	13
	.ascii	"EXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La268-.Ldebug_info0
	.uleb128	13
	.ascii	"SYNCEVENT\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La271-.Ldebug_info0
	.uleb128	13
	.ascii	"NEXT\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La143-.Ldebug_info0
	.byte	0
.La225:
	.uleb128	9
	.long	.La224-.Ldebug_info0
# Definition WideChar
.La231:
	.uleb128	7
	.ascii	"WIDECHAR\000"
	.long	.La273-.Ldebug_info0
.La273:
	.uleb128	8
	.ascii	"WideChar\000"
	.byte	8
	.byte	2
.La232:
	.uleb128	9
	.long	.La231-.Ldebug_info0
# Definition <record type>
.La233:
	.uleb128	7
	.ascii	"__vtbl_ptr_type\000"
	.long	.La274-.Ldebug_info0
.La274:
	.uleb128	36
	.uleb128	40
	.byte	0
.La234:
	.uleb128	9
	.long	.La233-.Ldebug_info0
# Definition <procedure variable type of procedure(const AnsiString) of object;Register>
.La238:
	.uleb128	7
	.ascii	"TTHREADREPORTSTATUS\000"
	.long	.La275-.Ldebug_info0
.La275:
	.uleb128	30
	.byte	16
	.uleb128	13
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La276-.Ldebug_info0
	.uleb128	13
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La134-.Ldebug_info0
	.byte	0
.La276:
	.uleb128	31
	.ascii	"TTHREADREPORTSTATUS\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La116-.Ldebug_info0
	.uleb128	19
	.ascii	"STATUS\000"
	.long	.La5-.Ldebug_info0
	.byte	0
.La239:
	.uleb128	9
	.long	.La238-.Ldebug_info0
# Definition TStringMessageTable
.La252:
	.uleb128	7
	.ascii	"TSTRINGMESSAGETABLE\000"
	.long	.La277-.Ldebug_info0
.La277:
	.uleb128	12
	.ascii	"TSTRINGMESSAGETABLE\000"
	.uleb128	24
	.uleb128	13
	.ascii	"COUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"MSGSTRTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La278-.Ldebug_info0
	.byte	0
.La253:
	.uleb128	9
	.long	.La252-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La255:
	.uleb128	20
	.uleb128	8
	.long	.La80-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La125-.Ldebug_info0
	.byte	0
.La256:
	.uleb128	9
	.long	.La255-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La257:
	.uleb128	20
	.uleb128	8
	.long	.La80-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La125-.Ldebug_info0
	.byte	0
.La258:
	.uleb128	9
	.long	.La257-.Ldebug_info0
# Definition TGuid.Array[0..5] Of Byte
.La259:
	.uleb128	20
	.uleb128	6
	.long	.La80-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	5
	.uleb128	1
	.long	.La125-.Ldebug_info0
	.byte	0
.La260:
	.uleb128	9
	.long	.La259-.Ldebug_info0
# Definition tinterfaceentry
.La262:
	.uleb128	7
	.ascii	"TINTERFACEENTRY\000"
	.long	.La280-.Ldebug_info0
.La280:
	.uleb128	12
	.ascii	"TINTERFACEENTRY\000"
	.uleb128	40
	.uleb128	13
	.ascii	"IID\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La281-.Ldebug_info0
	.uleb128	13
	.ascii	"VTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La116-.Ldebug_info0
	.uleb128	13
	.ascii	"IOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La137-.Ldebug_info0
	.uleb128	13
	.ascii	"IIDSTR\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La283-.Ldebug_info0
	.uleb128	13
	.ascii	"ITYPE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La285-.Ldebug_info0
	.uleb128	13
	.ascii	"__PAD_DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La12-.Ldebug_info0
	.byte	0
.La263:
	.uleb128	9
	.long	.La262-.Ldebug_info0
# Definition tinterfacetable
.La265:
	.uleb128	7
	.ascii	"TINTERFACETABLE\000"
	.long	.La287-.Ldebug_info0
.La287:
	.uleb128	12
	.ascii	"TINTERFACETABLE\000"
	.uleb128	48
	.uleb128	13
	.ascii	"ENTRYCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La137-.Ldebug_info0
	.uleb128	13
	.ascii	"ENTRIES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La288-.Ldebug_info0
	.byte	0
.La266:
	.uleb128	9
	.long	.La265-.Ldebug_info0
# Definition Exception
.La268:
	.uleb128	7
	.ascii	"EXCEPTION\000"
	.long	.La290-.Ldebug_info0
.La290:
	.uleb128	10
	.long	.La270-.Ldebug_info0
.La270:
	.uleb128	14
	.ascii	"EXCEPTION\000"
	.uleb128	24
	.uleb128	15
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La136-.Ldebug_info0
	.uleb128	22
	.ascii	"FMESSAGE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La5-.Ldebug_info0
	.uleb128	22
	.ascii	"FHELPCONTEXT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La1-.Ldebug_info0
	.uleb128	22
	.ascii	"HELPCONTEXT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La1-.Ldebug_info0
	.uleb128	22
	.ascii	"MESSAGE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La5-.Ldebug_info0
# Procdef constructor Create(<Exception>;<Pointer>;const AnsiString);
	.uleb128	18
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La268-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La268-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La116-.Ldebug_info0
# Symbol MSG
	.uleb128	19
	.ascii	"MSG\000"
	.long	.La5-.Ldebug_info0
	.byte	0
# Procdef constructor CreateFmt(<Exception>;<Pointer>;const AnsiString;const Array Of Const;<const Int64>);
	.uleb128	18
	.ascii	"CREATEFMT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La268-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La268-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La116-.Ldebug_info0
# Symbol MSG
	.uleb128	19
	.ascii	"MSG\000"
	.long	.La5-.Ldebug_info0
# Symbol ARGS
	.uleb128	19
	.ascii	"ARGS\000"
	.long	.La291-.Ldebug_info0
# Symbol highARGS
	.uleb128	19
	.ascii	"highARGS\000"
	.long	.La12-.Ldebug_info0
# Definition Array Of Const
.La291:
	.uleb128	37
	.long	.La293-.Ldebug_info0
	.uleb128	38
	.sleb128	0
	.uleb128	16
	.long	.La12-.Ldebug_info0
	.byte	0
.La292:
	.uleb128	9
	.long	.La291-.Ldebug_info0
	.byte	0
# Procdef constructor CreateRes(<Exception>;<Pointer>;PAnsiString);
	.uleb128	18
	.ascii	"CREATERES\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La268-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La268-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La116-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	19
	.ascii	"RESSTRING\000"
	.long	.La295-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResFmt(<Exception>;<Pointer>;PAnsiString;const Array Of Const;<const Int64>);
	.uleb128	18
	.ascii	"CREATERESFMT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La268-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La268-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La116-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	19
	.ascii	"RESSTRING\000"
	.long	.La295-.Ldebug_info0
# Symbol ARGS
	.uleb128	19
	.ascii	"ARGS\000"
	.long	.La297-.Ldebug_info0
# Symbol highARGS
	.uleb128	19
	.ascii	"highARGS\000"
	.long	.La12-.Ldebug_info0
# Definition Array Of Const
.La297:
	.uleb128	37
	.long	.La293-.Ldebug_info0
	.uleb128	38
	.sleb128	0
	.uleb128	16
	.long	.La12-.Ldebug_info0
	.byte	0
.La298:
	.uleb128	9
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef constructor CreateHelp(<Exception>;<Pointer>;const AnsiString;LongInt);
	.uleb128	18
	.ascii	"CREATEHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La268-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La268-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La116-.Ldebug_info0
# Symbol MSG
	.uleb128	19
	.ascii	"MSG\000"
	.long	.La5-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	19
	.ascii	"AHELPCONTEXT\000"
	.long	.La1-.Ldebug_info0
	.byte	0
# Procdef constructor CreateFmtHelp(<Exception>;<Pointer>;const AnsiString;const Array Of Const;<const Int64>;LongInt);
	.uleb128	18
	.ascii	"CREATEFMTHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La268-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La268-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La116-.Ldebug_info0
# Symbol MSG
	.uleb128	19
	.ascii	"MSG\000"
	.long	.La5-.Ldebug_info0
# Symbol ARGS
	.uleb128	19
	.ascii	"ARGS\000"
	.long	.La299-.Ldebug_info0
# Symbol highARGS
	.uleb128	19
	.ascii	"highARGS\000"
	.long	.La12-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	19
	.ascii	"AHELPCONTEXT\000"
	.long	.La1-.Ldebug_info0
# Definition Array Of Const
.La299:
	.uleb128	37
	.long	.La293-.Ldebug_info0
	.uleb128	38
	.sleb128	0
	.uleb128	16
	.long	.La12-.Ldebug_info0
	.byte	0
.La300:
	.uleb128	9
	.long	.La299-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResHelp(<Exception>;<Pointer>;PAnsiString;LongInt);
	.uleb128	18
	.ascii	"CREATERESHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La268-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La268-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La116-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	19
	.ascii	"RESSTRING\000"
	.long	.La295-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	19
	.ascii	"AHELPCONTEXT\000"
	.long	.La1-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResFmtHelp(<Exception>;<Pointer>;PAnsiString;const Array Of Const;<const Int64>;LongInt);
	.uleb128	18
	.ascii	"CREATERESFMTHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La268-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La268-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La116-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	19
	.ascii	"RESSTRING\000"
	.long	.La295-.Ldebug_info0
# Symbol ARGS
	.uleb128	19
	.ascii	"ARGS\000"
	.long	.La301-.Ldebug_info0
# Symbol highARGS
	.uleb128	19
	.ascii	"highARGS\000"
	.long	.La12-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	19
	.ascii	"AHELPCONTEXT\000"
	.long	.La1-.Ldebug_info0
# Definition Array Of Const
.La301:
	.uleb128	37
	.long	.La293-.Ldebug_info0
	.uleb128	38
	.sleb128	0
	.uleb128	16
	.long	.La12-.Ldebug_info0
	.byte	0
.La302:
	.uleb128	9
	.long	.La301-.Ldebug_info0
	.byte	0
# Procdef ToString(<Exception>;<var AnsiString>):AnsiString;
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
	.long	.La5-.Ldebug_info0
# Symbol this
	.uleb128	17
	.ascii	"this\000"
	.byte	1
	.long	.La268-.Ldebug_info0
# Symbol result
	.uleb128	29
	.ascii	"result\000"
	.long	.La5-.Ldebug_info0
	.byte	0
	.byte	0
.La269:
	.uleb128	9
	.long	.La268-.Ldebug_info0
# Definition PRTLEvent
.La271:
	.uleb128	7
	.ascii	"PRTLEVENT\000"
	.long	.La303-.Ldebug_info0
.La303:
	.uleb128	11
.La272:
	.uleb128	9
	.long	.La271-.Ldebug_info0
# Definition TStringMessageTable.Array[0..0] Of TMsgStrTable
.La278:
	.uleb128	20
	.uleb128	16
	.long	.La304-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	0
	.uleb128	16
	.long	.La125-.Ldebug_info0
	.byte	0
.La279:
	.uleb128	9
	.long	.La278-.Ldebug_info0
# Definition PGuid
.La281:
	.uleb128	7
	.ascii	"PGUID\000"
	.long	.La306-.Ldebug_info0
.La306:
	.uleb128	10
	.long	.La205-.Ldebug_info0
.La282:
	.uleb128	9
	.long	.La281-.Ldebug_info0
# Definition PShortString
.La283:
	.uleb128	7
	.ascii	"PSHORTSTRING\000"
	.long	.La307-.Ldebug_info0
.La307:
	.uleb128	10
	.long	.La185-.Ldebug_info0
.La284:
	.uleb128	9
	.long	.La283-.Ldebug_info0
# Definition tinterfaceentrytype
.La285:
	.uleb128	7
	.ascii	"TINTERFACEENTRYTYPE\000"
	.long	.La308-.Ldebug_info0
.La308:
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
.La286:
	.uleb128	9
	.long	.La285-.Ldebug_info0
# Definition tinterfacetable.Array[0..0] Of tinterfaceentry
.La288:
	.uleb128	20
	.uleb128	40
	.long	.La262-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	0
	.uleb128	40
	.long	.La125-.Ldebug_info0
	.byte	0
.La289:
	.uleb128	9
	.long	.La288-.Ldebug_info0
# Definition TVarRec
.La293:
	.uleb128	7
	.ascii	"TVARREC\000"
	.long	.La309-.Ldebug_info0
.La309:
	.uleb128	12
	.ascii	"TVARREC\000"
	.uleb128	16
	.uleb128	13
	.ascii	"VTYPE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La12-.Ldebug_info0
	.uleb128	13
	.ascii	"VINTEGER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"VBOOLEAN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La14-.Ldebug_info0
	.uleb128	13
	.ascii	"VCHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La22-.Ldebug_info0
	.uleb128	13
	.ascii	"VWIDECHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La231-.Ldebug_info0
	.uleb128	13
	.ascii	"VEXTENDED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La310-.Ldebug_info0
	.uleb128	13
	.ascii	"VSTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La283-.Ldebug_info0
	.uleb128	13
	.ascii	"VPOINTER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La116-.Ldebug_info0
	.uleb128	13
	.ascii	"VPCHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La112-.Ldebug_info0
	.uleb128	13
	.ascii	"VOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La134-.Ldebug_info0
	.uleb128	13
	.ascii	"VCLASS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La179-.Ldebug_info0
	.uleb128	13
	.ascii	"VPWIDECHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La312-.Ldebug_info0
	.uleb128	13
	.ascii	"VANSISTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La116-.Ldebug_info0
	.uleb128	13
	.ascii	"VCURRENCY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La314-.Ldebug_info0
	.uleb128	13
	.ascii	"VVARIANT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La316-.Ldebug_info0
	.uleb128	13
	.ascii	"VINTERFACE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La116-.Ldebug_info0
	.uleb128	13
	.ascii	"VWIDESTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La116-.Ldebug_info0
	.uleb128	13
	.ascii	"VINT64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La318-.Ldebug_info0
	.uleb128	13
	.ascii	"VUNICODESTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La116-.Ldebug_info0
	.uleb128	13
	.ascii	"VQWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La320-.Ldebug_info0
	.byte	0
.La294:
	.uleb128	9
	.long	.La293-.Ldebug_info0
# Definition PAnsiString
.La295:
	.uleb128	7
	.ascii	"PANSISTRING\000"
	.long	.La322-.Ldebug_info0
.La322:
	.uleb128	10
	.long	.La5-.Ldebug_info0
.La296:
	.uleb128	9
	.long	.La295-.Ldebug_info0
# Definition TMsgStrTable
.La304:
	.uleb128	7
	.ascii	"TMSGSTRTABLE\000"
	.long	.La323-.Ldebug_info0
.La323:
	.uleb128	12
	.ascii	"TMSGSTRTABLE\000"
	.uleb128	16
	.uleb128	13
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La283-.Ldebug_info0
	.uleb128	13
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La116-.Ldebug_info0
	.byte	0
.La305:
	.uleb128	9
	.long	.La304-.Ldebug_info0
# Definition PExtended
.La310:
	.uleb128	7
	.ascii	"PEXTENDED\000"
	.long	.La324-.Ldebug_info0
.La324:
	.uleb128	10
	.long	.La7-.Ldebug_info0
.La311:
	.uleb128	9
	.long	.La310-.Ldebug_info0
# Definition PWideChar
.La312:
	.uleb128	7
	.ascii	"PWIDECHAR\000"
	.long	.La325-.Ldebug_info0
.La325:
	.uleb128	10
	.long	.La231-.Ldebug_info0
.La313:
	.uleb128	9
	.long	.La312-.Ldebug_info0
# Definition PCurrency
.La314:
	.uleb128	7
	.ascii	"PCURRENCY\000"
	.long	.La326-.Ldebug_info0
.La326:
	.uleb128	10
	.long	.La327-.Ldebug_info0
.La315:
	.uleb128	9
	.long	.La314-.Ldebug_info0
# Definition PVariant
.La316:
	.uleb128	7
	.ascii	"PVARIANT\000"
	.long	.La329-.Ldebug_info0
.La329:
	.uleb128	10
	.long	.La330-.Ldebug_info0
.La317:
	.uleb128	9
	.long	.La316-.Ldebug_info0
# Definition PInt64
.La318:
	.uleb128	7
	.ascii	"PINT64\000"
	.long	.La332-.Ldebug_info0
.La332:
	.uleb128	10
	.long	.La12-.Ldebug_info0
.La319:
	.uleb128	9
	.long	.La318-.Ldebug_info0
# Definition PQWord
.La320:
	.uleb128	7
	.ascii	"PQWORD\000"
	.long	.La333-.Ldebug_info0
.La333:
	.uleb128	10
	.long	.La137-.Ldebug_info0
.La321:
	.uleb128	9
	.long	.La320-.Ldebug_info0
# Definition Currency
.La327:
	.uleb128	7
	.ascii	"CURRENCY\000"
	.long	.La334-.Ldebug_info0
.La334:
	.uleb128	8
	.ascii	"Currency\000"
	.byte	5
	.byte	8
.La328:
	.uleb128	9
	.long	.La327-.Ldebug_info0
# Definition Variant
.La330:
	.uleb128	7
	.ascii	"VARIANT\000"
	.long	.La335-.Ldebug_info0
.La335:
	.uleb128	12
	.ascii	"Variant\000"
	.uleb128	24
	.uleb128	13
	.ascii	"VTYPE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La97-.Ldebug_info0
	.uleb128	13
	.ascii	"RES1\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La97-.Ldebug_info0
	.uleb128	13
	.ascii	"RES2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La97-.Ldebug_info0
	.uleb128	13
	.ascii	"RES3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La97-.Ldebug_info0
	.uleb128	13
	.ascii	"VSMALLINT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La95-.Ldebug_info0
	.uleb128	13
	.ascii	"VINTEGER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"VSINGLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La107-.Ldebug_info0
	.uleb128	13
	.ascii	"VDOUBLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La7-.Ldebug_info0
	.uleb128	13
	.ascii	"VDATE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La336-.Ldebug_info0
	.uleb128	13
	.ascii	"VCURRENCY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La327-.Ldebug_info0
	.uleb128	13
	.ascii	"VOLESTR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La312-.Ldebug_info0
	.uleb128	13
	.ascii	"VDISPATCH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La116-.Ldebug_info0
	.uleb128	13
	.ascii	"VERROR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La173-.Ldebug_info0
	.uleb128	13
	.ascii	"VBOOLEAN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La338-.Ldebug_info0
	.uleb128	13
	.ascii	"VUNKNOWN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La116-.Ldebug_info0
	.uleb128	13
	.ascii	"VSHORTINT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La125-.Ldebug_info0
	.uleb128	13
	.ascii	"VBYTE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La80-.Ldebug_info0
	.uleb128	13
	.ascii	"VWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La97-.Ldebug_info0
	.uleb128	13
	.ascii	"VLONGWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La28-.Ldebug_info0
	.uleb128	13
	.ascii	"VINT64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La12-.Ldebug_info0
	.uleb128	13
	.ascii	"VQWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La137-.Ldebug_info0
	.uleb128	13
	.ascii	"VWORD64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La137-.Ldebug_info0
	.uleb128	13
	.ascii	"VSTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La116-.Ldebug_info0
	.uleb128	13
	.ascii	"VANY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La116-.Ldebug_info0
	.uleb128	13
	.ascii	"VARRAY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La340-.Ldebug_info0
	.uleb128	13
	.ascii	"VPOINTER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La116-.Ldebug_info0
	.uleb128	13
	.ascii	"VRECORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La116-.Ldebug_info0
	.uleb128	13
	.ascii	"PRECINFO\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La116-.Ldebug_info0
	.uleb128	13
	.ascii	"VLONGS\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La342-.Ldebug_info0
	.uleb128	13
	.ascii	"VWORDS\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La344-.Ldebug_info0
	.uleb128	13
	.ascii	"VBYTES\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La346-.Ldebug_info0
	.byte	0
.La331:
	.uleb128	9
	.long	.La330-.Ldebug_info0
# Definition TDateTime
.La336:
	.uleb128	7
	.ascii	"TDATETIME\000"
	.long	.La348-.Ldebug_info0
.La348:
	.uleb128	8
	.ascii	"TDATETIME\000"
	.byte	4
	.byte	8
.La337:
	.uleb128	9
	.long	.La336-.Ldebug_info0
# Definition WordBool
.La338:
	.uleb128	7
	.ascii	"WORDBOOL\000"
	.long	.La349-.Ldebug_info0
.La349:
	.uleb128	8
	.ascii	"WordBool\000"
	.byte	2
	.byte	2
.La339:
	.uleb128	9
	.long	.La338-.Ldebug_info0
# Definition pvararray
.La340:
	.uleb128	7
	.ascii	"PVARARRAY\000"
	.long	.La350-.Ldebug_info0
.La350:
	.uleb128	10
	.long	.La351-.Ldebug_info0
.La341:
	.uleb128	9
	.long	.La340-.Ldebug_info0
# Definition tvardata.Array[0..2] Of LongInt
.La342:
	.uleb128	20
	.uleb128	12
	.long	.La1-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	2
	.uleb128	4
	.long	.La125-.Ldebug_info0
	.byte	0
.La343:
	.uleb128	9
	.long	.La342-.Ldebug_info0
# Definition tvardata.Array[0..6] Of Word
.La344:
	.uleb128	20
	.uleb128	14
	.long	.La97-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	6
	.uleb128	2
	.long	.La125-.Ldebug_info0
	.byte	0
.La345:
	.uleb128	9
	.long	.La344-.Ldebug_info0
# Definition tvardata.Array[0..13] Of Byte
.La346:
	.uleb128	20
	.uleb128	14
	.long	.La80-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	13
	.uleb128	1
	.long	.La125-.Ldebug_info0
	.byte	0
.La347:
	.uleb128	9
	.long	.La346-.Ldebug_info0
# Definition tvararray
.La351:
	.uleb128	7
	.ascii	"TVARARRAY\000"
	.long	.La353-.Ldebug_info0
.La353:
	.uleb128	12
	.ascii	"TVARARRAY\000"
	.uleb128	32
	.uleb128	13
	.ascii	"DIMCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La97-.Ldebug_info0
	.uleb128	13
	.ascii	"FLAGS\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La97-.Ldebug_info0
	.uleb128	13
	.ascii	"ELEMENTSIZE\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"LOCKCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"DATA\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La116-.Ldebug_info0
	.uleb128	13
	.ascii	"BOUNDS\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La354-.Ldebug_info0
	.byte	0
.La352:
	.uleb128	9
	.long	.La351-.Ldebug_info0
# Definition tvararrayboundarray
.La354:
	.uleb128	7
	.ascii	"TVARARRAYBOUNDARRAY\000"
	.long	.La356-.Ldebug_info0
.La356:
	.uleb128	39
	.ascii	"TVARARRAYBOUNDARRAY\000"
	.uleb128	8
	.long	.La357-.Ldebug_info0
	.uleb128	21
	.sleb128	0
	.sleb128	0
	.uleb128	8
	.long	.La125-.Ldebug_info0
	.byte	0
.La355:
	.uleb128	9
	.long	.La354-.Ldebug_info0
# Definition tvararraybound
.La357:
	.uleb128	7
	.ascii	"TVARARRAYBOUND\000"
	.long	.La359-.Ldebug_info0
.La359:
	.uleb128	12
	.ascii	"TVARARRAYBOUND\000"
	.uleb128	8
	.uleb128	13
	.ascii	"ELEMENTCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1-.Ldebug_info0
	.uleb128	13
	.ascii	"LOWBOUND\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La1-.Ldebug_info0
	.byte	0
.La358:
	.uleb128	9
	.long	.La357-.Ldebug_info0
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
	.uleb128	15
	.byte	0
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
	.byte	0
	.byte	0
# Abbrev 17
	.uleb128	17
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
# Abbrev 18
	.uleb128	18
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
# Abbrev 19
	.uleb128	19
	.uleb128	5
	.byte	0
	.uleb128	3
	.uleb128	8
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
	.uleb128	19
	.byte	1
	.uleb128	11
	.uleb128	11
	.byte	0
	.byte	0
# Abbrev 31
	.uleb128	31
	.uleb128	21
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	39
	.uleb128	12
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
# Abbrev 34
	.uleb128	34
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
# Abbrev 35
	.uleb128	35
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
# Abbrev 36
	.uleb128	36
	.uleb128	19
	.byte	1
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 37
	.uleb128	37
	.uleb128	1
	.byte	1
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 38
	.uleb128	38
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
# Abbrev 39
	.uleb128	39
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
	.ascii	"umain.pas\000"
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Lehdebug_line0:
# === header end ===
# function: UMAIN$_$MAIN1_$$_fin$0
# [51:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	62
# [51:1]
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
# function: UMAIN_$$_MAIN1
# [51:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll4
	.byte	5
	.uleb128	1
	.byte	62
# [51:1]
	.byte	2
	.uleb128	.Ll5-.Ll4
	.byte	1
# [55:6]
	.byte	2
	.uleb128	.Ll6-.Ll5
	.byte	5
	.uleb128	6
	.byte	16
# [56:6]
	.byte	2
	.uleb128	.Ll7-.Ll6
	.byte	13
# [57:6]
	.byte	2
	.uleb128	.Ll8-.Ll7
	.byte	13
# [58:6]
	.byte	2
	.uleb128	.Ll9-.Ll8
	.byte	13
# [59:6]
	.byte	2
	.uleb128	.Ll10-.Ll9
	.byte	13
# [60:6]
	.byte	2
	.uleb128	.Ll11-.Ll10
	.byte	13
# [61:6]
	.byte	2
	.uleb128	.Ll12-.Ll11
	.byte	13
# [62:6]
	.byte	2
	.uleb128	.Ll13-.Ll12
	.byte	13
# [66:1]
	.byte	2
	.uleb128	.Ll14-.Ll13
	.byte	5
	.uleb128	1
	.byte	16
# [67:3]
	.byte	2
	.uleb128	.Ll15-.Ll14
	.byte	5
	.uleb128	3
	.byte	13
# [68:9]
	.byte	2
	.uleb128	.Ll16-.Ll15
	.byte	5
	.uleb128	9
	.byte	13
# [69:8]
	.byte	2
	.uleb128	.Ll17-.Ll16
	.byte	5
	.uleb128	8
	.byte	13
# [51:1]
	.byte	2
	.uleb128	.Ll18-.Ll17
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-18
	.byte	1
# [69:28]
	.byte	2
	.uleb128	.Ll19-.Ll18
	.byte	5
	.uleb128	28
	.byte	30
# [67:3]
	.byte	2
	.uleb128	.Ll20-.Ll19
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-2
	.byte	1
# [66:1]
	.byte	2
	.uleb128	.Ll21-.Ll20
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [72:1]
	.byte	2
	.uleb128	.Ll22-.Ll21
	.byte	18
# [73:3]
	.byte	2
	.uleb128	.Ll23-.Ll22
	.byte	5
	.uleb128	3
	.byte	13
# [74:9]
	.byte	2
	.uleb128	.Ll24-.Ll23
	.byte	5
	.uleb128	9
	.byte	13
# [75:10]
	.byte	2
	.uleb128	.Ll25-.Ll24
	.byte	5
	.uleb128	10
	.byte	13
# [76:8]
	.byte	2
	.uleb128	.Ll26-.Ll25
	.byte	5
	.uleb128	8
	.byte	13
# [51:1]
	.byte	2
	.uleb128	.Ll27-.Ll26
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-25
	.byte	1
# [76:28]
	.byte	2
	.uleb128	.Ll28-.Ll27
	.byte	5
	.uleb128	28
	.byte	37
# [73:3]
	.byte	2
	.uleb128	.Ll29-.Ll28
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-3
	.byte	1
# [72:1]
	.byte	2
	.uleb128	.Ll30-.Ll29
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [79:1]
	.byte	2
	.uleb128	.Ll31-.Ll30
	.byte	19
# [80:3]
	.byte	2
	.uleb128	.Ll32-.Ll31
	.byte	5
	.uleb128	3
	.byte	13
# [81:9]
	.byte	2
	.uleb128	.Ll33-.Ll32
	.byte	5
	.uleb128	9
	.byte	13
# [82:10]
	.byte	2
	.uleb128	.Ll34-.Ll33
	.byte	5
	.uleb128	10
	.byte	13
# [83:8]
	.byte	2
	.uleb128	.Ll35-.Ll34
	.byte	5
	.uleb128	8
	.byte	13
# [51:1]
	.byte	2
	.uleb128	.Ll36-.Ll35
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-32
	.byte	1
# [83:28]
	.byte	2
	.uleb128	.Ll37-.Ll36
	.byte	5
	.uleb128	28
	.byte	44
# [80:3]
	.byte	2
	.uleb128	.Ll38-.Ll37
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-3
	.byte	1
# [79:1]
	.byte	2
	.uleb128	.Ll39-.Ll38
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [90:1]
	.byte	2
	.uleb128	.Ll40-.Ll39
	.byte	23
# [91:1]
	.byte	2
	.uleb128	.Ll41-.Ll40
	.byte	13
# [92:6]
	.byte	2
	.uleb128	.Ll42-.Ll41
	.byte	5
	.uleb128	6
	.byte	13
# [93:1]
	.byte	2
	.uleb128	.Ll43-.Ll42
	.byte	5
	.uleb128	1
	.byte	13
# [94:1]
	.byte	2
	.uleb128	.Ll44-.Ll43
	.byte	13
# [95:1]
	.byte	2
	.uleb128	.Ll45-.Ll44
	.byte	13
# [96:1]
	.byte	2
	.uleb128	.Ll46-.Ll45
	.byte	13
# [97:9]
	.byte	2
	.uleb128	.Ll47-.Ll46
	.byte	5
	.uleb128	9
	.byte	13
# [98:6]
	.byte	2
	.uleb128	.Ll48-.Ll47
	.byte	5
	.uleb128	6
	.byte	13
# [99:1]
	.byte	2
	.uleb128	.Ll49-.Ll48
	.byte	5
	.uleb128	1
	.byte	13
# [100:1]
	.byte	2
	.uleb128	.Ll50-.Ll49
	.byte	13
# [101:1]
	.byte	2
	.uleb128	.Ll51-.Ll50
	.byte	13
# [102:1]
	.byte	2
	.uleb128	.Ll52-.Ll51
	.byte	13
# [103:1]
	.byte	2
	.uleb128	.Ll53-.Ll52
	.byte	13
# [104:1]
	.byte	2
	.uleb128	.Ll54-.Ll53
	.byte	13
# [105:1]
	.byte	2
	.uleb128	.Ll55-.Ll54
	.byte	13
# [106:1]
	.byte	2
	.uleb128	.Ll56-.Ll55
	.byte	13
# [107:1]
	.byte	2
	.uleb128	.Ll57-.Ll56
	.byte	13
# [108:1]
	.byte	2
	.uleb128	.Ll58-.Ll57
	.byte	13
# [109:1]
	.byte	2
	.uleb128	.Ll59-.Ll58
	.byte	13
# [110:1]
	.byte	2
	.uleb128	.Ll60-.Ll59
	.byte	13
# [111:1]
	.byte	2
	.uleb128	.Ll61-.Ll60
	.byte	13
# [112:1]
	.byte	2
	.uleb128	.Ll62-.Ll61
	.byte	13
# [113:1]
	.byte	2
	.uleb128	.Ll63-.Ll62
	.byte	13
# [114:1]
	.byte	2
	.uleb128	.Ll64-.Ll63
	.byte	13
# [115:1]
	.byte	2
	.uleb128	.Ll65-.Ll64
	.byte	13
# [116:1]
	.byte	2
	.uleb128	.Ll66-.Ll65
	.byte	13
# [117:1]
	.byte	2
	.uleb128	.Ll67-.Ll66
	.byte	13
# [118:1]
	.byte	2
	.uleb128	.Ll68-.Ll67
	.byte	13
# [119:1]
	.byte	2
	.uleb128	.Ll69-.Ll68
	.byte	13
# [120:1]
	.byte	2
	.uleb128	.Ll70-.Ll69
	.byte	13
# [121:1]
	.byte	2
	.uleb128	.Ll71-.Ll70
	.byte	13
# [122:1]
	.byte	2
	.uleb128	.Ll72-.Ll71
	.byte	13
# [123:1]
	.byte	2
	.uleb128	.Ll73-.Ll72
	.byte	13
# [124:1]
	.byte	2
	.uleb128	.Ll74-.Ll73
	.byte	13
# [125:1]
	.byte	2
	.uleb128	.Ll75-.Ll74
	.byte	13
# [126:1]
	.byte	2
	.uleb128	.Ll76-.Ll75
	.byte	13
# [127:1]
	.byte	2
	.uleb128	.Ll77-.Ll76
	.byte	13
# [128:1]
	.byte	2
	.uleb128	.Ll78-.Ll77
	.byte	13
# [129:1]
	.byte	2
	.uleb128	.Ll79-.Ll78
	.byte	13
# [130:1]
	.byte	2
	.uleb128	.Ll80-.Ll79
	.byte	13
# [131:1]
	.byte	2
	.uleb128	.Ll81-.Ll80
	.byte	13
# [132:1]
	.byte	2
	.uleb128	.Ll82-.Ll81
	.byte	13
# [133:1]
	.byte	2
	.uleb128	.Ll83-.Ll82
	.byte	13
# [134:1]
	.byte	2
	.uleb128	.Ll84-.Ll83
	.byte	13
# [135:1]
	.byte	2
	.uleb128	.Ll85-.Ll84
	.byte	13
# [136:1]
	.byte	2
	.uleb128	.Ll86-.Ll85
	.byte	13
# [137:1]
	.byte	2
	.uleb128	.Ll87-.Ll86
	.byte	13
# [138:1]
	.byte	2
	.uleb128	.Ll88-.Ll87
	.byte	13
# [139:1]
	.byte	2
	.uleb128	.Ll89-.Ll88
	.byte	13
# [140:1]
	.byte	2
	.uleb128	.Ll90-.Ll89
	.byte	13
# [141:1]
	.byte	2
	.uleb128	.Ll91-.Ll90
	.byte	13
# [142:1]
	.byte	2
	.uleb128	.Ll92-.Ll91
	.byte	13
# [143:1]
	.byte	2
	.uleb128	.Ll93-.Ll92
	.byte	13
# [144:1]
	.byte	2
	.uleb128	.Ll94-.Ll93
	.byte	13
# [145:1]
	.byte	2
	.uleb128	.Ll95-.Ll94
	.byte	13
# [146:1]
	.byte	2
	.uleb128	.Ll96-.Ll95
	.byte	13
# [147:4]
	.byte	2
	.uleb128	.Ll97-.Ll96
	.byte	5
	.uleb128	4
	.byte	13
# [148:1]
	.byte	2
	.uleb128	.Ll98-.Ll97
	.byte	5
	.uleb128	1
	.byte	13
# [149:2]
	.byte	2
	.uleb128	.Ll99-.Ll98
	.byte	5
	.uleb128	2
	.byte	13
# [148:1]
	.byte	2
	.uleb128	.Ll100-.Ll99
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [150:4]
	.byte	2
	.uleb128	.Ll101-.Ll100
	.byte	5
	.uleb128	4
	.byte	14
# [151:1]
	.byte	2
	.uleb128	.Ll102-.Ll101
	.byte	5
	.uleb128	1
	.byte	13
# [152:1]
	.byte	2
	.uleb128	.Ll103-.Ll102
	.byte	13
# [153:1]
	.byte	2
	.uleb128	.Ll104-.Ll103
	.byte	13
# [51:1]
	.byte	2
	.uleb128	.Ll105-.Ll104
	.byte	3
	.sleb128	-102
	.byte	1
# [154:1]
	.byte	2
	.uleb128	.Ll106-.Ll105
	.byte	115
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll107
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UMAIN$_$MAIN2_$$_fin$1
# [167:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll108
	.byte	5
	.uleb128	1
	.byte	178
# [167:1]
	.byte	2
	.uleb128	.Ll109-.Ll108
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll110
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UMAIN_$$_MAIN2
# [167:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll111
	.byte	5
	.uleb128	1
	.byte	178
# [167:1]
	.byte	2
	.uleb128	.Ll112-.Ll111
	.byte	1
# [170:9]
	.byte	2
	.uleb128	.Ll113-.Ll112
	.byte	5
	.uleb128	9
	.byte	15
# [172:12]
	.byte	2
	.uleb128	.Ll114-.Ll113
	.byte	5
	.uleb128	12
	.byte	14
# [177:5]
	.byte	2
	.uleb128	.Ll115-.Ll114
	.byte	5
	.uleb128	5
	.byte	17
# [178:12]
	.byte	2
	.uleb128	.Ll116-.Ll115
	.byte	5
	.uleb128	12
	.byte	13
# [179:5]
	.byte	2
	.uleb128	.Ll117-.Ll116
	.byte	5
	.uleb128	5
	.byte	13
# [180:5]
	.byte	2
	.uleb128	.Ll118-.Ll117
	.byte	13
# [181:5]
	.byte	2
	.uleb128	.Ll119-.Ll118
	.byte	13
# [182:6]
	.byte	2
	.uleb128	.Ll120-.Ll119
	.byte	5
	.uleb128	6
	.byte	13
# [183:6]
	.byte	2
	.uleb128	.Ll121-.Ll120
	.byte	13
# [184:6]
	.byte	2
	.uleb128	.Ll122-.Ll121
	.byte	13
# [185:19]
	.byte	2
	.uleb128	.Ll123-.Ll122
	.byte	5
	.uleb128	19
	.byte	13
# [187:1]
	.byte	2
	.uleb128	.Ll124-.Ll123
	.byte	5
	.uleb128	1
	.byte	14
# [188:1]
	.byte	2
	.uleb128	.Ll125-.Ll124
	.byte	13
# [189:1]
	.byte	2
	.uleb128	.Ll126-.Ll125
	.byte	13
# [195:38]
	.byte	2
	.uleb128	.Ll127-.Ll126
	.byte	5
	.uleb128	38
	.byte	18
# [196:15]
	.byte	2
	.uleb128	.Ll128-.Ll127
	.byte	5
	.uleb128	15
	.byte	13
# [197:13]
	.byte	2
	.uleb128	.Ll129-.Ll128
	.byte	5
	.uleb128	13
	.byte	13
# [198:13]
	.byte	2
	.uleb128	.Ll130-.Ll129
	.byte	13
# [199:13]
	.byte	2
	.uleb128	.Ll131-.Ll130
	.byte	13
# [200:15]
	.byte	2
	.uleb128	.Ll132-.Ll131
	.byte	5
	.uleb128	15
	.byte	13
# [201:1]
	.byte	2
	.uleb128	.Ll133-.Ll132
	.byte	5
	.uleb128	1
	.byte	13
# [202:70]
	.byte	2
	.uleb128	.Ll134-.Ll133
	.byte	5
	.uleb128	70
	.byte	13
# [203:71]
	.byte	2
	.uleb128	.Ll135-.Ll134
	.byte	5
	.uleb128	71
	.byte	13
# [204:68]
	.byte	2
	.uleb128	.Ll136-.Ll135
	.byte	5
	.uleb128	68
	.byte	13
# [205:80]
	.byte	2
	.uleb128	.Ll137-.Ll136
	.byte	5
	.uleb128	80
	.byte	13
# [206:4]
	.byte	2
	.uleb128	.Ll138-.Ll137
	.byte	5
	.uleb128	4
	.byte	13
# [207:4]
	.byte	2
	.uleb128	.Ll139-.Ll138
	.byte	13
# [208:4]
	.byte	2
	.uleb128	.Ll140-.Ll139
	.byte	13
# [209:1]
	.byte	2
	.uleb128	.Ll141-.Ll140
	.byte	5
	.uleb128	1
	.byte	13
# [211:1]
	.byte	2
	.uleb128	.Ll142-.Ll141
	.byte	14
# [212:4]
	.byte	2
	.uleb128	.Ll143-.Ll142
	.byte	5
	.uleb128	4
	.byte	13
# [213:1]
	.byte	2
	.uleb128	.Ll144-.Ll143
	.byte	5
	.uleb128	1
	.byte	13
# [214:1]
	.byte	2
	.uleb128	.Ll145-.Ll144
	.byte	13
# [215:1]
	.byte	2
	.uleb128	.Ll146-.Ll145
	.byte	13
# [216:1]
	.byte	2
	.uleb128	.Ll147-.Ll146
	.byte	13
# [217:1]
	.byte	2
	.uleb128	.Ll148-.Ll147
	.byte	13
# [218:1]
	.byte	2
	.uleb128	.Ll149-.Ll148
	.byte	13
# [219:1]
	.byte	2
	.uleb128	.Ll150-.Ll149
	.byte	13
# [222:13]
	.byte	2
	.uleb128	.Ll151-.Ll150
	.byte	5
	.uleb128	13
	.byte	15
# [223:14]
	.byte	2
	.uleb128	.Ll152-.Ll151
	.byte	5
	.uleb128	14
	.byte	13
# [224:16]
	.byte	2
	.uleb128	.Ll153-.Ll152
	.byte	5
	.uleb128	16
	.byte	13
# [226:14]
	.byte	2
	.uleb128	.Ll154-.Ll153
	.byte	5
	.uleb128	14
	.byte	14
# [227:15]
	.byte	2
	.uleb128	.Ll155-.Ll154
	.byte	5
	.uleb128	15
	.byte	13
# [229:16]
	.byte	2
	.uleb128	.Ll156-.Ll155
	.byte	5
	.uleb128	16
	.byte	14
# [231:14]
	.byte	2
	.uleb128	.Ll157-.Ll156
	.byte	5
	.uleb128	14
	.byte	14
# [232:15]
	.byte	2
	.uleb128	.Ll158-.Ll157
	.byte	5
	.uleb128	15
	.byte	13
# [234:16]
	.byte	2
	.uleb128	.Ll159-.Ll158
	.byte	5
	.uleb128	16
	.byte	14
# [236:6]
	.byte	2
	.uleb128	.Ll160-.Ll159
	.byte	5
	.uleb128	6
	.byte	14
# [237:1]
	.byte	2
	.uleb128	.Ll161-.Ll160
	.byte	5
	.uleb128	1
	.byte	13
# [238:1]
	.byte	2
	.uleb128	.Ll162-.Ll161
	.byte	13
# [167:1]
	.byte	2
	.uleb128	.Ll163-.Ll162
	.byte	3
	.sleb128	-71
	.byte	1
# [240:1]
	.byte	2
	.uleb128	.Ll164-.Ll163
	.byte	85
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll165
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: INIT$_$UMAIN
# function: UMAIN_$$_init_implicit$
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll166
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FINALIZE$_$UMAIN
# function: UMAIN_$$_finalize_implicit$
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll167
	.byte	0
	.byte	1
	.byte	1
# ###################
.Ledebug_line0:
# End asmlist al_dwarf_line
# Begin asmlist al_end

.section .text.z_DEBUGEND_$UMAIN,"x"
.globl	DEBUGEND_$UMAIN
DEBUGEND_$UMAIN:
# End asmlist al_end

