	.file "unit6502.pas"
# Begin asmlist al_begin

.section .debug_line
.Ldebug_linesection0:
.Ldebug_line0:

.section .debug_abbrev
.Ldebug_abbrevsection0:
.Ldebug_abbrev0:

.section .text.b_DEBUGSTART_$UNIT6502,"x"
.globl	DEBUGSTART_$UNIT6502
DEBUGSTART_$UNIT6502:
# End asmlist al_begin
# Begin asmlist al_procedures

.section .text.n_unit6502_$$_read6502$int64$$byte,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_READ6502$INT64$$BYTE
UNIT6502_$$_READ6502$INT64$$BYTE:
.Lc1:
# Var address located in register rcx
# Var $result located in register al
# [unit6502.pas]
# [249] begin
.Ll1:
# [250] result:=ram[address and $FFFF];
	andq	$65535,%rcx
# Var $result located in register al
	leaq	U_$UNIT6502_$$_RAM(%rip),%rax
	movb	2(%rax,%rcx,1),%al
# PeepHole Optimization,var9
.Ll2:
# [251] end;
	andl	$255,%eax
	ret
.Lc2:
.Lt1:
.Ll3:

.section .text.n_unit6502_$$_write6502$int64$byte,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_WRITE6502$INT64$BYTE
UNIT6502_$$_WRITE6502$INT64$BYTE:
.Lc3:
# Var address located in register rax
# Var value located in register dl
.Ll4:
# [255] begin
	movq	%rcx,%rax
.Ll5:
# [256] ram[address and $FFFF]:=value;
	andq	$65535,%rax
# Var value located in register dl
	leaq	U_$UNIT6502_$$_RAM(%rip),%rcx
	movb	%dl,2(%rcx,%rax,1)
.Ll6:
# [257] end;
	ret
.Lc4:
.Lt2:
.Ll7:

.section .text.n_unit6502_$$_push32$longword,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PUSH32$LONGWORD
UNIT6502_$$_PUSH32$LONGWORD:
.Lc5:
.seh_proc UNIT6502_$$_PUSH32$LONGWORD
.Ll8:
# [263] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc7:
.seh_stackalloc 32
# Var pushval located in register ebx
.seh_endprologue
	movl	%ecx,%ebx
.Ll9:
# [264] write6502(BASE_STACK+sp,(pushval shr 24) and $FF);
	movl	%ebx,%edx
	shrl	$24,%edx
# PeepHole Optimization,var1
# PeepHole Optimization,var9
	andl	$255,%edx
	movzbl	U_$UNIT6502_$$_SP(%rip),%eax
	leaq	256(%rax),%rcx
	call	UNIT6502_$$_WRITE6502$INT64$BYTE
.Ll10:
# [265] write6502(BASE_STACK+((sp-1) and $FF),(pushval shr 16) and $FF);
	movzbl	U_$UNIT6502_$$_SP(%rip),%eax
	leaq	-1(%rax),%rax
	andq	$255,%rax
	leaq	256(%rax),%rcx
	movl	%ebx,%edx
	shrl	$16,%edx
# PeepHole Optimization,var1
# PeepHole Optimization,var9
	andl	$255,%edx
	call	UNIT6502_$$_WRITE6502$INT64$BYTE
.Ll11:
# [266] write6502(BASE_STACK+((sp-2) and $FF),(pushval shr 8) and $FF);
	movzbl	U_$UNIT6502_$$_SP(%rip),%eax
	leaq	-2(%rax),%rax
	andq	$255,%rax
	leaq	256(%rax),%rcx
	movl	%ebx,%edx
	shrl	$8,%edx
# PeepHole Optimization,var1
# PeepHole Optimization,var9
	andl	$255,%edx
	call	UNIT6502_$$_WRITE6502$INT64$BYTE
.Ll12:
# [267] write6502(BASE_STACK+((sp-3) and $FF),pushval and $FF);
	movzbl	U_$UNIT6502_$$_SP(%rip),%eax
	leaq	-3(%rax),%rax
	andq	$255,%rax
	leaq	256(%rax),%rcx
	movl	%ebx,%edx
# PeepHole Optimization,var1
# PeepHole Optimization,var9
	andl	$255,%edx
	call	UNIT6502_$$_WRITE6502$INT64$BYTE
.Ll13:
# [268] sp-=4;
	movzbl	U_$UNIT6502_$$_SP(%rip),%eax
	leal	-4(%eax),%eax
	movb	%al,U_$UNIT6502_$$_SP(%rip)
.Ll14:
# [269] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc6:
.Lt105:
.Ll15:

.section .text.n_unit6502_$$_push16$word,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PUSH16$WORD
UNIT6502_$$_PUSH16$WORD:
.Lc8:
.seh_proc UNIT6502_$$_PUSH16$WORD
.Ll16:
# [273] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc10:
.seh_stackalloc 32
# Var pushval located in register bx
.seh_endprologue
	movw	%cx,%bx
.Ll17:
# [274] write6502(BASE_STACK+sp,(pushval shr 8) and $FF);
	movzwl	%bx,%edx
	shrl	$8,%edx
# PeepHole Optimization,var1
# PeepHole Optimization,var9
	andl	$255,%edx
	movzbl	U_$UNIT6502_$$_SP(%rip),%eax
	leaq	256(%rax),%rcx
	call	UNIT6502_$$_WRITE6502$INT64$BYTE
.Ll18:
# [275] write6502(BASE_STACK+((sp-1) and $FF),pushval and $FF);
	movzbl	U_$UNIT6502_$$_SP(%rip),%eax
	leaq	-1(%rax),%rax
	andq	$255,%rax
	leaq	256(%rax),%rcx
	movw	%bx,%dx
# PeepHole Optimization,var1
# PeepHole Optimization,var9
	andl	$255,%edx
	call	UNIT6502_$$_WRITE6502$INT64$BYTE
.Ll19:
# [276] sp-=2;
	movzbl	U_$UNIT6502_$$_SP(%rip),%eax
	leal	-2(%eax),%eax
	movb	%al,U_$UNIT6502_$$_SP(%rip)
.Ll20:
# [277] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc9:
.Lt106:
.Ll21:

.section .text.n_unit6502_$$_push8$word,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PUSH8$WORD
UNIT6502_$$_PUSH8$WORD:
.Lc11:
.seh_proc UNIT6502_$$_PUSH8$WORD
.Ll22:
# [281] begin
	leaq	-40(%rsp),%rsp
.Lc13:
.seh_stackalloc 40
# Var pushval located in register ax
.seh_endprologue
	movw	%cx,%ax
.Ll23:
# [282] write6502(BASE_STACK+sp,pushval);
	movzbl	U_$UNIT6502_$$_SP(%rip),%edx
	leaq	256(%rdx),%rcx
	movb	%al,%dl
# PeepHole Optimization,var9
	andl	$255,%edx
	call	UNIT6502_$$_WRITE6502$INT64$BYTE
.Ll24:
# [283] dec(sp);
	subb	$1,U_$UNIT6502_$$_SP(%rip)
.Ll25:
# [284] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc12:
.Lt107:
.Ll26:

.section .text.n_unit6502_$$_pull32$$longword,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PULL32$$LONGWORD
UNIT6502_$$_PULL32$$LONGWORD:
.Lc14:
.seh_proc UNIT6502_$$_PULL32$$LONGWORD
.Ll27:
# [290] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc16:
.seh_stackalloc 32
# Var $result located in register eax
# Var temp32 located in register eax
.seh_endprologue
.Ll28:
# [291] temp32:=read6502(BASE_STACK + ((sp + 4) and $FF));
	movzbl	U_$UNIT6502_$$_SP(%rip),%eax
	leaq	4(%rax),%rax
	andq	$255,%rax
	leaq	256(%rax),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%bl
# PeepHole Optimization,var9
	andl	$255,%ebx
# Var temp32 located in register ebx
.Ll29:
# [292] temp32:=(temp32 shl 8) + read6502(BASE_STACK + ((sp + 3) and $FF));
	shll	$8,%ebx
	movzbl	U_$UNIT6502_$$_SP(%rip),%eax
	leaq	3(%rax),%rax
	andq	$255,%rax
	leaq	256(%rax),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	leal	(%ebx,%eax),%ebx
# Var temp32 located in register ebx
.Ll30:
# [293] temp32:=(temp32 shl 8) + read6502(BASE_STACK + ((sp + 2) and $FF));
	shll	$8,%ebx
	movzbl	U_$UNIT6502_$$_SP(%rip),%eax
	leaq	2(%rax),%rax
	andq	$255,%rax
	leaq	256(%rax),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	leal	(%ebx,%eax),%ebx
# Var temp32 located in register ebx
.Ll31:
# [294] temp32:=(temp32 shl 8) + read6502(BASE_STACK + ((sp + 1) and $FF));
	shll	$8,%ebx
	movzbl	U_$UNIT6502_$$_SP(%rip),%eax
	leaq	1(%rax),%rax
	andq	$255,%rax
	leaq	256(%rax),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	leal	(%ebx,%eax),%eax
# Var temp32 located in register eax
# Var $result located in register eax
# Var temp32 located in register eax
.Ll32:
# [296] sp+=4;
	movzbl	U_$UNIT6502_$$_SP(%rip),%edx
	leal	4(%edx),%edx
	movb	%dl,U_$UNIT6502_$$_SP(%rip)
.Ll33:
# [297] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc15:
.Lt108:
.Ll34:

.section .text.n_unit6502_$$_pull16$$word,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PULL16$$WORD
UNIT6502_$$_PULL16$$WORD:
.Lc17:
.seh_proc UNIT6502_$$_PULL16$$WORD
.Ll35:
# [303] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc19:
.seh_stackalloc 32
# Var $result located in register ax
# Var temp16 located in register ax
.seh_endprologue
.Ll36:
# [304] temp16:=read6502(BASE_STACK + ((sp + 2) and $FF));
	movzbl	U_$UNIT6502_$$_SP(%rip),%eax
	leaq	2(%rax),%rax
	andq	$255,%rax
	leaq	256(%rax),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%bl
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# Var temp16 located in register bx
# PeepHole Optimization,var11
.Ll37:
# [305] temp16:=(temp16 shl 8) + read6502(BASE_STACK + ((sp + 1) and $FF));
	andl	$255,%ebx
	shll	$8,%ebx
	movzbl	U_$UNIT6502_$$_SP(%rip),%eax
	leaq	1(%rax),%rax
	andq	$255,%rax
	leaq	256(%rax),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	leal	(%ebx,%eax),%eax
# Var temp16 located in register ax
# Var $result located in register ax
# Var temp16 located in register ax
.Ll38:
# [307] sp+=2;
	movzbl	U_$UNIT6502_$$_SP(%rip),%edx
	leal	2(%edx),%edx
	movb	%dl,U_$UNIT6502_$$_SP(%rip)
# PeepHole Optimization,var11
.Ll39:
# [308] end;
	andl	$65535,%eax
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc18:
.Lt109:
.Ll40:

.section .text.n_unit6502_$$_pull8$$byte,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PULL8$$BYTE
UNIT6502_$$_PULL8$$BYTE:
.Lc20:
.seh_proc UNIT6502_$$_PULL8$$BYTE
.Ll41:
# [312] begin
	leaq	-40(%rsp),%rsp
.Lc22:
.seh_stackalloc 40
# Var $result located in register al
.seh_endprologue
.Ll42:
# [313] inc(sp);
	addb	$1,U_$UNIT6502_$$_SP(%rip)
.Ll43:
# [314] result:=(read6502(BASE_STACK + sp));
	movzbl	U_$UNIT6502_$$_SP(%rip),%eax
	leaq	256(%rax),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# Var $result located in register al
# PeepHole Optimization,var9
.Ll44:
# [315] end;
	andl	$255,%eax
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc21:
.Lt110:
.Ll45:

.section .text.n_unit6502_$$_getvalue$$word,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_GETVALUE$$WORD
UNIT6502_$$_GETVALUE$$WORD:
.Lc23:
.seh_proc UNIT6502_$$_GETVALUE$$WORD
.Ll46:
# [321] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc25:
.seh_stackalloc 32
# Var $result located in register bx
# Var ea2 located in register rcx
.seh_endprologue
.Ll47:
# [322] ea2:=ea+ds^;
	movzwl	U_$UNIT6502_$$_EA(%rip),%edx
	movq	U_$UNIT6502_$$_DS(%rip),%rax
	movq	(%rax),%rax
	leaq	(%rdx,%rax),%rcx
# Var ea2 located in register rcx
.Ll48:
# [323] if (addrtable[opcode] = @acc) then
	movzbl	U_$UNIT6502_$$_OPCODE(%rip),%eax
	leaq	UNIT6502_$$_ACC(%rip),%rdx
	leaq	TC_$UNIT6502_$$_ADDRTABLE(%rip),%r8
	cmpq	(%r8,%rax,8),%rdx
	jne	.Lj96
.Ll49:
# [324] result:=a
	movzbw	U_$UNIT6502_$$_A(%rip),%ax
	movw	%ax,%bx
	jmp	.Lj99
.Lj96:
.Ll50:
# [326] result:=read6502(ea2);
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var7
	andw	$255,%ax
	movw	%ax,%bx
.Lj99:
.Ll51:
# [327] end;
	movzwl	%bx,%eax
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc24:
.Lt111:
.Ll52:

.section .text.n_unit6502_$$_getvalue16$$word,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_GETVALUE16$$WORD
UNIT6502_$$_GETVALUE16$$WORD:
.Lc26:
.seh_proc UNIT6502_$$_GETVALUE16$$WORD
.Ll53:
# [333] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc28:
.seh_stackalloc 40
# Var $result located in register ax
# Var ea2 located in register rbx
.seh_endprologue
.Ll54:
# [334] ea2:=ea+ds^;
	movzwl	U_$UNIT6502_$$_EA(%rip),%edx
	movq	U_$UNIT6502_$$_DS(%rip),%rax
	movq	(%rax),%rax
	leaq	(%rdx,%rax),%rbx
# Var ea2 located in register rbx
# Var ea2 located in register rbx
.Ll55:
# [335] result:=word(read6502(ea2)) or (word(read6502(ea2+1)) shl 8);
	movq	%rbx,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%sil
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%esi
	leaq	1(%rbx),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%eax
	shll	$8,%eax
	orl	%esi,%eax
# Var $result located in register ax
# PeepHole Optimization,var11
.Ll56:
# [336] end;
	andl	$65535,%eax
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc27:
.Lt112:
.Ll57:

.section .text.n_unit6502_$$_getvalue32$$longword,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_GETVALUE32$$LONGWORD
UNIT6502_$$_GETVALUE32$$LONGWORD:
.Lc29:
.seh_proc UNIT6502_$$_GETVALUE32$$LONGWORD
.Ll58:
# [342] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-32(%rsp),%rsp
.Lc31:
.seh_stackalloc 32
# Var $result located in register eax
# Var ea2 located in register rbx
.seh_endprologue
.Ll59:
# [344] ea2:=ea+ds^;
	movzwl	U_$UNIT6502_$$_EA(%rip),%edx
	movq	U_$UNIT6502_$$_DS(%rip),%rax
	movq	(%rax),%rax
	leaq	(%rdx,%rax),%rbx
# Var ea2 located in register rbx
# Var ea2 located in register rbx
.Ll60:
# [346] result:=cardinal(read6502(ea2))
	movq	%rbx,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%sil
# PeepHole Optimization,var9
	andl	$255,%esi
.Ll61:
# [347] or (cardinal(read6502(ea2+1)) shl 8)
	leaq	1(%rbx),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%dil
# PeepHole Optimization,var9
	andl	$255,%edi
	shll	$8,%edi
	orl	%esi,%edi
.Ll62:
# [348] or (cardinal(read6502(ea2+2)) shl 16)
	leaq	2(%rbx),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%sil
# PeepHole Optimization,var9
	andl	$255,%esi
	shll	$16,%esi
	orl	%edi,%esi
.Ll63:
# [349] or (cardinal(read6502(ea2+3)) shl 24);
	leaq	3(%rbx),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	shll	$24,%eax
	orl	%esi,%eax
# Var $result located in register eax
.Ll64:
# [350] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc30:
.Lt113:
.Ll65:

.section .text.n_unit6502_$$_putvalue$word,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PUTVALUE$WORD
UNIT6502_$$_PUTVALUE$WORD:
.Lc32:
.seh_proc UNIT6502_$$_PUTVALUE$WORD
.Ll66:
# [356] begin
	leaq	-40(%rsp),%rsp
.Lc34:
.seh_stackalloc 40
# Var saveval located in register dx
# Var ea2 located in register rcx
.seh_endprologue
	movw	%cx,%dx
.Ll67:
# [357] ea2:=ea+ds^;
	movzwl	U_$UNIT6502_$$_EA(%rip),%ecx
	movq	U_$UNIT6502_$$_DS(%rip),%rax
	movq	(%rax),%rax
	leaq	(%rcx,%rax),%rcx
# Var ea2 located in register rcx
.Ll68:
# [358] if (addrtable[opcode] = @acc) then a := byte(saveval and $00FF) else write6502(ea2, (saveval and $00FF));
	movzbl	U_$UNIT6502_$$_OPCODE(%rip),%eax
	leaq	UNIT6502_$$_ACC(%rip),%r8
	leaq	TC_$UNIT6502_$$_ADDRTABLE(%rip),%r9
	cmpq	(%r9,%rax,8),%r8
	jne	.Lj133
	movw	%dx,%ax
	andw	$255,%ax
	movb	%al,U_$UNIT6502_$$_A(%rip)
	jmp	.Lj136
.Lj133:
# PeepHole Optimization,var1
# PeepHole Optimization,var9
	andl	$255,%edx
	call	UNIT6502_$$_WRITE6502$INT64$BYTE
.Lj136:
.Ll69:
# [359] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc33:
.Lt114:
.Ll70:

.section .text.n_unit6502_$$_putvalue32$longword,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PUTVALUE32$LONGWORD
UNIT6502_$$_PUTVALUE32$LONGWORD:
.Lc35:
.seh_proc UNIT6502_$$_PUTVALUE32$LONGWORD
.Ll71:
# [365] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc37:
.seh_stackalloc 40
# Var saveval located in register ebx
# Var ea2 located in register rsi
.seh_endprologue
	movl	%ecx,%ebx
.Ll72:
# [367] ea2:=ea+ds^;
	movzwl	U_$UNIT6502_$$_EA(%rip),%edx
	movq	U_$UNIT6502_$$_DS(%rip),%rax
	movq	(%rax),%rax
	leaq	(%rdx,%rax),%rsi
# Var ea2 located in register rsi
.Ll73:
# [369] write6502(ea2, (saveval and $000000FF));
	movl	%ebx,%edx
# PeepHole Optimization,var1
# PeepHole Optimization,var9
	andl	$255,%edx
# Var ea2 located in register rsi
	movq	%rsi,%rcx
	call	UNIT6502_$$_WRITE6502$INT64$BYTE
.Ll74:
# [370] write6502(ea2+1, ((saveval shl 8) and $000000FF));
	movl	%ebx,%edx
	shll	$8,%edx
# PeepHole Optimization,var1
# PeepHole Optimization,var9
	andl	$255,%edx
	leaq	1(%rsi),%rcx
	call	UNIT6502_$$_WRITE6502$INT64$BYTE
.Ll75:
# [371] write6502(ea2+2, ((saveval shl 16) and $000000FF));
	movl	%ebx,%edx
	shll	$16,%edx
# PeepHole Optimization,var1
# PeepHole Optimization,var9
	andl	$255,%edx
	leaq	2(%rsi),%rcx
	call	UNIT6502_$$_WRITE6502$INT64$BYTE
.Ll76:
# [372] write6502(ea2+3, ((saveval shl 24) and $000000FF));
	movl	%ebx,%edx
	shll	$24,%edx
# PeepHole Optimization,var1
# PeepHole Optimization,var9
	andl	$255,%edx
	leaq	3(%rsi),%rcx
	call	UNIT6502_$$_WRITE6502$INT64$BYTE
.Ll77:
# [373] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc36:
.Lt115:
.Ll78:

.section .text.n_unit6502_$$_reset6502,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_RESET6502
UNIT6502_$$_RESET6502:
.Lc38:
.seh_proc UNIT6502_$$_RESET6502
.Ll79:
# [377] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc40:
.seh_stackalloc 32
.seh_endprologue
.Ll80:
# [378] pc := word(read6502($FFFC)) or (word(read6502($FFFD) shl 8));
	movq	$65532,%rax
	movq	%rax,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%bl
# PeepHole Optimization,var7
	andw	$255,%bx
	movq	$65533,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	shll	$8,%eax
	orw	%bx,%ax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll81:
# [379] a := 0;
	movb	$0,U_$UNIT6502_$$_A(%rip)
.Ll82:
# [380] x := 0;
	movb	$0,U_$UNIT6502_$$_X(%rip)
.Ll83:
# [381] y := 0;
	movb	$0,U_$UNIT6502_$$_Y(%rip)
.Ll84:
# [382] sp := $FD;
	movb	$253,U_$UNIT6502_$$_SP(%rip)
.Ll85:
# [383] ds:=@dsa;
	leaq	U_$UNIT6502_$$_DSA(%rip),%rax
	movq	%rax,U_$UNIT6502_$$_DS(%rip)
.Ll86:
# [384] cs:=@csa;
	leaq	U_$UNIT6502_$$_CSA(%rip),%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,U_$UNIT6502_$$_CS(%rip)
.Ll87:
# [385] cs^:=0; ds^:=0; csi:=0; dsi:=0;
	movq	$0,(%rax)
	movq	U_$UNIT6502_$$_DS(%rip),%rax
	movq	$0,(%rax)
	movq	$0,U_$UNIT6502_$$_CSI(%rip)
	movq	$0,U_$UNIT6502_$$_DSI(%rip)
# PeepHole Optimization,var3
.Ll88:
# [386] status:=status or FLAG_CONSTANT;
	orb	$32,U_$UNIT6502_$$_STATUS(%rip)
.Ll89:
# [387] clockgoal6502:=0;
	movq	$0,TC_$UNIT6502_$$_CLOCKGOAL6502(%rip)
.Ll90:
# [388] instructions:=0;
	movq	$0,TC_$UNIT6502_$$_INSTRUCTIONS(%rip)
.Ll91:
# [389] clockticks6502:=0;
	movq	$0,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Ll92:
# [391] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc39:
.Lt3:
.Ll93:

.section .text.n_unit6502_$$_nmi6502,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_NMI6502
UNIT6502_$$_NMI6502:
.Lc41:
.seh_proc UNIT6502_$$_NMI6502
.Ll94:
# [395] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc43:
.seh_stackalloc 32
.seh_endprologue
.Ll95:
# [396] push16(pc);
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	movl	%eax,%ecx
	call	UNIT6502_$$_PUSH16$WORD
.Ll96:
# [397] push8(status);
	movzbw	U_$UNIT6502_$$_STATUS(%rip),%cx
# PeepHole Optimization,var11
	andl	$65535,%ecx
	call	UNIT6502_$$_PUSH8$WORD
# PeepHole Optimization,var3
.Ll97:
# [398] status :=status or FLAG_INTERRUPT;
	orb	$4,U_$UNIT6502_$$_STATUS(%rip)
.Ll98:
# [399] pc := word(read6502($FFFA)) or (word(read6502($FFFB)) << 8);
	movq	$65530,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%bl
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%ebx
	movq	$65531,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%eax
	shll	$8,%eax
	orl	%ebx,%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll99:
# [400] cs:=@csi;
	leaq	U_$UNIT6502_$$_CSI(%rip),%rax
	movq	%rax,U_$UNIT6502_$$_CS(%rip)
.Ll100:
# [401] ds:=@dsi;
	leaq	U_$UNIT6502_$$_DSI(%rip),%rax
	movq	%rax,U_$UNIT6502_$$_DS(%rip)
.Ll101:
# [402] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc42:
.Lt4:
.Ll102:

.section .text.n_unit6502_$$_irq6502,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_IRQ6502
UNIT6502_$$_IRQ6502:
.Lc44:
.seh_proc UNIT6502_$$_IRQ6502
.Ll103:
# [406] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc46:
.seh_stackalloc 32
.seh_endprologue
.Ll104:
# [407] push16(pc);
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	movl	%eax,%ecx
	call	UNIT6502_$$_PUSH16$WORD
.Ll105:
# [408] push8(status);
	movzbw	U_$UNIT6502_$$_STATUS(%rip),%cx
# PeepHole Optimization,var11
	andl	$65535,%ecx
	call	UNIT6502_$$_PUSH8$WORD
# PeepHole Optimization,var3
.Ll106:
# [409] status :=status or FLAG_INTERRUPT;
	orb	$4,U_$UNIT6502_$$_STATUS(%rip)
.Ll107:
# [410] pc := word(read6502($FFFE)) or (word(read6502($FFFF)) << 8);
	movq	$65534,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%bl
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%ebx
	movq	$65535,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%eax
	shll	$8,%eax
	orl	%ebx,%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll108:
# [411] cs:=@csi;
	leaq	U_$UNIT6502_$$_CSI(%rip),%rax
	movq	%rax,U_$UNIT6502_$$_CS(%rip)
.Ll109:
# [412] ds:=@dsi;
	leaq	U_$UNIT6502_$$_DSI(%rip),%rax
	movq	%rax,U_$UNIT6502_$$_DS(%rip)
.Ll110:
# [413] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc45:
.Lt5:
.Ll111:

.section .text.n_unit6502_$$_exec6502$int64,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_EXEC6502$INT64
UNIT6502_$$_EXEC6502$INT64:
.Lc47:
.seh_proc UNIT6502_$$_EXEC6502$INT64
.Ll112:
# [417] begin
	leaq	-40(%rsp),%rsp
.Lc49:
.seh_stackalloc 40
# Var tickcount located in register rax
.seh_endprologue
	movq	%rcx,%rax
