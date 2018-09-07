	.file "unit65032.pas"
# Begin asmlist al_begin

.section .debug_line
.Ldebug_linesection0:
.Ldebug_line0:

.section .debug_abbrev
.Ldebug_abbrevsection0:
.Ldebug_abbrev0:

.section .text.b_DEBUGSTART_$UNIT65032,"x"
.globl	DEBUGSTART_$UNIT65032
DEBUGSTART_$UNIT65032:
# End asmlist al_begin
# Begin asmlist al_procedures

.section .text.n_unit65032_$$_exec65032,"x"
	.balign 16,0x90
.globl	UNIT65032_$$_EXEC65032
UNIT65032_$$_EXEC65032:
.Lc1:
.seh_proc UNIT65032_$$_EXEC65032
.Ll1:
# [unit65032.pas]
# [32] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc3:
.Lc4:
	movq	%rsp,%rbp
.Lc5:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# Var opcode located at rbp-8, size=OS_8
# Var ea located at rbp-16, size=OS_S64
# Var eahelp located at rbp-24, size=OS_S64
# Var eahelp2 located at rbp-32, size=OS_S64
.Ll2:
# [33] cs:=@csa; ds:=@dsa;
	leaq	U_$UNIT65032_$$_CSA(%rip),%rax
	movq	%rax,U_$UNIT65032_$$_CS(%rip)
	leaq	U_$UNIT65032_$$_DSA(%rip),%rax
	movq	%rax,U_$UNIT65032_$$_DS(%rip)
.Ll3:
# [35] opcode := raml^[pc+cs^];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movq	(%rax),%rax
	leaq	(%rdx,%rax),%rax
	movb	(%rcx,%rax,4),%al
	movb	%al,-8(%rbp)
.Ll4:
# [36] inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll5:
# [37] case opcode of
	movb	-8(%rbp),%al
# PeepHole Optimization,var9
	andl	$255,%eax
	leaq	.Ld1(%rip),%rdx
	movslq	(%rdx,%rax,4),%rax
	leaq	(%rdx,%rax,1),%rax
	jmp	*%rax
.Lj13:
.Ll6:
# [42] inc(pc);                                            //put incremented pc on the stack
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll7:
# [43] ramb^[ss+(sp+$100)]:=pc shr 8;
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movl	U_$UNIT65032_$$_SP(%rip),%eax
	leaq	256(%rax),%rax
	movq	U_$UNIT65032_$$_SS(%rip),%rdx
	leaq	(%rax,%rdx),%rdx
	movl	U_$UNIT65032_$$_PC(%rip),%eax
	shrl	$8,%eax
	movb	%al,(%rcx,%rdx,1)
