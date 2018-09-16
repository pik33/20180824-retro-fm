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

.section .text.n_umain$_$inttostr2$longint$longint$$ansistring_$$_fin$1,"x"
	.balign 16,0x90
UMAIN$_$INTTOSTR2$LONGINT$LONGINT$$ANSISTRING_$$_fin$1:
.Lc1:
.seh_proc UMAIN$_$INTTOSTR2$LONGINT$LONGINT$$ANSISTRING_$$_fin$1
.Ll1:
# [umain.pas]
# [54] begin
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
	leaq	-8(%rbp),%rax
	movq	%rax,%rcx
	call	fpc_ansistr_decr_ref
	leaq	-16(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc2:
.Lt6:
.Ll3:

.section .text.n_umain_$$_inttostr2$longint$longint$$ansistring,"x"
	.balign 16,0x90
.globl	UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING:
.Lc6:
# Temps allocated between rbp-40 and rbp-16
.seh_proc UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
.Ll4:
	pushq	%rbp
.seh_pushreg %rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
# Var a located in register edx
# Var l located in register esi
# Var $result located in register rbx
# Var i located in register edi
# Var l2 located in register esi
	movq	%rbx,-40(%rbp)
	movq	%rdi,-32(%rbp)
	movq	%rsi,-24(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rdi, 48
.seh_savereg %rsi, 56
.seh_endprologue
# Var s located at rbp-8, size=OS_64
# Var s2 located at rbp-16, size=OS_64
	movq	%rcx,%rbx
	movl	%r8d,%esi
.Ll5:
	movq	$0,-8(%rbp)
	movq	$0,-16(%rbp)
.Lj11:
	nop
.Lj7:
.Ll6:
# [55] s:=inttostr(a);
	leaq	-8(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
.Ll7:
# [56] l2:=l-length(s);
	movslq	%esi,%rsi
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj18
	movq	-8(%rax),%rax
.Lj18:
	subq	%rax,%rsi
.Ll8:
# [57] s2:='';
	movq	$0,%rdx
	leaq	-16(%rbp),%rcx
	call	fpc_ansistr_assign
.Ll9:
# [58] if l2>0 then for i:=1 to l2 do s2+='0';
	cmpl	$0,%esi
	jng	.Lj24
	movl	$1,%edi
	cmpl	%edi,%esi
	jl	.Lj28
	subl	$1,%edi
	.balign 8,0x90
.Lj29:
	addl	$1,%edi
	leaq	_$UMAIN$_Ld1(%rip),%r8
	movq	-16(%rbp),%rdx
	leaq	-16(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
	cmpl	%edi,%esi
	jg	.Lj29
.Lj28:
.Lj24:
.Ll10:
# [59] s2+=s;
	movq	-8(%rbp),%r8
	movq	-16(%rbp),%rdx
	leaq	-16(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
.Ll11:
# [60] result:=s2;
	movq	%rbx,%rcx
	movq	-16(%rbp),%rdx
	call	fpc_ansistr_assign
.Lj50:
.Ll12:
	nop
.Lj8:
	movq	%rbp,%rcx
	call	UMAIN$_$INTTOSTR2$LONGINT$LONGINT$$ANSISTRING_$$_fin$1
.Ll13:
# [61] end;
	movq	-40(%rbp),%rbx
	movq	-32(%rbp),%rdi
	movq	-24(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj7
	.rva	.Lj8
	.rva	UMAIN$_$INTTOSTR2$LONGINT$LONGINT$$ANSISTRING_$$_fin$1

.section .text.n_umain_$$_inttostr2$longint$longint$$ansistring,"x"
.seh_endproc
.Lc7:
.Lt5:
.Ll14:

.section .text.n_umain$_$main1_$$_fin$2,"x"
	.balign 16,0x90
UMAIN$_$MAIN1_$$_fin$2:
.Lc11:
.seh_proc UMAIN$_$MAIN1_$$_fin$2
.Ll15:
# [67] begin
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
.Ll16:
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc12:
.Lt2:
.Ll17:

.section .text.n_umain_$$_main1,"x"
	.balign 16,0x90
.globl	UMAIN_$$_MAIN1
UMAIN_$$_MAIN1:
.Lc16:
# Temps allocated between rbp-40 and rbp+0
.seh_proc UMAIN_$$_MAIN1
.Ll18:
	pushq	%rbp
.seh_pushreg %rbp
.Lc18:
.Lc19:
	movq	%rsp,%rbp
.Lc20:
	leaq	-96(%rsp),%rsp
.seh_stackalloc 96
# Var t located in register rbx
# Var i located in register esi
	movq	%rbx,-40(%rbp)
	movq	%rsi,-32(%rbp)
.seh_savereg %rbx, 56
.seh_savereg %rsi, 64
.seh_endprologue
.Ll19:
	movq	$0,-8(%rbp)
.Lj69:
	nop
.Lj65:
.Ll20:
# [71] raml^[$18010]:=$01001100;    raml^[$18011]:=$80040004;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16781568,393280(%rax)
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$-2147221500,393284(%rax)
.Ll21:
# [72] raml^[$18012]:=$01001100;    raml^[$18013]:=$00040004;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16781568,393288(%rax)
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$262148,393292(%rax)
.Ll22:
# [73] raml^[$18014]:=$01001100;    raml^[$18015]:=$00040004;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16781568,393296(%rax)
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$262148,393300(%rax)
.Ll23:
# [74] raml^[$18016]:=$01001100;    raml^[$18017]:=$00040004;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16781568,393304(%rax)
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$262148,393308(%rax)
.Ll24:
# [75] raml^[$18018]:=$01001100;    raml^[$18019]:=$00040004;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16781568,393312(%rax)
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$262148,393316(%rax)
.Ll25:
# [76] raml^[$1801a]:=$01001100;    raml^[$1801b]:=$00040004;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16781568,393320(%rax)
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$262148,393324(%rax)
.Ll26:
# [77] raml^[$1801c]:=$01001100;    raml^[$1801d]:=$00040004;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16781568,393328(%rax)
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$262148,393332(%rax)
.Ll27:
# [78] raml^[$1801e]:=$01001100;    raml^[$1801f]:=$00010001;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16781568,393336(%rax)
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$65537,393340(%rax)
.Ll28:
# [82] for i:=0 to 31 do
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj104:
	addl	$1,%esi
.Ll29:
# [83] for j:=0 to 31 do  begin
	movl	$0,U_$UMAIN_$$_J(%rip)
	subl	$1,U_$UMAIN_$$_J(%rip)
	.balign 8,0x90
.Lj107:
	addl	$1,U_$UMAIN_$$_J(%rip)
.Ll30:
# [84] if j<16 then k:=j*16 else k:=(31-j)*16 ;
	cmpl	$16,U_$UMAIN_$$_J(%rip)
	jnl	.Lj109
	movl	U_$UMAIN_$$_J(%rip),%eax
	shll	$4,%eax
	movl	%eax,U_$UMAIN_$$_K(%rip)
	jmp	.Lj112
.Lj109:
	movl	U_$UMAIN_$$_J(%rip),%edx
	movl	$31,%eax
	subl	%edx,%eax
	shll	$4,%eax
	movl	%eax,U_$UMAIN_$$_K(%rip)
.Lj112:
.Ll31:
# [85] if (i<11) or (i>21) or (j<11) or (j>21) then raml^[$14800+i+32*j]:=k else  raml^[$14800+i+32*j]:=$0;
	cmpl	$11,%esi
	jl	.Lj115
	cmpl	$21,%esi
	jg	.Lj115
.Ll32:
	movl	U_$UMAIN_$$_J(%rip),%eax
.Ll33:
	cmpl	$11,%eax
	jl	.Lj115
	cmpl	$21,%eax
	jng	.Lj116
.Lj115:
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	%esi,%rax
	leaq	83968(%rax),%rdx
	movslq	U_$UMAIN_$$_J(%rip),%rax
	shlq	$5,%rax
	leaq	(%rdx,%rax),%rax
	movl	U_$UMAIN_$$_K(%rip),%edx
	movl	%edx,(%rcx,%rax,4)
	jmp	.Lj124
.Lj116:
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	%esi,%rax
	leaq	83968(%rax),%rdx
	movslq	U_$UMAIN_$$_J(%rip),%rax
	shlq	$5,%rax
	leaq	(%rdx,%rax),%rax
	movl	$0,(%rcx,%rax,4)
.Lj124:
.Ll34:
	cmpl	$31,U_$UMAIN_$$_J(%rip)
	jl	.Lj107
.Ll35:
	cmpl	$31,%esi
	jl	.Lj104
.Ll36:
# [88] for i:=0 to 31 do
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj129:
	addl	$1,%esi
.Ll37:
# [89] for j:=0 to 31 do  begin
	movl	$0,U_$UMAIN_$$_J(%rip)
	subl	$1,U_$UMAIN_$$_J(%rip)
	.balign 8,0x90
.Lj132:
	addl	$1,U_$UMAIN_$$_J(%rip)
.Ll38:
# [90] if j<16 then k:=j*16 else k:=(31-j)*16 ;
	cmpl	$16,U_$UMAIN_$$_J(%rip)
	jnl	.Lj134
	movl	U_$UMAIN_$$_J(%rip),%eax
	shll	$4,%eax
	movl	%eax,U_$UMAIN_$$_K(%rip)
	jmp	.Lj137
.Lj134:
	movl	U_$UMAIN_$$_J(%rip),%edx
	movl	$31,%eax
	subl	%edx,%eax
	shll	$4,%eax
	movl	%eax,U_$UMAIN_$$_K(%rip)
.Lj137:
# PeepHole Optimization,var2
# P=movl
# HP1=shll
# HP2=movl
# PeepHole Optimization,var2
.Ll39:
# [91] k:=k shl 8;
	shll	$8,U_$UMAIN_$$_K(%rip)
.Ll40:
# [92] if (i<11) or (i>21) or (j<11) or (j>21) then raml^[$14C00+i+32*j]:=k else  raml^[$14C00+i+32*j]:=$0;
	cmpl	$11,%esi
	jl	.Lj142
	cmpl	$21,%esi
	jg	.Lj142
.Ll41:
	movl	U_$UMAIN_$$_J(%rip),%eax
.Ll42:
	cmpl	$11,%eax
	jl	.Lj142
	cmpl	$21,%eax
	jng	.Lj143
.Lj142:
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	%esi,%rax
	leaq	84992(%rax),%rdx
	movslq	U_$UMAIN_$$_J(%rip),%rax
	shlq	$5,%rax
	leaq	(%rdx,%rax),%rdx
	movl	U_$UMAIN_$$_K(%rip),%eax
	movl	%eax,(%rcx,%rdx,4)
	jmp	.Lj151
.Lj143:
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	%esi,%rax
	leaq	84992(%rax),%rdx
	movslq	U_$UMAIN_$$_J(%rip),%rax
	shlq	$5,%rax
	leaq	(%rdx,%rax),%rax
	movl	$0,(%rcx,%rax,4)
.Lj151:
.Ll43:
	cmpl	$31,U_$UMAIN_$$_J(%rip)
	jl	.Lj132
.Ll44:
	cmpl	$31,%esi
	jl	.Lj129
.Ll45:
# [95] for i:=0 to 31 do
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj156:
	addl	$1,%esi
.Ll46:
# [96] for j:=0 to 31 do  begin
	movl	$0,U_$UMAIN_$$_J(%rip)
	subl	$1,U_$UMAIN_$$_J(%rip)
	.balign 8,0x90
.Lj159:
	addl	$1,U_$UMAIN_$$_J(%rip)
.Ll47:
# [97] if j<16 then k:=j*16 else k:=(31-j)*16 ;
	cmpl	$16,U_$UMAIN_$$_J(%rip)
	jnl	.Lj161
	movl	U_$UMAIN_$$_J(%rip),%eax
	shll	$4,%eax
	movl	%eax,U_$UMAIN_$$_K(%rip)
	jmp	.Lj164
.Lj161:
	movl	U_$UMAIN_$$_J(%rip),%edx
	movl	$31,%eax
	subl	%edx,%eax
	shll	$4,%eax
	movl	%eax,U_$UMAIN_$$_K(%rip)
.Lj164:
# PeepHole Optimization,var2
# P=movl
# HP1=shll
# HP2=movl
# PeepHole Optimization,var2
.Ll48:
# [98] k:=k shl 16;
	shll	$16,U_$UMAIN_$$_K(%rip)
.Ll49:
# [99] if (i<11) or (i>21) or (j<11) or (j>21) then raml^[$15000+i+32*j]:=k else  raml^[$15000+i+32*j]:=$0;
	cmpl	$11,%esi
	jl	.Lj169
	cmpl	$21,%esi
	jg	.Lj169
.Ll50:
	movl	U_$UMAIN_$$_J(%rip),%eax
.Ll51:
	cmpl	$11,%eax
	jl	.Lj169
	cmpl	$21,%eax
	jng	.Lj170
.Lj169:
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	%esi,%rax
	leaq	86016(%rax),%rdx
	movslq	U_$UMAIN_$$_J(%rip),%rax
	shlq	$5,%rax
	leaq	(%rdx,%rax),%rdx
	movl	U_$UMAIN_$$_K(%rip),%eax
	movl	%eax,(%rcx,%rdx,4)
	jmp	.Lj178
.Lj170:
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	%esi,%rax
	leaq	86016(%rax),%rdx
	movslq	U_$UMAIN_$$_J(%rip),%rax
	shlq	$5,%rax
	leaq	(%rdx,%rax),%rax
	movl	$0,(%rcx,%rax,4)
.Lj178:
.Ll52:
	cmpl	$31,U_$UMAIN_$$_J(%rip)
	jl	.Lj159
.Ll53:
	cmpl	$31,%esi
	jl	.Lj156
.Ll54:
# [106] graphics(16);
	movl	$16,%ecx
	call	RETRO_$$_GRAPHICS$LONGINT
.Ll55:
# [107] cls(146);
	movl	$146,%ecx
	call	RETRO_$$_CLS$LONGINT
.Ll56:
# [108] ttt:=gettime;
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,U_$UMAIN_$$_TTT(%rip)
.Ll57:
# [109] outtextxyz(96,16,'The retromachine FM Synth v. 0.02 --- 2018.09.15 | Voice editor',154,3,2);
	movl	$2,40(%rsp)
	movl	$3,32(%rsp)
	leaq	_$UMAIN$_Ld2(%rip),%r8
	movl	$154,%r9d
	movl	$16,%edx
	movl	$96,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll58:
# [110] box2(8,64,1784,1112,0);
	movl	$0,32(%rsp)
	movl	$1112,%r9d
	movl	$1784,%r8d
	movl	$64,%edx
	movl	$8,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll59:
# [111] box2(10,1062,1782,1110,120);
	movl	$120,32(%rsp)
	movl	$1110,%r9d
	movl	$1782,%r8d
	movl	$1062,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll60:
# [112] outtextxyz(32,1070,'Screen time:',124,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	leaq	_$UMAIN$_Ld3(%rip),%r8
	movl	$124,%r9d
	movl	$1070,%edx
	movl	$32,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll61:
# [113] k:=raml^[$18000];
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393216(%rax),%eax
	movl	%eax,U_$UMAIN_$$_K(%rip)
.Ll62:
# [114] raml^[$18003]:=$002040;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$8256,393228(%rax)
.Ll63:
# [115] setataripallette(1);
	movl	$1,%ecx
	call	RETRO_$$_SETATARIPALLETTE$LONGINT
.Ll64:
# [116] setataripallette(2);
	movl	$2,%ecx
	call	RETRO_$$_SETATARIPALLETTE$LONGINT
.Ll65:
# [117] setataripallette(3);
	movl	$3,%ecx
	call	RETRO_$$_SETATARIPALLETTE$LONGINT
.Ll66:
# [118] sethidecolor(250,0,$FF);
	movl	$255,%r8d
	movl	$0,%edx
	movl	$250,%ecx
	call	RETRO_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
.Ll67:
# [119] sethidecolor(44,0,$FF);
	movl	$255,%r8d
	movl	$0,%edx
	movl	$44,%ecx
	call	RETRO_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
.Ll68:
# [120] sethidecolor(190,0,$FF);
	movl	$255,%r8d
	movl	$0,%edx
	movl	$190,%ecx
	call	RETRO_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
.Ll69:
# [121] sethidecolor(188,0,$FF);
	movl	$255,%r8d
	movl	$0,%edx
	movl	$188,%ecx
	call	RETRO_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
.Ll70:
# [122] c:=0;
	movq	$0,TC_$UMAIN_$$_C(%rip)
.Ll71:
# [123] avsct:=0;
	movq	$0,TC_$UMAIN_$$_AVSCT(%rip)
.Ll72:
# [124] avspt:=0;
	movq	$0,TC_$UMAIN_$$_AVSPT(%rip)
.Ll73:
# [125] avall:=0;
	movq	$0,TC_$UMAIN_$$_AVALL(%rip)
.Ll74:
# [126] avsid:=0;
	movq	$0,TC_$UMAIN_$$_AVSID(%rip)
.Ll75:
# [128] sdl_pauseaudio(1); sleep(10);
	movl	$1,%ecx
	call	_$dll$sdl2$SDL_PauseAudio
	movl	$10,%ecx
	call	SYSUTILS_$$_SLEEP$LONGWORD
.Ll76:
# [129] t:=gettime;
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,%rbx
.Ll77:
# [130] for i:=1 to 1000000 do
	movl	$1,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj283:
	addl	$1,%esi
.Ll78:
# [131] voices[0].getsample;
	movq	U_$FMSYNTH_$$_VOICES(%rip),%rcx
	call	FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
.Ll79:
	cmpl	$1000000,%esi
	jl	.Lj283
.Ll80:
# [132] t:=gettime-t;
	call	RETRO_$$_GETTIME$$INT64
	subq	%rbx,%rax
	movq	%rax,%rbx
.Ll81:
# [133] box(100,100,200,100,0);
	movl	$0,32(%rsp)
	movl	$100,%r9d
	movl	$200,%r8d
	movl	$100,%edx
	movl	$100,%ecx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll82:
# [134] outtextxyz(100,100,inttostr(t),44,2,2);
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
.Ll83:
# [135] sdl_pauseaudio(0);
	movl	$0,%ecx
	call	_$dll$sdl2$SDL_PauseAudio
.Ll84:
# [138] box2(900,860,1019,1047,33);
	movl	$33,32(%rsp)
	movl	$1047,%r9d
	movl	$1019,%r8d
	movl	$860,%edx
	movl	$900,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll85:
# [139] outtextxy(912,864,'Midi reports',44);
	leaq	_$UMAIN$_Ld4(%rip),%r8
	movl	$44,%r9d
	movl	$864,%edx
	movl	$912,%ecx
	call	RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
.Ll86:
# [141] for i:=0 to 3 do
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj336:
	addl	$1,%esi
.Ll87:
# [143] for j:=0 to 1 do
	movl	$0,U_$UMAIN_$$_J(%rip)
	subl	$1,U_$UMAIN_$$_J(%rip)
	.balign 8,0x90
.Lj339:
	addl	$1,U_$UMAIN_$$_J(%rip)
.Ll88:
# [145] qx:=443*i; qy:=388*j;
	imull	$443,%esi,%eax
	movl	%eax,U_$UMAIN_$$_QX(%rip)
	movl	U_$UMAIN_$$_J(%rip),%eax
	imull	$388,%eax,%eax
	movl	%eax,U_$UMAIN_$$_QY(%rip)
.Ll89:
# [146] qn:=32*(i+4*j);
	movl	U_$UMAIN_$$_J(%rip),%eax
	shll	$2,%eax
	leal	(%eax,%esi),%eax
	shll	$5,%eax
	movl	%eax,U_$UMAIN_$$_QN(%rip)
.Ll90:
# [147] controls[qn+0]:=qn+0; cx1[qn+0]:=40+qx; cx2[qn+0]:=103+qx; cy1[qn+0]:=110; cy2[qn+0]:=141; // mod0
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	movb	%al,%dl
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rcx
	movb	%dl,(%rcx,%rax,1)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	40(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX1(%rip),%rdx
	movl	%eax,(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	103(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX2(%rip),%rdx
	movl	%eax,(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CY1(%rip),%rax
	movl	$110,(%rax,%rdx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CY2(%rip),%rdx
	movl	$141,(%rdx,%rax,4)
.Ll91:
	movl	U_$UMAIN_$$_QN(%rip),%edx
.Ll92:
# [148] controls[qn+1]:=qn+1; cx1[qn+1]:=40+qx; cx2[qn+1]:=103+qx; cy1[qn+1]:=150; cy2[qn+1]:=181; // mod1
	movslq	%edx,%rax
	leal	1(%edx),%edx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rcx
	movb	%dl,1(%rcx,%rax,1)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	40(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX1(%rip),%rdx
	movl	%eax,4(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	103(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX2(%rip),%rdx
	movl	%eax,4(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CY1(%rip),%rdx
	movl	$150,4(%rdx,%rax,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CY2(%rip),%rax
	movl	$181,4(%rax,%rdx,4)
.Ll93:
	movl	U_$UMAIN_$$_QN(%rip),%edx
.Ll94:
# [149] controls[qn+2]:=qn+2; cx1[qn+2]:=40+qx; cx2[qn+2]:=103+qx; cy1[qn+2]:=190; cy2[qn+2]:=221; // mod2
	movslq	%edx,%rax
	leal	2(%edx),%edx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rcx
	movb	%dl,2(%rcx,%rax,1)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	40(%eax),%edx
	leaq	U_$SYNTHCONTROL_$$_CX1(%rip),%rax
	movl	%edx,8(%rax,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	103(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX2(%rip),%rdx
	movl	%eax,8(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CY1(%rip),%rax
	movl	$190,8(%rax,%rdx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CY2(%rip),%rax
	movl	$221,8(%rax,%rdx,4)
.Ll95:
	movl	U_$UMAIN_$$_QN(%rip),%edx
.Ll96:
# [150] controls[qn+3]:=qn+3; cx1[qn+3]:=40+qx; cx2[qn+3]:=103+qx; cy1[qn+3]:=230; cy2[qn+3]:=261; // mod3
	movslq	%edx,%rax
	leal	3(%edx),%edx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rcx
	movb	%dl,3(%rcx,%rax,1)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	40(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX1(%rip),%rdx
	movl	%eax,12(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	103(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX2(%rip),%rdx
	movl	%eax,12(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CY1(%rip),%rax
	movl	$230,12(%rax,%rdx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CY2(%rip),%rdx
	movl	$261,12(%rdx,%rax,4)
.Ll97:
	movl	U_$UMAIN_$$_QN(%rip),%edx
.Ll98:
# [151] controls[qn+4]:=qn+4; cx1[qn+4]:=40+qx; cx2[qn+4]:=103+qx; cy1[qn+4]:=270; cy2[qn+4]:=301; // mod4
	movslq	%edx,%rax
	leal	4(%edx),%edx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rcx
	movb	%dl,4(%rcx,%rax,1)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	40(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX1(%rip),%rdx
	movl	%eax,16(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	103(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX2(%rip),%rdx
	movl	%eax,16(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CY1(%rip),%rax
	movl	$270,16(%rax,%rdx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CY2(%rip),%rdx
	movl	$301,16(%rdx,%rax,4)
.Ll99:
	movl	U_$UMAIN_$$_QN(%rip),%edx
.Ll100:
# [152] controls[qn+5]:=qn+5; cx1[qn+5]:=40+qx; cx2[qn+5]:=103+qx; cy1[qn+5]:=310; cy2[qn+5]:=341; // mod5
	movslq	%edx,%rax
	leal	5(%edx),%edx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rcx
	movb	%dl,5(%rcx,%rax,1)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	40(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX1(%rip),%rdx
	movl	%eax,20(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	103(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX2(%rip),%rdx
	movl	%eax,20(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CY1(%rip),%rdx
	movl	$310,20(%rdx,%rax,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CY2(%rip),%rax
	movl	$341,20(%rax,%rdx,4)
.Ll101:
	movl	U_$UMAIN_$$_QN(%rip),%edx
.Ll102:
# [153] controls[qn+6]:=qn+6; cx1[qn+6]:=40+qx; cx2[qn+6]:=103+qx; cy1[qn+6]:=350; cy2[qn+6]:=841; // mod6
	movslq	%edx,%rax
	leal	6(%edx),%edx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rcx
	movb	%dl,6(%rcx,%rax,1)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	40(%eax),%edx
	leaq	U_$SYNTHCONTROL_$$_CX1(%rip),%rax
	movl	%edx,24(%rax,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	103(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX2(%rip),%rdx
	movl	%eax,24(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CY1(%rip),%rdx
	movl	$350,24(%rdx,%rax,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CY2(%rip),%rdx
	movl	$841,24(%rdx,%rax,4)
.Ll103:
	movl	U_$UMAIN_$$_QN(%rip),%edx
.Ll104:
# [154] controls[qn+7]:=qn+7; cx1[qn+7]:=40+qx; cx2[qn+7]:=103+qx; cy1[qn+7]:=390; cy2[qn+7]:=421; // mod7
	movslq	%edx,%rax
	leal	7(%edx),%edx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rcx
	movb	%dl,7(%rcx,%rax,1)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	40(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX1(%rip),%rdx
	movl	%eax,28(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	103(%eax),%edx
	leaq	U_$SYNTHCONTROL_$$_CX2(%rip),%rax
	movl	%edx,28(%rax,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CY1(%rip),%rax
	movl	$390,28(%rax,%rdx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CY2(%rip),%rdx
	movl	$421,28(%rdx,%rax,4)
.Ll105:
	movl	U_$UMAIN_$$_QN(%rip),%edx
.Ll106:
# [156] controls[qn+8]:=qn+8; cx1[qn+0]:=160+qx; cx2[qn+0]:=223+qx; cy1[qn+0]:=110; cy2[qn+0]:=141; // r1
	movslq	%edx,%rax
	leal	8(%edx),%edx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rcx
	movb	%dl,8(%rcx,%rax,1)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	160(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX1(%rip),%rdx
	movl	%eax,(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	223(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX2(%rip),%rdx
	movl	%eax,(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CY1(%rip),%rdx
	movl	$110,(%rdx,%rax,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CY2(%rip),%rdx
	movl	$141,(%rdx,%rax,4)
.Ll107:
	movl	U_$UMAIN_$$_QN(%rip),%edx
.Ll108:
# [157] controls[qn+9]:=qn+9; cx1[qn+1]:=160+qx; cx2[qn+1]:=223+qx; cy1[qn+1]:=150; cy2[qn+1]:=181; // r2
	movslq	%edx,%rax
	leal	9(%edx),%edx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rcx
	movb	%dl,9(%rcx,%rax,1)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	160(%eax),%edx
	leaq	U_$SYNTHCONTROL_$$_CX1(%rip),%rax
	movl	%edx,4(%rax,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	223(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX2(%rip),%rdx
	movl	%eax,4(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CY1(%rip),%rdx
	movl	$150,4(%rdx,%rax,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CY2(%rip),%rax
	movl	$181,4(%rax,%rdx,4)
.Ll109:
	movl	U_$UMAIN_$$_QN(%rip),%edx
.Ll110:
# [158] controls[qn+10]:=qn+10; cx1[qn+2]:=160+qx; cx2[qn+2]:=223+qx; cy1[qn+2]:=190; cy2[qn+2]:=221; // r3
	movslq	%edx,%rax
	leal	10(%edx),%edx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rcx
	movb	%dl,10(%rcx,%rax,1)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	160(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX1(%rip),%rdx
	movl	%eax,8(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	223(%eax),%edx
	leaq	U_$SYNTHCONTROL_$$_CX2(%rip),%rax
	movl	%edx,8(%rax,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CY1(%rip),%rdx
	movl	$190,8(%rdx,%rax,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CY2(%rip),%rax
	movl	$221,8(%rax,%rdx,4)
.Ll111:
	movl	U_$UMAIN_$$_QN(%rip),%edx
.Ll112:
# [159] controls[qn+11]:=qn+11; cx1[qn+3]:=160+qx; cx2[qn+3]:=223+qx; cy1[qn+3]:=230; cy2[qn+3]:=261; // r4
	movslq	%edx,%rax
	leal	11(%edx),%edx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rcx
	movb	%dl,11(%rcx,%rax,1)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	160(%eax),%edx
	leaq	U_$SYNTHCONTROL_$$_CX1(%rip),%rax
	movl	%edx,12(%rax,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	223(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX2(%rip),%rdx
	movl	%eax,12(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CY1(%rip),%rax
	movl	$230,12(%rax,%rdx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CY2(%rip),%rdx
	movl	$261,12(%rdx,%rax,4)
.Ll113:
	movl	U_$UMAIN_$$_QN(%rip),%edx
.Ll114:
# [160] controls[qn+12]:=qn+12; cx1[qn+4]:=270+qx; cx2[qn+4]:=333+qx; cy1[qn+4]:=110; cy2[qn+4]:=141; // l1
	movslq	%edx,%rax
	leal	12(%edx),%edx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rcx
	movb	%dl,12(%rcx,%rax,1)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	270(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX1(%rip),%rdx
	movl	%eax,16(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	333(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX2(%rip),%rdx
	movl	%eax,16(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CY1(%rip),%rdx
	movl	$110,16(%rdx,%rax,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CY2(%rip),%rax
	movl	$141,16(%rax,%rdx,4)
.Ll115:
	movl	U_$UMAIN_$$_QN(%rip),%edx
.Ll116:
# [161] controls[qn+13]:=qn+13; cx1[qn+5]:=270+qx; cx2[qn+5]:=333+qx; cy1[qn+5]:=150; cy2[qn+5]:=181; // l2
	movslq	%edx,%rax
	leal	13(%edx),%edx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rcx
	movb	%dl,13(%rcx,%rax,1)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	270(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX1(%rip),%rdx
	movl	%eax,20(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	333(%eax),%edx
	leaq	U_$SYNTHCONTROL_$$_CX2(%rip),%rax
	movl	%edx,20(%rax,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CY1(%rip),%rdx
	movl	$150,20(%rdx,%rax,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CY2(%rip),%rax
	movl	$181,20(%rax,%rdx,4)
.Ll117:
	movl	U_$UMAIN_$$_QN(%rip),%edx
.Ll118:
# [162] controls[qn+14]:=qn+14; cx1[qn+6]:=270+qx; cx2[qn+6]:=333+qx; cy1[qn+6]:=190; cy2[qn+6]:=221; // l3
	movslq	%edx,%rax
	leal	14(%edx),%edx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rcx
	movb	%dl,14(%rcx,%rax,1)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	270(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX1(%rip),%rdx
	movl	%eax,24(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	333(%eax),%edx
	leaq	U_$SYNTHCONTROL_$$_CX2(%rip),%rax
	movl	%edx,24(%rax,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CY1(%rip),%rdx
	movl	$190,24(%rdx,%rax,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CY2(%rip),%rax
	movl	$221,24(%rax,%rdx,4)
.Ll119:
	movl	U_$UMAIN_$$_QN(%rip),%edx
.Ll120:
# [163] controls[qn+15]:=qn+15; cx1[qn+7]:=270+qx; cx2[qn+7]:=333+qx; cy1[qn+7]:=230; cy2[qn+7]:=261; // l4
	movslq	%edx,%rax
	leal	15(%edx),%edx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rcx
	movb	%dl,15(%rcx,%rax,1)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	270(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX1(%rip),%rdx
	movl	%eax,28(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rcx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	333(%eax),%eax
	leaq	U_$SYNTHCONTROL_$$_CX2(%rip),%rdx
	movl	%eax,28(%rdx,%rcx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CY1(%rip),%rax
	movl	$230,28(%rax,%rdx,4)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CY2(%rip),%rax
	movl	$261,28(%rax,%rdx,4)
.Ll121:
	cmpl	$1,U_$UMAIN_$$_J(%rip)
	jl	.Lj339
.Ll122:
	cmpl	$3,%esi
	jl	.Lj336
.Ll123:
# [168] for i:=0 to 3 do
	movl	$0,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj540:
	addl	$1,%esi
.Ll124:
# [170] for j:=0 to 1 do
	movl	$0,U_$UMAIN_$$_J(%rip)
	subl	$1,U_$UMAIN_$$_J(%rip)
	.balign 8,0x90
.Lj543:
	addl	$1,U_$UMAIN_$$_J(%rip)
.Ll125:
# [172] qx:=443*i; qy:=388*j ; qc:=16*i+64*j; qn:=32*(i+4*j);
	imull	$443,%esi,%eax
	movl	%eax,U_$UMAIN_$$_QX(%rip)
	movl	U_$UMAIN_$$_J(%rip),%eax
	imull	$388,%eax,%eax
	movl	%eax,U_$UMAIN_$$_QY(%rip)
	movl	%esi,%eax
	shll	$4,%eax
	movl	U_$UMAIN_$$_J(%rip),%edx
	shll	$6,%edx
	leal	(%eax,%edx),%eax
	movl	%eax,U_$UMAIN_$$_QC(%rip)
	movl	U_$UMAIN_$$_J(%rip),%eax
	shll	$2,%eax
	leal	(%eax,%esi),%eax
	shll	$5,%eax
	movl	%eax,U_$UMAIN_$$_QN(%rip)
.Ll126:
# [173] box(12+qx,70+qy,440,384,18+qc);
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	18(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	70(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	12(%eax),%ecx
	movl	$384,%r9d
	movl	$440,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll127:
# [174] box(420+qx,400+qy,24,48,29+qc); outtextxyz(420+qx,70+330+qy,inttostr(i+4*j),19+qc,3,3);
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	29(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	400(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	420(%eax),%ecx
	movl	$48,%r9d
	movl	$24,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$3,40(%rsp)
	movl	$3,32(%rsp)
	movslq	U_$UMAIN_$$_J(%rip),%rax
	shlq	$2,%rax
	movslq	%esi,%rdx
	leaq	(%rax,%rdx),%rdx
	leaq	-8(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	19(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	400(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	420(%eax),%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll128:
# [175] box(370+qx,400+qy,16,32,29+qc); outtextxyz(370+qx,70+330+qy,'C',19+qc,2,2);
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	29(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	400(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	370(%eax),%ecx
	movl	$32,%r9d
	movl	$16,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	19(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	400(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	370(%eax),%ecx
	leaq	_$UMAIN$_Ld5(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll129:
# [176] box(390+qx,400+qy,16,32,29+qc); outtextxyz(390+qx,70+330+qy,'P',19+qc,2,2);
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	29(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	400(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	390(%eax),%ecx
	movl	$32,%r9d
	movl	$16,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	19(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	400(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	390(%eax),%ecx
	leaq	_$UMAIN$_Ld6(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll130:
# [178] outtextxyz(20+qx,70+qy,'Mods',28+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	70(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	20(%eax),%ecx
	leaq	_$UMAIN$_Ld7(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll131:
# [179] outtextxyz(20+qx,110+qy,'0',28+qc,2,2);  box(40+qx,110+qy,64,32,21+qc); outtextxyz(48+qx,110+qy,inttostr2(controls[qn+0],3),30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	110(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	20(%eax),%ecx
	leaq	_$UMAIN$_Ld1(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	110(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	40(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rdx
	movzbl	(%rdx,%rax,1),%edx
	leaq	-8(%rbp),%rcx
	movl	$3,%r8d
	call	UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	110(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	48(%eax),%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll132:
# [180] outtextxyz(20+qx,150+qy,'1',28+qc,2,2);  box(40+qx,150+qy,64,32,21+qc); outtextxyz(48+qx,150+qy,inttostr2(controls[qn+1],3),30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	150(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	20(%eax),%ecx
	leaq	_$UMAIN$_Ld8(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	150(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	40(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rdx
	movzbl	1(%rdx,%rax,1),%edx
	leaq	-8(%rbp),%rcx
	movl	$3,%r8d
	call	UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	150(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	48(%eax),%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll133:
# [181] outtextxyz(20+qx,190+qy,'2',28+qc,2,2);  box(40+qx,190+qy,64,32,21+qc); outtextxyz(48+qx,190+qy,inttostr2(controls[qn+2],3),30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	190(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	20(%eax),%ecx
	leaq	_$UMAIN$_Ld9(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	190(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	40(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rdx
	movzbl	2(%rdx,%rax,1),%edx
	leaq	-8(%rbp),%rcx
	movl	$3,%r8d
	call	UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	190(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	48(%eax),%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll134:
# [182] outtextxyz(20+qx,230+qy,'3',28+qc,2,2);  box(40+qx,230+qy,64,32,21+qc); outtextxyz(48+qx,230+qy,inttostr2(controls[qn+3],3),30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	230(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	20(%eax),%ecx
	leaq	_$UMAIN$_Ld10(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	230(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	40(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rdx
	movzbl	3(%rdx,%rax,1),%edx
	leaq	-8(%rbp),%rcx
	movl	$3,%r8d
	call	UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	230(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	48(%eax),%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll135:
# [183] outtextxyz(20+qx,270+qy,'4',28+qc,2,2);  box(40+qx,270+qy,64,32,21+qc); outtextxyz(48+qx,270+qy,inttostr2(controls[qn+4],3),30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	270(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	20(%eax),%ecx
	leaq	_$UMAIN$_Ld11(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	270(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	40(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rax
	movzbl	4(%rax,%rdx,1),%edx
	leaq	-8(%rbp),%rcx
	movl	$3,%r8d
	call	UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	270(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	48(%eax),%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll136:
# [184] outtextxyz(20+qx,310+qy,'5',28+qc,2,2);  box(40+qx,310+qy,64,32,21+qc); outtextxyz(48+qx,310+qy,inttostr2(controls[qn+5],3),30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	310(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	20(%eax),%ecx
	leaq	_$UMAIN$_Ld12(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	310(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	40(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rax
	movzbl	5(%rax,%rdx,1),%edx
	leaq	-8(%rbp),%rcx
	movl	$3,%r8d
	call	UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	310(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	48(%eax),%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll137:
# [185] outtextxyz(20+qx,350+qy,'6',28+qc,2,2);  box(40+qx,350+qy,64,32,21+qc); outtextxyz(48+qx,350+qy,inttostr2(controls[qn+6],3),30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	350(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	20(%eax),%ecx
	leaq	_$UMAIN$_Ld13(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	350(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	40(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rdx
	movzbl	6(%rdx,%rax,1),%edx
	leaq	-8(%rbp),%rcx
	movl	$3,%r8d
	call	UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	350(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	48(%eax),%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll138:
# [186] outtextxyz(20+qx,390+qy,'7',28+qc,2,2);  box(40+qx,390+qy,64,32,21+qc); outtextxyz(48+qx,390+qy,inttostr2(controls[qn+7],3),30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	390(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	20(%eax),%ecx
	leaq	_$UMAIN$_Ld14(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	390(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	40(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rax
	movzbl	7(%rax,%rdx,1),%edx
	leaq	-8(%rbp),%rcx
	movl	$3,%r8d
	call	UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	390(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	48(%eax),%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll139:
# [188] outtextxyz(120+qx,70+qy,'ADSR',28+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	70(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	120(%eax),%ecx
	leaq	_$UMAIN$_Ld15(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll140:
# [189] outtextxyz(120+qx,110+qy,'R1',28+qc,2,2);  box(160+qx,110+qy,64,32,21+qc); outtextxyz(168+qx,110+qy,inttostr2(controls[qn+8],3),30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	110(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	120(%eax),%ecx
	leaq	_$UMAIN$_Ld16(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	110(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	160(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rax
	movzbl	8(%rax,%rdx,1),%edx
	leaq	-8(%rbp),%rcx
	movl	$3,%r8d
	call	UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	110(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	168(%eax),%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll141:
# [190] outtextxyz(120+qx,150+qy,'R2',28+qc,2,2);  box(160+qx,150+qy,64,32,21+qc); outtextxyz(168+qx,150+qy,inttostr2(controls[qn+9],3),30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	150(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	120(%eax),%ecx
	leaq	_$UMAIN$_Ld17(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	150(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	160(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rdx
	movzbl	9(%rdx,%rax,1),%edx
	leaq	-8(%rbp),%rcx
	movl	$3,%r8d
	call	UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	150(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	168(%eax),%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll142:
# [191] outtextxyz(120+qx,190+qy,'R3',28+qc,2,2);  box(160+qx,190+qy,64,32,21+qc); outtextxyz(168+qx,190+qy,inttostr2(controls[qn+10],3),30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	190(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	120(%eax),%ecx
	leaq	_$UMAIN$_Ld18(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	190(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	160(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rdx
	movzbl	10(%rdx,%rax,1),%edx
	leaq	-8(%rbp),%rcx
	movl	$3,%r8d
	call	UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	190(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	168(%eax),%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll143:
# [192] outtextxyz(120+qx,230+qy,'R4',28+qc,2,2);  box(160+qx,230+qy,64,32,21+qc); outtextxyz(168+qx,230+qy,inttostr2(controls[qn+11],3),30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	230(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	120(%eax),%ecx
	leaq	_$UMAIN$_Ld19(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	230(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	160(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rdx
	movzbl	11(%rdx,%rax,1),%edx
	leaq	-8(%rbp),%rcx
	movl	$3,%r8d
	call	UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	230(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	168(%eax),%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll144:
# [193] outtextxyz(230+qx,110+qy,'L1',28+qc,2,2);  box(270+qx,110+qy,64,32,21+qc); outtextxyz(278+qx,110+qy,inttostr2(controls[qn+12],3),30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	110(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	230(%eax),%ecx
	leaq	_$UMAIN$_Ld20(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	110(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	270(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rdx
	movzbl	12(%rdx,%rax,1),%edx
	leaq	-8(%rbp),%rcx
	movl	$3,%r8d
	call	UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	110(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	278(%eax),%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll145:
# [194] outtextxyz(230+qx,150+qy,'L2',28+qc,2,2);  box(270+qx,150+qy,64,32,21+qc); outtextxyz(278+qx,150+qy,inttostr2(controls[qn+13],3),30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	150(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	230(%eax),%ecx
	leaq	_$UMAIN$_Ld21(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	150(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	270(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movslq	U_$UMAIN_$$_QN(%rip),%rdx
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rax
	movzbl	13(%rax,%rdx,1),%edx
	leaq	-8(%rbp),%rcx
	movl	$3,%r8d
	call	UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	150(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	278(%eax),%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll146:
# [195] outtextxyz(230+qx,190+qy,'L3',28+qc,2,2);  box(270+qx,190+qy,64,32,21+qc); outtextxyz(278+qx,190+qy,inttostr2(controls[qn+14],3),30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	190(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	230(%eax),%ecx
	leaq	_$UMAIN$_Ld22(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	190(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	270(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rdx
	movzbl	14(%rdx,%rax,1),%edx
	leaq	-8(%rbp),%rcx
	movl	$3,%r8d
	call	UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	190(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	278(%eax),%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll147:
# [196] outtextxyz(230+qx,230+qy,'L4',28+qc,2,2);  box(270+qx,230+qy,64,32,21+qc); outtextxyz(278+qx,230+qy,inttostr2(controls[qn+15],3),30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	230(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	230(%eax),%ecx
	leaq	_$UMAIN$_Ld23(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	230(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	270(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movslq	U_$UMAIN_$$_QN(%rip),%rax
	leaq	U_$SYNTHCONTROL_$$_CONTROLS(%rip),%rdx
	movzbl	15(%rdx,%rax,1),%edx
	leaq	-8(%rbp),%rcx
	movl	$3,%r8d
	call	UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
	movq	-8(%rbp),%r8
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	230(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	278(%eax),%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll148:
# [198] outtextxyz(120+qx,270+qy,'ADSR Bias',28+qc,2,2);  box(270+qx,270+qy,64,32,21+qc); outtextxyz(278+qx,270+qy,'127',30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	270(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	120(%eax),%ecx
	leaq	_$UMAIN$_Ld24(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	270(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	270(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	270(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	278(%eax),%ecx
	leaq	_$UMAIN$_Ld25(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll149:
# [199] outtextxyz(120+qx,310+qy,'ADSR Key',28+qc,2,2);  box(270+qx,310+qy,64,32,21+qc); outtextxyz(278+qx,310+qy,'127',30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	310(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	120(%eax),%ecx
	leaq	_$UMAIN$_Ld26(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	310(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	270(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	310(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	278(%eax),%ecx
	leaq	_$UMAIN$_Ld25(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll150:
# [200] outtextxyz(120+qx,350+qy,'Wave',28+qc,2,2);  box(200+qx,350+qy,234,32,21+qc); outtextxyz(208+qx,350+qy,'A long wave name',30+qc,1,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	350(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	120(%eax),%ecx
	leaq	_$UMAIN$_Ld27(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	350(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	200(%eax),%ecx
	movl	$32,%r9d
	movl	$234,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$1,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	350(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	208(%eax),%ecx
	leaq	_$UMAIN$_Ld28(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll151:
# [201] outtextxyz(120+qx,390+qy,'Output',28+qc,2,2);  box(270+qx,390+qy,64,32,21+qc); outtextxyz(278+qx,390+qy,'127',30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	390(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	120(%eax),%ecx
	leaq	_$UMAIN$_Ld29(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	390(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	270(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	390(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	278(%eax),%ecx
	leaq	_$UMAIN$_Ld25(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll152:
# [205] outtextxyz(350+qx,70+qy,'Vel',28+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	70(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	350(%eax),%ecx
	leaq	_$UMAIN$_Ld30(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll153:
# [206] outtextxyz(350+qx,110+qy,'A',28+qc,2,2);  box(370+qx,110+qy,64,32,21+qc); outtextxyz(378+qx,110+qy,'127',30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	110(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	350(%eax),%ecx
	leaq	_$UMAIN$_Ld31(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	110(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	370(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	110(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	378(%eax),%ecx
	leaq	_$UMAIN$_Ld25(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll154:
# [207] outtextxyz(350+qx,150+qy,'B',28+qc,2,2);  box(370+qx,150+qy,64,32,21+qc); outtextxyz(378+qx,150+qy,'127',30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	150(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	350(%eax),%ecx
	leaq	_$UMAIN$_Ld32(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	150(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	370(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	150(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	378(%eax),%ecx
	leaq	_$UMAIN$_Ld25(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll155:
# [208] outtextxyz(350+qx,190+qy,'C',28+qc,2,2);  box(370+qx,190+qy,64,32,21+qc); outtextxyz(378+qx,190+qy,'127',30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	190(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	350(%eax),%ecx
	leaq	_$UMAIN$_Ld5(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	190(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	370(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	190(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	378(%eax),%ecx
	leaq	_$UMAIN$_Ld25(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll156:
# [209] outtextxyz(350+qx,230+qy,'Key S',28+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	230(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	350(%eax),%ecx
	leaq	_$UMAIN$_Ld33(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll157:
# [210] outtextxyz(350+qx,270+qy,'K',28+qc,2,2);  box(370+qx,270+qy,64,32,21+qc); outtextxyz(378+qx,270+qy,'127',30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	270(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	350(%eax),%ecx
	leaq	_$UMAIN$_Ld34(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	270(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	370(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	270(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	378(%eax),%ecx
	leaq	_$UMAIN$_Ld25(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll158:
# [211] outtextxyz(350+qx,310+qy,'C',28+qc,2,2);  box(370+qx,310+qy,64,32,21+qc); outtextxyz(378+qx,310+qy,'127',30+qc,2,2);
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	28(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	310(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	350(%eax),%ecx
	leaq	_$UMAIN$_Ld5(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	21(%eax),%eax
	movl	%eax,32(%rsp)
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	310(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	370(%eax),%ecx
	movl	$32,%r9d
	movl	$64,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	U_$UMAIN_$$_QC(%rip),%eax
	leal	30(%eax),%r9d
	movl	U_$UMAIN_$$_QY(%rip),%eax
	leal	310(%eax),%edx
	movl	U_$UMAIN_$$_QX(%rip),%eax
	leal	378(%eax),%ecx
	leaq	_$UMAIN$_Ld25(%rip),%r8
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll159:
	cmpl	$1,U_$UMAIN_$$_J(%rip)
	jl	.Lj543
.Ll160:
	cmpl	$3,%esi
	jl	.Lj540
.Lj1626:
.Ll161:
	nop
.Lj66:
	movq	%rbp,%rcx
	call	UMAIN$_$MAIN1_$$_fin$2
.Ll162:
# [240] end;
	movq	-40(%rbp),%rbx
	movq	-32(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj65
	.rva	.Lj66
	.rva	UMAIN$_$MAIN1_$$_fin$2

.section .text.n_umain_$$_main1,"x"
.seh_endproc
.Lc17:
.Lt1:
.Ll163:

.section .text.n_umain$_$main2_$$_fin$3,"x"
	.balign 16,0x90
UMAIN$_$MAIN2_$$_fin$3:
.Lc21:
.seh_proc UMAIN$_$MAIN2_$$_fin$3
.Ll164:
# [255] begin
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
.Ll165:
	leaq	-120(%rbp),%rcx
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
.Lc22:
.Lt4:
.Ll166:

.section .text.n_umain_$$_main2,"x"
	.balign 16,0x90
.globl	UMAIN_$$_MAIN2
UMAIN_$$_MAIN2:
.Lc26:
# Temps allocated between rbp-160 and rbp-80
.seh_proc UMAIN_$$_MAIN2
.Ll167:
	pushq	%rbp
.seh_pushreg %rbp
.Lc28:
.Lc29:
	movq	%rsp,%rbp
.Lc30:
	leaq	-208(%rsp),%rsp
.seh_stackalloc 208
# Var ii located in register eax
# Var iii located in register eax
# Var il located in register eax
# Var i located in register edx
# Var mm located in register rsi
# Var hh located in register rdi
# Var ss located in register rbx
# Var f located in register eax
# Var aa located in register eax
# Var aaa located in register eax
# Var aaaa located in register eax
# Var md located in register eax
	movq	%rbx,-160(%rbp)
	movq	%rdi,-152(%rbp)
	movq	%rsi,-144(%rbp)
.seh_savereg %rbx, 48
.seh_savereg %rdi, 56
.seh_savereg %rsi, 64
.seh_endprologue
# Var buf located at rbp-32, size=OS_NO
# Var mms located at rbp-40, size=OS_64
# Var hhs located at rbp-48, size=OS_64
# Var sss located at rbp-56, size=OS_64
# Var kwas located at rbp-64, size=OS_64
# Var rect located at rbp-80, size=OS_128
.Ll168:
	movq	$0,-40(%rbp)
	movq	$0,-48(%rbp)
	movq	$0,-56(%rbp)
	movq	$0,-120(%rbp)
	movq	$0,-88(%rbp)
.Lj1637:
	nop
.Lj1633:
.Ll169:
# [258] k:=raml^[$18000];
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393216(%rax),%eax
	movl	%eax,U_$UMAIN_$$_K(%rip)
	.balign 8,0x90
.Lj1640:
.Ll170:
# [260] until raml^[$18000]>k;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393216(%rax),%eax
	cmpl	U_$UMAIN_$$_K(%rip),%eax
	jng	.Lj1640
.Ll171:
# [265] c:=c+1;
	movq	TC_$UMAIN_$$_C(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UMAIN_$$_C(%rip)
.Ll172:
# [266] if time6502>0 then c6+=1;
	cmpq	$0,U_$RETRO_$$_TIME6502(%rip)
	jng	.Lj1646
	movq	TC_$UMAIN_$$_C6(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UMAIN_$$_C6(%rip)
.Lj1646:
.Ll173:
# [267] ss:=(songtime div 1000000) mod 60;
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
.Ll174:
# [268] mm:=(songtime div 60000000) mod 60;
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
.Ll175:
# [269] hh:=(songtime div 3600000000);
	movq	U_$RETRO_$$_SONGTIME(%rip),%rcx
	movq	$-7442832613395060283,%rax
	imulq	%rcx
	addq	%rcx,%rdx
	sarq	$31,%rdx
	shrq	$63,%rcx
	addq	%rcx,%rdx
	movq	%rdx,%rdi
.Ll176:
# [270] sss:=inttostr(ss); if ss<10 then sss:='0'+sss;
	movq	%rbx,%rdx
	leaq	-56(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	cmpq	$10,%rbx
	jnl	.Lj1660
	movq	-56(%rbp),%r8
	leaq	_$UMAIN$_Ld1(%rip),%rdx
	leaq	-56(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
.Lj1660:
.Ll177:
# [271] mms:=inttostr(mm); if mm<10 then mms:='0'+mms;
	movq	%rsi,%rdx
	leaq	-40(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	cmpq	$10,%rsi
	jnl	.Lj1674
	movq	-40(%rbp),%r8
	leaq	_$UMAIN$_Ld1(%rip),%rdx
	leaq	-40(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
.Lj1674:
.Ll178:
# [272] hhs:=inttostr(hh); if hh<10 then hhs:='0'+hhs;
	movq	%rdi,%rdx
	leaq	-48(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	cmpq	$10,%rdi
	jnl	.Lj1688
	movq	-48(%rbp),%r8
	leaq	_$UMAIN$_Ld1(%rip),%rdx
	leaq	-48(%rbp),%rcx
	movl	$0,%r9d
	call	fpc_ansistr_concat
.Lj1688:
.Ll179:
# [273] songfreq:=1000000 div siddelay;
	movq	$1000000,%rax
	cqto
	idivq	TC_$RETRO_$$_SIDDELAY(%rip)
	movq	%rax,U_$RETRO_$$_SONGFREQ(%rip)
.Ll180:
# [276] avsid:=0;
	movq	$0,TC_$UMAIN_$$_AVSID(%rip)
.Ll181:
# [277] sidbuf[sidptr]:=sidtime;
	movl	TC_$UMAIN$_$MAIN2_$$_SIDPTR(%rip),%eax
	movq	U_$RETRO_$$_SIDTIME(%rip),%rcx
	leaq	U_$UMAIN_$$_SIDBUF(%rip),%rdx
	movq	%rcx,(%rdx,%rax,8)
.Ll182:
# [278] sidptr:=(sidptr+1) mod 60;
	movslq	TC_$UMAIN$_$MAIN2_$$_SIDPTR(%rip),%rax
	leaq	1(%rax),%rax
	cqto
	movq	$60,%rcx
	idivq	%rcx
	movl	%edx,TC_$UMAIN$_$MAIN2_$$_SIDPTR(%rip)
.Ll183:
# [279] for i:=0 to 59 do avsid+=sidbuf[i];
	movl	$0,%edx
	subl	$1,%edx
	.balign 8,0x90
.Lj1707:
	addl	$1,%edx
# PeepHole Optimization,var2a
	movl	%edx,%eax
	leaq	U_$UMAIN_$$_SIDBUF(%rip),%rcx
	movq	(%rcx,%rax,8),%rcx
	movq	TC_$UMAIN_$$_AVSID(%rip),%rax
	leaq	(%rcx,%rax),%rax
	movq	%rax,TC_$UMAIN_$$_AVSID(%rip)
	cmpl	$59,%edx
	jl	.Lj1707
.Ll184:
# [280] avsid:=avsid div 60;
	movq	TC_$UMAIN_$$_AVSID(%rip),%rcx
	movq	$-8608480567731124087,%rax
	imulq	%rcx
	addq	%rcx,%rdx
	sarq	$5,%rdx
	shrq	$63,%rcx
	addq	%rcx,%rdx
	movq	%rdx,TC_$UMAIN_$$_AVSID(%rip)
.Ll185:
# [281] avsct:=avsct+tim;
	movq	TC_$UMAIN_$$_AVSCT(%rip),%rdx
	movq	U_$RETRO_$$_TIM(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movq	%rax,TC_$UMAIN_$$_AVSCT(%rip)
.Ll186:
# [282] avspt:=avspt+ts;
	movq	TC_$UMAIN_$$_AVSPT(%rip),%rax
	movq	U_$RETRO_$$_TS(%rip),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,TC_$UMAIN_$$_AVSPT(%rip)
.Ll187:
# [283] avall:=avall+t3;
	movq	TC_$UMAIN_$$_AVALL(%rip),%rax
	movq	U_$RETRO_$$_T3(%rip),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,TC_$UMAIN_$$_AVALL(%rip)
.Ll188:
# [284] av6502:=av6502+time6502;
	movq	TC_$UMAIN_$$_AV6502(%rip),%rdx
	movq	U_$RETRO_$$_TIME6502(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movq	%rax,TC_$UMAIN_$$_AV6502(%rip)
.Ll189:
# [285] box2(10,1062,1782,1110,118);
	movl	$118,32(%rsp)
	movl	$1110,%r9d
	movl	$1782,%r8d
	movl	$1062,%edx
	movl	$10,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll190:
# [286] outtextxyz(32,1070,'Avg screen time: '+inttostr(round(avsct/c))+' us',76,2,2);
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	_$UMAIN$_Ld35(%rip),%rax
	movq	%rax,-112(%rbp)
	cvtsi2sdq	TC_$UMAIN_$$_AVSCT(%rip),%xmm0
	cvtsi2sdq	TC_$UMAIN_$$_C(%rip),%xmm1
	divsd	%xmm1,%xmm0
	cvtsd2siq	%xmm0,%rdx
	leaq	-120(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	movq	-120(%rbp),%rax
	movq	%rax,-104(%rbp)
	leaq	_$UMAIN$_Ld36(%rip),%rax
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
.Ll191:
# [287] outtextxyz(438,1070,'Avg sprite time: '+inttostr(round(avspt/c))+' us',186,2,2);
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	_$UMAIN$_Ld37(%rip),%rax
	movq	%rax,-112(%rbp)
	cvtsi2sdq	TC_$UMAIN_$$_AVSPT(%rip),%xmm0
	cvtsi2sdq	TC_$UMAIN_$$_C(%rip),%xmm1
	divsd	%xmm1,%xmm0
	cvtsd2siq	%xmm0,%rdx
	leaq	-120(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	movq	-120(%rbp),%rax
	movq	%rax,-104(%rbp)
	leaq	_$UMAIN$_Ld36(%rip),%rax
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
.Ll192:
# [288] outtextxyz(828,1070,'Avg FM time: '+inttostr(avsid)+' us',233,2,2);
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	_$UMAIN$_Ld38(%rip),%rax
	movq	%rax,-112(%rbp)
	movq	TC_$UMAIN_$$_AVSID(%rip),%rdx
	leaq	-120(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	movq	-120(%rbp),%rax
	movq	%rax,-104(%rbp)
	leaq	_$UMAIN$_Ld36(%rip),%rax
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
.Ll193:
# [293] box2(12,860,896,1047,178);
	movl	$178,32(%rsp)
	movl	$1047,%r9d
	movl	$896,%r8d
	movl	$860,%edx
	movl	$12,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll194:
# [294] box2(14,950,894,951,40);
	movl	$40,32(%rsp)
	movl	$951,%r9d
	movl	$894,%r8d
	movl	$950,%edx
	movl	$14,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll195:
# [295] box2(14,1014,894,1015,40);
	movl	$40,32(%rsp)
	movl	$1015,%r9d
	movl	$894,%r8d
	movl	$1014,%edx
	movl	$14,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll196:
# [296] box2(14,886,894,887,40);
	movl	$40,32(%rsp)
	movl	$887,%r9d
	movl	$894,%r8d
	movl	$886,%edx
	movl	$14,%ecx
	call	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll197:
# [297] for j:=20 to 840 do if abs(scope[j])<46000 then box(24+j,950-scope[j] div 512,2,2,190);
	movl	$20,U_$UMAIN_$$_J(%rip)
	subl	$1,U_$UMAIN_$$_J(%rip)
	.balign 8,0x90
.Lj1844:
	addl	$1,U_$UMAIN_$$_J(%rip)
	movl	U_$UMAIN_$$_J(%rip),%edx
	leaq	U_$RETRO_$$_SCOPE(%rip),%rax
	movl	(%rax,%rdx,4),%edx
	movl	%edx,%eax
	negl	%eax
	cmovnsl	%eax,%edx
	cmpl	$46000,%edx
	jnl	.Lj1846
	movl	$190,32(%rsp)
	movl	U_$UMAIN_$$_J(%rip),%eax
	leaq	U_$RETRO_$$_SCOPE(%rip),%rdx
	movslq	(%rdx,%rax,4),%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$511,%rdx
	addq	%rdx,%rax
	sarq	$9,%rax
	movq	$950,%rdx
	subq	%rax,%rdx
	movl	U_$UMAIN_$$_J(%rip),%eax
	leal	24(%eax),%ecx
	movl	$2,%r9d
	movl	$2,%r8d
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Lj1846:
	cmpl	$840,U_$UMAIN_$$_J(%rip)
	jl	.Lj1844
.Ll198:
# [300] sprx:=round(dpeek($d400)/40+74);
	movl	$54272,%ecx
	call	RETRO_$$_DPEEK$LONGINT$$WORD
# PeepHole Optimization,var11
	andl	$65535,%eax
	cvtsi2sd	%eax,%xmm0
	mulsd	_$UMAIN$_Ld39(%rip),%xmm0
	addsd	_$UMAIN$_Ld40(%rip),%xmm0
	cvtsd2siq	%xmm0,%rax
	movl	%eax,U_$UMAIN_$$_SPRX(%rip)
.Ll199:
# [301] spry:=920-3*(peek($d406) and $F0);
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
.Ll200:
# [302] raml^[$18010]:=(spry shl 16)+sprx+2048*(1-peek($70003));
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
.Ll201:
# [304] spr2x:=round(dpeek($d407)/40+74);
	movl	$54279,%ecx
	call	RETRO_$$_DPEEK$LONGINT$$WORD
# PeepHole Optimization,var11
	andl	$65535,%eax
	cvtsi2sd	%eax,%xmm0
	mulsd	_$UMAIN$_Ld39(%rip),%xmm0
	addsd	_$UMAIN$_Ld40(%rip),%xmm0
	cvtsd2siq	%xmm0,%rax
	movl	%eax,U_$UMAIN_$$_SPR2X(%rip)
.Ll202:
# [305] spr2y:=920-3*(peek($d40d) and $F0);
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
.Ll203:
# [307] raml^[$18012]:=(spr2y shl 16)+spr2x+2048*(1-peek($70004));
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
	leal	(%ebx,%edx),%edx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	%edx,393288(%rax)
.Ll204:
# [309] spr3x:=round(dpeek($d40e)/40+74);
	movl	$54286,%ecx
	call	RETRO_$$_DPEEK$LONGINT$$WORD
# PeepHole Optimization,var11
	andl	$65535,%eax
	cvtsi2sd	%eax,%xmm0
	mulsd	_$UMAIN$_Ld39(%rip),%xmm0
	addsd	_$UMAIN$_Ld40(%rip),%xmm0
	cvtsd2siq	%xmm0,%rax
	movl	%eax,U_$UMAIN_$$_SPR3X(%rip)
.Ll205:
# [310] spr3y:=920-3*(peek($d414) and $F0);
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
.Ll206:
# [312] raml^[$18014]:=(spr3y shl 16)+spr3x+2048*(1-peek($70005));
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
.Ll207:
# [314] raml^[$1801e]:=raml^[$1800B];
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393260(%rax),%eax
	movl	%eax,393336(%rdx)
.Ll208:
# [315] box(1040,860,400,120,0); outtextxyz(1040,860,sounds[waveidx].name,15,2,2);  outtextxyz(1040,940,floattostr(transpose),15,2,2);   outtextxyz(1040,900,ss1,15,2,2);
	movl	$0,32(%rsp)
	movl	$120,%r9d
	movl	$400,%r8d
	movl	$860,%edx
	movl	$1040,%ecx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movl	TC_$FMSYNTH_$$_WAVEIDX(%rip),%eax
	imulq	$2824,%rax,%rax
	leaq	U_$FMSYNTH_$$_SOUNDS(%rip),%rdx
	movq	(%rdx,%rax),%r8
	movl	$15,%r9d
	movl	$860,%edx
	movl	$1040,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movslq	TC_$FMSYNTH_$$_TRANSPOSE(%rip),%rdx
	leaq	-88(%rbp),%rcx
	call	SYSUTILS_$$_FLOATTOSTR$INT64$$ANSISTRING
	movq	-88(%rbp),%r8
	movl	$15,%r9d
	movl	$940,%edx
	movl	$1040,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movq	U_$SYNTHCONTROL_$$_SS1(%rip),%r8
	movl	$15,%r9d
	movl	$900,%edx
	movl	$1040,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll209:
# [316] box(1400,860,380,50,0);  outtextxyz(1400,860,floattostr(1/(96000*att)),15,2,2);
	movl	$0,32(%rsp)
	movl	$50,%r9d
	movl	$380,%r8d
	movl	$860,%edx
	movl	$1400,%ecx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movsd	_$UMAIN$_Ld42(%rip),%xmm0
	mulsd	TC_$FMSYNTH_$$_ATT(%rip),%xmm0
	movsd	_$UMAIN$_Ld41(%rip),%xmm1
	divsd	%xmm0,%xmm1
	leaq	-88(%rbp),%rcx
	call	SYSUTILS_$$_FLOATTOSTR$DOUBLE$$ANSISTRING
	movq	-88(%rbp),%r8
	movl	$15,%r9d
	movl	$860,%edx
	movl	$1400,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll210:
# [317] box(1400,900,300,100,0); outtextxyz(1400,900,floattostr(gain),42,2,2);
	movl	$0,32(%rsp)
	movl	$100,%r9d
	movl	$300,%r8d
	movl	$900,%edx
	movl	$1400,%ecx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	movl	$2,40(%rsp)
	movl	$2,32(%rsp)
	movsd	TC_$RETRO_$$_GAIN(%rip),%xmm1
	leaq	-88(%rbp),%rcx
	call	SYSUTILS_$$_FLOATTOSTR$DOUBLE$$ANSISTRING
	movq	-88(%rbp),%r8
	movl	$42,%r9d
	movl	$900,%edx
	movl	$1400,%ecx
	call	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj1997:
.Ll211:
	nop
.Lj1634:
	movq	%rbp,%rcx
	call	UMAIN$_$MAIN2_$$_fin$3
.Ll212:
# [319] end;
	movq	-160(%rbp),%rbx
	movq	-152(%rbp),%rdi
	movq	-144(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj1633
	.rva	.Lj1634
	.rva	UMAIN$_$MAIN2_$$_fin$3

.section .text.n_umain_$$_main2,"x"
.seh_endproc
.Lc27:
.Lt3:
.Ll213:

.section .text.n_umain_$$_init_implicit$,"x"
	.balign 16,0x90
.globl	INIT$_$UMAIN
INIT$_$UMAIN:
.globl	UMAIN_$$_init_implicit$
UMAIN_$$_init_implicit$:
.Lc31:
.seh_proc UMAIN_$$_init_implicit$
	leaq	-40(%rsp),%rsp
.Lc33:
.seh_stackalloc 40
.seh_endprologue
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc32:
.Lt7:
.Ll214:

.section .text.n_umain_$$_finalize_implicit$,"x"
	.balign 16,0x90
.globl	FINALIZE$_$UMAIN
FINALIZE$_$UMAIN:
.globl	UMAIN_$$_finalize_implicit$
UMAIN_$$_finalize_implicit$:
.Lc34:
.seh_proc UMAIN_$$_finalize_implicit$
	leaq	-40(%rsp),%rsp
.Lc36:
.seh_stackalloc 40
.seh_endprologue
	leaq	U_$UMAIN_$$_SONGNAME(%rip),%rax
	movq	%rax,%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc35:
.Lt8:
.Ll215:
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
# [11] iii, i,j,k,l,qx,qy,qc,qn,fh2,lines:integer;
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
	.globl U_$UMAIN_$$_QX
U_$UMAIN_$$_QX:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_QY
U_$UMAIN_$$_QY:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_QC
U_$UMAIN_$$_QC:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UMAIN_$$_QN
U_$UMAIN_$$_QN:
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

.section .bss
	.balign 8
# [39] sidbuf:array[0..599] of int64;
	.globl U_$UMAIN_$$_SIDBUF
U_$UMAIN_$$_SIDBUF:
	.zero 4800
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

.section .rodata.n__$UMAIN$_Ld1,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$UMAIN$_Ld1
_$UMAIN$_Ld1:
	.ascii	"0\000"

.section .rodata.n__$UMAIN$_Ld2,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,63
.globl	_$UMAIN$_Ld2
_$UMAIN$_Ld2:
	.ascii	"The retromachine FM Synth v. 0.02 --- 2018.09.15 | "
	.ascii	"Voice editor\000"

.section .rodata.n__$UMAIN$_Ld3,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,12
.globl	_$UMAIN$_Ld3
_$UMAIN$_Ld3:
	.ascii	"Screen time:\000"

.section .rodata.n__$UMAIN$_Ld4,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,12
.globl	_$UMAIN$_Ld4
_$UMAIN$_Ld4:
	.ascii	"Midi reports\000"

.section .rodata.n__$UMAIN$_Ld5,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$UMAIN$_Ld5
_$UMAIN$_Ld5:
	.ascii	"C\000"

.section .rodata.n__$UMAIN$_Ld6,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$UMAIN$_Ld6
_$UMAIN$_Ld6:
	.ascii	"P\000"

.section .rodata.n__$UMAIN$_Ld7,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,4
.globl	_$UMAIN$_Ld7
_$UMAIN$_Ld7:
	.ascii	"Mods\000"

.section .rodata.n__$UMAIN$_Ld8,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$UMAIN$_Ld8
_$UMAIN$_Ld8:
	.ascii	"1\000"

.section .rodata.n__$UMAIN$_Ld9,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$UMAIN$_Ld9
_$UMAIN$_Ld9:
	.ascii	"2\000"

.section .rodata.n__$UMAIN$_Ld10,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$UMAIN$_Ld10
_$UMAIN$_Ld10:
	.ascii	"3\000"

.section .rodata.n__$UMAIN$_Ld11,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$UMAIN$_Ld11
_$UMAIN$_Ld11:
	.ascii	"4\000"

.section .rodata.n__$UMAIN$_Ld12,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$UMAIN$_Ld12
_$UMAIN$_Ld12:
	.ascii	"5\000"

.section .rodata.n__$UMAIN$_Ld13,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$UMAIN$_Ld13
_$UMAIN$_Ld13:
	.ascii	"6\000"

.section .rodata.n__$UMAIN$_Ld14,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$UMAIN$_Ld14
_$UMAIN$_Ld14:
	.ascii	"7\000"

.section .rodata.n__$UMAIN$_Ld15,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,4
.globl	_$UMAIN$_Ld15
_$UMAIN$_Ld15:
	.ascii	"ADSR\000"

.section .rodata.n__$UMAIN$_Ld16,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,2
.globl	_$UMAIN$_Ld16
_$UMAIN$_Ld16:
	.ascii	"R1\000"

.section .rodata.n__$UMAIN$_Ld17,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,2
.globl	_$UMAIN$_Ld17
_$UMAIN$_Ld17:
	.ascii	"R2\000"

.section .rodata.n__$UMAIN$_Ld18,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,2
.globl	_$UMAIN$_Ld18
_$UMAIN$_Ld18:
	.ascii	"R3\000"

.section .rodata.n__$UMAIN$_Ld19,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,2
.globl	_$UMAIN$_Ld19
_$UMAIN$_Ld19:
	.ascii	"R4\000"

.section .rodata.n__$UMAIN$_Ld20,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,2
.globl	_$UMAIN$_Ld20
_$UMAIN$_Ld20:
	.ascii	"L1\000"

.section .rodata.n__$UMAIN$_Ld21,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,2
.globl	_$UMAIN$_Ld21
_$UMAIN$_Ld21:
	.ascii	"L2\000"

.section .rodata.n__$UMAIN$_Ld22,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,2
.globl	_$UMAIN$_Ld22
_$UMAIN$_Ld22:
	.ascii	"L3\000"

.section .rodata.n__$UMAIN$_Ld23,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,2
.globl	_$UMAIN$_Ld23
_$UMAIN$_Ld23:
	.ascii	"L4\000"

.section .rodata.n__$UMAIN$_Ld24,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,9
.globl	_$UMAIN$_Ld24
_$UMAIN$_Ld24:
	.ascii	"ADSR Bias\000"

.section .rodata.n__$UMAIN$_Ld25,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,3
.globl	_$UMAIN$_Ld25
_$UMAIN$_Ld25:
	.ascii	"127\000"

.section .rodata.n__$UMAIN$_Ld26,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,8
.globl	_$UMAIN$_Ld26
_$UMAIN$_Ld26:
	.ascii	"ADSR Key\000"

.section .rodata.n__$UMAIN$_Ld27,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,4
.globl	_$UMAIN$_Ld27
_$UMAIN$_Ld27:
	.ascii	"Wave\000"

.section .rodata.n__$UMAIN$_Ld28,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,16
.globl	_$UMAIN$_Ld28
_$UMAIN$_Ld28:
	.ascii	"A long wave name\000"

.section .rodata.n__$UMAIN$_Ld29,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,6
.globl	_$UMAIN$_Ld29
_$UMAIN$_Ld29:
	.ascii	"Output\000"

.section .rodata.n__$UMAIN$_Ld30,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,3
.globl	_$UMAIN$_Ld30
_$UMAIN$_Ld30:
	.ascii	"Vel\000"

.section .rodata.n__$UMAIN$_Ld31,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$UMAIN$_Ld31
_$UMAIN$_Ld31:
	.ascii	"A\000"

.section .rodata.n__$UMAIN$_Ld32,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$UMAIN$_Ld32
_$UMAIN$_Ld32:
	.ascii	"B\000"

.section .rodata.n__$UMAIN$_Ld33,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,5
.globl	_$UMAIN$_Ld33
_$UMAIN$_Ld33:
	.ascii	"Key S\000"

.section .rodata.n__$UMAIN$_Ld34,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$UMAIN$_Ld34
_$UMAIN$_Ld34:
	.ascii	"K\000"

.section .data.n_tc_$umain$_$main2_$$_sidptr,"d"
	.balign 4
TC_$UMAIN$_$MAIN2_$$_SIDPTR:
	.long	0

.section .rodata.n__$UMAIN$_Ld35,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,17
.globl	_$UMAIN$_Ld35
_$UMAIN$_Ld35:
	.ascii	"Avg screen time: \000"

.section .rodata.n__$UMAIN$_Ld36,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,3
.globl	_$UMAIN$_Ld36
_$UMAIN$_Ld36:
	.ascii	" us\000"

.section .rodata.n__$UMAIN$_Ld37,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,17
.globl	_$UMAIN$_Ld37
_$UMAIN$_Ld37:
	.ascii	"Avg sprite time: \000"

.section .rodata.n__$UMAIN$_Ld38,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,13
.globl	_$UMAIN$_Ld38
_$UMAIN$_Ld38:
	.ascii	"Avg FM time: \000"

.section .rodata.n__$UMAIN$_Ld39,"d"
	.balign 8
.globl	_$UMAIN$_Ld39
_$UMAIN$_Ld39:
# value: 0d+2.5000000000000001E-002
	.byte	154,153,153,153,153,153,153,63

.section .rodata.n__$UMAIN$_Ld40,"d"
	.balign 8
.globl	_$UMAIN$_Ld40
_$UMAIN$_Ld40:
# value: 0d+7.4000000000000000E+001
	.byte	0,0,0,0,0,128,82,64

.section .rodata.n__$UMAIN$_Ld41,"d"
	.balign 8
.globl	_$UMAIN$_Ld41
_$UMAIN$_Ld41:
# value: 0d+1.0000000000000000E+000
	.byte	0,0,0,0,0,0,240,63

.section .rodata.n__$UMAIN$_Ld42,"d"
	.balign 8
.globl	_$UMAIN$_Ld42
_$UMAIN$_Ld42:
# value: 0d+9.6000000000000000E+004
	.byte	0,0,0,0,0,112,247,64
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .data.n_RTTI_$UMAIN_$$_DEF180,"d"
	.balign 8
.globl	RTTI_$UMAIN_$$_DEF180
RTTI_$UMAIN_$$_DEF180:
	.byte	12
# [324] 
	.ascii	"\000"
	.quad	24,3
	.quad	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT

.section .data.n_RTTI_$UMAIN_$$_DEF182,"d"
	.balign 8
.globl	RTTI_$UMAIN_$$_DEF182
RTTI_$UMAIN_$$_DEF182:
	.byte	12
	.ascii	"\000"
	.quad	24,3
	.quad	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT

.section .data.n_RTTI_$UMAIN_$$_DEF183,"d"
	.balign 8
.globl	RTTI_$UMAIN_$$_DEF183
RTTI_$UMAIN_$$_DEF183:
	.byte	12
	.ascii	"\000"
	.quad	24,3
	.quad	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc37:
	.long	.Lc39-.Lc38
.Lc38:
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
.Lc39:
	.long	.Lc41-.Lc40
.Lc40:
	.secrel32	.Lc37
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
.Lc41:
	.long	.Lc43-.Lc42
.Lc42:
	.secrel32	.Lc37
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
.Lc43:
	.long	.Lc45-.Lc44
.Lc44:
	.secrel32	.Lc37
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
.Lc45:
	.long	.Lc47-.Lc46
.Lc46:
	.secrel32	.Lc37
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
.Lc47:
	.long	.Lc49-.Lc48
.Lc48:
	.secrel32	.Lc37
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
.Lc49:
	.long	.Lc51-.Lc50
.Lc50:
	.secrel32	.Lc37
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
.Lc51:
	.long	.Lc53-.Lc52
.Lc52:
	.secrel32	.Lc37
	.quad	.Lc31
	.quad	.Lc32-.Lc31
	.byte	4
	.long	.Lc33-.Lc31
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc53:
	.long	.Lc55-.Lc54
.Lc54:
	.secrel32	.Lc37
	.quad	.Lc34
	.quad	.Lc35-.Lc34
	.byte	4
	.long	.Lc36-.Lc34
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc55:
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
# [49] function inttostr2(a,l:integer):string;
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
# Symbol QX
	.uleb128	2
	.ascii	"QX\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_QX
	.long	.La1-.Ldebug_info0
# Symbol QY
	.uleb128	2
	.ascii	"QY\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_QY
	.long	.La1-.Ldebug_info0
# Symbol QC
	.uleb128	2
	.ascii	"QC\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_QC
	.long	.La1-.Ldebug_info0
# Symbol QN
	.uleb128	2
	.ascii	"QN\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_QN
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
# Symbol SIDBUF
	.uleb128	2
	.ascii	"SIDBUF\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UMAIN_$$_SIDBUF
	.long	.La16-.Ldebug_info0
# Symbol MAIN1
# Symbol MAIN2
# Syms - End unit UMAIN has index 11
# Syms - Begin Staticsymtable
# Symbol FMSYNTH
# Symbol SYNTHCONTROL
# Symbol UMAIN_$$_init$
# Symbol INTTOSTR2
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
# Symbol fin$2
	.byte	0
# Procdef $fin$2(<^untyped>) is nested;
	.uleb128	5
	.ascii	"fin$2\000"
	.byte	1
	.byte	65
	.quad	UMAIN$_$MAIN1_$$_fin$2
	.quad	.Lt2
# Symbol parentfp
	.uleb128	6
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La18-.Ldebug_info0
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
	.uleb128	1
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
# Symbol SIDPTR
	.uleb128	4
	.ascii	"SIDPTR\000"
	.byte	9
	.byte	3
	.quad	TC_$UMAIN$_$MAIN2_$$_SIDPTR
	.long	.La1-.Ldebug_info0
# Symbol fin$3
	.byte	0
# Procdef $fin$3(<^untyped>) is nested;
	.uleb128	5
	.ascii	"fin$3\000"
	.byte	1
	.byte	65
	.quad	UMAIN$_$MAIN2_$$_fin$3
	.quad	.Lt4
# Symbol parentfp
	.uleb128	6
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La18-.Ldebug_info0
	.byte	0
# Procdef inttostr2(<var AnsiString>;LongInt;LongInt):AnsiString;
	.uleb128	7
	.ascii	"INTTOSTR2\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La5-.Ldebug_info0
	.quad	UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
	.quad	.Lt5
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	3
	.byte	146
	.uleb128	3
	.sleb128	0
	.long	.La5-.Ldebug_info0
# Symbol A
	.uleb128	6
	.ascii	"A\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La1-.Ldebug_info0
# Symbol L
	.uleb128	6
	.ascii	"L\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La1-.Ldebug_info0
# Symbol INTTOSTR2
	.uleb128	4
	.ascii	"INTTOSTR2\000"
	.byte	3
	.byte	146
	.uleb128	3
	.sleb128	0
	.long	.La5-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	3
	.byte	146
	.uleb128	3
	.sleb128	0
	.long	.La5-.Ldebug_info0
# Symbol S
	.uleb128	4
	.ascii	"S\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La5-.Ldebug_info0
# Symbol S2
	.uleb128	4
	.ascii	"S2\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La5-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La1-.Ldebug_info0
# Symbol L2
	.uleb128	4
	.ascii	"L2\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La1-.Ldebug_info0
# Symbol fin$1
	.byte	0
# Procdef $fin$1(<^untyped>) is nested;
	.uleb128	5
	.ascii	"fin$1\000"
	.byte	1
	.byte	65
	.quad	UMAIN$_$INTTOSTR2$LONGINT$LONGINT$$ANSISTRING_$$_fin$1
	.quad	.Lt6
# Symbol parentfp
	.uleb128	6
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La18-.Ldebug_info0
	.byte	0
# Procdef $UMAIN_$$_init_implicit$; Register;
	.uleb128	3
	.ascii	"UMAIN_$$_init_implicit$\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UMAIN_$$_init_implicit$
	.quad	.Lt7
	.byte	0
# Procdef $UMAIN_$$_finalize_implicit$; Register;
	.uleb128	3
	.ascii	"UMAIN_$$_finalize_implicit$\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UMAIN_$$_finalize_implicit$
	.quad	.Lt8
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition LongInt
.La1:
	.uleb128	8
	.ascii	"LONGINT\000"
	.long	.La20-.Ldebug_info0
.La20:
	.uleb128	9
	.ascii	"LONGINT\000"
	.byte	5
	.byte	4
.La2:
	.uleb128	10
	.long	.La1-.Ldebug_info0
# Definition Int64
.La12:
	.uleb128	8
	.ascii	"INT64\000"
	.long	.La21-.Ldebug_info0
.La21:
	.uleb128	9
	.ascii	"Int64\000"
	.byte	5
	.byte	8
.La13:
	.uleb128	10
	.long	.La12-.Ldebug_info0
# Definition Boolean
.La14:
	.uleb128	8
	.ascii	"BOOLEAN\000"
	.long	.La22-.Ldebug_info0
.La22:
	.uleb128	9
	.ascii	"Boolean\000"
	.byte	2
	.byte	1
.La15:
	.uleb128	10
	.long	.La14-.Ldebug_info0
# Definition AnsiString
.La5:
	.uleb128	8
	.ascii	"ANSISTRING\000"
	.long	.La23-.Ldebug_info0
.La23:
	.uleb128	11
	.long	.La24-.Ldebug_info0
.La6:
	.uleb128	10
	.long	.La5-.Ldebug_info0
# Definition Double
.La7:
	.uleb128	8
	.ascii	"DOUBLE\000"
	.long	.La26-.Ldebug_info0
.La26:
	.uleb128	9
	.ascii	"DOUBLE\000"
	.byte	4
	.byte	8
.La8:
	.uleb128	10
	.long	.La7-.Ldebug_info0
# Definition ^untyped
.La18:
	.uleb128	8
	.ascii	"parentfp_void_pointer\000"
	.long	.La27-.Ldebug_info0
.La27:
	.uleb128	12
.La19:
	.uleb128	10
	.long	.La18-.Ldebug_info0
# Definition Char
.La24:
	.uleb128	8
	.ascii	"CHAR\000"
	.long	.La28-.Ldebug_info0
.La28:
	.uleb128	9
	.ascii	"Char\000"
	.byte	8
	.byte	1
.La25:
	.uleb128	10
	.long	.La24-.Ldebug_info0
# Defs - End unit SYSTEM has index 1
# Defs - Begin unit OBJPAS has index 6
# Defs - End unit OBJPAS has index 6
# Defs - Begin unit SDL2 has index 255
# Definition TSDL_Event
.La3:
	.uleb128	8
	.ascii	"TSDL_EVENT\000"
	.long	.La29-.Ldebug_info0
.La29:
	.uleb128	13
	.ascii	"TSDL_EVENT\000"
	.uleb128	56
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"COMMON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La32-.Ldebug_info0
	.uleb128	14
	.ascii	"WINDOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La34-.Ldebug_info0
	.uleb128	14
	.ascii	"KEY\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La36-.Ldebug_info0
	.uleb128	14
	.ascii	"EDIT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La38-.Ldebug_info0
	.uleb128	14
	.ascii	"TEXT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La40-.Ldebug_info0
	.uleb128	14
	.ascii	"MOTION\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La42-.Ldebug_info0
	.uleb128	14
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La44-.Ldebug_info0
	.uleb128	14
	.ascii	"WHEEL\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La46-.Ldebug_info0
	.uleb128	14
	.ascii	"JAXIS\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La48-.Ldebug_info0
	.uleb128	14
	.ascii	"JBALL\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La50-.Ldebug_info0
	.uleb128	14
	.ascii	"JHAT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La52-.Ldebug_info0
	.uleb128	14
	.ascii	"JBUTTON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La54-.Ldebug_info0
	.uleb128	14
	.ascii	"JDEVICE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La56-.Ldebug_info0
	.uleb128	14
	.ascii	"CAXIS\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La58-.Ldebug_info0
	.uleb128	14
	.ascii	"CBUTTON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La60-.Ldebug_info0
	.uleb128	14
	.ascii	"CDEVICE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La62-.Ldebug_info0
	.uleb128	14
	.ascii	"QUIT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La64-.Ldebug_info0
	.uleb128	14
	.ascii	"USER\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La66-.Ldebug_info0
	.uleb128	14
	.ascii	"SYSWM\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La68-.Ldebug_info0
	.uleb128	14
	.ascii	"TFINGER\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La70-.Ldebug_info0
	.uleb128	14
	.ascii	"MGESTURE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La72-.Ldebug_info0
	.uleb128	14
	.ascii	"DGESTURE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La74-.Ldebug_info0
	.uleb128	14
	.ascii	"DROP\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La76-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La78-.Ldebug_info0
	.byte	0
.La4:
	.uleb128	10
	.long	.La3-.Ldebug_info0
# Definition TSDL_CommonEvent
.La32:
	.uleb128	8
	.ascii	"TSDL_COMMONEVENT\000"
	.long	.La80-.Ldebug_info0
.La80:
	.uleb128	13
	.ascii	"TSDL_COMMONEVENT\000"
	.uleb128	8
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.byte	0
.La33:
	.uleb128	10
	.long	.La32-.Ldebug_info0
# Definition TSDL_WindowEvent
.La34:
	.uleb128	8
	.ascii	"TSDL_WINDOWEVENT\000"
	.long	.La81-.Ldebug_info0
.La81:
	.uleb128	13
	.ascii	"TSDL_WINDOWEVENT\000"
	.uleb128	24
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"EVENT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La1-.Ldebug_info0
	.byte	0
.La35:
	.uleb128	10
	.long	.La34-.Ldebug_info0
# Definition TSDL_KeyboardEvent
.La36:
	.uleb128	8
	.ascii	"TSDL_KEYBOARDEVENT\000"
	.long	.La84-.Ldebug_info0
.La84:
	.uleb128	13
	.ascii	"TSDL_KEYBOARDEVENT\000"
	.uleb128	32
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"REPEAT_\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"KEYSYM\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La85-.Ldebug_info0
	.byte	0
.La37:
	.uleb128	10
	.long	.La36-.Ldebug_info0
# Definition TSDL_TextEditingEvent
.La38:
	.uleb128	8
	.ascii	"TSDL_TEXTEDITINGEVENT\000"
	.long	.La87-.Ldebug_info0
.La87:
	.uleb128	13
	.ascii	"TSDL_TEXTEDITINGEVENT\000"
	.uleb128	52
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TEXT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La88-.Ldebug_info0
	.uleb128	14
	.ascii	"START\000"
	.byte	2
	.byte	35
	.uleb128	44
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"LENGTH\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La1-.Ldebug_info0
	.byte	0
.La39:
	.uleb128	10
	.long	.La38-.Ldebug_info0
# Definition TSDL_TextInputEvent
.La40:
	.uleb128	8
	.ascii	"TSDL_TEXTINPUTEVENT\000"
	.long	.La90-.Ldebug_info0
.La90:
	.uleb128	13
	.ascii	"TSDL_TEXTINPUTEVENT\000"
	.uleb128	44
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TEXT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La91-.Ldebug_info0
	.byte	0
.La41:
	.uleb128	10
	.long	.La40-.Ldebug_info0
# Definition TSDL_MouseMotionEvent
.La42:
	.uleb128	8
	.ascii	"TSDL_MOUSEMOTIONEVENT\000"
	.long	.La93-.Ldebug_info0
.La93:
	.uleb128	13
	.ascii	"TSDL_MOUSEMOTIONEVENT\000"
	.uleb128	36
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"XREL\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"YREL\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La1-.Ldebug_info0
	.byte	0
.La43:
	.uleb128	10
	.long	.La42-.Ldebug_info0
# Definition TSDL_MouseButtonEvent
.La44:
	.uleb128	8
	.ascii	"TSDL_MOUSEBUTTONEVENT\000"
	.long	.La94-.Ldebug_info0
.La94:
	.uleb128	13
	.ascii	"TSDL_MOUSEBUTTONEVENT\000"
	.uleb128	28
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	17
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"CLICKS\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	19
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La1-.Ldebug_info0
	.byte	0
.La45:
	.uleb128	10
	.long	.La44-.Ldebug_info0
# Definition TSDL_MouseWheelEvent
.La46:
	.uleb128	8
	.ascii	"TSDL_MOUSEWHEELEVENT\000"
	.long	.La95-.Ldebug_info0
.La95:
	.uleb128	13
	.ascii	"TSDL_MOUSEWHEELEVENT\000"
	.uleb128	24
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La1-.Ldebug_info0
	.byte	0
.La47:
	.uleb128	10
	.long	.La46-.Ldebug_info0
# Definition TSDL_JoyAxisEvent
.La48:
	.uleb128	8
	.ascii	"TSDL_JOYAXISEVENT\000"
	.long	.La96-.Ldebug_info0
.La96:
	.uleb128	13
	.ascii	"TSDL_JOYAXISEVENT\000"
	.uleb128	20
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"AXIS\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"VALUE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La97-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING4\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La99-.Ldebug_info0
	.byte	0
.La49:
	.uleb128	10
	.long	.La48-.Ldebug_info0
# Definition TSDL_JoyBallEvent
.La50:
	.uleb128	8
	.ascii	"TSDL_JOYBALLEVENT\000"
	.long	.La101-.Ldebug_info0
.La101:
	.uleb128	13
	.ascii	"TSDL_JOYBALLEVENT\000"
	.uleb128	20
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"BALL\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"XREL\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La97-.Ldebug_info0
	.uleb128	14
	.ascii	"YREL\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La97-.Ldebug_info0
	.byte	0
.La51:
	.uleb128	10
	.long	.La50-.Ldebug_info0
# Definition TSDL_JoyHatEvent
.La52:
	.uleb128	8
	.ascii	"TSDL_JOYHATEVENT\000"
	.long	.La102-.Ldebug_info0
.La102:
	.uleb128	13
	.ascii	"TSDL_JOYHATEVENT\000"
	.uleb128	16
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"HAT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"VALUE\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La82-.Ldebug_info0
	.byte	0
.La53:
	.uleb128	10
	.long	.La52-.Ldebug_info0
# Definition TSDL_JoyButtonEvent
.La54:
	.uleb128	8
	.ascii	"TSDL_JOYBUTTONEVENT\000"
	.long	.La103-.Ldebug_info0
.La103:
	.uleb128	13
	.ascii	"TSDL_JOYBUTTONEVENT\000"
	.uleb128	16
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La82-.Ldebug_info0
	.byte	0
.La55:
	.uleb128	10
	.long	.La54-.Ldebug_info0
# Definition TSDL_JoyDeviceEvent
.La56:
	.uleb128	8
	.ascii	"TSDL_JOYDEVICEEVENT\000"
	.long	.La104-.Ldebug_info0
.La104:
	.uleb128	13
	.ascii	"TSDL_JOYDEVICEEVENT\000"
	.uleb128	12
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.byte	0
.La57:
	.uleb128	10
	.long	.La56-.Ldebug_info0
# Definition TSDL_ControllerAxisEvent
.La58:
	.uleb128	8
	.ascii	"TSDL_CONTROLLERAXISEVENT\000"
	.long	.La105-.Ldebug_info0
.La105:
	.uleb128	13
	.ascii	"TSDL_CONTROLLERAXISEVENT\000"
	.uleb128	20
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"AXIS\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"VALUE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La97-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING4\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La99-.Ldebug_info0
	.byte	0
.La59:
	.uleb128	10
	.long	.La58-.Ldebug_info0
# Definition TSDL_ControllerButtonEvent
.La60:
	.uleb128	8
	.ascii	"TSDL_CONTROLLERBUTTONEVENT\000"
	.long	.La106-.Ldebug_info0
.La106:
	.uleb128	13
	.ascii	"TSDL_CONTROLLERBUTTONEVENT\000"
	.uleb128	16
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La82-.Ldebug_info0
	.byte	0
.La61:
	.uleb128	10
	.long	.La60-.Ldebug_info0
# Definition TSDL_ControllerDeviceEvent
.La62:
	.uleb128	8
	.ascii	"TSDL_CONTROLLERDEVICEEVENT\000"
	.long	.La107-.Ldebug_info0
.La107:
	.uleb128	13
	.ascii	"TSDL_CONTROLLERDEVICEEVENT\000"
	.uleb128	12
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.byte	0
.La63:
	.uleb128	10
	.long	.La62-.Ldebug_info0
# Definition TSDL_TouchFingerEvent
.La70:
	.uleb128	8
	.ascii	"TSDL_TOUCHFINGEREVENT\000"
	.long	.La108-.Ldebug_info0
.La108:
	.uleb128	13
	.ascii	"TSDL_TOUCHFINGEREVENT\000"
	.uleb128	48
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TOUCHID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La12-.Ldebug_info0
	.uleb128	14
	.ascii	"FINGERID\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La12-.Ldebug_info0
	.uleb128	14
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La109-.Ldebug_info0
	.uleb128	14
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La109-.Ldebug_info0
	.uleb128	14
	.ascii	"DX\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La109-.Ldebug_info0
	.uleb128	14
	.ascii	"DY\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La109-.Ldebug_info0
	.uleb128	14
	.ascii	"PRESSURE\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La109-.Ldebug_info0
	.byte	0
.La71:
	.uleb128	10
	.long	.La70-.Ldebug_info0
# Definition TSDL_MultiGestureEvent
.La72:
	.uleb128	8
	.ascii	"TSDL_MULTIGESTUREEVENT\000"
	.long	.La111-.Ldebug_info0
.La111:
	.uleb128	13
	.ascii	"TSDL_MULTIGESTUREEVENT\000"
	.uleb128	40
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TOUCHID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La12-.Ldebug_info0
	.uleb128	14
	.ascii	"DTHETA\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La109-.Ldebug_info0
	.uleb128	14
	.ascii	"DDIST\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La109-.Ldebug_info0
	.uleb128	14
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La109-.Ldebug_info0
	.uleb128	14
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La109-.Ldebug_info0
	.uleb128	14
	.ascii	"NUMFINGERS\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La99-.Ldebug_info0
	.uleb128	14
	.ascii	"PADDING\000"
	.byte	2
	.byte	35
	.uleb128	34
	.long	.La99-.Ldebug_info0
	.byte	0
.La73:
	.uleb128	10
	.long	.La72-.Ldebug_info0
# Definition TSDL_DollarGestureEvent
.La74:
	.uleb128	8
	.ascii	"TSDL_DOLLARGESTUREEVENT\000"
	.long	.La112-.Ldebug_info0
.La112:
	.uleb128	13
	.ascii	"TSDL_DOLLARGESTUREEVENT\000"
	.uleb128	40
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TOUCHID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La12-.Ldebug_info0
	.uleb128	14
	.ascii	"GESTUREID\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La12-.Ldebug_info0
	.uleb128	14
	.ascii	"NUMFINGERS\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"ERROR\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La109-.Ldebug_info0
	.uleb128	14
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La109-.Ldebug_info0
	.uleb128	14
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La109-.Ldebug_info0
	.byte	0
.La75:
	.uleb128	10
	.long	.La74-.Ldebug_info0
# Definition TSDL_DropEvent
.La76:
	.uleb128	8
	.ascii	"TSDL_DROPEVENT\000"
	.long	.La113-.Ldebug_info0
.La113:
	.uleb128	13
	.ascii	"TSDL_DROPEVENT\000"
	.uleb128	16
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"FILE_\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La114-.Ldebug_info0
	.byte	0
.La77:
	.uleb128	10
	.long	.La76-.Ldebug_info0
# Definition TSDL_QuitEvent
.La64:
	.uleb128	8
	.ascii	"TSDL_QUITEVENT\000"
	.long	.La116-.Ldebug_info0
.La116:
	.uleb128	13
	.ascii	"TSDL_QUITEVENT\000"
	.uleb128	8
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.byte	0
.La65:
	.uleb128	10
	.long	.La64-.Ldebug_info0
# Definition TSDL_UserEvent
.La66:
	.uleb128	8
	.ascii	"TSDL_USEREVENT\000"
	.long	.La117-.Ldebug_info0
.La117:
	.uleb128	13
	.ascii	"TSDL_USEREVENT\000"
	.uleb128	32
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"CODE\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La118-.Ldebug_info0
	.uleb128	14
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La118-.Ldebug_info0
	.byte	0
.La67:
	.uleb128	10
	.long	.La66-.Ldebug_info0
# Definition TSDL_SysWMEvent
.La68:
	.uleb128	8
	.ascii	"TSDL_SYSWMEVENT\000"
	.long	.La120-.Ldebug_info0
.La120:
	.uleb128	13
	.ascii	"TSDL_SYSWMEVENT\000"
	.uleb128	16
	.uleb128	14
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La118-.Ldebug_info0
	.byte	0
.La69:
	.uleb128	10
	.long	.La68-.Ldebug_info0
# Definition TSDL_Keysym
.La85:
	.uleb128	8
	.ascii	"TSDL_KEYSYM\000"
	.long	.La121-.Ldebug_info0
.La121:
	.uleb128	13
	.ascii	"TSDL_KEYSYM\000"
	.uleb128	16
	.uleb128	14
	.ascii	"SCANCODE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"SYM\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"MOD_\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La99-.Ldebug_info0
	.uleb128	14
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La30-.Ldebug_info0
	.byte	0
.La86:
	.uleb128	10
	.long	.La85-.Ldebug_info0
# Defs - End unit SDL2 has index 255
# Defs - Begin unit WINDOWS has index 5
# Defs - End unit WINDOWS has index 5
# Defs - Begin unit SYSCONST has index 28
# Defs - End unit SYSCONST has index 28
# Defs - Begin unit WINDIRS has index 29
# Defs - End unit WINDIRS has index 29
# Defs - Begin unit SYSUTILS has index 24
# Defs - End unit SYSUTILS has index 24
# Defs - Begin unit RTLCONSTS has index 25
# Defs - End unit RTLCONSTS has index 25
# Defs - Begin unit MATH has index 30
# Defs - End unit MATH has index 30
# Defs - Begin unit TYPES has index 26
# Defs - End unit TYPES has index 26
# Defs - Begin unit TYPINFO has index 27
# Defs - End unit TYPINFO has index 27
# Defs - Begin unit CLASSES has index 23
# Defs - End unit CLASSES has index 23
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
# Defs - Begin unit SYNTHCONTROL has index 17
# Defs - End unit SYNTHCONTROL has index 17
# Defs - Begin unit UMAIN has index 11
# Definition Array[0..599] Of Int64
.La16:
	.uleb128	15
	.uleb128	4800
	.long	.La12-.Ldebug_info0
	.uleb128	16
	.sleb128	0
	.sleb128	599
	.uleb128	8
	.long	.La97-.Ldebug_info0
	.byte	0
.La17:
	.uleb128	10
	.long	.La16-.Ldebug_info0
# Defs - End unit UMAIN has index 11
# Defs - Begin unit FMSYNTH has index 18
# Defs - End unit FMSYNTH has index 18
# Defs - Begin unit RETRO has index 12
# Definition TRetro
.La9:
	.uleb128	8
	.ascii	"TRETRO\000"
	.long	.La122-.Ldebug_info0
.La122:
	.uleb128	11
	.long	.La11-.Ldebug_info0
.La11:
	.uleb128	17
	.ascii	"TRETRO\000"
	.uleb128	88
	.uleb128	18
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La125-.Ldebug_info0
# Procdef Execute(<TRetro>);
	.uleb128	19
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La9-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TRetro>;<Pointer>;Boolean);
	.uleb128	21
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol vmt
	.uleb128	22
	.ascii	"vmt\000"
	.long	.La118-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	22
	.ascii	"CREATESUSPENDED\000"
	.long	.La14-.Ldebug_info0
	.byte	0
	.byte	0
.La10:
	.uleb128	10
	.long	.La9-.Ldebug_info0
# Defs - End unit RETRO has index 12
# Defs - Begin unit UMAIN has index 11
# Defs - End unit UMAIN has index 11
# Defs - Begin Staticsymtable
# Defs - End Staticsymtable
# Definition LongWord
.La30:
	.uleb128	8
	.ascii	"LONGWORD\000"
	.long	.La126-.Ldebug_info0
.La126:
	.uleb128	9
	.ascii	"LONGWORD\000"
	.byte	7
	.byte	4
.La31:
	.uleb128	10
	.long	.La30-.Ldebug_info0
# Definition TSDL_Event.Array[0..55] Of Byte
.La78:
	.uleb128	15
	.uleb128	56
	.long	.La82-.Ldebug_info0
	.uleb128	16
	.sleb128	0
	.sleb128	55
	.uleb128	1
	.long	.La127-.Ldebug_info0
	.byte	0
.La79:
	.uleb128	10
	.long	.La78-.Ldebug_info0
# Definition Byte
.La82:
	.uleb128	8
	.ascii	"BYTE\000"
	.long	.La129-.Ldebug_info0
.La129:
	.uleb128	9
	.ascii	"BYTE\000"
	.byte	7
	.byte	1
.La83:
	.uleb128	10
	.long	.La82-.Ldebug_info0
# Definition TSDL_TextEditingEvent.Array[0..31] Of Char
.La88:
	.uleb128	15
	.uleb128	32
	.long	.La24-.Ldebug_info0
	.uleb128	16
	.sleb128	0
	.sleb128	31
	.uleb128	1
	.long	.La127-.Ldebug_info0
	.byte	0
.La89:
	.uleb128	10
	.long	.La88-.Ldebug_info0
# Definition TSDL_TextInputEvent.Array[0..31] Of Char
.La91:
	.uleb128	15
	.uleb128	32
	.long	.La24-.Ldebug_info0
	.uleb128	16
	.sleb128	0
	.sleb128	31
	.uleb128	1
	.long	.La127-.Ldebug_info0
	.byte	0
.La92:
	.uleb128	10
	.long	.La91-.Ldebug_info0
# Definition SmallInt
.La97:
	.uleb128	8
	.ascii	"SMALLINT\000"
	.long	.La130-.Ldebug_info0
.La130:
	.uleb128	9
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.La98:
	.uleb128	10
	.long	.La97-.Ldebug_info0
# Definition Word
.La99:
	.uleb128	8
	.ascii	"WORD\000"
	.long	.La131-.Ldebug_info0
.La131:
	.uleb128	9
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La100:
	.uleb128	10
	.long	.La99-.Ldebug_info0
# Definition Single
.La109:
	.uleb128	8
	.ascii	"SINGLE\000"
	.long	.La132-.Ldebug_info0
.La132:
	.uleb128	9
	.ascii	"SINGLE\000"
	.byte	4
	.byte	4
.La110:
	.uleb128	10
	.long	.La109-.Ldebug_info0
# Definition PChar
.La114:
	.uleb128	8
	.ascii	"PCHAR\000"
	.long	.La133-.Ldebug_info0
.La133:
	.uleb128	11
	.long	.La24-.Ldebug_info0
.La115:
	.uleb128	10
	.long	.La114-.Ldebug_info0
# Definition Pointer
.La118:
	.uleb128	8
	.ascii	"POINTER\000"
	.long	.La134-.Ldebug_info0
.La134:
	.uleb128	12
.La119:
	.uleb128	10
	.long	.La118-.Ldebug_info0
# Definition TThread
.La123:
	.uleb128	8
	.ascii	"TTHREAD\000"
	.long	.La135-.Ldebug_info0
.La135:
	.uleb128	11
	.long	.La125-.Ldebug_info0
.La125:
	.uleb128	17
	.ascii	"TTHREAD\000"
	.uleb128	88
	.uleb128	18
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La138-.Ldebug_info0
	.uleb128	23
	.ascii	"FHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La139-.Ldebug_info0
	.uleb128	23
	.ascii	"FTERMINATED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	23
	.ascii	"FFREEONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	17
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	23
	.ascii	"FFINISHED\000"
	.byte	2
	.byte	35
	.uleb128	18
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	23
	.ascii	"FSUSPENDED\000"
	.byte	2
	.byte	35
	.uleb128	20
	.byte	3
	.long	.La141-.Ldebug_info0
	.uleb128	23
	.ascii	"FRETURNVALUE\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La1-.Ldebug_info0
	.uleb128	23
	.ascii	"FONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La143-.Ldebug_info0
	.uleb128	23
	.ascii	"FFATALEXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La136-.Ldebug_info0
	.uleb128	23
	.ascii	"FEXTERNALTHREAD\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	23
	.ascii	"FSYNCHRONIZEENTRY\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La145-.Ldebug_info0
	.uleb128	23
	.ascii	"FTHREADID\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	2
	.long	.La139-.Ldebug_info0
	.uleb128	23
	.ascii	"RETURNVALUE\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La1-.Ldebug_info0
	.uleb128	23
	.ascii	"TERMINATED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	23
	.ascii	"FINITIALSUSPENDED\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	23
	.ascii	"FREEONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	17
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	23
	.ascii	"HANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La139-.Ldebug_info0
	.uleb128	23
	.ascii	"EXTERNALTHREAD\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	23
	.ascii	"FINISHED\000"
	.byte	2
	.byte	35
	.uleb128	18
	.byte	3
	.long	.La14-.Ldebug_info0
	.uleb128	23
	.ascii	"THREADID\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	2
	.long	.La139-.Ldebug_info0
	.uleb128	23
	.ascii	"ONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La143-.Ldebug_info0
	.uleb128	23
	.ascii	"FATALEXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La136-.Ldebug_info0
# Procdef class GetCurrentThread:TThread; Static;
	.uleb128	24
	.ascii	"GETCURRENTTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef class GetIsSingleProcessor:Boolean; Static;
	.uleb128	24
	.ascii	"GETISSINGLEPROCESSOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La14-.Ldebug_info0
	.byte	0
# Procdef CallOnTerminate(<TThread>);
	.uleb128	25
	.ascii	"CALLONTERMINATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef GetPriority(<TThread>):<enumeration type>;
	.uleb128	24
	.ascii	"GETPRIORITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La147-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef SetPriority(<TThread>;TThreadPriority);
	.uleb128	25
	.ascii	"SETPRIORITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol VALUE
	.uleb128	22
	.ascii	"VALUE\000"
	.long	.La147-.Ldebug_info0
	.byte	0
# Procdef SetSuspended(<TThread>;Boolean);
	.uleb128	25
	.ascii	"SETSUSPENDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol VALUE
	.uleb128	22
	.ascii	"VALUE\000"
	.long	.La14-.Ldebug_info0
	.byte	0
# Procdef GetSuspended(<TThread>):Boolean;
	.uleb128	24
	.ascii	"GETSUSPENDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La14-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef InitSynchronizeEvent(<TThread>);
	.uleb128	25
	.ascii	"INITSYNCHRONIZEEVENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef DoneSynchronizeEvent(<TThread>);
	.uleb128	25
	.ascii	"DONESYNCHRONIZEEVENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef SysCreate(<TThread>;Boolean;const QWord);
	.uleb128	25
	.ascii	"SYSCREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	22
	.ascii	"CREATESUSPENDED\000"
	.long	.La14-.Ldebug_info0
# Symbol STACKSIZE
	.uleb128	22
	.ascii	"STACKSIZE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef SysDestroy(<TThread>);
	.uleb128	25
	.ascii	"SYSDESTROY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef DoTerminate(<TThread>);
	.uleb128	19
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef Execute(<TThread>);
	.uleb128	19
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef Synchronize(<TThread>;TThreadMethod);
	.uleb128	25
	.ascii	"SYNCHRONIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	22
	.ascii	"AMETHOD\000"
	.long	.La149-.Ldebug_info0
	.byte	0
# Procdef Queue(<TThread>;TThreadMethod);
	.uleb128	25
	.ascii	"QUEUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	22
	.ascii	"AMETHOD\000"
	.long	.La149-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TThread>;<Pointer>;Boolean;const QWord="4194304");
	.uleb128	21
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol vmt
	.uleb128	22
	.ascii	"vmt\000"
	.long	.La118-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	22
	.ascii	"CREATESUSPENDED\000"
	.long	.La14-.Ldebug_info0
# Symbol STACKSIZE
	.uleb128	22
	.ascii	"STACKSIZE\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TThread>;<Pointer>);
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol vmt
	.uleb128	22
	.ascii	"vmt\000"
	.long	.La118-.Ldebug_info0
	.byte	0
# Procdef class CreateAnonymousThread(TProcedure):TThread; Static;
	.uleb128	21
	.ascii	"CREATEANONYMOUSTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol APROC
	.uleb128	22
	.ascii	"APROC\000"
	.long	.La151-.Ldebug_info0
	.byte	0
# Procdef class NameThreadForDebugging(UnicodeString;QWord="18446744073709551615"); Static;
	.uleb128	27
	.ascii	"NAMETHREADFORDEBUGGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREADNAME
	.uleb128	22
	.ascii	"ATHREADNAME\000"
	.long	.La153-.Ldebug_info0
# Symbol ATHREADID
	.uleb128	22
	.ascii	"ATHREADID\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef class NameThreadForDebugging(AnsiString;QWord="18446744073709551615"); Static;
	.uleb128	27
	.ascii	"NAMETHREADFORDEBUGGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREADNAME
	.uleb128	22
	.ascii	"ATHREADNAME\000"
	.long	.La5-.Ldebug_info0
# Symbol ATHREADID
	.uleb128	22
	.ascii	"ATHREADID\000"
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef class SetReturnValue(LongInt); Static;
	.uleb128	27
	.ascii	"SETRETURNVALUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AVALUE
	.uleb128	22
	.ascii	"AVALUE\000"
	.long	.La1-.Ldebug_info0
	.byte	0
# Procdef class CheckTerminated:Boolean; Static;
	.uleb128	21
	.ascii	"CHECKTERMINATED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
	.byte	0
# Procdef class Synchronize(<Class Of TThread>;TThread;TThreadMethod);
	.uleb128	27
	.ascii	"SYNCHRONIZE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La155-.Ldebug_info0
# Symbol ATHREAD
	.uleb128	22
	.ascii	"ATHREAD\000"
	.long	.La123-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	22
	.ascii	"AMETHOD\000"
	.long	.La149-.Ldebug_info0
	.byte	0
# Procdef class Queue(TThread;TThreadMethod); Static;
	.uleb128	27
	.ascii	"QUEUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	22
	.ascii	"ATHREAD\000"
	.long	.La123-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	22
	.ascii	"AMETHOD\000"
	.long	.La149-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThread;TThreadMethod); Static;
	.uleb128	27
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	22
	.ascii	"ATHREAD\000"
	.long	.La123-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	22
	.ascii	"AMETHOD\000"
	.long	.La149-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThreadMethod); Static;
	.uleb128	27
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AMETHOD
	.uleb128	22
	.ascii	"AMETHOD\000"
	.long	.La149-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThread); Static;
	.uleb128	27
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	22
	.ascii	"ATHREAD\000"
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef class SpinWait(LongWord); Static;
	.uleb128	27
	.ascii	"SPINWAIT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AITERATIONS
	.uleb128	22
	.ascii	"AITERATIONS\000"
	.long	.La30-.Ldebug_info0
	.byte	0
# Procdef class Sleep(LongWord); Static;
	.uleb128	27
	.ascii	"SLEEP\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AMILLISECONDS
	.uleb128	22
	.ascii	"AMILLISECONDS\000"
	.long	.La30-.Ldebug_info0
	.byte	0
# Procdef class Yield; Static;
	.uleb128	27
	.ascii	"YIELD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	0
# Procdef class GetSystemTimes(out TThread.TSystemTimes); Static;
	.uleb128	27
	.ascii	"GETSYSTEMTIMES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ASYSTEMTIMES
	.uleb128	22
	.ascii	"ASYSTEMTIMES\000"
	.long	.La157-.Ldebug_info0
	.byte	0
# Procdef class GetTickCount:DWord; Static;
	.uleb128	21
	.ascii	"GETTICKCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La30-.Ldebug_info0
	.byte	0
# Procdef class GetTickCount64:QWord; Static;
	.uleb128	21
	.ascii	"GETTICKCOUNT64\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La139-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadMethod;TNotifyEvent="nil"):TThread; Static;
	.uleb128	21
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	22
	.ascii	"AMETHOD\000"
	.long	.La149-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	22
	.ascii	"AONTERMINATE\000"
	.long	.La143-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteStatusHandler;TThreadStatusNotifyEvent;TNotifyEvent="nil"):TThread; Static;
	.uleb128	21
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	22
	.ascii	"AMETHOD\000"
	.long	.La159-.Ldebug_info0
# Symbol AONSTATUS
	.uleb128	22
	.ascii	"AONSTATUS\000"
	.long	.La161-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	22
	.ascii	"AONTERMINATE\000"
	.long	.La143-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteCallBack;Pointer="nil";TNotifyCallBack="nil"):TThread; Static;
	.uleb128	21
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	22
	.ascii	"AMETHOD\000"
	.long	.La163-.Ldebug_info0
# Symbol ADATA
	.uleb128	22
	.ascii	"ADATA\000"
	.long	.La118-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	22
	.ascii	"AONTERMINATE\000"
	.long	.La165-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteStatusCallBack;TThreadStatusNotifyCallBack;Pointer="nil";TNotifyCallBack="nil"):TThread; Static;
	.uleb128	21
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La123-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	22
	.ascii	"AMETHOD\000"
	.long	.La167-.Ldebug_info0
# Symbol AONSTATUS
	.uleb128	22
	.ascii	"AONSTATUS\000"
	.long	.La169-.Ldebug_info0
# Symbol ADATA
	.uleb128	22
	.ascii	"ADATA\000"
	.long	.La118-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	22
	.ascii	"AONTERMINATE\000"
	.long	.La165-.Ldebug_info0
	.byte	0
# Procdef AfterConstruction(<TThread>);
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef Start(<TThread>);
	.uleb128	27
	.ascii	"START\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef Resume(<TThread>);
	.uleb128	27
	.ascii	"RESUME\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef Suspend(<TThread>);
	.uleb128	27
	.ascii	"SUSPEND\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef Terminate(<TThread>);
	.uleb128	27
	.ascii	"TERMINATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
# Procdef WaitFor(<TThread>):LongInt;
	.uleb128	21
	.ascii	"WAITFOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La1-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La123-.Ldebug_info0
	.byte	0
	.byte	0
.La124:
	.uleb128	10
	.long	.La123-.Ldebug_info0
# Definition ShortInt
.La127:
	.uleb128	8
	.ascii	"SHORTINT\000"
	.long	.La171-.Ldebug_info0
.La171:
	.uleb128	9
	.ascii	"SHORTINT\000"
	.byte	5
	.byte	1
.La128:
	.uleb128	10
	.long	.La127-.Ldebug_info0
# Definition TObject
.La136:
	.uleb128	8
	.ascii	"TOBJECT\000"
	.long	.La172-.Ldebug_info0
.La172:
	.uleb128	11
	.long	.La138-.Ldebug_info0
.La138:
	.uleb128	17
	.ascii	"TOBJECT\000"
	.uleb128	8
	.uleb128	28
	.byte	1
	.ascii	"_vptr$TOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La118-.Ldebug_info0
# Procdef constructor Create(<TObject>;<Pointer>);
	.uleb128	21
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La136-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
# Symbol vmt
	.uleb128	22
	.ascii	"vmt\000"
	.long	.La118-.Ldebug_info0
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
# Symbol vmt
	.uleb128	22
	.ascii	"vmt\000"
	.long	.La118-.Ldebug_info0
	.byte	0
# Procdef class newinstance(<Class Of TObject>):TObject;
	.uleb128	29
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
	.long	.La136-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La173-.Ldebug_info0
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
	.byte	0
# Procdef SafeCallException(<TObject>;TObject;Pointer):LongInt;
	.uleb128	29
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
	.long	.La175-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
# Symbol EXCEPTOBJECT
	.uleb128	22
	.ascii	"EXCEPTOBJECT\000"
	.long	.La136-.Ldebug_info0
# Symbol EXCEPTADDR
	.uleb128	22
	.ascii	"EXCEPTADDR\000"
	.long	.La118-.Ldebug_info0
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	22
	.ascii	"MESSAGE\000"
	.long	.La177-.Ldebug_info0
	.byte	0
# Procdef Free(<TObject>);
	.uleb128	27
	.ascii	"FREE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
	.byte	0
# Procdef class InitInstance(<Class Of TObject>;Pointer):TObject;
	.uleb128	21
	.ascii	"INITINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La136-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La179-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	22
	.ascii	"INSTANCE\000"
	.long	.La118-.Ldebug_info0
	.byte	0
# Procdef CleanupInstance(<TObject>);
	.uleb128	27
	.ascii	"CLEANUPINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
	.byte	0
# Procdef class ClassType(<Class Of TObject>):Class Of TObject;
	.uleb128	21
	.ascii	"CLASSTYPE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La181-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La183-.Ldebug_info0
	.byte	0
# Procdef class ClassInfo(<Class Of TObject>):^untyped;
	.uleb128	21
	.ascii	"CLASSINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La118-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La185-.Ldebug_info0
	.byte	0
# Procdef class ClassName(<Class Of TObject>;<var ShortString>):ShortString;
	.uleb128	21
	.ascii	"CLASSNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La187-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La189-.Ldebug_info0
# Symbol result
	.uleb128	30
	.ascii	"result\000"
	.long	.La187-.Ldebug_info0
	.byte	0
# Procdef class ClassNameIs(<Class Of TObject>;const ShortString):Boolean;
	.uleb128	21
	.ascii	"CLASSNAMEIS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La191-.Ldebug_info0
# Symbol NAME
	.uleb128	22
	.ascii	"NAME\000"
	.long	.La187-.Ldebug_info0
	.byte	0
# Procdef class ClassParent(<Class Of TObject>):Class Of TObject;
	.uleb128	21
	.ascii	"CLASSPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La181-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La193-.Ldebug_info0
	.byte	0
# Procdef class InstanceSize(<Class Of TObject>):Int64;
	.uleb128	21
	.ascii	"INSTANCESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La12-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La195-.Ldebug_info0
	.byte	0
# Procdef class InheritsFrom(<Class Of TObject>;TClass):Boolean;
	.uleb128	21
	.ascii	"INHERITSFROM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La197-.Ldebug_info0
# Symbol ACLASS
	.uleb128	22
	.ascii	"ACLASS\000"
	.long	.La181-.Ldebug_info0
	.byte	0
# Procdef class StringMessageTable(<Class Of TObject>):^TStringMessageTable;
	.uleb128	21
	.ascii	"STRINGMESSAGETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La199-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La201-.Ldebug_info0
	.byte	0
# Procdef class MethodAddress(<Class Of TObject>;const ShortString):^untyped;
	.uleb128	21
	.ascii	"METHODADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La118-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La203-.Ldebug_info0
# Symbol NAME
	.uleb128	22
	.ascii	"NAME\000"
	.long	.La187-.Ldebug_info0
	.byte	0
# Procdef class MethodName(<Class Of TObject>;<var ShortString>;Pointer):ShortString;
	.uleb128	21
	.ascii	"METHODNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La187-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La205-.Ldebug_info0
# Symbol result
	.uleb128	30
	.ascii	"result\000"
	.long	.La187-.Ldebug_info0
# Symbol ADDRESS
	.uleb128	22
	.ascii	"ADDRESS\000"
	.long	.La118-.Ldebug_info0
	.byte	0
# Procdef FieldAddress(<TObject>;const ShortString):^untyped;
	.uleb128	21
	.ascii	"FIELDADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La118-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
# Symbol NAME
	.uleb128	22
	.ascii	"NAME\000"
	.long	.La187-.Ldebug_info0
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	22
	.ascii	"MESSAGE\000"
	.long	.La177-.Ldebug_info0
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	22
	.ascii	"MESSAGE\000"
	.long	.La177-.Ldebug_info0
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	22
	.ascii	"MESSAGE\000"
	.long	.La177-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	21
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
# Symbol IID
	.uleb128	22
	.ascii	"IID\000"
	.long	.La207-.Ldebug_info0
# Symbol OBJ
	.uleb128	22
	.ascii	"OBJ\000"
	.long	.La177-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	21
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	22
	.ascii	"IIDSTR\000"
	.long	.La187-.Ldebug_info0
# Symbol OBJ
	.uleb128	22
	.ascii	"OBJ\000"
	.long	.La177-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceByStr(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	21
	.ascii	"GETINTERFACEBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	22
	.ascii	"IIDSTR\000"
	.long	.La187-.Ldebug_info0
# Symbol OBJ
	.uleb128	22
	.ascii	"OBJ\000"
	.long	.La177-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceWeak(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	21
	.ascii	"GETINTERFACEWEAK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
# Symbol IID
	.uleb128	22
	.ascii	"IID\000"
	.long	.La207-.Ldebug_info0
# Symbol OBJ
	.uleb128	22
	.ascii	"OBJ\000"
	.long	.La177-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntry(<Class Of TObject>;const TGuid):^tinterfaceentry;
	.uleb128	21
	.ascii	"GETINTERFACEENTRY\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La209-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La211-.Ldebug_info0
# Symbol IID
	.uleb128	22
	.ascii	"IID\000"
	.long	.La207-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntryByStr(<Class Of TObject>;const ShortString):^tinterfaceentry;
	.uleb128	21
	.ascii	"GETINTERFACEENTRYBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La209-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La213-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	22
	.ascii	"IIDSTR\000"
	.long	.La187-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceTable(<Class Of TObject>):^tinterfacetable;
	.uleb128	21
	.ascii	"GETINTERFACETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La215-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La217-.Ldebug_info0
	.byte	0
# Procdef class UnitName(<Class Of TObject>;<var AnsiString>):AnsiString;
	.uleb128	21
	.ascii	"UNITNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La5-.Ldebug_info0
# Symbol self
	.uleb128	20
	.ascii	"self\000"
	.byte	1
	.long	.La219-.Ldebug_info0
# Symbol result
	.uleb128	30
	.ascii	"result\000"
	.long	.La5-.Ldebug_info0
	.byte	0
# Procdef Equals(<TObject>;TObject):Boolean;
	.uleb128	29
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
# Symbol OBJ
	.uleb128	22
	.ascii	"OBJ\000"
	.long	.La136-.Ldebug_info0
	.byte	0
# Procdef GetHashCode(<TObject>):Int64;
	.uleb128	29
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
	.byte	0
# Procdef ToString(<TObject>;<var AnsiString>):AnsiString;
	.uleb128	29
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La136-.Ldebug_info0
# Symbol result
	.uleb128	30
	.ascii	"result\000"
	.long	.La5-.Ldebug_info0
	.byte	0
	.byte	0
.La137:
	.uleb128	10
	.long	.La136-.Ldebug_info0
# Definition QWord
.La139:
	.uleb128	8
	.ascii	"QWORD\000"
	.long	.La221-.Ldebug_info0
.La221:
	.uleb128	9
	.ascii	"QWord\000"
	.byte	7
	.byte	8
.La140:
	.uleb128	10
	.long	.La139-.Ldebug_info0
# Definition LongBool
.La141:
	.uleb128	8
	.ascii	"LONGBOOL\000"
	.long	.La222-.Ldebug_info0
.La222:
	.uleb128	9
	.ascii	"LongBool\000"
	.byte	2
	.byte	4
.La142:
	.uleb128	10
	.long	.La141-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject) of object;Register>
.La143:
	.uleb128	8
	.ascii	"TNOTIFYEVENT\000"
	.long	.La223-.Ldebug_info0
.La223:
	.uleb128	31
	.byte	16
	.uleb128	14
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La224-.Ldebug_info0
	.uleb128	14
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La136-.Ldebug_info0
	.byte	0
.La224:
	.uleb128	32
	.ascii	"TNOTIFYEVENT\000"
	.byte	1
	.uleb128	22
	.ascii	"this\000"
	.long	.La118-.Ldebug_info0
	.uleb128	22
	.ascii	"SENDER\000"
	.long	.La136-.Ldebug_info0
	.byte	0
.La144:
	.uleb128	10
	.long	.La143-.Ldebug_info0
# Definition TThread.PThreadQueueEntry
.La145:
	.uleb128	8
	.ascii	"PTHREADQUEUEENTRY\000"
	.long	.La225-.Ldebug_info0
.La225:
	.uleb128	11
	.long	.La226-.Ldebug_info0
.La146:
	.uleb128	10
	.long	.La145-.Ldebug_info0
# Definition TThreadPriority
.La147:
	.uleb128	8
	.ascii	"TTHREADPRIORITY\000"
	.long	.La228-.Ldebug_info0
.La228:
	.uleb128	33
	.ascii	"TTHREADPRIORITY\000"
	.byte	4
	.uleb128	34
	.ascii	"TPIDLE\000"
	.long	0
	.uleb128	34
	.ascii	"TPLOWEST\000"
	.long	1
	.uleb128	34
	.ascii	"TPLOWER\000"
	.long	2
	.uleb128	34
	.ascii	"TPNORMAL\000"
	.long	3
	.uleb128	34
	.ascii	"TPHIGHER\000"
	.long	4
	.uleb128	34
	.ascii	"TPHIGHEST\000"
	.long	5
	.uleb128	34
	.ascii	"TPTIMECRITICAL\000"
	.long	6
	.byte	0
.La148:
	.uleb128	10
	.long	.La147-.Ldebug_info0
# Definition <procedure variable type of procedure of object;Register>
.La149:
	.uleb128	8
	.ascii	"TTHREADMETHOD\000"
	.long	.La229-.Ldebug_info0
.La229:
	.uleb128	31
	.byte	16
	.uleb128	14
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La230-.Ldebug_info0
	.uleb128	14
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La136-.Ldebug_info0
	.byte	0
.La230:
	.uleb128	32
	.ascii	"TTHREADMETHOD\000"
	.byte	1
	.uleb128	22
	.ascii	"this\000"
	.long	.La118-.Ldebug_info0
	.byte	0
.La150:
	.uleb128	10
	.long	.La149-.Ldebug_info0
# Definition <procedure variable type of procedure;Register>
.La151:
	.uleb128	8
	.ascii	"TPROCEDURE\000"
	.long	.La231-.Ldebug_info0
.La231:
	.uleb128	32
	.ascii	"TPROCEDURE\000"
	.byte	1
	.byte	0
.La152:
	.uleb128	10
	.long	.La151-.Ldebug_info0
# Definition UnicodeString
.La153:
	.uleb128	8
	.ascii	"UNICODESTRING\000"
	.long	.La232-.Ldebug_info0
.La232:
	.uleb128	11
	.long	.La233-.Ldebug_info0
.La154:
	.uleb128	10
	.long	.La153-.Ldebug_info0
# Definition TThread.Class Of TThread
.La155:
	.uleb128	11
	.long	.La235-.Ldebug_info0
.La156:
	.uleb128	10
	.long	.La155-.Ldebug_info0
# Definition TThread.TSystemTimes
.La157:
	.uleb128	8
	.ascii	"TSYSTEMTIMES\000"
	.long	.La237-.Ldebug_info0
.La237:
	.uleb128	13
	.ascii	"TSYSTEMTIMES\000"
	.uleb128	32
	.uleb128	14
	.ascii	"IDLETIME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La139-.Ldebug_info0
	.uleb128	14
	.ascii	"USERTIME\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La139-.Ldebug_info0
	.uleb128	14
	.ascii	"KERNELTIME\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La139-.Ldebug_info0
	.uleb128	14
	.ascii	"NICETIME\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La139-.Ldebug_info0
	.byte	0
.La158:
	.uleb128	10
	.long	.La157-.Ldebug_info0
# Definition <procedure variable type of procedure(TThreadReportStatus) of object;Register>
.La159:
	.uleb128	8
	.ascii	"TTHREADEXECUTESTATUSHANDLER\000"
	.long	.La238-.Ldebug_info0
.La238:
	.uleb128	31
	.byte	16
	.uleb128	14
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La239-.Ldebug_info0
	.uleb128	14
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La136-.Ldebug_info0
	.byte	0
.La239:
	.uleb128	32
	.ascii	"TTHREADEXECUTESTATUSHANDLER\000"
	.byte	1
	.uleb128	22
	.ascii	"this\000"
	.long	.La118-.Ldebug_info0
	.uleb128	22
	.ascii	"REPORTSTATUS\000"
	.long	.La240-.Ldebug_info0
	.byte	0
.La160:
	.uleb128	10
	.long	.La159-.Ldebug_info0
# Definition <procedure variable type of procedure(TThread;const AnsiString) of object;Register>
.La161:
	.uleb128	8
	.ascii	"TTHREADSTATUSNOTIFYEVENT\000"
	.long	.La242-.Ldebug_info0
.La242:
	.uleb128	31
	.byte	16
	.uleb128	14
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La243-.Ldebug_info0
	.uleb128	14
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La136-.Ldebug_info0
	.byte	0
.La243:
	.uleb128	32
	.ascii	"TTHREADSTATUSNOTIFYEVENT\000"
	.byte	1
	.uleb128	22
	.ascii	"this\000"
	.long	.La118-.Ldebug_info0
	.uleb128	22
	.ascii	"SENDER\000"
	.long	.La123-.Ldebug_info0
	.uleb128	22
	.ascii	"STATUS\000"
	.long	.La5-.Ldebug_info0
	.byte	0
.La162:
	.uleb128	10
	.long	.La161-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer);Register>
.La163:
	.uleb128	8
	.ascii	"TTHREADEXECUTECALLBACK\000"
	.long	.La244-.Ldebug_info0
.La244:
	.uleb128	32
	.ascii	"TTHREADEXECUTECALLBACK\000"
	.byte	1
	.uleb128	22
	.ascii	"ADATA\000"
	.long	.La118-.Ldebug_info0
	.byte	0
.La164:
	.uleb128	10
	.long	.La163-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;Pointer);Register>
.La165:
	.uleb128	8
	.ascii	"TNOTIFYCALLBACK\000"
	.long	.La245-.Ldebug_info0
.La245:
	.uleb128	32
	.ascii	"TNOTIFYCALLBACK\000"
	.byte	1
	.uleb128	22
	.ascii	"SENDER\000"
	.long	.La136-.Ldebug_info0
	.uleb128	22
	.ascii	"ADATA\000"
	.long	.La118-.Ldebug_info0
	.byte	0
.La166:
	.uleb128	10
	.long	.La165-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer;TThreadReportStatus);Register>
.La167:
	.uleb128	8
	.ascii	"TTHREADEXECUTESTATUSCALLBACK\000"
	.long	.La246-.Ldebug_info0
.La246:
	.uleb128	32
	.ascii	"TTHREADEXECUTESTATUSCALLBACK\000"
	.byte	1
	.uleb128	22
	.ascii	"ADATA\000"
	.long	.La118-.Ldebug_info0
	.uleb128	22
	.ascii	"REPORTSTATUS\000"
	.long	.La240-.Ldebug_info0
	.byte	0
.La168:
	.uleb128	10
	.long	.La167-.Ldebug_info0
# Definition <procedure variable type of procedure(TThread;Pointer;const AnsiString);Register>
.La169:
	.uleb128	8
	.ascii	"TTHREADSTATUSNOTIFYCALLBACK\000"
	.long	.La247-.Ldebug_info0
.La247:
	.uleb128	32
	.ascii	"TTHREADSTATUSNOTIFYCALLBACK\000"
	.byte	1
	.uleb128	22
	.ascii	"SENDER\000"
	.long	.La123-.Ldebug_info0
	.uleb128	22
	.ascii	"ADATA\000"
	.long	.La118-.Ldebug_info0
	.uleb128	22
	.ascii	"STATUS\000"
	.long	.La5-.Ldebug_info0
	.byte	0
.La170:
	.uleb128	10
	.long	.La169-.Ldebug_info0
# Definition TObject.Class Of TObject
.La173:
	.uleb128	11
	.long	.La235-.Ldebug_info0
.La174:
	.uleb128	10
	.long	.La173-.Ldebug_info0
# Definition HRESULT
.La175:
	.uleb128	8
	.ascii	"HRESULT\000"
	.long	.La248-.Ldebug_info0
.La248:
	.uleb128	9
	.ascii	"HRESULT\000"
	.byte	5
	.byte	4
.La176:
	.uleb128	10
	.long	.La175-.Ldebug_info0
# Definition <Formal type>
.La177:
	.uleb128	8
	.ascii	"formal\000"
	.long	.La249-.Ldebug_info0
.La249:
	.uleb128	9
	.ascii	"FormalDef\000"
	.byte	7
	.byte	0
.La178:
	.uleb128	10
	.long	.La177-.Ldebug_info0
# Definition TObject.Class Of TObject
.La179:
	.uleb128	11
	.long	.La235-.Ldebug_info0
.La180:
	.uleb128	10
	.long	.La179-.Ldebug_info0
# Definition TClass
.La181:
	.uleb128	8
	.ascii	"TCLASS\000"
	.long	.La250-.Ldebug_info0
.La250:
	.uleb128	11
	.long	.La235-.Ldebug_info0
.La182:
	.uleb128	10
	.long	.La181-.Ldebug_info0
# Definition TObject.Class Of TObject
.La183:
	.uleb128	11
	.long	.La235-.Ldebug_info0
.La184:
	.uleb128	10
	.long	.La183-.Ldebug_info0
# Definition TObject.Class Of TObject
.La185:
	.uleb128	11
	.long	.La235-.Ldebug_info0
.La186:
	.uleb128	10
	.long	.La185-.Ldebug_info0
# Definition ShortString
.La187:
	.uleb128	8
	.ascii	"SHORTSTRING\000"
	.long	.La251-.Ldebug_info0
.La251:
	.uleb128	13
	.ascii	"ShortString\000"
	.uleb128	256
	.uleb128	14
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La252-.Ldebug_info0
	.byte	0
.La252:
	.uleb128	35
	.uleb128	256
	.uleb128	1
	.long	.La24-.Ldebug_info0
	.uleb128	36
	.uleb128	1
	.uleb128	255
	.long	.La82-.Ldebug_info0
	.byte	0
.La188:
	.uleb128	10
	.long	.La187-.Ldebug_info0
# Definition TObject.Class Of TObject
.La189:
	.uleb128	11
	.long	.La235-.Ldebug_info0
.La190:
	.uleb128	10
	.long	.La189-.Ldebug_info0
# Definition TObject.Class Of TObject
.La191:
	.uleb128	11
	.long	.La235-.Ldebug_info0
.La192:
	.uleb128	10
	.long	.La191-.Ldebug_info0
# Definition TObject.Class Of TObject
.La193:
	.uleb128	11
	.long	.La235-.Ldebug_info0
.La194:
	.uleb128	10
	.long	.La193-.Ldebug_info0
# Definition TObject.Class Of TObject
.La195:
	.uleb128	11
	.long	.La235-.Ldebug_info0
.La196:
	.uleb128	10
	.long	.La195-.Ldebug_info0
# Definition TObject.Class Of TObject
.La197:
	.uleb128	11
	.long	.La235-.Ldebug_info0
.La198:
	.uleb128	10
	.long	.La197-.Ldebug_info0
# Definition pstringmessagetable
.La199:
	.uleb128	8
	.ascii	"PSTRINGMESSAGETABLE\000"
	.long	.La253-.Ldebug_info0
.La253:
	.uleb128	11
	.long	.La254-.Ldebug_info0
.La200:
	.uleb128	10
	.long	.La199-.Ldebug_info0
# Definition TObject.Class Of TObject
.La201:
	.uleb128	11
	.long	.La235-.Ldebug_info0
.La202:
	.uleb128	10
	.long	.La201-.Ldebug_info0
# Definition TObject.Class Of TObject
.La203:
	.uleb128	11
	.long	.La235-.Ldebug_info0
.La204:
	.uleb128	10
	.long	.La203-.Ldebug_info0
# Definition TObject.Class Of TObject
.La205:
	.uleb128	11
	.long	.La235-.Ldebug_info0
.La206:
	.uleb128	10
	.long	.La205-.Ldebug_info0
# Definition TGuid
.La207:
	.uleb128	8
	.ascii	"TGUID\000"
	.long	.La256-.Ldebug_info0
.La256:
	.uleb128	13
	.ascii	"TGUID\000"
	.uleb128	16
	.uleb128	14
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La99-.Ldebug_info0
	.uleb128	14
	.ascii	"DATA3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La99-.Ldebug_info0
	.uleb128	14
	.ascii	"DATA4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La257-.Ldebug_info0
	.uleb128	14
	.ascii	"D1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"D2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La99-.Ldebug_info0
	.uleb128	14
	.ascii	"D3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La99-.Ldebug_info0
	.uleb128	14
	.ascii	"D4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La259-.Ldebug_info0
	.uleb128	14
	.ascii	"TIME_LOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"TIME_MID\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La99-.Ldebug_info0
	.uleb128	14
	.ascii	"TIME_HI_AND_VERSION\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La99-.Ldebug_info0
	.uleb128	14
	.ascii	"CLOCK_SEQ_HI_AND_RESERVED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"CLOCK_SEQ_LOW\000"
	.byte	2
	.byte	35
	.uleb128	9
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"NODE\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La261-.Ldebug_info0
	.byte	0
.La208:
	.uleb128	10
	.long	.La207-.Ldebug_info0
# Definition pinterfaceentry
.La209:
	.uleb128	8
	.ascii	"PINTERFACEENTRY\000"
	.long	.La263-.Ldebug_info0
.La263:
	.uleb128	11
	.long	.La264-.Ldebug_info0
.La210:
	.uleb128	10
	.long	.La209-.Ldebug_info0
# Definition TObject.Class Of TObject
.La211:
	.uleb128	11
	.long	.La235-.Ldebug_info0
.La212:
	.uleb128	10
	.long	.La211-.Ldebug_info0
# Definition TObject.Class Of TObject
.La213:
	.uleb128	11
	.long	.La235-.Ldebug_info0
.La214:
	.uleb128	10
	.long	.La213-.Ldebug_info0
# Definition pinterfacetable
.La215:
	.uleb128	8
	.ascii	"PINTERFACETABLE\000"
	.long	.La266-.Ldebug_info0
.La266:
	.uleb128	11
	.long	.La267-.Ldebug_info0
.La216:
	.uleb128	10
	.long	.La215-.Ldebug_info0
# Definition TObject.Class Of TObject
.La217:
	.uleb128	11
	.long	.La235-.Ldebug_info0
.La218:
	.uleb128	10
	.long	.La217-.Ldebug_info0
# Definition TObject.Class Of TObject
.La219:
	.uleb128	11
	.long	.La235-.Ldebug_info0
.La220:
	.uleb128	10
	.long	.La219-.Ldebug_info0
# Definition TThread.TThreadQueueEntry
.La226:
	.uleb128	8
	.ascii	"TTHREADQUEUEENTRY\000"
	.long	.La269-.Ldebug_info0
.La269:
	.uleb128	13
	.ascii	"TTHREADQUEUEENTRY\000"
	.uleb128	48
	.uleb128	14
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La149-.Ldebug_info0
	.uleb128	14
	.ascii	"THREAD\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La123-.Ldebug_info0
	.uleb128	14
	.ascii	"EXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La270-.Ldebug_info0
	.uleb128	14
	.ascii	"SYNCEVENT\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La273-.Ldebug_info0
	.uleb128	14
	.ascii	"NEXT\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La145-.Ldebug_info0
	.byte	0
.La227:
	.uleb128	10
	.long	.La226-.Ldebug_info0
# Definition WideChar
.La233:
	.uleb128	8
	.ascii	"WIDECHAR\000"
	.long	.La275-.Ldebug_info0
.La275:
	.uleb128	9
	.ascii	"WideChar\000"
	.byte	8
	.byte	2
.La234:
	.uleb128	10
	.long	.La233-.Ldebug_info0
# Definition <record type>
.La235:
	.uleb128	8
	.ascii	"__vtbl_ptr_type\000"
	.long	.La276-.Ldebug_info0
.La276:
	.uleb128	37
	.uleb128	40
	.byte	0
.La236:
	.uleb128	10
	.long	.La235-.Ldebug_info0
# Definition <procedure variable type of procedure(const AnsiString) of object;Register>
.La240:
	.uleb128	8
	.ascii	"TTHREADREPORTSTATUS\000"
	.long	.La277-.Ldebug_info0
.La277:
	.uleb128	31
	.byte	16
	.uleb128	14
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La278-.Ldebug_info0
	.uleb128	14
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La136-.Ldebug_info0
	.byte	0
.La278:
	.uleb128	32
	.ascii	"TTHREADREPORTSTATUS\000"
	.byte	1
	.uleb128	22
	.ascii	"this\000"
	.long	.La118-.Ldebug_info0
	.uleb128	22
	.ascii	"STATUS\000"
	.long	.La5-.Ldebug_info0
	.byte	0
.La241:
	.uleb128	10
	.long	.La240-.Ldebug_info0
# Definition TStringMessageTable
.La254:
	.uleb128	8
	.ascii	"TSTRINGMESSAGETABLE\000"
	.long	.La279-.Ldebug_info0
.La279:
	.uleb128	13
	.ascii	"TSTRINGMESSAGETABLE\000"
	.uleb128	24
	.uleb128	14
	.ascii	"COUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"MSGSTRTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La280-.Ldebug_info0
	.byte	0
.La255:
	.uleb128	10
	.long	.La254-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La257:
	.uleb128	15
	.uleb128	8
	.long	.La82-.Ldebug_info0
	.uleb128	16
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La127-.Ldebug_info0
	.byte	0
.La258:
	.uleb128	10
	.long	.La257-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La259:
	.uleb128	15
	.uleb128	8
	.long	.La82-.Ldebug_info0
	.uleb128	16
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La127-.Ldebug_info0
	.byte	0
.La260:
	.uleb128	10
	.long	.La259-.Ldebug_info0
# Definition TGuid.Array[0..5] Of Byte
.La261:
	.uleb128	15
	.uleb128	6
	.long	.La82-.Ldebug_info0
	.uleb128	16
	.sleb128	0
	.sleb128	5
	.uleb128	1
	.long	.La127-.Ldebug_info0
	.byte	0
.La262:
	.uleb128	10
	.long	.La261-.Ldebug_info0
# Definition tinterfaceentry
.La264:
	.uleb128	8
	.ascii	"TINTERFACEENTRY\000"
	.long	.La282-.Ldebug_info0
.La282:
	.uleb128	13
	.ascii	"TINTERFACEENTRY\000"
	.uleb128	40
	.uleb128	14
	.ascii	"IID\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La283-.Ldebug_info0
	.uleb128	14
	.ascii	"VTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La118-.Ldebug_info0
	.uleb128	14
	.ascii	"IOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La139-.Ldebug_info0
	.uleb128	14
	.ascii	"IIDSTR\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La285-.Ldebug_info0
	.uleb128	14
	.ascii	"ITYPE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La287-.Ldebug_info0
	.uleb128	14
	.ascii	"__PAD_DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La12-.Ldebug_info0
	.byte	0
.La265:
	.uleb128	10
	.long	.La264-.Ldebug_info0
# Definition tinterfacetable
.La267:
	.uleb128	8
	.ascii	"TINTERFACETABLE\000"
	.long	.La289-.Ldebug_info0
.La289:
	.uleb128	13
	.ascii	"TINTERFACETABLE\000"
	.uleb128	48
	.uleb128	14
	.ascii	"ENTRYCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La139-.Ldebug_info0
	.uleb128	14
	.ascii	"ENTRIES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La290-.Ldebug_info0
	.byte	0
.La268:
	.uleb128	10
	.long	.La267-.Ldebug_info0
# Definition Exception
.La270:
	.uleb128	8
	.ascii	"EXCEPTION\000"
	.long	.La292-.Ldebug_info0
.La292:
	.uleb128	11
	.long	.La272-.Ldebug_info0
.La272:
	.uleb128	17
	.ascii	"EXCEPTION\000"
	.uleb128	24
	.uleb128	18
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La138-.Ldebug_info0
	.uleb128	23
	.ascii	"FMESSAGE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La5-.Ldebug_info0
	.uleb128	23
	.ascii	"FHELPCONTEXT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La1-.Ldebug_info0
	.uleb128	23
	.ascii	"HELPCONTEXT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La1-.Ldebug_info0
	.uleb128	23
	.ascii	"MESSAGE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La5-.Ldebug_info0
# Procdef constructor Create(<Exception>;<Pointer>;const AnsiString);
	.uleb128	21
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La270-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La270-.Ldebug_info0
# Symbol vmt
	.uleb128	22
	.ascii	"vmt\000"
	.long	.La118-.Ldebug_info0
# Symbol MSG
	.uleb128	22
	.ascii	"MSG\000"
	.long	.La5-.Ldebug_info0
	.byte	0
# Procdef constructor CreateFmt(<Exception>;<Pointer>;const AnsiString;const Array Of Const;<const Int64>);
	.uleb128	21
	.ascii	"CREATEFMT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La270-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La270-.Ldebug_info0
# Symbol vmt
	.uleb128	22
	.ascii	"vmt\000"
	.long	.La118-.Ldebug_info0
# Symbol MSG
	.uleb128	22
	.ascii	"MSG\000"
	.long	.La5-.Ldebug_info0
# Symbol ARGS
	.uleb128	22
	.ascii	"ARGS\000"
	.long	.La293-.Ldebug_info0
# Symbol highARGS
	.uleb128	22
	.ascii	"highARGS\000"
	.long	.La12-.Ldebug_info0
# Definition Array Of Const
.La293:
	.uleb128	38
	.long	.La295-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	16
	.long	.La12-.Ldebug_info0
	.byte	0
.La294:
	.uleb128	10
	.long	.La293-.Ldebug_info0
	.byte	0
# Procdef constructor CreateRes(<Exception>;<Pointer>;PAnsiString);
	.uleb128	21
	.ascii	"CREATERES\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La270-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La270-.Ldebug_info0
# Symbol vmt
	.uleb128	22
	.ascii	"vmt\000"
	.long	.La118-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	22
	.ascii	"RESSTRING\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResFmt(<Exception>;<Pointer>;PAnsiString;const Array Of Const;<const Int64>);
	.uleb128	21
	.ascii	"CREATERESFMT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La270-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La270-.Ldebug_info0
# Symbol vmt
	.uleb128	22
	.ascii	"vmt\000"
	.long	.La118-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	22
	.ascii	"RESSTRING\000"
	.long	.La297-.Ldebug_info0
# Symbol ARGS
	.uleb128	22
	.ascii	"ARGS\000"
	.long	.La299-.Ldebug_info0
# Symbol highARGS
	.uleb128	22
	.ascii	"highARGS\000"
	.long	.La12-.Ldebug_info0
# Definition Array Of Const
.La299:
	.uleb128	38
	.long	.La295-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	16
	.long	.La12-.Ldebug_info0
	.byte	0
.La300:
	.uleb128	10
	.long	.La299-.Ldebug_info0
	.byte	0
# Procdef constructor CreateHelp(<Exception>;<Pointer>;const AnsiString;LongInt);
	.uleb128	21
	.ascii	"CREATEHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La270-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La270-.Ldebug_info0
# Symbol vmt
	.uleb128	22
	.ascii	"vmt\000"
	.long	.La118-.Ldebug_info0
# Symbol MSG
	.uleb128	22
	.ascii	"MSG\000"
	.long	.La5-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	22
	.ascii	"AHELPCONTEXT\000"
	.long	.La1-.Ldebug_info0
	.byte	0
# Procdef constructor CreateFmtHelp(<Exception>;<Pointer>;const AnsiString;const Array Of Const;<const Int64>;LongInt);
	.uleb128	21
	.ascii	"CREATEFMTHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La270-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La270-.Ldebug_info0
# Symbol vmt
	.uleb128	22
	.ascii	"vmt\000"
	.long	.La118-.Ldebug_info0
# Symbol MSG
	.uleb128	22
	.ascii	"MSG\000"
	.long	.La5-.Ldebug_info0
# Symbol ARGS
	.uleb128	22
	.ascii	"ARGS\000"
	.long	.La301-.Ldebug_info0
# Symbol highARGS
	.uleb128	22
	.ascii	"highARGS\000"
	.long	.La12-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	22
	.ascii	"AHELPCONTEXT\000"
	.long	.La1-.Ldebug_info0
# Definition Array Of Const
.La301:
	.uleb128	38
	.long	.La295-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	16
	.long	.La12-.Ldebug_info0
	.byte	0
.La302:
	.uleb128	10
	.long	.La301-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResHelp(<Exception>;<Pointer>;PAnsiString;LongInt);
	.uleb128	21
	.ascii	"CREATERESHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La270-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La270-.Ldebug_info0
# Symbol vmt
	.uleb128	22
	.ascii	"vmt\000"
	.long	.La118-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	22
	.ascii	"RESSTRING\000"
	.long	.La297-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	22
	.ascii	"AHELPCONTEXT\000"
	.long	.La1-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResFmtHelp(<Exception>;<Pointer>;PAnsiString;const Array Of Const;<const Int64>;LongInt);
	.uleb128	21
	.ascii	"CREATERESFMTHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La270-.Ldebug_info0
# Symbol this
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La270-.Ldebug_info0
# Symbol vmt
	.uleb128	22
	.ascii	"vmt\000"
	.long	.La118-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	22
	.ascii	"RESSTRING\000"
	.long	.La297-.Ldebug_info0
# Symbol ARGS
	.uleb128	22
	.ascii	"ARGS\000"
	.long	.La303-.Ldebug_info0
# Symbol highARGS
	.uleb128	22
	.ascii	"highARGS\000"
	.long	.La12-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	22
	.ascii	"AHELPCONTEXT\000"
	.long	.La1-.Ldebug_info0
# Definition Array Of Const
.La303:
	.uleb128	38
	.long	.La295-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.uleb128	16
	.long	.La12-.Ldebug_info0
	.byte	0
.La304:
	.uleb128	10
	.long	.La303-.Ldebug_info0
	.byte	0
# Procdef ToString(<Exception>;<var AnsiString>):AnsiString;
	.uleb128	29
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
	.uleb128	20
	.ascii	"this\000"
	.byte	1
	.long	.La270-.Ldebug_info0
# Symbol result
	.uleb128	30
	.ascii	"result\000"
	.long	.La5-.Ldebug_info0
	.byte	0
	.byte	0
.La271:
	.uleb128	10
	.long	.La270-.Ldebug_info0
# Definition PRTLEvent
.La273:
	.uleb128	8
	.ascii	"PRTLEVENT\000"
	.long	.La305-.Ldebug_info0
.La305:
	.uleb128	12
.La274:
	.uleb128	10
	.long	.La273-.Ldebug_info0
# Definition TStringMessageTable.Array[0..0] Of TMsgStrTable
.La280:
	.uleb128	15
	.uleb128	16
	.long	.La306-.Ldebug_info0
	.uleb128	16
	.sleb128	0
	.sleb128	0
	.uleb128	16
	.long	.La127-.Ldebug_info0
	.byte	0
.La281:
	.uleb128	10
	.long	.La280-.Ldebug_info0
# Definition PGuid
.La283:
	.uleb128	8
	.ascii	"PGUID\000"
	.long	.La308-.Ldebug_info0
.La308:
	.uleb128	11
	.long	.La207-.Ldebug_info0
.La284:
	.uleb128	10
	.long	.La283-.Ldebug_info0
# Definition PShortString
.La285:
	.uleb128	8
	.ascii	"PSHORTSTRING\000"
	.long	.La309-.Ldebug_info0
.La309:
	.uleb128	11
	.long	.La187-.Ldebug_info0
.La286:
	.uleb128	10
	.long	.La285-.Ldebug_info0
# Definition tinterfaceentrytype
.La287:
	.uleb128	8
	.ascii	"TINTERFACEENTRYTYPE\000"
	.long	.La310-.Ldebug_info0
.La310:
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
.La288:
	.uleb128	10
	.long	.La287-.Ldebug_info0
# Definition tinterfacetable.Array[0..0] Of tinterfaceentry
.La290:
	.uleb128	15
	.uleb128	40
	.long	.La264-.Ldebug_info0
	.uleb128	16
	.sleb128	0
	.sleb128	0
	.uleb128	40
	.long	.La127-.Ldebug_info0
	.byte	0
.La291:
	.uleb128	10
	.long	.La290-.Ldebug_info0
# Definition TVarRec
.La295:
	.uleb128	8
	.ascii	"TVARREC\000"
	.long	.La311-.Ldebug_info0
.La311:
	.uleb128	13
	.ascii	"TVARREC\000"
	.uleb128	16
	.uleb128	14
	.ascii	"VTYPE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La12-.Ldebug_info0
	.uleb128	14
	.ascii	"VINTEGER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"VBOOLEAN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La14-.Ldebug_info0
	.uleb128	14
	.ascii	"VCHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La24-.Ldebug_info0
	.uleb128	14
	.ascii	"VWIDECHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La233-.Ldebug_info0
	.uleb128	14
	.ascii	"VEXTENDED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La312-.Ldebug_info0
	.uleb128	14
	.ascii	"VSTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La285-.Ldebug_info0
	.uleb128	14
	.ascii	"VPOINTER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La118-.Ldebug_info0
	.uleb128	14
	.ascii	"VPCHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La114-.Ldebug_info0
	.uleb128	14
	.ascii	"VOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La136-.Ldebug_info0
	.uleb128	14
	.ascii	"VCLASS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La181-.Ldebug_info0
	.uleb128	14
	.ascii	"VPWIDECHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La314-.Ldebug_info0
	.uleb128	14
	.ascii	"VANSISTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La118-.Ldebug_info0
	.uleb128	14
	.ascii	"VCURRENCY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La316-.Ldebug_info0
	.uleb128	14
	.ascii	"VVARIANT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La318-.Ldebug_info0
	.uleb128	14
	.ascii	"VINTERFACE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La118-.Ldebug_info0
	.uleb128	14
	.ascii	"VWIDESTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La118-.Ldebug_info0
	.uleb128	14
	.ascii	"VINT64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La320-.Ldebug_info0
	.uleb128	14
	.ascii	"VUNICODESTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La118-.Ldebug_info0
	.uleb128	14
	.ascii	"VQWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La322-.Ldebug_info0
	.byte	0
.La296:
	.uleb128	10
	.long	.La295-.Ldebug_info0
# Definition PAnsiString
.La297:
	.uleb128	8
	.ascii	"PANSISTRING\000"
	.long	.La324-.Ldebug_info0
.La324:
	.uleb128	11
	.long	.La5-.Ldebug_info0
.La298:
	.uleb128	10
	.long	.La297-.Ldebug_info0
# Definition TMsgStrTable
.La306:
	.uleb128	8
	.ascii	"TMSGSTRTABLE\000"
	.long	.La325-.Ldebug_info0
.La325:
	.uleb128	13
	.ascii	"TMSGSTRTABLE\000"
	.uleb128	16
	.uleb128	14
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La285-.Ldebug_info0
	.uleb128	14
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La118-.Ldebug_info0
	.byte	0
.La307:
	.uleb128	10
	.long	.La306-.Ldebug_info0
# Definition PExtended
.La312:
	.uleb128	8
	.ascii	"PEXTENDED\000"
	.long	.La326-.Ldebug_info0
.La326:
	.uleb128	11
	.long	.La7-.Ldebug_info0
.La313:
	.uleb128	10
	.long	.La312-.Ldebug_info0
# Definition PWideChar
.La314:
	.uleb128	8
	.ascii	"PWIDECHAR\000"
	.long	.La327-.Ldebug_info0
.La327:
	.uleb128	11
	.long	.La233-.Ldebug_info0
.La315:
	.uleb128	10
	.long	.La314-.Ldebug_info0
# Definition PCurrency
.La316:
	.uleb128	8
	.ascii	"PCURRENCY\000"
	.long	.La328-.Ldebug_info0
.La328:
	.uleb128	11
	.long	.La329-.Ldebug_info0
.La317:
	.uleb128	10
	.long	.La316-.Ldebug_info0
# Definition PVariant
.La318:
	.uleb128	8
	.ascii	"PVARIANT\000"
	.long	.La331-.Ldebug_info0
.La331:
	.uleb128	11
	.long	.La332-.Ldebug_info0
.La319:
	.uleb128	10
	.long	.La318-.Ldebug_info0
# Definition PInt64
.La320:
	.uleb128	8
	.ascii	"PINT64\000"
	.long	.La334-.Ldebug_info0
.La334:
	.uleb128	11
	.long	.La12-.Ldebug_info0
.La321:
	.uleb128	10
	.long	.La320-.Ldebug_info0
# Definition PQWord
.La322:
	.uleb128	8
	.ascii	"PQWORD\000"
	.long	.La335-.Ldebug_info0
.La335:
	.uleb128	11
	.long	.La139-.Ldebug_info0
.La323:
	.uleb128	10
	.long	.La322-.Ldebug_info0
# Definition Currency
.La329:
	.uleb128	8
	.ascii	"CURRENCY\000"
	.long	.La336-.Ldebug_info0
.La336:
	.uleb128	9
	.ascii	"Currency\000"
	.byte	5
	.byte	8
.La330:
	.uleb128	10
	.long	.La329-.Ldebug_info0
# Definition Variant
.La332:
	.uleb128	8
	.ascii	"VARIANT\000"
	.long	.La337-.Ldebug_info0
.La337:
	.uleb128	13
	.ascii	"Variant\000"
	.uleb128	24
	.uleb128	14
	.ascii	"VTYPE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La99-.Ldebug_info0
	.uleb128	14
	.ascii	"RES1\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La99-.Ldebug_info0
	.uleb128	14
	.ascii	"RES2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La99-.Ldebug_info0
	.uleb128	14
	.ascii	"RES3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La99-.Ldebug_info0
	.uleb128	14
	.ascii	"VSMALLINT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La97-.Ldebug_info0
	.uleb128	14
	.ascii	"VINTEGER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"VSINGLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La109-.Ldebug_info0
	.uleb128	14
	.ascii	"VDOUBLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La7-.Ldebug_info0
	.uleb128	14
	.ascii	"VDATE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La338-.Ldebug_info0
	.uleb128	14
	.ascii	"VCURRENCY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La329-.Ldebug_info0
	.uleb128	14
	.ascii	"VOLESTR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La314-.Ldebug_info0
	.uleb128	14
	.ascii	"VDISPATCH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La118-.Ldebug_info0
	.uleb128	14
	.ascii	"VERROR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La175-.Ldebug_info0
	.uleb128	14
	.ascii	"VBOOLEAN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La340-.Ldebug_info0
	.uleb128	14
	.ascii	"VUNKNOWN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La118-.Ldebug_info0
	.uleb128	14
	.ascii	"VSHORTINT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La127-.Ldebug_info0
	.uleb128	14
	.ascii	"VBYTE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La82-.Ldebug_info0
	.uleb128	14
	.ascii	"VWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La99-.Ldebug_info0
	.uleb128	14
	.ascii	"VLONGWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La30-.Ldebug_info0
	.uleb128	14
	.ascii	"VINT64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La12-.Ldebug_info0
	.uleb128	14
	.ascii	"VQWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La139-.Ldebug_info0
	.uleb128	14
	.ascii	"VWORD64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La139-.Ldebug_info0
	.uleb128	14
	.ascii	"VSTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La118-.Ldebug_info0
	.uleb128	14
	.ascii	"VANY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La118-.Ldebug_info0
	.uleb128	14
	.ascii	"VARRAY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La342-.Ldebug_info0
	.uleb128	14
	.ascii	"VPOINTER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La118-.Ldebug_info0
	.uleb128	14
	.ascii	"VRECORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La118-.Ldebug_info0
	.uleb128	14
	.ascii	"PRECINFO\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La118-.Ldebug_info0
	.uleb128	14
	.ascii	"VLONGS\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La344-.Ldebug_info0
	.uleb128	14
	.ascii	"VWORDS\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La346-.Ldebug_info0
	.uleb128	14
	.ascii	"VBYTES\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La348-.Ldebug_info0
	.byte	0
.La333:
	.uleb128	10
	.long	.La332-.Ldebug_info0
# Definition TDateTime
.La338:
	.uleb128	8
	.ascii	"TDATETIME\000"
	.long	.La350-.Ldebug_info0
.La350:
	.uleb128	9
	.ascii	"TDATETIME\000"
	.byte	4
	.byte	8
.La339:
	.uleb128	10
	.long	.La338-.Ldebug_info0
# Definition WordBool
.La340:
	.uleb128	8
	.ascii	"WORDBOOL\000"
	.long	.La351-.Ldebug_info0
.La351:
	.uleb128	9
	.ascii	"WordBool\000"
	.byte	2
	.byte	2
.La341:
	.uleb128	10
	.long	.La340-.Ldebug_info0
# Definition pvararray
.La342:
	.uleb128	8
	.ascii	"PVARARRAY\000"
	.long	.La352-.Ldebug_info0
.La352:
	.uleb128	11
	.long	.La353-.Ldebug_info0
.La343:
	.uleb128	10
	.long	.La342-.Ldebug_info0
# Definition tvardata.Array[0..2] Of LongInt
.La344:
	.uleb128	15
	.uleb128	12
	.long	.La1-.Ldebug_info0
	.uleb128	16
	.sleb128	0
	.sleb128	2
	.uleb128	4
	.long	.La127-.Ldebug_info0
	.byte	0
.La345:
	.uleb128	10
	.long	.La344-.Ldebug_info0
# Definition tvardata.Array[0..6] Of Word
.La346:
	.uleb128	15
	.uleb128	14
	.long	.La99-.Ldebug_info0
	.uleb128	16
	.sleb128	0
	.sleb128	6
	.uleb128	2
	.long	.La127-.Ldebug_info0
	.byte	0
.La347:
	.uleb128	10
	.long	.La346-.Ldebug_info0
# Definition tvardata.Array[0..13] Of Byte
.La348:
	.uleb128	15
	.uleb128	14
	.long	.La82-.Ldebug_info0
	.uleb128	16
	.sleb128	0
	.sleb128	13
	.uleb128	1
	.long	.La127-.Ldebug_info0
	.byte	0
.La349:
	.uleb128	10
	.long	.La348-.Ldebug_info0
# Definition tvararray
.La353:
	.uleb128	8
	.ascii	"TVARARRAY\000"
	.long	.La355-.Ldebug_info0
.La355:
	.uleb128	13
	.ascii	"TVARARRAY\000"
	.uleb128	32
	.uleb128	14
	.ascii	"DIMCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La99-.Ldebug_info0
	.uleb128	14
	.ascii	"FLAGS\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La99-.Ldebug_info0
	.uleb128	14
	.ascii	"ELEMENTSIZE\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"LOCKCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"DATA\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La118-.Ldebug_info0
	.uleb128	14
	.ascii	"BOUNDS\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La356-.Ldebug_info0
	.byte	0
.La354:
	.uleb128	10
	.long	.La353-.Ldebug_info0
# Definition tvararrayboundarray
.La356:
	.uleb128	8
	.ascii	"TVARARRAYBOUNDARRAY\000"
	.long	.La358-.Ldebug_info0
.La358:
	.uleb128	40
	.ascii	"TVARARRAYBOUNDARRAY\000"
	.uleb128	8
	.long	.La359-.Ldebug_info0
	.uleb128	16
	.sleb128	0
	.sleb128	0
	.uleb128	8
	.long	.La127-.Ldebug_info0
	.byte	0
.La357:
	.uleb128	10
	.long	.La356-.Ldebug_info0
# Definition tvararraybound
.La359:
	.uleb128	8
	.ascii	"TVARARRAYBOUND\000"
	.long	.La361-.Ldebug_info0
.La361:
	.uleb128	13
	.ascii	"TVARARRAYBOUND\000"
	.uleb128	8
	.uleb128	14
	.ascii	"ELEMENTCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1-.Ldebug_info0
	.uleb128	14
	.ascii	"LOWBOUND\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La1-.Ldebug_info0
	.byte	0
.La360:
	.uleb128	10
	.long	.La359-.Ldebug_info0
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
	.uleb128	15
	.byte	0
	.byte	0
	.byte	0
# Abbrev 13
	.uleb128	13
	.uleb128	19
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 14
	.uleb128	14
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
# Abbrev 15
	.uleb128	15
	.uleb128	1
	.byte	1
	.uleb128	11
	.uleb128	15
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 16
	.uleb128	16
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
# Abbrev 17
	.uleb128	17
	.uleb128	2
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 18
	.uleb128	18
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
	.uleb128	76
	.uleb128	11
	.uleb128	77
	.uleb128	10
	.uleb128	50
	.uleb128	11
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
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 23
	.uleb128	23
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
	.byte	0
	.byte	0
# Abbrev 28
	.uleb128	28
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
	.uleb128	76
	.uleb128	11
	.uleb128	77
	.uleb128	10
	.uleb128	73
	.uleb128	19
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
	.uleb128	19
	.byte	1
	.uleb128	11
	.uleb128	11
	.byte	0
	.byte	0
# Abbrev 32
	.uleb128	32
	.uleb128	21
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	39
	.uleb128	12
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
# Abbrev 35
	.uleb128	35
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
# Abbrev 36
	.uleb128	36
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
# Abbrev 37
	.uleb128	37
	.uleb128	19
	.byte	1
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 38
	.uleb128	38
	.uleb128	1
	.byte	1
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 39
	.uleb128	39
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
# Abbrev 40
	.uleb128	40
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
# function: UMAIN$_$INTTOSTR2$LONGINT$LONGINT$$ANSISTRING_$$_fin$1
# [54:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	65
# [54:1]
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
# function: UMAIN_$$_INTTOSTR2$LONGINT$LONGINT$$ANSISTRING
# [54:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll4
	.byte	5
	.uleb128	1
	.byte	65
# [54:1]
	.byte	2
	.uleb128	.Ll5-.Ll4
	.byte	1
# [55:4]
	.byte	2
	.uleb128	.Ll6-.Ll5
	.byte	5
	.uleb128	4
	.byte	13
# [56:5]
	.byte	2
	.uleb128	.Ll7-.Ll6
	.byte	5
	.uleb128	5
	.byte	13
# [57:1]
	.byte	2
	.uleb128	.Ll8-.Ll7
	.byte	5
	.uleb128	1
	.byte	13
# [58:6]
	.byte	2
	.uleb128	.Ll9-.Ll8
	.byte	5
	.uleb128	6
	.byte	13
# [59:6]
	.byte	2
	.uleb128	.Ll10-.Ll9
	.byte	13
# [60:1]
	.byte	2
	.uleb128	.Ll11-.Ll10
	.byte	5
	.uleb128	1
	.byte	13
# [54:1]
	.byte	2
	.uleb128	.Ll12-.Ll11
	.byte	3
	.sleb128	-6
	.byte	1
# [61:1]
	.byte	2
	.uleb128	.Ll13-.Ll12
	.byte	19
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll14
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UMAIN$_$MAIN1_$$_fin$2
# [67:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll15
	.byte	5
	.uleb128	1
	.byte	78
# [67:1]
	.byte	2
	.uleb128	.Ll16-.Ll15
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll17
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UMAIN_$$_MAIN1
# [67:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll18
	.byte	5
	.uleb128	1
	.byte	78
# [67:1]
	.byte	2
	.uleb128	.Ll19-.Ll18
	.byte	1
# [71:6]
	.byte	2
	.uleb128	.Ll20-.Ll19
	.byte	5
	.uleb128	6
	.byte	16
# [72:6]
	.byte	2
	.uleb128	.Ll21-.Ll20
	.byte	13
# [73:6]
	.byte	2
	.uleb128	.Ll22-.Ll21
	.byte	13
# [74:6]
	.byte	2
	.uleb128	.Ll23-.Ll22
	.byte	13
# [75:6]
	.byte	2
	.uleb128	.Ll24-.Ll23
	.byte	13
# [76:6]
	.byte	2
	.uleb128	.Ll25-.Ll24
	.byte	13
# [77:6]
	.byte	2
	.uleb128	.Ll26-.Ll25
	.byte	13
# [78:6]
	.byte	2
	.uleb128	.Ll27-.Ll26
	.byte	13
# [82:1]
	.byte	2
	.uleb128	.Ll28-.Ll27
	.byte	5
	.uleb128	1
	.byte	16
# [83:3]
	.byte	2
	.uleb128	.Ll29-.Ll28
	.byte	5
	.uleb128	3
	.byte	13
# [84:9]
	.byte	2
	.uleb128	.Ll30-.Ll29
	.byte	5
	.uleb128	9
	.byte	13
# [85:8]
	.byte	2
	.uleb128	.Ll31-.Ll30
	.byte	5
	.uleb128	8
	.byte	13
# [67:1]
	.byte	2
	.uleb128	.Ll32-.Ll31
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-18
	.byte	1
# [85:28]
	.byte	2
	.uleb128	.Ll33-.Ll32
	.byte	5
	.uleb128	28
	.byte	30
# [83:3]
	.byte	2
	.uleb128	.Ll34-.Ll33
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-2
	.byte	1
# [82:1]
	.byte	2
	.uleb128	.Ll35-.Ll34
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [88:1]
	.byte	2
	.uleb128	.Ll36-.Ll35
	.byte	18
# [89:3]
	.byte	2
	.uleb128	.Ll37-.Ll36
	.byte	5
	.uleb128	3
	.byte	13
# [90:9]
	.byte	2
	.uleb128	.Ll38-.Ll37
	.byte	5
	.uleb128	9
	.byte	13
# [91:10]
	.byte	2
	.uleb128	.Ll39-.Ll38
	.byte	5
	.uleb128	10
	.byte	13
# [92:8]
	.byte	2
	.uleb128	.Ll40-.Ll39
	.byte	5
	.uleb128	8
	.byte	13
# [67:1]
	.byte	2
	.uleb128	.Ll41-.Ll40
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-25
	.byte	1
# [92:28]
	.byte	2
	.uleb128	.Ll42-.Ll41
	.byte	5
	.uleb128	28
	.byte	37
# [89:3]
	.byte	2
	.uleb128	.Ll43-.Ll42
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-3
	.byte	1
# [88:1]
	.byte	2
	.uleb128	.Ll44-.Ll43
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [95:1]
	.byte	2
	.uleb128	.Ll45-.Ll44
	.byte	19
# [96:3]
	.byte	2
	.uleb128	.Ll46-.Ll45
	.byte	5
	.uleb128	3
	.byte	13
# [97:9]
	.byte	2
	.uleb128	.Ll47-.Ll46
	.byte	5
	.uleb128	9
	.byte	13
# [98:10]
	.byte	2
	.uleb128	.Ll48-.Ll47
	.byte	5
	.uleb128	10
	.byte	13
# [99:8]
	.byte	2
	.uleb128	.Ll49-.Ll48
	.byte	5
	.uleb128	8
	.byte	13
# [67:1]
	.byte	2
	.uleb128	.Ll50-.Ll49
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-32
	.byte	1
# [99:28]
	.byte	2
	.uleb128	.Ll51-.Ll50
	.byte	5
	.uleb128	28
	.byte	44
# [96:3]
	.byte	2
	.uleb128	.Ll52-.Ll51
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-3
	.byte	1
# [95:1]
	.byte	2
	.uleb128	.Ll53-.Ll52
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [106:1]
	.byte	2
	.uleb128	.Ll54-.Ll53
	.byte	23
# [107:1]
	.byte	2
	.uleb128	.Ll55-.Ll54
	.byte	13
# [108:6]
	.byte	2
	.uleb128	.Ll56-.Ll55
	.byte	5
	.uleb128	6
	.byte	13
# [109:1]
	.byte	2
	.uleb128	.Ll57-.Ll56
	.byte	5
	.uleb128	1
	.byte	13
# [110:1]
	.byte	2
	.uleb128	.Ll58-.Ll57
	.byte	13
# [111:1]
	.byte	2
	.uleb128	.Ll59-.Ll58
	.byte	13
# [112:1]
	.byte	2
	.uleb128	.Ll60-.Ll59
	.byte	13
# [113:9]
	.byte	2
	.uleb128	.Ll61-.Ll60
	.byte	5
	.uleb128	9
	.byte	13
# [114:6]
	.byte	2
	.uleb128	.Ll62-.Ll61
	.byte	5
	.uleb128	6
	.byte	13
# [115:1]
	.byte	2
	.uleb128	.Ll63-.Ll62
	.byte	5
	.uleb128	1
	.byte	13
# [116:1]
	.byte	2
	.uleb128	.Ll64-.Ll63
	.byte	13
# [117:1]
	.byte	2
	.uleb128	.Ll65-.Ll64
	.byte	13
# [118:1]
	.byte	2
	.uleb128	.Ll66-.Ll65
	.byte	13
# [119:1]
	.byte	2
	.uleb128	.Ll67-.Ll66
	.byte	13
# [120:1]
	.byte	2
	.uleb128	.Ll68-.Ll67
	.byte	13
# [121:1]
	.byte	2
	.uleb128	.Ll69-.Ll68
	.byte	13
# [122:1]
	.byte	2
	.uleb128	.Ll70-.Ll69
	.byte	13
# [123:1]
	.byte	2
	.uleb128	.Ll71-.Ll70
	.byte	13
# [124:1]
	.byte	2
	.uleb128	.Ll72-.Ll71
	.byte	13
# [125:1]
	.byte	2
	.uleb128	.Ll73-.Ll72
	.byte	13
# [126:1]
	.byte	2
	.uleb128	.Ll74-.Ll73
	.byte	13
# [128:1]
	.byte	2
	.uleb128	.Ll75-.Ll74
	.byte	14
# [129:4]
	.byte	2
	.uleb128	.Ll76-.Ll75
	.byte	5
	.uleb128	4
	.byte	13
# [130:1]
	.byte	2
	.uleb128	.Ll77-.Ll76
	.byte	5
	.uleb128	1
	.byte	13
# [131:3]
	.byte	2
	.uleb128	.Ll78-.Ll77
	.byte	5
	.uleb128	3
	.byte	13
# [130:1]
	.byte	2
	.uleb128	.Ll79-.Ll78
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [132:4]
	.byte	2
	.uleb128	.Ll80-.Ll79
	.byte	5
	.uleb128	4
	.byte	14
# [133:1]
	.byte	2
	.uleb128	.Ll81-.Ll80
	.byte	5
	.uleb128	1
	.byte	13
# [134:1]
	.byte	2
	.uleb128	.Ll82-.Ll81
	.byte	13
# [135:1]
	.byte	2
	.uleb128	.Ll83-.Ll82
	.byte	13
# [138:1]
	.byte	2
	.uleb128	.Ll84-.Ll83
	.byte	15
# [139:33]
	.byte	2
	.uleb128	.Ll85-.Ll84
	.byte	5
	.uleb128	33
	.byte	13
# [141:1]
	.byte	2
	.uleb128	.Ll86-.Ll85
	.byte	5
	.uleb128	1
	.byte	14
# [143:5]
	.byte	2
	.uleb128	.Ll87-.Ll86
	.byte	5
	.uleb128	5
	.byte	14
# [145:14]
	.byte	2
	.uleb128	.Ll88-.Ll87
	.byte	5
	.uleb128	14
	.byte	14
# [146:18]
	.byte	2
	.uleb128	.Ll89-.Ll88
	.byte	5
	.uleb128	18
	.byte	13
# [147:16]
	.byte	2
	.uleb128	.Ll90-.Ll89
	.byte	5
	.uleb128	16
	.byte	13
# [67:1]
	.byte	2
	.uleb128	.Ll91-.Ll90
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-80
	.byte	1
# [148:16]
	.byte	2
	.uleb128	.Ll92-.Ll91
	.byte	5
	.uleb128	16
	.byte	93
# [67:1]
	.byte	2
	.uleb128	.Ll93-.Ll92
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-81
	.byte	1
# [149:16]
	.byte	2
	.uleb128	.Ll94-.Ll93
	.byte	5
	.uleb128	16
	.byte	94
# [67:1]
	.byte	2
	.uleb128	.Ll95-.Ll94
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-82
	.byte	1
# [150:16]
	.byte	2
	.uleb128	.Ll96-.Ll95
	.byte	5
	.uleb128	16
	.byte	95
# [67:1]
	.byte	2
	.uleb128	.Ll97-.Ll96
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-83
	.byte	1
# [151:16]
	.byte	2
	.uleb128	.Ll98-.Ll97
	.byte	5
	.uleb128	16
	.byte	96
# [67:1]
	.byte	2
	.uleb128	.Ll99-.Ll98
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-84
	.byte	1
# [152:16]
	.byte	2
	.uleb128	.Ll100-.Ll99
	.byte	5
	.uleb128	16
	.byte	97
# [67:1]
	.byte	2
	.uleb128	.Ll101-.Ll100
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-85
	.byte	1
# [153:16]
	.byte	2
	.uleb128	.Ll102-.Ll101
	.byte	5
	.uleb128	16
	.byte	98
# [67:1]
	.byte	2
	.uleb128	.Ll103-.Ll102
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-86
	.byte	1
# [154:16]
	.byte	2
	.uleb128	.Ll104-.Ll103
	.byte	5
	.uleb128	16
	.byte	99
# [67:1]
	.byte	2
	.uleb128	.Ll105-.Ll104
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-87
	.byte	1
# [156:16]
	.byte	2
	.uleb128	.Ll106-.Ll105
	.byte	5
	.uleb128	16
	.byte	101
# [67:1]
	.byte	2
	.uleb128	.Ll107-.Ll106
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-89
	.byte	1
# [157:16]
	.byte	2
	.uleb128	.Ll108-.Ll107
	.byte	5
	.uleb128	16
	.byte	102
# [67:1]
	.byte	2
	.uleb128	.Ll109-.Ll108
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-90
	.byte	1
# [158:16]
	.byte	2
	.uleb128	.Ll110-.Ll109
	.byte	5
	.uleb128	16
	.byte	103
# [67:1]
	.byte	2
	.uleb128	.Ll111-.Ll110
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-91
	.byte	1
# [159:16]
	.byte	2
	.uleb128	.Ll112-.Ll111
	.byte	5
	.uleb128	16
	.byte	104
# [67:1]
	.byte	2
	.uleb128	.Ll113-.Ll112
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-92
	.byte	1
# [160:16]
	.byte	2
	.uleb128	.Ll114-.Ll113
	.byte	5
	.uleb128	16
	.byte	105
# [67:1]
	.byte	2
	.uleb128	.Ll115-.Ll114
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-93
	.byte	1
# [161:16]
	.byte	2
	.uleb128	.Ll116-.Ll115
	.byte	5
	.uleb128	16
	.byte	106
# [67:1]
	.byte	2
	.uleb128	.Ll117-.Ll116
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-94
	.byte	1
# [162:16]
	.byte	2
	.uleb128	.Ll118-.Ll117
	.byte	5
	.uleb128	16
	.byte	107
# [67:1]
	.byte	2
	.uleb128	.Ll119-.Ll118
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-95
	.byte	1
# [163:16]
	.byte	2
	.uleb128	.Ll120-.Ll119
	.byte	5
	.uleb128	16
	.byte	108
# [143:5]
	.byte	2
	.uleb128	.Ll121-.Ll120
	.byte	5
	.uleb128	5
	.byte	3
	.sleb128	-20
	.byte	1
# [141:1]
	.byte	2
	.uleb128	.Ll122-.Ll121
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-2
	.byte	1
# [168:1]
	.byte	2
	.uleb128	.Ll123-.Ll122
	.byte	39
# [170:3]
	.byte	2
	.uleb128	.Ll124-.Ll123
	.byte	5
	.uleb128	3
	.byte	14
# [172:12]
	.byte	2
	.uleb128	.Ll125-.Ll124
	.byte	5
	.uleb128	12
	.byte	14
# [173:34]
	.byte	2
	.uleb128	.Ll126-.Ll125
	.byte	5
	.uleb128	34
	.byte	13
# [174:34]
	.byte	2
	.uleb128	.Ll127-.Ll126
	.byte	13
# [175:34]
	.byte	2
	.uleb128	.Ll128-.Ll127
	.byte	13
# [176:34]
	.byte	2
	.uleb128	.Ll129-.Ll128
	.byte	13
# [178:5]
	.byte	2
	.uleb128	.Ll130-.Ll129
	.byte	5
	.uleb128	5
	.byte	14
# [179:5]
	.byte	2
	.uleb128	.Ll131-.Ll130
	.byte	13
# [180:5]
	.byte	2
	.uleb128	.Ll132-.Ll131
	.byte	13
# [181:5]
	.byte	2
	.uleb128	.Ll133-.Ll132
	.byte	13
# [182:5]
	.byte	2
	.uleb128	.Ll134-.Ll133
	.byte	13
# [183:5]
	.byte	2
	.uleb128	.Ll135-.Ll134
	.byte	13
# [184:5]
	.byte	2
	.uleb128	.Ll136-.Ll135
	.byte	13
# [185:5]
	.byte	2
	.uleb128	.Ll137-.Ll136
	.byte	13
# [186:5]
	.byte	2
	.uleb128	.Ll138-.Ll137
	.byte	13
# [188:5]
	.byte	2
	.uleb128	.Ll139-.Ll138
	.byte	14
# [189:5]
	.byte	2
	.uleb128	.Ll140-.Ll139
	.byte	13
# [190:5]
	.byte	2
	.uleb128	.Ll141-.Ll140
	.byte	13
# [191:5]
	.byte	2
	.uleb128	.Ll142-.Ll141
	.byte	13
# [192:5]
	.byte	2
	.uleb128	.Ll143-.Ll142
	.byte	13
# [193:5]
	.byte	2
	.uleb128	.Ll144-.Ll143
	.byte	13
# [194:5]
	.byte	2
	.uleb128	.Ll145-.Ll144
	.byte	13
# [195:5]
	.byte	2
	.uleb128	.Ll146-.Ll145
	.byte	13
# [196:5]
	.byte	2
	.uleb128	.Ll147-.Ll146
	.byte	13
# [198:5]
	.byte	2
	.uleb128	.Ll148-.Ll147
	.byte	14
# [199:5]
	.byte	2
	.uleb128	.Ll149-.Ll148
	.byte	13
# [200:5]
	.byte	2
	.uleb128	.Ll150-.Ll149
	.byte	13
# [201:5]
	.byte	2
	.uleb128	.Ll151-.Ll150
	.byte	13
# [205:5]
	.byte	2
	.uleb128	.Ll152-.Ll151
	.byte	16
# [206:5]
	.byte	2
	.uleb128	.Ll153-.Ll152
	.byte	13
# [207:5]
	.byte	2
	.uleb128	.Ll154-.Ll153
	.byte	13
# [208:5]
	.byte	2
	.uleb128	.Ll155-.Ll154
	.byte	13
# [209:5]
	.byte	2
	.uleb128	.Ll156-.Ll155
	.byte	13
# [210:5]
	.byte	2
	.uleb128	.Ll157-.Ll156
	.byte	13
# [211:5]
	.byte	2
	.uleb128	.Ll158-.Ll157
	.byte	13
# [170:3]
	.byte	2
	.uleb128	.Ll159-.Ll158
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-41
	.byte	1
# [168:1]
	.byte	2
	.uleb128	.Ll160-.Ll159
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-2
	.byte	1
# [67:1]
	.byte	2
	.uleb128	.Ll161-.Ll160
	.byte	3
	.sleb128	-101
	.byte	1
# [240:1]
	.byte	2
	.uleb128	.Ll162-.Ll161
	.byte	185
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll163
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UMAIN$_$MAIN2_$$_fin$3
# [255:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll164
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	254
	.byte	1
# [255:1]
	.byte	2
	.uleb128	.Ll165-.Ll164
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll166
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UMAIN_$$_MAIN2
# [255:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll167
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	254
	.byte	1
# [255:1]
	.byte	2
	.uleb128	.Ll168-.Ll167
	.byte	1
# [258:9]
	.byte	2
	.uleb128	.Ll169-.Ll168
	.byte	5
	.uleb128	9
	.byte	15
# [260:12]
	.byte	2
	.uleb128	.Ll170-.Ll169
	.byte	5
	.uleb128	12
	.byte	14
# [265:5]
	.byte	2
	.uleb128	.Ll171-.Ll170
	.byte	5
	.uleb128	5
	.byte	17
# [266:12]
	.byte	2
	.uleb128	.Ll172-.Ll171
	.byte	5
	.uleb128	12
	.byte	13
# [267:5]
	.byte	2
	.uleb128	.Ll173-.Ll172
	.byte	5
	.uleb128	5
	.byte	13
# [268:5]
	.byte	2
	.uleb128	.Ll174-.Ll173
	.byte	13
# [269:5]
	.byte	2
	.uleb128	.Ll175-.Ll174
	.byte	13
# [270:6]
	.byte	2
	.uleb128	.Ll176-.Ll175
	.byte	5
	.uleb128	6
	.byte	13
# [271:6]
	.byte	2
	.uleb128	.Ll177-.Ll176
	.byte	13
# [272:6]
	.byte	2
	.uleb128	.Ll178-.Ll177
	.byte	13
# [273:19]
	.byte	2
	.uleb128	.Ll179-.Ll178
	.byte	5
	.uleb128	19
	.byte	13
# [276:1]
	.byte	2
	.uleb128	.Ll180-.Ll179
	.byte	5
	.uleb128	1
	.byte	15
# [277:7]
	.byte	2
	.uleb128	.Ll181-.Ll180
	.byte	5
	.uleb128	7
	.byte	13
# [278:10]
	.byte	2
	.uleb128	.Ll182-.Ll181
	.byte	5
	.uleb128	10
	.byte	13
# [279:1]
	.byte	2
	.uleb128	.Ll183-.Ll182
	.byte	5
	.uleb128	1
	.byte	13
# [280:14]
	.byte	2
	.uleb128	.Ll184-.Ll183
	.byte	5
	.uleb128	14
	.byte	13
# [281:13]
	.byte	2
	.uleb128	.Ll185-.Ll184
	.byte	5
	.uleb128	13
	.byte	13
# [282:13]
	.byte	2
	.uleb128	.Ll186-.Ll185
	.byte	13
# [283:13]
	.byte	2
	.uleb128	.Ll187-.Ll186
	.byte	13
# [284:15]
	.byte	2
	.uleb128	.Ll188-.Ll187
	.byte	5
	.uleb128	15
	.byte	13
# [285:1]
	.byte	2
	.uleb128	.Ll189-.Ll188
	.byte	5
	.uleb128	1
	.byte	13
# [286:70]
	.byte	2
	.uleb128	.Ll190-.Ll189
	.byte	5
	.uleb128	70
	.byte	13
# [287:71]
	.byte	2
	.uleb128	.Ll191-.Ll190
	.byte	5
	.uleb128	71
	.byte	13
# [288:58]
	.byte	2
	.uleb128	.Ll192-.Ll191
	.byte	5
	.uleb128	58
	.byte	13
# [293:1]
	.byte	2
	.uleb128	.Ll193-.Ll192
	.byte	5
	.uleb128	1
	.byte	17
# [294:1]
	.byte	2
	.uleb128	.Ll194-.Ll193
	.byte	13
# [295:1]
	.byte	2
	.uleb128	.Ll195-.Ll194
	.byte	13
# [296:1]
	.byte	2
	.uleb128	.Ll196-.Ll195
	.byte	13
# [297:1]
	.byte	2
	.uleb128	.Ll197-.Ll196
	.byte	13
# [300:13]
	.byte	2
	.uleb128	.Ll198-.Ll197
	.byte	5
	.uleb128	13
	.byte	15
# [301:14]
	.byte	2
	.uleb128	.Ll199-.Ll198
	.byte	5
	.uleb128	14
	.byte	13
# [302:16]
	.byte	2
	.uleb128	.Ll200-.Ll199
	.byte	5
	.uleb128	16
	.byte	13
# [304:14]
	.byte	2
	.uleb128	.Ll201-.Ll200
	.byte	5
	.uleb128	14
	.byte	14
# [305:15]
	.byte	2
	.uleb128	.Ll202-.Ll201
	.byte	5
	.uleb128	15
	.byte	13
# [307:16]
	.byte	2
	.uleb128	.Ll203-.Ll202
	.byte	5
	.uleb128	16
	.byte	14
# [309:14]
	.byte	2
	.uleb128	.Ll204-.Ll203
	.byte	5
	.uleb128	14
	.byte	14
# [310:15]
	.byte	2
	.uleb128	.Ll205-.Ll204
	.byte	5
	.uleb128	15
	.byte	13
# [312:16]
	.byte	2
	.uleb128	.Ll206-.Ll205
	.byte	5
	.uleb128	16
	.byte	14
# [314:6]
	.byte	2
	.uleb128	.Ll207-.Ll206
	.byte	5
	.uleb128	6
	.byte	14
# [315:1]
	.byte	2
	.uleb128	.Ll208-.Ll207
	.byte	5
	.uleb128	1
	.byte	13
# [316:1]
	.byte	2
	.uleb128	.Ll209-.Ll208
	.byte	13
# [317:1]
	.byte	2
	.uleb128	.Ll210-.Ll209
	.byte	13
# [255:1]
	.byte	2
	.uleb128	.Ll211-.Ll210
	.byte	3
	.sleb128	-62
	.byte	1
# [319:1]
	.byte	2
	.uleb128	.Ll212-.Ll211
	.byte	76
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll213
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: INIT$_$UMAIN
# function: UMAIN_$$_init_implicit$
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll214
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FINALIZE$_$UMAIN
# function: UMAIN_$$_finalize_implicit$
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll215
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