.Ll113:
# [418] clockgoal6502 += tickcount;
	movq	TC_$UNIT6502_$$_CLOCKGOAL6502(%rip),%rdx
	leaq	(%rdx,%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_CLOCKGOAL6502(%rip)
.Ll114:
# [419] while (clockticks6502 < clockgoal6502) do
	jmp	.Lj238
	.balign 8,0x90
.Lj237:
.Ll115:
# [421] opcode := read6502(pc+cs^);
	movzwl	U_$UNIT6502_$$_PC(%rip),%edx
	movq	U_$UNIT6502_$$_CS(%rip),%rax
	movq	(%rax),%rax
	leaq	(%rdx,%rax),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,U_$UNIT6502_$$_OPCODE(%rip)
.Ll116:
# [422] pc+=1;
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	leal	1(%eax),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll117:
# [424] penaltyop := 0;
	movb	$0,U_$UNIT6502_$$_PENALTYOP(%rip)
.Ll118:
# [425] penaltyaddr := 0;
	movb	$0,U_$UNIT6502_$$_PENALTYADDR(%rip)
.Ll119:
# [426] addrtable[opcode];
	movzbl	U_$UNIT6502_$$_OPCODE(%rip),%edx
	leaq	TC_$UNIT6502_$$_ADDRTABLE(%rip),%rax
	call	*(%rax,%rdx,8)
.Ll120:
# [427] optable[opcode];
	movzbl	U_$UNIT6502_$$_OPCODE(%rip),%edx
	leaq	TC_$UNIT6502_$$_OPTABLE(%rip),%rax
	call	*(%rax,%rdx,8)
.Ll121:
# [428] clockticks6502 += ticktable[opcode];
	movzbl	U_$UNIT6502_$$_OPCODE(%rip),%eax
	leaq	TC_$UNIT6502_$$_TICKTABLE(%rip),%rdx
	movzbl	(%rdx,%rax,1),%edx
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Ll122:
# [429] if (penaltyop<>0) and (penaltyaddr<>0) then  clockticks6502+=1;
	cmpb	$0,U_$UNIT6502_$$_PENALTYOP(%rip)
	je	.Lj253
	cmpb	$0,U_$UNIT6502_$$_PENALTYADDR(%rip)
	je	.Lj253
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Lj253:
.Ll123:
# [430] instructions+=1;
	movq	TC_$UNIT6502_$$_INSTRUCTIONS(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_INSTRUCTIONS(%rip)
.Lj238:
.Ll124:
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	cmpq	TC_$UNIT6502_$$_CLOCKGOAL6502(%rip),%rax
	jl	.Lj237
.Ll125:
# [432] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc48:
.Lt6:
.Ll126:

.section .text.n_unit6502_$$_fast6502$int64,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_FAST6502$INT64
UNIT6502_$$_FAST6502$INT64:
.Lc50:
.seh_proc UNIT6502_$$_FAST6502$INT64
.Ll127:
# [436] begin
	leaq	-40(%rsp),%rsp
.Lc52:
.seh_stackalloc 40
# Var tickcount located in register rax
.seh_endprologue
	movq	%rcx,%rax
.Ll128:
# [437] clockgoal6502 += tickcount;
	movq	TC_$UNIT6502_$$_CLOCKGOAL6502(%rip),%rdx
	leaq	(%rdx,%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_CLOCKGOAL6502(%rip)
.Ll129:
# [438] while (clockticks6502 < clockgoal6502) do
	jmp	.Lj264
	.balign 8,0x90
.Lj263:
.Ll130:
# [440] opcode := read6502(pc+cs^);
	movzwl	U_$UNIT6502_$$_PC(%rip),%edx
	movq	U_$UNIT6502_$$_CS(%rip),%rax
	movq	(%rax),%rax
	leaq	(%rdx,%rax),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,U_$UNIT6502_$$_OPCODE(%rip)
.Ll131:
# [441] pc+=1;
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	leal	1(%eax),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll132:
# [442] addrtable[opcode];
	movzbl	U_$UNIT6502_$$_OPCODE(%rip),%edx
	leaq	TC_$UNIT6502_$$_ADDRTABLE(%rip),%rax
	call	*(%rax,%rdx,8)
.Ll133:
# [443] optable[opcode];
	movzbl	U_$UNIT6502_$$_OPCODE(%rip),%eax
	leaq	TC_$UNIT6502_$$_OPTABLE(%rip),%rdx
	call	*(%rdx,%rax,8)
.Ll134:
# [444] clockticks6502 += 1;
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Ll135:
# [445] instructions+=1;
	movq	TC_$UNIT6502_$$_INSTRUCTIONS(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_INSTRUCTIONS(%rip)
.Lj264:
.Ll136:
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	cmpq	TC_$UNIT6502_$$_CLOCKGOAL6502(%rip),%rax
	jl	.Lj263
.Ll137:
# [447] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc51:
.Lt7:
.Ll138:

.section .text.n_unit6502_$$_step6502,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_STEP6502
UNIT6502_$$_STEP6502:
.Lc53:
.seh_proc UNIT6502_$$_STEP6502
.Ll139:
# [451] begin
	leaq	-40(%rsp),%rsp
.Lc55:
.seh_stackalloc 40
.seh_endprologue
.Ll140:
# [452] opcode := read6502(pc+cs^);
	movzwl	U_$UNIT6502_$$_PC(%rip),%edx
	movq	U_$UNIT6502_$$_CS(%rip),%rax
	movq	(%rax),%rax
	leaq	(%rdx,%rax),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,U_$UNIT6502_$$_OPCODE(%rip)
.Ll141:
# [453] pc+=1;
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	leal	1(%eax),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
# PeepHole Optimization,var3
.Ll142:
# [454] status :=status or FLAG_CONSTANT;
	orb	$32,U_$UNIT6502_$$_STATUS(%rip)
.Ll143:
# [455] penaltyop := 0;
	movb	$0,U_$UNIT6502_$$_PENALTYOP(%rip)
.Ll144:
# [456] penaltyaddr := 0;
	movb	$0,U_$UNIT6502_$$_PENALTYADDR(%rip)
.Ll145:
# [457] addrtable[opcode];
	movzbl	U_$UNIT6502_$$_OPCODE(%rip),%eax
	leaq	TC_$UNIT6502_$$_ADDRTABLE(%rip),%rdx
	call	*(%rdx,%rax,8)
.Ll146:
# [458] optable[opcode];
	movzbl	U_$UNIT6502_$$_OPCODE(%rip),%edx
	leaq	TC_$UNIT6502_$$_OPTABLE(%rip),%rax
	call	*(%rax,%rdx,8)
.Ll147:
# [459] clockticks6502 += ticktable[opcode];
	movzbl	U_$UNIT6502_$$_OPCODE(%rip),%eax
	leaq	TC_$UNIT6502_$$_TICKTABLE(%rip),%rdx
	movzbl	(%rdx,%rax,1),%edx
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Ll148:
# [460] if (penaltyop<>0) and (penaltyaddr<>0) then clockticks6502+=1;
	cmpb	$0,U_$UNIT6502_$$_PENALTYOP(%rip)
	je	.Lj293
	cmpb	$0,U_$UNIT6502_$$_PENALTYADDR(%rip)
	je	.Lj293
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Lj293:
.Ll149:
# [461] clockgoal6502 := clockticks6502;
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	movq	%rax,TC_$UNIT6502_$$_CLOCKGOAL6502(%rip)
.Ll150:
# [462] instructions+=1;
	movq	TC_$UNIT6502_$$_INSTRUCTIONS(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_INSTRUCTIONS(%rip)
.Ll151:
# [463] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc54:
.Lt8:
.Ll152:

.section .text.n_unit6502_$$_jsr6502$word$int64,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_JSR6502$WORD$INT64
UNIT6502_$$_JSR6502$WORD$INT64:
.Lc56:
.seh_proc UNIT6502_$$_JSR6502$WORD$INT64
.Ll153:
# [470] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc58:
.seh_stackalloc 32
# Var aa located in register cx
# Var addr located in register rdx
# Var depth located in register ebx
.seh_endprologue
.Ll154:
# [472] pc:=addr;
	movw	%dx,U_$UNIT6502_$$_PC(%rip)
.Ll155:
# [473] sp := $FD;
	movb	$253,U_$UNIT6502_$$_SP(%rip)
# Var depth located in register ebx
.Ll156:
# [474] depth:=0;
	movl	$0,%ebx
.Ll157:
# [475] if aa<256 then begin a:=aa; x:=0; y:=0; status:=0; end;
	cmpw	$256,%cx
	jnb	.Lj310
	movb	%cl,U_$UNIT6502_$$_A(%rip)
	movb	$0,U_$UNIT6502_$$_X(%rip)
	movb	$0,U_$UNIT6502_$$_Y(%rip)
	movb	$0,U_$UNIT6502_$$_STATUS(%rip)
.Lj310:
.Ll158:
# [476] instructions:=0;
	movq	$0,TC_$UNIT6502_$$_INSTRUCTIONS(%rip)
	.balign 8,0x90
.Lj321:
.Ll159:
# [478] opcode := read6502(pc+cs^);
	movzwl	U_$UNIT6502_$$_PC(%rip),%edx
	movq	U_$UNIT6502_$$_CS(%rip),%rax
	movq	(%rax),%rax
	leaq	(%rdx,%rax),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,U_$UNIT6502_$$_OPCODE(%rip)
.Ll160:
# [479] if opcode=$20 then inc(depth);
	cmpb	$32,U_$UNIT6502_$$_OPCODE(%rip)
	jne	.Lj329
	addl	$1,%ebx
.Lj329:
.Ll161:
# [480] if opcode=$60 then dec(depth);
	cmpb	$96,U_$UNIT6502_$$_OPCODE(%rip)
	jne	.Lj331
	subl	$1,%ebx
.Lj331:
.Ll162:
# [482] pc+=1;
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	leal	1(%eax),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll163:
# [483] addrtable[opcode];
	movzbl	U_$UNIT6502_$$_OPCODE(%rip),%eax
	leaq	TC_$UNIT6502_$$_ADDRTABLE(%rip),%rdx
	call	*(%rdx,%rax,8)
.Ll164:
# [484] optable[opcode];
	movzbl	U_$UNIT6502_$$_OPCODE(%rip),%edx
	leaq	TC_$UNIT6502_$$_OPTABLE(%rip),%rax
	call	*(%rax,%rdx,8)
.Ll165:
# [485] instructions+=1;
	movq	TC_$UNIT6502_$$_INSTRUCTIONS(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_INSTRUCTIONS(%rip)
.Ll166:
# [487] until (depth<0) or (instructions>3000);
	cmpl	$0,%ebx
	jl	.Lj323
	cmpq	$3000,TC_$UNIT6502_$$_INSTRUCTIONS(%rip)
	jng	.Lj321
.Lj323:
.Ll167:
# [489] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc57:
.Lt9:
.Ll168:

.section .text.n_unit6502_$$_imp,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_IMP
UNIT6502_$$_IMP:
.Lc59:
# [495] begin
.Ll169:
# [496] end;
	ret
.Lc60:
.Lt10:
.Ll170:

.section .text.n_unit6502_$$_acc,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_ACC
UNIT6502_$$_ACC:
.Lc61:
# [500] begin
.Ll171:
# [501] end;
	ret
.Lc62:
.Lt14:
.Ll172:

.section .text.n_unit6502_$$_imm,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_IMM
UNIT6502_$$_IMM:
.Lc63:
# [505] begin
.Ll173:
# [506] ea := pc;
	movw	U_$UNIT6502_$$_PC(%rip),%ax
	movw	%ax,U_$UNIT6502_$$_EA(%rip)
.Ll174:
# [507] inc(pc);
	addw	$1,U_$UNIT6502_$$_PC(%rip)
.Ll175:
# [508] end;
	ret
.Lc64:
.Lt13:
.Ll176:

.section .text.n_unit6502_$$_zp,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_ZP
UNIT6502_$$_ZP:
.Lc65:
.seh_proc UNIT6502_$$_ZP
.Ll177:
# [512] begin
	leaq	-40(%rsp),%rsp
.Lc67:
.seh_stackalloc 40
.seh_endprologue
.Ll178:
# [513] ea := word(read6502(pc));
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	movq	%rax,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var7
	andw	$255,%ax
	movw	%ax,U_$UNIT6502_$$_EA(%rip)
.Ll179:
# [514] inc(pc);
	addw	$1,U_$UNIT6502_$$_PC(%rip)
.Ll180:
# [515] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc66:
.Lt12:
.Ll181:

.section .text.n_unit6502_$$_zpx,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_ZPX
UNIT6502_$$_ZPX:
.Lc68:
.seh_proc UNIT6502_$$_ZPX
.Ll182:
# [519] begin
	leaq	-40(%rsp),%rsp
.Lc70:
.seh_stackalloc 40
.seh_endprologue
.Ll183:
# [520] ea := ((read6502(pc)+x) and $FF); //zero-page wraparound
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	movq	%rax,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	movzbl	U_$UNIT6502_$$_X(%rip),%edx
	leal	(%eax,%edx),%eax
	andl	$255,%eax
	movw	%ax,U_$UNIT6502_$$_EA(%rip)
.Ll184:
# [521] inc(pc)
	addw	$1,U_$UNIT6502_$$_PC(%rip)
.Ll185:
# [522] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc69:
.Lt21:
.Ll186:

.section .text.n_unit6502_$$_zpy,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_ZPY
UNIT6502_$$_ZPY:
.Lc71:
.seh_proc UNIT6502_$$_ZPY
.Ll187:
# [526] begin
	leaq	-40(%rsp),%rsp
.Lc73:
.seh_stackalloc 40
.seh_endprologue
.Ll188:
# [527] ea := ((read6502(pc)+y) and $FF); //zero-page wraparound
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	movq	%rax,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	movzbl	U_$UNIT6502_$$_Y(%rip),%edx
	leal	(%eax,%edx),%eax
	andl	$255,%eax
	movw	%ax,U_$UNIT6502_$$_EA(%rip)
.Ll189:
# [528] inc(pc)
	addw	$1,U_$UNIT6502_$$_PC(%rip)
.Ll190:
# [529] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc72:
.Lt22:
.Ll191:

.section .text.n_unit6502_$$_rel,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_REL
UNIT6502_$$_REL:
.Lc74:
.seh_proc UNIT6502_$$_REL
.Ll192:
# [533] begin
	leaq	-40(%rsp),%rsp
.Lc76:
.seh_stackalloc 40
.seh_endprologue
.Ll193:
# [534] reladdr := word(read6502(pc));
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	movq	%rax,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var7
	andw	$255,%ax
	movw	%ax,U_$UNIT6502_$$_RELADDR(%rip)
.Ll194:
# [535] inc(pc);
	addw	$1,U_$UNIT6502_$$_PC(%rip)
.Ll195:
# [536] if (reladdr and $80)<>0 then reladdr:=reladdr or $FF00;
	movw	U_$UNIT6502_$$_RELADDR(%rip),%ax
	andw	$128,%ax
	testw	%ax,%ax
	je	.Lj370
# PeepHole Optimization,var2
# P=movw
# HP1=orw
# HP2=movw
# PeepHole Optimization,var2
	orw	$65280,U_$UNIT6502_$$_RELADDR(%rip)
.Lj370:
.Ll196:
# [537] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc75:
.Lt16:
.Ll197:

.section .text.n_unit6502_$$_abso,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_ABSO
UNIT6502_$$_ABSO:
.Lc77:
.seh_proc UNIT6502_$$_ABSO
.Ll198:
# [541] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc79:
.seh_stackalloc 32
.seh_endprologue
.Ll199:
# [542] ea := word(read6502(pc)) or (word(read6502(pc+1)) shl 8);
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	movq	%rax,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%bl
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%ebx
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	leaq	1(%rax),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%eax
	shll	$8,%eax
	orl	%ebx,%eax
	movw	%ax,U_$UNIT6502_$$_EA(%rip)
.Ll200:
# [543] pc += 2;
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	leal	2(%eax),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll201:
# [544] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc78:
.Lt15:
.Ll202:

.section .text.n_unit6502_$$_absx,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_ABSX
UNIT6502_$$_ABSX:
.Lc80:
.seh_proc UNIT6502_$$_ABSX
.Ll203:
# [550] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc82:
.seh_stackalloc 32
# Var startpage located in register ax
.seh_endprologue
.Ll204:
# [551] ea := word(read6502(pc)) or (word(read6502(pc+1)) shl 8);
	movzwl	U_$UNIT6502_$$_PC(%rip),%ecx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%bl
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%ebx
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	leaq	1(%rax),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%eax
	shll	$8,%eax
	orl	%ebx,%eax
# PeepHole Optimization,MovMov2Mov1
	movw	%ax,U_$UNIT6502_$$_EA(%rip)
.Ll205:
# [552] startpage := ea and $FF00;
	andw	$65280,%ax
# Var startpage located in register ax
.Ll206:
# [553] ea += x;
	movzwl	U_$UNIT6502_$$_EA(%rip),%ecx
	movzbl	U_$UNIT6502_$$_X(%rip),%edx
	leal	(%ecx,%edx),%edx
# PeepHole Optimization,MovMov2Mov1
	movw	%dx,U_$UNIT6502_$$_EA(%rip)
.Ll207:
# [554] if (startpage <> (ea and $FF00)) then penaltyaddr := 1;   //one cycle penlty for page-crossing on some opcodes
	andw	$65280,%dx
	cmpw	%ax,%dx
	je	.Lj396
	movb	$1,U_$UNIT6502_$$_PENALTYADDR(%rip)
.Lj396:
.Ll208:
# [555] pc += 2;
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	leal	2(%eax),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll209:
# [556] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc81:
.Lt19:
.Ll210:

.section .text.n_unit6502_$$_absy,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_ABSY
UNIT6502_$$_ABSY:
.Lc83:
.seh_proc UNIT6502_$$_ABSY
.Ll211:
# [562] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc85:
.seh_stackalloc 32
# Var startpage located in register ax
.seh_endprologue
.Ll212:
# [563] ea := word(read6502(pc)) or (word(read6502(pc+1)) shl 8);
	movzwl	U_$UNIT6502_$$_PC(%rip),%ecx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%bl
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%ebx
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	leaq	1(%rax),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%eax
	shll	$8,%eax
	orl	%ebx,%eax
# PeepHole Optimization,MovMov2Mov1
	movw	%ax,U_$UNIT6502_$$_EA(%rip)
.Ll213:
# [564] startpage := ea and $FF00;
	andw	$65280,%ax
# Var startpage located in register ax
.Ll214:
# [565] ea += y;
	movzwl	U_$UNIT6502_$$_EA(%rip),%ecx
	movzbl	U_$UNIT6502_$$_Y(%rip),%edx
	leal	(%ecx,%edx),%edx
# PeepHole Optimization,MovMov2Mov1
	movw	%dx,U_$UNIT6502_$$_EA(%rip)
.Ll215:
# [566] if (startpage <> (ea and $FF00)) then penaltyaddr := 1; //one cycle penlty for page-crossing on some opcodes
	andw	$65280,%dx
	cmpw	%ax,%dx
	je	.Lj414
	movb	$1,U_$UNIT6502_$$_PENALTYADDR(%rip)
.Lj414:
.Ll216:
# [567] pc += 2;
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	leal	2(%eax),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll217:
# [568] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc84:
.Lt18:
.Ll218:

.section .text.n_unit6502_$$_ind,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_IND
UNIT6502_$$_IND:
.Lc86:
.seh_proc UNIT6502_$$_IND
.Ll219:
# [574] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc88:
.seh_stackalloc 40
# Var eahelp located in register cx
# Var eahelp2 located in register bx
.seh_endprologue
.Ll220:
# [575] eahelp := word(read6502(pc)) or (word(read6502(pc+1)) shl 8);
	movzwl	U_$UNIT6502_$$_PC(%rip),%ecx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%bl
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%ebx
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	leaq	1(%rax),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%cl
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%ecx
	shll	$8,%ecx
	orl	%ebx,%ecx
# Var eahelp located in register cx
.Ll221:
# [576] eahelp2 := (eahelp and $FF00) or ((eahelp + 1) and $00FF); //replicate 6502 page-boundary wraparound bug
	movzwl	%cx,%eax
	leal	1(%eax),%eax
	andl	$255,%eax
	movw	%cx,%bx
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$65280,%ebx
	orl	%eax,%ebx
# Var eahelp2 located in register bx
# PeepHole Optimization,var11
.Ll222:
# [577] ea := word(read6502(eahelp)) or (word(read6502(eahelp2)) shl 8);
	andl	$65535,%ecx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%sil
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%esi
	movzwl	%bx,%ecx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%eax
	shll	$8,%eax
	orl	%esi,%eax
	movw	%ax,U_$UNIT6502_$$_EA(%rip)
.Ll223:
# [580] pc += 2;
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	leal	2(%eax),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll224:
# [581] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc87:
.Lt20:
.Ll225:

.section .text.n_unit6502_$$_izp,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_IZP
UNIT6502_$$_IZP:
.Lc89:
.seh_proc UNIT6502_$$_IZP
.Ll226:
# [587] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc91:
.seh_stackalloc 40
# Var eahelp located in register bx
.seh_endprologue
.Ll227:
# [588] eahelp := word(read6502(pc)) and $FF; //zero-page wraparound for table pointer
	movzwl	U_$UNIT6502_$$_PC(%rip),%ecx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%bl
# PeepHole Optimization,var4
# PeepHole Optimization,var7
	andw	$255,%bx
# Var eahelp located in register bx
.Ll228:
# [589] inc(pc);
	addw	$1,U_$UNIT6502_$$_PC(%rip)
.Ll229:
# [590] ea := word(read6502(eahelp and $00FF)) or (word(read6502((eahelp+1) and $00FF)) shl 8);
	movw	%bx,%cx
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%ecx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%sil
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%esi
# PeepHole Optimization,var11
	andl	$65535,%ebx
	leaq	1(%rbx),%rcx
	andq	$255,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%eax
	shll	$8,%eax
	orl	%esi,%eax
	movw	%ax,U_$UNIT6502_$$_EA(%rip)
.Ll230:
# [591] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc90:
.Lt23:
.Ll231:

.section .text.n_unit6502_$$_indx,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_INDX
UNIT6502_$$_INDX:
.Lc92:
.seh_proc UNIT6502_$$_INDX
.Ll232:
# [598] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc94:
.seh_stackalloc 40
# Var eahelp located in register bx
.seh_endprologue
.Ll233:
# [599] eahelp := (word(read6502(pc) + x) and $FF); //zero-page wraparound for table pointer
	movzwl	U_$UNIT6502_$$_PC(%rip),%ecx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	movzbl	U_$UNIT6502_$$_X(%rip),%edx
	leal	(%eax,%edx),%ebx
	andw	$255,%bx
# Var eahelp located in register bx
.Ll234:
# [600] inc(pc);
	addw	$1,U_$UNIT6502_$$_PC(%rip)
.Ll235:
# [601] ea := word(read6502(eahelp and $00FF)) or (word(read6502((eahelp+1) and $00FF)) shl 8);
	movw	%bx,%cx
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%ecx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%sil
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%esi
# PeepHole Optimization,var11
	andl	$65535,%ebx
	leaq	1(%rbx),%rcx
	andq	$255,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%eax
	shll	$8,%eax
	orl	%esi,%eax
	movw	%ax,U_$UNIT6502_$$_EA(%rip)
.Ll236:
# [602] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc93:
.Lt11:
.Ll237:

.section .text.n_unit6502_$$_iax,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_IAX
UNIT6502_$$_IAX:
.Lc95:
.seh_proc UNIT6502_$$_IAX
.Ll238:
# [608] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc97:
.seh_stackalloc 40
# Var eahelp located in register bx
.seh_endprologue
.Ll239:
# [609] eahelp := word(read6502(pc))+(word(read6502(pc+1) shl 8)+ y); //zero-page wraparound for table pointer
	movzwl	U_$UNIT6502_$$_PC(%rip),%ecx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%bl
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%ebx
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	leaq	1(%rax),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	shll	$8,%eax
# PeepHole Optimization,var11
	andl	$65535,%eax
	movzbl	U_$UNIT6502_$$_Y(%rip),%edx
	leal	(%eax,%edx),%eax
	leal	(%ebx,%eax),%ebx
# Var eahelp located in register bx
.Ll240:
# [610] pc+=2;
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	leal	2(%eax),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll241:
# [611] ea := word(read6502(eahelp and $00FF)) or (word(read6502((eahelp+1) and $00FF)) shl 8);
	movw	%bx,%cx
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%ecx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%sil
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%esi
# PeepHole Optimization,var11
	andl	$65535,%ebx
	leaq	1(%rbx),%rcx
	andq	$255,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%eax
	shll	$8,%eax
	orl	%esi,%eax
	movw	%ax,U_$UNIT6502_$$_EA(%rip)
.Ll242:
# [612] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc96:
.Lt24:
.Ll243:

.section .text.n_unit6502_$$_indy,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_INDY
UNIT6502_$$_INDY:
.Lc98:
.seh_proc UNIT6502_$$_INDY
.Ll244:
# [618] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc100:
.seh_stackalloc 40
# Var eahelp located in register cx
# Var eahelp2 located in register bx
# Var startpage located in register ax
.seh_endprologue
.Ll245:
# [619] eahelp := word(read6502(pc));
	movzwl	U_$UNIT6502_$$_PC(%rip),%ecx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%cl
# PeepHole Optimization,var7
	andw	$255,%cx
# Var eahelp located in register cx
.Ll246:
# [620] inc(pc);
	addw	$1,U_$UNIT6502_$$_PC(%rip)
.Ll247:
# [621] eahelp2 := (eahelp and $FF00) or ((eahelp + 1) and $00FF); //zero-page wraparound
	movzwl	%cx,%eax
	leal	1(%eax),%eax
	andl	$255,%eax
	movw	%cx,%bx
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$65280,%ebx
	orl	%eax,%ebx
# Var eahelp2 located in register bx
# PeepHole Optimization,var11
.Ll248:
# [622] ea := word(read6502(eahelp)) or (word(read6502(eahelp2)) shl 8);
	andl	$65535,%ecx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%sil
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%esi
	movzwl	%bx,%ecx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%eax
	shll	$8,%eax
	orl	%esi,%eax
# PeepHole Optimization,MovMov2Mov1
	movw	%ax,U_$UNIT6502_$$_EA(%rip)
.Ll249:
# [623] startpage := ea and $FF00;
	andw	$65280,%ax
# Var startpage located in register ax
.Ll250:
# [624] ea += y;
	movzwl	U_$UNIT6502_$$_EA(%rip),%edx
	movzbl	U_$UNIT6502_$$_Y(%rip),%ecx
	leal	(%edx,%ecx),%edx
# PeepHole Optimization,MovMov2Mov1
	movw	%dx,U_$UNIT6502_$$_EA(%rip)
.Ll251:
# [625] if (startpage <> (ea and $FF00)) then penaltyaddr := 1; //one cycle penlty for page-crossing on some opcodes
	andw	$65280,%dx
	cmpw	%ax,%dx
	je	.Lj496
	movb	$1,U_$UNIT6502_$$_PENALTYADDR(%rip)
.Lj496:
.Ll252:
# [626] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc99:
.Lt17:
.Ll253:

.section .text.n_unit6502_$$_adc,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_ADC
UNIT6502_$$_ADC:
.Lc101:
.seh_proc UNIT6502_$$_ADC
.Ll254:
# [634] begin
	leaq	-40(%rsp),%rsp
.Lc103:
.seh_stackalloc 40
.seh_endprologue
.Ll255:
# [635] penaltyop := 1;
	movb	$1,U_$UNIT6502_$$_PENALTYOP(%rip)
.Ll256:
# [636] value := getvalue;
	call	UNIT6502_$$_GETVALUE$$WORD
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll257:
# [637] aresult := word(value)+a+(status and FLAG_CARRY);
	movzwl	U_$UNIT6502_$$_VALUE(%rip),%eax
	movzbl	U_$UNIT6502_$$_A(%rip),%edx
	leal	(%eax,%edx),%edx
# PeepHole Optimization,var15
	movw	U_$UNIT6502_$$_STATUS(%rip),%ax
	andw	$1,%ax
	movswl	%ax,%eax
	leal	(%edx,%eax),%eax
# PeepHole Optimization,MovMov2Mov1
	movw	%ax,U_$UNIT6502_$$_ARESULT(%rip)
.Ll258:
# [638] if (aresult and $FF00) <>0 then setcarry else clearcarry;
	andw	$65280,%ax
	testw	%ax,%ax
	je	.Lj508
# PeepHole Optimization,var3
.Ll259:
# [217] {$define setcarry:= status :=status or FLAG_CARRY}
	orb	$1,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj511
.Lj508:
# PeepHole Optimization,var3
.Ll260:
# [218] {$define clearcarry:= status := status and not(FLAG_CARRY)}
	andb	$-2,U_$UNIT6502_$$_STATUS(%rip)
.Lj511:
.Ll261:
# [639] if (aresult and $00FF)<>0 then clearzero else setzero;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$255,%ax
	testw	%ax,%ax
	je	.Lj515
# PeepHole Optimization,var3
.Ll262:
# [220] {$define clearzero:= status:= status and not(FLAG_ZERO)}
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj518
.Lj515:
# PeepHole Optimization,var3
.Ll263:
# [219] {$define setzero:= status :=status or FLAG_ZERO}
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj518:
.Ll264:
# [640] if ((aresult xor a) and (aresult xor value) and $0080)<>0 then
	movzbw	U_$UNIT6502_$$_A(%rip),%dx
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	xorw	%dx,%ax
	movw	U_$UNIT6502_$$_ARESULT(%rip),%cx
	movw	U_$UNIT6502_$$_VALUE(%rip),%dx
	xorw	%cx,%dx
	andw	%ax,%dx
	andw	$128,%dx
	testw	%dx,%dx
	je	.Lj522
# PeepHole Optimization,var3
.Ll265:
# [225] {$define setoverflow:= status :=status or FLAG_OVERFLOW}
	orb	$64,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj525
.Lj522:
# PeepHole Optimization,var3
.Ll266:
# [226] {$define clearoverflow:= status := status and not(FLAG_OVERFLOW)}
	andb	$-65,U_$UNIT6502_$$_STATUS(%rip)
.Lj525:
.Ll267:
# [644] if (aresult and $0080)<>0 then setsign else clearsign;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$128,%ax
	testw	%ax,%ax
	je	.Lj529
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll268:
# [227] {$define setsign:= status :=status or FLAG_SIGN}
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj532
.Lj529:
# PeepHole Optimization,var3
.Ll269:
# [228] {$define clearsign:= status := status and not(FLAG_SIGN)}
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj532:
# PeepHole Optimization,var15
.Ll270:
# [645] if (status and FLAG_DECIMAL)<>0 then
	movw	U_$UNIT6502_$$_STATUS(%rip),%ax
	andw	$8,%ax
	testw	%ax,%ax
	je	.Lj536
.Ll271:
# [647] inc(clockticks6502);
	addq	$1,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
# PeepHole Optimization,var3
.Ll272:
	andb	$-2,U_$UNIT6502_$$_STATUS(%rip)
# PeepHole Optimization,var15
.Ll273:
# [649] if ((a and $0F) > $09) then a += $06;
	movw	U_$UNIT6502_$$_A(%rip),%ax
	andw	$15,%ax
	cmpw	$9,%ax
	jng	.Lj540
	movzbl	U_$UNIT6502_$$_A(%rip),%eax
	leal	6(%eax),%eax
	movb	%al,U_$UNIT6502_$$_A(%rip)
.Lj540:
.Ll274:
# [650] if ((a and $F0) > $90) then
	movb	U_$UNIT6502_$$_A(%rip),%al
	andb	$240,%al
	cmpb	$144,%al
	jna	.Lj544
.Ll275:
# [652] a += $60;
	movzbl	U_$UNIT6502_$$_A(%rip),%eax
	leal	96(%eax),%eax
	movb	%al,U_$UNIT6502_$$_A(%rip)
# PeepHole Optimization,var3
.Ll276:
	orb	$1,U_$UNIT6502_$$_STATUS(%rip)
.Lj544:
.Lj536:
.Ll277:
# [656] a:=byte(aresult and $00FF);
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$255,%ax
	movb	%al,U_$UNIT6502_$$_A(%rip)
.Ll278:
# [657] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc102:
.Lt50:
.Ll279:

.section .text.n_unit6502_$$_ana,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_ANA
UNIT6502_$$_ANA:
.Lc104:
.seh_proc UNIT6502_$$_ANA
.Ll280:
# [661] begin
	leaq	-40(%rsp),%rsp
.Lc106:
.seh_stackalloc 40
.seh_endprologue
.Ll281:
# [662] penaltyop := 1;
	movb	$1,U_$UNIT6502_$$_PENALTYOP(%rip)
.Ll282:
# [663] value := getvalue;
	call	UNIT6502_$$_GETVALUE$$WORD
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll283:
# [664] aresult := a and value;
	movzbw	U_$UNIT6502_$$_A(%rip),%dx
	movw	U_$UNIT6502_$$_VALUE(%rip),%ax
	andw	%dx,%ax
# PeepHole Optimization,MovMov2Mov1
	movw	%ax,U_$UNIT6502_$$_ARESULT(%rip)
.Ll284:
# [665] if (aresult and $00FF)<>0 then clearzero else setzero;
	andw	$255,%ax
	testw	%ax,%ax
	je	.Lj560
# PeepHole Optimization,var3
.Ll285:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj563
.Lj560:
# PeepHole Optimization,var3
.Ll286:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj563:
.Ll287:
# [666] if (aresult and $0080)<>0 then setsign else clearsign;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$128,%ax
	testw	%ax,%ax
	je	.Lj567
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll288:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj570
.Lj567:
# PeepHole Optimization,var3
.Ll289:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj570:
.Ll290:
# [667] a:=byte(aresult and $00FF);
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$255,%ax
	movb	%al,U_$UNIT6502_$$_A(%rip)
.Ll291:
# [668] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc105:
.Lt28:
.Ll292:

.section .text.n_unit6502_$$_asl,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_ASL
UNIT6502_$$_ASL:
.Lc107:
.seh_proc UNIT6502_$$_ASL
.Ll293:
# [672] begin
	leaq	-40(%rsp),%rsp
.Lc109:
.seh_stackalloc 40
.seh_endprologue
.Ll294:
# [673] value := getvalue;
	call	UNIT6502_$$_GETVALUE$$WORD
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll295:
# [674] aresult := value shl 1;
	movzwl	U_$UNIT6502_$$_VALUE(%rip),%eax
	shll	$1,%eax
# PeepHole Optimization,MovMov2Mov1
	movw	%ax,U_$UNIT6502_$$_ARESULT(%rip)
.Ll296:
# [675] if (aresult and $FF00) <>0 then setcarry else clearcarry;
	andw	$65280,%ax
	testw	%ax,%ax
	je	.Lj582
# PeepHole Optimization,var3
.Ll297:
	orb	$1,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj585
.Lj582:
# PeepHole Optimization,var3
.Ll298:
	andb	$-2,U_$UNIT6502_$$_STATUS(%rip)
.Lj585:
.Ll299:
# [676] if (aresult and $00FF)<>0 then clearzero else setzero;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$255,%ax
	testw	%ax,%ax
	je	.Lj589
# PeepHole Optimization,var3
.Ll300:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj592
.Lj589:
# PeepHole Optimization,var3
.Ll301:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj592:
.Ll302:
# [677] if (aresult and $0080)<>0 then setsign else clearsign;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$128,%ax
	testw	%ax,%ax
	je	.Lj596
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll303:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj599
.Lj596:
# PeepHole Optimization,var3
.Ll304:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj599:
.Ll305:
# [678] putvalue(aresult);
	movzwl	U_$UNIT6502_$$_ARESULT(%rip),%ecx
	call	UNIT6502_$$_PUTVALUE$WORD
.Ll306:
# [679] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc108:
.Lt30:
.Ll307:

.section .text.n_unit6502_$$_bcc,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_BCC
UNIT6502_$$_BCC:
.Lc110:
# [683] begin
# PeepHole Optimization,var15
.Ll308:
# [684] if ((status and FLAG_CARRY) = 0) then
	movw	U_$UNIT6502_$$_STATUS(%rip),%ax
	andw	$1,%ax
	testw	%ax,%ax
	jne	.Lj607
.Ll309:
# [686] oldpc := pc;
	movw	U_$UNIT6502_$$_PC(%rip),%ax
	movw	%ax,U_$UNIT6502_$$_OLDPC(%rip)
.Ll310:
# [687] pc += reladdr;
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	movzwl	U_$UNIT6502_$$_RELADDR(%rip),%edx
	leal	(%eax,%edx),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll311:
# [688] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	movw	U_$UNIT6502_$$_OLDPC(%rip),%ax
	andw	$65280,%ax
	movw	U_$UNIT6502_$$_PC(%rip),%dx
	andw	$65280,%dx
	cmpw	%dx,%ax
	je	.Lj613
.Ll312:
# [689] else clockticks6502+=1;
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	2(%rax),%rax
.Ll313:
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
	jmp	.Lj616
.Lj613:
.Ll314:
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Lj616:
.Lj607:
.Ll315:
# [691] end;
	ret
.Lc111:
.Lt62:
.Ll316:

.section .text.n_unit6502_$$_bcs,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_BCS
UNIT6502_$$_BCS:
.Lc112:
# [695] begin
# PeepHole Optimization,var15
.Ll317:
# [696] if ((status and FLAG_CARRY) = FLAG_CARRY) then
	movw	U_$UNIT6502_$$_STATUS(%rip),%ax
	andw	$1,%ax
	cmpw	$1,%ax
	jne	.Lj622
.Ll318:
# [698] oldpc := pc;
	movw	U_$UNIT6502_$$_PC(%rip),%ax
	movw	%ax,U_$UNIT6502_$$_OLDPC(%rip)
.Ll319:
# [699] pc += reladdr;
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	movzwl	U_$UNIT6502_$$_RELADDR(%rip),%edx
	leal	(%eax,%edx),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll320:
# [700] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	movw	U_$UNIT6502_$$_OLDPC(%rip),%ax
	andw	$65280,%ax
	movw	U_$UNIT6502_$$_PC(%rip),%dx
	andw	$65280,%dx
	cmpw	%dx,%ax
	je	.Lj628
.Ll321:
# [701] else clockticks6502+=1;
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	2(%rax),%rax
.Ll322:
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
	jmp	.Lj631
.Lj628:
.Ll323:
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Lj631:
.Lj622:
.Ll324:
# [703] end;
	ret
.Lc113:
.Lt71:
.Ll325:

.section .text.n_unit6502_$$_beq,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_BEQ
UNIT6502_$$_BEQ:
.Lc114:
# [707] begin
# PeepHole Optimization,var15
.Ll326:
# [708] if ((status and FLAG_ZERO) = FLAG_ZERO) then
	movw	U_$UNIT6502_$$_STATUS(%rip),%ax
	andw	$2,%ax
	cmpw	$2,%ax
	jne	.Lj637
.Ll327:
# [710] oldpc := pc;
	movw	U_$UNIT6502_$$_PC(%rip),%ax
	movw	%ax,U_$UNIT6502_$$_OLDPC(%rip)
.Ll328:
# [711] pc += reladdr;
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	movzwl	U_$UNIT6502_$$_RELADDR(%rip),%edx
	leal	(%eax,%edx),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll329:
# [712] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	movw	U_$UNIT6502_$$_OLDPC(%rip),%ax
	andw	$65280,%ax
	movw	U_$UNIT6502_$$_PC(%rip),%dx
	andw	$65280,%dx
	cmpw	%dx,%ax
	je	.Lj643
.Ll330:
# [713] else clockticks6502+=1;
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	2(%rax),%rax
.Ll331:
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
	jmp	.Lj646
.Lj643:
.Ll332:
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Lj646:
.Lj637:
.Ll333:
# [715] end;
	ret
.Lc115:
.Lt85:
.Ll334:

.section .text.n_unit6502_$$_bit,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_BIT
UNIT6502_$$_BIT:
.Lc116:
.seh_proc UNIT6502_$$_BIT
.Ll335:
# [719] begin
	leaq	-40(%rsp),%rsp
.Lc118:
.seh_stackalloc 40
.seh_endprologue
.Ll336:
# [720] value := getvalue;;
	call	UNIT6502_$$_GETVALUE$$WORD
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll337:
# [721] aresult := a and value;
	movzbw	U_$UNIT6502_$$_A(%rip),%dx
	movw	U_$UNIT6502_$$_VALUE(%rip),%ax
	andw	%dx,%ax
# PeepHole Optimization,MovMov2Mov1
	movw	%ax,U_$UNIT6502_$$_ARESULT(%rip)
.Ll338:
# [722] if (aresult and $00FF)<>0 then clearzero else setzero;
	andw	$255,%ax
	testw	%ax,%ax
	je	.Lj656
# PeepHole Optimization,var3
.Ll339:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj659
.Lj656:
# PeepHole Optimization,var3
.Ll340:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj659:
# PeepHole Optimization,var15
.Ll341:
# [723] status := (status and $3F) or (value and $C0);
	movw	U_$UNIT6502_$$_STATUS(%rip),%ax
	andw	$63,%ax
	movswl	%ax,%eax
	movw	U_$UNIT6502_$$_VALUE(%rip),%dx
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$192,%edx
	orl	%eax,%edx
	movb	%dl,U_$UNIT6502_$$_STATUS(%rip)
.Ll342:
# [724] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc117:
.Lt36:
.Ll343:

.section .text.n_unit6502_$$_bmi,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_BMI
UNIT6502_$$_BMI:
.Lc119:
# [728] begin
.Ll344:
# [729] if ((status and FLAG_SIGN) = FLAG_SIGN) then
	movb	U_$UNIT6502_$$_STATUS(%rip),%al
	andb	$128,%al
	cmpb	$128,%al
	jne	.Lj667
.Ll345:
# [731] oldpc := pc;
	movw	U_$UNIT6502_$$_PC(%rip),%ax
	movw	%ax,U_$UNIT6502_$$_OLDPC(%rip)
.Ll346:
# [732] pc += reladdr;
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	movzwl	U_$UNIT6502_$$_RELADDR(%rip),%edx
	leal	(%eax,%edx),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll347:
# [733] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	movw	U_$UNIT6502_$$_OLDPC(%rip),%ax
	andw	$65280,%ax
	movw	U_$UNIT6502_$$_PC(%rip),%dx
	andw	$65280,%dx
	cmpw	%dx,%ax
	je	.Lj673
.Ll348:
# [734] else clockticks6502+=1;
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	2(%rax),%rax
.Ll349:
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
	jmp	.Lj676
.Lj673:
.Ll350:
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Lj676:
.Lj667:
.Ll351:
# [736] end;
	ret
.Lc120:
.Lt38:
.Ll352:

.section .text.n_unit6502_$$_bne,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_BNE
UNIT6502_$$_BNE:
.Lc121:
# [740] begin
# PeepHole Optimization,var15
.Ll353:
# [741] if ((status and FLAG_ZERO) = 0) then
	movw	U_$UNIT6502_$$_STATUS(%rip),%ax
	andw	$2,%ax
	testw	%ax,%ax
	jne	.Lj682
.Ll354:
# [743] oldpc := pc;
	movw	U_$UNIT6502_$$_PC(%rip),%ax
	movw	%ax,U_$UNIT6502_$$_OLDPC(%rip)
.Ll355:
# [744] pc += reladdr;
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	movzwl	U_$UNIT6502_$$_RELADDR(%rip),%edx
	leal	(%eax,%edx),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll356:
# [745] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	movw	U_$UNIT6502_$$_OLDPC(%rip),%ax
	andw	$65280,%ax
	movw	U_$UNIT6502_$$_PC(%rip),%dx
	andw	$65280,%dx
	cmpw	%dx,%ax
	je	.Lj688
.Ll357:
# [746] else clockticks6502+=1;
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	2(%rax),%rax
.Ll358:
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
	jmp	.Lj691
.Lj688:
.Ll359:
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Lj691:
.Lj682:
.Ll360:
# [748] end;
	ret
.Lc122:
.Lt80:
.Ll361:

.section .text.n_unit6502_$$_bpl,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_BPL
UNIT6502_$$_BPL:
.Lc123:
# [752] begin
.Ll362:
# [753] if ((status and FLAG_SIGN) = 0) then
	movb	U_$UNIT6502_$$_STATUS(%rip),%al
	andb	$128,%al
	testb	%al,%al
	jne	.Lj697
.Ll363:
# [755] oldpc := pc;
	movw	U_$UNIT6502_$$_PC(%rip),%ax
	movw	%ax,U_$UNIT6502_$$_OLDPC(%rip)
.Ll364:
# [756] pc += reladdr;
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	movzwl	U_$UNIT6502_$$_RELADDR(%rip),%edx
	leal	(%eax,%edx),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll365:
# [757] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	movw	U_$UNIT6502_$$_OLDPC(%rip),%ax
	andw	$65280,%ax
	movw	U_$UNIT6502_$$_PC(%rip),%dx
	andw	$65280,%dx
	cmpw	%dx,%ax
	je	.Lj703
.Ll366:
# [758] else clockticks6502+=1;
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	2(%rax),%rax
.Ll367:
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
	jmp	.Lj706
.Lj703:
.Ll368:
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Lj706:
.Lj697:
.Ll369:
# [760] end;
	ret
.Lc124:
.Lt31:
.Ll370:

.section .text.n_unit6502_$$_bra,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_BRA
UNIT6502_$$_BRA:
.Lc125:
# [764] begin
.Ll371:
# [765] oldpc := pc;
	movw	U_$UNIT6502_$$_PC(%rip),%ax
	movw	%ax,U_$UNIT6502_$$_OLDPC(%rip)
.Ll372:
# [766] pc += reladdr;
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	movzwl	U_$UNIT6502_$$_RELADDR(%rip),%edx
	leal	(%eax,%edx),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll373:
# [767] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	movw	U_$UNIT6502_$$_OLDPC(%rip),%ax
	andw	$65280,%ax
	movw	U_$UNIT6502_$$_PC(%rip),%dx
	andw	$65280,%dx
	cmpw	%dx,%ax
	je	.Lj716
.Ll374:
# [768] else clockticks6502+=1;
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	2(%rax),%rax
.Ll375:
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
	jmp	.Lj719
.Lj716:
.Ll376:
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Lj719:
.Ll377:
# [769] end;
	ret
.Lc126:
.Lt89:
.Ll378:

.section .text.n_unit6502_$$_brk,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_BRK
UNIT6502_$$_BRK:
.Lc127:
.seh_proc UNIT6502_$$_BRK
.Ll379:
# [773] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc129:
.seh_stackalloc 32
.seh_endprologue
.Ll380:
# [774] pc+=1;
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	leal	1(%eax),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll381:
# [775] push16(pc); //push next instruction address onto stack
	movzwl	U_$UNIT6502_$$_PC(%rip),%ecx
	call	UNIT6502_$$_PUSH16$WORD
.Ll382:
# [776] push8(status or FLAG_BREAK); //push CPU status to stack
	movzbl	U_$UNIT6502_$$_STATUS(%rip),%ecx
	orl	$16,%ecx
# PeepHole Optimization,var11
	andl	$65535,%ecx
	call	UNIT6502_$$_PUSH8$WORD
# PeepHole Optimization,var3
.Ll383:
# [221] {$define setinterrupt:= status :=status or FLAG_INTERRUPT}
	orb	$4,U_$UNIT6502_$$_STATUS(%rip)
.Ll384:
# [778] pc := word(read6502($FFFE)) or (word(read6502($FFFF)) shl 8);
	movq	$65534,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
	movb	%al,%bl
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%ebx
	movq	$65535,%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%eax
	shll	$8,%eax
	orl	%ebx,%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll385:
# [779] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc128:
.Lt25:
.Ll386:

.section .text.n_unit6502_$$_bvc,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_BVC
UNIT6502_$$_BVC:
.Lc130:
# [783] begin
# PeepHole Optimization,var15
.Ll387:
# [784] if ((status and FLAG_OVERFLOW) = 0) then
	movw	U_$UNIT6502_$$_STATUS(%rip),%ax
	andw	$64,%ax
	testw	%ax,%ax
	jne	.Lj741
.Ll388:
# [786] oldpc := pc;
	movw	U_$UNIT6502_$$_PC(%rip),%ax
	movw	%ax,U_$UNIT6502_$$_OLDPC(%rip)
.Ll389:
# [787] pc += reladdr;
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	movzwl	U_$UNIT6502_$$_RELADDR(%rip),%edx
	leal	(%eax,%edx),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll390:
# [788] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	movw	U_$UNIT6502_$$_OLDPC(%rip),%ax
	andw	$65280,%ax
	movw	U_$UNIT6502_$$_PC(%rip),%dx
	andw	$65280,%dx
	cmpw	%dx,%ax
	je	.Lj747
.Ll391:
# [789] else clockticks6502+=1;
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	2(%rax),%rax
.Ll392:
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
	jmp	.Lj750
.Lj747:
.Ll393:
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Lj750:
.Lj741:
.Ll394:
# [791] end;
	ret
.Lc131:
.Lt46:
.Ll395:

.section .text.n_unit6502_$$_bvs,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_BVS
UNIT6502_$$_BVS:
.Lc132:
# [795] begin
# PeepHole Optimization,var15
.Ll396:
# [796] if ((status and FLAG_OVERFLOW) = FLAG_OVERFLOW) then
	movw	U_$UNIT6502_$$_STATUS(%rip),%ax
	andw	$64,%ax
	cmpw	$64,%ax
	jne	.Lj756
.Ll397:
# [798] oldpc := pc;
	movw	U_$UNIT6502_$$_PC(%rip),%ax
	movw	%ax,U_$UNIT6502_$$_OLDPC(%rip)
.Ll398:
# [799] pc += reladdr;
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	movzwl	U_$UNIT6502_$$_RELADDR(%rip),%edx
	leal	(%eax,%edx),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll399:
# [800] if ((oldpc and $FF00) <> (pc and $FF00)) then clockticks6502 += 2 //check if jump crossed a page boundary
	movw	U_$UNIT6502_$$_OLDPC(%rip),%ax
	andw	$65280,%ax
	movw	U_$UNIT6502_$$_PC(%rip),%dx
	andw	$65280,%dx
	cmpw	%dx,%ax
	je	.Lj762
.Ll400:
# [801] else clockticks6502+=1;
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	2(%rax),%rax
.Ll401:
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
	jmp	.Lj765
.Lj762:
.Ll402:
	movq	TC_$UNIT6502_$$_CLOCKTICKS6502(%rip),%rax
	leaq	1(%rax),%rax
	movq	%rax,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Lj765:
.Lj756:
.Ll403:
# [803] end;
	ret
.Lc133:
.Lt51:
.Ll404:

.section .text.n_unit6502_$$_clc,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_CLC
UNIT6502_$$_CLC:
.Lc134:
# [807] begin
# PeepHole Optimization,var3
.Ll405:
	andb	$-2,U_$UNIT6502_$$_STATUS(%rip)
.Ll406:
# [809] end;
	ret
.Lc135:
.Lt33:
.Ll407:

.section .text.n_unit6502_$$_cld,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_CLD
UNIT6502_$$_CLD:
.Lc136:
# [813] begin
# PeepHole Optimization,var3
.Ll408:
# [224] {$define cleardecimal:= status := status and not(FLAG_DECIMAL)}
	andb	$-9,U_$UNIT6502_$$_STATUS(%rip)
.Ll409:
# [815] end;
	ret
.Lc137:
.Lt81:
.Ll410:

.section .text.n_unit6502_$$_cli,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_CLI
UNIT6502_$$_CLI:
.Lc138:
# [819] begin
# PeepHole Optimization,var3
.Ll411:
# [222] {$define clearinterrupt:= status:= status and not(FLAG_INTERRUPT)}
	andb	$-5,U_$UNIT6502_$$_STATUS(%rip)
.Ll412:
# [821] end;
	ret
.Lc139:
.Lt47:
.Ll413:

.section .text.n_unit6502_$$_clv,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_CLV
UNIT6502_$$_CLV:
.Lc140:
# [825] begin
# PeepHole Optimization,var3
.Ll414:
	andb	$-65,U_$UNIT6502_$$_STATUS(%rip)
.Ll415:
# [827] end;
	ret
.Lc141:
.Lt72:
.Ll416:

.section .text.n_unit6502_$$_cmp,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_CMP
UNIT6502_$$_CMP:
.Lc142:
.seh_proc UNIT6502_$$_CMP
.Ll417:
# [831] begin
	leaq	-40(%rsp),%rsp
.Lc144:
.seh_stackalloc 40
.seh_endprologue
.Ll418:
# [832] penaltyop := 1;
	movb	$1,U_$UNIT6502_$$_PENALTYOP(%rip)
.Ll419:
# [833] value := byte(getvalue);
	call	UNIT6502_$$_GETVALUE$$WORD
# PeepHole Optimization,var7
	andw	$255,%ax
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll420:
# [834] aresult := word(a) - value;
	movzbw	U_$UNIT6502_$$_A(%rip),%ax
# PeepHole Optimization,var11
	andl	$65535,%eax
	movzwl	U_$UNIT6502_$$_VALUE(%rip),%edx
	subl	%edx,%eax
	movw	%ax,U_$UNIT6502_$$_ARESULT(%rip)
.Ll421:
# [835] if (a >= (value and $00FF)) then setcarry else clearcarry;
	movzbw	U_$UNIT6502_$$_A(%rip),%dx
	movw	U_$UNIT6502_$$_VALUE(%rip),%ax
	andw	$255,%ax
	cmpw	%ax,%dx
	jnae	.Lj793
# PeepHole Optimization,var3
.Ll422:
	orb	$1,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj796
.Lj793:
# PeepHole Optimization,var3
.Ll423:
	andb	$-2,U_$UNIT6502_$$_STATUS(%rip)
.Lj796:
.Ll424:
# [836] if (a = (byte(value and $00FF))) then setzero else clearzero;
	movw	U_$UNIT6502_$$_VALUE(%rip),%ax
	andw	$255,%ax
	cmpb	U_$UNIT6502_$$_A(%rip),%al
	jne	.Lj800
# PeepHole Optimization,var3
.Ll425:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj803
.Lj800:
# PeepHole Optimization,var3
.Ll426:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
.Lj803:
.Ll427:
# [837] if (aresult and $0080)<>0 then setsign else clearsign;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$128,%ax
	testw	%ax,%ax
	je	.Lj807
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll428:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj810
.Lj807:
# PeepHole Optimization,var3
.Ll429:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj810:
.Ll430:
# [838] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc143:
.Lt75:
.Ll431:

.section .text.n_unit6502_$$_cpx,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_CPX
UNIT6502_$$_CPX:
.Lc145:
.seh_proc UNIT6502_$$_CPX
.Ll432:
# [842] begin
	leaq	-40(%rsp),%rsp
.Lc147:
.seh_stackalloc 40
.seh_endprologue
.Ll433:
# [843] value := getvalue;;
	call	UNIT6502_$$_GETVALUE$$WORD
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll434:
# [844] aresult := word(x) - value;
	movzbw	U_$UNIT6502_$$_X(%rip),%ax
# PeepHole Optimization,var11
	andl	$65535,%eax
	movzwl	U_$UNIT6502_$$_VALUE(%rip),%edx
	subl	%edx,%eax
	movw	%ax,U_$UNIT6502_$$_ARESULT(%rip)
.Ll435:
# [845] if (x >= (value and $00FF)) then setcarry else clearcarry;
	movzbw	U_$UNIT6502_$$_X(%rip),%dx
	movw	U_$UNIT6502_$$_VALUE(%rip),%ax
	andw	$255,%ax
	cmpw	%ax,%dx
	jnae	.Lj820
# PeepHole Optimization,var3
.Ll436:
	orb	$1,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj823
.Lj820:
# PeepHole Optimization,var3
.Ll437:
	andb	$-2,U_$UNIT6502_$$_STATUS(%rip)
.Lj823:
.Ll438:
# [846] if (x = (byte(value and $00FF))) then setzero else clearzero;
	movw	U_$UNIT6502_$$_VALUE(%rip),%ax
	andw	$255,%ax
	cmpb	U_$UNIT6502_$$_X(%rip),%al
	jne	.Lj827
# PeepHole Optimization,var3
.Ll439:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj830
.Lj827:
# PeepHole Optimization,var3
.Ll440:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
.Lj830:
.Ll441:
# [847] if (aresult and $0080)<>0 then setsign else clearsign;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$128,%ax
	testw	%ax,%ax
	je	.Lj834
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll442:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj837
.Lj834:
# PeepHole Optimization,var3
.Ll443:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj837:
.Ll444:
# [848] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc146:
.Lt82:
.Ll445:

.section .text.n_unit6502_$$_cpy,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_CPY
UNIT6502_$$_CPY:
.Lc148:
.seh_proc UNIT6502_$$_CPY
.Ll446:
# [852] begin
	leaq	-40(%rsp),%rsp
.Lc150:
.seh_stackalloc 40
.seh_endprologue
.Ll447:
# [853] value := getvalue;;
	call	UNIT6502_$$_GETVALUE$$WORD
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll448:
# [854] aresult := word(y) - value;
	movzbw	U_$UNIT6502_$$_Y(%rip),%ax
# PeepHole Optimization,var11
	andl	$65535,%eax
	movzwl	U_$UNIT6502_$$_VALUE(%rip),%edx
	subl	%edx,%eax
	movw	%ax,U_$UNIT6502_$$_ARESULT(%rip)
.Ll449:
# [855] if (y >= (value and $00FF)) then setcarry else clearcarry;
	movzbw	U_$UNIT6502_$$_Y(%rip),%dx
	movw	U_$UNIT6502_$$_VALUE(%rip),%ax
	andw	$255,%ax
	cmpw	%ax,%dx
	jnae	.Lj847
# PeepHole Optimization,var3
.Ll450:
	orb	$1,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj850
.Lj847:
# PeepHole Optimization,var3
.Ll451:
	andb	$-2,U_$UNIT6502_$$_STATUS(%rip)
.Lj850:
.Ll452:
# [856] if (y = (value and $00FF)) then setzero else clearzero;
	movzbw	U_$UNIT6502_$$_Y(%rip),%dx
	movw	U_$UNIT6502_$$_VALUE(%rip),%ax
	andw	$255,%ax
	cmpw	%ax,%dx
	jne	.Lj854
# PeepHole Optimization,var3
.Ll453:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj857
.Lj854:
# PeepHole Optimization,var3
.Ll454:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
.Lj857:
.Ll455:
# [857] if (aresult and $0080)<>0 then setsign else clearsign;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$128,%ax
	testw	%ax,%ax
	je	.Lj861
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll456:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj864
.Lj861:
# PeepHole Optimization,var3
.Ll457:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj864:
.Ll458:
# [858] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc149:
.Lt74:
.Ll459:

.section .text.n_unit6502_$$_dea,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_DEA
UNIT6502_$$_DEA:
.Lc151:
.seh_proc UNIT6502_$$_DEA
.Ll460:
# [862] begin
	leaq	-40(%rsp),%rsp
.Lc153:
.seh_stackalloc 40
.seh_endprologue
.Ll461:
# [863] value := getvalue;;
	call	UNIT6502_$$_GETVALUE$$WORD
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll462:
# [864] aresult := value - 1;
	movzwl	U_$UNIT6502_$$_VALUE(%rip),%eax
	leal	-1(%eax),%eax
# PeepHole Optimization,MovMov2Mov1
	movw	%ax,U_$UNIT6502_$$_ARESULT(%rip)
.Ll463:
# [865] if (aresult and $0080)<>0 then setsign else clearsign;
	andw	$128,%ax
	testw	%ax,%ax
	je	.Lj874
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll464:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj877
.Lj874:
# PeepHole Optimization,var3
.Ll465:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj877:
.Ll466:
# [866] if (aresult and $00FF)<>0 then clearzero else setzero;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$255,%ax
	testw	%ax,%ax
	je	.Lj881
# PeepHole Optimization,var3
.Ll467:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj884
.Lj881:
# PeepHole Optimization,var3
.Ll468:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj884:
.Ll469:
# [867] putvalue(aresult);
	movzwl	U_$UNIT6502_$$_ARESULT(%rip),%ecx
	call	UNIT6502_$$_PUTVALUE$WORD
.Ll470:
# [868] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc152:
.Lt77:
.Ll471:

.section .text.n_unit6502_$$_dex,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_DEX
UNIT6502_$$_DEX:
.Lc154:
# [872] begin
.Ll472:
# [873] x-=1;
	movzbl	U_$UNIT6502_$$_X(%rip),%eax
	leal	-1(%eax),%eax
# PeepHole Optimization,MovMov2Mov1
	movb	%al,U_$UNIT6502_$$_X(%rip)
.Ll473:
# [874] if (x and $0080)<>0 then setsign else clearsign;
	andb	$128,%al
	testb	%al,%al
	je	.Lj894
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll474:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj897
.Lj894:
# PeepHole Optimization,var3
.Ll475:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj897:
.Ll476:
# [875] if (x and $00FF)<>0 then clearzero else setzero;
	movb	U_$UNIT6502_$$_X(%rip),%al
	testb	%al,%al
	je	.Lj901
# PeepHole Optimization,var3
.Ll477:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj904
.Lj901:
# PeepHole Optimization,var3
.Ll478:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj904:
.Ll479:
# [876] end;
	ret
.Lc155:
.Lt79:
.Ll480:

.section .text.n_unit6502_$$_dey,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_DEY
UNIT6502_$$_DEY:
.Lc156:
# [880] begin
.Ll481:
# [881] y-=1;
	movzbl	U_$UNIT6502_$$_Y(%rip),%eax
	leal	-1(%eax),%eax
# PeepHole Optimization,MovMov2Mov1
	movb	%al,U_$UNIT6502_$$_Y(%rip)
.Ll482:
# [882] if (y and $0080)<>0 then setsign else clearsign;
	andb	$128,%al
	testb	%al,%al
	je	.Lj912
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll483:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj915
.Lj912:
# PeepHole Optimization,var3
.Ll484:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj915:
.Ll485:
# [883] if (y and $00FF)<>0 then clearzero else setzero;
	movb	U_$UNIT6502_$$_Y(%rip),%al
	testb	%al,%al
	je	.Lj919
# PeepHole Optimization,var3
.Ll486:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj922
.Lj919:
# PeepHole Optimization,var3
.Ll487:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj922:
.Ll488:
# [884] end;
	ret
.Lc157:
.Lt60:
.Ll489:

.section .text.n_unit6502_$$_eor,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_EOR
UNIT6502_$$_EOR:
.Lc158:
.seh_proc UNIT6502_$$_EOR
.Ll490:
# [888] begin
	leaq	-40(%rsp),%rsp
.Lc160:
.seh_stackalloc 40
.seh_endprologue
.Ll491:
# [889] penaltyop := 1;
	movb	$1,U_$UNIT6502_$$_PENALTYOP(%rip)
.Ll492:
# [890] value := getvalue;
	call	UNIT6502_$$_GETVALUE$$WORD
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll493:
# [891] aresult := a xor value;
	movzbw	U_$UNIT6502_$$_A(%rip),%dx
	movw	U_$UNIT6502_$$_VALUE(%rip),%ax
	xorw	%dx,%ax
# PeepHole Optimization,MovMov2Mov1
	movw	%ax,U_$UNIT6502_$$_ARESULT(%rip)
.Ll494:
# [892] if (aresult and $0080)<>0 then setsign else clearsign;
	andw	$128,%ax
	testw	%ax,%ax
	je	.Lj934
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll495:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj937
.Lj934:
# PeepHole Optimization,var3
.Ll496:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj937:
.Ll497:
# [893] if (aresult and $00FF)<>0 then clearzero else setzero;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$255,%ax
	testw	%ax,%ax
	je	.Lj941
# PeepHole Optimization,var3
.Ll498:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj944
.Lj941:
# PeepHole Optimization,var3
.Ll499:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj944:
.Ll500:
# [894] a:=byte(aresult and $00FF);
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$255,%ax
	movb	%al,U_$UNIT6502_$$_A(%rip)
.Ll501:
# [895] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc159:
.Lt42:
.Ll502:

.section .text.n_unit6502_$$_ina,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_INA
UNIT6502_$$_INA:
.Lc161:
.seh_proc UNIT6502_$$_INA
.Ll503:
# [899] begin
	leaq	-40(%rsp),%rsp
.Lc163:
.seh_stackalloc 40
.seh_endprologue
.Ll504:
# [900] value := getvalue;
	call	UNIT6502_$$_GETVALUE$$WORD
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll505:
# [901] aresult := value + 1;
	movzwl	U_$UNIT6502_$$_VALUE(%rip),%eax
	leal	1(%eax),%eax
# PeepHole Optimization,MovMov2Mov1
	movw	%ax,U_$UNIT6502_$$_ARESULT(%rip)
.Ll506:
# [902] if (aresult and $0080)<>0 then setsign else clearsign;
	andw	$128,%ax
	testw	%ax,%ax
	je	.Lj956
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll507:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj959
.Lj956:
# PeepHole Optimization,var3
.Ll508:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj959:
.Ll509:
# [903] if (aresult and $00FF)<>0 then clearzero else setzero;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$255,%ax
	testw	%ax,%ax
	je	.Lj963
# PeepHole Optimization,var3
.Ll510:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj966
.Lj963:
# PeepHole Optimization,var3
.Ll511:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj966:
.Ll512:
# [904] putvalue(aresult);
	movzwl	U_$UNIT6502_$$_ARESULT(%rip),%ecx
	call	UNIT6502_$$_PUTVALUE$WORD
.Ll513:
# [905] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc162:
.Lt87:
.Ll514:

.section .text.n_unit6502_$$_inx,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_INX
UNIT6502_$$_INX:
.Lc164:
# [909] begin
.Ll515:
# [910] x+=1;
	movzbl	U_$UNIT6502_$$_X(%rip),%eax
	leal	1(%eax),%eax
# PeepHole Optimization,MovMov2Mov1
	movb	%al,U_$UNIT6502_$$_X(%rip)
.Ll516:
# [911] if (x and $0080)<>0 then setsign else clearsign;
	andb	$128,%al
	testb	%al,%al
	je	.Lj976
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll517:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj979
.Lj976:
# PeepHole Optimization,var3
.Ll518:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj979:
.Ll519:
# [912] if (x and $00FF)<>0 then clearzero else setzero;
	movb	U_$UNIT6502_$$_X(%rip),%al
	testb	%al,%al
	je	.Lj983
# PeepHole Optimization,var3
.Ll520:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj986
.Lj983:
# PeepHole Optimization,var3
.Ll521:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj986:
.Ll522:
# [913] end;
	ret
.Lc165:
.Lt84:
.Ll523:

.section .text.n_unit6502_$$_iny,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_INY
UNIT6502_$$_INY:
.Lc166:
# [917] begin
.Ll524:
# [918] y+=1;
	movzbl	U_$UNIT6502_$$_Y(%rip),%eax
	leal	1(%eax),%eax
# PeepHole Optimization,MovMov2Mov1
	movb	%al,U_$UNIT6502_$$_Y(%rip)
.Ll525:
# [919] if (y and $0080)<>0 then setsign else clearsign;
	andb	$128,%al
	testb	%al,%al
	je	.Lj994
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll526:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj997
.Lj994:
# PeepHole Optimization,var3
.Ll527:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj997:
.Ll528:
# [920] if (y and $00FF)<>0 then clearzero else setzero;
	movb	U_$UNIT6502_$$_Y(%rip),%al
	testb	%al,%al
	je	.Lj1001
# PeepHole Optimization,var3
.Ll529:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1004
.Lj1001:
# PeepHole Optimization,var3
.Ll530:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1004:
.Ll531:
# [921] end;
	ret
.Lc167:
.Lt78:
.Ll532:

.section .text.n_unit6502_$$_jmp,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_JMP
UNIT6502_$$_JMP:
.Lc168:
# [925] begin
.Ll533:
# [926] pc := ea;
	movw	U_$UNIT6502_$$_EA(%rip),%ax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll534:
# [927] end;
	ret
.Lc169:
.Lt48:
.Ll535:

.section .text.n_unit6502_$$_jsr,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_JSR
UNIT6502_$$_JSR:
.Lc170:
.seh_proc UNIT6502_$$_JSR
.Ll536:
# [931] begin
	leaq	-40(%rsp),%rsp
.Lc172:
.seh_stackalloc 40
.seh_endprologue
.Ll537:
# [932] push16(pc - 1);
	movzwl	U_$UNIT6502_$$_PC(%rip),%eax
	leal	-1(%eax),%ecx
# PeepHole Optimization,var11
	andl	$65535,%ecx
	call	UNIT6502_$$_PUSH16$WORD
.Ll538:
# [933] pc := ea;
	movw	U_$UNIT6502_$$_EA(%rip),%ax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll539:
# [934] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc171:
.Lt34:
.Ll540:

.section .text.n_unit6502_$$_lda,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_LDA
UNIT6502_$$_LDA:
.Lc173:
.seh_proc UNIT6502_$$_LDA
.Ll541:
# [938] begin
	leaq	-40(%rsp),%rsp
.Lc175:
.seh_stackalloc 40
.seh_endprologue
.Ll542:
# [939] penaltyop := 1;
	movb	$1,U_$UNIT6502_$$_PENALTYOP(%rip)
.Ll543:
# [940] value := getvalue;
	call	UNIT6502_$$_GETVALUE$$WORD
# PeepHole Optimization,MovMov2Mov1
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll544:
# [941] a := (value and $00FF);
	andw	$255,%ax
# PeepHole Optimization,MovMov2Mov1
	movb	%al,U_$UNIT6502_$$_A(%rip)
.Ll545:
# [942] if (a and $0080)<>0 then setsign else clearsign;
	andb	$128,%al
	testb	%al,%al
	je	.Lj1026
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll546:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1029
.Lj1026:
# PeepHole Optimization,var3
.Ll547:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj1029:
.Ll548:
# [943] if (a and $00FF)<>0 then clearzero else setzero;
	movb	U_$UNIT6502_$$_A(%rip),%al
	testb	%al,%al
	je	.Lj1033
# PeepHole Optimization,var3
.Ll549:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1036
.Lj1033:
# PeepHole Optimization,var3
.Ll550:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1036:
.Ll551:
# [944] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc174:
.Lt66:
.Ll552:

.section .text.n_unit6502_$$_ldc,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_LDC
UNIT6502_$$_LDC:
.Lc176:
.seh_proc UNIT6502_$$_LDC
.Ll553:
# [949] begin
	leaq	-40(%rsp),%rsp
.Lc178:
.seh_stackalloc 40
.seh_endprologue
.Ll554:
# [950] cs^:=getvalue32 shl 8;
	call	UNIT6502_$$_GETVALUE32$$LONGWORD
	shll	$8,%eax
	andl	$4294967295,%eax
	movq	U_$UNIT6502_$$_CS(%rip),%rdx
	movq	%rax,(%rdx)
.Ll555:
# [951] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc177:
.Lt97:
.Ll556:

.section .text.n_unit6502_$$_ldd,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_LDD
UNIT6502_$$_LDD:
.Lc179:
.seh_proc UNIT6502_$$_LDD
.Ll557:
# [955] begin
	leaq	-40(%rsp),%rsp
.Lc181:
.seh_stackalloc 40
.seh_endprologue
.Ll558:
# [956] ds^:=getvalue32 shl 8;
	call	UNIT6502_$$_GETVALUE32$$LONGWORD
	shll	$8,%eax
	andl	$4294967295,%eax
	movq	U_$UNIT6502_$$_DS(%rip),%rdx
	movq	%rax,(%rdx)
.Ll559:
# [957] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc180:
.Lt99:
.Ll560:

.section .text.n_unit6502_$$_ldx,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_LDX
UNIT6502_$$_LDX:
.Lc182:
.seh_proc UNIT6502_$$_LDX
.Ll561:
# [962] begin
	leaq	-40(%rsp),%rsp
.Lc184:
.seh_stackalloc 40
.seh_endprologue
.Ll562:
# [963] penaltyop := 1;
	movb	$1,U_$UNIT6502_$$_PENALTYOP(%rip)
.Ll563:
# [964] value := getvalue;
	call	UNIT6502_$$_GETVALUE$$WORD
# PeepHole Optimization,MovMov2Mov1
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll564:
# [965] x := (value and $00FF);
	andw	$255,%ax
# PeepHole Optimization,MovMov2Mov1
	movb	%al,U_$UNIT6502_$$_X(%rip)
.Ll565:
# [966] if (x and $0080)<>0 then setsign else clearsign;
	andb	$128,%al
	testb	%al,%al
	je	.Lj1056
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll566:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1059
.Lj1056:
# PeepHole Optimization,var3
.Ll567:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj1059:
.Ll568:
# [967] if (x and $00FF)<>0 then clearzero else setzero;
	movb	U_$UNIT6502_$$_X(%rip),%al
	testb	%al,%al
	je	.Lj1063
# PeepHole Optimization,var3
.Ll569:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1066
.Lj1063:
# PeepHole Optimization,var3
.Ll570:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1066:
.Ll571:
# [968] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc183:
.Lt67:
.Ll572:

.section .text.n_unit6502_$$_ldy,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_LDY
UNIT6502_$$_LDY:
.Lc185:
.seh_proc UNIT6502_$$_LDY
.Ll573:
# [972] begin
	leaq	-40(%rsp),%rsp
.Lc187:
.seh_stackalloc 40
.seh_endprologue
.Ll574:
# [973] penaltyop := 1;
	movb	$1,U_$UNIT6502_$$_PENALTYOP(%rip)
.Ll575:
# [974] value := getvalue;;
	call	UNIT6502_$$_GETVALUE$$WORD
# PeepHole Optimization,MovMov2Mov1
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll576:
# [975] y := (value and $00FF);
	andw	$255,%ax
# PeepHole Optimization,MovMov2Mov1
	movb	%al,U_$UNIT6502_$$_Y(%rip)
.Ll577:
# [976] if (y and $0080)<>0 then setsign else clearsign;
	andb	$128,%al
	testb	%al,%al
	je	.Lj1078
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll578:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1081
.Lj1078:
# PeepHole Optimization,var3
.Ll579:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj1081:
.Ll580:
# [977] if (y and $00FF)<>0 then clearzero else setzero;
	movb	U_$UNIT6502_$$_Y(%rip),%al
	testb	%al,%al
	je	.Lj1085
# PeepHole Optimization,var3
.Ll581:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1088
.Lj1085:
# PeepHole Optimization,var3
.Ll582:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1088:
.Ll583:
# [978] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc186:
.Lt65:
.Ll584:

.section .text.n_unit6502_$$_lsr,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_LSR
UNIT6502_$$_LSR:
.Lc188:
.seh_proc UNIT6502_$$_LSR
.Ll585:
# [982] begin
	leaq	-40(%rsp),%rsp
.Lc190:
.seh_stackalloc 40
.seh_endprologue
.Ll586:
# [983] value := getvalue and $FF;
	call	UNIT6502_$$_GETVALUE$$WORD
	andw	$255,%ax
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll587:
# [984] aresult := value shr 1;
	movzwl	U_$UNIT6502_$$_VALUE(%rip),%eax
	shrl	$1,%eax
	movw	%ax,U_$UNIT6502_$$_ARESULT(%rip)
# PeepHole Optimization,var14
.Ll588:
# [985] if (value and 1)=1 then setcarry else clearcarry;
	movl	U_$UNIT6502_$$_VALUE(%rip),%eax
	andl	$1,%eax
	cmpl	$1,%eax
	jne	.Lj1098
# PeepHole Optimization,var3
.Ll589:
	orb	$1,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1101
.Lj1098:
# PeepHole Optimization,var3
.Ll590:
	andb	$-2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1101:
.Ll591:
# [986] if (aresult and $0080)<>0 then setsign else clearsign;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$128,%ax
	testw	%ax,%ax
	je	.Lj1105
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll592:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1108
.Lj1105:
# PeepHole Optimization,var3
.Ll593:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj1108:
.Ll594:
# [987] if (aresult and $00FF)<>0 then clearzero else setzero;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$255,%ax
	testw	%ax,%ax
	je	.Lj1112
# PeepHole Optimization,var3
.Ll595:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1115
.Lj1112:
# PeepHole Optimization,var3
.Ll596:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1115:
.Ll597:
# [988] putvalue(aresult);
	movzwl	U_$UNIT6502_$$_ARESULT(%rip),%ecx
	call	UNIT6502_$$_PUTVALUE$WORD
.Ll598:
# [989] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc189:
.Lt44:
.Ll599:

.section .text.n_unit6502_$$_nop,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_NOP
UNIT6502_$$_NOP:
.Lc191:
# [993] begin
.Ll600:
# [994] case opcode of
	movb	U_$UNIT6502_$$_OPCODE(%rip),%al
	cmpb	$28,%al
	jb	.Lj1123
	subb	$28,%al
	je	.Lj1124
	subb	$32,%al
	je	.Lj1125
	subb	$32,%al
	je	.Lj1126
	subb	$32,%al
	je	.Lj1127
	subb	$96,%al
	je	.Lj1128
	subb	$32,%al
	je	.Lj1129
	jmp	.Lj1123
.Lj1124:
.Ll601:
# [995] $1C:  penaltyop := 1;
	movb	$1,U_$UNIT6502_$$_PENALTYOP(%rip)
	jmp	.Lj1122
.Lj1125:
.Ll602:
# [996] $3C:  penaltyop := 1;
	movb	$1,U_$UNIT6502_$$_PENALTYOP(%rip)
	jmp	.Lj1122
.Lj1126:
.Ll603:
# [997] $5C:  penaltyop := 1;
	movb	$1,U_$UNIT6502_$$_PENALTYOP(%rip)
	jmp	.Lj1122
.Lj1127:
.Ll604:
# [998] $7C:  penaltyop := 1;
	movb	$1,U_$UNIT6502_$$_PENALTYOP(%rip)
	jmp	.Lj1122
.Lj1128:
.Ll605:
# [999] $DC:  penaltyop := 1;
	movb	$1,U_$UNIT6502_$$_PENALTYOP(%rip)
	jmp	.Lj1122
.Lj1129:
.Ll606:
# [1000] $FC:  penaltyop := 1;
	movb	$1,U_$UNIT6502_$$_PENALTYOP(%rip)
.Lj1123:
.Lj1122:
.Ll607:
# [1002] end;
	ret
.Lc192:
.Lt27:
.Ll608:

.section .text.n_unit6502_$$_ora,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_ORA
UNIT6502_$$_ORA:
.Lc193:
.seh_proc UNIT6502_$$_ORA
.Ll609:
# [1006] begin
	leaq	-40(%rsp),%rsp
.Lc195:
.seh_stackalloc 40
.seh_endprologue
.Ll610:
# [1007] penaltyop := 1;
	movb	$1,U_$UNIT6502_$$_PENALTYOP(%rip)
.Ll611:
# [1008] value := getvalue;;
	call	UNIT6502_$$_GETVALUE$$WORD
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll612:
# [1009] aresult := a or value;
	movzbw	U_$UNIT6502_$$_A(%rip),%dx
	movw	U_$UNIT6502_$$_VALUE(%rip),%ax
	orw	%dx,%ax
# PeepHole Optimization,MovMov2Mov1
	movw	%ax,U_$UNIT6502_$$_ARESULT(%rip)
.Ll613:
# [1010] if (aresult and $0080)<>0 then setsign else clearsign;
	andw	$128,%ax
	testw	%ax,%ax
	je	.Lj1151
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll614:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1154
.Lj1151:
# PeepHole Optimization,var3
.Ll615:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj1154:
.Ll616:
# [1011] if (aresult and $00FF)<>0 then clearzero else setzero;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$255,%ax
	testw	%ax,%ax
	je	.Lj1158
# PeepHole Optimization,var3
.Ll617:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1161
.Lj1158:
# PeepHole Optimization,var3
.Ll618:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1161:
.Ll619:
# [1012] a:=byte(aresult and $00FF);
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$255,%ax
	movb	%al,U_$UNIT6502_$$_A(%rip)
.Ll620:
# [1013] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc194:
.Lt26:
.Ll621:

.section .text.n_unit6502_$$_pha,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PHA
UNIT6502_$$_PHA:
.Lc196:
.seh_proc UNIT6502_$$_PHA
.Ll622:
# [1017] begin
	leaq	-40(%rsp),%rsp
.Lc198:
.seh_stackalloc 40
.seh_endprologue
.Ll623:
# [1018] push8(a);
	movzbw	U_$UNIT6502_$$_A(%rip),%ax
	movzwl	%ax,%ecx
	call	UNIT6502_$$_PUSH8$WORD
.Ll624:
# [1019] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc197:
.Lt45:
.Ll625:

.section .text.n_unit6502_$$_phc,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PHC
UNIT6502_$$_PHC:
.Lc199:
.seh_proc UNIT6502_$$_PHC
.Ll626:
# [1023] begin
	leaq	-40(%rsp),%rsp
.Lc201:
.seh_stackalloc 40
.seh_endprologue
.Ll627:
# [1024] push32(cs^ shr 8);
	movq	U_$UNIT6502_$$_CS(%rip),%rax
	movq	(%rax),%rcx
	shrq	$8,%rcx
	call	UNIT6502_$$_PUSH32$LONGWORD
.Ll628:
# [1025] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc200:
.Lt101:
.Ll629:

.section .text.n_unit6502_$$_phd,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PHD
UNIT6502_$$_PHD:
.Lc202:
.seh_proc UNIT6502_$$_PHD
.Ll630:
# [1029] begin
	leaq	-40(%rsp),%rsp
.Lc204:
.seh_stackalloc 40
.seh_endprologue
.Ll631:
# [1030] push32(ds^ shr 8);
	movq	U_$UNIT6502_$$_DS(%rip),%rax
	movq	(%rax),%rcx
	shrq	$8,%rcx
	call	UNIT6502_$$_PUSH32$LONGWORD
.Ll632:
# [1031] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc203:
.Lt102:
.Ll633:

.section .text.n_unit6502_$$_phx,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PHX
UNIT6502_$$_PHX:
.Lc205:
.seh_proc UNIT6502_$$_PHX
.Ll634:
# [1035] begin
	leaq	-40(%rsp),%rsp
.Lc207:
.seh_stackalloc 40
.seh_endprologue
.Ll635:
# [1036] push8(x);
	movzbw	U_$UNIT6502_$$_X(%rip),%ax
	movzwl	%ax,%ecx
	call	UNIT6502_$$_PUSH8$WORD
.Ll636:
# [1037] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc206:
.Lt90:
.Ll637:

.section .text.n_unit6502_$$_phy,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PHY
UNIT6502_$$_PHY:
.Lc208:
.seh_proc UNIT6502_$$_PHY
.Ll638:
# [1041] begin
	leaq	-40(%rsp),%rsp
.Lc210:
.seh_stackalloc 40
.seh_endprologue
.Ll639:
# [1042] push8(y);
	movzbw	U_$UNIT6502_$$_Y(%rip),%ax
	movzwl	%ax,%ecx
	call	UNIT6502_$$_PUSH8$WORD
.Ll640:
# [1043] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc209:
.Lt91:
.Ll641:

.section .text.n_unit6502_$$_php,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PHP
UNIT6502_$$_PHP:
.Lc211:
.seh_proc UNIT6502_$$_PHP
.Ll642:
# [1047] begin
	leaq	-40(%rsp),%rsp
.Lc213:
.seh_stackalloc 40
.seh_endprologue
.Ll643:
# [1048] push8(status or FLAG_BREAK);
	movzbl	U_$UNIT6502_$$_STATUS(%rip),%eax
	movl	%eax,%ecx
	orl	$16,%ecx
# PeepHole Optimization,var11
	andl	$65535,%ecx
	call	UNIT6502_$$_PUSH8$WORD
.Ll644:
# [1049] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc212:
.Lt32:
.Ll645:

.section .text.n_unit6502_$$_pla,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PLA
UNIT6502_$$_PLA:
.Lc214:
.seh_proc UNIT6502_$$_PLA
.Ll646:
# [1053] begin
	leaq	-40(%rsp),%rsp
.Lc216:
.seh_stackalloc 40
.seh_endprologue
.Ll647:
# [1054] a := pull8;
	call	UNIT6502_$$_PULL8$$BYTE
# PeepHole Optimization,MovMov2Mov1
	movb	%al,U_$UNIT6502_$$_A(%rip)
.Ll648:
# [1055] if (a and $0080)<>0 then setsign else clearsign;
	andb	$128,%al
	testb	%al,%al
	je	.Lj1195
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll649:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1198
.Lj1195:
# PeepHole Optimization,var3
.Ll650:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj1198:
.Ll651:
# [1056] if (a and $00FF)<>0 then clearzero else setzero;
	movb	U_$UNIT6502_$$_A(%rip),%al
	testb	%al,%al
	je	.Lj1202
# PeepHole Optimization,var3
.Ll652:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1205
.Lj1202:
# PeepHole Optimization,var3
.Ll653:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1205:
.Ll654:
# [1057] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc215:
.Lt54:
.Ll655:

.section .text.n_unit6502_$$_plc,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PLC
UNIT6502_$$_PLC:
.Lc217:
.seh_proc UNIT6502_$$_PLC
.Ll656:
# [1061] begin
	leaq	-40(%rsp),%rsp
.Lc219:
.seh_stackalloc 40
.seh_endprologue
.Ll657:
# [1062] cs^:=pull32 shl 8;
	call	UNIT6502_$$_PULL32$$LONGWORD
	shll	$8,%eax
	andl	$4294967295,%eax
	movq	U_$UNIT6502_$$_CS(%rip),%rdx
	movq	%rax,(%rdx)
.Ll658:
# [1063] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc218:
.Lt104:
.Ll659:

.section .text.n_unit6502_$$_pld,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PLD
UNIT6502_$$_PLD:
.Lc220:
.seh_proc UNIT6502_$$_PLD
.Ll660:
# [1067] begin
	leaq	-40(%rsp),%rsp
.Lc222:
.seh_stackalloc 40
.seh_endprologue
.Ll661:
# [1068] ds^:=pull32 shl 8;
	call	UNIT6502_$$_PULL32$$LONGWORD
	shll	$8,%eax
	andl	$4294967295,%eax
	movq	U_$UNIT6502_$$_DS(%rip),%rdx
	movq	%rax,(%rdx)
.Ll662:
# [1069] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc221:
.Lt103:
.Ll663:

.section .text.n_unit6502_$$_plx,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PLX
UNIT6502_$$_PLX:
.Lc223:
.seh_proc UNIT6502_$$_PLX
.Ll664:
# [1073] begin
	leaq	-40(%rsp),%rsp
.Lc225:
.seh_stackalloc 40
.seh_endprologue
.Ll665:
# [1074] x := pull8;
	call	UNIT6502_$$_PULL8$$BYTE
# PeepHole Optimization,MovMov2Mov1
	movb	%al,U_$UNIT6502_$$_X(%rip)
.Ll666:
# [1075] if (x and $0080)<>0 then setsign else clearsign;
	andb	$128,%al
	testb	%al,%al
	je	.Lj1221
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll667:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1224
.Lj1221:
# PeepHole Optimization,var3
.Ll668:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj1224:
.Ll669:
# [1076] if (x and $00FF)<>0 then clearzero else setzero;
	movb	U_$UNIT6502_$$_X(%rip),%al
	testb	%al,%al
	je	.Lj1228
# PeepHole Optimization,var3
.Ll670:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1231
.Lj1228:
# PeepHole Optimization,var3
.Ll671:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1231:
.Ll672:
# [1077] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc224:
.Lt92:
.Ll673:

.section .text.n_unit6502_$$_ply,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PLY
UNIT6502_$$_PLY:
.Lc226:
.seh_proc UNIT6502_$$_PLY
.Ll674:
# [1081] begin
	leaq	-40(%rsp),%rsp
.Lc228:
.seh_stackalloc 40
.seh_endprologue
.Ll675:
# [1082] y := pull8;
	call	UNIT6502_$$_PULL8$$BYTE
# PeepHole Optimization,MovMov2Mov1
	movb	%al,U_$UNIT6502_$$_Y(%rip)
.Ll676:
# [1083] if (y and $0080)<>0 then setsign else clearsign;
	andb	$128,%al
	testb	%al,%al
	je	.Lj1239
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll677:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1242
.Lj1239:
# PeepHole Optimization,var3
.Ll678:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj1242:
.Ll679:
# [1084] if (y and $00FF)<>0 then clearzero else setzero;
	movb	U_$UNIT6502_$$_Y(%rip),%al
	testb	%al,%al
	je	.Lj1246
# PeepHole Optimization,var3
.Ll680:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1249
.Lj1246:
# PeepHole Optimization,var3
.Ll681:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1249:
.Ll682:
# [1085] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc227:
.Lt93:
.Ll683:

.section .text.n_unit6502_$$_plp,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_PLP
UNIT6502_$$_PLP:
.Lc229:
.seh_proc UNIT6502_$$_PLP
.Ll684:
# [1089] begin
	leaq	-40(%rsp),%rsp
.Lc231:
.seh_stackalloc 40
.seh_endprologue
.Ll685:
# [1090] status := pull8 or FLAG_CONSTANT;
	call	UNIT6502_$$_PULL8$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	orl	$32,%eax
	movb	%al,U_$UNIT6502_$$_STATUS(%rip)
.Ll686:
# [1091] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc230:
.Lt39:
.Ll687:

.section .text.n_unit6502_$$_rol,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_ROL
UNIT6502_$$_ROL:
.Lc232:
.seh_proc UNIT6502_$$_ROL
.Ll688:
# [1095] begin
	leaq	-40(%rsp),%rsp
.Lc234:
.seh_stackalloc 40
.seh_endprologue
.Ll689:
# [1096] value := getvalue;;
	call	UNIT6502_$$_GETVALUE$$WORD
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
# PeepHole Optimization,var15
.Ll690:
# [1097] aresult := (value shl 1) or (status and FLAG_CARRY);
	movw	U_$UNIT6502_$$_STATUS(%rip),%ax
	andw	$1,%ax
	movswl	%ax,%eax
	movzwl	U_$UNIT6502_$$_VALUE(%rip),%edx
	shll	$1,%edx
	orl	%eax,%edx
# PeepHole Optimization,MovMov2MovMov1
	movw	%dx,U_$UNIT6502_$$_ARESULT(%rip)
.Ll691:
# [1098] if (aresult and $FF00) <>0 then setcarry else clearcarry;
	movw	%dx,%ax
	andw	$65280,%ax
	testw	%ax,%ax
	je	.Lj1263
# PeepHole Optimization,var3
.Ll692:
	orb	$1,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1266
.Lj1263:
# PeepHole Optimization,var3
.Ll693:
	andb	$-2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1266:
.Ll694:
# [1099] if (aresult and $00FF)<>0 then clearzero else setzero;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$255,%ax
	testw	%ax,%ax
	je	.Lj1270
# PeepHole Optimization,var3
.Ll695:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1273
.Lj1270:
# PeepHole Optimization,var3
.Ll696:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1273:
.Ll697:
# [1100] if (aresult and $0080)<>0 then setsign else clearsign;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$128,%ax
	testw	%ax,%ax
	je	.Lj1277
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll698:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1280
.Lj1277:
# PeepHole Optimization,var3
.Ll699:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj1280:
.Ll700:
# [1101] putvalue(aresult);
	movzwl	U_$UNIT6502_$$_ARESULT(%rip),%ecx
	call	UNIT6502_$$_PUTVALUE$WORD
.Ll701:
# [1102] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc233:
.Lt37:
.Ll702:

.section .text.n_unit6502_$$_ror,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_ROR
UNIT6502_$$_ROR:
.Lc235:
.seh_proc UNIT6502_$$_ROR
.Ll703:
# [1106] begin
	leaq	-40(%rsp),%rsp
.Lc237:
.seh_stackalloc 40
.seh_endprologue
.Ll704:
# [1107] value := getvalue;;
	call	UNIT6502_$$_GETVALUE$$WORD
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
# PeepHole Optimization,var15
.Ll705:
# [1108] aresult := (value shr 1) or ((status and FLAG_CARRY) shl 7);
	movw	U_$UNIT6502_$$_STATUS(%rip),%ax
	andw	$1,%ax
	movswl	%ax,%eax
	shll	$7,%eax
	movzwl	U_$UNIT6502_$$_VALUE(%rip),%edx
	shrl	$1,%edx
	orl	%eax,%edx
	movw	%dx,U_$UNIT6502_$$_ARESULT(%rip)
# PeepHole Optimization,var14
.Ll706:
# [1109] if (value and 1)=1 then setcarry else clearcarry;
	movl	U_$UNIT6502_$$_VALUE(%rip),%eax
	andl	$1,%eax
	cmpl	$1,%eax
	jne	.Lj1292
# PeepHole Optimization,var3
.Ll707:
	orb	$1,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1295
.Lj1292:
# PeepHole Optimization,var3
.Ll708:
	andb	$-2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1295:
.Ll709:
# [1110] if (aresult and $00FF)<>0 then clearzero else setzero;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$255,%ax
	testw	%ax,%ax
	je	.Lj1299
# PeepHole Optimization,var3
.Ll710:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1302
.Lj1299:
# PeepHole Optimization,var3
.Ll711:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1302:
.Ll712:
# [1111] if (aresult and $0080)<>0 then setsign else clearsign;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$128,%ax
	testw	%ax,%ax
	je	.Lj1306
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll713:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1309
.Lj1306:
# PeepHole Optimization,var3
.Ll714:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj1309:
.Ll715:
# [1112] putvalue(aresult);
	movzwl	U_$UNIT6502_$$_ARESULT(%rip),%ecx
	call	UNIT6502_$$_PUTVALUE$WORD
.Ll716:
# [1113] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc236:
.Lt53:
.Ll717:

.section .text.n_unit6502_$$_rti,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_RTI
UNIT6502_$$_RTI:
.Lc238:
.seh_proc UNIT6502_$$_RTI
.Ll718:
# [1117] begin
	leaq	-40(%rsp),%rsp
.Lc240:
.seh_stackalloc 40
.seh_endprologue
.Ll719:
# [1118] status := pull8;
	call	UNIT6502_$$_PULL8$$BYTE
	movb	%al,U_$UNIT6502_$$_STATUS(%rip)
.Ll720:
# [1119] value := pull16;
	call	UNIT6502_$$_PULL16$$WORD
# PeepHole Optimization,MovMov2Mov1
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll721:
# [1120] pc := value;
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll722:
# [1121] cs:=@csa;
	leaq	U_$UNIT6502_$$_CSA(%rip),%rax
	movq	%rax,U_$UNIT6502_$$_CS(%rip)
.Ll723:
# [1122] ds:=@dsa;
	leaq	U_$UNIT6502_$$_DSA(%rip),%rax
	movq	%rax,U_$UNIT6502_$$_DS(%rip)
.Ll724:
# [1123] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc239:
.Lt41:
.Ll725:

.section .text.n_unit6502_$$_rts,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_RTS
UNIT6502_$$_RTS:
.Lc241:
.seh_proc UNIT6502_$$_RTS
.Ll726:
# [1127] begin
	leaq	-40(%rsp),%rsp
.Lc243:
.seh_stackalloc 40
.seh_endprologue
.Ll727:
# [1128] value := pull16;
	call	UNIT6502_$$_PULL16$$WORD
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll728:
# [1129] pc := value + 1;
	movzwl	U_$UNIT6502_$$_VALUE(%rip),%eax
	leal	1(%eax),%eax
	movw	%ax,U_$UNIT6502_$$_PC(%rip)
.Ll729:
# [1130] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc242:
.Lt49:
.Ll730:

.section .text.n_unit6502_$$_sbc,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_SBC
UNIT6502_$$_SBC:
.Lc244:
.seh_proc UNIT6502_$$_SBC
.Ll731:
# [1134] begin
	leaq	-40(%rsp),%rsp
.Lc246:
.seh_stackalloc 40
.seh_endprologue
.Ll732:
# [1135] penaltyop := 1;
	movb	$1,U_$UNIT6502_$$_PENALTYOP(%rip)
.Ll733:
# [1136] value := getvalue xor $00FF;
	call	UNIT6502_$$_GETVALUE$$WORD
	xorw	$255,%ax
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll734:
# [1137] aresult := word(a) + value + (status and FLAG_CARRY);
	movzbw	U_$UNIT6502_$$_A(%rip),%ax
# PeepHole Optimization,var11
	andl	$65535,%eax
	movzwl	U_$UNIT6502_$$_VALUE(%rip),%edx
	leal	(%eax,%edx),%edx
# PeepHole Optimization,var15
	movw	U_$UNIT6502_$$_STATUS(%rip),%ax
	andw	$1,%ax
	movswl	%ax,%eax
	leal	(%edx,%eax),%eax
# PeepHole Optimization,MovMov2Mov1
	movw	%ax,U_$UNIT6502_$$_ARESULT(%rip)
.Ll735:
# [1138] if (aresult and $FF00) <>0 then setcarry else clearcarry;
	andw	$65280,%ax
	testw	%ax,%ax
	je	.Lj1341
# PeepHole Optimization,var3
.Ll736:
	orb	$1,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1344
.Lj1341:
# PeepHole Optimization,var3
.Ll737:
	andb	$-2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1344:
.Ll738:
# [1139] if (aresult and $00FF)<>0 then clearzero else setzero;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$255,%ax
	testw	%ax,%ax
	je	.Lj1348
# PeepHole Optimization,var3
.Ll739:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1351
.Lj1348:
# PeepHole Optimization,var3
.Ll740:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1351:
.Ll741:
# [1140] if ((aresult xor a) and (aresult xor value) and $0080)<>0 then setoverflow else clearoverflow;
	movzbw	U_$UNIT6502_$$_A(%rip),%dx
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	xorw	%dx,%ax
	movw	U_$UNIT6502_$$_ARESULT(%rip),%cx
	movw	U_$UNIT6502_$$_VALUE(%rip),%dx
	xorw	%cx,%dx
	andw	%ax,%dx
	andw	$128,%dx
	testw	%dx,%dx
	je	.Lj1355
# PeepHole Optimization,var3
.Ll742:
	orb	$64,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1358
.Lj1355:
# PeepHole Optimization,var3
.Ll743:
	andb	$-65,U_$UNIT6502_$$_STATUS(%rip)
.Lj1358:
.Ll744:
# [1141] if (aresult and $0080)<>0 then setsign else clearsign;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$128,%ax
	testw	%ax,%ax
	je	.Lj1362
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll745:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1365
.Lj1362:
# PeepHole Optimization,var3
.Ll746:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj1365:
# PeepHole Optimization,var15
.Ll747:
# [1143] if (status and FLAG_DECIMAL)<>0 then
	movw	U_$UNIT6502_$$_STATUS(%rip),%ax
	andw	$8,%ax
	testw	%ax,%ax
	je	.Lj1369
.Ll748:
# [1145] inc(clockticks6502);
	addq	$1,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
# PeepHole Optimization,var3
.Ll749:
	andb	$-2,U_$UNIT6502_$$_STATUS(%rip)
# PeepHole Optimization,var15
.Ll750:
# [1147] if ((a and $0F) > $09) then a += $06;
	movw	U_$UNIT6502_$$_A(%rip),%ax
	andw	$15,%ax
	cmpw	$9,%ax
	jng	.Lj1373
	movzbl	U_$UNIT6502_$$_A(%rip),%eax
	leal	6(%eax),%eax
	movb	%al,U_$UNIT6502_$$_A(%rip)
.Lj1373:
.Ll751:
# [1148] if ((a and $F0) > $90) then
	movb	U_$UNIT6502_$$_A(%rip),%al
	andb	$240,%al
	cmpb	$144,%al
	jna	.Lj1377
.Ll752:
# [1150] a += $60;
	movzbl	U_$UNIT6502_$$_A(%rip),%eax
	leal	96(%eax),%eax
	movb	%al,U_$UNIT6502_$$_A(%rip)
# PeepHole Optimization,var3
.Ll753:
	orb	$1,U_$UNIT6502_$$_STATUS(%rip)
.Lj1377:
.Lj1369:
.Ll754:
# [1155] a:=byte(aresult and $00FF);
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$255,%ax
	movb	%al,U_$UNIT6502_$$_A(%rip)
.Ll755:
# [1156] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc245:
.Lt86:
.Ll756:

.section .text.n_unit6502_$$_sec,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_SEC
UNIT6502_$$_SEC:
.Lc247:
# [1160] begin
# PeepHole Optimization,var3
.Ll757:
	orb	$1,U_$UNIT6502_$$_STATUS(%rip)
.Ll758:
# [1162] end;
	ret
.Lc248:
.Lt40:
.Ll759:

.section .text.n_unit6502_$$_sed,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_SED
UNIT6502_$$_SED:
.Lc249:
# [1166] begin
# PeepHole Optimization,var3
.Ll760:
# [223] {$define setdecimal:= status :=status or FLAG_DECIMAL}
	orb	$8,U_$UNIT6502_$$_STATUS(%rip)
.Ll761:
# [1168] end;
	ret
.Lc250:
.Lt88:
.Ll762:

.section .text.n_unit6502_$$_sei,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_SEI
UNIT6502_$$_SEI:
.Lc251:
# [1172] begin
# PeepHole Optimization,var3
.Ll763:
	orb	$4,U_$UNIT6502_$$_STATUS(%rip)
.Ll764:
# [1174] end;
	ret
.Lc252:
.Lt55:
.Ll765:

.section .text.n_unit6502_$$_sta,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_STA
UNIT6502_$$_STA:
.Lc253:
.seh_proc UNIT6502_$$_STA
.Ll766:
# [1178] begin
	leaq	-40(%rsp),%rsp
.Lc255:
.seh_stackalloc 40
.seh_endprologue
.Ll767:
# [1179] putvalue(a);
	movzbw	U_$UNIT6502_$$_A(%rip),%ax
	movzwl	%ax,%ecx
	call	UNIT6502_$$_PUTVALUE$WORD
.Ll768:
# [1180] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc254:
.Lt56:
.Ll769:

.section .text.n_unit6502_$$_stc,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_STC
UNIT6502_$$_STC:
.Lc256:
.seh_proc UNIT6502_$$_STC
.Ll770:
# [1184] begin
	leaq	-40(%rsp),%rsp
.Lc258:
.seh_stackalloc 40
.seh_endprologue
.Ll771:
# [1185] putvalue32(cs^shr 8);
	movq	U_$UNIT6502_$$_CS(%rip),%rax
	movq	(%rax),%rcx
	shrq	$8,%rcx
	call	UNIT6502_$$_PUTVALUE32$LONGWORD
.Ll772:
# [1186] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc257:
.Lt98:
.Ll773:

.section .text.n_unit6502_$$_std,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_STD
UNIT6502_$$_STD:
.Lc259:
.seh_proc UNIT6502_$$_STD
.Ll774:
# [1190] begin
	leaq	-40(%rsp),%rsp
.Lc261:
.seh_stackalloc 40
.seh_endprologue
.Ll775:
# [1191] putvalue32(ds^ shr 8);
	movq	U_$UNIT6502_$$_DS(%rip),%rax
	movq	(%rax),%rcx
	shrq	$8,%rcx
	call	UNIT6502_$$_PUTVALUE32$LONGWORD
.Ll776:
# [1192] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc260:
.Lt100:
.Ll777:

.section .text.n_unit6502_$$_stx,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_STX
UNIT6502_$$_STX:
.Lc262:
.seh_proc UNIT6502_$$_STX
.Ll778:
# [1196] begin
	leaq	-40(%rsp),%rsp
.Lc264:
.seh_stackalloc 40
.seh_endprologue
.Ll779:
# [1197] putvalue(x);
	movzbw	U_$UNIT6502_$$_X(%rip),%ax
	movzwl	%ax,%ecx
	call	UNIT6502_$$_PUTVALUE$WORD
.Ll780:
# [1198] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc263:
.Lt58:
.Ll781:

.section .text.n_unit6502_$$_sty,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_STY
UNIT6502_$$_STY:
.Lc265:
.seh_proc UNIT6502_$$_STY
.Ll782:
# [1202] begin
	leaq	-40(%rsp),%rsp
.Lc267:
.seh_stackalloc 40
.seh_endprologue
.Ll783:
# [1203] putvalue(y);
	movzbw	U_$UNIT6502_$$_Y(%rip),%ax
	movzwl	%ax,%ecx
	call	UNIT6502_$$_PUTVALUE$WORD
.Ll784:
# [1204] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc266:
.Lt59:
.Ll785:

.section .text.n_unit6502_$$_stz,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_STZ
UNIT6502_$$_STZ:
.Lc268:
.seh_proc UNIT6502_$$_STZ
.Ll786:
# [1208] begin
	leaq	-40(%rsp),%rsp
.Lc270:
.seh_stackalloc 40
.seh_endprologue
.Ll787:
# [1209] putvalue(0);
	movl	$0,%eax
	movl	%eax,%ecx
	call	UNIT6502_$$_PUTVALUE$WORD
.Ll788:
# [1210] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc269:
.Lt94:
.Ll789:

.section .text.n_unit6502_$$_tax,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_TAX
UNIT6502_$$_TAX:
.Lc271:
# [1214] begin
.Ll790:
# [1215] x := a;
	movb	U_$UNIT6502_$$_A(%rip),%al
# PeepHole Optimization,MovMov2Mov1
	movb	%al,U_$UNIT6502_$$_X(%rip)
.Ll791:
# [1216] if (x and $0080)<>0 then setsign else clearsign;
	andb	$128,%al
	testb	%al,%al
	je	.Lj1425
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll792:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1428
.Lj1425:
# PeepHole Optimization,var3
.Ll793:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj1428:
.Ll794:
# [1217] if (x and $00FF)<>0 then clearzero else setzero;
	movb	U_$UNIT6502_$$_X(%rip),%al
	testb	%al,%al
	je	.Lj1432
# PeepHole Optimization,var3
.Ll795:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1435
.Lj1432:
# PeepHole Optimization,var3
.Ll796:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1435:
.Ll797:
# [1218] end;
	ret
.Lc272:
.Lt70:
.Ll798:

.section .text.n_unit6502_$$_tay,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_TAY
UNIT6502_$$_TAY:
.Lc273:
# [1222] begin
.Ll799:
# [1223] y := a;
	movb	U_$UNIT6502_$$_A(%rip),%al
# PeepHole Optimization,MovMov2Mov1
	movb	%al,U_$UNIT6502_$$_Y(%rip)
.Ll800:
# [1224] if (y and $0080)<>0 then setsign else clearsign;
	andb	$128,%al
	testb	%al,%al
	je	.Lj1443
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll801:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1446
.Lj1443:
# PeepHole Optimization,var3
.Ll802:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj1446:
.Ll803:
# [1225] if (y and $00FF)<>0 then clearzero else setzero;
	movb	U_$UNIT6502_$$_Y(%rip),%al
	testb	%al,%al
	je	.Lj1450
# PeepHole Optimization,var3
.Ll804:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1453
.Lj1450:
# PeepHole Optimization,var3
.Ll805:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1453:
.Ll806:
# [1226] end;
	ret
.Lc274:
.Lt69:
.Ll807:

.section .text.n_unit6502_$$_trb,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_TRB
UNIT6502_$$_TRB:
.Lc275:
.seh_proc UNIT6502_$$_TRB
.Ll808:
# [1230] begin
	leaq	-40(%rsp),%rsp
.Lc277:
.seh_stackalloc 40
.seh_endprologue
.Ll809:
# [1231] value:=getvalue;
	call	UNIT6502_$$_GETVALUE$$WORD
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll810:
# [1232] aresult:=value and (not a);
	movb	U_$UNIT6502_$$_A(%rip),%al
	notb	%al
# PeepHole Optimization,var7
	andw	$255,%ax
	movw	U_$UNIT6502_$$_VALUE(%rip),%dx
	andw	%ax,%dx
	movw	%dx,U_$UNIT6502_$$_ARESULT(%rip)
.Ll811:
# [1233] putvalue(aresult);
	movzwl	U_$UNIT6502_$$_ARESULT(%rip),%ecx
	call	UNIT6502_$$_PUTVALUE$WORD
.Ll812:
# [1234] if (aresult and $00FF)<>0 then clearzero else setzero;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$255,%ax
	testw	%ax,%ax
	je	.Lj1465
# PeepHole Optimization,var3
.Ll813:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1468
.Lj1465:
# PeepHole Optimization,var3
.Ll814:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1468:
.Ll815:
# [1235] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc276:
.Lt95:
.Ll816:

.section .text.n_unit6502_$$_tsb,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_TSB
UNIT6502_$$_TSB:
.Lc278:
.seh_proc UNIT6502_$$_TSB
.Ll817:
# [1239] begin
	leaq	-40(%rsp),%rsp
.Lc280:
.seh_stackalloc 40
.seh_endprologue
.Ll818:
# [1240] value:=getvalue;
	call	UNIT6502_$$_GETVALUE$$WORD
	movw	%ax,U_$UNIT6502_$$_VALUE(%rip)
.Ll819:
# [1241] aresult:=value or a;
	movzbw	U_$UNIT6502_$$_A(%rip),%dx
	movw	U_$UNIT6502_$$_VALUE(%rip),%ax
	orw	%dx,%ax
	movw	%ax,U_$UNIT6502_$$_ARESULT(%rip)
.Ll820:
# [1242] putvalue(aresult);
	movzwl	U_$UNIT6502_$$_ARESULT(%rip),%ecx
	call	UNIT6502_$$_PUTVALUE$WORD
.Ll821:
# [1243] if (aresult and $00FF)<>0 then clearzero else setzero;
	movw	U_$UNIT6502_$$_ARESULT(%rip),%ax
	andw	$255,%ax
	testw	%ax,%ax
	je	.Lj1480
# PeepHole Optimization,var3
.Ll822:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1483
.Lj1480:
# PeepHole Optimization,var3
.Ll823:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1483:
.Ll824:
# [1244] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc279:
.Lt96:
.Ll825:

.section .text.n_unit6502_$$_tsx,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_TSX
UNIT6502_$$_TSX:
.Lc281:
# [1248] begin
.Ll826:
# [1249] x := sp;
	movb	U_$UNIT6502_$$_SP(%rip),%al
# PeepHole Optimization,MovMov2Mov1
	movb	%al,U_$UNIT6502_$$_X(%rip)
.Ll827:
# [1250] if (x and $0080)<>0 then setsign else clearsign;
	andb	$128,%al
	testb	%al,%al
	je	.Lj1491
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll828:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1494
.Lj1491:
# PeepHole Optimization,var3
.Ll829:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj1494:
.Ll830:
# [1251] if (x and $00FF)<>0 then clearzero else setzero;
	movb	U_$UNIT6502_$$_X(%rip),%al
	testb	%al,%al
	je	.Lj1498
# PeepHole Optimization,var3
.Ll831:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1501
.Lj1498:
# PeepHole Optimization,var3
.Ll832:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1501:
.Ll833:
# [1252] end;
	ret
.Lc282:
.Lt73:
.Ll834:

.section .text.n_unit6502_$$_txa,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_TXA
UNIT6502_$$_TXA:
.Lc283:
# [1256] begin
.Ll835:
# [1257] a := x;
	movb	U_$UNIT6502_$$_X(%rip),%al
# PeepHole Optimization,MovMov2Mov1
	movb	%al,U_$UNIT6502_$$_A(%rip)
.Ll836:
# [1258] if (a and $0080)<>0 then setsign else clearsign;
	andb	$128,%al
	testb	%al,%al
	je	.Lj1509
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll837:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1512
.Lj1509:
# PeepHole Optimization,var3
.Ll838:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj1512:
.Ll839:
# [1259] if (a and $00FF)<>0 then clearzero else setzero;
	movb	U_$UNIT6502_$$_A(%rip),%al
	testb	%al,%al
	je	.Lj1516
# PeepHole Optimization,var3
.Ll840:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1519
.Lj1516:
# PeepHole Optimization,var3
.Ll841:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1519:
.Ll842:
# [1260] end;
	ret
.Lc284:
.Lt61:
.Ll843:

.section .text.n_unit6502_$$_txs,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_TXS
UNIT6502_$$_TXS:
.Lc285:
# [1264] begin
.Ll844:
# [1265] sp := x;
	movb	U_$UNIT6502_$$_X(%rip),%al
	movb	%al,U_$UNIT6502_$$_SP(%rip)
.Ll845:
# [1266] end;
	ret
.Lc286:
.Lt64:
.Ll846:

.section .text.n_unit6502_$$_tya,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_TYA
UNIT6502_$$_TYA:
.Lc287:
# [1270] begin
.Ll847:
# [1271] a := y;
	movb	U_$UNIT6502_$$_Y(%rip),%al
# PeepHole Optimization,MovMov2Mov1
	movb	%al,U_$UNIT6502_$$_A(%rip)
.Ll848:
# [1272] if (a and $0080)<>0 then setsign else clearsign;
	andb	$128,%al
	testb	%al,%al
	je	.Lj1531
# PeepHole Optimization,var2
# P=movb
# HP1=orb
# HP2=movb
# PeepHole Optimization,var2
.Ll849:
	orb	$128,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1534
.Lj1531:
# PeepHole Optimization,var3
.Ll850:
	andb	$-129,U_$UNIT6502_$$_STATUS(%rip)
.Lj1534:
.Ll851:
# [1273] if (a and $00FF)<>0 then clearzero else setzero;
	movb	U_$UNIT6502_$$_A(%rip),%al
	testb	%al,%al
	je	.Lj1538
# PeepHole Optimization,var3
.Ll852:
	andb	$-3,U_$UNIT6502_$$_STATUS(%rip)
	jmp	.Lj1541
.Lj1538:
# PeepHole Optimization,var3
.Ll853:
	orb	$2,U_$UNIT6502_$$_STATUS(%rip)
.Lj1541:
.Ll854:
# [1274] end;
	ret
.Lc288:
.Lt63:
.Ll855:

.section .text.n_unit6502_$$_lax,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_LAX
UNIT6502_$$_LAX:
.Lc289:
.seh_proc UNIT6502_$$_LAX
.Ll856:
# [1280] begin
	leaq	-40(%rsp),%rsp
.Lc291:
.seh_stackalloc 40
.seh_endprologue
.Ll857:
# [1281] lda;
	call	UNIT6502_$$_LDA
.Ll858:
# [1282] ldx;
	call	UNIT6502_$$_LDX
.Ll859:
# [1283] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc290:
.Lt68:
.Ll860:

.section .text.n_unit6502_$$_sax,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_SAX
UNIT6502_$$_SAX:
.Lc292:
.seh_proc UNIT6502_$$_SAX
.Ll861:
# [1287] begin
	leaq	-40(%rsp),%rsp
.Lc294:
.seh_stackalloc 40
.seh_endprologue
.Ll862:
# [1288] sta;
	call	UNIT6502_$$_STA
.Ll863:
# [1289] stx;
	call	UNIT6502_$$_STX
.Ll864:
# [1290] putvalue(a and x);
	movb	U_$UNIT6502_$$_A(%rip),%al
	movb	U_$UNIT6502_$$_X(%rip),%cl
	andb	%al,%cl
# PeepHole Optimization,var7
# PeepHole Optimization,var1
# PeepHole Optimization,var11
	andl	$255,%ecx
	call	UNIT6502_$$_PUTVALUE$WORD
.Ll865:
# [1291] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	cmpb	$0,U_$UNIT6502_$$_PENALTYOP(%rip)
	je	.Lj1551
	cmpb	$0,U_$UNIT6502_$$_PENALTYADDR(%rip)
	je	.Lj1551
	subq	$1,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Lj1551:
.Ll866:
# [1292] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc293:
.Lt57:
.Ll867:

.section .text.n_unit6502_$$_dcp,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_DCP
UNIT6502_$$_DCP:
.Lc295:
.seh_proc UNIT6502_$$_DCP
.Ll868:
# [1296] begin
	leaq	-40(%rsp),%rsp
.Lc297:
.seh_stackalloc 40
.seh_endprologue
.Ll869:
# [1297] dea;
	call	UNIT6502_$$_DEA
.Ll870:
# [1298] cmp;
	call	UNIT6502_$$_CMP
.Ll871:
# [1299] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	cmpb	$0,U_$UNIT6502_$$_PENALTYOP(%rip)
	je	.Lj1556
	cmpb	$0,U_$UNIT6502_$$_PENALTYADDR(%rip)
	je	.Lj1556
	subq	$1,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Lj1556:
.Ll872:
# [1300] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc296:
.Lt76:
.Ll873:

.section .text.n_unit6502_$$_isb,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_ISB
UNIT6502_$$_ISB:
.Lc298:
.seh_proc UNIT6502_$$_ISB
.Ll874:
# [1304] begin
	leaq	-40(%rsp),%rsp
.Lc300:
.seh_stackalloc 40
.seh_endprologue
.Ll875:
# [1305] ina;
	call	UNIT6502_$$_INA
.Ll876:
# [1306] sbc;
	call	UNIT6502_$$_SBC
.Ll877:
# [1307] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	cmpb	$0,U_$UNIT6502_$$_PENALTYOP(%rip)
	je	.Lj1561
	cmpb	$0,U_$UNIT6502_$$_PENALTYADDR(%rip)
	je	.Lj1561
	subq	$1,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Lj1561:
.Ll878:
# [1308] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc299:
.Lt83:
.Ll879:

.section .text.n_unit6502_$$_slo,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_SLO
UNIT6502_$$_SLO:
.Lc301:
.seh_proc UNIT6502_$$_SLO
.Ll880:
# [1312] begin
	leaq	-40(%rsp),%rsp
.Lc303:
.seh_stackalloc 40
.seh_endprologue
.Ll881:
# [1313] asl;
	call	UNIT6502_$$_ASL
.Ll882:
# [1314] ora;
	call	UNIT6502_$$_ORA
.Ll883:
# [1315] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	cmpb	$0,U_$UNIT6502_$$_PENALTYOP(%rip)
	je	.Lj1566
	cmpb	$0,U_$UNIT6502_$$_PENALTYADDR(%rip)
	je	.Lj1566
	subq	$1,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Lj1566:
.Ll884:
# [1316] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc302:
.Lt29:
.Ll885:

.section .text.n_unit6502_$$_rla,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_RLA
UNIT6502_$$_RLA:
.Lc304:
.seh_proc UNIT6502_$$_RLA
.Ll886:
# [1321] begin
	leaq	-40(%rsp),%rsp
.Lc306:
.seh_stackalloc 40
.seh_endprologue
.Ll887:
# [1322] rol;
	call	UNIT6502_$$_ROL
.Ll888:
# [1323] ana;
	call	UNIT6502_$$_ANA
.Ll889:
# [1324] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	cmpb	$0,U_$UNIT6502_$$_PENALTYOP(%rip)
	je	.Lj1571
	cmpb	$0,U_$UNIT6502_$$_PENALTYADDR(%rip)
	je	.Lj1571
	subq	$1,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Lj1571:
.Ll890:
# [1325] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc305:
.Lt35:
.Ll891:

.section .text.n_unit6502_$$_sre,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_SRE
UNIT6502_$$_SRE:
.Lc307:
.seh_proc UNIT6502_$$_SRE
.Ll892:
# [1329] begin
	leaq	-40(%rsp),%rsp
.Lc309:
.seh_stackalloc 40
.seh_endprologue
.Ll893:
# [1330] lsr;
	call	UNIT6502_$$_LSR
.Ll894:
# [1331] eor;
	call	UNIT6502_$$_EOR
.Ll895:
# [1332] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	cmpb	$0,U_$UNIT6502_$$_PENALTYOP(%rip)
	je	.Lj1576
	cmpb	$0,U_$UNIT6502_$$_PENALTYADDR(%rip)
	je	.Lj1576
	subq	$1,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Lj1576:
.Ll896:
# [1333] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc308:
.Lt43:
.Ll897:

.section .text.n_unit6502_$$_rra,"x"
	.balign 16,0x90
.globl	UNIT6502_$$_RRA
UNIT6502_$$_RRA:
.Lc310:
.seh_proc UNIT6502_$$_RRA
.Ll898:
# [1337] begin
	leaq	-40(%rsp),%rsp
.Lc312:
.seh_stackalloc 40
.seh_endprologue
.Ll899:
# [1338] ror;
	call	UNIT6502_$$_ROR
.Ll900:
# [1339] adc;
	call	UNIT6502_$$_ADC
.Ll901:
# [1340] if (penaltyop<>0) and (penaltyaddr<>0) then dec (clockticks6502);
	cmpb	$0,U_$UNIT6502_$$_PENALTYOP(%rip)
	je	.Lj1581
	cmpb	$0,U_$UNIT6502_$$_PENALTYADDR(%rip)
	je	.Lj1581
	subq	$1,TC_$UNIT6502_$$_CLOCKTICKS6502(%rip)
.Lj1581:
.Ll902:
# [1341] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc311:
.Lt52:
.Ll903:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
# [10] var ram:array[-2..65537] of byte;
	.globl U_$UNIT6502_$$_RAM
U_$UNIT6502_$$_RAM:
	.zero 65540

.section .bss
	.balign 2
# [232] var pc:word;
U_$UNIT6502_$$_PC:
	.zero 2

.section .bss
# [233] var sp,a,x,y,status:byte;
U_$UNIT6502_$$_SP:
	.zero 1

.section .bss
U_$UNIT6502_$$_A:
	.zero 1

.section .bss
U_$UNIT6502_$$_X:
	.zero 1

.section .bss
U_$UNIT6502_$$_Y:
	.zero 1

.section .bss
U_$UNIT6502_$$_STATUS:
	.zero 1

.section .bss
	.balign 2
# [239] oldpc,ea,reladdr,value,aresult:word;
U_$UNIT6502_$$_OLDPC:
	.zero 2

.section .bss
	.balign 2
U_$UNIT6502_$$_EA:
	.zero 2

.section .bss
	.balign 2
U_$UNIT6502_$$_RELADDR:
	.zero 2

.section .bss
	.balign 2
U_$UNIT6502_$$_VALUE:
	.zero 2

.section .bss
	.balign 2
U_$UNIT6502_$$_ARESULT:
	.zero 2

.section .bss
# [240] opcode:byte;
U_$UNIT6502_$$_OPCODE:
	.zero 1

.section .bss
# [241] penaltyop,penaltyaddr:byte;
U_$UNIT6502_$$_PENALTYOP:
	.zero 1

.section .bss
U_$UNIT6502_$$_PENALTYADDR:
	.zero 1

.section .bss
	.balign 8
# [242] csa,dsa,csi,dsi:int64;
U_$UNIT6502_$$_CSA:
	.zero 8

.section .bss
	.balign 8
U_$UNIT6502_$$_DSA:
	.zero 8

.section .bss
	.balign 8
U_$UNIT6502_$$_CSI:
	.zero 8

.section .bss
	.balign 8
U_$UNIT6502_$$_DSI:
	.zero 8

.section .bss
	.balign 8
# [243] cs,ds:^int64;
U_$UNIT6502_$$_CS:
	.zero 8

.section .bss
	.balign 8
U_$UNIT6502_$$_DS:
	.zero 8
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .data.n_tc_$unit6502_$$_instructions,"d"
	.balign 8
.globl	TC_$UNIT6502_$$_INSTRUCTIONS
TC_$UNIT6502_$$_INSTRUCTIONS:
	.quad	0
# [13] clockticks6502:int64=0;

.section .data.n_tc_$unit6502_$$_clockticks6502,"d"
	.balign 8
.globl	TC_$UNIT6502_$$_CLOCKTICKS6502
TC_$UNIT6502_$$_CLOCKTICKS6502:
	.quad	0
# [14] clockgoal6502:int64=0;

.section .data.n_tc_$unit6502_$$_clockgoal6502,"d"
	.balign 8
.globl	TC_$UNIT6502_$$_CLOCKGOAL6502
TC_$UNIT6502_$$_CLOCKGOAL6502:
	.quad	0
# [16] function read6502(address:int64):byte;

.section .data.n_tc_$unit6502_$$_addrtable,"d"
	.balign 8
TC_$UNIT6502_$$_ADDRTABLE:
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_INDX
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_INDX
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_ACC
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_REL
	.quad	UNIT6502_$$_INDY
	.quad	UNIT6502_$$_IZP
	.quad	UNIT6502_$$_INDY
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_ABSY
	.quad	UNIT6502_$$_ACC
	.quad	UNIT6502_$$_ABSY
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_INDX
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_INDX
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_ACC
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_REL
	.quad	UNIT6502_$$_INDY
	.quad	UNIT6502_$$_IZP
	.quad	UNIT6502_$$_INDY
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_ABSY
	.quad	UNIT6502_$$_ACC
	.quad	UNIT6502_$$_ABSY
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_INDX
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_INDX
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_ACC
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_REL
	.quad	UNIT6502_$$_INDY
	.quad	UNIT6502_$$_IZP
	.quad	UNIT6502_$$_INDY
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_ABSY
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_ABSY
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_INDX
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_INDX
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_ACC
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_IND
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_REL
	.quad	UNIT6502_$$_INDY
	.quad	UNIT6502_$$_IZP
	.quad	UNIT6502_$$_INDY
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_ABSY
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_ABSY
	.quad	UNIT6502_$$_IAX
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_INDX
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_INDX
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_REL
	.quad	UNIT6502_$$_INDY
	.quad	UNIT6502_$$_IZP
	.quad	UNIT6502_$$_INDY
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPY
	.quad	UNIT6502_$$_ZPY
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_ABSY
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_ABSY
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSY
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_INDX
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_INDX
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_REL
	.quad	UNIT6502_$$_INDY
	.quad	UNIT6502_$$_IZP
	.quad	UNIT6502_$$_INDY
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPY
	.quad	UNIT6502_$$_ZPY
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_ABSY
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_ABSY
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSY
	.quad	UNIT6502_$$_ABSY
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_INDX
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_INDX
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_REL
	.quad	UNIT6502_$$_INDY
	.quad	UNIT6502_$$_IZP
	.quad	UNIT6502_$$_INDY
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_ABSY
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_ABSY
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_INDX
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_INDX
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_ZP
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_IMM
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_ABSO
	.quad	UNIT6502_$$_REL
	.quad	UNIT6502_$$_INDY
	.quad	UNIT6502_$$_IZP
	.quad	UNIT6502_$$_INDY
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_ZPX
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_ABSY
	.quad	UNIT6502_$$_IMP
	.quad	UNIT6502_$$_ABSY
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSX
	.quad	UNIT6502_$$_ABSX
# [165] var optable:array[0..255] of TOpcode=(

.section .data.n_tc_$unit6502_$$_optable,"d"
	.balign 8
TC_$UNIT6502_$$_OPTABLE:
	.quad	UNIT6502_$$_BRK
	.quad	UNIT6502_$$_ORA
	.quad	UNIT6502_$$_LDC
	.quad	UNIT6502_$$_SLO
	.quad	UNIT6502_$$_TSB
	.quad	UNIT6502_$$_ORA
	.quad	UNIT6502_$$_ASL
	.quad	UNIT6502_$$_SLO
	.quad	UNIT6502_$$_PHP
	.quad	UNIT6502_$$_ORA
	.quad	UNIT6502_$$_ASL
	.quad	UNIT6502_$$_NOP
	.quad	UNIT6502_$$_TSB
	.quad	UNIT6502_$$_ORA
	.quad	UNIT6502_$$_ASL
	.quad	UNIT6502_$$_SLO
	.quad	UNIT6502_$$_BPL
	.quad	UNIT6502_$$_ORA
	.quad	UNIT6502_$$_ORA
	.quad	UNIT6502_$$_SLO
	.quad	UNIT6502_$$_TRB
	.quad	UNIT6502_$$_ORA
	.quad	UNIT6502_$$_ASL
	.quad	UNIT6502_$$_SLO
	.quad	UNIT6502_$$_CLC
	.quad	UNIT6502_$$_ORA
	.quad	UNIT6502_$$_INA
	.quad	UNIT6502_$$_SLO
	.quad	UNIT6502_$$_TRB
	.quad	UNIT6502_$$_ORA
	.quad	UNIT6502_$$_ASL
	.quad	UNIT6502_$$_SLO
	.quad	UNIT6502_$$_JSR
	.quad	UNIT6502_$$_ANA
	.quad	UNIT6502_$$_LDD
	.quad	UNIT6502_$$_RLA
	.quad	UNIT6502_$$_BIT
	.quad	UNIT6502_$$_ANA
	.quad	UNIT6502_$$_ROL
	.quad	UNIT6502_$$_RLA
	.quad	UNIT6502_$$_PLP
	.quad	UNIT6502_$$_ANA
	.quad	UNIT6502_$$_ROL
	.quad	UNIT6502_$$_NOP
	.quad	UNIT6502_$$_BIT
	.quad	UNIT6502_$$_ANA
	.quad	UNIT6502_$$_ROL
	.quad	UNIT6502_$$_RLA
	.quad	UNIT6502_$$_BMI
	.quad	UNIT6502_$$_ANA
	.quad	UNIT6502_$$_ANA
	.quad	UNIT6502_$$_RLA
	.quad	UNIT6502_$$_BIT
	.quad	UNIT6502_$$_ANA
	.quad	UNIT6502_$$_ROL
	.quad	UNIT6502_$$_RLA
	.quad	UNIT6502_$$_SEC
	.quad	UNIT6502_$$_ANA
	.quad	UNIT6502_$$_DEA
	.quad	UNIT6502_$$_RLA
	.quad	UNIT6502_$$_BIT
	.quad	UNIT6502_$$_ANA
	.quad	UNIT6502_$$_ROL
	.quad	UNIT6502_$$_RLA
	.quad	UNIT6502_$$_RTI
	.quad	UNIT6502_$$_EOR
	.quad	UNIT6502_$$_STC
	.quad	UNIT6502_$$_SRE
	.quad	UNIT6502_$$_PLD
	.quad	UNIT6502_$$_EOR
	.quad	UNIT6502_$$_LSR
	.quad	UNIT6502_$$_SRE
	.quad	UNIT6502_$$_PHA
	.quad	UNIT6502_$$_EOR
	.quad	UNIT6502_$$_LSR
	.quad	UNIT6502_$$_NOP
	.quad	UNIT6502_$$_JMP
	.quad	UNIT6502_$$_EOR
	.quad	UNIT6502_$$_LSR
	.quad	UNIT6502_$$_SRE
	.quad	UNIT6502_$$_BVC
	.quad	UNIT6502_$$_EOR
	.quad	UNIT6502_$$_EOR
	.quad	UNIT6502_$$_SRE
	.quad	UNIT6502_$$_NOP
	.quad	UNIT6502_$$_EOR
	.quad	UNIT6502_$$_LSR
	.quad	UNIT6502_$$_SRE
	.quad	UNIT6502_$$_CLI
	.quad	UNIT6502_$$_EOR
	.quad	UNIT6502_$$_PHY
	.quad	UNIT6502_$$_SRE
	.quad	UNIT6502_$$_NOP
	.quad	UNIT6502_$$_EOR
	.quad	UNIT6502_$$_LSR
	.quad	UNIT6502_$$_SRE
	.quad	UNIT6502_$$_RTS
	.quad	UNIT6502_$$_ADC
	.quad	UNIT6502_$$_STD
	.quad	UNIT6502_$$_RRA
	.quad	UNIT6502_$$_STZ
	.quad	UNIT6502_$$_ADC
	.quad	UNIT6502_$$_ROR
	.quad	UNIT6502_$$_RRA
	.quad	UNIT6502_$$_PLA
	.quad	UNIT6502_$$_ADC
	.quad	UNIT6502_$$_ROR
	.quad	UNIT6502_$$_NOP
	.quad	UNIT6502_$$_JMP
	.quad	UNIT6502_$$_ADC
	.quad	UNIT6502_$$_ROR
	.quad	UNIT6502_$$_RRA
	.quad	UNIT6502_$$_BVS
	.quad	UNIT6502_$$_ADC
	.quad	UNIT6502_$$_ADC
	.quad	UNIT6502_$$_RRA
	.quad	UNIT6502_$$_STZ
	.quad	UNIT6502_$$_ADC
	.quad	UNIT6502_$$_ROR
	.quad	UNIT6502_$$_RRA
	.quad	UNIT6502_$$_SEI
	.quad	UNIT6502_$$_ADC
	.quad	UNIT6502_$$_PLY
	.quad	UNIT6502_$$_RRA
	.quad	UNIT6502_$$_JMP
	.quad	UNIT6502_$$_ADC
	.quad	UNIT6502_$$_ROR
	.quad	UNIT6502_$$_RRA
	.quad	UNIT6502_$$_BRA
	.quad	UNIT6502_$$_STA
	.quad	UNIT6502_$$_PLC
	.quad	UNIT6502_$$_SAX
	.quad	UNIT6502_$$_STY
	.quad	UNIT6502_$$_STA
	.quad	UNIT6502_$$_STX
	.quad	UNIT6502_$$_SAX
	.quad	UNIT6502_$$_DEY
	.quad	UNIT6502_$$_BIT
	.quad	UNIT6502_$$_TXA
	.quad	UNIT6502_$$_NOP
	.quad	UNIT6502_$$_STY
	.quad	UNIT6502_$$_STA
	.quad	UNIT6502_$$_STX
	.quad	UNIT6502_$$_SAX
	.quad	UNIT6502_$$_BCC
	.quad	UNIT6502_$$_STA
	.quad	UNIT6502_$$_STA
	.quad	UNIT6502_$$_NOP
	.quad	UNIT6502_$$_STY
	.quad	UNIT6502_$$_STA
	.quad	UNIT6502_$$_STX
	.quad	UNIT6502_$$_SAX
	.quad	UNIT6502_$$_TYA
	.quad	UNIT6502_$$_STA
	.quad	UNIT6502_$$_TXS
	.quad	UNIT6502_$$_NOP
	.quad	UNIT6502_$$_STZ
	.quad	UNIT6502_$$_STA
	.quad	UNIT6502_$$_STZ
	.quad	UNIT6502_$$_NOP
	.quad	UNIT6502_$$_LDY
	.quad	UNIT6502_$$_LDA
	.quad	UNIT6502_$$_LDX
	.quad	UNIT6502_$$_LAX
	.quad	UNIT6502_$$_LDY
	.quad	UNIT6502_$$_LDA
	.quad	UNIT6502_$$_LDX
	.quad	UNIT6502_$$_LAX
	.quad	UNIT6502_$$_TAY
	.quad	UNIT6502_$$_LDA
	.quad	UNIT6502_$$_TAX
	.quad	UNIT6502_$$_NOP
	.quad	UNIT6502_$$_LDY
	.quad	UNIT6502_$$_LDA
	.quad	UNIT6502_$$_LDX
	.quad	UNIT6502_$$_LAX
	.quad	UNIT6502_$$_BCS
	.quad	UNIT6502_$$_LDA
	.quad	UNIT6502_$$_LDA
	.quad	UNIT6502_$$_LAX
	.quad	UNIT6502_$$_LDY
	.quad	UNIT6502_$$_LDA
	.quad	UNIT6502_$$_LDX
	.quad	UNIT6502_$$_LAX
	.quad	UNIT6502_$$_CLV
	.quad	UNIT6502_$$_LDA
	.quad	UNIT6502_$$_TSX
	.quad	UNIT6502_$$_LAX
	.quad	UNIT6502_$$_LDY
	.quad	UNIT6502_$$_LDA
	.quad	UNIT6502_$$_LDX
	.quad	UNIT6502_$$_LAX
	.quad	UNIT6502_$$_CPY
	.quad	UNIT6502_$$_CMP
	.quad	UNIT6502_$$_PHC
	.quad	UNIT6502_$$_DCP
	.quad	UNIT6502_$$_CPY
	.quad	UNIT6502_$$_CMP
	.quad	UNIT6502_$$_DEA
	.quad	UNIT6502_$$_DCP
	.quad	UNIT6502_$$_INY
	.quad	UNIT6502_$$_CMP
	.quad	UNIT6502_$$_DEX
	.quad	UNIT6502_$$_NOP
	.quad	UNIT6502_$$_CPY
	.quad	UNIT6502_$$_CMP
	.quad	UNIT6502_$$_DEA
	.quad	UNIT6502_$$_DCP
	.quad	UNIT6502_$$_BNE
	.quad	UNIT6502_$$_CMP
	.quad	UNIT6502_$$_CMP
	.quad	UNIT6502_$$_DCP
	.quad	UNIT6502_$$_NOP
	.quad	UNIT6502_$$_CMP
	.quad	UNIT6502_$$_DEA
	.quad	UNIT6502_$$_DCP
	.quad	UNIT6502_$$_CLD
	.quad	UNIT6502_$$_CMP
	.quad	UNIT6502_$$_PHX
	.quad	UNIT6502_$$_DCP
	.quad	UNIT6502_$$_NOP
	.quad	UNIT6502_$$_CMP
	.quad	UNIT6502_$$_DEA
	.quad	UNIT6502_$$_DCP
	.quad	UNIT6502_$$_CPX
	.quad	UNIT6502_$$_SBC
	.quad	UNIT6502_$$_PHD
	.quad	UNIT6502_$$_ISB
	.quad	UNIT6502_$$_CPX
	.quad	UNIT6502_$$_SBC
	.quad	UNIT6502_$$_INA
	.quad	UNIT6502_$$_ISB
	.quad	UNIT6502_$$_INX
	.quad	UNIT6502_$$_SBC
	.quad	UNIT6502_$$_NOP
	.quad	UNIT6502_$$_SBC
	.quad	UNIT6502_$$_CPX
	.quad	UNIT6502_$$_SBC
	.quad	UNIT6502_$$_INA
	.quad	UNIT6502_$$_ISB
	.quad	UNIT6502_$$_BEQ
	.quad	UNIT6502_$$_SBC
	.quad	UNIT6502_$$_SBC
	.quad	UNIT6502_$$_ISB
	.quad	UNIT6502_$$_NOP
	.quad	UNIT6502_$$_SBC
	.quad	UNIT6502_$$_INA
	.quad	UNIT6502_$$_ISB
	.quad	UNIT6502_$$_SED
	.quad	UNIT6502_$$_SBC
	.quad	UNIT6502_$$_PLX
	.quad	UNIT6502_$$_ISB
	.quad	UNIT6502_$$_NOP
	.quad	UNIT6502_$$_SBC
	.quad	UNIT6502_$$_INA
	.quad	UNIT6502_$$_ISB
# [185] var ticktable:array[0..255] of byte = (

.section .data.n_tc_$unit6502_$$_ticktable,"d"
TC_$UNIT6502_$$_TICKTABLE:
	.byte	7,6,7,8,5,3,5,5,3,2,2,2,6,4,6,6,2,5,5,8,5,4,6,6,2,4,2,7,6,4,7,7,6,6,7,8,3,3,5,5,4,2,2,2,4,4,6,6,2,5,5,8,4,4,6,6,2,4,2,7,4,4,7,7,6,6,7,8,7,3,5
	.byte	5,3,2,2,2,3,4,6,6,2,5,5,8,4,4,6,6,2,4,3,7,4,4,7,7,6,6,7,8,3,3,5,5,4,2,2,2,5,4,6,6,2,5,5,8,4,4,6,6,2,4,4,7,6,4,7,7,3,6,7,6,3,3,3,3,2,2,2,2,4,4
	.byte	4,4,2,6,5,6,4,4,4,4,2,5,2,5,4,5,5,5,2,6,2,6,3,3,3,3,2,2,2,2,4,4,4,4,2,5,5,5,4,4,4,4,2,4,2,4,4,4,4,4,2,6,6,8,3,3,5,5,2,2,2,2,4,4,6,6,2,5,5,8,4
	.byte	4,6,6,2,4,3,7,4,4,7,7,2,6,6,8,3,3,5,5,2,2,2,2,4,4,6,6,2,5,5,8,4,4,6,6,2,4,4,7,4,4,7,7
# End asmlist al_typedconsts
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc313:
	.long	.Lc315-.Lc314
.Lc314:
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
.Lc315:
	.long	.Lc317-.Lc316
.Lc316:
	.secrel32	.Lc313
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.balign 4,0
.Lc317:
	.long	.Lc319-.Lc318
.Lc318:
	.secrel32	.Lc313
	.quad	.Lc3
	.quad	.Lc4-.Lc3
	.balign 4,0
.Lc319:
	.long	.Lc321-.Lc320
.Lc320:
	.secrel32	.Lc313
	.quad	.Lc5
	.quad	.Lc6-.Lc5
	.byte	4
	.long	.Lc7-.Lc5
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc321:
	.long	.Lc323-.Lc322
.Lc322:
	.secrel32	.Lc313
	.quad	.Lc8
	.quad	.Lc9-.Lc8
	.byte	4
	.long	.Lc10-.Lc8
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc323:
	.long	.Lc325-.Lc324
.Lc324:
	.secrel32	.Lc313
	.quad	.Lc11
	.quad	.Lc12-.Lc11
	.byte	4
	.long	.Lc13-.Lc11
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc325:
	.long	.Lc327-.Lc326
.Lc326:
	.secrel32	.Lc313
	.quad	.Lc14
	.quad	.Lc15-.Lc14
	.byte	4
	.long	.Lc16-.Lc14
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc327:
	.long	.Lc329-.Lc328
.Lc328:
	.secrel32	.Lc313
	.quad	.Lc17
	.quad	.Lc18-.Lc17
	.byte	4
	.long	.Lc19-.Lc17
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc329:
	.long	.Lc331-.Lc330
.Lc330:
	.secrel32	.Lc313
	.quad	.Lc20
	.quad	.Lc21-.Lc20
	.byte	4
	.long	.Lc22-.Lc20
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc331:
	.long	.Lc333-.Lc332
.Lc332:
	.secrel32	.Lc313
	.quad	.Lc23
	.quad	.Lc24-.Lc23
	.byte	4
	.long	.Lc25-.Lc23
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc333:
	.long	.Lc335-.Lc334
.Lc334:
	.secrel32	.Lc313
	.quad	.Lc26
	.quad	.Lc27-.Lc26
	.byte	4
	.long	.Lc28-.Lc26
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc335:
	.long	.Lc337-.Lc336
.Lc336:
	.secrel32	.Lc313
	.quad	.Lc29
	.quad	.Lc30-.Lc29
	.byte	4
	.long	.Lc31-.Lc29
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc337:
	.long	.Lc339-.Lc338
.Lc338:
	.secrel32	.Lc313
	.quad	.Lc32
	.quad	.Lc33-.Lc32
	.byte	4
	.long	.Lc34-.Lc32
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc339:
	.long	.Lc341-.Lc340
.Lc340:
	.secrel32	.Lc313
	.quad	.Lc35
	.quad	.Lc36-.Lc35
	.byte	4
	.long	.Lc37-.Lc35
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc341:
	.long	.Lc343-.Lc342
.Lc342:
	.secrel32	.Lc313
	.quad	.Lc38
	.quad	.Lc39-.Lc38
	.byte	4
	.long	.Lc40-.Lc38
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc343:
	.long	.Lc345-.Lc344
.Lc344:
	.secrel32	.Lc313
	.quad	.Lc41
	.quad	.Lc42-.Lc41
	.byte	4
	.long	.Lc43-.Lc41
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc345:
	.long	.Lc347-.Lc346
.Lc346:
	.secrel32	.Lc313
	.quad	.Lc44
	.quad	.Lc45-.Lc44
	.byte	4
	.long	.Lc46-.Lc44
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc347:
	.long	.Lc349-.Lc348
.Lc348:
	.secrel32	.Lc313
	.quad	.Lc47
	.quad	.Lc48-.Lc47
	.byte	4
	.long	.Lc49-.Lc47
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc349:
	.long	.Lc351-.Lc350
.Lc350:
	.secrel32	.Lc313
	.quad	.Lc50
	.quad	.Lc51-.Lc50
	.byte	4
	.long	.Lc52-.Lc50
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc351:
	.long	.Lc353-.Lc352
.Lc352:
	.secrel32	.Lc313
	.quad	.Lc53
	.quad	.Lc54-.Lc53
	.byte	4
	.long	.Lc55-.Lc53
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc353:
	.long	.Lc355-.Lc354
.Lc354:
	.secrel32	.Lc313
	.quad	.Lc56
	.quad	.Lc57-.Lc56
	.byte	4
	.long	.Lc58-.Lc56
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc355:
	.long	.Lc357-.Lc356
.Lc356:
	.secrel32	.Lc313
	.quad	.Lc59
	.quad	.Lc60-.Lc59
	.balign 4,0
.Lc357:
	.long	.Lc359-.Lc358
.Lc358:
	.secrel32	.Lc313
	.quad	.Lc61
	.quad	.Lc62-.Lc61
	.balign 4,0
.Lc359:
	.long	.Lc361-.Lc360
.Lc360:
	.secrel32	.Lc313
	.quad	.Lc63
	.quad	.Lc64-.Lc63
	.balign 4,0
.Lc361:
	.long	.Lc363-.Lc362
.Lc362:
	.secrel32	.Lc313
	.quad	.Lc65
	.quad	.Lc66-.Lc65
	.byte	4
	.long	.Lc67-.Lc65
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc363:
	.long	.Lc365-.Lc364
.Lc364:
	.secrel32	.Lc313
	.quad	.Lc68
	.quad	.Lc69-.Lc68
	.byte	4
	.long	.Lc70-.Lc68
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc365:
	.long	.Lc367-.Lc366
.Lc366:
	.secrel32	.Lc313
	.quad	.Lc71
	.quad	.Lc72-.Lc71
	.byte	4
	.long	.Lc73-.Lc71
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc367:
	.long	.Lc369-.Lc368
.Lc368:
	.secrel32	.Lc313
	.quad	.Lc74
	.quad	.Lc75-.Lc74
	.byte	4
	.long	.Lc76-.Lc74
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc369:
	.long	.Lc371-.Lc370
.Lc370:
	.secrel32	.Lc313
	.quad	.Lc77
	.quad	.Lc78-.Lc77
	.byte	4
	.long	.Lc79-.Lc77
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc371:
	.long	.Lc373-.Lc372
.Lc372:
	.secrel32	.Lc313
	.quad	.Lc80
	.quad	.Lc81-.Lc80
	.byte	4
	.long	.Lc82-.Lc80
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc373:
	.long	.Lc375-.Lc374
.Lc374:
	.secrel32	.Lc313
	.quad	.Lc83
	.quad	.Lc84-.Lc83
	.byte	4
	.long	.Lc85-.Lc83
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc375:
	.long	.Lc377-.Lc376
.Lc376:
	.secrel32	.Lc313
	.quad	.Lc86
	.quad	.Lc87-.Lc86
	.byte	4
	.long	.Lc88-.Lc86
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc377:
	.long	.Lc379-.Lc378
.Lc378:
	.secrel32	.Lc313
	.quad	.Lc89
	.quad	.Lc90-.Lc89
	.byte	4
	.long	.Lc91-.Lc89
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc379:
	.long	.Lc381-.Lc380
.Lc380:
	.secrel32	.Lc313
	.quad	.Lc92
	.quad	.Lc93-.Lc92
	.byte	4
	.long	.Lc94-.Lc92
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc381:
	.long	.Lc383-.Lc382
.Lc382:
	.secrel32	.Lc313
	.quad	.Lc95
	.quad	.Lc96-.Lc95
	.byte	4
	.long	.Lc97-.Lc95
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc383:
	.long	.Lc385-.Lc384
.Lc384:
	.secrel32	.Lc313
	.quad	.Lc98
	.quad	.Lc99-.Lc98
	.byte	4
	.long	.Lc100-.Lc98
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc385:
	.long	.Lc387-.Lc386
.Lc386:
	.secrel32	.Lc313
	.quad	.Lc101
	.quad	.Lc102-.Lc101
	.byte	4
	.long	.Lc103-.Lc101
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc387:
	.long	.Lc389-.Lc388
.Lc388:
	.secrel32	.Lc313
	.quad	.Lc104
	.quad	.Lc105-.Lc104
	.byte	4
	.long	.Lc106-.Lc104
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc389:
	.long	.Lc391-.Lc390
.Lc390:
	.secrel32	.Lc313
	.quad	.Lc107
	.quad	.Lc108-.Lc107
	.byte	4
	.long	.Lc109-.Lc107
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc391:
	.long	.Lc393-.Lc392
.Lc392:
	.secrel32	.Lc313
	.quad	.Lc110
	.quad	.Lc111-.Lc110
	.balign 4,0
.Lc393:
	.long	.Lc395-.Lc394
.Lc394:
	.secrel32	.Lc313
	.quad	.Lc112
	.quad	.Lc113-.Lc112
	.balign 4,0
.Lc395:
	.long	.Lc397-.Lc396
.Lc396:
	.secrel32	.Lc313
	.quad	.Lc114
	.quad	.Lc115-.Lc114
	.balign 4,0
.Lc397:
	.long	.Lc399-.Lc398
.Lc398:
	.secrel32	.Lc313
	.quad	.Lc116
	.quad	.Lc117-.Lc116
	.byte	4
	.long	.Lc118-.Lc116
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc399:
	.long	.Lc401-.Lc400
.Lc400:
	.secrel32	.Lc313
	.quad	.Lc119
	.quad	.Lc120-.Lc119
	.balign 4,0
.Lc401:
	.long	.Lc403-.Lc402
.Lc402:
	.secrel32	.Lc313
	.quad	.Lc121
	.quad	.Lc122-.Lc121
	.balign 4,0
.Lc403:
	.long	.Lc405-.Lc404
.Lc404:
	.secrel32	.Lc313
	.quad	.Lc123
	.quad	.Lc124-.Lc123
	.balign 4,0
.Lc405:
	.long	.Lc407-.Lc406
.Lc406:
	.secrel32	.Lc313
	.quad	.Lc125
	.quad	.Lc126-.Lc125
	.balign 4,0
.Lc407:
	.long	.Lc409-.Lc408
.Lc408:
	.secrel32	.Lc313
	.quad	.Lc127
	.quad	.Lc128-.Lc127
	.byte	4
	.long	.Lc129-.Lc127
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc409:
	.long	.Lc411-.Lc410
.Lc410:
	.secrel32	.Lc313
	.quad	.Lc130
	.quad	.Lc131-.Lc130
	.balign 4,0
.Lc411:
	.long	.Lc413-.Lc412
.Lc412:
	.secrel32	.Lc313
	.quad	.Lc132
	.quad	.Lc133-.Lc132
	.balign 4,0
.Lc413:
	.long	.Lc415-.Lc414
.Lc414:
	.secrel32	.Lc313
	.quad	.Lc134
	.quad	.Lc135-.Lc134
	.balign 4,0
.Lc415:
	.long	.Lc417-.Lc416
.Lc416:
	.secrel32	.Lc313
	.quad	.Lc136
	.quad	.Lc137-.Lc136
	.balign 4,0
.Lc417:
	.long	.Lc419-.Lc418
.Lc418:
	.secrel32	.Lc313
	.quad	.Lc138
	.quad	.Lc139-.Lc138
	.balign 4,0
.Lc419:
	.long	.Lc421-.Lc420
.Lc420:
	.secrel32	.Lc313
	.quad	.Lc140
	.quad	.Lc141-.Lc140
	.balign 4,0
.Lc421:
	.long	.Lc423-.Lc422
.Lc422:
	.secrel32	.Lc313
	.quad	.Lc142
	.quad	.Lc143-.Lc142
	.byte	4
	.long	.Lc144-.Lc142
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc423:
	.long	.Lc425-.Lc424
.Lc424:
	.secrel32	.Lc313
	.quad	.Lc145
	.quad	.Lc146-.Lc145
	.byte	4
	.long	.Lc147-.Lc145
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc425:
	.long	.Lc427-.Lc426
.Lc426:
	.secrel32	.Lc313
	.quad	.Lc148
	.quad	.Lc149-.Lc148
	.byte	4
	.long	.Lc150-.Lc148
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc427:
	.long	.Lc429-.Lc428
.Lc428:
	.secrel32	.Lc313
	.quad	.Lc151
	.quad	.Lc152-.Lc151
	.byte	4
	.long	.Lc153-.Lc151
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc429:
	.long	.Lc431-.Lc430
.Lc430:
	.secrel32	.Lc313
	.quad	.Lc154
	.quad	.Lc155-.Lc154
	.balign 4,0
.Lc431:
	.long	.Lc433-.Lc432
.Lc432:
	.secrel32	.Lc313
	.quad	.Lc156
	.quad	.Lc157-.Lc156
	.balign 4,0
.Lc433:
	.long	.Lc435-.Lc434
.Lc434:
	.secrel32	.Lc313
	.quad	.Lc158
	.quad	.Lc159-.Lc158
	.byte	4
	.long	.Lc160-.Lc158
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc435:
	.long	.Lc437-.Lc436
.Lc436:
	.secrel32	.Lc313
	.quad	.Lc161
	.quad	.Lc162-.Lc161
	.byte	4
	.long	.Lc163-.Lc161
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc437:
	.long	.Lc439-.Lc438
.Lc438:
	.secrel32	.Lc313
	.quad	.Lc164
	.quad	.Lc165-.Lc164
	.balign 4,0
.Lc439:
	.long	.Lc441-.Lc440
.Lc440:
	.secrel32	.Lc313
	.quad	.Lc166
	.quad	.Lc167-.Lc166
	.balign 4,0
.Lc441:
	.long	.Lc443-.Lc442
.Lc442:
	.secrel32	.Lc313
	.quad	.Lc168
	.quad	.Lc169-.Lc168
	.balign 4,0
.Lc443:
	.long	.Lc445-.Lc444
.Lc444:
	.secrel32	.Lc313
	.quad	.Lc170
	.quad	.Lc171-.Lc170
	.byte	4
	.long	.Lc172-.Lc170
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc445:
	.long	.Lc447-.Lc446
.Lc446:
	.secrel32	.Lc313
	.quad	.Lc173
	.quad	.Lc174-.Lc173
	.byte	4
	.long	.Lc175-.Lc173
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc447:
	.long	.Lc449-.Lc448
.Lc448:
	.secrel32	.Lc313
	.quad	.Lc176
	.quad	.Lc177-.Lc176
	.byte	4
	.long	.Lc178-.Lc176
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc449:
	.long	.Lc451-.Lc450
.Lc450:
	.secrel32	.Lc313
	.quad	.Lc179
	.quad	.Lc180-.Lc179
	.byte	4
	.long	.Lc181-.Lc179
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc451:
	.long	.Lc453-.Lc452
.Lc452:
	.secrel32	.Lc313
	.quad	.Lc182
	.quad	.Lc183-.Lc182
	.byte	4
	.long	.Lc184-.Lc182
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc453:
	.long	.Lc455-.Lc454
.Lc454:
	.secrel32	.Lc313
	.quad	.Lc185
	.quad	.Lc186-.Lc185
	.byte	4
	.long	.Lc187-.Lc185
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc455:
	.long	.Lc457-.Lc456
.Lc456:
	.secrel32	.Lc313
	.quad	.Lc188
	.quad	.Lc189-.Lc188
	.byte	4
	.long	.Lc190-.Lc188
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc457:
	.long	.Lc459-.Lc458
.Lc458:
	.secrel32	.Lc313
	.quad	.Lc191
	.quad	.Lc192-.Lc191
	.balign 4,0
.Lc459:
	.long	.Lc461-.Lc460
.Lc460:
	.secrel32	.Lc313
	.quad	.Lc193
	.quad	.Lc194-.Lc193
	.byte	4
	.long	.Lc195-.Lc193
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc461:
	.long	.Lc463-.Lc462
.Lc462:
	.secrel32	.Lc313
	.quad	.Lc196
	.quad	.Lc197-.Lc196
	.byte	4
	.long	.Lc198-.Lc196
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc463:
	.long	.Lc465-.Lc464
.Lc464:
	.secrel32	.Lc313
	.quad	.Lc199
	.quad	.Lc200-.Lc199
	.byte	4
	.long	.Lc201-.Lc199
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc465:
	.long	.Lc467-.Lc466
.Lc466:
	.secrel32	.Lc313
	.quad	.Lc202
	.quad	.Lc203-.Lc202
	.byte	4
	.long	.Lc204-.Lc202
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc467:
	.long	.Lc469-.Lc468
.Lc468:
	.secrel32	.Lc313
	.quad	.Lc205
	.quad	.Lc206-.Lc205
	.byte	4
	.long	.Lc207-.Lc205
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc469:
	.long	.Lc471-.Lc470
.Lc470:
	.secrel32	.Lc313
	.quad	.Lc208
	.quad	.Lc209-.Lc208
	.byte	4
	.long	.Lc210-.Lc208
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc471:
	.long	.Lc473-.Lc472
.Lc472:
	.secrel32	.Lc313
	.quad	.Lc211
	.quad	.Lc212-.Lc211
	.byte	4
	.long	.Lc213-.Lc211
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc473:
	.long	.Lc475-.Lc474
.Lc474:
	.secrel32	.Lc313
	.quad	.Lc214
	.quad	.Lc215-.Lc214
	.byte	4
	.long	.Lc216-.Lc214
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc475:
	.long	.Lc477-.Lc476
.Lc476:
	.secrel32	.Lc313
	.quad	.Lc217
	.quad	.Lc218-.Lc217
	.byte	4
	.long	.Lc219-.Lc217
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc477:
	.long	.Lc479-.Lc478
.Lc478:
	.secrel32	.Lc313
	.quad	.Lc220
	.quad	.Lc221-.Lc220
	.byte	4
	.long	.Lc222-.Lc220
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc479:
	.long	.Lc481-.Lc480
.Lc480:
	.secrel32	.Lc313
	.quad	.Lc223
	.quad	.Lc224-.Lc223
	.byte	4
	.long	.Lc225-.Lc223
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc481:
	.long	.Lc483-.Lc482
.Lc482:
	.secrel32	.Lc313
	.quad	.Lc226
	.quad	.Lc227-.Lc226
	.byte	4
	.long	.Lc228-.Lc226
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc483:
	.long	.Lc485-.Lc484
.Lc484:
	.secrel32	.Lc313
	.quad	.Lc229
	.quad	.Lc230-.Lc229
	.byte	4
	.long	.Lc231-.Lc229
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc485:
	.long	.Lc487-.Lc486
.Lc486:
	.secrel32	.Lc313
	.quad	.Lc232
	.quad	.Lc233-.Lc232
	.byte	4
	.long	.Lc234-.Lc232
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc487:
	.long	.Lc489-.Lc488
.Lc488:
	.secrel32	.Lc313
	.quad	.Lc235
	.quad	.Lc236-.Lc235
	.byte	4
	.long	.Lc237-.Lc235
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc489:
	.long	.Lc491-.Lc490
.Lc490:
	.secrel32	.Lc313
	.quad	.Lc238
	.quad	.Lc239-.Lc238
	.byte	4
	.long	.Lc240-.Lc238
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc491:
	.long	.Lc493-.Lc492
.Lc492:
	.secrel32	.Lc313
	.quad	.Lc241
	.quad	.Lc242-.Lc241
	.byte	4
	.long	.Lc243-.Lc241
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc493:
	.long	.Lc495-.Lc494
.Lc494:
	.secrel32	.Lc313
	.quad	.Lc244
	.quad	.Lc245-.Lc244
	.byte	4
	.long	.Lc246-.Lc244
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc495:
	.long	.Lc497-.Lc496
.Lc496:
	.secrel32	.Lc313
	.quad	.Lc247
	.quad	.Lc248-.Lc247
	.balign 4,0
.Lc497:
	.long	.Lc499-.Lc498
.Lc498:
	.secrel32	.Lc313
	.quad	.Lc249
	.quad	.Lc250-.Lc249
	.balign 4,0
.Lc499:
	.long	.Lc501-.Lc500
.Lc500:
	.secrel32	.Lc313
	.quad	.Lc251
	.quad	.Lc252-.Lc251
	.balign 4,0
.Lc501:
	.long	.Lc503-.Lc502
.Lc502:
	.secrel32	.Lc313
	.quad	.Lc253
	.quad	.Lc254-.Lc253
	.byte	4
	.long	.Lc255-.Lc253
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc503:
	.long	.Lc505-.Lc504
.Lc504:
	.secrel32	.Lc313
	.quad	.Lc256
	.quad	.Lc257-.Lc256
	.byte	4
	.long	.Lc258-.Lc256
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc505:
	.long	.Lc507-.Lc506
.Lc506:
	.secrel32	.Lc313
	.quad	.Lc259
	.quad	.Lc260-.Lc259
	.byte	4
	.long	.Lc261-.Lc259
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc507:
	.long	.Lc509-.Lc508
.Lc508:
	.secrel32	.Lc313
	.quad	.Lc262
	.quad	.Lc263-.Lc262
	.byte	4
	.long	.Lc264-.Lc262
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc509:
	.long	.Lc511-.Lc510
.Lc510:
	.secrel32	.Lc313
	.quad	.Lc265
	.quad	.Lc266-.Lc265
	.byte	4
	.long	.Lc267-.Lc265
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc511:
	.long	.Lc513-.Lc512
.Lc512:
	.secrel32	.Lc313
	.quad	.Lc268
	.quad	.Lc269-.Lc268
	.byte	4
	.long	.Lc270-.Lc268
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc513:
	.long	.Lc515-.Lc514
.Lc514:
	.secrel32	.Lc313
	.quad	.Lc271
	.quad	.Lc272-.Lc271
	.balign 4,0
.Lc515:
	.long	.Lc517-.Lc516
.Lc516:
	.secrel32	.Lc313
	.quad	.Lc273
	.quad	.Lc274-.Lc273
	.balign 4,0
.Lc517:
	.long	.Lc519-.Lc518
.Lc518:
	.secrel32	.Lc313
	.quad	.Lc275
	.quad	.Lc276-.Lc275
	.byte	4
	.long	.Lc277-.Lc275
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc519:
	.long	.Lc521-.Lc520
.Lc520:
	.secrel32	.Lc313
	.quad	.Lc278
	.quad	.Lc279-.Lc278
	.byte	4
	.long	.Lc280-.Lc278
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc521:
	.long	.Lc523-.Lc522
.Lc522:
	.secrel32	.Lc313
	.quad	.Lc281
	.quad	.Lc282-.Lc281
	.balign 4,0
.Lc523:
	.long	.Lc525-.Lc524
.Lc524:
	.secrel32	.Lc313
	.quad	.Lc283
	.quad	.Lc284-.Lc283
	.balign 4,0
.Lc525:
	.long	.Lc527-.Lc526
.Lc526:
	.secrel32	.Lc313
	.quad	.Lc285
	.quad	.Lc286-.Lc285
	.balign 4,0
.Lc527:
	.long	.Lc529-.Lc528
.Lc528:
	.secrel32	.Lc313
	.quad	.Lc287
	.quad	.Lc288-.Lc287
	.balign 4,0
.Lc529:
	.long	.Lc531-.Lc530
.Lc530:
	.secrel32	.Lc313
	.quad	.Lc289
	.quad	.Lc290-.Lc289
	.byte	4
	.long	.Lc291-.Lc289
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc531:
	.long	.Lc533-.Lc532
.Lc532:
	.secrel32	.Lc313
	.quad	.Lc292
	.quad	.Lc293-.Lc292
	.byte	4
	.long	.Lc294-.Lc292
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc533:
	.long	.Lc535-.Lc534
.Lc534:
	.secrel32	.Lc313
	.quad	.Lc295
	.quad	.Lc296-.Lc295
	.byte	4
	.long	.Lc297-.Lc295
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc535:
	.long	.Lc537-.Lc536
.Lc536:
	.secrel32	.Lc313
	.quad	.Lc298
	.quad	.Lc299-.Lc298
	.byte	4
	.long	.Lc300-.Lc298
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc537:
	.long	.Lc539-.Lc538
.Lc538:
	.secrel32	.Lc313
	.quad	.Lc301
	.quad	.Lc302-.Lc301
	.byte	4
	.long	.Lc303-.Lc301
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc539:
	.long	.Lc541-.Lc540
.Lc540:
	.secrel32	.Lc313
	.quad	.Lc304
	.quad	.Lc305-.Lc304
	.byte	4
	.long	.Lc306-.Lc304
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc541:
	.long	.Lc543-.Lc542
.Lc542:
	.secrel32	.Lc313
	.quad	.Lc307
	.quad	.Lc308-.Lc307
	.byte	4
	.long	.Lc309-.Lc307
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc543:
	.long	.Lc545-.Lc544
.Lc544:
	.secrel32	.Lc313
	.quad	.Lc310
	.quad	.Lc311-.Lc310
	.byte	4
	.long	.Lc312-.Lc310
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc545:
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
# [40] procedure imp; forward;
	.ascii	"unit6502.pas\000"
	.ascii	"Free Pascal 3.0.4 2017/12/03\000"
	.ascii	"D:/Programowanie/20180824 retro-fm/\000"
	.byte	9
	.byte	3
	.secrel32	.Ldebug_line0
	.quad	DEBUGSTART_$UNIT6502
	.quad	DEBUGEND_$UNIT6502
# Syms - Begin unit UNIT6502 has index 13
# Symbol UNIT6502
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
	.quad	U_$UNIT6502_$$_RAM
	.long	.La1-.Ldebug_info0
# Symbol INSTRUCTIONS
	.uleb128	2
	.ascii	"INSTRUCTIONS\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$UNIT6502_$$_INSTRUCTIONS
	.long	.La3-.Ldebug_info0
# Symbol CLOCKTICKS6502
	.uleb128	2
	.ascii	"CLOCKTICKS6502\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$UNIT6502_$$_CLOCKTICKS6502
	.long	.La3-.Ldebug_info0
# Symbol CLOCKGOAL6502
	.uleb128	2
	.ascii	"CLOCKGOAL6502\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$UNIT6502_$$_CLOCKGOAL6502
	.long	.La3-.Ldebug_info0
# Symbol READ6502
# Symbol WRITE6502
# Symbol RESET6502
# Symbol NMI6502
# Symbol IRQ6502
# Symbol EXEC6502
# Symbol FAST6502
# Symbol STEP6502
# Symbol JSR6502
# Syms - End unit UNIT6502 has index 13
# Syms - Begin Staticsymtable
# Symbol UNIT6502_$$_init$
# Symbol IMP
# Symbol INDX
# Symbol ZP
# Symbol IMM
# Symbol ACC
# Symbol ABSO
# Symbol REL
# Symbol INDY
# Symbol ABSY
# Symbol ABSX
# Symbol IND
# Symbol ZPX
# Symbol ZPY
# Symbol IZP
# Symbol IAX
# Symbol BRK
# Symbol ORA
# Symbol NOP
# Symbol ANA
# Symbol SLO
# Symbol ASL
# Symbol BPL
# Symbol PHP
# Symbol CLC
# Symbol JSR
# Symbol RLA
# Symbol BIT
# Symbol ROL
# Symbol BMI
# Symbol PLP
# Symbol SEC
# Symbol RTI
# Symbol EOR
# Symbol SRE
# Symbol LSR
# Symbol PHA
# Symbol BVC
# Symbol CLI
# Symbol JMP
# Symbol RTS
# Symbol ADC
# Symbol BVS
# Symbol RRA
# Symbol ROR
# Symbol PLA
# Symbol SEI
# Symbol STA
# Symbol SAX
# Symbol STX
# Symbol STY
# Symbol DEY
# Symbol TXA
# Symbol BCC
# Symbol TYA
# Symbol TXS
# Symbol LDY
# Symbol LDA
# Symbol LDX
# Symbol LAX
# Symbol TAY
# Symbol TAX
# Symbol BCS
# Symbol CLV
# Symbol TSX
# Symbol CPY
# Symbol CMP
# Symbol DCP
# Symbol DEA
# Symbol INY
# Symbol DEX
# Symbol BNE
# Symbol CLD
# Symbol CPX
# Symbol ISB
# Symbol INX
# Symbol BEQ
# Symbol SBC
# Symbol INA
# Symbol SED
# Symbol BRA
# Symbol PHX
# Symbol PHY
# Symbol PLX
# Symbol PLY
# Symbol STZ
# Symbol TRB
# Symbol TSB
# Symbol LDC
# Symbol STC
# Symbol LDD
# Symbol STD
# Symbol PHC
# Symbol PHD
# Symbol PLD
# Symbol PLC
# Symbol TADDR
# Symbol TOPCODE
# Symbol ADDRTABLE
	.uleb128	3
	.ascii	"ADDRTABLE\000"
	.byte	9
	.byte	3
	.quad	TC_$UNIT6502_$$_ADDRTABLE
	.long	.La9-.Ldebug_info0
# Symbol OPTABLE
	.uleb128	3
	.ascii	"OPTABLE\000"
	.byte	9
	.byte	3
	.quad	TC_$UNIT6502_$$_OPTABLE
	.long	.La11-.Ldebug_info0
# Symbol TICKTABLE
	.uleb128	3
	.ascii	"TICKTABLE\000"
	.byte	9
	.byte	3
	.quad	TC_$UNIT6502_$$_TICKTABLE
	.long	.La13-.Ldebug_info0
# Symbol PC
	.uleb128	3
	.ascii	"PC\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_PC
	.long	.La15-.Ldebug_info0
# Symbol SP
	.uleb128	3
	.ascii	"SP\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_SP
	.long	.La17-.Ldebug_info0
# Symbol A
	.uleb128	3
	.ascii	"A\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_A
	.long	.La17-.Ldebug_info0
# Symbol X
	.uleb128	3
	.ascii	"X\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_X
	.long	.La17-.Ldebug_info0
# Symbol Y
	.uleb128	3
	.ascii	"Y\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_Y
	.long	.La17-.Ldebug_info0
# Symbol STATUS
	.uleb128	3
	.ascii	"STATUS\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_STATUS
	.long	.La17-.Ldebug_info0
# Symbol OLDPC
	.uleb128	3
	.ascii	"OLDPC\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_OLDPC
	.long	.La15-.Ldebug_info0
# Symbol EA
	.uleb128	3
	.ascii	"EA\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_EA
	.long	.La15-.Ldebug_info0
# Symbol RELADDR
	.uleb128	3
	.ascii	"RELADDR\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_RELADDR
	.long	.La15-.Ldebug_info0
# Symbol VALUE
	.uleb128	3
	.ascii	"VALUE\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_VALUE
	.long	.La15-.Ldebug_info0
# Symbol ARESULT
	.uleb128	3
	.ascii	"ARESULT\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_ARESULT
	.long	.La15-.Ldebug_info0
# Symbol OPCODE
	.uleb128	3
	.ascii	"OPCODE\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_OPCODE
	.long	.La17-.Ldebug_info0
# Symbol PENALTYOP
	.uleb128	3
	.ascii	"PENALTYOP\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_PENALTYOP
	.long	.La17-.Ldebug_info0
# Symbol PENALTYADDR
	.uleb128	3
	.ascii	"PENALTYADDR\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_PENALTYADDR
	.long	.La17-.Ldebug_info0
# Symbol CSA
	.uleb128	3
	.ascii	"CSA\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_CSA
	.long	.La3-.Ldebug_info0
# Symbol DSA
	.uleb128	3
	.ascii	"DSA\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_DSA
	.long	.La3-.Ldebug_info0
# Symbol CSI
	.uleb128	3
	.ascii	"CSI\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_CSI
	.long	.La3-.Ldebug_info0
# Symbol DSI
	.uleb128	3
	.ascii	"DSI\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_DSI
	.long	.La3-.Ldebug_info0
# Symbol CS
	.uleb128	3
	.ascii	"CS\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_CS
	.long	.La19-.Ldebug_info0
# Symbol DS
	.uleb128	3
	.ascii	"DS\000"
	.byte	9
	.byte	3
	.quad	U_$UNIT6502_$$_DS
	.long	.La19-.Ldebug_info0
# Symbol PUSH32
# Symbol PUSH16
# Symbol PUSH8
# Symbol PULL32
# Symbol PULL16
# Symbol PULL8
# Symbol GETVALUE
# Symbol GETVALUE16
# Symbol GETVALUE32
# Symbol PUTVALUE
# Symbol PUTVALUE32
# Syms - End Staticsymtable
# Procdef read6502(Int64):Byte;
	.uleb128	4
	.ascii	"READ6502\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La17-.Ldebug_info0
	.quad	UNIT6502_$$_READ6502$INT64$$BYTE
	.quad	.Lt1
# Symbol ADDRESS
	.uleb128	5
	.ascii	"ADDRESS\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La3-.Ldebug_info0
# Symbol result
	.uleb128	3
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol READ6502
	.uleb128	3
	.ascii	"READ6502\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	3
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.byte	0
# Procdef write6502(Int64;Byte);
	.uleb128	6
	.ascii	"WRITE6502\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_WRITE6502$INT64$BYTE
	.quad	.Lt2
# Symbol ADDRESS
	.uleb128	5
	.ascii	"ADDRESS\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La3-.Ldebug_info0
# Symbol VALUE
	.uleb128	5
	.ascii	"VALUE\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La17-.Ldebug_info0
	.byte	0
# Procdef reset6502;
	.uleb128	6
	.ascii	"RESET6502\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_RESET6502
	.quad	.Lt3
	.byte	0
# Procdef nmi6502;
	.uleb128	6
	.ascii	"NMI6502\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_NMI6502
	.quad	.Lt4
	.byte	0
# Procdef irq6502;
	.uleb128	6
	.ascii	"IRQ6502\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_IRQ6502
	.quad	.Lt5
	.byte	0
# Procdef exec6502(Int64);
	.uleb128	6
	.ascii	"EXEC6502\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_EXEC6502$INT64
	.quad	.Lt6
# Symbol TICKCOUNT
	.uleb128	5
	.ascii	"TICKCOUNT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La3-.Ldebug_info0
	.byte	0
# Procdef fast6502(Int64);
	.uleb128	6
	.ascii	"FAST6502\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_FAST6502$INT64
	.quad	.Lt7
# Symbol TICKCOUNT
	.uleb128	5
	.ascii	"TICKCOUNT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La3-.Ldebug_info0
	.byte	0
# Procdef step6502;
	.uleb128	6
	.ascii	"STEP6502\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_STEP6502
	.quad	.Lt8
	.byte	0
# Procdef jsr6502(Word;Int64);
	.uleb128	6
	.ascii	"JSR6502\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_JSR6502$WORD$INT64
	.quad	.Lt9
# Symbol AA
	.uleb128	5
	.ascii	"AA\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La15-.Ldebug_info0
# Symbol ADDR
	.uleb128	5
	.ascii	"ADDR\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La3-.Ldebug_info0
# Symbol DEPTH
	.uleb128	3
	.ascii	"DEPTH\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La21-.Ldebug_info0
	.byte	0
# Procdef imp;
	.uleb128	6
	.ascii	"IMP\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_IMP
	.quad	.Lt10
	.byte	0
# Procdef indx;
	.uleb128	6
	.ascii	"INDX\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_INDX
	.quad	.Lt11
# Symbol EAHELP
	.uleb128	3
	.ascii	"EAHELP\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La15-.Ldebug_info0
	.byte	0
# Procdef zp;
	.uleb128	6
	.ascii	"ZP\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_ZP
	.quad	.Lt12
	.byte	0
# Procdef imm;
	.uleb128	6
	.ascii	"IMM\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_IMM
	.quad	.Lt13
	.byte	0
# Procdef acc;
	.uleb128	6
	.ascii	"ACC\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_ACC
	.quad	.Lt14
	.byte	0
# Procdef abso;
	.uleb128	6
	.ascii	"ABSO\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_ABSO
	.quad	.Lt15
	.byte	0
# Procdef rel;
	.uleb128	6
	.ascii	"REL\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_REL
	.quad	.Lt16
	.byte	0
# Procdef indy;
	.uleb128	6
	.ascii	"INDY\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_INDY
	.quad	.Lt17
# Symbol EAHELP
	.uleb128	3
	.ascii	"EAHELP\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La15-.Ldebug_info0
# Symbol EAHELP2
	.uleb128	3
	.ascii	"EAHELP2\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La15-.Ldebug_info0
# Symbol STARTPAGE
	.uleb128	3
	.ascii	"STARTPAGE\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La15-.Ldebug_info0
	.byte	0
# Procdef absy;
	.uleb128	6
	.ascii	"ABSY\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_ABSY
	.quad	.Lt18
# Symbol STARTPAGE
	.uleb128	3
	.ascii	"STARTPAGE\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La15-.Ldebug_info0
	.byte	0
# Procdef absx;
	.uleb128	6
	.ascii	"ABSX\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_ABSX
	.quad	.Lt19
# Symbol STARTPAGE
	.uleb128	3
	.ascii	"STARTPAGE\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La15-.Ldebug_info0
	.byte	0
# Procdef ind;
	.uleb128	6
	.ascii	"IND\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_IND
	.quad	.Lt20
# Symbol EAHELP
	.uleb128	3
	.ascii	"EAHELP\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La15-.Ldebug_info0
# Symbol EAHELP2
	.uleb128	3
	.ascii	"EAHELP2\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La15-.Ldebug_info0
	.byte	0
# Procdef zpx;
	.uleb128	6
	.ascii	"ZPX\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_ZPX
	.quad	.Lt21
	.byte	0
# Procdef zpy;
	.uleb128	6
	.ascii	"ZPY\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_ZPY
	.quad	.Lt22
	.byte	0
# Procdef izp;
	.uleb128	6
	.ascii	"IZP\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_IZP
	.quad	.Lt23
# Symbol EAHELP
	.uleb128	3
	.ascii	"EAHELP\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La15-.Ldebug_info0
	.byte	0
# Procdef iax;
	.uleb128	6
	.ascii	"IAX\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_IAX
	.quad	.Lt24
# Symbol EAHELP
	.uleb128	3
	.ascii	"EAHELP\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La15-.Ldebug_info0
	.byte	0
# Procdef brk;
	.uleb128	6
	.ascii	"BRK\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_BRK
	.quad	.Lt25
	.byte	0
# Procdef ora;
	.uleb128	6
	.ascii	"ORA\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_ORA
	.quad	.Lt26
	.byte	0
# Procdef nop;
	.uleb128	6
	.ascii	"NOP\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_NOP
	.quad	.Lt27
	.byte	0
# Procdef ana;
	.uleb128	6
	.ascii	"ANA\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_ANA
	.quad	.Lt28
	.byte	0
# Procdef slo;
	.uleb128	6
	.ascii	"SLO\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_SLO
	.quad	.Lt29
	.byte	0
# Procdef asl;
	.uleb128	6
	.ascii	"ASL\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_ASL
	.quad	.Lt30
	.byte	0
# Procdef bpl;
	.uleb128	6
	.ascii	"BPL\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_BPL
	.quad	.Lt31
	.byte	0
# Procdef php;
	.uleb128	6
	.ascii	"PHP\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_PHP
	.quad	.Lt32
	.byte	0
# Procdef clc;
	.uleb128	6
	.ascii	"CLC\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_CLC
	.quad	.Lt33
	.byte	0
# Procdef jsr;
	.uleb128	6
	.ascii	"JSR\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_JSR
	.quad	.Lt34
	.byte	0
# Procdef rla;
	.uleb128	6
	.ascii	"RLA\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_RLA
	.quad	.Lt35
	.byte	0
# Procdef bit;
	.uleb128	6
	.ascii	"BIT\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_BIT
	.quad	.Lt36
	.byte	0
# Procdef rol;
	.uleb128	6
	.ascii	"ROL\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_ROL
	.quad	.Lt37
	.byte	0
# Procdef bmi;
	.uleb128	6
	.ascii	"BMI\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_BMI
	.quad	.Lt38
	.byte	0
# Procdef plp;
	.uleb128	6
	.ascii	"PLP\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_PLP
	.quad	.Lt39
	.byte	0
# Procdef sec;
	.uleb128	6
	.ascii	"SEC\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_SEC
	.quad	.Lt40
	.byte	0
# Procdef rti;
	.uleb128	6
	.ascii	"RTI\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_RTI
	.quad	.Lt41
	.byte	0
# Procdef eor;
	.uleb128	6
	.ascii	"EOR\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_EOR
	.quad	.Lt42
	.byte	0
# Procdef sre;
	.uleb128	6
	.ascii	"SRE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_SRE
	.quad	.Lt43
	.byte	0
# Procdef lsr;
	.uleb128	6
	.ascii	"LSR\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_LSR
	.quad	.Lt44
	.byte	0
# Procdef pha;
	.uleb128	6
	.ascii	"PHA\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_PHA
	.quad	.Lt45
	.byte	0
# Procdef bvc;
	.uleb128	6
	.ascii	"BVC\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_BVC
	.quad	.Lt46
	.byte	0
# Procdef cli;
	.uleb128	6
	.ascii	"CLI\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_CLI
	.quad	.Lt47
	.byte	0
# Procdef jmp;
	.uleb128	6
	.ascii	"JMP\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_JMP
	.quad	.Lt48
	.byte	0
# Procdef rts;
	.uleb128	6
	.ascii	"RTS\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_RTS
	.quad	.Lt49
	.byte	0
# Procdef adc;
	.uleb128	6
	.ascii	"ADC\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_ADC
	.quad	.Lt50
	.byte	0
# Procdef bvs;
	.uleb128	6
	.ascii	"BVS\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_BVS
	.quad	.Lt51
	.byte	0
# Procdef rra;
	.uleb128	6
	.ascii	"RRA\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_RRA
	.quad	.Lt52
	.byte	0
# Procdef ror;
	.uleb128	6
	.ascii	"ROR\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_ROR
	.quad	.Lt53
	.byte	0
# Procdef pla;
	.uleb128	6
	.ascii	"PLA\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_PLA
	.quad	.Lt54
	.byte	0
# Procdef sei;
	.uleb128	6
	.ascii	"SEI\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_SEI
	.quad	.Lt55
	.byte	0
# Procdef sta;
	.uleb128	6
	.ascii	"STA\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_STA
	.quad	.Lt56
	.byte	0
# Procdef sax;
	.uleb128	6
	.ascii	"SAX\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_SAX
	.quad	.Lt57
	.byte	0
# Procdef stx;
	.uleb128	6
	.ascii	"STX\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_STX
	.quad	.Lt58
	.byte	0
# Procdef sty;
	.uleb128	6
	.ascii	"STY\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_STY
	.quad	.Lt59
	.byte	0
# Procdef dey;
	.uleb128	6
	.ascii	"DEY\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_DEY
	.quad	.Lt60
	.byte	0
# Procdef txa;
	.uleb128	6
	.ascii	"TXA\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_TXA
	.quad	.Lt61
	.byte	0
# Procdef bcc;
	.uleb128	6
	.ascii	"BCC\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_BCC
	.quad	.Lt62
	.byte	0
# Procdef tya;
	.uleb128	6
	.ascii	"TYA\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_TYA
	.quad	.Lt63
	.byte	0
# Procdef txs;
	.uleb128	6
	.ascii	"TXS\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_TXS
	.quad	.Lt64
	.byte	0
# Procdef ldy;
	.uleb128	6
	.ascii	"LDY\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_LDY
	.quad	.Lt65
	.byte	0
# Procdef lda;
	.uleb128	6
	.ascii	"LDA\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_LDA
	.quad	.Lt66
	.byte	0
# Procdef ldx;
	.uleb128	6
	.ascii	"LDX\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_LDX
	.quad	.Lt67
	.byte	0
# Procdef lax;
	.uleb128	6
	.ascii	"LAX\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_LAX
	.quad	.Lt68
	.byte	0
# Procdef tay;
	.uleb128	6
	.ascii	"TAY\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_TAY
	.quad	.Lt69
	.byte	0
# Procdef tax;
	.uleb128	6
	.ascii	"TAX\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_TAX
	.quad	.Lt70
	.byte	0
# Procdef bcs;
	.uleb128	6
	.ascii	"BCS\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_BCS
	.quad	.Lt71
	.byte	0
# Procdef clv;
	.uleb128	6
	.ascii	"CLV\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_CLV
	.quad	.Lt72
	.byte	0
# Procdef tsx;
	.uleb128	6
	.ascii	"TSX\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_TSX
	.quad	.Lt73
	.byte	0
# Procdef cpy;
	.uleb128	6
	.ascii	"CPY\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_CPY
	.quad	.Lt74
	.byte	0
# Procdef cmp;
	.uleb128	6
	.ascii	"CMP\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_CMP
	.quad	.Lt75
	.byte	0
# Procdef dcp;
	.uleb128	6
	.ascii	"DCP\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_DCP
	.quad	.Lt76
	.byte	0
# Procdef dea;
	.uleb128	6
	.ascii	"DEA\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_DEA
	.quad	.Lt77
	.byte	0
# Procdef iny;
	.uleb128	6
	.ascii	"INY\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_INY
	.quad	.Lt78
	.byte	0
# Procdef dex;
	.uleb128	6
	.ascii	"DEX\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_DEX
	.quad	.Lt79
	.byte	0
# Procdef bne;
	.uleb128	6
	.ascii	"BNE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_BNE
	.quad	.Lt80
	.byte	0
# Procdef cld;
	.uleb128	6
	.ascii	"CLD\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_CLD
	.quad	.Lt81
	.byte	0
# Procdef cpx;
	.uleb128	6
	.ascii	"CPX\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_CPX
	.quad	.Lt82
	.byte	0
# Procdef isb;
	.uleb128	6
	.ascii	"ISB\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_ISB
	.quad	.Lt83
	.byte	0
# Procdef inx;
	.uleb128	6
	.ascii	"INX\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_INX
	.quad	.Lt84
	.byte	0
# Procdef beq;
	.uleb128	6
	.ascii	"BEQ\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_BEQ
	.quad	.Lt85
	.byte	0
# Procdef sbc;
	.uleb128	6
	.ascii	"SBC\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_SBC
	.quad	.Lt86
	.byte	0
# Procdef ina;
	.uleb128	6
	.ascii	"INA\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_INA
	.quad	.Lt87
	.byte	0
# Procdef sed;
	.uleb128	6
	.ascii	"SED\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_SED
	.quad	.Lt88
	.byte	0
# Procdef bra;
	.uleb128	6
	.ascii	"BRA\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_BRA
	.quad	.Lt89
	.byte	0
# Procdef phx;
	.uleb128	6
	.ascii	"PHX\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_PHX
	.quad	.Lt90
	.byte	0
# Procdef phy;
	.uleb128	6
	.ascii	"PHY\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_PHY
	.quad	.Lt91
	.byte	0
# Procdef plx;
	.uleb128	6
	.ascii	"PLX\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_PLX
	.quad	.Lt92
	.byte	0
# Procdef ply;
	.uleb128	6
	.ascii	"PLY\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_PLY
	.quad	.Lt93
	.byte	0
# Procdef stz;
	.uleb128	6
	.ascii	"STZ\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_STZ
	.quad	.Lt94
	.byte	0
# Procdef trb;
	.uleb128	6
	.ascii	"TRB\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_TRB
	.quad	.Lt95
	.byte	0
# Procdef tsb;
	.uleb128	6
	.ascii	"TSB\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_TSB
	.quad	.Lt96
	.byte	0
# Procdef ldc;
	.uleb128	6
	.ascii	"LDC\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_LDC
	.quad	.Lt97
	.byte	0
# Procdef stc;
	.uleb128	6
	.ascii	"STC\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_STC
	.quad	.Lt98
	.byte	0
# Procdef ldd;
	.uleb128	6
	.ascii	"LDD\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_LDD
	.quad	.Lt99
	.byte	0
# Procdef std;
	.uleb128	6
	.ascii	"STD\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_STD
	.quad	.Lt100
	.byte	0
# Procdef phc;
	.uleb128	6
	.ascii	"PHC\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_PHC
	.quad	.Lt101
	.byte	0
# Procdef phd;
	.uleb128	6
	.ascii	"PHD\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_PHD
	.quad	.Lt102
	.byte	0
# Procdef pld;
	.uleb128	6
	.ascii	"PLD\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_PLD
	.quad	.Lt103
	.byte	0
# Procdef plc;
	.uleb128	6
	.ascii	"PLC\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_PLC
	.quad	.Lt104
	.byte	0
# Procdef push32(LongWord);
	.uleb128	6
	.ascii	"PUSH32\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_PUSH32$LONGWORD
	.quad	.Lt105
# Symbol PUSHVAL
	.uleb128	5
	.ascii	"PUSHVAL\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef push16(Word);
	.uleb128	6
	.ascii	"PUSH16\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_PUSH16$WORD
	.quad	.Lt106
# Symbol PUSHVAL
	.uleb128	5
	.ascii	"PUSHVAL\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La15-.Ldebug_info0
	.byte	0
# Procdef push8(Word);
	.uleb128	6
	.ascii	"PUSH8\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_PUSH8$WORD
	.quad	.Lt107
# Symbol PUSHVAL
	.uleb128	5
	.ascii	"PUSHVAL\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La15-.Ldebug_info0
	.byte	0
# Procdef pull32:DWord;
	.uleb128	4
	.ascii	"PULL32\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La23-.Ldebug_info0
	.quad	UNIT6502_$$_PULL32$$LONGWORD
	.quad	.Lt108
# Symbol result
	.uleb128	3
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La23-.Ldebug_info0
# Symbol PULL32
	.uleb128	3
	.ascii	"PULL32\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La23-.Ldebug_info0
# Symbol RESULT
	.uleb128	3
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La23-.Ldebug_info0
# Symbol TEMP32
	.uleb128	3
	.ascii	"TEMP32\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La23-.Ldebug_info0
	.byte	0
# Procdef pull16:Word;
	.uleb128	4
	.ascii	"PULL16\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La15-.Ldebug_info0
	.quad	UNIT6502_$$_PULL16$$WORD
	.quad	.Lt109
# Symbol result
	.uleb128	3
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La15-.Ldebug_info0
# Symbol PULL16
	.uleb128	3
	.ascii	"PULL16\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La15-.Ldebug_info0
# Symbol RESULT
	.uleb128	3
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La15-.Ldebug_info0
# Symbol TEMP16
	.uleb128	3
	.ascii	"TEMP16\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La15-.Ldebug_info0
	.byte	0
# Procdef pull8:Byte;
	.uleb128	4
	.ascii	"PULL8\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La17-.Ldebug_info0
	.quad	UNIT6502_$$_PULL8$$BYTE
	.quad	.Lt110
# Symbol result
	.uleb128	3
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol PULL8
	.uleb128	3
	.ascii	"PULL8\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
# Symbol RESULT
	.uleb128	3
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La17-.Ldebug_info0
	.byte	0
# Procdef getvalue:Word;
	.uleb128	4
	.ascii	"GETVALUE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La15-.Ldebug_info0
	.quad	UNIT6502_$$_GETVALUE$$WORD
	.quad	.Lt111
# Symbol result
	.uleb128	3
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La15-.Ldebug_info0
# Symbol GETVALUE
	.uleb128	3
	.ascii	"GETVALUE\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La15-.Ldebug_info0
# Symbol RESULT
	.uleb128	3
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La15-.Ldebug_info0
# Symbol EA2
	.uleb128	3
	.ascii	"EA2\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La3-.Ldebug_info0
	.byte	0
# Procdef getvalue16:Word;
	.uleb128	4
	.ascii	"GETVALUE16\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La15-.Ldebug_info0
	.quad	UNIT6502_$$_GETVALUE16$$WORD
	.quad	.Lt112
# Symbol result
	.uleb128	3
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La15-.Ldebug_info0
# Symbol GETVALUE16
	.uleb128	3
	.ascii	"GETVALUE16\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La15-.Ldebug_info0
# Symbol RESULT
	.uleb128	3
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La15-.Ldebug_info0
# Symbol EA2
	.uleb128	3
	.ascii	"EA2\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La3-.Ldebug_info0
	.byte	0
# Procdef getvalue32:DWord;
	.uleb128	4
	.ascii	"GETVALUE32\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La23-.Ldebug_info0
	.quad	UNIT6502_$$_GETVALUE32$$LONGWORD
	.quad	.Lt113
# Symbol result
	.uleb128	3
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La23-.Ldebug_info0
# Symbol GETVALUE32
	.uleb128	3
	.ascii	"GETVALUE32\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La23-.Ldebug_info0
# Symbol RESULT
	.uleb128	3
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La23-.Ldebug_info0
# Symbol EA2
	.uleb128	3
	.ascii	"EA2\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La3-.Ldebug_info0
	.byte	0
# Procdef putvalue(Word);
	.uleb128	6
	.ascii	"PUTVALUE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_PUTVALUE$WORD
	.quad	.Lt114
# Symbol SAVEVAL
	.uleb128	5
	.ascii	"SAVEVAL\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La15-.Ldebug_info0
# Symbol EA2
	.uleb128	3
	.ascii	"EA2\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La3-.Ldebug_info0
	.byte	0
# Procdef putvalue32(LongWord);
	.uleb128	6
	.ascii	"PUTVALUE32\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT6502_$$_PUTVALUE32$LONGWORD
	.quad	.Lt115
# Symbol SAVEVAL
	.uleb128	5
	.ascii	"SAVEVAL\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La23-.Ldebug_info0
# Symbol EA2
	.uleb128	3
	.ascii	"EA2\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La3-.Ldebug_info0
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition Byte
.La17:
	.uleb128	7
	.ascii	"BYTE\000"
	.long	.La25-.Ldebug_info0
.La25:
	.uleb128	8
	.ascii	"BYTE\000"
	.byte	7
	.byte	1
.La18:
	.uleb128	9
	.long	.La17-.Ldebug_info0
# Definition Word
.La15:
	.uleb128	7
	.ascii	"WORD\000"
	.long	.La26-.Ldebug_info0
.La26:
	.uleb128	8
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La16:
	.uleb128	9
	.long	.La15-.Ldebug_info0
# Definition LongWord
.La23:
	.uleb128	7
	.ascii	"LONGWORD\000"
	.long	.La27-.Ldebug_info0
.La27:
	.uleb128	8
	.ascii	"LONGWORD\000"
	.byte	7
	.byte	4
.La24:
	.uleb128	9
	.long	.La23-.Ldebug_info0
# Definition LongInt
.La21:
	.uleb128	7
	.ascii	"LONGINT\000"
	.long	.La28-.Ldebug_info0
.La28:
	.uleb128	8
	.ascii	"LONGINT\000"
	.byte	5
	.byte	4
.La22:
	.uleb128	9
	.long	.La21-.Ldebug_info0
# Definition Int64
.La3:
	.uleb128	7
	.ascii	"INT64\000"
	.long	.La29-.Ldebug_info0
.La29:
	.uleb128	8
	.ascii	"Int64\000"
	.byte	5
	.byte	8
.La4:
	.uleb128	9
	.long	.La3-.Ldebug_info0
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
# Defs - Begin unit UNIT6502 has index 13
# Definition Array[-2..65537] Of Byte
.La1:
	.uleb128	10
	.uleb128	65540
	.long	.La17-.Ldebug_info0
	.uleb128	11
	.sleb128	-2
	.sleb128	65537
	.uleb128	1
	.long	.La21-.Ldebug_info0
	.byte	0
.La2:
	.uleb128	9
	.long	.La1-.Ldebug_info0
# Defs - End unit UNIT6502 has index 13
# Defs - Begin Staticsymtable
# Definition <procedure variable type of procedure;Register>
.La5:
	.uleb128	7
	.ascii	"TADDR\000"
	.long	.La30-.Ldebug_info0
.La30:
	.uleb128	12
	.ascii	"TADDR\000"
	.byte	1
	.byte	0
.La6:
	.uleb128	9
	.long	.La5-.Ldebug_info0
# Definition <procedure variable type of procedure;Register>
.La7:
	.uleb128	7
	.ascii	"TOPCODE\000"
	.long	.La31-.Ldebug_info0
.La31:
	.uleb128	12
	.ascii	"TOPCODE\000"
	.byte	1
	.byte	0
.La8:
	.uleb128	9
	.long	.La7-.Ldebug_info0
# Definition Array[0..255] Of <procedure variable type of procedure;Register>
.La9:
	.uleb128	10
	.uleb128	2048
	.long	.La5-.Ldebug_info0
	.uleb128	11
	.sleb128	0
	.sleb128	255
	.uleb128	8
	.long	.La17-.Ldebug_info0
	.byte	0
.La10:
	.uleb128	9
	.long	.La9-.Ldebug_info0
# Definition Array[0..255] Of <procedure variable type of procedure;Register>
.La11:
	.uleb128	10
	.uleb128	2048
	.long	.La7-.Ldebug_info0
	.uleb128	11
	.sleb128	0
	.sleb128	255
	.uleb128	8
	.long	.La17-.Ldebug_info0
	.byte	0
.La12:
	.uleb128	9
	.long	.La11-.Ldebug_info0
# Definition Array[0..255] Of Byte
.La13:
	.uleb128	10
	.uleb128	256
	.long	.La17-.Ldebug_info0
	.uleb128	11
	.sleb128	0
	.sleb128	255
	.uleb128	1
	.long	.La17-.Ldebug_info0
	.byte	0
.La14:
	.uleb128	9
	.long	.La13-.Ldebug_info0
# Definition ^Int64
.La19:
	.uleb128	13
	.long	.La3-.Ldebug_info0
.La20:
	.uleb128	9
	.long	.La19-.Ldebug_info0
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
	.uleb128	73
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
# Abbrev 5
	.uleb128	5
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
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
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
	.uleb128	1
	.byte	1
	.uleb128	11
	.uleb128	15
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 11
	.uleb128	11
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
# Abbrev 12
	.uleb128	12
	.uleb128	21
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	39
	.uleb128	12
	.byte	0
	.byte	0
# Abbrev 13
	.uleb128	13
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
# [1347] 
	.ascii	"unit6502.pas\000"
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Lehdebug_line0:
# === header end ===
# function: UNIT6502_$$_READ6502$INT64$$BYTE
# [250:21]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	21
	.byte	3
	.sleb128	249
	.byte	1
# [251:1]
	.byte	2
	.uleb128	.Ll2-.Ll1
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll3
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_WRITE6502$INT64$BYTE
# [255:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll4
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	254
	.byte	1
# [256:13]
	.byte	2
	.uleb128	.Ll5-.Ll4
	.byte	5
	.uleb128	13
	.byte	13
# [257:1]
	.byte	2
	.uleb128	.Ll6-.Ll5
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll7
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_PUSH32$LONGWORD
# [263:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll8
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	262
	.byte	1
# [264:25]
	.byte	2
	.uleb128	.Ll9-.Ll8
	.byte	5
	.uleb128	25
	.byte	13
# [265:24]
	.byte	2
	.uleb128	.Ll10-.Ll9
	.byte	5
	.uleb128	24
	.byte	13
# [266:24]
	.byte	2
	.uleb128	.Ll11-.Ll10
	.byte	13
# [267:24]
	.byte	2
	.uleb128	.Ll12-.Ll11
	.byte	13
# [268:1]
	.byte	2
	.uleb128	.Ll13-.Ll12
	.byte	5
	.uleb128	1
	.byte	13
# [269:1]
	.byte	2
	.uleb128	.Ll14-.Ll13
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll15
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_PUSH16$WORD
# [273:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll16
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	272
	.byte	1
# [274:26]
	.byte	2
	.uleb128	.Ll17-.Ll16
	.byte	5
	.uleb128	26
	.byte	13
# [275:24]
	.byte	2
	.uleb128	.Ll18-.Ll17
	.byte	5
	.uleb128	24
	.byte	13
# [276:1]
	.byte	2
	.uleb128	.Ll19-.Ll18
	.byte	5
	.uleb128	1
	.byte	13
# [277:1]
	.byte	2
	.uleb128	.Ll20-.Ll19
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll21
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_PUSH8$WORD
# [281:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll22
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	280
	.byte	1
# [282:22]
	.byte	2
	.uleb128	.Ll23-.Ll22
	.byte	5
	.uleb128	22
	.byte	13
# [283:1]
	.byte	2
	.uleb128	.Ll24-.Ll23
	.byte	5
	.uleb128	1
	.byte	13
# [284:1]
	.byte	2
	.uleb128	.Ll25-.Ll24
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll26
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_PULL32$$LONGWORD
# [290:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll27
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	289
	.byte	1
# [291:33]
	.byte	2
	.uleb128	.Ll28-.Ll27
	.byte	5
	.uleb128	33
	.byte	13
# [292:9]
	.byte	2
	.uleb128	.Ll29-.Ll28
	.byte	5
	.uleb128	9
	.byte	13
# [293:9]
	.byte	2
	.uleb128	.Ll30-.Ll29
	.byte	13
# [294:9]
	.byte	2
	.uleb128	.Ll31-.Ll30
	.byte	13
# [296:1]
	.byte	2
	.uleb128	.Ll32-.Ll31
	.byte	5
	.uleb128	1
	.byte	14
# [297:1]
	.byte	2
	.uleb128	.Ll33-.Ll32
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll34
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_PULL16$$WORD
# [303:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll35
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	302
	.byte	1
# [304:33]
	.byte	2
	.uleb128	.Ll36-.Ll35
	.byte	5
	.uleb128	33
	.byte	13
# [305:10]
	.byte	2
	.uleb128	.Ll37-.Ll36
	.byte	5
	.uleb128	10
	.byte	13
# [307:1]
	.byte	2
	.uleb128	.Ll38-.Ll37
	.byte	5
	.uleb128	1
	.byte	14
# [308:1]
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
# function: UNIT6502_$$_PULL8$$BYTE
# [312:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll41
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	311
	.byte	1
# [313:1]
	.byte	2
	.uleb128	.Ll42-.Ll41
	.byte	13
# [314:32]
	.byte	2
	.uleb128	.Ll43-.Ll42
	.byte	5
	.uleb128	32
	.byte	13
# [315:1]
	.byte	2
	.uleb128	.Ll44-.Ll43
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll45
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_GETVALUE$$WORD
# [321:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll46
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	320
	.byte	1
# [322:6]
	.byte	2
	.uleb128	.Ll47-.Ll46
	.byte	5
	.uleb128	6
	.byte	13
# [323:14]
	.byte	2
	.uleb128	.Ll48-.Ll47
	.byte	5
	.uleb128	14
	.byte	13
# [324:11]
	.byte	2
	.uleb128	.Ll49-.Ll48
	.byte	5
	.uleb128	11
	.byte	13
# [326:11]
	.byte	2
	.uleb128	.Ll50-.Ll49
	.byte	14
# [327:1]
	.byte	2
	.uleb128	.Ll51-.Ll50
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll52
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_GETVALUE16$$WORD
# [333:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll53
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	332
	.byte	1
# [334:6]
	.byte	2
	.uleb128	.Ll54-.Ll53
	.byte	5
	.uleb128	6
	.byte	13
# [335:14]
	.byte	2
	.uleb128	.Ll55-.Ll54
	.byte	5
	.uleb128	14
	.byte	13
# [336:1]
	.byte	2
	.uleb128	.Ll56-.Ll55
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll57
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_GETVALUE32$$LONGWORD
# [342:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll58
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	341
	.byte	1
# [344:6]
	.byte	2
	.uleb128	.Ll59-.Ll58
	.byte	5
	.uleb128	6
	.byte	14
# [346:18]
	.byte	2
	.uleb128	.Ll60-.Ll59
	.byte	5
	.uleb128	18
	.byte	14
# [347:30]
	.byte	2
	.uleb128	.Ll61-.Ll60
	.byte	5
	.uleb128	30
	.byte	13
# [348:32]
	.byte	2
	.uleb128	.Ll62-.Ll61
	.byte	5
	.uleb128	32
	.byte	13
# [349:34]
	.byte	2
	.uleb128	.Ll63-.Ll62
	.byte	5
	.uleb128	34
	.byte	13
# [350:1]
	.byte	2
	.uleb128	.Ll64-.Ll63
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll65
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_PUTVALUE$WORD
# [356:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll66
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	355
	.byte	1
# [357:6]
	.byte	2
	.uleb128	.Ll67-.Ll66
	.byte	5
	.uleb128	6
	.byte	13
# [358:14]
	.byte	2
	.uleb128	.Ll68-.Ll67
	.byte	5
	.uleb128	14
	.byte	13
# [359:1]
	.byte	2
	.uleb128	.Ll69-.Ll68
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll70
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_PUTVALUE32$LONGWORD
# [365:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll71
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	364
	.byte	1
# [367:6]
	.byte	2
	.uleb128	.Ll72-.Ll71
	.byte	5
	.uleb128	6
	.byte	14
# [369:39]
	.byte	2
	.uleb128	.Ll73-.Ll72
	.byte	5
	.uleb128	39
	.byte	14
# [370:19]
	.byte	2
	.uleb128	.Ll74-.Ll73
	.byte	5
	.uleb128	19
	.byte	13
# [371:19]
	.byte	2
	.uleb128	.Ll75-.Ll74
	.byte	13
# [372:19]
	.byte	2
	.uleb128	.Ll76-.Ll75
	.byte	13
# [373:1]
	.byte	2
	.uleb128	.Ll77-.Ll76
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll78
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_RESET6502
# [377:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll79
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	376
	.byte	1
# [378:12]
	.byte	2
	.uleb128	.Ll80-.Ll79
	.byte	5
	.uleb128	12
	.byte	13
# [379:1]
	.byte	2
	.uleb128	.Ll81-.Ll80
	.byte	5
	.uleb128	1
	.byte	13
# [380:1]
	.byte	2
	.uleb128	.Ll82-.Ll81
	.byte	13
# [381:1]
	.byte	2
	.uleb128	.Ll83-.Ll82
	.byte	13
# [382:1]
	.byte	2
	.uleb128	.Ll84-.Ll83
	.byte	13
# [383:5]
	.byte	2
	.uleb128	.Ll85-.Ll84
	.byte	5
	.uleb128	5
	.byte	13
# [384:5]
	.byte	2
	.uleb128	.Ll86-.Ll85
	.byte	13
# [385:1]
	.byte	2
	.uleb128	.Ll87-.Ll86
	.byte	5
	.uleb128	1
	.byte	13
# [386:16]
	.byte	2
	.uleb128	.Ll88-.Ll87
	.byte	5
	.uleb128	16
	.byte	13
# [387:1]
	.byte	2
	.uleb128	.Ll89-.Ll88
	.byte	5
	.uleb128	1
	.byte	13
# [388:1]
	.byte	2
	.uleb128	.Ll90-.Ll89
	.byte	13
# [389:1]
	.byte	2
	.uleb128	.Ll91-.Ll90
	.byte	13
# [391:1]
	.byte	2
	.uleb128	.Ll92-.Ll91
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll93
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_NMI6502
# [395:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll94
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	394
	.byte	1
# [396:1]
	.byte	2
	.uleb128	.Ll95-.Ll94
	.byte	13
# [397:13]
	.byte	2
	.uleb128	.Ll96-.Ll95
	.byte	5
	.uleb128	13
	.byte	13
# [398:17]
	.byte	2
	.uleb128	.Ll97-.Ll96
	.byte	5
	.uleb128	17
	.byte	13
# [399:12]
	.byte	2
	.uleb128	.Ll98-.Ll97
	.byte	5
	.uleb128	12
	.byte	13
# [400:5]
	.byte	2
	.uleb128	.Ll99-.Ll98
	.byte	5
	.uleb128	5
	.byte	13
# [401:5]
	.byte	2
	.uleb128	.Ll100-.Ll99
	.byte	13
# [402:1]
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
# function: UNIT6502_$$_IRQ6502
# [406:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll103
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	405
	.byte	1
# [407:1]
	.byte	2
	.uleb128	.Ll104-.Ll103
	.byte	13
# [408:13]
	.byte	2
	.uleb128	.Ll105-.Ll104
	.byte	5
	.uleb128	13
	.byte	13
# [409:17]
	.byte	2
	.uleb128	.Ll106-.Ll105
	.byte	5
	.uleb128	17
	.byte	13
# [410:12]
	.byte	2
	.uleb128	.Ll107-.Ll106
	.byte	5
	.uleb128	12
	.byte	13
# [411:5]
	.byte	2
	.uleb128	.Ll108-.Ll107
	.byte	5
	.uleb128	5
	.byte	13
# [412:5]
	.byte	2
	.uleb128	.Ll109-.Ll108
	.byte	13
# [413:1]
	.byte	2
	.uleb128	.Ll110-.Ll109
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll111
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_EXEC6502$INT64
# [417:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll112
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	416
	.byte	1
# [418:27]
	.byte	2
	.uleb128	.Ll113-.Ll112
	.byte	5
	.uleb128	27
	.byte	13
# [419:1]
	.byte	2
	.uleb128	.Ll114-.Ll113
	.byte	5
	.uleb128	1
	.byte	13
# [421:22]
	.byte	2
	.uleb128	.Ll115-.Ll114
	.byte	5
	.uleb128	22
	.byte	14
# [422:3]
	.byte	2
	.uleb128	.Ll116-.Ll115
	.byte	5
	.uleb128	3
	.byte	13
# [424:3]
	.byte	2
	.uleb128	.Ll117-.Ll116
	.byte	14
# [425:3]
	.byte	2
	.uleb128	.Ll118-.Ll117
	.byte	13
# [426:12]
	.byte	2
	.uleb128	.Ll119-.Ll118
	.byte	5
	.uleb128	12
	.byte	13
# [427:10]
	.byte	2
	.uleb128	.Ll120-.Ll119
	.byte	5
	.uleb128	10
	.byte	13
# [428:30]
	.byte	2
	.uleb128	.Ll121-.Ll120
	.byte	5
	.uleb128	30
	.byte	13
# [429:6]
	.byte	2
	.uleb128	.Ll122-.Ll121
	.byte	5
	.uleb128	6
	.byte	13
# [430:18]
	.byte	2
	.uleb128	.Ll123-.Ll122
	.byte	5
	.uleb128	18
	.byte	13
# [419:7]
	.byte	2
	.uleb128	.Ll124-.Ll123
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-11
	.byte	1
# [432:1]
	.byte	2
	.uleb128	.Ll125-.Ll124
	.byte	5
	.uleb128	1
	.byte	25
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll126
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_FAST6502$INT64
# [436:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll127
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	435
	.byte	1
# [437:27]
	.byte	2
	.uleb128	.Ll128-.Ll127
	.byte	5
	.uleb128	27
	.byte	13
# [438:1]
	.byte	2
	.uleb128	.Ll129-.Ll128
	.byte	5
	.uleb128	1
	.byte	13
# [440:22]
	.byte	2
	.uleb128	.Ll130-.Ll129
	.byte	5
	.uleb128	22
	.byte	14
# [441:3]
	.byte	2
	.uleb128	.Ll131-.Ll130
	.byte	5
	.uleb128	3
	.byte	13
# [442:12]
	.byte	2
	.uleb128	.Ll132-.Ll131
	.byte	5
	.uleb128	12
	.byte	13
# [443:10]
	.byte	2
	.uleb128	.Ll133-.Ll132
	.byte	5
	.uleb128	10
	.byte	13
# [444:22]
	.byte	2
	.uleb128	.Ll134-.Ll133
	.byte	5
	.uleb128	22
	.byte	13
# [445:18]
	.byte	2
	.uleb128	.Ll135-.Ll134
	.byte	5
	.uleb128	18
	.byte	13
# [438:7]
	.byte	2
	.uleb128	.Ll136-.Ll135
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-7
	.byte	1
# [447:1]
	.byte	2
	.uleb128	.Ll137-.Ll136
	.byte	5
	.uleb128	1
	.byte	21
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll138
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_STEP6502
# [451:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll139
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	450
	.byte	1
# [452:20]
	.byte	2
	.uleb128	.Ll140-.Ll139
	.byte	5
	.uleb128	20
	.byte	13
# [453:1]
	.byte	2
	.uleb128	.Ll141-.Ll140
	.byte	5
	.uleb128	1
	.byte	13
# [454:17]
	.byte	2
	.uleb128	.Ll142-.Ll141
	.byte	5
	.uleb128	17
	.byte	13
# [455:1]
	.byte	2
	.uleb128	.Ll143-.Ll142
	.byte	5
	.uleb128	1
	.byte	13
# [456:1]
	.byte	2
	.uleb128	.Ll144-.Ll143
	.byte	13
# [457:10]
	.byte	2
	.uleb128	.Ll145-.Ll144
	.byte	5
	.uleb128	10
	.byte	13
# [458:8]
	.byte	2
	.uleb128	.Ll146-.Ll145
	.byte	5
	.uleb128	8
	.byte	13
# [459:28]
	.byte	2
	.uleb128	.Ll147-.Ll146
	.byte	5
	.uleb128	28
	.byte	13
# [460:4]
	.byte	2
	.uleb128	.Ll148-.Ll147
	.byte	5
	.uleb128	4
	.byte	13
# [461:1]
	.byte	2
	.uleb128	.Ll149-.Ll148
	.byte	5
	.uleb128	1
	.byte	13
# [462:16]
	.byte	2
	.uleb128	.Ll150-.Ll149
	.byte	5
	.uleb128	16
	.byte	13
# [463:1]
	.byte	2
	.uleb128	.Ll151-.Ll150
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll152
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_JSR6502$WORD$INT64
# [470:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll153
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	469
	.byte	1
# [472:1]
	.byte	2
	.uleb128	.Ll154-.Ll153
	.byte	14
# [473:1]
	.byte	2
	.uleb128	.Ll155-.Ll154
	.byte	13
# [474:1]
	.byte	2
	.uleb128	.Ll156-.Ll155
	.byte	13
# [475:6]
	.byte	2
	.uleb128	.Ll157-.Ll156
	.byte	5
	.uleb128	6
	.byte	13
# [476:1]
	.byte	2
	.uleb128	.Ll158-.Ll157
	.byte	5
	.uleb128	1
	.byte	13
# [478:22]
	.byte	2
	.uleb128	.Ll159-.Ll158
	.byte	5
	.uleb128	22
	.byte	14
# [479:12]
	.byte	2
	.uleb128	.Ll160-.Ll159
	.byte	5
	.uleb128	12
	.byte	13
# [480:12]
	.byte	2
	.uleb128	.Ll161-.Ll160
	.byte	13
# [482:5]
	.byte	2
	.uleb128	.Ll162-.Ll161
	.byte	5
	.uleb128	5
	.byte	14
# [483:14]
	.byte	2
	.uleb128	.Ll163-.Ll162
	.byte	5
	.uleb128	14
	.byte	13
# [484:12]
	.byte	2
	.uleb128	.Ll164-.Ll163
	.byte	5
	.uleb128	12
	.byte	13
# [485:20]
	.byte	2
	.uleb128	.Ll165-.Ll164
	.byte	5
	.uleb128	20
	.byte	13
# [487:9]
	.byte	2
	.uleb128	.Ll166-.Ll165
	.byte	5
	.uleb128	9
	.byte	14
# [489:1]
	.byte	2
	.uleb128	.Ll167-.Ll166
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll168
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_IMP
# [496:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll169
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	495
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll170
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_ACC
# [501:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll171
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	500
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll172
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_IMM
# [506:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll173
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	505
	.byte	1
# [507:1]
	.byte	2
	.uleb128	.Ll174-.Ll173
	.byte	13
# [508:1]
	.byte	2
	.uleb128	.Ll175-.Ll174
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll176
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_ZP
# [512:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll177
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	511
	.byte	1
# [513:23]
	.byte	2
	.uleb128	.Ll178-.Ll177
	.byte	5
	.uleb128	23
	.byte	13
# [514:1]
	.byte	2
	.uleb128	.Ll179-.Ll178
	.byte	5
	.uleb128	1
	.byte	13
# [515:1]
	.byte	2
	.uleb128	.Ll180-.Ll179
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll181
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_ZPX
# [519:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll182
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	518
	.byte	1
# [520:20]
	.byte	2
	.uleb128	.Ll183-.Ll182
	.byte	5
	.uleb128	20
	.byte	13
# [521:1]
	.byte	2
	.uleb128	.Ll184-.Ll183
	.byte	5
	.uleb128	1
	.byte	13
# [522:1]
	.byte	2
	.uleb128	.Ll185-.Ll184
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll186
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_ZPY
# [526:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll187
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	525
	.byte	1
# [527:20]
	.byte	2
	.uleb128	.Ll188-.Ll187
	.byte	5
	.uleb128	20
	.byte	13
# [528:1]
	.byte	2
	.uleb128	.Ll189-.Ll188
	.byte	5
	.uleb128	1
	.byte	13
# [529:1]
	.byte	2
	.uleb128	.Ll190-.Ll189
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll191
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_REL
# [533:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll192
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	532
	.byte	1
# [534:28]
	.byte	2
	.uleb128	.Ll193-.Ll192
	.byte	5
	.uleb128	28
	.byte	13
# [535:1]
	.byte	2
	.uleb128	.Ll194-.Ll193
	.byte	5
	.uleb128	1
	.byte	13
# [536:4]
	.byte	2
	.uleb128	.Ll195-.Ll194
	.byte	5
	.uleb128	4
	.byte	13
# [537:1]
	.byte	2
	.uleb128	.Ll196-.Ll195
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll197
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_ABSO
# [541:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll198
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	540
	.byte	1
# [542:23]
	.byte	2
	.uleb128	.Ll199-.Ll198
	.byte	5
	.uleb128	23
	.byte	13
# [543:1]
	.byte	2
	.uleb128	.Ll200-.Ll199
	.byte	5
	.uleb128	1
	.byte	13
# [544:1]
	.byte	2
	.uleb128	.Ll201-.Ll200
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll202
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_ABSX
# [550:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll203
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	549
	.byte	1
# [551:23]
	.byte	2
	.uleb128	.Ll204-.Ll203
	.byte	5
	.uleb128	23
	.byte	13
# [552:17]
	.byte	2
	.uleb128	.Ll205-.Ll204
	.byte	5
	.uleb128	17
	.byte	13
# [553:1]
	.byte	2
	.uleb128	.Ll206-.Ll205
	.byte	5
	.uleb128	1
	.byte	13
# [554:18]
	.byte	2
	.uleb128	.Ll207-.Ll206
	.byte	5
	.uleb128	18
	.byte	13
# [555:1]
	.byte	2
	.uleb128	.Ll208-.Ll207
	.byte	5
	.uleb128	1
	.byte	13
# [556:1]
	.byte	2
	.uleb128	.Ll209-.Ll208
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll210
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_ABSY
# [562:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll211
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	561
	.byte	1
# [563:23]
	.byte	2
	.uleb128	.Ll212-.Ll211
	.byte	5
	.uleb128	23
	.byte	13
# [564:17]
	.byte	2
	.uleb128	.Ll213-.Ll212
	.byte	5
	.uleb128	17
	.byte	13
# [565:1]
	.byte	2
	.uleb128	.Ll214-.Ll213
	.byte	5
	.uleb128	1
	.byte	13
# [566:18]
	.byte	2
	.uleb128	.Ll215-.Ll214
	.byte	5
	.uleb128	18
	.byte	13
# [567:1]
	.byte	2
	.uleb128	.Ll216-.Ll215
	.byte	5
	.uleb128	1
	.byte	13
# [568:1]
	.byte	2
	.uleb128	.Ll217-.Ll216
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll218
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_IND
# [574:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll219
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	573
	.byte	1
# [575:27]
	.byte	2
	.uleb128	.Ll220-.Ll219
	.byte	5
	.uleb128	27
	.byte	13
# [576:36]
	.byte	2
	.uleb128	.Ll221-.Ll220
	.byte	5
	.uleb128	36
	.byte	13
# [577:27]
	.byte	2
	.uleb128	.Ll222-.Ll221
	.byte	5
	.uleb128	27
	.byte	13
# [580:1]
	.byte	2
	.uleb128	.Ll223-.Ll222
	.byte	5
	.uleb128	1
	.byte	15
# [581:1]
	.byte	2
	.uleb128	.Ll224-.Ll223
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll225
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_IZP
# [587:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll226
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	586
	.byte	1
# [588:27]
	.byte	2
	.uleb128	.Ll227-.Ll226
	.byte	5
	.uleb128	27
	.byte	13
# [589:1]
	.byte	2
	.uleb128	.Ll228-.Ll227
	.byte	5
	.uleb128	1
	.byte	13
# [590:37]
	.byte	2
	.uleb128	.Ll229-.Ll228
	.byte	5
	.uleb128	37
	.byte	13
# [591:1]
	.byte	2
	.uleb128	.Ll230-.Ll229
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll231
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_INDX
# [598:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll232
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	597
	.byte	1
# [599:28]
	.byte	2
	.uleb128	.Ll233-.Ll232
	.byte	5
	.uleb128	28
	.byte	13
# [600:1]
	.byte	2
	.uleb128	.Ll234-.Ll233
	.byte	5
	.uleb128	1
	.byte	13
# [601:37]
	.byte	2
	.uleb128	.Ll235-.Ll234
	.byte	5
	.uleb128	37
	.byte	13
# [602:1]
	.byte	2
	.uleb128	.Ll236-.Ll235
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll237
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_IAX
# [608:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll238
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	607
	.byte	1
# [609:27]
	.byte	2
	.uleb128	.Ll239-.Ll238
	.byte	5
	.uleb128	27
	.byte	13
# [610:1]
	.byte	2
	.uleb128	.Ll240-.Ll239
	.byte	5
	.uleb128	1
	.byte	13
# [611:37]
	.byte	2
	.uleb128	.Ll241-.Ll240
	.byte	5
	.uleb128	37
	.byte	13
# [612:1]
	.byte	2
	.uleb128	.Ll242-.Ll241
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll243
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_INDY
# [618:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll244
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	617
	.byte	1
# [619:27]
	.byte	2
	.uleb128	.Ll245-.Ll244
	.byte	5
	.uleb128	27
	.byte	13
# [620:1]
	.byte	2
	.uleb128	.Ll246-.Ll245
	.byte	5
	.uleb128	1
	.byte	13
# [621:36]
	.byte	2
	.uleb128	.Ll247-.Ll246
	.byte	5
	.uleb128	36
	.byte	13
# [622:27]
	.byte	2
	.uleb128	.Ll248-.Ll247
	.byte	5
	.uleb128	27
	.byte	13
# [623:17]
	.byte	2
	.uleb128	.Ll249-.Ll248
	.byte	5
	.uleb128	17
	.byte	13
# [624:1]
	.byte	2
	.uleb128	.Ll250-.Ll249
	.byte	5
	.uleb128	1
	.byte	13
# [625:18]
	.byte	2
	.uleb128	.Ll251-.Ll250
	.byte	5
	.uleb128	18
	.byte	13
# [626:1]
	.byte	2
	.uleb128	.Ll252-.Ll251
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll253
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_ADC
# [634:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll254
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	633
	.byte	1
# [635:1]
	.byte	2
	.uleb128	.Ll255-.Ll254
	.byte	13
# [636:10]
	.byte	2
	.uleb128	.Ll256-.Ll255
	.byte	5
	.uleb128	10
	.byte	13
# [637:23]
	.byte	2
	.uleb128	.Ll257-.Ll256
	.byte	5
	.uleb128	23
	.byte	13
# [638:4]
	.byte	2
	.uleb128	.Ll258-.Ll257
	.byte	5
	.uleb128	4
	.byte	13
# [217:17]
	.byte	2
	.uleb128	.Ll259-.Ll258
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-421
	.byte	1
# [218:18]
	.byte	2
	.uleb128	.Ll260-.Ll259
	.byte	5
	.uleb128	18
	.byte	13
# [639:4]
	.byte	2
	.uleb128	.Ll261-.Ll260
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	421
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll262-.Ll261
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-419
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll263-.Ll262
	.byte	3
	.sleb128	-1
	.byte	1
# [640:18]
	.byte	2
	.uleb128	.Ll264-.Ll263
	.byte	5
	.uleb128	18
	.byte	3
	.sleb128	421
	.byte	1
# [225:17]
	.byte	2
	.uleb128	.Ll265-.Ll264
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-415
	.byte	1
# [226:18]
	.byte	2
	.uleb128	.Ll266-.Ll265
	.byte	5
	.uleb128	18
	.byte	13
# [644:4]
	.byte	2
	.uleb128	.Ll267-.Ll266
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	418
	.byte	1
# [227:17]
	.byte	2
	.uleb128	.Ll268-.Ll267
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-417
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll269-.Ll268
	.byte	5
	.uleb128	18
	.byte	13
# [645:5]
	.byte	2
	.uleb128	.Ll270-.Ll269
	.byte	5
	.uleb128	5
	.byte	3
	.sleb128	417
	.byte	1
# [647:3]
	.byte	2
	.uleb128	.Ll271-.Ll270
	.byte	5
	.uleb128	3
	.byte	14
# [218:18]
	.byte	2
	.uleb128	.Ll272-.Ll271
	.byte	5
	.uleb128	18
	.byte	3
	.sleb128	-429
	.byte	1
# [649:8]
	.byte	2
	.uleb128	.Ll273-.Ll272
	.byte	5
	.uleb128	8
	.byte	3
	.sleb128	431
	.byte	1
# [650:7]
	.byte	2
	.uleb128	.Ll274-.Ll273
	.byte	5
	.uleb128	7
	.byte	13
# [652:5]
	.byte	2
	.uleb128	.Ll275-.Ll274
	.byte	5
	.uleb128	5
	.byte	14
# [217:17]
	.byte	2
	.uleb128	.Ll276-.Ll275
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-435
	.byte	1
# [656:17]
	.byte	2
	.uleb128	.Ll277-.Ll276
	.byte	3
	.sleb128	439
	.byte	1
# [657:1]
	.byte	2
	.uleb128	.Ll278-.Ll277
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll279
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_ANA
# [661:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll280
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	660
	.byte	1
# [662:1]
	.byte	2
	.uleb128	.Ll281-.Ll280
	.byte	13
# [663:10]
	.byte	2
	.uleb128	.Ll282-.Ll281
	.byte	5
	.uleb128	10
	.byte	13
# [664:12]
	.byte	2
	.uleb128	.Ll283-.Ll282
	.byte	5
	.uleb128	12
	.byte	13
# [665:4]
	.byte	2
	.uleb128	.Ll284-.Ll283
	.byte	5
	.uleb128	4
	.byte	13
# [220:17]
	.byte	2
	.uleb128	.Ll285-.Ll284
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-445
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll286-.Ll285
	.byte	3
	.sleb128	-1
	.byte	1
# [666:4]
	.byte	2
	.uleb128	.Ll287-.Ll286
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	447
	.byte	1
# [227:17]
	.byte	2
	.uleb128	.Ll288-.Ll287
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-439
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll289-.Ll288
	.byte	5
	.uleb128	18
	.byte	13
# [667:17]
	.byte	2
	.uleb128	.Ll290-.Ll289
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	439
	.byte	1
# [668:1]
	.byte	2
	.uleb128	.Ll291-.Ll290
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll292
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_ASL
# [672:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll293
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	671
	.byte	1
# [673:10]
	.byte	2
	.uleb128	.Ll294-.Ll293
	.byte	5
	.uleb128	10
	.byte	13
# [674:12]
	.byte	2
	.uleb128	.Ll295-.Ll294
	.byte	5
	.uleb128	12
	.byte	13
# [675:4]
	.byte	2
	.uleb128	.Ll296-.Ll295
	.byte	5
	.uleb128	4
	.byte	13
# [217:17]
	.byte	2
	.uleb128	.Ll297-.Ll296
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-458
	.byte	1
# [218:18]
	.byte	2
	.uleb128	.Ll298-.Ll297
	.byte	5
	.uleb128	18
	.byte	13
# [676:4]
	.byte	2
	.uleb128	.Ll299-.Ll298
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	458
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll300-.Ll299
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-456
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll301-.Ll300
	.byte	3
	.sleb128	-1
	.byte	1
# [677:4]
	.byte	2
	.uleb128	.Ll302-.Ll301
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	458
	.byte	1
# [227:17]
	.byte	2
	.uleb128	.Ll303-.Ll302
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-450
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll304-.Ll303
	.byte	5
	.uleb128	18
	.byte	13
# [678:1]
	.byte	2
	.uleb128	.Ll305-.Ll304
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	450
	.byte	1
# [679:1]
	.byte	2
	.uleb128	.Ll306-.Ll305
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll307
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_BCC
# [684:6]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll308
	.byte	5
	.uleb128	6
	.byte	3
	.sleb128	683
	.byte	1
# [686:3]
	.byte	2
	.uleb128	.Ll309-.Ll308
	.byte	5
	.uleb128	3
	.byte	14
# [687:3]
	.byte	2
	.uleb128	.Ll310-.Ll309
	.byte	13
# [688:7]
	.byte	2
	.uleb128	.Ll311-.Ll310
	.byte	5
	.uleb128	7
	.byte	13
# [689:13]
	.byte	2
	.uleb128	.Ll312-.Ll311
	.byte	5
	.uleb128	13
	.byte	13
# [688:49]
	.byte	2
	.uleb128	.Ll313-.Ll312
	.byte	5
	.uleb128	49
	.byte	3
	.sleb128	-1
	.byte	1
# [689:35]
	.byte	2
	.uleb128	.Ll314-.Ll313
	.byte	5
	.uleb128	35
	.byte	13
# [691:1]
	.byte	2
	.uleb128	.Ll315-.Ll314
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll316
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_BCS
# [696:6]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll317
	.byte	5
	.uleb128	6
	.byte	3
	.sleb128	695
	.byte	1
# [698:3]
	.byte	2
	.uleb128	.Ll318-.Ll317
	.byte	5
	.uleb128	3
	.byte	14
# [699:3]
	.byte	2
	.uleb128	.Ll319-.Ll318
	.byte	13
# [700:7]
	.byte	2
	.uleb128	.Ll320-.Ll319
	.byte	5
	.uleb128	7
	.byte	13
# [701:13]
	.byte	2
	.uleb128	.Ll321-.Ll320
	.byte	5
	.uleb128	13
	.byte	13
# [700:49]
	.byte	2
	.uleb128	.Ll322-.Ll321
	.byte	5
	.uleb128	49
	.byte	3
	.sleb128	-1
	.byte	1
# [701:35]
	.byte	2
	.uleb128	.Ll323-.Ll322
	.byte	5
	.uleb128	35
	.byte	13
# [703:1]
	.byte	2
	.uleb128	.Ll324-.Ll323
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll325
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_BEQ
# [708:6]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll326
	.byte	5
	.uleb128	6
	.byte	3
	.sleb128	707
	.byte	1
# [710:3]
	.byte	2
	.uleb128	.Ll327-.Ll326
	.byte	5
	.uleb128	3
	.byte	14
# [711:3]
	.byte	2
	.uleb128	.Ll328-.Ll327
	.byte	13
# [712:7]
	.byte	2
	.uleb128	.Ll329-.Ll328
	.byte	5
	.uleb128	7
	.byte	13
# [713:3]
	.byte	2
	.uleb128	.Ll330-.Ll329
	.byte	5
	.uleb128	3
	.byte	13
# [712:49]
	.byte	2
	.uleb128	.Ll331-.Ll330
	.byte	5
	.uleb128	49
	.byte	3
	.sleb128	-1
	.byte	1
# [713:25]
	.byte	2
	.uleb128	.Ll332-.Ll331
	.byte	5
	.uleb128	25
	.byte	13
# [715:1]
	.byte	2
	.uleb128	.Ll333-.Ll332
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll334
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_BIT
# [719:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll335
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	718
	.byte	1
# [720:10]
	.byte	2
	.uleb128	.Ll336-.Ll335
	.byte	5
	.uleb128	10
	.byte	13
# [721:12]
	.byte	2
	.uleb128	.Ll337-.Ll336
	.byte	5
	.uleb128	12
	.byte	13
# [722:4]
	.byte	2
	.uleb128	.Ll338-.Ll337
	.byte	5
	.uleb128	4
	.byte	13
# [220:17]
	.byte	2
	.uleb128	.Ll339-.Ll338
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-502
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll340-.Ll339
	.byte	3
	.sleb128	-1
	.byte	1
# [723:12]
	.byte	2
	.uleb128	.Ll341-.Ll340
	.byte	5
	.uleb128	12
	.byte	3
	.sleb128	504
	.byte	1
# [724:1]
	.byte	2
	.uleb128	.Ll342-.Ll341
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll343
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_BMI
# [729:5]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll344
	.byte	5
	.uleb128	5
	.byte	3
	.sleb128	728
	.byte	1
# [731:3]
	.byte	2
	.uleb128	.Ll345-.Ll344
	.byte	5
	.uleb128	3
	.byte	14
# [732:3]
	.byte	2
	.uleb128	.Ll346-.Ll345
	.byte	13
# [733:7]
	.byte	2
	.uleb128	.Ll347-.Ll346
	.byte	5
	.uleb128	7
	.byte	13
# [734:3]
	.byte	2
	.uleb128	.Ll348-.Ll347
	.byte	5
	.uleb128	3
	.byte	13
# [733:49]
	.byte	2
	.uleb128	.Ll349-.Ll348
	.byte	5
	.uleb128	49
	.byte	3
	.sleb128	-1
	.byte	1
# [734:25]
	.byte	2
	.uleb128	.Ll350-.Ll349
	.byte	5
	.uleb128	25
	.byte	13
# [736:1]
	.byte	2
	.uleb128	.Ll351-.Ll350
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll352
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_BNE
# [741:6]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll353
	.byte	5
	.uleb128	6
	.byte	3
	.sleb128	740
	.byte	1
# [743:3]
	.byte	2
	.uleb128	.Ll354-.Ll353
	.byte	5
	.uleb128	3
	.byte	14
# [744:3]
	.byte	2
	.uleb128	.Ll355-.Ll354
	.byte	13
# [745:7]
	.byte	2
	.uleb128	.Ll356-.Ll355
	.byte	5
	.uleb128	7
	.byte	13
# [746:3]
	.byte	2
	.uleb128	.Ll357-.Ll356
	.byte	5
	.uleb128	3
	.byte	13
# [745:49]
	.byte	2
	.uleb128	.Ll358-.Ll357
	.byte	5
	.uleb128	49
	.byte	3
	.sleb128	-1
	.byte	1
# [746:25]
	.byte	2
	.uleb128	.Ll359-.Ll358
	.byte	5
	.uleb128	25
	.byte	13
# [748:1]
	.byte	2
	.uleb128	.Ll360-.Ll359
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll361
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_BPL
# [753:5]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll362
	.byte	5
	.uleb128	5
	.byte	3
	.sleb128	752
	.byte	1
# [755:3]
	.byte	2
	.uleb128	.Ll363-.Ll362
	.byte	5
	.uleb128	3
	.byte	14
# [756:3]
	.byte	2
	.uleb128	.Ll364-.Ll363
	.byte	13
# [757:7]
	.byte	2
	.uleb128	.Ll365-.Ll364
	.byte	5
	.uleb128	7
	.byte	13
# [758:3]
	.byte	2
	.uleb128	.Ll366-.Ll365
	.byte	5
	.uleb128	3
	.byte	13
# [757:49]
	.byte	2
	.uleb128	.Ll367-.Ll366
	.byte	5
	.uleb128	49
	.byte	3
	.sleb128	-1
	.byte	1
# [758:25]
	.byte	2
	.uleb128	.Ll368-.Ll367
	.byte	5
	.uleb128	25
	.byte	13
# [760:1]
	.byte	2
	.uleb128	.Ll369-.Ll368
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll370
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_BRA
# [765:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll371
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	764
	.byte	1
# [766:1]
	.byte	2
	.uleb128	.Ll372-.Ll371
	.byte	13
# [767:5]
	.byte	2
	.uleb128	.Ll373-.Ll372
	.byte	5
	.uleb128	5
	.byte	13
# [768:1]
	.byte	2
	.uleb128	.Ll374-.Ll373
	.byte	5
	.uleb128	1
	.byte	13
# [767:47]
	.byte	2
	.uleb128	.Ll375-.Ll374
	.byte	5
	.uleb128	47
	.byte	3
	.sleb128	-1
	.byte	1
# [768:23]
	.byte	2
	.uleb128	.Ll376-.Ll375
	.byte	5
	.uleb128	23
	.byte	13
# [769:1]
	.byte	2
	.uleb128	.Ll377-.Ll376
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll378
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_BRK
# [773:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll379
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	772
	.byte	1
# [774:1]
	.byte	2
	.uleb128	.Ll380-.Ll379
	.byte	13
# [775:1]
	.byte	2
	.uleb128	.Ll381-.Ll380
	.byte	13
# [776:7]
	.byte	2
	.uleb128	.Ll382-.Ll381
	.byte	5
	.uleb128	7
	.byte	13
# [221:17]
	.byte	2
	.uleb128	.Ll383-.Ll382
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-555
	.byte	1
# [778:12]
	.byte	2
	.uleb128	.Ll384-.Ll383
	.byte	5
	.uleb128	12
	.byte	3
	.sleb128	557
	.byte	1
# [779:1]
	.byte	2
	.uleb128	.Ll385-.Ll384
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll386
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_BVC
# [784:6]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll387
	.byte	5
	.uleb128	6
	.byte	3
	.sleb128	783
	.byte	1
# [786:3]
	.byte	2
	.uleb128	.Ll388-.Ll387
	.byte	5
	.uleb128	3
	.byte	14
# [787:3]
	.byte	2
	.uleb128	.Ll389-.Ll388
	.byte	13
# [788:7]
	.byte	2
	.uleb128	.Ll390-.Ll389
	.byte	5
	.uleb128	7
	.byte	13
# [789:3]
	.byte	2
	.uleb128	.Ll391-.Ll390
	.byte	5
	.uleb128	3
	.byte	13
# [788:49]
	.byte	2
	.uleb128	.Ll392-.Ll391
	.byte	5
	.uleb128	49
	.byte	3
	.sleb128	-1
	.byte	1
# [789:25]
	.byte	2
	.uleb128	.Ll393-.Ll392
	.byte	5
	.uleb128	25
	.byte	13
# [791:1]
	.byte	2
	.uleb128	.Ll394-.Ll393
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll395
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_BVS
# [796:6]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll396
	.byte	5
	.uleb128	6
	.byte	3
	.sleb128	795
	.byte	1
# [798:3]
	.byte	2
	.uleb128	.Ll397-.Ll396
	.byte	5
	.uleb128	3
	.byte	14
# [799:3]
	.byte	2
	.uleb128	.Ll398-.Ll397
	.byte	13
# [800:7]
	.byte	2
	.uleb128	.Ll399-.Ll398
	.byte	5
	.uleb128	7
	.byte	13
# [801:3]
	.byte	2
	.uleb128	.Ll400-.Ll399
	.byte	5
	.uleb128	3
	.byte	13
# [800:49]
	.byte	2
	.uleb128	.Ll401-.Ll400
	.byte	5
	.uleb128	49
	.byte	3
	.sleb128	-1
	.byte	1
# [801:25]
	.byte	2
	.uleb128	.Ll402-.Ll401
	.byte	5
	.uleb128	25
	.byte	13
# [803:1]
	.byte	2
	.uleb128	.Ll403-.Ll402
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll404
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_CLC
# [218:18]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll405
	.byte	5
	.uleb128	18
	.byte	229
# [809:1]
	.byte	2
	.uleb128	.Ll406-.Ll405
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	591
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll407
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_CLD
# [224:18]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll408
	.byte	5
	.uleb128	18
	.byte	235
# [815:1]
	.byte	2
	.uleb128	.Ll409-.Ll408
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	591
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll410
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_CLI
# [222:17]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll411
	.byte	5
	.uleb128	17
	.byte	233
# [821:1]
	.byte	2
	.uleb128	.Ll412-.Ll411
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	599
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll413
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_CLV
# [226:18]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll414
	.byte	5
	.uleb128	18
	.byte	237
# [827:1]
	.byte	2
	.uleb128	.Ll415-.Ll414
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	601
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll416
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_CMP
# [831:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll417
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	830
	.byte	1
# [832:1]
	.byte	2
	.uleb128	.Ll418-.Ll417
	.byte	13
# [833:15]
	.byte	2
	.uleb128	.Ll419-.Ll418
	.byte	5
	.uleb128	15
	.byte	13
# [834:12]
	.byte	2
	.uleb128	.Ll420-.Ll419
	.byte	5
	.uleb128	12
	.byte	13
# [835:5]
	.byte	2
	.uleb128	.Ll421-.Ll420
	.byte	5
	.uleb128	5
	.byte	13
# [217:17]
	.byte	2
	.uleb128	.Ll422-.Ll421
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-618
	.byte	1
# [218:18]
	.byte	2
	.uleb128	.Ll423-.Ll422
	.byte	5
	.uleb128	18
	.byte	13
# [836:21]
	.byte	2
	.uleb128	.Ll424-.Ll423
	.byte	5
	.uleb128	21
	.byte	3
	.sleb128	618
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll425-.Ll424
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-617
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll426-.Ll425
	.byte	13
# [837:4]
	.byte	2
	.uleb128	.Ll427-.Ll426
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	617
	.byte	1
# [227:17]
	.byte	2
	.uleb128	.Ll428-.Ll427
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-610
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll429-.Ll428
	.byte	5
	.uleb128	18
	.byte	13
# [838:1]
	.byte	2
	.uleb128	.Ll430-.Ll429
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	610
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll431
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_CPX
# [842:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll432
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	841
	.byte	1
# [843:10]
	.byte	2
	.uleb128	.Ll433-.Ll432
	.byte	5
	.uleb128	10
	.byte	13
# [844:12]
	.byte	2
	.uleb128	.Ll434-.Ll433
	.byte	5
	.uleb128	12
	.byte	13
# [845:5]
	.byte	2
	.uleb128	.Ll435-.Ll434
	.byte	5
	.uleb128	5
	.byte	13
# [217:17]
	.byte	2
	.uleb128	.Ll436-.Ll435
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-628
	.byte	1
# [218:18]
	.byte	2
	.uleb128	.Ll437-.Ll436
	.byte	5
	.uleb128	18
	.byte	13
# [846:21]
	.byte	2
	.uleb128	.Ll438-.Ll437
	.byte	5
	.uleb128	21
	.byte	3
	.sleb128	628
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll439-.Ll438
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-627
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll440-.Ll439
	.byte	13
# [847:4]
	.byte	2
	.uleb128	.Ll441-.Ll440
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	627
	.byte	1
# [227:17]
	.byte	2
	.uleb128	.Ll442-.Ll441
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-620
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll443-.Ll442
	.byte	5
	.uleb128	18
	.byte	13
# [848:1]
	.byte	2
	.uleb128	.Ll444-.Ll443
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	620
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll445
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_CPY
# [852:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll446
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	851
	.byte	1
# [853:10]
	.byte	2
	.uleb128	.Ll447-.Ll446
	.byte	5
	.uleb128	10
	.byte	13
# [854:12]
	.byte	2
	.uleb128	.Ll448-.Ll447
	.byte	5
	.uleb128	12
	.byte	13
# [855:5]
	.byte	2
	.uleb128	.Ll449-.Ll448
	.byte	5
	.uleb128	5
	.byte	13
# [217:17]
	.byte	2
	.uleb128	.Ll450-.Ll449
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-638
	.byte	1
# [218:18]
	.byte	2
	.uleb128	.Ll451-.Ll450
	.byte	5
	.uleb128	18
	.byte	13
# [856:5]
	.byte	2
	.uleb128	.Ll452-.Ll451
	.byte	5
	.uleb128	5
	.byte	3
	.sleb128	638
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll453-.Ll452
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-637
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll454-.Ll453
	.byte	13
# [857:4]
	.byte	2
	.uleb128	.Ll455-.Ll454
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	637
	.byte	1
# [227:17]
	.byte	2
	.uleb128	.Ll456-.Ll455
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-630
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll457-.Ll456
	.byte	5
	.uleb128	18
	.byte	13
# [858:1]
	.byte	2
	.uleb128	.Ll458-.Ll457
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	630
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll459
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_DEA
# [862:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll460
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	861
	.byte	1
# [863:10]
	.byte	2
	.uleb128	.Ll461-.Ll460
	.byte	5
	.uleb128	10
	.byte	13
# [864:12]
	.byte	2
	.uleb128	.Ll462-.Ll461
	.byte	5
	.uleb128	12
	.byte	13
# [865:4]
	.byte	2
	.uleb128	.Ll463-.Ll462
	.byte	5
	.uleb128	4
	.byte	13
# [227:17]
	.byte	2
	.uleb128	.Ll464-.Ll463
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-638
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll465-.Ll464
	.byte	5
	.uleb128	18
	.byte	13
# [866:4]
	.byte	2
	.uleb128	.Ll466-.Ll465
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	638
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll467-.Ll466
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-646
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll468-.Ll467
	.byte	3
	.sleb128	-1
	.byte	1
# [867:1]
	.byte	2
	.uleb128	.Ll469-.Ll468
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	648
	.byte	1
# [868:1]
	.byte	2
	.uleb128	.Ll470-.Ll469
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll471
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_DEX
# [873:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll472
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	872
	.byte	1
# [874:4]
	.byte	2
	.uleb128	.Ll473-.Ll472
	.byte	5
	.uleb128	4
	.byte	13
# [227:17]
	.byte	2
	.uleb128	.Ll474-.Ll473
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-647
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll475-.Ll474
	.byte	5
	.uleb128	18
	.byte	13
# [875:4]
	.byte	2
	.uleb128	.Ll476-.Ll475
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	647
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll477-.Ll476
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-655
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll478-.Ll477
	.byte	3
	.sleb128	-1
	.byte	1
# [876:1]
	.byte	2
	.uleb128	.Ll479-.Ll478
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	657
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll480
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_DEY
# [881:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll481
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	880
	.byte	1
# [882:4]
	.byte	2
	.uleb128	.Ll482-.Ll481
	.byte	5
	.uleb128	4
	.byte	13
# [227:17]
	.byte	2
	.uleb128	.Ll483-.Ll482
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-655
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll484-.Ll483
	.byte	5
	.uleb128	18
	.byte	13
# [883:4]
	.byte	2
	.uleb128	.Ll485-.Ll484
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	655
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll486-.Ll485
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-663
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll487-.Ll486
	.byte	3
	.sleb128	-1
	.byte	1
# [884:1]
	.byte	2
	.uleb128	.Ll488-.Ll487
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	665
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll489
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_EOR
# [888:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll490
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	887
	.byte	1
# [889:1]
	.byte	2
	.uleb128	.Ll491-.Ll490
	.byte	13
# [890:10]
	.byte	2
	.uleb128	.Ll492-.Ll491
	.byte	5
	.uleb128	10
	.byte	13
# [891:12]
	.byte	2
	.uleb128	.Ll493-.Ll492
	.byte	5
	.uleb128	12
	.byte	13
# [892:4]
	.byte	2
	.uleb128	.Ll494-.Ll493
	.byte	5
	.uleb128	4
	.byte	13
# [227:17]
	.byte	2
	.uleb128	.Ll495-.Ll494
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-665
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll496-.Ll495
	.byte	5
	.uleb128	18
	.byte	13
# [893:4]
	.byte	2
	.uleb128	.Ll497-.Ll496
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	665
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll498-.Ll497
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-673
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll499-.Ll498
	.byte	3
	.sleb128	-1
	.byte	1
# [894:17]
	.byte	2
	.uleb128	.Ll500-.Ll499
	.byte	3
	.sleb128	675
	.byte	1
# [895:1]
	.byte	2
	.uleb128	.Ll501-.Ll500
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll502
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_INA
# [899:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll503
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	898
	.byte	1
# [900:10]
	.byte	2
	.uleb128	.Ll504-.Ll503
	.byte	5
	.uleb128	10
	.byte	13
# [901:12]
	.byte	2
	.uleb128	.Ll505-.Ll504
	.byte	5
	.uleb128	12
	.byte	13
# [902:4]
	.byte	2
	.uleb128	.Ll506-.Ll505
	.byte	5
	.uleb128	4
	.byte	13
# [227:17]
	.byte	2
	.uleb128	.Ll507-.Ll506
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-675
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll508-.Ll507
	.byte	5
	.uleb128	18
	.byte	13
# [903:4]
	.byte	2
	.uleb128	.Ll509-.Ll508
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	675
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll510-.Ll509
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-683
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll511-.Ll510
	.byte	3
	.sleb128	-1
	.byte	1
# [904:1]
	.byte	2
	.uleb128	.Ll512-.Ll511
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	685
	.byte	1
# [905:1]
	.byte	2
	.uleb128	.Ll513-.Ll512
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll514
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_INX
# [910:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll515
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	909
	.byte	1
# [911:4]
	.byte	2
	.uleb128	.Ll516-.Ll515
	.byte	5
	.uleb128	4
	.byte	13
# [227:17]
	.byte	2
	.uleb128	.Ll517-.Ll516
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-684
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll518-.Ll517
	.byte	5
	.uleb128	18
	.byte	13
# [912:4]
	.byte	2
	.uleb128	.Ll519-.Ll518
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	684
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll520-.Ll519
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-692
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll521-.Ll520
	.byte	3
	.sleb128	-1
	.byte	1
# [913:1]
	.byte	2
	.uleb128	.Ll522-.Ll521
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	694
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll523
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_INY
# [918:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll524
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	917
	.byte	1
# [919:4]
	.byte	2
	.uleb128	.Ll525-.Ll524
	.byte	5
	.uleb128	4
	.byte	13
# [227:17]
	.byte	2
	.uleb128	.Ll526-.Ll525
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-692
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll527-.Ll526
	.byte	5
	.uleb128	18
	.byte	13
# [920:4]
	.byte	2
	.uleb128	.Ll528-.Ll527
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	692
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll529-.Ll528
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-700
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll530-.Ll529
	.byte	3
	.sleb128	-1
	.byte	1
# [921:1]
	.byte	2
	.uleb128	.Ll531-.Ll530
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	702
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll532
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_JMP
# [926:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll533
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	925
	.byte	1
# [927:1]
	.byte	2
	.uleb128	.Ll534-.Ll533
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll535
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_JSR
# [931:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll536
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	930
	.byte	1
# [932:8]
	.byte	2
	.uleb128	.Ll537-.Ll536
	.byte	5
	.uleb128	8
	.byte	13
# [933:1]
	.byte	2
	.uleb128	.Ll538-.Ll537
	.byte	5
	.uleb128	1
	.byte	13
# [934:1]
	.byte	2
	.uleb128	.Ll539-.Ll538
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll540
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_LDA
# [938:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll541
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	937
	.byte	1
# [939:1]
	.byte	2
	.uleb128	.Ll542-.Ll541
	.byte	13
# [940:10]
	.byte	2
	.uleb128	.Ll543-.Ll542
	.byte	5
	.uleb128	10
	.byte	13
# [941:6]
	.byte	2
	.uleb128	.Ll544-.Ll543
	.byte	5
	.uleb128	6
	.byte	13
# [942:4]
	.byte	2
	.uleb128	.Ll545-.Ll544
	.byte	5
	.uleb128	4
	.byte	13
# [227:17]
	.byte	2
	.uleb128	.Ll546-.Ll545
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-715
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll547-.Ll546
	.byte	5
	.uleb128	18
	.byte	13
# [943:4]
	.byte	2
	.uleb128	.Ll548-.Ll547
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	715
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll549-.Ll548
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-723
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll550-.Ll549
	.byte	3
	.sleb128	-1
	.byte	1
# [944:1]
	.byte	2
	.uleb128	.Ll551-.Ll550
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	725
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll552
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_LDC
# [949:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll553
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	948
	.byte	1
# [950:6]
	.byte	2
	.uleb128	.Ll554-.Ll553
	.byte	5
	.uleb128	6
	.byte	13
# [951:1]
	.byte	2
	.uleb128	.Ll555-.Ll554
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll556
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_LDD
# [955:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll557
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	954
	.byte	1
# [956:6]
	.byte	2
	.uleb128	.Ll558-.Ll557
	.byte	5
	.uleb128	6
	.byte	13
# [957:1]
	.byte	2
	.uleb128	.Ll559-.Ll558
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll560
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_LDX
# [962:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll561
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	961
	.byte	1
# [963:1]
	.byte	2
	.uleb128	.Ll562-.Ll561
	.byte	13
# [964:10]
	.byte	2
	.uleb128	.Ll563-.Ll562
	.byte	5
	.uleb128	10
	.byte	13
# [965:6]
	.byte	2
	.uleb128	.Ll564-.Ll563
	.byte	5
	.uleb128	6
	.byte	13
# [966:4]
	.byte	2
	.uleb128	.Ll565-.Ll564
	.byte	5
	.uleb128	4
	.byte	13
# [227:17]
	.byte	2
	.uleb128	.Ll566-.Ll565
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-739
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll567-.Ll566
	.byte	5
	.uleb128	18
	.byte	13
# [967:4]
	.byte	2
	.uleb128	.Ll568-.Ll567
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	739
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll569-.Ll568
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-747
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll570-.Ll569
	.byte	3
	.sleb128	-1
	.byte	1
# [968:1]
	.byte	2
	.uleb128	.Ll571-.Ll570
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	749
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll572
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_LDY
# [972:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll573
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	971
	.byte	1
# [973:1]
	.byte	2
	.uleb128	.Ll574-.Ll573
	.byte	13
# [974:10]
	.byte	2
	.uleb128	.Ll575-.Ll574
	.byte	5
	.uleb128	10
	.byte	13
# [975:6]
	.byte	2
	.uleb128	.Ll576-.Ll575
	.byte	5
	.uleb128	6
	.byte	13
# [976:4]
	.byte	2
	.uleb128	.Ll577-.Ll576
	.byte	5
	.uleb128	4
	.byte	13
# [227:17]
	.byte	2
	.uleb128	.Ll578-.Ll577
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-749
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll579-.Ll578
	.byte	5
	.uleb128	18
	.byte	13
# [977:4]
	.byte	2
	.uleb128	.Ll580-.Ll579
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	749
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll581-.Ll580
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-757
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll582-.Ll581
	.byte	3
	.sleb128	-1
	.byte	1
# [978:1]
	.byte	2
	.uleb128	.Ll583-.Ll582
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	759
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll584
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_LSR
# [982:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll585
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	981
	.byte	1
# [983:10]
	.byte	2
	.uleb128	.Ll586-.Ll585
	.byte	5
	.uleb128	10
	.byte	13
# [984:12]
	.byte	2
	.uleb128	.Ll587-.Ll586
	.byte	5
	.uleb128	12
	.byte	13
# [985:5]
	.byte	2
	.uleb128	.Ll588-.Ll587
	.byte	5
	.uleb128	5
	.byte	13
# [217:17]
	.byte	2
	.uleb128	.Ll589-.Ll588
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-768
	.byte	1
# [218:18]
	.byte	2
	.uleb128	.Ll590-.Ll589
	.byte	5
	.uleb128	18
	.byte	13
# [986:4]
	.byte	2
	.uleb128	.Ll591-.Ll590
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	768
	.byte	1
# [227:17]
	.byte	2
	.uleb128	.Ll592-.Ll591
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-759
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll593-.Ll592
	.byte	5
	.uleb128	18
	.byte	13
# [987:4]
	.byte	2
	.uleb128	.Ll594-.Ll593
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	759
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll595-.Ll594
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-767
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll596-.Ll595
	.byte	3
	.sleb128	-1
	.byte	1
# [988:1]
	.byte	2
	.uleb128	.Ll597-.Ll596
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	769
	.byte	1
# [989:1]
	.byte	2
	.uleb128	.Ll598-.Ll597
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll599
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_NOP
# [994:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll600
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	993
	.byte	1
# [995:9]
	.byte	2
	.uleb128	.Ll601-.Ll600
	.byte	5
	.uleb128	9
	.byte	13
# [996:9]
	.byte	2
	.uleb128	.Ll602-.Ll601
	.byte	13
# [997:9]
	.byte	2
	.uleb128	.Ll603-.Ll602
	.byte	13
# [998:9]
	.byte	2
	.uleb128	.Ll604-.Ll603
	.byte	13
# [999:9]
	.byte	2
	.uleb128	.Ll605-.Ll604
	.byte	13
# [1000:9]
	.byte	2
	.uleb128	.Ll606-.Ll605
	.byte	13
# [1002:1]
	.byte	2
	.uleb128	.Ll607-.Ll606
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll608
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_ORA
# [1006:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll609
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1005
	.byte	1
# [1007:1]
	.byte	2
	.uleb128	.Ll610-.Ll609
	.byte	13
# [1008:10]
	.byte	2
	.uleb128	.Ll611-.Ll610
	.byte	5
	.uleb128	10
	.byte	13
# [1009:12]
	.byte	2
	.uleb128	.Ll612-.Ll611
	.byte	5
	.uleb128	12
	.byte	13
# [1010:4]
	.byte	2
	.uleb128	.Ll613-.Ll612
	.byte	5
	.uleb128	4
	.byte	13
# [227:17]
	.byte	2
	.uleb128	.Ll614-.Ll613
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-783
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll615-.Ll614
	.byte	5
	.uleb128	18
	.byte	13
# [1011:4]
	.byte	2
	.uleb128	.Ll616-.Ll615
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	783
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll617-.Ll616
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-791
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll618-.Ll617
	.byte	3
	.sleb128	-1
	.byte	1
# [1012:17]
	.byte	2
	.uleb128	.Ll619-.Ll618
	.byte	3
	.sleb128	793
	.byte	1
# [1013:1]
	.byte	2
	.uleb128	.Ll620-.Ll619
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll621
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_PHA
# [1017:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll622
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1016
	.byte	1
# [1018:8]
	.byte	2
	.uleb128	.Ll623-.Ll622
	.byte	5
	.uleb128	8
	.byte	13
# [1019:1]
	.byte	2
	.uleb128	.Ll624-.Ll623
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll625
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_PHC
# [1023:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll626
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1022
	.byte	1
# [1024:10]
	.byte	2
	.uleb128	.Ll627-.Ll626
	.byte	5
	.uleb128	10
	.byte	13
# [1025:1]
	.byte	2
	.uleb128	.Ll628-.Ll627
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll629
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_PHD
# [1029:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll630
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1028
	.byte	1
# [1030:10]
	.byte	2
	.uleb128	.Ll631-.Ll630
	.byte	5
	.uleb128	10
	.byte	13
# [1031:1]
	.byte	2
	.uleb128	.Ll632-.Ll631
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll633
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_PHX
# [1035:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll634
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1034
	.byte	1
# [1036:8]
	.byte	2
	.uleb128	.Ll635-.Ll634
	.byte	5
	.uleb128	8
	.byte	13
# [1037:1]
	.byte	2
	.uleb128	.Ll636-.Ll635
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll637
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_PHY
# [1041:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll638
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1040
	.byte	1
# [1042:8]
	.byte	2
	.uleb128	.Ll639-.Ll638
	.byte	5
	.uleb128	8
	.byte	13
# [1043:1]
	.byte	2
	.uleb128	.Ll640-.Ll639
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll641
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_PHP
# [1047:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll642
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1046
	.byte	1
# [1048:7]
	.byte	2
	.uleb128	.Ll643-.Ll642
	.byte	5
	.uleb128	7
	.byte	13
# [1049:1]
	.byte	2
	.uleb128	.Ll644-.Ll643
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll645
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_PLA
# [1053:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll646
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1052
	.byte	1
# [1054:6]
	.byte	2
	.uleb128	.Ll647-.Ll646
	.byte	5
	.uleb128	6
	.byte	13
# [1055:4]
	.byte	2
	.uleb128	.Ll648-.Ll647
	.byte	5
	.uleb128	4
	.byte	13
# [227:17]
	.byte	2
	.uleb128	.Ll649-.Ll648
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-828
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll650-.Ll649
	.byte	5
	.uleb128	18
	.byte	13
# [1056:4]
	.byte	2
	.uleb128	.Ll651-.Ll650
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	828
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll652-.Ll651
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-836
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll653-.Ll652
	.byte	3
	.sleb128	-1
	.byte	1
# [1057:1]
	.byte	2
	.uleb128	.Ll654-.Ll653
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	838
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll655
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_PLC
# [1061:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll656
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1060
	.byte	1
# [1062:6]
	.byte	2
	.uleb128	.Ll657-.Ll656
	.byte	5
	.uleb128	6
	.byte	13
# [1063:1]
	.byte	2
	.uleb128	.Ll658-.Ll657
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll659
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_PLD
# [1067:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll660
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1066
	.byte	1
# [1068:6]
	.byte	2
	.uleb128	.Ll661-.Ll660
	.byte	5
	.uleb128	6
	.byte	13
# [1069:1]
	.byte	2
	.uleb128	.Ll662-.Ll661
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll663
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_PLX
# [1073:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll664
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1072
	.byte	1
# [1074:6]
	.byte	2
	.uleb128	.Ll665-.Ll664
	.byte	5
	.uleb128	6
	.byte	13
# [1075:4]
	.byte	2
	.uleb128	.Ll666-.Ll665
	.byte	5
	.uleb128	4
	.byte	13
# [227:17]
	.byte	2
	.uleb128	.Ll667-.Ll666
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-848
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll668-.Ll667
	.byte	5
	.uleb128	18
	.byte	13
# [1076:4]
	.byte	2
	.uleb128	.Ll669-.Ll668
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	848
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll670-.Ll669
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-856
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll671-.Ll670
	.byte	3
	.sleb128	-1
	.byte	1
# [1077:1]
	.byte	2
	.uleb128	.Ll672-.Ll671
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	858
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll673
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_PLY
# [1081:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll674
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1080
	.byte	1
# [1082:6]
	.byte	2
	.uleb128	.Ll675-.Ll674
	.byte	5
	.uleb128	6
	.byte	13
# [1083:4]
	.byte	2
	.uleb128	.Ll676-.Ll675
	.byte	5
	.uleb128	4
	.byte	13
# [227:17]
	.byte	2
	.uleb128	.Ll677-.Ll676
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-856
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll678-.Ll677
	.byte	5
	.uleb128	18
	.byte	13
# [1084:4]
	.byte	2
	.uleb128	.Ll679-.Ll678
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	856
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll680-.Ll679
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-864
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll681-.Ll680
	.byte	3
	.sleb128	-1
	.byte	1
# [1085:1]
	.byte	2
	.uleb128	.Ll682-.Ll681
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	866
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll683
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_PLP
# [1089:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll684
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1088
	.byte	1
# [1090:11]
	.byte	2
	.uleb128	.Ll685-.Ll684
	.byte	5
	.uleb128	11
	.byte	13
# [1091:1]
	.byte	2
	.uleb128	.Ll686-.Ll685
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll687
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_ROL
# [1095:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll688
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1094
	.byte	1
# [1096:10]
	.byte	2
	.uleb128	.Ll689-.Ll688
	.byte	5
	.uleb128	10
	.byte	13
# [1097:30]
	.byte	2
	.uleb128	.Ll690-.Ll689
	.byte	5
	.uleb128	30
	.byte	13
# [1098:4]
	.byte	2
	.uleb128	.Ll691-.Ll690
	.byte	5
	.uleb128	4
	.byte	13
# [217:17]
	.byte	2
	.uleb128	.Ll692-.Ll691
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-881
	.byte	1
# [218:18]
	.byte	2
	.uleb128	.Ll693-.Ll692
	.byte	5
	.uleb128	18
	.byte	13
# [1099:4]
	.byte	2
	.uleb128	.Ll694-.Ll693
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	881
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll695-.Ll694
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-879
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll696-.Ll695
	.byte	3
	.sleb128	-1
	.byte	1
# [1100:4]
	.byte	2
	.uleb128	.Ll697-.Ll696
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	881
	.byte	1
# [227:17]
	.byte	2
	.uleb128	.Ll698-.Ll697
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-873
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll699-.Ll698
	.byte	5
	.uleb128	18
	.byte	13
# [1101:1]
	.byte	2
	.uleb128	.Ll700-.Ll699
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	873
	.byte	1
# [1102:1]
	.byte	2
	.uleb128	.Ll701-.Ll700
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll702
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_ROR
# [1106:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll703
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1105
	.byte	1
# [1107:10]
	.byte	2
	.uleb128	.Ll704-.Ll703
	.byte	5
	.uleb128	10
	.byte	13
# [1108:31]
	.byte	2
	.uleb128	.Ll705-.Ll704
	.byte	5
	.uleb128	31
	.byte	13
# [1109:5]
	.byte	2
	.uleb128	.Ll706-.Ll705
	.byte	5
	.uleb128	5
	.byte	13
# [217:17]
	.byte	2
	.uleb128	.Ll707-.Ll706
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-892
	.byte	1
# [218:18]
	.byte	2
	.uleb128	.Ll708-.Ll707
	.byte	5
	.uleb128	18
	.byte	13
# [1110:4]
	.byte	2
	.uleb128	.Ll709-.Ll708
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	892
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll710-.Ll709
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-890
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll711-.Ll710
	.byte	3
	.sleb128	-1
	.byte	1
# [1111:4]
	.byte	2
	.uleb128	.Ll712-.Ll711
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	892
	.byte	1
# [227:17]
	.byte	2
	.uleb128	.Ll713-.Ll712
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-884
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll714-.Ll713
	.byte	5
	.uleb128	18
	.byte	13
# [1112:1]
	.byte	2
	.uleb128	.Ll715-.Ll714
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	884
	.byte	1
# [1113:1]
	.byte	2
	.uleb128	.Ll716-.Ll715
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll717
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_RTI
# [1117:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll718
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1116
	.byte	1
# [1118:11]
	.byte	2
	.uleb128	.Ll719-.Ll718
	.byte	5
	.uleb128	11
	.byte	13
# [1119:10]
	.byte	2
	.uleb128	.Ll720-.Ll719
	.byte	5
	.uleb128	10
	.byte	13
# [1120:1]
	.byte	2
	.uleb128	.Ll721-.Ll720
	.byte	5
	.uleb128	1
	.byte	13
# [1121:5]
	.byte	2
	.uleb128	.Ll722-.Ll721
	.byte	5
	.uleb128	5
	.byte	13
# [1122:5]
	.byte	2
	.uleb128	.Ll723-.Ll722
	.byte	13
# [1123:1]
	.byte	2
	.uleb128	.Ll724-.Ll723
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll725
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_RTS
# [1127:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll726
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1126
	.byte	1
# [1128:10]
	.byte	2
	.uleb128	.Ll727-.Ll726
	.byte	5
	.uleb128	10
	.byte	13
# [1129:7]
	.byte	2
	.uleb128	.Ll728-.Ll727
	.byte	5
	.uleb128	7
	.byte	13
# [1130:1]
	.byte	2
	.uleb128	.Ll729-.Ll728
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll730
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_SBC
# [1134:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll731
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1133
	.byte	1
# [1135:1]
	.byte	2
	.uleb128	.Ll732-.Ll731
	.byte	13
# [1136:10]
	.byte	2
	.uleb128	.Ll733-.Ll732
	.byte	5
	.uleb128	10
	.byte	13
# [1137:12]
	.byte	2
	.uleb128	.Ll734-.Ll733
	.byte	5
	.uleb128	12
	.byte	13
# [1138:4]
	.byte	2
	.uleb128	.Ll735-.Ll734
	.byte	5
	.uleb128	4
	.byte	13
# [217:17]
	.byte	2
	.uleb128	.Ll736-.Ll735
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-921
	.byte	1
# [218:18]
	.byte	2
	.uleb128	.Ll737-.Ll736
	.byte	5
	.uleb128	18
	.byte	13
# [1139:4]
	.byte	2
	.uleb128	.Ll738-.Ll737
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	921
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll739-.Ll738
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-919
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll740-.Ll739
	.byte	3
	.sleb128	-1
	.byte	1
# [1140:18]
	.byte	2
	.uleb128	.Ll741-.Ll740
	.byte	5
	.uleb128	18
	.byte	3
	.sleb128	921
	.byte	1
# [225:17]
	.byte	2
	.uleb128	.Ll742-.Ll741
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-915
	.byte	1
# [226:18]
	.byte	2
	.uleb128	.Ll743-.Ll742
	.byte	5
	.uleb128	18
	.byte	13
# [1141:4]
	.byte	2
	.uleb128	.Ll744-.Ll743
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	915
	.byte	1
# [227:17]
	.byte	2
	.uleb128	.Ll745-.Ll744
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-914
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll746-.Ll745
	.byte	5
	.uleb128	18
	.byte	13
# [1143:5]
	.byte	2
	.uleb128	.Ll747-.Ll746
	.byte	5
	.uleb128	5
	.byte	3
	.sleb128	915
	.byte	1
# [1145:3]
	.byte	2
	.uleb128	.Ll748-.Ll747
	.byte	5
	.uleb128	3
	.byte	14
# [218:18]
	.byte	2
	.uleb128	.Ll749-.Ll748
	.byte	5
	.uleb128	18
	.byte	3
	.sleb128	-927
	.byte	1
# [1147:8]
	.byte	2
	.uleb128	.Ll750-.Ll749
	.byte	5
	.uleb128	8
	.byte	3
	.sleb128	929
	.byte	1
# [1148:7]
	.byte	2
	.uleb128	.Ll751-.Ll750
	.byte	5
	.uleb128	7
	.byte	13
# [1150:5]
	.byte	2
	.uleb128	.Ll752-.Ll751
	.byte	5
	.uleb128	5
	.byte	14
# [217:17]
	.byte	2
	.uleb128	.Ll753-.Ll752
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-933
	.byte	1
# [1155:17]
	.byte	2
	.uleb128	.Ll754-.Ll753
	.byte	3
	.sleb128	938
	.byte	1
# [1156:1]
	.byte	2
	.uleb128	.Ll755-.Ll754
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll756
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_SEC
# [217:17]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll757
	.byte	5
	.uleb128	17
	.byte	228
# [1162:1]
	.byte	2
	.uleb128	.Ll758-.Ll757
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	945
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll759
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_SED
# [223:17]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll760
	.byte	5
	.uleb128	17
	.byte	234
# [1168:1]
	.byte	2
	.uleb128	.Ll761-.Ll760
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	945
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll762
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_SEI
# [221:17]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll763
	.byte	5
	.uleb128	17
	.byte	232
# [1174:1]
	.byte	2
	.uleb128	.Ll764-.Ll763
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	953
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll765
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_STA
# [1178:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll766
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1177
	.byte	1
# [1179:11]
	.byte	2
	.uleb128	.Ll767-.Ll766
	.byte	5
	.uleb128	11
	.byte	13
# [1180:1]
	.byte	2
	.uleb128	.Ll768-.Ll767
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll769
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_STC
# [1184:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll770
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1183
	.byte	1
# [1185:14]
	.byte	2
	.uleb128	.Ll771-.Ll770
	.byte	5
	.uleb128	14
	.byte	13
# [1186:1]
	.byte	2
	.uleb128	.Ll772-.Ll771
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll773
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_STD
# [1190:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll774
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1189
	.byte	1
# [1191:14]
	.byte	2
	.uleb128	.Ll775-.Ll774
	.byte	5
	.uleb128	14
	.byte	13
# [1192:1]
	.byte	2
	.uleb128	.Ll776-.Ll775
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll777
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_STX
# [1196:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll778
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1195
	.byte	1
# [1197:11]
	.byte	2
	.uleb128	.Ll779-.Ll778
	.byte	5
	.uleb128	11
	.byte	13
# [1198:1]
	.byte	2
	.uleb128	.Ll780-.Ll779
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll781
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_STY
# [1202:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll782
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1201
	.byte	1
# [1203:11]
	.byte	2
	.uleb128	.Ll783-.Ll782
	.byte	5
	.uleb128	11
	.byte	13
# [1204:1]
	.byte	2
	.uleb128	.Ll784-.Ll783
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll785
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_STZ
# [1208:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll786
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1207
	.byte	1
# [1209:1]
	.byte	2
	.uleb128	.Ll787-.Ll786
	.byte	13
# [1210:1]
	.byte	2
	.uleb128	.Ll788-.Ll787
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll789
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_TAX
# [1215:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll790
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1214
	.byte	1
# [1216:4]
	.byte	2
	.uleb128	.Ll791-.Ll790
	.byte	5
	.uleb128	4
	.byte	13
# [227:17]
	.byte	2
	.uleb128	.Ll792-.Ll791
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-989
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll793-.Ll792
	.byte	5
	.uleb128	18
	.byte	13
# [1217:4]
	.byte	2
	.uleb128	.Ll794-.Ll793
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	989
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll795-.Ll794
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-997
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll796-.Ll795
	.byte	3
	.sleb128	-1
	.byte	1
# [1218:1]
	.byte	2
	.uleb128	.Ll797-.Ll796
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	999
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll798
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_TAY
# [1223:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll799
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1222
	.byte	1
# [1224:4]
	.byte	2
	.uleb128	.Ll800-.Ll799
	.byte	5
	.uleb128	4
	.byte	13
# [227:17]
	.byte	2
	.uleb128	.Ll801-.Ll800
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-997
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll802-.Ll801
	.byte	5
	.uleb128	18
	.byte	13
# [1225:4]
	.byte	2
	.uleb128	.Ll803-.Ll802
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	997
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll804-.Ll803
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-1005
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll805-.Ll804
	.byte	3
	.sleb128	-1
	.byte	1
# [1226:1]
	.byte	2
	.uleb128	.Ll806-.Ll805
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1007
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll807
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_TRB
# [1230:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll808
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1229
	.byte	1
# [1231:8]
	.byte	2
	.uleb128	.Ll809-.Ll808
	.byte	5
	.uleb128	8
	.byte	13
# [1232:20]
	.byte	2
	.uleb128	.Ll810-.Ll809
	.byte	5
	.uleb128	20
	.byte	13
# [1233:1]
	.byte	2
	.uleb128	.Ll811-.Ll810
	.byte	5
	.uleb128	1
	.byte	13
# [1234:4]
	.byte	2
	.uleb128	.Ll812-.Ll811
	.byte	5
	.uleb128	4
	.byte	13
# [220:17]
	.byte	2
	.uleb128	.Ll813-.Ll812
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-1014
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll814-.Ll813
	.byte	3
	.sleb128	-1
	.byte	1
# [1235:1]
	.byte	2
	.uleb128	.Ll815-.Ll814
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1016
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll816
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_TSB
# [1239:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll817
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1238
	.byte	1
# [1240:8]
	.byte	2
	.uleb128	.Ll818-.Ll817
	.byte	5
	.uleb128	8
	.byte	13
# [1241:19]
	.byte	2
	.uleb128	.Ll819-.Ll818
	.byte	5
	.uleb128	19
	.byte	13
# [1242:1]
	.byte	2
	.uleb128	.Ll820-.Ll819
	.byte	5
	.uleb128	1
	.byte	13
# [1243:4]
	.byte	2
	.uleb128	.Ll821-.Ll820
	.byte	5
	.uleb128	4
	.byte	13
# [220:17]
	.byte	2
	.uleb128	.Ll822-.Ll821
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-1023
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll823-.Ll822
	.byte	3
	.sleb128	-1
	.byte	1
# [1244:1]
	.byte	2
	.uleb128	.Ll824-.Ll823
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1025
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll825
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_TSX
# [1249:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll826
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1248
	.byte	1
# [1250:4]
	.byte	2
	.uleb128	.Ll827-.Ll826
	.byte	5
	.uleb128	4
	.byte	13
# [227:17]
	.byte	2
	.uleb128	.Ll828-.Ll827
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-1023
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll829-.Ll828
	.byte	5
	.uleb128	18
	.byte	13
# [1251:4]
	.byte	2
	.uleb128	.Ll830-.Ll829
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	1023
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll831-.Ll830
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-1031
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll832-.Ll831
	.byte	3
	.sleb128	-1
	.byte	1
# [1252:1]
	.byte	2
	.uleb128	.Ll833-.Ll832
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1033
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll834
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_TXA
# [1257:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll835
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1256
	.byte	1
# [1258:4]
	.byte	2
	.uleb128	.Ll836-.Ll835
	.byte	5
	.uleb128	4
	.byte	13
# [227:17]
	.byte	2
	.uleb128	.Ll837-.Ll836
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-1031
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll838-.Ll837
	.byte	5
	.uleb128	18
	.byte	13
# [1259:4]
	.byte	2
	.uleb128	.Ll839-.Ll838
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	1031
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll840-.Ll839
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-1039
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll841-.Ll840
	.byte	3
	.sleb128	-1
	.byte	1
# [1260:1]
	.byte	2
	.uleb128	.Ll842-.Ll841
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1041
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll843
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_TXS
# [1265:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll844
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1264
	.byte	1
# [1266:1]
	.byte	2
	.uleb128	.Ll845-.Ll844
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll846
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_TYA
# [1271:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll847
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1270
	.byte	1
# [1272:4]
	.byte	2
	.uleb128	.Ll848-.Ll847
	.byte	5
	.uleb128	4
	.byte	13
# [227:17]
	.byte	2
	.uleb128	.Ll849-.Ll848
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-1045
	.byte	1
# [228:18]
	.byte	2
	.uleb128	.Ll850-.Ll849
	.byte	5
	.uleb128	18
	.byte	13
# [1273:4]
	.byte	2
	.uleb128	.Ll851-.Ll850
	.byte	5
	.uleb128	4
	.byte	3
	.sleb128	1045
	.byte	1
# [220:17]
	.byte	2
	.uleb128	.Ll852-.Ll851
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-1053
	.byte	1
# [219:17]
	.byte	2
	.uleb128	.Ll853-.Ll852
	.byte	3
	.sleb128	-1
	.byte	1
# [1274:1]
	.byte	2
	.uleb128	.Ll854-.Ll853
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1055
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll855
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_LAX
# [1280:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll856
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1279
	.byte	1
# [1281:1]
	.byte	2
	.uleb128	.Ll857-.Ll856
	.byte	13
# [1282:1]
	.byte	2
	.uleb128	.Ll858-.Ll857
	.byte	13
# [1283:1]
	.byte	2
	.uleb128	.Ll859-.Ll858
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll860
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_SAX
# [1287:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll861
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1286
	.byte	1
# [1288:1]
	.byte	2
	.uleb128	.Ll862-.Ll861
	.byte	13
# [1289:1]
	.byte	2
	.uleb128	.Ll863-.Ll862
	.byte	13
# [1290:17]
	.byte	2
	.uleb128	.Ll864-.Ll863
	.byte	5
	.uleb128	17
	.byte	13
# [1291:4]
	.byte	2
	.uleb128	.Ll865-.Ll864
	.byte	5
	.uleb128	4
	.byte	13
# [1292:1]
	.byte	2
	.uleb128	.Ll866-.Ll865
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll867
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_DCP
# [1296:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll868
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1295
	.byte	1
# [1297:1]
	.byte	2
	.uleb128	.Ll869-.Ll868
	.byte	13
# [1298:1]
	.byte	2
	.uleb128	.Ll870-.Ll869
	.byte	13
# [1299:4]
	.byte	2
	.uleb128	.Ll871-.Ll870
	.byte	5
	.uleb128	4
	.byte	13
# [1300:1]
	.byte	2
	.uleb128	.Ll872-.Ll871
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll873
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_ISB
# [1304:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll874
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1303
	.byte	1
# [1305:1]
	.byte	2
	.uleb128	.Ll875-.Ll874
	.byte	13
# [1306:1]
	.byte	2
	.uleb128	.Ll876-.Ll875
	.byte	13
# [1307:4]
	.byte	2
	.uleb128	.Ll877-.Ll876
	.byte	5
	.uleb128	4
	.byte	13
# [1308:1]
	.byte	2
	.uleb128	.Ll878-.Ll877
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll879
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_SLO
# [1312:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll880
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1311
	.byte	1
# [1313:1]
	.byte	2
	.uleb128	.Ll881-.Ll880
	.byte	13
# [1314:1]
	.byte	2
	.uleb128	.Ll882-.Ll881
	.byte	13
# [1315:4]
	.byte	2
	.uleb128	.Ll883-.Ll882
	.byte	5
	.uleb128	4
	.byte	13
# [1316:1]
	.byte	2
	.uleb128	.Ll884-.Ll883
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll885
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_RLA
# [1321:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll886
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1320
	.byte	1
# [1322:1]
	.byte	2
	.uleb128	.Ll887-.Ll886
	.byte	13
# [1323:1]
	.byte	2
	.uleb128	.Ll888-.Ll887
	.byte	13
# [1324:4]
	.byte	2
	.uleb128	.Ll889-.Ll888
	.byte	5
	.uleb128	4
	.byte	13
# [1325:1]
	.byte	2
	.uleb128	.Ll890-.Ll889
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll891
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_SRE
# [1329:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll892
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1328
	.byte	1
# [1330:1]
	.byte	2
	.uleb128	.Ll893-.Ll892
	.byte	13
# [1331:1]
	.byte	2
	.uleb128	.Ll894-.Ll893
	.byte	13
# [1332:4]
	.byte	2
	.uleb128	.Ll895-.Ll894
	.byte	5
	.uleb128	4
	.byte	13
# [1333:1]
	.byte	2
	.uleb128	.Ll896-.Ll895
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll897
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: UNIT6502_$$_RRA
# [1337:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll898
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1336
	.byte	1
# [1338:1]
	.byte	2
	.uleb128	.Ll899-.Ll898
	.byte	13
# [1339:1]
	.byte	2
	.uleb128	.Ll900-.Ll899
	.byte	13
# [1340:4]
	.byte	2
	.uleb128	.Ll901-.Ll900
	.byte	5
	.uleb128	4
	.byte	13
# [1341:1]
	.byte	2
	.uleb128	.Ll902-.Ll901
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll903
	.byte	0
	.byte	1
	.byte	1
# ###################
.Ledebug_line0:
# End asmlist al_dwarf_line
# Begin asmlist al_end

.section .text.z_DEBUGEND_$UNIT6502,"x"
.globl	DEBUGEND_$UNIT6502
DEBUGEND_$UNIT6502:
# End asmlist al_end