.Ll8:
# [44] ramb^[ss+(sp+$FF)]:=pc;
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movl	U_$UNIT65032_$$_SP(%rip),%eax
	leaq	255(%rax),%rdx
	movq	U_$UNIT65032_$$_SS(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movb	U_$UNIT65032_$$_PC(%rip),%dl
	movb	%dl,(%rcx,%rax,1)
.Ll9:
# [45] ramb^[ss+(sp+$FE)]:=status or $10;                  //put flags on the stach with B set
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movl	U_$UNIT65032_$$_SP(%rip),%eax
	leaq	254(%rax),%rax
	movq	U_$UNIT65032_$$_SS(%rip),%rdx
	leaq	(%rax,%rdx),%rdx
	movzbl	U_$UNIT65032_$$_STATUS(%rip),%eax
	orl	$16,%eax
	movb	%al,(%rcx,%rdx,1)
.Ll10:
# [46] sp-=3;
	movl	U_$UNIT65032_$$_SP(%rip),%eax
	leal	-3(%eax),%eax
	movl	%eax,U_$UNIT65032_$$_SP(%rip)
# PeepHole Optimization,var3
.Ll11:
# [47] status:=status or 4;                                //set interrupt flag
	orb	$4,U_$UNIT65032_$$_STATUS(%rip)
.Ll12:
# [48] cs:=@csi;                                           //switch segments to interrupt context
	leaq	U_$UNIT65032_$$_CSI(%rip),%rax
	movq	%rax,U_$UNIT65032_$$_CS(%rip)
.Ll13:
# [49] ds:=@dsi;
	leaq	U_$UNIT65032_$$_DSI(%rip),%rax
	movq	%rax,U_$UNIT65032_$$_DS(%rip)
.Ll14:
# [50] pc := ramw^[(csi shr 1)+$7FFF];                     //jump to @$FFFE;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movq	U_$UNIT65032_$$_CSI(%rip),%rax
	shrq	$1,%rax
	movzwl	65534(%rdx,%rax,2),%eax
	movl	%eax,U_$UNIT65032_$$_PC(%rip)
	jmp	.Lj11
.Lj14:
.Ll15:
# [59] eahelp := ds^+((ramb^[cs^+pc] + x) and $FF);           //zero-page wraparound for table pointer
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%eax
	movl	U_$UNIT65032_$$_X(%rip),%edx
	leaq	(%rax,%rdx),%rax
	andq	$255,%rax
	movq	U_$UNIT65032_$$_DS(%rip),%rdx
	movq	(%rdx),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-24(%rbp)
.Ll16:
# [60] ea:=ds^+256*ramb^[eahelp+1]+ramb^[eahelp];
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-24(%rbp),%rdx
	movzbl	1(%rax,%rdx,1),%eax
	shlq	$8,%rax
	movq	U_$UNIT65032_$$_DS(%rip),%rdx
	movq	(%rdx),%rdx
	leaq	(%rax,%rdx),%rcx
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movq	-24(%rbp),%rax
	movzbl	(%rdx,%rax,1),%eax
	leaq	(%rcx,%rax),%rax
	movq	%rax,-16(%rbp)
.Ll17:
# [61] inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll18:
# [65] a:=ramb^[ea] or a;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movq	-16(%rbp),%rax
	movzbl	(%rdx,%rax,1),%edx
	movl	U_$UNIT65032_$$_A(%rip),%eax
	orl	%edx,%eax
	movl	%eax,U_$UNIT65032_$$_A(%rip)
.Ll19:
# [66] if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
	movl	U_$UNIT65032_$$_A(%rip),%eax
	andl	$128,%eax
	testl	%eax,%eax
	je	.Lj290
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	orb	$128,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj293
.Lj290:
# PeepHole Optimization,var3
	andb	$127,U_$UNIT65032_$$_STATUS(%rip)
.Lj293:
.Ll20:
# [67] if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
	cmpl	$0,U_$UNIT65032_$$_A(%rip)
	jne	.Lj297
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj297:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj15:
.Ll21:
# [76] ea:=ds^+256*ramb^[cs^+pc]+ramb^[cs^+pc+1];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%eax
	shlq	$8,%rax
	movq	U_$UNIT65032_$$_DS(%rip),%rdx
	movq	(%rdx),%rdx
	leaq	(%rax,%rdx),%r8
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	1(%rcx,%rax,1),%eax
	leaq	(%r8,%rax),%rax
	movq	%rax,-16(%rbp)
.Ll22:
# [77] inc(pc); inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll23:
# [81] cs^:=$100000000*ramb^[ea+3]+$1000000*ramb^[ea+2]+$10000*ramb^[ea+1]+$100*ramb^[ea];
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movq	-16(%rbp),%rax
	movzbl	3(%rdx,%rax,1),%eax
	shlq	$32,%rax
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	-16(%rbp),%rdx
	movzbl	2(%rcx,%rdx,1),%edx
	shlq	$24,%rdx
	leaq	(%rax,%rdx),%rcx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-16(%rbp),%rdx
	movzbl	1(%rax,%rdx,1),%eax
	shlq	$16,%rax
	leaq	(%rcx,%rax),%rcx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-16(%rbp),%rdx
	movzbl	(%rax,%rdx,1),%eax
	shlq	$8,%rax
	leaq	(%rcx,%rax),%rdx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movq	%rdx,(%rax)
	jmp	.Lj11
.Lj16:
.Ll24:
# [90] eahelp := ds^+((ramb^[cs^+pc] + x) and $FF);           //zero-page wraparound for table pointer
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%eax
	movl	U_$UNIT65032_$$_X(%rip),%edx
	leaq	(%rax,%rdx),%rax
	andq	$255,%rax
	movq	U_$UNIT65032_$$_DS(%rip),%rdx
	movq	(%rdx),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-24(%rbp)
.Ll25:
# [91] ea:=ds^+256*ramb^[eahelp+1]+ramb^[eahelp];
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-24(%rbp),%rdx
	movzbl	1(%rax,%rdx,1),%eax
	shlq	$8,%rax
	movq	U_$UNIT65032_$$_DS(%rip),%rdx
	movq	(%rdx),%rdx
	leaq	(%rax,%rdx),%rcx
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movq	-24(%rbp),%rax
	movzbl	(%rdx,%rax,1),%eax
	leaq	(%rcx,%rax),%rax
	movq	%rax,-16(%rbp)
.Ll26:
# [92] inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll27:
# [96] value := ramb^[ea];
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-16(%rbp),%rdx
	movzbw	(%rax,%rdx,1),%ax
	movw	%ax,U_$UNIT65032_$$_VALUE(%rip)
.Ll28:
# [97] aresult := value shl 1;
	movzwl	U_$UNIT65032_$$_VALUE(%rip),%eax
	shll	$1,%eax
	movw	%ax,U_$UNIT65032_$$_ARESULT(%rip)
.Ll29:
# [98] ramb^[ea]:=aresult;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movq	-16(%rbp),%rcx
	movb	U_$UNIT65032_$$_ARESULT(%rip),%al
	movb	%al,(%rdx,%rcx,1)
.Ll30:
# [99] if (aresult and $FF00) <>0 then status:=status or 1 else status:=status and $FE;
	movw	U_$UNIT65032_$$_ARESULT(%rip),%ax
	andw	$65280,%ax
	testw	%ax,%ax
	je	.Lj318
# PeepHole Optimization,var3
	orb	$1,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj321
.Lj318:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$254,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
.Lj321:
.Ll31:
# [103] a:=aresult or a;
	movzwl	U_$UNIT65032_$$_ARESULT(%rip),%edx
	movl	U_$UNIT65032_$$_A(%rip),%eax
	orl	%edx,%eax
	movl	%eax,U_$UNIT65032_$$_A(%rip)
.Ll32:
# [104] if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
	movl	U_$UNIT65032_$$_A(%rip),%eax
	andl	$128,%eax
	testl	%eax,%eax
	je	.Lj327
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	orb	$128,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj330
.Lj327:
# PeepHole Optimization,var3
	andb	$127,U_$UNIT65032_$$_STATUS(%rip)
.Lj330:
.Ll33:
# [105] if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
	cmpl	$0,U_$UNIT65032_$$_A(%rip)
	jne	.Lj334
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj334:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj17:
.Ll34:
# [114] ea := ds^+ramb^[cs^+pc];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%edx
	movq	U_$UNIT65032_$$_DS(%rip),%rax
	movq	(%rax),%rax
	leaq	(%rdx,%rax),%rax
	movq	%rax,-16(%rbp)
.Ll35:
# [115] inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll36:
# [119] ramb^[ea]:=ramb^[ea] or a;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movq	-16(%rbp),%rax
	movzbl	(%rdx,%rax,1),%edx
	movl	U_$UNIT65032_$$_A(%rip),%eax
	orl	%edx,%eax
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	-16(%rbp),%rdx
	movb	%al,(%rcx,%rdx,1)
.Ll37:
# [120] if ramb^[ea]<>0 then status:=status and %11111101 else status:=status or $02;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-16(%rbp),%rdx
	cmpb	$0,(%rax,%rdx,1)
	je	.Lj345
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj345:
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj18:
.Ll38:
# [129] ea := ds^+ramb^[cs^+pc];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%edx
	movq	U_$UNIT65032_$$_DS(%rip),%rax
	movq	(%rax),%rax
	leaq	(%rdx,%rax),%rax
	movq	%rax,-16(%rbp)
.Ll39:
# [130] inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll40:
# [134] a:=ramb^[ea] or a;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movq	-16(%rbp),%rax
	movzbl	(%rdx,%rax,1),%edx
	movl	U_$UNIT65032_$$_A(%rip),%eax
	orl	%edx,%eax
	movl	%eax,U_$UNIT65032_$$_A(%rip)
.Ll41:
# [135] if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
	movl	U_$UNIT65032_$$_A(%rip),%eax
	andl	$128,%eax
	testl	%eax,%eax
	je	.Lj356
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	orb	$128,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj359
.Lj356:
# PeepHole Optimization,var3
	andb	$127,U_$UNIT65032_$$_STATUS(%rip)
.Lj359:
.Ll42:
# [136] if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
	cmpl	$0,U_$UNIT65032_$$_A(%rip)
	jne	.Lj363
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj363:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj19:
.Ll43:
# [145] ea := ds^+ramb^[cs^+pc];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%edx
	movq	U_$UNIT65032_$$_DS(%rip),%rax
	movq	(%rax),%rax
	leaq	(%rdx,%rax),%rax
	movq	%rax,-16(%rbp)
.Ll44:
# [146] inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll45:
# [150] value := ramb^[ea];
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-16(%rbp),%rdx
	movzbw	(%rax,%rdx,1),%ax
	movw	%ax,U_$UNIT65032_$$_VALUE(%rip)
.Ll46:
# [151] aresult := value shl 1;
	movzwl	U_$UNIT65032_$$_VALUE(%rip),%eax
	shll	$1,%eax
	movw	%ax,U_$UNIT65032_$$_ARESULT(%rip)
.Ll47:
# [152] ramb^[ea]:=aresult;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movq	-16(%rbp),%rax
	movb	U_$UNIT65032_$$_ARESULT(%rip),%cl
	movb	%cl,(%rdx,%rax,1)
.Ll48:
# [153] if (aresult and $FF00) <>0 then status:=status or 1 else status:=status and $FE;
	movw	U_$UNIT65032_$$_ARESULT(%rip),%ax
	andw	$65280,%ax
	testw	%ax,%ax
	je	.Lj378
# PeepHole Optimization,var3
	orb	$1,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj381
.Lj378:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$254,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
.Lj381:
.Ll49:
# [154] if (aresult and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
	movw	U_$UNIT65032_$$_ARESULT(%rip),%ax
	andw	$128,%ax
	testw	%ax,%ax
	je	.Lj385
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	orb	$128,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj388
.Lj385:
# PeepHole Optimization,var3
	andb	$127,U_$UNIT65032_$$_STATUS(%rip)
.Lj388:
.Ll50:
# [155] if aresult=0 then status:=status or $02 else status:=status and %11111101;      //zero
	cmpw	$0,U_$UNIT65032_$$_ARESULT(%rip)
	jne	.Lj392
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj392:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj20:
.Ll51:
# [164] ea := ds^+ramb^[cs^+pc];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%edx
	movq	U_$UNIT65032_$$_DS(%rip),%rax
	movq	(%rax),%rax
	leaq	(%rdx,%rax),%rax
	movq	%rax,-16(%rbp)
.Ll52:
# [165] inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll53:
# [169] value := ramb^[ea];
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-16(%rbp),%rdx
	movzbw	(%rax,%rdx,1),%ax
	movw	%ax,U_$UNIT65032_$$_VALUE(%rip)
.Ll54:
# [170] aresult := value shl 1;
	movzwl	U_$UNIT65032_$$_VALUE(%rip),%eax
	shll	$1,%eax
	movw	%ax,U_$UNIT65032_$$_ARESULT(%rip)
.Ll55:
# [171] ramb^[ea]:=aresult;
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	-16(%rbp),%rax
	movb	U_$UNIT65032_$$_ARESULT(%rip),%dl
	movb	%dl,(%rcx,%rax,1)
.Ll56:
# [172] if (aresult and $FF00) <>0 then status:=status or 1 else status:=status and $FE;
	movw	U_$UNIT65032_$$_ARESULT(%rip),%ax
	andw	$65280,%ax
	testw	%ax,%ax
	je	.Lj407
# PeepHole Optimization,var3
	orb	$1,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj410
.Lj407:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$254,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
.Lj410:
.Ll57:
# [176] a:=aresult or a;
	movzwl	U_$UNIT65032_$$_ARESULT(%rip),%edx
	movl	U_$UNIT65032_$$_A(%rip),%eax
	orl	%edx,%eax
	movl	%eax,U_$UNIT65032_$$_A(%rip)
.Ll58:
# [177] if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
	movl	U_$UNIT65032_$$_A(%rip),%eax
	andl	$128,%eax
	testl	%eax,%eax
	je	.Lj416
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	orb	$128,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj419
.Lj416:
# PeepHole Optimization,var3
	andb	$127,U_$UNIT65032_$$_STATUS(%rip)
.Lj419:
.Ll59:
# [178] if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
	cmpl	$0,U_$UNIT65032_$$_A(%rip)
	jne	.Lj423
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj423:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj21:
.Ll60:
# [184] ramb^[ss+(sp+$100)]:=status or $10;
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movl	U_$UNIT65032_$$_SP(%rip),%eax
	leaq	256(%rax),%rdx
	movq	U_$UNIT65032_$$_SS(%rip),%rax
	leaq	(%rdx,%rax),%rdx
	movzbl	U_$UNIT65032_$$_STATUS(%rip),%eax
	orl	$16,%eax
	movb	%al,(%rcx,%rdx,1)
.Ll61:
# [185] dec(sp);
	subl	$1,U_$UNIT65032_$$_SP(%rip)
	jmp	.Lj11
.Lj22:
.Ll62:
# [194] ea := cs^+pc;
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movq	%rax,-16(%rbp)
.Ll63:
# [195] inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll64:
# [199] a:=ramb^[ea] or a;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movq	-16(%rbp),%rax
	movzbl	(%rdx,%rax,1),%edx
	movl	U_$UNIT65032_$$_A(%rip),%eax
	orl	%edx,%eax
	movl	%eax,U_$UNIT65032_$$_A(%rip)
.Ll65:
# [200] if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
	movl	U_$UNIT65032_$$_A(%rip),%eax
	andl	$128,%eax
	testl	%eax,%eax
	je	.Lj436
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	orb	$128,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj439
.Lj436:
# PeepHole Optimization,var3
	andb	$127,U_$UNIT65032_$$_STATUS(%rip)
.Lj439:
.Ll66:
# [201] if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
	cmpl	$0,U_$UNIT65032_$$_A(%rip)
	jne	.Lj443
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj443:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj23:
.Ll67:
# [208] a:=a shl 1;
	movl	U_$UNIT65032_$$_A(%rip),%eax
	shll	$1,%eax
	movl	%eax,U_$UNIT65032_$$_A(%rip)
.Ll68:
# [209] if (a and $FFFFFF00)<>0 then status:=status or 1 else status:=status and $FE;
	movl	U_$UNIT65032_$$_A(%rip),%eax
	andl	$4294967040,%eax
	testl	%eax,%eax
	je	.Lj452
# PeepHole Optimization,var3
	orb	$1,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj455
.Lj452:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$254,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
.Lj455:
.Ll69:
# [210] if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
	movl	U_$UNIT65032_$$_A(%rip),%eax
	andl	$128,%eax
	testl	%eax,%eax
	je	.Lj459
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	orb	$128,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj462
.Lj459:
# PeepHole Optimization,var3
	andb	$127,U_$UNIT65032_$$_STATUS(%rip)
.Lj462:
.Ll70:
# [211] if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
	cmpl	$0,U_$UNIT65032_$$_A(%rip)
	jne	.Lj466
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj469
.Lj466:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
.Lj469:
.Ll71:
# [212] a:=a and $FF;
	movl	U_$UNIT65032_$$_A(%rip),%eax
	andl	$255,%eax
	movl	%eax,U_$UNIT65032_$$_A(%rip)
	jmp	.Lj11
.Lj24:
.Ll72:
# [218] inc(pc); // imm :)
	addl	$1,U_$UNIT65032_$$_PC(%rip)
	jmp	.Lj11
.Lj25:
.Ll73:
# [227] ea:=ds^+256*ramb^[cs^+pc]+ramb^[cs^+pc+1];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%eax
	shlq	$8,%rax
	movq	U_$UNIT65032_$$_DS(%rip),%rdx
	movq	(%rdx),%rdx
	leaq	(%rax,%rdx),%r8
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	1(%rcx,%rax,1),%eax
	leaq	(%r8,%rax),%rax
	movq	%rax,-16(%rbp)
.Ll74:
# [228] inc(pc); inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll75:
# [232] ramb^[ea]:=ramb^[ea] or a;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-16(%rbp),%rdx
	movzbl	(%rax,%rdx,1),%edx
	movl	U_$UNIT65032_$$_A(%rip),%eax
	orl	%edx,%eax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movq	-16(%rbp),%rcx
	movb	%al,(%rdx,%rcx,1)
.Ll76:
# [233] if ramb^[ea]<>0 then status:=status and %11111101 else status:=status or $02;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-16(%rbp),%rdx
	cmpb	$0,(%rax,%rdx,1)
	je	.Lj479
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj479:
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj26:
.Ll77:
# [242] ea:=ds^+256*ramb^[cs^+pc]+ramb^[cs^+pc+1];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%eax
	shlq	$8,%rax
	movq	U_$UNIT65032_$$_DS(%rip),%rdx
	movq	(%rdx),%rdx
	leaq	(%rax,%rdx),%r8
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	1(%rcx,%rax,1),%eax
	leaq	(%r8,%rax),%rax
	movq	%rax,-16(%rbp)
.Ll78:
# [243] inc(pc); inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll79:
# [247] a:=ramb^[ea] or a;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movq	-16(%rbp),%rax
	movzbl	(%rdx,%rax,1),%edx
	movl	U_$UNIT65032_$$_A(%rip),%eax
	orl	%edx,%eax
	movl	%eax,U_$UNIT65032_$$_A(%rip)
.Ll80:
# [248] if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
	movl	U_$UNIT65032_$$_A(%rip),%eax
	andl	$128,%eax
	testl	%eax,%eax
	je	.Lj490
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	orb	$128,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj493
.Lj490:
# PeepHole Optimization,var3
	andb	$127,U_$UNIT65032_$$_STATUS(%rip)
.Lj493:
.Ll81:
# [249] if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
	cmpl	$0,U_$UNIT65032_$$_A(%rip)
	jne	.Lj497
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj497:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj27:
.Ll82:
# [258] ea:=ds^+256*ramb^[cs^+pc]+ramb^[cs^+pc+1];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%eax
	shlq	$8,%rax
	movq	U_$UNIT65032_$$_DS(%rip),%rdx
	movq	(%rdx),%rdx
	leaq	(%rax,%rdx),%r8
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	1(%rcx,%rax,1),%eax
	leaq	(%r8,%rax),%rax
	movq	%rax,-16(%rbp)
.Ll83:
# [259] inc(pc); inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll84:
# [263] value := ramb^[ea];
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-16(%rbp),%rdx
	movzbw	(%rax,%rdx,1),%ax
	movw	%ax,U_$UNIT65032_$$_VALUE(%rip)
.Ll85:
# [264] aresult := value shl 1;
	movzwl	U_$UNIT65032_$$_VALUE(%rip),%eax
	shll	$1,%eax
	movw	%ax,U_$UNIT65032_$$_ARESULT(%rip)
.Ll86:
# [265] ramb^[ea]:=aresult;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-16(%rbp),%rcx
	movb	U_$UNIT65032_$$_ARESULT(%rip),%dl
	movb	%dl,(%rax,%rcx,1)
.Ll87:
# [266] if (aresult and $FF00) <>0 then status:=status or 1 else status:=status and $FE;
	movw	U_$UNIT65032_$$_ARESULT(%rip),%ax
	andw	$65280,%ax
	testw	%ax,%ax
	je	.Lj512
# PeepHole Optimization,var3
	orb	$1,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj515
.Lj512:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$254,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
.Lj515:
.Ll88:
# [267] if (aresult and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
	movw	U_$UNIT65032_$$_ARESULT(%rip),%ax
	andw	$128,%ax
	testw	%ax,%ax
	je	.Lj519
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	orb	$128,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj522
.Lj519:
# PeepHole Optimization,var3
	andb	$127,U_$UNIT65032_$$_STATUS(%rip)
.Lj522:
.Ll89:
# [268] if aresult=0 then status:=status or $02 else status:=status and %11111101;      //zero
	cmpw	$0,U_$UNIT65032_$$_ARESULT(%rip)
	jne	.Lj526
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj526:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj28:
.Ll90:
# [277] ea:=ds^+256*ramb^[cs^+pc]+ramb^[cs^+pc+1];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%eax
	shlq	$8,%rax
	movq	U_$UNIT65032_$$_DS(%rip),%rdx
	movq	(%rdx),%rdx
	leaq	(%rax,%rdx),%r8
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	1(%rcx,%rax,1),%eax
	leaq	(%r8,%rax),%rax
	movq	%rax,-16(%rbp)
.Ll91:
# [278] inc(pc); inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll92:
# [282] value := ramb^[ea];
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-16(%rbp),%rdx
	movzbw	(%rax,%rdx,1),%ax
	movw	%ax,U_$UNIT65032_$$_VALUE(%rip)
.Ll93:
# [283] aresult := value shl 1;
	movzwl	U_$UNIT65032_$$_VALUE(%rip),%eax
	shll	$1,%eax
	movw	%ax,U_$UNIT65032_$$_ARESULT(%rip)
.Ll94:
# [284] ramb^[ea]:=aresult;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movq	-16(%rbp),%rcx
	movb	U_$UNIT65032_$$_ARESULT(%rip),%al
	movb	%al,(%rdx,%rcx,1)
.Ll95:
# [285] if (aresult and $FF00) <>0 then status:=status or 1 else status:=status and $FE;
	movw	U_$UNIT65032_$$_ARESULT(%rip),%ax
	andw	$65280,%ax
	testw	%ax,%ax
	je	.Lj541
# PeepHole Optimization,var3
	orb	$1,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj544
.Lj541:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$254,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
.Lj544:
.Ll96:
# [289] a:=aresult or a;
	movzwl	U_$UNIT65032_$$_ARESULT(%rip),%edx
	movl	U_$UNIT65032_$$_A(%rip),%eax
	orl	%edx,%eax
	movl	%eax,U_$UNIT65032_$$_A(%rip)
.Ll97:
# [290] if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
	movl	U_$UNIT65032_$$_A(%rip),%eax
	andl	$128,%eax
	testl	%eax,%eax
	je	.Lj550
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	orb	$128,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj553
.Lj550:
# PeepHole Optimization,var3
	andb	$127,U_$UNIT65032_$$_STATUS(%rip)
.Lj553:
.Ll98:
# [291] if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
	cmpl	$0,U_$UNIT65032_$$_A(%rip)
	jne	.Lj557
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj557:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj29:
.Ll99:
# [300] reladdr := ramb^[cs^+pc];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%eax
	movl	%eax,U_$UNIT65032_$$_RELADDR(%rip)
.Ll100:
# [301] inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll101:
# [302] if (reladdr and $80)<>0 then reladdr:=reladdr-256;
	movl	U_$UNIT65032_$$_RELADDR(%rip),%eax
	andl	$128,%eax
	testl	%eax,%eax
	je	.Lj566
	movl	U_$UNIT65032_$$_RELADDR(%rip),%eax
	leal	-256(%eax),%eax
	movl	%eax,U_$UNIT65032_$$_RELADDR(%rip)
.Lj566:
.Ll102:
# [306] if ((status and $80) = 0) then   pc += reladdr;
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$128,%al
	testb	%al,%al
	jne	.Lj11
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movl	U_$UNIT65032_$$_RELADDR(%rip),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,U_$UNIT65032_$$_PC(%rip)
	jmp	.Lj11
.Lj30:
.Ll103:
# [315] eahelp := ramb^[cs^+pc];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%eax
	movq	%rax,-24(%rbp)
.Ll104:
# [316] inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll105:
# [317] eahelp2 := (eahelp + 1) and $00FF; //zero-page wraparound
	movq	-24(%rbp),%rax
	leaq	1(%rax),%rax
	andq	$255,%rax
	movq	%rax,-32(%rbp)
.Ll106:
# [318] ea := ramb^[ds^+eahelp] + 256* ramb^[ds^+eahelp2]+y;
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_DS(%rip),%rax
	movq	(%rax),%rax
	movq	-32(%rbp),%rdx
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%eax
	shlq	$8,%rax
	movq	U_$RETRO_$$_R1(%rip),%r8
	movq	U_$UNIT65032_$$_DS(%rip),%rdx
	movq	(%rdx),%rcx
	movq	-24(%rbp),%rdx
	leaq	(%rcx,%rdx),%rdx
	movzbl	(%r8,%rdx,1),%edx
	leaq	(%rax,%rdx),%rdx
	movl	U_$UNIT65032_$$_Y(%rip),%eax
	leaq	(%rdx,%rax),%rax
	movq	%rax,-16(%rbp)
.Ll107:
# [322] a:=ramb^[ea] or a;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-16(%rbp),%rdx
	movzbl	(%rax,%rdx,1),%edx
	movl	U_$UNIT65032_$$_A(%rip),%eax
	orl	%edx,%eax
	movl	%eax,U_$UNIT65032_$$_A(%rip)
.Ll108:
# [323] if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
	movl	U_$UNIT65032_$$_A(%rip),%eax
	andl	$128,%eax
	testl	%eax,%eax
	je	.Lj582
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	orb	$128,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj585
.Lj582:
# PeepHole Optimization,var3
	andb	$127,U_$UNIT65032_$$_STATUS(%rip)
.Lj585:
.Ll109:
# [324] if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
	cmpl	$0,U_$UNIT65032_$$_A(%rip)
	jne	.Lj589
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj589:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj31:
.Ll110:
# [333] eahelp := ramb^[cs^+pc];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%eax
	movq	%rax,-24(%rbp)
.Ll111:
# [334] inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll112:
# [335] eahelp2 := (eahelp + 1) and $00FF; //zero-page wraparound
	movq	-24(%rbp),%rax
	leaq	1(%rax),%rax
	andq	$255,%rax
	movq	%rax,-32(%rbp)
.Ll113:
# [336] ea := ramb^[ds^+eahelp] + 256* ramb^[ds^+eahelp2];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_DS(%rip),%rax
	movq	(%rax),%rdx
	movq	-32(%rbp),%rax
	leaq	(%rdx,%rax),%rax
	movzbl	(%rcx,%rax,1),%eax
	shlq	$8,%rax
	movq	U_$RETRO_$$_R1(%rip),%r8
	movq	U_$UNIT65032_$$_DS(%rip),%rdx
	movq	(%rdx),%rcx
	movq	-24(%rbp),%rdx
	leaq	(%rcx,%rdx),%rdx
	movzbl	(%r8,%rdx,1),%edx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-16(%rbp)
.Ll114:
# [340] a:=ramb^[ea] or a;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-16(%rbp),%rdx
	movzbl	(%rax,%rdx,1),%edx
	movl	U_$UNIT65032_$$_A(%rip),%eax
	orl	%edx,%eax
	movl	%eax,U_$UNIT65032_$$_A(%rip)
.Ll115:
# [341] if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
	movl	U_$UNIT65032_$$_A(%rip),%eax
	andl	$128,%eax
	testl	%eax,%eax
	je	.Lj604
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	orb	$128,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj607
.Lj604:
# PeepHole Optimization,var3
	andb	$127,U_$UNIT65032_$$_STATUS(%rip)
.Lj607:
.Ll116:
# [342] if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
	cmpl	$0,U_$UNIT65032_$$_A(%rip)
	jne	.Lj611
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj611:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj32:
.Ll117:
# [350] eahelp := ramb^[cs^+pc];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%eax
	movq	%rax,-24(%rbp)
.Ll118:
# [351] inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll119:
# [352] eahelp2 := (eahelp + 1) and $00FF; //zero-page wraparound
	movq	-24(%rbp),%rax
	leaq	1(%rax),%rax
	andq	$255,%rax
	movq	%rax,-32(%rbp)
.Ll120:
# [353] ea := ramb^[ds^+eahelp] + 256* ramb^[ds^+eahelp2]+y;
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_DS(%rip),%rax
	movq	(%rax),%rax
	movq	-32(%rbp),%rdx
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%eax
	shlq	$8,%rax
	movq	U_$RETRO_$$_R1(%rip),%r8
	movq	U_$UNIT65032_$$_DS(%rip),%rdx
	movq	(%rdx),%rdx
	movq	-24(%rbp),%rcx
	leaq	(%rdx,%rcx),%rdx
	movzbl	(%r8,%rdx,1),%edx
	leaq	(%rax,%rdx),%rdx
	movl	U_$UNIT65032_$$_Y(%rip),%eax
	leaq	(%rdx,%rax),%rax
	movq	%rax,-16(%rbp)
.Ll121:
# [357] value := ramb^[ea];
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movq	-16(%rbp),%rax
	movzbw	(%rdx,%rax,1),%ax
	movw	%ax,U_$UNIT65032_$$_VALUE(%rip)
.Ll122:
# [358] aresult := value shl 1;
	movzwl	U_$UNIT65032_$$_VALUE(%rip),%eax
	shll	$1,%eax
	movw	%ax,U_$UNIT65032_$$_ARESULT(%rip)
.Ll123:
# [359] ramb^[ea]:=aresult;
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	-16(%rbp),%rax
	movb	U_$UNIT65032_$$_ARESULT(%rip),%dl
	movb	%dl,(%rcx,%rax,1)
.Ll124:
# [360] if (aresult and $FF00) <>0 then status:=status or 1 else status:=status and $FE;
	movw	U_$UNIT65032_$$_ARESULT(%rip),%ax
	andw	$65280,%ax
	testw	%ax,%ax
	je	.Lj630
# PeepHole Optimization,var3
	orb	$1,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj633
.Lj630:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$254,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
.Lj633:
.Ll125:
# [364] a:=aresult or a;
	movzwl	U_$UNIT65032_$$_ARESULT(%rip),%edx
	movl	U_$UNIT65032_$$_A(%rip),%eax
	orl	%edx,%eax
	movl	%eax,U_$UNIT65032_$$_A(%rip)
.Ll126:
# [365] if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
	movl	U_$UNIT65032_$$_A(%rip),%eax
	andl	$128,%eax
	testl	%eax,%eax
	je	.Lj639
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	orb	$128,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj642
.Lj639:
# PeepHole Optimization,var3
	andb	$127,U_$UNIT65032_$$_STATUS(%rip)
.Lj642:
.Ll127:
# [366] if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
	cmpl	$0,U_$UNIT65032_$$_A(%rip)
	jne	.Lj646
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj646:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj33:
.Ll128:
# [376] ea := ds^+ramb^[cs^+pc];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%edx
	movq	U_$UNIT65032_$$_DS(%rip),%rax
	movq	(%rax),%rax
	leaq	(%rdx,%rax),%rax
	movq	%rax,-16(%rbp)
.Ll129:
# [377] inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll130:
# [381] ramb^[ea]:=ramb^[ea] and not a;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-16(%rbp),%rdx
	movzbl	(%rax,%rdx,1),%edx
	movl	U_$UNIT65032_$$_A(%rip),%eax
	notl	%eax
	andl	%edx,%eax
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	-16(%rbp),%rdx
	movb	%al,(%rcx,%rdx,1)
.Ll131:
# [382] if ramb^[ea]<>0 then status:=status and %11111101 else status:=status or $02;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-16(%rbp),%rdx
	cmpb	$0,(%rax,%rdx,1)
	je	.Lj657
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj657:
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj34:
.Ll132:
# [391] ea := ds^+((ramb^[cs^+pc]+x) and $FF); //zero-page wraparound
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%eax
	movl	U_$UNIT65032_$$_X(%rip),%edx
	leaq	(%rax,%rdx),%rax
	andq	$255,%rax
	movq	U_$UNIT65032_$$_DS(%rip),%rdx
	movq	(%rdx),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-16(%rbp)
.Ll133:
# [392] inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll134:
# [396] a:=ramb^[ea] or a;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movq	-16(%rbp),%rax
	movzbl	(%rdx,%rax,1),%edx
	movl	U_$UNIT65032_$$_A(%rip),%eax
	orl	%edx,%eax
	movl	%eax,U_$UNIT65032_$$_A(%rip)
.Ll135:
# [397] if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
	movl	U_$UNIT65032_$$_A(%rip),%eax
	andl	$128,%eax
	testl	%eax,%eax
	je	.Lj668
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	orb	$128,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj671
.Lj668:
# PeepHole Optimization,var3
	andb	$127,U_$UNIT65032_$$_STATUS(%rip)
.Lj671:
.Ll136:
# [398] if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
	cmpl	$0,U_$UNIT65032_$$_A(%rip)
	jne	.Lj675
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj675:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj35:
.Ll137:
# [407] ea := ds^+((ramb^[cs^+pc]+x) and $FF); //zero-page wraparound
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%eax
	movl	U_$UNIT65032_$$_X(%rip),%edx
	leaq	(%rax,%rdx),%rax
	andq	$255,%rax
	movq	U_$UNIT65032_$$_DS(%rip),%rdx
	movq	(%rdx),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-16(%rbp)
.Ll138:
# [408] inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll139:
# [412] value := ramb^[ea];
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movq	-16(%rbp),%rax
	movzbw	(%rdx,%rax,1),%ax
	movw	%ax,U_$UNIT65032_$$_VALUE(%rip)
.Ll140:
# [413] aresult := value shl 1;
	movzwl	U_$UNIT65032_$$_VALUE(%rip),%eax
	shll	$1,%eax
	movw	%ax,U_$UNIT65032_$$_ARESULT(%rip)
.Ll141:
# [414] ramb^[ea]:=aresult;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-16(%rbp),%rdx
	movb	U_$UNIT65032_$$_ARESULT(%rip),%cl
	movb	%cl,(%rax,%rdx,1)
.Ll142:
# [415] if (aresult and $FF00) <>0 then status:=status or 1 else status:=status and $FE;
	movw	U_$UNIT65032_$$_ARESULT(%rip),%ax
	andw	$65280,%ax
	testw	%ax,%ax
	je	.Lj690
# PeepHole Optimization,var3
	orb	$1,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj693
.Lj690:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$254,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
.Lj693:
.Ll143:
# [416] if (aresult and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
	movw	U_$UNIT65032_$$_ARESULT(%rip),%ax
	andw	$128,%ax
	testw	%ax,%ax
	je	.Lj697
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	orb	$128,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj700
.Lj697:
# PeepHole Optimization,var3
	andb	$127,U_$UNIT65032_$$_STATUS(%rip)
.Lj700:
.Ll144:
# [417] if aresult=0 then status:=status or $02 else status:=status and %11111101;      //zero
	cmpw	$0,U_$UNIT65032_$$_ARESULT(%rip)
	jne	.Lj704
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj704:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj36:
.Ll145:
# [426] ea := ds^+((ramb^[cs^+pc]+x) and $FF); //zero-page wraparound
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%eax
	movl	U_$UNIT65032_$$_X(%rip),%edx
	leaq	(%rax,%rdx),%rax
	andq	$255,%rax
	movq	U_$UNIT65032_$$_DS(%rip),%rdx
	movq	(%rdx),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-16(%rbp)
.Ll146:
# [427] inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll147:
# [431] value := ramb^[ea];
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-16(%rbp),%rdx
	movzbw	(%rax,%rdx,1),%ax
	movw	%ax,U_$UNIT65032_$$_VALUE(%rip)
.Ll148:
# [432] aresult := value shl 1;
	movzwl	U_$UNIT65032_$$_VALUE(%rip),%eax
	shll	$1,%eax
	movw	%ax,U_$UNIT65032_$$_ARESULT(%rip)
.Ll149:
# [433] ramb^[ea]:=aresult;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movq	-16(%rbp),%rcx
	movb	U_$UNIT65032_$$_ARESULT(%rip),%dl
	movb	%dl,(%rax,%rcx,1)
.Ll150:
# [434] if (aresult and $FF00) <>0 then status:=status or 1 else status:=status and $FE;
	movw	U_$UNIT65032_$$_ARESULT(%rip),%ax
	andw	$65280,%ax
	testw	%ax,%ax
	je	.Lj719
# PeepHole Optimization,var3
	orb	$1,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj722
.Lj719:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$254,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
.Lj722:
.Ll151:
# [438] a:=aresult or a;
	movzwl	U_$UNIT65032_$$_ARESULT(%rip),%edx
	movl	U_$UNIT65032_$$_A(%rip),%eax
	orl	%edx,%eax
	movl	%eax,U_$UNIT65032_$$_A(%rip)
.Ll152:
# [439] if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
	movl	U_$UNIT65032_$$_A(%rip),%eax
	andl	$128,%eax
	testl	%eax,%eax
	je	.Lj728
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	orb	$128,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj731
.Lj728:
# PeepHole Optimization,var3
	andb	$127,U_$UNIT65032_$$_STATUS(%rip)
.Lj731:
.Ll153:
# [440] if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
	cmpl	$0,U_$UNIT65032_$$_A(%rip)
	jne	.Lj735
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj735:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj37:
.Ll154:
# [446] status:=status and $FE;
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$254,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj38:
.Ll155:
# [455] ea := ds^+ramb^[cs^+pc] +256*ramb^[cs^+pc+1] +y;
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	(%rcx,%rax,1),%edx
	movq	U_$UNIT65032_$$_DS(%rip),%rax
	movq	(%rax),%rax
	leaq	(%rdx,%rax),%r8
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$UNIT65032_$$_CS(%rip),%rax
	movl	U_$UNIT65032_$$_PC(%rip),%edx
	movq	(%rax),%rax
	leaq	(%rax,%rdx),%rax
	movzbl	1(%rcx,%rax,1),%eax
	shlq	$8,%rax
	leaq	(%r8,%rax),%rdx
	movl	U_$UNIT65032_$$_Y(%rip),%eax
	leaq	(%rdx,%rax),%rax
	movq	%rax,-16(%rbp)
.Ll156:
# [456] inc(pc); inc(pc);
	addl	$1,U_$UNIT65032_$$_PC(%rip)
	addl	$1,U_$UNIT65032_$$_PC(%rip)
.Ll157:
# [460] a:=ramb^[ea] or a;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movq	-16(%rbp),%rax
	movzbl	(%rdx,%rax,1),%edx
	movl	U_$UNIT65032_$$_A(%rip),%eax
	orl	%edx,%eax
	movl	%eax,U_$UNIT65032_$$_A(%rip)
.Ll158:
# [461] if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
	movl	U_$UNIT65032_$$_A(%rip),%eax
	andl	$128,%eax
	testl	%eax,%eax
	je	.Lj748
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	orb	$128,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj751
.Lj748:
# PeepHole Optimization,var3
	andb	$127,U_$UNIT65032_$$_STATUS(%rip)
.Lj751:
.Ll159:
# [462] if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
	cmpl	$0,U_$UNIT65032_$$_A(%rip)
	jne	.Lj755
# PeepHole Optimization,var3
	orb	$2,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj755:
	movb	U_$UNIT65032_$$_STATUS(%rip),%al
	andb	$253,%al
	movb	%al,U_$UNIT65032_$$_STATUS(%rip)
	jmp	.Lj11
.Lj39:
	jmp	.Lj11
.Lj40:
	jmp	.Lj11
.Lj41:
	jmp	.Lj11
.Lj42:
	jmp	.Lj11
.Lj43:
	jmp	.Lj11
.Lj44:
	jmp	.Lj11
.Lj45:
	jmp	.Lj11
.Lj46:
	jmp	.Lj11
.Lj47:
	jmp	.Lj11
.Lj48:
	jmp	.Lj11
.Lj49:
	jmp	.Lj11
.Lj50:
	jmp	.Lj11
.Lj51:
	jmp	.Lj11
.Lj52:
	jmp	.Lj11
.Lj53:
	jmp	.Lj11
.Lj54:
	jmp	.Lj11
.Lj55:
	jmp	.Lj11
.Lj56:
	jmp	.Lj11
.Lj57:
	jmp	.Lj11
.Lj58:
	jmp	.Lj11
.Lj59:
	jmp	.Lj11
.Lj60:
	jmp	.Lj11
.Lj61:
	jmp	.Lj11
.Lj62:
	jmp	.Lj11
.Lj63:
	jmp	.Lj11
.Lj64:
	jmp	.Lj11
.Lj65:
	jmp	.Lj11
.Lj66:
	jmp	.Lj11
.Lj67:
	jmp	.Lj11
.Lj68:
	jmp	.Lj11
.Lj69:
	jmp	.Lj11
.Lj70:
	jmp	.Lj11
.Lj71:
	jmp	.Lj11
.Lj72:
	jmp	.Lj11
.Lj73:
	jmp	.Lj11
.Lj74:
	jmp	.Lj11
.Lj75:
	jmp	.Lj11
.Lj76:
	jmp	.Lj11
.Lj77:
	jmp	.Lj11
.Lj78:
	jmp	.Lj11
.Lj79:
	jmp	.Lj11
.Lj80:
	jmp	.Lj11
.Lj81:
	jmp	.Lj11
.Lj82:
	jmp	.Lj11
.Lj83:
	jmp	.Lj11
.Lj84:
	jmp	.Lj11
.Lj85:
	jmp	.Lj11
.Lj86:
	jmp	.Lj11
.Lj87:
	jmp	.Lj11
.Lj88:
	jmp	.Lj11
.Lj89:
	jmp	.Lj11
.Lj90:
	jmp	.Lj11
.Lj91:
	jmp	.Lj11
.Lj92:
	jmp	.Lj11
.Lj93:
	jmp	.Lj11
.Lj94:
	jmp	.Lj11
.Lj95:
	jmp	.Lj11
.Lj96:
	jmp	.Lj11
.Lj97:
	jmp	.Lj11
.Lj98:
	jmp	.Lj11
.Lj99:
	jmp	.Lj11
.Lj100:
	jmp	.Lj11
.Lj101:
	jmp	.Lj11
.Lj102:
	jmp	.Lj11
.Lj103:
	jmp	.Lj11
.Lj104:
	jmp	.Lj11
.Lj105:
	jmp	.Lj11
.Lj106:
	jmp	.Lj11
.Lj107:
	jmp	.Lj11
.Lj108:
	jmp	.Lj11
.Lj109:
	jmp	.Lj11
.Lj110:
	jmp	.Lj11
.Lj111:
	jmp	.Lj11
.Lj112:
	jmp	.Lj11
.Lj113:
	jmp	.Lj11
.Lj114:
	jmp	.Lj11
.Lj115:
	jmp	.Lj11
.Lj116:
	jmp	.Lj11
.Lj117:
	jmp	.Lj11
.Lj118:
	jmp	.Lj11
.Lj119:
	jmp	.Lj11
.Lj120:
	jmp	.Lj11
.Lj121:
	jmp	.Lj11
.Lj122:
	jmp	.Lj11
.Lj123:
	jmp	.Lj11
.Lj124:
	jmp	.Lj11
.Lj125:
	jmp	.Lj11
.Lj126:
	jmp	.Lj11
.Lj127:
	jmp	.Lj11
.Lj128:
	jmp	.Lj11
.Lj129:
	jmp	.Lj11
.Lj130:
	jmp	.Lj11
.Lj131:
	jmp	.Lj11
.Lj132:
	jmp	.Lj11
.Lj133:
	jmp	.Lj11
.Lj134:
	jmp	.Lj11
.Lj135:
	jmp	.Lj11
.Lj136:
	jmp	.Lj11
.Lj137:
	jmp	.Lj11
.Lj138:
	jmp	.Lj11
.Lj139:
	jmp	.Lj11
.Lj140:
	jmp	.Lj11
.Lj141:
	jmp	.Lj11
.Lj142:
	jmp	.Lj11
.Lj143:
	jmp	.Lj11
.Lj144:
	jmp	.Lj11
.Lj145:
	jmp	.Lj11
.Lj146:
	jmp	.Lj11
.Lj147:
	jmp	.Lj11
.Lj148:
	jmp	.Lj11
.Lj149:
	jmp	.Lj11
.Lj150:
	jmp	.Lj11
.Lj151:
	jmp	.Lj11
.Lj152:
	jmp	.Lj11
.Lj153:
	jmp	.Lj11
.Lj154:
	jmp	.Lj11
.Lj155:
	jmp	.Lj11
.Lj156:
	jmp	.Lj11
.Lj157:
	jmp	.Lj11
.Lj158:
	jmp	.Lj11
.Lj159:
	jmp	.Lj11
.Lj160:
	jmp	.Lj11
.Lj161:
	jmp	.Lj11
.Lj162:
	jmp	.Lj11
.Lj163:
	jmp	.Lj11
.Lj164:
	jmp	.Lj11
.Lj165:
	jmp	.Lj11
.Lj166:
	jmp	.Lj11
.Lj167:
	jmp	.Lj11
.Lj168:
	jmp	.Lj11
.Lj169:
	jmp	.Lj11
.Lj170:
	jmp	.Lj11
.Lj171:
	jmp	.Lj11
.Lj172:
	jmp	.Lj11
.Lj173:
	jmp	.Lj11
.Lj174:
	jmp	.Lj11
.Lj175:
	jmp	.Lj11
.Lj176:
	jmp	.Lj11
.Lj177:
	jmp	.Lj11
.Lj178:
	jmp	.Lj11
.Lj179:
	jmp	.Lj11
.Lj180:
	jmp	.Lj11
.Lj181:
	jmp	.Lj11
.Lj182:
	jmp	.Lj11
.Lj183:
	jmp	.Lj11
.Lj184:
	jmp	.Lj11
.Lj185:
	jmp	.Lj11
.Lj186:
	jmp	.Lj11
.Lj187:
	jmp	.Lj11
.Lj188:
	jmp	.Lj11
.Lj189:
	jmp	.Lj11
.Lj190:
	jmp	.Lj11
.Lj191:
	jmp	.Lj11
.Lj192:
	jmp	.Lj11
.Lj193:
	jmp	.Lj11
.Lj194:
	jmp	.Lj11
.Lj195:
	jmp	.Lj11
.Lj196:
	jmp	.Lj11
.Lj197:
	jmp	.Lj11
.Lj198:
	jmp	.Lj11
.Lj199:
	jmp	.Lj11
.Lj200:
	jmp	.Lj11
.Lj201:
	jmp	.Lj11
.Lj202:
	jmp	.Lj11
.Lj203:
	jmp	.Lj11
.Lj204:
	jmp	.Lj11
.Lj205:
	jmp	.Lj11
.Lj206:
	jmp	.Lj11
.Lj207:
	jmp	.Lj11
.Lj208:
	jmp	.Lj11
.Lj209:
	jmp	.Lj11
.Lj210:
	jmp	.Lj11
.Lj211:
	jmp	.Lj11
.Lj212:
	jmp	.Lj11
.Lj213:
	jmp	.Lj11
.Lj214:
	jmp	.Lj11
.Lj215:
	jmp	.Lj11
.Lj216:
	jmp	.Lj11
.Lj217:
	jmp	.Lj11
.Lj218:
	jmp	.Lj11
.Lj219:
	jmp	.Lj11
.Lj220:
	jmp	.Lj11
.Lj221:
	jmp	.Lj11
.Lj222:
	jmp	.Lj11
.Lj223:
	jmp	.Lj11
.Lj224:
	jmp	.Lj11
.Lj225:
	jmp	.Lj11
.Lj226:
	jmp	.Lj11
.Lj227:
	jmp	.Lj11
.Lj228:
	jmp	.Lj11
.Lj229:
	jmp	.Lj11
.Lj230:
	jmp	.Lj11
.Lj231:
	jmp	.Lj11
.Lj232:
	jmp	.Lj11
.Lj233:
	jmp	.Lj11
.Lj234:
	jmp	.Lj11
.Lj235:
	jmp	.Lj11
.Lj236:
	jmp	.Lj11
.Lj237:
	jmp	.Lj11
.Lj238:
	jmp	.Lj11
.Lj239:
	jmp	.Lj11
.Lj240:
	jmp	.Lj11
.Lj241:
	jmp	.Lj11
.Lj242:
	jmp	.Lj11
.Lj243:
	jmp	.Lj11
.Lj244:
	jmp	.Lj11
.Lj245:
	jmp	.Lj11
.Lj246:
	jmp	.Lj11
.Lj247:
	jmp	.Lj11
.Lj248:
	jmp	.Lj11
.Lj249:
	jmp	.Lj11
.Lj250:
	jmp	.Lj11
.Lj251:
	jmp	.Lj11
.Lj252:
	jmp	.Lj11
.Lj253:
	jmp	.Lj11
.Lj254:
	jmp	.Lj11
.Lj255:
	jmp	.Lj11
.Lj256:
	jmp	.Lj11
.Lj257:
	jmp	.Lj11
.Lj258:
	jmp	.Lj11
.Lj259:
	jmp	.Lj11
.Lj260:
	jmp	.Lj11
.Lj261:
	jmp	.Lj11
.Lj262:
	jmp	.Lj11
.Lj263:
	jmp	.Lj11
.Lj264:
	jmp	.Lj11
.Lj265:
.Lj266:
.Lj12:
.Lj11:
.Ll160:
# [1154] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc2:
.Lt1:
.Ll161:

.section .data.n_UNIT65032_$$_EXEC65032,"d"
	.balign 4
.Ld1:
	.long	.Lj13-.Ld1
	.long	.Lj14-.Ld1
	.long	.Lj15-.Ld1
	.long	.Lj16-.Ld1
	.long	.Lj17-.Ld1
	.long	.Lj18-.Ld1
	.long	.Lj19-.Ld1
	.long	.Lj20-.Ld1
	.long	.Lj21-.Ld1
	.long	.Lj22-.Ld1
	.long	.Lj23-.Ld1
	.long	.Lj24-.Ld1
	.long	.Lj25-.Ld1
	.long	.Lj26-.Ld1
	.long	.Lj27-.Ld1
	.long	.Lj28-.Ld1
	.long	.Lj29-.Ld1
	.long	.Lj30-.Ld1
	.long	.Lj31-.Ld1
	.long	.Lj32-.Ld1
	.long	.Lj33-.Ld1
	.long	.Lj34-.Ld1
	.long	.Lj35-.Ld1
	.long	.Lj36-.Ld1
	.long	.Lj37-.Ld1
	.long	.Lj38-.Ld1
	.long	.Lj39-.Ld1
	.long	.Lj40-.Ld1
	.long	.Lj41-.Ld1
	.long	.Lj42-.Ld1
	.long	.Lj43-.Ld1
	.long	.Lj44-.Ld1
	.long	.Lj45-.Ld1
	.long	.Lj46-.Ld1
	.long	.Lj47-.Ld1
	.long	.Lj48-.Ld1
	.long	.Lj49-.Ld1
	.long	.Lj50-.Ld1
	.long	.Lj51-.Ld1
	.long	.Lj52-.Ld1
	.long	.Lj53-.Ld1
	.long	.Lj54-.Ld1
	.long	.Lj55-.Ld1
	.long	.Lj56-.Ld1
	.long	.Lj57-.Ld1
	.long	.Lj58-.Ld1
	.long	.Lj59-.Ld1
	.long	.Lj60-.Ld1
	.long	.Lj61-.Ld1
	.long	.Lj62-.Ld1
	.long	.Lj63-.Ld1
	.long	.Lj64-.Ld1
	.long	.Lj65-.Ld1
	.long	.Lj66-.Ld1
	.long	.Lj67-.Ld1
	.long	.Lj68-.Ld1
	.long	.Lj69-.Ld1
	.long	.Lj70-.Ld1
	.long	.Lj71-.Ld1
	.long	.Lj72-.Ld1
	.long	.Lj73-.Ld1
	.long	.Lj74-.Ld1
	.long	.Lj75-.Ld1
	.long	.Lj76-.Ld1
	.long	.Lj77-.Ld1
	.long	.Lj78-.Ld1
	.long	.Lj79-.Ld1
	.long	.Lj80-.Ld1
	.long	.Lj81-.Ld1
	.long	.Lj82-.Ld1
	.long	.Lj83-.Ld1
	.long	.Lj84-.Ld1
	.long	.Lj85-.Ld1
	.long	.Lj86-.Ld1
	.long	.Lj87-.Ld1
	.long	.Lj88-.Ld1
	.long	.Lj89-.Ld1
	.long	.Lj90-.Ld1
	.long	.Lj91-.Ld1
	.long	.Lj92-.Ld1
	.long	.Lj93-.Ld1
	.long	.Lj94-.Ld1
	.long	.Lj95-.Ld1
	.long	.Lj96-.Ld1
	.long	.Lj97-.Ld1
	.long	.Lj98-.Ld1
	.long	.Lj12-.Ld1
	.long	.Lj99-.Ld1
	.long	.Lj100-.Ld1
	.long	.Lj101-.Ld1
	.long	.Lj102-.Ld1
	.long	.Lj103-.Ld1
	.long	.Lj104-.Ld1
	.long	.Lj105-.Ld1
	.long	.Lj106-.Ld1
	.long	.Lj107-.Ld1
	.long	.Lj108-.Ld1
	.long	.Lj109-.Ld1
	.long	.Lj110-.Ld1
	.long	.Lj111-.Ld1
	.long	.Lj112-.Ld1
	.long	.Lj113-.Ld1
	.long	.Lj114-.Ld1
	.long	.Lj115-.Ld1
	.long	.Lj116-.Ld1
	.long	.Lj117-.Ld1
	.long	.Lj118-.Ld1
	.long	.Lj119-.Ld1
	.long	.Lj120-.Ld1
	.long	.Lj121-.Ld1
	.long	.Lj122-.Ld1
	.long	.Lj123-.Ld1
	.long	.Lj124-.Ld1
	.long	.Lj125-.Ld1
	.long	.Lj126-.Ld1
	.long	.Lj127-.Ld1
	.long	.Lj128-.Ld1
	.long	.Lj129-.Ld1
	.long	.Lj130-.Ld1
	.long	.Lj131-.Ld1
	.long	.Lj132-.Ld1
	.long	.Lj133-.Ld1
	.long	.Lj134-.Ld1
	.long	.Lj135-.Ld1
	.long	.Lj136-.Ld1
	.long	.Lj137-.Ld1
	.long	.Lj138-.Ld1
	.long	.Lj139-.Ld1
	.long	.Lj140-.Ld1
	.long	.Lj141-.Ld1
	.long	.Lj142-.Ld1
	.long	.Lj143-.Ld1
	.long	.Lj144-.Ld1
	.long	.Lj145-.Ld1
	.long	.Lj146-.Ld1
	.long	.Lj147-.Ld1
	.long	.Lj148-.Ld1
	.long	.Lj149-.Ld1
	.long	.Lj150-.Ld1
	.long	.Lj151-.Ld1
	.long	.Lj152-.Ld1
	.long	.Lj153-.Ld1
	.long	.Lj154-.Ld1
	.long	.Lj155-.Ld1
	.long	.Lj156-.Ld1
	.long	.Lj157-.Ld1
	.long	.Lj158-.Ld1
	.long	.Lj159-.Ld1
	.long	.Lj160-.Ld1
	.long	.Lj161-.Ld1
	.long	.Lj162-.Ld1
	.long	.Lj163-.Ld1
	.long	.Lj164-.Ld1
	.long	.Lj165-.Ld1
	.long	.Lj166-.Ld1
	.long	.Lj167-.Ld1
	.long	.Lj168-.Ld1
	.long	.Lj169-.Ld1
	.long	.Lj170-.Ld1
	.long	.Lj171-.Ld1
	.long	.Lj172-.Ld1
	.long	.Lj173-.Ld1
	.long	.Lj174-.Ld1
	.long	.Lj175-.Ld1
	.long	.Lj176-.Ld1
	.long	.Lj177-.Ld1
	.long	.Lj178-.Ld1
	.long	.Lj179-.Ld1
	.long	.Lj180-.Ld1
	.long	.Lj181-.Ld1
	.long	.Lj182-.Ld1
	.long	.Lj183-.Ld1
	.long	.Lj184-.Ld1
	.long	.Lj185-.Ld1
	.long	.Lj186-.Ld1
	.long	.Lj187-.Ld1
	.long	.Lj188-.Ld1
	.long	.Lj189-.Ld1
	.long	.Lj190-.Ld1
	.long	.Lj191-.Ld1
	.long	.Lj192-.Ld1
	.long	.Lj193-.Ld1
	.long	.Lj194-.Ld1
	.long	.Lj195-.Ld1
	.long	.Lj196-.Ld1
	.long	.Lj197-.Ld1
	.long	.Lj12-.Ld1
	.long	.Lj198-.Ld1
	.long	.Lj199-.Ld1
	.long	.Lj200-.Ld1
	.long	.Lj201-.Ld1
	.long	.Lj202-.Ld1
	.long	.Lj203-.Ld1
	.long	.Lj204-.Ld1
	.long	.Lj205-.Ld1
	.long	.Lj206-.Ld1
	.long	.Lj207-.Ld1
	.long	.Lj208-.Ld1
	.long	.Lj209-.Ld1
	.long	.Lj210-.Ld1
	.long	.Lj211-.Ld1
	.long	.Lj212-.Ld1
	.long	.Lj213-.Ld1
	.long	.Lj214-.Ld1
	.long	.Lj215-.Ld1
	.long	.Lj216-.Ld1
	.long	.Lj217-.Ld1
	.long	.Lj218-.Ld1
	.long	.Lj219-.Ld1
	.long	.Lj220-.Ld1
	.long	.Lj221-.Ld1
	.long	.Lj222-.Ld1
	.long	.Lj223-.Ld1
	.long	.Lj224-.Ld1
	.long	.Lj225-.Ld1
	.long	.Lj226-.Ld1
	.long	.Lj227-.Ld1
	.long	.Lj228-.Ld1
	.long	.Lj229-.Ld1
	.long	.Lj230-.Ld1
	.long	.Lj231-.Ld1
	.long	.Lj232-.Ld1
	.long	.Lj233-.Ld1
	.long	.Lj234-.Ld1
	.long	.Lj235-.Ld1
	.long	.Lj236-.Ld1
	.long	.Lj237-.Ld1
	.long	.Lj238-.Ld1
	.long	.Lj239-.Ld1
	.long	.Lj240-.Ld1
	.long	.Lj241-.Ld1
	.long	.Lj242-.Ld1
	.long	.Lj243-.Ld1
	.long	.Lj244-.Ld1
	.long	.Lj245-.Ld1
	.long	.Lj246-.Ld1
	.long	.Lj247-.Ld1
	.long	.Lj248-.Ld1
	.long	.Lj249-.Ld1
	.long	.Lj250-.Ld1
	.long	.Lj251-.Ld1
	.long	.Lj252-.Ld1
	.long	.Lj253-.Ld1
	.long	.Lj254-.Ld1
	.long	.Lj255-.Ld1
	.long	.Lj256-.Ld1
	.long	.Lj257-.Ld1
	.long	.Lj258-.Ld1
	.long	.Lj259-.Ld1
	.long	.Lj260-.Ld1
	.long	.Lj261-.Ld1
	.long	.Lj262-.Ld1
	.long	.Lj263-.Ld1
	.long	.Lj264-.Ld1
	.long	.Lj265-.Ld1
	.long	.Lj266-.Ld1
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
# [11] var ram:array[0..65535] of byte;
	.globl U_$UNIT65032_$$_RAM
U_$UNIT65032_$$_RAM:
	.zero 65536

.section .bss
# [12] status:byte;
	.globl U_$UNIT65032_$$_STATUS
U_$UNIT65032_$$_STATUS:
	.zero 1

.section .bss
	.balign 4
# [13] pc,sp,a,x,y:cardinal;
	.globl U_$UNIT65032_$$_PC
U_$UNIT65032_$$_PC:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UNIT65032_$$_SP
U_$UNIT65032_$$_SP:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UNIT65032_$$_A
U_$UNIT65032_$$_A:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UNIT65032_$$_X
U_$UNIT65032_$$_X:
	.zero 4

.section .bss
	.balign 4
	.globl U_$UNIT65032_$$_Y
U_$UNIT65032_$$_Y:
	.zero 4

.section .bss
	.balign 8
# [14] cs,ds:^int64;
	.globl U_$UNIT65032_$$_CS
U_$UNIT65032_$$_CS:
	.zero 8

.section .bss
	.balign 8
	.globl U_$UNIT65032_$$_DS
U_$UNIT65032_$$_DS:
	.zero 8

.section .bss
	.balign 8
# [15] ss,csa,dsa,csi,dsi:int64;
	.globl U_$UNIT65032_$$_SS
U_$UNIT65032_$$_SS:
	.zero 8

.section .bss
	.balign 8
	.globl U_$UNIT65032_$$_CSA
U_$UNIT65032_$$_CSA:
	.zero 8

.section .bss
	.balign 8
	.globl U_$UNIT65032_$$_DSA
U_$UNIT65032_$$_DSA:
	.zero 8

.section .bss
	.balign 8
	.globl U_$UNIT65032_$$_CSI
U_$UNIT65032_$$_CSI:
	.zero 8

.section .bss
	.balign 8
	.globl U_$UNIT65032_$$_DSI
U_$UNIT65032_$$_DSI:
	.zero 8

.section .bss
	.balign 2
# [16] value, aresult:word;
	.globl U_$UNIT65032_$$_VALUE
U_$UNIT65032_$$_VALUE:
	.zero 2

.section .bss
	.balign 2
	.globl U_$UNIT65032_$$_ARESULT
U_$UNIT65032_$$_ARESULT:
	.zero 2

.section .bss
	.balign 4
# [17] reladdr:integer;
	.globl U_$UNIT65032_$$_RELADDR
U_$UNIT65032_$$_RELADDR:
	.zero 4
# End asmlist al_globals
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc6:
	.long	.Lc8-.Lc7
.Lc7:
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
.Lc8:
	.long	.Lc10-.Lc9
.Lc9:
	.secrel32	.Lc6
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
.Lc10:
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
# [25] procedure exec65032;
	.ascii	"unit65032.pas\000"
	.ascii	"Free Pascal 3.0.4 2017/12/03\000"
	.ascii	"D:/Programowanie/20180824 retro-fm/\000"
	.byte	9
	.byte	3
	.secrel32	.Ldebug_line0
	.quad	DEBUGSTART_$UNIT65032
	.quad	DEBUGEND_$UNIT65032
# Syms - Begin unit UNIT65032 has index 14
# Symbol UNIT65032
# Symbol SYSTEM
# Symbol OBJPAS
# Symbol CLASSES
# Symbol SYSUTILS
# Symbol RAM
	.uleb128	2
	.ascii	"RAM\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT65032_$$_RAM
	.long	.La1-.Ldebug_info0
# Symbol STATUS
	.uleb128	2
	.ascii	"STATUS\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT65032_$$_STATUS
	.long	.La3-.Ldebug_info0
# Symbol PC
	.uleb128	2
	.ascii	"PC\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT65032_$$_PC
	.long	.La5-.Ldebug_info0
# Symbol SP
	.uleb128	2
	.ascii	"SP\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT65032_$$_SP
	.long	.La5-.Ldebug_info0
# Symbol A
	.uleb128	2
	.ascii	"A\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT65032_$$_A
	.long	.La5-.Ldebug_info0
# Symbol X
	.uleb128	2
	.ascii	"X\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT65032_$$_X
	.long	.La5-.Ldebug_info0
# Symbol Y
	.uleb128	2
	.ascii	"Y\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT65032_$$_Y
	.long	.La5-.Ldebug_info0
# Symbol CS
	.uleb128	2
	.ascii	"CS\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT65032_$$_CS
	.long	.La7-.Ldebug_info0
# Symbol DS
	.uleb128	2
	.ascii	"DS\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT65032_$$_DS
	.long	.La7-.Ldebug_info0
# Symbol SS
	.uleb128	2
	.ascii	"SS\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT65032_$$_SS
	.long	.La9-.Ldebug_info0
# Symbol CSA
	.uleb128	2
	.ascii	"CSA\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT65032_$$_CSA
	.long	.La9-.Ldebug_info0
# Symbol DSA
	.uleb128	2
	.ascii	"DSA\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT65032_$$_DSA
	.long	.La9-.Ldebug_info0
# Symbol CSI
	.uleb128	2
	.ascii	"CSI\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT65032_$$_CSI
	.long	.La9-.Ldebug_info0
# Symbol DSI
	.uleb128	2
	.ascii	"DSI\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT65032_$$_DSI
	.long	.La9-.Ldebug_info0
# Symbol VALUE
	.uleb128	2
	.ascii	"VALUE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT65032_$$_VALUE
	.long	.La11-.Ldebug_info0
# Symbol ARESULT
	.uleb128	2
	.ascii	"ARESULT\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT65032_$$_ARESULT
	.long	.La11-.Ldebug_info0
# Symbol RELADDR
	.uleb128	2
	.ascii	"RELADDR\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT65032_$$_RELADDR
	.long	.La13-.Ldebug_info0
# Symbol EXEC65032
# Syms - End unit UNIT65032 has index 14
# Syms - Begin Staticsymtable
# Symbol RETRO
# Symbol UNIT65032_$$_init$
# Syms - End Staticsymtable
# Procdef exec65032;
	.uleb128	3
	.ascii	"EXEC65032\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT65032_$$_EXEC65032
	.quad	.Lt1
# Symbol OPCODE
	.uleb128	4
	.ascii	"OPCODE\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La3-.Ldebug_info0
# Symbol EA
	.uleb128	4
	.ascii	"EA\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La9-.Ldebug_info0
# Symbol EAHELP
	.uleb128	4
	.ascii	"EAHELP\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La9-.Ldebug_info0
# Symbol EAHELP2
	.uleb128	4
	.ascii	"EAHELP2\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La9-.Ldebug_info0
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition Byte
.La3:
	.uleb128	5
	.ascii	"BYTE\000"
	.long	.La15-.Ldebug_info0
.La15:
	.uleb128	6
	.ascii	"BYTE\000"
	.byte	7
	.byte	1
.La4:
	.uleb128	7
	.long	.La3-.Ldebug_info0
# Definition Word
.La11:
	.uleb128	5
	.ascii	"WORD\000"
	.long	.La16-.Ldebug_info0
.La16:
	.uleb128	6
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La12:
	.uleb128	7
	.long	.La11-.Ldebug_info0
# Definition LongWord
.La5:
	.uleb128	5
	.ascii	"LONGWORD\000"
	.long	.La17-.Ldebug_info0
.La17:
	.uleb128	6
	.ascii	"LONGWORD\000"
	.byte	7
	.byte	4
.La6:
	.uleb128	7
	.long	.La5-.Ldebug_info0
# Definition LongInt
.La13:
	.uleb128	5
	.ascii	"LONGINT\000"
	.long	.La18-.Ldebug_info0
.La18:
	.uleb128	6
	.ascii	"LONGINT\000"
	.byte	5
	.byte	4
.La14:
	.uleb128	7
	.long	.La13-.Ldebug_info0
# Definition Int64
.La9:
	.uleb128	5
	.ascii	"INT64\000"
	.long	.La19-.Ldebug_info0
.La19:
	.uleb128	6
	.ascii	"Int64\000"
	.byte	5
	.byte	8
.La10:
	.uleb128	7
	.long	.La9-.Ldebug_info0
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
# Definition Array[0..65535] Of Byte
.La1:
	.uleb128	8
	.uleb128	65536
	.long	.La3-.Ldebug_info0
	.uleb128	9
	.sleb128	0
	.sleb128	65535
	.uleb128	1
	.long	.La11-.Ldebug_info0
	.byte	0
.La2:
	.uleb128	7
	.long	.La1-.Ldebug_info0
# Definition ^Int64
.La7:
	.uleb128	10
	.long	.La9-.Ldebug_info0
.La8:
	.uleb128	7
	.long	.La7-.Ldebug_info0
# Defs - End unit UNIT65032 has index 14
# Defs - Begin unit FMSYNTH has index 18
# Defs - End unit FMSYNTH has index 18
# Defs - Begin unit RETRO has index 12
# Defs - End unit RETRO has index 12
# Defs - Begin unit UNIT65032 has index 14
# Defs - End unit UNIT65032 has index 14
# Defs - Begin Staticsymtable
# Defs - End Staticsymtable
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
	.uleb128	22
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 6
	.uleb128	6
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
# Abbrev 7
	.uleb128	7
	.uleb128	16
	.byte	0
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 8
	.uleb128	8
	.uleb128	1
	.byte	1
	.uleb128	11
	.uleb128	15
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 9
	.uleb128	9
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
# Abbrev 10
	.uleb128	10
	.uleb128	15
	.byte	0
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
# [1158] 
	.ascii	"unit65032.pas\000"
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Lehdebug_line0:
# === header end ===
# function: UNIT65032_$$_EXEC65032
# [32:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	43
# [33:5]
	.byte	2
	.uleb128	.Ll2-.Ll1
	.byte	5
	.uleb128	5
	.byte	13
# [35:18]
	.byte	2
	.uleb128	.Ll3-.Ll2
	.byte	5
	.uleb128	18
	.byte	14
# [36:3]
	.byte	2
	.uleb128	.Ll4-.Ll3
	.byte	5
	.uleb128	3
	.byte	13
# [37:3]
	.byte	2
	.uleb128	.Ll5-.Ll4
	.byte	13
# [42:5]
	.byte	2
	.uleb128	.Ll6-.Ll5
	.byte	5
	.uleb128	5
	.byte	17
# [43:10]
	.byte	2
	.uleb128	.Ll7-.Ll6
	.byte	5
	.uleb128	10
	.byte	13
# [44:10]
	.byte	2
	.uleb128	.Ll8-.Ll7
	.byte	13
# [45:10]
	.byte	2
	.uleb128	.Ll9-.Ll8
	.byte	13
# [46:10]
	.byte	2
	.uleb128	.Ll10-.Ll9
	.byte	13
# [47:20]
	.byte	2
	.uleb128	.Ll11-.Ll10
	.byte	5
	.uleb128	20
	.byte	13
# [48:9]
	.byte	2
	.uleb128	.Ll12-.Ll11
	.byte	5
	.uleb128	9
	.byte	13
# [49:9]
	.byte	2
	.uleb128	.Ll13-.Ll12
	.byte	13
# [50:16]
	.byte	2
	.uleb128	.Ll14-.Ll13
	.byte	5
	.uleb128	16
	.byte	13
# [59:26]
	.byte	2
	.uleb128	.Ll15-.Ll14
	.byte	5
	.uleb128	26
	.byte	21
# [60:22]
	.byte	2
	.uleb128	.Ll16-.Ll15
	.byte	5
	.uleb128	22
	.byte	13
# [61:5]
	.byte	2
	.uleb128	.Ll17-.Ll16
	.byte	5
	.uleb128	5
	.byte	13
# [65:13]
	.byte	2
	.uleb128	.Ll18-.Ll17
	.byte	5
	.uleb128	13
	.byte	16
# [66:8]
	.byte	2
	.uleb128	.Ll19-.Ll18
	.byte	5
	.uleb128	8
	.byte	13
# [67:9]
	.byte	2
	.uleb128	.Ll20-.Ll19
	.byte	5
	.uleb128	9
	.byte	13
# [76:22]
	.byte	2
	.uleb128	.Ll21-.Ll20
	.byte	5
	.uleb128	22
	.byte	21
# [77:5]
	.byte	2
	.uleb128	.Ll22-.Ll21
	.byte	5
	.uleb128	5
	.byte	13
# [81:26]
	.byte	2
	.uleb128	.Ll23-.Ll22
	.byte	5
	.uleb128	26
	.byte	16
# [90:26]
	.byte	2
	.uleb128	.Ll24-.Ll23
	.byte	21
# [91:22]
	.byte	2
	.uleb128	.Ll25-.Ll24
	.byte	5
	.uleb128	22
	.byte	13
# [92:5]
	.byte	2
	.uleb128	.Ll26-.Ll25
	.byte	5
	.uleb128	5
	.byte	13
# [96:19]
	.byte	2
	.uleb128	.Ll27-.Ll26
	.byte	5
	.uleb128	19
	.byte	16
# [97:16]
	.byte	2
	.uleb128	.Ll28-.Ll27
	.byte	5
	.uleb128	16
	.byte	13
# [98:10]
	.byte	2
	.uleb128	.Ll29-.Ll28
	.byte	5
	.uleb128	10
	.byte	13
# [99:8]
	.byte	2
	.uleb128	.Ll30-.Ll29
	.byte	5
	.uleb128	8
	.byte	13
# [103:8]
	.byte	2
	.uleb128	.Ll31-.Ll30
	.byte	16
# [104:8]
	.byte	2
	.uleb128	.Ll32-.Ll31
	.byte	13
# [105:9]
	.byte	2
	.uleb128	.Ll33-.Ll32
	.byte	5
	.uleb128	9
	.byte	13
# [114:20]
	.byte	2
	.uleb128	.Ll34-.Ll33
	.byte	5
	.uleb128	20
	.byte	21
# [115:5]
	.byte	2
	.uleb128	.Ll35-.Ll34
	.byte	5
	.uleb128	5
	.byte	13
# [119:21]
	.byte	2
	.uleb128	.Ll36-.Ll35
	.byte	5
	.uleb128	21
	.byte	16
# [120:13]
	.byte	2
	.uleb128	.Ll37-.Ll36
	.byte	5
	.uleb128	13
	.byte	13
# [129:20]
	.byte	2
	.uleb128	.Ll38-.Ll37
	.byte	5
	.uleb128	20
	.byte	21
# [130:5]
	.byte	2
	.uleb128	.Ll39-.Ll38
	.byte	5
	.uleb128	5
	.byte	13
# [134:13]
	.byte	2
	.uleb128	.Ll40-.Ll39
	.byte	5
	.uleb128	13
	.byte	16
# [135:8]
	.byte	2
	.uleb128	.Ll41-.Ll40
	.byte	5
	.uleb128	8
	.byte	13
# [136:9]
	.byte	2
	.uleb128	.Ll42-.Ll41
	.byte	5
	.uleb128	9
	.byte	13
# [145:20]
	.byte	2
	.uleb128	.Ll43-.Ll42
	.byte	5
	.uleb128	20
	.byte	21
# [146:5]
	.byte	2
	.uleb128	.Ll44-.Ll43
	.byte	5
	.uleb128	5
	.byte	13
# [150:19]
	.byte	2
	.uleb128	.Ll45-.Ll44
	.byte	5
	.uleb128	19
	.byte	16
# [151:16]
	.byte	2
	.uleb128	.Ll46-.Ll45
	.byte	5
	.uleb128	16
	.byte	13
# [152:10]
	.byte	2
	.uleb128	.Ll47-.Ll46
	.byte	5
	.uleb128	10
	.byte	13
# [153:8]
	.byte	2
	.uleb128	.Ll48-.Ll47
	.byte	5
	.uleb128	8
	.byte	13
# [154:8]
	.byte	2
	.uleb128	.Ll49-.Ll48
	.byte	13
# [155:15]
	.byte	2
	.uleb128	.Ll50-.Ll49
	.byte	5
	.uleb128	15
	.byte	13
# [164:20]
	.byte	2
	.uleb128	.Ll51-.Ll50
	.byte	5
	.uleb128	20
	.byte	21
# [165:5]
	.byte	2
	.uleb128	.Ll52-.Ll51
	.byte	5
	.uleb128	5
	.byte	13
# [169:19]
	.byte	2
	.uleb128	.Ll53-.Ll52
	.byte	5
	.uleb128	19
	.byte	16
# [170:16]
	.byte	2
	.uleb128	.Ll54-.Ll53
	.byte	5
	.uleb128	16
	.byte	13
# [171:10]
	.byte	2
	.uleb128	.Ll55-.Ll54
	.byte	5
	.uleb128	10
	.byte	13
# [172:8]
	.byte	2
	.uleb128	.Ll56-.Ll55
	.byte	5
	.uleb128	8
	.byte	13
# [176:8]
	.byte	2
	.uleb128	.Ll57-.Ll56
	.byte	16
# [177:8]
	.byte	2
	.uleb128	.Ll58-.Ll57
	.byte	13
# [178:9]
	.byte	2
	.uleb128	.Ll59-.Ll58
	.byte	5
	.uleb128	9
	.byte	13
# [184:10]
	.byte	2
	.uleb128	.Ll60-.Ll59
	.byte	5
	.uleb128	10
	.byte	18
# [185:5]
	.byte	2
	.uleb128	.Ll61-.Ll60
	.byte	5
	.uleb128	5
	.byte	13
# [194:13]
	.byte	2
	.uleb128	.Ll62-.Ll61
	.byte	5
	.uleb128	13
	.byte	21
# [195:5]
	.byte	2
	.uleb128	.Ll63-.Ll62
	.byte	5
	.uleb128	5
	.byte	13
# [199:13]
	.byte	2
	.uleb128	.Ll64-.Ll63
	.byte	5
	.uleb128	13
	.byte	16
# [200:8]
	.byte	2
	.uleb128	.Ll65-.Ll64
	.byte	5
	.uleb128	8
	.byte	13
# [201:9]
	.byte	2
	.uleb128	.Ll66-.Ll65
	.byte	5
	.uleb128	9
	.byte	13
# [208:10]
	.byte	2
	.uleb128	.Ll67-.Ll66
	.byte	5
	.uleb128	10
	.byte	19
# [209:8]
	.byte	2
	.uleb128	.Ll68-.Ll67
	.byte	5
	.uleb128	8
	.byte	13
# [210:8]
	.byte	2
	.uleb128	.Ll69-.Ll68
	.byte	13
# [211:9]
	.byte	2
	.uleb128	.Ll70-.Ll69
	.byte	5
	.uleb128	9
	.byte	13
# [212:10]
	.byte	2
	.uleb128	.Ll71-.Ll70
	.byte	5
	.uleb128	10
	.byte	13
# [218:5]
	.byte	2
	.uleb128	.Ll72-.Ll71
	.byte	5
	.uleb128	5
	.byte	18
# [227:22]
	.byte	2
	.uleb128	.Ll73-.Ll72
	.byte	5
	.uleb128	22
	.byte	21
# [228:5]
	.byte	2
	.uleb128	.Ll74-.Ll73
	.byte	5
	.uleb128	5
	.byte	13
# [232:21]
	.byte	2
	.uleb128	.Ll75-.Ll74
	.byte	5
	.uleb128	21
	.byte	16
# [233:13]
	.byte	2
	.uleb128	.Ll76-.Ll75
	.byte	5
	.uleb128	13
	.byte	13
# [242:22]
	.byte	2
	.uleb128	.Ll77-.Ll76
	.byte	5
	.uleb128	22
	.byte	21
# [243:5]
	.byte	2
	.uleb128	.Ll78-.Ll77
	.byte	5
	.uleb128	5
	.byte	13
# [247:13]
	.byte	2
	.uleb128	.Ll79-.Ll78
	.byte	5
	.uleb128	13
	.byte	16
# [248:8]
	.byte	2
	.uleb128	.Ll80-.Ll79
	.byte	5
	.uleb128	8
	.byte	13
# [249:9]
	.byte	2
	.uleb128	.Ll81-.Ll80
	.byte	5
	.uleb128	9
	.byte	13
# [258:22]
	.byte	2
	.uleb128	.Ll82-.Ll81
	.byte	5
	.uleb128	22
	.byte	21
# [259:5]
	.byte	2
	.uleb128	.Ll83-.Ll82
	.byte	5
	.uleb128	5
	.byte	13
# [263:19]
	.byte	2
	.uleb128	.Ll84-.Ll83
	.byte	5
	.uleb128	19
	.byte	16
# [264:16]
	.byte	2
	.uleb128	.Ll85-.Ll84
	.byte	5
	.uleb128	16
	.byte	13
# [265:10]
	.byte	2
	.uleb128	.Ll86-.Ll85
	.byte	5
	.uleb128	10
	.byte	13
# [266:8]
	.byte	2
	.uleb128	.Ll87-.Ll86
	.byte	5
	.uleb128	8
	.byte	13
# [267:8]
	.byte	2
	.uleb128	.Ll88-.Ll87
	.byte	13
# [268:15]
	.byte	2
	.uleb128	.Ll89-.Ll88
	.byte	5
	.uleb128	15
	.byte	13
# [277:22]
	.byte	2
	.uleb128	.Ll90-.Ll89
	.byte	5
	.uleb128	22
	.byte	21
# [278:5]
	.byte	2
	.uleb128	.Ll91-.Ll90
	.byte	5
	.uleb128	5
	.byte	13
# [282:19]
	.byte	2
	.uleb128	.Ll92-.Ll91
	.byte	5
	.uleb128	19
	.byte	16
# [283:16]
	.byte	2
	.uleb128	.Ll93-.Ll92
	.byte	5
	.uleb128	16
	.byte	13
# [284:10]
	.byte	2
	.uleb128	.Ll94-.Ll93
	.byte	5
	.uleb128	10
	.byte	13
# [285:8]
	.byte	2
	.uleb128	.Ll95-.Ll94
	.byte	5
	.uleb128	8
	.byte	13
# [289:8]
	.byte	2
	.uleb128	.Ll96-.Ll95
	.byte	16
# [290:8]
	.byte	2
	.uleb128	.Ll97-.Ll96
	.byte	13
# [291:9]
	.byte	2
	.uleb128	.Ll98-.Ll97
	.byte	5
	.uleb128	9
	.byte	13
# [300:21]
	.byte	2
	.uleb128	.Ll99-.Ll98
	.byte	5
	.uleb128	21
	.byte	21
# [301:5]
	.byte	2
	.uleb128	.Ll100-.Ll99
	.byte	5
	.uleb128	5
	.byte	13
# [302:8]
	.byte	2
	.uleb128	.Ll101-.Ll100
	.byte	5
	.uleb128	8
	.byte	13
# [306:9]
	.byte	2
	.uleb128	.Ll102-.Ll101
	.byte	5
	.uleb128	9
	.byte	16
# [315:20]
	.byte	2
	.uleb128	.Ll103-.Ll102
	.byte	5
	.uleb128	20
	.byte	21
# [316:5]
	.byte	2
	.uleb128	.Ll104-.Ll103
	.byte	5
	.uleb128	5
	.byte	13
# [317:16]
	.byte	2
	.uleb128	.Ll105-.Ll104
	.byte	5
	.uleb128	16
	.byte	13
# [318:41]
	.byte	2
	.uleb128	.Ll106-.Ll105
	.byte	5
	.uleb128	41
	.byte	13
# [322:13]
	.byte	2
	.uleb128	.Ll107-.Ll106
	.byte	5
	.uleb128	13
	.byte	16
# [323:8]
	.byte	2
	.uleb128	.Ll108-.Ll107
	.byte	5
	.uleb128	8
	.byte	13
# [324:9]
	.byte	2
	.uleb128	.Ll109-.Ll108
	.byte	5
	.uleb128	9
	.byte	13
# [333:20]
	.byte	2
	.uleb128	.Ll110-.Ll109
	.byte	5
	.uleb128	20
	.byte	21
# [334:5]
	.byte	2
	.uleb128	.Ll111-.Ll110
	.byte	5
	.uleb128	5
	.byte	13
# [335:16]
	.byte	2
	.uleb128	.Ll112-.Ll111
	.byte	5
	.uleb128	16
	.byte	13
# [336:41]
	.byte	2
	.uleb128	.Ll113-.Ll112
	.byte	5
	.uleb128	41
	.byte	13
# [340:13]
	.byte	2
	.uleb128	.Ll114-.Ll113
	.byte	5
	.uleb128	13
	.byte	16
# [341:8]
	.byte	2
	.uleb128	.Ll115-.Ll114
	.byte	5
	.uleb128	8
	.byte	13
# [342:9]
	.byte	2
	.uleb128	.Ll116-.Ll115
	.byte	5
	.uleb128	9
	.byte	13
# [350:20]
	.byte	2
	.uleb128	.Ll117-.Ll116
	.byte	5
	.uleb128	20
	.byte	20
# [351:5]
	.byte	2
	.uleb128	.Ll118-.Ll117
	.byte	5
	.uleb128	5
	.byte	13
# [352:16]
	.byte	2
	.uleb128	.Ll119-.Ll118
	.byte	5
	.uleb128	16
	.byte	13
# [353:41]
	.byte	2
	.uleb128	.Ll120-.Ll119
	.byte	5
	.uleb128	41
	.byte	13
# [357:19]
	.byte	2
	.uleb128	.Ll121-.Ll120
	.byte	5
	.uleb128	19
	.byte	16
# [358:16]
	.byte	2
	.uleb128	.Ll122-.Ll121
	.byte	5
	.uleb128	16
	.byte	13
# [359:10]
	.byte	2
	.uleb128	.Ll123-.Ll122
	.byte	5
	.uleb128	10
	.byte	13
# [360:8]
	.byte	2
	.uleb128	.Ll124-.Ll123
	.byte	5
	.uleb128	8
	.byte	13
# [364:8]
	.byte	2
	.uleb128	.Ll125-.Ll124
	.byte	16
# [365:8]
	.byte	2
	.uleb128	.Ll126-.Ll125
	.byte	13
# [366:9]
	.byte	2
	.uleb128	.Ll127-.Ll126
	.byte	5
	.uleb128	9
	.byte	13
# [376:20]
	.byte	2
	.uleb128	.Ll128-.Ll127
	.byte	5
	.uleb128	20
	.byte	22
# [377:5]
	.byte	2
	.uleb128	.Ll129-.Ll128
	.byte	5
	.uleb128	5
	.byte	13
# [381:21]
	.byte	2
	.uleb128	.Ll130-.Ll129
	.byte	5
	.uleb128	21
	.byte	16
# [382:13]
	.byte	2
	.uleb128	.Ll131-.Ll130
	.byte	5
	.uleb128	13
	.byte	13
# [391:22]
	.byte	2
	.uleb128	.Ll132-.Ll131
	.byte	5
	.uleb128	22
	.byte	21
# [392:5]
	.byte	2
	.uleb128	.Ll133-.Ll132
	.byte	5
	.uleb128	5
	.byte	13
# [396:13]
	.byte	2
	.uleb128	.Ll134-.Ll133
	.byte	5
	.uleb128	13
	.byte	16
# [397:8]
	.byte	2
	.uleb128	.Ll135-.Ll134
	.byte	5
	.uleb128	8
	.byte	13
# [398:9]
	.byte	2
	.uleb128	.Ll136-.Ll135
	.byte	5
	.uleb128	9
	.byte	13
# [407:22]
	.byte	2
	.uleb128	.Ll137-.Ll136
	.byte	5
	.uleb128	22
	.byte	21
# [408:5]
	.byte	2
	.uleb128	.Ll138-.Ll137
	.byte	5
	.uleb128	5
	.byte	13
# [412:19]
	.byte	2
	.uleb128	.Ll139-.Ll138
	.byte	5
	.uleb128	19
	.byte	16
# [413:16]
	.byte	2
	.uleb128	.Ll140-.Ll139
	.byte	5
	.uleb128	16
	.byte	13
# [414:10]
	.byte	2
	.uleb128	.Ll141-.Ll140
	.byte	5
	.uleb128	10
	.byte	13
# [415:8]
	.byte	2
	.uleb128	.Ll142-.Ll141
	.byte	5
	.uleb128	8
	.byte	13
# [416:8]
	.byte	2
	.uleb128	.Ll143-.Ll142
	.byte	13
# [417:15]
	.byte	2
	.uleb128	.Ll144-.Ll143
	.byte	5
	.uleb128	15
	.byte	13
# [426:22]
	.byte	2
	.uleb128	.Ll145-.Ll144
	.byte	5
	.uleb128	22
	.byte	21
# [427:5]
	.byte	2
	.uleb128	.Ll146-.Ll145
	.byte	5
	.uleb128	5
	.byte	13
# [431:19]
	.byte	2
	.uleb128	.Ll147-.Ll146
	.byte	5
	.uleb128	19
	.byte	16
# [432:16]
	.byte	2
	.uleb128	.Ll148-.Ll147
	.byte	5
	.uleb128	16
	.byte	13
# [433:10]
	.byte	2
	.uleb128	.Ll149-.Ll148
	.byte	5
	.uleb128	10
	.byte	13
# [434:8]
	.byte	2
	.uleb128	.Ll150-.Ll149
	.byte	5
	.uleb128	8
	.byte	13
# [438:8]
	.byte	2
	.uleb128	.Ll151-.Ll150
	.byte	16
# [439:8]
	.byte	2
	.uleb128	.Ll152-.Ll151
	.byte	13
# [440:9]
	.byte	2
	.uleb128	.Ll153-.Ll152
	.byte	5
	.uleb128	9
	.byte	13
# [446:20]
	.byte	2
	.uleb128	.Ll154-.Ll153
	.byte	5
	.uleb128	20
	.byte	18
# [455:20]
	.byte	2
	.uleb128	.Ll155-.Ll154
	.byte	21
# [456:5]
	.byte	2
	.uleb128	.Ll156-.Ll155
	.byte	5
	.uleb128	5
	.byte	13
# [460:13]
	.byte	2
	.uleb128	.Ll157-.Ll156
	.byte	5
	.uleb128	13
	.byte	16
# [461:8]
	.byte	2
	.uleb128	.Ll158-.Ll157
	.byte	5
	.uleb128	8
	.byte	13
# [462:9]
	.byte	2
	.uleb128	.Ll159-.Ll158
	.byte	5
	.uleb128	9
	.byte	13
# [1154:1]
	.byte	2
	.uleb128	.Ll160-.Ll159
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	692
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll161
	.byte	0
	.byte	1
	.byte	1
# ###################
.Ledebug_line0:
# End asmlist al_dwarf_line
# Begin asmlist al_end

.section .text.z_DEBUGEND_$UNIT65032,"x"
.globl	DEBUGEND_$UNIT65032
DEBUGEND_$UNIT65032:
# End asmlist al_end

