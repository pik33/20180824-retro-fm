	.file "retro.pas"
# Begin asmlist al_begin

.section .debug_line
.Ldebug_linesection0:
.Ldebug_line0:

.section .debug_abbrev
.Ldebug_abbrevsection0:
.Ldebug_abbrev0:

.section .text.b_DEBUGSTART_$RETRO,"x"
.globl	DEBUGSTART_$RETRO
DEBUGSTART_$RETRO:
# End asmlist al_begin
# Begin asmlist al_procedures

.section .text.n_retro$_$tretro_$__$$_create$boolean$$tretro,"x"
	.balign 16,0x90
.globl	RETRO$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO
RETRO$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO:
.Lc1:
.seh_proc RETRO$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO
.Ll1:
# [retro.pas]
# [226] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc3:
.Lc4:
	movq	%rsp,%rbp
.Lc5:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var CreateSuspended located at rbp-8, size=OS_8
# Var $vmt located at rbp-16, size=OS_64
# Var $self located at rbp-24, size=OS_64
	movq	%rcx,-24(%rbp)
	movq	%rdx,-16(%rbp)
	movb	%r8b,-8(%rbp)
.Ll2:
	cmpq	$1,-16(%rbp)
	jne	.Lj6
	movq	-24(%rbp),%rax
	movq	-24(%rbp),%rdx
	movq	%rax,%rcx
	call	*104(%rdx)
	movq	%rax,-24(%rbp)
.Lj6:
	cmpq	$0,-24(%rbp)
	je	.Lj3
.Lj18:
.Ll3:
# [229] end;
	nop
.Lj17:
.Ll4:
# [227] FreeOnTerminate := True;
	movq	-24(%rbp),%rax
	movb	$1,17(%rax)
.Ll5:
# [228] inherited Create(CreateSuspended);
	movzbl	-8(%rbp),%r8d
	movq	-24(%rbp),%rcx
	movq	$4194304,%r9
	movq	$0,%rdx
	call	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$QWORD$$TTHREAD
.Ll6:
	cmpq	$0,-24(%rbp)
	je	.Lj15
	cmpq	$0,-16(%rbp)
	je	.Lj15
	movq	-24(%rbp),%rcx
	movq	-24(%rbp),%rax
	movq	(%rax),%rax
	call	*136(%rax)
	jmp	.Lj15
.Lj14:
	cmpq	$0,-16(%rbp)
	je	.Lj36
	movq	-24(%rbp),%rcx
	movq	$-1,%rdx
	movq	-24(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
.Lj36:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj41:
	nop
.Lj15:
.Lj3:
	movq	-24(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj17
	.rva	.Lj14
	.rva	.Lj15

.section .text.n_retro$_$tretro_$__$$_create$boolean$$tretro,"x"
.seh_endproc
.Lc2:
.Lt48:
.Ll7:

.section .text.n_retro$_$tretro_$__$$_execute,"x"
	.balign 16,0x90
.globl	RETRO$_$TRETRO_$__$$_EXECUTE
RETRO$_$TRETRO_$__$$_EXECUTE:
.Lc6:
.seh_proc RETRO$_$TRETRO_$__$$_EXECUTE
.Ll8:
# [243] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-48(%rsp),%rsp
.Lc8:
.seh_stackalloc 48
# Var $self located in register rbx
# Var p3 located in register rsi
# Var t located in register rdi
.seh_endprologue
	movq	%rcx,%rbx
.Ll9:
# [244] running:=1;                               // tell them the machine is running
	movl	$1,TC_$RETRO_$$_RUNNING(%rip)
.Ll10:
# [245] SDL_SetThreadPriority(SDL_THREAD_PRIORITY_HIGH);
	movl	$2,%ecx
	call	_$dll$sdl2$SDL_SetThreadPriority
	.balign 8,0x90
.Lj48:
.Ll11:
# [247] if p2<>nil then                           // the screen is prepared
	cmpq	$0,U_$RETRO_$$_P2(%rip)
	je	.Lj52
.Ll12:
# [250] p3:=p2+2304000;                         // second frame buffer
	movq	U_$RETRO_$$_P2(%rip),%rax
	leaq	9216000(%rax),%rax
	movq	%rax,%rsi
.Ll13:
# [251] sdlevents;                              // get events from SDL and update system variables
	call	RETRO_$$_SDLEVENTS
.Ll14:
# [252] vblank1:=0;                             // tell them there is no vblank
	movb	$0,U_$RETRO_$$_VBLANK1(%rip)
.Ll15:
# [253] t:=gettime;                             // prepare for screen time measurement
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,%rdi
.Ll16:
# [254] scrconvert(p2,raml^[$18001]);           // convert the screen
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393220(%rax),%edx
	movq	U_$RETRO_$$_P2(%rip),%rcx
	call	RETRO_$$_SCRCONVERT$POINTER$LONGINT
.Ll17:
# [255] tim:=gettime-t;                         // get screen time for debug
	call	RETRO_$$_GETTIME$$INT64
	subq	%rdi,%rax
	movq	%rax,U_$RETRO_$$_TIM(%rip)
.Ll18:
# [256] raml^[$18000]+=1;                       // increment frame counter
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393216(%rax),%eax
	leal	1(%eax),%eax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movl	%eax,393216(%rdx)
.Ll19:
# [257] vblank1:=1;                             // we are in vblank now
	movb	$1,U_$RETRO_$$_VBLANK1(%rip)
.Ll20:
# [258] sprite(p2);               // draw sprites
	movq	U_$RETRO_$$_P2(%rip),%rcx
	call	RETRO_$$_SPRITE$POINTER
	.balign 8,0x90
.Lj71:
.Ll21:
# [259] repeat until peek($70000)<2;            // if peek($70000)=2 then resizing is in progress, don't call SDL
	movl	$458752,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$2,%al
	jnb	.Lj71
.Ll22:
# [260] poke ($70000,0) ;                       // tell them they can not resize
	movl	$0,%edx
	movl	$458752,%ecx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll23:
# [265] if (needrestart>0) then
	cmpb	$0,TC_$RETRO_$$_NEEDRESTART(%rip)
	jna	.Lj81
.Ll24:
# [268] SDL_DestroyTexture( sdlTexture );
	movq	U_$RETRO_$$_SDLTEXTURE(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyTexture
.Ll25:
# [269] SDL_DestroyRenderer( sdlRenderer );
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyRenderer
.Ll26:
# [270] sdlRenderer := SDL_CreateRenderer(scr, -1, 14);
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	movl	$14,%r8d
	movl	$-1,%edx
	call	_$dll$sdl2$SDL_CreateRenderer
	movq	%rax,U_$RETRO_$$_SDLRENDERER(%rip)
.Ll27:
# [271] if peek($70002)=0 then begin
	movl	$458754,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	testb	%al,%al
	jne	.Lj95
.Ll28:
# [272] if needrestart=2 then sdl_setwindowfullscreen(scr,0);
	cmpb	$2,TC_$RETRO_$$_NEEDRESTART(%rip)
	jne	.Lj99
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	movl	$0,%edx
	call	_$dll$sdl2$SDL_SetWindowFullscreen
.Lj99:
.Ll29:
# [273] sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
	movl	$1200,32(%rsp)
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1920,%r9d
	movl	$1,%r8d
	movl	$372645892,%edx
	call	_$dll$sdl2$SDL_CreateTexture
	movq	%rax,U_$RETRO_$$_SDLTEXTURE(%rip)
.Ll30:
# [274] SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1200,%r8d
	movl	$1920,%edx
	call	_$dll$sdl2$SDL_RenderSetLogicalSize
	jmp	.Lj122
.Lj95:
.Ll31:
# [278] if needrestart=2 then sdl_setwindowfullscreen(scr,SDL_WINDOW_FULLSCREEN_DESKTOP);
	cmpb	$2,TC_$RETRO_$$_NEEDRESTART(%rip)
	jne	.Lj124
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	movl	$4097,%edx
	call	_$dll$sdl2$SDL_SetWindowFullscreen
.Lj124:
.Ll32:
# [279] sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
	movl	$1200,32(%rsp)
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1920,%r9d
	movl	$1,%r8d
	movl	$372645892,%edx
	call	_$dll$sdl2$SDL_CreateTexture
	movq	%rax,U_$RETRO_$$_SDLTEXTURE(%rip)
.Ll33:
# [280] SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1200,%r8d
	movl	$1920,%edx
	call	_$dll$sdl2$SDL_RenderSetLogicalSize
.Lj122:
.Ll34:
# [282] needrestart:=0;
	movb	$0,TC_$RETRO_$$_NEEDRESTART(%rip)
.Lj81:
.Ll35:
# [286] SDL_UpdateTexture(sdlTexture, nil, p2, 1920 * 4);   // render the screen
	movq	U_$RETRO_$$_P2(%rip),%r8
	movq	U_$RETRO_$$_SDLTEXTURE(%rip),%rcx
	movl	$7680,%r9d
	movq	$0,%rdx
	call	_$dll$sdl2$SDL_UpdateTexture
.Ll36:
# [287] SDL_RenderClear(sdlRenderer);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	call	_$dll$sdl2$SDL_RenderClear
.Ll37:
# [288] SDL_RenderCopy(sdlRenderer, sdlTexture,nil,nil);
	movq	U_$RETRO_$$_SDLTEXTURE(%rip),%rdx
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movq	$0,%r9
	movq	$0,%r8
	call	_$dll$sdl2$SDL_RenderCopy
.Ll38:
# [289] SDL_RenderPresent(sdlRenderer);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	call	_$dll$sdl2$SDL_RenderPresent
.Ll39:
# [290] poke ($70000,1);                        // screen rendered, resizing possible
	movl	$1,%edx
	movl	$458752,%ecx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll40:
# [294] sdlevents;                              // process the second buffer
	call	RETRO_$$_SDLEVENTS
.Ll41:
# [295] vblank1:=0;
	movb	$0,U_$RETRO_$$_VBLANK1(%rip)
.Ll42:
# [296] t:=gettime;
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,%rdi
.Ll43:
# [297] scrconvert(p3,raml^[$18001]);
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393220(%rax),%edx
	movq	%rsi,%rcx
	call	RETRO_$$_SCRCONVERT$POINTER$LONGINT
.Ll44:
# [298] tim:=gettime-t;
	call	RETRO_$$_GETTIME$$INT64
	subq	%rdi,%rax
	movq	%rax,U_$RETRO_$$_TIM(%rip)
.Ll45:
# [299] raml^[$18000]+=1;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393216(%rax),%eax
	leal	1(%eax),%edx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	%edx,393216(%rax)
.Ll46:
# [300] vblank1:=1;
	movb	$1,U_$RETRO_$$_VBLANK1(%rip)
.Ll47:
# [301] sprite(p3);
	movq	%rsi,%rcx
	call	RETRO_$$_SPRITE$POINTER
	.balign 8,0x90
.Lj189:
.Ll48:
# [302] repeat until peek($70000)<2;
	movl	$458752,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$2,%al
	jnb	.Lj189
.Ll49:
# [303] poke ($70000,0);
	movl	$0,%edx
	movl	$458752,%ecx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll50:
# [305] if (needrestart>0) then
	cmpb	$0,TC_$RETRO_$$_NEEDRESTART(%rip)
	jna	.Lj199
.Ll51:
# [308] SDL_DestroyTexture( sdlTexture );
	movq	U_$RETRO_$$_SDLTEXTURE(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyTexture
.Ll52:
# [309] SDL_DestroyRenderer( sdlRenderer );
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyRenderer
.Ll53:
# [310] sdlRenderer := SDL_CreateRenderer(scr, -1, 14);
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	movl	$14,%r8d
	movl	$-1,%edx
	call	_$dll$sdl2$SDL_CreateRenderer
	movq	%rax,U_$RETRO_$$_SDLRENDERER(%rip)
.Ll54:
# [311] if peek($70002)=0 then begin
	movl	$458754,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	testb	%al,%al
	jne	.Lj213
.Ll55:
# [312] if needrestart=2 then sdl_setwindowfullscreen(scr,0);
	cmpb	$2,TC_$RETRO_$$_NEEDRESTART(%rip)
	jne	.Lj217
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	movl	$0,%edx
	call	_$dll$sdl2$SDL_SetWindowFullscreen
.Lj217:
.Ll56:
# [313] sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
	movl	$1200,32(%rsp)
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1920,%r9d
	movl	$1,%r8d
	movl	$372645892,%edx
	call	_$dll$sdl2$SDL_CreateTexture
	movq	%rax,U_$RETRO_$$_SDLTEXTURE(%rip)
.Ll57:
# [314] SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1200,%r8d
	movl	$1920,%edx
	call	_$dll$sdl2$SDL_RenderSetLogicalSize
	jmp	.Lj240
.Lj213:
.Ll58:
# [318] if needrestart=2 then sdl_setwindowfullscreen(scr,SDL_WINDOW_FULLSCREEN_DESKTOP);
	cmpb	$2,TC_$RETRO_$$_NEEDRESTART(%rip)
	jne	.Lj242
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	movl	$4097,%edx
	call	_$dll$sdl2$SDL_SetWindowFullscreen
.Lj242:
.Ll59:
# [319] sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
	movl	$1200,32(%rsp)
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1920,%r9d
	movl	$1,%r8d
	movl	$372645892,%edx
	call	_$dll$sdl2$SDL_CreateTexture
	movq	%rax,U_$RETRO_$$_SDLTEXTURE(%rip)
.Ll60:
# [320] SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1200,%r8d
	movl	$1920,%edx
	call	_$dll$sdl2$SDL_RenderSetLogicalSize
.Lj240:
.Ll61:
# [322] needrestart:=0;
	movb	$0,TC_$RETRO_$$_NEEDRESTART(%rip)
.Lj199:
.Ll62:
# [326] SDL_UpdateTexture(sdlTexture, nil, p3, 1920 * 4);
	movq	%rsi,%r8
	movq	U_$RETRO_$$_SDLTEXTURE(%rip),%rcx
	movl	$7680,%r9d
	movq	$0,%rdx
	call	_$dll$sdl2$SDL_UpdateTexture
.Ll63:
# [327] SDL_RenderClear(sdlRenderer);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	call	_$dll$sdl2$SDL_RenderClear
.Ll64:
# [328] SDL_RenderCopy(sdlRenderer, sdlTexture,nil,nil);
	movq	U_$RETRO_$$_SDLTEXTURE(%rip),%rdx
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movq	$0,%r9
	movq	$0,%r8
	call	_$dll$sdl2$SDL_RenderCopy
.Ll65:
# [329] SDL_RenderPresent(sdlRenderer);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	call	_$dll$sdl2$SDL_RenderPresent
.Ll66:
# [330] poke($70000,1) ;
	movl	$1,%edx
	movl	$458752,%ecx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Lj52:
.Ll67:
# [333] until terminated;
	cmpb	$0,16(%rbx)
	je	.Lj48
.Ll68:
# [334] running:=0;
	movl	$0,TC_$RETRO_$$_RUNNING(%rip)
.Ll69:
# [335] end;
	nop
	leaq	48(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc7:
.Lt47:
.Ll70:

.section .text.n_retro_$$_initmachine$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_INITMACHINE$LONGINT
RETRO_$$_INITMACHINE$LONGINT:
.Lc9:
.seh_proc RETRO_$$_INITMACHINE$LONGINT
.Ll71:
# [350] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-64(%rsp),%rsp
.Lc11:
.seh_stackalloc 64
# Var mode located in register ebx
# Var a located in register esi
# Var i located in register edi
.seh_endprologue
# Var bb located at rsp+48, size=OS_8
	movl	%ecx,%ebx
.Ll72:
# [352] testoperator:=TFmOperator.create(0,@outputtable );
	leaq	U_$RETRO_$$_OUTPUTTABLE(%rip),%r9
	leaq	VMT_$FMSYNTH_$$_TFMOPERATOR(%rip),%rcx
	movl	$0,%r8d
	movq	$1,%rdx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_CREATE$LONGINT$POINTER$$TFMOPERATOR
# PeepHole Optimization,MovMov2MovMov1
	movq	%rax,U_$RETRO_$$_TESTOPERATOR(%rip)
.Ll73:
# [353] testoperator.init;
	movq	%rax,%rcx
	call	FMSYNTH$_$TFMOPERATOR_$__$$_INIT
.Ll74:
# [354] testvoice:=TFmVoice.create;
	leaq	VMT_$FMSYNTH_$$_TFMVOICE(%rip),%rcx
	movq	$1,%rdx
	call	FMSYNTH$_$TFMVOICE_$__$$_CREATE$$TFMVOICE
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,U_$RETRO_$$_TESTVOICE(%rip)
.Ll75:
# [355] testvoice.operators[0].mul1:=16384;
	movq	8(%rax),%rdx
	movq	_$RETRO$_Ld1(%rip),%rax
	movq	%rax,80(%rdx)
.Ll76:
# [356] testvoice.operators[1].mul1:=10000;
	movq	U_$RETRO_$$_TESTVOICE(%rip),%rax
	movq	16(%rax),%rax
	movq	_$RETRO$_Ld2(%rip),%rdx
	movq	%rdx,80(%rax)
.Ll77:
# [358] testvoice.operators[0].freq:=150; //440*(65536/192000);  ;
	movq	U_$RETRO_$$_TESTVOICE(%rip),%rax
	movq	8(%rax),%rax
	movq	_$RETRO$_Ld3(%rip),%rdx
	movq	%rdx,8(%rax)
.Ll78:
# [359] testvoice.operators[1].freq:=300; //2*testvoice.operators[0].freq  ;
	movq	U_$RETRO_$$_TESTVOICE(%rip),%rax
	movq	16(%rax),%rax
	movq	_$RETRO$_Ld4(%rip),%rdx
	movq	%rdx,8(%rax)
# Var i located in register edx
.Ll79:
# [360] for i:=0 to 15 do srtablei[i]:=round(1073741824*(1-attacktable[i]));
	movl	$0,%edx
	subl	$1,%edx
	.balign 8,0x90
.Lj323:
	addl	$1,%edx
# PeepHole Optimization,var2a
	movl	%edx,%eax
	movsd	_$RETRO$_Ld6(%rip),%xmm0
	leaq	TC_$RETRO_$$_ATTACKTABLE(%rip),%rcx
	subsd	(%rcx,%rax,8),%xmm0
	mulsd	_$RETRO$_Ld5(%rip),%xmm0
	cvtsd2siq	%xmm0,%r8
# PeepHole Optimization,var2a
	movl	%edx,%eax
	leaq	U_$RETRO_$$_SRTABLEI(%rip),%rcx
	movq	%r8,(%rcx,%rax,8)
	cmpl	$15,%edx
	jl	.Lj323
# Var i located in register edx
.Ll80:
# [361] for i:=0 to 15 do attacktablei[i]:=round(1073741824*attacktable[i]);
	movl	$0,%edx
	subl	$1,%edx
	.balign 8,0x90
.Lj328:
	addl	$1,%edx
# PeepHole Optimization,var2a
	movl	%edx,%eax
	movsd	_$RETRO$_Ld5(%rip),%xmm0
	leaq	TC_$RETRO_$$_ATTACKTABLE(%rip),%rcx
	mulsd	(%rcx,%rax,8),%xmm0
	cvtsd2siq	%xmm0,%r8
# PeepHole Optimization,var2a
	movl	%edx,%eax
	leaq	U_$RETRO_$$_ATTACKTABLEI(%rip),%rcx
	movq	%r8,(%rcx,%rax,8)
	cmpl	$15,%edx
	jl	.Lj328
.Ll81:
# [362] initnotes;
	call	RETRO_$$_INITNOTES
.Ll82:
# [363] initsinetable;
	call	RETRO_$$_INITSINETABLE
.Ll83:
# [364] initlogtable;
	call	RETRO_$$_INITLOGTABLE
.Ll84:
# [365] r1:=virtualalloc(nil,268435456, MEM_COMMIT or MEM_RESERVE,PAGE_EXECUTE_READWRITE);  // get 256 MB ram
	movl	$64,%r9d
	movl	$12288,%r8d
	movq	$268435456,%rdx
	movq	$0,%rcx
	call	_$dll$kernel32$VirtualAlloc
	movq	%rax,U_$RETRO_$$_R1(%rip)
.Ll85:
# [366] p2:=virtualalloc(nil,20971520, MEM_COMMIT or MEM_RESERVE,PAGE_READWRITE);  // get the RAM for the framebuffer
	movl	$4,%r9d
	movl	$12288,%r8d
	movq	$20971520,%rdx
	movq	$0,%rcx
	call	_$dll$kernel32$VirtualAlloc
	movq	%rax,U_$RETRO_$$_P2(%rip)
.Ll86:
# [368] fh2:=fileopen('./st4font.def',$40);              // load 8x16 font
	leaq	_$RETRO$_Ld7(%rip),%rcx
	movl	$64,%edx
	call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$QWORD
	movl	%eax,U_$RETRO_$$_FH2(%rip)
.Ll87:
# [369] fileread(fh2,ramb^[$50000],2048);
	movq	U_$RETRO_$$_R1(%rip),%rax
	leaq	327680(%rax),%rdx
	movslq	U_$RETRO_$$_FH2(%rip),%rcx
	movl	$2048,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll88:
# [370] fileclose(fh2);
	movslq	U_$RETRO_$$_FH2(%rip),%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll89:
# [372] fh2:=fileopen('./combinedwaveforms.bin',$40);   // load combined waveforms for SID
	leaq	_$RETRO$_Ld8(%rip),%rcx
	movl	$64,%edx
	call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$QWORD
	movl	%eax,U_$RETRO_$$_FH2(%rip)
.Ll90:
# [373] fileread(fh2,combined,1024);
	movslq	U_$RETRO_$$_FH2(%rip),%rcx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rdx
	movl	$1024,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll91:
# [374] fileclose(fh2);
	movslq	U_$RETRO_$$_FH2(%rip),%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll92:
# [376] fh2:=fileopen('./mysz.def',$40);                // load mouse cursor definition at sprite 8
	leaq	_$RETRO$_Ld9(%rip),%rcx
	movl	$64,%edx
	call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$QWORD
	movl	%eax,U_$RETRO_$$_FH2(%rip)
# Var i located in register edi
.Ll93:
# [377] for i:=0 to 1023 do
	movl	$0,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj387:
	addl	$1,%edi
.Ll94:
# [379] fileread(fh2,bb,1);
	movslq	U_$RETRO_$$_FH2(%rip),%rcx
	leaq	48(%rsp),%rdx
	movl	$1,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll95:
# [380] a:=bb;
	movzbl	48(%rsp),%eax
# PeepHole Optimization,MovMov2Mov1
	movl	%eax,%esi
.Ll96:
# [381] a:=a+(a shl 8) + (a shl 16);
	shll	$8,%eax
	leal	(%eax,%esi),%edx
	movl	%esi,%eax
	shll	$16,%eax
	leal	(%edx,%eax),%eax
	movl	%eax,%esi
.Ll97:
# [382] raml^[$16400+i]:=a;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movslq	%edi,%rax
	movl	%esi,364544(%rdx,%rax,4)
.Ll98:
	cmpl	$1023,%edi
	jl	.Lj387
.Ll99:
# [384] fileclose(fh2);
	movslq	U_$RETRO_$$_FH2(%rip),%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll100:
# [388] SDL_Init(SDL_INIT_everything);
	movl	$12849,%ecx
	call	_$dll$sdl2$SDL_Init
.Ll101:
# [390] SDL_SetHint(SDL_HINT_RENDER_SCALE_QUALITY, 'best'); // make the scaled rendering look smoother.
	leaq	_$RETRO$_Ld10(%rip),%rdx
	leaq	_$RETRO$_Ld11(%rip),%rcx
	call	_$dll$sdl2$SDL_SetHint
.Ll102:
# [391] SDL_SetHint(SDL_HINT_RENDER_DIRECT3D_THREADSAFE, '1');
	leaq	_$RETRO$_Ld12(%rip),%rdx
	leaq	_$RETRO$_Ld13(%rip),%rcx
	call	_$dll$sdl2$SDL_SetHint
.Ll103:
# [392] if mode=0 then scr := SDL_CreateWindow( 'The Retromachine', SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 960,600, SDL_WINDOW_shown);
	testl	%ebx,%ebx
	jne	.Lj413
	movl	$4,40(%rsp)
	movl	$600,32(%rsp)
	leaq	_$RETRO$_Ld14(%rip),%rcx
	movl	$960,%r9d
	movl	$536805376,%r8d
	movl	$536805376,%edx
	call	_$dll$sdl2$SDL_CreateWindow
	movq	%rax,U_$RETRO_$$_SCR(%rip)
.Lj413:
.Ll104:
# [393] if mode=1 then scr := SDL_CreateWindow( 'The Retromachine', SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 960,600 , SDL_WINDOW_fullscreen_desktop);
	cmpl	$1,%ebx
	jne	.Lj429
	movl	$4097,40(%rsp)
	movl	$600,32(%rsp)
	leaq	_$RETRO$_Ld14(%rip),%rcx
	movl	$960,%r9d
	movl	$536805376,%r8d
	movl	$536805376,%edx
	call	_$dll$sdl2$SDL_CreateWindow
	movq	%rax,U_$RETRO_$$_SCR(%rip)
.Lj429:
.Ll105:
# [394] sdlRenderer := SDL_CreateRenderer(scr, -1, 14);   // hardware+vsync+texture
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	movl	$14,%r8d
	movl	$-1,%edx
	call	_$dll$sdl2$SDL_CreateRenderer
	movq	%rax,U_$RETRO_$$_SDLRENDERER(%rip)
.Ll106:
# [395] sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
	movl	$1200,32(%rsp)
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1920,%r9d
	movl	$1,%r8d
	movl	$372645892,%edx
	call	_$dll$sdl2$SDL_CreateTexture
	movq	%rax,U_$RETRO_$$_SDLTEXTURE(%rip)
.Ll107:
# [396] SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1200,%r8d
	movl	$1920,%edx
	call	_$dll$sdl2$SDL_RenderSetLogicalSize
.Ll108:
# [398] sdl_showcursor(0);             // hide sdl cursor
	movl	$0,%ecx
	call	_$dll$sdl2$SDL_ShowCursor
.Ll109:
# [400] sdl_sound_init;
	call	RETRO_$$_SDL_SOUND_INIT$$LONGINT
.Ll110:
# [401] sdl_pauseaudio(0);
	movl	$0,%ecx
	call	_$dll$sdl2$SDL_PauseAudio
.Ll111:
# [403] thread:=tretro.create(true);   // start frame refreshing thread
	leaq	VMT_$RETRO_$$_TRETRO(%rip),%rcx
	movl	$1,%r8d
	movq	$1,%rdx
	call	RETRO$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO
# PeepHole Optimization,MovMov2MovMov1
	movq	%rax,U_$RETRO_$$_THREAD(%rip)
.Ll112:
# [404] thread.start;
	movq	%rax,%rcx
	call	CLASSES$_$TTHREAD_$__$$_START
.Ll113:
# [406] end;
	nop
	leaq	64(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc10:
.Lt1:
.Ll114:

.section .text.n_retro_$$_stopmachine,"x"
	.balign 16,0x90
.globl	RETRO_$$_STOPMACHINE
RETRO_$$_STOPMACHINE:
.Lc12:
.seh_proc RETRO_$$_STOPMACHINE
.Ll115:
# [418] begin
	leaq	-40(%rsp),%rsp
.Lc14:
.seh_stackalloc 40
.seh_endprologue
.Ll116:
# [422] sdl_pauseaudio(1);
	movl	$1,%eax
	movl	%eax,%ecx
	call	_$dll$sdl2$SDL_PauseAudio
.Ll117:
# [423] sdl_closeaudio;
	call	_$dll$sdl2$SDL_CloseAudio
.Ll118:
# [424] thread.terminate;
	movq	U_$RETRO_$$_THREAD(%rip),%rcx
	call	CLASSES$_$TTHREAD_$__$$_TERMINATE
	.balign 8,0x90
.Lj490:
.Ll119:
# [425] repeat until running=0;
	cmpl	$0,TC_$RETRO_$$_RUNNING(%rip)
	jne	.Lj490
.Ll120:
# [426] SDL_DestroyTexture( sdlTexture );
	movq	U_$RETRO_$$_SDLTEXTURE(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyTexture
.Ll121:
# [427] SDL_DestroyRenderer( sdlRenderer );
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyRenderer
.Ll122:
# [428] SDL_DestroyWindow ( scr);
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyWindow
.Ll123:
# [429] sdl_quit;
	call	_$dll$sdl2$SDL_Quit
.Ll124:
# [433] virtualfree(p2,0,mem_release);
	movq	U_$RETRO_$$_P2(%rip),%rcx
	movl	$32768,%r8d
	movq	$0,%rdx
	call	_$dll$kernel32$VirtualFree
.Ll125:
# [434] virtualfree(r1,0,mem_release);
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movl	$32768,%r8d
	movq	$0,%rdx
	call	_$dll$kernel32$VirtualFree
.Ll126:
# [436] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc13:
.Lt2:
.Ll127:

.section .text.n_retro_$$_poke$longint$byte,"x"
	.balign 16,0x90
.globl	RETRO_$$_POKE$LONGINT$BYTE
RETRO_$$_POKE$LONGINT$BYTE:
.Lc15:
# Var addr located in register eax
# Var b located in register dl
.Ll128:
# [446] begin
	movl	%ecx,%eax
.Ll129:
# [447] ramb^[addr]:=b;
	movq	U_$RETRO_$$_R1(%rip),%rcx
	andl	$4294967295,%eax
# Var b located in register dl
	movb	%dl,(%rcx,%rax,1)
.Ll130:
# [448] end;
	ret
.Lc16:
.Lt15:
.Ll131:

.section .text.n_retro_$$_dpoke$longint$word,"x"
	.balign 16,0x90
.globl	RETRO_$$_DPOKE$LONGINT$WORD
RETRO_$$_DPOKE$LONGINT$WORD:
.Lc17:
# Var addr located in register eax
# Var w located in register dx
.Ll132:
# [452] begin
	movl	%ecx,%eax
.Ll133:
# [453] ramw^[addr shr 1]:=w;
	movq	U_$RETRO_$$_R1(%rip),%rcx
	shrl	$1,%eax
	andl	$4294967295,%eax
# Var w located in register dx
	movw	%dx,(%rcx,%rax,2)
.Ll134:
# [454] end;
	ret
.Lc18:
.Lt16:
.Ll135:

.section .text.n_retro_$$_lpoke$longint$longword,"x"
	.balign 16,0x90
.globl	RETRO_$$_LPOKE$LONGINT$LONGWORD
RETRO_$$_LPOKE$LONGINT$LONGWORD:
.Lc19:
# Var addr located in register eax
# Var c located in register edx
.Ll136:
# [459] begin
	movl	%ecx,%eax
.Ll137:
# [460] raml^[addr shr 2]:=c;
	movq	U_$RETRO_$$_R1(%rip),%rcx
	shrl	$2,%eax
	andl	$4294967295,%eax
	movl	%edx,(%rcx,%rax,4)
.Ll138:
# [461] end;
	ret
.Lc20:
.Lt17:
.Ll139:

.section .text.n_retro_$$_slpoke$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_SLPOKE$LONGINT$LONGINT
RETRO_$$_SLPOKE$LONGINT$LONGINT:
.Lc21:
# Var addr located in register eax
# Var i located in register edx
.Ll140:
# [465] begin
	movl	%ecx,%eax
.Ll141:
# [466] raml^[addr shr 2]:=i;
	movq	U_$RETRO_$$_R1(%rip),%rcx
	shrl	$2,%eax
	andl	$4294967295,%eax
# Var i located in register edx
	movl	%edx,(%rcx,%rax,4)
.Ll142:
# [467] end;
	ret
.Lc22:
.Lt18:
.Ll143:

.section .text.n_retro_$$_peek$longint$$byte,"x"
	.balign 16,0x90
.globl	RETRO_$$_PEEK$LONGINT$$BYTE
RETRO_$$_PEEK$LONGINT$$BYTE:
.Lc23:
# Var addr located in register ecx
# Var $result located in register al
# [471] begin
.Ll144:
# [472] peek:=ramb^[addr];
	movq	U_$RETRO_$$_R1(%rip),%rax
	andl	$4294967295,%ecx
# Var $result located in register al
	movb	(%rax,%rcx,1),%al
# PeepHole Optimization,var9
.Ll145:
# [473] end;
	andl	$255,%eax
	ret
.Lc24:
.Lt19:
.Ll146:

.section .text.n_retro_$$_dpeek$longint$$word,"x"
	.balign 16,0x90
.globl	RETRO_$$_DPEEK$LONGINT$$WORD
RETRO_$$_DPEEK$LONGINT$$WORD:
.Lc25:
# Var addr located in register ecx
# Var $result located in register ax
# [477] begin
.Ll147:
# [478] dpeek:=ramb^[addr]+256*ramb^[addr+1];
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movslq	%ecx,%rax
	movzbl	1(%rdx,%rax,1),%eax
	shll	$8,%eax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	andl	$4294967295,%ecx
	movzbl	(%rdx,%rcx,1),%edx
	leal	(%eax,%edx),%eax
# Var $result located in register ax
# PeepHole Optimization,var11
.Ll148:
# [479] end;
	andl	$65535,%eax
	ret
.Lc26:
.Lt20:
.Ll149:

.section .text.n_retro_$$_lpeek$longint$$longword,"x"
	.balign 16,0x90
.globl	RETRO_$$_LPEEK$LONGINT$$LONGWORD
RETRO_$$_LPEEK$LONGINT$$LONGWORD:
.Lc27:
# Var addr located in register ecx
# Var $result located in register eax
# [483] begin
.Ll150:
# [484] lpeek:=raml^[addr shr 2];
	movq	U_$RETRO_$$_R1(%rip),%rax
	shrl	$2,%ecx
	andl	$4294967295,%ecx
# Var $result located in register eax
	movl	(%rax,%rcx,4),%eax
.Ll151:
# [485] end;
	ret
.Lc28:
.Lt21:
.Ll152:

.section .text.n_retro_$$_slpeek$longint$$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_SLPEEK$LONGINT$$LONGINT
RETRO_$$_SLPEEK$LONGINT$$LONGINT:
.Lc29:
# Var addr located in register ecx
# Var $result located in register eax
# [489] begin
.Ll153:
# [490] slpeek:=raml^[addr shr 2];
	movq	U_$RETRO_$$_R1(%rip),%rax
	shrl	$2,%ecx
	andl	$4294967295,%ecx
# Var $result located in register eax
	movl	(%rax,%rcx,4),%eax
.Ll154:
# [491] end;
	ret
.Lc30:
.Lt22:
.Ll155:

.section .text.n_retro_$$_gettime$$int64,"x"
	.balign 16,0x90
.globl	RETRO_$$_GETTIME$$INT64
RETRO_$$_GETTIME$$INT64:
.Lc31:
.seh_proc RETRO_$$_GETTIME$$INT64
.Ll156:
# [504] begin
	leaq	-56(%rsp),%rsp
.Lc33:
.seh_stackalloc 56
# Var $result located in register rax
.seh_endprologue
# Var pf located at rsp+32, size=OS_S64
# Var tm located at rsp+40, size=OS_S64
.Ll157:
# [505] QueryPerformanceFrequency(pf);
	leaq	32(%rsp),%rcx
	call	_$dll$kernel32$QueryPerformanceFrequency
.Ll158:
# [506] QueryPerformanceCounter(tm);
	leaq	40(%rsp),%rcx
	call	_$dll$kernel32$QueryPerformanceCounter
.Ll159:
# [507] gettime:=round(1000000*tm/pf);
	movq	40(%rsp),%rax
	imulq	$1000000,%rax,%rax
	cvtsi2sd	%rax,%xmm0
	cvtsi2sdq	32(%rsp),%xmm1
	divsd	%xmm1,%xmm0
	cvtsd2siq	%xmm0,%rax
# Var $result located in register rax
.Ll160:
# [508] end;
	nop
	leaq	56(%rsp),%rsp
	ret
.seh_endproc
.Lc32:
.Lt14:
.Ll161:

.section .text.n_retro_$$_readkeybuffer$$longword,"x"
	.balign 16,0x90
.globl	RETRO_$$_READKEYBUFFER$$LONGWORD
RETRO_$$_READKEYBUFFER$$LONGWORD:
.Lc34:
# Var $result located in register eax
# [512] begin
.Ll162:
# [513] if be<>bs then
	movb	U_$RETRO_$$_BE(%rip),%al
	cmpb	U_$RETRO_$$_BS(%rip),%al
	je	.Lj554
.Ll163:
# [515] result:=keybuffer[bs];
	movzbl	U_$RETRO_$$_BS(%rip),%eax
	leaq	U_$RETRO_$$_KEYBUFFER(%rip),%rdx
	movl	(%rdx,%rax,4),%eax
.Ll164:
# [516] bs+=1
	movzbl	U_$RETRO_$$_BS(%rip),%edx
.Ll165:
# [517] end
	leal	1(%edx),%edx
.Ll166:
	movb	%dl,U_$RETRO_$$_BS(%rip)
	jmp	.Lj559
.Lj554:
.Ll167:
# [518] else result:=$FFFFFFFF;
	movl	$4294967295,%eax
.Lj559:
.Ll168:
# [519] end;
	ret
.Lc35:
.Lt33:
.Ll169:

.section .text.n_retro_$$_writekeybuffer$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_WRITEKEYBUFFER$LONGINT
RETRO_$$_WRITEKEYBUFFER$LONGINT:
.Lc36:
# Var a located in register eax
.Ll170:
# [523] begin
	movl	%ecx,%eax
.Ll171:
# [524] if be<>bs-1 then
	movzbl	U_$RETRO_$$_BS(%rip),%edx
	leaq	-1(%rdx),%rcx
	movzbl	U_$RETRO_$$_BE(%rip),%edx
	cmpq	%rdx,%rcx
	je	.Lj565
.Ll172:
# [526] keybuffer[be]:=a;
	movzbl	U_$RETRO_$$_BE(%rip),%ecx
	leaq	U_$RETRO_$$_KEYBUFFER(%rip),%rdx
	movl	%eax,(%rdx,%rcx,4)
.Ll173:
# [527] be+=1;
	movzbl	U_$RETRO_$$_BE(%rip),%eax
	leal	1(%eax),%eax
	movb	%al,U_$RETRO_$$_BE(%rip)
.Lj565:
.Ll174:
# [529] end;
	ret
.Lc37:
.Lt34:
.Ll175:

.section .text.n_retro_$$_sdlevents,"x"
	.balign 16,0x90
.globl	RETRO_$$_SDLEVENTS
RETRO_$$_SDLEVENTS:
.Lc38:
.seh_proc RETRO_$$_SDLEVENTS
.Ll176:
# [550] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-88(%rsp),%rsp
.Lc40:
.seh_stackalloc 88
# Var qq located in register ebx
# Var key located in register esi
.seh_endprologue
# Var event located at rsp+32, size=OS_NO
	.balign 8,0x90
.Lj572:
.Ll177:
# [552] qq:=sdl_pollevent(@event)  ;
	leaq	32(%rsp),%rcx
	call	_$dll$sdl2$SDL_PollEvent
	movl	%eax,%ebx
.Ll178:
# [553] if (qq>0) and (event.type_=sdl_windowevent) then if event.window.event=SDL_WINDOWEVENT_ENTER then needrestart:=1;
	cmpl	$0,%ebx
	jng	.Lj580
	cmpl	$512,32(%rsp)
	jne	.Lj580
	cmpb	$10,44(%rsp)
	jne	.Lj583
	movb	$1,TC_$RETRO_$$_NEEDRESTART(%rip)
.Lj583:
.Lj580:
.Ll179:
# [555] if (qq<>0) and (event.type_=sdl_mousemotion)  then
	testl	%ebx,%ebx
	je	.Lj587
	cmpl	$1024,32(%rsp)
	jne	.Lj587
.Ll180:
# [557] x:=event.motion.x;
	movl	52(%rsp),%eax
	movl	%eax,TC_$RETRO$_$SDLEVENTS_$$_X(%rip)
.Ll181:
# [558] y:=event.motion.y;
	movl	56(%rsp),%eax
	movl	%eax,TC_$RETRO$_$SDLEVENTS_$$_Y(%rip)
.Ll182:
# [559] if x<64 then x:=64;
	cmpl	$64,TC_$RETRO$_$SDLEVENTS_$$_X(%rip)
	jnl	.Lj594
	movl	$64,TC_$RETRO$_$SDLEVENTS_$$_X(%rip)
.Lj594:
.Ll183:
# [560] if x>1855 then x:=1855;
	cmpl	$1855,TC_$RETRO$_$SDLEVENTS_$$_X(%rip)
	jng	.Lj598
	movl	$1855,TC_$RETRO$_$SDLEVENTS_$$_X(%rip)
.Lj598:
.Ll184:
# [561] if y<40 then y:=40;
	cmpl	$40,TC_$RETRO$_$SDLEVENTS_$$_Y(%rip)
	jnl	.Lj602
	movl	$40,TC_$RETRO$_$SDLEVENTS_$$_Y(%rip)
.Lj602:
.Ll185:
# [562] if y>1159 then y:=1159;
	cmpl	$1159,TC_$RETRO$_$SDLEVENTS_$$_Y(%rip)
	jng	.Lj606
	movl	$1159,TC_$RETRO$_$SDLEVENTS_$$_Y(%rip)
.Lj606:
.Ll186:
# [563] ramw^[$30016]:=x;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movw	TC_$RETRO$_$SDLEVENTS_$$_X(%rip),%ax
	movw	%ax,393260(%rdx)
.Ll187:
# [564] ramw^[$30017]:=y;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movw	TC_$RETRO$_$SDLEVENTS_$$_Y(%rip),%dx
	movw	%dx,393262(%rax)
	jmp	.Lj613
.Lj587:
.Ll188:
# [567] else if (qq<>0) and (event.type_=sdl_mousebuttondown)  then
	testl	%ebx,%ebx
	je	.Lj615
	cmpl	$1025,32(%rsp)
	jne	.Lj615
.Ll189:
# [569] if event.button.state=sdl_pressed then
	cmpb	$1,49(%rsp)
	jne	.Lj623
.Ll190:
# [571] ramb^[$60033]:=2;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movb	$2,393267(%rax)
.Ll191:
# [572] ramb^[$60030]:=event.button.button;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movb	48(%rsp),%dl
	movb	%dl,393264(%rax)
	jmp	.Lj623
.Lj615:
.Ll192:
# [575] else if (qq<>0) and (event.type_=sdl_keydown) then
	testl	%ebx,%ebx
	je	.Lj625
	cmpl	$768,32(%rsp)
	jne	.Lj625
.Ll193:
# [577] ramb^[$6002B]:=1;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movb	$1,393259(%rax)
.Ll194:
# [578] key:=event.key.keysym.sym;
	movl	52(%rsp),%esi
.Ll195:
# [579] key:=(key shr 24) shl 8 + (key and $FF);
	movl	%esi,%eax
	shrl	$24,%eax
	shll	$8,%eax
	movl	%esi,%edx
	andl	$255,%edx
	leal	(%eax,%edx),%eax
	movl	%eax,%esi
.Ll196:
# [580] if event.key.repeat_ = 0 then writekeybuffer(key);
	cmpb	$0,45(%rsp)
	jne	.Lj634
	movl	%esi,%ecx
	call	RETRO_$$_WRITEKEYBUFFER$LONGINT
.Lj634:
.Ll197:
# [581] dpoke($60028,key);
	movw	%si,%dx
# PeepHole Optimization,var11
	andl	$65535,%edx
	movl	$393256,%ecx
	call	RETRO_$$_DPOKE$LONGINT$WORD
	jmp	.Lj641
.Lj625:
.Ll198:
# [583] else if (qq<>0) and (event.type_=sdl_keyUP) then
	testl	%ebx,%ebx
	je	.Lj643
	cmpl	$769,32(%rsp)
	jne	.Lj643
.Ll199:
# [585] ramb^[$6002B]:=0;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movb	$0,393259(%rax)
.Ll200:
# [586] key:=event.key.keysym.sym;
	movl	52(%rsp),%esi
.Ll201:
# [587] key:=(key shr 24) shl 8 + (key and $FF);
	movl	%esi,%eax
	shrl	$24,%eax
	shll	$8,%eax
	movl	%esi,%edx
	andl	$255,%edx
	leal	(%eax,%edx),%eax
	movl	%eax,%esi
.Ll202:
# [588] writekeybuffer(key+$10000);
	leal	65536(%esi),%ecx
	call	RETRO_$$_WRITEKEYBUFFER$LONGINT
.Ll203:
# [590] dpoke($6002A,key);
	movw	%si,%dx
# PeepHole Optimization,var11
	andl	$65535,%edx
	movl	$393258,%ecx
	call	RETRO_$$_DPOKE$LONGINT$WORD
.Lj643:
.Lj641:
.Lj623:
.Lj613:
.Ll204:
# [592] until qq=0;
	testl	%ebx,%ebx
	jne	.Lj572
.Ll205:
# [593] end;
	nop
	leaq	88(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc39:
.Lt36:
.Ll206:

.section .text.n_retro_$$_blit$crc5a667533,"x"
	.balign 16,0x90
.globl	RETRO_$$_BLIT$crc5A667533
RETRO_$$_BLIT$crc5A667533:
.Lc41:
# Temps allocated between rbp-112 and rbp+0
.seh_proc RETRO_$$_BLIT$crc5A667533
.Ll207:
# [610] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc43:
.Lc44:
	movq	%rsp,%rbp
.Lc45:
	leaq	-112(%rsp),%rsp
.seh_stackalloc 112
# Var from located in register eax
# Var x located in register edx
# Var y located in register eax
# Var too located in register eax
# Var x2 located in register ebx
# Var y2 located in register eax
# Var length located in register eax
# Var lines located in register esi
# Var bpl1 located in register eax
# Var bpl2 located in register eax
# Var i located in register r15d
# Var j located in register edi
# Var b1 located in register r14d
# Var b2 located in register r12d
	movq	%rbx,-112(%rbp)
	movq	%rdi,-104(%rbp)
	movq	%rsi,-96(%rbp)
	movq	%r12,-88(%rbp)
	movq	%r13,-80(%rbp)
	movq	%r14,-72(%rbp)
	movq	%r15,-64(%rbp)
.seh_savereg %rbx, 0
.seh_savereg %rdi, 8
.seh_savereg %rsi, 16
.seh_savereg %r12, 24
.seh_savereg %r13, 32
.seh_savereg %r14, 40
.seh_savereg %r15, 48
.seh_endprologue
	movl	%ecx,%eax
	movq	%rax,-56(%rbp)
	movl	%r8d,%eax
	movq	%rax,-48(%rbp)
	movl	%r9d,%eax
	movq	%rax,-8(%rbp)
	movl	48(%rbp),%ebx
	movl	56(%rbp),%eax
	movq	%rax,-40(%rbp)
	movl	64(%rbp),%eax
	movq	%rax,-32(%rbp)
	movl	72(%rbp),%esi
	movl	80(%rbp),%eax
	movq	%rax,-24(%rbp)
	movl	88(%rbp),%eax
	movq	%rax,-16(%rbp)
.Ll208:
# [611] if raml^[$18002]<16 then
	movq	U_$RETRO_$$_R1(%rip),%rax
	cmpl	$16,393224(%rax)
	jnl	.Lj660
.Ll209:
# [613] from:=from+x;
	movl	-56(%rbp),%eax
	leal	(%eax,%edx),%ecx
	movl	%ecx,%eax
	movq	%rax,-56(%rbp)
.Ll210:
# [614] too:=too+x2;
	movl	-8(%rbp),%eax
	leal	(%eax,%ebx),%ecx
	movl	%ecx,%eax
	movq	%rax,-8(%rbp)
.Ll211:
# [615] for i:=0 to lines-1 do
	leal	-1(%esi),%eax
	movl	%eax,%r13d
	movl	$0,%r15d
	cmpl	%r15d,%r13d
	jl	.Lj683
	subl	$1,%r15d
	.balign 8,0x90
.Lj669:
	addl	$1,%r15d
.Ll212:
# [617] b2:=too+bpl2*(i+y2);
	movl	-40(%rbp),%eax
	leal	(%r15d,%eax),%ecx
	movl	-16(%rbp),%eax
	movl	%eax,%r8d
	imull	%ecx,%r8d
	movl	-8(%rbp),%eax
	leal	(%r8d,%eax),%ecx
	movl	%ecx,%r12d
.Ll213:
# [618] b1:=from+bpl1*(i+y);
	movl	-48(%rbp),%eax
	leal	(%r15d,%eax),%ecx
	movl	-24(%rbp),%eax
	movl	%eax,%r8d
	imull	%ecx,%r8d
	movl	-56(%rbp),%ecx
	leal	(%r8d,%ecx),%eax
	movl	%eax,%r14d
.Ll214:
# [619] for j:=0 to length-1 do
	movl	-32(%rbp),%eax
	leal	-1(%eax),%ecx
	movl	%ecx,%eax
	movl	$0,%edi
	cmpl	%edi,%eax
	jl	.Lj677
	subl	$1,%edi
	.balign 8,0x90
.Lj678:
	addl	$1,%edi
.Ll215:
# [620] ramb^[b2+j]:=ramb^[b1+j];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	%r12d,%r9
	movslq	%edi,%r8
	leaq	(%r9,%r8),%r9
	movq	U_$RETRO_$$_R1(%rip),%r10
	movslq	%r14d,%r11
	leaq	(%r11,%r8),%r8
	movb	(%r10,%r8,1),%r8b
	movb	%r8b,(%rcx,%r9,1)
.Ll216:
	cmpl	%edi,%eax
	jg	.Lj678
.Lj677:
.Ll217:
	cmpl	%r15d,%r13d
	jg	.Lj669
	jmp	.Lj683
.Lj660:
.Ll218:
# [623] else if (raml^[$18002]>=16) and (raml^[$18002]<32) then
	movq	U_$RETRO_$$_R1(%rip),%rax
.Ll219:
	movl	393224(%rax),%eax
.Ll220:
	cmpl	$16,%eax
	jnge	.Lj685
	cmpl	$32,%eax
	jnl	.Lj685
.Ll221:
# [625] from:=(from shr 1)+x;
	movl	-56(%rbp),%eax
	movl	%eax,%ecx
	shrl	$1,%ecx
	leal	(%ecx,%edx),%ecx
	movl	%ecx,%eax
	movq	%rax,-56(%rbp)
.Ll222:
# [626] too:=(too shr 1)+x2;
	movl	-8(%rbp),%eax
	movl	%eax,%ecx
	shrl	$1,%ecx
	leal	(%ecx,%ebx),%ecx
	movl	%ecx,%eax
	movq	%rax,-8(%rbp)
.Ll223:
# [627] for i:=0 to lines-1 do
	leal	-1(%esi),%eax
	movl	$0,%r15d
	cmpl	%r15d,%eax
	jl	.Lj711
	subl	$1,%r15d
	.balign 8,0x90
.Lj697:
	addl	$1,%r15d
.Ll224:
# [629] b2:=too+bpl2*(i+y2);
	movl	-40(%rbp),%ecx
	leal	(%r15d,%ecx),%r9d
	movl	-16(%rbp),%ecx
	movl	%ecx,%r8d
	imull	%r9d,%r8d
	movl	-8(%rbp),%ecx
	leal	(%r8d,%ecx),%r8d
	movl	%r8d,%r12d
.Ll225:
# [630] b1:=from+bpl1*(i+y);
	movl	-48(%rbp),%ecx
	leal	(%r15d,%ecx),%r8d
	movl	-24(%rbp),%ecx
	movl	%ecx,%r9d
	imull	%r8d,%r9d
	movl	-56(%rbp),%ecx
	leal	(%r9d,%ecx),%r8d
	movl	%r8d,%r14d
.Ll226:
# [631] for j:=0 to length-1 do
	movl	-32(%rbp),%ecx
	leal	-1(%ecx),%r8d
	movl	%r8d,%ecx
	movl	$0,%edi
	cmpl	%edi,%ecx
	jl	.Lj705
	subl	$1,%edi
	.balign 8,0x90
.Lj706:
	addl	$1,%edi
.Ll227:
# [632] ramw^[b2+j]:=ramw^[b1+j];
	movq	U_$RETRO_$$_R1(%rip),%r8
	movslq	%r12d,%r10
	movslq	%edi,%r9
	leaq	(%r10,%r9),%r10
	movq	U_$RETRO_$$_R1(%rip),%r11
	movslq	%r14d,%r13
	leaq	(%r13,%r9),%r9
	movw	(%r11,%r9,2),%r9w
	movw	%r9w,(%r8,%r10,2)
.Ll228:
	cmpl	%edi,%ecx
	jg	.Lj706
.Lj705:
.Ll229:
	cmpl	%r15d,%eax
	jg	.Lj697
	jmp	.Lj711
.Lj685:
.Ll230:
# [637] from:=(from shr 2)+x;
	movl	-56(%rbp),%eax
	movl	%eax,%ecx
	shrl	$2,%ecx
	leal	(%ecx,%edx),%eax
	movl	%eax,%edx
	movq	%rdx,-56(%rbp)
.Ll231:
# [638] too:=(too shr 2)+x2;
	movl	-8(%rbp),%edx
	movl	%edx,%eax
	shrl	$2,%eax
	leal	(%eax,%ebx),%eax
	movl	%eax,%edx
	movq	%rdx,-8(%rbp)
.Ll232:
# [639] for i:=0 to lines-1 do
	leal	-1(%esi),%eax
	movl	%eax,%ecx
	movl	$0,%r15d
	cmpl	%r15d,%ecx
	jl	.Lj719
	subl	$1,%r15d
	.balign 8,0x90
.Lj720:
	addl	$1,%r15d
.Ll233:
# [641] b2:=too+bpl2*(i+y2);
	movl	-40(%rbp),%eax
	leal	(%r15d,%eax),%edx
	movl	-16(%rbp),%eax
	movl	%eax,%r8d
	imull	%edx,%r8d
	movl	-8(%rbp),%edx
	leal	(%r8d,%edx),%eax
	movl	%eax,%r12d
.Ll234:
# [642] b1:=from+bpl1*(i+y);
	movl	-48(%rbp),%eax
	leal	(%r15d,%eax),%edx
	movl	-24(%rbp),%eax
	movl	%eax,%r8d
	imull	%edx,%r8d
	movl	-56(%rbp),%edx
	leal	(%r8d,%edx),%eax
	movl	%eax,%r14d
.Ll235:
# [643] for j:=0 to length-1 do
	movl	-32(%rbp),%edx
	leal	-1(%edx),%eax
	movl	%eax,%r9d
	movl	$0,%edi
	cmpl	%edi,%r9d
	jl	.Lj728
	subl	$1,%edi
	.balign 8,0x90
.Lj729:
	addl	$1,%edi
.Ll236:
# [644] raml^[b2+j]:=raml^[b1+j];
	movq	U_$RETRO_$$_R1(%rip),%r8
	movslq	%r12d,%rdx
	movslq	%edi,%rax
.Ll237:
	movq	%rax,%r10
.Ll238:
	leaq	(%rdx,%r10),%r11
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movslq	%r14d,%rax
	leaq	(%rax,%r10),%rax
	movl	(%rdx,%rax,4),%eax
	movl	%eax,(%r8,%r11,4)
.Ll239:
	cmpl	%edi,%r9d
	jg	.Lj729
.Lj728:
.Ll240:
	cmpl	%r15d,%ecx
	jg	.Lj720
.Lj719:
.Lj711:
.Lj683:
.Ll241:
# [647] end;
	movq	-112(%rbp),%rbx
	movq	-104(%rbp),%rdi
	movq	-96(%rbp),%rsi
	movq	-88(%rbp),%r12
	movq	-80(%rbp),%r13
	movq	-72(%rbp),%r14
	movq	-64(%rbp),%r15
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc42:
.Lt11:
.Ll242:

.section .text.n_retro_$$_graphics$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_GRAPHICS$LONGINT
RETRO_$$_GRAPHICS$LONGINT:
.Lc46:
.seh_proc RETRO_$$_GRAPHICS$LONGINT
.Ll243:
# [651] begin
	leaq	-40(%rsp),%rsp
.Lc48:
.seh_stackalloc 40
# Var mode located in register eax
.seh_endprologue
	movl	%ecx,%eax
.Ll244:
# [652] raml^[$18001]:=$F000000;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movl	$251658240,393220(%rdx)
.Ll245:
# [653] case mode of
	cmpl	$16,%eax
	jl	.Lj739
	subl	$16,%eax
	jne	.Lj739
.Ll246:
# [657] raml^[$18002]:=16;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16,393224(%rax)
.Ll247:
# [658] raml^[$18008]:=1792;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$1792,393248(%rax)
.Ll248:
# [659] raml^[$18009]:=1120;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$1120,393252(%rax)
	jmp	.Lj738
.Lj739:
.Ll249:
# [665] raml^[$18002]:=16;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16,393224(%rax)
.Ll250:
# [666] raml^[$18008]:=1792;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$1792,393248(%rax)
.Ll251:
# [667] raml^[$18009]:=1120;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$1120,393252(%rax)
.Lj738:
.Ll252:
# [670] raml^[$18001]:=$F000000;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$251658240,393220(%rax)
.Ll253:
# [671] setataripallette(0);
	movl	$0,%ecx
	call	RETRO_$$_SETATARIPALLETTE$LONGINT
.Ll254:
# [673] cls(0);
	movl	$0,%ecx
	call	RETRO_$$_CLS$LONGINT
.Ll255:
# [674] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc47:
.Lt3:
.Ll256:

.section .text.n_retro_$$_scrconvert$pointer$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_SCRCONVERT$POINTER$LONGINT
RETRO_$$_SCRCONVERT$POINTER$LONGINT:
.Lc49:
.seh_proc RETRO_$$_SCRCONVERT$POINTER$LONGINT
.Ll257:
# [686] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	pushq	%r14
.seh_pushreg %r14
	pushq	%r15
.seh_pushreg %r15
	pushq	%rbp
.seh_pushreg %rbp
	leaq	-40(%rsp),%rsp
.Lc51:
.seh_stackalloc 40
# Var screen located in register rcx
# Var buf located in register r15d
# Var b located in register ebx
# Var pi located in register rbp
# Var i located in register r12d
# Var j located in register edi
# Var k located in register r12d
# Var l located in register esi
.seh_endprologue
.Ll258:
# [687] buf:=buf shr 1;
	shrl	$1,%edx
# Var buf located in register r15d
	movl	%edx,%r15d
# Var pi located in register rbp
# Var screen located in register rcx
.Ll259:
# [688] pi:=screen;
	movq	%rcx,%rbp
.Ll260:
# [689] b:=raml^[$18003];
	movq	U_$RETRO_$$_R1(%rip),%rax
# Var b located in register ebx
	movl	393228(%rax),%ebx
# Var l located in register esi
.Ll261:
# [690] l:=0;
	movl	$0,%esi
# Var i located in register r12d
.Ll262:
# [691] for i:=0 to 39 do begin if peek($70001)=0 then b:=lpeek($10000+4*((i div 4)+lpeek($60000)  ) mod 1024); for j:=0 to 1919  do (pi+i*1920+j)^:=b; end;
	movl	$0,%r12d
	subl	$1,%r12d
	.balign 8,0x90
.Lj771:
	addl	$1,%r12d
	movl	$458753,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	testb	%al,%al
	jne	.Lj773
	movslq	%r12d,%r13
	movq	%r13,%rax
	sarq	$63,%rax
	andq	$3,%rax
	addq	%rax,%r13
	sarq	$2,%r13
	movl	$393216,%ecx
	call	RETRO_$$_LPEEK$LONGINT$$LONGWORD
	andl	$4294967295,%eax
	leaq	(%r13,%rax),%rax
	shlq	$2,%rax
	cqto
	movq	$1024,%rcx
	idivq	%rcx
	leaq	65536(%rdx),%rcx
	call	RETRO_$$_LPEEK$LONGINT$$LONGWORD
	movl	%eax,%ebx
.Lj773:
	movl	$0,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj784:
	addl	$1,%edi
	movslq	%r12d,%rax
	imulq	$1920,%rax,%rax
	shlq	$2,%rax
	leaq	(%rax,%rbp),%rdx
	movslq	%edi,%rax
	shlq	$2,%rax
	leaq	(%rdx,%rax),%rax
	movl	%ebx,(%rax)
	cmpl	$1919,%edi
	jl	.Lj784
	cmpl	$39,%r12d
	jl	.Lj771
# Var k located in register r12d
.Ll263:
# [692] k:=76800;
	movl	$76800,%r12d
# Var i located in register r13d
.Ll264:
# [693] for i:=40 to 1159 do
	movl	$40,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj791:
	addl	$1,%r13d
.Ll265:
# [695] for j:=0 to 63 do begin if peek($70001)=0 then b:=lpeek($10000+4*((i div 4)+lpeek($60000) ) mod 1024); (pi+k)^:=b; k+=1; end;
	movl	$0,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj794:
	addl	$1,%edi
	movl	$458753,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	testb	%al,%al
	jne	.Lj796
	movslq	%r13d,%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,%r14
	sarq	$63,%rax
	andq	$3,%rax
	addq	%rax,%r14
	sarq	$2,%r14
	movl	$393216,%ecx
	call	RETRO_$$_LPEEK$LONGINT$$LONGWORD
	andl	$4294967295,%eax
	leaq	(%r14,%rax),%rax
	shlq	$2,%rax
	cqto
	movq	$1024,%rcx
	idivq	%rcx
	leaq	65536(%rdx),%rcx
	call	RETRO_$$_LPEEK$LONGINT$$LONGWORD
	movl	%eax,%ebx
.Lj796:
	movslq	%r12d,%rax
	shlq	$2,%rax
	leaq	(%rax,%rbp),%rax
	movl	%ebx,(%rax)
	leal	1(%r12d),%eax
	movl	%eax,%r12d
	cmpl	$63,%edi
	jl	.Lj794
.Ll266:
# [696] for j:=0 to 1791 do begin
	movl	$0,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj811:
	addl	$1,%edi
.Ll267:
# [697] (pi+k)^:=raml^[$4000+ramw^[buf+l]]; k+=1; l+=1; end;
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movq	U_$RETRO_$$_R1(%rip),%r8
	movslq	%r15d,%rax
	movslq	%esi,%rdx
	leaq	(%rax,%rdx),%rax
	movzwl	(%r8,%rax,2),%r8d
	movslq	%r12d,%rax
	shlq	$2,%rax
	leaq	(%rax,%rbp),%rdx
	movl	65536(%rcx,%r8,4),%eax
	movl	%eax,(%rdx)
	leal	1(%r12d),%eax
	movl	%eax,%r12d
	leal	1(%esi),%eax
	movl	%eax,%esi
.Ll268:
	cmpl	$1791,%edi
	jl	.Lj811
.Ll269:
# [698] for j:=0 to 63 do begin (pi+k)^:=b; k+=1; end;
	movl	$0,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj820:
	addl	$1,%edi
	movslq	%r12d,%rax
	shlq	$2,%rax
	leaq	(%rax,%rbp),%rax
	movl	%ebx,(%rax)
	leal	1(%r12d),%eax
	movl	%eax,%r12d
	cmpl	$63,%edi
	jl	.Lj820
.Ll270:
	cmpl	$1159,%r13d
	jl	.Lj791
# Var i located in register r12d
.Ll271:
# [700] for i:=1160 to 1199 do begin if peek($70001)=0 then b:=lpeek($10000+4*((i div 4)+lpeek($60000) ) mod 1024); for j:=0 to 1919  do (pi+i*1920+j)^:=b; end;
	movl	$1160,%r12d
	subl	$1,%r12d
	.balign 8,0x90
.Lj827:
	addl	$1,%r12d
	movl	$458753,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	testb	%al,%al
	jne	.Lj829
	movslq	%r12d,%rsi
	movq	%rsi,%rax
	sarq	$63,%rax
	andq	$3,%rax
	addq	%rax,%rsi
	sarq	$2,%rsi
	movl	$393216,%ecx
	call	RETRO_$$_LPEEK$LONGINT$$LONGWORD
	andl	$4294967295,%eax
	leaq	(%rsi,%rax),%rax
	shlq	$2,%rax
	cqto
	movq	$1024,%rcx
	idivq	%rcx
	leaq	65536(%rdx),%rcx
	call	RETRO_$$_LPEEK$LONGINT$$LONGWORD
	movl	%eax,%ebx
.Lj829:
	movl	$0,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj840:
	addl	$1,%edi
	movslq	%r12d,%rax
	imulq	$1920,%rax,%rax
	shlq	$2,%rax
	leaq	(%rax,%rbp),%rdx
	movslq	%edi,%rax
	shlq	$2,%rax
	leaq	(%rdx,%rax),%rax
	movl	%ebx,(%rax)
	cmpl	$1919,%edi
	jl	.Lj840
	cmpl	$1199,%r12d
	jl	.Lj827
.Ll272:
# [702] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rbp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc50:
.Lt4:
.Ll273:

.section .text.n_retro_$$_sprite$pointer,"x"
	.balign 16,0x90
.globl	RETRO_$$_SPRITE$POINTER
RETRO_$$_SPRITE$POINTER:
.Lc52:
# Temps allocated between rsp+32 and rsp+128
.seh_proc RETRO_$$_SPRITE$POINTER
.Ll274:
# [722] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	pushq	%r14
.seh_pushreg %r14
	pushq	%r15
.seh_pushreg %r15
	pushq	%rbp
.seh_pushreg %rbp
	leaq	-136(%rsp),%rsp
.Lc54:
.seh_stackalloc 136
# Var screen located in register r15
# Var offset located in register eax
# Var pixel located in register eax
# Var spritebase located in register r14d
# Var spritedefs located in register esi
# Var ctrl1 located in register eax
# Var screenbase located in register rax
# Var pi located in register r13
# Var xpos located in register eax
# Var ypos located in register eax
# Var xzoom located in register eax
# Var yzoom located in register eax
# Var i located in register ebx
# Var j located in register eax
# Var k located in register eax
# Var l located in register eax
# Var m located in register eax
# Var mask located in register ebp
.seh_endprologue
# Var pi located in register r13
.Ll275:
# [723] pi:=screen;
	movq	%rcx,%r15
# Var screen located in register r15
	movq	%r15,%r13
# Var spritebase located in register r14d
.Ll276:
# [724] spritebase:=$60040;
	movl	$393280,%r14d
# Var spritedefs located in register esi
.Ll277:
# [725] spritedefs:=$52000;
	movl	$335872,%esi
.Ll278:
# [726] t:=gettime;
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,U_$RETRO_$$_T(%rip)
# Var i located in register ebx
.Ll279:
# [727] for i:=0 to 7 do
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj855:
	addl	$1,%ebx
.Ll280:
# [729] mask:=1 shl (i+24);
	movslq	%ebx,%rax
	leaq	24(%rax),%rax
	movl	$1,%edx
	movl	%eax,%ecx
	movl	%edx,%eax
	movslq	%ecx,%rcx
	shll	%cl,%eax
	movl	%eax,%ebp
.Ll281:
# [730] ctrl1:=lpeek(spritebase);
	movl	%r14d,%ecx
	call	RETRO_$$_LPEEK$LONGINT$$LONGWORD
	movl	%eax,%edx
	movq	%rdx,104(%rsp)
.Ll282:
# [731] spritebase+=4;
	leal	4(%r14d),%eax
	movl	%eax,%r14d
.Ll283:
# [732] ypos:=ctrl1 shr 16;
	movl	104(%rsp),%eax
# PeepHole Optimization,var2
# P=movl
# HP1=shrl
# HP2=movl
# PeepHole Optimization,var2
	shrl	$16,%eax
	movq	%rax,80(%rsp)
.Ll284:
# [733] xpos:=ctrl1 and $FFFF;
	movl	104(%rsp),%eax
	movl	%eax,%edx
	andl	$65535,%edx
	movl	%edx,%eax
	movq	%rax,88(%rsp)
.Ll285:
# [734] ctrl1:=lpeek(spritebase);
	movl	%r14d,%ecx
	call	RETRO_$$_LPEEK$LONGINT$$LONGWORD
	movl	%eax,%edx
	movq	%rdx,104(%rsp)
.Ll286:
# [735] spritebase+=4;
	leal	4(%r14d),%eax
	movl	%eax,%r14d
.Ll287:
# [736] yzoom:=(ctrl1 shr 16) and $7FFF ;
	movl	104(%rsp),%eax
	movl	%eax,%edx
	shrl	$16,%edx
	andl	$32767,%edx
	movl	%edx,%eax
	movq	%rax,72(%rsp)
.Ll288:
# [737] if yzoom>8 then yzoom:=8;
	movl	72(%rsp),%eax
	cmpl	$8,%eax
	jng	.Lj877
	movl	$8,%eax
	movq	%rax,72(%rsp)
.Lj877:
.Ll289:
# [738] if yzoom<1 then yzoom:=1;
	movl	72(%rsp),%eax
	cmpl	$1,%eax
	jnl	.Lj881
	movl	$1,%eax
	movq	%rax,72(%rsp)
.Lj881:
.Ll290:
# [739] xzoom:=ctrl1 and $7FFF ;
	movl	104(%rsp),%eax
	movl	%eax,%edx
	andl	$32767,%edx
	movl	%edx,%eax
	movq	%rax,64(%rsp)
.Ll291:
# [740] if xzoom>8 then xzoom:=8;
	movl	64(%rsp),%eax
	cmpl	$8,%eax
	jng	.Lj887
	movl	$8,%eax
	movq	%rax,64(%rsp)
.Lj887:
.Ll292:
# [741] if xzoom<1 then xzoom:=1;
	movl	64(%rsp),%eax
	cmpl	$1,%eax
	jnl	.Lj891
	movl	$1,%eax
	movq	%rax,64(%rsp)
.Lj891:
.Ll293:
# [742] if (xpos>2048) or (ypos>2048) then
	movl	88(%rsp),%eax
	cmpl	$2048,%eax
	jg	.Lj894
	movl	80(%rsp),%eax
	cmpl	$2048,%eax
	jng	.Lj895
.Lj894:
.Ll294:
# [744] spritedefs+=4096;
	leal	4096(%esi),%eax
	movl	%eax,%esi
.Ll295:
# [745] goto p100;
	jmp	.Lj899
.Lj895:
.Ll296:
# [747] for l:=0 to 31 do
	movl	$0,%eax
	movq	%rax,56(%rsp)
# PeepHole Optimization,var2
# P=movl
# HP1=subl
# HP2=movq
# PeepHole Optimization,var2
	subl	$1,56(%rsp)
	.balign 8,0x90
.Lj902:
# PeepHole Optimization,var2
# P=movl
# HP1=addl
# HP2=movq
# PeepHole Optimization,var2
	addl	$1,56(%rsp)
.Ll297:
# [749] for m:=1 to yzoom do
	movl	72(%rsp),%eax
	movl	%eax,%r12d
	movl	$1,%eax
	movq	%rax,48(%rsp)
	movl	48(%rsp),%eax
	cmpl	%eax,%r12d
	jl	.Lj906
# PeepHole Optimization,var2
# P=movl
# HP1=subl
# HP2=movq
# PeepHole Optimization,var2
	subl	$1,48(%rsp)
	.balign 8,0x90
.Lj907:
# PeepHole Optimization,var2
# P=movl
# HP1=addl
# HP2=movq
# PeepHole Optimization,var2
	addl	$1,48(%rsp)
.Ll298:
# [751] offset:=xpos+1920*(ypos+yzoom*l+m-1);
	movl	56(%rsp),%eax
	movl	%eax,%ecx
	movl	72(%rsp),%eax
	imull	%eax,%ecx
	movl	80(%rsp),%edx
	leal	(%ecx,%edx),%eax
	movl	48(%rsp),%edx
	leal	(%eax,%edx),%eax
	leal	-1(%eax),%eax
	imull	$1920,%eax,%eax
	movl	88(%rsp),%edx
	leal	(%eax,%edx),%ecx
	movl	%ecx,%eax
	movq	%rax,120(%rsp)
.Ll299:
# [752] screenbase:=pi+offset;
	movslq	120(%rsp),%rax
	shlq	$2,%rax
	leaq	(%rax,%r13),%rax
	movq	%rax,96(%rsp)
.Ll300:
# [753] for j:=0 to 31 do
	movl	$0,%eax
	movq	%rax,40(%rsp)
# PeepHole Optimization,var2
# P=movl
# HP1=subl
# HP2=movq
# PeepHole Optimization,var2
	subl	$1,40(%rsp)
	.balign 8,0x90
.Lj914:
# PeepHole Optimization,var2
# P=movl
# HP1=addl
# HP2=movq
# PeepHole Optimization,var2
	addl	$1,40(%rsp)
.Ll301:
# [755] for k:=1 to xzoom do
	movl	64(%rsp),%eax
	movl	%eax,%edi
	movl	$1,%eax
	movq	%rax,32(%rsp)
	movl	32(%rsp),%eax
	cmpl	%eax,%edi
	jl	.Lj918
# PeepHole Optimization,var2
# P=movl
# HP1=subl
# HP2=movq
# PeepHole Optimization,var2
	subl	$1,32(%rsp)
	.balign 8,0x90
.Lj919:
# PeepHole Optimization,var2
# P=movl
# HP1=addl
# HP2=movq
# PeepHole Optimization,var2
	addl	$1,32(%rsp)
.Ll302:
# [757] pixel:=lpeek(spritedefs);
	movl	%esi,%ecx
	call	RETRO_$$_LPEEK$LONGINT$$LONGWORD
	movl	%eax,%edx
	movq	%rdx,112(%rsp)
.Ll303:
# [758] if ((screenbase^ and mask)=0) and (offset<2304000) and (pixel<>0) then screenbase^:=pixel;
	movq	96(%rsp),%rax
	movl	(%rax),%edx
	movl	%ebp,%eax
	andl	%edx,%eax
	testl	%eax,%eax
	jne	.Lj925
	movl	120(%rsp),%eax
	cmpl	$2304000,%eax
	jnl	.Lj925
	movl	112(%rsp),%eax
	testl	%eax,%eax
	je	.Lj925
	movl	112(%rsp),%eax
	movq	96(%rsp),%rdx
	movl	%eax,(%rdx)
.Lj925:
.Ll304:
# [759] screenbase+=1;
	movq	96(%rsp),%rdx
	leaq	4(%rdx),%rax
	movq	%rax,96(%rsp)
.Ll305:
	movl	32(%rsp),%eax
	cmpl	%eax,%edi
	jg	.Lj919
.Lj918:
.Ll306:
# [761] spritedefs+=4;
	leal	4(%esi),%eax
	movl	%eax,%esi
.Ll307:
	movl	40(%rsp),%eax
	cmpl	$31,%eax
	jl	.Lj914
.Ll308:
# [764] end;
	leal	-128(%esi),%eax
.Ll309:
# [763] spritedefs-=128
	movl	%eax,%esi
.Ll310:
	movl	48(%rsp),%eax
	cmpl	%eax,%r12d
	jg	.Lj907
.Lj906:
.Ll311:
# [765] spritedefs+=128;
	leal	128(%esi),%eax
	movl	%eax,%esi
.Ll312:
	movl	56(%rsp),%eax
	cmpl	$31,%eax
	jl	.Lj902
.Lj899:
.Ll313:
	cmpl	$7,%ebx
	jl	.Lj855
.Ll314:
# [769] ts:=gettime-t;
	call	RETRO_$$_GETTIME$$INT64
	movq	U_$RETRO_$$_T(%rip),%rdx
	subq	%rdx,%rax
	movq	%rax,U_$RETRO_$$_TS(%rip)
.Ll315:
# [771] end;
	nop
	leaq	136(%rsp),%rsp
	popq	%rbp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc53:
.Lt35:
.Ll316:

.section .text.n_retro_$$_setataripallette$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_SETATARIPALLETTE$LONGINT
RETRO_$$_SETATARIPALLETTE$LONGINT:
.Lc55:
.seh_proc RETRO_$$_SETATARIPALLETTE$LONGINT
.Ll317:
# [779] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc57:
.seh_stackalloc 40
# Var bank located in register ebx
# Var fh located in register esi
.seh_endprologue
	movl	%ecx,%ebx
.Ll318:
# [780] fh:=fileopen('./ataripalette.def',$40);
	leaq	_$RETRO$_Ld15(%rip),%rcx
	movl	$64,%edx
	call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$QWORD
	movq	%rax,%rsi
# Var fh located in register esi
.Ll319:
# [781] fileread(fh,raml^[$4000+256*bank],1024);
	movq	U_$RETRO_$$_R1(%rip),%rax
	movslq	%ebx,%rbx
	shlq	$8,%rbx
	leaq	65536(%rax,%rbx,4),%rdx
	movslq	%esi,%rcx
	movl	$1024,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll320:
# [782] fileclose(fh);
	movslq	%esi,%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll321:
# [783] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc56:
.Lt5:
.Ll322:

.section .text.n_retro_$$_sethidecolor$longint$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
RETRO_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT:
.Lc58:
# Var c located in register eax
# Var bank located in register edx
# Var mask located in register r8d
.Ll323:
# [787] begin
	movl	%ecx,%eax
.Ll324:
# [788] raml^[$4000+256*bank+c]+=(mask shl 24);
	shll	$24,%r8d
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	%edx,%rdx
	shlq	$8,%rdx
	leaq	16384(%rdx),%rdx
	movslq	%eax,%rax
	leaq	(%rdx,%rax),%rax
	movl	(%rcx,%rax,4),%edx
	leal	(%r8d,%edx),%ecx
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movl	%ecx,(%rdx,%rax,4)
.Ll325:
# [789] end;
	ret
.Lc59:
.Lt23:
.Ll326:

.section .text.n_retro_$$_cls$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_CLS$LONGINT
RETRO_$$_CLS$LONGINT:
.Lc60:
# Var c located in register edx
# Var c2 located in register eax
# Var i located in register r8d
# Var l located in register eax
.Ll327:
# [795] begin
	movl	%ecx,%eax
.Ll328:
# [796] c:=c mod 65535;
	movslq	%eax,%rax
	cqto
	movq	$65535,%rcx
	idivq	%rcx
# Var c located in register edx
.Ll329:
# [798] l:=(raml^[$18008]*raml^[$18009]) div 2 ;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movslq	393248(%rax),%rcx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movslq	393252(%rax),%rax
	imulq	%rcx,%rax
	movq	%rax,%rcx
	sarq	$63,%rcx
	andq	$1,%rcx
	addq	%rcx,%rax
	sarq	$1,%rax
# Var l located in register eax
.Ll330:
# [799] c:=c+(c shl 16);
	movl	%edx,%ecx
	shll	$16,%ecx
	leal	(%ecx,%edx),%edx
# Var c located in register edx
# Var l located in register eax
# Var i located in register r8d
.Ll331:
# [800] for i:=0 to l do raml^[$3C00000+i]:=c;
	movl	$0,%r8d
	cmpl	%r8d,%eax
	jl	.Lj973
	subl	$1,%r8d
	.balign 8,0x90
.Lj974:
	addl	$1,%r8d
	movq	U_$RETRO_$$_R1(%rip),%r9
	movslq	%r8d,%rcx
	movl	%edx,251658240(%r9,%rcx,4)
	cmpl	%r8d,%eax
	jg	.Lj974
.Lj973:
.Ll332:
# [802] end;
	ret
.Lc61:
.Lt6:
.Ll333:

.section .text.n_retro_$$_putpixel$longint$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
RETRO_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT:
.Lc62:
# Var x located in register ecx
# Var y located in register edx
# Var color located in register r8d
# Var adr located in register eax
# [816] begin
.Ll334:
# [818] if raml^[$18002]<16 then
	movq	U_$RETRO_$$_R1(%rip),%rax
	cmpl	$16,393224(%rax)
	jnl	.Lj980
.Ll335:
# [819] begin adr:=$F000000+x+1792*y; if adr<$FFFFFFF then ramb^[adr]:=color; end
	imull	$1792,%edx,%eax
	leal	251658240(%ecx),%r9d
	leal	(%eax,%r9d),%eax
	cmpl	$268435455,%eax
	jnl	.Lj987
	movq	U_$RETRO_$$_R1(%rip),%r11
# PeepHole Optimization,var2a
	movl	%eax,%r9d
	movb	%r8b,%r10b
	movb	%r10b,(%r11,%r9,1)
	jmp	.Lj987
.Lj980:
.Ll336:
# [820] else if (raml^[$18002]>=16) and (raml^[$18002]<32) then
	movq	U_$RETRO_$$_R1(%rip),%r9
.Ll337:
	movl	393224(%r9),%r9d
.Ll338:
	cmpl	$16,%r9d
	jnge	.Lj989
	cmpl	$32,%r9d
	jnl	.Lj989
.Ll339:
# [821] begin adr:=$7800000+x+1792*y; if adr<$7FFFFFF then ramw^[adr]:=color; end
	imull	$1792,%edx,%r9d
	leal	125829120(%ecx),%r10d
	leal	(%r9d,%r10d),%r9d
	movl	%r9d,%eax
	cmpl	$134217727,%eax
	jnl	.Lj999
	movq	U_$RETRO_$$_R1(%rip),%r11
# PeepHole Optimization,var2a
	movl	%eax,%r9d
	movw	%r8w,%r10w
	movw	%r10w,(%r11,%r9,2)
	jmp	.Lj999
.Lj989:
.Ll340:
# [823] begin adr:=$3c00000+x+1792*y; if adr<$3FFFFFF then raml^[adr]:=color; end;
	imull	$1792,%edx,%r9d
	leal	62914560(%ecx),%edx
	leal	(%r9d,%edx),%edx
	movl	%edx,%eax
	cmpl	$67108863,%eax
	jnl	.Lj1003
	movq	U_$RETRO_$$_R1(%rip),%rdx
	andl	$4294967295,%eax
	movl	%r8d,(%rdx,%rax,4)
.Lj1003:
.Lj999:
.Lj987:
.Ll341:
# [824] end;
	ret
.Lc63:
.Lt7:
.Ll342:

.section .text.n_retro_$$_box$longint$longint$longint$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
.Lc64:
# Temps allocated between rbp-48 and rbp+0
.seh_proc RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll343:
# [842] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc66:
.Lc67:
	movq	%rsp,%rbp
.Lc68:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
# Var x located in register ecx
# Var y located in register edx
# Var l located in register r8d
# Var h located in register r9d
# Var c located in register r11d
# Var adr located in register ebx
# Var a located in register eax
# Var i located in register edi
# Var j located in register r10d
	movq	%rbx,-48(%rbp)
	movq	%rdi,-40(%rbp)
	movq	%rsi,-32(%rbp)
	movq	%r12,-24(%rbp)
	movq	%r13,-16(%rbp)
	movq	%r14,-8(%rbp)
.seh_savereg %rbx, 0
.seh_savereg %rdi, 8
.seh_savereg %rsi, 16
.seh_savereg %r12, 24
.seh_savereg %r13, 32
.seh_savereg %r14, 40
.seh_endprologue
	movl	48(%rbp),%r11d
.Ll344:
# [844] if x<0 then x:=0;
	cmpl	$0,%ecx
	jnl	.Lj1009
	movl	$0,%ecx
.Lj1009:
.Ll345:
# [845] if x>1792 then x:=1792;
	cmpl	$1792,%ecx
	jng	.Lj1013
	movl	$1792,%ecx
.Lj1013:
.Ll346:
# [846] if y<0 then y:=0;
	cmpl	$0,%edx
	jnl	.Lj1017
	movl	$0,%edx
.Lj1017:
.Ll347:
# [847] if y>1120 then y:=1120;
	cmpl	$1120,%edx
	jng	.Lj1021
	movl	$1120,%edx
.Lj1021:
.Ll348:
# [848] if x+l>1792 then l:=1792-x-1;
	movslq	%ecx,%rax
	movslq	%r8d,%r10
	leaq	(%rax,%r10),%rax
	cmpq	$1792,%rax
	jng	.Lj1025
	movl	$1792,%eax
	subl	%ecx,%eax
	leal	-1(%eax),%eax
	movl	%eax,%r8d
.Lj1025:
.Ll349:
# [849] if y+h>1120 then h:=1120-y-1 ;
	movslq	%edx,%rax
	movslq	%r9d,%r10
	leaq	(%rax,%r10),%rax
	cmpq	$1120,%rax
	jng	.Lj1029
	movl	$1120,%eax
	subl	%edx,%eax
	leal	-1(%eax),%eax
	movl	%eax,%r9d
.Lj1029:
.Ll350:
# [850] if raml^[$18002]<16 then
	movq	U_$RETRO_$$_R1(%rip),%rax
	cmpl	$16,393224(%rax)
	jnl	.Lj1033
.Ll351:
# [852] for j:=y to y+h-1 do
	leal	(%edx,%r9d),%eax
	leal	-1(%eax),%eax
	movl	%edx,%r10d
	cmpl	%r10d,%eax
	jl	.Lj1048
	subl	$1,%r10d
	.balign 8,0x90
.Lj1038:
	addl	$1,%r10d
.Ll352:
# [854] adr:=$F000000+1792*j;
	imull	$1792,%r10d,%esi
	leal	251658240(%esi),%esi
	movl	%esi,%ebx
.Ll353:
# [855] for i:=x to x+l-1 do ramb^[adr+i]:=c;
	leal	(%ecx,%r8d),%esi
	leal	-1(%esi),%esi
	movl	%ecx,%edi
	cmpl	%edi,%esi
	jl	.Lj1044
	subl	$1,%edi
	.balign 8,0x90
.Lj1045:
	addl	$1,%edi
	movq	U_$RETRO_$$_R1(%rip),%r14
	movslq	%ebx,%r12
	movslq	%edi,%r13
	leaq	(%r12,%r13),%r13
	movb	%r11b,%r12b
	movb	%r12b,(%r14,%r13,1)
	cmpl	%edi,%esi
	jg	.Lj1045
.Lj1044:
.Ll354:
	cmpl	%r10d,%eax
	jg	.Lj1038
	jmp	.Lj1048
.Lj1033:
.Ll355:
# [858] else if (raml^[$18002]>=16) and (raml^[$18002]<32) then
	movq	U_$RETRO_$$_R1(%rip),%rax
.Ll356:
	movl	393224(%rax),%eax
.Ll357:
	cmpl	$16,%eax
	jnge	.Lj1050
	cmpl	$32,%eax
	jnl	.Lj1050
.Ll358:
# [860] for j:=y to y+h-1 do
	leal	(%edx,%r9d),%eax
	leal	-1(%eax),%eax
	movl	%edx,%r10d
	cmpl	%r10d,%eax
	jl	.Lj1068
	subl	$1,%r10d
	.balign 8,0x90
.Lj1058:
	addl	$1,%r10d
.Ll359:
# [862] adr:=$7800000+1792*j;
	imull	$1792,%r10d,%esi
	leal	125829120(%esi),%esi
	movl	%esi,%ebx
.Ll360:
# [863] for i:=x to x+l-1 do ramw^[adr+i]:=c;
	leal	(%ecx,%r8d),%esi
	leal	-1(%esi),%esi
	movl	%ecx,%edi
	cmpl	%edi,%esi
	jl	.Lj1064
	subl	$1,%edi
	.balign 8,0x90
.Lj1065:
	addl	$1,%edi
	movq	U_$RETRO_$$_R1(%rip),%r14
	movslq	%ebx,%r12
	movslq	%edi,%r13
	leaq	(%r12,%r13),%r13
	movw	%r11w,%r12w
	movw	%r12w,(%r14,%r13,2)
	cmpl	%edi,%esi
	jg	.Lj1065
.Lj1064:
.Ll361:
	cmpl	%r10d,%eax
	jg	.Lj1058
	jmp	.Lj1068
.Lj1050:
.Ll362:
# [868] for j:=y to y+h-1 do
	leal	(%edx,%r9d),%eax
	leal	-1(%eax),%eax
	movl	%edx,%r10d
	cmpl	%r10d,%eax
	jl	.Lj1072
	subl	$1,%r10d
	.balign 8,0x90
.Lj1073:
	addl	$1,%r10d
.Ll363:
# [870] adr:=$3c00000+1792*j;
	imull	$1792,%r10d,%edx
	leal	62914560(%edx),%edx
	movl	%edx,%ebx
.Ll364:
# [871] for i:=x to x+l-1 do raml^[adr+i]:=c;
	leal	(%ecx,%r8d),%edx
	leal	-1(%edx),%edx
	movl	%ecx,%edi
	cmpl	%edi,%edx
	jl	.Lj1079
	subl	$1,%edi
	.balign 8,0x90
.Lj1080:
	addl	$1,%edi
	movq	U_$RETRO_$$_R1(%rip),%r12
	movslq	%ebx,%r9
	movslq	%edi,%rsi
	leaq	(%r9,%rsi),%r9
	movl	%r11d,(%r12,%r9,4)
	cmpl	%edi,%edx
	jg	.Lj1080
.Lj1079:
.Ll365:
	cmpl	%r10d,%eax
	jg	.Lj1073
.Lj1072:
.Lj1068:
.Lj1048:
.Ll366:
# [874] end;
	movq	-48(%rbp),%rbx
	movq	-40(%rbp),%rdi
	movq	-32(%rbp),%rsi
	movq	-24(%rbp),%r12
	movq	-16(%rbp),%r13
	movq	-8(%rbp),%r14
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc65:
.Lt12:
.Ll367:

.section .text.n_retro_$$_box2$longint$longint$longint$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
.Lc69:
.seh_proc RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll368:
# [886] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc71:
.Lc72:
	movq	%rsp,%rbp
.Lc73:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
# Var x1 located in register eax
# Var y1 located in register edx
# Var x2 located in register r8d
# Var y2 located in register r9d
# Var color located in register ecx
.seh_endprologue
	movl	%ecx,%eax
	movl	48(%rbp),%ecx
.Ll369:
# [889] if (x1<x2) and (y1<y2) then
	cmpl	%r8d,%eax
	jnl	.Lj1086
	cmpl	%r9d,%edx
	jnl	.Lj1086
.Ll370:
# [890] box(x1,y1,x2-x1+1, y2-y1+1,color);
	movl	%ecx,32(%rsp)
	subl	%edx,%r9d
	leal	1(%r9d),%r9d
	subl	%eax,%r8d
	leal	1(%r8d),%r8d
	movl	%eax,%ecx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Lj1086:
.Ll371:
# [892] end;
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc70:
.Lt13:
.Ll372:

.section .text.n_retro_$$_putchar$longint$longint$char$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT
RETRO_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT:
.Lc74:
.seh_proc RETRO_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT
.Ll373:
# [910] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	pushq	%r14
.seh_pushreg %r14
	pushq	%r15
.seh_pushreg %r15
	leaq	-32(%rsp),%rsp
.Lc76:
.seh_stackalloc 32
# Var x located in register ebx
# Var y located in register esi
# Var ch located in register r8b
# Var col located in register edi
# Var i located in register r15d
# Var j located in register r14d
# Var start located in register r12d
# Var b located in register r13b
.seh_endprologue
	movl	%ecx,%ebx
	movl	%edx,%esi
	movl	%r9d,%edi
# PeepHole Optimization,var9
.Ll374:
# [911] start:=$50000+16*ord(ch);
	andl	$255,%r8d
	shll	$4,%r8d
	leal	327680(%r8d),%r12d
# Var start located in register r12d
# Var i located in register r15d
.Ll375:
# [912] for i:=0 to 15 do
	movl	$0,%r15d
	subl	$1,%r15d
	.balign 8,0x90
.Lj1104:
	addl	$1,%r15d
.Ll376:
# [914] b:=ramb^[start+i];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	%r12d,%rax
	movslq	%r15d,%rdx
	leaq	(%rax,%rdx),%rax
	movb	(%rcx,%rax,1),%r13b
.Ll377:
# [915] for j:=0 to 7 do
	movl	$0,%r14d
	subl	$1,%r14d
	.balign 8,0x90
.Lj1109:
	addl	$1,%r14d
.Ll378:
# [917] if (b and (1 shl j))<>0 then
	movslq	%r14d,%rcx
	movl	$1,%eax
	movslq	%ecx,%rcx
	shll	%cl,%eax
	movzbl	%r13b,%edx
	andl	%eax,%edx
	testl	%edx,%edx
	je	.Lj1111
.Ll379:
# [918] putpixel(x+j,y+i,col);
	leal	(%esi,%r15d),%edx
	leal	(%ebx,%r14d),%ecx
	movl	%edi,%r8d
	call	RETRO_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
.Lj1111:
.Ll380:
	cmpl	$7,%r14d
	jl	.Lj1109
.Ll381:
	cmpl	$15,%r15d
	jl	.Lj1104
.Ll382:
# [921] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc75:
.Lt8:
.Ll383:

.section .text.n_retro_$$_putcharz$longint$longint$char$longint$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT
RETRO_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT:
.Lc77:
# Temps allocated between rbp-104 and rbp+0
.seh_proc RETRO_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT
.Ll384:
# [930] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc79:
.Lc80:
	movq	%rsp,%rbp
.Lc81:
	leaq	-144(%rsp),%rsp
.seh_stackalloc 144
# Var x located in register eax
# Var y located in register eax
# Var ch located in register r8b
# Var col located in register eax
# Var xz located in register eax
# Var yz located in register eax
# Var i located in register r14d
# Var j located in register edi
# Var k located in register ebx
# Var l located in register esi
# Var start located in register eax
# Var b located in register r15b
	movq	%rbx,-104(%rbp)
	movq	%rdi,-96(%rbp)
	movq	%rsi,-88(%rbp)
	movq	%r12,-80(%rbp)
	movq	%r13,-72(%rbp)
	movq	%r14,-64(%rbp)
	movq	%r15,-56(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rdi, 48
.seh_savereg %rsi, 56
.seh_savereg %r12, 64
.seh_savereg %r13, 72
.seh_savereg %r14, 80
.seh_savereg %r15, 88
.seh_endprologue
	movl	%ecx,%eax
	movq	%rax,-48(%rbp)
	movl	%edx,%eax
	movq	%rax,-40(%rbp)
	movl	%r9d,%eax
	movq	%rax,-32(%rbp)
	movl	48(%rbp),%eax
	movq	%rax,-16(%rbp)
	movl	56(%rbp),%eax
	movq	%rax,-24(%rbp)
# PeepHole Optimization,var9
.Ll385:
# [931] start:=$50000+16*ord(ch);
	andl	$255,%r8d
	shll	$4,%r8d
	leal	327680(%r8d),%eax
# Var start located in register eax
	movl	%eax,%edx
	movq	%rdx,-8(%rbp)
# Var i located in register r14d
.Ll386:
# [932] for i:=0 to 15 do
	movl	$0,%r14d
	subl	$1,%r14d
	.balign 8,0x90
.Lj1124:
	addl	$1,%r14d
.Ll387:
# [934] b:=ramb^[start+i];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	-8(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	movb	(%rcx,%rax,1),%r15b
.Ll388:
# [935] for j:=0 to 7 do
	movl	$0,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj1129:
	addl	$1,%edi
.Ll389:
# [937] if (b and (1 shl j))<>0 then
	movslq	%edi,%rax
	movl	$1,%edx
	movl	%eax,%ecx
	movslq	%ecx,%rcx
	shll	%cl,%edx
	movzbl	%r15b,%eax
	andl	%edx,%eax
	testl	%eax,%eax
	je	.Lj1131
.Ll390:
# [938] for k:=0 to yz-1 do
	movl	-24(%rbp),%edx
	leal	-1(%edx),%eax
	movl	%eax,%r13d
	movl	$0,%ebx
	cmpl	%ebx,%r13d
	jl	.Lj1135
	subl	$1,%ebx
	.balign 8,0x90
.Lj1136:
	addl	$1,%ebx
.Ll391:
# [939] for l:=0 to xz-1 do
	movl	-16(%rbp),%eax
	leal	-1(%eax),%edx
	movl	%edx,%r12d
	movl	$0,%esi
	cmpl	%esi,%r12d
	jl	.Lj1140
	subl	$1,%esi
	.balign 8,0x90
.Lj1141:
	addl	$1,%esi
.Ll392:
# [940] putpixel(x+j*xz+l,y+i*yz+k,col);
	movl	-24(%rbp),%eax
	movl	%eax,%edx
	imull	%r14d,%edx
	movl	-40(%rbp),%ecx
	leal	(%edx,%ecx),%eax
	leal	(%eax,%ebx),%eax
	movl	%eax,%edx
	movl	-16(%rbp),%eax
	movl	%eax,%r8d
	imull	%edi,%r8d
	movl	-48(%rbp),%ecx
	leal	(%r8d,%ecx),%eax
	leal	(%eax,%esi),%eax
	movl	%eax,%ecx
	movl	-32(%rbp),%eax
	movl	%eax,%r8d
	call	RETRO_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
.Ll393:
	cmpl	%esi,%r12d
	jg	.Lj1141
.Lj1140:
.Ll394:
	cmpl	%ebx,%r13d
	jg	.Lj1136
.Lj1135:
.Lj1131:
.Ll395:
	cmpl	$7,%edi
	jl	.Lj1129
.Ll396:
	cmpl	$15,%r14d
	jl	.Lj1124
.Ll397:
# [943] end;
	movq	-104(%rbp),%rbx
	movq	-96(%rbp),%rdi
	movq	-88(%rbp),%rsi
	movq	-80(%rbp),%r12
	movq	-72(%rbp),%r13
	movq	-64(%rbp),%r14
	movq	-56(%rbp),%r15
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc78:
.Lt24:
.Ll398:

.section .text.n_retro$_$outtextxy$crc6744c382_$$_fin$0,"x"
	.balign 16,0x90
RETRO$_$OUTTEXTXY$crc6744C382_$$_fin$0:
.Lc82:
.seh_proc RETRO$_$OUTTEXTXY$crc6744C382_$$_fin$0
.Ll399:
# [949] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc84:
.Lc85:
	movq	%rcx,%rbp
.Lc86:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
# Var $parentfp located in register rbp
.seh_endprologue
.Ll400:
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc83:
.Lt10:
.Ll401:

.section .text.n_retro_$$_outtextxy$longint$longint$ansistring$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT:
.Lc87:
# Temps allocated between rbp-48 and rbp-8
.seh_proc RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
.Ll402:
	pushq	%rbp
.seh_pushreg %rbp
.Lc89:
.Lc90:
	movq	%rsp,%rbp
.Lc91:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
# Var x located in register ebx
# Var y located in register esi
# Var c located in register edi
# Var i located in register r13d
	movq	%rbx,-48(%rbp)
	movq	%rdi,-40(%rbp)
	movq	%rsi,-32(%rbp)
	movq	%r12,-24(%rbp)
	movq	%r13,-16(%rbp)
.seh_savereg %rbx, 32
.seh_savereg %rdi, 40
.seh_savereg %rsi, 48
.seh_savereg %r12, 56
.seh_savereg %r13, 64
.seh_endprologue
# Var t located at rbp-8, size=OS_64
	movl	%ecx,%ebx
	movl	%edx,%esi
	movq	%r8,-8(%rbp)
	movl	%r9d,%edi
	movq	-8(%rbp),%rcx
	call	fpc_ansistr_incr_ref
.Lj1156:
.Ll403:
# [950] for i:=1 to length(t) do putchar(x+8*i-8,y,t[i],c);
	nop
.Lj1152:
	movq	-8(%rbp),%r12
	testq	%r12,%r12
	je	.Lj1159
	movq	-8(%r12),%r12
.Lj1159:
	movl	$1,%r13d
	cmpl	%r13d,%r12d
	jl	.Lj1161
	subl	$1,%r13d
	.balign 8,0x90
.Lj1162:
	addl	$1,%r13d
	movl	%r13d,%eax
	shll	$3,%eax
	leal	(%eax,%ebx),%eax
	leal	-8(%eax),%ecx
	movq	-8(%rbp),%rdx
	movslq	%r13d,%rax
	movzbl	-1(%rdx,%rax,1),%r8d
	movl	%edi,%r9d
	movl	%esi,%edx
	call	RETRO_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT
	cmpl	%r13d,%r12d
	jg	.Lj1162
.Lj1161:
.Lj1171:
	nop
.Lj1153:
	movq	%rbp,%rcx
	call	RETRO$_$OUTTEXTXY$crc6744C382_$$_fin$0
.Ll404:
# [951] end;
	movq	-48(%rbp),%rbx
	movq	-40(%rbp),%rdi
	movq	-32(%rbp),%rsi
	movq	-24(%rbp),%r12
	movq	-16(%rbp),%r13
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj1152
	.rva	.Lj1153
	.rva	RETRO$_$OUTTEXTXY$crc6744C382_$$_fin$0

.section .text.n_retro_$$_outtextxy$longint$longint$ansistring$longint,"x"
.seh_endproc
.Lc88:
.Lt9:
.Ll405:

.section .text.n_retro$_$outtextxyz$crcca10a6fc_$$_fin$1,"x"
	.balign 16,0x90
RETRO$_$OUTTEXTXYZ$crcCA10A6FC_$$_fin$1:
.Lc92:
.seh_proc RETRO$_$OUTTEXTXYZ$crcCA10A6FC_$$_fin$1
.Ll406:
# [957] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc94:
.Lc95:
	movq	%rcx,%rbp
.Lc96:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
# Var $parentfp located in register rbp
.seh_endprologue
.Ll407:
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc93:
.Lt26:
.Ll408:

.section .text.n_retro_$$_outtextxyz$longint$longint$ansistring$longint$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT:
.Lc97:
# Temps allocated between rbp-64 and rbp-8
.seh_proc RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll409:
	pushq	%rbp
.seh_pushreg %rbp
.Lc99:
.Lc100:
	movq	%rsp,%rbp
.Lc101:
	leaq	-112(%rsp),%rsp
.seh_stackalloc 112
# Var x located in register r15d
# Var y located in register r14d
# Var c located in register ebx
# Var xz located in register esi
# Var yz located in register edi
# Var i located in register r13d
	movq	%rbx,-64(%rbp)
	movq	%rdi,-56(%rbp)
	movq	%rsi,-48(%rbp)
	movq	%r12,-40(%rbp)
	movq	%r13,-32(%rbp)
	movq	%r14,-24(%rbp)
	movq	%r15,-16(%rbp)
.seh_savereg %rbx, 48
.seh_savereg %rdi, 56
.seh_savereg %rsi, 64
.seh_savereg %r12, 72
.seh_savereg %r13, 80
.seh_savereg %r14, 88
.seh_savereg %r15, 96
.seh_endprologue
# Var t located at rbp-8, size=OS_64
	movl	%ecx,%r15d
	movl	%edx,%r14d
	movq	%r8,-8(%rbp)
	movl	%r9d,%ebx
	movl	48(%rbp),%esi
	movl	56(%rbp),%edi
	movq	-8(%rbp),%rcx
	call	fpc_ansistr_incr_ref
.Lj1182:
.Ll410:
# [958] for i:=0 to length(t)-1 do putcharz(x+8*xz*i,y,t[i+1],c,xz,yz);
	nop
.Lj1178:
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj1185
	movq	-8(%rax),%rax
.Lj1185:
	leaq	-1(%rax),%rax
	movl	%eax,%r12d
	movl	$0,%r13d
	cmpl	%r13d,%r12d
	jl	.Lj1187
	subl	$1,%r13d
	.balign 8,0x90
.Lj1188:
	addl	$1,%r13d
	movl	%edi,40(%rsp)
	movl	%esi,32(%rsp)
	movl	%esi,%eax
	shll	$3,%eax
	movl	%r13d,%edx
	imull	%eax,%edx
	leal	(%edx,%r15d),%ecx
	movq	-8(%rbp),%rdx
	movslq	%r13d,%rax
	leaq	1(%rax),%rax
	movzbl	-1(%rdx,%rax,1),%r8d
	movl	%ebx,%r9d
	movl	%r14d,%edx
	call	RETRO_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT
	cmpl	%r13d,%r12d
	jg	.Lj1188
.Lj1187:
.Lj1201:
	nop
.Lj1179:
	movq	%rbp,%rcx
	call	RETRO$_$OUTTEXTXYZ$crcCA10A6FC_$$_fin$1
.Ll411:
# [959] end;
	movq	-64(%rbp),%rbx
	movq	-56(%rbp),%rdi
	movq	-48(%rbp),%rsi
	movq	-40(%rbp),%r12
	movq	-32(%rbp),%r13
	movq	-24(%rbp),%r14
	movq	-16(%rbp),%r15
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj1178
	.rva	.Lj1179
	.rva	RETRO$_$OUTTEXTXYZ$crcCA10A6FC_$$_fin$1

.section .text.n_retro_$$_outtextxyz$longint$longint$ansistring$longint$longint$longint,"x"
.seh_endproc
.Lc98:
.Lt25:
.Ll412:

.section .text.n_retro_$$_scrollup,"x"
	.balign 16,0x90
.globl	RETRO_$$_SCROLLUP
RETRO_$$_SCROLLUP:
.Lc102:
# Var i located in register edx
# [965] begin
# Var i located in register edx
.Ll413:
# [966] for i:=0 to 447 do raml^[$3c7a800+i]:=raml^[$3c00000+i];
	movl	$0,%edx
	subl	$1,%edx
	.balign 8,0x90
.Lj1208:
	addl	$1,%edx
	movq	U_$RETRO_$$_R1(%rip),%r8
	movslq	%edx,%rax
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movl	251658240(%rcx,%rax,4),%ecx
	movl	%ecx,253665280(%r8,%rax,4)
	cmpl	$447,%edx
	jl	.Lj1208
# Var i located in register edx
.Ll414:
# [967] for i:=0 to 501760 do raml^[$3C00000+i]:=raml^[$3c001c0+i];
	movl	$0,%edx
	subl	$1,%edx
	.balign 8,0x90
.Lj1215:
	addl	$1,%edx
	movq	U_$RETRO_$$_R1(%rip),%r8
	movslq	%edx,%rax
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movl	251660032(%rcx,%rax,4),%ecx
	movl	%ecx,251658240(%r8,%rax,4)
	cmpl	$501760,%edx
	jl	.Lj1215
.Ll415:
# [968] end;
	ret
.Lc103:
.Lt27:
.Ll416:

.section .text.n_retro_$$_noise1$$byte,"x"
	.balign 16,0x90
.globl	RETRO_$$_NOISE1$$BYTE
RETRO_$$_NOISE1$$BYTE:
.Lc104:
# Var $result located in register al
# Var output located in register eax
# Var b located in register dl
# [987] begin
.Ll417:
# [988] output:= (a and b22) shr 15;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%edx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B22(%rip),%eax
	andl	%edx,%eax
	shrl	$15,%eax
# Var output located in register eax
.Ll418:
# [989] output+= (a and b20) shr 14;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%ecx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B20(%rip),%edx
	andl	%ecx,%edx
	shrl	$14,%edx
	leal	(%edx,%eax),%eax
# Var output located in register eax
.Ll419:
# [990] output+= (a and b16) shr 11;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%ecx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B16(%rip),%edx
	andl	%ecx,%edx
	shrl	$11,%edx
	leal	(%edx,%eax),%eax
# Var output located in register eax
.Ll420:
# [991] output+= (a and b13) shr 9;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%ecx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B13(%rip),%edx
	andl	%ecx,%edx
	shrl	$9,%edx
	leal	(%edx,%eax),%eax
# Var output located in register eax
.Ll421:
# [992] output+= (a and b11) shr 8;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%ecx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B11(%rip),%edx
	andl	%ecx,%edx
	shrl	$8,%edx
	leal	(%edx,%eax),%eax
# Var output located in register eax
.Ll422:
# [993] output+= (a and b07) shr 5;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%ecx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B07(%rip),%edx
	andl	%ecx,%edx
	shrl	$5,%edx
	leal	(%edx,%eax),%eax
# Var output located in register eax
.Ll423:
# [994] output+= (a and b04) shr 3;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%ecx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B04(%rip),%edx
	andl	%ecx,%edx
	shrl	$3,%edx
	leal	(%edx,%eax),%eax
# Var output located in register eax
.Ll424:
# [995] output+= (a and b02) shr 2;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%ecx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B02(%rip),%edx
	andl	%ecx,%edx
	shrl	$2,%edx
	leal	(%edx,%eax),%eax
# Var output located in register eax
.Ll425:
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%ecx
.Ll426:
# [997] b:=((a and b22)>0) xor ((a and b17)>0);
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B22(%rip),%edx
	andl	%ecx,%edx
	cmpl	$0,%edx
	setab	%r8b
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B17(%rip),%edx
	andl	%ecx,%edx
	cmpl	$0,%edx
	setab	%dl
	xorb	%r8b,%dl
# Var b located in register dl
# PeepHole Optimization,var2
# P=movl
# HP1=shll
# HP2=movl
# PeepHole Optimization,var2
.Ll427:
# [998] a:=a shl 1;
	shll	$1,TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip)
.Ll428:
# [999] if b then a:=a or 1;
	testb	%dl,%dl
	je	.Lj1245
# PeepHole Optimization,var2
# P=movl
# HP1=orl
# HP2=movl
# PeepHole Optimization,var2
	orl	$1,TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip)
.Lj1245:
# Var $result located in register al
# PeepHole Optimization,var9
.Ll429:
# [1001] end;
	andl	$255,%eax
	ret
.Lc105:
.Lt43:
.Ll430:

.section .text.n_retro_$$_noise2$$longword,"x"
	.balign 16,0x90
.globl	RETRO_$$_NOISE2$$LONGWORD
RETRO_$$_NOISE2$$LONGWORD:
.Lc106:
# Var $result located in register eax
# Var output located in register rax
# Var b located in register dl
# [1011] begin
.Ll431:
# [1012] output:= (a and 4194304) shr 15;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rax
	andq	$4194304,%rax
	shrq	$15,%rax
# Var output located in register rax
.Ll432:
# [1013] output+= (a and 1048576) shr 14;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rdx
	andq	$1048576,%rdx
	shrq	$14,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll433:
# [1014] output+= (a and 65536) shr 11;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rdx
	andq	$65536,%rdx
	shrq	$11,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll434:
# [1015] output+= (a and 8192) shr 9;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rdx
	andq	$8192,%rdx
	shrq	$9,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll435:
# [1016] output+= (a and 2048) shr 8;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rdx
	andq	$2048,%rdx
	shrq	$8,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll436:
# [1017] output+= (a and 128) shr 5;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rdx
	andq	$128,%rdx
	shrq	$5,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll437:
# [1018] output+= (a and 16) shr 3;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rdx
	andq	$16,%rdx
	shrq	$3,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll438:
# [1019] output+= (a and 4) shr 2;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rdx
	andq	$4,%rdx
	shrq	$2,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll439:
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rcx
.Ll440:
# [1020] b:=((a and 4194304)>0) xor ((a and 131072)>0);
	movq	%rcx,%rdx
	andq	$4194304,%rdx
	cmpq	$0,%rdx
	setgb	%r8b
	andq	$131072,%rcx
	cmpq	$0,%rcx
	setgb	%dl
	xorb	%r8b,%dl
# Var b located in register dl
# PeepHole Optimization,var2
# P=movq
# HP1=shlq
# HP2=movq
# PeepHole Optimization,var2
.Ll441:
# [1021] a:=a shl 1;
	shlq	$1,TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip)
.Ll442:
# [1022] if b then a:=a or 1;
	testb	%dl,%dl
	je	.Lj1275
# PeepHole Optimization,var2
# P=movq
# HP1=orq
# HP2=movq
# PeepHole Optimization,var2
	orq	$1,TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip)
.Lj1275:
# Var $result located in register eax
.Ll443:
# [1024] end;
	ret
.Lc107:
.Lt29:
.Ll444:

.section .text.n_retro_$$_noise3$$longword,"x"
	.balign 16,0x90
.globl	RETRO_$$_NOISE3$$LONGWORD
RETRO_$$_NOISE3$$LONGWORD:
.Lc108:
# Var $result located in register eax
# Var output located in register rax
# Var b located in register dl
# [1042] begin
.Ll445:
# [1043] output:= (a and b22) shr 15;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rdx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B22(%rip),%rax
	andq	%rdx,%rax
	shrq	$15,%rax
# Var output located in register rax
.Ll446:
# [1044] output+= (a and b20) shr 14;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rcx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B20(%rip),%rdx
	andq	%rcx,%rdx
	shrq	$14,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll447:
# [1045] output+= (a and b16) shr 11;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rcx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B16(%rip),%rdx
	andq	%rcx,%rdx
	shrq	$11,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll448:
# [1046] output+= (a and b13) shr 9;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rcx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B13(%rip),%rdx
	andq	%rcx,%rdx
	shrq	$9,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll449:
# [1047] output+= (a and b11) shr 8;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rcx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B11(%rip),%rdx
	andq	%rcx,%rdx
	shrq	$8,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll450:
# [1048] output+= (a and b07) shr 5;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rcx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B07(%rip),%rdx
	andq	%rcx,%rdx
	shrq	$5,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll451:
# [1049] output+= (a and b04) shr 3;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rcx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B04(%rip),%rdx
	andq	%rcx,%rdx
	shrq	$3,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll452:
# [1050] output+= (a and b02) shr 2;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rcx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B02(%rip),%rdx
	andq	%rcx,%rdx
	shrq	$2,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll453:
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rcx
.Ll454:
# [1052] b:=((a and b22)>0) xor ((a and b17)>0);
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B22(%rip),%rdx
	andq	%rcx,%rdx
	cmpq	$0,%rdx
	setgb	%r8b
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B17(%rip),%rdx
	andq	%rcx,%rdx
	cmpq	$0,%rdx
	setgb	%dl
	xorb	%r8b,%dl
# Var b located in register dl
# PeepHole Optimization,var2
# P=movq
# HP1=shlq
# HP2=movq
# PeepHole Optimization,var2
.Ll455:
# [1053] a:=a shl 1;
	shlq	$1,TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip)
.Ll456:
# [1054] if b then a:=a or 1;
	testb	%dl,%dl
	je	.Lj1305
# PeepHole Optimization,var2
# P=movq
# HP1=orq
# HP2=movq
# PeepHole Optimization,var2
	orq	$1,TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip)
.Lj1305:
# Var $result located in register eax
.Ll457:
# [1056] end;
	ret
.Lc109:
.Lt30:
.Ll458:

.section .text.n_retro_$$_sid$longint$$tsample,"x"
	.balign 16,0x90
.globl	RETRO_$$_SID$LONGINT$$TSAMPLE
RETRO_$$_SID$LONGINT$$TSAMPLE:
.Lc110:
# Temps allocated between rsp+32 and rsp+88
.seh_proc RETRO_$$_SID$LONGINT$$TSAMPLE
.Ll459:
# [1216] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	pushq	%r14
.seh_pushreg %r14
	pushq	%r15
.seh_pushreg %r15
	pushq	%rbp
.seh_pushreg %rbp
	leaq	-88(%rsp),%rsp
.Lc112:
.seh_stackalloc 88
# Var mode located in register edx
# Var $result located in register rax
# Var i located in register eax
# Var sid1 located in register esi
# Var sid1l located in register ebx
# Var ind located in register r15d
# Var st located in register rax
# Var pp1 located in register al
# Var pp2 located in register al
# Var pp3 located in register al
# Var fout located in register xmm0
# Var fout2 located in register xmm0
# Var fout3 located in register xmm0
# Var fi located in register xmm0
# Var fi2 located in register xmm0
# Var fi3 located in register xmm0
# Var wv1a located in register xmm0
# Var wv2a located in register xmm0
# Var wv3a located in register xmm0
# Var wv1ii located in register r14
# Var wv2ii located in register r13
# Var wv3ii located in register r12
# Var fii located in register eax
# Var fi2i located in register ebp
# Var fi3i located in register eax
# Var fouti located in register esi
# Var fout2i located in register ebx
# Var fout3i located in register edi
.seh_endprologue
	movq	%rcx,80(%rsp)
.Ll460:
# [1217] if mode=1 then  // get regs
	cmpl	$1,%edx
	jne	.Lj1313
.Ll461:
# [1220] freq1i:=(31928*(ramb^[$D400]+256*ramb^[$d401])) div 32768;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54273(%rax),%edx
	shll	$8,%edx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54272(%rax),%eax
	leal	(%edx,%eax),%eax
	imull	$31928,%eax,%eax
	shrl	$15,%eax
# PeepHole Optimization,MovMov2Mov1
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1I(%rip)
.Ll462:
# [1221] freq1ni:=freq1i*16;
	shll	$4,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1NI(%rip)
.Ll463:
# [1222] freq2i:=(31928*(ramb^[$d407]+256*ramb^[$d408])) div 32768;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54280(%rax),%edx
	shll	$8,%edx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54279(%rax),%eax
	leal	(%edx,%eax),%eax
	imull	$31928,%eax,%eax
	shrl	$15,%eax
# PeepHole Optimization,MovMov2Mov1
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2I(%rip)
.Ll464:
# [1223] freq2ni:=freq2i*16;
	shll	$4,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2NI(%rip)
.Ll465:
# [1224] freq3i:=(31928*(ramb^[$d40e]+256*ramb^[$d40f])) div 32768;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54287(%rax),%eax
	shll	$8,%eax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movzbl	54286(%rdx),%edx
	leal	(%eax,%edx),%eax
	imull	$31928,%eax,%eax
	shrl	$15,%eax
# PeepHole Optimization,MovMov2Mov1
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3I(%rip)
.Ll466:
# [1225] freq3ni:=freq3i*16;
	shll	$4,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3NI(%rip)
.Ll467:
# [1227] gate1:=ramb^[$d404] and 1;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54276(%rax),%ax
	andw	$1,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE1(%rip)
.Ll468:
# [1228] ring1:=ramb^[$d404] and 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54276(%rax),%ax
	andw	$4,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING1(%rip)
.Ll469:
# [1229] test1:=ramb^[$d404] and 8;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54276(%rax),%ax
	andw	$8,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST1(%rip)
.Ll470:
# [1230] sync1:=((ramb^[$d404] and 2) shr 1)-1;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54276(%rax),%ax
	andw	$2,%ax
	movswl	%ax,%eax
	shrl	$1,%eax
	leal	-1(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC1(%rip)
.Ll471:
# [1231] sd1:=ramb^[$d405] and  $F;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54277(%rax),%ax
	andw	$15,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD1(%rip)
.Ll472:
# [1232] sa1:=ramb^[$d405] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54277(%rax),%eax
	shrl	$4,%eax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA1(%rip)
.Ll473:
# [1233] sr1:=ramb^[$d406]and $F;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54278(%rax),%ax
	andw	$15,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR1(%rip)
.Ll474:
# [1234] ss1:=ramb^[$d406] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54278(%rax),%eax
	shrl	$4,%eax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS1(%rip)
.Ll475:
# [1235] pw1i:=((ramb^[$d402]+256*ramb^[$d403]) and $FFF);
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54275(%rax),%edx
	shll	$8,%edx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54274(%rax),%eax
	leal	(%edx,%eax),%eax
	andl	$4095,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW1I(%rip)
.Ll476:
# [1237] gate2:=ramb^[$d40b] and 1;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54283(%rax),%ax
	andw	$1,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE2(%rip)
.Ll477:
# [1238] ring2:=ramb^[$d40b] and 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54283(%rax),%ax
	andw	$4,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING2(%rip)
.Ll478:
# [1239] test2:=ramb^[$d40b] and 8;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54283(%rax),%ax
	andw	$8,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST2(%rip)
.Ll479:
# [1240] sync2:=((ramb^[$d40b] and 2) shr 1)-1;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54283(%rax),%ax
	andw	$2,%ax
	movswl	%ax,%eax
	shrl	$1,%eax
	leal	-1(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC2(%rip)
.Ll480:
# [1241] sd2:=ramb^[$d40c] and  $F;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54284(%rax),%ax
	andw	$15,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD2(%rip)
.Ll481:
# [1242] sa2:=ramb^[$d40c] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54284(%rax),%eax
	shrl	$4,%eax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA2(%rip)
.Ll482:
# [1243] sr2:=ramb^[$d40d]and $F;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54285(%rax),%ax
	andw	$15,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR2(%rip)
.Ll483:
# [1244] ss2:=ramb^[$d40d] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54285(%rax),%eax
	shrl	$4,%eax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS2(%rip)
.Ll484:
# [1245] pw2i:=((ramb^[$d409]+256*ramb^[$d40a]) and $FFF);
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54282(%rax),%edx
	shll	$8,%edx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54281(%rax),%eax
	leal	(%edx,%eax),%eax
	andl	$4095,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW2I(%rip)
.Ll485:
# [1247] gate3:=ramb^[$d412] and 1;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54290(%rax),%ax
	andw	$1,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE3(%rip)
.Ll486:
# [1248] ring3:=ramb^[$d412] and 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54290(%rax),%ax
	andw	$4,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING3(%rip)
.Ll487:
# [1249] test3:=ramb^[$d412] and 8;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54290(%rax),%ax
	andw	$8,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST3(%rip)
.Ll488:
# [1250] sync3:=((ramb^[$d412] and 2) shr 1)-1;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54290(%rax),%ax
	andw	$2,%ax
	movswl	%ax,%eax
	shrl	$1,%eax
	leal	-1(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC3(%rip)
.Ll489:
# [1251] sd3:=ramb^[$d413] and  $F;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54291(%rax),%ax
	andw	$15,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD3(%rip)
.Ll490:
# [1252] sa3:=ramb^[$d413] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54291(%rax),%eax
	shrl	$4,%eax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA3(%rip)
.Ll491:
# [1253] sr3:=ramb^[$d414]and $F;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54292(%rax),%ax
	andw	$15,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR3(%rip)
.Ll492:
# [1254] ss3:=ramb^[$d414] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54292(%rax),%eax
	shrl	$4,%eax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS3(%rip)
.Ll493:
# [1255] pw3i:=((ramb^[$d410]+256*ramb^[$d411]) and $FFF);
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54289(%rax),%edx
	shll	$8,%edx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54288(%rax),%eax
	leal	(%edx,%eax),%eax
	andl	$4095,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW3I(%rip)
.Ll494:
# [1257] ff:=(ramb^[$d416] shl 3)+(ramb^[$d415] and 7);
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54293(%rax),%ax
	andw	$7,%ax
	movswl	%ax,%eax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movzbl	54294(%rdx),%edx
	shll	$3,%edx
	leal	(%eax,%edx),%eax
# PeepHole Optimization,MovMov2MovMov1
	movw	%ax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FF(%rip)
.Ll495:
	movw	%ax,%dx
.Ll496:
# [1258] filter_freqi:=(ff+(ff shl 2)+30) shr 2;
	movzwl	%dx,%eax
	shll	$2,%eax
	andl	$4294967295,%eax
# PeepHole Optimization,var11
	andl	$65535,%edx
	leaq	(%rax,%rdx),%rax
	leaq	30(%rax),%rax
	shrq	$2,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI(%rip)
.Ll497:
# [1259] if (ramb^[$d417] and 1)>0 then f1:=true else f1:=false;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54295(%rax),%ax
	andw	$1,%ax
	cmpw	$0,%ax
	jng	.Lj1387
	movb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F1(%rip)
	jmp	.Lj1390
.Lj1387:
	movb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F1(%rip)
.Lj1390:
.Ll498:
# [1260] if (ramb^[$d417]  and 2)>0 then f2:=true else f2:=false;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54295(%rax),%ax
	andw	$2,%ax
	cmpw	$0,%ax
	jng	.Lj1394
	movb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F2(%rip)
	jmp	.Lj1397
.Lj1394:
	movb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F2(%rip)
.Lj1397:
.Ll499:
# [1261] if (ramb^[$d417]  and 4)>0 then f3:=true else f3:=false;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54295(%rax),%ax
	andw	$4,%ax
	cmpw	$0,%ax
	jng	.Lj1401
	movb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F3(%rip)
	jmp	.Lj1404
.Lj1401:
	movb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F3(%rip)
.Lj1404:
.Ll500:
# [1262] fl:=-(ramb^[$d418] and $10) shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54296(%rax),%ax
	andw	$16,%ax
	movswq	%ax,%rax
	negq	%rax
	shrq	$4,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FL(%rip)
.Ll501:
# [1263] fb:=-(ramb^[$d418] and $20) shr 5;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54296(%rax),%ax
	andw	$32,%ax
	movswq	%ax,%rax
	negq	%rax
	shrq	$5,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FB(%rip)
.Ll502:
# [1264] fu:=-(ramb^[$d418] and $40) shr 6;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54296(%rax),%ax
	andw	$64,%ax
	movswq	%ax,%rax
	negq	%rax
	shrq	$6,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FU(%rip)
.Ll503:
# [1265] filter_resonance2i:=round(256*(0.5+(0.5/(1+(peek($d416) shr 4)))));
	movl	$54294,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	shrl	$4,%eax
	andl	$4294967295,%eax
	leaq	1(%rax),%rax
	cvtsi2ss	%rax,%xmm1
	movss	_$RETRO$_Ld17(%rip),%xmm0
	divss	%xmm1,%xmm0
	addss	_$RETRO$_Ld17(%rip),%xmm0
	mulss	_$RETRO$_Ld16(%rip),%xmm0
	cvtss2sd	%xmm0,%xmm0
	cvtsd2siq	%xmm0,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I(%rip)
.Ll504:
# [1266] volume:=(peek($d418) and 15);
	movl	$54296,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
# PeepHole Optimization,var7
# PeepHole Optimization,var1
	andw	$15,%ax
	movswl	%ax,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_VOLUME(%rip)
.Ll505:
# [1268] waveform1:=ramb^[$d404] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54276(%rax),%eax
	shrl	$4,%eax
	movw	%ax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1(%rip)
.Ll506:
# [1269] waveform2:=ramb^[$d40b] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54283(%rax),%eax
	shrl	$4,%eax
	movw	%ax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2(%rip)
.Ll507:
# [1270] waveform3:=ramb^[$d412] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54290(%rax),%eax
	shrl	$4,%eax
	movw	%ax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3(%rip)
.Ll508:
# [1272] sustainvol1i:=ss1 shl 26;
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS1(%rip),%eax
	shll	$26,%eax
	andl	$4294967295,%eax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL1I(%rip)
.Ll509:
# [1273] sustainvol2i:=ss2 shl 26;
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS2(%rip),%eax
	shll	$26,%eax
	andl	$4294967295,%eax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL2I(%rip)
.Ll510:
# [1274] sustainvol3i:=ss3 shl 26;
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS3(%rip),%eax
	shll	$26,%eax
	andl	$4294967295,%eax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL3I(%rip)
.Lj1313:
.Ll511:
# [1277] sli:=0; sri:=0;
	movl	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SLI(%rip)
	movl	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SRI(%rip)
# Var i located in register eax
.Ll512:
# [1279] for i:=1 to 5 do
	movl	$1,%eax
	movq	%rax,72(%rsp)
# PeepHole Optimization,var2
# P=movl
# HP1=subl
# HP2=movq
# PeepHole Optimization,var2
	subl	$1,72(%rsp)
	.balign 8,0x90
.Lj1439:
# PeepHole Optimization,var2
# P=movl
# HP1=addl
# HP2=movq
# PeepHole Optimization,var2
	addl	$1,72(%rsp)
.Ll513:
# [1282] pa1i:=pa1i+freq1i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1I(%rip),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip)
.Ll514:
# [1283] pa1ni:=pa1ni+freq1ni;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1NI(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1NI(%rip),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1NI(%rip)
.Ll515:
# [1284] if pa1i>16777216 then
	cmpl	$16777216,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip)
	jng	.Lj1445
.Ll516:
# [1286] pa2i:=pa2i and sync2;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC2(%rip),%eax
	andl	%edx,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip)
.Ll517:
# [1287] pa1i-=16777216;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	leal	-16777216(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip)
.Lj1445:
.Ll518:
# [1289] if pa1ni>=16777216 then
	cmpl	$16777216,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1NI(%rip)
	jnge	.Lj1451
.Ll519:
# [1291] pa1ni-=16777216;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1NI(%rip),%eax
	leal	-16777216(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1NI(%rip)
.Ll520:
# [1292] pp1:=1;
	movb	$1,64(%rsp)
	jmp	.Lj1456
.Lj1451:
.Ll521:
# [1294] else pp1:=0;
	movb	$0,64(%rsp)
.Lj1456:
.Ll522:
# [1296] pa2i:=pa2i+freq2i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2I(%rip),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip)
.Ll523:
# [1297] pa2ni:=pa2ni+freq2ni;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2NI(%rip),%eax
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2NI(%rip),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2NI(%rip)
.Ll524:
# [1298] if pa2i>16777216 then
	cmpl	$16777216,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip)
	jng	.Lj1464
.Ll525:
# [1300] pa2i-=16777216;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	leal	-16777216(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip)
.Ll526:
# [1301] pa3i:=pa3i and sync3;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC3(%rip),%eax
	andl	%edx,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip)
.Lj1464:
.Ll527:
# [1303] if pa2ni>=16777216 then
	cmpl	$16777216,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2NI(%rip)
	jnge	.Lj1470
.Ll528:
# [1305] pa2ni-=16777216;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2NI(%rip),%eax
	leal	-16777216(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2NI(%rip)
.Ll529:
# [1306] pp2:=1;
	movb	$1,56(%rsp)
	jmp	.Lj1475
.Lj1470:
.Ll530:
# [1308] else pp2:=0;
	movb	$0,56(%rsp)
.Lj1475:
.Ll531:
# [1310] pa3i:=pa3i+freq3i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3I(%rip),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip)
.Ll532:
# [1311] pa3ni:=pa3ni+freq3ni;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3NI(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3NI(%rip),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3NI(%rip)
.Ll533:
# [1312] if pa3i>16777216 then begin pa3i-=16777216;  pa1i:=pa1i and sync1; end ;
	cmpl	$16777216,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip)
	jng	.Lj1483
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	leal	-16777216(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip)
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC1(%rip),%eax
	andl	%edx,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip)
.Lj1483:
.Ll534:
# [1313] if pa3ni>=16777216 then
	cmpl	$16777216,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3NI(%rip)
	jnge	.Lj1489
.Ll535:
# [1315] pa3ni-=16777216;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3NI(%rip),%eax
	leal	-16777216(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3NI(%rip)
.Ll536:
# [1316] pp3:=1;
	movb	$1,48(%rsp)
	jmp	.Lj1494
.Lj1489:
.Ll537:
# [1318] else pp3:=0;
	movb	$0,48(%rsp)
.Lj1494:
.Ll538:
# [1322] if test1>0 then pa1i:=0;
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST1(%rip)
	jna	.Lj1498
	movl	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip)
.Lj1498:
.Ll539:
# [1323] if test2>0 then pa2i:=0;
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST2(%rip)
	jna	.Lj1502
	movl	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip)
.Lj1502:
.Ll540:
# [1324] if test3>0 then pa3i:=0;
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST3(%rip)
	jna	.Lj1506
	movl	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip)
.Lj1506:
.Ll541:
# [1327] case waveform1 of
	movw	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1(%rip),%ax
	cmpw	$15,%ax
	ja	.Lj1510
# PeepHole Optimization,var11
	andl	$65535,%eax
	leaq	.Ld18(%rip),%rdx
	movslq	(%rdx,%rax,4),%rax
	leaq	(%rdx,%rax,1),%rax
	jmp	*%rax
.Lj1511:
	jmp	.Lj1509
.Lj1512:
.Ll542:
# [1330] 1: begin if (pa1i shr 23 = 0) then wv1i:=(pa1i shl 1)-8388608 else wv1i:=((not (pa1i shl 1)) and $FFFFFF)-8388608; if (ring1>0) and (pa3>0) then wv1i:=-wv1i; end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shrl	$23,%eax
	testl	%eax,%eax
	jne	.Lj1524
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shll	$1,%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1527
.Lj1524:
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shll	$1,%eax
	notl	%eax
	andl	$16777215,%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
.Lj1527:
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING1(%rip)
	jna	.Lj1509
	movsd	_$RETRO$_Ld19(%rip),%xmm0
	comisd	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3(%rip),%xmm0
	jp	.Lj1509
	jnb	.Lj1509
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip),%rax
	negq	%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1509
.Lj1513:
.Ll543:
# [1331] 2: wv1i:=pa1i-8388608;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1509
.Lj1514:
.Ll544:
# [1332] 3: begin ind:=pa1i shr 16; wv1i:=((combined[ind]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shrl	$16,%eax
# PeepHole Optimization,MovMov2Mov1
	movl	%eax,%r15d
# PeepHole Optimization,var2a
	movl	%eax,%edx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rax
	movzbl	(%rax,%rdx,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1509
.Lj1515:
.Ll545:
# [1333] 4: if (pa1i shr 12) < pw1i then wv1i:=-8388608 else wv1i:=8388608;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shrl	$12,%eax
	cmpl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW1I(%rip),%eax
	jnl	.Lj1543
	movl	$-8388608,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1509
.Lj1543:
	movl	$8388608,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1509
.Lj1516:
.Ll546:
# [1334] 5: begin ind:=pa1i shr 16; wv1i:=((combined[ind+256]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,%r15d
	movslq	%r15d,%rax
	leaq	U_$RETRO_$$_COMBINED(%rip),%rdx
	movzbl	256(%rdx,%rax,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1509
.Lj1517:
.Ll547:
# [1335] 6: begin ind:=pa1i shr 16; wv1i:=((combined[ind+512]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,%r15d
	movslq	%r15d,%rdx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rax
	movzbl	512(%rax,%rdx,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1509
.Lj1518:
.Ll548:
# [1336] 7: begin ind:=pa1i shr 16; wv1i:=((combined[ind+768]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,%r15d
	movslq	%r15d,%rdx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rax
	movzbl	768(%rax,%rdx,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1509
.Lj1519:
.Ll549:
# [1337] 8: begin if pp1=1 then wv1i:=(noise1-128) shl 16; end;
	cmpb	$1,64(%rsp)
	jne	.Lj1509
	call	RETRO_$$_NOISE1$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1509
.Lj1520:
.Ll550:
# [1338] 9: wv1i:=pa1i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1509
.Lj1521:
.Ll551:
# [1339] 10: wv1i:=pa1i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1509
.Lj1522:
.Ll552:
# [1340] 11..15: wv1i:=pa1i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1509
.Lj1510:
.Ll553:
# [1341] else begin if pp1=1 then wv1i:=(noise1-128) shl 16; end;
	cmpb	$1,64(%rsp)
	jne	.Lj1572
	call	RETRO_$$_NOISE1$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
.Lj1572:
.Lj1509:
.Ll554:
# [1345] case waveform2 of
	movw	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2(%rip),%ax
	cmpw	$15,%ax
	ja	.Lj1576
# PeepHole Optimization,var11
	andl	$65535,%eax
	leaq	.Ld20(%rip),%rdx
	movslq	(%rdx,%rax,4),%rax
	leaq	(%rdx,%rax,1),%rax
	jmp	*%rax
.Lj1577:
	jmp	.Lj1575
.Lj1578:
.Ll555:
# [1348] 1: begin if (pa2i shr 23 = 0) then wv2i:=(pa2i shl 1)-8388608 else wv2i:=((not (pa2i shl 1)) and $FFFFFF)-8388608; if (ring2>0) and (pa1>0) then wv2i:=-wv2i; end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shrl	$23,%eax
	testl	%eax,%eax
	jne	.Lj1590
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shll	$1,%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1593
.Lj1590:
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shll	$1,%eax
	notl	%eax
	andl	$16777215,%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
.Lj1593:
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING2(%rip)
	jna	.Lj1575
	movsd	_$RETRO$_Ld19(%rip),%xmm0
	comisd	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1(%rip),%xmm0
	jp	.Lj1575
	jnb	.Lj1575
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip),%rax
	negq	%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1575
.Lj1579:
.Ll556:
# [1349] 2: wv2i:=pa2i-8388608;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1575
.Lj1580:
.Ll557:
# [1350] 3: begin ind:=pa2i shr 16; wv2i:=((combined[ind]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shrl	$16,%eax
# PeepHole Optimization,MovMov2Mov1
	movl	%eax,%r15d
	andl	$4294967295,%eax
	leaq	U_$RETRO_$$_COMBINED(%rip),%rdx
	movzbl	(%rdx,%rax,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1575
.Lj1581:
.Ll558:
# [1351] 4: if (pa2i shr 12) < pw2i then wv2i:=-8388608 else wv2i:=8388608;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shrl	$12,%eax
	cmpl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW2I(%rip),%eax
	jnl	.Lj1609
	movl	$-8388608,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1575
.Lj1609:
	movl	$8388608,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1575
.Lj1582:
.Ll559:
# [1352] 5: begin ind:=pa2i shr 16; wv2i:=((combined[ind+256]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,%r15d
	movslq	%r15d,%rdx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rax
	movzbl	256(%rax,%rdx,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1575
.Lj1583:
.Ll560:
# [1353] 6: begin ind:=pa2i shr 16; wv2i:=((combined[ind+512]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,%r15d
	movslq	%r15d,%rdx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rax
	movzbl	512(%rax,%rdx,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1575
.Lj1584:
.Ll561:
# [1354] 7: begin ind:=pa2i shr 16; wv2i:=((combined[ind+768]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,%r15d
	movslq	%r15d,%rdx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rax
	movzbl	768(%rax,%rdx,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1575
.Lj1585:
.Ll562:
# [1355] 8: begin if pp2=1 then wv2i:=(noise2-128) shl 16; end;
	cmpb	$1,56(%rsp)
	jne	.Lj1575
	call	RETRO_$$_NOISE2$$LONGWORD
	andl	$4294967295,%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1575
.Lj1586:
.Ll563:
# [1356] 9: wv2i:=pa2i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1575
.Lj1587:
.Ll564:
# [1357] 10: wv2i:=pa2i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1575
.Lj1588:
.Ll565:
# [1358] 11..15: wv2i:=pa2i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1575
.Lj1576:
.Ll566:
# [1359] else begin if pp2=1 then wv2i:=(noise2-128) shl 16; end;
	cmpb	$1,56(%rsp)
	jne	.Lj1638
	call	RETRO_$$_NOISE2$$LONGWORD
	andl	$4294967295,%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
.Lj1638:
.Lj1575:
.Ll567:
# [1362] case waveform3 of
	movw	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3(%rip),%ax
	cmpw	$15,%ax
	ja	.Lj1642
# PeepHole Optimization,var11
	andl	$65535,%eax
	leaq	.Ld21(%rip),%rdx
	movslq	(%rdx,%rax,4),%rax
	leaq	(%rdx,%rax,1),%rax
	jmp	*%rax
.Lj1643:
	jmp	.Lj1641
.Lj1644:
.Ll568:
# [1365] 1: begin if (pa3i shr 23 = 0) then wv3i:=(pa3i shl 1)-8388608 else wv3i:=((not (pa3i shl 1)) and $FFFFFF)-8388608; if (ring3>0) and (pa2>0) then wv3i:=-wv3i; end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shrl	$23,%eax
	testl	%eax,%eax
	jne	.Lj1656
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shll	$1,%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1659
.Lj1656:
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shll	$1,%eax
	notl	%eax
	andl	$16777215,%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
.Lj1659:
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING3(%rip)
	jna	.Lj1641
	movsd	_$RETRO$_Ld19(%rip),%xmm0
	comisd	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2(%rip),%xmm0
	jp	.Lj1641
	jnb	.Lj1641
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip),%rax
	negq	%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1641
.Lj1645:
.Ll569:
# [1366] 2: wv3i:=pa3i-8388608;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1641
.Lj1646:
.Ll570:
# [1367] 3: begin ind:=pa3i shr 16; wv3i:=((combined[ind]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shrl	$16,%eax
# PeepHole Optimization,MovMov2Mov1
	movl	%eax,%r15d
# PeepHole Optimization,var2a
	movl	%eax,%edx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rax
	movzbl	(%rax,%rdx,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1641
.Lj1647:
.Ll571:
# [1368] 4: if (pa3i shr 12) < pw3i then wv3i:=-8388608 else wv3i:=8388608;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shrl	$12,%eax
	cmpl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW3I(%rip),%eax
	jnl	.Lj1675
	movl	$-8388608,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1641
.Lj1675:
	movl	$8388608,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1641
.Lj1648:
.Ll572:
# [1369] 5: begin ind:=pa3i shr 16; wv3i:=((combined[ind+256]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,%r15d
	movslq	%r15d,%rax
	leaq	U_$RETRO_$$_COMBINED(%rip),%rdx
	movzbl	256(%rdx,%rax,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1641
.Lj1649:
.Ll573:
# [1370] 6: begin ind:=pa3i shr 16; wv3i:=((combined[ind+512]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,%r15d
	movslq	%r15d,%rax
	leaq	U_$RETRO_$$_COMBINED(%rip),%rdx
	movzbl	512(%rdx,%rax,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1641
.Lj1650:
.Ll574:
# [1371] 7: begin ind:=pa3i shr 16; wv3i:=((combined[ind+768]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,%r15d
	movslq	%r15d,%rax
	leaq	U_$RETRO_$$_COMBINED(%rip),%rdx
	movzbl	768(%rdx,%rax,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1641
.Lj1651:
.Ll575:
# [1372] 8: begin if pp3=1 then wv3i:=(noise3-128) shl 16; end;
	cmpb	$1,48(%rsp)
	jne	.Lj1641
	call	RETRO_$$_NOISE3$$LONGWORD
	andl	$4294967295,%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1641
.Lj1652:
	jmp	.Lj1641
.Lj1653:
	jmp	.Lj1641
.Lj1654:
	jmp	.Lj1641
.Lj1642:
.Ll576:
# [1376] else begin if pp3=1 then wv3i:=(noise3-128) shl 16; end;
	cmpb	$1,48(%rsp)
	jne	.Lj1698
	call	RETRO_$$_NOISE3$$LONGWORD
	andl	$4294967295,%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
.Lj1698:
.Lj1641:
.Ll577:
# [1380] if gate1=0 then adsrstate1:=4 else begin if ((adsrstate1=0) or (adsrstate1=4)) then adsrstate1:=1; end;  //release /attack
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE1(%rip)
	jne	.Lj1702
	movb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jmp	.Lj1705
.Lj1702:
.Ll578:
	movb	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip),%al
.Ll579:
	testb	%al,%al
	je	.Lj1706
	cmpb	$4,%al
	jne	.Lj1707
.Lj1706:
	movb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
.Lj1707:
.Lj1705:
.Ll580:
# [1382] if (adsrstate1=3) then adsrvol1i:=sustainvol1i
	cmpb	$3,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jne	.Lj1714
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL1I(%rip),%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	jmp	.Lj1717
.Lj1714:
.Ll581:
# [1383] else if (adsrstate1=1) then begin adsrvol1i:=adsrvol1i+(attacktablei[sa1]); if adsrvol1i>=1073741824 then adsrstate1:=2; end
	cmpb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jne	.Lj1719
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA1(%rip),%edx
	leaq	U_$RETRO_$$_ATTACKTABLEI(%rip),%rax
	movq	(%rax,%rdx,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	cmpq	$1073741824,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	jnge	.Lj1726
	movb	$2,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jmp	.Lj1726
.Lj1719:
.Ll582:
# [1384] else if (adsrstate1=2) then begin adsrvol1i:=(adsrvol1i*(srtablei[sd1])) shr 30; if adsrvol1i<=sustainvol1i then adsrstate1:=3; end
	cmpb	$2,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jne	.Lj1728
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD1(%rip),%edx
	leaq	U_$RETRO_$$_SRTABLEI(%rip),%rax
	movq	(%rax,%rdx,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip),%rax
	imulq	%rdx,%rax
	shrq	$30,%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	cmpq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL1I(%rip),%rax
	jnle	.Lj1735
	movb	$3,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jmp	.Lj1735
.Lj1728:
.Ll583:
# [1385] else if (adsrstate1=4) then begin adsrvol1i:=(adsrvol1i*(srtablei[sr1])) shr 30; if (adsrvol1i<=65536) then begin adsrstate1:=0; adsrvol1i:=0; end; end
	cmpb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jne	.Lj1737
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR1(%rip),%edx
	leaq	U_$RETRO_$$_SRTABLEI(%rip),%rax
	movq	(%rax,%rdx,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip),%rax
	imulq	%rdx,%rax
	shrq	$30,%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	cmpq	$65536,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	jnle	.Lj1746
	movb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	movq	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	jmp	.Lj1746
.Lj1737:
.Ll584:
# [1386] else adsrvol1i:=0;
	movq	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
.Lj1746:
.Lj1735:
.Lj1726:
.Lj1717:
.Ll585:
# [1388] if gate2=0 then adsrstate2:=4 else begin if ((adsrstate2=0) or (adsrstate2=4)) then adsrstate2:=1; end;  //release /attack
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE2(%rip)
	jne	.Lj1750
	movb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jmp	.Lj1753
.Lj1750:
.Ll586:
	movb	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip),%al
.Ll587:
	testb	%al,%al
	je	.Lj1754
	cmpb	$4,%al
	jne	.Lj1755
.Lj1754:
	movb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
.Lj1755:
.Lj1753:
.Ll588:
# [1390] if (adsrstate2=3) then adsrvol2i:=sustainvol2i
	cmpb	$3,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jne	.Lj1762
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL2I(%rip),%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
	jmp	.Lj1765
.Lj1762:
.Ll589:
# [1391] else if (adsrstate2=1) then begin
	cmpb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jne	.Lj1767
.Ll590:
# [1392] adsrvol2i:=adsrvol2i+(attacktablei[sa2]); if adsrvol2i>=1073741824 then adsrstate2:=2; end
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA2(%rip),%eax
	leaq	U_$RETRO_$$_ATTACKTABLEI(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
	cmpq	$1073741824,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
	jnge	.Lj1774
	movb	$2,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jmp	.Lj1774
.Lj1767:
.Ll591:
# [1393] else if (adsrstate2=2) then
	cmpb	$2,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jne	.Lj1776
.Ll592:
# [1395] adsrvol2i:=(adsrvol2i*(srtablei[sd2])) shr 30;
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD2(%rip),%edx
	leaq	U_$RETRO_$$_SRTABLEI(%rip),%rax
	movq	(%rax,%rdx,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip),%rax
	imulq	%rdx,%rax
	shrq	$30,%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
.Ll593:
# [1396] if adsrvol2i<=sustainvol2i then
	cmpq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL2I(%rip),%rax
	jnle	.Lj1783
.Ll594:
# [1397] adsrstate2:=3; end
	movb	$3,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jmp	.Lj1783
.Lj1776:
.Ll595:
# [1398] else if (adsrstate2=4) then begin adsrvol2i:=(adsrvol2i*(srtablei[sr2])) shr 30; if (adsrvol2i<=65536) then begin adsrstate2:=0; adsrvol2i:=0; end; end
	cmpb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jne	.Lj1785
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR2(%rip),%eax
	leaq	U_$RETRO_$$_SRTABLEI(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip),%rax
	imulq	%rdx,%rax
	shrq	$30,%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
	cmpq	$65536,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
	jnle	.Lj1794
	movb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	movq	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
	jmp	.Lj1794
.Lj1785:
.Ll596:
# [1399] else adsrvol2i:=0;
	movq	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
.Lj1794:
.Lj1783:
.Lj1774:
.Lj1765:
.Ll597:
# [1402] if gate3=0 then adsrstate3:=4  else begin if ((adsrstate3=0) or (adsrstate3=4)) then adsrstate3:=1; end;  //release /attack
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE3(%rip)
	jne	.Lj1798
	movb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jmp	.Lj1801
.Lj1798:
.Ll598:
	movb	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip),%al
.Ll599:
	testb	%al,%al
	je	.Lj1802
	cmpb	$4,%al
	jne	.Lj1803
.Lj1802:
	movb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
.Lj1803:
.Lj1801:
.Ll600:
# [1404] if (adsrstate3=3) then adsrvol3i:=sustainvol3i
	cmpb	$3,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jne	.Lj1810
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL3I(%rip),%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	jmp	.Lj1813
.Lj1810:
.Ll601:
# [1405] else if (adsrstate3=1) then begin adsrvol3i:=adsrvol3i+(attacktablei[sa3]); if adsrvol3i>=1073741824 then adsrstate3:=2; end
	cmpb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jne	.Lj1815
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA3(%rip),%eax
	leaq	U_$RETRO_$$_ATTACKTABLEI(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	cmpq	$1073741824,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	jnge	.Lj1822
	movb	$2,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jmp	.Lj1822
.Lj1815:
.Ll602:
# [1406] else if (adsrstate3=2) then begin adsrvol3i:=(adsrvol3i*(srtablei[sd3])) shr 30; if adsrvol3i<=sustainvol3i then adsrstate3:=3; end
	cmpb	$2,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jne	.Lj1824
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD3(%rip),%eax
	leaq	U_$RETRO_$$_SRTABLEI(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip),%rax
	imulq	%rdx,%rax
	shrq	$30,%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	cmpq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL3I(%rip),%rax
	jnle	.Lj1831
	movb	$3,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jmp	.Lj1831
.Lj1824:
.Ll603:
# [1407] else if (adsrstate3=4) then begin adsrvol3i:=(adsrvol3i*(srtablei[sr3])) shr 30; if (adsrvol3i<=65536) then begin adsrstate3:=0; adsrvol3i:=0; end; end
	cmpb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jne	.Lj1833
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR3(%rip),%edx
	leaq	U_$RETRO_$$_SRTABLEI(%rip),%rax
	movq	(%rax,%rdx,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip),%rax
	imulq	%rdx,%rax
	shrq	$30,%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	cmpq	$65536,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	jnle	.Lj1842
	movb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	movq	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	jmp	.Lj1842
.Lj1833:
.Ll604:
# [1408] else adsrvol3i:=0;
	movq	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
.Lj1842:
.Lj1831:
.Lj1822:
.Lj1813:
.Ll605:
# [1413] wv1ii:=wv1i*adsrvol1i*ramb^[$70003];    // wv1a:=0;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip),%rax
	movq	%rax,%rcx
	imulq	%rdx,%rcx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	458755(%rax),%eax
	imulq	%rcx,%rax
	movq	%rax,%r14
.Ll606:
# [1414] wv2ii:=wv2i*adsrvol2i*ramb^[$70004];    // wv2a:=0;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip),%rax
	movq	%rax,%rcx
	imulq	%rdx,%rcx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	458756(%rax),%eax
	imulq	%rcx,%rax
	movq	%rax,%r13
.Ll607:
# [1415] wv3ii:=wv3i*adsrvol3i*ramb^[$70005];    // wv3a:=0;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip),%rax
	movq	%rax,%rcx
	imulq	%rdx,%rcx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	458757(%rax),%eax
	imulq	%rcx,%rax
	movq	%rax,%r12
.Ll608:
# [1419] wv1ii:=(wv1ii div 137438953472);
	movq	%r14,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	movq	$137438953471,%rcx
	andq	%rcx,%rdx
	addq	%rdx,%rax
	sarq	$37,%rax
	movq	%rax,%r14
.Ll609:
# [1420] wv2ii:=(wv2ii div 137438953472);
	movq	%r13,%rax
	movq	%rax,%rcx
	sarq	$63,%rcx
	movq	$137438953471,%rdx
	andq	%rdx,%rcx
	addq	%rcx,%rax
	sarq	$37,%rax
	movq	%rax,%r13
.Ll610:
# [1421] wv3ii:=(wv3ii div 137438953472);
	movq	%r12,%rdx
	movq	%rdx,%rcx
	sarq	$63,%rcx
	movq	$137438953471,%rax
	andq	%rax,%rcx
	addq	%rcx,%rdx
	sarq	$37,%rdx
	movq	%rdx,%r12
.Ll611:
# [1423] fii:=1; fi2i:=1; fi3i:=1;
	movl	$1,%eax
	movq	%rax,40(%rsp)
	movl	$1,%ebp
	movl	$1,%eax
	movq	%rax,32(%rsp)
.Ll612:
# [1424] if f1 then begin fii:=wv1ii; wv1ii:=0; end;
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F1(%rip)
	je	.Lj1864
	movl	%r14d,%eax
	movl	%eax,%edx
	movq	%rdx,40(%rsp)
	movq	$0,%r14
.Lj1864:
.Ll613:
# [1425] if f2 then begin fi2i:=wv2ii; wv2ii:=0; end;
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F2(%rip)
	je	.Lj1870
	movl	%r13d,%eax
	movl	%eax,%ebp
	movq	$0,%r13
.Lj1870:
.Ll614:
# [1426] if f3 then begin fi3i:=wv3ii; wv3ii:=0; end;
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F3(%rip)
	je	.Lj1876
	movl	%r12d,%eax
	movl	%eax,%edx
	movq	%rdx,32(%rsp)
	movq	$0,%r12
.Lj1876:
.Ll615:
# [1428] filter_Hi  := fii - ((filter_Bi * filter_resonance2i) div 256) - filter_Li;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_BI(%rip),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I(%rip),%rax
	imulq	%rdx,%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,%rdx
	sarq	$63,%rax
	andq	$255,%rax
	addq	%rax,%rdx
	sarq	$8,%rdx
	movslq	40(%rsp),%rax
	subq	%rdx,%rax
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_LI(%rip),%rdx
	subq	%rdx,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_HI(%rip)
.Ll616:
# [1429] filter_H2i  := fi2i - ((filter_B2i * filter_resonance2i) div 256) - filter_L2i;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B2I(%rip),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I(%rip),%rax
	imulq	%rdx,%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,%rdx
	sarq	$63,%rax
	andq	$255,%rax
	addq	%rax,%rdx
	sarq	$8,%rdx
	movslq	%ebp,%rax
	subq	%rdx,%rax
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L2I(%rip),%rdx
	subq	%rdx,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H2I(%rip)
.Ll617:
# [1430] filter_H3i  := fi3i - ((filter_B3i * filter_resonance2i) div 256) - filter_L3i;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B3I(%rip),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I(%rip),%rax
	imulq	%rdx,%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,%rdx
	sarq	$63,%rax
	andq	$255,%rax
	addq	%rax,%rdx
	sarq	$8,%rdx
	movslq	32(%rsp),%rax
	subq	%rdx,%rax
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L3I(%rip),%rdx
	subq	%rdx,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H3I(%rip)
.Ll618:
# [1432] filter_Bi += (filter_freqi * filter_Hi) div 32768;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI(%rip),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_HI(%rip),%rax
	imulq	%rdx,%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,%rdx
	sarq	$63,%rax
	andq	$32767,%rax
	addq	%rax,%rdx
	sarq	$15,%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_BI(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_BI(%rip)
.Ll619:
# [1433] filter_B2i += (filter_freqi * filter_H2i) div 32768;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI(%rip),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H2I(%rip),%rax
	imulq	%rdx,%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,%rdx
	sarq	$63,%rax
	andq	$32767,%rax
	addq	%rax,%rdx
	sarq	$15,%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B2I(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B2I(%rip)
.Ll620:
# [1434] filter_B3i += (filter_freqi * filter_H3i) div 32768;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI(%rip),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H3I(%rip),%rax
	imulq	%rdx,%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,%rdx
	sarq	$63,%rax
	andq	$32767,%rax
	addq	%rax,%rdx
	sarq	$15,%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B3I(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B3I(%rip)
.Ll621:
# [1436] filter_Li += (filter_freqi * filter_Bi) div 32768;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI(%rip),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_BI(%rip),%rax
	imulq	%rdx,%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,%rdx
	sarq	$63,%rax
	andq	$32767,%rax
	addq	%rax,%rdx
	sarq	$15,%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_LI(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_LI(%rip)
.Ll622:
# [1437] filter_L2i += (filter_freqi * filter_B2i) div 32768;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI(%rip),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B2I(%rip),%rax
	imulq	%rdx,%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,%rdx
	sarq	$63,%rax
	andq	$32767,%rax
	addq	%rax,%rdx
	sarq	$15,%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L2I(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L2I(%rip)
.Ll623:
# [1438] filter_L3i += (filter_freqi * filter_B3i) div 32768;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI(%rip),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B3I(%rip),%rax
	imulq	%rdx,%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,%rdx
	sarq	$63,%rax
	andq	$32767,%rax
	addq	%rax,%rdx
	sarq	$15,%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L3I(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L3I(%rip)
.Ll624:
# [1440] fouti:=wv1ii;
	movl	%r14d,%eax
	movl	%eax,%esi
.Ll625:
# [1441] fouti+=filter_li and fl;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_LI(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FL(%rip),%eax
	andl	%edx,%eax
	leal	(%eax,%esi),%eax
	movl	%eax,%esi
.Ll626:
# [1442] fouti+=filter_bi and fb;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_BI(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FB(%rip),%eax
	andl	%edx,%eax
	leal	(%eax,%esi),%eax
	movl	%eax,%esi
.Ll627:
# [1443] fouti+=filter_hi and fu;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_HI(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FU(%rip),%eax
	andl	%edx,%eax
	leal	(%eax,%esi),%eax
	movl	%eax,%esi
.Ll628:
# [1445] fout2i:=wv2ii;
	movl	%r13d,%eax
	movl	%eax,%ebx
.Ll629:
# [1446] fout2i+=filter_l2i and fl;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L2I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FL(%rip),%eax
	andl	%edx,%eax
	leal	(%eax,%ebx),%eax
	movl	%eax,%ebx
.Ll630:
# [1447] fout2i+=filter_b2i and fb;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B2I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FB(%rip),%eax
	andl	%edx,%eax
	leal	(%eax,%ebx),%eax
	movl	%eax,%ebx
.Ll631:
# [1448] fout2i+=filter_h2i and fu;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H2I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FU(%rip),%eax
	andl	%edx,%eax
	leal	(%eax,%ebx),%eax
	movl	%eax,%ebx
.Ll632:
# [1450] fout3i:=wv3ii;
	movl	%r12d,%eax
	movl	%eax,%edi
.Ll633:
# [1451] fout3i+=filter_l3i and fl;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L3I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FL(%rip),%eax
	andl	%edx,%eax
	leal	(%eax,%edi),%eax
	movl	%eax,%edi
.Ll634:
# [1452] fout3i+=filter_b3i and fb;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B3I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FB(%rip),%eax
	andl	%edx,%eax
	leal	(%eax,%edi),%eax
	movl	%eax,%edi
.Ll635:
# [1453] fout3i+=filter_h3i and fu;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H3I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FU(%rip),%eax
	andl	%edx,%eax
	leal	(%eax,%edi),%eax
	movl	%eax,%edi
.Ll636:
# [1455] wv5i:=(volume*((fouti div 2)+(fout2i div 4)+ (fout2i div 2)+(fout3i)));
	movslq	%esi,%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,%rcx
	sarq	$63,%rax
	andq	$1,%rax
	addq	%rax,%rcx
	sarq	$1,%rcx
	movslq	%ebx,%rax
.Ll637:
	movq	%rax,%r8
.Ll638:
	movq	%r8,%rdx
	movq	%rdx,%rax
	sarq	$63,%rax
	andq	$3,%rax
	addq	%rax,%rdx
	sarq	$2,%rdx
	leaq	(%rcx,%rdx),%rcx
	movq	%r8,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$1,%rdx
	addq	%rdx,%rax
	sarq	$1,%rax
	leaq	(%rcx,%rax),%rdx
	movslq	%edi,%rax
	leaq	(%rdx,%rax),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_VOLUME(%rip),%rax
	imulq	%rdx,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV5I(%rip)
.Ll639:
# [1456] wv4i:=(volume*((fouti)+(fout2i div 4)+ (fout2i div 2)+(fout3i div 2)));
	movslq	%ebx,%rax
.Ll640:
	movq	%rax,%r8
.Ll641:
	movq	%r8,%rdx
	movq	%rdx,%rax
	sarq	$63,%rax
	andq	$3,%rax
	addq	%rax,%rdx
	sarq	$2,%rdx
	movslq	%esi,%rax
	leaq	(%rdx,%rax),%rcx
	movq	%r8,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$1,%rdx
	addq	%rdx,%rax
	sarq	$1,%rax
	leaq	(%rcx,%rax),%rcx
	movslq	%edi,%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,%rdx
	sarq	$63,%rax
	andq	$1,%rax
	addq	%rax,%rdx
	sarq	$1,%rdx
	leaq	(%rcx,%rdx),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_VOLUME(%rip),%rax
	imulq	%rdx,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV4I(%rip)
.Ll642:
# [1459] sri+=wv4i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SRI(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV4I(%rip),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SRI(%rip)
.Ll643:
# [1460] sli+=wv5i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SLI(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV5I(%rip),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SLI(%rip)
.Ll644:
	movl	72(%rsp),%eax
	cmpl	$5,%eax
	jl	.Lj1439
.Ll645:
# [1463] sid1:=sri div 512;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SRI(%rip),%rsi
	movq	%rsi,%rax
	sarq	$63,%rax
	andq	$511,%rax
	addq	%rax,%rsi
	sarq	$9,%rsi
# Var sid1 located in register esi
.Ll646:
# [1464] sid1l:=sli div 512;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SLI(%rip),%rbx
	movq	%rbx,%rax
	sarq	$63,%rax
	andq	$511,%rax
	addq	%rax,%rbx
	sarq	$9,%rbx
# Var sid1l located in register ebx
.Ll647:
# [1465] oldsc:=sc;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SC(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_OLDSC(%rip)
.Ll648:
# [1466] sc:=sid1+sid1l;
	leal	(%esi,%ebx),%eax
# PeepHole Optimization,MovMov2Mov1
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SC(%rip)
.Ll649:
# [1467] if abs(sc)>65535 then lpoke ($6000c,$FF0000);
	movl	%eax,%edx
	negl	%edx
	cmovnsl	%edx,%eax
	cmpl	$65535,%eax
	jng	.Lj1944
	movl	$16711680,%edx
	movl	$393228,%ecx
	call	RETRO_$$_LPOKE$LONGINT$LONGWORD
.Lj1944:
.Ll650:
# [1469] sid[0]:=sid1;
	movq	80(%rsp),%rax
	movw	%si,(%rax)
.Ll651:
# [1470] sid[1]:=sid1l;
	movq	80(%rsp),%rax
	movw	%bx,2(%rax)
.Ll652:
# [1471] end;
	nop
	leaq	88(%rsp),%rsp
	popq	%rbp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc111:
.Lt28:
.Ll653:

.section .data.n_RETRO_$$_SID$LONGINT$$TSAMPLE,"d"
	.balign 4
.Ld18:
	.long	.Lj1511-.Ld18
	.long	.Lj1512-.Ld18
	.long	.Lj1513-.Ld18
	.long	.Lj1514-.Ld18
	.long	.Lj1515-.Ld18
	.long	.Lj1516-.Ld18
	.long	.Lj1517-.Ld18
	.long	.Lj1518-.Ld18
	.long	.Lj1519-.Ld18
	.long	.Lj1520-.Ld18
	.long	.Lj1521-.Ld18
	.long	.Lj1522-.Ld18
	.long	.Lj1522-.Ld18
	.long	.Lj1522-.Ld18
	.long	.Lj1522-.Ld18
	.long	.Lj1522-.Ld18

.section .data.n_RETRO_$$_SID$LONGINT$$TSAMPLE,"d"
	.balign 4
.Ld20:
	.long	.Lj1577-.Ld20
	.long	.Lj1578-.Ld20
	.long	.Lj1579-.Ld20
	.long	.Lj1580-.Ld20
	.long	.Lj1581-.Ld20
	.long	.Lj1582-.Ld20
	.long	.Lj1583-.Ld20
	.long	.Lj1584-.Ld20
	.long	.Lj1585-.Ld20
	.long	.Lj1586-.Ld20
	.long	.Lj1587-.Ld20
	.long	.Lj1588-.Ld20
	.long	.Lj1588-.Ld20
	.long	.Lj1588-.Ld20
	.long	.Lj1588-.Ld20
	.long	.Lj1588-.Ld20

.section .data.n_RETRO_$$_SID$LONGINT$$TSAMPLE,"d"
	.balign 4
.Ld21:
	.long	.Lj1643-.Ld21
	.long	.Lj1644-.Ld21
	.long	.Lj1645-.Ld21
	.long	.Lj1646-.Ld21
	.long	.Lj1647-.Ld21
	.long	.Lj1648-.Ld21
	.long	.Lj1649-.Ld21
	.long	.Lj1650-.Ld21
	.long	.Lj1651-.Ld21
	.long	.Lj1652-.Ld21
	.long	.Lj1653-.Ld21
	.long	.Lj1654-.Ld21
	.long	.Lj1654-.Ld21
	.long	.Lj1654-.Ld21
	.long	.Lj1654-.Ld21
	.long	.Lj1654-.Ld21

.section .text.n_retro_$$_initnotes,"x"
	.balign 16,0x90
.globl	RETRO_$$_INITNOTES
RETRO_$$_INITNOTES:
.Lc113:
# Var i located in register edx
# Var q located in register xmm1
# [1529] begin
# Var q located in register xmm1
.Ll654:
# [1530] q:=c03;
	movsd	_$RETRO$_Ld22(%rip),%xmm1
# Var i located in register edx
.Ll655:
# [1531] for i:=0 to 127 do
	movl	$0,%edx
	subl	$1,%edx
	.balign 8,0x90
.Lj1959:
	addl	$1,%edx
# PeepHole Optimization,var2a
.Ll656:
# [1533] notes[i]:=round(q*norm960*65536);
	movl	%edx,%eax
	movapd	%xmm1,%xmm0
	mulsd	_$RETRO$_Ld23(%rip),%xmm0
	mulsd	_$RETRO$_Ld24(%rip),%xmm0
	cvtsd2siq	%xmm0,%rcx
	leaq	U_$RETRO_$$_NOTES(%rip),%r8
	movl	%ecx,(%r8,%rax,4)
.Ll657:
# [1534] q:=q*a212;
	movapd	%xmm1,%xmm0
	mulsd	_$RETRO$_Ld25(%rip),%xmm0
	movapd	%xmm0,%xmm1
.Ll658:
	cmpl	$127,%edx
	jl	.Lj1959
.Ll659:
# [1536] end;
	ret
.Lc114:
.Lt40:
.Ll660:

.section .text.n_retro_$$_initsinetable,"x"
	.balign 16,0x90
.globl	RETRO_$$_INITSINETABLE
RETRO_$$_INITSINETABLE:
.Lc115:
.seh_proc RETRO_$$_INITSINETABLE
.Ll661:
# [1541] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc117:
.seh_stackalloc 32
# Var i located in register ebx
.seh_endprologue
# Var i located in register ebx
.Ll662:
# [1542] for i:=0 to 65535 do
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj1968:
	addl	$1,%ebx
.Ll663:
# [1543] sinetable[i]:=round(8388607*sin(2*pi*i/65536));
	cvtsi2sd	%ebx,%xmm0
	mulsd	_$RETRO$_Ld27(%rip),%xmm0
	mulsd	_$RETRO$_Ld28(%rip),%xmm0
	call	fpc_sin_real
	mulsd	_$RETRO$_Ld26(%rip),%xmm0
	cvtsd2siq	%xmm0,%rax
# PeepHole Optimization,var2a
	movl	%ebx,%edx
	leaq	U_$RETRO_$$_SINETABLE(%rip),%rcx
	movl	%eax,(%rcx,%rdx,4)
.Ll664:
	cmpl	$65535,%ebx
	jl	.Lj1968
.Ll665:
# [1545] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc116:
.Lt41:
.Ll666:

.section .text.n_retro_$$_initlogtable,"x"
	.balign 16,0x90
.globl	RETRO_$$_INITLOGTABLE
RETRO_$$_INITLOGTABLE:
.Lc118:
# Var i located in register ecx
# Var q located in register xmm1
# Var q2 located in register xmm2
# [1552] begin
# Var q located in register xmm1
.Ll667:
# [1553] q:=4294967296;
	movsd	_$RETRO$_Ld29(%rip),%xmm1
# Var q2 located in register xmm2
.Ll668:
# [1554] q2:=0.999841363784793800909651;
	movsd	_$RETRO$_Ld30(%rip),%xmm2
# Var i located in register ecx
.Ll669:
# [1556] for i:=65535 downto 0 do
	movl	$65535,%ecx
	addl	$1,%ecx
	.balign 8,0x90
.Lj1981:
	subl	$1,%ecx
.Ll670:
# [1558] q:=q*q2;
	movapd	%xmm1,%xmm0
	mulsd	%xmm2,%xmm0
	movapd	%xmm0,%xmm1
.Ll671:
# [1559] logtable[i]:=trunc(q);
	movapd	%xmm1,%xmm0
	cvttsd2siq	%xmm0,%rax
# PeepHole Optimization,var2a
	movl	%ecx,%edx
	leaq	U_$RETRO_$$_LOGTABLE(%rip),%r8
	movl	%eax,(%r8,%rdx,4)
.Ll672:
	testl	%ecx,%ecx
	jg	.Lj1981
.Ll673:
# [1561] end;
	ret
.Lc119:
.Lt42:
.Ll674:

.section .text.n_retro_$$_fmsynth$$tsample,"x"
	.balign 16,0x90
.globl	RETRO_$$_FMSYNTH$$TSAMPLE
RETRO_$$_FMSYNTH$$TSAMPLE:
.Lc120:
.seh_proc RETRO_$$_FMSYNTH$$TSAMPLE
.Ll675:
# [1622] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-32(%rsp),%rsp
.Lc122:
.seh_stackalloc 32
# Var $result located in register rsi
# Var res64a located in register rax
# Var vel located in register r9
# Var modulator located in register r8
# Var i located in register r10d
# Var j located in register eax
# Var sample located in register rbx
.seh_endprologue
	movq	%rcx,%rsi
.Ll676:
# [1623] ft:=gettime;
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,U_$RETRO_$$_FT(%rip)
# Var i located in register r10d
.Ll677:
# [1643] for i:=1 to 1000 do
	movl	$1,%r10d
	subl	$1,%r10d
	.balign 8,0x90
.Lj1992:
	addl	$1,%r10d
.Ll678:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rax
.Ll679:
# [1645] opdata[0]:=(opdata[0]+((opdata[1]*opdata[2]) shr 24)*opdata[3]*opdata[4] shr 24);
	movl	4(%rax),%ecx
	movl	8(%rax),%edx
	imulq	%rcx,%rdx
	shrq	$24,%rdx
	movl	12(%rax),%ecx
	imulq	%rdx,%rcx
	movl	16(%rax),%edx
	imulq	%rcx,%rdx
	shrq	$24,%rdx
	movl	(%rax),%ecx
	leaq	(%rdx,%rcx),%rdx
	movl	%edx,(%rax)
.Ll680:
	leaq	U_$RETRO_$$_OUTPUTTABLE(%rip),%rax
.Ll681:
# [1649] modulator:=outputtable[0]*opdata[6]
	movslq	(%rax),%r11
.Ll682:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rdx
.Ll683:
	movl	24(%rdx),%ecx
	imulq	%r11,%rcx
.Ll684:
# [1650] +outputtable[1]*opdata[7]
	movslq	4(%rax),%rdi
	movl	28(%rdx),%r11d
	imulq	%rdi,%r11
	leaq	(%rcx,%r11),%r11
.Ll685:
# [1651] +outputtable[2]*opdata[8]
	movslq	8(%rax),%rdi
	movl	32(%rdx),%ecx
	imulq	%rdi,%rcx
	leaq	(%r11,%rcx),%r11
.Ll686:
# [1652] +outputtable[3]*opdata[9]
	movslq	12(%rax),%rdi
	movl	36(%rdx),%ecx
	imulq	%rdi,%rcx
	leaq	(%r11,%rcx),%r11
.Ll687:
# [1653] +outputtable[4]*opdata[10]
	movslq	16(%rax),%rdi
	movl	40(%rdx),%ecx
	imulq	%rdi,%rcx
	leaq	(%r11,%rcx),%r11
.Ll688:
# [1654] +outputtable[5]*opdata[11]
	movslq	20(%rax),%rdi
	movl	44(%rdx),%ecx
	imulq	%rdi,%rcx
	leaq	(%r11,%rcx),%r11
.Ll689:
# [1655] +outputtable[6]*opdata[12]
	movslq	24(%rax),%rdi
	movl	48(%rdx),%ecx
	imulq	%rdi,%rcx
	leaq	(%r11,%rcx),%r11
.Ll690:
# [1656] +outputtable[7]*opdata[13];
	movslq	28(%rax),%rcx
	movl	52(%rdx),%eax
	imulq	%rcx,%rax
	leaq	(%r11,%rax),%rax
.Ll691:
	movq	%rax,%r8
.Ll692:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rax
.Ll693:
# [1658] opdata[5]:=((opdata[5]+(modulator shr 32)+opdata[0]));
	movl	20(%rax),%ecx
	movq	%r8,%rdx
	shrq	$32,%rdx
	leaq	(%rcx,%rdx),%rdx
	movl	(%rax),%ecx
	leaq	(%rdx,%rcx),%rdx
	movl	%edx,20(%rax)
.Ll694:
# [1665] sample:=sinetable[opdata[5]];
	movl	U_$RETRO_$$_OPDATA+20(%rip),%edx
	leaq	U_$RETRO_$$_SINETABLE(%rip),%rax
	movslq	(%rax,%rdx,4),%rax
	movq	%rax,%rbx
.Ll695:
# [1682] if opdata[19]=4 then  // release
	cmpl	$4,U_$RETRO_$$_OPDATA+76(%rip)
	jne	.Lj2010
.Ll696:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rax
.Ll697:
# [1684] opdata[18]:=opdata[18]+opdata[26];
	movl	72(%rax),%ecx
	movl	104(%rax),%edx
	leal	(%ecx,%edx),%edx
	movl	%edx,72(%rax)
	jmp	.Lj2015
.Lj2010:
.Ll698:
# [1689] else if opdata[19]=1 then //attack
	cmpl	$1,U_$RETRO_$$_OPDATA+76(%rip)
	jne	.Lj2017
.Ll699:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rax
.Ll700:
# [1691] opdata[18]:=opdata[18]+opdata[20];
	movl	72(%rax),%edx
	movl	80(%rax),%ecx
	leal	(%edx,%ecx),%edx
	movl	%edx,72(%rax)
.Ll701:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rax
.Ll702:
# [1692] if opdata[20]>=opdata[21] then opdata[19]:=2;
	movl	80(%rax),%edx
	cmpl	84(%rax),%edx
.Ll703:
	jnae	.Lj2028
.Ll704:
	movl	$2,U_$RETRO_$$_OPDATA+76(%rip)
	jmp	.Lj2028
.Lj2017:
.Ll705:
# [1694] else if opdata[19]=2 then  // decay 1
	cmpl	$2,U_$RETRO_$$_OPDATA+76(%rip)
	jne	.Lj2030
.Ll706:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rax
.Ll707:
# [1696] opdata[18]:=opdata[18]+opdata[22];
	movl	72(%rax),%edx
	movl	88(%rax),%ecx
	leal	(%edx,%ecx),%edx
	movl	%edx,72(%rax)
	jmp	.Lj2035
.Lj2030:
.Ll708:
# [1701] else if opdata[19]=3 then  // decay 2
	cmpl	$3,U_$RETRO_$$_OPDATA+76(%rip)
	jne	.Lj2037
.Ll709:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rax
.Ll710:
# [1703] opdata[18]:=opdata[18]+opdata[24];
	movl	72(%rax),%ecx
	movl	96(%rax),%edx
	leal	(%ecx,%edx),%edx
	movl	%edx,72(%rax)
.Lj2037:
.Lj2035:
.Lj2028:
.Lj2015:
.Ll711:
# [1709] sample:=(sample*opdata[18])shr 32;
	movl	U_$RETRO_$$_OPDATA+72(%rip),%edx
	movq	%rbx,%rax
	imulq	%rdx,%rax
	shrq	$32,%rax
	movq	%rax,%rbx
.Ll712:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rax
.Ll713:
# [1724] sample:=(sample*opdata[29]*opdata[30]) shr 24;
	movl	116(%rax),%ecx
	movq	%rbx,%rdx
	imulq	%rcx,%rdx
	movl	120(%rax),%eax
	imulq	%rdx,%rax
	shrq	$24,%rax
	movq	%rax,%rbx
.Ll714:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rax
.Ll715:
# [1725] vel:=$FFFFFF-opdata[31]+opdata[31]*opdata[32];
	movl	128(%rax),%ecx
.Ll716:
	movl	124(%rax),%edx
# PeepHole Optimization,var2a
.Ll717:
	movl	%edx,%eax
	imulq	%rcx,%rax
	andl	$4294967295,%edx
	movq	$16777215,%rcx
	subq	%rdx,%rcx
	leaq	(%rax,%rcx),%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,%r9
.Ll718:
# [1726] sample:=(sample*vel) shr 24;
	imulq	%rbx,%rax
	shrq	$24,%rax
	movq	%rax,%rbx
.Ll719:
# [1727] sample:=(sample*opdata[33]) div $1000000;
	movl	U_$RETRO_$$_OPDATA+132(%rip),%edx
	movq	%rbx,%rax
	imulq	%rdx,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$16777215,%rdx
	addq	%rdx,%rax
	sarq	$24,%rax
	movq	%rax,%rbx
.Ll720:
# [1728] sample:=(sample*opdata[34]) div $1000000;
	movl	U_$RETRO_$$_OPDATA+136(%rip),%edx
	movq	%rbx,%rax
	imulq	%rdx,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$16777215,%rdx
	addq	%rdx,%rax
	sarq	$24,%rax
	movq	%rax,%rbx
.Ll721:
	cmpl	$1000,%r10d
	jl	.Lj1992
.Ll722:
# [1735] ftt:=gettime-ft;
	call	RETRO_$$_GETTIME$$INT64
	movq	U_$RETRO_$$_FT(%rip),%rdx
	subq	%rdx,%rax
	movq	%rax,U_$RETRO_$$_FTT(%rip)
.Ll723:
# [1739] fmsynth[0]:=sample;
	movw	%bx,%ax
	movw	%ax,(%rsi)
.Ll724:
# [1740] fmsynth[1]:=sample;
	movw	%bx,2(%rsi)
.Ll725:
# [1742] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc121:
.Lt44:
.Ll726:

.section .text.n_retro_$$_antialias6$double$tfiltertable$$double,"x"
	.balign 16,0x90
.globl	RETRO_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE
RETRO_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE:
.Lc123:
# Var input located in register xmm0
# Var ft located in register rax
# Var $result located in register xmm0
.Ll727:
# [1753] begin
	movq	%rdx,%rax
.Ll728:
# [1755] ft[0]:=ft[1];
	movq	8(%rax),%rdx
	movq	%rdx,(%rax)
.Ll729:
# [1756] ft[1]:=ft[2];
	movq	16(%rax),%rdx
	movq	%rdx,8(%rax)
.Ll730:
# [1757] ft[2]:=ft[3];
	movq	24(%rax),%rdx
	movq	%rdx,16(%rax)
.Ll731:
# [1758] ft[3]:=ft[4];
	movq	32(%rax),%rdx
	movq	%rdx,24(%rax)
.Ll732:
# [1759] ft[4]:=ft[5];
	movq	40(%rax),%rdx
	movq	%rdx,32(%rax)
.Ll733:
# [1760] ft[5]:=ft[6];
	movq	48(%rax),%rdx
	movq	%rdx,40(%rax)
.Ll734:
# [1762] ft[6]:=input/gain;
	divsd	TC_$RETRO$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN(%rip),%xmm0
	movsd	%xmm0,48(%rax)
.Ll735:
# [1764] ft[7]:=ft[8];
	movq	64(%rax),%rdx
	movq	%rdx,56(%rax)
.Ll736:
# [1765] ft[8]:=ft[9];
	movq	72(%rax),%rdx
	movq	%rdx,64(%rax)
.Ll737:
# [1766] ft[9]:=ft[10];
	movq	80(%rax),%rdx
	movq	%rdx,72(%rax)
.Ll738:
# [1767] ft[10]:=ft[11];
	movq	88(%rax),%rdx
	movq	%rdx,80(%rax)
.Ll739:
# [1768] ft[11]:=ft[12];
	movq	96(%rax),%rdx
	movq	%rdx,88(%rax)
.Ll740:
# [1769] ft[12]:=ft[13];
	movq	104(%rax),%rdx
	movq	%rdx,96(%rax)
.Ll741:
# [1771] ft[13]:=(ft[0]+ft[6])+6*(ft[1]+ft[5])+15*(ft[3]+ft[4])+20*ft[3]
	movsd	8(%rax),%xmm0
	addsd	40(%rax),%xmm0
	mulsd	_$RETRO$_Ld31(%rip),%xmm0
	movsd	(%rax),%xmm1
	addsd	48(%rax),%xmm1
	addsd	%xmm1,%xmm0
.Ll742:
	movsd	24(%rax),%xmm2
.Ll743:
	movapd	%xmm2,%xmm1
	addsd	32(%rax),%xmm1
	mulsd	_$RETRO$_Ld32(%rip),%xmm1
	addsd	%xmm0,%xmm1
	movsd	_$RETRO$_Ld33(%rip),%xmm0
	mulsd	%xmm2,%xmm0
	addsd	%xmm1,%xmm0
.Ll744:
# [1772] + ( -0.7992422456 * ft[7]) + (  4.9534616898 * ft[8])
	movsd	_$RETRO$_Ld34(%rip),%xmm1
	mulsd	56(%rax),%xmm1
	addsd	%xmm0,%xmm1
	movsd	_$RETRO$_Ld35(%rip),%xmm0
	mulsd	64(%rax),%xmm0
	addsd	%xmm1,%xmm0
.Ll745:
# [1773] + (-12.8163705530 * ft[9]) + ( 17.7202717200 * ft[10])
	movsd	_$RETRO$_Ld36(%rip),%xmm1
	mulsd	72(%rax),%xmm1
	addsd	%xmm0,%xmm1
	movsd	_$RETRO$_Ld37(%rip),%xmm0
	mulsd	80(%rax),%xmm0
	addsd	%xmm1,%xmm0
.Ll746:
# [1774] + (-13.8090381750 * ft[11]) + (  5.7509166299 * ft[12]);
	movsd	_$RETRO$_Ld38(%rip),%xmm1
	mulsd	88(%rax),%xmm1
	addsd	%xmm0,%xmm1
	movsd	_$RETRO$_Ld39(%rip),%xmm0
	mulsd	96(%rax),%xmm0
	addsd	%xmm1,%xmm0
.Ll747:
	movsd	%xmm0,104(%rax)
# Var $result located in register xmm0
.Ll748:
# [1776] antialias6:=ft[13];
	movsd	104(%rax),%xmm0
.Ll749:
# [1777] end;
	ret
.Lc124:
.Lt39:
.Ll750:

.section .text.n_retro_$$_sdl_sound_init$$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_SDL_SOUND_INIT$$LONGINT
RETRO_$$_SDL_SOUND_INIT$$LONGINT:
.Lc125:
.seh_proc RETRO_$$_SDL_SOUND_INIT$$LONGINT
.Ll751:
# [1783] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc127:
.seh_stackalloc 32
# Var $result located in register ebx
.seh_endprologue
# Var $result located in register ebx
.Ll752:
# [1784] Result:=0;
	movl	$0,%ebx
.Ll753:
# [1785] desired.freq := 192000;                                     // sample rate
	movl	$192000,U_$RETRO_$$_DESIRED(%rip)
.Ll754:
# [1786] desired.format := AUDIO_S16;                               // 16-bit samples
	movw	$32784,U_$RETRO_$$_DESIRED+4(%rip)
.Ll755:
# [1787] desired.samples := 1920;                                    // samples for 1 callback
	movw	$1920,U_$RETRO_$$_DESIRED+8(%rip)
.Ll756:
# [1788] desired.channels := 2;                                     // stereo
	movb	$2,U_$RETRO_$$_DESIRED+6(%rip)
.Ll757:
# [1789] desired.callback := @AudioCallback;
	leaq	RETRO_$$_AUDIOCALLBACK$POINTER$PBYTE$LONGINT(%rip),%rax
	movq	%rax,U_$RETRO_$$_DESIRED+16(%rip)
.Ll758:
# [1790] desired.userdata := nil;
	movq	$0,U_$RETRO_$$_DESIRED+24(%rip)
.Ll759:
# [1792] if (SDL_OpenAudio(@desired, @obtained) < 0) then
	leaq	U_$RETRO_$$_OBTAINED(%rip),%rdx
	leaq	U_$RETRO_$$_DESIRED(%rip),%rcx
	call	_$dll$sdl2$SDL_OpenAudio
	cmpl	$0,%eax
	jnl	.Lj2117
.Ll760:
# [1794] Result:=-2;
	movl	$-2,%ebx
.Lj2117:
.Ll761:
# [1796] end;
	movl	%ebx,%eax
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc126:
.Lt38:
.Ll762:

.section .text.n_retro_$$_audiocallback$pointer$pbyte$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_AUDIOCALLBACK$POINTER$PBYTE$LONGINT
RETRO_$$_AUDIOCALLBACK$POINTER$PBYTE$LONGINT:
.Lc128:
# Temps allocated between rsp+72 and rsp+80
.seh_proc RETRO_$$_AUDIOCALLBACK$POINTER$PBYTE$LONGINT
.Ll763:
# [1811] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	pushq	%r14
.seh_pushreg %r14
	pushq	%r15
.seh_pushreg %r15
	leaq	-80(%rsp),%rsp
.Lc130:
.seh_stackalloc 80
# Var userdata located in register rcx
# Var audio located in register rbx
# Var length located in register r8d
# Var audio2 located in register rbx
# Var t located in register rsi
# Var k located in register r14d
# Var i located in register edi
# Var il located in register r12d
# Var s1 located in register r13w
.seh_endprologue
# Var s located at rsp+32, size=OS_32
# Var buf located at rsp+40, size=OS_NO
	movq	%rdx,%rbx
# Var audio2 located in register rbx
# Var audio located in register rbx
.Ll764:
# [1814] t:=gettime;
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,%rsi
# Var t located in register rsi
# Var k located in register r14d
.Ll765:
# [1816] for k:=0 to 3 do
	movl	$0,%r14d
	subl	$1,%r14d
	.balign 8,0x90
.Lj2132:
	addl	$1,%r14d
.Ll766:
# [1818] aa+=2500;
	movl	TC_$RETRO$_$AUDIOCALLBACK$POINTER$PBYTE$LONGINT_$$_AA(%rip),%eax
	leal	2500(%eax),%eax
	movl	%eax,TC_$RETRO$_$AUDIOCALLBACK$POINTER$PBYTE$LONGINT_$$_AA(%rip)
.Ll767:
# [1819] if (aa>=siddelay) then
	movslq	TC_$RETRO$_$AUDIOCALLBACK$POINTER$PBYTE$LONGINT_$$_AA(%rip),%rax
	cmpq	TC_$RETRO_$$_SIDDELAY(%rip),%rax
	jnge	.Lj2136
.Ll768:
# [1821] aa-=siddelay;
	movslq	TC_$RETRO$_$AUDIOCALLBACK$POINTER$PBYTE$LONGINT_$$_AA(%rip),%rax
	movq	TC_$RETRO_$$_SIDDELAY(%rip),%rdx
	subq	%rdx,%rax
	movl	%eax,TC_$RETRO$_$AUDIOCALLBACK$POINTER$PBYTE$LONGINT_$$_AA(%rip)
.Ll769:
# [1822] if fh>-1 then
	cmpl	$-1,U_$RETRO_$$_FH(%rip)
	jng	.Lj2140
.Ll770:
# [1824] if filetype=0 then
	cmpl	$0,U_$RETRO_$$_FILETYPE(%rip)
	jne	.Lj2142
.Ll771:
# [1826] il:=fileread(fh,buf,25);
	movslq	U_$RETRO_$$_FH(%rip),%rcx
	leaq	40(%rsp),%rdx
	movl	$25,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
	movl	%eax,%r12d
.Ll772:
# [1827] if skip=1 then  il:=fileread(fh,buf,25);
	cmpl	$1,U_$RETRO_$$_SKIP(%rip)
	jne	.Lj2152
	movslq	U_$RETRO_$$_FH(%rip),%rcx
	leaq	40(%rsp),%rdx
	movl	$25,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
	movl	%eax,%r12d
.Lj2152:
.Ll773:
# [1828] if il=25 then
	cmpl	$25,%r12d
	jne	.Lj2162
.Ll774:
# [1830] for i:=0 to 24 do ramb^[$d400+i]:=buf[i];
	movl	$0,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj2165:
	addl	$1,%edi
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	%edi,%rax
# PeepHole Optimization,var2a
	movl	%edi,%edx
	movb	40(%rsp,%rdx,1),%dl
	movb	%dl,54272(%rcx,%rax,1)
	cmpl	$24,%edi
	jl	.Lj2165
.Ll775:
# [1831] for i:=0 to 15 do times6502[i]:=times6502[i+1];
	movl	$0,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj2170:
	addl	$1,%edi
.Ll776:
	leaq	U_$RETRO_$$_TIMES6502(%rip),%rax
.Ll777:
	movslq	%edi,%rdx
# PeepHole Optimization,var2a
	movl	%edi,%ecx
	movl	4(%rax,%rdx,4),%edx
	movl	%edx,(%rax,%rcx,4)
	cmpl	$15,%edi
	jl	.Lj2170
.Ll778:
# [1832] t6:=gettime;
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,U_$RETRO_$$_T6(%rip)
.Ll779:
# [1833] times6502[15]:=0;
	movl	$0,U_$RETRO_$$_TIMES6502+60(%rip)
.Ll780:
# [1834] t6:=0; for i:=0 to 15 do t6+=times6502[i];
	movq	$0,U_$RETRO_$$_T6(%rip)
	movl	$0,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj2183:
	addl	$1,%edi
# PeepHole Optimization,var2a
	movl	%edi,%eax
	leaq	U_$RETRO_$$_TIMES6502(%rip),%rdx
	movslq	(%rdx,%rax,4),%rax
	movq	U_$RETRO_$$_T6(%rip),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,U_$RETRO_$$_T6(%rip)
	cmpl	$15,%edi
	jl	.Lj2183
.Ll781:
# [1835] time6502:=t6;
	movq	U_$RETRO_$$_T6(%rip),%rax
	movq	%rax,U_$RETRO_$$_TIME6502(%rip)
.Ll782:
# [1836] timer1+=siddelay;
	movq	TC_$RETRO_$$_TIMER1(%rip),%rdx
	movq	TC_$RETRO_$$_SIDDELAY(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movq	%rax,TC_$RETRO_$$_TIMER1(%rip)
.Ll783:
# [1837] songtime+=siddelay;
	movq	U_$RETRO_$$_SONGTIME(%rip),%rax
	movq	TC_$RETRO_$$_SIDDELAY(%rip),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,U_$RETRO_$$_SONGTIME(%rip)
	jmp	.Lj2206
.Lj2162:
.Ll784:
# [1841] fileclose(fh);
	movslq	U_$RETRO_$$_FH(%rip),%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll785:
# [1842] fh:=-1;
	movl	$-1,U_$RETRO_$$_FH(%rip)
.Ll786:
# [1843] songtime:=0;
	movq	$0,U_$RETRO_$$_SONGTIME(%rip)
.Ll787:
# [1844] timer1:=-1;
	movq	$-1,TC_$RETRO_$$_TIMER1(%rip)
.Ll788:
# [1845] for i:=0 to 6 do raml^[$3500+i]:=0;
	movl	$0,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj2203:
	addl	$1,%edi
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movslq	%edi,%rax
	movl	$0,54272(%rdx,%rax,4)
	cmpl	$6,%edi
	jl	.Lj2203
	jmp	.Lj2206
.Lj2142:
.Ll789:
# [1848] else if filetype=1 then
	cmpl	$1,U_$RETRO_$$_FILETYPE(%rip)
	jne	.Lj2208
.Ll790:
# [1851] for i:=0 to 15 do times6502[i]:=times6502[i+1];
	movl	$0,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj2211:
	addl	$1,%edi
.Ll791:
	leaq	U_$RETRO_$$_TIMES6502(%rip),%rax
.Ll792:
	movslq	%edi,%rdx
# PeepHole Optimization,var2a
	movl	%edi,%ecx
	movl	4(%rax,%rdx,4),%edx
	movl	%edx,(%rax,%rcx,4)
	cmpl	$15,%edi
	jl	.Lj2211
.Ll793:
# [1852] t6:=gettime;
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,U_$RETRO_$$_T6(%rip)
.Ll794:
# [1853] jsr6502(256, play);
	movzwl	U_$RETRO_$$_PLAY(%rip),%edx
	movl	$256,%ecx
	call	UNIT6502_$$_JSR6502$WORD$INT64
.Ll795:
# [1854] times6502[15]:=gettime-t6;
	call	RETRO_$$_GETTIME$$INT64
	movq	U_$RETRO_$$_T6(%rip),%rdx
	subq	%rdx,%rax
	movl	%eax,U_$RETRO_$$_TIMES6502+60(%rip)
.Ll796:
# [1855] t6:=0; for i:=0 to 15 do t6+=times6502[i];
	movq	$0,U_$RETRO_$$_T6(%rip)
	movl	$0,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj2228:
	addl	$1,%edi
# PeepHole Optimization,var2a
	movl	%edi,%eax
	leaq	U_$RETRO_$$_TIMES6502(%rip),%rdx
	movslq	(%rdx,%rax,4),%rdx
	movq	U_$RETRO_$$_T6(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movq	%rax,U_$RETRO_$$_T6(%rip)
	cmpl	$15,%edi
	jl	.Lj2228
.Ll797:
# [1856] time6502:=t6-15;
	movq	U_$RETRO_$$_T6(%rip),%rax
	leaq	-15(%rax),%rax
	movq	%rax,U_$RETRO_$$_TIME6502(%rip)
.Ll798:
# [1858] for i:=0 to 25 do buf[i]:= read6502($D400+i);
	movl	$0,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj2235:
	addl	$1,%edi
	movslq	%edi,%rax
	leaq	54272(%rax),%rcx
	call	UNIT6502_$$_READ6502$INT64$$BYTE
# PeepHole Optimization,var2a
	movl	%edi,%edx
	movb	%al,40(%rsp,%rdx,1)
	cmpl	$25,%edi
	jl	.Lj2235
.Ll799:
# [1859] for i:=0 to 25 do ramb^[$d400+i]:= buf[i] ;
	movl	$0,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj2242:
	addl	$1,%edi
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	%edi,%rax
# PeepHole Optimization,var2a
	movl	%edi,%edx
	movb	40(%rsp,%rdx,1),%dl
	movb	%dl,54272(%rcx,%rax,1)
	cmpl	$25,%edi
	jl	.Lj2242
.Ll800:
# [1862] timer1+=siddelay;
	movq	TC_$RETRO_$$_TIMER1(%rip),%rax
	movq	TC_$RETRO_$$_SIDDELAY(%rip),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,TC_$RETRO_$$_TIMER1(%rip)
.Ll801:
# [1863] songtime+=siddelay;
	movq	U_$RETRO_$$_SONGTIME(%rip),%rax
	movq	TC_$RETRO_$$_SIDDELAY(%rip),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,U_$RETRO_$$_SONGTIME(%rip)
.Lj2208:
.Lj2206:
.Lj2140:
.Lj2136:
.Ll802:
# [1869] s:=sid(1);
	leaq	32(%rsp),%rcx
	movl	$1,%edx
	call	RETRO_$$_SID$LONGINT$$TSAMPLE
.Ll803:
# [1870] s1:=round(16384*testvoice.getsample);
	movq	U_$RETRO_$$_TESTVOICE(%rip),%rcx
	call	FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
	mulsd	_$RETRO$_Ld1(%rip),%xmm0
	cvtsd2siq	%xmm0,%rax
	movw	%ax,%r13w
.Ll804:
# [1871] s[0]+=s1;
	movswl	32(%rsp),%edx
	movswl	%r13w,%eax
	leal	(%edx,%eax),%eax
	movw	%ax,32(%rsp)
.Ll805:
# [1872] s[1]+=s1;
	movswl	34(%rsp),%edx
	movswl	%r13w,%eax
	leal	(%edx,%eax),%eax
	movw	%ax,34(%rsp)
.Ll806:
# [1873] if ereverb then s:=reverb1(s);
	cmpb	$0,TC_$RETRO_$$_EREVERB(%rip)
	je	.Lj2262
	leaq	32(%rsp),%rdx
	leaq	72(%rsp),%rcx
	call	RETRO_$$_REVERB1$TSAMPLE$$TSAMPLE
	movl	72(%rsp),%eax
	movl	%eax,32(%rsp)
.Lj2262:
.Ll807:
# [1874] if edelay then s:=delay1(s);
	cmpb	$0,TC_$RETRO_$$_EDELAY(%rip)
	je	.Lj2270
	leaq	32(%rsp),%rdx
	leaq	72(%rsp),%rcx
	call	RETRO_$$_DELAY1$TSAMPLE$$TSAMPLE
	movl	72(%rsp),%eax
	movl	%eax,32(%rsp)
.Lj2270:
.Ll808:
# [1875] audio2[960*k]:=s[0];
	movslq	%r14d,%rax
	imulq	$960,%rax,%rax
	movw	32(%rsp),%dx
	movw	%dx,(%rbx,%rax,2)
.Ll809:
# [1876] audio2[960*k+1]:=s[1];
	movslq	%r14d,%rax
	imulq	$960,%rax,%rax
	movw	34(%rsp),%dx
	movw	%dx,2(%rbx,%rax,2)
.Ll810:
# [1877] oldsc:=sc;
	movl	TC_$RETRO_$$_SC(%rip),%eax
	movl	%eax,TC_$RETRO_$$_OLDSC(%rip)
.Ll811:
# [1878] sc:=s[0]+s[1];
	movswl	32(%rsp),%edx
	movswl	34(%rsp),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,TC_$RETRO_$$_SC(%rip)
.Ll812:
# [1879] scope[scj div 1]:=sc; inc(scj); if scj>959 then if (oldsc<0) and (sc>0) then scj:=0 else scj:=959;
	movl	TC_$RETRO_$$_SCJ(%rip),%ecx
	movl	TC_$RETRO_$$_SC(%rip),%edx
	leaq	U_$RETRO_$$_SCOPE(%rip),%rax
	movl	%edx,(%rax,%rcx,4)
	addl	$1,TC_$RETRO_$$_SCJ(%rip)
	cmpl	$959,TC_$RETRO_$$_SCJ(%rip)
	jng	.Lj2288
	cmpl	$0,TC_$RETRO_$$_OLDSC(%rip)
	jnl	.Lj2290
	cmpl	$0,TC_$RETRO_$$_SC(%rip)
	jng	.Lj2290
	movl	$0,TC_$RETRO_$$_SCJ(%rip)
	jmp	.Lj2294
.Lj2290:
	movl	$959,TC_$RETRO_$$_SCJ(%rip)
.Lj2294:
.Lj2288:
.Ll813:
# [1881] for i:=480*k+1 to 480*k+479 do
	imull	$480,%r14d,%eax
	leal	479(%eax),%r15d
	imull	$480,%r14d,%eax
	leal	1(%eax),%eax
	movl	%eax,%edi
	cmpl	%edi,%r15d
	jl	.Lj2300
	subl	$1,%edi
	.balign 8,0x90
.Lj2301:
	addl	$1,%edi
.Ll814:
# [1883] s:=sid(0);
	leaq	72(%rsp),%rcx
	movl	$0,%edx
	call	RETRO_$$_SID$LONGINT$$TSAMPLE
	movl	72(%rsp),%eax
	movl	%eax,32(%rsp)
.Ll815:
# [1884] s1:=round(16384*testvoice.getsample);
	movq	U_$RETRO_$$_TESTVOICE(%rip),%rcx
	call	FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
	mulsd	_$RETRO$_Ld1(%rip),%xmm0
	cvtsd2siq	%xmm0,%rax
	movw	%ax,%r13w
.Ll816:
# [1885] s[0]+=s1;
	movswl	32(%rsp),%edx
	movswl	%r13w,%eax
	leal	(%edx,%eax),%eax
	movw	%ax,32(%rsp)
.Ll817:
# [1886] s[1]+=s1;
	movswl	34(%rsp),%edx
	movswl	%r13w,%eax
	leal	(%edx,%eax),%eax
	movw	%ax,34(%rsp)
.Ll818:
# [1887] if ereverb then s:=reverb1(s);
	cmpb	$0,TC_$RETRO_$$_EREVERB(%rip)
	je	.Lj2317
	leaq	32(%rsp),%rdx
	leaq	72(%rsp),%rcx
	call	RETRO_$$_REVERB1$TSAMPLE$$TSAMPLE
	movl	72(%rsp),%eax
	movl	%eax,32(%rsp)
.Lj2317:
.Ll819:
# [1888] if edelay then s:=delay1(s);
	cmpb	$0,TC_$RETRO_$$_EDELAY(%rip)
	je	.Lj2325
	leaq	32(%rsp),%rdx
	leaq	72(%rsp),%rcx
	call	RETRO_$$_DELAY1$TSAMPLE$$TSAMPLE
	movl	72(%rsp),%eax
	movl	%eax,32(%rsp)
.Lj2325:
.Ll820:
# [1889] audio2[2*i]:=s[0];
	movslq	%edi,%rax
	shlq	$1,%rax
	movw	32(%rsp),%dx
	movw	%dx,(%rbx,%rax,2)
.Ll821:
# [1890] audio2[2*i+1]:=s[1];
	movslq	%edi,%rax
	shlq	$1,%rax
	movw	34(%rsp),%dx
	movw	%dx,2(%rbx,%rax,2)
.Ll822:
# [1891] oldsc:=sc;
	movl	TC_$RETRO_$$_SC(%rip),%eax
	movl	%eax,TC_$RETRO_$$_OLDSC(%rip)
.Ll823:
# [1892] sc:=s[0]+s[1];
	movswl	32(%rsp),%edx
	movswl	34(%rsp),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,TC_$RETRO_$$_SC(%rip)
.Ll824:
# [1893] scope[scj div 1]:=sc; inc(scj); if scj>959 then if (oldsc<0) and (sc>0) then scj:=0 else scj:=959;
	movl	TC_$RETRO_$$_SCJ(%rip),%ecx
	movl	TC_$RETRO_$$_SC(%rip),%edx
	leaq	U_$RETRO_$$_SCOPE(%rip),%rax
	movl	%edx,(%rax,%rcx,4)
	addl	$1,TC_$RETRO_$$_SCJ(%rip)
	cmpl	$959,TC_$RETRO_$$_SCJ(%rip)
	jng	.Lj2343
	cmpl	$0,TC_$RETRO_$$_OLDSC(%rip)
	jnl	.Lj2345
	cmpl	$0,TC_$RETRO_$$_SC(%rip)
	jng	.Lj2345
	movl	$0,TC_$RETRO_$$_SCJ(%rip)
	jmp	.Lj2349
.Lj2345:
	movl	$959,TC_$RETRO_$$_SCJ(%rip)
.Lj2349:
.Lj2343:
.Ll825:
	cmpl	%edi,%r15d
	jg	.Lj2301
.Lj2300:
.Ll826:
	cmpl	$3,%r14d
	jl	.Lj2132
.Ll827:
# [1899] sidtime:=gettime-t;
	call	RETRO_$$_GETTIME$$INT64
	subq	%rsi,%rax
	movq	%rax,U_$RETRO_$$_SIDTIME(%rip)
.Ll828:
# [1900] end;
	nop
	leaq	80(%rsp),%rsp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc129:
.Lt37:
.Ll829:

.section .text.n_retro_$$_div$tsample$longint$$tsample,"x"
	.balign 16,0x90
.globl	RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE:
.Lc131:
# Temps allocated between rsp+8 and rsp+16
.seh_proc RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
.Ll830:
# [1905] begin
	leaq	-24(%rsp),%rsp
.Lc133:
.seh_stackalloc 24
# Var b located in register r8d
# Var $result located in register rcx
.seh_endprologue
# Var a located at rsp+0, size=OS_64
# PeepHole Optimization,MovMov2MovMov1
	movq	%rdx,(%rsp)
	movq	%rdx,%rax
	movl	(%rax),%eax
	movl	%eax,8(%rsp)
.Ll831:
# [1906] result[0]:=a[0] div b;
	movswq	8(%rsp),%rax
	movslq	%r8d,%r9
	cqto
	idivq	%r9
	movw	%ax,(%rcx)
.Ll832:
# [1907] result[1]:=a[1] div b;
	movswq	10(%rsp),%rax
	movslq	%r8d,%r8
	cqto
	idivq	%r8
	movw	%ax,2(%rcx)
.Ll833:
# [1908] end;
	leaq	24(%rsp),%rsp
	ret
.seh_endproc
.Lc132:
.Lt45:
.Ll834:

.section .text.n_retro_$$_plus$tsample$tsample$$tsample,"x"
	.balign 16,0x90
.globl	RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE:
.Lc134:
# Temps allocated between rsp+16 and rsp+24
.seh_proc RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
.Ll835:
# [1913] begin
	leaq	-24(%rsp),%rsp
.Lc136:
.seh_stackalloc 24
# Var $result located in register rcx
# Var q1 located in register eax
# Var q2 located in register edx
.seh_endprologue
# Var a located at rsp+0, size=OS_64
# Var b located at rsp+8, size=OS_64
	movq	%rdx,(%rsp)
	movq	%r8,8(%rsp)
	movq	(%rsp),%rax
	movl	(%rax),%eax
	movl	%eax,16(%rsp)
	movq	8(%rsp),%rax
	movl	(%rax),%eax
	movl	%eax,(%rsp)
.Ll836:
# [1914] q1:=a[0] + b[0];
	movswl	16(%rsp),%eax
	movswl	(%rsp),%edx
	leal	(%eax,%edx),%eax
# Var q1 located in register eax
.Ll837:
# [1915] q2:=a[1] + b[1];
	movswl	18(%rsp),%edx
	movswl	2(%rsp),%r8d
	leal	(%edx,%r8d),%edx
# Var q2 located in register edx
.Ll838:
# [1916] if q1>32767 then q1:=32767;
	cmpl	$32767,%eax
	jng	.Lj2367
	movl	$32767,%eax
.Lj2367:
.Ll839:
# [1917] if q1<-32767 then q1:=-32767;
	cmpl	$-32767,%eax
	jnl	.Lj2371
	movl	$-32767,%eax
.Lj2371:
.Ll840:
# [1918] if q2>32767 then q2:=32767;
	cmpl	$32767,%edx
	jng	.Lj2375
	movl	$32767,%edx
.Lj2375:
.Ll841:
# [1919] if q2<-32767 then q2:=-32767;
	cmpl	$-32767,%edx
	jnl	.Lj2379
	movl	$-32767,%edx
.Lj2379:
.Ll842:
# [1920] result[0]:=q1;
	movw	%ax,(%rcx)
.Ll843:
# [1921] result[1]:=q2;
	movw	%dx,2(%rcx)
.Ll844:
# [1922] end;
	leaq	24(%rsp),%rsp
	ret
.seh_endproc
.Lc135:
.Lt46:
.Ll845:

.section .text.n_retro_$$_delay1$tsample$$tsample,"x"
	.balign 16,0x90
.globl	RETRO_$$_DELAY1$TSAMPLE$$TSAMPLE
RETRO_$$_DELAY1$TSAMPLE$$TSAMPLE:
.Lc137:
# Temps allocated between rsp+40 and rsp+56
.seh_proc RETRO_$$_DELAY1$TSAMPLE$$TSAMPLE
.Ll846:
# [1927] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-64(%rsp),%rsp
.Lc139:
.seh_stackalloc 64
# Var $result located in register rbx
.seh_endprologue
# Var s located at rsp+32, size=OS_64
	movq	%rcx,%rbx
# PeepHole Optimization,MovMov2MovMov1
	movq	%rdx,32(%rsp)
	movq	%rdx,%rax
	movl	(%rax),%eax
	movl	%eax,40(%rsp)
.Ll847:
# [1928] result:=(dl[de] div 2) +s;
	movl	TC_$RETRO_$$_DE(%rip),%eax
	leaq	U_$RETRO_$$_DL(%rip),%rdx
	leaq	(%rdx,%rax,4),%rdx
	leaq	32(%rsp),%rcx
	movl	$2,%r8d
	call	RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
	leaq	32(%rsp),%rdx
	movq	%rbx,%rcx
	leaq	40(%rsp),%r8
	call	RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
.Ll848:
# [1929] dl[de]:=(dl[de] div 2) +s;
	movl	TC_$RETRO_$$_DE(%rip),%eax
	leaq	U_$RETRO_$$_DL(%rip),%rdx
	leaq	(%rdx,%rax,4),%rdx
	leaq	48(%rsp),%rcx
	movl	$2,%r8d
	call	RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
	leaq	48(%rsp),%rdx
	leaq	40(%rsp),%r8
	leaq	32(%rsp),%rcx
	call	RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
	movl	TC_$RETRO_$$_DE(%rip),%eax
	movl	32(%rsp),%ecx
	leaq	U_$RETRO_$$_DL(%rip),%rdx
	movl	%ecx,(%rdx,%rax,4)
.Ll849:
# [1930] de:=(de+1) mod da;
	movslq	TC_$RETRO_$$_DE(%rip),%rax
	leaq	1(%rax),%rax
	movslq	TC_$RETRO_$$_DA(%rip),%rcx
	cqto
	idivq	%rcx
	movl	%edx,TC_$RETRO_$$_DE(%rip)
.Ll850:
# [1931] end;
	nop
	leaq	64(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc138:
.Lt31:
.Ll851:

.section .text.n_retro_$$_reverb1$tsample$$tsample,"x"
	.balign 16,0x90
.globl	RETRO_$$_REVERB1$TSAMPLE$$TSAMPLE
RETRO_$$_REVERB1$TSAMPLE$$TSAMPLE:
.Lc140:
# Temps allocated between rsp+40 and rsp+264
.seh_proc RETRO_$$_REVERB1$TSAMPLE$$TSAMPLE
.Ll852:
# [1940] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	pushq	%r14
.seh_pushreg %r14
	pushq	%r15
.seh_pushreg %r15
	pushq	%rbp
.seh_pushreg %rbp
	leaq	-264(%rsp),%rsp
.Lc142:
.seh_stackalloc 264
# Var $result located in register rax
# Var a1 located in register eax
# Var a2 located in register eax
# Var a3 located in register eax
# Var a4 located in register eax
# Var a5 located in register r13d
# Var a6 located in register r12d
# Var a7 located in register edi
# Var a8 located in register esi
# Var a9 located in register ebx
# Var a10 located in register edx
.seh_endprologue
# Var s located at rsp+32, size=OS_64
	movq	%rcx,248(%rsp)
# PeepHole Optimization,MovMov2MovMov1
	movq	%rdx,32(%rsp)
	movq	%rdx,%rax
	movl	(%rax),%eax
	movl	%eax,40(%rsp)
.Ll853:
# [1941] if sart=1 then begin sart:=0; rl[0,0]:=32767; end;
	cmpl	$1,TC_$RETRO$_$REVERB1$TSAMPLE$$TSAMPLE_$$_SART(%rip)
	jne	.Lj2419
	movl	$0,TC_$RETRO$_$REVERB1$TSAMPLE$$TSAMPLE_$$_SART(%rip)
	movw	$32767,U_$RETRO_$$_RL(%rip)
.Lj2419:
.Ll854:
# [1942] ra:=657 ;
	movl	$657,TC_$RETRO_$$_RA(%rip)
.Ll855:
# [1943] a1:=(ra+re-160) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	leaq	(%rax,%rcx),%rax
	leaq	-160(%rax),%rax
	cqto
	idivq	%rcx
# Var a1 located in register eax
	movl	%edx,%eax
	movq	%rax,240(%rsp)
.Ll856:
# [1944] a2:=(ra+re-192) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	leaq	(%rax,%rcx),%rax
	leaq	-192(%rax),%rax
	cqto
	idivq	%rcx
# Var a2 located in register eax
	movl	%edx,%eax
	movq	%rax,232(%rsp)
.Ll857:
# [1945] a3:=(ra+re-256) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	leaq	(%rax,%rcx),%rax
	leaq	-256(%rax),%rax
	cqto
	idivq	%rcx
# Var a3 located in register eax
	movl	%edx,%eax
	movq	%rax,224(%rsp)
.Ll858:
# [1946] a4:=(ra+re-320) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	leaq	(%rax,%rcx),%rax
	leaq	-320(%rax),%rax
	cqto
	idivq	%rcx
# Var a4 located in register eax
	movl	%edx,%eax
	movq	%rax,256(%rsp)
.Ll859:
# [1947] a5:=(ra+re-352) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	leaq	(%rax,%rcx),%rax
	leaq	-352(%rax),%rax
	cqto
	idivq	%rcx
# Var a5 located in register r13d
	movl	%edx,%r13d
.Ll860:
# [1948] a6:=(ra+re-384) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	leaq	(%rax,%rcx),%rax
	leaq	-384(%rax),%rax
	cqto
	idivq	%rcx
# Var a6 located in register edx
.Ll861:
# [1949] a6:=(ra+re-448) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	leaq	(%rax,%rcx),%rax
	leaq	-448(%rax),%rax
	cqto
	idivq	%rcx
# Var a6 located in register r12d
	movl	%edx,%r12d
.Ll862:
# [1950] a7:=(ra+re-480) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	leaq	(%rax,%rcx),%rax
	leaq	-480(%rax),%rax
	cqto
	idivq	%rcx
# Var a7 located in register edi
	movl	%edx,%edi
.Ll863:
# [1951] a8:=(ra+re-512) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	leaq	(%rax,%rcx),%rax
	leaq	-512(%rax),%rax
	cqto
	idivq	%rcx
# Var a8 located in register esi
	movl	%edx,%esi
.Ll864:
# [1952] a9:=(ra+re-576) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	leaq	(%rax,%rcx),%rax
	leaq	-576(%rax),%rax
	cqto
	idivq	%rcx
# Var a9 located in register ebx
	movl	%edx,%ebx
.Ll865:
# [1953] a10:=(ra+re-640) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	leaq	(%rax,%rcx),%rax
	leaq	-640(%rax),%rax
	cqto
	idivq	%rcx
# Var a10 located in register edx
.Ll866:
# [1965] + (rl[a10] div 22)
	andl	$4294967295,%edx
	leaq	U_$RETRO_$$_RL(%rip),%rax
	leaq	(%rax,%rdx,4),%rdx
	leaq	32(%rsp),%rcx
	movl	$22,%r8d
	call	RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
	leaq	32(%rsp),%rax
	movq	%rax,216(%rsp)
# PeepHole Optimization,var2a
.Ll867:
# [1964] + (rl[a9] div 20)
	movl	%ebx,%eax
	leaq	U_$RETRO_$$_RL(%rip),%rdx
	leaq	(%rdx,%rax,4),%rdx
	leaq	56(%rsp),%rcx
	movl	$20,%r8d
	call	RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
.Ll868:
	leaq	56(%rsp),%rax
	movq	%rax,208(%rsp)
# PeepHole Optimization,var2a
.Ll869:
# [1963] + (rl[a8] div 18)
	movl	%esi,%eax
	leaq	U_$RETRO_$$_RL(%rip),%rdx
	leaq	(%rdx,%rax,4),%rdx
	leaq	72(%rsp),%rcx
	movl	$18,%r8d
	call	RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
.Ll870:
	leaq	72(%rsp),%rbp
# PeepHole Optimization,var2a
.Ll871:
# [1962] + (rl[a7] div 16)
	movl	%edi,%eax
	leaq	U_$RETRO_$$_RL(%rip),%rdx
	leaq	(%rdx,%rax,4),%rdx
	leaq	88(%rsp),%rcx
	movl	$16,%r8d
	call	RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
.Ll872:
	leaq	88(%rsp),%r15
# PeepHole Optimization,var2a
.Ll873:
# [1961] + (rl[a6] div 14)
	movl	%r12d,%eax
	leaq	U_$RETRO_$$_RL(%rip),%rdx
	leaq	(%rdx,%rax,4),%rdx
	leaq	104(%rsp),%rcx
	movl	$14,%r8d
	call	RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
.Ll874:
	leaq	104(%rsp),%r14
# PeepHole Optimization,var2a
.Ll875:
# [1960] + (rl[a5] div 12)
	movl	%r13d,%eax
	leaq	U_$RETRO_$$_RL(%rip),%rdx
	leaq	(%rdx,%rax,4),%rdx
	leaq	120(%rsp),%rcx
	movl	$12,%r8d
	call	RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
.Ll876:
	leaq	120(%rsp),%r13
.Ll877:
# [1959] + (rl[a4] div 10)
	movl	256(%rsp),%eax
# PeepHole Optimization,var2a
	movl	%eax,%edx
	leaq	U_$RETRO_$$_RL(%rip),%rax
	leaq	(%rax,%rdx,4),%rdx
	leaq	136(%rsp),%rcx
	movl	$10,%r8d
	call	RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
.Ll878:
	leaq	136(%rsp),%r12
.Ll879:
# [1958] + (rl[a3] div 8)
	movl	224(%rsp),%eax
# PeepHole Optimization,var2a
	movl	%eax,%edx
	leaq	U_$RETRO_$$_RL(%rip),%rax
	leaq	(%rax,%rdx,4),%rdx
	leaq	152(%rsp),%rcx
	movl	$8,%r8d
	call	RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
.Ll880:
	leaq	152(%rsp),%rdi
.Ll881:
# [1957] + (rl[a2] div 6)
	movl	232(%rsp),%eax
# PeepHole Optimization,var2a
	movl	%eax,%edx
	leaq	U_$RETRO_$$_RL(%rip),%rax
	leaq	(%rax,%rdx,4),%rdx
	leaq	168(%rsp),%rcx
	movl	$6,%r8d
	call	RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
.Ll882:
	leaq	168(%rsp),%rsi
.Ll883:
# [1956] + (rl[a1] div 4)
	movl	240(%rsp),%eax
# PeepHole Optimization,var2a
	movl	%eax,%edx
	leaq	U_$RETRO_$$_RL(%rip),%rax
	leaq	(%rax,%rdx,4),%rdx
	leaq	184(%rsp),%rcx
	movl	$4,%r8d
	call	RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
.Ll884:
	leaq	184(%rsp),%rbx
.Ll885:
# [1955] result:=(rl[re] div 2) +s
	movl	TC_$RETRO_$$_RE(%rip),%edx
	leaq	U_$RETRO_$$_RL(%rip),%rax
	leaq	(%rax,%rdx,4),%rax
	leaq	200(%rsp),%rcx
	movl	$2,%r8d
	movq	%rax,%rdx
	call	RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
.Ll886:
	leaq	200(%rsp),%rax
	leaq	40(%rsp),%r8
	leaq	192(%rsp),%rcx
	movq	%rax,%rdx
	call	RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
.Ll887:
	leaq	192(%rsp),%rdx
	leaq	176(%rsp),%rcx
	movq	%rbx,%r8
	call	RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
.Ll888:
	leaq	176(%rsp),%rdx
	leaq	160(%rsp),%rcx
	movq	%rsi,%r8
	call	RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
.Ll889:
	leaq	160(%rsp),%rdx
	leaq	144(%rsp),%rcx
	movq	%rdi,%r8
	call	RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
.Ll890:
	leaq	144(%rsp),%rdx
	leaq	128(%rsp),%rcx
	movq	%r12,%r8
	call	RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
.Ll891:
	leaq	128(%rsp),%rdx
	leaq	112(%rsp),%rcx
	movq	%r13,%r8
	call	RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
.Ll892:
	leaq	112(%rsp),%rdx
	leaq	96(%rsp),%rcx
	movq	%r14,%r8
	call	RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
.Ll893:
	leaq	96(%rsp),%rdx
	leaq	80(%rsp),%rcx
	movq	%r15,%r8
	call	RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
.Ll894:
	leaq	80(%rsp),%rdx
	leaq	64(%rsp),%rcx
	movq	%rbp,%r8
	call	RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
.Ll895:
	leaq	64(%rsp),%rdx
	leaq	48(%rsp),%rcx
	movq	208(%rsp),%r8
	call	RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
	leaq	48(%rsp),%rdx
	movq	248(%rsp),%rcx
	movq	216(%rsp),%r8
	call	RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
.Ll896:
# [1969] rl[re]:=(rl[re] div 2) +s;
	movl	TC_$RETRO_$$_RE(%rip),%eax
	leaq	U_$RETRO_$$_RL(%rip),%rdx
	leaq	(%rdx,%rax,4),%rdx
	leaq	48(%rsp),%rcx
	movl	$2,%r8d
	call	RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
	leaq	48(%rsp),%rdx
	leaq	40(%rsp),%r8
	leaq	32(%rsp),%rcx
	call	RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
	movl	TC_$RETRO_$$_RE(%rip),%eax
	movl	32(%rsp),%edx
	leaq	U_$RETRO_$$_RL(%rip),%rcx
	movl	%edx,(%rcx,%rax,4)
.Ll897:
# [1970] re:=(re+1) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	leaq	1(%rax),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	cqto
	idivq	%rcx
	movl	%edx,TC_$RETRO_$$_RE(%rip)
.Ll898:
# [1971] end;
	nop
	leaq	264(%rsp),%rsp
	popq	%rbp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc141:
.Lt32:
.Ll899:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 4
# [79] var fh,filetype:integer;
	.globl U_$RETRO_$$_FH
U_$RETRO_$$_FH:
	.zero 4

.section .bss
	.balign 4
	.globl U_$RETRO_$$_FILETYPE
U_$RETRO_$$_FILETYPE:
	.zero 4

.section .bss
	.balign 2
# [80] play:word;
	.globl U_$RETRO_$$_PLAY
U_$RETRO_$$_PLAY:
	.zero 2

.section .bss
	.balign 8
# [81] scr:PSDL_window;
	.globl U_$RETRO_$$_SCR
U_$RETRO_$$_SCR:
	.zero 8

.section .bss
	.balign 8
# [82] sdlRenderer:PSDL_Renderer;
	.globl U_$RETRO_$$_SDLRENDERER
U_$RETRO_$$_SDLRENDERER:
	.zero 8

.section .bss
	.balign 8
# [83] sdltexture:psdl_texture;
	.globl U_$RETRO_$$_SDLTEXTURE
U_$RETRO_$$_SDLTEXTURE:
	.zero 8

.section .bss
	.balign 8
# [84] p2:^integer;
	.globl U_$RETRO_$$_P2
U_$RETRO_$$_P2:
	.zero 8

.section .bss
	.balign 8
# [85] tim,t,t2,t3,ts,t6,time6502:int64;
	.globl U_$RETRO_$$_TIM
U_$RETRO_$$_TIM:
	.zero 8

.section .bss
	.balign 8
	.globl U_$RETRO_$$_T
U_$RETRO_$$_T:
	.zero 8

.section .bss
	.balign 8
	.globl U_$RETRO_$$_T2
U_$RETRO_$$_T2:
	.zero 8

.section .bss
	.balign 8
	.globl U_$RETRO_$$_T3
U_$RETRO_$$_T3:
	.zero 8

.section .bss
	.balign 8
	.globl U_$RETRO_$$_TS
U_$RETRO_$$_TS:
	.zero 8

.section .bss
	.balign 8
	.globl U_$RETRO_$$_T6
U_$RETRO_$$_T6:
	.zero 8

.section .bss
	.balign 8
	.globl U_$RETRO_$$_TIME6502
U_$RETRO_$$_TIME6502:
	.zero 8

.section .bss
# [86] vblank1:byte;
	.globl U_$RETRO_$$_VBLANK1
U_$RETRO_$$_VBLANK1:
	.zero 1

.section .bss
# [88] combined:array[0..1023] of byte;
	.globl U_$RETRO_$$_COMBINED
U_$RETRO_$$_COMBINED:
	.zero 1024

.section .bss
	.balign 4
# [89] scope:array[0..959] of integer;
	.globl U_$RETRO_$$_SCOPE
U_$RETRO_$$_SCOPE:
	.zero 3840

.section .bss
	.balign 8
# [91] desired,obtained:TSDL_AudioSpec;
	.globl U_$RETRO_$$_DESIRED
U_$RETRO_$$_DESIRED:
	.zero 32

.section .bss
	.balign 8
	.globl U_$RETRO_$$_OBTAINED
U_$RETRO_$$_OBTAINED:
	.zero 32

.section .bss
	.balign 4
# [94] debug:integer;
	.globl U_$RETRO_$$_DEBUG
U_$RETRO_$$_DEBUG:
	.zero 4

.section .bss
	.balign 8
# [95] sidtime:int64;
	.globl U_$RETRO_$$_SIDTIME
U_$RETRO_$$_SIDTIME:
	.zero 8

.section .bss
	.balign 8
# [98] songtime,songfreq:int64;
	.globl U_$RETRO_$$_SONGTIME
U_$RETRO_$$_SONGTIME:
	.zero 8

.section .bss
	.balign 8
	.globl U_$RETRO_$$_SONGFREQ
U_$RETRO_$$_SONGFREQ:
	.zero 8

.section .bss
	.balign 4
# [99] skip:integer;
	.globl U_$RETRO_$$_SKIP
U_$RETRO_$$_SKIP:
	.zero 4

.section .bss
	.balign 8
# [103] thread:TRetro;
	.globl U_$RETRO_$$_THREAD
U_$RETRO_$$_THREAD:
	.zero 8

.section .bss
	.balign 4
# [104] times6502:array[0..15] of integer;
	.globl U_$RETRO_$$_TIMES6502
U_$RETRO_$$_TIMES6502:
	.zero 64

.section .bss
	.balign 8
# [105] r1:pointer;
	.globl U_$RETRO_$$_R1
U_$RETRO_$$_R1:
	.zero 8

.section .bss
	.balign 8
# [110] ft,ftt:int64;
	.globl U_$RETRO_$$_FT
U_$RETRO_$$_FT:
	.zero 8

.section .bss
	.balign 8
	.globl U_$RETRO_$$_FTT
U_$RETRO_$$_FTT:
	.zero 8

.section .bss
	.balign 8
# [112] attacktablei:array[0..15] of int64;
	.globl U_$RETRO_$$_ATTACKTABLEI
U_$RETRO_$$_ATTACKTABLEI:
	.zero 128

.section .bss
	.balign 8
# [113] srtablei:array[0..15] of int64;
	.globl U_$RETRO_$$_SRTABLEI
U_$RETRO_$$_SRTABLEI:
	.zero 128

.section .bss
	.balign 2
# [118] dl:array[0..192000] of TSample;
	.globl U_$RETRO_$$_DL
U_$RETRO_$$_DL:
	.zero 768004

.section .bss
	.balign 2
# [121] rl:array[0..192000] of TSample;
	.globl U_$RETRO_$$_RL
U_$RETRO_$$_RL:
	.zero 768004

.section .bss
# [146] be,bs:byte;
	.globl U_$RETRO_$$_BE
U_$RETRO_$$_BE:
	.zero 1

.section .bss
	.globl U_$RETRO_$$_BS
U_$RETRO_$$_BS:
	.zero 1

.section .bss
	.balign 4
# [147] keybuffer:array[0..255] of cardinal;
	.globl U_$RETRO_$$_KEYBUFFER
U_$RETRO_$$_KEYBUFFER:
	.zero 1024

.section .bss
	.balign 8
# [148] testoperator:TFmOperator;
	.globl U_$RETRO_$$_TESTOPERATOR
U_$RETRO_$$_TESTOPERATOR:
	.zero 8

.section .bss
	.balign 8
# [149] testvoice:TFmVoice;
	.globl U_$RETRO_$$_TESTVOICE
U_$RETRO_$$_TESTVOICE:
	.zero 8

.section .bss
	.balign 4
# [191] fh2:integer;
U_$RETRO_$$_FH2:
	.zero 4

.section .bss
	.balign 4
# [193] var sinetable:array[0..65535] of integer;
U_$RETRO_$$_SINETABLE:
	.zero 262144

.section .bss
	.balign 4
# [194] logtable:array[0..65535] of cardinal;
U_$RETRO_$$_LOGTABLE:
	.zero 262144

.section .bss
	.balign 4
# [195] outputtable:array[0..8191] of integer;
U_$RETRO_$$_OUTPUTTABLE:
	.zero 32768

.section .bss
	.balign 4
# [196] notes:array[0..127] of integer;
U_$RETRO_$$_NOTES:
	.zero 512

.section .bss
	.balign 4
# [197] opdata:array[0..65535] of cardinal;
U_$RETRO_$$_OPDATA:
	.zero 262144

.section .data.n_VMT_$RETRO_$$_TRETRO,"d"
	.balign 8
.globl	VMT_$RETRO_$$_TRETRO
VMT_$RETRO_$$_TRETRO:
	.quad	88,-88
	.quad	VMT_$CLASSES_$$_TTHREAD
	.quad	.Ld40
	.quad	0,0,0
	.quad	RTTI_$RETRO_$$_TRETRO
	.quad	0,0
	.quad	FPC_EMPTYINTF
	.quad	0
	.quad	CLASSES$_$TTHREAD_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.quad	FPC_EMPTYMETHOD
	.quad	CLASSES$_$TTHREAD_$__$$_AFTERCONSTRUCTION
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	SYSTEM$_$TOBJECT_$__$$_DISPATCH$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_DISPATCHSTR$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_EQUALS$TOBJECT$$BOOLEAN
	.quad	SYSTEM$_$TOBJECT_$__$$_GETHASHCODE$$INT64
	.quad	SYSTEM$_$TOBJECT_$__$$_TOSTRING$$ANSISTRING
	.quad	CLASSES$_$TTHREAD_$__$$_DOTERMINATE
	.quad	RETRO$_$TRETRO_$__$$_EXECUTE
	.quad	0
# [1975] 
	.balign 8
.Ld40:
	.byte	6
	.ascii	"TRetro"
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .data.n_tc_$retro_$$_db,"d"
.globl	TC_$RETRO_$$_DB
TC_$RETRO_$$_DB:
	.byte	0

.section .data.n_tc_$retro_$$_timer1,"d"
	.balign 8
.globl	TC_$RETRO_$$_TIMER1
TC_$RETRO_$$_TIMER1:
	.quad	-1
# [97] siddelay:int64=20000;

.section .data.n_tc_$retro_$$_siddelay,"d"
	.balign 8
.globl	TC_$RETRO_$$_SIDDELAY
TC_$RETRO_$$_SIDDELAY:
	.quad	20000

.section .data.n_tc_$retro_$$_scj,"d"
	.balign 4
.globl	TC_$RETRO_$$_SCJ
TC_$RETRO_$$_SCJ:
	.long	0
# [101] ft1r:Tfiltertable=(0,0,0,0,0,0,0,0,0,0,0,0,0,0);

.section .data.n_tc_$retro_$$_ft1r,"d"
	.balign 8
.globl	TC_$RETRO_$$_FT1R
TC_$RETRO_$$_FT1R:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [102] ft1l:Tfiltertable=(0,0,0,0,0,0,0,0,0,0,0,0,0,0);

.section .data.n_tc_$retro_$$_ft1l,"d"
	.balign 8
.globl	TC_$RETRO_$$_FT1L
TC_$RETRO_$$_FT1L:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0

.section .data.n_tc_$retro_$$_attacktable,"d"
	.balign 8
.globl	TC_$RETRO_$$_ATTACKTABLE
TC_$RETRO_$$_ATTACKTABLE:
# value: 0d+5.2079999999999997E-004
	.byte	111,116,223,123,201,16,65,63
# value: 0d+1.3019999999999999E-004
	.byte	111,116,223,123,201,16,33,63
# value: 0d+6.5099999999999997E-005
	.byte	111,116,223,123,201,16,17,63
# value: 0d+4.3399999999999998E-005
	.byte	148,240,41,165,12,193,6,63
# value: 0d+2.7399999999999999E-005
	.byte	155,243,157,169,33,187,252,62
# value: 0d+1.8600000000000001E-005
	.byte	91,23,109,68,230,128,243,62
# value: 0d+1.5299999999999999E-005
	.byte	194,196,122,254,15,11,240,62
# value: 0d+1.2999999999999999E-005
	.byte	5,162,39,101,82,67,235,62
# value: 0d+1.0400000000000000E-005
	.byte	107,78,185,29,117,207,229,62
# value: 0d+4.1699999999999999E-006
	.byte	53,138,56,223,128,125,209,62
# value: 0d+2.0800000000000000E-006
	.byte	239,113,199,23,196,114,193,62
# value: 0d+1.3020000000000000E-006
	.byte	214,97,173,35,12,216,181,62
# value: 0d+1.0400000000000000E-006
	.byte	239,113,199,23,196,114,177,62
# value: 0d+3.4700000000000002E-007
	.byte	220,164,172,35,106,73,151,62
# value: 0d+2.0800000000000001E-007
	.byte	178,28,63,89,211,234,139,62
# value: 0d+1.3000000000000000E-007
	.byte	239,113,199,23,196,114,129,62

.section .data.n_tc_$retro_$$_de,"d"
	.balign 4
.globl	TC_$RETRO_$$_DE
TC_$RETRO_$$_DE:
	.long	0
# [117] da:integer=64000;

.section .data.n_tc_$retro_$$_da,"d"
	.balign 4
.globl	TC_$RETRO_$$_DA
TC_$RETRO_$$_DA:
	.long	64000

.section .data.n_tc_$retro_$$_re,"d"
	.balign 4
.globl	TC_$RETRO_$$_RE
TC_$RETRO_$$_RE:
	.long	0
# [120] ra:integer=731;

.section .data.n_tc_$retro_$$_ra,"d"
	.balign 4
.globl	TC_$RETRO_$$_RA
TC_$RETRO_$$_RA:
	.long	731

.section .data.n_tc_$retro_$$_oldsc,"d"
	.balign 4
.globl	TC_$RETRO_$$_OLDSC
TC_$RETRO_$$_OLDSC:
	.long	0
# [124] sc:integer=0;

.section .data.n_tc_$retro_$$_sc,"d"
	.balign 4
.globl	TC_$RETRO_$$_SC
TC_$RETRO_$$_SC:
	.long	0
# [125] edelay:boolean=false;

.section .data.n_tc_$retro_$$_edelay,"d"
.globl	TC_$RETRO_$$_EDELAY
TC_$RETRO_$$_EDELAY:
	.byte	0
# [126] ereverb:boolean=false;

.section .data.n_tc_$retro_$$_ereverb,"d"
.globl	TC_$RETRO_$$_EREVERB
TC_$RETRO_$$_EREVERB:
	.byte	0
# [129] keymap2:array[0..127] of byte=(

.section .data.n_tc_$retro_$$_keymap2,"d"
.globl	TC_$RETRO_$$_KEYMAP2
TC_$RETRO_$$_KEYMAP2:
	.byte	0,0,0,0,49,57,53,0,71,54,56,58,79,0,61,63,60,59,81,83,67,72,51,74,77,55,69,52,76,50,66,68,70,0,73,75,0,78,80,52
	.byte	0,0,87,0,72,0,74,76,86,0,0,0,66,0,62,64,65,0,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0,0,95,0,96,0,0,0,0,0,67,64,48,81,0,0,0,89,0,0,0,71,69,91,93,77,83,0,84,88,65,79,62,86,60,0,0,0,0,0

.section .data.n_tc_$retro_$$_running,"d"
	.balign 4
TC_$RETRO_$$_RUNNING:
	.long	0

.section .data.n_tc_$retro_$$_needrestart,"d"
TC_$RETRO_$$_NEEDRESTART:
	.byte	0
# [207] procedure sprite(screen:pointer); forward;

.section .rodata.n__$RETRO$_Ld1,"d"
	.balign 8
.globl	_$RETRO$_Ld1
_$RETRO$_Ld1:
# value: 0d+1.6384000000000000E+004
	.byte	0,0,0,0,0,0,208,64

.section .rodata.n__$RETRO$_Ld2,"d"
	.balign 8
.globl	_$RETRO$_Ld2
_$RETRO$_Ld2:
# value: 0d+1.0000000000000000E+004
	.byte	0,0,0,0,0,136,195,64

.section .rodata.n__$RETRO$_Ld3,"d"
	.balign 8
.globl	_$RETRO$_Ld3
_$RETRO$_Ld3:
# value: 0d+1.5000000000000000E+002
	.byte	0,0,0,0,0,192,98,64

.section .rodata.n__$RETRO$_Ld4,"d"
	.balign 8
.globl	_$RETRO$_Ld4
_$RETRO$_Ld4:
# value: 0d+3.0000000000000000E+002
	.byte	0,0,0,0,0,192,114,64

.section .rodata.n__$RETRO$_Ld5,"d"
	.balign 8
.globl	_$RETRO$_Ld5
_$RETRO$_Ld5:
# value: 0d+1.0737418240000000E+009
	.byte	0,0,0,0,0,0,208,65

.section .rodata.n__$RETRO$_Ld6,"d"
	.balign 8
.globl	_$RETRO$_Ld6
_$RETRO$_Ld6:
# value: 0d+1.0000000000000000E+000
	.byte	0,0,0,0,0,0,240,63

.section .rodata.n__$RETRO$_Ld7,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,13
.globl	_$RETRO$_Ld7
_$RETRO$_Ld7:
	.ascii	"./st4font.def\000"

.section .rodata.n__$RETRO$_Ld8,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,23
.globl	_$RETRO$_Ld8
_$RETRO$_Ld8:
	.ascii	"./combinedwaveforms.bin\000"

.section .rodata.n__$RETRO$_Ld9,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,10
.globl	_$RETRO$_Ld9
_$RETRO$_Ld9:
	.ascii	"./mysz.def\000"

.section .rodata.n__$RETRO$_Ld10,"d"
	.balign 8
.globl	_$RETRO$_Ld10
_$RETRO$_Ld10:
	.ascii	"best\000"

.section .rodata.n__$RETRO$_Ld11,"d"
	.balign 8
.globl	_$RETRO$_Ld11
_$RETRO$_Ld11:
	.ascii	"SDL_RENDER_SCALE_QUALITY\000"

.section .rodata.n__$RETRO$_Ld12,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$RETRO$_Ld12
_$RETRO$_Ld12:
	.ascii	"1\000"

.section .rodata.n__$RETRO$_Ld13,"d"
	.balign 8
.globl	_$RETRO$_Ld13
_$RETRO$_Ld13:
	.ascii	"SDL_RENDER_DIRECT3D_THREADSAFE\000"

.section .rodata.n__$RETRO$_Ld14,"d"
	.balign 8
.globl	_$RETRO$_Ld14
_$RETRO$_Ld14:
	.ascii	"The Retromachine\000"

.section .data.n_tc_$retro$_$sdlevents_$$_x,"d"
	.balign 4
TC_$RETRO$_$SDLEVENTS_$$_X:
	.long	0
# [548] y:integer=0;

.section .data.n_tc_$retro$_$sdlevents_$$_y,"d"
	.balign 4
TC_$RETRO$_$SDLEVENTS_$$_Y:
	.long	0

.section .rodata.n__$RETRO$_Ld15,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,18
.globl	_$RETRO$_Ld15
_$RETRO$_Ld15:
	.ascii	"./ataripalette.def\000"

.section .data.n_tc_$retro$_$noise1$$byte_$$_a,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_A:
	.long	8388600
# [974] b22:cardinal=1 shl 22;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b22,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B22:
	.long	4194304
# [975] b20:cardinal=1 shl 20;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b20,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B20:
	.long	1048576
# [976] b16:cardinal=1 shl 16;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b16,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B16:
	.long	65536
# [977] b13:cardinal=1 shl 13;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b13,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B13:
	.long	8192
# [978] b11:cardinal=1 shl 11;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b11,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B11:
	.long	2048
# [979] b07:cardinal=1 shl 07;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b07,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B07:
	.long	128
# [980] b04:cardinal=1 shl 04;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b04,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B04:
	.long	16
# [981] b02:cardinal=1 shl 02;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b02,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B02:
	.long	4
# [982] b17:cardinal=1 shl 17;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b17,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B17:
	.long	131072
# [984] var output:cardinal;

.section .data.n_tc_$retro$_$noise2$$longword_$$_a,"d"
	.balign 8
TC_$RETRO$_$NOISE2$$LONGWORD_$$_A:
	.quad	8388600
# [1007] var output:int64;

.section .data.n_tc_$retro$_$noise3$$longword_$$_a,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_A:
	.quad	8388600
# [1029] b22:int64=1 shl 22;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b22,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B22:
	.quad	4194304
# [1030] b20:int64=1 shl 20;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b20,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B20:
	.quad	1048576
# [1031] b16:int64=1 shl 16;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b16,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B16:
	.quad	65536
# [1032] b13:int64=1 shl 13;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b13,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B13:
	.quad	8192
# [1033] b11:int64=1 shl 11;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b11,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B11:
	.quad	2048
# [1034] b07:int64=1 shl 07;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b07,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B07:
	.quad	128
# [1035] b04:int64=1 shl 04;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b04,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B04:
	.quad	16
# [1036] b02:int64=1 shl 02;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b02,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B02:
	.quad	4
# [1037] b17:int64=1 shl 17;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b17,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B17:
	.quad	131072
# [1039] var output:int64;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa1,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1085] pa2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1086] pa3:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa3,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1087] pa1n:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa1n,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1N:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1088] pa2n:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa2n,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2N:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1089] pa3n:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa3n,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3N:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1091] pa1i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa1i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I:
	.long	0
# [1092] pa2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I:
	.long	0
# [1093] pa3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I:
	.long	0
# [1094] pa1ni:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa1ni,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1NI:
	.long	0
# [1095] pa2ni:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa2ni,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2NI:
	.long	0
# [1096] pa3ni:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa3ni,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3NI:
	.long	0
# [1098] filter_b:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_b,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1099] filter_h:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_h,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1100] filter_l:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_l,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1102] filter_b2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_b2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1103] filter_h2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_h2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1104] filter_l2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_l2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1106] filter_b3:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_b3,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B3:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1107] filter_h3:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_h3,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H3:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1108] filter_l3:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_l3,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L3:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1111] filter_bi:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_bi,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_BI:
	.long	0
# [1112] filter_hi:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_hi,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_HI:
	.long	0
# [1113] filter_li:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_li,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_LI:
	.long	0
# [1115] filter_b2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_b2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B2I:
	.long	0
# [1116] filter_h2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_h2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H2I:
	.long	0
# [1117] filter_l2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_l2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L2I:
	.long	0
# [1119] filter_b3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_b3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B3I:
	.long	0
# [1120] filter_h3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_h3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H3I:
	.long	0
# [1121] filter_l3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_l3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L3I:
	.long	0
# [1125] wv1:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv1,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1126] wv2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1127] wv3:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv3,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1128] wv4i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv4i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV4I:
	.long	0
# [1129] wv5i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv5i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV5I:
	.long	0
# [1130] adsrvol1i:int64=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_adsrvol1i,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I:
	.quad	0
# [1131] adsrvol2i:int64=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_adsrvol2i,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I:
	.quad	0
# [1132] adsrvol3i:int64=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_adsrvol3i,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I:
	.quad	0
# [1133] adsrstate1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_adsrstate1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1:
	.byte	0
# [1134] adsrstate2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_adsrstate2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2:
	.byte	0
# [1135] adsrstate3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_adsrstate3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3:
	.byte	0
# [1136] sustainvol1i:int64=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sustainvol1i,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL1I:
	.quad	0
# [1137] sustainvol2i:int64=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sustainvol2i,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL2I:
	.quad	0
# [1138] sustainvol3i:int64=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sustainvol3i,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL3I:
	.quad	0
# [1139] oldsc:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_oldsc,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_OLDSC:
	.long	0
# [1140] sc:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sc,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SC:
	.long	0
# [1141] sli:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sli,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SLI:
	.long	0
# [1142] sri:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sri,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SRI:
	.long	0
# [1145] freq1:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq1,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1146] freq1n:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq1n,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1N:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1147] freq1i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq1i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1I:
	.long	0
# [1148] freq1ni:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq1ni,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1NI:
	.long	0
# [1149] waveform1:word=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_waveform1,"d"
	.balign 2
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1:
	.short	0
# [1150] gate1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_gate1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE1:
	.byte	0
# [1151] sa1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sa1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA1:
	.byte	0
# [1152] sd1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sd1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD1:
	.byte	0
# [1153] ss1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ss1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS1:
	.byte	0
# [1154] sr1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sr1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR1:
	.byte	0
# [1155] pw1i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pw1i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW1I:
	.long	0
# [1156] test1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_test1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST1:
	.byte	0
# [1157] sync1:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sync1,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC1:
	.long	0
# [1158] ring1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ring1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING1:
	.byte	0
# [1159] f1:boolean=false;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_f1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F1:
	.byte	0
# [1161] freq2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1162] freq2n:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq2n,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2N:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1163] freq2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2I:
	.long	0
# [1164] freq2ni:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq2ni,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2NI:
	.long	0
# [1165] waveform2:word=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_waveform2,"d"
	.balign 2
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2:
	.short	0
# [1166] gate2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_gate2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE2:
	.byte	0
# [1167] sa2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sa2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA2:
	.byte	0
# [1168] sd2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sd2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD2:
	.byte	0
# [1169] ss2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ss2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS2:
	.byte	0
# [1170] sr2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sr2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR2:
	.byte	0
# [1171] pw2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pw2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW2I:
	.long	0
# [1172] test2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_test2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST2:
	.byte	0
# [1173] sync2:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sync2,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC2:
	.long	0
# [1174] ring2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ring2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING2:
	.byte	0
# [1175] f2:boolean=false;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_f2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F2:
	.byte	0
# [1177] freq3:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq3,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1178] freq3n:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq3n,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3N:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1179] freq3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3I:
	.long	0
# [1180] freq3ni:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq3ni,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3NI:
	.long	0
# [1181] waveform3:word=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_waveform3,"d"
	.balign 2
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3:
	.short	0
# [1182] gate3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_gate3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE3:
	.byte	0
# [1183] sa3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sa3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA3:
	.byte	0
# [1184] sd3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sd3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD3:
	.byte	0
# [1185] ss3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ss3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS3:
	.byte	0
# [1186] sr3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sr3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR3:
	.byte	0
# [1187] pw3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pw3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW3I:
	.long	0
# [1188] test3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_test3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST3:
	.byte	0
# [1189] sync3:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sync3,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC3:
	.long	0
# [1190] ring3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ring3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING3:
	.byte	0
# [1191] f3:boolean=false;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_f3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F3:
	.byte	0
# [1193] ff:word=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ff,"d"
	.balign 2
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FF:
	.short	0
# [1194] filter_resonance2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_resonance2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1195] filter_freq:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_freq,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQ:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1196] filter_resonance2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_resonance2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I:
	.long	0
# [1197] filter_freqi:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_freqi,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI:
	.long	0
# [1198] volume:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_volume,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_VOLUME:
	.long	0
# [1199] c3off:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_c3off,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_C3OFF:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1201] fu:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_fu,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FU:
	.long	0
# [1202] fl:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_fl,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FL:
	.long	0
# [1203] fb:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_fb,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FB:
	.long	0
# [1204] wv1i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv1i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I:
	.long	0
# [1205] wv2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I:
	.long	0
# [1206] wv3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I:
	.long	0
# [1208] var i,sid1,sid1l,ind:integer;

.section .rodata.n__$RETRO$_Ld16,"d"
	.balign 4
.globl	_$RETRO$_Ld16
_$RETRO$_Ld16:
# value: 0d+2.560000000E+02
	.byte	0,0,128,67

.section .rodata.n__$RETRO$_Ld17,"d"
	.balign 4
.globl	_$RETRO$_Ld17
_$RETRO$_Ld17:
# value: 0d+5.000000000E-01
	.byte	0,0,0,63

.section .rodata.n__$RETRO$_Ld19,"d"
	.balign 8
.globl	_$RETRO$_Ld19
_$RETRO$_Ld19:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0

.section .rodata.n__$RETRO$_Ld22,"d"
	.balign 8
.globl	_$RETRO$_Ld22
_$RETRO$_Ld22:
# value: 0d+1.6351597831287418E+001
	.byte	87,185,194,80,2,90,48,64

.section .rodata.n__$RETRO$_Ld23,"d"
	.balign 8
.globl	_$RETRO$_Ld23
_$RETRO$_Ld23:
# value: 0d+6.8157440000000000E-002
	.byte	239,113,199,23,196,114,177,63

.section .rodata.n__$RETRO$_Ld24,"d"
	.balign 8
.globl	_$RETRO$_Ld24
_$RETRO$_Ld24:
# value: 0d+6.5536000000000000E+004
	.byte	0,0,0,0,0,0,240,64

.section .rodata.n__$RETRO$_Ld25,"d"
	.balign 8
.globl	_$RETRO$_Ld25
_$RETRO$_Ld25:
# value: 0d+1.0594630943592953E+000
	.byte	99,121,217,146,143,243,240,63

.section .rodata.n__$RETRO$_Ld26,"d"
	.balign 8
.globl	_$RETRO$_Ld26
_$RETRO$_Ld26:
# value: 0d+8.3886070000000000E+006
	.byte	0,0,0,192,255,255,95,65

.section .rodata.n__$RETRO$_Ld27,"d"
	.balign 8
.globl	_$RETRO$_Ld27
_$RETRO$_Ld27:
# value: 0d+6.2831853071795862E+000
	.byte	24,45,68,84,251,33,25,64

.section .rodata.n__$RETRO$_Ld28,"d"
	.balign 8
.globl	_$RETRO$_Ld28
_$RETRO$_Ld28:
# value: 0d+1.5258789062500000E-005
	.byte	0,0,0,0,0,0,240,62

.section .rodata.n__$RETRO$_Ld29,"d"
	.balign 8
.globl	_$RETRO$_Ld29
_$RETRO$_Ld29:
# value: 0d+4.2949672960000000E+009
	.byte	0,0,0,0,0,0,240,65

.section .rodata.n__$RETRO$_Ld30,"d"
	.balign 8
.globl	_$RETRO$_Ld30
_$RETRO$_Ld30:
# value: 0d+9.9984136378479382E-001
	.byte	108,153,212,80,179,254,239,63

.section .data.n_tc_$retro$_$antialias6$double$tfiltertable$$double_$$_gain,"d"
	.balign 8
TC_$RETRO$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN:
# value: 0d+6.8555321079999998E+007
	.byte	133,235,81,228,72,88,144,65

.section .rodata.n__$RETRO$_Ld31,"d"
	.balign 8
.globl	_$RETRO$_Ld31
_$RETRO$_Ld31:
# value: 0d+6.0000000000000000E+000
	.byte	0,0,0,0,0,0,24,64

.section .rodata.n__$RETRO$_Ld32,"d"
	.balign 8
.globl	_$RETRO$_Ld32
_$RETRO$_Ld32:
# value: 0d+1.5000000000000000E+001
	.byte	0,0,0,0,0,0,46,64

.section .rodata.n__$RETRO$_Ld33,"d"
	.balign 8
.globl	_$RETRO$_Ld33
_$RETRO$_Ld33:
# value: 0d+2.0000000000000000E+001
	.byte	0,0,0,0,0,0,52,64

.section .rodata.n__$RETRO$_Ld34,"d"
	.balign 8
.globl	_$RETRO$_Ld34
_$RETRO$_Ld34:
# value: 0d-7.9924224560000001E-001
	.byte	13,224,77,121,100,147,233,191

.section .rodata.n__$RETRO$_Ld35,"d"
	.balign 8
.globl	_$RETRO$_Ld35
_$RETRO$_Ld35:
# value: 0d+4.9534616898000001E+000
	.byte	55,184,222,66,88,208,19,64

.section .rodata.n__$RETRO$_Ld36,"d"
	.balign 8
.globl	_$RETRO$_Ld36
_$RETRO$_Ld36:
# value: 0d-1.2816370553000000E+001
	.byte	217,26,53,82,251,161,41,192

.section .rodata.n__$RETRO$_Ld37,"d"
	.balign 8
.globl	_$RETRO$_Ld37
_$RETRO$_Ld37:
# value: 0d+1.7720271720000000E+001
	.byte	56,162,57,186,99,184,49,64

.section .rodata.n__$RETRO$_Ld38,"d"
	.balign 8
.globl	_$RETRO$_Ld38
_$RETRO$_Ld38:
# value: 0d-1.3809038175000000E+001
	.byte	89,174,109,64,58,158,43,192

.section .rodata.n__$RETRO$_Ld39,"d"
	.balign 8
.globl	_$RETRO$_Ld39
_$RETRO$_Ld39:
# value: 0d+5.7509166298999999E+000
	.byte	171,197,253,73,240,0,23,64

.section .data.n_tc_$retro$_$audiocallback$pointer$pbyte$longint_$$_aa,"d"
	.balign 4
TC_$RETRO$_$AUDIOCALLBACK$POINTER$PBYTE$LONGINT_$$_AA:
	.long	0

.section .data.n_tc_$retro$_$reverb1$tsample$$tsample_$$_sart,"d"
	.balign 4
TC_$RETRO$_$REVERB1$TSAMPLE$$TSAMPLE_$$_SART:
	.long	1
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .data.n_RTTI_$RETRO_$$_TRAM,"d"
	.balign 8
.globl	RTTI_$RETRO_$$_TRAM
RTTI_$RETRO_$$_TRAM:
	.byte	12
	.ascii	"\004tram"
	.quad	268435456,67108864
	.quad	RTTI_$SYSTEM_$$_LONGINT
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT

.section .data.n_RTTI_$RETRO_$$_TRAMW,"d"
	.balign 8
.globl	RTTI_$RETRO_$$_TRAMW
RTTI_$RETRO_$$_TRAMW:
	.byte	12
	.ascii	"\005tramw"
	.quad	268435456,134217728
	.quad	RTTI_$SYSTEM_$$_WORD
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT

.section .data.n_RTTI_$RETRO_$$_TRAMB,"d"
	.balign 8
.globl	RTTI_$RETRO_$$_TRAMB
RTTI_$RETRO_$$_TRAMB:
	.byte	12
	.ascii	"\005tramb"
	.quad	268435456,268435456
	.quad	RTTI_$SYSTEM_$$_BYTE
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT

.section .data.n_RTTI_$RETRO_$$_TSAMPLE,"d"
	.balign 8
.globl	RTTI_$RETRO_$$_TSAMPLE
RTTI_$RETRO_$$_TSAMPLE:
	.byte	12
	.ascii	"\007tsample"
	.quad	4,2
	.quad	RTTI_$SYSTEM_$$_SMALLINT
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .data.n_INIT_$RETRO_$$_TRETRO,"d"
	.balign 8
.globl	INIT_$RETRO_$$_TRETRO
INIT_$RETRO_$$_TRETRO:
	.byte	15,6
	.ascii	"TRetro"
	.long	8,0

.section .data.n_RTTI_$RETRO_$$_TRETRO,"d"
	.balign 8
.globl	RTTI_$RETRO_$$_TRETRO
RTTI_$RETRO_$$_TRETRO:
	.byte	15,6
	.ascii	"TRetro"
	.quad	VMT_$RETRO_$$_TRETRO
	.quad	RTTI_$CLASSES_$$_TTHREAD
	.short	0
	.byte	5
	.ascii	"retro"
	.short	0

.section .data.n_RTTI_$RETRO_$$_TFILTERTABLE,"d"
	.balign 8
.globl	RTTI_$RETRO_$$_TFILTERTABLE
RTTI_$RETRO_$$_TFILTERTABLE:
	.byte	12
	.ascii	"\014TFiltertable"
	.quad	112,14
	.quad	RTTI_$SYSTEM_$$_DOUBLE
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc143:
	.long	.Lc145-.Lc144
.Lc144:
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
.Lc145:
	.long	.Lc147-.Lc146
.Lc146:
	.secrel32	.Lc143
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
.Lc147:
	.long	.Lc149-.Lc148
.Lc148:
	.secrel32	.Lc143
	.quad	.Lc6
	.quad	.Lc7-.Lc6
	.byte	4
	.long	.Lc8-.Lc6
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc149:
	.long	.Lc151-.Lc150
.Lc150:
	.secrel32	.Lc143
	.quad	.Lc9
	.quad	.Lc10-.Lc9
	.byte	4
	.long	.Lc11-.Lc9
	.byte	14
	.uleb128	72
	.balign 4,0
.Lc151:
	.long	.Lc153-.Lc152
.Lc152:
	.secrel32	.Lc143
	.quad	.Lc12
	.quad	.Lc13-.Lc12
	.byte	4
	.long	.Lc14-.Lc12
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc153:
	.long	.Lc155-.Lc154
.Lc154:
	.secrel32	.Lc143
	.quad	.Lc15
	.quad	.Lc16-.Lc15
	.balign 4,0
.Lc155:
	.long	.Lc157-.Lc156
.Lc156:
	.secrel32	.Lc143
	.quad	.Lc17
	.quad	.Lc18-.Lc17
	.balign 4,0
.Lc157:
	.long	.Lc159-.Lc158
.Lc158:
	.secrel32	.Lc143
	.quad	.Lc19
	.quad	.Lc20-.Lc19
	.balign 4,0
.Lc159:
	.long	.Lc161-.Lc160
.Lc160:
	.secrel32	.Lc143
	.quad	.Lc21
	.quad	.Lc22-.Lc21
	.balign 4,0
.Lc161:
	.long	.Lc163-.Lc162
.Lc162:
	.secrel32	.Lc143
	.quad	.Lc23
	.quad	.Lc24-.Lc23
	.balign 4,0
.Lc163:
	.long	.Lc165-.Lc164
.Lc164:
	.secrel32	.Lc143
	.quad	.Lc25
	.quad	.Lc26-.Lc25
	.balign 4,0
.Lc165:
	.long	.Lc167-.Lc166
.Lc166:
	.secrel32	.Lc143
	.quad	.Lc27
	.quad	.Lc28-.Lc27
	.balign 4,0
.Lc167:
	.long	.Lc169-.Lc168
.Lc168:
	.secrel32	.Lc143
	.quad	.Lc29
	.quad	.Lc30-.Lc29
	.balign 4,0
.Lc169:
	.long	.Lc171-.Lc170
.Lc170:
	.secrel32	.Lc143
	.quad	.Lc31
	.quad	.Lc32-.Lc31
	.byte	4
	.long	.Lc33-.Lc31
	.byte	14
	.uleb128	64
	.balign 4,0
.Lc171:
	.long	.Lc173-.Lc172
.Lc172:
	.secrel32	.Lc143
	.quad	.Lc34
	.quad	.Lc35-.Lc34
	.balign 4,0
.Lc173:
	.long	.Lc175-.Lc174
.Lc174:
	.secrel32	.Lc143
	.quad	.Lc36
	.quad	.Lc37-.Lc36
	.balign 4,0
.Lc175:
	.long	.Lc177-.Lc176
.Lc176:
	.secrel32	.Lc143
	.quad	.Lc38
	.quad	.Lc39-.Lc38
	.byte	4
	.long	.Lc40-.Lc38
	.byte	14
	.uleb128	96
	.balign 4,0
.Lc177:
	.long	.Lc179-.Lc178
.Lc178:
	.secrel32	.Lc143
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
.Lc179:
	.long	.Lc181-.Lc180
.Lc180:
	.secrel32	.Lc143
	.quad	.Lc46
	.quad	.Lc47-.Lc46
	.byte	4
	.long	.Lc48-.Lc46
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc181:
	.long	.Lc183-.Lc182
.Lc182:
	.secrel32	.Lc143
	.quad	.Lc49
	.quad	.Lc50-.Lc49
	.byte	4
	.long	.Lc51-.Lc49
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc183:
	.long	.Lc185-.Lc184
.Lc184:
	.secrel32	.Lc143
	.quad	.Lc52
	.quad	.Lc53-.Lc52
	.byte	4
	.long	.Lc54-.Lc52
	.byte	14
	.uleb128	144
	.balign 4,0
.Lc185:
	.long	.Lc187-.Lc186
.Lc186:
	.secrel32	.Lc143
	.quad	.Lc55
	.quad	.Lc56-.Lc55
	.byte	4
	.long	.Lc57-.Lc55
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc187:
	.long	.Lc189-.Lc188
.Lc188:
	.secrel32	.Lc143
	.quad	.Lc58
	.quad	.Lc59-.Lc58
	.balign 4,0
.Lc189:
	.long	.Lc191-.Lc190
.Lc190:
	.secrel32	.Lc143
	.quad	.Lc60
	.quad	.Lc61-.Lc60
	.balign 4,0
.Lc191:
	.long	.Lc193-.Lc192
.Lc192:
	.secrel32	.Lc143
	.quad	.Lc62
	.quad	.Lc63-.Lc62
	.balign 4,0
.Lc193:
	.long	.Lc195-.Lc194
.Lc194:
	.secrel32	.Lc143
	.quad	.Lc64
	.quad	.Lc65-.Lc64
	.byte	4
	.long	.Lc66-.Lc64
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc67-.Lc66
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc68-.Lc67
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc195:
	.long	.Lc197-.Lc196
.Lc196:
	.secrel32	.Lc143
	.quad	.Lc69
	.quad	.Lc70-.Lc69
	.byte	4
	.long	.Lc71-.Lc69
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc72-.Lc71
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc73-.Lc72
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc197:
	.long	.Lc199-.Lc198
.Lc198:
	.secrel32	.Lc143
	.quad	.Lc74
	.quad	.Lc75-.Lc74
	.byte	4
	.long	.Lc76-.Lc74
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc199:
	.long	.Lc201-.Lc200
.Lc200:
	.secrel32	.Lc143
	.quad	.Lc77
	.quad	.Lc78-.Lc77
	.byte	4
	.long	.Lc79-.Lc77
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc80-.Lc79
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc81-.Lc80
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc201:
	.long	.Lc203-.Lc202
.Lc202:
	.secrel32	.Lc143
	.quad	.Lc82
	.quad	.Lc83-.Lc82
	.byte	4
	.long	.Lc84-.Lc82
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc85-.Lc84
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc86-.Lc85
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc203:
	.long	.Lc205-.Lc204
.Lc204:
	.secrel32	.Lc143
	.quad	.Lc87
	.quad	.Lc88-.Lc87
	.byte	4
	.long	.Lc89-.Lc87
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc90-.Lc89
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc91-.Lc90
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc205:
	.long	.Lc207-.Lc206
.Lc206:
	.secrel32	.Lc143
	.quad	.Lc92
	.quad	.Lc93-.Lc92
	.byte	4
	.long	.Lc94-.Lc92
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc95-.Lc94
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc96-.Lc95
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc207:
	.long	.Lc209-.Lc208
.Lc208:
	.secrel32	.Lc143
	.quad	.Lc97
	.quad	.Lc98-.Lc97
	.byte	4
	.long	.Lc99-.Lc97
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc100-.Lc99
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc101-.Lc100
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc209:
	.long	.Lc211-.Lc210
.Lc210:
	.secrel32	.Lc143
	.quad	.Lc102
	.quad	.Lc103-.Lc102
	.balign 4,0
.Lc211:
	.long	.Lc213-.Lc212
.Lc212:
	.secrel32	.Lc143
	.quad	.Lc104
	.quad	.Lc105-.Lc104
	.balign 4,0
.Lc213:
	.long	.Lc215-.Lc214
.Lc214:
	.secrel32	.Lc143
	.quad	.Lc106
	.quad	.Lc107-.Lc106
	.balign 4,0
.Lc215:
	.long	.Lc217-.Lc216
.Lc216:
	.secrel32	.Lc143
	.quad	.Lc108
	.quad	.Lc109-.Lc108
	.balign 4,0
.Lc217:
	.long	.Lc219-.Lc218
.Lc218:
	.secrel32	.Lc143
	.quad	.Lc110
	.quad	.Lc111-.Lc110
	.byte	4
	.long	.Lc112-.Lc110
	.byte	14
	.uleb128	96
	.balign 4,0
.Lc219:
	.long	.Lc221-.Lc220
.Lc220:
	.secrel32	.Lc143
	.quad	.Lc113
	.quad	.Lc114-.Lc113
	.balign 4,0
.Lc221:
	.long	.Lc223-.Lc222
.Lc222:
	.secrel32	.Lc143
	.quad	.Lc115
	.quad	.Lc116-.Lc115
	.byte	4
	.long	.Lc117-.Lc115
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc223:
	.long	.Lc225-.Lc224
.Lc224:
	.secrel32	.Lc143
	.quad	.Lc118
	.quad	.Lc119-.Lc118
	.balign 4,0
.Lc225:
	.long	.Lc227-.Lc226
.Lc226:
	.secrel32	.Lc143
	.quad	.Lc120
	.quad	.Lc121-.Lc120
	.byte	4
	.long	.Lc122-.Lc120
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc227:
	.long	.Lc229-.Lc228
.Lc228:
	.secrel32	.Lc143
	.quad	.Lc123
	.quad	.Lc124-.Lc123
	.balign 4,0
.Lc229:
	.long	.Lc231-.Lc230
.Lc230:
	.secrel32	.Lc143
	.quad	.Lc125
	.quad	.Lc126-.Lc125
	.byte	4
	.long	.Lc127-.Lc125
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc231:
	.long	.Lc233-.Lc232
.Lc232:
	.secrel32	.Lc143
	.quad	.Lc128
	.quad	.Lc129-.Lc128
	.byte	4
	.long	.Lc130-.Lc128
	.byte	14
	.uleb128	88
	.balign 4,0
.Lc233:
	.long	.Lc235-.Lc234
.Lc234:
	.secrel32	.Lc143
	.quad	.Lc131
	.quad	.Lc132-.Lc131
	.byte	4
	.long	.Lc133-.Lc131
	.byte	14
	.uleb128	32
	.balign 4,0
.Lc235:
	.long	.Lc237-.Lc236
.Lc236:
	.secrel32	.Lc143
	.quad	.Lc134
	.quad	.Lc135-.Lc134
	.byte	4
	.long	.Lc136-.Lc134
	.byte	14
	.uleb128	32
	.balign 4,0
.Lc237:
	.long	.Lc239-.Lc238
.Lc238:
	.secrel32	.Lc143
	.quad	.Lc137
	.quad	.Lc138-.Lc137
	.byte	4
	.long	.Lc139-.Lc137
	.byte	14
	.uleb128	72
	.balign 4,0
.Lc239:
	.long	.Lc241-.Lc240
.Lc240:
	.secrel32	.Lc143
	.quad	.Lc140
	.quad	.Lc141-.Lc140
	.byte	4
	.long	.Lc142-.Lc140
	.byte	14
	.uleb128	272
	.balign 4,0
.Lc241:
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
# [189] var
	.ascii	"retro.pas\000"
	.ascii	"Free Pascal 3.0.4 2017/12/03\000"
	.ascii	"D:/Programowanie/20180824 retro-fm/\000"
	.byte	9
	.byte	3
	.secrel32	.Ldebug_line0
	.quad	DEBUGSTART_$RETRO
	.quad	DEBUGEND_$RETRO
# Syms - Begin unit RETRO has index 12
# Symbol RETRO
# Symbol SYSTEM
# Symbol OBJPAS
# Symbol SDL2
# Symbol SYSUTILS
# Symbol CRT
# Symbol CLASSES
# Symbol WINDOWS
# Symbol UNIT6502
# Symbol MIDI
# Symbol TRAM
# Symbol TRAMW
# Symbol TRAMB
# Symbol TSAMPLE
# Symbol TRETRO
# Symbol TFILTERTABLE
# Symbol A212
	.uleb128	2
	.ascii	"A212\000"
	.long	.La14-.Ldebug_info0
	.byte	8
# value: 0d+1.0594630943592953E+000
	.byte	99,121,217,146,143,243,240,63
# Symbol C03
	.uleb128	2
	.ascii	"C03\000"
	.long	.La14-.Ldebug_info0
	.byte	8
# value: 0d+1.6351597831287418E+001
	.byte	87,185,194,80,2,90,48,64
# Symbol NORM44
	.uleb128	2
	.ascii	"NORM44\000"
	.long	.La14-.Ldebug_info0
	.byte	8
# value: 0d+2.3219954648526078E-002
	.byte	119,241,81,199,248,198,151,63
# Symbol SAMPLERATE
	.uleb128	2
	.ascii	"SAMPLERATE\000"
	.long	.La14-.Ldebug_info0
	.byte	8
# value: 0d+9.6153846153800003E+005
	.byte	112,181,78,236,4,88,45,65
# Symbol NORM960
	.uleb128	2
	.ascii	"NORM960\000"
	.long	.La14-.Ldebug_info0
	.byte	8
# value: 0d+6.8157440000000000E-002
	.byte	239,113,199,23,196,114,177,63
# Symbol NORM192
	.uleb128	2
	.ascii	"NORM192\000"
	.long	.La14-.Ldebug_info0
	.byte	8
# value: 0d+3.4133333333333332E-001
	.byte	165,226,236,195,103,216,213,63
# Symbol FH
	.uleb128	3
	.ascii	"FH\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_FH
	.long	.La16-.Ldebug_info0
# Symbol FILETYPE
	.uleb128	3
	.ascii	"FILETYPE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_FILETYPE
	.long	.La16-.Ldebug_info0
# Symbol PLAY
	.uleb128	3
	.ascii	"PLAY\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_PLAY
	.long	.La18-.Ldebug_info0
# Symbol SCR
	.uleb128	3
	.ascii	"SCR\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_SCR
	.long	.La20-.Ldebug_info0
# Symbol SDLRENDERER
	.uleb128	3
	.ascii	"SDLRENDERER\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_SDLRENDERER
	.long	.La20-.Ldebug_info0
# Symbol SDLTEXTURE
	.uleb128	3
	.ascii	"SDLTEXTURE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_SDLTEXTURE
	.long	.La20-.Ldebug_info0
# Symbol P2
	.uleb128	3
	.ascii	"P2\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_P2
	.long	.La22-.Ldebug_info0
# Symbol TIM
	.uleb128	3
	.ascii	"TIM\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_TIM
	.long	.La24-.Ldebug_info0
# Symbol T
	.uleb128	3
	.ascii	"T\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_T
	.long	.La24-.Ldebug_info0
# Symbol T2
	.uleb128	3
	.ascii	"T2\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_T2
	.long	.La24-.Ldebug_info0
# Symbol T3
	.uleb128	3
	.ascii	"T3\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_T3
	.long	.La24-.Ldebug_info0
# Symbol TS
	.uleb128	3
	.ascii	"TS\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_TS
	.long	.La24-.Ldebug_info0
# Symbol T6
	.uleb128	3
	.ascii	"T6\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_T6
	.long	.La24-.Ldebug_info0
# Symbol TIME6502
	.uleb128	3
	.ascii	"TIME6502\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_TIME6502
	.long	.La24-.Ldebug_info0
# Symbol VBLANK1
	.uleb128	3
	.ascii	"VBLANK1\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_VBLANK1
	.long	.La26-.Ldebug_info0
# Symbol COMBINED
	.uleb128	3
	.ascii	"COMBINED\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_COMBINED
	.long	.La28-.Ldebug_info0
# Symbol SCOPE
	.uleb128	3
	.ascii	"SCOPE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_SCOPE
	.long	.La30-.Ldebug_info0
# Symbol DESIRED
	.uleb128	3
	.ascii	"DESIRED\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_DESIRED
	.long	.La32-.Ldebug_info0
# Symbol OBTAINED
	.uleb128	3
	.ascii	"OBTAINED\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_OBTAINED
	.long	.La32-.Ldebug_info0
# Symbol DB
	.uleb128	3
	.ascii	"DB\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$RETRO_$$_DB
	.long	.La34-.Ldebug_info0
# Symbol DEBUG
	.uleb128	3
	.ascii	"DEBUG\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_DEBUG
	.long	.La16-.Ldebug_info0
# Symbol SIDTIME
	.uleb128	3
	.ascii	"SIDTIME\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_SIDTIME
	.long	.La24-.Ldebug_info0
# Symbol TIMER1
	.uleb128	3
	.ascii	"TIMER1\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$RETRO_$$_TIMER1
	.long	.La24-.Ldebug_info0
# Symbol SIDDELAY
	.uleb128	3
	.ascii	"SIDDELAY\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$RETRO_$$_SIDDELAY
	.long	.La24-.Ldebug_info0
# Symbol SONGTIME
	.uleb128	3
	.ascii	"SONGTIME\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_SONGTIME
	.long	.La24-.Ldebug_info0
# Symbol SONGFREQ
	.uleb128	3
	.ascii	"SONGFREQ\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_SONGFREQ
	.long	.La24-.Ldebug_info0
# Symbol SKIP
	.uleb128	3
	.ascii	"SKIP\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_SKIP
	.long	.La16-.Ldebug_info0
# Symbol SCJ
	.uleb128	3
	.ascii	"SCJ\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$RETRO_$$_SCJ
	.long	.La16-.Ldebug_info0
# Symbol FT1R
	.uleb128	3
	.ascii	"FT1R\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$RETRO_$$_FT1R
	.long	.La12-.Ldebug_info0
# Symbol FT1L
	.uleb128	3
	.ascii	"FT1L\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$RETRO_$$_FT1L
	.long	.La12-.Ldebug_info0
# Symbol THREAD
	.uleb128	3
	.ascii	"THREAD\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_THREAD
	.long	.La9-.Ldebug_info0
# Symbol TIMES6502
	.uleb128	3
	.ascii	"TIMES6502\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_TIMES6502
	.long	.La36-.Ldebug_info0
# Symbol R1
	.uleb128	3
	.ascii	"R1\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_R1
	.long	.La20-.Ldebug_info0
# Symbol RAML
	.uleb128	3
	.ascii	"RAML\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_R1
	.long	.La38-.Ldebug_info0
# Symbol RAMW
	.uleb128	3
	.ascii	"RAMW\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_R1
	.long	.La40-.Ldebug_info0
# Symbol RAMB
	.uleb128	3
	.ascii	"RAMB\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_R1
	.long	.La42-.Ldebug_info0
# Symbol FT
	.uleb128	3
	.ascii	"FT\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_FT
	.long	.La24-.Ldebug_info0
# Symbol FTT
	.uleb128	3
	.ascii	"FTT\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_FTT
	.long	.La24-.Ldebug_info0
# Symbol ATTACKTABLE
	.uleb128	3
	.ascii	"ATTACKTABLE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$RETRO_$$_ATTACKTABLE
	.long	.La44-.Ldebug_info0
# Symbol ATTACKTABLEI
	.uleb128	3
	.ascii	"ATTACKTABLEI\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_ATTACKTABLEI
	.long	.La46-.Ldebug_info0
# Symbol SRTABLEI
	.uleb128	3
	.ascii	"SRTABLEI\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_SRTABLEI
	.long	.La48-.Ldebug_info0
# Symbol DE
	.uleb128	3
	.ascii	"DE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$RETRO_$$_DE
	.long	.La16-.Ldebug_info0
# Symbol DA
	.uleb128	3
	.ascii	"DA\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$RETRO_$$_DA
	.long	.La16-.Ldebug_info0
# Symbol DL
	.uleb128	3
	.ascii	"DL\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_DL
	.long	.La50-.Ldebug_info0
# Symbol RE
	.uleb128	3
	.ascii	"RE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$RETRO_$$_RE
	.long	.La16-.Ldebug_info0
# Symbol RA
	.uleb128	3
	.ascii	"RA\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$RETRO_$$_RA
	.long	.La16-.Ldebug_info0
# Symbol RL
	.uleb128	3
	.ascii	"RL\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_RL
	.long	.La52-.Ldebug_info0
# Symbol OLDSC
	.uleb128	3
	.ascii	"OLDSC\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$RETRO_$$_OLDSC
	.long	.La16-.Ldebug_info0
# Symbol SC
	.uleb128	3
	.ascii	"SC\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$RETRO_$$_SC
	.long	.La16-.Ldebug_info0
# Symbol EDELAY
	.uleb128	3
	.ascii	"EDELAY\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$RETRO_$$_EDELAY
	.long	.La34-.Ldebug_info0
# Symbol EREVERB
	.uleb128	3
	.ascii	"EREVERB\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$RETRO_$$_EREVERB
	.long	.La34-.Ldebug_info0
# Symbol KEYMAP2
	.uleb128	3
	.ascii	"KEYMAP2\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$RETRO_$$_KEYMAP2
	.long	.La54-.Ldebug_info0
# Symbol BE
	.uleb128	3
	.ascii	"BE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_BE
	.long	.La26-.Ldebug_info0
# Symbol BS
	.uleb128	3
	.ascii	"BS\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_BS
	.long	.La26-.Ldebug_info0
# Symbol KEYBUFFER
	.uleb128	3
	.ascii	"KEYBUFFER\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_KEYBUFFER
	.long	.La56-.Ldebug_info0
# Symbol TESTOPERATOR
	.uleb128	3
	.ascii	"TESTOPERATOR\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_TESTOPERATOR
	.long	.La58-.Ldebug_info0
# Symbol TESTVOICE
	.uleb128	3
	.ascii	"TESTVOICE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_TESTVOICE
	.long	.La61-.Ldebug_info0
# Symbol INITMACHINE
# Symbol STOPMACHINE
# Symbol GRAPHICS
# Symbol SCRCONVERT
# Symbol SETATARIPALLETTE
# Symbol CLS
# Symbol PUTPIXEL
# Symbol PUTCHAR
# Symbol OUTTEXTXY
# Symbol BLIT
# Symbol BOX
# Symbol BOX2
# Symbol GETTIME
# Symbol POKE
# Symbol DPOKE
# Symbol LPOKE
# Symbol SLPOKE
# Symbol PEEK
# Symbol DPEEK
# Symbol LPEEK
# Symbol SLPEEK
# Symbol SETHIDECOLOR
# Symbol PUTCHARZ
# Symbol OUTTEXTXYZ
# Symbol SCROLLUP
# Symbol SID
# Symbol NOISE2
# Symbol NOISE3
# Symbol DELAY1
# Symbol REVERB1
# Symbol READKEYBUFFER
# Symbol WRITEKEYBUFFER
# Syms - End unit RETRO has index 12
# Syms - Begin Staticsymtable
# Symbol UNIT1
# Symbol RETRO_$$_init$
# Symbol RUNNING
	.uleb128	4
	.ascii	"RUNNING\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO_$$_RUNNING
	.long	.La16-.Ldebug_info0
# Symbol FH2
	.uleb128	4
	.ascii	"FH2\000"
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_FH2
	.long	.La16-.Ldebug_info0
# Symbol SINETABLE
	.uleb128	4
	.ascii	"SINETABLE\000"
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_SINETABLE
	.long	.La64-.Ldebug_info0
# Symbol LOGTABLE
	.uleb128	4
	.ascii	"LOGTABLE\000"
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_LOGTABLE
	.long	.La66-.Ldebug_info0
# Symbol OUTPUTTABLE
	.uleb128	4
	.ascii	"OUTPUTTABLE\000"
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_OUTPUTTABLE
	.long	.La68-.Ldebug_info0
# Symbol NOTES
	.uleb128	4
	.ascii	"NOTES\000"
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_NOTES
	.long	.La70-.Ldebug_info0
# Symbol OPDATA
	.uleb128	4
	.ascii	"OPDATA\000"
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_OPDATA
	.long	.La72-.Ldebug_info0
# Symbol NEEDRESTART
	.uleb128	4
	.ascii	"NEEDRESTART\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO_$$_NEEDRESTART
	.long	.La26-.Ldebug_info0
# Symbol SPRITE
# Symbol SDLEVENTS
# Symbol AUDIOCALLBACK
# Symbol SDL_SOUND_INIT
# Symbol ANTIALIAS6
# Symbol INITNOTES
# Symbol INITSINETABLE
# Symbol INITLOGTABLE
# Symbol NOISE1
# Symbol FMSYNTH
# Symbol div
# Symbol plus
# Syms - End Staticsymtable
# Procdef initmachine(LongInt);
	.uleb128	5
	.ascii	"INITMACHINE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_INITMACHINE$LONGINT
	.quad	.Lt1
# Symbol MODE
	.uleb128	6
	.ascii	"MODE\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
# Symbol A
	.uleb128	4
	.ascii	"A\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La16-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La16-.Ldebug_info0
# Symbol BB
	.uleb128	4
	.ascii	"BB\000"
	.byte	2
	.byte	119
	.sleb128	48
	.long	.La26-.Ldebug_info0
	.byte	0
# Procdef stopmachine;
	.uleb128	5
	.ascii	"STOPMACHINE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_STOPMACHINE
	.quad	.Lt2
	.byte	0
# Procdef graphics(LongInt);
	.uleb128	5
	.ascii	"GRAPHICS\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_GRAPHICS$LONGINT
	.quad	.Lt3
# Symbol MODE
	.uleb128	6
	.ascii	"MODE\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef scrconvert(Pointer;LongInt);
	.uleb128	5
	.ascii	"SCRCONVERT\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_SCRCONVERT$POINTER$LONGINT
	.quad	.Lt4
# Symbol SCREEN
	.uleb128	6
	.ascii	"SCREEN\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La20-.Ldebug_info0
# Symbol BUF
	.uleb128	6
	.ascii	"BUF\000"
	.byte	2
	.byte	144
	.uleb128	15
	.long	.La16-.Ldebug_info0
# Symbol B
	.uleb128	4
	.ascii	"B\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
# Symbol PI
	.uleb128	4
	.ascii	"PI\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La74-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	12
	.long	.La16-.Ldebug_info0
# Symbol J
	.uleb128	4
	.ascii	"J\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La16-.Ldebug_info0
# Symbol K
	.uleb128	4
	.ascii	"K\000"
	.byte	2
	.byte	144
	.uleb128	12
	.long	.La16-.Ldebug_info0
# Symbol L
	.uleb128	4
	.ascii	"L\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La16-.Ldebug_info0
# Definition ^LongInt
.La74:
	.uleb128	7
	.long	.La16-.Ldebug_info0
.La75:
	.uleb128	8
	.long	.La74-.Ldebug_info0
	.byte	0
# Procdef setataripallette(LongInt);
	.uleb128	5
	.ascii	"SETATARIPALLETTE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_SETATARIPALLETTE$LONGINT
	.quad	.Lt5
# Symbol BANK
	.uleb128	6
	.ascii	"BANK\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
# Symbol FH
	.uleb128	4
	.ascii	"FH\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef cls(LongInt);
	.uleb128	5
	.ascii	"CLS\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_CLS$LONGINT
	.quad	.Lt6
# Symbol C
	.uleb128	6
	.ascii	"C\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La16-.Ldebug_info0
# Symbol C2
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La16-.Ldebug_info0
# Symbol L
	.uleb128	4
	.ascii	"L\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef putpixel(LongInt;LongInt;LongInt);
	.uleb128	5
	.ascii	"PUTPIXEL\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
	.quad	.Lt7
# Symbol X
	.uleb128	6
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La16-.Ldebug_info0
# Symbol Y
	.uleb128	6
	.ascii	"Y\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La16-.Ldebug_info0
# Symbol COLOR
	.uleb128	6
	.ascii	"COLOR\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La16-.Ldebug_info0
# Symbol ADR
	.uleb128	4
	.ascii	"ADR\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef putchar(LongInt;LongInt;Char;LongInt);
	.uleb128	5
	.ascii	"PUTCHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT
	.quad	.Lt8
# Symbol X
	.uleb128	6
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
# Symbol Y
	.uleb128	6
	.ascii	"Y\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La16-.Ldebug_info0
# Symbol CH
	.uleb128	6
	.ascii	"CH\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La76-.Ldebug_info0
# Symbol COL
	.uleb128	6
	.ascii	"COL\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La16-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	15
	.long	.La16-.Ldebug_info0
# Symbol J
	.uleb128	4
	.ascii	"J\000"
	.byte	2
	.byte	144
	.uleb128	14
	.long	.La16-.Ldebug_info0
# Symbol START
	.uleb128	4
	.ascii	"START\000"
	.byte	2
	.byte	144
	.uleb128	12
	.long	.La16-.Ldebug_info0
# Symbol B
	.uleb128	4
	.ascii	"B\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La26-.Ldebug_info0
	.byte	0
# Procdef outtextxy(LongInt;LongInt;AnsiString;LongInt);
	.uleb128	5
	.ascii	"OUTTEXTXY\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
	.quad	.Lt9
# Symbol X
	.uleb128	6
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
# Symbol Y
	.uleb128	6
	.ascii	"Y\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La16-.Ldebug_info0
# Symbol T
	.uleb128	6
	.ascii	"T\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La78-.Ldebug_info0
# Symbol C
	.uleb128	6
	.ascii	"C\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La16-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La16-.Ldebug_info0
# Symbol fin$0
	.byte	0
# Procdef $fin$0(<^untyped>) is nested;
	.uleb128	9
	.ascii	"fin$0\000"
	.byte	1
	.byte	65
	.quad	RETRO$_$OUTTEXTXY$crc6744C382_$$_fin$0
	.quad	.Lt10
# Symbol parentfp
	.uleb128	6
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La80-.Ldebug_info0
	.byte	0
# Procdef blit(LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt);
	.uleb128	5
	.ascii	"BLIT\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_BLIT$crc5A667533
	.quad	.Lt11
# Symbol FROM
	.uleb128	6
	.ascii	"FROM\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol X
	.uleb128	6
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La16-.Ldebug_info0
# Symbol Y
	.uleb128	6
	.ascii	"Y\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol TOO
	.uleb128	6
	.ascii	"TOO\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol X2
	.uleb128	6
	.ascii	"X2\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
# Symbol Y2
	.uleb128	6
	.ascii	"Y2\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol LENGTH
	.uleb128	6
	.ascii	"LENGTH\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol LINES
	.uleb128	6
	.ascii	"LINES\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La16-.Ldebug_info0
# Symbol BPL1
	.uleb128	6
	.ascii	"BPL1\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol BPL2
	.uleb128	6
	.ascii	"BPL2\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	15
	.long	.La16-.Ldebug_info0
# Symbol J
	.uleb128	4
	.ascii	"J\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La16-.Ldebug_info0
# Symbol B1
	.uleb128	4
	.ascii	"B1\000"
	.byte	2
	.byte	144
	.uleb128	14
	.long	.La16-.Ldebug_info0
# Symbol B2
	.uleb128	4
	.ascii	"B2\000"
	.byte	2
	.byte	144
	.uleb128	12
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef box(LongInt;LongInt;LongInt;LongInt;LongInt);
	.uleb128	5
	.ascii	"BOX\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	.quad	.Lt12
# Symbol X
	.uleb128	6
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La16-.Ldebug_info0
# Symbol Y
	.uleb128	6
	.ascii	"Y\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La16-.Ldebug_info0
# Symbol L
	.uleb128	6
	.ascii	"L\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La16-.Ldebug_info0
# Symbol H
	.uleb128	6
	.ascii	"H\000"
	.byte	2
	.byte	144
	.uleb128	9
	.long	.La16-.Ldebug_info0
# Symbol C
	.uleb128	6
	.ascii	"C\000"
	.byte	2
	.byte	144
	.uleb128	11
	.long	.La16-.Ldebug_info0
# Symbol ADR
	.uleb128	4
	.ascii	"ADR\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
# Symbol A
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La16-.Ldebug_info0
# Symbol J
	.uleb128	4
	.ascii	"J\000"
	.byte	2
	.byte	144
	.uleb128	10
	.long	.La16-.Ldebug_info0
# Symbol P999
# Symbol P101
# Symbol P102
# Symbol P111
# Symbol P112
# Symbol P121
# Symbol P122
# Symbol P131
# Symbol P132
# Symbol A60008
	.byte	0
# Procdef box2(LongInt;LongInt;LongInt;LongInt;LongInt);
	.uleb128	5
	.ascii	"BOX2\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	.quad	.Lt13
# Symbol X1
	.uleb128	6
	.ascii	"X1\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol Y1
	.uleb128	6
	.ascii	"Y1\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La16-.Ldebug_info0
# Symbol X2
	.uleb128	6
	.ascii	"X2\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La16-.Ldebug_info0
# Symbol Y2
	.uleb128	6
	.ascii	"Y2\000"
	.byte	2
	.byte	144
	.uleb128	9
	.long	.La16-.Ldebug_info0
# Symbol COLOR
	.uleb128	6
	.ascii	"COLOR\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef gettime:Int64;
	.uleb128	10
	.ascii	"GETTIME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La24-.Ldebug_info0
	.quad	RETRO_$$_GETTIME$$INT64
	.quad	.Lt14
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La24-.Ldebug_info0
# Symbol GETTIME
	.uleb128	4
	.ascii	"GETTIME\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La24-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La24-.Ldebug_info0
# Symbol PF
	.uleb128	4
	.ascii	"PF\000"
	.byte	2
	.byte	119
	.sleb128	32
	.long	.La24-.Ldebug_info0
# Symbol TM
	.uleb128	4
	.ascii	"TM\000"
	.byte	2
	.byte	119
	.sleb128	40
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef poke(LongInt;Byte);
	.uleb128	5
	.ascii	"POKE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_POKE$LONGINT$BYTE
	.quad	.Lt15
# Symbol ADDR
	.uleb128	6
	.ascii	"ADDR\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol B
	.uleb128	6
	.ascii	"B\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La26-.Ldebug_info0
	.byte	0
# Procdef dpoke(LongInt;Word);
	.uleb128	5
	.ascii	"DPOKE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_DPOKE$LONGINT$WORD
	.quad	.Lt16
# Symbol ADDR
	.uleb128	6
	.ascii	"ADDR\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol W
	.uleb128	6
	.ascii	"W\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La18-.Ldebug_info0
	.byte	0
# Procdef lpoke(LongInt;LongWord);
	.uleb128	5
	.ascii	"LPOKE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_LPOKE$LONGINT$LONGWORD
	.quad	.Lt17
# Symbol ADDR
	.uleb128	6
	.ascii	"ADDR\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol C
	.uleb128	6
	.ascii	"C\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La82-.Ldebug_info0
	.byte	0
# Procdef slpoke(LongInt;LongInt);
	.uleb128	5
	.ascii	"SLPOKE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_SLPOKE$LONGINT$LONGINT
	.quad	.Lt18
# Symbol ADDR
	.uleb128	6
	.ascii	"ADDR\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol I
	.uleb128	6
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef peek(LongInt):Byte;
	.uleb128	10
	.ascii	"PEEK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La26-.Ldebug_info0
	.quad	RETRO_$$_PEEK$LONGINT$$BYTE
	.quad	.Lt19
# Symbol ADDR
	.uleb128	6
	.ascii	"ADDR\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La16-.Ldebug_info0
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La26-.Ldebug_info0
# Symbol PEEK
	.uleb128	4
	.ascii	"PEEK\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La26-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La26-.Ldebug_info0
	.byte	0
# Procdef dpeek(LongInt):Word;
	.uleb128	10
	.ascii	"DPEEK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La18-.Ldebug_info0
	.quad	RETRO_$$_DPEEK$LONGINT$$WORD
	.quad	.Lt20
# Symbol ADDR
	.uleb128	6
	.ascii	"ADDR\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La16-.Ldebug_info0
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La18-.Ldebug_info0
# Symbol DPEEK
	.uleb128	4
	.ascii	"DPEEK\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La18-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La18-.Ldebug_info0
	.byte	0
# Procdef lpeek(LongInt):DWord;
	.uleb128	10
	.ascii	"LPEEK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La82-.Ldebug_info0
	.quad	RETRO_$$_LPEEK$LONGINT$$LONGWORD
	.quad	.Lt21
# Symbol ADDR
	.uleb128	6
	.ascii	"ADDR\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La16-.Ldebug_info0
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La82-.Ldebug_info0
# Symbol LPEEK
	.uleb128	4
	.ascii	"LPEEK\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La82-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.byte	0
# Procdef slpeek(LongInt):LongInt;
	.uleb128	10
	.ascii	"SLPEEK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La16-.Ldebug_info0
	.quad	RETRO_$$_SLPEEK$LONGINT$$LONGINT
	.quad	.Lt22
# Symbol ADDR
	.uleb128	6
	.ascii	"ADDR\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La16-.Ldebug_info0
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol SLPEEK
	.uleb128	4
	.ascii	"SLPEEK\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef sethidecolor(LongInt;LongInt;LongInt);
	.uleb128	5
	.ascii	"SETHIDECOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
	.quad	.Lt23
# Symbol C
	.uleb128	6
	.ascii	"C\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol BANK
	.uleb128	6
	.ascii	"BANK\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La16-.Ldebug_info0
# Symbol MASK
	.uleb128	6
	.ascii	"MASK\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef putcharz(LongInt;LongInt;Char;LongInt;LongInt;LongInt);
	.uleb128	5
	.ascii	"PUTCHARZ\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT
	.quad	.Lt24
# Symbol X
	.uleb128	6
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol Y
	.uleb128	6
	.ascii	"Y\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol CH
	.uleb128	6
	.ascii	"CH\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La76-.Ldebug_info0
# Symbol COL
	.uleb128	6
	.ascii	"COL\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol XZ
	.uleb128	6
	.ascii	"XZ\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol YZ
	.uleb128	6
	.ascii	"YZ\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	14
	.long	.La16-.Ldebug_info0
# Symbol J
	.uleb128	4
	.ascii	"J\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La16-.Ldebug_info0
# Symbol K
	.uleb128	4
	.ascii	"K\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
# Symbol L
	.uleb128	4
	.ascii	"L\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La16-.Ldebug_info0
# Symbol START
	.uleb128	4
	.ascii	"START\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol B
	.uleb128	4
	.ascii	"B\000"
	.byte	2
	.byte	144
	.uleb128	15
	.long	.La26-.Ldebug_info0
	.byte	0
# Procdef outtextxyz(LongInt;LongInt;AnsiString;LongInt;LongInt;LongInt);
	.uleb128	5
	.ascii	"OUTTEXTXYZ\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	.quad	.Lt25
# Symbol X
	.uleb128	6
	.ascii	"X\000"
	.byte	2
	.byte	144
	.uleb128	15
	.long	.La16-.Ldebug_info0
# Symbol Y
	.uleb128	6
	.ascii	"Y\000"
	.byte	2
	.byte	144
	.uleb128	14
	.long	.La16-.Ldebug_info0
# Symbol T
	.uleb128	6
	.ascii	"T\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La78-.Ldebug_info0
# Symbol C
	.uleb128	6
	.ascii	"C\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
# Symbol XZ
	.uleb128	6
	.ascii	"XZ\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La16-.Ldebug_info0
# Symbol YZ
	.uleb128	6
	.ascii	"YZ\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La16-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La16-.Ldebug_info0
# Symbol fin$1
	.byte	0
# Procdef $fin$1(<^untyped>) is nested;
	.uleb128	9
	.ascii	"fin$1\000"
	.byte	1
	.byte	65
	.quad	RETRO$_$OUTTEXTXYZ$crcCA10A6FC_$$_fin$1
	.quad	.Lt26
# Symbol parentfp
	.uleb128	6
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La80-.Ldebug_info0
	.byte	0
# Procdef scrollup;
	.uleb128	5
	.ascii	"SCROLLUP\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_SCROLLUP
	.quad	.Lt27
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef sid(<var tsample>;LongInt):Array[0..1] Of SmallInt;
	.uleb128	10
	.ascii	"SID\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La7-.Ldebug_info0
	.quad	RETRO_$$_SID$LONGINT$$TSAMPLE
	.quad	.Lt28
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	3
	.byte	146
	.uleb128	0
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol MODE
	.uleb128	6
	.ascii	"MODE\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La16-.Ldebug_info0
# Symbol SID
	.uleb128	4
	.ascii	"SID\000"
	.byte	3
	.byte	146
	.uleb128	0
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	3
	.byte	146
	.uleb128	0
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol PA1
	.uleb128	4
	.ascii	"PA1\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1
	.long	.La14-.Ldebug_info0
# Symbol PA2
	.uleb128	4
	.ascii	"PA2\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2
	.long	.La14-.Ldebug_info0
# Symbol PA3
	.uleb128	4
	.ascii	"PA3\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3
	.long	.La14-.Ldebug_info0
# Symbol PA1N
# Symbol PA2N
# Symbol PA3N
# Symbol PA1I
	.uleb128	4
	.ascii	"PA1I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I
	.long	.La16-.Ldebug_info0
# Symbol PA2I
	.uleb128	4
	.ascii	"PA2I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I
	.long	.La16-.Ldebug_info0
# Symbol PA3I
	.uleb128	4
	.ascii	"PA3I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I
	.long	.La16-.Ldebug_info0
# Symbol PA1NI
	.uleb128	4
	.ascii	"PA1NI\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1NI
	.long	.La16-.Ldebug_info0
# Symbol PA2NI
	.uleb128	4
	.ascii	"PA2NI\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2NI
	.long	.La16-.Ldebug_info0
# Symbol PA3NI
	.uleb128	4
	.ascii	"PA3NI\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3NI
	.long	.La16-.Ldebug_info0
# Symbol FILTER_B
# Symbol FILTER_H
# Symbol FILTER_L
# Symbol FILTER_B2
# Symbol FILTER_H2
# Symbol FILTER_L2
# Symbol FILTER_B3
# Symbol FILTER_H3
# Symbol FILTER_L3
# Symbol FILTER_BI
	.uleb128	4
	.ascii	"FILTER_BI\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_BI
	.long	.La16-.Ldebug_info0
# Symbol FILTER_HI
	.uleb128	4
	.ascii	"FILTER_HI\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_HI
	.long	.La16-.Ldebug_info0
# Symbol FILTER_LI
	.uleb128	4
	.ascii	"FILTER_LI\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_LI
	.long	.La16-.Ldebug_info0
# Symbol FILTER_B2I
	.uleb128	4
	.ascii	"FILTER_B2I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B2I
	.long	.La16-.Ldebug_info0
# Symbol FILTER_H2I
	.uleb128	4
	.ascii	"FILTER_H2I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H2I
	.long	.La16-.Ldebug_info0
# Symbol FILTER_L2I
	.uleb128	4
	.ascii	"FILTER_L2I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L2I
	.long	.La16-.Ldebug_info0
# Symbol FILTER_B3I
	.uleb128	4
	.ascii	"FILTER_B3I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B3I
	.long	.La16-.Ldebug_info0
# Symbol FILTER_H3I
	.uleb128	4
	.ascii	"FILTER_H3I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H3I
	.long	.La16-.Ldebug_info0
# Symbol FILTER_L3I
	.uleb128	4
	.ascii	"FILTER_L3I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L3I
	.long	.La16-.Ldebug_info0
# Symbol WV1
# Symbol WV2
# Symbol WV3
# Symbol WV4I
	.uleb128	4
	.ascii	"WV4I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV4I
	.long	.La16-.Ldebug_info0
# Symbol WV5I
	.uleb128	4
	.ascii	"WV5I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV5I
	.long	.La16-.Ldebug_info0
# Symbol ADSRVOL1I
	.uleb128	4
	.ascii	"ADSRVOL1I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I
	.long	.La24-.Ldebug_info0
# Symbol ADSRVOL2I
	.uleb128	4
	.ascii	"ADSRVOL2I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I
	.long	.La24-.Ldebug_info0
# Symbol ADSRVOL3I
	.uleb128	4
	.ascii	"ADSRVOL3I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I
	.long	.La24-.Ldebug_info0
# Symbol ADSRSTATE1
	.uleb128	4
	.ascii	"ADSRSTATE1\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1
	.long	.La26-.Ldebug_info0
# Symbol ADSRSTATE2
	.uleb128	4
	.ascii	"ADSRSTATE2\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2
	.long	.La26-.Ldebug_info0
# Symbol ADSRSTATE3
	.uleb128	4
	.ascii	"ADSRSTATE3\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3
	.long	.La26-.Ldebug_info0
# Symbol SUSTAINVOL1I
	.uleb128	4
	.ascii	"SUSTAINVOL1I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL1I
	.long	.La24-.Ldebug_info0
# Symbol SUSTAINVOL2I
	.uleb128	4
	.ascii	"SUSTAINVOL2I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL2I
	.long	.La24-.Ldebug_info0
# Symbol SUSTAINVOL3I
	.uleb128	4
	.ascii	"SUSTAINVOL3I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL3I
	.long	.La24-.Ldebug_info0
# Symbol OLDSC
	.uleb128	4
	.ascii	"OLDSC\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_OLDSC
	.long	.La16-.Ldebug_info0
# Symbol SC
	.uleb128	4
	.ascii	"SC\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SC
	.long	.La16-.Ldebug_info0
# Symbol SLI
	.uleb128	4
	.ascii	"SLI\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SLI
	.long	.La16-.Ldebug_info0
# Symbol SRI
	.uleb128	4
	.ascii	"SRI\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SRI
	.long	.La16-.Ldebug_info0
# Symbol FREQ1
# Symbol FREQ1N
# Symbol FREQ1I
	.uleb128	4
	.ascii	"FREQ1I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1I
	.long	.La16-.Ldebug_info0
# Symbol FREQ1NI
	.uleb128	4
	.ascii	"FREQ1NI\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1NI
	.long	.La16-.Ldebug_info0
# Symbol WAVEFORM1
	.uleb128	4
	.ascii	"WAVEFORM1\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1
	.long	.La18-.Ldebug_info0
# Symbol GATE1
	.uleb128	4
	.ascii	"GATE1\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE1
	.long	.La26-.Ldebug_info0
# Symbol SA1
	.uleb128	4
	.ascii	"SA1\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA1
	.long	.La26-.Ldebug_info0
# Symbol SD1
	.uleb128	4
	.ascii	"SD1\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD1
	.long	.La26-.Ldebug_info0
# Symbol SS1
	.uleb128	4
	.ascii	"SS1\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS1
	.long	.La26-.Ldebug_info0
# Symbol SR1
	.uleb128	4
	.ascii	"SR1\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR1
	.long	.La26-.Ldebug_info0
# Symbol PW1I
	.uleb128	4
	.ascii	"PW1I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW1I
	.long	.La16-.Ldebug_info0
# Symbol TEST1
	.uleb128	4
	.ascii	"TEST1\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST1
	.long	.La26-.Ldebug_info0
# Symbol SYNC1
	.uleb128	4
	.ascii	"SYNC1\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC1
	.long	.La16-.Ldebug_info0
# Symbol RING1
	.uleb128	4
	.ascii	"RING1\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING1
	.long	.La26-.Ldebug_info0
# Symbol F1
	.uleb128	4
	.ascii	"F1\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F1
	.long	.La34-.Ldebug_info0
# Symbol FREQ2
# Symbol FREQ2N
# Symbol FREQ2I
	.uleb128	4
	.ascii	"FREQ2I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2I
	.long	.La16-.Ldebug_info0
# Symbol FREQ2NI
	.uleb128	4
	.ascii	"FREQ2NI\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2NI
	.long	.La16-.Ldebug_info0
# Symbol WAVEFORM2
	.uleb128	4
	.ascii	"WAVEFORM2\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2
	.long	.La18-.Ldebug_info0
# Symbol GATE2
	.uleb128	4
	.ascii	"GATE2\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE2
	.long	.La26-.Ldebug_info0
# Symbol SA2
	.uleb128	4
	.ascii	"SA2\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA2
	.long	.La26-.Ldebug_info0
# Symbol SD2
	.uleb128	4
	.ascii	"SD2\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD2
	.long	.La26-.Ldebug_info0
# Symbol SS2
	.uleb128	4
	.ascii	"SS2\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS2
	.long	.La26-.Ldebug_info0
# Symbol SR2
	.uleb128	4
	.ascii	"SR2\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR2
	.long	.La26-.Ldebug_info0
# Symbol PW2I
	.uleb128	4
	.ascii	"PW2I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW2I
	.long	.La16-.Ldebug_info0
# Symbol TEST2
	.uleb128	4
	.ascii	"TEST2\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST2
	.long	.La26-.Ldebug_info0
# Symbol SYNC2
	.uleb128	4
	.ascii	"SYNC2\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC2
	.long	.La16-.Ldebug_info0
# Symbol RING2
	.uleb128	4
	.ascii	"RING2\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING2
	.long	.La26-.Ldebug_info0
# Symbol F2
	.uleb128	4
	.ascii	"F2\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F2
	.long	.La34-.Ldebug_info0
# Symbol FREQ3
# Symbol FREQ3N
# Symbol FREQ3I
	.uleb128	4
	.ascii	"FREQ3I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3I
	.long	.La16-.Ldebug_info0
# Symbol FREQ3NI
	.uleb128	4
	.ascii	"FREQ3NI\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3NI
	.long	.La16-.Ldebug_info0
# Symbol WAVEFORM3
	.uleb128	4
	.ascii	"WAVEFORM3\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3
	.long	.La18-.Ldebug_info0
# Symbol GATE3
	.uleb128	4
	.ascii	"GATE3\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE3
	.long	.La26-.Ldebug_info0
# Symbol SA3
	.uleb128	4
	.ascii	"SA3\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA3
	.long	.La26-.Ldebug_info0
# Symbol SD3
	.uleb128	4
	.ascii	"SD3\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD3
	.long	.La26-.Ldebug_info0
# Symbol SS3
	.uleb128	4
	.ascii	"SS3\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS3
	.long	.La26-.Ldebug_info0
# Symbol SR3
	.uleb128	4
	.ascii	"SR3\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR3
	.long	.La26-.Ldebug_info0
# Symbol PW3I
	.uleb128	4
	.ascii	"PW3I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW3I
	.long	.La16-.Ldebug_info0
# Symbol TEST3
	.uleb128	4
	.ascii	"TEST3\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST3
	.long	.La26-.Ldebug_info0
# Symbol SYNC3
	.uleb128	4
	.ascii	"SYNC3\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC3
	.long	.La16-.Ldebug_info0
# Symbol RING3
	.uleb128	4
	.ascii	"RING3\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING3
	.long	.La26-.Ldebug_info0
# Symbol F3
	.uleb128	4
	.ascii	"F3\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F3
	.long	.La34-.Ldebug_info0
# Symbol FF
	.uleb128	4
	.ascii	"FF\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FF
	.long	.La18-.Ldebug_info0
# Symbol FILTER_RESONANCE2
# Symbol FILTER_FREQ
# Symbol FILTER_RESONANCE2I
	.uleb128	4
	.ascii	"FILTER_RESONANCE2I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I
	.long	.La16-.Ldebug_info0
# Symbol FILTER_FREQI
	.uleb128	4
	.ascii	"FILTER_FREQI\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI
	.long	.La16-.Ldebug_info0
# Symbol VOLUME
	.uleb128	4
	.ascii	"VOLUME\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_VOLUME
	.long	.La16-.Ldebug_info0
# Symbol C3OFF
# Symbol FU
	.uleb128	4
	.ascii	"FU\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FU
	.long	.La16-.Ldebug_info0
# Symbol FL
	.uleb128	4
	.ascii	"FL\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FL
	.long	.La16-.Ldebug_info0
# Symbol FB
	.uleb128	4
	.ascii	"FB\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FB
	.long	.La16-.Ldebug_info0
# Symbol WV1I
	.uleb128	4
	.ascii	"WV1I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I
	.long	.La16-.Ldebug_info0
# Symbol WV2I
	.uleb128	4
	.ascii	"WV2I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I
	.long	.La16-.Ldebug_info0
# Symbol WV3I
	.uleb128	4
	.ascii	"WV3I\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I
	.long	.La16-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol SID1
	.uleb128	4
	.ascii	"SID1\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La16-.Ldebug_info0
# Symbol SID1L
	.uleb128	4
	.ascii	"SID1L\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
# Symbol IND
	.uleb128	4
	.ascii	"IND\000"
	.byte	2
	.byte	144
	.uleb128	15
	.long	.La16-.Ldebug_info0
# Symbol ST
# Symbol PP1
	.uleb128	4
	.ascii	"PP1\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La26-.Ldebug_info0
# Symbol PP2
	.uleb128	4
	.ascii	"PP2\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La26-.Ldebug_info0
# Symbol PP3
	.uleb128	4
	.ascii	"PP3\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La26-.Ldebug_info0
# Symbol FOUT
# Symbol FOUT2
# Symbol FOUT3
# Symbol FI
# Symbol FI2
# Symbol FI3
# Symbol WV1A
# Symbol WV2A
# Symbol WV3A
# Symbol WV1II
	.uleb128	4
	.ascii	"WV1II\000"
	.byte	2
	.byte	144
	.uleb128	14
	.long	.La24-.Ldebug_info0
# Symbol WV2II
	.uleb128	4
	.ascii	"WV2II\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La24-.Ldebug_info0
# Symbol WV3II
	.uleb128	4
	.ascii	"WV3II\000"
	.byte	2
	.byte	144
	.uleb128	12
	.long	.La24-.Ldebug_info0
# Symbol FII
	.uleb128	4
	.ascii	"FII\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol FI2I
	.uleb128	4
	.ascii	"FI2I\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La16-.Ldebug_info0
# Symbol FI3I
	.uleb128	4
	.ascii	"FI3I\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol FOUTI
	.uleb128	4
	.ascii	"FOUTI\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La16-.Ldebug_info0
# Symbol FOUT2I
	.uleb128	4
	.ascii	"FOUT2I\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
# Symbol FOUT3I
	.uleb128	4
	.ascii	"FOUT3I\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef noise2:DWord;
	.uleb128	10
	.ascii	"NOISE2\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La82-.Ldebug_info0
	.quad	RETRO_$$_NOISE2$$LONGWORD
	.quad	.Lt29
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La82-.Ldebug_info0
# Symbol NOISE2
	.uleb128	4
	.ascii	"NOISE2\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La82-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La82-.Ldebug_info0
# Symbol A
	.uleb128	4
	.ascii	"A\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A
	.long	.La24-.Ldebug_info0
# Symbol OUTPUT
	.uleb128	4
	.ascii	"OUTPUT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La24-.Ldebug_info0
# Symbol B
	.uleb128	4
	.ascii	"B\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La34-.Ldebug_info0
	.byte	0
# Procdef noise3:DWord;
	.uleb128	10
	.ascii	"NOISE3\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La82-.Ldebug_info0
	.quad	RETRO_$$_NOISE3$$LONGWORD
	.quad	.Lt30
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La82-.Ldebug_info0
# Symbol NOISE3
	.uleb128	4
	.ascii	"NOISE3\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La82-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La82-.Ldebug_info0
# Symbol A
	.uleb128	4
	.ascii	"A\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A
	.long	.La24-.Ldebug_info0
# Symbol B22
	.uleb128	4
	.ascii	"B22\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B22
	.long	.La24-.Ldebug_info0
# Symbol B20
	.uleb128	4
	.ascii	"B20\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B20
	.long	.La24-.Ldebug_info0
# Symbol B16
	.uleb128	4
	.ascii	"B16\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B16
	.long	.La24-.Ldebug_info0
# Symbol B13
	.uleb128	4
	.ascii	"B13\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B13
	.long	.La24-.Ldebug_info0
# Symbol B11
	.uleb128	4
	.ascii	"B11\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B11
	.long	.La24-.Ldebug_info0
# Symbol B07
	.uleb128	4
	.ascii	"B07\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B07
	.long	.La24-.Ldebug_info0
# Symbol B04
	.uleb128	4
	.ascii	"B04\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B04
	.long	.La24-.Ldebug_info0
# Symbol B02
	.uleb128	4
	.ascii	"B02\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B02
	.long	.La24-.Ldebug_info0
# Symbol B17
	.uleb128	4
	.ascii	"B17\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B17
	.long	.La24-.Ldebug_info0
# Symbol OUTPUT
	.uleb128	4
	.ascii	"OUTPUT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La24-.Ldebug_info0
# Symbol B
	.uleb128	4
	.ascii	"B\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La34-.Ldebug_info0
	.byte	0
# Procdef delay1(<var tsample>;tsample):Array[0..1] Of SmallInt;
	.uleb128	10
	.ascii	"DELAY1\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La7-.Ldebug_info0
	.quad	RETRO_$$_DELAY1$TSAMPLE$$TSAMPLE
	.quad	.Lt31
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	3
	.byte	146
	.uleb128	3
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol S
	.uleb128	6
	.ascii	"S\000"
	.byte	2
	.byte	119
	.sleb128	40
	.long	.La7-.Ldebug_info0
# Symbol DELAY1
	.uleb128	4
	.ascii	"DELAY1\000"
	.byte	3
	.byte	146
	.uleb128	3
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	3
	.byte	146
	.uleb128	3
	.sleb128	0
	.long	.La7-.Ldebug_info0
	.byte	0
# Procdef reverb1(<var tsample>;tsample):Array[0..1] Of SmallInt;
	.uleb128	10
	.ascii	"REVERB1\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La7-.Ldebug_info0
	.quad	RETRO_$$_REVERB1$TSAMPLE$$TSAMPLE
	.quad	.Lt32
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	3
	.byte	146
	.uleb128	0
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol S
	.uleb128	6
	.ascii	"S\000"
	.byte	2
	.byte	119
	.sleb128	40
	.long	.La7-.Ldebug_info0
# Symbol REVERB1
	.uleb128	4
	.ascii	"REVERB1\000"
	.byte	3
	.byte	146
	.uleb128	0
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	3
	.byte	146
	.uleb128	0
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol A1
	.uleb128	4
	.ascii	"A1\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol A2
	.uleb128	4
	.ascii	"A2\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol A3
	.uleb128	4
	.ascii	"A3\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol A4
	.uleb128	4
	.ascii	"A4\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol A5
	.uleb128	4
	.ascii	"A5\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La16-.Ldebug_info0
# Symbol A6
	.uleb128	4
	.ascii	"A6\000"
	.byte	2
	.byte	144
	.uleb128	12
	.long	.La16-.Ldebug_info0
# Symbol A7
	.uleb128	4
	.ascii	"A7\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La16-.Ldebug_info0
# Symbol A8
	.uleb128	4
	.ascii	"A8\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La16-.Ldebug_info0
# Symbol A9
	.uleb128	4
	.ascii	"A9\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
# Symbol A10
	.uleb128	4
	.ascii	"A10\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La16-.Ldebug_info0
# Symbol SART
	.uleb128	4
	.ascii	"SART\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$REVERB1$TSAMPLE$$TSAMPLE_$$_SART
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef readkeybuffer:DWord;
	.uleb128	10
	.ascii	"READKEYBUFFER\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La82-.Ldebug_info0
	.quad	RETRO_$$_READKEYBUFFER$$LONGWORD
	.quad	.Lt33
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La82-.Ldebug_info0
# Symbol READKEYBUFFER
	.uleb128	4
	.ascii	"READKEYBUFFER\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La82-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.byte	0
# Procdef writekeybuffer(LongInt);
	.uleb128	5
	.ascii	"WRITEKEYBUFFER\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_WRITEKEYBUFFER$LONGINT
	.quad	.Lt34
# Symbol A
	.uleb128	6
	.ascii	"A\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef sprite(Pointer);
	.uleb128	5
	.ascii	"SPRITE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_SPRITE$POINTER
	.quad	.Lt35
# Symbol SCREEN
	.uleb128	6
	.ascii	"SCREEN\000"
	.byte	2
	.byte	144
	.uleb128	15
	.long	.La20-.Ldebug_info0
# Symbol P100
# Symbol OFFSET
	.uleb128	4
	.ascii	"OFFSET\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol PIXEL
	.uleb128	4
	.ascii	"PIXEL\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol SPRITEBASE
	.uleb128	4
	.ascii	"SPRITEBASE\000"
	.byte	2
	.byte	144
	.uleb128	14
	.long	.La16-.Ldebug_info0
# Symbol SPRITEDEFS
	.uleb128	4
	.ascii	"SPRITEDEFS\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La16-.Ldebug_info0
# Symbol CTRL1
	.uleb128	4
	.ascii	"CTRL1\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol SCREENBASE
	.uleb128	4
	.ascii	"SCREENBASE\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La84-.Ldebug_info0
# Symbol PI
	.uleb128	4
	.ascii	"PI\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La84-.Ldebug_info0
# Symbol XPOS
	.uleb128	4
	.ascii	"XPOS\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol YPOS
	.uleb128	4
	.ascii	"YPOS\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol XZOOM
	.uleb128	4
	.ascii	"XZOOM\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol YZOOM
	.uleb128	4
	.ascii	"YZOOM\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
# Symbol J
	.uleb128	4
	.ascii	"J\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol K
	.uleb128	4
	.ascii	"K\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol L
	.uleb128	4
	.ascii	"L\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol M
	.uleb128	4
	.ascii	"M\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol MASK
	.uleb128	4
	.ascii	"MASK\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La82-.Ldebug_info0
# Definition ^LongInt
.La84:
	.uleb128	7
	.long	.La16-.Ldebug_info0
.La85:
	.uleb128	8
	.long	.La84-.Ldebug_info0
	.byte	0
# Procdef sdlevents;
	.uleb128	5
	.ascii	"SDLEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_SDLEVENTS
	.quad	.Lt36
# Symbol QQ
	.uleb128	4
	.ascii	"QQ\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
# Symbol EVENT
	.uleb128	4
	.ascii	"EVENT\000"
	.byte	2
	.byte	119
	.sleb128	32
	.long	.La86-.Ldebug_info0
# Symbol KEY
	.uleb128	4
	.ascii	"KEY\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La82-.Ldebug_info0
# Symbol X
	.uleb128	4
	.ascii	"X\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SDLEVENTS_$$_X
	.long	.La16-.Ldebug_info0
# Symbol Y
	.uleb128	4
	.ascii	"Y\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$SDLEVENTS_$$_Y
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef AudioCallback(Pointer;PByte;LongInt); CDecl;
	.uleb128	11
	.ascii	"AUDIOCALLBACK\000"
	.byte	1
	.byte	1
	.quad	RETRO_$$_AUDIOCALLBACK$POINTER$PBYTE$LONGINT
	.quad	.Lt37
# Symbol USERDATA
	.uleb128	6
	.ascii	"USERDATA\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La20-.Ldebug_info0
# Symbol AUDIO
	.uleb128	6
	.ascii	"AUDIO\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La88-.Ldebug_info0
# Symbol LENGTH
	.uleb128	6
	.ascii	"LENGTH\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La16-.Ldebug_info0
# Symbol AUDIO2
	.uleb128	4
	.ascii	"AUDIO2\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La90-.Ldebug_info0
# Symbol S
	.uleb128	4
	.ascii	"S\000"
	.byte	2
	.byte	119
	.sleb128	32
	.long	.La7-.Ldebug_info0
# Symbol T
	.uleb128	4
	.ascii	"T\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La24-.Ldebug_info0
# Symbol K
	.uleb128	4
	.ascii	"K\000"
	.byte	2
	.byte	144
	.uleb128	14
	.long	.La16-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La16-.Ldebug_info0
# Symbol IL
	.uleb128	4
	.ascii	"IL\000"
	.byte	2
	.byte	144
	.uleb128	12
	.long	.La16-.Ldebug_info0
# Symbol BUF
	.uleb128	4
	.ascii	"BUF\000"
	.byte	2
	.byte	119
	.sleb128	40
	.long	.La92-.Ldebug_info0
# Symbol S1
	.uleb128	4
	.ascii	"S1\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La94-.Ldebug_info0
# Symbol AA
	.uleb128	4
	.ascii	"AA\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$AUDIOCALLBACK$POINTER$PBYTE$LONGINT_$$_AA
	.long	.La16-.Ldebug_info0
# Definition Array[0..25] Of Byte
.La92:
	.uleb128	12
	.uleb128	26
	.long	.La26-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	25
	.uleb128	1
	.long	.La96-.Ldebug_info0
	.byte	0
.La93:
	.uleb128	8
	.long	.La92-.Ldebug_info0
	.byte	0
# Procdef sdl_sound_init:LongInt;
	.uleb128	10
	.ascii	"SDL_SOUND_INIT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La16-.Ldebug_info0
	.quad	RETRO_$$_SDL_SOUND_INIT$$LONGINT
	.quad	.Lt38
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
# Symbol SDL_SOUND_INIT
	.uleb128	4
	.ascii	"SDL_SOUND_INIT\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef antialias6(Double;var TFiltertable):Double;
	.uleb128	10
	.ascii	"ANTIALIAS6\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
	.quad	RETRO_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE
	.quad	.Lt39
# Symbol INPUT
	.uleb128	6
	.ascii	"INPUT\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La14-.Ldebug_info0
# Symbol FT
	.uleb128	6
	.ascii	"FT\000"
	.byte	3
	.byte	146
	.uleb128	0
	.sleb128	0
	.long	.La12-.Ldebug_info0
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La14-.Ldebug_info0
# Symbol ANTIALIAS6
	.uleb128	4
	.ascii	"ANTIALIAS6\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La14-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La14-.Ldebug_info0
# Symbol GAIN
	.uleb128	4
	.ascii	"GAIN\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN
	.long	.La14-.Ldebug_info0
	.byte	0
# Procdef initnotes;
	.uleb128	5
	.ascii	"INITNOTES\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_INITNOTES
	.quad	.Lt40
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La16-.Ldebug_info0
# Symbol Q
	.uleb128	4
	.ascii	"Q\000"
	.byte	2
	.byte	144
	.uleb128	18
	.long	.La14-.Ldebug_info0
	.byte	0
# Procdef initsinetable;
	.uleb128	5
	.ascii	"INITSINETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_INITSINETABLE
	.quad	.Lt41
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef initlogtable;
	.uleb128	5
	.ascii	"INITLOGTABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_INITLOGTABLE
	.quad	.Lt42
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La16-.Ldebug_info0
# Symbol Q
	.uleb128	4
	.ascii	"Q\000"
	.byte	2
	.byte	144
	.uleb128	18
	.long	.La14-.Ldebug_info0
# Symbol Q2
	.uleb128	4
	.ascii	"Q2\000"
	.byte	2
	.byte	144
	.uleb128	19
	.long	.La14-.Ldebug_info0
	.byte	0
# Procdef noise1:Byte;
	.uleb128	10
	.ascii	"NOISE1\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La26-.Ldebug_info0
	.quad	RETRO_$$_NOISE1$$BYTE
	.quad	.Lt43
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La26-.Ldebug_info0
# Symbol NOISE1
	.uleb128	4
	.ascii	"NOISE1\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La26-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La26-.Ldebug_info0
# Symbol A
	.uleb128	4
	.ascii	"A\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_A
	.long	.La82-.Ldebug_info0
# Symbol B22
	.uleb128	4
	.ascii	"B22\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_B22
	.long	.La82-.Ldebug_info0
# Symbol B20
	.uleb128	4
	.ascii	"B20\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_B20
	.long	.La82-.Ldebug_info0
# Symbol B16
	.uleb128	4
	.ascii	"B16\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_B16
	.long	.La82-.Ldebug_info0
# Symbol B13
	.uleb128	4
	.ascii	"B13\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_B13
	.long	.La82-.Ldebug_info0
# Symbol B11
	.uleb128	4
	.ascii	"B11\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_B11
	.long	.La82-.Ldebug_info0
# Symbol B07
	.uleb128	4
	.ascii	"B07\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_B07
	.long	.La82-.Ldebug_info0
# Symbol B04
	.uleb128	4
	.ascii	"B04\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_B04
	.long	.La82-.Ldebug_info0
# Symbol B02
	.uleb128	4
	.ascii	"B02\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_B02
	.long	.La82-.Ldebug_info0
# Symbol B17
	.uleb128	4
	.ascii	"B17\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_B17
	.long	.La82-.Ldebug_info0
# Symbol OUTPUT
	.uleb128	4
	.ascii	"OUTPUT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La82-.Ldebug_info0
# Symbol B
	.uleb128	4
	.ascii	"B\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La34-.Ldebug_info0
	.byte	0
# Procdef fmsynth(<var tsample>):Array[0..1] Of SmallInt;
	.uleb128	10
	.ascii	"FMSYNTH\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La7-.Ldebug_info0
	.quad	RETRO_$$_FMSYNTH$$TSAMPLE
	.quad	.Lt44
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	3
	.byte	146
	.uleb128	4
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol FMSYNTH
	.uleb128	4
	.ascii	"FMSYNTH\000"
	.byte	3
	.byte	146
	.uleb128	4
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	3
	.byte	146
	.uleb128	4
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol RES64A
# Symbol VEL
	.uleb128	4
	.ascii	"VEL\000"
	.byte	2
	.byte	144
	.uleb128	9
	.long	.La24-.Ldebug_info0
# Symbol MODULATOR
	.uleb128	4
	.ascii	"MODULATOR\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La24-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	10
	.long	.La16-.Ldebug_info0
# Symbol J
# Symbol SAMPLE
	.uleb128	4
	.ascii	"SAMPLE\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef operator div(<var tsample>;tsample;LongInt):Array[0..1] Of SmallInt;
	.uleb128	10
	.ascii	"div\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La7-.Ldebug_info0
	.quad	RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
	.quad	.Lt45
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	3
	.byte	146
	.uleb128	2
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol A
	.uleb128	6
	.ascii	"A\000"
	.byte	2
	.byte	119
	.sleb128	8
	.long	.La7-.Ldebug_info0
# Symbol B
	.uleb128	6
	.ascii	"B\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La16-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	3
	.byte	146
	.uleb128	2
	.sleb128	0
	.long	.La7-.Ldebug_info0
	.byte	0
# Procdef operator +(<var tsample>;tsample;tsample):Array[0..1] Of SmallInt;
	.uleb128	10
	.ascii	"plus\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La7-.Ldebug_info0
	.quad	RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
	.quad	.Lt46
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	3
	.byte	146
	.uleb128	2
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol A
	.uleb128	6
	.ascii	"A\000"
	.byte	2
	.byte	119
	.sleb128	16
	.long	.La7-.Ldebug_info0
# Symbol B
	.uleb128	6
	.ascii	"B\000"
	.byte	2
	.byte	119
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	3
	.byte	146
	.uleb128	2
	.sleb128	0
	.long	.La7-.Ldebug_info0
# Symbol Q1
	.uleb128	4
	.ascii	"Q1\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La16-.Ldebug_info0
# Symbol Q2
	.uleb128	4
	.ascii	"Q2\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La16-.Ldebug_info0
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition Pointer
.La20:
	.uleb128	14
	.ascii	"POINTER\000"
	.long	.La98-.Ldebug_info0
.La98:
	.uleb128	15
.La21:
	.uleb128	8
	.long	.La20-.Ldebug_info0
# Definition Byte
.La26:
	.uleb128	14
	.ascii	"BYTE\000"
	.long	.La99-.Ldebug_info0
.La99:
	.uleb128	16
	.ascii	"BYTE\000"
	.byte	7
	.byte	1
.La27:
	.uleb128	8
	.long	.La26-.Ldebug_info0
# Definition ShortInt
.La96:
	.uleb128	14
	.ascii	"SHORTINT\000"
	.long	.La100-.Ldebug_info0
.La100:
	.uleb128	16
	.ascii	"SHORTINT\000"
	.byte	5
	.byte	1
.La97:
	.uleb128	8
	.long	.La96-.Ldebug_info0
# Definition Word
.La18:
	.uleb128	14
	.ascii	"WORD\000"
	.long	.La101-.Ldebug_info0
.La101:
	.uleb128	16
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La19:
	.uleb128	8
	.long	.La18-.Ldebug_info0
# Definition SmallInt
.La94:
	.uleb128	14
	.ascii	"SMALLINT\000"
	.long	.La102-.Ldebug_info0
.La102:
	.uleb128	16
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.La95:
	.uleb128	8
	.long	.La94-.Ldebug_info0
# Definition LongWord
.La82:
	.uleb128	14
	.ascii	"LONGWORD\000"
	.long	.La103-.Ldebug_info0
.La103:
	.uleb128	16
	.ascii	"LONGWORD\000"
	.byte	7
	.byte	4
.La83:
	.uleb128	8
	.long	.La82-.Ldebug_info0
# Definition LongInt
.La16:
	.uleb128	14
	.ascii	"LONGINT\000"
	.long	.La104-.Ldebug_info0
.La104:
	.uleb128	16
	.ascii	"LONGINT\000"
	.byte	5
	.byte	4
.La17:
	.uleb128	8
	.long	.La16-.Ldebug_info0
# Definition Int64
.La24:
	.uleb128	14
	.ascii	"INT64\000"
	.long	.La105-.Ldebug_info0
.La105:
	.uleb128	16
	.ascii	"Int64\000"
	.byte	5
	.byte	8
.La25:
	.uleb128	8
	.long	.La24-.Ldebug_info0
# Definition Boolean
.La34:
	.uleb128	14
	.ascii	"BOOLEAN\000"
	.long	.La106-.Ldebug_info0
.La106:
	.uleb128	16
	.ascii	"Boolean\000"
	.byte	2
	.byte	1
.La35:
	.uleb128	8
	.long	.La34-.Ldebug_info0
# Definition Char
.La76:
	.uleb128	14
	.ascii	"CHAR\000"
	.long	.La107-.Ldebug_info0
.La107:
	.uleb128	16
	.ascii	"Char\000"
	.byte	8
	.byte	1
.La77:
	.uleb128	8
	.long	.La76-.Ldebug_info0
# Definition AnsiString
.La78:
	.uleb128	14
	.ascii	"ANSISTRING\000"
	.long	.La108-.Ldebug_info0
.La108:
	.uleb128	7
	.long	.La76-.Ldebug_info0
.La79:
	.uleb128	8
	.long	.La78-.Ldebug_info0
# Definition Double
.La14:
	.uleb128	14
	.ascii	"DOUBLE\000"
	.long	.La109-.Ldebug_info0
.La109:
	.uleb128	16
	.ascii	"DOUBLE\000"
	.byte	4
	.byte	8
.La15:
	.uleb128	8
	.long	.La14-.Ldebug_info0
# Definition ^untyped
.La80:
	.uleb128	14
	.ascii	"parentfp_void_pointer\000"
	.long	.La110-.Ldebug_info0
.La110:
	.uleb128	15
.La81:
	.uleb128	8
	.long	.La80-.Ldebug_info0
# Definition PSmallInt
.La90:
	.uleb128	14
	.ascii	"PSMALLINT\000"
	.long	.La111-.Ldebug_info0
.La111:
	.uleb128	7
	.long	.La94-.Ldebug_info0
.La91:
	.uleb128	8
	.long	.La90-.Ldebug_info0
# Definition PByte
.La88:
	.uleb128	14
	.ascii	"PBYTE\000"
	.long	.La112-.Ldebug_info0
.La112:
	.uleb128	7
	.long	.La26-.Ldebug_info0
.La89:
	.uleb128	8
	.long	.La88-.Ldebug_info0
# Defs - End unit SYSTEM has index 1
# Defs - Begin unit OBJPAS has index 6
# Defs - End unit OBJPAS has index 6
# Defs - Begin unit SDL2 has index 254
# Definition TSDL_AudioSpec
.La32:
	.uleb128	14
	.ascii	"TSDL_AUDIOSPEC\000"
	.long	.La113-.Ldebug_info0
.La113:
	.uleb128	17
	.ascii	"TSDL_AUDIOSPEC\000"
	.uleb128	32
	.uleb128	18
	.ascii	"FREQ\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"FORMAT\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La18-.Ldebug_info0
	.uleb128	18
	.ascii	"CHANNELS\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"SILENCE\000"
	.byte	2
	.byte	35
	.uleb128	7
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"SAMPLES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La18-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La18-.Ldebug_info0
	.uleb128	18
	.ascii	"SIZE\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"CALLBACK\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La114-.Ldebug_info0
	.uleb128	18
	.ascii	"USERDATA\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La20-.Ldebug_info0
	.byte	0
.La33:
	.uleb128	8
	.long	.La32-.Ldebug_info0
# Definition TSDL_Event
.La86:
	.uleb128	14
	.ascii	"TSDL_EVENT\000"
	.long	.La116-.Ldebug_info0
.La116:
	.uleb128	17
	.ascii	"TSDL_EVENT\000"
	.uleb128	56
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"COMMON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La117-.Ldebug_info0
	.uleb128	18
	.ascii	"WINDOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La119-.Ldebug_info0
	.uleb128	18
	.ascii	"KEY\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La121-.Ldebug_info0
	.uleb128	18
	.ascii	"EDIT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La123-.Ldebug_info0
	.uleb128	18
	.ascii	"TEXT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La125-.Ldebug_info0
	.uleb128	18
	.ascii	"MOTION\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La127-.Ldebug_info0
	.uleb128	18
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La129-.Ldebug_info0
	.uleb128	18
	.ascii	"WHEEL\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La131-.Ldebug_info0
	.uleb128	18
	.ascii	"JAXIS\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La133-.Ldebug_info0
	.uleb128	18
	.ascii	"JBALL\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La135-.Ldebug_info0
	.uleb128	18
	.ascii	"JHAT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La137-.Ldebug_info0
	.uleb128	18
	.ascii	"JBUTTON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La139-.Ldebug_info0
	.uleb128	18
	.ascii	"JDEVICE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La141-.Ldebug_info0
	.uleb128	18
	.ascii	"CAXIS\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La143-.Ldebug_info0
	.uleb128	18
	.ascii	"CBUTTON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La145-.Ldebug_info0
	.uleb128	18
	.ascii	"CDEVICE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La147-.Ldebug_info0
	.uleb128	18
	.ascii	"QUIT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La149-.Ldebug_info0
	.uleb128	18
	.ascii	"USER\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La151-.Ldebug_info0
	.uleb128	18
	.ascii	"SYSWM\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La153-.Ldebug_info0
	.uleb128	18
	.ascii	"TFINGER\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La155-.Ldebug_info0
	.uleb128	18
	.ascii	"MGESTURE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La157-.Ldebug_info0
	.uleb128	18
	.ascii	"DGESTURE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La159-.Ldebug_info0
	.uleb128	18
	.ascii	"DROP\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La161-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La163-.Ldebug_info0
	.byte	0
.La87:
	.uleb128	8
	.long	.La86-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer;PByte;LongInt);CDecl>
.La114:
	.uleb128	14
	.ascii	"TSDL_AUDIOCALLBACK\000"
	.long	.La165-.Ldebug_info0
.La165:
	.uleb128	19
	.ascii	"TSDL_AUDIOCALLBACK\000"
	.byte	1
	.uleb128	20
	.ascii	"USERDATA\000"
	.long	.La20-.Ldebug_info0
	.uleb128	20
	.ascii	"STREAM\000"
	.long	.La88-.Ldebug_info0
	.uleb128	20
	.ascii	"LEN\000"
	.long	.La16-.Ldebug_info0
	.byte	0
.La115:
	.uleb128	8
	.long	.La114-.Ldebug_info0
# Definition TSDL_CommonEvent
.La117:
	.uleb128	14
	.ascii	"TSDL_COMMONEVENT\000"
	.long	.La166-.Ldebug_info0
.La166:
	.uleb128	17
	.ascii	"TSDL_COMMONEVENT\000"
	.uleb128	8
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.byte	0
.La118:
	.uleb128	8
	.long	.La117-.Ldebug_info0
# Definition TSDL_WindowEvent
.La119:
	.uleb128	14
	.ascii	"TSDL_WINDOWEVENT\000"
	.long	.La167-.Ldebug_info0
.La167:
	.uleb128	17
	.ascii	"TSDL_WINDOWEVENT\000"
	.uleb128	24
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"EVENT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La16-.Ldebug_info0
	.byte	0
.La120:
	.uleb128	8
	.long	.La119-.Ldebug_info0
# Definition TSDL_KeyboardEvent
.La121:
	.uleb128	14
	.ascii	"TSDL_KEYBOARDEVENT\000"
	.long	.La168-.Ldebug_info0
.La168:
	.uleb128	17
	.ascii	"TSDL_KEYBOARDEVENT\000"
	.uleb128	32
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"REPEAT_\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"KEYSYM\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La169-.Ldebug_info0
	.byte	0
.La122:
	.uleb128	8
	.long	.La121-.Ldebug_info0
# Definition TSDL_TextEditingEvent
.La123:
	.uleb128	14
	.ascii	"TSDL_TEXTEDITINGEVENT\000"
	.long	.La171-.Ldebug_info0
.La171:
	.uleb128	17
	.ascii	"TSDL_TEXTEDITINGEVENT\000"
	.uleb128	52
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TEXT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La172-.Ldebug_info0
	.uleb128	18
	.ascii	"START\000"
	.byte	2
	.byte	35
	.uleb128	44
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"LENGTH\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La16-.Ldebug_info0
	.byte	0
.La124:
	.uleb128	8
	.long	.La123-.Ldebug_info0
# Definition TSDL_TextInputEvent
.La125:
	.uleb128	14
	.ascii	"TSDL_TEXTINPUTEVENT\000"
	.long	.La174-.Ldebug_info0
.La174:
	.uleb128	17
	.ascii	"TSDL_TEXTINPUTEVENT\000"
	.uleb128	44
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TEXT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La175-.Ldebug_info0
	.byte	0
.La126:
	.uleb128	8
	.long	.La125-.Ldebug_info0
# Definition TSDL_MouseMotionEvent
.La127:
	.uleb128	14
	.ascii	"TSDL_MOUSEMOTIONEVENT\000"
	.long	.La177-.Ldebug_info0
.La177:
	.uleb128	17
	.ascii	"TSDL_MOUSEMOTIONEVENT\000"
	.uleb128	36
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"XREL\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"YREL\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La16-.Ldebug_info0
	.byte	0
.La128:
	.uleb128	8
	.long	.La127-.Ldebug_info0
# Definition TSDL_MouseButtonEvent
.La129:
	.uleb128	14
	.ascii	"TSDL_MOUSEBUTTONEVENT\000"
	.long	.La178-.Ldebug_info0
.La178:
	.uleb128	17
	.ascii	"TSDL_MOUSEBUTTONEVENT\000"
	.uleb128	28
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	17
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"CLICKS\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	19
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La16-.Ldebug_info0
	.byte	0
.La130:
	.uleb128	8
	.long	.La129-.Ldebug_info0
# Definition TSDL_MouseWheelEvent
.La131:
	.uleb128	14
	.ascii	"TSDL_MOUSEWHEELEVENT\000"
	.long	.La179-.Ldebug_info0
.La179:
	.uleb128	17
	.ascii	"TSDL_MOUSEWHEELEVENT\000"
	.uleb128	24
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La16-.Ldebug_info0
	.byte	0
.La132:
	.uleb128	8
	.long	.La131-.Ldebug_info0
# Definition TSDL_JoyAxisEvent
.La133:
	.uleb128	14
	.ascii	"TSDL_JOYAXISEVENT\000"
	.long	.La180-.Ldebug_info0
.La180:
	.uleb128	17
	.ascii	"TSDL_JOYAXISEVENT\000"
	.uleb128	20
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"AXIS\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"VALUE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La94-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING4\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La18-.Ldebug_info0
	.byte	0
.La134:
	.uleb128	8
	.long	.La133-.Ldebug_info0
# Definition TSDL_JoyBallEvent
.La135:
	.uleb128	14
	.ascii	"TSDL_JOYBALLEVENT\000"
	.long	.La181-.Ldebug_info0
.La181:
	.uleb128	17
	.ascii	"TSDL_JOYBALLEVENT\000"
	.uleb128	20
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"BALL\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"XREL\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La94-.Ldebug_info0
	.uleb128	18
	.ascii	"YREL\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La94-.Ldebug_info0
	.byte	0
.La136:
	.uleb128	8
	.long	.La135-.Ldebug_info0
# Definition TSDL_JoyHatEvent
.La137:
	.uleb128	14
	.ascii	"TSDL_JOYHATEVENT\000"
	.long	.La182-.Ldebug_info0
.La182:
	.uleb128	17
	.ascii	"TSDL_JOYHATEVENT\000"
	.uleb128	16
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"HAT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"VALUE\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La26-.Ldebug_info0
	.byte	0
.La138:
	.uleb128	8
	.long	.La137-.Ldebug_info0
# Definition TSDL_JoyButtonEvent
.La139:
	.uleb128	14
	.ascii	"TSDL_JOYBUTTONEVENT\000"
	.long	.La183-.Ldebug_info0
.La183:
	.uleb128	17
	.ascii	"TSDL_JOYBUTTONEVENT\000"
	.uleb128	16
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La26-.Ldebug_info0
	.byte	0
.La140:
	.uleb128	8
	.long	.La139-.Ldebug_info0
# Definition TSDL_JoyDeviceEvent
.La141:
	.uleb128	14
	.ascii	"TSDL_JOYDEVICEEVENT\000"
	.long	.La184-.Ldebug_info0
.La184:
	.uleb128	17
	.ascii	"TSDL_JOYDEVICEEVENT\000"
	.uleb128	12
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.byte	0
.La142:
	.uleb128	8
	.long	.La141-.Ldebug_info0
# Definition TSDL_ControllerAxisEvent
.La143:
	.uleb128	14
	.ascii	"TSDL_CONTROLLERAXISEVENT\000"
	.long	.La185-.Ldebug_info0
.La185:
	.uleb128	17
	.ascii	"TSDL_CONTROLLERAXISEVENT\000"
	.uleb128	20
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"AXIS\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"VALUE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La94-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING4\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La18-.Ldebug_info0
	.byte	0
.La144:
	.uleb128	8
	.long	.La143-.Ldebug_info0
# Definition TSDL_ControllerButtonEvent
.La145:
	.uleb128	14
	.ascii	"TSDL_CONTROLLERBUTTONEVENT\000"
	.long	.La186-.Ldebug_info0
.La186:
	.uleb128	17
	.ascii	"TSDL_CONTROLLERBUTTONEVENT\000"
	.uleb128	16
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La26-.Ldebug_info0
	.byte	0
.La146:
	.uleb128	8
	.long	.La145-.Ldebug_info0
# Definition TSDL_ControllerDeviceEvent
.La147:
	.uleb128	14
	.ascii	"TSDL_CONTROLLERDEVICEEVENT\000"
	.long	.La187-.Ldebug_info0
.La187:
	.uleb128	17
	.ascii	"TSDL_CONTROLLERDEVICEEVENT\000"
	.uleb128	12
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.byte	0
.La148:
	.uleb128	8
	.long	.La147-.Ldebug_info0
# Definition TSDL_TouchFingerEvent
.La155:
	.uleb128	14
	.ascii	"TSDL_TOUCHFINGEREVENT\000"
	.long	.La188-.Ldebug_info0
.La188:
	.uleb128	17
	.ascii	"TSDL_TOUCHFINGEREVENT\000"
	.uleb128	48
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TOUCHID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La24-.Ldebug_info0
	.uleb128	18
	.ascii	"FINGERID\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La24-.Ldebug_info0
	.uleb128	18
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La189-.Ldebug_info0
	.uleb128	18
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La189-.Ldebug_info0
	.uleb128	18
	.ascii	"DX\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La189-.Ldebug_info0
	.uleb128	18
	.ascii	"DY\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La189-.Ldebug_info0
	.uleb128	18
	.ascii	"PRESSURE\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La189-.Ldebug_info0
	.byte	0
.La156:
	.uleb128	8
	.long	.La155-.Ldebug_info0
# Definition TSDL_MultiGestureEvent
.La157:
	.uleb128	14
	.ascii	"TSDL_MULTIGESTUREEVENT\000"
	.long	.La191-.Ldebug_info0
.La191:
	.uleb128	17
	.ascii	"TSDL_MULTIGESTUREEVENT\000"
	.uleb128	40
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TOUCHID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La24-.Ldebug_info0
	.uleb128	18
	.ascii	"DTHETA\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La189-.Ldebug_info0
	.uleb128	18
	.ascii	"DDIST\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La189-.Ldebug_info0
	.uleb128	18
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La189-.Ldebug_info0
	.uleb128	18
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La189-.Ldebug_info0
	.uleb128	18
	.ascii	"NUMFINGERS\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La18-.Ldebug_info0
	.uleb128	18
	.ascii	"PADDING\000"
	.byte	2
	.byte	35
	.uleb128	34
	.long	.La18-.Ldebug_info0
	.byte	0
.La158:
	.uleb128	8
	.long	.La157-.Ldebug_info0
# Definition TSDL_DollarGestureEvent
.La159:
	.uleb128	14
	.ascii	"TSDL_DOLLARGESTUREEVENT\000"
	.long	.La192-.Ldebug_info0
.La192:
	.uleb128	17
	.ascii	"TSDL_DOLLARGESTUREEVENT\000"
	.uleb128	40
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TOUCHID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La24-.Ldebug_info0
	.uleb128	18
	.ascii	"GESTUREID\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La24-.Ldebug_info0
	.uleb128	18
	.ascii	"NUMFINGERS\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"ERROR\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La189-.Ldebug_info0
	.uleb128	18
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La189-.Ldebug_info0
	.uleb128	18
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La189-.Ldebug_info0
	.byte	0
.La160:
	.uleb128	8
	.long	.La159-.Ldebug_info0
# Definition TSDL_DropEvent
.La161:
	.uleb128	14
	.ascii	"TSDL_DROPEVENT\000"
	.long	.La193-.Ldebug_info0
.La193:
	.uleb128	17
	.ascii	"TSDL_DROPEVENT\000"
	.uleb128	16
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"FILE_\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La194-.Ldebug_info0
	.byte	0
.La162:
	.uleb128	8
	.long	.La161-.Ldebug_info0
# Definition TSDL_QuitEvent
.La149:
	.uleb128	14
	.ascii	"TSDL_QUITEVENT\000"
	.long	.La196-.Ldebug_info0
.La196:
	.uleb128	17
	.ascii	"TSDL_QUITEVENT\000"
	.uleb128	8
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.byte	0
.La150:
	.uleb128	8
	.long	.La149-.Ldebug_info0
# Definition TSDL_UserEvent
.La151:
	.uleb128	14
	.ascii	"TSDL_USEREVENT\000"
	.long	.La197-.Ldebug_info0
.La197:
	.uleb128	17
	.ascii	"TSDL_USEREVENT\000"
	.uleb128	32
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"CODE\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La20-.Ldebug_info0
	.byte	0
.La152:
	.uleb128	8
	.long	.La151-.Ldebug_info0
# Definition TSDL_SysWMEvent
.La153:
	.uleb128	14
	.ascii	"TSDL_SYSWMEVENT\000"
	.long	.La198-.Ldebug_info0
.La198:
	.uleb128	17
	.ascii	"TSDL_SYSWMEVENT\000"
	.uleb128	16
	.uleb128	18
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La154:
	.uleb128	8
	.long	.La153-.Ldebug_info0
# Definition TSDL_Keysym
.La169:
	.uleb128	14
	.ascii	"TSDL_KEYSYM\000"
	.long	.La199-.Ldebug_info0
.La199:
	.uleb128	17
	.ascii	"TSDL_KEYSYM\000"
	.uleb128	16
	.uleb128	18
	.ascii	"SCANCODE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"SYM\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"MOD_\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La18-.Ldebug_info0
	.uleb128	18
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La82-.Ldebug_info0
	.byte	0
.La170:
	.uleb128	8
	.long	.La169-.Ldebug_info0
# Defs - End unit SDL2 has index 254
# Defs - Begin unit WINDOWS has index 5
# Defs - End unit WINDOWS has index 5
# Defs - Begin unit SYSCONST has index 27
# Defs - End unit SYSCONST has index 27
# Defs - Begin unit WINDIRS has index 28
# Defs - End unit WINDIRS has index 28
# Defs - Begin unit SYSUTILS has index 23
# Defs - End unit SYSUTILS has index 23
# Defs - Begin unit CRT has index 255
# Defs - End unit CRT has index 255
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
# Defs - Begin unit UNIT6502 has index 13
# Defs - End unit UNIT6502 has index 13
# Defs - Begin unit MMSYSTEM has index 256
# Defs - End unit MMSYSTEM has index 256
# Defs - Begin unit FMSYNTH has index 18
# Definition TFmOperator
.La58:
	.uleb128	14
	.ascii	"TFMOPERATOR\000"
	.long	.La200-.Ldebug_info0
.La200:
	.uleb128	7
	.long	.La60-.Ldebug_info0
.La60:
	.uleb128	21
	.ascii	"TFMOPERATOR\000"
	.uleb128	312
	.uleb128	22
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La203-.Ldebug_info0
	.uleb128	18
	.ascii	"FREQ\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"C3\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"C4\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"C5\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"C6\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"LFO1\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"LFO2\000"
	.byte	2
	.byte	35
	.uleb128	56
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"LFO3\000"
	.byte	2
	.byte	35
	.uleb128	64
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"MUL0\000"
	.byte	2
	.byte	35
	.uleb128	72
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"MUL1\000"
	.byte	2
	.byte	35
	.uleb128	80
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"MUL2\000"
	.byte	2
	.byte	35
	.uleb128	88
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"MUL3\000"
	.byte	2
	.byte	35
	.uleb128	96
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"MUL4\000"
	.byte	2
	.byte	35
	.uleb128	104
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"MUL5\000"
	.byte	2
	.byte	35
	.uleb128	112
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"MUL6\000"
	.byte	2
	.byte	35
	.uleb128	120
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"MUL7\000"
	.byte	3
	.byte	35
	.uleb128	128
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"WPTR\000"
	.byte	3
	.byte	35
	.uleb128	136
	.long	.La204-.Ldebug_info0
	.uleb128	18
	.ascii	"WLENGTH\000"
	.byte	3
	.byte	35
	.uleb128	144
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"WLSTART\000"
	.byte	3
	.byte	35
	.uleb128	152
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"WLEND\000"
	.byte	3
	.byte	35
	.uleb128	160
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"ADSRSTATE\000"
	.byte	3
	.byte	35
	.uleb128	296
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"ADSRVAL\000"
	.byte	3
	.byte	35
	.uleb128	168
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"AR1\000"
	.byte	3
	.byte	35
	.uleb128	176
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"AV1\000"
	.byte	3
	.byte	35
	.uleb128	184
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"AR2\000"
	.byte	3
	.byte	35
	.uleb128	192
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"AV2\000"
	.byte	3
	.byte	35
	.uleb128	200
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"AR3\000"
	.byte	3
	.byte	35
	.uleb128	208
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"AV3\000"
	.byte	3
	.byte	35
	.uleb128	216
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"AR4\000"
	.byte	3
	.byte	35
	.uleb128	224
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"AV4\000"
	.byte	3
	.byte	35
	.uleb128	232
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"ADSRBIAS\000"
	.byte	3
	.byte	35
	.uleb128	240
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"VEL\000"
	.byte	3
	.byte	35
	.uleb128	248
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"KEYSENSE\000"
	.byte	3
	.byte	35
	.uleb128	256
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"EXPR\000"
	.byte	3
	.byte	35
	.uleb128	264
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"PA\000"
	.byte	3
	.byte	35
	.uleb128	272
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"PA2\000"
	.byte	3
	.byte	35
	.uleb128	280
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"WAVEMODE\000"
	.byte	3
	.byte	35
	.uleb128	300
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"INTPA\000"
	.byte	3
	.byte	35
	.uleb128	304
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"OUTPUTTABLE\000"
	.byte	3
	.byte	35
	.uleb128	288
	.long	.La204-.Ldebug_info0
# Procdef getsample(<TFmOperator>):Double;
	.uleb128	23
	.ascii	"GETSAMPLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La58-.Ldebug_info0
	.byte	0
# Procdef init(<TFmOperator>);
	.uleb128	25
	.ascii	"INIT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La58-.Ldebug_info0
	.byte	0
# Procdef constructor create(<TFmOperator>;<Pointer>;LongInt;Pointer);
	.uleb128	23
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La58-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La58-.Ldebug_info0
# Symbol vmt
	.uleb128	20
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol MODE
	.uleb128	20
	.ascii	"MODE\000"
	.long	.La16-.Ldebug_info0
# Symbol OUTS
	.uleb128	20
	.ascii	"OUTS\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef destructor destroy(<TFmOperator>;<Pointer>);
	.uleb128	25
	.ascii	"DESTROY\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La58-.Ldebug_info0
# Symbol vmt
	.uleb128	20
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
	.byte	0
	.byte	0
.La59:
	.uleb128	8
	.long	.La58-.Ldebug_info0
# Definition TFmVoice
.La61:
	.uleb128	14
	.ascii	"TFMVOICE\000"
	.long	.La206-.Ldebug_info0
.La206:
	.uleb128	7
	.long	.La63-.Ldebug_info0
.La63:
	.uleb128	21
	.ascii	"TFMVOICE\000"
	.uleb128	168
	.uleb128	22
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La203-.Ldebug_info0
	.uleb128	18
	.ascii	"OPERATORS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La207-.Ldebug_info0
	.uleb128	18
	.ascii	"OUTPUTS\000"
	.byte	2
	.byte	35
	.uleb128	72
	.long	.La209-.Ldebug_info0
	.uleb128	18
	.ascii	"OUTMULS\000"
	.byte	3
	.byte	35
	.uleb128	136
	.long	.La211-.Ldebug_info0
# Procdef constructor create(<TFmVoice>;<Pointer>);
	.uleb128	23
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La61-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La61-.Ldebug_info0
# Symbol vmt
	.uleb128	20
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef getsample(<TFmVoice>):Double;
	.uleb128	23
	.ascii	"GETSAMPLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La61-.Ldebug_info0
	.byte	0
	.byte	0
.La62:
	.uleb128	8
	.long	.La61-.Ldebug_info0
# Definition PSinglesample
.La204:
	.uleb128	14
	.ascii	"PSINGLESAMPLE\000"
	.long	.La213-.Ldebug_info0
.La213:
	.uleb128	7
	.long	.La14-.Ldebug_info0
.La205:
	.uleb128	8
	.long	.La204-.Ldebug_info0
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
# Definition tram
.La1:
	.uleb128	14
	.ascii	"TRAM\000"
	.long	.La214-.Ldebug_info0
.La214:
	.uleb128	26
	.ascii	"TRAM\000"
	.uleb128	268435456
	.long	.La16-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	67108863
	.uleb128	4
	.long	.La16-.Ldebug_info0
	.byte	0
.La2:
	.uleb128	8
	.long	.La1-.Ldebug_info0
# Definition tramw
.La3:
	.uleb128	14
	.ascii	"TRAMW\000"
	.long	.La215-.Ldebug_info0
.La215:
	.uleb128	26
	.ascii	"TRAMW\000"
	.uleb128	268435456
	.long	.La18-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	134217727
	.uleb128	2
	.long	.La16-.Ldebug_info0
	.byte	0
.La4:
	.uleb128	8
	.long	.La3-.Ldebug_info0
# Definition tramb
.La5:
	.uleb128	14
	.ascii	"TRAMB\000"
	.long	.La216-.Ldebug_info0
.La216:
	.uleb128	26
	.ascii	"TRAMB\000"
	.uleb128	268435456
	.long	.La26-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	268435455
	.uleb128	1
	.long	.La16-.Ldebug_info0
	.byte	0
.La6:
	.uleb128	8
	.long	.La5-.Ldebug_info0
# Definition tsample
.La7:
	.uleb128	14
	.ascii	"TSAMPLE\000"
	.long	.La217-.Ldebug_info0
.La217:
	.uleb128	26
	.ascii	"TSAMPLE\000"
	.uleb128	4
	.long	.La94-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	1
	.uleb128	2
	.long	.La96-.Ldebug_info0
	.byte	0
.La8:
	.uleb128	8
	.long	.La7-.Ldebug_info0
# Definition TRetro
.La9:
	.uleb128	14
	.ascii	"TRETRO\000"
	.long	.La218-.Ldebug_info0
.La218:
	.uleb128	7
	.long	.La11-.Ldebug_info0
.La11:
	.uleb128	21
	.ascii	"TRETRO\000"
	.uleb128	88
	.uleb128	22
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La221-.Ldebug_info0
# Procdef Execute(<TRetro>);
	.uleb128	27
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
	.quad	RETRO$_$TRETRO_$__$$_EXECUTE
	.quad	.Lt47
# Symbol this
	.uleb128	28
	.ascii	"this\000"
	.byte	2
	.byte	144
	.uleb128	3
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol P3
	.uleb128	4
	.ascii	"P3\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La20-.Ldebug_info0
# Symbol T
	.uleb128	4
	.ascii	"T\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TRetro>;<Pointer>;Boolean);
	.uleb128	10
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La9-.Ldebug_info0
	.quad	RETRO$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO
	.quad	.Lt48
# Symbol this
	.uleb128	28
	.ascii	"this\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol vmt
	.uleb128	6
	.ascii	"vmt\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La20-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	6
	.ascii	"CREATESUSPENDED\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La34-.Ldebug_info0
	.byte	0
	.byte	0
.La10:
	.uleb128	8
	.long	.La9-.Ldebug_info0
# Definition TFiltertable
.La12:
	.uleb128	14
	.ascii	"TFILTERTABLE\000"
	.long	.La222-.Ldebug_info0
.La222:
	.uleb128	26
	.ascii	"TFILTERTABLE\000"
	.uleb128	112
	.long	.La14-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	13
	.uleb128	8
	.long	.La96-.Ldebug_info0
	.byte	0
.La13:
	.uleb128	8
	.long	.La12-.Ldebug_info0
# Definition ^LongInt
.La22:
	.uleb128	7
	.long	.La16-.Ldebug_info0
.La23:
	.uleb128	8
	.long	.La22-.Ldebug_info0
# Definition Array[0..1023] Of Byte
.La28:
	.uleb128	12
	.uleb128	1024
	.long	.La26-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	1023
	.uleb128	1
	.long	.La94-.Ldebug_info0
	.byte	0
.La29:
	.uleb128	8
	.long	.La28-.Ldebug_info0
# Definition Array[0..959] Of LongInt
.La30:
	.uleb128	12
	.uleb128	3840
	.long	.La16-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	959
	.uleb128	4
	.long	.La94-.Ldebug_info0
	.byte	0
.La31:
	.uleb128	8
	.long	.La30-.Ldebug_info0
# Definition Array[0..15] Of LongInt
.La36:
	.uleb128	12
	.uleb128	64
	.long	.La16-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	15
	.uleb128	4
	.long	.La96-.Ldebug_info0
	.byte	0
.La37:
	.uleb128	8
	.long	.La36-.Ldebug_info0
# Definition ^tram
.La38:
	.uleb128	7
	.long	.La1-.Ldebug_info0
.La39:
	.uleb128	8
	.long	.La38-.Ldebug_info0
# Definition ^tramw
.La40:
	.uleb128	7
	.long	.La3-.Ldebug_info0
.La41:
	.uleb128	8
	.long	.La40-.Ldebug_info0
# Definition ^tramb
.La42:
	.uleb128	7
	.long	.La5-.Ldebug_info0
.La43:
	.uleb128	8
	.long	.La42-.Ldebug_info0
# Definition Array[0..15] Of Double
.La44:
	.uleb128	12
	.uleb128	128
	.long	.La14-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	15
	.uleb128	8
	.long	.La96-.Ldebug_info0
	.byte	0
.La45:
	.uleb128	8
	.long	.La44-.Ldebug_info0
# Definition Array[0..15] Of Int64
.La46:
	.uleb128	12
	.uleb128	128
	.long	.La24-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	15
	.uleb128	8
	.long	.La96-.Ldebug_info0
	.byte	0
.La47:
	.uleb128	8
	.long	.La46-.Ldebug_info0
# Definition Array[0..15] Of Int64
.La48:
	.uleb128	12
	.uleb128	128
	.long	.La24-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	15
	.uleb128	8
	.long	.La96-.Ldebug_info0
	.byte	0
.La49:
	.uleb128	8
	.long	.La48-.Ldebug_info0
# Definition Array[0..192000] Of tsample
.La50:
	.uleb128	12
	.uleb128	768004
	.long	.La7-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	192000
	.uleb128	4
	.long	.La16-.Ldebug_info0
	.byte	0
.La51:
	.uleb128	8
	.long	.La50-.Ldebug_info0
# Definition Array[0..192000] Of tsample
.La52:
	.uleb128	12
	.uleb128	768004
	.long	.La7-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	192000
	.uleb128	4
	.long	.La16-.Ldebug_info0
	.byte	0
.La53:
	.uleb128	8
	.long	.La52-.Ldebug_info0
# Definition Array[0..127] Of Byte
.La54:
	.uleb128	12
	.uleb128	128
	.long	.La26-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	127
	.uleb128	1
	.long	.La96-.Ldebug_info0
	.byte	0
.La55:
	.uleb128	8
	.long	.La54-.Ldebug_info0
# Definition Array[0..255] Of LongWord
.La56:
	.uleb128	12
	.uleb128	1024
	.long	.La82-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	255
	.uleb128	4
	.long	.La26-.Ldebug_info0
	.byte	0
.La57:
	.uleb128	8
	.long	.La56-.Ldebug_info0
# Defs - End unit RETRO has index 12
# Defs - Begin unit MIDI has index 15
# Defs - End unit MIDI has index 15
# Defs - Begin unit RETRO has index 12
# Defs - End unit RETRO has index 12
# Defs - Begin Staticsymtable
# Definition Array[0..65535] Of LongInt
.La64:
	.uleb128	12
	.uleb128	262144
	.long	.La16-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	65535
	.uleb128	4
	.long	.La18-.Ldebug_info0
	.byte	0
.La65:
	.uleb128	8
	.long	.La64-.Ldebug_info0
# Definition Array[0..65535] Of LongWord
.La66:
	.uleb128	12
	.uleb128	262144
	.long	.La82-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	65535
	.uleb128	4
	.long	.La18-.Ldebug_info0
	.byte	0
.La67:
	.uleb128	8
	.long	.La66-.Ldebug_info0
# Definition Array[0..8191] Of LongInt
.La68:
	.uleb128	12
	.uleb128	32768
	.long	.La16-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	8191
	.uleb128	4
	.long	.La94-.Ldebug_info0
	.byte	0
.La69:
	.uleb128	8
	.long	.La68-.Ldebug_info0
# Definition Array[0..127] Of LongInt
.La70:
	.uleb128	12
	.uleb128	512
	.long	.La16-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	127
	.uleb128	4
	.long	.La96-.Ldebug_info0
	.byte	0
.La71:
	.uleb128	8
	.long	.La70-.Ldebug_info0
# Definition Array[0..65535] Of LongWord
.La72:
	.uleb128	12
	.uleb128	262144
	.long	.La82-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	65535
	.uleb128	4
	.long	.La18-.Ldebug_info0
	.byte	0
.La73:
	.uleb128	8
	.long	.La72-.Ldebug_info0
# Defs - End Staticsymtable
# Definition TSDL_Event.Array[0..55] Of Byte
.La163:
	.uleb128	12
	.uleb128	56
	.long	.La26-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	55
	.uleb128	1
	.long	.La96-.Ldebug_info0
	.byte	0
.La164:
	.uleb128	8
	.long	.La163-.Ldebug_info0
# Definition TSDL_TextEditingEvent.Array[0..31] Of Char
.La172:
	.uleb128	12
	.uleb128	32
	.long	.La76-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	31
	.uleb128	1
	.long	.La96-.Ldebug_info0
	.byte	0
.La173:
	.uleb128	8
	.long	.La172-.Ldebug_info0
# Definition TSDL_TextInputEvent.Array[0..31] Of Char
.La175:
	.uleb128	12
	.uleb128	32
	.long	.La76-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	31
	.uleb128	1
	.long	.La96-.Ldebug_info0
	.byte	0
.La176:
	.uleb128	8
	.long	.La175-.Ldebug_info0
# Definition Single
.La189:
	.uleb128	14
	.ascii	"SINGLE\000"
	.long	.La223-.Ldebug_info0
.La223:
	.uleb128	16
	.ascii	"SINGLE\000"
	.byte	4
	.byte	4
.La190:
	.uleb128	8
	.long	.La189-.Ldebug_info0
# Definition PChar
.La194:
	.uleb128	14
	.ascii	"PCHAR\000"
	.long	.La224-.Ldebug_info0
.La224:
	.uleb128	7
	.long	.La76-.Ldebug_info0
.La195:
	.uleb128	8
	.long	.La194-.Ldebug_info0
# Definition TObject
.La201:
	.uleb128	14
	.ascii	"TOBJECT\000"
	.long	.La225-.Ldebug_info0
.La225:
	.uleb128	7
	.long	.La203-.Ldebug_info0
.La203:
	.uleb128	21
	.ascii	"TOBJECT\000"
	.uleb128	8
	.uleb128	29
	.byte	1
	.ascii	"_vptr$TOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La20-.Ldebug_info0
# Procdef constructor Create(<TObject>;<Pointer>);
	.uleb128	23
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La201-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La201-.Ldebug_info0
# Symbol vmt
	.uleb128	20
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TObject>;<Pointer>);
	.uleb128	30
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
	.long	.La201-.Ldebug_info0
# Symbol vmt
	.uleb128	20
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef class newinstance(<Class Of TObject>):TObject;
	.uleb128	31
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
	.long	.La201-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La226-.Ldebug_info0
	.byte	0
# Procdef FreeInstance(<TObject>);
	.uleb128	30
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
	.long	.La201-.Ldebug_info0
	.byte	0
# Procdef SafeCallException(<TObject>;TObject;Pointer):LongInt;
	.uleb128	31
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
	.long	.La228-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La201-.Ldebug_info0
# Symbol EXCEPTOBJECT
	.uleb128	20
	.ascii	"EXCEPTOBJECT\000"
	.long	.La201-.Ldebug_info0
# Symbol EXCEPTADDR
	.uleb128	20
	.ascii	"EXCEPTADDR\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef DefaultHandler(<TObject>;var <Formal type>);
	.uleb128	30
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
	.long	.La201-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	20
	.ascii	"MESSAGE\000"
	.long	.La230-.Ldebug_info0
	.byte	0
# Procdef Free(<TObject>);
	.uleb128	25
	.ascii	"FREE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La201-.Ldebug_info0
	.byte	0
# Procdef class InitInstance(<Class Of TObject>;Pointer):TObject;
	.uleb128	23
	.ascii	"INITINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La201-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La232-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	20
	.ascii	"INSTANCE\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef CleanupInstance(<TObject>);
	.uleb128	25
	.ascii	"CLEANUPINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La201-.Ldebug_info0
	.byte	0
# Procdef class ClassType(<Class Of TObject>):Class Of TObject;
	.uleb128	23
	.ascii	"CLASSTYPE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La236-.Ldebug_info0
	.byte	0
# Procdef class ClassInfo(<Class Of TObject>):^untyped;
	.uleb128	23
	.ascii	"CLASSINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La238-.Ldebug_info0
	.byte	0
# Procdef class ClassName(<Class Of TObject>;<var ShortString>):ShortString;
	.uleb128	23
	.ascii	"CLASSNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La240-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La242-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La240-.Ldebug_info0
	.byte	0
# Procdef class ClassNameIs(<Class Of TObject>;const ShortString):Boolean;
	.uleb128	23
	.ascii	"CLASSNAMEIS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La34-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La244-.Ldebug_info0
# Symbol NAME
	.uleb128	20
	.ascii	"NAME\000"
	.long	.La240-.Ldebug_info0
	.byte	0
# Procdef class ClassParent(<Class Of TObject>):Class Of TObject;
	.uleb128	23
	.ascii	"CLASSPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La246-.Ldebug_info0
	.byte	0
# Procdef class InstanceSize(<Class Of TObject>):Int64;
	.uleb128	23
	.ascii	"INSTANCESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La248-.Ldebug_info0
	.byte	0
# Procdef class InheritsFrom(<Class Of TObject>;TClass):Boolean;
	.uleb128	23
	.ascii	"INHERITSFROM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La34-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La250-.Ldebug_info0
# Symbol ACLASS
	.uleb128	20
	.ascii	"ACLASS\000"
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef class StringMessageTable(<Class Of TObject>):^TStringMessageTable;
	.uleb128	23
	.ascii	"STRINGMESSAGETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La252-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La254-.Ldebug_info0
	.byte	0
# Procdef class MethodAddress(<Class Of TObject>;const ShortString):^untyped;
	.uleb128	23
	.ascii	"METHODADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La256-.Ldebug_info0
# Symbol NAME
	.uleb128	20
	.ascii	"NAME\000"
	.long	.La240-.Ldebug_info0
	.byte	0
# Procdef class MethodName(<Class Of TObject>;<var ShortString>;Pointer):ShortString;
	.uleb128	23
	.ascii	"METHODNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La240-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La258-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La240-.Ldebug_info0
# Symbol ADDRESS
	.uleb128	20
	.ascii	"ADDRESS\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef FieldAddress(<TObject>;const ShortString):^untyped;
	.uleb128	23
	.ascii	"FIELDADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La201-.Ldebug_info0
# Symbol NAME
	.uleb128	20
	.ascii	"NAME\000"
	.long	.La240-.Ldebug_info0
	.byte	0
# Procdef AfterConstruction(<TObject>);
	.uleb128	30
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
	.long	.La201-.Ldebug_info0
	.byte	0
# Procdef BeforeDestruction(<TObject>);
	.uleb128	30
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
	.long	.La201-.Ldebug_info0
	.byte	0
# Procdef DefaultHandlerStr(<TObject>;var <Formal type>);
	.uleb128	30
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
	.long	.La201-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	20
	.ascii	"MESSAGE\000"
	.long	.La230-.Ldebug_info0
	.byte	0
# Procdef Dispatch(<TObject>;var <Formal type>);
	.uleb128	30
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
	.long	.La201-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	20
	.ascii	"MESSAGE\000"
	.long	.La230-.Ldebug_info0
	.byte	0
# Procdef DispatchStr(<TObject>;var <Formal type>);
	.uleb128	30
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
	.long	.La201-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	20
	.ascii	"MESSAGE\000"
	.long	.La230-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	23
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La34-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La201-.Ldebug_info0
# Symbol IID
	.uleb128	20
	.ascii	"IID\000"
	.long	.La260-.Ldebug_info0
# Symbol OBJ
	.uleb128	20
	.ascii	"OBJ\000"
	.long	.La230-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	23
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La34-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La201-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	20
	.ascii	"IIDSTR\000"
	.long	.La240-.Ldebug_info0
# Symbol OBJ
	.uleb128	20
	.ascii	"OBJ\000"
	.long	.La230-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceByStr(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	23
	.ascii	"GETINTERFACEBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La34-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La201-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	20
	.ascii	"IIDSTR\000"
	.long	.La240-.Ldebug_info0
# Symbol OBJ
	.uleb128	20
	.ascii	"OBJ\000"
	.long	.La230-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceWeak(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	23
	.ascii	"GETINTERFACEWEAK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La34-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La201-.Ldebug_info0
# Symbol IID
	.uleb128	20
	.ascii	"IID\000"
	.long	.La260-.Ldebug_info0
# Symbol OBJ
	.uleb128	20
	.ascii	"OBJ\000"
	.long	.La230-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntry(<Class Of TObject>;const TGuid):^tinterfaceentry;
	.uleb128	23
	.ascii	"GETINTERFACEENTRY\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La262-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La264-.Ldebug_info0
# Symbol IID
	.uleb128	20
	.ascii	"IID\000"
	.long	.La260-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntryByStr(<Class Of TObject>;const ShortString):^tinterfaceentry;
	.uleb128	23
	.ascii	"GETINTERFACEENTRYBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La262-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La266-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	20
	.ascii	"IIDSTR\000"
	.long	.La240-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceTable(<Class Of TObject>):^tinterfacetable;
	.uleb128	23
	.ascii	"GETINTERFACETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La268-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La270-.Ldebug_info0
	.byte	0
# Procdef class UnitName(<Class Of TObject>;<var AnsiString>):AnsiString;
	.uleb128	23
	.ascii	"UNITNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La78-.Ldebug_info0
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La272-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La78-.Ldebug_info0
	.byte	0
# Procdef Equals(<TObject>;TObject):Boolean;
	.uleb128	31
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
	.long	.La34-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La201-.Ldebug_info0
# Symbol OBJ
	.uleb128	20
	.ascii	"OBJ\000"
	.long	.La201-.Ldebug_info0
	.byte	0
# Procdef GetHashCode(<TObject>):Int64;
	.uleb128	31
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
	.long	.La24-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La201-.Ldebug_info0
	.byte	0
# Procdef ToString(<TObject>;<var AnsiString>):AnsiString;
	.uleb128	31
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
	.long	.La78-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La201-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La78-.Ldebug_info0
	.byte	0
	.byte	0
.La202:
	.uleb128	8
	.long	.La201-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of TFmOperator
.La207:
	.uleb128	12
	.uleb128	64
	.long	.La58-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	7
	.uleb128	8
	.long	.La96-.Ldebug_info0
	.byte	0
.La208:
	.uleb128	8
	.long	.La207-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of Double
.La209:
	.uleb128	12
	.uleb128	64
	.long	.La14-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	7
	.uleb128	8
	.long	.La96-.Ldebug_info0
	.byte	0
.La210:
	.uleb128	8
	.long	.La209-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of Single
.La211:
	.uleb128	12
	.uleb128	32
	.long	.La189-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	7
	.uleb128	4
	.long	.La96-.Ldebug_info0
	.byte	0
.La212:
	.uleb128	8
	.long	.La211-.Ldebug_info0
# Definition TThread
.La219:
	.uleb128	14
	.ascii	"TTHREAD\000"
	.long	.La274-.Ldebug_info0
.La274:
	.uleb128	7
	.long	.La221-.Ldebug_info0
.La221:
	.uleb128	21
	.ascii	"TTHREAD\000"
	.uleb128	88
	.uleb128	22
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La203-.Ldebug_info0
	.uleb128	33
	.ascii	"FHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La275-.Ldebug_info0
	.uleb128	33
	.ascii	"FTERMINATED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La34-.Ldebug_info0
	.uleb128	33
	.ascii	"FFREEONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	17
	.byte	3
	.long	.La34-.Ldebug_info0
	.uleb128	33
	.ascii	"FFINISHED\000"
	.byte	2
	.byte	35
	.uleb128	18
	.byte	3
	.long	.La34-.Ldebug_info0
	.uleb128	33
	.ascii	"FSUSPENDED\000"
	.byte	2
	.byte	35
	.uleb128	20
	.byte	3
	.long	.La277-.Ldebug_info0
	.uleb128	33
	.ascii	"FRETURNVALUE\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La16-.Ldebug_info0
	.uleb128	33
	.ascii	"FONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La279-.Ldebug_info0
	.uleb128	33
	.ascii	"FFATALEXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La201-.Ldebug_info0
	.uleb128	33
	.ascii	"FEXTERNALTHREAD\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La34-.Ldebug_info0
	.uleb128	33
	.ascii	"FSYNCHRONIZEENTRY\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La281-.Ldebug_info0
	.uleb128	33
	.ascii	"FTHREADID\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	2
	.long	.La275-.Ldebug_info0
	.uleb128	33
	.ascii	"RETURNVALUE\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La16-.Ldebug_info0
	.uleb128	33
	.ascii	"TERMINATED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La34-.Ldebug_info0
	.uleb128	33
	.ascii	"FINITIALSUSPENDED\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La34-.Ldebug_info0
	.uleb128	33
	.ascii	"FREEONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	17
	.byte	3
	.long	.La34-.Ldebug_info0
	.uleb128	33
	.ascii	"HANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La275-.Ldebug_info0
	.uleb128	33
	.ascii	"EXTERNALTHREAD\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La34-.Ldebug_info0
	.uleb128	33
	.ascii	"FINISHED\000"
	.byte	2
	.byte	35
	.uleb128	18
	.byte	3
	.long	.La34-.Ldebug_info0
	.uleb128	33
	.ascii	"THREADID\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	2
	.long	.La275-.Ldebug_info0
	.uleb128	33
	.ascii	"ONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La279-.Ldebug_info0
	.uleb128	33
	.ascii	"FATALEXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La201-.Ldebug_info0
# Procdef class GetCurrentThread:TThread; Static;
	.uleb128	34
	.ascii	"GETCURRENTTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La219-.Ldebug_info0
	.byte	0
# Procdef class GetIsSingleProcessor:Boolean; Static;
	.uleb128	34
	.ascii	"GETISSINGLEPROCESSOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La34-.Ldebug_info0
	.byte	0
# Procdef CallOnTerminate(<TThread>);
	.uleb128	35
	.ascii	"CALLONTERMINATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La219-.Ldebug_info0
	.byte	0
# Procdef GetPriority(<TThread>):<enumeration type>;
	.uleb128	34
	.ascii	"GETPRIORITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La283-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La219-.Ldebug_info0
	.byte	0
# Procdef SetPriority(<TThread>;TThreadPriority);
	.uleb128	35
	.ascii	"SETPRIORITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La219-.Ldebug_info0
# Symbol VALUE
	.uleb128	20
	.ascii	"VALUE\000"
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef SetSuspended(<TThread>;Boolean);
	.uleb128	35
	.ascii	"SETSUSPENDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La219-.Ldebug_info0
# Symbol VALUE
	.uleb128	20
	.ascii	"VALUE\000"
	.long	.La34-.Ldebug_info0
	.byte	0
# Procdef GetSuspended(<TThread>):Boolean;
	.uleb128	34
	.ascii	"GETSUSPENDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La34-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La219-.Ldebug_info0
	.byte	0
# Procdef InitSynchronizeEvent(<TThread>);
	.uleb128	35
	.ascii	"INITSYNCHRONIZEEVENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La219-.Ldebug_info0
	.byte	0
# Procdef DoneSynchronizeEvent(<TThread>);
	.uleb128	35
	.ascii	"DONESYNCHRONIZEEVENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La219-.Ldebug_info0
	.byte	0
# Procdef SysCreate(<TThread>;Boolean;const QWord);
	.uleb128	35
	.ascii	"SYSCREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La219-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	20
	.ascii	"CREATESUSPENDED\000"
	.long	.La34-.Ldebug_info0
# Symbol STACKSIZE
	.uleb128	20
	.ascii	"STACKSIZE\000"
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef SysDestroy(<TThread>);
	.uleb128	35
	.ascii	"SYSDESTROY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La219-.Ldebug_info0
	.byte	0
# Procdef DoTerminate(<TThread>);
	.uleb128	36
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
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La219-.Ldebug_info0
	.byte	0
# Procdef Execute(<TThread>);
	.uleb128	36
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
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La219-.Ldebug_info0
	.byte	0
# Procdef Synchronize(<TThread>;TThreadMethod);
	.uleb128	35
	.ascii	"SYNCHRONIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La219-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	20
	.ascii	"AMETHOD\000"
	.long	.La285-.Ldebug_info0
	.byte	0
# Procdef Queue(<TThread>;TThreadMethod);
	.uleb128	35
	.ascii	"QUEUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La219-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	20
	.ascii	"AMETHOD\000"
	.long	.La285-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TThread>;<Pointer>;Boolean;const QWord="4194304");
	.uleb128	23
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La219-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La219-.Ldebug_info0
# Symbol vmt
	.uleb128	20
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	20
	.ascii	"CREATESUSPENDED\000"
	.long	.La34-.Ldebug_info0
# Symbol STACKSIZE
	.uleb128	20
	.ascii	"STACKSIZE\000"
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TThread>;<Pointer>);
	.uleb128	30
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
	.long	.La219-.Ldebug_info0
# Symbol vmt
	.uleb128	20
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef class CreateAnonymousThread(TProcedure):TThread; Static;
	.uleb128	23
	.ascii	"CREATEANONYMOUSTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La219-.Ldebug_info0
# Symbol APROC
	.uleb128	20
	.ascii	"APROC\000"
	.long	.La287-.Ldebug_info0
	.byte	0
# Procdef class NameThreadForDebugging(UnicodeString;QWord="18446744073709551615"); Static;
	.uleb128	25
	.ascii	"NAMETHREADFORDEBUGGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREADNAME
	.uleb128	20
	.ascii	"ATHREADNAME\000"
	.long	.La289-.Ldebug_info0
# Symbol ATHREADID
	.uleb128	20
	.ascii	"ATHREADID\000"
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef class NameThreadForDebugging(AnsiString;QWord="18446744073709551615"); Static;
	.uleb128	25
	.ascii	"NAMETHREADFORDEBUGGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREADNAME
	.uleb128	20
	.ascii	"ATHREADNAME\000"
	.long	.La78-.Ldebug_info0
# Symbol ATHREADID
	.uleb128	20
	.ascii	"ATHREADID\000"
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef class SetReturnValue(LongInt); Static;
	.uleb128	25
	.ascii	"SETRETURNVALUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AVALUE
	.uleb128	20
	.ascii	"AVALUE\000"
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef class CheckTerminated:Boolean; Static;
	.uleb128	23
	.ascii	"CHECKTERMINATED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La34-.Ldebug_info0
	.byte	0
# Procdef class Synchronize(<Class Of TThread>;TThread;TThreadMethod);
	.uleb128	25
	.ascii	"SYNCHRONIZE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol self
	.uleb128	24
	.ascii	"self\000"
	.byte	1
	.long	.La291-.Ldebug_info0
# Symbol ATHREAD
	.uleb128	20
	.ascii	"ATHREAD\000"
	.long	.La219-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	20
	.ascii	"AMETHOD\000"
	.long	.La285-.Ldebug_info0
	.byte	0
# Procdef class Queue(TThread;TThreadMethod); Static;
	.uleb128	25
	.ascii	"QUEUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	20
	.ascii	"ATHREAD\000"
	.long	.La219-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	20
	.ascii	"AMETHOD\000"
	.long	.La285-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThread;TThreadMethod); Static;
	.uleb128	25
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	20
	.ascii	"ATHREAD\000"
	.long	.La219-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	20
	.ascii	"AMETHOD\000"
	.long	.La285-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThreadMethod); Static;
	.uleb128	25
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AMETHOD
	.uleb128	20
	.ascii	"AMETHOD\000"
	.long	.La285-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThread); Static;
	.uleb128	25
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	20
	.ascii	"ATHREAD\000"
	.long	.La219-.Ldebug_info0
	.byte	0
# Procdef class SpinWait(LongWord); Static;
	.uleb128	25
	.ascii	"SPINWAIT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AITERATIONS
	.uleb128	20
	.ascii	"AITERATIONS\000"
	.long	.La82-.Ldebug_info0
	.byte	0
# Procdef class Sleep(LongWord); Static;
	.uleb128	25
	.ascii	"SLEEP\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AMILLISECONDS
	.uleb128	20
	.ascii	"AMILLISECONDS\000"
	.long	.La82-.Ldebug_info0
	.byte	0
# Procdef class Yield; Static;
	.uleb128	25
	.ascii	"YIELD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	0
# Procdef class GetSystemTimes(out TThread.TSystemTimes); Static;
	.uleb128	25
	.ascii	"GETSYSTEMTIMES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ASYSTEMTIMES
	.uleb128	20
	.ascii	"ASYSTEMTIMES\000"
	.long	.La293-.Ldebug_info0
	.byte	0
# Procdef class GetTickCount:DWord; Static;
	.uleb128	23
	.ascii	"GETTICKCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La82-.Ldebug_info0
	.byte	0
# Procdef class GetTickCount64:QWord; Static;
	.uleb128	23
	.ascii	"GETTICKCOUNT64\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadMethod;TNotifyEvent="nil"):TThread; Static;
	.uleb128	23
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La219-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	20
	.ascii	"AMETHOD\000"
	.long	.La285-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	20
	.ascii	"AONTERMINATE\000"
	.long	.La279-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteStatusHandler;TThreadStatusNotifyEvent;TNotifyEvent="nil"):TThread; Static;
	.uleb128	23
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La219-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	20
	.ascii	"AMETHOD\000"
	.long	.La295-.Ldebug_info0
# Symbol AONSTATUS
	.uleb128	20
	.ascii	"AONSTATUS\000"
	.long	.La297-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	20
	.ascii	"AONTERMINATE\000"
	.long	.La279-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteCallBack;Pointer="nil";TNotifyCallBack="nil"):TThread; Static;
	.uleb128	23
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La219-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	20
	.ascii	"AMETHOD\000"
	.long	.La299-.Ldebug_info0
# Symbol ADATA
	.uleb128	20
	.ascii	"ADATA\000"
	.long	.La20-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	20
	.ascii	"AONTERMINATE\000"
	.long	.La301-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteStatusCallBack;TThreadStatusNotifyCallBack;Pointer="nil";TNotifyCallBack="nil"):TThread; Static;
	.uleb128	23
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La219-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	20
	.ascii	"AMETHOD\000"
	.long	.La303-.Ldebug_info0
# Symbol AONSTATUS
	.uleb128	20
	.ascii	"AONSTATUS\000"
	.long	.La305-.Ldebug_info0
# Symbol ADATA
	.uleb128	20
	.ascii	"ADATA\000"
	.long	.La20-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	20
	.ascii	"AONTERMINATE\000"
	.long	.La301-.Ldebug_info0
	.byte	0
# Procdef AfterConstruction(<TThread>);
	.uleb128	30
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
	.long	.La219-.Ldebug_info0
	.byte	0
# Procdef Start(<TThread>);
	.uleb128	25
	.ascii	"START\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La219-.Ldebug_info0
	.byte	0
# Procdef Resume(<TThread>);
	.uleb128	25
	.ascii	"RESUME\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La219-.Ldebug_info0
	.byte	0
# Procdef Suspend(<TThread>);
	.uleb128	25
	.ascii	"SUSPEND\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La219-.Ldebug_info0
	.byte	0
# Procdef Terminate(<TThread>);
	.uleb128	25
	.ascii	"TERMINATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La219-.Ldebug_info0
	.byte	0
# Procdef WaitFor(<TThread>):LongInt;
	.uleb128	23
	.ascii	"WAITFOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La16-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La219-.Ldebug_info0
	.byte	0
	.byte	0
.La220:
	.uleb128	8
	.long	.La219-.Ldebug_info0
# Definition TObject.Class Of TObject
.La226:
	.uleb128	7
	.long	.La307-.Ldebug_info0
.La227:
	.uleb128	8
	.long	.La226-.Ldebug_info0
# Definition HRESULT
.La228:
	.uleb128	14
	.ascii	"HRESULT\000"
	.long	.La309-.Ldebug_info0
.La309:
	.uleb128	16
	.ascii	"HRESULT\000"
	.byte	5
	.byte	4
.La229:
	.uleb128	8
	.long	.La228-.Ldebug_info0
# Definition <Formal type>
.La230:
	.uleb128	14
	.ascii	"formal\000"
	.long	.La310-.Ldebug_info0
.La310:
	.uleb128	16
	.ascii	"FormalDef\000"
	.byte	7
	.byte	0
.La231:
	.uleb128	8
	.long	.La230-.Ldebug_info0
# Definition TObject.Class Of TObject
.La232:
	.uleb128	7
	.long	.La307-.Ldebug_info0
.La233:
	.uleb128	8
	.long	.La232-.Ldebug_info0
# Definition TClass
.La234:
	.uleb128	14
	.ascii	"TCLASS\000"
	.long	.La311-.Ldebug_info0
.La311:
	.uleb128	7
	.long	.La307-.Ldebug_info0
.La235:
	.uleb128	8
	.long	.La234-.Ldebug_info0
# Definition TObject.Class Of TObject
.La236:
	.uleb128	7
	.long	.La307-.Ldebug_info0
.La237:
	.uleb128	8
	.long	.La236-.Ldebug_info0
# Definition TObject.Class Of TObject
.La238:
	.uleb128	7
	.long	.La307-.Ldebug_info0
.La239:
	.uleb128	8
	.long	.La238-.Ldebug_info0
# Definition ShortString
.La240:
	.uleb128	14
	.ascii	"SHORTSTRING\000"
	.long	.La312-.Ldebug_info0
.La312:
	.uleb128	17
	.ascii	"ShortString\000"
	.uleb128	256
	.uleb128	18
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La313-.Ldebug_info0
	.byte	0
.La313:
	.uleb128	37
	.uleb128	256
	.uleb128	1
	.long	.La76-.Ldebug_info0
	.uleb128	38
	.uleb128	1
	.uleb128	255
	.long	.La26-.Ldebug_info0
	.byte	0
.La241:
	.uleb128	8
	.long	.La240-.Ldebug_info0
# Definition TObject.Class Of TObject
.La242:
	.uleb128	7
	.long	.La307-.Ldebug_info0
.La243:
	.uleb128	8
	.long	.La242-.Ldebug_info0
# Definition TObject.Class Of TObject
.La244:
	.uleb128	7
	.long	.La307-.Ldebug_info0
.La245:
	.uleb128	8
	.long	.La244-.Ldebug_info0
# Definition TObject.Class Of TObject
.La246:
	.uleb128	7
	.long	.La307-.Ldebug_info0
.La247:
	.uleb128	8
	.long	.La246-.Ldebug_info0
# Definition TObject.Class Of TObject
.La248:
	.uleb128	7
	.long	.La307-.Ldebug_info0
.La249:
	.uleb128	8
	.long	.La248-.Ldebug_info0
# Definition TObject.Class Of TObject
.La250:
	.uleb128	7
	.long	.La307-.Ldebug_info0
.La251:
	.uleb128	8
	.long	.La250-.Ldebug_info0
# Definition pstringmessagetable
.La252:
	.uleb128	14
	.ascii	"PSTRINGMESSAGETABLE\000"
	.long	.La314-.Ldebug_info0
.La314:
	.uleb128	7
	.long	.La315-.Ldebug_info0
.La253:
	.uleb128	8
	.long	.La252-.Ldebug_info0
# Definition TObject.Class Of TObject
.La254:
	.uleb128	7
	.long	.La307-.Ldebug_info0
.La255:
	.uleb128	8
	.long	.La254-.Ldebug_info0
# Definition TObject.Class Of TObject
.La256:
	.uleb128	7
	.long	.La307-.Ldebug_info0
.La257:
	.uleb128	8
	.long	.La256-.Ldebug_info0
# Definition TObject.Class Of TObject
.La258:
	.uleb128	7
	.long	.La307-.Ldebug_info0
.La259:
	.uleb128	8
	.long	.La258-.Ldebug_info0
# Definition TGuid
.La260:
	.uleb128	14
	.ascii	"TGUID\000"
	.long	.La317-.Ldebug_info0
.La317:
	.uleb128	17
	.ascii	"TGUID\000"
	.uleb128	16
	.uleb128	18
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La18-.Ldebug_info0
	.uleb128	18
	.ascii	"DATA3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La18-.Ldebug_info0
	.uleb128	18
	.ascii	"DATA4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La318-.Ldebug_info0
	.uleb128	18
	.ascii	"D1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"D2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La18-.Ldebug_info0
	.uleb128	18
	.ascii	"D3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La18-.Ldebug_info0
	.uleb128	18
	.ascii	"D4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La320-.Ldebug_info0
	.uleb128	18
	.ascii	"TIME_LOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"TIME_MID\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La18-.Ldebug_info0
	.uleb128	18
	.ascii	"TIME_HI_AND_VERSION\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La18-.Ldebug_info0
	.uleb128	18
	.ascii	"CLOCK_SEQ_HI_AND_RESERVED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"CLOCK_SEQ_LOW\000"
	.byte	2
	.byte	35
	.uleb128	9
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"NODE\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La322-.Ldebug_info0
	.byte	0
.La261:
	.uleb128	8
	.long	.La260-.Ldebug_info0
# Definition pinterfaceentry
.La262:
	.uleb128	14
	.ascii	"PINTERFACEENTRY\000"
	.long	.La324-.Ldebug_info0
.La324:
	.uleb128	7
	.long	.La325-.Ldebug_info0
.La263:
	.uleb128	8
	.long	.La262-.Ldebug_info0
# Definition TObject.Class Of TObject
.La264:
	.uleb128	7
	.long	.La307-.Ldebug_info0
.La265:
	.uleb128	8
	.long	.La264-.Ldebug_info0
# Definition TObject.Class Of TObject
.La266:
	.uleb128	7
	.long	.La307-.Ldebug_info0
.La267:
	.uleb128	8
	.long	.La266-.Ldebug_info0
# Definition pinterfacetable
.La268:
	.uleb128	14
	.ascii	"PINTERFACETABLE\000"
	.long	.La327-.Ldebug_info0
.La327:
	.uleb128	7
	.long	.La328-.Ldebug_info0
.La269:
	.uleb128	8
	.long	.La268-.Ldebug_info0
# Definition TObject.Class Of TObject
.La270:
	.uleb128	7
	.long	.La307-.Ldebug_info0
.La271:
	.uleb128	8
	.long	.La270-.Ldebug_info0
# Definition TObject.Class Of TObject
.La272:
	.uleb128	7
	.long	.La307-.Ldebug_info0
.La273:
	.uleb128	8
	.long	.La272-.Ldebug_info0
# Definition QWord
.La275:
	.uleb128	14
	.ascii	"QWORD\000"
	.long	.La330-.Ldebug_info0
.La330:
	.uleb128	16
	.ascii	"QWord\000"
	.byte	7
	.byte	8
.La276:
	.uleb128	8
	.long	.La275-.Ldebug_info0
# Definition LongBool
.La277:
	.uleb128	14
	.ascii	"LONGBOOL\000"
	.long	.La331-.Ldebug_info0
.La331:
	.uleb128	16
	.ascii	"LongBool\000"
	.byte	2
	.byte	4
.La278:
	.uleb128	8
	.long	.La277-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject) of object;Register>
.La279:
	.uleb128	14
	.ascii	"TNOTIFYEVENT\000"
	.long	.La332-.Ldebug_info0
.La332:
	.uleb128	39
	.byte	16
	.uleb128	18
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La333-.Ldebug_info0
	.uleb128	18
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La201-.Ldebug_info0
	.byte	0
.La333:
	.uleb128	19
	.ascii	"TNOTIFYEVENT\000"
	.byte	1
	.uleb128	20
	.ascii	"this\000"
	.long	.La20-.Ldebug_info0
	.uleb128	20
	.ascii	"SENDER\000"
	.long	.La201-.Ldebug_info0
	.byte	0
.La280:
	.uleb128	8
	.long	.La279-.Ldebug_info0
# Definition TThread.PThreadQueueEntry
.La281:
	.uleb128	14
	.ascii	"PTHREADQUEUEENTRY\000"
	.long	.La334-.Ldebug_info0
.La334:
	.uleb128	7
	.long	.La335-.Ldebug_info0
.La282:
	.uleb128	8
	.long	.La281-.Ldebug_info0
# Definition TThreadPriority
.La283:
	.uleb128	14
	.ascii	"TTHREADPRIORITY\000"
	.long	.La337-.Ldebug_info0
.La337:
	.uleb128	40
	.ascii	"TTHREADPRIORITY\000"
	.byte	4
	.uleb128	41
	.ascii	"TPIDLE\000"
	.long	0
	.uleb128	41
	.ascii	"TPLOWEST\000"
	.long	1
	.uleb128	41
	.ascii	"TPLOWER\000"
	.long	2
	.uleb128	41
	.ascii	"TPNORMAL\000"
	.long	3
	.uleb128	41
	.ascii	"TPHIGHER\000"
	.long	4
	.uleb128	41
	.ascii	"TPHIGHEST\000"
	.long	5
	.uleb128	41
	.ascii	"TPTIMECRITICAL\000"
	.long	6
	.byte	0
.La284:
	.uleb128	8
	.long	.La283-.Ldebug_info0
# Definition <procedure variable type of procedure of object;Register>
.La285:
	.uleb128	14
	.ascii	"TTHREADMETHOD\000"
	.long	.La338-.Ldebug_info0
.La338:
	.uleb128	39
	.byte	16
	.uleb128	18
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La339-.Ldebug_info0
	.uleb128	18
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La201-.Ldebug_info0
	.byte	0
.La339:
	.uleb128	19
	.ascii	"TTHREADMETHOD\000"
	.byte	1
	.uleb128	20
	.ascii	"this\000"
	.long	.La20-.Ldebug_info0
	.byte	0
.La286:
	.uleb128	8
	.long	.La285-.Ldebug_info0
# Definition <procedure variable type of procedure;Register>
.La287:
	.uleb128	14
	.ascii	"TPROCEDURE\000"
	.long	.La340-.Ldebug_info0
.La340:
	.uleb128	19
	.ascii	"TPROCEDURE\000"
	.byte	1
	.byte	0
.La288:
	.uleb128	8
	.long	.La287-.Ldebug_info0
# Definition UnicodeString
.La289:
	.uleb128	14
	.ascii	"UNICODESTRING\000"
	.long	.La341-.Ldebug_info0
.La341:
	.uleb128	7
	.long	.La342-.Ldebug_info0
.La290:
	.uleb128	8
	.long	.La289-.Ldebug_info0
# Definition TThread.Class Of TThread
.La291:
	.uleb128	7
	.long	.La307-.Ldebug_info0
.La292:
	.uleb128	8
	.long	.La291-.Ldebug_info0
# Definition TThread.TSystemTimes
.La293:
	.uleb128	14
	.ascii	"TSYSTEMTIMES\000"
	.long	.La344-.Ldebug_info0
.La344:
	.uleb128	17
	.ascii	"TSYSTEMTIMES\000"
	.uleb128	32
	.uleb128	18
	.ascii	"IDLETIME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La275-.Ldebug_info0
	.uleb128	18
	.ascii	"USERTIME\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La275-.Ldebug_info0
	.uleb128	18
	.ascii	"KERNELTIME\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La275-.Ldebug_info0
	.uleb128	18
	.ascii	"NICETIME\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La275-.Ldebug_info0
	.byte	0
.La294:
	.uleb128	8
	.long	.La293-.Ldebug_info0
# Definition <procedure variable type of procedure(TThreadReportStatus) of object;Register>
.La295:
	.uleb128	14
	.ascii	"TTHREADEXECUTESTATUSHANDLER\000"
	.long	.La345-.Ldebug_info0
.La345:
	.uleb128	39
	.byte	16
	.uleb128	18
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La346-.Ldebug_info0
	.uleb128	18
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La201-.Ldebug_info0
	.byte	0
.La346:
	.uleb128	19
	.ascii	"TTHREADEXECUTESTATUSHANDLER\000"
	.byte	1
	.uleb128	20
	.ascii	"this\000"
	.long	.La20-.Ldebug_info0
	.uleb128	20
	.ascii	"REPORTSTATUS\000"
	.long	.La347-.Ldebug_info0
	.byte	0
.La296:
	.uleb128	8
	.long	.La295-.Ldebug_info0
# Definition <procedure variable type of procedure(TThread;const AnsiString) of object;Register>
.La297:
	.uleb128	14
	.ascii	"TTHREADSTATUSNOTIFYEVENT\000"
	.long	.La349-.Ldebug_info0
.La349:
	.uleb128	39
	.byte	16
	.uleb128	18
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La350-.Ldebug_info0
	.uleb128	18
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La201-.Ldebug_info0
	.byte	0
.La350:
	.uleb128	19
	.ascii	"TTHREADSTATUSNOTIFYEVENT\000"
	.byte	1
	.uleb128	20
	.ascii	"this\000"
	.long	.La20-.Ldebug_info0
	.uleb128	20
	.ascii	"SENDER\000"
	.long	.La219-.Ldebug_info0
	.uleb128	20
	.ascii	"STATUS\000"
	.long	.La78-.Ldebug_info0
	.byte	0
.La298:
	.uleb128	8
	.long	.La297-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer);Register>
.La299:
	.uleb128	14
	.ascii	"TTHREADEXECUTECALLBACK\000"
	.long	.La351-.Ldebug_info0
.La351:
	.uleb128	19
	.ascii	"TTHREADEXECUTECALLBACK\000"
	.byte	1
	.uleb128	20
	.ascii	"ADATA\000"
	.long	.La20-.Ldebug_info0
	.byte	0
.La300:
	.uleb128	8
	.long	.La299-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;Pointer);Register>
.La301:
	.uleb128	14
	.ascii	"TNOTIFYCALLBACK\000"
	.long	.La352-.Ldebug_info0
.La352:
	.uleb128	19
	.ascii	"TNOTIFYCALLBACK\000"
	.byte	1
	.uleb128	20
	.ascii	"SENDER\000"
	.long	.La201-.Ldebug_info0
	.uleb128	20
	.ascii	"ADATA\000"
	.long	.La20-.Ldebug_info0
	.byte	0
.La302:
	.uleb128	8
	.long	.La301-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer;TThreadReportStatus);Register>
.La303:
	.uleb128	14
	.ascii	"TTHREADEXECUTESTATUSCALLBACK\000"
	.long	.La353-.Ldebug_info0
.La353:
	.uleb128	19
	.ascii	"TTHREADEXECUTESTATUSCALLBACK\000"
	.byte	1
	.uleb128	20
	.ascii	"ADATA\000"
	.long	.La20-.Ldebug_info0
	.uleb128	20
	.ascii	"REPORTSTATUS\000"
	.long	.La347-.Ldebug_info0
	.byte	0
.La304:
	.uleb128	8
	.long	.La303-.Ldebug_info0
# Definition <procedure variable type of procedure(TThread;Pointer;const AnsiString);Register>
.La305:
	.uleb128	14
	.ascii	"TTHREADSTATUSNOTIFYCALLBACK\000"
	.long	.La354-.Ldebug_info0
.La354:
	.uleb128	19
	.ascii	"TTHREADSTATUSNOTIFYCALLBACK\000"
	.byte	1
	.uleb128	20
	.ascii	"SENDER\000"
	.long	.La219-.Ldebug_info0
	.uleb128	20
	.ascii	"ADATA\000"
	.long	.La20-.Ldebug_info0
	.uleb128	20
	.ascii	"STATUS\000"
	.long	.La78-.Ldebug_info0
	.byte	0
.La306:
	.uleb128	8
	.long	.La305-.Ldebug_info0
# Definition <record type>
.La307:
	.uleb128	14
	.ascii	"__vtbl_ptr_type\000"
	.long	.La355-.Ldebug_info0
.La355:
	.uleb128	42
	.uleb128	40
	.byte	0
.La308:
	.uleb128	8
	.long	.La307-.Ldebug_info0
# Definition TStringMessageTable
.La315:
	.uleb128	14
	.ascii	"TSTRINGMESSAGETABLE\000"
	.long	.La356-.Ldebug_info0
.La356:
	.uleb128	17
	.ascii	"TSTRINGMESSAGETABLE\000"
	.uleb128	24
	.uleb128	18
	.ascii	"COUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"MSGSTRTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La357-.Ldebug_info0
	.byte	0
.La316:
	.uleb128	8
	.long	.La315-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La318:
	.uleb128	12
	.uleb128	8
	.long	.La26-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La96-.Ldebug_info0
	.byte	0
.La319:
	.uleb128	8
	.long	.La318-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La320:
	.uleb128	12
	.uleb128	8
	.long	.La26-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La96-.Ldebug_info0
	.byte	0
.La321:
	.uleb128	8
	.long	.La320-.Ldebug_info0
# Definition TGuid.Array[0..5] Of Byte
.La322:
	.uleb128	12
	.uleb128	6
	.long	.La26-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	5
	.uleb128	1
	.long	.La96-.Ldebug_info0
	.byte	0
.La323:
	.uleb128	8
	.long	.La322-.Ldebug_info0
# Definition tinterfaceentry
.La325:
	.uleb128	14
	.ascii	"TINTERFACEENTRY\000"
	.long	.La359-.Ldebug_info0
.La359:
	.uleb128	17
	.ascii	"TINTERFACEENTRY\000"
	.uleb128	40
	.uleb128	18
	.ascii	"IID\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La360-.Ldebug_info0
	.uleb128	18
	.ascii	"VTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"IOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La275-.Ldebug_info0
	.uleb128	18
	.ascii	"IIDSTR\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La362-.Ldebug_info0
	.uleb128	18
	.ascii	"ITYPE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La364-.Ldebug_info0
	.uleb128	18
	.ascii	"__PAD_DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La24-.Ldebug_info0
	.byte	0
.La326:
	.uleb128	8
	.long	.La325-.Ldebug_info0
# Definition tinterfacetable
.La328:
	.uleb128	14
	.ascii	"TINTERFACETABLE\000"
	.long	.La366-.Ldebug_info0
.La366:
	.uleb128	17
	.ascii	"TINTERFACETABLE\000"
	.uleb128	48
	.uleb128	18
	.ascii	"ENTRYCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La275-.Ldebug_info0
	.uleb128	18
	.ascii	"ENTRIES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La367-.Ldebug_info0
	.byte	0
.La329:
	.uleb128	8
	.long	.La328-.Ldebug_info0
# Definition TThread.TThreadQueueEntry
.La335:
	.uleb128	14
	.ascii	"TTHREADQUEUEENTRY\000"
	.long	.La369-.Ldebug_info0
.La369:
	.uleb128	17
	.ascii	"TTHREADQUEUEENTRY\000"
	.uleb128	48
	.uleb128	18
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La285-.Ldebug_info0
	.uleb128	18
	.ascii	"THREAD\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La219-.Ldebug_info0
	.uleb128	18
	.ascii	"EXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La370-.Ldebug_info0
	.uleb128	18
	.ascii	"SYNCEVENT\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La373-.Ldebug_info0
	.uleb128	18
	.ascii	"NEXT\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La281-.Ldebug_info0
	.byte	0
.La336:
	.uleb128	8
	.long	.La335-.Ldebug_info0
# Definition WideChar
.La342:
	.uleb128	14
	.ascii	"WIDECHAR\000"
	.long	.La375-.Ldebug_info0
.La375:
	.uleb128	16
	.ascii	"WideChar\000"
	.byte	8
	.byte	2
.La343:
	.uleb128	8
	.long	.La342-.Ldebug_info0
# Definition <procedure variable type of procedure(const AnsiString) of object;Register>
.La347:
	.uleb128	14
	.ascii	"TTHREADREPORTSTATUS\000"
	.long	.La376-.Ldebug_info0
.La376:
	.uleb128	39
	.byte	16
	.uleb128	18
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La377-.Ldebug_info0
	.uleb128	18
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La201-.Ldebug_info0
	.byte	0
.La377:
	.uleb128	19
	.ascii	"TTHREADREPORTSTATUS\000"
	.byte	1
	.uleb128	20
	.ascii	"this\000"
	.long	.La20-.Ldebug_info0
	.uleb128	20
	.ascii	"STATUS\000"
	.long	.La78-.Ldebug_info0
	.byte	0
.La348:
	.uleb128	8
	.long	.La347-.Ldebug_info0
# Definition TStringMessageTable.Array[0..0] Of TMsgStrTable
.La357:
	.uleb128	12
	.uleb128	16
	.long	.La378-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	0
	.uleb128	16
	.long	.La96-.Ldebug_info0
	.byte	0
.La358:
	.uleb128	8
	.long	.La357-.Ldebug_info0
# Definition PGuid
.La360:
	.uleb128	14
	.ascii	"PGUID\000"
	.long	.La380-.Ldebug_info0
.La380:
	.uleb128	7
	.long	.La260-.Ldebug_info0
.La361:
	.uleb128	8
	.long	.La360-.Ldebug_info0
# Definition PShortString
.La362:
	.uleb128	14
	.ascii	"PSHORTSTRING\000"
	.long	.La381-.Ldebug_info0
.La381:
	.uleb128	7
	.long	.La240-.Ldebug_info0
.La363:
	.uleb128	8
	.long	.La362-.Ldebug_info0
# Definition tinterfaceentrytype
.La364:
	.uleb128	14
	.ascii	"TINTERFACEENTRYTYPE\000"
	.long	.La382-.Ldebug_info0
.La382:
	.uleb128	40
	.ascii	"TINTERFACEENTRYTYPE\000"
	.byte	4
	.uleb128	41
	.ascii	"ETSTANDARD\000"
	.long	0
	.uleb128	41
	.ascii	"ETVIRTUALMETHODRESULT\000"
	.long	1
	.uleb128	41
	.ascii	"ETSTATICMETHODRESULT\000"
	.long	2
	.uleb128	41
	.ascii	"ETFIELDVALUE\000"
	.long	3
	.uleb128	41
	.ascii	"ETVIRTUALMETHODCLASS\000"
	.long	4
	.uleb128	41
	.ascii	"ETSTATICMETHODCLASS\000"
	.long	5
	.uleb128	41
	.ascii	"ETFIELDVALUECLASS\000"
	.long	6
	.byte	0
.La365:
	.uleb128	8
	.long	.La364-.Ldebug_info0
# Definition tinterfacetable.Array[0..0] Of tinterfaceentry
.La367:
	.uleb128	12
	.uleb128	40
	.long	.La325-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	0
	.uleb128	40
	.long	.La96-.Ldebug_info0
	.byte	0
.La368:
	.uleb128	8
	.long	.La367-.Ldebug_info0
# Definition Exception
.La370:
	.uleb128	14
	.ascii	"EXCEPTION\000"
	.long	.La383-.Ldebug_info0
.La383:
	.uleb128	7
	.long	.La372-.Ldebug_info0
.La372:
	.uleb128	21
	.ascii	"EXCEPTION\000"
	.uleb128	24
	.uleb128	22
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La203-.Ldebug_info0
	.uleb128	33
	.ascii	"FMESSAGE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La78-.Ldebug_info0
	.uleb128	33
	.ascii	"FHELPCONTEXT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La16-.Ldebug_info0
	.uleb128	33
	.ascii	"HELPCONTEXT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La16-.Ldebug_info0
	.uleb128	33
	.ascii	"MESSAGE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La78-.Ldebug_info0
# Procdef constructor Create(<Exception>;<Pointer>;const AnsiString);
	.uleb128	23
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La370-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La370-.Ldebug_info0
# Symbol vmt
	.uleb128	20
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol MSG
	.uleb128	20
	.ascii	"MSG\000"
	.long	.La78-.Ldebug_info0
	.byte	0
# Procdef constructor CreateFmt(<Exception>;<Pointer>;const AnsiString;const Array Of Const;<const Int64>);
	.uleb128	23
	.ascii	"CREATEFMT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La370-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La370-.Ldebug_info0
# Symbol vmt
	.uleb128	20
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol MSG
	.uleb128	20
	.ascii	"MSG\000"
	.long	.La78-.Ldebug_info0
# Symbol ARGS
	.uleb128	20
	.ascii	"ARGS\000"
	.long	.La384-.Ldebug_info0
# Symbol highARGS
	.uleb128	20
	.ascii	"highARGS\000"
	.long	.La24-.Ldebug_info0
# Definition Array Of Const
.La384:
	.uleb128	43
	.long	.La386-.Ldebug_info0
	.uleb128	44
	.sleb128	0
	.uleb128	16
	.long	.La24-.Ldebug_info0
	.byte	0
.La385:
	.uleb128	8
	.long	.La384-.Ldebug_info0
	.byte	0
# Procdef constructor CreateRes(<Exception>;<Pointer>;PAnsiString);
	.uleb128	23
	.ascii	"CREATERES\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La370-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La370-.Ldebug_info0
# Symbol vmt
	.uleb128	20
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	20
	.ascii	"RESSTRING\000"
	.long	.La388-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResFmt(<Exception>;<Pointer>;PAnsiString;const Array Of Const;<const Int64>);
	.uleb128	23
	.ascii	"CREATERESFMT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La370-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La370-.Ldebug_info0
# Symbol vmt
	.uleb128	20
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	20
	.ascii	"RESSTRING\000"
	.long	.La388-.Ldebug_info0
# Symbol ARGS
	.uleb128	20
	.ascii	"ARGS\000"
	.long	.La390-.Ldebug_info0
# Symbol highARGS
	.uleb128	20
	.ascii	"highARGS\000"
	.long	.La24-.Ldebug_info0
# Definition Array Of Const
.La390:
	.uleb128	43
	.long	.La386-.Ldebug_info0
	.uleb128	44
	.sleb128	0
	.uleb128	16
	.long	.La24-.Ldebug_info0
	.byte	0
.La391:
	.uleb128	8
	.long	.La390-.Ldebug_info0
	.byte	0
# Procdef constructor CreateHelp(<Exception>;<Pointer>;const AnsiString;LongInt);
	.uleb128	23
	.ascii	"CREATEHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La370-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La370-.Ldebug_info0
# Symbol vmt
	.uleb128	20
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol MSG
	.uleb128	20
	.ascii	"MSG\000"
	.long	.La78-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	20
	.ascii	"AHELPCONTEXT\000"
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef constructor CreateFmtHelp(<Exception>;<Pointer>;const AnsiString;const Array Of Const;<const Int64>;LongInt);
	.uleb128	23
	.ascii	"CREATEFMTHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La370-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La370-.Ldebug_info0
# Symbol vmt
	.uleb128	20
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol MSG
	.uleb128	20
	.ascii	"MSG\000"
	.long	.La78-.Ldebug_info0
# Symbol ARGS
	.uleb128	20
	.ascii	"ARGS\000"
	.long	.La392-.Ldebug_info0
# Symbol highARGS
	.uleb128	20
	.ascii	"highARGS\000"
	.long	.La24-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	20
	.ascii	"AHELPCONTEXT\000"
	.long	.La16-.Ldebug_info0
# Definition Array Of Const
.La392:
	.uleb128	43
	.long	.La386-.Ldebug_info0
	.uleb128	44
	.sleb128	0
	.uleb128	16
	.long	.La24-.Ldebug_info0
	.byte	0
.La393:
	.uleb128	8
	.long	.La392-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResHelp(<Exception>;<Pointer>;PAnsiString;LongInt);
	.uleb128	23
	.ascii	"CREATERESHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La370-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La370-.Ldebug_info0
# Symbol vmt
	.uleb128	20
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	20
	.ascii	"RESSTRING\000"
	.long	.La388-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	20
	.ascii	"AHELPCONTEXT\000"
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResFmtHelp(<Exception>;<Pointer>;PAnsiString;const Array Of Const;<const Int64>;LongInt);
	.uleb128	23
	.ascii	"CREATERESFMTHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La370-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La370-.Ldebug_info0
# Symbol vmt
	.uleb128	20
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	20
	.ascii	"RESSTRING\000"
	.long	.La388-.Ldebug_info0
# Symbol ARGS
	.uleb128	20
	.ascii	"ARGS\000"
	.long	.La394-.Ldebug_info0
# Symbol highARGS
	.uleb128	20
	.ascii	"highARGS\000"
	.long	.La24-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	20
	.ascii	"AHELPCONTEXT\000"
	.long	.La16-.Ldebug_info0
# Definition Array Of Const
.La394:
	.uleb128	43
	.long	.La386-.Ldebug_info0
	.uleb128	44
	.sleb128	0
	.uleb128	16
	.long	.La24-.Ldebug_info0
	.byte	0
.La395:
	.uleb128	8
	.long	.La394-.Ldebug_info0
	.byte	0
# Procdef ToString(<Exception>;<var AnsiString>):AnsiString;
	.uleb128	31
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
	.long	.La78-.Ldebug_info0
# Symbol this
	.uleb128	24
	.ascii	"this\000"
	.byte	1
	.long	.La370-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La78-.Ldebug_info0
	.byte	0
	.byte	0
.La371:
	.uleb128	8
	.long	.La370-.Ldebug_info0
# Definition PRTLEvent
.La373:
	.uleb128	14
	.ascii	"PRTLEVENT\000"
	.long	.La396-.Ldebug_info0
.La396:
	.uleb128	15
.La374:
	.uleb128	8
	.long	.La373-.Ldebug_info0
# Definition TMsgStrTable
.La378:
	.uleb128	14
	.ascii	"TMSGSTRTABLE\000"
	.long	.La397-.Ldebug_info0
.La397:
	.uleb128	17
	.ascii	"TMSGSTRTABLE\000"
	.uleb128	16
	.uleb128	18
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La362-.Ldebug_info0
	.uleb128	18
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La379:
	.uleb128	8
	.long	.La378-.Ldebug_info0
# Definition TVarRec
.La386:
	.uleb128	14
	.ascii	"TVARREC\000"
	.long	.La398-.Ldebug_info0
.La398:
	.uleb128	17
	.ascii	"TVARREC\000"
	.uleb128	16
	.uleb128	18
	.ascii	"VTYPE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La24-.Ldebug_info0
	.uleb128	18
	.ascii	"VINTEGER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"VBOOLEAN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La34-.Ldebug_info0
	.uleb128	18
	.ascii	"VCHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La76-.Ldebug_info0
	.uleb128	18
	.ascii	"VWIDECHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La342-.Ldebug_info0
	.uleb128	18
	.ascii	"VEXTENDED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La399-.Ldebug_info0
	.uleb128	18
	.ascii	"VSTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La362-.Ldebug_info0
	.uleb128	18
	.ascii	"VPOINTER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"VPCHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La194-.Ldebug_info0
	.uleb128	18
	.ascii	"VOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La201-.Ldebug_info0
	.uleb128	18
	.ascii	"VCLASS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La234-.Ldebug_info0
	.uleb128	18
	.ascii	"VPWIDECHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La401-.Ldebug_info0
	.uleb128	18
	.ascii	"VANSISTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"VCURRENCY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La403-.Ldebug_info0
	.uleb128	18
	.ascii	"VVARIANT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La405-.Ldebug_info0
	.uleb128	18
	.ascii	"VINTERFACE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"VWIDESTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"VINT64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La407-.Ldebug_info0
	.uleb128	18
	.ascii	"VUNICODESTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"VQWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La409-.Ldebug_info0
	.byte	0
.La387:
	.uleb128	8
	.long	.La386-.Ldebug_info0
# Definition PAnsiString
.La388:
	.uleb128	14
	.ascii	"PANSISTRING\000"
	.long	.La411-.Ldebug_info0
.La411:
	.uleb128	7
	.long	.La78-.Ldebug_info0
.La389:
	.uleb128	8
	.long	.La388-.Ldebug_info0
# Definition PExtended
.La399:
	.uleb128	14
	.ascii	"PEXTENDED\000"
	.long	.La412-.Ldebug_info0
.La412:
	.uleb128	7
	.long	.La14-.Ldebug_info0
.La400:
	.uleb128	8
	.long	.La399-.Ldebug_info0
# Definition PWideChar
.La401:
	.uleb128	14
	.ascii	"PWIDECHAR\000"
	.long	.La413-.Ldebug_info0
.La413:
	.uleb128	7
	.long	.La342-.Ldebug_info0
.La402:
	.uleb128	8
	.long	.La401-.Ldebug_info0
# Definition PCurrency
.La403:
	.uleb128	14
	.ascii	"PCURRENCY\000"
	.long	.La414-.Ldebug_info0
.La414:
	.uleb128	7
	.long	.La415-.Ldebug_info0
.La404:
	.uleb128	8
	.long	.La403-.Ldebug_info0
# Definition PVariant
.La405:
	.uleb128	14
	.ascii	"PVARIANT\000"
	.long	.La417-.Ldebug_info0
.La417:
	.uleb128	7
	.long	.La418-.Ldebug_info0
.La406:
	.uleb128	8
	.long	.La405-.Ldebug_info0
# Definition PInt64
.La407:
	.uleb128	14
	.ascii	"PINT64\000"
	.long	.La420-.Ldebug_info0
.La420:
	.uleb128	7
	.long	.La24-.Ldebug_info0
.La408:
	.uleb128	8
	.long	.La407-.Ldebug_info0
# Definition PQWord
.La409:
	.uleb128	14
	.ascii	"PQWORD\000"
	.long	.La421-.Ldebug_info0
.La421:
	.uleb128	7
	.long	.La275-.Ldebug_info0
.La410:
	.uleb128	8
	.long	.La409-.Ldebug_info0
# Definition Currency
.La415:
	.uleb128	14
	.ascii	"CURRENCY\000"
	.long	.La422-.Ldebug_info0
.La422:
	.uleb128	16
	.ascii	"Currency\000"
	.byte	5
	.byte	8
.La416:
	.uleb128	8
	.long	.La415-.Ldebug_info0
# Definition Variant
.La418:
	.uleb128	14
	.ascii	"VARIANT\000"
	.long	.La423-.Ldebug_info0
.La423:
	.uleb128	17
	.ascii	"Variant\000"
	.uleb128	24
	.uleb128	18
	.ascii	"VTYPE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La18-.Ldebug_info0
	.uleb128	18
	.ascii	"RES1\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La18-.Ldebug_info0
	.uleb128	18
	.ascii	"RES2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La18-.Ldebug_info0
	.uleb128	18
	.ascii	"RES3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La18-.Ldebug_info0
	.uleb128	18
	.ascii	"VSMALLINT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La94-.Ldebug_info0
	.uleb128	18
	.ascii	"VINTEGER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"VSINGLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La189-.Ldebug_info0
	.uleb128	18
	.ascii	"VDOUBLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La14-.Ldebug_info0
	.uleb128	18
	.ascii	"VDATE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La424-.Ldebug_info0
	.uleb128	18
	.ascii	"VCURRENCY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La415-.Ldebug_info0
	.uleb128	18
	.ascii	"VOLESTR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La401-.Ldebug_info0
	.uleb128	18
	.ascii	"VDISPATCH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"VERROR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La228-.Ldebug_info0
	.uleb128	18
	.ascii	"VBOOLEAN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La426-.Ldebug_info0
	.uleb128	18
	.ascii	"VUNKNOWN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"VSHORTINT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La96-.Ldebug_info0
	.uleb128	18
	.ascii	"VBYTE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La26-.Ldebug_info0
	.uleb128	18
	.ascii	"VWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La18-.Ldebug_info0
	.uleb128	18
	.ascii	"VLONGWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La82-.Ldebug_info0
	.uleb128	18
	.ascii	"VINT64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La24-.Ldebug_info0
	.uleb128	18
	.ascii	"VQWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La275-.Ldebug_info0
	.uleb128	18
	.ascii	"VWORD64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La275-.Ldebug_info0
	.uleb128	18
	.ascii	"VSTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"VANY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"VARRAY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La428-.Ldebug_info0
	.uleb128	18
	.ascii	"VPOINTER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"VRECORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"PRECINFO\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"VLONGS\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La430-.Ldebug_info0
	.uleb128	18
	.ascii	"VWORDS\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La432-.Ldebug_info0
	.uleb128	18
	.ascii	"VBYTES\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La434-.Ldebug_info0
	.byte	0
.La419:
	.uleb128	8
	.long	.La418-.Ldebug_info0
# Definition TDateTime
.La424:
	.uleb128	14
	.ascii	"TDATETIME\000"
	.long	.La436-.Ldebug_info0
.La436:
	.uleb128	16
	.ascii	"TDATETIME\000"
	.byte	4
	.byte	8
.La425:
	.uleb128	8
	.long	.La424-.Ldebug_info0
# Definition WordBool
.La426:
	.uleb128	14
	.ascii	"WORDBOOL\000"
	.long	.La437-.Ldebug_info0
.La437:
	.uleb128	16
	.ascii	"WordBool\000"
	.byte	2
	.byte	2
.La427:
	.uleb128	8
	.long	.La426-.Ldebug_info0
# Definition pvararray
.La428:
	.uleb128	14
	.ascii	"PVARARRAY\000"
	.long	.La438-.Ldebug_info0
.La438:
	.uleb128	7
	.long	.La439-.Ldebug_info0
.La429:
	.uleb128	8
	.long	.La428-.Ldebug_info0
# Definition tvardata.Array[0..2] Of LongInt
.La430:
	.uleb128	12
	.uleb128	12
	.long	.La16-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	2
	.uleb128	4
	.long	.La96-.Ldebug_info0
	.byte	0
.La431:
	.uleb128	8
	.long	.La430-.Ldebug_info0
# Definition tvardata.Array[0..6] Of Word
.La432:
	.uleb128	12
	.uleb128	14
	.long	.La18-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	6
	.uleb128	2
	.long	.La96-.Ldebug_info0
	.byte	0
.La433:
	.uleb128	8
	.long	.La432-.Ldebug_info0
# Definition tvardata.Array[0..13] Of Byte
.La434:
	.uleb128	12
	.uleb128	14
	.long	.La26-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	13
	.uleb128	1
	.long	.La96-.Ldebug_info0
	.byte	0
.La435:
	.uleb128	8
	.long	.La434-.Ldebug_info0
# Definition tvararray
.La439:
	.uleb128	14
	.ascii	"TVARARRAY\000"
	.long	.La441-.Ldebug_info0
.La441:
	.uleb128	17
	.ascii	"TVARARRAY\000"
	.uleb128	32
	.uleb128	18
	.ascii	"DIMCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La18-.Ldebug_info0
	.uleb128	18
	.ascii	"FLAGS\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La18-.Ldebug_info0
	.uleb128	18
	.ascii	"ELEMENTSIZE\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"LOCKCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"DATA\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"BOUNDS\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La442-.Ldebug_info0
	.byte	0
.La440:
	.uleb128	8
	.long	.La439-.Ldebug_info0
# Definition tvararrayboundarray
.La442:
	.uleb128	14
	.ascii	"TVARARRAYBOUNDARRAY\000"
	.long	.La444-.Ldebug_info0
.La444:
	.uleb128	26
	.ascii	"TVARARRAYBOUNDARRAY\000"
	.uleb128	8
	.long	.La445-.Ldebug_info0
	.uleb128	13
	.sleb128	0
	.sleb128	0
	.uleb128	8
	.long	.La96-.Ldebug_info0
	.byte	0
.La443:
	.uleb128	8
	.long	.La442-.Ldebug_info0
# Definition tvararraybound
.La445:
	.uleb128	14
	.ascii	"TVARARRAYBOUND\000"
	.long	.La447-.Ldebug_info0
.La447:
	.uleb128	17
	.ascii	"TVARARRAYBOUND\000"
	.uleb128	8
	.uleb128	18
	.ascii	"ELEMENTCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La16-.Ldebug_info0
	.uleb128	18
	.ascii	"LOWBOUND\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La16-.Ldebug_info0
	.byte	0
.La446:
	.uleb128	8
	.long	.La445-.Ldebug_info0
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
	.uleb128	63
	.uleb128	12
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
	.uleb128	15
	.byte	0
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
# Abbrev 11
	.uleb128	11
	.uleb128	46
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	39
	.uleb128	12
	.uleb128	63
	.uleb128	12
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
# Abbrev 12
	.uleb128	12
	.uleb128	1
	.byte	1
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
	.uleb128	22
	.byte	0
	.uleb128	3
	.uleb128	8
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
# Abbrev 17
	.uleb128	17
	.uleb128	19
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 18
	.uleb128	18
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
# Abbrev 19
	.uleb128	19
	.uleb128	21
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	39
	.uleb128	12
	.byte	0
	.byte	0
# Abbrev 20
	.uleb128	20
	.uleb128	5
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 21
	.uleb128	21
	.uleb128	2
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 22
	.uleb128	22
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
# Abbrev 26
	.uleb128	26
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
	.uleb128	50
	.uleb128	11
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
# Abbrev 28
	.uleb128	28
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
# Abbrev 29
	.uleb128	29
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
# Abbrev 30
	.uleb128	30
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
# Abbrev 31
	.uleb128	31
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
# Abbrev 32
	.uleb128	32
	.uleb128	52
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 33
	.uleb128	33
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
# Abbrev 34
	.uleb128	34
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
# Abbrev 35
	.uleb128	35
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
# Abbrev 36
	.uleb128	36
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
# Abbrev 37
	.uleb128	37
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
# Abbrev 38
	.uleb128	38
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
# Abbrev 39
	.uleb128	39
	.uleb128	19
	.byte	1
	.uleb128	11
	.uleb128	11
	.byte	0
	.byte	0
# Abbrev 40
	.uleb128	40
	.uleb128	4
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.byte	0
	.byte	0
# Abbrev 41
	.uleb128	41
	.uleb128	40
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	6
	.byte	0
	.byte	0
# Abbrev 42
	.uleb128	42
	.uleb128	19
	.byte	1
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 43
	.uleb128	43
	.uleb128	1
	.byte	1
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 44
	.uleb128	44
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
	.ascii	"retro.pas\000"
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Lehdebug_line0:
# === header end ===
# function: RETRO$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO
# [226:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	237
# [226:1]
	.byte	2
	.uleb128	.Ll2-.Ll1
	.byte	1
# [229:1]
	.byte	2
	.uleb128	.Ll3-.Ll2
	.byte	15
# [227:19]
	.byte	2
	.uleb128	.Ll4-.Ll3
	.byte	5
	.uleb128	19
	.byte	3
	.sleb128	-2
	.byte	1
# [228:3]
	.byte	2
	.uleb128	.Ll5-.Ll4
	.byte	5
	.uleb128	3
	.byte	13
# [229:1]
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
# function: RETRO$_$TRETRO_$__$$_EXECUTE
# [243:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll8
	.byte	5
	.uleb128	1
	.byte	254
# [244:1]
	.byte	2
	.uleb128	.Ll9-.Ll8
	.byte	13
# [245:1]
	.byte	2
	.uleb128	.Ll10-.Ll9
	.byte	13
# [247:6]
	.byte	2
	.uleb128	.Ll11-.Ll10
	.byte	5
	.uleb128	6
	.byte	14
# [250:9]
	.byte	2
	.uleb128	.Ll12-.Ll11
	.byte	5
	.uleb128	9
	.byte	15
# [251:3]
	.byte	2
	.uleb128	.Ll13-.Ll12
	.byte	5
	.uleb128	3
	.byte	13
# [252:3]
	.byte	2
	.uleb128	.Ll14-.Ll13
	.byte	13
# [253:6]
	.byte	2
	.uleb128	.Ll15-.Ll14
	.byte	5
	.uleb128	6
	.byte	13
# [254:22]
	.byte	2
	.uleb128	.Ll16-.Ll15
	.byte	5
	.uleb128	22
	.byte	13
# [255:8]
	.byte	2
	.uleb128	.Ll17-.Ll16
	.byte	5
	.uleb128	8
	.byte	13
# [256:8]
	.byte	2
	.uleb128	.Ll18-.Ll17
	.byte	13
# [257:3]
	.byte	2
	.uleb128	.Ll19-.Ll18
	.byte	5
	.uleb128	3
	.byte	13
# [258:3]
	.byte	2
	.uleb128	.Ll20-.Ll19
	.byte	13
# [259:16]
	.byte	2
	.uleb128	.Ll21-.Ll20
	.byte	5
	.uleb128	16
	.byte	13
# [260:3]
	.byte	2
	.uleb128	.Ll22-.Ll21
	.byte	5
	.uleb128	3
	.byte	13
# [265:6]
	.byte	2
	.uleb128	.Ll23-.Ll22
	.byte	5
	.uleb128	6
	.byte	17
# [268:5]
	.byte	2
	.uleb128	.Ll24-.Ll23
	.byte	5
	.uleb128	5
	.byte	15
# [269:5]
	.byte	2
	.uleb128	.Ll25-.Ll24
	.byte	13
# [270:20]
	.byte	2
	.uleb128	.Ll26-.Ll25
	.byte	5
	.uleb128	20
	.byte	13
# [271:8]
	.byte	2
	.uleb128	.Ll27-.Ll26
	.byte	5
	.uleb128	8
	.byte	13
# [272:21]
	.byte	2
	.uleb128	.Ll28-.Ll27
	.byte	5
	.uleb128	21
	.byte	13
# [273:21]
	.byte	2
	.uleb128	.Ll29-.Ll28
	.byte	13
# [274:7]
	.byte	2
	.uleb128	.Ll30-.Ll29
	.byte	5
	.uleb128	7
	.byte	13
# [278:21]
	.byte	2
	.uleb128	.Ll31-.Ll30
	.byte	5
	.uleb128	21
	.byte	16
# [279:21]
	.byte	2
	.uleb128	.Ll32-.Ll31
	.byte	13
# [280:7]
	.byte	2
	.uleb128	.Ll33-.Ll32
	.byte	5
	.uleb128	7
	.byte	13
# [282:9]
	.byte	2
	.uleb128	.Ll34-.Ll33
	.byte	5
	.uleb128	9
	.byte	14
# [286:3]
	.byte	2
	.uleb128	.Ll35-.Ll34
	.byte	5
	.uleb128	3
	.byte	16
# [287:3]
	.byte	2
	.uleb128	.Ll36-.Ll35
	.byte	13
# [288:3]
	.byte	2
	.uleb128	.Ll37-.Ll36
	.byte	13
# [289:3]
	.byte	2
	.uleb128	.Ll38-.Ll37
	.byte	13
# [290:3]
	.byte	2
	.uleb128	.Ll39-.Ll38
	.byte	13
# [294:3]
	.byte	2
	.uleb128	.Ll40-.Ll39
	.byte	16
# [295:3]
	.byte	2
	.uleb128	.Ll41-.Ll40
	.byte	13
# [296:6]
	.byte	2
	.uleb128	.Ll42-.Ll41
	.byte	5
	.uleb128	6
	.byte	13
# [297:22]
	.byte	2
	.uleb128	.Ll43-.Ll42
	.byte	5
	.uleb128	22
	.byte	13
# [298:8]
	.byte	2
	.uleb128	.Ll44-.Ll43
	.byte	5
	.uleb128	8
	.byte	13
# [299:8]
	.byte	2
	.uleb128	.Ll45-.Ll44
	.byte	13
# [300:3]
	.byte	2
	.uleb128	.Ll46-.Ll45
	.byte	5
	.uleb128	3
	.byte	13
# [301:3]
	.byte	2
	.uleb128	.Ll47-.Ll46
	.byte	13
# [302:16]
	.byte	2
	.uleb128	.Ll48-.Ll47
	.byte	5
	.uleb128	16
	.byte	13
# [303:3]
	.byte	2
	.uleb128	.Ll49-.Ll48
	.byte	5
	.uleb128	3
	.byte	13
# [305:7]
	.byte	2
	.uleb128	.Ll50-.Ll49
	.byte	5
	.uleb128	7
	.byte	14
# [308:5]
	.byte	2
	.uleb128	.Ll51-.Ll50
	.byte	5
	.uleb128	5
	.byte	15
# [309:5]
	.byte	2
	.uleb128	.Ll52-.Ll51
	.byte	13
# [310:20]
	.byte	2
	.uleb128	.Ll53-.Ll52
	.byte	5
	.uleb128	20
	.byte	13
# [311:8]
	.byte	2
	.uleb128	.Ll54-.Ll53
	.byte	5
	.uleb128	8
	.byte	13
# [312:21]
	.byte	2
	.uleb128	.Ll55-.Ll54
	.byte	5
	.uleb128	21
	.byte	13
# [313:21]
	.byte	2
	.uleb128	.Ll56-.Ll55
	.byte	13
# [314:7]
	.byte	2
	.uleb128	.Ll57-.Ll56
	.byte	5
	.uleb128	7
	.byte	13
# [318:21]
	.byte	2
	.uleb128	.Ll58-.Ll57
	.byte	5
	.uleb128	21
	.byte	16
# [319:21]
	.byte	2
	.uleb128	.Ll59-.Ll58
	.byte	13
# [320:7]
	.byte	2
	.uleb128	.Ll60-.Ll59
	.byte	5
	.uleb128	7
	.byte	13
# [322:9]
	.byte	2
	.uleb128	.Ll61-.Ll60
	.byte	5
	.uleb128	9
	.byte	14
# [326:3]
	.byte	2
	.uleb128	.Ll62-.Ll61
	.byte	5
	.uleb128	3
	.byte	16
# [327:3]
	.byte	2
	.uleb128	.Ll63-.Ll62
	.byte	13
# [328:3]
	.byte	2
	.uleb128	.Ll64-.Ll63
	.byte	13
# [329:3]
	.byte	2
	.uleb128	.Ll65-.Ll64
	.byte	13
# [330:3]
	.byte	2
	.uleb128	.Ll66-.Ll65
	.byte	13
# [333:7]
	.byte	2
	.uleb128	.Ll67-.Ll66
	.byte	5
	.uleb128	7
	.byte	15
# [334:1]
	.byte	2
	.uleb128	.Ll68-.Ll67
	.byte	5
	.uleb128	1
	.byte	13
# [335:1]
	.byte	2
	.uleb128	.Ll69-.Ll68
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll70
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_INITMACHINE$LONGINT
# [350:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll71
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	349
	.byte	1
# [352:49]
	.byte	2
	.uleb128	.Ll72-.Ll71
	.byte	5
	.uleb128	49
	.byte	14
# [353:1]
	.byte	2
	.uleb128	.Ll73-.Ll72
	.byte	5
	.uleb128	1
	.byte	13
# [354:12]
	.byte	2
	.uleb128	.Ll74-.Ll73
	.byte	5
	.uleb128	12
	.byte	13
# [355:10]
	.byte	2
	.uleb128	.Ll75-.Ll74
	.byte	5
	.uleb128	10
	.byte	13
# [356:20]
	.byte	2
	.uleb128	.Ll76-.Ll75
	.byte	5
	.uleb128	20
	.byte	13
# [358:20]
	.byte	2
	.uleb128	.Ll77-.Ll76
	.byte	14
# [359:20]
	.byte	2
	.uleb128	.Ll78-.Ll77
	.byte	13
# [360:1]
	.byte	2
	.uleb128	.Ll79-.Ll78
	.byte	5
	.uleb128	1
	.byte	13
# [361:1]
	.byte	2
	.uleb128	.Ll80-.Ll79
	.byte	13
# [362:1]
	.byte	2
	.uleb128	.Ll81-.Ll80
	.byte	13
# [363:1]
	.byte	2
	.uleb128	.Ll82-.Ll81
	.byte	13
# [364:1]
	.byte	2
	.uleb128	.Ll83-.Ll82
	.byte	13
# [365:5]
	.byte	2
	.uleb128	.Ll84-.Ll83
	.byte	5
	.uleb128	5
	.byte	13
# [366:5]
	.byte	2
	.uleb128	.Ll85-.Ll84
	.byte	13
# [368:30]
	.byte	2
	.uleb128	.Ll86-.Ll85
	.byte	5
	.uleb128	30
	.byte	14
# [369:19]
	.byte	2
	.uleb128	.Ll87-.Ll86
	.byte	5
	.uleb128	19
	.byte	13
# [370:14]
	.byte	2
	.uleb128	.Ll88-.Ll87
	.byte	5
	.uleb128	14
	.byte	13
# [372:40]
	.byte	2
	.uleb128	.Ll89-.Ll88
	.byte	5
	.uleb128	40
	.byte	14
# [373:13]
	.byte	2
	.uleb128	.Ll90-.Ll89
	.byte	5
	.uleb128	13
	.byte	13
# [374:14]
	.byte	2
	.uleb128	.Ll91-.Ll90
	.byte	5
	.uleb128	14
	.byte	13
# [376:27]
	.byte	2
	.uleb128	.Ll92-.Ll91
	.byte	5
	.uleb128	27
	.byte	14
# [377:1]
	.byte	2
	.uleb128	.Ll93-.Ll92
	.byte	5
	.uleb128	1
	.byte	13
# [379:15]
	.byte	2
	.uleb128	.Ll94-.Ll93
	.byte	5
	.uleb128	15
	.byte	14
# [380:6]
	.byte	2
	.uleb128	.Ll95-.Ll94
	.byte	5
	.uleb128	6
	.byte	13
# [381:8]
	.byte	2
	.uleb128	.Ll96-.Ll95
	.byte	5
	.uleb128	8
	.byte	13
# [382:8]
	.byte	2
	.uleb128	.Ll97-.Ll96
	.byte	13
# [377:1]
	.byte	2
	.uleb128	.Ll98-.Ll97
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-5
	.byte	1
# [384:14]
	.byte	2
	.uleb128	.Ll99-.Ll98
	.byte	5
	.uleb128	14
	.byte	19
# [388:1]
	.byte	2
	.uleb128	.Ll100-.Ll99
	.byte	5
	.uleb128	1
	.byte	16
# [390:50]
	.byte	2
	.uleb128	.Ll101-.Ll100
	.byte	5
	.uleb128	50
	.byte	14
# [391:53]
	.byte	2
	.uleb128	.Ll102-.Ll101
	.byte	5
	.uleb128	53
	.byte	13
# [392:8]
	.byte	2
	.uleb128	.Ll103-.Ll102
	.byte	5
	.uleb128	8
	.byte	13
# [393:8]
	.byte	2
	.uleb128	.Ll104-.Ll103
	.byte	13
# [394:16]
	.byte	2
	.uleb128	.Ll105-.Ll104
	.byte	5
	.uleb128	16
	.byte	13
# [395:15]
	.byte	2
	.uleb128	.Ll106-.Ll105
	.byte	5
	.uleb128	15
	.byte	13
# [396:1]
	.byte	2
	.uleb128	.Ll107-.Ll106
	.byte	5
	.uleb128	1
	.byte	13
# [398:1]
	.byte	2
	.uleb128	.Ll108-.Ll107
	.byte	14
# [400:1]
	.byte	2
	.uleb128	.Ll109-.Ll108
	.byte	14
# [401:1]
	.byte	2
	.uleb128	.Ll110-.Ll109
	.byte	13
# [403:9]
	.byte	2
	.uleb128	.Ll111-.Ll110
	.byte	5
	.uleb128	9
	.byte	14
# [404:1]
	.byte	2
	.uleb128	.Ll112-.Ll111
	.byte	5
	.uleb128	1
	.byte	13
# [406:1]
	.byte	2
	.uleb128	.Ll113-.Ll112
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll114
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_STOPMACHINE
# [418:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll115
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	417
	.byte	1
# [422:1]
	.byte	2
	.uleb128	.Ll116-.Ll115
	.byte	16
# [423:1]
	.byte	2
	.uleb128	.Ll117-.Ll116
	.byte	13
# [424:1]
	.byte	2
	.uleb128	.Ll118-.Ll117
	.byte	13
# [425:21]
	.byte	2
	.uleb128	.Ll119-.Ll118
	.byte	5
	.uleb128	21
	.byte	13
# [426:1]
	.byte	2
	.uleb128	.Ll120-.Ll119
	.byte	5
	.uleb128	1
	.byte	13
# [427:1]
	.byte	2
	.uleb128	.Ll121-.Ll120
	.byte	13
# [428:1]
	.byte	2
	.uleb128	.Ll122-.Ll121
	.byte	13
# [429:1]
	.byte	2
	.uleb128	.Ll123-.Ll122
	.byte	13
# [433:1]
	.byte	2
	.uleb128	.Ll124-.Ll123
	.byte	16
# [434:1]
	.byte	2
	.uleb128	.Ll125-.Ll124
	.byte	13
# [436:1]
	.byte	2
	.uleb128	.Ll126-.Ll125
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll127
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_POKE$LONGINT$BYTE
# [446:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll128
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	445
	.byte	1
# [447:6]
	.byte	2
	.uleb128	.Ll129-.Ll128
	.byte	5
	.uleb128	6
	.byte	13
# [448:1]
	.byte	2
	.uleb128	.Ll130-.Ll129
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll131
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_DPOKE$LONGINT$WORD
# [452:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll132
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	451
	.byte	1
# [453:6]
	.byte	2
	.uleb128	.Ll133-.Ll132
	.byte	5
	.uleb128	6
	.byte	13
# [454:1]
	.byte	2
	.uleb128	.Ll134-.Ll133
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll135
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_LPOKE$LONGINT$LONGWORD
# [459:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll136
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	458
	.byte	1
# [460:6]
	.byte	2
	.uleb128	.Ll137-.Ll136
	.byte	5
	.uleb128	6
	.byte	13
# [461:1]
	.byte	2
	.uleb128	.Ll138-.Ll137
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll139
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SLPOKE$LONGINT$LONGINT
# [465:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll140
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	464
	.byte	1
# [466:6]
	.byte	2
	.uleb128	.Ll141-.Ll140
	.byte	5
	.uleb128	6
	.byte	13
# [467:1]
	.byte	2
	.uleb128	.Ll142-.Ll141
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll143
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_PEEK$LONGINT$$BYTE
# [472:12]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll144
	.byte	5
	.uleb128	12
	.byte	3
	.sleb128	471
	.byte	1
# [473:1]
	.byte	2
	.uleb128	.Ll145-.Ll144
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll146
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_DPEEK$LONGINT$$WORD
# [478:29]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll147
	.byte	5
	.uleb128	29
	.byte	3
	.sleb128	477
	.byte	1
# [479:1]
	.byte	2
	.uleb128	.Ll148-.Ll147
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll149
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_LPEEK$LONGINT$$LONGWORD
# [484:13]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll150
	.byte	5
	.uleb128	13
	.byte	3
	.sleb128	483
	.byte	1
# [485:1]
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
# function: RETRO_$$_SLPEEK$LONGINT$$LONGINT
# [490:14]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll153
	.byte	5
	.uleb128	14
	.byte	3
	.sleb128	489
	.byte	1
# [491:1]
	.byte	2
	.uleb128	.Ll154-.Ll153
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll155
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_GETTIME$$INT64
# [504:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll156
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	503
	.byte	1
# [505:1]
	.byte	2
	.uleb128	.Ll157-.Ll156
	.byte	13
# [506:1]
	.byte	2
	.uleb128	.Ll158-.Ll157
	.byte	13
# [507:23]
	.byte	2
	.uleb128	.Ll159-.Ll158
	.byte	5
	.uleb128	23
	.byte	13
# [508:1]
	.byte	2
	.uleb128	.Ll160-.Ll159
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll161
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_READKEYBUFFER$$LONGWORD
# [513:6]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll162
	.byte	5
	.uleb128	6
	.byte	3
	.sleb128	512
	.byte	1
# [515:20]
	.byte	2
	.uleb128	.Ll163-.Ll162
	.byte	5
	.uleb128	20
	.byte	14
# [516:3]
	.byte	2
	.uleb128	.Ll164-.Ll163
	.byte	5
	.uleb128	3
	.byte	13
# [517:3]
	.byte	2
	.uleb128	.Ll165-.Ll164
	.byte	13
# [516:3]
	.byte	2
	.uleb128	.Ll166-.Ll165
	.byte	3
	.sleb128	-1
	.byte	1
# [518:6]
	.byte	2
	.uleb128	.Ll167-.Ll166
	.byte	5
	.uleb128	6
	.byte	14
# [519:1]
	.byte	2
	.uleb128	.Ll168-.Ll167
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll169
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_WRITEKEYBUFFER$LONGINT
# [523:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll170
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	522
	.byte	1
# [524:8]
	.byte	2
	.uleb128	.Ll171-.Ll170
	.byte	5
	.uleb128	8
	.byte	13
# [526:12]
	.byte	2
	.uleb128	.Ll172-.Ll171
	.byte	5
	.uleb128	12
	.byte	14
# [527:3]
	.byte	2
	.uleb128	.Ll173-.Ll172
	.byte	5
	.uleb128	3
	.byte	13
# [529:1]
	.byte	2
	.uleb128	.Ll174-.Ll173
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll175
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SDLEVENTS
# [550:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll176
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	549
	.byte	1
# [552:27]
	.byte	2
	.uleb128	.Ll177-.Ll176
	.byte	5
	.uleb128	27
	.byte	14
# [553:6]
	.byte	2
	.uleb128	.Ll178-.Ll177
	.byte	5
	.uleb128	6
	.byte	13
# [555:6]
	.byte	2
	.uleb128	.Ll179-.Ll178
	.byte	14
# [557:5]
	.byte	2
	.uleb128	.Ll180-.Ll179
	.byte	5
	.uleb128	5
	.byte	14
# [558:5]
	.byte	2
	.uleb128	.Ll181-.Ll180
	.byte	13
# [559:9]
	.byte	2
	.uleb128	.Ll182-.Ll181
	.byte	5
	.uleb128	9
	.byte	13
# [560:9]
	.byte	2
	.uleb128	.Ll183-.Ll182
	.byte	13
# [561:9]
	.byte	2
	.uleb128	.Ll184-.Ll183
	.byte	13
# [562:9]
	.byte	2
	.uleb128	.Ll185-.Ll184
	.byte	13
# [563:10]
	.byte	2
	.uleb128	.Ll186-.Ll185
	.byte	5
	.uleb128	10
	.byte	13
# [564:10]
	.byte	2
	.uleb128	.Ll187-.Ll186
	.byte	13
# [567:11]
	.byte	2
	.uleb128	.Ll188-.Ll187
	.byte	5
	.uleb128	11
	.byte	15
# [569:26]
	.byte	2
	.uleb128	.Ll189-.Ll188
	.byte	5
	.uleb128	26
	.byte	14
# [571:12]
	.byte	2
	.uleb128	.Ll190-.Ll189
	.byte	5
	.uleb128	12
	.byte	14
# [572:12]
	.byte	2
	.uleb128	.Ll191-.Ll190
	.byte	13
# [575:11]
	.byte	2
	.uleb128	.Ll192-.Ll191
	.byte	5
	.uleb128	11
	.byte	15
# [577:10]
	.byte	2
	.uleb128	.Ll193-.Ll192
	.byte	5
	.uleb128	10
	.byte	14
# [578:5]
	.byte	2
	.uleb128	.Ll194-.Ll193
	.byte	5
	.uleb128	5
	.byte	13
# [579:10]
	.byte	2
	.uleb128	.Ll195-.Ll194
	.byte	5
	.uleb128	10
	.byte	13
# [580:26]
	.byte	2
	.uleb128	.Ll196-.Ll195
	.byte	5
	.uleb128	26
	.byte	13
# [581:21]
	.byte	2
	.uleb128	.Ll197-.Ll196
	.byte	5
	.uleb128	21
	.byte	13
# [583:11]
	.byte	2
	.uleb128	.Ll198-.Ll197
	.byte	5
	.uleb128	11
	.byte	14
# [585:10]
	.byte	2
	.uleb128	.Ll199-.Ll198
	.byte	5
	.uleb128	10
	.byte	14
# [586:5]
	.byte	2
	.uleb128	.Ll200-.Ll199
	.byte	5
	.uleb128	5
	.byte	13
# [587:10]
	.byte	2
	.uleb128	.Ll201-.Ll200
	.byte	5
	.uleb128	10
	.byte	13
# [588:30]
	.byte	2
	.uleb128	.Ll202-.Ll201
	.byte	5
	.uleb128	30
	.byte	13
# [590:21]
	.byte	2
	.uleb128	.Ll203-.Ll202
	.byte	5
	.uleb128	21
	.byte	14
# [592:11]
	.byte	2
	.uleb128	.Ll204-.Ll203
	.byte	5
	.uleb128	11
	.byte	14
# [593:1]
	.byte	2
	.uleb128	.Ll205-.Ll204
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll206
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_BLIT$crc5A667533
# [610:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll207
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	609
	.byte	1
# [611:9]
	.byte	2
	.uleb128	.Ll208-.Ll207
	.byte	5
	.uleb128	9
	.byte	13
# [613:13]
	.byte	2
	.uleb128	.Ll209-.Ll208
	.byte	5
	.uleb128	13
	.byte	14
# [614:11]
	.byte	2
	.uleb128	.Ll210-.Ll209
	.byte	5
	.uleb128	11
	.byte	13
# [615:20]
	.byte	2
	.uleb128	.Ll211-.Ll210
	.byte	5
	.uleb128	20
	.byte	13
# [617:18]
	.byte	2
	.uleb128	.Ll212-.Ll211
	.byte	5
	.uleb128	18
	.byte	14
# [618:19]
	.byte	2
	.uleb128	.Ll213-.Ll212
	.byte	5
	.uleb128	19
	.byte	13
# [619:23]
	.byte	2
	.uleb128	.Ll214-.Ll213
	.byte	5
	.uleb128	23
	.byte	13
# [620:12]
	.byte	2
	.uleb128	.Ll215-.Ll214
	.byte	5
	.uleb128	12
	.byte	13
# [619:9]
	.byte	2
	.uleb128	.Ll216-.Ll215
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	-1
	.byte	1
# [615:7]
	.byte	2
	.uleb128	.Ll217-.Ll216
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-4
	.byte	1
# [623:15]
	.byte	2
	.uleb128	.Ll218-.Ll217
	.byte	5
	.uleb128	15
	.byte	20
# [610:1]
	.byte	2
	.uleb128	.Ll219-.Ll218
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-13
	.byte	1
# [623:9]
	.byte	2
	.uleb128	.Ll220-.Ll219
	.byte	5
	.uleb128	9
	.byte	25
# [625:9]
	.byte	2
	.uleb128	.Ll221-.Ll220
	.byte	14
# [626:8]
	.byte	2
	.uleb128	.Ll222-.Ll221
	.byte	5
	.uleb128	8
	.byte	13
# [627:20]
	.byte	2
	.uleb128	.Ll223-.Ll222
	.byte	5
	.uleb128	20
	.byte	13
# [629:18]
	.byte	2
	.uleb128	.Ll224-.Ll223
	.byte	5
	.uleb128	18
	.byte	14
# [630:19]
	.byte	2
	.uleb128	.Ll225-.Ll224
	.byte	5
	.uleb128	19
	.byte	13
# [631:23]
	.byte	2
	.uleb128	.Ll226-.Ll225
	.byte	5
	.uleb128	23
	.byte	13
# [632:12]
	.byte	2
	.uleb128	.Ll227-.Ll226
	.byte	5
	.uleb128	12
	.byte	13
# [631:9]
	.byte	2
	.uleb128	.Ll228-.Ll227
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	-1
	.byte	1
# [627:7]
	.byte	2
	.uleb128	.Ll229-.Ll228
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-4
	.byte	1
# [637:9]
	.byte	2
	.uleb128	.Ll230-.Ll229
	.byte	5
	.uleb128	9
	.byte	22
# [638:8]
	.byte	2
	.uleb128	.Ll231-.Ll230
	.byte	5
	.uleb128	8
	.byte	13
# [639:20]
	.byte	2
	.uleb128	.Ll232-.Ll231
	.byte	5
	.uleb128	20
	.byte	13
# [641:18]
	.byte	2
	.uleb128	.Ll233-.Ll232
	.byte	5
	.uleb128	18
	.byte	14
# [642:19]
	.byte	2
	.uleb128	.Ll234-.Ll233
	.byte	5
	.uleb128	19
	.byte	13
# [643:23]
	.byte	2
	.uleb128	.Ll235-.Ll234
	.byte	5
	.uleb128	23
	.byte	13
# [644:12]
	.byte	2
	.uleb128	.Ll236-.Ll235
	.byte	5
	.uleb128	12
	.byte	13
# [610:1]
	.byte	2
	.uleb128	.Ll237-.Ll236
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-34
	.byte	1
# [644:15]
	.byte	2
	.uleb128	.Ll238-.Ll237
	.byte	5
	.uleb128	15
	.byte	46
# [643:9]
	.byte	2
	.uleb128	.Ll239-.Ll238
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	-1
	.byte	1
# [639:7]
	.byte	2
	.uleb128	.Ll240-.Ll239
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-4
	.byte	1
# [647:1]
	.byte	2
	.uleb128	.Ll241-.Ll240
	.byte	5
	.uleb128	1
	.byte	20
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll242
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_GRAPHICS$LONGINT
# [651:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll243
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	650
	.byte	1
# [652:6]
	.byte	2
	.uleb128	.Ll244-.Ll243
	.byte	5
	.uleb128	6
	.byte	13
# [653:1]
	.byte	2
	.uleb128	.Ll245-.Ll244
	.byte	5
	.uleb128	1
	.byte	13
# [657:13]
	.byte	2
	.uleb128	.Ll246-.Ll245
	.byte	5
	.uleb128	13
	.byte	16
# [658:13]
	.byte	2
	.uleb128	.Ll247-.Ll246
	.byte	13
# [659:13]
	.byte	2
	.uleb128	.Ll248-.Ll247
	.byte	13
# [665:14]
	.byte	2
	.uleb128	.Ll249-.Ll248
	.byte	5
	.uleb128	14
	.byte	18
# [666:14]
	.byte	2
	.uleb128	.Ll250-.Ll249
	.byte	13
# [667:14]
	.byte	2
	.uleb128	.Ll251-.Ll250
	.byte	13
# [670:6]
	.byte	2
	.uleb128	.Ll252-.Ll251
	.byte	5
	.uleb128	6
	.byte	15
# [671:1]
	.byte	2
	.uleb128	.Ll253-.Ll252
	.byte	5
	.uleb128	1
	.byte	13
# [673:1]
	.byte	2
	.uleb128	.Ll254-.Ll253
	.byte	14
# [674:1]
	.byte	2
	.uleb128	.Ll255-.Ll254
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll256
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SCRCONVERT$POINTER$LONGINT
# [686:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll257
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	685
	.byte	1
# [687:10]
	.byte	2
	.uleb128	.Ll258-.Ll257
	.byte	5
	.uleb128	10
	.byte	13
# [688:1]
	.byte	2
	.uleb128	.Ll259-.Ll258
	.byte	5
	.uleb128	1
	.byte	13
# [689:9]
	.byte	2
	.uleb128	.Ll260-.Ll259
	.byte	5
	.uleb128	9
	.byte	13
# [690:1]
	.byte	2
	.uleb128	.Ll261-.Ll260
	.byte	5
	.uleb128	1
	.byte	13
# [691:1]
	.byte	2
	.uleb128	.Ll262-.Ll261
	.byte	13
# [692:1]
	.byte	2
	.uleb128	.Ll263-.Ll262
	.byte	13
# [693:1]
	.byte	2
	.uleb128	.Ll264-.Ll263
	.byte	13
# [695:3]
	.byte	2
	.uleb128	.Ll265-.Ll264
	.byte	5
	.uleb128	3
	.byte	14
# [696:3]
	.byte	2
	.uleb128	.Ll266-.Ll265
	.byte	13
# [697:17]
	.byte	2
	.uleb128	.Ll267-.Ll266
	.byte	5
	.uleb128	17
	.byte	13
# [696:3]
	.byte	2
	.uleb128	.Ll268-.Ll267
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-1
	.byte	1
# [698:3]
	.byte	2
	.uleb128	.Ll269-.Ll268
	.byte	14
# [693:1]
	.byte	2
	.uleb128	.Ll270-.Ll269
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-5
	.byte	1
# [700:1]
	.byte	2
	.uleb128	.Ll271-.Ll270
	.byte	19
# [702:1]
	.byte	2
	.uleb128	.Ll272-.Ll271
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll273
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SPRITE$POINTER
# [722:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll274
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	721
	.byte	1
# [723:1]
	.byte	2
	.uleb128	.Ll275-.Ll274
	.byte	13
# [724:1]
	.byte	2
	.uleb128	.Ll276-.Ll275
	.byte	13
# [725:1]
	.byte	2
	.uleb128	.Ll277-.Ll276
	.byte	13
# [726:4]
	.byte	2
	.uleb128	.Ll278-.Ll277
	.byte	5
	.uleb128	4
	.byte	13
# [727:1]
	.byte	2
	.uleb128	.Ll279-.Ll278
	.byte	5
	.uleb128	1
	.byte	13
# [729:16]
	.byte	2
	.uleb128	.Ll280-.Ll279
	.byte	5
	.uleb128	16
	.byte	14
# [730:10]
	.byte	2
	.uleb128	.Ll281-.Ll280
	.byte	5
	.uleb128	10
	.byte	13
# [731:16]
	.byte	2
	.uleb128	.Ll282-.Ll281
	.byte	5
	.uleb128	16
	.byte	13
# [732:15]
	.byte	2
	.uleb128	.Ll283-.Ll282
	.byte	5
	.uleb128	15
	.byte	13
# [733:15]
	.byte	2
	.uleb128	.Ll284-.Ll283
	.byte	13
# [734:10]
	.byte	2
	.uleb128	.Ll285-.Ll284
	.byte	5
	.uleb128	10
	.byte	13
# [735:16]
	.byte	2
	.uleb128	.Ll286-.Ll285
	.byte	5
	.uleb128	16
	.byte	13
# [736:10]
	.byte	2
	.uleb128	.Ll287-.Ll286
	.byte	5
	.uleb128	10
	.byte	13
# [737:11]
	.byte	2
	.uleb128	.Ll288-.Ll287
	.byte	5
	.uleb128	11
	.byte	13
# [738:11]
	.byte	2
	.uleb128	.Ll289-.Ll288
	.byte	13
# [739:16]
	.byte	2
	.uleb128	.Ll290-.Ll289
	.byte	5
	.uleb128	16
	.byte	13
# [740:11]
	.byte	2
	.uleb128	.Ll291-.Ll290
	.byte	5
	.uleb128	11
	.byte	13
# [741:11]
	.byte	2
	.uleb128	.Ll292-.Ll291
	.byte	13
# [742:6]
	.byte	2
	.uleb128	.Ll293-.Ll292
	.byte	5
	.uleb128	6
	.byte	13
# [744:21]
	.byte	2
	.uleb128	.Ll294-.Ll293
	.byte	5
	.uleb128	21
	.byte	14
# [745:5]
	.byte	2
	.uleb128	.Ll295-.Ll294
	.byte	5
	.uleb128	5
	.byte	13
# [747:3]
	.byte	2
	.uleb128	.Ll296-.Ll295
	.byte	5
	.uleb128	3
	.byte	14
# [749:5]
	.byte	2
	.uleb128	.Ll297-.Ll296
	.byte	5
	.uleb128	5
	.byte	14
# [751:36]
	.byte	2
	.uleb128	.Ll298-.Ll297
	.byte	5
	.uleb128	36
	.byte	14
# [752:22]
	.byte	2
	.uleb128	.Ll299-.Ll298
	.byte	5
	.uleb128	22
	.byte	13
# [753:7]
	.byte	2
	.uleb128	.Ll300-.Ll299
	.byte	5
	.uleb128	7
	.byte	13
# [755:9]
	.byte	2
	.uleb128	.Ll301-.Ll300
	.byte	5
	.uleb128	9
	.byte	14
# [757:18]
	.byte	2
	.uleb128	.Ll302-.Ll301
	.byte	5
	.uleb128	18
	.byte	14
# [758:15]
	.byte	2
	.uleb128	.Ll303-.Ll302
	.byte	5
	.uleb128	15
	.byte	13
# [759:24]
	.byte	2
	.uleb128	.Ll304-.Ll303
	.byte	5
	.uleb128	24
	.byte	13
# [755:13]
	.byte	2
	.uleb128	.Ll305-.Ll304
	.byte	5
	.uleb128	13
	.byte	3
	.sleb128	-4
	.byte	1
# [761:22]
	.byte	2
	.uleb128	.Ll306-.Ll305
	.byte	5
	.uleb128	22
	.byte	18
# [753:7]
	.byte	2
	.uleb128	.Ll307-.Ll306
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-8
	.byte	1
# [764:7]
	.byte	2
	.uleb128	.Ll308-.Ll307
	.byte	23
# [763:7]
	.byte	2
	.uleb128	.Ll309-.Ll308
	.byte	3
	.sleb128	-1
	.byte	1
# [749:9]
	.byte	2
	.uleb128	.Ll310-.Ll309
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	-14
	.byte	1
# [765:20]
	.byte	2
	.uleb128	.Ll311-.Ll310
	.byte	5
	.uleb128	20
	.byte	28
# [747:3]
	.byte	2
	.uleb128	.Ll312-.Ll311
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-18
	.byte	1
# [727:1]
	.byte	2
	.uleb128	.Ll313-.Ll312
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-20
	.byte	1
# [769:5]
	.byte	2
	.uleb128	.Ll314-.Ll313
	.byte	5
	.uleb128	5
	.byte	54
# [771:1]
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
# function: RETRO_$$_SETATARIPALLETTE$LONGINT
# [779:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll317
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	778
	.byte	1
# [780:34]
	.byte	2
	.uleb128	.Ll318-.Ll317
	.byte	5
	.uleb128	34
	.byte	13
# [781:18]
	.byte	2
	.uleb128	.Ll319-.Ll318
	.byte	5
	.uleb128	18
	.byte	13
# [782:13]
	.byte	2
	.uleb128	.Ll320-.Ll319
	.byte	5
	.uleb128	13
	.byte	13
# [783:1]
	.byte	2
	.uleb128	.Ll321-.Ll320
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll322
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
# [787:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll323
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	786
	.byte	1
# [788:26]
	.byte	2
	.uleb128	.Ll324-.Ll323
	.byte	5
	.uleb128	26
	.byte	13
# [789:1]
	.byte	2
	.uleb128	.Ll325-.Ll324
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll326
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_CLS$LONGINT
# [795:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll327
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	794
	.byte	1
# [796:4]
	.byte	2
	.uleb128	.Ll328-.Ll327
	.byte	5
	.uleb128	4
	.byte	13
# [798:10]
	.byte	2
	.uleb128	.Ll329-.Ll328
	.byte	5
	.uleb128	10
	.byte	14
# [799:6]
	.byte	2
	.uleb128	.Ll330-.Ll329
	.byte	5
	.uleb128	6
	.byte	13
# [800:5]
	.byte	2
	.uleb128	.Ll331-.Ll330
	.byte	5
	.uleb128	5
	.byte	13
# [802:1]
	.byte	2
	.uleb128	.Ll332-.Ll331
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll333
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
# [818:9]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll334
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	817
	.byte	1
# [819:29]
	.byte	2
	.uleb128	.Ll335-.Ll334
	.byte	5
	.uleb128	29
	.byte	13
# [820:15]
	.byte	2
	.uleb128	.Ll336-.Ll335
	.byte	5
	.uleb128	15
	.byte	13
# [816:1]
	.byte	2
	.uleb128	.Ll337-.Ll336
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-4
	.byte	1
# [820:9]
	.byte	2
	.uleb128	.Ll338-.Ll337
	.byte	5
	.uleb128	9
	.byte	16
# [821:29]
	.byte	2
	.uleb128	.Ll339-.Ll338
	.byte	5
	.uleb128	29
	.byte	13
# [823:29]
	.byte	2
	.uleb128	.Ll340-.Ll339
	.byte	14
# [824:1]
	.byte	2
	.uleb128	.Ll341-.Ll340
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll342
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [842:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll343
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	841
	.byte	1
# [844:5]
	.byte	2
	.uleb128	.Ll344-.Ll343
	.byte	5
	.uleb128	5
	.byte	14
# [845:5]
	.byte	2
	.uleb128	.Ll345-.Ll344
	.byte	13
# [846:5]
	.byte	2
	.uleb128	.Ll346-.Ll345
	.byte	13
# [847:5]
	.byte	2
	.uleb128	.Ll347-.Ll346
	.byte	13
# [848:4]
	.byte	2
	.uleb128	.Ll348-.Ll347
	.byte	5
	.uleb128	4
	.byte	13
# [849:4]
	.byte	2
	.uleb128	.Ll349-.Ll348
	.byte	13
# [850:9]
	.byte	2
	.uleb128	.Ll350-.Ll349
	.byte	5
	.uleb128	9
	.byte	13
# [852:16]
	.byte	2
	.uleb128	.Ll351-.Ll350
	.byte	5
	.uleb128	16
	.byte	14
# [854:23]
	.byte	2
	.uleb128	.Ll352-.Ll351
	.byte	5
	.uleb128	23
	.byte	14
# [855:18]
	.byte	2
	.uleb128	.Ll353-.Ll352
	.byte	5
	.uleb128	18
	.byte	13
# [852:7]
	.byte	2
	.uleb128	.Ll354-.Ll353
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-3
	.byte	1
# [858:15]
	.byte	2
	.uleb128	.Ll355-.Ll354
	.byte	5
	.uleb128	15
	.byte	18
# [842:1]
	.byte	2
	.uleb128	.Ll356-.Ll355
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-16
	.byte	1
# [858:9]
	.byte	2
	.uleb128	.Ll357-.Ll356
	.byte	5
	.uleb128	9
	.byte	28
# [860:16]
	.byte	2
	.uleb128	.Ll358-.Ll357
	.byte	5
	.uleb128	16
	.byte	14
# [862:23]
	.byte	2
	.uleb128	.Ll359-.Ll358
	.byte	5
	.uleb128	23
	.byte	14
# [863:18]
	.byte	2
	.uleb128	.Ll360-.Ll359
	.byte	5
	.uleb128	18
	.byte	13
# [860:7]
	.byte	2
	.uleb128	.Ll361-.Ll360
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-3
	.byte	1
# [868:16]
	.byte	2
	.uleb128	.Ll362-.Ll361
	.byte	5
	.uleb128	16
	.byte	20
# [870:23]
	.byte	2
	.uleb128	.Ll363-.Ll362
	.byte	5
	.uleb128	23
	.byte	14
# [871:18]
	.byte	2
	.uleb128	.Ll364-.Ll363
	.byte	5
	.uleb128	18
	.byte	13
# [868:7]
	.byte	2
	.uleb128	.Ll365-.Ll364
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-3
	.byte	1
# [874:1]
	.byte	2
	.uleb128	.Ll366-.Ll365
	.byte	5
	.uleb128	1
	.byte	18
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll367
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [886:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll368
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	885
	.byte	1
# [889:4]
	.byte	2
	.uleb128	.Ll369-.Ll368
	.byte	5
	.uleb128	4
	.byte	15
# [890:4]
	.byte	2
	.uleb128	.Ll370-.Ll369
	.byte	13
# [892:1]
	.byte	2
	.uleb128	.Ll371-.Ll370
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll372
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT
# [910:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll373
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	909
	.byte	1
# [911:25]
	.byte	2
	.uleb128	.Ll374-.Ll373
	.byte	5
	.uleb128	25
	.byte	13
# [912:1]
	.byte	2
	.uleb128	.Ll375-.Ll374
	.byte	5
	.uleb128	1
	.byte	13
# [914:11]
	.byte	2
	.uleb128	.Ll376-.Ll375
	.byte	5
	.uleb128	11
	.byte	14
# [915:3]
	.byte	2
	.uleb128	.Ll377-.Ll376
	.byte	5
	.uleb128	3
	.byte	13
# [917:22]
	.byte	2
	.uleb128	.Ll378-.Ll377
	.byte	5
	.uleb128	22
	.byte	14
# [918:23]
	.byte	2
	.uleb128	.Ll379-.Ll378
	.byte	5
	.uleb128	23
	.byte	13
# [915:3]
	.byte	2
	.uleb128	.Ll380-.Ll379
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-3
	.byte	1
# [912:1]
	.byte	2
	.uleb128	.Ll381-.Ll380
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-3
	.byte	1
# [921:1]
	.byte	2
	.uleb128	.Ll382-.Ll381
	.byte	21
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll383
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT
# [930:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll384
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	929
	.byte	1
# [931:25]
	.byte	2
	.uleb128	.Ll385-.Ll384
	.byte	5
	.uleb128	25
	.byte	13
# [932:1]
	.byte	2
	.uleb128	.Ll386-.Ll385
	.byte	5
	.uleb128	1
	.byte	13
# [934:11]
	.byte	2
	.uleb128	.Ll387-.Ll386
	.byte	5
	.uleb128	11
	.byte	14
# [935:3]
	.byte	2
	.uleb128	.Ll388-.Ll387
	.byte	5
	.uleb128	3
	.byte	13
# [937:22]
	.byte	2
	.uleb128	.Ll389-.Ll388
	.byte	5
	.uleb128	22
	.byte	14
# [938:21]
	.byte	2
	.uleb128	.Ll390-.Ll389
	.byte	5
	.uleb128	21
	.byte	13
# [939:23]
	.byte	2
	.uleb128	.Ll391-.Ll390
	.byte	5
	.uleb128	23
	.byte	13
# [940:33]
	.byte	2
	.uleb128	.Ll392-.Ll391
	.byte	5
	.uleb128	33
	.byte	13
# [939:13]
	.byte	2
	.uleb128	.Ll393-.Ll392
	.byte	5
	.uleb128	13
	.byte	3
	.sleb128	-1
	.byte	1
# [938:11]
	.byte	2
	.uleb128	.Ll394-.Ll393
	.byte	5
	.uleb128	11
	.byte	3
	.sleb128	-1
	.byte	1
# [935:3]
	.byte	2
	.uleb128	.Ll395-.Ll394
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-3
	.byte	1
# [932:1]
	.byte	2
	.uleb128	.Ll396-.Ll395
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-3
	.byte	1
# [943:1]
	.byte	2
	.uleb128	.Ll397-.Ll396
	.byte	23
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll398
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO$_$OUTTEXTXY$crc6744C382_$$_fin$0
# [949:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll399
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	948
	.byte	1
# [949:1]
	.byte	2
	.uleb128	.Ll400-.Ll399
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll401
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
# [949:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll402
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	948
	.byte	1
# [950:1]
	.byte	2
	.uleb128	.Ll403-.Ll402
	.byte	13
# [951:1]
	.byte	2
	.uleb128	.Ll404-.Ll403
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll405
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO$_$OUTTEXTXYZ$crcCA10A6FC_$$_fin$1
# [957:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll406
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	956
	.byte	1
# [957:1]
	.byte	2
	.uleb128	.Ll407-.Ll406
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll408
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [957:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll409
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	956
	.byte	1
# [958:1]
	.byte	2
	.uleb128	.Ll410-.Ll409
	.byte	13
# [959:1]
	.byte	2
	.uleb128	.Ll411-.Ll410
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll412
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SCROLLUP
# [966:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll413
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	965
	.byte	1
# [967:1]
	.byte	2
	.uleb128	.Ll414-.Ll413
	.byte	13
# [968:1]
	.byte	2
	.uleb128	.Ll415-.Ll414
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll416
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_NOISE1$$BYTE
# [988:10]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll417
	.byte	5
	.uleb128	10
	.byte	3
	.sleb128	987
	.byte	1
# [989:10]
	.byte	2
	.uleb128	.Ll418-.Ll417
	.byte	13
# [990:10]
	.byte	2
	.uleb128	.Ll419-.Ll418
	.byte	13
# [991:10]
	.byte	2
	.uleb128	.Ll420-.Ll419
	.byte	13
# [992:10]
	.byte	2
	.uleb128	.Ll421-.Ll420
	.byte	13
# [993:10]
	.byte	2
	.uleb128	.Ll422-.Ll421
	.byte	13
# [994:10]
	.byte	2
	.uleb128	.Ll423-.Ll422
	.byte	13
# [995:10]
	.byte	2
	.uleb128	.Ll424-.Ll423
	.byte	13
# [987:1]
	.byte	2
	.uleb128	.Ll425-.Ll424
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-8
	.byte	1
# [997:5]
	.byte	2
	.uleb128	.Ll426-.Ll425
	.byte	5
	.uleb128	5
	.byte	22
# [998:6]
	.byte	2
	.uleb128	.Ll427-.Ll426
	.byte	5
	.uleb128	6
	.byte	13
# [999:4]
	.byte	2
	.uleb128	.Ll428-.Ll427
	.byte	5
	.uleb128	4
	.byte	13
# [1001:1]
	.byte	2
	.uleb128	.Ll429-.Ll428
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll430
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_NOISE2$$LONGWORD
# [1012:10]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll431
	.byte	5
	.uleb128	10
	.byte	3
	.sleb128	1011
	.byte	1
# [1013:10]
	.byte	2
	.uleb128	.Ll432-.Ll431
	.byte	13
# [1014:10]
	.byte	2
	.uleb128	.Ll433-.Ll432
	.byte	13
# [1015:10]
	.byte	2
	.uleb128	.Ll434-.Ll433
	.byte	13
# [1016:10]
	.byte	2
	.uleb128	.Ll435-.Ll434
	.byte	13
# [1017:10]
	.byte	2
	.uleb128	.Ll436-.Ll435
	.byte	13
# [1018:10]
	.byte	2
	.uleb128	.Ll437-.Ll436
	.byte	13
# [1019:10]
	.byte	2
	.uleb128	.Ll438-.Ll437
	.byte	13
# [1011:1]
	.byte	2
	.uleb128	.Ll439-.Ll438
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-8
	.byte	1
# [1020:5]
	.byte	2
	.uleb128	.Ll440-.Ll439
	.byte	5
	.uleb128	5
	.byte	21
# [1021:6]
	.byte	2
	.uleb128	.Ll441-.Ll440
	.byte	5
	.uleb128	6
	.byte	13
# [1022:4]
	.byte	2
	.uleb128	.Ll442-.Ll441
	.byte	5
	.uleb128	4
	.byte	13
# [1024:1]
	.byte	2
	.uleb128	.Ll443-.Ll442
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll444
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_NOISE3$$LONGWORD
# [1043:10]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll445
	.byte	5
	.uleb128	10
	.byte	3
	.sleb128	1042
	.byte	1
# [1044:10]
	.byte	2
	.uleb128	.Ll446-.Ll445
	.byte	13
# [1045:10]
	.byte	2
	.uleb128	.Ll447-.Ll446
	.byte	13
# [1046:10]
	.byte	2
	.uleb128	.Ll448-.Ll447
	.byte	13
# [1047:10]
	.byte	2
	.uleb128	.Ll449-.Ll448
	.byte	13
# [1048:10]
	.byte	2
	.uleb128	.Ll450-.Ll449
	.byte	13
# [1049:10]
	.byte	2
	.uleb128	.Ll451-.Ll450
	.byte	13
# [1050:10]
	.byte	2
	.uleb128	.Ll452-.Ll451
	.byte	13
# [1042:1]
	.byte	2
	.uleb128	.Ll453-.Ll452
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-8
	.byte	1
# [1052:5]
	.byte	2
	.uleb128	.Ll454-.Ll453
	.byte	5
	.uleb128	5
	.byte	22
# [1053:6]
	.byte	2
	.uleb128	.Ll455-.Ll454
	.byte	5
	.uleb128	6
	.byte	13
# [1054:4]
	.byte	2
	.uleb128	.Ll456-.Ll455
	.byte	5
	.uleb128	4
	.byte	13
# [1056:1]
	.byte	2
	.uleb128	.Ll457-.Ll456
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll458
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SID$LONGINT$$TSAMPLE
# [1216:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll459
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1215
	.byte	1
# [1217:8]
	.byte	2
	.uleb128	.Ll460-.Ll459
	.byte	5
	.uleb128	8
	.byte	13
# [1220:41]
	.byte	2
	.uleb128	.Ll461-.Ll460
	.byte	5
	.uleb128	41
	.byte	15
# [1221:18]
	.byte	2
	.uleb128	.Ll462-.Ll461
	.byte	5
	.uleb128	18
	.byte	13
# [1222:41]
	.byte	2
	.uleb128	.Ll463-.Ll462
	.byte	5
	.uleb128	41
	.byte	13
# [1223:18]
	.byte	2
	.uleb128	.Ll464-.Ll463
	.byte	5
	.uleb128	18
	.byte	13
# [1224:41]
	.byte	2
	.uleb128	.Ll465-.Ll464
	.byte	5
	.uleb128	41
	.byte	13
# [1225:18]
	.byte	2
	.uleb128	.Ll466-.Ll465
	.byte	5
	.uleb128	18
	.byte	13
# [1227:15]
	.byte	2
	.uleb128	.Ll467-.Ll466
	.byte	5
	.uleb128	15
	.byte	14
# [1228:15]
	.byte	2
	.uleb128	.Ll468-.Ll467
	.byte	13
# [1229:15]
	.byte	2
	.uleb128	.Ll469-.Ll468
	.byte	13
# [1230:17]
	.byte	2
	.uleb128	.Ll470-.Ll469
	.byte	5
	.uleb128	17
	.byte	13
# [1231:13]
	.byte	2
	.uleb128	.Ll471-.Ll470
	.byte	5
	.uleb128	13
	.byte	13
# [1232:13]
	.byte	2
	.uleb128	.Ll472-.Ll471
	.byte	13
# [1233:13]
	.byte	2
	.uleb128	.Ll473-.Ll472
	.byte	13
# [1234:13]
	.byte	2
	.uleb128	.Ll474-.Ll473
	.byte	13
# [1235:33]
	.byte	2
	.uleb128	.Ll475-.Ll474
	.byte	5
	.uleb128	33
	.byte	13
# [1237:15]
	.byte	2
	.uleb128	.Ll476-.Ll475
	.byte	5
	.uleb128	15
	.byte	14
# [1238:15]
	.byte	2
	.uleb128	.Ll477-.Ll476
	.byte	13
# [1239:15]
	.byte	2
	.uleb128	.Ll478-.Ll477
	.byte	13
# [1240:17]
	.byte	2
	.uleb128	.Ll479-.Ll478
	.byte	5
	.uleb128	17
	.byte	13
# [1241:13]
	.byte	2
	.uleb128	.Ll480-.Ll479
	.byte	5
	.uleb128	13
	.byte	13
# [1242:13]
	.byte	2
	.uleb128	.Ll481-.Ll480
	.byte	13
# [1243:13]
	.byte	2
	.uleb128	.Ll482-.Ll481
	.byte	13
# [1244:13]
	.byte	2
	.uleb128	.Ll483-.Ll482
	.byte	13
# [1245:33]
	.byte	2
	.uleb128	.Ll484-.Ll483
	.byte	5
	.uleb128	33
	.byte	13
# [1247:15]
	.byte	2
	.uleb128	.Ll485-.Ll484
	.byte	5
	.uleb128	15
	.byte	14
# [1248:15]
	.byte	2
	.uleb128	.Ll486-.Ll485
	.byte	13
# [1249:15]
	.byte	2
	.uleb128	.Ll487-.Ll486
	.byte	13
# [1250:17]
	.byte	2
	.uleb128	.Ll488-.Ll487
	.byte	5
	.uleb128	17
	.byte	13
# [1251:13]
	.byte	2
	.uleb128	.Ll489-.Ll488
	.byte	5
	.uleb128	13
	.byte	13
# [1252:13]
	.byte	2
	.uleb128	.Ll490-.Ll489
	.byte	13
# [1253:13]
	.byte	2
	.uleb128	.Ll491-.Ll490
	.byte	13
# [1254:13]
	.byte	2
	.uleb128	.Ll492-.Ll491
	.byte	13
# [1255:33]
	.byte	2
	.uleb128	.Ll493-.Ll492
	.byte	5
	.uleb128	33
	.byte	13
# [1257:34]
	.byte	2
	.uleb128	.Ll494-.Ll493
	.byte	5
	.uleb128	34
	.byte	14
# [1216:1]
	.byte	2
	.uleb128	.Ll495-.Ll494
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-41
	.byte	1
# [1258:22]
	.byte	2
	.uleb128	.Ll496-.Ll495
	.byte	5
	.uleb128	22
	.byte	54
# [1259:12]
	.byte	2
	.uleb128	.Ll497-.Ll496
	.byte	5
	.uleb128	12
	.byte	13
# [1260:12]
	.byte	2
	.uleb128	.Ll498-.Ll497
	.byte	13
# [1261:12]
	.byte	2
	.uleb128	.Ll499-.Ll498
	.byte	13
# [1262:14]
	.byte	2
	.uleb128	.Ll500-.Ll499
	.byte	5
	.uleb128	14
	.byte	13
# [1263:14]
	.byte	2
	.uleb128	.Ll501-.Ll500
	.byte	13
# [1264:14]
	.byte	2
	.uleb128	.Ll502-.Ll501
	.byte	13
# [1265:47]
	.byte	2
	.uleb128	.Ll503-.Ll502
	.byte	5
	.uleb128	47
	.byte	13
# [1266:12]
	.byte	2
	.uleb128	.Ll504-.Ll503
	.byte	5
	.uleb128	12
	.byte	13
# [1268:19]
	.byte	2
	.uleb128	.Ll505-.Ll504
	.byte	5
	.uleb128	19
	.byte	14
# [1269:19]
	.byte	2
	.uleb128	.Ll506-.Ll505
	.byte	13
# [1270:19]
	.byte	2
	.uleb128	.Ll507-.Ll506
	.byte	13
# [1272:17]
	.byte	2
	.uleb128	.Ll508-.Ll507
	.byte	5
	.uleb128	17
	.byte	14
# [1273:17]
	.byte	2
	.uleb128	.Ll509-.Ll508
	.byte	13
# [1274:17]
	.byte	2
	.uleb128	.Ll510-.Ll509
	.byte	13
# [1277:1]
	.byte	2
	.uleb128	.Ll511-.Ll510
	.byte	5
	.uleb128	1
	.byte	15
# [1279:1]
	.byte	2
	.uleb128	.Ll512-.Ll511
	.byte	14
# [1282:13]
	.byte	2
	.uleb128	.Ll513-.Ll512
	.byte	5
	.uleb128	13
	.byte	15
# [1283:15]
	.byte	2
	.uleb128	.Ll514-.Ll513
	.byte	5
	.uleb128	15
	.byte	13
# [1284:10]
	.byte	2
	.uleb128	.Ll515-.Ll514
	.byte	5
	.uleb128	10
	.byte	13
# [1286:16]
	.byte	2
	.uleb128	.Ll516-.Ll515
	.byte	5
	.uleb128	16
	.byte	14
# [1287:19]
	.byte	2
	.uleb128	.Ll517-.Ll516
	.byte	5
	.uleb128	19
	.byte	13
# [1289:11]
	.byte	2
	.uleb128	.Ll518-.Ll517
	.byte	5
	.uleb128	11
	.byte	14
# [1291:20]
	.byte	2
	.uleb128	.Ll519-.Ll518
	.byte	5
	.uleb128	20
	.byte	14
# [1292:5]
	.byte	2
	.uleb128	.Ll520-.Ll519
	.byte	5
	.uleb128	5
	.byte	13
# [1294:8]
	.byte	2
	.uleb128	.Ll521-.Ll520
	.byte	5
	.uleb128	8
	.byte	14
# [1296:11]
	.byte	2
	.uleb128	.Ll522-.Ll521
	.byte	5
	.uleb128	11
	.byte	14
# [1297:13]
	.byte	2
	.uleb128	.Ll523-.Ll522
	.byte	5
	.uleb128	13
	.byte	13
# [1298:8]
	.byte	2
	.uleb128	.Ll524-.Ll523
	.byte	5
	.uleb128	8
	.byte	13
# [1300:17]
	.byte	2
	.uleb128	.Ll525-.Ll524
	.byte	5
	.uleb128	17
	.byte	14
# [1301:14]
	.byte	2
	.uleb128	.Ll526-.Ll525
	.byte	5
	.uleb128	14
	.byte	13
# [1303:9]
	.byte	2
	.uleb128	.Ll527-.Ll526
	.byte	5
	.uleb128	9
	.byte	14
# [1305:18]
	.byte	2
	.uleb128	.Ll528-.Ll527
	.byte	5
	.uleb128	18
	.byte	14
# [1306:3]
	.byte	2
	.uleb128	.Ll529-.Ll528
	.byte	5
	.uleb128	3
	.byte	13
# [1308:6]
	.byte	2
	.uleb128	.Ll530-.Ll529
	.byte	5
	.uleb128	6
	.byte	14
# [1310:11]
	.byte	2
	.uleb128	.Ll531-.Ll530
	.byte	5
	.uleb128	11
	.byte	14
# [1311:13]
	.byte	2
	.uleb128	.Ll532-.Ll531
	.byte	5
	.uleb128	13
	.byte	13
# [1312:8]
	.byte	2
	.uleb128	.Ll533-.Ll532
	.byte	5
	.uleb128	8
	.byte	13
# [1313:9]
	.byte	2
	.uleb128	.Ll534-.Ll533
	.byte	5
	.uleb128	9
	.byte	13
# [1315:18]
	.byte	2
	.uleb128	.Ll535-.Ll534
	.byte	5
	.uleb128	18
	.byte	14
# [1316:3]
	.byte	2
	.uleb128	.Ll536-.Ll535
	.byte	5
	.uleb128	3
	.byte	13
# [1318:6]
	.byte	2
	.uleb128	.Ll537-.Ll536
	.byte	5
	.uleb128	6
	.byte	14
# [1322:11]
	.byte	2
	.uleb128	.Ll538-.Ll537
	.byte	5
	.uleb128	11
	.byte	16
# [1323:11]
	.byte	2
	.uleb128	.Ll539-.Ll538
	.byte	13
# [1324:11]
	.byte	2
	.uleb128	.Ll540-.Ll539
	.byte	13
# [1327:3]
	.byte	2
	.uleb128	.Ll541-.Ll540
	.byte	5
	.uleb128	3
	.byte	15
# [1330:21]
	.byte	2
	.uleb128	.Ll542-.Ll541
	.byte	5
	.uleb128	21
	.byte	15
# [1331:16]
	.byte	2
	.uleb128	.Ll543-.Ll542
	.byte	5
	.uleb128	16
	.byte	13
# [1332:22]
	.byte	2
	.uleb128	.Ll544-.Ll543
	.byte	5
	.uleb128	22
	.byte	13
# [1333:9]
	.byte	2
	.uleb128	.Ll545-.Ll544
	.byte	5
	.uleb128	9
	.byte	13
# [1334:22]
	.byte	2
	.uleb128	.Ll546-.Ll545
	.byte	5
	.uleb128	22
	.byte	13
# [1335:22]
	.byte	2
	.uleb128	.Ll547-.Ll546
	.byte	13
# [1336:22]
	.byte	2
	.uleb128	.Ll548-.Ll547
	.byte	13
# [1337:18]
	.byte	2
	.uleb128	.Ll549-.Ll548
	.byte	5
	.uleb128	18
	.byte	13
# [1338:6]
	.byte	2
	.uleb128	.Ll550-.Ll549
	.byte	5
	.uleb128	6
	.byte	13
# [1339:7]
	.byte	2
	.uleb128	.Ll551-.Ll550
	.byte	5
	.uleb128	7
	.byte	13
# [1340:11]
	.byte	2
	.uleb128	.Ll552-.Ll551
	.byte	5
	.uleb128	11
	.byte	13
# [1341:20]
	.byte	2
	.uleb128	.Ll553-.Ll552
	.byte	5
	.uleb128	20
	.byte	13
# [1345:3]
	.byte	2
	.uleb128	.Ll554-.Ll553
	.byte	5
	.uleb128	3
	.byte	16
# [1348:21]
	.byte	2
	.uleb128	.Ll555-.Ll554
	.byte	5
	.uleb128	21
	.byte	15
# [1349:16]
	.byte	2
	.uleb128	.Ll556-.Ll555
	.byte	5
	.uleb128	16
	.byte	13
# [1350:22]
	.byte	2
	.uleb128	.Ll557-.Ll556
	.byte	5
	.uleb128	22
	.byte	13
# [1351:9]
	.byte	2
	.uleb128	.Ll558-.Ll557
	.byte	5
	.uleb128	9
	.byte	13
# [1352:22]
	.byte	2
	.uleb128	.Ll559-.Ll558
	.byte	5
	.uleb128	22
	.byte	13
# [1353:22]
	.byte	2
	.uleb128	.Ll560-.Ll559
	.byte	13
# [1354:22]
	.byte	2
	.uleb128	.Ll561-.Ll560
	.byte	13
# [1355:18]
	.byte	2
	.uleb128	.Ll562-.Ll561
	.byte	5
	.uleb128	18
	.byte	13
# [1356:6]
	.byte	2
	.uleb128	.Ll563-.Ll562
	.byte	5
	.uleb128	6
	.byte	13
# [1357:7]
	.byte	2
	.uleb128	.Ll564-.Ll563
	.byte	5
	.uleb128	7
	.byte	13
# [1358:11]
	.byte	2
	.uleb128	.Ll565-.Ll564
	.byte	5
	.uleb128	11
	.byte	13
# [1359:20]
	.byte	2
	.uleb128	.Ll566-.Ll565
	.byte	5
	.uleb128	20
	.byte	13
# [1362:3]
	.byte	2
	.uleb128	.Ll567-.Ll566
	.byte	5
	.uleb128	3
	.byte	15
# [1365:21]
	.byte	2
	.uleb128	.Ll568-.Ll567
	.byte	5
	.uleb128	21
	.byte	15
# [1366:16]
	.byte	2
	.uleb128	.Ll569-.Ll568
	.byte	5
	.uleb128	16
	.byte	13
# [1367:22]
	.byte	2
	.uleb128	.Ll570-.Ll569
	.byte	5
	.uleb128	22
	.byte	13
# [1368:9]
	.byte	2
	.uleb128	.Ll571-.Ll570
	.byte	5
	.uleb128	9
	.byte	13
# [1369:22]
	.byte	2
	.uleb128	.Ll572-.Ll571
	.byte	5
	.uleb128	22
	.byte	13
# [1370:22]
	.byte	2
	.uleb128	.Ll573-.Ll572
	.byte	13
# [1371:22]
	.byte	2
	.uleb128	.Ll574-.Ll573
	.byte	13
# [1372:18]
	.byte	2
	.uleb128	.Ll575-.Ll574
	.byte	5
	.uleb128	18
	.byte	13
# [1376:20]
	.byte	2
	.uleb128	.Ll576-.Ll575
	.byte	5
	.uleb128	20
	.byte	16
# [1380:11]
	.byte	2
	.uleb128	.Ll577-.Ll576
	.byte	5
	.uleb128	11
	.byte	16
# [1216:1]
	.byte	2
	.uleb128	.Ll578-.Ll577
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-164
	.byte	1
# [1380:48]
	.byte	2
	.uleb128	.Ll579-.Ll578
	.byte	5
	.uleb128	48
	.byte	176
# [1382:6]
	.byte	2
	.uleb128	.Ll580-.Ll579
	.byte	5
	.uleb128	6
	.byte	14
# [1383:11]
	.byte	2
	.uleb128	.Ll581-.Ll580
	.byte	5
	.uleb128	11
	.byte	13
# [1384:11]
	.byte	2
	.uleb128	.Ll582-.Ll581
	.byte	13
# [1385:11]
	.byte	2
	.uleb128	.Ll583-.Ll582
	.byte	13
# [1386:8]
	.byte	2
	.uleb128	.Ll584-.Ll583
	.byte	5
	.uleb128	8
	.byte	13
# [1388:11]
	.byte	2
	.uleb128	.Ll585-.Ll584
	.byte	5
	.uleb128	11
	.byte	14
# [1216:1]
	.byte	2
	.uleb128	.Ll586-.Ll585
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-172
	.byte	1
# [1388:48]
	.byte	2
	.uleb128	.Ll587-.Ll586
	.byte	5
	.uleb128	48
	.byte	184
# [1390:6]
	.byte	2
	.uleb128	.Ll588-.Ll587
	.byte	5
	.uleb128	6
	.byte	14
# [1391:11]
	.byte	2
	.uleb128	.Ll589-.Ll588
	.byte	5
	.uleb128	11
	.byte	13
# [1392:28]
	.byte	2
	.uleb128	.Ll590-.Ll589
	.byte	5
	.uleb128	28
	.byte	13
# [1393:11]
	.byte	2
	.uleb128	.Ll591-.Ll590
	.byte	5
	.uleb128	11
	.byte	13
# [1395:27]
	.byte	2
	.uleb128	.Ll592-.Ll591
	.byte	5
	.uleb128	27
	.byte	14
# [1396:17]
	.byte	2
	.uleb128	.Ll593-.Ll592
	.byte	5
	.uleb128	17
	.byte	13
# [1397:7]
	.byte	2
	.uleb128	.Ll594-.Ll593
	.byte	5
	.uleb128	7
	.byte	13
# [1398:11]
	.byte	2
	.uleb128	.Ll595-.Ll594
	.byte	5
	.uleb128	11
	.byte	13
# [1399:8]
	.byte	2
	.uleb128	.Ll596-.Ll595
	.byte	5
	.uleb128	8
	.byte	13
# [1402:11]
	.byte	2
	.uleb128	.Ll597-.Ll596
	.byte	5
	.uleb128	11
	.byte	15
# [1216:1]
	.byte	2
	.uleb128	.Ll598-.Ll597
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-186
	.byte	1
# [1402:49]
	.byte	2
	.uleb128	.Ll599-.Ll598
	.byte	5
	.uleb128	49
	.byte	198
# [1404:6]
	.byte	2
	.uleb128	.Ll600-.Ll599
	.byte	5
	.uleb128	6
	.byte	14
# [1405:11]
	.byte	2
	.uleb128	.Ll601-.Ll600
	.byte	5
	.uleb128	11
	.byte	13
# [1406:11]
	.byte	2
	.uleb128	.Ll602-.Ll601
	.byte	13
# [1407:11]
	.byte	2
	.uleb128	.Ll603-.Ll602
	.byte	13
# [1408:8]
	.byte	2
	.uleb128	.Ll604-.Ll603
	.byte	5
	.uleb128	8
	.byte	13
# [1413:10]
	.byte	2
	.uleb128	.Ll605-.Ll604
	.byte	5
	.uleb128	10
	.byte	17
# [1414:10]
	.byte	2
	.uleb128	.Ll606-.Ll605
	.byte	13
# [1415:10]
	.byte	2
	.uleb128	.Ll607-.Ll606
	.byte	13
# [1419:10]
	.byte	2
	.uleb128	.Ll608-.Ll607
	.byte	16
# [1420:10]
	.byte	2
	.uleb128	.Ll609-.Ll608
	.byte	13
# [1421:10]
	.byte	2
	.uleb128	.Ll610-.Ll609
	.byte	13
# [1423:3]
	.byte	2
	.uleb128	.Ll611-.Ll610
	.byte	5
	.uleb128	3
	.byte	14
# [1424:6]
	.byte	2
	.uleb128	.Ll612-.Ll611
	.byte	5
	.uleb128	6
	.byte	13
# [1425:6]
	.byte	2
	.uleb128	.Ll613-.Ll612
	.byte	13
# [1426:6]
	.byte	2
	.uleb128	.Ll614-.Ll613
	.byte	13
# [1428:25]
	.byte	2
	.uleb128	.Ll615-.Ll614
	.byte	5
	.uleb128	25
	.byte	14
# [1429:27]
	.byte	2
	.uleb128	.Ll616-.Ll615
	.byte	5
	.uleb128	27
	.byte	13
# [1430:27]
	.byte	2
	.uleb128	.Ll617-.Ll616
	.byte	13
# [1432:17]
	.byte	2
	.uleb128	.Ll618-.Ll617
	.byte	5
	.uleb128	17
	.byte	14
# [1433:18]
	.byte	2
	.uleb128	.Ll619-.Ll618
	.byte	5
	.uleb128	18
	.byte	13
# [1434:18]
	.byte	2
	.uleb128	.Ll620-.Ll619
	.byte	13
# [1436:17]
	.byte	2
	.uleb128	.Ll621-.Ll620
	.byte	5
	.uleb128	17
	.byte	14
# [1437:18]
	.byte	2
	.uleb128	.Ll622-.Ll621
	.byte	5
	.uleb128	18
	.byte	13
# [1438:18]
	.byte	2
	.uleb128	.Ll623-.Ll622
	.byte	13
# [1440:10]
	.byte	2
	.uleb128	.Ll624-.Ll623
	.byte	5
	.uleb128	10
	.byte	14
# [1441:20]
	.byte	2
	.uleb128	.Ll625-.Ll624
	.byte	5
	.uleb128	20
	.byte	13
# [1442:20]
	.byte	2
	.uleb128	.Ll626-.Ll625
	.byte	13
# [1443:20]
	.byte	2
	.uleb128	.Ll627-.Ll626
	.byte	13
# [1445:11]
	.byte	2
	.uleb128	.Ll628-.Ll627
	.byte	5
	.uleb128	11
	.byte	14
# [1446:22]
	.byte	2
	.uleb128	.Ll629-.Ll628
	.byte	5
	.uleb128	22
	.byte	13
# [1447:22]
	.byte	2
	.uleb128	.Ll630-.Ll629
	.byte	13
# [1448:22]
	.byte	2
	.uleb128	.Ll631-.Ll630
	.byte	13
# [1450:11]
	.byte	2
	.uleb128	.Ll632-.Ll631
	.byte	5
	.uleb128	11
	.byte	14
# [1451:22]
	.byte	2
	.uleb128	.Ll633-.Ll632
	.byte	5
	.uleb128	22
	.byte	13
# [1452:22]
	.byte	2
	.uleb128	.Ll634-.Ll633
	.byte	13
# [1453:22]
	.byte	2
	.uleb128	.Ll635-.Ll634
	.byte	13
# [1455:19]
	.byte	2
	.uleb128	.Ll636-.Ll635
	.byte	5
	.uleb128	19
	.byte	14
# [1216:1]
	.byte	2
	.uleb128	.Ll637-.Ll636
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-239
	.byte	1
# [1455:32]
	.byte	2
	.uleb128	.Ll638-.Ll637
	.byte	5
	.uleb128	32
	.byte	251
# [1456:27]
	.byte	2
	.uleb128	.Ll639-.Ll638
	.byte	5
	.uleb128	27
	.byte	13
# [1216:1]
	.byte	2
	.uleb128	.Ll640-.Ll639
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-240
	.byte	1
# [1456:26]
	.byte	2
	.uleb128	.Ll641-.Ll640
	.byte	5
	.uleb128	26
	.byte	252
# [1459:12]
	.byte	2
	.uleb128	.Ll642-.Ll641
	.byte	5
	.uleb128	12
	.byte	15
# [1460:12]
	.byte	2
	.uleb128	.Ll643-.Ll642
	.byte	13
# [1279:1]
	.byte	2
	.uleb128	.Ll644-.Ll643
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-181
	.byte	1
# [1463:7]
	.byte	2
	.uleb128	.Ll645-.Ll644
	.byte	5
	.uleb128	7
	.byte	196
# [1464:8]
	.byte	2
	.uleb128	.Ll646-.Ll645
	.byte	5
	.uleb128	8
	.byte	13
# [1465:1]
	.byte	2
	.uleb128	.Ll647-.Ll646
	.byte	5
	.uleb128	1
	.byte	13
# [1466:9]
	.byte	2
	.uleb128	.Ll648-.Ll647
	.byte	5
	.uleb128	9
	.byte	13
# [1467:11]
	.byte	2
	.uleb128	.Ll649-.Ll648
	.byte	5
	.uleb128	11
	.byte	13
# [1469:1]
	.byte	2
	.uleb128	.Ll650-.Ll649
	.byte	5
	.uleb128	1
	.byte	14
# [1470:1]
	.byte	2
	.uleb128	.Ll651-.Ll650
	.byte	13
# [1471:1]
	.byte	2
	.uleb128	.Ll652-.Ll651
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll653
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_INITNOTES
# [1530:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll654
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1529
	.byte	1
# [1531:1]
	.byte	2
	.uleb128	.Ll655-.Ll654
	.byte	13
# [1533:9]
	.byte	2
	.uleb128	.Ll656-.Ll655
	.byte	5
	.uleb128	9
	.byte	14
# [1534:7]
	.byte	2
	.uleb128	.Ll657-.Ll656
	.byte	5
	.uleb128	7
	.byte	13
# [1531:1]
	.byte	2
	.uleb128	.Ll658-.Ll657
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-3
	.byte	1
# [1536:1]
	.byte	2
	.uleb128	.Ll659-.Ll658
	.byte	17
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll660
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_INITSINETABLE
# [1541:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll661
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1540
	.byte	1
# [1542:1]
	.byte	2
	.uleb128	.Ll662-.Ll661
	.byte	13
# [1543:40]
	.byte	2
	.uleb128	.Ll663-.Ll662
	.byte	5
	.uleb128	40
	.byte	13
# [1542:1]
	.byte	2
	.uleb128	.Ll664-.Ll663
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [1545:1]
	.byte	2
	.uleb128	.Ll665-.Ll664
	.byte	15
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll666
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_INITLOGTABLE
# [1553:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll667
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1552
	.byte	1
# [1554:1]
	.byte	2
	.uleb128	.Ll668-.Ll667
	.byte	13
# [1556:1]
	.byte	2
	.uleb128	.Ll669-.Ll668
	.byte	14
# [1558:7]
	.byte	2
	.uleb128	.Ll670-.Ll669
	.byte	5
	.uleb128	7
	.byte	14
# [1559:23]
	.byte	2
	.uleb128	.Ll671-.Ll670
	.byte	5
	.uleb128	23
	.byte	13
# [1556:1]
	.byte	2
	.uleb128	.Ll672-.Ll671
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-3
	.byte	1
# [1561:1]
	.byte	2
	.uleb128	.Ll673-.Ll672
	.byte	17
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll674
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_FMSYNTH$$TSAMPLE
# [1622:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll675
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1621
	.byte	1
# [1623:5]
	.byte	2
	.uleb128	.Ll676-.Ll675
	.byte	5
	.uleb128	5
	.byte	13
# [1643:2]
	.byte	2
	.uleb128	.Ll677-.Ll676
	.byte	5
	.uleb128	2
	.byte	32
# [1622:1]
	.byte	2
	.uleb128	.Ll678-.Ll677
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-21
	.byte	1
# [1645:33]
	.byte	2
	.uleb128	.Ll679-.Ll678
	.byte	5
	.uleb128	33
	.byte	35
# [1622:1]
	.byte	2
	.uleb128	.Ll680-.Ll679
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-23
	.byte	1
# [1649:25]
	.byte	2
	.uleb128	.Ll681-.Ll680
	.byte	5
	.uleb128	25
	.byte	39
# [1622:1]
	.byte	2
	.uleb128	.Ll682-.Ll681
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-27
	.byte	1
# [1649:35]
	.byte	2
	.uleb128	.Ll683-.Ll682
	.byte	5
	.uleb128	35
	.byte	39
# [1650:15]
	.byte	2
	.uleb128	.Ll684-.Ll683
	.byte	5
	.uleb128	15
	.byte	13
# [1651:15]
	.byte	2
	.uleb128	.Ll685-.Ll684
	.byte	13
# [1652:15]
	.byte	2
	.uleb128	.Ll686-.Ll685
	.byte	13
# [1653:15]
	.byte	2
	.uleb128	.Ll687-.Ll686
	.byte	13
# [1654:15]
	.byte	2
	.uleb128	.Ll688-.Ll687
	.byte	13
# [1655:15]
	.byte	2
	.uleb128	.Ll689-.Ll688
	.byte	13
# [1656:15]
	.byte	2
	.uleb128	.Ll690-.Ll689
	.byte	13
# [1649:3]
	.byte	2
	.uleb128	.Ll691-.Ll690
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-7
	.byte	1
# [1622:1]
	.byte	2
	.uleb128	.Ll692-.Ll691
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-27
	.byte	1
# [1658:22]
	.byte	2
	.uleb128	.Ll693-.Ll692
	.byte	5
	.uleb128	22
	.byte	48
# [1665:22]
	.byte	2
	.uleb128	.Ll694-.Ll693
	.byte	19
# [1682:16]
	.byte	2
	.uleb128	.Ll695-.Ll694
	.byte	5
	.uleb128	16
	.byte	29
# [1622:1]
	.byte	2
	.uleb128	.Ll696-.Ll695
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-60
	.byte	1
# [1684:26]
	.byte	2
	.uleb128	.Ll697-.Ll696
	.byte	5
	.uleb128	26
	.byte	74
# [1689:20]
	.byte	2
	.uleb128	.Ll698-.Ll697
	.byte	5
	.uleb128	20
	.byte	17
# [1622:1]
	.byte	2
	.uleb128	.Ll699-.Ll698
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-67
	.byte	1
# [1691:26]
	.byte	2
	.uleb128	.Ll700-.Ll699
	.byte	5
	.uleb128	26
	.byte	81
# [1622:1]
	.byte	2
	.uleb128	.Ll701-.Ll700
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-69
	.byte	1
# [1692:17]
	.byte	2
	.uleb128	.Ll702-.Ll701
	.byte	5
	.uleb128	17
	.byte	82
# [1622:1]
	.byte	2
	.uleb128	.Ll703-.Ll702
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-70
	.byte	1
# [1692:35]
	.byte	2
	.uleb128	.Ll704-.Ll703
	.byte	5
	.uleb128	35
	.byte	82
# [1694:20]
	.byte	2
	.uleb128	.Ll705-.Ll704
	.byte	5
	.uleb128	20
	.byte	14
# [1622:1]
	.byte	2
	.uleb128	.Ll706-.Ll705
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-72
	.byte	1
# [1696:26]
	.byte	2
	.uleb128	.Ll707-.Ll706
	.byte	5
	.uleb128	26
	.byte	86
# [1701:20]
	.byte	2
	.uleb128	.Ll708-.Ll707
	.byte	5
	.uleb128	20
	.byte	17
# [1622:1]
	.byte	2
	.uleb128	.Ll709-.Ll708
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-79
	.byte	1
# [1703:26]
	.byte	2
	.uleb128	.Ll710-.Ll709
	.byte	5
	.uleb128	26
	.byte	93
# [1709:24]
	.byte	2
	.uleb128	.Ll711-.Ll710
	.byte	5
	.uleb128	24
	.byte	18
# [1622:1]
	.byte	2
	.uleb128	.Ll712-.Ll711
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-87
	.byte	1
# [1724:23]
	.byte	2
	.uleb128	.Ll713-.Ll712
	.byte	5
	.uleb128	23
	.byte	114
# [1622:1]
	.byte	2
	.uleb128	.Ll714-.Ll713
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-102
	.byte	1
# [1725:42]
	.byte	2
	.uleb128	.Ll715-.Ll714
	.byte	5
	.uleb128	42
	.byte	115
# [1622:1]
	.byte	2
	.uleb128	.Ll716-.Ll715
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-103
	.byte	1
# [1725:31]
	.byte	2
	.uleb128	.Ll717-.Ll716
	.byte	5
	.uleb128	31
	.byte	115
# [1726:9]
	.byte	2
	.uleb128	.Ll718-.Ll717
	.byte	5
	.uleb128	9
	.byte	13
# [1727:23]
	.byte	2
	.uleb128	.Ll719-.Ll718
	.byte	5
	.uleb128	23
	.byte	13
# [1728:23]
	.byte	2
	.uleb128	.Ll720-.Ll719
	.byte	13
# [1643:2]
	.byte	2
	.uleb128	.Ll721-.Ll720
	.byte	5
	.uleb128	2
	.byte	3
	.sleb128	-85
	.byte	1
# [1735:7]
	.byte	2
	.uleb128	.Ll722-.Ll721
	.byte	5
	.uleb128	7
	.byte	104
# [1739:13]
	.byte	2
	.uleb128	.Ll723-.Ll722
	.byte	5
	.uleb128	13
	.byte	16
# [1740:1]
	.byte	2
	.uleb128	.Ll724-.Ll723
	.byte	5
	.uleb128	1
	.byte	13
# [1742:1]
	.byte	2
	.uleb128	.Ll725-.Ll724
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll726
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE
# [1753:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll727
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1752
	.byte	1
# [1755:1]
	.byte	2
	.uleb128	.Ll728-.Ll727
	.byte	14
# [1756:1]
	.byte	2
	.uleb128	.Ll729-.Ll728
	.byte	13
# [1757:1]
	.byte	2
	.uleb128	.Ll730-.Ll729
	.byte	13
# [1758:1]
	.byte	2
	.uleb128	.Ll731-.Ll730
	.byte	13
# [1759:1]
	.byte	2
	.uleb128	.Ll732-.Ll731
	.byte	13
# [1760:1]
	.byte	2
	.uleb128	.Ll733-.Ll732
	.byte	13
# [1762:13]
	.byte	2
	.uleb128	.Ll734-.Ll733
	.byte	5
	.uleb128	13
	.byte	14
# [1764:1]
	.byte	2
	.uleb128	.Ll735-.Ll734
	.byte	5
	.uleb128	1
	.byte	14
# [1765:1]
	.byte	2
	.uleb128	.Ll736-.Ll735
	.byte	13
# [1766:1]
	.byte	2
	.uleb128	.Ll737-.Ll736
	.byte	13
# [1767:1]
	.byte	2
	.uleb128	.Ll738-.Ll737
	.byte	13
# [1768:1]
	.byte	2
	.uleb128	.Ll739-.Ll738
	.byte	13
# [1769:1]
	.byte	2
	.uleb128	.Ll740-.Ll739
	.byte	13
# [1771:25]
	.byte	2
	.uleb128	.Ll741-.Ll740
	.byte	5
	.uleb128	25
	.byte	14
# [1753:1]
	.byte	2
	.uleb128	.Ll742-.Ll741
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-18
	.byte	1
# [1771:42]
	.byte	2
	.uleb128	.Ll743-.Ll742
	.byte	5
	.uleb128	42
	.byte	30
# [1772:24]
	.byte	2
	.uleb128	.Ll744-.Ll743
	.byte	5
	.uleb128	24
	.byte	13
# [1773:24]
	.byte	2
	.uleb128	.Ll745-.Ll744
	.byte	13
# [1774:24]
	.byte	2
	.uleb128	.Ll746-.Ll745
	.byte	13
# [1771:1]
	.byte	2
	.uleb128	.Ll747-.Ll746
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-3
	.byte	1
# [1776:1]
	.byte	2
	.uleb128	.Ll748-.Ll747
	.byte	17
# [1777:1]
	.byte	2
	.uleb128	.Ll749-.Ll748
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll750
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SDL_SOUND_INIT$$LONGINT
# [1783:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll751
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1782
	.byte	1
# [1784:1]
	.byte	2
	.uleb128	.Ll752-.Ll751
	.byte	13
# [1785:1]
	.byte	2
	.uleb128	.Ll753-.Ll752
	.byte	13
# [1786:1]
	.byte	2
	.uleb128	.Ll754-.Ll753
	.byte	13
# [1787:1]
	.byte	2
	.uleb128	.Ll755-.Ll754
	.byte	13
# [1788:1]
	.byte	2
	.uleb128	.Ll756-.Ll755
	.byte	13
# [1789:21]
	.byte	2
	.uleb128	.Ll757-.Ll756
	.byte	5
	.uleb128	21
	.byte	13
# [1790:1]
	.byte	2
	.uleb128	.Ll758-.Ll757
	.byte	5
	.uleb128	1
	.byte	13
# [1792:38]
	.byte	2
	.uleb128	.Ll759-.Ll758
	.byte	5
	.uleb128	38
	.byte	14
# [1794:3]
	.byte	2
	.uleb128	.Ll760-.Ll759
	.byte	5
	.uleb128	3
	.byte	14
# [1796:1]
	.byte	2
	.uleb128	.Ll761-.Ll760
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll762
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_AUDIOCALLBACK$POINTER$PBYTE$LONGINT
# [1811:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll763
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1810
	.byte	1
# [1814:4]
	.byte	2
	.uleb128	.Ll764-.Ll763
	.byte	5
	.uleb128	4
	.byte	15
# [1816:1]
	.byte	2
	.uleb128	.Ll765-.Ll764
	.byte	5
	.uleb128	1
	.byte	14
# [1818:11]
	.byte	2
	.uleb128	.Ll766-.Ll765
	.byte	5
	.uleb128	11
	.byte	14
# [1819:7]
	.byte	2
	.uleb128	.Ll767-.Ll766
	.byte	5
	.uleb128	7
	.byte	13
# [1821:5]
	.byte	2
	.uleb128	.Ll768-.Ll767
	.byte	5
	.uleb128	5
	.byte	14
# [1822:10]
	.byte	2
	.uleb128	.Ll769-.Ll768
	.byte	5
	.uleb128	10
	.byte	13
# [1824:18]
	.byte	2
	.uleb128	.Ll770-.Ll769
	.byte	5
	.uleb128	18
	.byte	14
# [1826:24]
	.byte	2
	.uleb128	.Ll771-.Ll770
	.byte	5
	.uleb128	24
	.byte	14
# [1827:16]
	.byte	2
	.uleb128	.Ll772-.Ll771
	.byte	5
	.uleb128	16
	.byte	13
# [1828:14]
	.byte	2
	.uleb128	.Ll773-.Ll772
	.byte	5
	.uleb128	14
	.byte	13
# [1830:11]
	.byte	2
	.uleb128	.Ll774-.Ll773
	.byte	5
	.uleb128	11
	.byte	14
# [1831:11]
	.byte	2
	.uleb128	.Ll775-.Ll774
	.byte	13
# [1811:1]
	.byte	2
	.uleb128	.Ll776-.Ll775
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-20
	.byte	1
# [1831:53]
	.byte	2
	.uleb128	.Ll777-.Ll776
	.byte	5
	.uleb128	53
	.byte	32
# [1832:15]
	.byte	2
	.uleb128	.Ll778-.Ll777
	.byte	5
	.uleb128	15
	.byte	13
# [1833:11]
	.byte	2
	.uleb128	.Ll779-.Ll778
	.byte	5
	.uleb128	11
	.byte	13
# [1834:11]
	.byte	2
	.uleb128	.Ll780-.Ll779
	.byte	13
# [1835:11]
	.byte	2
	.uleb128	.Ll781-.Ll780
	.byte	13
# [1836:27]
	.byte	2
	.uleb128	.Ll782-.Ll781
	.byte	5
	.uleb128	27
	.byte	13
# [1837:29]
	.byte	2
	.uleb128	.Ll783-.Ll782
	.byte	5
	.uleb128	29
	.byte	13
# [1841:23]
	.byte	2
	.uleb128	.Ll784-.Ll783
	.byte	5
	.uleb128	23
	.byte	16
# [1842:11]
	.byte	2
	.uleb128	.Ll785-.Ll784
	.byte	5
	.uleb128	11
	.byte	13
# [1843:11]
	.byte	2
	.uleb128	.Ll786-.Ll785
	.byte	13
# [1844:11]
	.byte	2
	.uleb128	.Ll787-.Ll786
	.byte	13
# [1845:11]
	.byte	2
	.uleb128	.Ll788-.Ll787
	.byte	13
# [1848:23]
	.byte	2
	.uleb128	.Ll789-.Ll788
	.byte	5
	.uleb128	23
	.byte	15
# [1851:9]
	.byte	2
	.uleb128	.Ll790-.Ll789
	.byte	5
	.uleb128	9
	.byte	15
# [1811:1]
	.byte	2
	.uleb128	.Ll791-.Ll790
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-40
	.byte	1
# [1851:51]
	.byte	2
	.uleb128	.Ll792-.Ll791
	.byte	5
	.uleb128	51
	.byte	52
# [1852:13]
	.byte	2
	.uleb128	.Ll793-.Ll792
	.byte	5
	.uleb128	13
	.byte	13
# [1853:26]
	.byte	2
	.uleb128	.Ll794-.Ll793
	.byte	5
	.uleb128	26
	.byte	13
# [1854:24]
	.byte	2
	.uleb128	.Ll795-.Ll794
	.byte	5
	.uleb128	24
	.byte	13
# [1855:9]
	.byte	2
	.uleb128	.Ll796-.Ll795
	.byte	5
	.uleb128	9
	.byte	13
# [1856:21]
	.byte	2
	.uleb128	.Ll797-.Ll796
	.byte	5
	.uleb128	21
	.byte	13
# [1858:9]
	.byte	2
	.uleb128	.Ll798-.Ll797
	.byte	5
	.uleb128	9
	.byte	14
# [1859:9]
	.byte	2
	.uleb128	.Ll799-.Ll798
	.byte	13
# [1862:25]
	.byte	2
	.uleb128	.Ll800-.Ll799
	.byte	5
	.uleb128	25
	.byte	15
# [1863:27]
	.byte	2
	.uleb128	.Ll801-.Ll800
	.byte	5
	.uleb128	27
	.byte	13
# [1869:6]
	.byte	2
	.uleb128	.Ll802-.Ll801
	.byte	5
	.uleb128	6
	.byte	18
# [1870:28]
	.byte	2
	.uleb128	.Ll803-.Ll802
	.byte	5
	.uleb128	28
	.byte	13
# [1871:4]
	.byte	2
	.uleb128	.Ll804-.Ll803
	.byte	5
	.uleb128	4
	.byte	13
# [1872:4]
	.byte	2
	.uleb128	.Ll805-.Ll804
	.byte	13
# [1873:6]
	.byte	2
	.uleb128	.Ll806-.Ll805
	.byte	5
	.uleb128	6
	.byte	13
# [1874:6]
	.byte	2
	.uleb128	.Ll807-.Ll806
	.byte	13
# [1875:14]
	.byte	2
	.uleb128	.Ll808-.Ll807
	.byte	5
	.uleb128	14
	.byte	13
# [1876:14]
	.byte	2
	.uleb128	.Ll809-.Ll808
	.byte	13
# [1877:3]
	.byte	2
	.uleb128	.Ll810-.Ll809
	.byte	5
	.uleb128	3
	.byte	13
# [1878:8]
	.byte	2
	.uleb128	.Ll811-.Ll810
	.byte	5
	.uleb128	8
	.byte	13
# [1879:8]
	.byte	2
	.uleb128	.Ll812-.Ll811
	.byte	13
# [1881:24]
	.byte	2
	.uleb128	.Ll813-.Ll812
	.byte	5
	.uleb128	24
	.byte	14
# [1883:8]
	.byte	2
	.uleb128	.Ll814-.Ll813
	.byte	5
	.uleb128	8
	.byte	14
# [1884:30]
	.byte	2
	.uleb128	.Ll815-.Ll814
	.byte	5
	.uleb128	30
	.byte	13
# [1885:6]
	.byte	2
	.uleb128	.Ll816-.Ll815
	.byte	5
	.uleb128	6
	.byte	13
# [1886:6]
	.byte	2
	.uleb128	.Ll817-.Ll816
	.byte	13
# [1887:8]
	.byte	2
	.uleb128	.Ll818-.Ll817
	.byte	5
	.uleb128	8
	.byte	13
# [1888:8]
	.byte	2
	.uleb128	.Ll819-.Ll818
	.byte	13
# [1889:14]
	.byte	2
	.uleb128	.Ll820-.Ll819
	.byte	5
	.uleb128	14
	.byte	13
# [1890:14]
	.byte	2
	.uleb128	.Ll821-.Ll820
	.byte	13
# [1891:5]
	.byte	2
	.uleb128	.Ll822-.Ll821
	.byte	5
	.uleb128	5
	.byte	13
# [1892:10]
	.byte	2
	.uleb128	.Ll823-.Ll822
	.byte	5
	.uleb128	10
	.byte	13
# [1893:10]
	.byte	2
	.uleb128	.Ll824-.Ll823
	.byte	13
# [1881:7]
	.byte	2
	.uleb128	.Ll825-.Ll824
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-12
	.byte	1
# [1816:1]
	.byte	2
	.uleb128	.Ll826-.Ll825
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-65
	.byte	1
# [1899:10]
	.byte	2
	.uleb128	.Ll827-.Ll826
	.byte	5
	.uleb128	10
	.byte	95
# [1900:1]
	.byte	2
	.uleb128	.Ll828-.Ll827
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll829
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
# [1905:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll830
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1904
	.byte	1
# [1906:13]
	.byte	2
	.uleb128	.Ll831-.Ll830
	.byte	5
	.uleb128	13
	.byte	13
# [1907:13]
	.byte	2
	.uleb128	.Ll832-.Ll831
	.byte	13
# [1908:1]
	.byte	2
	.uleb128	.Ll833-.Ll832
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll834
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
# [1913:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll835
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1912
	.byte	1
# [1914:6]
	.byte	2
	.uleb128	.Ll836-.Ll835
	.byte	5
	.uleb128	6
	.byte	13
# [1915:6]
	.byte	2
	.uleb128	.Ll837-.Ll836
	.byte	13
# [1916:6]
	.byte	2
	.uleb128	.Ll838-.Ll837
	.byte	13
# [1917:6]
	.byte	2
	.uleb128	.Ll839-.Ll838
	.byte	13
# [1918:6]
	.byte	2
	.uleb128	.Ll840-.Ll839
	.byte	13
# [1919:6]
	.byte	2
	.uleb128	.Ll841-.Ll840
	.byte	13
# [1920:1]
	.byte	2
	.uleb128	.Ll842-.Ll841
	.byte	5
	.uleb128	1
	.byte	13
# [1921:1]
	.byte	2
	.uleb128	.Ll843-.Ll842
	.byte	13
# [1922:1]
	.byte	2
	.uleb128	.Ll844-.Ll843
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll845
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_DELAY1$TSAMPLE$$TSAMPLE
# [1927:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll846
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1926
	.byte	1
# [1928:17]
	.byte	2
	.uleb128	.Ll847-.Ll846
	.byte	5
	.uleb128	17
	.byte	13
# [1929:17]
	.byte	2
	.uleb128	.Ll848-.Ll847
	.byte	13
# [1930:6]
	.byte	2
	.uleb128	.Ll849-.Ll848
	.byte	5
	.uleb128	6
	.byte	13
# [1931:1]
	.byte	2
	.uleb128	.Ll850-.Ll849
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll851
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_REVERB1$TSAMPLE$$TSAMPLE
# [1940:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll852
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1939
	.byte	1
# [1941:8]
	.byte	2
	.uleb128	.Ll853-.Ll852
	.byte	5
	.uleb128	8
	.byte	13
# [1942:1]
	.byte	2
	.uleb128	.Ll854-.Ll853
	.byte	5
	.uleb128	1
	.byte	13
# [1943:9]
	.byte	2
	.uleb128	.Ll855-.Ll854
	.byte	5
	.uleb128	9
	.byte	13
# [1944:9]
	.byte	2
	.uleb128	.Ll856-.Ll855
	.byte	13
# [1945:9]
	.byte	2
	.uleb128	.Ll857-.Ll856
	.byte	13
# [1946:9]
	.byte	2
	.uleb128	.Ll858-.Ll857
	.byte	13
# [1947:9]
	.byte	2
	.uleb128	.Ll859-.Ll858
	.byte	13
# [1948:9]
	.byte	2
	.uleb128	.Ll860-.Ll859
	.byte	13
# [1949:9]
	.byte	2
	.uleb128	.Ll861-.Ll860
	.byte	13
# [1950:9]
	.byte	2
	.uleb128	.Ll862-.Ll861
	.byte	13
# [1951:9]
	.byte	2
	.uleb128	.Ll863-.Ll862
	.byte	13
# [1952:9]
	.byte	2
	.uleb128	.Ll864-.Ll863
	.byte	13
# [1953:10]
	.byte	2
	.uleb128	.Ll865-.Ll864
	.byte	5
	.uleb128	10
	.byte	13
# [1965:23]
	.byte	2
	.uleb128	.Ll866-.Ll865
	.byte	5
	.uleb128	23
	.byte	24
# [1964:16]
	.byte	2
	.uleb128	.Ll867-.Ll866
	.byte	5
	.uleb128	16
	.byte	3
	.sleb128	-1
	.byte	1
# [1965:12]
	.byte	2
	.uleb128	.Ll868-.Ll867
	.byte	5
	.uleb128	12
	.byte	13
# [1963:15]
	.byte	2
	.uleb128	.Ll869-.Ll868
	.byte	5
	.uleb128	15
	.byte	3
	.sleb128	-2
	.byte	1
# [1964:10]
	.byte	2
	.uleb128	.Ll870-.Ll869
	.byte	5
	.uleb128	10
	.byte	13
# [1962:14]
	.byte	2
	.uleb128	.Ll871-.Ll870
	.byte	5
	.uleb128	14
	.byte	3
	.sleb128	-2
	.byte	1
# [1963:9]
	.byte	2
	.uleb128	.Ll872-.Ll871
	.byte	5
	.uleb128	9
	.byte	13
# [1961:13]
	.byte	2
	.uleb128	.Ll873-.Ll872
	.byte	5
	.uleb128	13
	.byte	3
	.sleb128	-2
	.byte	1
# [1962:8]
	.byte	2
	.uleb128	.Ll874-.Ll873
	.byte	5
	.uleb128	8
	.byte	13
# [1960:12]
	.byte	2
	.uleb128	.Ll875-.Ll874
	.byte	5
	.uleb128	12
	.byte	3
	.sleb128	-2
	.byte	1
# [1961:7]
	.byte	2
	.uleb128	.Ll876-.Ll875
	.byte	5
	.uleb128	7
	.byte	13
# [1959:11]
	.byte	2
	.uleb128	.Ll877-.Ll876
	.byte	5
	.uleb128	11
	.byte	3
	.sleb128	-2
	.byte	1
# [1960:6]
	.byte	2
	.uleb128	.Ll878-.Ll877
	.byte	5
	.uleb128	6
	.byte	13
# [1958:10]
	.byte	2
	.uleb128	.Ll879-.Ll878
	.byte	5
	.uleb128	10
	.byte	3
	.sleb128	-2
	.byte	1
# [1959:5]
	.byte	2
	.uleb128	.Ll880-.Ll879
	.byte	5
	.uleb128	5
	.byte	13
# [1957:9]
	.byte	2
	.uleb128	.Ll881-.Ll880
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	-2
	.byte	1
# [1958:4]
	.byte	2
	.uleb128	.Ll882-.Ll881
	.byte	5
	.uleb128	4
	.byte	13
# [1956:8]
	.byte	2
	.uleb128	.Ll883-.Ll882
	.byte	5
	.uleb128	8
	.byte	3
	.sleb128	-2
	.byte	1
# [1957:3]
	.byte	2
	.uleb128	.Ll884-.Ll883
	.byte	5
	.uleb128	3
	.byte	13
# [1955:17]
	.byte	2
	.uleb128	.Ll885-.Ll884
	.byte	5
	.uleb128	17
	.byte	3
	.sleb128	-2
	.byte	1
# [1956:2]
	.byte	2
	.uleb128	.Ll886-.Ll885
	.byte	5
	.uleb128	2
	.byte	13
# [1957:3]
	.byte	2
	.uleb128	.Ll887-.Ll886
	.byte	5
	.uleb128	3
	.byte	13
# [1958:4]
	.byte	2
	.uleb128	.Ll888-.Ll887
	.byte	5
	.uleb128	4
	.byte	13
# [1959:5]
	.byte	2
	.uleb128	.Ll889-.Ll888
	.byte	5
	.uleb128	5
	.byte	13
# [1960:6]
	.byte	2
	.uleb128	.Ll890-.Ll889
	.byte	5
	.uleb128	6
	.byte	13
# [1961:7]
	.byte	2
	.uleb128	.Ll891-.Ll890
	.byte	5
	.uleb128	7
	.byte	13
# [1962:8]
	.byte	2
	.uleb128	.Ll892-.Ll891
	.byte	5
	.uleb128	8
	.byte	13
# [1963:9]
	.byte	2
	.uleb128	.Ll893-.Ll892
	.byte	5
	.uleb128	9
	.byte	13
# [1964:10]
	.byte	2
	.uleb128	.Ll894-.Ll893
	.byte	5
	.uleb128	10
	.byte	13
# [1965:12]
	.byte	2
	.uleb128	.Ll895-.Ll894
	.byte	5
	.uleb128	12
	.byte	13
# [1969:17]
	.byte	2
	.uleb128	.Ll896-.Ll895
	.byte	5
	.uleb128	17
	.byte	16
# [1970:6]
	.byte	2
	.uleb128	.Ll897-.Ll896
	.byte	5
	.uleb128	6
	.byte	13
# [1971:1]
	.byte	2
	.uleb128	.Ll898-.Ll897
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll899
	.byte	0
	.byte	1
	.byte	1
# ###################
.Ledebug_line0:
# End asmlist al_dwarf_line
# Begin asmlist al_end

.section .text.z_DEBUGEND_$RETRO,"x"
.globl	DEBUGEND_$RETRO
DEBUGEND_$RETRO:
# End asmlist al_end

