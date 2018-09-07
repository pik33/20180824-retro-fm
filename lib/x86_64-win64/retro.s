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
# [223] begin
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
# [226] end;
	nop
.Lj17:
.Ll4:
# [224] FreeOnTerminate := True;
	movq	-24(%rbp),%rax
	movb	$1,17(%rax)
.Ll5:
# [225] inherited Create(CreateSuspended);
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
.Lt47:
.Ll7:

.section .text.n_retro$_$tretro_$__$$_execute,"x"
	.balign 16,0x90
.globl	RETRO$_$TRETRO_$__$$_EXECUTE
RETRO$_$TRETRO_$__$$_EXECUTE:
.Lc6:
.seh_proc RETRO$_$TRETRO_$__$$_EXECUTE
.Ll8:
# [240] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
# Var $self located at rbp-8, size=OS_64
# Var p3 located at rbp-16, size=OS_64
# Var t located at rbp-24, size=OS_S64
	movq	%rcx,-8(%rbp)
.Ll9:
# [241] running:=1;                               // tell them the machine is running
	movl	$1,TC_$RETRO_$$_RUNNING(%rip)
.Ll10:
# [242] SDL_SetThreadPriority(SDL_THREAD_PRIORITY_HIGH);
	movl	$2,%eax
	movl	%eax,%ecx
	call	_$dll$sdl2$SDL_SetThreadPriority
	.balign 8,0x90
.Lj48:
.Ll11:
# [244] if p2<>nil then                           // the screen is prepared
	cmpq	$0,U_$RETRO_$$_P2(%rip)
	je	.Lj52
.Ll12:
# [247] p3:=p2+2304000;                         // second frame buffer
	movq	U_$RETRO_$$_P2(%rip),%rax
	leaq	9216000(%rax),%rax
	movq	%rax,-16(%rbp)
.Ll13:
# [248] sdlevents;                              // get events from SDL and update system variables
	call	RETRO_$$_SDLEVENTS
.Ll14:
# [249] vblank1:=0;                             // tell them there is no vblank
	movb	$0,U_$RETRO_$$_VBLANK1(%rip)
.Ll15:
# [250] t:=gettime;                             // prepare for screen time measurement
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,-24(%rbp)
.Ll16:
# [251] scrconvert(p2,raml^[$18001]);           // convert the screen
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393220(%rax),%edx
	movq	U_$RETRO_$$_P2(%rip),%rcx
	call	RETRO_$$_SCRCONVERT$POINTER$LONGINT
.Ll17:
# [252] tim:=gettime-t;                         // get screen time for debug
	call	RETRO_$$_GETTIME$$INT64
	movq	-24(%rbp),%rdx
	subq	%rdx,%rax
	movq	%rax,U_$RETRO_$$_TIM(%rip)
.Ll18:
# [253] raml^[$18000]+=1;                       // increment frame counter
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393216(%rax),%eax
	leal	1(%eax),%edx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	%edx,393216(%rax)
.Ll19:
# [254] vblank1:=1;                             // we are in vblank now
	movb	$1,U_$RETRO_$$_VBLANK1(%rip)
.Ll20:
# [255] sprite(p2);               // draw sprites
	movq	U_$RETRO_$$_P2(%rip),%rcx
	call	RETRO_$$_SPRITE$POINTER
	.balign 8,0x90
.Lj71:
.Ll21:
# [256] repeat until peek($70000)<2;            // if peek($70000)=2 then resizing is in progress, don't call SDL
	movl	$458752,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$2,%al
	jnb	.Lj71
.Ll22:
# [257] poke ($70000,0) ;                       // tell them they can not resize
	movl	$0,%edx
	movl	$458752,%ecx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll23:
# [262] if (needrestart>0) then
	cmpb	$0,TC_$RETRO_$$_NEEDRESTART(%rip)
	jna	.Lj81
.Ll24:
# [265] SDL_DestroyTexture( sdlTexture );
	movq	U_$RETRO_$$_SDLTEXTURE(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyTexture
.Ll25:
# [266] SDL_DestroyRenderer( sdlRenderer );
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyRenderer
.Ll26:
# [267] sdlRenderer := SDL_CreateRenderer(scr, -1, 14);
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	movl	$14,%r8d
	movl	$-1,%edx
	call	_$dll$sdl2$SDL_CreateRenderer
	movq	%rax,U_$RETRO_$$_SDLRENDERER(%rip)
.Ll27:
# [268] if peek($70002)=0 then begin
	movl	$458754,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	testb	%al,%al
	jne	.Lj95
.Ll28:
# [269] if needrestart=2 then sdl_setwindowfullscreen(scr,0);
	cmpb	$2,TC_$RETRO_$$_NEEDRESTART(%rip)
	jne	.Lj99
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	movl	$0,%edx
	call	_$dll$sdl2$SDL_SetWindowFullscreen
.Lj99:
.Ll29:
# [270] sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
	movl	$1200,32(%rsp)
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1920,%r9d
	movl	$1,%r8d
	movl	$372645892,%edx
	call	_$dll$sdl2$SDL_CreateTexture
	movq	%rax,U_$RETRO_$$_SDLTEXTURE(%rip)
.Ll30:
# [271] SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1200,%r8d
	movl	$1920,%edx
	call	_$dll$sdl2$SDL_RenderSetLogicalSize
	jmp	.Lj122
.Lj95:
.Ll31:
# [275] if needrestart=2 then sdl_setwindowfullscreen(scr,SDL_WINDOW_FULLSCREEN_DESKTOP);
	cmpb	$2,TC_$RETRO_$$_NEEDRESTART(%rip)
	jne	.Lj124
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	movl	$4097,%edx
	call	_$dll$sdl2$SDL_SetWindowFullscreen
.Lj124:
.Ll32:
# [276] sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
	movl	$1200,32(%rsp)
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1920,%r9d
	movl	$1,%r8d
	movl	$372645892,%edx
	call	_$dll$sdl2$SDL_CreateTexture
	movq	%rax,U_$RETRO_$$_SDLTEXTURE(%rip)
.Ll33:
# [277] SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1200,%r8d
	movl	$1920,%edx
	call	_$dll$sdl2$SDL_RenderSetLogicalSize
.Lj122:
.Ll34:
# [279] needrestart:=0;
	movb	$0,TC_$RETRO_$$_NEEDRESTART(%rip)
.Lj81:
.Ll35:
# [283] SDL_UpdateTexture(sdlTexture, nil, p2, 1920 * 4);   // render the screen
	movq	U_$RETRO_$$_P2(%rip),%r8
	movq	U_$RETRO_$$_SDLTEXTURE(%rip),%rcx
	movl	$7680,%r9d
	movq	$0,%rdx
	call	_$dll$sdl2$SDL_UpdateTexture
.Ll36:
# [284] SDL_RenderClear(sdlRenderer);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	call	_$dll$sdl2$SDL_RenderClear
.Ll37:
# [285] SDL_RenderCopy(sdlRenderer, sdlTexture,nil,nil);
	movq	U_$RETRO_$$_SDLTEXTURE(%rip),%rdx
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movq	$0,%r9
	movq	$0,%r8
	call	_$dll$sdl2$SDL_RenderCopy
.Ll38:
# [286] SDL_RenderPresent(sdlRenderer);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	call	_$dll$sdl2$SDL_RenderPresent
.Ll39:
# [287] poke ($70000,1);                        // screen rendered, resizing possible
	movl	$1,%edx
	movl	$458752,%ecx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll40:
# [291] sdlevents;                              // process the second buffer
	call	RETRO_$$_SDLEVENTS
.Ll41:
# [292] vblank1:=0;
	movb	$0,U_$RETRO_$$_VBLANK1(%rip)
.Ll42:
# [293] t:=gettime;
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,-24(%rbp)
.Ll43:
# [294] scrconvert(p3,raml^[$18001]);
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393220(%rax),%edx
	movq	-16(%rbp),%rcx
	call	RETRO_$$_SCRCONVERT$POINTER$LONGINT
.Ll44:
# [295] tim:=gettime-t;
	call	RETRO_$$_GETTIME$$INT64
	movq	-24(%rbp),%rdx
	subq	%rdx,%rax
	movq	%rax,U_$RETRO_$$_TIM(%rip)
.Ll45:
# [296] raml^[$18000]+=1;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393216(%rax),%eax
	leal	1(%eax),%eax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movl	%eax,393216(%rdx)
.Ll46:
# [297] vblank1:=1;
	movb	$1,U_$RETRO_$$_VBLANK1(%rip)
.Ll47:
# [298] sprite(p3);
	movq	-16(%rbp),%rcx
	call	RETRO_$$_SPRITE$POINTER
	.balign 8,0x90
.Lj189:
.Ll48:
# [299] repeat until peek($70000)<2;
	movl	$458752,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	cmpb	$2,%al
	jnb	.Lj189
.Ll49:
# [300] poke ($70000,0);
	movl	$0,%edx
	movl	$458752,%ecx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Ll50:
# [302] if (needrestart>0) then
	cmpb	$0,TC_$RETRO_$$_NEEDRESTART(%rip)
	jna	.Lj199
.Ll51:
# [305] SDL_DestroyTexture( sdlTexture );
	movq	U_$RETRO_$$_SDLTEXTURE(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyTexture
.Ll52:
# [306] SDL_DestroyRenderer( sdlRenderer );
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyRenderer
.Ll53:
# [307] sdlRenderer := SDL_CreateRenderer(scr, -1, 14);
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	movl	$14,%r8d
	movl	$-1,%edx
	call	_$dll$sdl2$SDL_CreateRenderer
	movq	%rax,U_$RETRO_$$_SDLRENDERER(%rip)
.Ll54:
# [308] if peek($70002)=0 then begin
	movl	$458754,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
	testb	%al,%al
	jne	.Lj213
.Ll55:
# [309] if needrestart=2 then sdl_setwindowfullscreen(scr,0);
	cmpb	$2,TC_$RETRO_$$_NEEDRESTART(%rip)
	jne	.Lj217
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	movl	$0,%edx
	call	_$dll$sdl2$SDL_SetWindowFullscreen
.Lj217:
.Ll56:
# [310] sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
	movl	$1200,32(%rsp)
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1920,%r9d
	movl	$1,%r8d
	movl	$372645892,%edx
	call	_$dll$sdl2$SDL_CreateTexture
	movq	%rax,U_$RETRO_$$_SDLTEXTURE(%rip)
.Ll57:
# [311] SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1200,%r8d
	movl	$1920,%edx
	call	_$dll$sdl2$SDL_RenderSetLogicalSize
	jmp	.Lj240
.Lj213:
.Ll58:
# [315] if needrestart=2 then sdl_setwindowfullscreen(scr,SDL_WINDOW_FULLSCREEN_DESKTOP);
	cmpb	$2,TC_$RETRO_$$_NEEDRESTART(%rip)
	jne	.Lj242
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	movl	$4097,%edx
	call	_$dll$sdl2$SDL_SetWindowFullscreen
.Lj242:
.Ll59:
# [316] sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
	movl	$1200,32(%rsp)
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1920,%r9d
	movl	$1,%r8d
	movl	$372645892,%edx
	call	_$dll$sdl2$SDL_CreateTexture
	movq	%rax,U_$RETRO_$$_SDLTEXTURE(%rip)
.Ll60:
# [317] SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1200,%r8d
	movl	$1920,%edx
	call	_$dll$sdl2$SDL_RenderSetLogicalSize
.Lj240:
.Ll61:
# [319] needrestart:=0;
	movb	$0,TC_$RETRO_$$_NEEDRESTART(%rip)
.Lj199:
.Ll62:
# [323] SDL_UpdateTexture(sdlTexture, nil, p3, 1920 * 4);
	movq	-16(%rbp),%r8
	movq	U_$RETRO_$$_SDLTEXTURE(%rip),%rcx
	movl	$7680,%r9d
	movq	$0,%rdx
	call	_$dll$sdl2$SDL_UpdateTexture
.Ll63:
# [324] SDL_RenderClear(sdlRenderer);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	call	_$dll$sdl2$SDL_RenderClear
.Ll64:
# [325] SDL_RenderCopy(sdlRenderer, sdlTexture,nil,nil);
	movq	U_$RETRO_$$_SDLTEXTURE(%rip),%rdx
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movq	$0,%r9
	movq	$0,%r8
	call	_$dll$sdl2$SDL_RenderCopy
.Ll65:
# [326] SDL_RenderPresent(sdlRenderer);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	call	_$dll$sdl2$SDL_RenderPresent
.Ll66:
# [327] poke($70000,1) ;
	movl	$1,%edx
	movl	$458752,%ecx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Lj52:
.Ll67:
# [330] until terminated;
	movq	-8(%rbp),%rax
	cmpb	$0,16(%rax)
	je	.Lj48
.Ll68:
# [331] running:=0;
	movl	$0,TC_$RETRO_$$_RUNNING(%rip)
.Ll69:
# [332] end;
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc7:
.Lt46:
.Ll70:

.section .text.n_retro_$$_initmachine$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_INITMACHINE$LONGINT
RETRO_$$_INITMACHINE$LONGINT:
.Lc11:
.seh_proc RETRO_$$_INITMACHINE$LONGINT
.Ll71:
# [347] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc13:
.Lc14:
	movq	%rsp,%rbp
.Lc15:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
# Var mode located at rbp-8, size=OS_S32
# Var a located at rbp-16, size=OS_S32
# Var i located at rbp-24, size=OS_S32
# Var bb located at rbp-32, size=OS_8
	movl	%ecx,-8(%rbp)
.Ll72:
# [349] initvoices;
	call	FMSYNTH_$$_INITVOICES
.Ll73:
# [350] initsamples0;
	call	FMSYNTH_$$_INITSAMPLES0
.Ll74:
# [351] initsamples1;
	call	FMSYNTH_$$_INITSAMPLES1
.Ll75:
# [352] r1:=virtualalloc(nil,268435456, MEM_COMMIT or MEM_RESERVE,PAGE_EXECUTE_READWRITE);  // get 256 MB ram
	movl	$64,%eax
	movl	$12288,%r8d
	movq	$268435456,%rdx
	movq	$0,%rcx
	movl	%eax,%r9d
	call	_$dll$kernel32$VirtualAlloc
	movq	%rax,U_$RETRO_$$_R1(%rip)
.Ll76:
# [353] p2:=virtualalloc(nil,20971520, MEM_COMMIT or MEM_RESERVE,PAGE_READWRITE);  // get the RAM for the framebuffer
	movl	$4,%r9d
	movl	$12288,%r8d
	movq	$20971520,%rdx
	movq	$0,%rcx
	call	_$dll$kernel32$VirtualAlloc
	movq	%rax,U_$RETRO_$$_P2(%rip)
.Ll77:
# [355] fh2:=fileopen('./st4font.def',$40);              // load 8x16 font
	leaq	_$RETRO$_Ld1(%rip),%rcx
	movl	$64,%edx
	call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$QWORD
	movl	%eax,U_$RETRO_$$_FH2(%rip)
.Ll78:
# [356] fileread(fh2,ramb^[$50000],2048);
	movq	U_$RETRO_$$_R1(%rip),%rax
	leaq	327680(%rax),%rdx
	movslq	U_$RETRO_$$_FH2(%rip),%rcx
	movl	$2048,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll79:
# [357] fileclose(fh2);
	movslq	U_$RETRO_$$_FH2(%rip),%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll80:
# [359] fh2:=fileopen('./combinedwaveforms.bin',$40);   // load combined waveforms for SID
	leaq	_$RETRO$_Ld2(%rip),%rcx
	movl	$64,%edx
	call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$QWORD
	movl	%eax,U_$RETRO_$$_FH2(%rip)
.Ll81:
# [360] fileread(fh2,combined,1024);
	movslq	U_$RETRO_$$_FH2(%rip),%rcx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rdx
	movl	$1024,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll82:
# [361] fileclose(fh2);
	movslq	U_$RETRO_$$_FH2(%rip),%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll83:
# [363] fh2:=fileopen('./mysz.def',$40);                // load mouse cursor definition at sprite 8
	leaq	_$RETRO$_Ld3(%rip),%rcx
	movl	$64,%edx
	call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$QWORD
	movl	%eax,U_$RETRO_$$_FH2(%rip)
.Ll84:
# [364] for i:=0 to 1023 do
	movl	$0,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj351:
	addl	$1,-24(%rbp)
.Ll85:
# [366] fileread(fh2,bb,1);
	movslq	U_$RETRO_$$_FH2(%rip),%rcx
	leaq	-32(%rbp),%rdx
	movl	$1,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll86:
# [367] a:=bb;
	movzbl	-32(%rbp),%eax
	movl	%eax,-16(%rbp)
.Ll87:
# [368] a:=a+(a shl 8) + (a shl 16);
	movl	-16(%rbp),%eax
	shll	$8,%eax
	movl	-16(%rbp),%edx
	leal	(%eax,%edx),%edx
	movl	-16(%rbp),%eax
	shll	$16,%eax
	leal	(%edx,%eax),%eax
	movl	%eax,-16(%rbp)
.Ll88:
# [369] raml^[$16400+i]:=a;
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	-24(%rbp),%rdx
	movl	-16(%rbp),%eax
	movl	%eax,364544(%rcx,%rdx,4)
.Ll89:
	cmpl	$1023,-24(%rbp)
	jl	.Lj351
.Ll90:
# [371] fileclose(fh2);
	movslq	U_$RETRO_$$_FH2(%rip),%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll91:
# [375] SDL_Init(SDL_INIT_everything);
	movl	$12849,%ecx
	call	_$dll$sdl2$SDL_Init
.Ll92:
# [377] SDL_SetHint(SDL_HINT_RENDER_SCALE_QUALITY, 'best'); // make the scaled rendering look smoother.
	leaq	_$RETRO$_Ld4(%rip),%rdx
	leaq	_$RETRO$_Ld5(%rip),%rcx
	call	_$dll$sdl2$SDL_SetHint
.Ll93:
# [378] SDL_SetHint(SDL_HINT_RENDER_DIRECT3D_THREADSAFE, '1');
	leaq	_$RETRO$_Ld6(%rip),%rdx
	leaq	_$RETRO$_Ld7(%rip),%rcx
	call	_$dll$sdl2$SDL_SetHint
.Ll94:
# [379] if mode=0 then scr := SDL_CreateWindow( 'The Retromachine', SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 960,600, SDL_WINDOW_shown);
	cmpl	$0,-8(%rbp)
	jne	.Lj377
	movl	$4,40(%rsp)
	movl	$600,32(%rsp)
	leaq	_$RETRO$_Ld8(%rip),%rcx
	movl	$960,%r9d
	movl	$536805376,%r8d
	movl	$536805376,%edx
	call	_$dll$sdl2$SDL_CreateWindow
	movq	%rax,U_$RETRO_$$_SCR(%rip)
.Lj377:
.Ll95:
# [380] if mode=1 then scr := SDL_CreateWindow( 'The Retromachine', SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 960,600 , SDL_WINDOW_fullscreen_desktop);
	cmpl	$1,-8(%rbp)
	jne	.Lj393
	movl	$4097,40(%rsp)
	movl	$600,32(%rsp)
	leaq	_$RETRO$_Ld8(%rip),%rcx
	movl	$960,%r9d
	movl	$536805376,%r8d
	movl	$536805376,%edx
	call	_$dll$sdl2$SDL_CreateWindow
	movq	%rax,U_$RETRO_$$_SCR(%rip)
.Lj393:
.Ll96:
# [381] sdlRenderer := SDL_CreateRenderer(scr, -1, 14);   // hardware+vsync+texture
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	movl	$14,%r8d
	movl	$-1,%edx
	call	_$dll$sdl2$SDL_CreateRenderer
	movq	%rax,U_$RETRO_$$_SDLRENDERER(%rip)
.Ll97:
# [382] sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
	movl	$1200,32(%rsp)
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1920,%r9d
	movl	$1,%r8d
	movl	$372645892,%edx
	call	_$dll$sdl2$SDL_CreateTexture
	movq	%rax,U_$RETRO_$$_SDLTEXTURE(%rip)
.Ll98:
# [383] SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1200,%r8d
	movl	$1920,%edx
	call	_$dll$sdl2$SDL_RenderSetLogicalSize
.Ll99:
# [385] sdl_showcursor(0);             // hide sdl cursor
	movl	$0,%ecx
	call	_$dll$sdl2$SDL_ShowCursor
.Ll100:
# [387] sdl_sound_init;
	call	RETRO_$$_SDL_SOUND_INIT$$LONGINT
.Ll101:
# [388] sdl_pauseaudio(0);
	movl	$0,%ecx
	call	_$dll$sdl2$SDL_PauseAudio
.Ll102:
# [390] thread:=tretro.create(true);   // start frame refreshing thread
	leaq	VMT_$RETRO_$$_TRETRO(%rip),%rcx
	movl	$1,%r8d
	movq	$1,%rdx
	call	RETRO$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO
	movq	%rax,U_$RETRO_$$_THREAD(%rip)
.Ll103:
# [391] thread.start;
	movq	U_$RETRO_$$_THREAD(%rip),%rcx
	call	CLASSES$_$TTHREAD_$__$$_START
.Ll104:
# [393] end;
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc12:
.Lt1:
.Ll105:

.section .text.n_retro_$$_stopmachine,"x"
	.balign 16,0x90
.globl	RETRO_$$_STOPMACHINE
RETRO_$$_STOPMACHINE:
.Lc16:
.seh_proc RETRO_$$_STOPMACHINE
.Ll106:
# [405] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc18:
.Lc19:
	movq	%rsp,%rbp
.Lc20:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
.Ll107:
# [409] sdl_pauseaudio(1);
	movl	$1,%eax
	movl	%eax,%ecx
	call	_$dll$sdl2$SDL_PauseAudio
.Ll108:
# [410] sdl_closeaudio;
	call	_$dll$sdl2$SDL_CloseAudio
.Ll109:
# [411] thread.terminate;
	movq	U_$RETRO_$$_THREAD(%rip),%rcx
	call	CLASSES$_$TTHREAD_$__$$_TERMINATE
	.balign 8,0x90
.Lj454:
.Ll110:
# [412] repeat until running=0;
	cmpl	$0,TC_$RETRO_$$_RUNNING(%rip)
	jne	.Lj454
.Ll111:
# [413] SDL_DestroyTexture( sdlTexture );
	movq	U_$RETRO_$$_SDLTEXTURE(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyTexture
.Ll112:
# [414] SDL_DestroyRenderer( sdlRenderer );
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyRenderer
.Ll113:
# [415] SDL_DestroyWindow ( scr);
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyWindow
.Ll114:
# [416] sdl_quit;
	call	_$dll$sdl2$SDL_Quit
.Ll115:
# [420] virtualfree(p2,0,mem_release);
	movq	U_$RETRO_$$_P2(%rip),%rcx
	movl	$32768,%r8d
	movq	$0,%rdx
	call	_$dll$kernel32$VirtualFree
.Ll116:
# [421] virtualfree(r1,0,mem_release);
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movl	$32768,%r8d
	movq	$0,%rdx
	call	_$dll$kernel32$VirtualFree
.Ll117:
# [423] end;
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc17:
.Lt2:
.Ll118:

.section .text.n_retro_$$_poke$longint$byte,"x"
	.balign 16,0x90
.globl	RETRO_$$_POKE$LONGINT$BYTE
RETRO_$$_POKE$LONGINT$BYTE:
.Lc21:
.seh_proc RETRO_$$_POKE$LONGINT$BYTE
.Ll119:
# [433] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc23:
.Lc24:
	movq	%rsp,%rbp
.Lc25:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var addr located at rbp-8, size=OS_S32
# Var b located at rbp-16, size=OS_8
	movl	%ecx,-8(%rbp)
	movb	%dl,-16(%rbp)
.Ll120:
# [434] ramb^[addr]:=b;
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movl	-8(%rbp),%eax
	movb	-16(%rbp),%dl
	movb	%dl,(%rcx,%rax,1)
.Ll121:
# [435] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc22:
.Lt15:
.Ll122:

.section .text.n_retro_$$_dpoke$longint$word,"x"
	.balign 16,0x90
.globl	RETRO_$$_DPOKE$LONGINT$WORD
RETRO_$$_DPOKE$LONGINT$WORD:
.Lc26:
.seh_proc RETRO_$$_DPOKE$LONGINT$WORD
.Ll123:
# [439] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc28:
.Lc29:
	movq	%rsp,%rbp
.Lc30:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var addr located at rbp-8, size=OS_S32
# Var w located at rbp-16, size=OS_16
	movl	%ecx,-8(%rbp)
	movw	%dx,-16(%rbp)
.Ll124:
# [440] ramw^[addr shr 1]:=w;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movl	-8(%rbp),%eax
	shrl	$1,%eax
	andl	$4294967295,%eax
	movw	-16(%rbp),%cx
	movw	%cx,(%rdx,%rax,2)
.Ll125:
# [441] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc27:
.Lt16:
.Ll126:

.section .text.n_retro_$$_lpoke$longint$longword,"x"
	.balign 16,0x90
.globl	RETRO_$$_LPOKE$LONGINT$LONGWORD
RETRO_$$_LPOKE$LONGINT$LONGWORD:
.Lc31:
.seh_proc RETRO_$$_LPOKE$LONGINT$LONGWORD
.Ll127:
# [446] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc33:
.Lc34:
	movq	%rsp,%rbp
.Lc35:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var addr located at rbp-8, size=OS_S32
# Var c located at rbp-16, size=OS_32
	movl	%ecx,-8(%rbp)
	movl	%edx,-16(%rbp)
.Ll128:
# [447] raml^[addr shr 2]:=c;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movl	-8(%rbp),%eax
	shrl	$2,%eax
	andl	$4294967295,%eax
	movl	-16(%rbp),%ecx
	movl	%ecx,(%rdx,%rax,4)
.Ll129:
# [448] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc32:
.Lt17:
.Ll130:

.section .text.n_retro_$$_slpoke$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_SLPOKE$LONGINT$LONGINT
RETRO_$$_SLPOKE$LONGINT$LONGINT:
.Lc36:
.seh_proc RETRO_$$_SLPOKE$LONGINT$LONGINT
.Ll131:
# [452] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc38:
.Lc39:
	movq	%rsp,%rbp
.Lc40:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var addr located at rbp-8, size=OS_S32
# Var i located at rbp-16, size=OS_S32
	movl	%ecx,-8(%rbp)
	movl	%edx,-16(%rbp)
.Ll132:
# [453] raml^[addr shr 2]:=i;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movl	-8(%rbp),%eax
	shrl	$2,%eax
	andl	$4294967295,%eax
	movl	-16(%rbp),%ecx
	movl	%ecx,(%rdx,%rax,4)
.Ll133:
# [454] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc37:
.Lt18:
.Ll134:

.section .text.n_retro_$$_peek$longint$$byte,"x"
	.balign 16,0x90
.globl	RETRO_$$_PEEK$LONGINT$$BYTE
RETRO_$$_PEEK$LONGINT$$BYTE:
.Lc41:
.seh_proc RETRO_$$_PEEK$LONGINT$$BYTE
.Ll135:
# [458] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc43:
.Lc44:
	movq	%rsp,%rbp
.Lc45:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var addr located at rbp-8, size=OS_S32
# Var $result located at rbp-16, size=OS_8
	movl	%ecx,-8(%rbp)
.Ll136:
# [459] peek:=ramb^[addr];
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movl	-8(%rbp),%eax
	movb	(%rdx,%rax,1),%al
	movb	%al,-16(%rbp)
.Ll137:
# [460] end;
	movzbl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc42:
.Lt19:
.Ll138:

.section .text.n_retro_$$_dpeek$longint$$word,"x"
	.balign 16,0x90
.globl	RETRO_$$_DPEEK$LONGINT$$WORD
RETRO_$$_DPEEK$LONGINT$$WORD:
.Lc46:
.seh_proc RETRO_$$_DPEEK$LONGINT$$WORD
.Ll139:
# [464] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc48:
.Lc49:
	movq	%rsp,%rbp
.Lc50:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var addr located at rbp-8, size=OS_S32
# Var $result located at rbp-16, size=OS_16
	movl	%ecx,-8(%rbp)
.Ll140:
# [465] dpeek:=ramb^[addr]+256*ramb^[addr+1];
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movslq	-8(%rbp),%rax
	movzbl	1(%rdx,%rax,1),%eax
	shll	$8,%eax
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movl	-8(%rbp),%edx
	movzbl	(%rcx,%rdx,1),%edx
	leal	(%eax,%edx),%eax
	movw	%ax,-16(%rbp)
.Ll141:
# [466] end;
	movzwl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc47:
.Lt20:
.Ll142:

.section .text.n_retro_$$_lpeek$longint$$longword,"x"
	.balign 16,0x90
.globl	RETRO_$$_LPEEK$LONGINT$$LONGWORD
RETRO_$$_LPEEK$LONGINT$$LONGWORD:
.Lc51:
.seh_proc RETRO_$$_LPEEK$LONGINT$$LONGWORD
.Ll143:
# [470] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc53:
.Lc54:
	movq	%rsp,%rbp
.Lc55:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var addr located at rbp-8, size=OS_S32
# Var $result located at rbp-16, size=OS_32
	movl	%ecx,-8(%rbp)
.Ll144:
# [471] lpeek:=raml^[addr shr 2];
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movl	-8(%rbp),%eax
	shrl	$2,%eax
	andl	$4294967295,%eax
	movl	(%rdx,%rax,4),%eax
	movl	%eax,-16(%rbp)
.Ll145:
# [472] end;
	movl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc52:
.Lt21:
.Ll146:

.section .text.n_retro_$$_slpeek$longint$$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_SLPEEK$LONGINT$$LONGINT
RETRO_$$_SLPEEK$LONGINT$$LONGINT:
.Lc56:
.seh_proc RETRO_$$_SLPEEK$LONGINT$$LONGINT
.Ll147:
# [476] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc58:
.Lc59:
	movq	%rsp,%rbp
.Lc60:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var addr located at rbp-8, size=OS_S32
# Var $result located at rbp-16, size=OS_S32
	movl	%ecx,-8(%rbp)
.Ll148:
# [477] slpeek:=raml^[addr shr 2];
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movl	-8(%rbp),%eax
	shrl	$2,%eax
	andl	$4294967295,%eax
	movl	(%rdx,%rax,4),%eax
	movl	%eax,-16(%rbp)
.Ll149:
# [478] end;
	movl	-16(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc57:
.Lt22:
.Ll150:

.section .text.n_retro_$$_gettime$$int64,"x"
	.balign 16,0x90
.globl	RETRO_$$_GETTIME$$INT64
RETRO_$$_GETTIME$$INT64:
.Lc61:
# Temps allocated between rbp-40 and rbp-24
.seh_proc RETRO_$$_GETTIME$$INT64
.Ll151:
# [491] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc63:
.Lc64:
	movq	%rsp,%rbp
.Lc65:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
# Var $result located at rbp-8, size=OS_S64
# Var pf located at rbp-16, size=OS_S64
# Var tm located at rbp-24, size=OS_S64
.Ll152:
# [492] QueryPerformanceFrequency(pf);
	leaq	-16(%rbp),%rax
	movq	%rax,%rcx
	call	_$dll$kernel32$QueryPerformanceFrequency
.Ll153:
# [493] QueryPerformanceCounter(tm);
	leaq	-24(%rbp),%rcx
	call	_$dll$kernel32$QueryPerformanceCounter
.Ll154:
# [494] gettime:=round(1000000*tm/pf);
	movq	-24(%rbp),%rax
	imulq	$1000000,%rax,%rax
	cvtsi2sd	%rax,%xmm0
	cvtsi2sdq	-16(%rbp),%xmm1
	divsd	%xmm1,%xmm0
	cvtsd2siq	%xmm0,%rax
	movq	%rax,-8(%rbp)
.Ll155:
# [495] end;
	movq	-8(%rbp),%rax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc62:
.Lt14:
.Ll156:

.section .text.n_retro_$$_readkeybuffer$$longword,"x"
	.balign 16,0x90
.globl	RETRO_$$_READKEYBUFFER$$LONGWORD
RETRO_$$_READKEYBUFFER$$LONGWORD:
.Lc66:
.seh_proc RETRO_$$_READKEYBUFFER$$LONGWORD
.Ll157:
# [499] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc68:
.Lc69:
	movq	%rsp,%rbp
.Lc70:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var $result located at rbp-8, size=OS_32
.Ll158:
# [500] if be<>bs then
	movb	U_$RETRO_$$_BE(%rip),%al
	cmpb	U_$RETRO_$$_BS(%rip),%al
	je	.Lj518
.Ll159:
# [502] result:=keybuffer[bs];
	movzbl	U_$RETRO_$$_BS(%rip),%eax
	leaq	U_$RETRO_$$_KEYBUFFER(%rip),%rdx
	movl	(%rdx,%rax,4),%eax
	movl	%eax,-8(%rbp)
.Ll160:
# [503] bs+=1
	movzbl	U_$RETRO_$$_BS(%rip),%eax
.Ll161:
# [504] end
	leal	1(%eax),%eax
.Ll162:
	movb	%al,U_$RETRO_$$_BS(%rip)
	jmp	.Lj523
.Lj518:
.Ll163:
# [505] else result:=$FFFFFFFF;
	movl	$4294967295,-8(%rbp)
.Lj523:
.Ll164:
# [506] end;
	movl	-8(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc67:
.Lt32:
.Ll165:

.section .text.n_retro_$$_writekeybuffer$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_WRITEKEYBUFFER$LONGINT
RETRO_$$_WRITEKEYBUFFER$LONGINT:
.Lc71:
.seh_proc RETRO_$$_WRITEKEYBUFFER$LONGINT
.Ll166:
# [510] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc73:
.Lc74:
	movq	%rsp,%rbp
.Lc75:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var a located at rbp-8, size=OS_S32
	movl	%ecx,-8(%rbp)
.Ll167:
# [511] if be<>bs-1 then
	movzbl	U_$RETRO_$$_BS(%rip),%eax
	leaq	-1(%rax),%rax
	movzbl	U_$RETRO_$$_BE(%rip),%edx
	cmpq	%rdx,%rax
	je	.Lj529
.Ll168:
# [513] keybuffer[be]:=a;
	movzbl	U_$RETRO_$$_BE(%rip),%eax
	movl	-8(%rbp),%ecx
	leaq	U_$RETRO_$$_KEYBUFFER(%rip),%rdx
	movl	%ecx,(%rdx,%rax,4)
.Ll169:
# [514] be+=1;
	movzbl	U_$RETRO_$$_BE(%rip),%eax
	leal	1(%eax),%eax
	movb	%al,U_$RETRO_$$_BE(%rip)
.Lj529:
.Ll170:
# [516] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc72:
.Lt33:
.Ll171:

.section .text.n_retro_$$_sdlevents,"x"
	.balign 16,0x90
.globl	RETRO_$$_SDLEVENTS
RETRO_$$_SDLEVENTS:
.Lc76:
.seh_proc RETRO_$$_SDLEVENTS
.Ll172:
# [537] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc78:
.Lc79:
	movq	%rsp,%rbp
.Lc80:
	leaq	-112(%rsp),%rsp
.seh_stackalloc 112
.seh_endprologue
# Var qq located at rbp-8, size=OS_S32
# Var event located at rbp-64, size=OS_NO
# Var key located at rbp-72, size=OS_32
	.balign 8,0x90
.Lj536:
.Ll173:
# [539] qq:=sdl_pollevent(@event)  ;
	leaq	-64(%rbp),%rax
	movq	%rax,%rcx
	call	_$dll$sdl2$SDL_PollEvent
	movl	%eax,-8(%rbp)
.Ll174:
# [540] if (qq>0) and (event.type_=sdl_windowevent) then if event.window.event=SDL_WINDOWEVENT_ENTER then needrestart:=1;
	cmpl	$0,-8(%rbp)
	jng	.Lj544
	cmpl	$512,-64(%rbp)
	jne	.Lj544
	cmpb	$10,-52(%rbp)
	jne	.Lj547
	movb	$1,TC_$RETRO_$$_NEEDRESTART(%rip)
.Lj547:
.Lj544:
.Ll175:
# [542] if (qq<>0) and (event.type_=sdl_mousemotion)  then
	cmpl	$0,-8(%rbp)
	je	.Lj551
	cmpl	$1024,-64(%rbp)
	jne	.Lj551
.Ll176:
# [544] x:=event.motion.x;
	movl	-44(%rbp),%eax
	movl	%eax,TC_$RETRO$_$SDLEVENTS_$$_X(%rip)
.Ll177:
# [545] y:=event.motion.y;
	movl	-40(%rbp),%eax
	movl	%eax,TC_$RETRO$_$SDLEVENTS_$$_Y(%rip)
.Ll178:
# [546] if x<64 then x:=64;
	cmpl	$64,TC_$RETRO$_$SDLEVENTS_$$_X(%rip)
	jnl	.Lj558
	movl	$64,TC_$RETRO$_$SDLEVENTS_$$_X(%rip)
.Lj558:
.Ll179:
# [547] if x>1855 then x:=1855;
	cmpl	$1855,TC_$RETRO$_$SDLEVENTS_$$_X(%rip)
	jng	.Lj562
	movl	$1855,TC_$RETRO$_$SDLEVENTS_$$_X(%rip)
.Lj562:
.Ll180:
# [548] if y<40 then y:=40;
	cmpl	$40,TC_$RETRO$_$SDLEVENTS_$$_Y(%rip)
	jnl	.Lj566
	movl	$40,TC_$RETRO$_$SDLEVENTS_$$_Y(%rip)
.Lj566:
.Ll181:
# [549] if y>1159 then y:=1159;
	cmpl	$1159,TC_$RETRO$_$SDLEVENTS_$$_Y(%rip)
	jng	.Lj570
	movl	$1159,TC_$RETRO$_$SDLEVENTS_$$_Y(%rip)
.Lj570:
.Ll182:
# [550] ramw^[$30016]:=x;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movw	TC_$RETRO$_$SDLEVENTS_$$_X(%rip),%ax
	movw	%ax,393260(%rdx)
.Ll183:
# [551] ramw^[$30017]:=y;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movw	TC_$RETRO$_$SDLEVENTS_$$_Y(%rip),%dx
	movw	%dx,393262(%rax)
	jmp	.Lj577
.Lj551:
.Ll184:
# [554] else if (qq<>0) and (event.type_=sdl_mousebuttondown)  then
	cmpl	$0,-8(%rbp)
	je	.Lj579
	cmpl	$1025,-64(%rbp)
	jne	.Lj579
.Ll185:
# [556] if event.button.state=sdl_pressed then
	cmpb	$1,-47(%rbp)
	jne	.Lj587
.Ll186:
# [558] ramb^[$60033]:=2;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movb	$2,393267(%rax)
.Ll187:
# [559] ramb^[$60030]:=event.button.button;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movb	-48(%rbp),%al
	movb	%al,393264(%rdx)
	jmp	.Lj587
.Lj579:
.Ll188:
# [562] else if (qq<>0) and (event.type_=sdl_keydown) then
	cmpl	$0,-8(%rbp)
	je	.Lj589
	cmpl	$768,-64(%rbp)
	jne	.Lj589
.Ll189:
# [564] ramb^[$6002B]:=1;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movb	$1,393259(%rax)
.Ll190:
# [565] key:=event.key.keysym.sym;
	movl	-44(%rbp),%eax
	movl	%eax,-72(%rbp)
.Ll191:
# [566] key:=(key shr 24) shl 8 + (key and $FF);
	movl	-72(%rbp),%eax
	shrl	$24,%eax
	shll	$8,%eax
	movl	-72(%rbp),%edx
	andl	$255,%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-72(%rbp)
.Ll192:
# [567] if event.key.repeat_ = 0 then writekeybuffer(key);
	cmpb	$0,-51(%rbp)
	jne	.Lj598
	movl	-72(%rbp),%ecx
	call	RETRO_$$_WRITEKEYBUFFER$LONGINT
.Lj598:
.Ll193:
# [568] dpoke($60028,key);
	movzwl	-72(%rbp),%edx
	movl	$393256,%ecx
	call	RETRO_$$_DPOKE$LONGINT$WORD
	jmp	.Lj605
.Lj589:
.Ll194:
# [570] else if (qq<>0) and (event.type_=sdl_keyUP) then
	cmpl	$0,-8(%rbp)
	je	.Lj607
	cmpl	$769,-64(%rbp)
	jne	.Lj607
.Ll195:
# [572] ramb^[$6002B]:=0;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movb	$0,393259(%rax)
.Ll196:
# [573] key:=event.key.keysym.sym;
	movl	-44(%rbp),%eax
	movl	%eax,-72(%rbp)
.Ll197:
# [574] key:=(key shr 24) shl 8 + (key and $FF);
	movl	-72(%rbp),%eax
	shrl	$24,%eax
	shll	$8,%eax
	movl	-72(%rbp),%edx
	andl	$255,%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-72(%rbp)
.Ll198:
# [575] writekeybuffer(key+$10000);
	movl	-72(%rbp),%eax
	leal	65536(%eax),%ecx
	call	RETRO_$$_WRITEKEYBUFFER$LONGINT
.Ll199:
# [577] dpoke($6002A,key);
	movzwl	-72(%rbp),%edx
	movl	$393258,%ecx
	call	RETRO_$$_DPOKE$LONGINT$WORD
.Lj607:
.Lj605:
.Lj587:
.Lj577:
.Ll200:
# [579] until qq=0;
	cmpl	$0,-8(%rbp)
	jne	.Lj536
.Ll201:
# [580] end;
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc77:
.Lt35:
.Ll202:

.section .text.n_retro_$$_blit$crc5a667533,"x"
	.balign 16,0x90
.globl	RETRO_$$_BLIT$crc5A667533
RETRO_$$_BLIT$crc5A667533:
.Lc81:
.seh_proc RETRO_$$_BLIT$crc5A667533
.Ll203:
# [597] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc83:
.Lc84:
	movq	%rsp,%rbp
.Lc85:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var from located at rbp-8, size=OS_S32
# Var x located at rbp-16, size=OS_S32
# Var y located at rbp-24, size=OS_S32
# Var too located at rbp-32, size=OS_S32
# Var x2 located at rbp+48, size=OS_S32
# Var y2 located at rbp+56, size=OS_S32
# Var length located at rbp+64, size=OS_S32
# Var lines located at rbp+72, size=OS_S32
# Var bpl1 located at rbp+80, size=OS_S32
# Var bpl2 located at rbp+88, size=OS_S32
# Var i located at rbp-40, size=OS_S32
# Var j located at rbp-48, size=OS_S32
# Var b1 located at rbp-56, size=OS_S32
# Var b2 located at rbp-64, size=OS_S32
	movl	%ecx,-8(%rbp)
	movl	%edx,-16(%rbp)
	movl	%r8d,-24(%rbp)
	movl	%r9d,-32(%rbp)
.Ll204:
# [598] if raml^[$18002]<16 then
	movq	U_$RETRO_$$_R1(%rip),%rax
	cmpl	$16,393224(%rax)
	jnl	.Lj624
.Ll205:
# [600] from:=from+x;
	movl	-8(%rbp),%eax
	movl	-16(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-8(%rbp)
.Ll206:
# [601] too:=too+x2;
	movl	-32(%rbp),%eax
	movl	48(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-32(%rbp)
.Ll207:
# [602] for i:=0 to lines-1 do
	movl	72(%rbp),%eax
	leal	-1(%eax),%eax
	movl	$0,-40(%rbp)
	cmpl	-40(%rbp),%eax
	jl	.Lj645
	subl	$1,-40(%rbp)
	.balign 8,0x90
.Lj633:
	addl	$1,-40(%rbp)
.Ll208:
# [604] b2:=too+bpl2*(i+y2);
	movl	-40(%rbp),%edx
	movl	56(%rbp),%ecx
	leal	(%edx,%ecx),%ecx
	movl	88(%rbp),%edx
	imull	%ecx,%edx
	movl	-32(%rbp),%ecx
	leal	(%edx,%ecx),%edx
	movl	%edx,-64(%rbp)
.Ll209:
# [605] b1:=from+bpl1*(i+y);
	movl	-40(%rbp),%ecx
	movl	-24(%rbp),%edx
	leal	(%ecx,%edx),%ecx
	movl	80(%rbp),%edx
	imull	%ecx,%edx
	movl	-8(%rbp),%ecx
	leal	(%edx,%ecx),%edx
	movl	%edx,-56(%rbp)
.Ll210:
# [606] for j:=0 to length-1 do
	movl	64(%rbp),%edx
	leal	-1(%edx),%edx
	movl	$0,-48(%rbp)
	cmpl	-48(%rbp),%edx
	jl	.Lj641
	subl	$1,-48(%rbp)
	.balign 8,0x90
.Lj642:
	addl	$1,-48(%rbp)
.Ll211:
# [607] ramb^[b2+j]:=ramb^[b1+j];
	movq	U_$RETRO_$$_R1(%rip),%r11
	movslq	-64(%rbp),%rcx
	movslq	-48(%rbp),%r8
	leaq	(%rcx,%r8),%r10
	movq	U_$RETRO_$$_R1(%rip),%r9
	movslq	-56(%rbp),%r8
	movslq	-48(%rbp),%rcx
	leaq	(%r8,%rcx),%rcx
	movb	(%r9,%rcx,1),%cl
	movb	%cl,(%r11,%r10,1)
.Ll212:
	cmpl	-48(%rbp),%edx
	jg	.Lj642
.Lj641:
.Ll213:
	cmpl	-40(%rbp),%eax
	jg	.Lj633
	jmp	.Lj645
.Lj624:
.Ll214:
# [610] else if (raml^[$18002]>=16) and (raml^[$18002]<32) then
	movq	U_$RETRO_$$_R1(%rip),%rax
	cmpl	$16,393224(%rax)
	jnge	.Lj647
	movq	U_$RETRO_$$_R1(%rip),%rax
	cmpl	$32,393224(%rax)
	jnl	.Lj647
.Ll215:
# [612] from:=(from shr 1)+x;
	movl	-8(%rbp),%eax
	shrl	$1,%eax
	movl	-16(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-8(%rbp)
.Ll216:
# [613] too:=(too shr 1)+x2;
	movl	-32(%rbp),%eax
	shrl	$1,%eax
	movl	48(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-32(%rbp)
.Ll217:
# [614] for i:=0 to lines-1 do
	movl	72(%rbp),%eax
	leal	-1(%eax),%eax
	movl	$0,-40(%rbp)
	cmpl	-40(%rbp),%eax
	jl	.Lj669
	subl	$1,-40(%rbp)
	.balign 8,0x90
.Lj657:
	addl	$1,-40(%rbp)
.Ll218:
# [616] b2:=too+bpl2*(i+y2);
	movl	-40(%rbp),%edx
	movl	56(%rbp),%ecx
	leal	(%edx,%ecx),%ecx
	movl	88(%rbp),%edx
	imull	%ecx,%edx
	movl	-32(%rbp),%ecx
	leal	(%edx,%ecx),%edx
	movl	%edx,-64(%rbp)
.Ll219:
# [617] b1:=from+bpl1*(i+y);
	movl	-40(%rbp),%edx
	movl	-24(%rbp),%ecx
	leal	(%edx,%ecx),%ecx
	movl	80(%rbp),%edx
	imull	%ecx,%edx
	movl	-8(%rbp),%ecx
	leal	(%edx,%ecx),%edx
	movl	%edx,-56(%rbp)
.Ll220:
# [618] for j:=0 to length-1 do
	movl	64(%rbp),%edx
	leal	-1(%edx),%edx
	movl	$0,-48(%rbp)
	cmpl	-48(%rbp),%edx
	jl	.Lj665
	subl	$1,-48(%rbp)
	.balign 8,0x90
.Lj666:
	addl	$1,-48(%rbp)
.Ll221:
# [619] ramw^[b2+j]:=ramw^[b1+j];
	movq	U_$RETRO_$$_R1(%rip),%r11
	movslq	-64(%rbp),%rcx
	movslq	-48(%rbp),%r8
	leaq	(%rcx,%r8),%r10
	movq	U_$RETRO_$$_R1(%rip),%r9
	movslq	-56(%rbp),%rcx
	movslq	-48(%rbp),%r8
	leaq	(%rcx,%r8),%rcx
	movw	(%r9,%rcx,2),%cx
	movw	%cx,(%r11,%r10,2)
.Ll222:
	cmpl	-48(%rbp),%edx
	jg	.Lj666
.Lj665:
.Ll223:
	cmpl	-40(%rbp),%eax
	jg	.Lj657
	jmp	.Lj669
.Lj647:
.Ll224:
# [624] from:=(from shr 2)+x;
	movl	-8(%rbp),%eax
	shrl	$2,%eax
	movl	-16(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-8(%rbp)
.Ll225:
# [625] too:=(too shr 2)+x2;
	movl	-32(%rbp),%eax
	shrl	$2,%eax
	movl	48(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-32(%rbp)
.Ll226:
# [626] for i:=0 to lines-1 do
	movl	72(%rbp),%eax
	leal	-1(%eax),%eax
	movl	$0,-40(%rbp)
	cmpl	-40(%rbp),%eax
	jl	.Lj677
	subl	$1,-40(%rbp)
	.balign 8,0x90
.Lj678:
	addl	$1,-40(%rbp)
.Ll227:
# [628] b2:=too+bpl2*(i+y2);
	movl	-40(%rbp),%ecx
	movl	56(%rbp),%edx
	leal	(%ecx,%edx),%ecx
	movl	88(%rbp),%edx
	imull	%ecx,%edx
	movl	-32(%rbp),%ecx
	leal	(%edx,%ecx),%edx
	movl	%edx,-64(%rbp)
.Ll228:
# [629] b1:=from+bpl1*(i+y);
	movl	-40(%rbp),%ecx
	movl	-24(%rbp),%edx
	leal	(%ecx,%edx),%ecx
	movl	80(%rbp),%edx
	imull	%ecx,%edx
	movl	-8(%rbp),%ecx
	leal	(%edx,%ecx),%edx
	movl	%edx,-56(%rbp)
.Ll229:
# [630] for j:=0 to length-1 do
	movl	64(%rbp),%edx
	leal	-1(%edx),%edx
	movl	$0,-48(%rbp)
	cmpl	-48(%rbp),%edx
	jl	.Lj686
	subl	$1,-48(%rbp)
	.balign 8,0x90
.Lj687:
	addl	$1,-48(%rbp)
.Ll230:
# [631] raml^[b2+j]:=raml^[b1+j];
	movq	U_$RETRO_$$_R1(%rip),%r11
	movslq	-64(%rbp),%rcx
	movslq	-48(%rbp),%r8
	leaq	(%rcx,%r8),%r10
	movq	U_$RETRO_$$_R1(%rip),%r9
	movslq	-56(%rbp),%r8
	movslq	-48(%rbp),%rcx
	leaq	(%r8,%rcx),%rcx
	movl	(%r9,%rcx,4),%ecx
	movl	%ecx,(%r11,%r10,4)
.Ll231:
	cmpl	-48(%rbp),%edx
	jg	.Lj687
.Lj686:
.Ll232:
	cmpl	-40(%rbp),%eax
	jg	.Lj678
.Lj677:
.Lj669:
.Lj645:
.Ll233:
# [634] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc82:
.Lt11:
.Ll234:

.section .text.n_retro_$$_graphics$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_GRAPHICS$LONGINT
RETRO_$$_GRAPHICS$LONGINT:
.Lc86:
.seh_proc RETRO_$$_GRAPHICS$LONGINT
.Ll235:
# [638] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc88:
.Lc89:
	movq	%rsp,%rbp
.Lc90:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var mode located at rbp-8, size=OS_S32
	movl	%ecx,-8(%rbp)
.Ll236:
# [639] raml^[$18001]:=$F000000;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$251658240,393220(%rax)
.Ll237:
# [640] case mode of
	movl	-8(%rbp),%eax
	cmpl	$16,%eax
	jl	.Lj695
	subl	$16,%eax
	jne	.Lj695
.Ll238:
# [644] raml^[$18002]:=16;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16,393224(%rax)
.Ll239:
# [645] raml^[$18008]:=1792;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$1792,393248(%rax)
.Ll240:
# [646] raml^[$18009]:=1120;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$1120,393252(%rax)
	jmp	.Lj694
.Lj695:
.Ll241:
# [652] raml^[$18002]:=16;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16,393224(%rax)
.Ll242:
# [653] raml^[$18008]:=1792;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$1792,393248(%rax)
.Ll243:
# [654] raml^[$18009]:=1120;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$1120,393252(%rax)
.Lj694:
.Ll244:
# [657] raml^[$18001]:=$F000000;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$251658240,393220(%rax)
.Ll245:
# [658] setataripallette(0);
	movl	$0,%ecx
	call	RETRO_$$_SETATARIPALLETTE$LONGINT
.Ll246:
# [660] cls(0);
	movl	$0,%ecx
	call	RETRO_$$_CLS$LONGINT
.Ll247:
# [661] end;
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc87:
.Lt3:
.Ll248:

.section .text.n_retro_$$_scrconvert$pointer$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_SCRCONVERT$POINTER$LONGINT
RETRO_$$_SCRCONVERT$POINTER$LONGINT:
.Lc91:
.seh_proc RETRO_$$_SCRCONVERT$POINTER$LONGINT
.Ll249:
# [673] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc93:
.Lc94:
	movq	%rsp,%rbp
.Lc95:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var screen located at rbp-8, size=OS_64
# Var buf located at rbp-16, size=OS_S32
# Var b located at rbp-24, size=OS_S32
# Var pi located at rbp-32, size=OS_64
# Var i located at rbp-40, size=OS_S32
# Var j located at rbp-48, size=OS_S32
# Var k located at rbp-56, size=OS_S32
# Var l located at rbp-64, size=OS_S32
	movq	%rcx,-8(%rbp)
	movl	%edx,-16(%rbp)
.Ll250:
# [674] buf:=buf shr 1;
	movl	-16(%rbp),%eax
	shrl	$1,%eax
	movl	%eax,-16(%rbp)
.Ll251:
# [675] pi:=screen;
	movq	-8(%rbp),%rax
	movq	%rax,-32(%rbp)
.Ll252:
# [676] b:=raml^[$18003];
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393228(%rax),%eax
	movl	%eax,-24(%rbp)
.Ll253:
# [677] l:=0;
	movl	$0,-64(%rbp)
.Ll254:
# [678] for i:=0 to 39 do begin {if peek($70001)=0 then b:=lpeek($10000+4*((i div 4)+lpeek($60000)  ) mod 1024);} for j:=0 to 1919  do (pi+i*1920+j)^:=b; end;
	movl	$0,-40(%rbp)
	subl	$1,-40(%rbp)
	.balign 8,0x90
.Lj727:
	addl	$1,-40(%rbp)
	movl	$0,-48(%rbp)
	subl	$1,-48(%rbp)
	.balign 8,0x90
.Lj730:
	addl	$1,-48(%rbp)
	movslq	-40(%rbp),%rax
	imulq	$1920,%rax,%rax
	shlq	$2,%rax
	movq	-32(%rbp),%rdx
	leaq	(%rax,%rdx),%rdx
	movslq	-48(%rbp),%rax
	shlq	$2,%rax
	leaq	(%rdx,%rax),%rdx
	movl	-24(%rbp),%eax
	movl	%eax,(%rdx)
	cmpl	$1919,-48(%rbp)
	jl	.Lj730
	cmpl	$39,-40(%rbp)
	jl	.Lj727
.Ll255:
# [679] k:=76800;
	movl	$76800,-56(%rbp)
.Ll256:
# [680] for i:=40 to 1159 do
	movl	$40,-40(%rbp)
	subl	$1,-40(%rbp)
	.balign 8,0x90
.Lj737:
	addl	$1,-40(%rbp)
.Ll257:
# [682] for j:=0 to 63 do begin {if peek($70001)=0 then b:=lpeek($10000+4*((i div 4)+lpeek($60000) ) mod 1024); } (pi+k)^:=b; k+=1; end;
	movl	$0,-48(%rbp)
	subl	$1,-48(%rbp)
	.balign 8,0x90
.Lj740:
	addl	$1,-48(%rbp)
	movslq	-56(%rbp),%rax
	shlq	$2,%rax
	movq	-32(%rbp),%rdx
	leaq	(%rax,%rdx),%rdx
	movl	-24(%rbp),%eax
	movl	%eax,(%rdx)
	movl	-56(%rbp),%eax
	leal	1(%eax),%eax
	movl	%eax,-56(%rbp)
	cmpl	$63,-48(%rbp)
	jl	.Lj740
.Ll258:
# [683] for j:=0 to 1791 do begin
	movl	$0,-48(%rbp)
	subl	$1,-48(%rbp)
	.balign 8,0x90
.Lj747:
	addl	$1,-48(%rbp)
.Ll259:
# [684] (pi+k)^:=raml^[$4000+ramw^[buf+l]]; k+=1; l+=1; end;
	movq	U_$RETRO_$$_R1(%rip),%r8
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	-16(%rbp),%rdx
	movslq	-64(%rbp),%rax
	leaq	(%rdx,%rax),%rax
	movzwl	(%rcx,%rax,2),%ecx
	movslq	-56(%rbp),%rax
	shlq	$2,%rax
	movq	-32(%rbp),%rdx
	leaq	(%rax,%rdx),%rdx
	movl	65536(%r8,%rcx,4),%eax
	movl	%eax,(%rdx)
	movl	-56(%rbp),%eax
	leal	1(%eax),%eax
	movl	%eax,-56(%rbp)
	movl	-64(%rbp),%eax
	leal	1(%eax),%eax
	movl	%eax,-64(%rbp)
.Ll260:
	cmpl	$1791,-48(%rbp)
	jl	.Lj747
.Ll261:
# [685] for j:=0 to 63 do begin (pi+k)^:=b; k+=1; end;
	movl	$0,-48(%rbp)
	subl	$1,-48(%rbp)
	.balign 8,0x90
.Lj756:
	addl	$1,-48(%rbp)
	movslq	-56(%rbp),%rax
	shlq	$2,%rax
	movq	-32(%rbp),%rdx
	leaq	(%rax,%rdx),%rdx
	movl	-24(%rbp),%eax
	movl	%eax,(%rdx)
	movl	-56(%rbp),%eax
	leal	1(%eax),%eax
	movl	%eax,-56(%rbp)
	cmpl	$63,-48(%rbp)
	jl	.Lj756
.Ll262:
	cmpl	$1159,-40(%rbp)
	jl	.Lj737
.Ll263:
# [687] for i:=1160 to 1199 do begin {if peek($70001)=0 then b:=lpeek($10000+4*((i div 4)+lpeek($60000) ) mod 1024); }for j:=0 to 1919  do (pi+i*1920+j)^:=b; end;
	movl	$1160,-40(%rbp)
	subl	$1,-40(%rbp)
	.balign 8,0x90
.Lj763:
	addl	$1,-40(%rbp)
	movl	$0,-48(%rbp)
	subl	$1,-48(%rbp)
	.balign 8,0x90
.Lj766:
	addl	$1,-48(%rbp)
	movslq	-40(%rbp),%rax
	imulq	$1920,%rax,%rax
	shlq	$2,%rax
	movq	-32(%rbp),%rdx
	leaq	(%rax,%rdx),%rdx
	movslq	-48(%rbp),%rax
	shlq	$2,%rax
	leaq	(%rdx,%rax),%rax
	movl	-24(%rbp),%edx
	movl	%edx,(%rax)
	cmpl	$1919,-48(%rbp)
	jl	.Lj766
	cmpl	$1199,-40(%rbp)
	jl	.Lj763
.Ll264:
# [689] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc92:
.Lt4:
.Ll265:

.section .text.n_retro_$$_sprite$pointer,"x"
	.balign 16,0x90
.globl	RETRO_$$_SPRITE$POINTER
RETRO_$$_SPRITE$POINTER:
.Lc96:
# Temps allocated between rbp-160 and rbp-144
.seh_proc RETRO_$$_SPRITE$POINTER
.Ll266:
# [709] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc98:
.Lc99:
	movq	%rsp,%rbp
.Lc100:
	leaq	-192(%rsp),%rsp
.seh_stackalloc 192
	movq	%rbx,-160(%rbp)
	movq	%rsi,-152(%rbp)
.seh_savereg %rbx, 32
.seh_savereg %rsi, 40
.seh_endprologue
# Var screen located at rbp-8, size=OS_64
# Var offset located at rbp-16, size=OS_S32
# Var pixel located at rbp-24, size=OS_S32
# Var spritebase located at rbp-32, size=OS_S32
# Var spritedefs located at rbp-40, size=OS_S32
# Var ctrl1 located at rbp-48, size=OS_S32
# Var screenbase located at rbp-56, size=OS_64
# Var pi located at rbp-64, size=OS_64
# Var xpos located at rbp-72, size=OS_S32
# Var ypos located at rbp-80, size=OS_S32
# Var xzoom located at rbp-88, size=OS_S32
# Var yzoom located at rbp-96, size=OS_S32
# Var i located at rbp-104, size=OS_S32
# Var j located at rbp-112, size=OS_S32
# Var k located at rbp-120, size=OS_S32
# Var l located at rbp-128, size=OS_S32
# Var m located at rbp-136, size=OS_S32
# Var mask located at rbp-144, size=OS_32
	movq	%rcx,-8(%rbp)
.Ll267:
# [710] pi:=screen;
	movq	-8(%rbp),%rax
	movq	%rax,-64(%rbp)
.Ll268:
# [711] spritebase:=$60040;
	movl	$393280,-32(%rbp)
.Ll269:
# [712] spritedefs:=$52000;
	movl	$335872,-40(%rbp)
.Ll270:
# [713] t:=gettime;
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,U_$RETRO_$$_T(%rip)
.Ll271:
# [714] for i:=0 to 7 do
	movl	$0,-104(%rbp)
	subl	$1,-104(%rbp)
	.balign 8,0x90
.Lj781:
	addl	$1,-104(%rbp)
.Ll272:
# [716] mask:=1 shl (i+24);
	movslq	-104(%rbp),%rax
	leaq	24(%rax),%rcx
	movl	$1,%eax
	movslq	%ecx,%rcx
	shll	%cl,%eax
	movl	%eax,-144(%rbp)
.Ll273:
# [717] ctrl1:=lpeek(spritebase);
	movl	-32(%rbp),%ecx
	call	RETRO_$$_LPEEK$LONGINT$$LONGWORD
	movl	%eax,-48(%rbp)
.Ll274:
# [718] spritebase+=4;
	movl	-32(%rbp),%eax
	leal	4(%eax),%eax
	movl	%eax,-32(%rbp)
.Ll275:
# [719] ypos:=ctrl1 shr 16;
	movl	-48(%rbp),%eax
	shrl	$16,%eax
	movl	%eax,-80(%rbp)
.Ll276:
# [720] xpos:=ctrl1 and $FFFF;
	movl	-48(%rbp),%eax
	andl	$65535,%eax
	movl	%eax,-72(%rbp)
.Ll277:
# [721] ctrl1:=lpeek(spritebase);
	movl	-32(%rbp),%ecx
	call	RETRO_$$_LPEEK$LONGINT$$LONGWORD
	movl	%eax,-48(%rbp)
.Ll278:
# [722] spritebase+=4;
	movl	-32(%rbp),%eax
	leal	4(%eax),%eax
	movl	%eax,-32(%rbp)
.Ll279:
# [723] yzoom:=(ctrl1 shr 16) and $7FFF ;
	movl	-48(%rbp),%eax
	shrl	$16,%eax
	andl	$32767,%eax
	movl	%eax,-96(%rbp)
.Ll280:
# [724] if yzoom>8 then yzoom:=8;
	cmpl	$8,-96(%rbp)
	jng	.Lj803
	movl	$8,-96(%rbp)
.Lj803:
.Ll281:
# [725] if yzoom<1 then yzoom:=1;
	cmpl	$1,-96(%rbp)
	jnl	.Lj807
	movl	$1,-96(%rbp)
.Lj807:
.Ll282:
# [726] xzoom:=ctrl1 and $7FFF ;
	movl	-48(%rbp),%eax
	andl	$32767,%eax
	movl	%eax,-88(%rbp)
.Ll283:
# [727] if xzoom>8 then xzoom:=8;
	cmpl	$8,-88(%rbp)
	jng	.Lj813
	movl	$8,-88(%rbp)
.Lj813:
.Ll284:
# [728] if xzoom<1 then xzoom:=1;
	cmpl	$1,-88(%rbp)
	jnl	.Lj817
	movl	$1,-88(%rbp)
.Lj817:
.Ll285:
# [729] if (xpos>2048) or (ypos>2048) then
	cmpl	$2048,-72(%rbp)
	jg	.Lj820
	cmpl	$2048,-80(%rbp)
	jng	.Lj821
.Lj820:
.Ll286:
# [731] spritedefs+=4096;
	movl	-40(%rbp),%eax
	leal	4096(%eax),%eax
	movl	%eax,-40(%rbp)
.Ll287:
# [732] goto p100;
	jmp	.Lj825
.Lj821:
.Ll288:
# [734] for l:=0 to 31 do
	movl	$0,-128(%rbp)
	subl	$1,-128(%rbp)
	.balign 8,0x90
.Lj828:
	addl	$1,-128(%rbp)
.Ll289:
# [736] for m:=1 to yzoom do
	movl	-96(%rbp),%ebx
	movl	$1,-136(%rbp)
	cmpl	-136(%rbp),%ebx
	jl	.Lj832
	subl	$1,-136(%rbp)
	.balign 8,0x90
.Lj833:
	addl	$1,-136(%rbp)
.Ll290:
# [738] offset:=xpos+1920*(ypos+yzoom*l+m-1);
	movl	-96(%rbp),%edx
	movl	-128(%rbp),%eax
	imull	%edx,%eax
	movl	-80(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	-136(%rbp),%edx
	leal	(%eax,%edx),%eax
	leal	-1(%eax),%eax
	imull	$1920,%eax,%edx
	movl	-72(%rbp),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,-16(%rbp)
.Ll291:
# [739] screenbase:=pi+offset;
	movslq	-16(%rbp),%rax
	shlq	$2,%rax
	movq	-64(%rbp),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-56(%rbp)
.Ll292:
# [740] for j:=0 to 31 do
	movl	$0,-112(%rbp)
	subl	$1,-112(%rbp)
	.balign 8,0x90
.Lj840:
	addl	$1,-112(%rbp)
.Ll293:
# [742] for k:=1 to xzoom do
	movl	-88(%rbp),%esi
	movl	$1,-120(%rbp)
	cmpl	-120(%rbp),%esi
	jl	.Lj844
	subl	$1,-120(%rbp)
	.balign 8,0x90
.Lj845:
	addl	$1,-120(%rbp)
.Ll294:
# [744] pixel:=lpeek(spritedefs);
	movl	-40(%rbp),%ecx
	call	RETRO_$$_LPEEK$LONGINT$$LONGWORD
	movl	%eax,-24(%rbp)
.Ll295:
# [745] if ((screenbase^ and mask)=0) and (offset<2304000) and (pixel<>0) then screenbase^:=pixel;
	movq	-56(%rbp),%rax
	movl	(%rax),%edx
	movl	-144(%rbp),%eax
	andl	%edx,%eax
	testl	%eax,%eax
	jne	.Lj851
	cmpl	$2304000,-16(%rbp)
	jnl	.Lj851
	cmpl	$0,-24(%rbp)
	je	.Lj851
	movq	-56(%rbp),%rdx
	movl	-24(%rbp),%eax
	movl	%eax,(%rdx)
.Lj851:
.Ll296:
# [746] screenbase+=1;
	movq	-56(%rbp),%rax
	leaq	4(%rax),%rax
	movq	%rax,-56(%rbp)
.Ll297:
	cmpl	-120(%rbp),%esi
	jg	.Lj845
.Lj844:
.Ll298:
# [748] spritedefs+=4;
	movl	-40(%rbp),%eax
	leal	4(%eax),%eax
	movl	%eax,-40(%rbp)
.Ll299:
	cmpl	$31,-112(%rbp)
	jl	.Lj840
.Ll300:
# [751] end;
	movl	-40(%rbp),%eax
	leal	-128(%eax),%eax
.Ll301:
# [750] spritedefs-=128
	movl	%eax,-40(%rbp)
.Ll302:
	cmpl	-136(%rbp),%ebx
	jg	.Lj833
.Lj832:
.Ll303:
# [752] spritedefs+=128;
	movl	-40(%rbp),%eax
	leal	128(%eax),%eax
	movl	%eax,-40(%rbp)
.Ll304:
	cmpl	$31,-128(%rbp)
	jl	.Lj828
.Lj825:
.Ll305:
	cmpl	$7,-104(%rbp)
	jl	.Lj781
.Ll306:
# [756] ts:=gettime-t;
	call	RETRO_$$_GETTIME$$INT64
	movq	U_$RETRO_$$_T(%rip),%rdx
	subq	%rdx,%rax
	movq	%rax,U_$RETRO_$$_TS(%rip)
.Ll307:
# [758] end;
	movq	-160(%rbp),%rbx
	movq	-152(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc97:
.Lt34:
.Ll308:

.section .text.n_retro_$$_setataripallette$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_SETATARIPALLETTE$LONGINT
RETRO_$$_SETATARIPALLETTE$LONGINT:
.Lc101:
.seh_proc RETRO_$$_SETATARIPALLETTE$LONGINT
.Ll309:
# [766] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc103:
.Lc104:
	movq	%rsp,%rbp
.Lc105:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var bank located at rbp-8, size=OS_S32
# Var fh located at rbp-16, size=OS_S32
	movl	%ecx,-8(%rbp)
.Ll310:
# [767] fh:=fileopen('./ataripalette.def',$40);
	leaq	_$RETRO$_Ld9(%rip),%rax
	movq	%rax,%rcx
	movl	$64,%edx
	call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$QWORD
	movl	%eax,-16(%rbp)
.Ll311:
# [768] fileread(fh,raml^[$4000+256*bank],1024);
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movslq	-8(%rbp),%rax
	shlq	$8,%rax
	leaq	65536(%rdx,%rax,4),%rdx
	movslq	-16(%rbp),%rcx
	movl	$1024,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll312:
# [769] fileclose(fh);
	movslq	-16(%rbp),%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll313:
# [770] end;
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc102:
.Lt5:
.Ll314:

.section .text.n_retro_$$_sethidecolor$longint$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
RETRO_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT:
.Lc106:
.seh_proc RETRO_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
.Ll315:
# [774] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc108:
.Lc109:
	movq	%rsp,%rbp
.Lc110:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# Var c located at rbp-8, size=OS_S32
# Var bank located at rbp-16, size=OS_S32
# Var mask located at rbp-24, size=OS_S32
	movl	%ecx,-8(%rbp)
	movl	%edx,-16(%rbp)
	movl	%r8d,-24(%rbp)
.Ll316:
# [775] raml^[$4000+256*bank+c]+=(mask shl 24);
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	-16(%rbp),%rax
	shlq	$8,%rax
	leaq	16384(%rax),%rax
	movslq	-8(%rbp),%rdx
	leaq	(%rax,%rdx),%rdx
	movl	-24(%rbp),%eax
	shll	$24,%eax
	movl	(%rcx,%rdx,4),%edx
	leal	(%edx,%eax),%r8d
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	-16(%rbp),%rax
	shlq	$8,%rax
	leaq	16384(%rax),%rdx
	movslq	-8(%rbp),%rax
	leaq	(%rdx,%rax),%rax
	movl	%r8d,(%rcx,%rax,4)
.Ll317:
# [776] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc107:
.Lt23:
.Ll318:

.section .text.n_retro_$$_cls$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_CLS$LONGINT
RETRO_$$_CLS$LONGINT:
.Lc111:
.seh_proc RETRO_$$_CLS$LONGINT
.Ll319:
# [782] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc113:
.Lc114:
	movq	%rsp,%rbp
.Lc115:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# Var c located at rbp-8, size=OS_S32
# Var c2 located at rbp-16, size=OS_S32
# Var i located at rbp-24, size=OS_S32
# Var l located at rbp-32, size=OS_S32
	movl	%ecx,-8(%rbp)
.Ll320:
# [783] c:=c mod 65535;
	movslq	-8(%rbp),%rax
	cqto
	movq	$65535,%rcx
	idivq	%rcx
	movl	%edx,-8(%rbp)
.Ll321:
# [785] l:=(raml^[$18008]*raml^[$18009]) div 2 ;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movslq	393248(%rax),%rdx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movslq	393252(%rax),%rax
	imulq	%rdx,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$1,%rdx
	addq	%rdx,%rax
	sarq	$1,%rax
	movl	%eax,-32(%rbp)
.Ll322:
# [786] c:=c+(c shl 16);
	movl	-8(%rbp),%eax
	shll	$16,%eax
	movl	-8(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-8(%rbp)
.Ll323:
# [787] for i:=0 to l do raml^[$3C00000+i]:=c;
	movl	-32(%rbp),%eax
	movl	$0,-24(%rbp)
	cmpl	-24(%rbp),%eax
	jl	.Lj897
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj898:
	addl	$1,-24(%rbp)
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movslq	-24(%rbp),%rcx
	movl	-8(%rbp),%r8d
	movl	%r8d,251658240(%rdx,%rcx,4)
	cmpl	-24(%rbp),%eax
	jg	.Lj898
.Lj897:
.Ll324:
# [789] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc112:
.Lt6:
.Ll325:

.section .text.n_retro_$$_putpixel$longint$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
RETRO_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT:
.Lc116:
.seh_proc RETRO_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
.Ll326:
# [803] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc118:
.Lc119:
	movq	%rsp,%rbp
.Lc120:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# Var x located at rbp-8, size=OS_S32
# Var y located at rbp-16, size=OS_S32
# Var color located at rbp-24, size=OS_S32
# Var adr located at rbp-32, size=OS_S32
	movl	%ecx,-8(%rbp)
	movl	%edx,-16(%rbp)
	movl	%r8d,-24(%rbp)
.Ll327:
# [805] if raml^[$18002]<16 then
	movq	U_$RETRO_$$_R1(%rip),%rax
	cmpl	$16,393224(%rax)
	jnl	.Lj904
.Ll328:
# [806] begin adr:=$F000000+x+1792*y; if adr<$FFFFFFF then ramb^[adr]:=color; end
	movl	-16(%rbp),%eax
	imull	$1792,%eax,%edx
	movl	-8(%rbp),%eax
	leal	251658240(%eax),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,-32(%rbp)
	cmpl	$268435455,-32(%rbp)
	jnl	.Lj911
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movl	-32(%rbp),%ecx
	movb	-24(%rbp),%al
	movb	%al,(%rdx,%rcx,1)
	jmp	.Lj911
.Lj904:
.Ll329:
# [807] else if (raml^[$18002]>=16) and (raml^[$18002]<32) then
	movq	U_$RETRO_$$_R1(%rip),%rax
	cmpl	$16,393224(%rax)
	jnge	.Lj913
	movq	U_$RETRO_$$_R1(%rip),%rax
	cmpl	$32,393224(%rax)
	jnl	.Lj913
.Ll330:
# [808] begin adr:=$7800000+x+1792*y; if adr<$7FFFFFF then ramw^[adr]:=color; end
	movl	-16(%rbp),%eax
	imull	$1792,%eax,%edx
	movl	-8(%rbp),%eax
	leal	125829120(%eax),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,-32(%rbp)
	cmpl	$134217727,-32(%rbp)
	jnl	.Lj921
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	-32(%rbp),%ecx
	movw	-24(%rbp),%dx
	movw	%dx,(%rax,%rcx,2)
	jmp	.Lj921
.Lj913:
.Ll331:
# [810] begin adr:=$3c00000+x+1792*y; if adr<$3FFFFFF then raml^[adr]:=color; end;
	movl	-16(%rbp),%eax
	imull	$1792,%eax,%edx
	movl	-8(%rbp),%eax
	leal	62914560(%eax),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,-32(%rbp)
	cmpl	$67108863,-32(%rbp)
	jnl	.Lj925
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	-32(%rbp),%edx
	movl	-24(%rbp),%ecx
	movl	%ecx,(%rax,%rdx,4)
.Lj925:
.Lj921:
.Lj911:
.Ll332:
# [811] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc117:
.Lt7:
.Ll333:

.section .text.n_retro_$$_box$longint$longint$longint$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
.Lc121:
.seh_proc RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll334:
# [829] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc123:
.Lc124:
	movq	%rsp,%rbp
.Lc125:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var x located at rbp-8, size=OS_S32
# Var y located at rbp-16, size=OS_S32
# Var l located at rbp-24, size=OS_S32
# Var h located at rbp-32, size=OS_S32
# Var c located at rbp+48, size=OS_S32
# Var adr located at rbp-40, size=OS_S32
# Var a located at rbp-48, size=OS_S32
# Var i located at rbp-56, size=OS_S32
# Var j located at rbp-64, size=OS_S32
	movl	%ecx,-8(%rbp)
	movl	%edx,-16(%rbp)
	movl	%r8d,-24(%rbp)
	movl	%r9d,-32(%rbp)
.Ll335:
# [831] if x<0 then x:=0;
	cmpl	$0,-8(%rbp)
	jnl	.Lj931
	movl	$0,-8(%rbp)
.Lj931:
.Ll336:
# [832] if x>1792 then x:=1792;
	cmpl	$1792,-8(%rbp)
	jng	.Lj935
	movl	$1792,-8(%rbp)
.Lj935:
.Ll337:
# [833] if y<0 then y:=0;
	cmpl	$0,-16(%rbp)
	jnl	.Lj939
	movl	$0,-16(%rbp)
.Lj939:
.Ll338:
# [834] if y>1120 then y:=1120;
	cmpl	$1120,-16(%rbp)
	jng	.Lj943
	movl	$1120,-16(%rbp)
.Lj943:
.Ll339:
# [835] if x+l>1792 then l:=1792-x-1;
	movslq	-8(%rbp),%rax
	movslq	-24(%rbp),%rdx
	leaq	(%rax,%rdx),%rax
	cmpq	$1792,%rax
	jng	.Lj947
	movl	-8(%rbp),%edx
	movl	$1792,%eax
	subl	%edx,%eax
	leal	-1(%eax),%eax
	movl	%eax,-24(%rbp)
.Lj947:
.Ll340:
# [836] if y+h>1120 then h:=1120-y-1 ;
	movslq	-16(%rbp),%rdx
	movslq	-32(%rbp),%rax
	leaq	(%rdx,%rax),%rax
	cmpq	$1120,%rax
	jng	.Lj951
	movl	-16(%rbp),%edx
	movl	$1120,%eax
	subl	%edx,%eax
	leal	-1(%eax),%eax
	movl	%eax,-32(%rbp)
.Lj951:
.Ll341:
# [837] if raml^[$18002]<16 then
	movq	U_$RETRO_$$_R1(%rip),%rax
	cmpl	$16,393224(%rax)
	jnl	.Lj955
.Ll342:
# [839] for j:=y to y+h-1 do
	movl	-16(%rbp),%eax
	movl	-32(%rbp),%edx
	leal	(%eax,%edx),%eax
	leal	-1(%eax),%eax
	movl	-16(%rbp),%edx
	movl	%edx,-64(%rbp)
	cmpl	-64(%rbp),%eax
	jl	.Lj970
	subl	$1,-64(%rbp)
	.balign 8,0x90
.Lj960:
	addl	$1,-64(%rbp)
.Ll343:
# [841] adr:=$F000000+1792*j;
	movl	-64(%rbp),%edx
	imull	$1792,%edx,%edx
	leal	251658240(%edx),%edx
	movl	%edx,-40(%rbp)
.Ll344:
# [842] for i:=x to x+l-1 do ramb^[adr+i]:=c;
	movl	-8(%rbp),%edx
	movl	-24(%rbp),%ecx
	leal	(%edx,%ecx),%edx
	leal	-1(%edx),%edx
	movl	-8(%rbp),%ecx
	movl	%ecx,-56(%rbp)
	cmpl	-56(%rbp),%edx
	jl	.Lj966
	subl	$1,-56(%rbp)
	.balign 8,0x90
.Lj967:
	addl	$1,-56(%rbp)
	movq	U_$RETRO_$$_R1(%rip),%r9
	movslq	-40(%rbp),%r8
	movslq	-56(%rbp),%rcx
	leaq	(%r8,%rcx),%r8
	movb	48(%rbp),%cl
	movb	%cl,(%r9,%r8,1)
	cmpl	-56(%rbp),%edx
	jg	.Lj967
.Lj966:
.Ll345:
	cmpl	-64(%rbp),%eax
	jg	.Lj960
	jmp	.Lj970
.Lj955:
.Ll346:
# [845] else if (raml^[$18002]>=16) and (raml^[$18002]<32) then
	movq	U_$RETRO_$$_R1(%rip),%rax
	cmpl	$16,393224(%rax)
	jnge	.Lj972
	movq	U_$RETRO_$$_R1(%rip),%rax
	cmpl	$32,393224(%rax)
	jnl	.Lj972
.Ll347:
# [847] for j:=y to y+h-1 do
	movl	-16(%rbp),%eax
	movl	-32(%rbp),%edx
	leal	(%eax,%edx),%eax
	leal	-1(%eax),%eax
	movl	-16(%rbp),%edx
	movl	%edx,-64(%rbp)
	cmpl	-64(%rbp),%eax
	jl	.Lj988
	subl	$1,-64(%rbp)
	.balign 8,0x90
.Lj978:
	addl	$1,-64(%rbp)
.Ll348:
# [849] adr:=$7800000+1792*j;
	movl	-64(%rbp),%edx
	imull	$1792,%edx,%edx
	leal	125829120(%edx),%edx
	movl	%edx,-40(%rbp)
.Ll349:
# [850] for i:=x to x+l-1 do ramw^[adr+i]:=c;
	movl	-8(%rbp),%edx
	movl	-24(%rbp),%ecx
	leal	(%edx,%ecx),%edx
	leal	-1(%edx),%edx
	movl	-8(%rbp),%ecx
	movl	%ecx,-56(%rbp)
	cmpl	-56(%rbp),%edx
	jl	.Lj984
	subl	$1,-56(%rbp)
	.balign 8,0x90
.Lj985:
	addl	$1,-56(%rbp)
	movq	U_$RETRO_$$_R1(%rip),%r9
	movslq	-40(%rbp),%r8
	movslq	-56(%rbp),%rcx
	leaq	(%r8,%rcx),%r8
	movw	48(%rbp),%cx
	movw	%cx,(%r9,%r8,2)
	cmpl	-56(%rbp),%edx
	jg	.Lj985
.Lj984:
.Ll350:
	cmpl	-64(%rbp),%eax
	jg	.Lj978
	jmp	.Lj988
.Lj972:
.Ll351:
# [855] for j:=y to y+h-1 do
	movl	-16(%rbp),%eax
	movl	-32(%rbp),%edx
	leal	(%eax,%edx),%eax
	leal	-1(%eax),%eax
	movl	-16(%rbp),%edx
	movl	%edx,-64(%rbp)
	cmpl	-64(%rbp),%eax
	jl	.Lj992
	subl	$1,-64(%rbp)
	.balign 8,0x90
.Lj993:
	addl	$1,-64(%rbp)
.Ll352:
# [857] adr:=$3c00000+1792*j;
	movl	-64(%rbp),%edx
	imull	$1792,%edx,%edx
	leal	62914560(%edx),%edx
	movl	%edx,-40(%rbp)
.Ll353:
# [858] for i:=x to x+l-1 do raml^[adr+i]:=c;
	movl	-8(%rbp),%edx
	movl	-24(%rbp),%ecx
	leal	(%edx,%ecx),%edx
	leal	-1(%edx),%edx
	movl	-8(%rbp),%ecx
	movl	%ecx,-56(%rbp)
	cmpl	-56(%rbp),%edx
	jl	.Lj999
	subl	$1,-56(%rbp)
	.balign 8,0x90
.Lj1000:
	addl	$1,-56(%rbp)
	movq	U_$RETRO_$$_R1(%rip),%r9
	movslq	-40(%rbp),%r8
	movslq	-56(%rbp),%rcx
	leaq	(%r8,%rcx),%r8
	movl	48(%rbp),%ecx
	movl	%ecx,(%r9,%r8,4)
	cmpl	-56(%rbp),%edx
	jg	.Lj1000
.Lj999:
.Ll354:
	cmpl	-64(%rbp),%eax
	jg	.Lj993
.Lj992:
.Lj988:
.Lj970:
.Ll355:
# [861] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc122:
.Lt12:
.Ll356:

.section .text.n_retro_$$_box2$longint$longint$longint$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
.Lc126:
.seh_proc RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll357:
# [873] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc128:
.Lc129:
	movq	%rsp,%rbp
.Lc130:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
# Var x1 located at rbp-8, size=OS_S32
# Var y1 located at rbp-16, size=OS_S32
# Var x2 located at rbp-24, size=OS_S32
# Var y2 located at rbp-32, size=OS_S32
# Var color located at rbp+48, size=OS_S32
	movl	%ecx,-8(%rbp)
	movl	%edx,-16(%rbp)
	movl	%r8d,-24(%rbp)
	movl	%r9d,-32(%rbp)
.Ll358:
# [876] if (x1<x2) and (y1<y2) then
	movl	-8(%rbp),%eax
	cmpl	-24(%rbp),%eax
	jnl	.Lj1006
	movl	-16(%rbp),%eax
	cmpl	-32(%rbp),%eax
	jnl	.Lj1006
.Ll359:
# [877] box(x1,y1,x2-x1+1, y2-y1+1,color);
	movl	48(%rbp),%eax
	movl	%eax,32(%rsp)
	movl	-32(%rbp),%eax
	movl	-16(%rbp),%edx
	subl	%edx,%eax
	leal	1(%eax),%r9d
	movl	-24(%rbp),%eax
	movl	-8(%rbp),%edx
	subl	%edx,%eax
	leal	1(%eax),%r8d
	movl	-16(%rbp),%edx
	movl	-8(%rbp),%ecx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Lj1006:
.Ll360:
# [879] end;
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc127:
.Lt13:
.Ll361:

.section .text.n_retro_$$_putchar$longint$longint$char$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT
RETRO_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT:
.Lc131:
.seh_proc RETRO_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT
.Ll362:
# [897] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc133:
.Lc134:
	movq	%rsp,%rbp
.Lc135:
	leaq	-96(%rsp),%rsp
.seh_stackalloc 96
.seh_endprologue
# Var x located at rbp-8, size=OS_S32
# Var y located at rbp-16, size=OS_S32
# Var ch located at rbp-24, size=OS_8
# Var col located at rbp-32, size=OS_S32
# Var i located at rbp-40, size=OS_S32
# Var j located at rbp-48, size=OS_S32
# Var start located at rbp-56, size=OS_S32
# Var b located at rbp-64, size=OS_8
	movl	%ecx,-8(%rbp)
	movl	%edx,-16(%rbp)
	movb	%r8b,-24(%rbp)
	movl	%r9d,-32(%rbp)
.Ll363:
# [898] start:=$50000+16*ord(ch);
	movzbl	-24(%rbp),%eax
	shll	$4,%eax
	leal	327680(%eax),%eax
	movl	%eax,-56(%rbp)
.Ll364:
# [899] for i:=0 to 15 do
	movl	$0,-40(%rbp)
	subl	$1,-40(%rbp)
	.balign 8,0x90
.Lj1024:
	addl	$1,-40(%rbp)
.Ll365:
# [901] b:=ramb^[start+i];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	-56(%rbp),%rax
	movslq	-40(%rbp),%rdx
	leaq	(%rax,%rdx),%rax
	movb	(%rcx,%rax,1),%al
	movb	%al,-64(%rbp)
.Ll366:
# [902] for j:=0 to 7 do
	movl	$0,-48(%rbp)
	subl	$1,-48(%rbp)
	.balign 8,0x90
.Lj1029:
	addl	$1,-48(%rbp)
.Ll367:
# [904] if (b and (1 shl j))<>0 then
	movslq	-48(%rbp),%rcx
	movl	$1,%eax
	movslq	%ecx,%rcx
	shll	%cl,%eax
	movzbl	-64(%rbp),%edx
	andl	%eax,%edx
	testl	%edx,%edx
	je	.Lj1031
.Ll368:
# [905] putpixel(x+j,y+i,col);
	movl	-16(%rbp),%eax
	movl	-40(%rbp),%edx
	leal	(%eax,%edx),%edx
	movl	-8(%rbp),%ecx
	movl	-48(%rbp),%eax
	leal	(%ecx,%eax),%ecx
	movl	-32(%rbp),%r8d
	call	RETRO_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
.Lj1031:
.Ll369:
	cmpl	$7,-48(%rbp)
	jl	.Lj1029
.Ll370:
	cmpl	$15,-40(%rbp)
	jl	.Lj1024
.Ll371:
# [908] end;
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc132:
.Lt8:
.Ll372:

.section .text.n_retro_$$_putcharz$longint$longint$char$longint$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT
RETRO_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT:
.Lc136:
# Temps allocated between rbp-96 and rbp-80
.seh_proc RETRO_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT
.Ll373:
# [917] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc138:
.Lc139:
	movq	%rsp,%rbp
.Lc140:
	leaq	-128(%rsp),%rsp
.seh_stackalloc 128
	movq	%rbx,-96(%rbp)
	movq	%rsi,-88(%rbp)
.seh_savereg %rbx, 32
.seh_savereg %rsi, 40
.seh_endprologue
# Var x located at rbp-8, size=OS_S32
# Var y located at rbp-16, size=OS_S32
# Var ch located at rbp-24, size=OS_8
# Var col located at rbp-32, size=OS_S32
# Var xz located at rbp+48, size=OS_S32
# Var yz located at rbp+56, size=OS_S32
# Var i located at rbp-40, size=OS_S32
# Var j located at rbp-48, size=OS_S32
# Var k located at rbp-56, size=OS_S32
# Var l located at rbp-64, size=OS_S32
# Var start located at rbp-72, size=OS_S32
# Var b located at rbp-80, size=OS_8
	movl	%ecx,-8(%rbp)
	movl	%edx,-16(%rbp)
	movb	%r8b,-24(%rbp)
	movl	%r9d,-32(%rbp)
.Ll374:
# [918] start:=$50000+16*ord(ch);
	movzbl	-24(%rbp),%eax
	shll	$4,%eax
	leal	327680(%eax),%eax
	movl	%eax,-72(%rbp)
.Ll375:
# [919] for i:=0 to 15 do
	movl	$0,-40(%rbp)
	subl	$1,-40(%rbp)
	.balign 8,0x90
.Lj1044:
	addl	$1,-40(%rbp)
.Ll376:
# [921] b:=ramb^[start+i];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	-72(%rbp),%rdx
	movslq	-40(%rbp),%rax
	leaq	(%rdx,%rax),%rax
	movb	(%rcx,%rax,1),%al
	movb	%al,-80(%rbp)
.Ll377:
# [922] for j:=0 to 7 do
	movl	$0,-48(%rbp)
	subl	$1,-48(%rbp)
	.balign 8,0x90
.Lj1049:
	addl	$1,-48(%rbp)
.Ll378:
# [924] if (b and (1 shl j))<>0 then
	movslq	-48(%rbp),%rcx
	movl	$1,%eax
	movslq	%ecx,%rcx
	shll	%cl,%eax
	movzbl	-80(%rbp),%edx
	andl	%eax,%edx
	testl	%edx,%edx
	je	.Lj1051
.Ll379:
# [925] for k:=0 to yz-1 do
	movl	56(%rbp),%eax
	leal	-1(%eax),%ebx
	movl	$0,-56(%rbp)
	cmpl	-56(%rbp),%ebx
	jl	.Lj1055
	subl	$1,-56(%rbp)
	.balign 8,0x90
.Lj1056:
	addl	$1,-56(%rbp)
.Ll380:
# [926] for l:=0 to xz-1 do
	movl	48(%rbp),%eax
	leal	-1(%eax),%esi
	movl	$0,-64(%rbp)
	cmpl	-64(%rbp),%esi
	jl	.Lj1060
	subl	$1,-64(%rbp)
	.balign 8,0x90
.Lj1061:
	addl	$1,-64(%rbp)
.Ll381:
# [927] putpixel(x+j*xz+l,y+i*yz+k,col);
	movl	-40(%rbp),%edx
	movl	56(%rbp),%eax
	imull	%edx,%eax
	movl	-16(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	-56(%rbp),%edx
	leal	(%eax,%edx),%edx
	movl	-48(%rbp),%ecx
	movl	48(%rbp),%eax
	imull	%ecx,%eax
	movl	-8(%rbp),%ecx
	leal	(%eax,%ecx),%eax
	movl	-64(%rbp),%ecx
	leal	(%eax,%ecx),%ecx
	movl	-32(%rbp),%r8d
	call	RETRO_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
.Ll382:
	cmpl	-64(%rbp),%esi
	jg	.Lj1061
.Lj1060:
.Ll383:
	cmpl	-56(%rbp),%ebx
	jg	.Lj1056
.Lj1055:
.Lj1051:
.Ll384:
	cmpl	$7,-48(%rbp)
	jl	.Lj1049
.Ll385:
	cmpl	$15,-40(%rbp)
	jl	.Lj1044
.Ll386:
# [930] end;
	movq	-96(%rbp),%rbx
	movq	-88(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc137:
.Lt24:
.Ll387:

.section .text.n_retro$_$outtextxy$crc6744c382_$$_fin$8,"x"
	.balign 16,0x90
RETRO$_$OUTTEXTXY$crc6744C382_$$_fin$8:
.Lc141:
.seh_proc RETRO$_$OUTTEXTXY$crc6744C382_$$_fin$8
.Ll388:
# [936] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc143:
.Lc144:
	movq	%rcx,%rbp
.Lc145:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
# Var $parentfp located in register rbp
.seh_endprologue
.Ll389:
	leaq	-24(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc142:
.Lt10:
.Ll390:

.section .text.n_retro_$$_outtextxy$longint$longint$ansistring$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT:
.Lc146:
# Temps allocated between rbp-48 and rbp-40
.seh_proc RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
.Ll391:
	pushq	%rbp
.seh_pushreg %rbp
.Lc148:
.Lc149:
	movq	%rsp,%rbp
.Lc150:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
	movq	%rbx,-48(%rbp)
.seh_savereg %rbx, 32
.seh_endprologue
# Var x located at rbp-8, size=OS_S32
# Var y located at rbp-16, size=OS_S32
# Var t located at rbp-24, size=OS_64
# Var c located at rbp-32, size=OS_S32
# Var i located at rbp-40, size=OS_S32
	movl	%ecx,-8(%rbp)
	movl	%edx,-16(%rbp)
	movq	%r8,-24(%rbp)
	movl	%r9d,-32(%rbp)
	movq	-24(%rbp),%rcx
	call	fpc_ansistr_incr_ref
.Lj1076:
.Ll392:
# [937] for i:=1 to length(t) do putchar(x+8*i-8,y,t[i],c);
	nop
.Lj1072:
	movq	-24(%rbp),%rax
	testq	%rax,%rax
	je	.Lj1079
	movq	-8(%rax),%rax
.Lj1079:
	movl	%eax,%ebx
	movl	$1,-40(%rbp)
	cmpl	-40(%rbp),%ebx
	jl	.Lj1081
	subl	$1,-40(%rbp)
	.balign 8,0x90
.Lj1082:
	addl	$1,-40(%rbp)
	movl	-40(%rbp),%eax
	shll	$3,%eax
	movl	-8(%rbp),%edx
	leal	(%eax,%edx),%eax
	leal	-8(%eax),%ecx
	movq	-24(%rbp),%rax
	movslq	-40(%rbp),%rdx
	movzbl	-1(%rax,%rdx,1),%r8d
	movl	-32(%rbp),%r9d
	movl	-16(%rbp),%edx
	call	RETRO_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT
	cmpl	-40(%rbp),%ebx
	jg	.Lj1082
.Lj1081:
.Lj1091:
	nop
.Lj1073:
	movq	%rbp,%rcx
	call	RETRO$_$OUTTEXTXY$crc6744C382_$$_fin$8
.Ll393:
# [938] end;
	movq	-48(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj1072
	.rva	.Lj1073
	.rva	RETRO$_$OUTTEXTXY$crc6744C382_$$_fin$8

.section .text.n_retro_$$_outtextxy$longint$longint$ansistring$longint,"x"
.seh_endproc
.Lc147:
.Lt9:
.Ll394:

.section .text.n_retro$_$outtextxyz$crcca10a6fc_$$_fin$9,"x"
	.balign 16,0x90
RETRO$_$OUTTEXTXYZ$crcCA10A6FC_$$_fin$9:
.Lc151:
.seh_proc RETRO$_$OUTTEXTXYZ$crcCA10A6FC_$$_fin$9
.Ll395:
# [944] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc153:
.Lc154:
	movq	%rcx,%rbp
.Lc155:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
# Var $parentfp located in register rbp
.seh_endprologue
.Ll396:
	leaq	-24(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc152:
.Lt26:
.Ll397:

.section .text.n_retro_$$_outtextxyz$longint$longint$ansistring$longint$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT:
.Lc156:
# Temps allocated between rbp-48 and rbp-40
.seh_proc RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll398:
	pushq	%rbp
.seh_pushreg %rbp
.Lc158:
.Lc159:
	movq	%rsp,%rbp
.Lc160:
	leaq	-96(%rsp),%rsp
.seh_stackalloc 96
	movq	%rbx,-48(%rbp)
.seh_savereg %rbx, 48
.seh_endprologue
# Var x located at rbp-8, size=OS_S32
# Var y located at rbp-16, size=OS_S32
# Var t located at rbp-24, size=OS_64
# Var c located at rbp-32, size=OS_S32
# Var xz located at rbp+48, size=OS_S32
# Var yz located at rbp+56, size=OS_S32
# Var i located at rbp-40, size=OS_S32
	movl	%ecx,-8(%rbp)
	movl	%edx,-16(%rbp)
	movq	%r8,-24(%rbp)
	movl	%r9d,-32(%rbp)
	movq	-24(%rbp),%rcx
	call	fpc_ansistr_incr_ref
.Lj1102:
.Ll399:
# [945] for i:=0 to length(t)-1 do putcharz(x+8*xz*i,y,t[i+1],c,xz,yz);
	nop
.Lj1098:
	movq	-24(%rbp),%rax
	testq	%rax,%rax
	je	.Lj1105
	movq	-8(%rax),%rax
.Lj1105:
	leaq	-1(%rax),%rax
	movl	%eax,%ebx
	movl	$0,-40(%rbp)
	cmpl	-40(%rbp),%ebx
	jl	.Lj1107
	subl	$1,-40(%rbp)
	.balign 8,0x90
.Lj1108:
	addl	$1,-40(%rbp)
	movl	56(%rbp),%eax
	movl	%eax,40(%rsp)
	movl	48(%rbp),%eax
	movl	%eax,32(%rsp)
	movl	48(%rbp),%eax
	shll	$3,%eax
	movl	-40(%rbp),%edx
	imull	%eax,%edx
	movl	-8(%rbp),%eax
	leal	(%edx,%eax),%ecx
	movq	-24(%rbp),%rdx
	movslq	-40(%rbp),%rax
	leaq	1(%rax),%rax
	movzbl	-1(%rdx,%rax,1),%r8d
	movl	-32(%rbp),%r9d
	movl	-16(%rbp),%edx
	call	RETRO_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT
	cmpl	-40(%rbp),%ebx
	jg	.Lj1108
.Lj1107:
.Lj1121:
	nop
.Lj1099:
	movq	%rbp,%rcx
	call	RETRO$_$OUTTEXTXYZ$crcCA10A6FC_$$_fin$9
.Ll400:
# [946] end;
	movq	-48(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj1098
	.rva	.Lj1099
	.rva	RETRO$_$OUTTEXTXYZ$crcCA10A6FC_$$_fin$9

.section .text.n_retro_$$_outtextxyz$longint$longint$ansistring$longint$longint$longint,"x"
.seh_endproc
.Lc157:
.Lt25:
.Ll401:

.section .text.n_retro_$$_scrollup,"x"
	.balign 16,0x90
.globl	RETRO_$$_SCROLLUP
RETRO_$$_SCROLLUP:
.Lc161:
.seh_proc RETRO_$$_SCROLLUP
.Ll402:
# [952] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc163:
.Lc164:
	movq	%rsp,%rbp
.Lc165:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
# Var i located at rbp-8, size=OS_S32
.Ll403:
# [953] for i:=0 to 447 do raml^[$3c7a800+i]:=raml^[$3c00000+i];
	movl	$0,-8(%rbp)
	subl	$1,-8(%rbp)
	.balign 8,0x90
.Lj1128:
	addl	$1,-8(%rbp)
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	-8(%rbp),%r8
	movq	U_$RETRO_$$_R1(%rip),%rax
	movslq	-8(%rbp),%rdx
	movl	251658240(%rax,%rdx,4),%eax
	movl	%eax,253665280(%rcx,%r8,4)
	cmpl	$447,-8(%rbp)
	jl	.Lj1128
.Ll404:
# [954] for i:=0 to 501760 do raml^[$3C00000+i]:=raml^[$3c001c0+i];
	movl	$0,-8(%rbp)
	subl	$1,-8(%rbp)
	.balign 8,0x90
.Lj1133:
	addl	$1,-8(%rbp)
	movq	U_$RETRO_$$_R1(%rip),%r8
	movslq	-8(%rbp),%rcx
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movslq	-8(%rbp),%rax
	movl	251660032(%rdx,%rax,4),%eax
	movl	%eax,251658240(%r8,%rcx,4)
	cmpl	$501760,-8(%rbp)
	jl	.Lj1133
.Ll405:
# [955] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc162:
.Lt27:
.Ll406:

.section .text.n_retro_$$_noise1$$byte,"x"
	.balign 16,0x90
.globl	RETRO_$$_NOISE1$$BYTE
RETRO_$$_NOISE1$$BYTE:
.Lc166:
.seh_proc RETRO_$$_NOISE1$$BYTE
.Ll407:
# [974] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc168:
.Lc169:
	movq	%rsp,%rbp
.Lc170:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# Var $result located at rbp-8, size=OS_8
# Var output located at rbp-16, size=OS_32
# Var b located at rbp-24, size=OS_8
.Ll408:
# [975] output:= (a and b22) shr 15;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%edx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B22(%rip),%eax
	andl	%edx,%eax
	shrl	$15,%eax
	movl	%eax,-16(%rbp)
.Ll409:
# [976] output+= (a and b20) shr 14;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%edx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B20(%rip),%eax
	andl	%edx,%eax
	shrl	$14,%eax
	movl	-16(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-16(%rbp)
.Ll410:
# [977] output+= (a and b16) shr 11;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%edx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B16(%rip),%eax
	andl	%edx,%eax
	shrl	$11,%eax
	movl	-16(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-16(%rbp)
.Ll411:
# [978] output+= (a and b13) shr 9;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%edx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B13(%rip),%eax
	andl	%edx,%eax
	shrl	$9,%eax
	movl	-16(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-16(%rbp)
.Ll412:
# [979] output+= (a and b11) shr 8;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%edx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B11(%rip),%eax
	andl	%edx,%eax
	shrl	$8,%eax
	movl	-16(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-16(%rbp)
.Ll413:
# [980] output+= (a and b07) shr 5;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%edx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B07(%rip),%eax
	andl	%edx,%eax
	shrl	$5,%eax
	movl	-16(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-16(%rbp)
.Ll414:
# [981] output+= (a and b04) shr 3;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%edx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B04(%rip),%eax
	andl	%edx,%eax
	shrl	$3,%eax
	movl	-16(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-16(%rbp)
.Ll415:
# [982] output+= (a and b02) shr 2;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%edx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B02(%rip),%eax
	andl	%edx,%eax
	shrl	$2,%eax
	movl	-16(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-16(%rbp)
.Ll416:
# [984] b:=((a and b22)>0) xor ((a and b17)>0);
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%edx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B22(%rip),%eax
	andl	%edx,%eax
	cmpl	$0,%eax
	setab	%cl
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%edx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B17(%rip),%eax
	andl	%edx,%eax
	cmpl	$0,%eax
	setab	%al
	xorb	%cl,%al
	movb	%al,-24(%rbp)
.Ll417:
# [985] a:=a shl 1;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%eax
	shll	$1,%eax
	movl	%eax,TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip)
.Ll418:
# [986] if b then a:=a or 1;
	cmpb	$0,-24(%rbp)
	je	.Lj1159
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%eax
	orl	$1,%eax
	movl	%eax,TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip)
.Lj1159:
.Ll419:
# [987] noise1:=output;
	movb	-16(%rbp),%al
	movb	%al,-8(%rbp)
.Ll420:
# [988] end;
	movzbl	-8(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc167:
.Lt39:
.Ll421:

.section .text.n_retro_$$_noise2$$longword,"x"
	.balign 16,0x90
.globl	RETRO_$$_NOISE2$$LONGWORD
RETRO_$$_NOISE2$$LONGWORD:
.Lc171:
.seh_proc RETRO_$$_NOISE2$$LONGWORD
.Ll422:
# [998] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc173:
.Lc174:
	movq	%rsp,%rbp
.Lc175:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# Var $result located at rbp-8, size=OS_32
# Var output located at rbp-16, size=OS_S64
# Var b located at rbp-24, size=OS_8
.Ll423:
# [999] output:= (a and 4194304) shr 15;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rax
	andq	$4194304,%rax
	shrq	$15,%rax
	movq	%rax,-16(%rbp)
.Ll424:
# [1000] output+= (a and 1048576) shr 14;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rax
	andq	$1048576,%rax
	shrq	$14,%rax
	movq	-16(%rbp),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-16(%rbp)
.Ll425:
# [1001] output+= (a and 65536) shr 11;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rax
	andq	$65536,%rax
	shrq	$11,%rax
	movq	-16(%rbp),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-16(%rbp)
.Ll426:
# [1002] output+= (a and 8192) shr 9;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rax
	andq	$8192,%rax
	shrq	$9,%rax
	movq	-16(%rbp),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-16(%rbp)
.Ll427:
# [1003] output+= (a and 2048) shr 8;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rax
	andq	$2048,%rax
	shrq	$8,%rax
	movq	-16(%rbp),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-16(%rbp)
.Ll428:
# [1004] output+= (a and 128) shr 5;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rax
	andq	$128,%rax
	shrq	$5,%rax
	movq	-16(%rbp),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-16(%rbp)
.Ll429:
# [1005] output+= (a and 16) shr 3;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rax
	andq	$16,%rax
	shrq	$3,%rax
	movq	-16(%rbp),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-16(%rbp)
.Ll430:
# [1006] output+= (a and 4) shr 2;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rax
	andq	$4,%rax
	shrq	$2,%rax
	movq	-16(%rbp),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-16(%rbp)
.Ll431:
# [1007] b:=((a and 4194304)>0) xor ((a and 131072)>0);
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rax
	andq	$4194304,%rax
	cmpq	$0,%rax
	setgb	%dl
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rax
	andq	$131072,%rax
	cmpq	$0,%rax
	setgb	%al
	xorb	%dl,%al
	movb	%al,-24(%rbp)
.Ll432:
# [1008] a:=a shl 1;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rax
	shlq	$1,%rax
	movq	%rax,TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip)
.Ll433:
# [1009] if b then a:=a or 1;
	cmpb	$0,-24(%rbp)
	je	.Lj1187
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rax
	orq	$1,%rax
	movq	%rax,TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip)
.Lj1187:
.Ll434:
# [1010] noise2:=output;
	movl	-16(%rbp),%eax
	movl	%eax,-8(%rbp)
.Ll435:
# [1011] end;
	movl	-8(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc172:
.Lt29:
.Ll436:

.section .text.n_retro_$$_noise3$$longword,"x"
	.balign 16,0x90
.globl	RETRO_$$_NOISE3$$LONGWORD
RETRO_$$_NOISE3$$LONGWORD:
.Lc176:
.seh_proc RETRO_$$_NOISE3$$LONGWORD
.Ll437:
# [1029] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc178:
.Lc179:
	movq	%rsp,%rbp
.Lc180:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# Var $result located at rbp-8, size=OS_32
# Var output located at rbp-16, size=OS_S64
# Var b located at rbp-24, size=OS_8
.Ll438:
# [1030] output:= (a and b22) shr 15;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rdx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B22(%rip),%rax
	andq	%rdx,%rax
	shrq	$15,%rax
	movq	%rax,-16(%rbp)
.Ll439:
# [1031] output+= (a and b20) shr 14;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rdx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B20(%rip),%rax
	andq	%rdx,%rax
	shrq	$14,%rax
	movq	-16(%rbp),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-16(%rbp)
.Ll440:
# [1032] output+= (a and b16) shr 11;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rdx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B16(%rip),%rax
	andq	%rdx,%rax
	shrq	$11,%rax
	movq	-16(%rbp),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-16(%rbp)
.Ll441:
# [1033] output+= (a and b13) shr 9;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rdx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B13(%rip),%rax
	andq	%rdx,%rax
	shrq	$9,%rax
	movq	-16(%rbp),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-16(%rbp)
.Ll442:
# [1034] output+= (a and b11) shr 8;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rdx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B11(%rip),%rax
	andq	%rdx,%rax
	shrq	$8,%rax
	movq	-16(%rbp),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-16(%rbp)
.Ll443:
# [1035] output+= (a and b07) shr 5;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rdx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B07(%rip),%rax
	andq	%rdx,%rax
	shrq	$5,%rax
	movq	-16(%rbp),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-16(%rbp)
.Ll444:
# [1036] output+= (a and b04) shr 3;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rdx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B04(%rip),%rax
	andq	%rdx,%rax
	shrq	$3,%rax
	movq	-16(%rbp),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-16(%rbp)
.Ll445:
# [1037] output+= (a and b02) shr 2;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rdx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B02(%rip),%rax
	andq	%rdx,%rax
	shrq	$2,%rax
	movq	-16(%rbp),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-16(%rbp)
.Ll446:
# [1039] b:=((a and b22)>0) xor ((a and b17)>0);
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rdx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B22(%rip),%rax
	andq	%rdx,%rax
	cmpq	$0,%rax
	setgb	%cl
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rdx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B17(%rip),%rax
	andq	%rdx,%rax
	cmpq	$0,%rax
	setgb	%al
	xorb	%cl,%al
	movb	%al,-24(%rbp)
.Ll447:
# [1040] a:=a shl 1;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rax
	shlq	$1,%rax
	movq	%rax,TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip)
.Ll448:
# [1041] if b then a:=a or 1;
	cmpb	$0,-24(%rbp)
	je	.Lj1215
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rax
	orq	$1,%rax
	movq	%rax,TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip)
.Lj1215:
.Ll449:
# [1042] noise3:=output;
	movl	-16(%rbp),%eax
	movl	%eax,-8(%rbp)
.Ll450:
# [1043] end;
	movl	-8(%rbp),%eax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc177:
.Lt30:
.Ll451:

.section .text.n_retro_$$_sid$longint$$tsample,"x"
	.balign 16,0x90
.globl	RETRO_$$_SID$LONGINT$$TSAMPLE
RETRO_$$_SID$LONGINT$$TSAMPLE:
.Lc181:
# Temps allocated between rbp-240 and rbp-224
.seh_proc RETRO_$$_SID$LONGINT$$TSAMPLE
.Ll452:
# [1203] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc183:
.Lc184:
	movq	%rsp,%rbp
.Lc185:
	leaq	-272(%rsp),%rsp
.seh_stackalloc 272
.seh_endprologue
# Var mode located at rbp-8, size=OS_S32
# Var $result located at rbp-16, size=OS_64
# Var i located at rbp-24, size=OS_S32
# Var sid1 located at rbp-32, size=OS_S32
# Var sid1l located at rbp-40, size=OS_S32
# Var ind located at rbp-48, size=OS_S32
# Var st located at rbp-56, size=OS_S64
# Var pp1 located at rbp-64, size=OS_8
# Var pp2 located at rbp-72, size=OS_8
# Var pp3 located at rbp-80, size=OS_8
# Var fout located at rbp-88, size=OS_F64
# Var fout2 located at rbp-96, size=OS_F64
# Var fout3 located at rbp-104, size=OS_F64
# Var fi located at rbp-112, size=OS_F64
# Var fi2 located at rbp-120, size=OS_F64
# Var fi3 located at rbp-128, size=OS_F64
# Var wv1a located at rbp-136, size=OS_F64
# Var wv2a located at rbp-144, size=OS_F64
# Var wv3a located at rbp-152, size=OS_F64
# Var wv1ii located at rbp-160, size=OS_S64
# Var wv2ii located at rbp-168, size=OS_S64
# Var wv3ii located at rbp-176, size=OS_S64
# Var fii located at rbp-184, size=OS_S32
# Var fi2i located at rbp-192, size=OS_S32
# Var fi3i located at rbp-200, size=OS_S32
# Var fouti located at rbp-208, size=OS_S32
# Var fout2i located at rbp-216, size=OS_S32
# Var fout3i located at rbp-224, size=OS_S32
	movq	%rcx,-16(%rbp)
	movl	%edx,-8(%rbp)
.Ll453:
# [1204] if mode=1 then  // get regs
	cmpl	$1,-8(%rbp)
	jne	.Lj1223
.Ll454:
# [1207] freq1i:=(32768* (ramb^[$D400]+256*ramb^[$d401])) div 31940;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54273(%rax),%eax
	shll	$8,%eax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movzbl	54272(%rdx),%edx
	leal	(%eax,%edx),%edx
	shll	$15,%edx
	movl	$1101577085,%eax
	mull	%edx
	shrl	$13,%edx
	movl	%edx,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1I(%rip)
.Ll455:
# [1208] freq1ni:=freq1i*16;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1I(%rip),%eax
	shll	$4,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1NI(%rip)
.Ll456:
# [1209] freq2i:=(32768*(ramb^[$d407]+256*ramb^[$d408])) div 31940;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54280(%rax),%eax
	shll	$8,%eax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movzbl	54279(%rdx),%edx
	leal	(%eax,%edx),%edx
	shll	$15,%edx
	movl	$1101577085,%eax
	mull	%edx
	shrl	$13,%edx
	movl	%edx,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2I(%rip)
.Ll457:
# [1210] freq2ni:=freq2i*16;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2I(%rip),%eax
	shll	$4,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2NI(%rip)
.Ll458:
# [1211] freq3i:=(32768*(ramb^[$d40e]+256*ramb^[$d40f])) div 31940;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54287(%rax),%eax
	shll	$8,%eax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movzbl	54286(%rdx),%edx
	leal	(%eax,%edx),%edx
	shll	$15,%edx
	movl	$1101577085,%eax
	mull	%edx
	shrl	$13,%edx
	movl	%edx,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3I(%rip)
.Ll459:
# [1212] freq3ni:=freq3i*16;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3I(%rip),%eax
	shll	$4,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3NI(%rip)
.Ll460:
# [1214] gate1:=ramb^[$d404] and 1;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54276(%rax),%ax
	andw	$1,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE1(%rip)
.Ll461:
# [1215] ring1:=ramb^[$d404] and 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54276(%rax),%ax
	andw	$4,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING1(%rip)
.Ll462:
# [1216] test1:=ramb^[$d404] and 8;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54276(%rax),%ax
	andw	$8,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST1(%rip)
.Ll463:
# [1217] sync1:=((ramb^[$d404] and 2) shr 1)-1;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54276(%rax),%ax
	andw	$2,%ax
	movswl	%ax,%eax
	shrl	$1,%eax
	leal	-1(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC1(%rip)
.Ll464:
# [1218] sd1:=ramb^[$d405] and  $F;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54277(%rax),%ax
	andw	$15,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD1(%rip)
.Ll465:
# [1219] sa1:=ramb^[$d405] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54277(%rax),%eax
	shrl	$4,%eax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA1(%rip)
.Ll466:
# [1220] sr1:=ramb^[$d406]and $F;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54278(%rax),%ax
	andw	$15,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR1(%rip)
.Ll467:
# [1221] ss1:=ramb^[$d406] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54278(%rax),%eax
	shrl	$4,%eax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS1(%rip)
.Ll468:
# [1222] pw1i:=((ramb^[$d402]+256*ramb^[$d403]) and $FFF);
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54275(%rax),%eax
	shll	$8,%eax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movzbl	54274(%rdx),%edx
	leal	(%eax,%edx),%eax
	andl	$4095,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW1I(%rip)
.Ll469:
# [1224] gate2:=ramb^[$d40b] and 1;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54283(%rax),%ax
	andw	$1,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE2(%rip)
.Ll470:
# [1225] ring2:=ramb^[$d40b] and 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54283(%rax),%ax
	andw	$4,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING2(%rip)
.Ll471:
# [1226] test2:=ramb^[$d40b] and 8;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54283(%rax),%ax
	andw	$8,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST2(%rip)
.Ll472:
# [1227] sync2:=((ramb^[$d40b] and 2) shr 1)-1;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54283(%rax),%ax
	andw	$2,%ax
	movswl	%ax,%eax
	shrl	$1,%eax
	leal	-1(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC2(%rip)
.Ll473:
# [1228] sd2:=ramb^[$d40c] and  $F;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54284(%rax),%ax
	andw	$15,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD2(%rip)
.Ll474:
# [1229] sa2:=ramb^[$d40c] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54284(%rax),%eax
	shrl	$4,%eax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA2(%rip)
.Ll475:
# [1230] sr2:=ramb^[$d40d]and $F;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54285(%rax),%ax
	andw	$15,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR2(%rip)
.Ll476:
# [1231] ss2:=ramb^[$d40d] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54285(%rax),%eax
	shrl	$4,%eax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS2(%rip)
.Ll477:
# [1232] pw2i:=((ramb^[$d409]+256*ramb^[$d40a]) and $FFF);
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54282(%rax),%eax
	shll	$8,%eax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movzbl	54281(%rdx),%edx
	leal	(%eax,%edx),%eax
	andl	$4095,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW2I(%rip)
.Ll478:
# [1234] gate3:=ramb^[$d412] and 1;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54290(%rax),%ax
	andw	$1,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE3(%rip)
.Ll479:
# [1235] ring3:=ramb^[$d412] and 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54290(%rax),%ax
	andw	$4,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING3(%rip)
.Ll480:
# [1236] test3:=ramb^[$d412] and 8;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54290(%rax),%ax
	andw	$8,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST3(%rip)
.Ll481:
# [1237] sync3:=((ramb^[$d412] and 2) shr 1)-1;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54290(%rax),%ax
	andw	$2,%ax
	movswl	%ax,%eax
	shrl	$1,%eax
	leal	-1(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC3(%rip)
.Ll482:
# [1238] sd3:=ramb^[$d413] and  $F;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54291(%rax),%ax
	andw	$15,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD3(%rip)
.Ll483:
# [1239] sa3:=ramb^[$d413] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54291(%rax),%eax
	shrl	$4,%eax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA3(%rip)
.Ll484:
# [1240] sr3:=ramb^[$d414]and $F;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54292(%rax),%ax
	andw	$15,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR3(%rip)
.Ll485:
# [1241] ss3:=ramb^[$d414] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54292(%rax),%eax
	shrl	$4,%eax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS3(%rip)
.Ll486:
# [1242] pw3i:=((ramb^[$d410]+256*ramb^[$d411]) and $FFF);
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54289(%rax),%eax
	shll	$8,%eax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movzbl	54288(%rdx),%edx
	leal	(%eax,%edx),%eax
	andl	$4095,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW3I(%rip)
.Ll487:
# [1244] ff:=(ramb^[$d416] shl 3)+(ramb^[$d415] and 7);
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54293(%rax),%ax
	andw	$7,%ax
	movswl	%ax,%eax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movzbl	54294(%rdx),%edx
	shll	$3,%edx
	leal	(%eax,%edx),%eax
	movw	%ax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FF(%rip)
.Ll488:
# [1245] filter_freqi:=(ff+(ff shl 2)+30) shr 2;
	movzwl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FF(%rip),%eax
	shll	$2,%eax
	andl	$4294967295,%eax
	movzwl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FF(%rip),%edx
	leaq	(%rax,%rdx),%rax
	leaq	30(%rax),%rax
	shrq	$2,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI(%rip)
.Ll489:
# [1246] if (ramb^[$d417] and 1)>0 then f1:=true else f1:=false;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54295(%rax),%ax
	andw	$1,%ax
	cmpw	$0,%ax
	jng	.Lj1295
	movb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F1(%rip)
	jmp	.Lj1298
.Lj1295:
	movb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F1(%rip)
.Lj1298:
.Ll490:
# [1247] if (ramb^[$d417]  and 2)>0 then f2:=true else f2:=false;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54295(%rax),%ax
	andw	$2,%ax
	cmpw	$0,%ax
	jng	.Lj1302
	movb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F2(%rip)
	jmp	.Lj1305
.Lj1302:
	movb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F2(%rip)
.Lj1305:
.Ll491:
# [1248] if (ramb^[$d417]  and 4)>0 then f3:=true else f3:=false;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54295(%rax),%ax
	andw	$4,%ax
	cmpw	$0,%ax
	jng	.Lj1309
	movb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F3(%rip)
	jmp	.Lj1312
.Lj1309:
	movb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F3(%rip)
.Lj1312:
.Ll492:
# [1249] fl:=-(ramb^[$d418] and $10) shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54296(%rax),%ax
	andw	$16,%ax
	movswq	%ax,%rax
	negq	%rax
	shrq	$4,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FL(%rip)
.Ll493:
# [1250] fb:=-(ramb^[$d418] and $20) shr 5;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54296(%rax),%ax
	andw	$32,%ax
	movswq	%ax,%rax
	negq	%rax
	shrq	$5,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FB(%rip)
.Ll494:
# [1251] fu:=-(ramb^[$d418] and $40) shr 6;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54296(%rax),%ax
	andw	$64,%ax
	movswq	%ax,%rax
	negq	%rax
	shrq	$6,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FU(%rip)
.Ll495:
# [1252] filter_resonance2i:=round(256*(0.5+(0.5/(1+(peek($d416) shr 4)))));
	movl	$54294,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	shrl	$4,%eax
	andl	$4294967295,%eax
	leaq	1(%rax),%rax
	cvtsi2ss	%rax,%xmm1
	movss	_$RETRO$_Ld11(%rip),%xmm0
	divss	%xmm1,%xmm0
	addss	_$RETRO$_Ld11(%rip),%xmm0
	mulss	_$RETRO$_Ld10(%rip),%xmm0
	cvtss2sd	%xmm0,%xmm0
	cvtsd2siq	%xmm0,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I(%rip)
.Ll496:
# [1253] volume:=(peek($d418) and 15);
	movl	$54296,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
# PeepHole Optimization,var7
# PeepHole Optimization,var1
	andw	$15,%ax
	movswl	%ax,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_VOLUME(%rip)
.Ll497:
# [1255] waveform1:=ramb^[$d404] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54276(%rax),%eax
	shrl	$4,%eax
	movw	%ax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1(%rip)
.Ll498:
# [1256] waveform2:=ramb^[$d40b] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54283(%rax),%eax
	shrl	$4,%eax
	movw	%ax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2(%rip)
.Ll499:
# [1257] waveform3:=ramb^[$d412] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54290(%rax),%eax
	shrl	$4,%eax
	movw	%ax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3(%rip)
.Ll500:
# [1259] sustainvol1i:=ss1 shl 26;
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS1(%rip),%eax
	shll	$26,%eax
	andl	$4294967295,%eax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL1I(%rip)
.Ll501:
# [1260] sustainvol2i:=ss2 shl 26;
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS2(%rip),%eax
	shll	$26,%eax
	andl	$4294967295,%eax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL2I(%rip)
.Ll502:
# [1261] sustainvol3i:=ss3 shl 26;
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS3(%rip),%eax
	shll	$26,%eax
	andl	$4294967295,%eax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL3I(%rip)
.Lj1223:
.Ll503:
# [1264] sli:=0; sri:=0;
	movl	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SLI(%rip)
	movl	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SRI(%rip)
.Ll504:
# [1266] for i:=1 to 5 do
	movl	$1,-24(%rbp)
	subl	$1,-24(%rbp)
	.balign 8,0x90
.Lj1347:
	addl	$1,-24(%rbp)
.Ll505:
# [1269] pa1i:=pa1i+freq1i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1I(%rip),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip)
.Ll506:
# [1270] pa1ni:=pa1ni+freq1ni;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1NI(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1NI(%rip),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1NI(%rip)
.Ll507:
# [1271] if pa1i>16777216 then
	cmpl	$16777216,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip)
	jng	.Lj1353
.Ll508:
# [1273] pa2i:=pa2i and sync2;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC2(%rip),%eax
	andl	%edx,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip)
.Ll509:
# [1274] pa1i-=16777216;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	leal	-16777216(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip)
.Lj1353:
.Ll510:
# [1276] if pa1ni>=16777216 then
	cmpl	$16777216,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1NI(%rip)
	jnge	.Lj1359
.Ll511:
# [1278] pa1ni-=16777216;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1NI(%rip),%eax
	leal	-16777216(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1NI(%rip)
.Ll512:
# [1279] pp1:=1;
	movb	$1,-64(%rbp)
	jmp	.Lj1364
.Lj1359:
.Ll513:
# [1281] else pp1:=0;
	movb	$0,-64(%rbp)
.Lj1364:
.Ll514:
# [1283] pa2i:=pa2i+freq2i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2I(%rip),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip)
.Ll515:
# [1284] pa2ni:=pa2ni+freq2ni;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2NI(%rip),%eax
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2NI(%rip),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2NI(%rip)
.Ll516:
# [1285] if pa2i>16777216 then
	cmpl	$16777216,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip)
	jng	.Lj1372
.Ll517:
# [1287] pa2i-=16777216;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	leal	-16777216(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip)
.Ll518:
# [1288] pa3i:=pa3i and sync3;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC3(%rip),%eax
	andl	%edx,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip)
.Lj1372:
.Ll519:
# [1290] if pa2ni>=16777216 then
	cmpl	$16777216,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2NI(%rip)
	jnge	.Lj1378
.Ll520:
# [1292] pa2ni-=16777216;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2NI(%rip),%eax
	leal	-16777216(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2NI(%rip)
.Ll521:
# [1293] pp2:=1;
	movb	$1,-72(%rbp)
	jmp	.Lj1383
.Lj1378:
.Ll522:
# [1295] else pp2:=0;
	movb	$0,-72(%rbp)
.Lj1383:
.Ll523:
# [1297] pa3i:=pa3i+freq3i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3I(%rip),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip)
.Ll524:
# [1298] pa3ni:=pa3ni+freq3ni;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3NI(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3NI(%rip),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3NI(%rip)
.Ll525:
# [1299] if pa3i>16777216 then begin pa3i-=16777216;  pa1i:=pa1i and sync1; end ;
	cmpl	$16777216,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip)
	jng	.Lj1391
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	leal	-16777216(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip)
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC1(%rip),%eax
	andl	%edx,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip)
.Lj1391:
.Ll526:
# [1300] if pa3ni>=16777216 then
	cmpl	$16777216,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3NI(%rip)
	jnge	.Lj1397
.Ll527:
# [1302] pa3ni-=16777216;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3NI(%rip),%eax
	leal	-16777216(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3NI(%rip)
.Ll528:
# [1303] pp3:=1;
	movb	$1,-80(%rbp)
	jmp	.Lj1402
.Lj1397:
.Ll529:
# [1305] else pp3:=0;
	movb	$0,-80(%rbp)
.Lj1402:
.Ll530:
# [1309] if test1>0 then pa1i:=0;
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST1(%rip)
	jna	.Lj1406
	movl	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip)
.Lj1406:
.Ll531:
# [1310] if test2>0 then pa2i:=0;
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST2(%rip)
	jna	.Lj1410
	movl	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip)
.Lj1410:
.Ll532:
# [1311] if test3>0 then pa3i:=0;
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST3(%rip)
	jna	.Lj1414
	movl	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip)
.Lj1414:
.Ll533:
# [1314] case waveform1 of
	movw	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1(%rip),%ax
	cmpw	$15,%ax
	ja	.Lj1418
# PeepHole Optimization,var11
	andl	$65535,%eax
	leaq	.Ld12(%rip),%rdx
	movslq	(%rdx,%rax,4),%rax
	leaq	(%rdx,%rax,1),%rax
	jmp	*%rax
.Lj1419:
	jmp	.Lj1417
.Lj1420:
.Ll534:
# [1317] 1: begin if (pa1i shr 23 = 0) then wv1i:=(pa1i shl 1)-8388608 else wv1i:=((not (pa1i shl 1)) and $FFFFFF)-8388608; if (ring1>0) and (pa3>0) then wv1i:=-wv1i; end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shrl	$23,%eax
	testl	%eax,%eax
	jne	.Lj1432
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shll	$1,%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1435
.Lj1432:
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shll	$1,%eax
	notl	%eax
	andl	$16777215,%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
.Lj1435:
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING1(%rip)
	jna	.Lj1417
	movsd	_$RETRO$_Ld13(%rip),%xmm0
	comisd	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3(%rip),%xmm0
	jp	.Lj1417
	jnb	.Lj1417
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip),%rax
	negq	%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1417
.Lj1421:
.Ll535:
# [1318] 2: wv1i:=pa1i-8388608;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1417
.Lj1422:
.Ll536:
# [1319] 3: begin ind:=pa1i shr 16; wv1i:=((combined[ind]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,-48(%rbp)
	movl	-48(%rbp),%edx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rax
	movzbl	(%rax,%rdx,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1417
.Lj1423:
.Ll537:
# [1320] 4: if (pa1i shr 12) < pw1i then wv1i:=-8388608 else wv1i:=8388608;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shrl	$12,%eax
	cmpl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW1I(%rip),%eax
	jnl	.Lj1451
	movl	$-8388608,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1417
.Lj1451:
	movl	$8388608,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1417
.Lj1424:
.Ll538:
# [1321] 5: begin ind:=pa1i shr 16; wv1i:=((combined[ind+256]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,-48(%rbp)
	movslq	-48(%rbp),%rax
	leaq	U_$RETRO_$$_COMBINED(%rip),%rdx
	movzbl	256(%rdx,%rax,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1417
.Lj1425:
.Ll539:
# [1322] 6: begin ind:=pa1i shr 16; wv1i:=((combined[ind+512]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,-48(%rbp)
	movslq	-48(%rbp),%rax
	leaq	U_$RETRO_$$_COMBINED(%rip),%rdx
	movzbl	512(%rdx,%rax,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1417
.Lj1426:
.Ll540:
# [1323] 7: begin ind:=pa1i shr 16; wv1i:=((combined[ind+768]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,-48(%rbp)
	movslq	-48(%rbp),%rax
	leaq	U_$RETRO_$$_COMBINED(%rip),%rdx
	movzbl	768(%rdx,%rax,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1417
.Lj1427:
.Ll541:
# [1324] 8: begin if pp1=1 then wv1i:=(noise1-128) shl 16; end;
	cmpb	$1,-64(%rbp)
	jne	.Lj1417
	call	RETRO_$$_NOISE1$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1417
.Lj1428:
.Ll542:
# [1325] 9: wv1i:=pa1i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1417
.Lj1429:
.Ll543:
# [1326] 10: wv1i:=pa1i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1417
.Lj1430:
.Ll544:
# [1327] 11..15: wv1i:=pa1i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1417
.Lj1418:
.Ll545:
# [1328] else begin if pp1=1 then wv1i:=(noise1-128) shl 16; end;
	cmpb	$1,-64(%rbp)
	jne	.Lj1480
	call	RETRO_$$_NOISE1$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
.Lj1480:
.Lj1417:
.Ll546:
# [1332] case waveform2 of
	movw	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2(%rip),%ax
	cmpw	$15,%ax
	ja	.Lj1484
# PeepHole Optimization,var11
	andl	$65535,%eax
	leaq	.Ld14(%rip),%rdx
	movslq	(%rdx,%rax,4),%rax
	leaq	(%rdx,%rax,1),%rax
	jmp	*%rax
.Lj1485:
	jmp	.Lj1483
.Lj1486:
.Ll547:
# [1335] 1: begin if (pa2i shr 23 = 0) then wv2i:=(pa2i shl 1)-8388608 else wv2i:=((not (pa2i shl 1)) and $FFFFFF)-8388608; if (ring2>0) and (pa1>0) then wv2i:=-wv2i; end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shrl	$23,%eax
	testl	%eax,%eax
	jne	.Lj1498
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shll	$1,%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1501
.Lj1498:
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shll	$1,%eax
	notl	%eax
	andl	$16777215,%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
.Lj1501:
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING2(%rip)
	jna	.Lj1483
	movsd	_$RETRO$_Ld13(%rip),%xmm0
	comisd	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1(%rip),%xmm0
	jp	.Lj1483
	jnb	.Lj1483
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip),%rax
	negq	%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1483
.Lj1487:
.Ll548:
# [1336] 2: wv2i:=pa2i-8388608;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1483
.Lj1488:
.Ll549:
# [1337] 3: begin ind:=pa2i shr 16; wv2i:=((combined[ind]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,-48(%rbp)
	movl	-48(%rbp),%edx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rax
	movzbl	(%rax,%rdx,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1483
.Lj1489:
.Ll550:
# [1338] 4: if (pa2i shr 12) < pw2i then wv2i:=-8388608 else wv2i:=8388608;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shrl	$12,%eax
	cmpl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW2I(%rip),%eax
	jnl	.Lj1517
	movl	$-8388608,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1483
.Lj1517:
	movl	$8388608,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1483
.Lj1490:
.Ll551:
# [1339] 5: begin ind:=pa2i shr 16; wv2i:=((combined[ind+256]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,-48(%rbp)
	movslq	-48(%rbp),%rdx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rax
	movzbl	256(%rax,%rdx,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1483
.Lj1491:
.Ll552:
# [1340] 6: begin ind:=pa2i shr 16; wv2i:=((combined[ind+512]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,-48(%rbp)
	movslq	-48(%rbp),%rdx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rax
	movzbl	512(%rax,%rdx,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1483
.Lj1492:
.Ll553:
# [1341] 7: begin ind:=pa2i shr 16; wv2i:=((combined[ind+768]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,-48(%rbp)
	movslq	-48(%rbp),%rdx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rax
	movzbl	768(%rax,%rdx,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1483
.Lj1493:
.Ll554:
# [1342] 8: begin if pp2=1 then wv2i:=(noise2-128) shl 16; end;
	cmpb	$1,-72(%rbp)
	jne	.Lj1483
	call	RETRO_$$_NOISE2$$LONGWORD
	andl	$4294967295,%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1483
.Lj1494:
.Ll555:
# [1343] 9: wv2i:=pa2i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1483
.Lj1495:
.Ll556:
# [1344] 10: wv2i:=pa2i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1483
.Lj1496:
.Ll557:
# [1345] 11..15: wv2i:=pa2i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1483
.Lj1484:
.Ll558:
# [1346] else begin if pp2=1 then wv2i:=(noise2-128) shl 16; end;
	cmpb	$1,-72(%rbp)
	jne	.Lj1546
	call	RETRO_$$_NOISE2$$LONGWORD
	andl	$4294967295,%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
.Lj1546:
.Lj1483:
.Ll559:
# [1349] case waveform3 of
	movw	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3(%rip),%ax
	cmpw	$15,%ax
	ja	.Lj1550
# PeepHole Optimization,var11
	andl	$65535,%eax
	leaq	.Ld15(%rip),%rdx
	movslq	(%rdx,%rax,4),%rax
	leaq	(%rdx,%rax,1),%rax
	jmp	*%rax
.Lj1551:
	jmp	.Lj1549
.Lj1552:
.Ll560:
# [1352] 1: begin if (pa3i shr 23 = 0) then wv3i:=(pa3i shl 1)-8388608 else wv3i:=((not (pa3i shl 1)) and $FFFFFF)-8388608; if (ring3>0) and (pa2>0) then wv3i:=-wv3i; end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shrl	$23,%eax
	testl	%eax,%eax
	jne	.Lj1564
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shll	$1,%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1567
.Lj1564:
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shll	$1,%eax
	notl	%eax
	andl	$16777215,%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
.Lj1567:
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING3(%rip)
	jna	.Lj1549
	movsd	_$RETRO$_Ld13(%rip),%xmm0
	comisd	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2(%rip),%xmm0
	jp	.Lj1549
	jnb	.Lj1549
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip),%rax
	negq	%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1549
.Lj1553:
.Ll561:
# [1353] 2: wv3i:=pa3i-8388608;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1549
.Lj1554:
.Ll562:
# [1354] 3: begin ind:=pa3i shr 16; wv3i:=((combined[ind]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,-48(%rbp)
	movl	-48(%rbp),%edx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rax
	movzbl	(%rax,%rdx,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1549
.Lj1555:
.Ll563:
# [1355] 4: if (pa3i shr 12) < pw3i then wv3i:=-8388608 else wv3i:=8388608;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shrl	$12,%eax
	cmpl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW3I(%rip),%eax
	jnl	.Lj1583
	movl	$-8388608,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1549
.Lj1583:
	movl	$8388608,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1549
.Lj1556:
.Ll564:
# [1356] 5: begin ind:=pa3i shr 16; wv3i:=((combined[ind+256]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,-48(%rbp)
	movslq	-48(%rbp),%rax
	leaq	U_$RETRO_$$_COMBINED(%rip),%rdx
	movzbl	256(%rdx,%rax,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1549
.Lj1557:
.Ll565:
# [1357] 6: begin ind:=pa3i shr 16; wv3i:=((combined[ind+512]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,-48(%rbp)
	movslq	-48(%rbp),%rax
	leaq	U_$RETRO_$$_COMBINED(%rip),%rdx
	movzbl	512(%rdx,%rax,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1549
.Lj1558:
.Ll566:
# [1358] 7: begin ind:=pa3i shr 16; wv3i:=((combined[ind+768]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,-48(%rbp)
	movslq	-48(%rbp),%rax
	leaq	U_$RETRO_$$_COMBINED(%rip),%rdx
	movzbl	768(%rdx,%rax,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1549
.Lj1559:
.Ll567:
# [1359] 8: begin if pp3=1 then wv3i:=(noise3-128) shl 16; end;
	cmpb	$1,-80(%rbp)
	jne	.Lj1549
	call	RETRO_$$_NOISE3$$LONGWORD
	andl	$4294967295,%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1549
.Lj1560:
	jmp	.Lj1549
.Lj1561:
	jmp	.Lj1549
.Lj1562:
	jmp	.Lj1549
.Lj1550:
.Ll568:
# [1363] else begin if pp3=1 then wv3i:=(noise3-128) shl 16; end;
	cmpb	$1,-80(%rbp)
	jne	.Lj1606
	call	RETRO_$$_NOISE3$$LONGWORD
	andl	$4294967295,%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
.Lj1606:
.Lj1549:
.Ll569:
# [1367] if gate1=0 then adsrstate1:=4 else begin if ((adsrstate1=0) or (adsrstate1=4)) then adsrstate1:=1; end;  //release /attack
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE1(%rip)
	jne	.Lj1610
	movb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jmp	.Lj1613
.Lj1610:
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	je	.Lj1614
	cmpb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jne	.Lj1615
.Lj1614:
	movb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
.Lj1615:
.Lj1613:
.Ll570:
# [1369] if (adsrstate1=3) then adsrvol1i:=sustainvol1i
	cmpb	$3,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jne	.Lj1620
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL1I(%rip),%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	jmp	.Lj1623
.Lj1620:
.Ll571:
# [1370] else if (adsrstate1=1) then begin adsrvol1i:=adsrvol1i+(attacktablei[sa1]); if adsrvol1i>=1073741824 then adsrstate1:=2; end
	cmpb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jne	.Lj1625
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA1(%rip),%eax
	leaq	U_$RETRO_$$_ATTACKTABLEI(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	cmpq	$1073741824,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	jnge	.Lj1632
	movb	$2,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jmp	.Lj1632
.Lj1625:
.Ll572:
# [1371] else if (adsrstate1=2) then begin adsrvol1i:=(adsrvol1i*(srtablei[sd1])) shr 30; if adsrvol1i<=sustainvol1i then adsrstate1:=3; end
	cmpb	$2,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jne	.Lj1634
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD1(%rip),%eax
	leaq	U_$RETRO_$$_SRTABLEI(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip),%rax
	imulq	%rdx,%rax
	shrq	$30,%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip),%rax
	cmpq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL1I(%rip),%rax
	jnle	.Lj1641
	movb	$3,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jmp	.Lj1641
.Lj1634:
.Ll573:
# [1372] else if (adsrstate1=4) then begin adsrvol1i:=(adsrvol1i*(srtablei[sr1])) shr 30; if (adsrvol1i<=65536) then begin adsrstate1:=0; adsrvol1i:=0; end; end
	cmpb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jne	.Lj1643
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR1(%rip),%eax
	leaq	U_$RETRO_$$_SRTABLEI(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip),%rax
	imulq	%rdx,%rax
	shrq	$30,%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	cmpq	$65536,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	jnle	.Lj1652
	movb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	movq	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	jmp	.Lj1652
.Lj1643:
.Ll574:
# [1373] else adsrvol1i:=0;
	movq	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
.Lj1652:
.Lj1641:
.Lj1632:
.Lj1623:
.Ll575:
# [1375] if gate2=0 then adsrstate2:=4 else begin if ((adsrstate2=0) or (adsrstate2=4)) then adsrstate2:=1; end;  //release /attack
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE2(%rip)
	jne	.Lj1656
	movb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jmp	.Lj1659
.Lj1656:
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	je	.Lj1660
	cmpb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jne	.Lj1661
.Lj1660:
	movb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
.Lj1661:
.Lj1659:
.Ll576:
# [1377] if (adsrstate2=3) then adsrvol2i:=sustainvol2i
	cmpb	$3,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jne	.Lj1666
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL2I(%rip),%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
	jmp	.Lj1669
.Lj1666:
.Ll577:
# [1378] else if (adsrstate2=1) then begin
	cmpb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jne	.Lj1671
.Ll578:
# [1379] adsrvol2i:=adsrvol2i+(attacktablei[sa2]); if adsrvol2i>=1073741824 then adsrstate2:=2; end
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA2(%rip),%eax
	leaq	U_$RETRO_$$_ATTACKTABLEI(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
	cmpq	$1073741824,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
	jnge	.Lj1678
	movb	$2,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jmp	.Lj1678
.Lj1671:
.Ll579:
# [1380] else if (adsrstate2=2) then
	cmpb	$2,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jne	.Lj1680
.Ll580:
# [1382] adsrvol2i:=(adsrvol2i*(srtablei[sd2])) shr 30;
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD2(%rip),%eax
	leaq	U_$RETRO_$$_SRTABLEI(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip),%rax
	imulq	%rdx,%rax
	shrq	$30,%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
.Ll581:
# [1383] if adsrvol2i<=sustainvol2i then
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip),%rax
	cmpq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL2I(%rip),%rax
	jnle	.Lj1687
.Ll582:
# [1384] adsrstate2:=3; end
	movb	$3,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jmp	.Lj1687
.Lj1680:
.Ll583:
# [1385] else if (adsrstate2=4) then begin adsrvol2i:=(adsrvol2i*(srtablei[sr2])) shr 30; if (adsrvol2i<=65536) then begin adsrstate2:=0; adsrvol2i:=0; end; end
	cmpb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jne	.Lj1689
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR2(%rip),%edx
	leaq	U_$RETRO_$$_SRTABLEI(%rip),%rax
	movq	(%rax,%rdx,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip),%rax
	imulq	%rdx,%rax
	shrq	$30,%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
	cmpq	$65536,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
	jnle	.Lj1698
	movb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	movq	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
	jmp	.Lj1698
.Lj1689:
.Ll584:
# [1386] else adsrvol2i:=0;
	movq	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
.Lj1698:
.Lj1687:
.Lj1678:
.Lj1669:
.Ll585:
# [1389] if gate3=0 then adsrstate3:=4  else begin if ((adsrstate3=0) or (adsrstate3=4)) then adsrstate3:=1; end;  //release /attack
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE3(%rip)
	jne	.Lj1702
	movb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jmp	.Lj1705
.Lj1702:
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	je	.Lj1706
	cmpb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jne	.Lj1707
.Lj1706:
	movb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
.Lj1707:
.Lj1705:
.Ll586:
# [1391] if (adsrstate3=3) then adsrvol3i:=sustainvol3i
	cmpb	$3,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jne	.Lj1712
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL3I(%rip),%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	jmp	.Lj1715
.Lj1712:
.Ll587:
# [1392] else if (adsrstate3=1) then begin adsrvol3i:=adsrvol3i+(attacktablei[sa3]); if adsrvol3i>=1073741824 then adsrstate3:=2; end
	cmpb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jne	.Lj1717
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA3(%rip),%eax
	leaq	U_$RETRO_$$_ATTACKTABLEI(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	cmpq	$1073741824,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	jnge	.Lj1724
	movb	$2,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jmp	.Lj1724
.Lj1717:
.Ll588:
# [1393] else if (adsrstate3=2) then begin adsrvol3i:=(adsrvol3i*(srtablei[sd3])) shr 30; if adsrvol3i<=sustainvol3i then adsrstate3:=3; end
	cmpb	$2,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jne	.Lj1726
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD3(%rip),%eax
	leaq	U_$RETRO_$$_SRTABLEI(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip),%rax
	imulq	%rdx,%rax
	shrq	$30,%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip),%rax
	cmpq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL3I(%rip),%rax
	jnle	.Lj1733
	movb	$3,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jmp	.Lj1733
.Lj1726:
.Ll589:
# [1394] else if (adsrstate3=4) then begin adsrvol3i:=(adsrvol3i*(srtablei[sr3])) shr 30; if (adsrvol3i<=65536) then begin adsrstate3:=0; adsrvol3i:=0; end; end
	cmpb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jne	.Lj1735
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR3(%rip),%eax
	leaq	U_$RETRO_$$_SRTABLEI(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip),%rax
	imulq	%rdx,%rax
	shrq	$30,%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	cmpq	$65536,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	jnle	.Lj1744
	movb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	movq	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	jmp	.Lj1744
.Lj1735:
.Ll590:
# [1395] else adsrvol3i:=0;
	movq	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
.Lj1744:
.Lj1733:
.Lj1724:
.Lj1715:
.Ll591:
# [1400] wv1ii:=wv1i*adsrvol1i*ramb^[$70003];    // wv1a:=0;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip),%rax
	imulq	%rdx,%rax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movzbl	458755(%rdx),%edx
	imulq	%rax,%rdx
	movq	%rdx,-160(%rbp)
.Ll592:
# [1401] wv2ii:=wv2i*adsrvol2i*ramb^[$70004];    // wv2a:=0;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip),%rax
	imulq	%rdx,%rax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movzbl	458756(%rdx),%edx
	imulq	%rax,%rdx
	movq	%rdx,-168(%rbp)
.Ll593:
# [1402] wv3ii:=wv3i*adsrvol3i*ramb^[$70005];    // wv3a:=0;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip),%rax
	imulq	%rdx,%rax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movzbl	458757(%rdx),%edx
	imulq	%rax,%rdx
	movq	%rdx,-176(%rbp)
.Ll594:
# [1406] wv1ii:=(wv1ii div 137438953472);
	movq	-160(%rbp),%rdx
	movq	%rdx,%rax
	sarq	$63,%rax
	movq	$137438953471,%rcx
	andq	%rcx,%rax
	addq	%rax,%rdx
	sarq	$37,%rdx
	movq	%rdx,-160(%rbp)
.Ll595:
# [1407] wv2ii:=(wv2ii div 137438953472);
	movq	-168(%rbp),%rdx
	movq	%rdx,%rax
	sarq	$63,%rax
	movq	$137438953471,%rcx
	andq	%rcx,%rax
	addq	%rax,%rdx
	sarq	$37,%rdx
	movq	%rdx,-168(%rbp)
.Ll596:
# [1408] wv3ii:=(wv3ii div 137438953472);
	movq	-176(%rbp),%rdx
	movq	%rdx,%rax
	sarq	$63,%rax
	movq	$137438953471,%rcx
	andq	%rcx,%rax
	addq	%rax,%rdx
	sarq	$37,%rdx
	movq	%rdx,-176(%rbp)
.Ll597:
# [1410] fii:=1; fi2i:=1; fi3i:=1;
	movl	$1,-184(%rbp)
	movl	$1,-192(%rbp)
	movl	$1,-200(%rbp)
.Ll598:
# [1411] if f1 then begin fii:=wv1ii; wv1ii:=0; end;
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F1(%rip)
	je	.Lj1766
	movl	-160(%rbp),%eax
	movl	%eax,-184(%rbp)
	movq	$0,-160(%rbp)
.Lj1766:
.Ll599:
# [1412] if f2 then begin fi2i:=wv2ii; wv2ii:=0; end;
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F2(%rip)
	je	.Lj1772
	movl	-168(%rbp),%eax
	movl	%eax,-192(%rbp)
	movq	$0,-168(%rbp)
.Lj1772:
.Ll600:
# [1413] if f3 then begin fi3i:=wv3ii; wv3ii:=0; end;
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F3(%rip)
	je	.Lj1778
	movl	-176(%rbp),%eax
	movl	%eax,-200(%rbp)
	movq	$0,-176(%rbp)
.Lj1778:
.Ll601:
# [1415] filter_Hi  := fii - ((filter_Bi * filter_resonance2i) div 256) - filter_Li;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_BI(%rip),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I(%rip),%rax
	imulq	%rdx,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$255,%rdx
	addq	%rdx,%rax
	sarq	$8,%rax
	movslq	-184(%rbp),%rdx
	subq	%rax,%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_LI(%rip),%rax
	subq	%rax,%rdx
	movl	%edx,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_HI(%rip)
.Ll602:
# [1416] filter_H2i  := fi2i - ((filter_B2i * filter_resonance2i) div 256) - filter_L2i;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B2I(%rip),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I(%rip),%rax
	imulq	%rdx,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$255,%rdx
	addq	%rdx,%rax
	sarq	$8,%rax
	movslq	-192(%rbp),%rdx
	subq	%rax,%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L2I(%rip),%rax
	subq	%rax,%rdx
	movl	%edx,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H2I(%rip)
.Ll603:
# [1417] filter_H3i  := fi3i - ((filter_B3i * filter_resonance2i) div 256) - filter_L3i;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B3I(%rip),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I(%rip),%rax
	imulq	%rdx,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$255,%rdx
	addq	%rdx,%rax
	sarq	$8,%rax
	movslq	-200(%rbp),%rdx
	subq	%rax,%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L3I(%rip),%rax
	subq	%rax,%rdx
	movl	%edx,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H3I(%rip)
.Ll604:
# [1419] filter_Bi += (filter_freqi * filter_Hi) div 32768;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI(%rip),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_HI(%rip),%rax
	imulq	%rdx,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$32767,%rdx
	addq	%rdx,%rax
	sarq	$15,%rax
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_BI(%rip),%rdx
	leaq	(%rax,%rdx),%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_BI(%rip)
.Ll605:
# [1420] filter_B2i += (filter_freqi * filter_H2i) div 32768;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI(%rip),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H2I(%rip),%rax
	imulq	%rdx,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$32767,%rdx
	addq	%rdx,%rax
	sarq	$15,%rax
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B2I(%rip),%rdx
	leaq	(%rax,%rdx),%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B2I(%rip)
.Ll606:
# [1421] filter_B3i += (filter_freqi * filter_H3i) div 32768;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI(%rip),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H3I(%rip),%rax
	imulq	%rdx,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$32767,%rdx
	addq	%rdx,%rax
	sarq	$15,%rax
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B3I(%rip),%rdx
	leaq	(%rax,%rdx),%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B3I(%rip)
.Ll607:
# [1423] filter_Li += (filter_freqi * filter_Bi) div 32768;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI(%rip),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_BI(%rip),%rax
	imulq	%rdx,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$32767,%rdx
	addq	%rdx,%rax
	sarq	$15,%rax
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_LI(%rip),%rdx
	leaq	(%rax,%rdx),%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_LI(%rip)
.Ll608:
# [1424] filter_L2i += (filter_freqi * filter_B2i) div 32768;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI(%rip),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B2I(%rip),%rax
	imulq	%rdx,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$32767,%rdx
	addq	%rdx,%rax
	sarq	$15,%rax
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L2I(%rip),%rdx
	leaq	(%rax,%rdx),%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L2I(%rip)
.Ll609:
# [1425] filter_L3i += (filter_freqi * filter_B3i) div 32768;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI(%rip),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B3I(%rip),%rax
	imulq	%rdx,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$32767,%rdx
	addq	%rdx,%rax
	sarq	$15,%rax
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L3I(%rip),%rdx
	leaq	(%rax,%rdx),%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L3I(%rip)
.Ll610:
# [1427] fouti:=wv1ii;
	movl	-160(%rbp),%eax
	movl	%eax,-208(%rbp)
.Ll611:
# [1428] fouti+=filter_li and fl;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_LI(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FL(%rip),%eax
	andl	%edx,%eax
	movl	-208(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-208(%rbp)
.Ll612:
# [1429] fouti+=filter_bi and fb;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_BI(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FB(%rip),%eax
	andl	%edx,%eax
	movl	-208(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-208(%rbp)
.Ll613:
# [1430] fouti+=filter_hi and fu;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_HI(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FU(%rip),%eax
	andl	%edx,%eax
	movl	-208(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-208(%rbp)
.Ll614:
# [1432] fout2i:=wv2ii;
	movl	-168(%rbp),%eax
	movl	%eax,-216(%rbp)
.Ll615:
# [1433] fout2i+=filter_l2i and fl;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L2I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FL(%rip),%eax
	andl	%edx,%eax
	movl	-216(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-216(%rbp)
.Ll616:
# [1434] fout2i+=filter_b2i and fb;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B2I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FB(%rip),%eax
	andl	%edx,%eax
	movl	-216(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-216(%rbp)
.Ll617:
# [1435] fout2i+=filter_h2i and fu;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H2I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FU(%rip),%eax
	andl	%edx,%eax
	movl	-216(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-216(%rbp)
.Ll618:
# [1437] fout3i:=wv3ii;
	movl	-176(%rbp),%eax
	movl	%eax,-224(%rbp)
.Ll619:
# [1438] fout3i+=filter_l3i and fl;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L3I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FL(%rip),%eax
	andl	%edx,%eax
	movl	-224(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-224(%rbp)
.Ll620:
# [1439] fout3i+=filter_b3i and fb;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B3I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FB(%rip),%eax
	andl	%edx,%eax
	movl	-224(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-224(%rbp)
.Ll621:
# [1440] fout3i+=filter_h3i and fu;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H3I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FU(%rip),%eax
	andl	%edx,%eax
	movl	-224(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-224(%rbp)
.Ll622:
# [1442] wv5i:=(volume*((fouti div 2)+(fout2i div 4)+ (fout2i div 2)+(fout3i)));
	movslq	-208(%rbp),%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$1,%rdx
	addq	%rdx,%rax
	sarq	$1,%rax
	movslq	-216(%rbp),%rdx
	movq	%rdx,%rcx
	sarq	$63,%rcx
	andq	$3,%rcx
	addq	%rcx,%rdx
	sarq	$2,%rdx
	leaq	(%rax,%rdx),%rcx
	movslq	-216(%rbp),%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$1,%rdx
	addq	%rdx,%rax
	sarq	$1,%rax
	leaq	(%rcx,%rax),%rdx
	movslq	-224(%rbp),%rax
	leaq	(%rdx,%rax),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_VOLUME(%rip),%rax
	imulq	%rdx,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV5I(%rip)
.Ll623:
# [1443] wv4i:=(volume*((fouti)+(fout2i div 4)+ (fout2i div 2)+(fout3i div 2)));
	movslq	-216(%rbp),%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$3,%rdx
	addq	%rdx,%rax
	sarq	$2,%rax
	movslq	-208(%rbp),%rdx
	leaq	(%rax,%rdx),%rcx
	movslq	-216(%rbp),%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$1,%rdx
	addq	%rdx,%rax
	sarq	$1,%rax
	leaq	(%rcx,%rax),%rcx
	movslq	-224(%rbp),%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$1,%rdx
	addq	%rdx,%rax
	sarq	$1,%rax
	leaq	(%rcx,%rax),%rdx
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_VOLUME(%rip),%rax
	imulq	%rdx,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV4I(%rip)
.Ll624:
# [1446] sri+=wv4i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SRI(%rip),%eax
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV4I(%rip),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SRI(%rip)
.Ll625:
# [1447] sli+=wv5i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SLI(%rip),%eax
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV5I(%rip),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SLI(%rip)
.Ll626:
	cmpl	$5,-24(%rbp)
	jl	.Lj1347
.Ll627:
# [1450] sid1:=sri div 512;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SRI(%rip),%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$511,%rdx
	addq	%rdx,%rax
	sarq	$9,%rax
	movl	%eax,-32(%rbp)
.Ll628:
# [1451] sid1l:=sli div 512;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SLI(%rip),%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$511,%rdx
	addq	%rdx,%rax
	sarq	$9,%rax
	movl	%eax,-40(%rbp)
.Ll629:
# [1452] oldsc:=sc;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SC(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_OLDSC(%rip)
.Ll630:
# [1453] sc:=sid1+sid1l;
	movl	-32(%rbp),%edx
	movl	-40(%rbp),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SC(%rip)
.Ll631:
# [1454] if abs(sc)>65535 then lpoke ($6000c,$FF0000);
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SC(%rip),%edx
	movl	%edx,%eax
	negl	%eax
	cmovnsl	%eax,%edx
	cmpl	$65535,%edx
	jng	.Lj1842
	movl	$16711680,%edx
	movl	$393228,%ecx
	call	RETRO_$$_LPOKE$LONGINT$LONGWORD
.Lj1842:
.Ll632:
# [1456] sid[0]:=sid1;
	movq	-16(%rbp),%rdx
	movw	-32(%rbp),%ax
	movw	%ax,(%rdx)
.Ll633:
# [1457] sid[1]:=sid1l;
	movq	-16(%rbp),%rax
	movw	-40(%rbp),%dx
	movw	%dx,2(%rax)
.Ll634:
# [1458] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc182:
.Lt28:
.Ll635:

.section .data.n_RETRO_$$_SID$LONGINT$$TSAMPLE,"d"
	.balign 4
.Ld12:
	.long	.Lj1419-.Ld12
	.long	.Lj1420-.Ld12
	.long	.Lj1421-.Ld12
	.long	.Lj1422-.Ld12
	.long	.Lj1423-.Ld12
	.long	.Lj1424-.Ld12
	.long	.Lj1425-.Ld12
	.long	.Lj1426-.Ld12
	.long	.Lj1427-.Ld12
	.long	.Lj1428-.Ld12
	.long	.Lj1429-.Ld12
	.long	.Lj1430-.Ld12
	.long	.Lj1430-.Ld12
	.long	.Lj1430-.Ld12
	.long	.Lj1430-.Ld12
	.long	.Lj1430-.Ld12

.section .data.n_RETRO_$$_SID$LONGINT$$TSAMPLE,"d"
	.balign 4
.Ld14:
	.long	.Lj1485-.Ld14
	.long	.Lj1486-.Ld14
	.long	.Lj1487-.Ld14
	.long	.Lj1488-.Ld14
	.long	.Lj1489-.Ld14
	.long	.Lj1490-.Ld14
	.long	.Lj1491-.Ld14
	.long	.Lj1492-.Ld14
	.long	.Lj1493-.Ld14
	.long	.Lj1494-.Ld14
	.long	.Lj1495-.Ld14
	.long	.Lj1496-.Ld14
	.long	.Lj1496-.Ld14
	.long	.Lj1496-.Ld14
	.long	.Lj1496-.Ld14
	.long	.Lj1496-.Ld14

.section .data.n_RETRO_$$_SID$LONGINT$$TSAMPLE,"d"
	.balign 4
.Ld15:
	.long	.Lj1551-.Ld15
	.long	.Lj1552-.Ld15
	.long	.Lj1553-.Ld15
	.long	.Lj1554-.Ld15
	.long	.Lj1555-.Ld15
	.long	.Lj1556-.Ld15
	.long	.Lj1557-.Ld15
	.long	.Lj1558-.Ld15
	.long	.Lj1559-.Ld15
	.long	.Lj1560-.Ld15
	.long	.Lj1561-.Ld15
	.long	.Lj1562-.Ld15
	.long	.Lj1562-.Ld15
	.long	.Lj1562-.Ld15
	.long	.Lj1562-.Ld15
	.long	.Lj1562-.Ld15

.section .text.n_retro_$$_initsinetable,"x"
	.balign 16,0x90
.globl	RETRO_$$_INITSINETABLE
RETRO_$$_INITSINETABLE:
.Lc186:
# Temps allocated between rbp-24 and rbp-8
.seh_proc RETRO_$$_INITSINETABLE
.Ll636:
# [1516] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc188:
.Lc189:
	movq	%rsp,%rbp
.Lc190:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
# Var i located at rbp-8, size=OS_S32
.Ll637:
# [1517] for i:=0 to 65535 do
	movl	$0,-8(%rbp)
	subl	$1,-8(%rbp)
	.balign 8,0x90
.Lj1855:
	addl	$1,-8(%rbp)
.Ll638:
# [1518] sinetable[i]:=round(8388607*sin(2*pi*i/65536));
	cvtsi2sdl	-8(%rbp),%xmm0
	mulsd	_$RETRO$_Ld17(%rip),%xmm0
	mulsd	_$RETRO$_Ld18(%rip),%xmm0
	call	fpc_sin_real
	mulsd	_$RETRO$_Ld16(%rip),%xmm0
	cvtsd2siq	%xmm0,%rax
	movl	-8(%rbp),%ecx
	leaq	U_$RETRO_$$_SINETABLE(%rip),%rdx
	movl	%eax,(%rdx,%rcx,4)
.Ll639:
	cmpl	$65535,-8(%rbp)
	jl	.Lj1855
.Ll640:
# [1520] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc187:
.Lt40:
.Ll641:

.section .text.n_retro_$$_initlogtable,"x"
	.balign 16,0x90
.globl	RETRO_$$_INITLOGTABLE
RETRO_$$_INITLOGTABLE:
.Lc191:
# Temps allocated between rbp-40 and rbp-24
.seh_proc RETRO_$$_INITLOGTABLE
.Ll642:
# [1527] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc193:
.Lc194:
	movq	%rsp,%rbp
.Lc195:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var i located at rbp-8, size=OS_S32
# Var q located at rbp-16, size=OS_F64
# Var q2 located at rbp-24, size=OS_F64
.Ll643:
# [1528] q:=4294967296;
	movq	_$RETRO$_Ld19(%rip),%rax
	movq	%rax,-16(%rbp)
.Ll644:
# [1529] q2:=0.999841363784793800909651;
	movq	_$RETRO$_Ld20(%rip),%rax
	movq	%rax,-24(%rbp)
.Ll645:
# [1531] for i:=65535 downto 0 do
	movl	$65535,-8(%rbp)
	addl	$1,-8(%rbp)
	.balign 8,0x90
.Lj1868:
	subl	$1,-8(%rbp)
.Ll646:
# [1533] q:=q*q2;
	movsd	-16(%rbp),%xmm0
	mulsd	-24(%rbp),%xmm0
	movsd	%xmm0,-16(%rbp)
.Ll647:
# [1534] logtable[i]:=trunc(q);
	movsd	-16(%rbp),%xmm0
	cvttsd2siq	%xmm0,%rax
	movl	-8(%rbp),%edx
	leaq	U_$RETRO_$$_LOGTABLE(%rip),%rcx
	movl	%eax,(%rcx,%rdx,4)
.Ll648:
	cmpl	$0,-8(%rbp)
	jg	.Lj1868
.Ll649:
# [1536] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc192:
.Lt41:
.Ll650:

.section .text.n_retro_$$_fmsynth$$tsample,"x"
	.balign 16,0x90
.globl	RETRO_$$_FMSYNTH$$TSAMPLE
RETRO_$$_FMSYNTH$$TSAMPLE:
.Lc196:
.seh_proc RETRO_$$_FMSYNTH$$TSAMPLE
.Ll651:
# [1597] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc198:
.Lc199:
	movq	%rsp,%rbp
.Lc200:
	leaq	-96(%rsp),%rsp
.seh_stackalloc 96
.seh_endprologue
# Var $result located at rbp-8, size=OS_64
# Var res64a located at rbp-16, size=OS_S64
# Var vel located at rbp-24, size=OS_S64
# Var modulator located at rbp-32, size=OS_S64
# Var i located at rbp-40, size=OS_S32
# Var j located at rbp-48, size=OS_S32
# Var sample located at rbp-56, size=OS_S64
	movq	%rcx,-8(%rbp)
.Ll652:
# [1598] ft:=gettime;
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,U_$RETRO_$$_FT(%rip)
.Ll653:
# [1618] for i:=1 to 1000 do
	movl	$1,-40(%rbp)
	subl	$1,-40(%rbp)
	.balign 8,0x90
.Lj1879:
	addl	$1,-40(%rbp)
.Ll654:
# [1620] opdata[0]:=(opdata[0]+((opdata[1]*opdata[2]) shr 24)*opdata[3]*opdata[4] shr 24);
	movl	U_$RETRO_$$_OPDATA+4(%rip),%edx
	movl	U_$RETRO_$$_OPDATA+8(%rip),%eax
	imulq	%rdx,%rax
	shrq	$24,%rax
	movl	U_$RETRO_$$_OPDATA+12(%rip),%edx
	imulq	%rax,%rdx
	movl	U_$RETRO_$$_OPDATA+16(%rip),%eax
	imulq	%rdx,%rax
	shrq	$24,%rax
	movl	U_$RETRO_$$_OPDATA(%rip),%edx
	leaq	(%rax,%rdx),%rax
	movl	%eax,U_$RETRO_$$_OPDATA(%rip)
.Ll655:
# [1624] modulator:=outputtable[0]*opdata[6]
	movslq	U_$RETRO_$$_OUTPUTTABLE(%rip),%rdx
	movl	U_$RETRO_$$_OPDATA+24(%rip),%eax
	imulq	%rdx,%rax
.Ll656:
# [1625] +outputtable[1]*opdata[7]
	movslq	U_$RETRO_$$_OUTPUTTABLE+4(%rip),%rcx
	movl	U_$RETRO_$$_OPDATA+28(%rip),%edx
	imulq	%rcx,%rdx
	leaq	(%rax,%rdx),%rcx
.Ll657:
# [1626] +outputtable[2]*opdata[8]
	movslq	U_$RETRO_$$_OUTPUTTABLE+8(%rip),%rdx
	movl	U_$RETRO_$$_OPDATA+32(%rip),%eax
	imulq	%rdx,%rax
	leaq	(%rcx,%rax),%rcx
.Ll658:
# [1627] +outputtable[3]*opdata[9]
	movslq	U_$RETRO_$$_OUTPUTTABLE+12(%rip),%rdx
	movl	U_$RETRO_$$_OPDATA+36(%rip),%eax
	imulq	%rdx,%rax
	leaq	(%rcx,%rax),%rcx
.Ll659:
# [1628] +outputtable[4]*opdata[10]
	movslq	U_$RETRO_$$_OUTPUTTABLE+16(%rip),%rdx
	movl	U_$RETRO_$$_OPDATA+40(%rip),%eax
	imulq	%rdx,%rax
	leaq	(%rcx,%rax),%rdx
.Ll660:
# [1629] +outputtable[5]*opdata[11]
	movslq	U_$RETRO_$$_OUTPUTTABLE+20(%rip),%rcx
	movl	U_$RETRO_$$_OPDATA+44(%rip),%eax
	imulq	%rcx,%rax
	leaq	(%rdx,%rax),%rdx
.Ll661:
# [1630] +outputtable[6]*opdata[12]
	movslq	U_$RETRO_$$_OUTPUTTABLE+24(%rip),%rcx
	movl	U_$RETRO_$$_OPDATA+48(%rip),%eax
	imulq	%rcx,%rax
	leaq	(%rdx,%rax),%rdx
.Ll662:
# [1631] +outputtable[7]*opdata[13];
	movslq	U_$RETRO_$$_OUTPUTTABLE+28(%rip),%rcx
	movl	U_$RETRO_$$_OPDATA+52(%rip),%eax
	imulq	%rcx,%rax
	leaq	(%rdx,%rax),%rax
.Ll663:
	movq	%rax,-32(%rbp)
.Ll664:
# [1633] opdata[5]:=((opdata[5]+(modulator shr 32)+opdata[0]));
	movl	U_$RETRO_$$_OPDATA+20(%rip),%edx
	movq	-32(%rbp),%rax
	shrq	$32,%rax
	leaq	(%rdx,%rax),%rax
	movl	U_$RETRO_$$_OPDATA(%rip),%edx
	leaq	(%rax,%rdx),%rax
	movl	%eax,U_$RETRO_$$_OPDATA+20(%rip)
.Ll665:
# [1640] sample:=sinetable[opdata[5]];
	movl	U_$RETRO_$$_OPDATA+20(%rip),%edx
	leaq	U_$RETRO_$$_SINETABLE(%rip),%rax
	movslq	(%rax,%rdx,4),%rax
	movq	%rax,-56(%rbp)
.Ll666:
# [1657] if opdata[19]=4 then  // release
	cmpl	$4,U_$RETRO_$$_OPDATA+76(%rip)
	jne	.Lj1889
.Ll667:
# [1659] opdata[18]:=opdata[18]+opdata[26];
	movl	U_$RETRO_$$_OPDATA+72(%rip),%eax
	movl	U_$RETRO_$$_OPDATA+104(%rip),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,U_$RETRO_$$_OPDATA+72(%rip)
	jmp	.Lj1892
.Lj1889:
.Ll668:
# [1664] else if opdata[19]=1 then //attack
	cmpl	$1,U_$RETRO_$$_OPDATA+76(%rip)
	jne	.Lj1894
.Ll669:
# [1666] opdata[18]:=opdata[18]+opdata[20];
	movl	U_$RETRO_$$_OPDATA+72(%rip),%edx
	movl	U_$RETRO_$$_OPDATA+80(%rip),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,U_$RETRO_$$_OPDATA+72(%rip)
.Ll670:
# [1667] if opdata[20]>=opdata[21] then opdata[19]:=2;
	movl	U_$RETRO_$$_OPDATA+80(%rip),%eax
	cmpl	U_$RETRO_$$_OPDATA+84(%rip),%eax
	jnae	.Lj1901
	movl	$2,U_$RETRO_$$_OPDATA+76(%rip)
	jmp	.Lj1901
.Lj1894:
.Ll671:
# [1669] else if opdata[19]=2 then  // decay 1
	cmpl	$2,U_$RETRO_$$_OPDATA+76(%rip)
	jne	.Lj1903
.Ll672:
# [1671] opdata[18]:=opdata[18]+opdata[22];
	movl	U_$RETRO_$$_OPDATA+72(%rip),%eax
	movl	U_$RETRO_$$_OPDATA+88(%rip),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,U_$RETRO_$$_OPDATA+72(%rip)
	jmp	.Lj1906
.Lj1903:
.Ll673:
# [1676] else if opdata[19]=3 then  // decay 2
	cmpl	$3,U_$RETRO_$$_OPDATA+76(%rip)
	jne	.Lj1908
.Ll674:
# [1678] opdata[18]:=opdata[18]+opdata[24];
	movl	U_$RETRO_$$_OPDATA+72(%rip),%edx
	movl	U_$RETRO_$$_OPDATA+96(%rip),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,U_$RETRO_$$_OPDATA+72(%rip)
.Lj1908:
.Lj1906:
.Lj1901:
.Lj1892:
.Ll675:
# [1684] sample:=(sample*opdata[18])shr 32;
	movl	U_$RETRO_$$_OPDATA+72(%rip),%edx
	movq	-56(%rbp),%rax
	imulq	%rdx,%rax
	shrq	$32,%rax
	movq	%rax,-56(%rbp)
.Ll676:
# [1699] sample:=(sample*opdata[29]*opdata[30]) shr 24;
	movl	U_$RETRO_$$_OPDATA+116(%rip),%edx
	movq	-56(%rbp),%rax
	imulq	%rdx,%rax
	movl	U_$RETRO_$$_OPDATA+120(%rip),%edx
	imulq	%rax,%rdx
	shrq	$24,%rdx
	movq	%rdx,-56(%rbp)
.Ll677:
# [1700] vel:=$FFFFFF-opdata[31]+opdata[31]*opdata[32];
	movl	U_$RETRO_$$_OPDATA+124(%rip),%edx
	movl	U_$RETRO_$$_OPDATA+128(%rip),%eax
	imulq	%rdx,%rax
	movl	U_$RETRO_$$_OPDATA+124(%rip),%ecx
	movq	$16777215,%rdx
	subq	%rcx,%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,-24(%rbp)
.Ll678:
# [1701] sample:=(sample*vel) shr 24;
	movq	-56(%rbp),%rdx
	movq	-24(%rbp),%rax
	imulq	%rdx,%rax
	shrq	$24,%rax
	movq	%rax,-56(%rbp)
.Ll679:
# [1702] sample:=(sample*opdata[33]) div $1000000;
	movl	U_$RETRO_$$_OPDATA+132(%rip),%edx
	movq	-56(%rbp),%rax
	imulq	%rdx,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$16777215,%rdx
	addq	%rdx,%rax
	sarq	$24,%rax
	movq	%rax,-56(%rbp)
.Ll680:
# [1703] sample:=(sample*opdata[34]) div $1000000;
	movl	U_$RETRO_$$_OPDATA+136(%rip),%edx
	movq	-56(%rbp),%rax
	imulq	%rdx,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$16777215,%rdx
	addq	%rdx,%rax
	sarq	$24,%rax
	movq	%rax,-56(%rbp)
.Ll681:
	cmpl	$1000,-40(%rbp)
	jl	.Lj1879
.Ll682:
# [1710] ftt:=gettime-ft;
	call	RETRO_$$_GETTIME$$INT64
	movq	U_$RETRO_$$_FT(%rip),%rdx
	subq	%rdx,%rax
	movq	%rax,U_$RETRO_$$_FTT(%rip)
.Ll683:
# [1714] fmsynth[0]:=sample;
	movq	-8(%rbp),%rdx
	movw	-56(%rbp),%ax
	movw	%ax,(%rdx)
.Ll684:
# [1715] fmsynth[1]:=sample;
	movq	-8(%rbp),%rax
	movw	-56(%rbp),%dx
	movw	%dx,2(%rax)
.Ll685:
# [1717] end;
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc197:
.Lt42:
.Ll686:

.section .text.n_retro_$$_antialias6$double$tfiltertable$$double,"x"
	.balign 16,0x90
.globl	RETRO_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE
RETRO_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE:
.Lc201:
# Temps allocated between rbp-40 and rbp-24
.seh_proc RETRO_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE
.Ll687:
# [1728] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc203:
.Lc204:
	movq	%rsp,%rbp
.Lc205:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var input located at rbp-8, size=OS_F64
# Var ft located at rbp-16, size=OS_64
# Var $result located at rbp-24, size=OS_F64
	movsd	%xmm0,-8(%rbp)
	movq	%rdx,-16(%rbp)
.Ll688:
# [1730] ft[0]:=ft[1];
	movq	-16(%rbp),%rdx
	movq	-16(%rbp),%rax
	movq	8(%rax),%rax
	movq	%rax,(%rdx)
.Ll689:
# [1731] ft[1]:=ft[2];
	movq	-16(%rbp),%rdx
	movq	-16(%rbp),%rax
	movq	16(%rax),%rax
	movq	%rax,8(%rdx)
.Ll690:
# [1732] ft[2]:=ft[3];
	movq	-16(%rbp),%rdx
	movq	-16(%rbp),%rax
	movq	24(%rax),%rax
	movq	%rax,16(%rdx)
.Ll691:
# [1733] ft[3]:=ft[4];
	movq	-16(%rbp),%rdx
	movq	-16(%rbp),%rax
	movq	32(%rax),%rax
	movq	%rax,24(%rdx)
.Ll692:
# [1734] ft[4]:=ft[5];
	movq	-16(%rbp),%rdx
	movq	-16(%rbp),%rax
	movq	40(%rax),%rax
	movq	%rax,32(%rdx)
.Ll693:
# [1735] ft[5]:=ft[6];
	movq	-16(%rbp),%rdx
	movq	-16(%rbp),%rax
	movq	48(%rax),%rax
	movq	%rax,40(%rdx)
.Ll694:
# [1737] ft[6]:=input/gain;
	movsd	-8(%rbp),%xmm0
	divsd	TC_$RETRO$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN(%rip),%xmm0
	movq	-16(%rbp),%rax
	movsd	%xmm0,48(%rax)
.Ll695:
# [1739] ft[7]:=ft[8];
	movq	-16(%rbp),%rdx
	movq	-16(%rbp),%rax
	movq	64(%rax),%rax
	movq	%rax,56(%rdx)
.Ll696:
# [1740] ft[8]:=ft[9];
	movq	-16(%rbp),%rdx
	movq	-16(%rbp),%rax
	movq	72(%rax),%rax
	movq	%rax,64(%rdx)
.Ll697:
# [1741] ft[9]:=ft[10];
	movq	-16(%rbp),%rdx
	movq	-16(%rbp),%rax
	movq	80(%rax),%rax
	movq	%rax,72(%rdx)
.Ll698:
# [1742] ft[10]:=ft[11];
	movq	-16(%rbp),%rdx
	movq	-16(%rbp),%rax
	movq	88(%rax),%rax
	movq	%rax,80(%rdx)
.Ll699:
# [1743] ft[11]:=ft[12];
	movq	-16(%rbp),%rdx
	movq	-16(%rbp),%rax
	movq	96(%rax),%rax
	movq	%rax,88(%rdx)
.Ll700:
# [1744] ft[12]:=ft[13];
	movq	-16(%rbp),%rdx
	movq	-16(%rbp),%rax
	movq	104(%rax),%rax
	movq	%rax,96(%rdx)
.Ll701:
# [1746] ft[13]:=(ft[0]+ft[6])+6*(ft[1]+ft[5])+15*(ft[3]+ft[4])+20*ft[3]
	movq	-16(%rbp),%rdx
	movq	-16(%rbp),%rax
	movsd	8(%rdx),%xmm0
	addsd	40(%rax),%xmm0
	mulsd	_$RETRO$_Ld21(%rip),%xmm0
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movsd	(%rax),%xmm1
	addsd	48(%rdx),%xmm1
	addsd	%xmm1,%xmm0
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movsd	24(%rax),%xmm1
	addsd	32(%rdx),%xmm1
	mulsd	_$RETRO$_Ld22(%rip),%xmm1
	addsd	%xmm0,%xmm1
	movq	-16(%rbp),%rax
	movsd	_$RETRO$_Ld23(%rip),%xmm0
	mulsd	24(%rax),%xmm0
	addsd	%xmm1,%xmm0
.Ll702:
# [1747] + ( -0.7992422456 * ft[7]) + (  4.9534616898 * ft[8])
	movq	-16(%rbp),%rax
	movsd	_$RETRO$_Ld24(%rip),%xmm1
	mulsd	56(%rax),%xmm1
	addsd	%xmm0,%xmm1
	movq	-16(%rbp),%rax
	movsd	_$RETRO$_Ld25(%rip),%xmm0
	mulsd	64(%rax),%xmm0
	addsd	%xmm1,%xmm0
.Ll703:
# [1748] + (-12.8163705530 * ft[9]) + ( 17.7202717200 * ft[10])
	movq	-16(%rbp),%rax
	movsd	_$RETRO$_Ld26(%rip),%xmm1
	mulsd	72(%rax),%xmm1
	addsd	%xmm0,%xmm1
	movq	-16(%rbp),%rax
	movsd	_$RETRO$_Ld27(%rip),%xmm0
	mulsd	80(%rax),%xmm0
	addsd	%xmm1,%xmm0
.Ll704:
# [1749] + (-13.8090381750 * ft[11]) + (  5.7509166299 * ft[12]);
	movq	-16(%rbp),%rax
	movsd	_$RETRO$_Ld28(%rip),%xmm1
	mulsd	88(%rax),%xmm1
	addsd	%xmm0,%xmm1
	movq	-16(%rbp),%rax
	movsd	_$RETRO$_Ld29(%rip),%xmm0
	mulsd	96(%rax),%xmm0
	addsd	%xmm1,%xmm0
.Ll705:
	movq	-16(%rbp),%rax
	movsd	%xmm0,104(%rax)
.Ll706:
# [1751] antialias6:=ft[13];
	movq	-16(%rbp),%rax
	movq	104(%rax),%rax
	movq	%rax,-24(%rbp)
.Ll707:
# [1752] end;
	movsd	-24(%rbp),%xmm0
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc202:
.Lt38:
.Ll708:

.section .text.n_retro_$$_sdl_sound_init$$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_SDL_SOUND_INIT$$LONGINT
RETRO_$$_SDL_SOUND_INIT$$LONGINT:
.Lc206:
.seh_proc RETRO_$$_SDL_SOUND_INIT$$LONGINT
.Ll709:
# [1758] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc208:
.Lc209:
	movq	%rsp,%rbp
.Lc210:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var $result located at rbp-8, size=OS_S32
.Ll710:
# [1759] Result:=0;
	movl	$0,-8(%rbp)
.Ll711:
# [1760] desired.freq := 96000;                                     // sample rate
	movl	$96000,U_$RETRO_$$_DESIRED(%rip)
.Ll712:
# [1761] desired.format := AUDIO_S16;                               // 16-bit samples
	movw	$32784,U_$RETRO_$$_DESIRED+4(%rip)
.Ll713:
# [1762] desired.samples := 960;                                    // samples for 1 callback
	movw	$960,U_$RETRO_$$_DESIRED+8(%rip)
.Ll714:
# [1763] desired.channels := 2;                                     // stereo
	movb	$2,U_$RETRO_$$_DESIRED+6(%rip)
.Ll715:
# [1764] desired.callback := @AudioCallback;
	leaq	RETRO_$$_AUDIOCALLBACK$POINTER$PBYTE$LONGINT(%rip),%rax
	movq	%rax,U_$RETRO_$$_DESIRED+16(%rip)
.Ll716:
# [1765] desired.userdata := nil;
	movq	$0,U_$RETRO_$$_DESIRED+24(%rip)
.Ll717:
# [1767] if (SDL_OpenAudio(@desired, @obtained) < 0) then
	leaq	U_$RETRO_$$_OBTAINED(%rip),%rdx
	leaq	U_$RETRO_$$_DESIRED(%rip),%rcx
	call	_$dll$sdl2$SDL_OpenAudio
	cmpl	$0,%eax
	jnl	.Lj1978
.Ll718:
# [1769] Result:=-2;
	movl	$-2,-8(%rbp)
.Lj1978:
.Ll719:
# [1771] end;
	movl	-8(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc207:
.Lt37:
.Ll720:

.section .text.n_retro_$$_audiocallback$pointer$pbyte$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_AUDIOCALLBACK$POINTER$PBYTE$LONGINT
RETRO_$$_AUDIOCALLBACK$POINTER$PBYTE$LONGINT:
.Lc211:
# Temps allocated between rbp-144 and rbp-128
.seh_proc RETRO_$$_AUDIOCALLBACK$POINTER$PBYTE$LONGINT
.Ll721:
# [1787] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc213:
.Lc214:
	movq	%rsp,%rbp
.Lc215:
	leaq	-176(%rsp),%rsp
.seh_stackalloc 176
.seh_endprologue
# Var userdata located at rbp-8, size=OS_64
# Var audio located at rbp-16, size=OS_64
# Var length located at rbp-24, size=OS_S32
# Var audio2 located at rbp-32, size=OS_64
# Var s located at rbp-40, size=OS_32
# Var fs located at rbp-48, size=OS_F64
# Var t located at rbp-56, size=OS_S64
# Var k located at rbp-64, size=OS_S32
# Var i located at rbp-72, size=OS_S32
# Var il located at rbp-80, size=OS_S32
# Var j located at rbp-88, size=OS_S32
# Var buf located at rbp-120, size=OS_NO
# Var s1 located at rbp-128, size=OS_S16
	movq	%rcx,-8(%rbp)
	movq	%rdx,-16(%rbp)
	movl	%r8d,-24(%rbp)
.Ll722:
# [1789] audio2:=psmallint(audio);
	movq	-16(%rbp),%rax
	movq	%rax,-32(%rbp)
.Ll723:
# [1790] t:=gettime;
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,-56(%rbp)
.Ll724:
# [1792] for i:=0 to 959 do
	movl	$0,-72(%rbp)
	subl	$1,-72(%rbp)
	.balign 8,0x90
.Lj1993:
	addl	$1,-72(%rbp)
.Ll725:
# [1794] gain:=gain*1.0000002;
	movsd	TC_$RETRO_$$_GAIN(%rip),%xmm0
	mulsd	_$RETRO$_Ld30(%rip),%xmm0
	movsd	%xmm0,TC_$RETRO_$$_GAIN(%rip)
.Ll726:
# [1795] if gain>1 then gain:=1;
	movsd	_$RETRO$_Ld31(%rip),%xmm0
	comisd	TC_$RETRO_$$_GAIN(%rip),%xmm0
	jp	.Lj1997
	jnb	.Lj1997
	movq	_$RETRO$_Ld31(%rip),%rax
	movq	%rax,TC_$RETRO_$$_GAIN(%rip)
.Lj1997:
.Ll727:
# [1797] fs:=0.25*voices[0].getsample;
	movq	U_$FMSYNTH_$$_VOICES(%rip),%rcx
	call	FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
	mulsd	_$RETRO$_Ld32(%rip),%xmm0
	movsd	%xmm0,-48(%rbp)
.Ll728:
# [1798] for j:=1 to maxchannel-1 do
	movl	$1,-88(%rbp)
	subl	$1,-88(%rbp)
	.balign 8,0x90
.Lj2007:
	addl	$1,-88(%rbp)
.Ll729:
# [1799] fs+=0.25*voices[j].getsample;
	movl	-88(%rbp),%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rcx
	call	FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
	mulsd	_$RETRO$_Ld32(%rip),%xmm0
	addsd	-48(%rbp),%xmm0
	movsd	%xmm0,-48(%rbp)
.Ll730:
	cmpl	$29,-88(%rbp)
	jl	.Lj2007
.Ll731:
# [1800] if edelay then fs:=delay1(fs);
	cmpb	$0,TC_$RETRO_$$_EDELAY(%rip)
	je	.Lj2013
	movsd	-48(%rbp),%xmm0
	call	RETRO_$$_DELAY1$DOUBLE$$DOUBLE
	movsd	%xmm0,-48(%rbp)
.Lj2013:
.Ll732:
# [1801] if gain*abs(fs)>1 then gain:=1/(1.01*abs(fs));
	movsd	-48(%rbp),%xmm0
	andpd	FPC_ABSMASK_DOUBLE(%rip),%xmm0
	mulsd	TC_$RETRO_$$_GAIN(%rip),%xmm0
	comisd	_$RETRO$_Ld31(%rip),%xmm0
	jp	.Lj2019
	jna	.Lj2019
	movsd	-48(%rbp),%xmm0
	andpd	FPC_ABSMASK_DOUBLE(%rip),%xmm0
	mulsd	_$RETRO$_Ld33(%rip),%xmm0
	movsd	_$RETRO$_Ld31(%rip),%xmm1
	divsd	%xmm0,%xmm1
	movsd	%xmm1,TC_$RETRO_$$_GAIN(%rip)
.Lj2019:
.Ll733:
# [1803] fs:=fs*gain;
	movsd	-48(%rbp),%xmm0
	mulsd	TC_$RETRO_$$_GAIN(%rip),%xmm0
	movsd	%xmm0,-48(%rbp)
.Ll734:
# [1804] s1:=round(32767*fs);
	movsd	_$RETRO$_Ld34(%rip),%xmm0
	mulsd	-48(%rbp),%xmm0
	cvtsd2siq	%xmm0,%rax
	movw	%ax,-128(%rbp)
.Ll735:
# [1805] s[0]:=s1;
	movw	-128(%rbp),%ax
	movw	%ax,-40(%rbp)
.Ll736:
# [1806] s[1]:=s1;
	movw	-128(%rbp),%ax
	movw	%ax,-38(%rbp)
.Ll737:
# [1809] audio2[2*i]:=s[0];
	movq	-32(%rbp),%rcx
	movslq	-72(%rbp),%rax
	shlq	$1,%rax
	movw	-40(%rbp),%dx
	movw	%dx,(%rcx,%rax,2)
.Ll738:
# [1810] audio2[2*i+1]:=s[1];
	movq	-32(%rbp),%rcx
	movslq	-72(%rbp),%rax
	shlq	$1,%rax
	movw	-38(%rbp),%dx
	movw	%dx,2(%rcx,%rax,2)
.Ll739:
# [1811] oldsc:=sc;
	movl	TC_$RETRO_$$_SC(%rip),%eax
	movl	%eax,TC_$RETRO_$$_OLDSC(%rip)
.Ll740:
# [1812] sc:=s[0]+s[1];
	movswl	-40(%rbp),%edx
	movswl	-38(%rbp),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,TC_$RETRO_$$_SC(%rip)
.Ll741:
# [1813] scope[scj div 1]:=sc; inc(scj); if scj>959 then if (oldsc<0) and (sc>0) then scj:=0 else scj:=959;
	movl	TC_$RETRO_$$_SCJ(%rip),%eax
	movl	TC_$RETRO_$$_SC(%rip),%ecx
	leaq	U_$RETRO_$$_SCOPE(%rip),%rdx
	movl	%ecx,(%rdx,%rax,4)
	addl	$1,TC_$RETRO_$$_SCJ(%rip)
	cmpl	$959,TC_$RETRO_$$_SCJ(%rip)
	jng	.Lj2042
	cmpl	$0,TC_$RETRO_$$_OLDSC(%rip)
	jnl	.Lj2044
	cmpl	$0,TC_$RETRO_$$_SC(%rip)
	jng	.Lj2044
	movl	$0,TC_$RETRO_$$_SCJ(%rip)
	jmp	.Lj2048
.Lj2044:
	movl	$959,TC_$RETRO_$$_SCJ(%rip)
.Lj2048:
.Lj2042:
.Ll742:
	cmpl	$959,-72(%rbp)
	jl	.Lj1993
.Ll743:
# [1816] sidtime:=gettime-t;
	call	RETRO_$$_GETTIME$$INT64
	movq	-56(%rbp),%rdx
	subq	%rdx,%rax
	movq	%rax,U_$RETRO_$$_SIDTIME(%rip)
.Ll744:
# [1817] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc212:
.Lt36:
.Ll745:

.section .text.n_retro_$$_div$tsample$longint$$tsample,"x"
	.balign 16,0x90
.globl	RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE:
.Lc216:
# Temps allocated between rbp-32 and rbp-24
.seh_proc RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
.Ll746:
# [1822] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc218:
.Lc219:
	movq	%rsp,%rbp
.Lc220:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# Var a located at rbp-8, size=OS_64
# Var b located at rbp-16, size=OS_S32
# Var $result located at rbp-24, size=OS_64
	movq	%rcx,-24(%rbp)
	movq	%rdx,-8(%rbp)
	movl	%r8d,-16(%rbp)
	movq	-8(%rbp),%rax
	movl	(%rax),%eax
	movl	%eax,-32(%rbp)
.Ll747:
# [1823] result[0]:=a[0] div b;
	movswq	-32(%rbp),%rax
	movslq	-16(%rbp),%rcx
	cqto
	idivq	%rcx
	movq	-24(%rbp),%rdx
	movw	%ax,(%rdx)
.Ll748:
# [1824] result[1]:=a[1] div b;
	movswq	-30(%rbp),%rax
	movslq	-16(%rbp),%rcx
	cqto
	idivq	%rcx
	movq	-24(%rbp),%rdx
	movw	%ax,2(%rdx)
.Ll749:
# [1825] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc217:
.Lt43:
.Ll750:

.section .text.n_retro_$$_plus$tsample$tsample$$tsample,"x"
	.balign 16,0x90
.globl	RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE:
.Lc221:
# Temps allocated between rbp-48 and rbp-40
.seh_proc RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
.Ll751:
# [1830] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc223:
.Lc224:
	movq	%rsp,%rbp
.Lc225:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
# Var a located at rbp-8, size=OS_64
# Var b located at rbp-16, size=OS_64
# Var $result located at rbp-24, size=OS_64
# Var q1 located at rbp-32, size=OS_S32
# Var q2 located at rbp-40, size=OS_S32
	movq	%rcx,-24(%rbp)
	movq	%rdx,-8(%rbp)
	movq	%r8,-16(%rbp)
	movq	-8(%rbp),%rax
	movl	(%rax),%eax
	movl	%eax,-48(%rbp)
	movq	-16(%rbp),%rax
	movl	(%rax),%eax
	movl	%eax,-8(%rbp)
.Ll752:
# [1831] q1:=a[0] + b[0];
	movswl	-48(%rbp),%eax
	movswl	-8(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-32(%rbp)
.Ll753:
# [1832] q2:=a[1] + b[1];
	movswl	-46(%rbp),%eax
	movswl	-6(%rbp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-40(%rbp)
.Ll754:
# [1833] if q1>32767 then q1:=32767;
	cmpl	$32767,-32(%rbp)
	jng	.Lj2066
	movl	$32767,-32(%rbp)
.Lj2066:
.Ll755:
# [1834] if q1<-32767 then q1:=-32767;
	cmpl	$-32767,-32(%rbp)
	jnl	.Lj2070
	movl	$-32767,-32(%rbp)
.Lj2070:
.Ll756:
# [1835] if q2>32767 then q2:=32767;
	cmpl	$32767,-40(%rbp)
	jng	.Lj2074
	movl	$32767,-40(%rbp)
.Lj2074:
.Ll757:
# [1836] if q2<-32767 then q2:=-32767;
	cmpl	$-32767,-40(%rbp)
	jnl	.Lj2078
	movl	$-32767,-40(%rbp)
.Lj2078:
.Ll758:
# [1837] result[0]:=q1;
	movq	-24(%rbp),%rax
	movw	-32(%rbp),%dx
	movw	%dx,(%rax)
.Ll759:
# [1838] result[1]:=q2;
	movq	-24(%rbp),%rax
	movw	-40(%rbp),%dx
	movw	%dx,2(%rax)
.Ll760:
# [1839] end;
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc222:
.Lt44:
.Ll761:

.section .text.n_retro_$$_delay1$double$$double,"x"
	.balign 16,0x90
.globl	RETRO_$$_DELAY1$DOUBLE$$DOUBLE
RETRO_$$_DELAY1$DOUBLE$$DOUBLE:
.Lc226:
# Temps allocated between rbp-32 and rbp-16
.seh_proc RETRO_$$_DELAY1$DOUBLE$$DOUBLE
.Ll762:
# [1844] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc228:
.Lc229:
	movq	%rsp,%rbp
.Lc230:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
# Var s located at rbp-8, size=OS_F64
# Var $result located at rbp-16, size=OS_F64
	movsd	%xmm0,-8(%rbp)
.Ll763:
# [1845] result:=(dl[de] / 2) +s;
	movl	TC_$RETRO_$$_DE(%rip),%edx
	leaq	U_$RETRO_$$_DL(%rip),%rax
	movsd	(%rax,%rdx,8),%xmm0
	mulsd	_$RETRO$_Ld35(%rip),%xmm0
	addsd	-8(%rbp),%xmm0
	movsd	%xmm0,-16(%rbp)
.Ll764:
# [1846] dl[de]:=(dl[de] / 2) +s;
	movl	TC_$RETRO_$$_DE(%rip),%edx
	leaq	U_$RETRO_$$_DL(%rip),%rax
	movsd	(%rax,%rdx,8),%xmm0
	mulsd	_$RETRO$_Ld35(%rip),%xmm0
	addsd	-8(%rbp),%xmm0
	movl	TC_$RETRO_$$_DE(%rip),%eax
	leaq	U_$RETRO_$$_DL(%rip),%rdx
	movsd	%xmm0,(%rdx,%rax,8)
.Ll765:
# [1847] de:=(de+1) mod da;
	movslq	TC_$RETRO_$$_DE(%rip),%rax
	leaq	1(%rax),%rax
	movslq	TC_$RETRO_$$_DA(%rip),%rcx
	cqto
	idivq	%rcx
	movl	%edx,TC_$RETRO_$$_DE(%rip)
.Ll766:
# [1848] end;
	movsd	-16(%rbp),%xmm0
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc227:
.Lt31:
.Ll767:

.section .text.n_retro_$$_reverb1$double$$double,"x"
	.balign 16,0x90
.globl	RETRO_$$_REVERB1$DOUBLE$$DOUBLE
RETRO_$$_REVERB1$DOUBLE$$DOUBLE:
.Lc231:
# Temps allocated between rbp-112 and rbp-96
.seh_proc RETRO_$$_REVERB1$DOUBLE$$DOUBLE
.Ll768:
# [1857] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc233:
.Lc234:
	movq	%rsp,%rbp
.Lc235:
	leaq	-112(%rsp),%rsp
.seh_stackalloc 112
.seh_endprologue
# Var s located at rbp-8, size=OS_F64
# Var $result located at rbp-16, size=OS_F64
# Var a1 located at rbp-24, size=OS_S32
# Var a2 located at rbp-32, size=OS_S32
# Var a3 located at rbp-40, size=OS_S32
# Var a4 located at rbp-48, size=OS_S32
# Var a5 located at rbp-56, size=OS_S32
# Var a6 located at rbp-64, size=OS_S32
# Var a7 located at rbp-72, size=OS_S32
# Var a8 located at rbp-80, size=OS_S32
# Var a9 located at rbp-88, size=OS_S32
# Var a10 located at rbp-96, size=OS_S32
	movsd	%xmm0,-8(%rbp)
.Ll769:
# [1858] if sart=1 then begin sart:=0; rl[0]:=32767; end;
	cmpl	$1,TC_$RETRO$_$REVERB1$DOUBLE$$DOUBLE_$$_SART(%rip)
	jne	.Lj2096
	movl	$0,TC_$RETRO$_$REVERB1$DOUBLE$$DOUBLE_$$_SART(%rip)
	movq	_$RETRO$_Ld34(%rip),%rax
	movq	%rax,U_$RETRO_$$_RL(%rip)
.Lj2096:
.Ll770:
# [1859] ra:=657 ;
	movl	$657,TC_$RETRO_$$_RA(%rip)
.Ll771:
# [1860] a1:=(ra+re-160) mod ra;
	movslq	TC_$RETRO_$$_RA(%rip),%rdx
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	leaq	(%rdx,%rax),%rax
	leaq	-160(%rax),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	cqto
	idivq	%rcx
	movl	%edx,-24(%rbp)
.Ll772:
# [1861] a2:=(ra+re-192) mod ra;
	movslq	TC_$RETRO_$$_RA(%rip),%rdx
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	leaq	(%rdx,%rax),%rax
	leaq	-192(%rax),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	cqto
	idivq	%rcx
	movl	%edx,-32(%rbp)
.Ll773:
# [1862] a3:=(ra+re-256) mod ra;
	movslq	TC_$RETRO_$$_RA(%rip),%rdx
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	leaq	(%rdx,%rax),%rax
	leaq	-256(%rax),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	cqto
	idivq	%rcx
	movl	%edx,-40(%rbp)
.Ll774:
# [1863] a4:=(ra+re-320) mod ra;
	movslq	TC_$RETRO_$$_RA(%rip),%rdx
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	leaq	(%rdx,%rax),%rax
	leaq	-320(%rax),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	cqto
	idivq	%rcx
	movl	%edx,-48(%rbp)
.Ll775:
# [1864] a5:=(ra+re-352) mod ra;
	movslq	TC_$RETRO_$$_RA(%rip),%rdx
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	leaq	(%rdx,%rax),%rax
	leaq	-352(%rax),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	cqto
	idivq	%rcx
	movl	%edx,-56(%rbp)
.Ll776:
# [1865] a6:=(ra+re-384) mod ra;
	movslq	TC_$RETRO_$$_RA(%rip),%rdx
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	leaq	(%rdx,%rax),%rax
	leaq	-384(%rax),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	cqto
	idivq	%rcx
	movl	%edx,-64(%rbp)
.Ll777:
# [1866] a6:=(ra+re-448) mod ra;
	movslq	TC_$RETRO_$$_RA(%rip),%rdx
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	leaq	(%rdx,%rax),%rax
	leaq	-448(%rax),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	cqto
	idivq	%rcx
	movl	%edx,-64(%rbp)
.Ll778:
# [1867] a7:=(ra+re-480) mod ra;
	movslq	TC_$RETRO_$$_RA(%rip),%rdx
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	leaq	(%rdx,%rax),%rax
	leaq	-480(%rax),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	cqto
	idivq	%rcx
	movl	%edx,-72(%rbp)
.Ll779:
# [1868] a8:=(ra+re-512) mod ra;
	movslq	TC_$RETRO_$$_RA(%rip),%rdx
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	leaq	(%rdx,%rax),%rax
	leaq	-512(%rax),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	cqto
	idivq	%rcx
	movl	%edx,-80(%rbp)
.Ll780:
# [1869] a9:=(ra+re-576) mod ra;
	movslq	TC_$RETRO_$$_RA(%rip),%rdx
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	leaq	(%rdx,%rax),%rax
	leaq	-576(%rax),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	cqto
	idivq	%rcx
	movl	%edx,-88(%rbp)
.Ll781:
# [1870] a10:=(ra+re-640) mod ra;
	movslq	TC_$RETRO_$$_RA(%rip),%rdx
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	leaq	(%rdx,%rax),%rax
	leaq	-640(%rax),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	cqto
	idivq	%rcx
	movl	%edx,-96(%rbp)
.Ll782:
# [1872] result:=(rl[re] / 2) +s
	movl	TC_$RETRO_$$_RE(%rip),%edx
	leaq	U_$RETRO_$$_RL(%rip),%rax
	movsd	(%rax,%rdx,8),%xmm0
	mulsd	_$RETRO$_Ld35(%rip),%xmm0
	addsd	-8(%rbp),%xmm0
.Ll783:
# [1873] + (rl[a1] / 4)
	movl	-24(%rbp),%edx
	leaq	U_$RETRO_$$_RL(%rip),%rax
	movsd	(%rax,%rdx,8),%xmm1
	mulsd	_$RETRO$_Ld32(%rip),%xmm1
	addsd	%xmm0,%xmm1
.Ll784:
# [1874] + (rl[a2] / 6)
	movl	-32(%rbp),%edx
	leaq	U_$RETRO_$$_RL(%rip),%rax
	movsd	(%rax,%rdx,8),%xmm0
	divsd	_$RETRO$_Ld21(%rip),%xmm0
	addsd	%xmm1,%xmm0
.Ll785:
# [1875] + (rl[a3] / 8)
	movl	-40(%rbp),%edx
	leaq	U_$RETRO_$$_RL(%rip),%rax
	movsd	(%rax,%rdx,8),%xmm1
	mulsd	_$RETRO$_Ld36(%rip),%xmm1
	addsd	%xmm0,%xmm1
.Ll786:
# [1876] + (rl[a4] / 10)
	movl	-48(%rbp),%edx
	leaq	U_$RETRO_$$_RL(%rip),%rax
	movsd	(%rax,%rdx,8),%xmm0
	divsd	_$RETRO$_Ld37(%rip),%xmm0
	addsd	%xmm1,%xmm0
.Ll787:
# [1877] + (rl[a5] / 12)
	movl	-56(%rbp),%edx
	leaq	U_$RETRO_$$_RL(%rip),%rax
	movsd	(%rax,%rdx,8),%xmm1
	divsd	_$RETRO$_Ld38(%rip),%xmm1
	addsd	%xmm0,%xmm1
.Ll788:
# [1878] + (rl[a6] / 14)
	movl	-64(%rbp),%edx
	leaq	U_$RETRO_$$_RL(%rip),%rax
	movsd	(%rax,%rdx,8),%xmm0
	divsd	_$RETRO$_Ld39(%rip),%xmm0
	addsd	%xmm1,%xmm0
.Ll789:
# [1879] + (rl[a7] / 16)
	movl	-72(%rbp),%edx
	leaq	U_$RETRO_$$_RL(%rip),%rax
	movsd	(%rax,%rdx,8),%xmm1
	mulsd	_$RETRO$_Ld40(%rip),%xmm1
	addsd	%xmm0,%xmm1
.Ll790:
# [1880] + (rl[a8]/ 18)
	movl	-80(%rbp),%edx
	leaq	U_$RETRO_$$_RL(%rip),%rax
	movsd	(%rax,%rdx,8),%xmm0
	divsd	_$RETRO$_Ld41(%rip),%xmm0
	addsd	%xmm1,%xmm0
.Ll791:
# [1881] + (rl[a9] /20)
	movl	-88(%rbp),%edx
	leaq	U_$RETRO_$$_RL(%rip),%rax
	movsd	(%rax,%rdx,8),%xmm1
	divsd	_$RETRO$_Ld23(%rip),%xmm1
	addsd	%xmm0,%xmm1
.Ll792:
# [1882] + (rl[a10] / 22)
	movl	-96(%rbp),%edx
	leaq	U_$RETRO_$$_RL(%rip),%rax
	movsd	(%rax,%rdx,8),%xmm0
	divsd	_$RETRO$_Ld42(%rip),%xmm0
	addsd	%xmm1,%xmm0
.Ll793:
	movsd	%xmm0,-16(%rbp)
.Ll794:
# [1886] rl[re]:=(rl[re] / 2) +s;
	movl	TC_$RETRO_$$_RE(%rip),%edx
	leaq	U_$RETRO_$$_RL(%rip),%rax
	movsd	(%rax,%rdx,8),%xmm0
	mulsd	_$RETRO$_Ld35(%rip),%xmm0
	addsd	-8(%rbp),%xmm0
	movl	TC_$RETRO_$$_RE(%rip),%edx
	leaq	U_$RETRO_$$_RL(%rip),%rax
	movsd	%xmm0,(%rax,%rdx,8)
.Ll795:
# [1887] re:=(re+1) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	leaq	1(%rax),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	cqto
	idivq	%rcx
	movl	%edx,TC_$RETRO_$$_RE(%rip)
.Ll796:
# [1888] end;
	movsd	-16(%rbp),%xmm0
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc232:
.Lt45:
.Ll797:
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
	.balign 8
# [118] dl:array[0..192000] of myfloat;
	.globl U_$RETRO_$$_DL
U_$RETRO_$$_DL:
	.zero 1536008

.section .bss
	.balign 8
# [121] rl:array[0..192000] of myfloat;
	.globl U_$RETRO_$$_RL
U_$RETRO_$$_RL:
	.zero 1536008

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
# [196] opdata:array[0..65535] of cardinal;
U_$RETRO_$$_OPDATA:
	.zero 262144

.section .data.n_VMT_$RETRO_$$_TRETRO,"d"
	.balign 8
.globl	VMT_$RETRO_$$_TRETRO
VMT_$RETRO_$$_TRETRO:
	.quad	88,-88
	.quad	VMT_$CLASSES_$$_TTHREAD
	.quad	.Ld43
	.quad	0,0,0
	.quad	RTTI_$RETRO_$$_TRETRO
	.quad	0,0
	.quad	FPC_EMPTYINTF
	.quad	0
	.quad	CLASSES$_$TTHREAD_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.quad	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
	.quad	CLASSES$_$TTHREAD_$__$$_AFTERCONSTRUCTION
	.quad	SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
	.quad	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLERSTR$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_DISPATCH$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_DISPATCHSTR$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_EQUALS$TOBJECT$$BOOLEAN
	.quad	SYSTEM$_$TOBJECT_$__$$_GETHASHCODE$$INT64
	.quad	SYSTEM$_$TOBJECT_$__$$_TOSTRING$$ANSISTRING
	.quad	CLASSES$_$TTHREAD_$__$$_DOTERMINATE
	.quad	RETRO$_$TRETRO_$__$$_EXECUTE
	.quad	0
# [1892] 
	.balign 8
.Ld43:
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
# [117] da:integer=32000;

.section .data.n_tc_$retro_$$_da,"d"
	.balign 4
.globl	TC_$RETRO_$$_DA
TC_$RETRO_$$_DA:
	.long	32000

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
# [127] gain:myfloat=1.0;

.section .data.n_tc_$retro_$$_gain,"d"
	.balign 8
.globl	TC_$RETRO_$$_GAIN
TC_$RETRO_$$_GAIN:
# value: 0d+1.0000000000000000E+000
	.byte	0,0,0,0,0,0,240,63
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
# [206] procedure sprite(screen:pointer); forward;

.section .rodata.n__$RETRO$_Ld1,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,13
.globl	_$RETRO$_Ld1
_$RETRO$_Ld1:
	.ascii	"./st4font.def\000"

.section .rodata.n__$RETRO$_Ld2,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,23
.globl	_$RETRO$_Ld2
_$RETRO$_Ld2:
	.ascii	"./combinedwaveforms.bin\000"

.section .rodata.n__$RETRO$_Ld3,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,10
.globl	_$RETRO$_Ld3
_$RETRO$_Ld3:
	.ascii	"./mysz.def\000"

.section .rodata.n__$RETRO$_Ld4,"d"
	.balign 8
.globl	_$RETRO$_Ld4
_$RETRO$_Ld4:
	.ascii	"best\000"

.section .rodata.n__$RETRO$_Ld5,"d"
	.balign 8
.globl	_$RETRO$_Ld5
_$RETRO$_Ld5:
	.ascii	"SDL_RENDER_SCALE_QUALITY\000"

.section .rodata.n__$RETRO$_Ld6,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,1
.globl	_$RETRO$_Ld6
_$RETRO$_Ld6:
	.ascii	"1\000"

.section .rodata.n__$RETRO$_Ld7,"d"
	.balign 8
.globl	_$RETRO$_Ld7
_$RETRO$_Ld7:
	.ascii	"SDL_RENDER_DIRECT3D_THREADSAFE\000"

.section .rodata.n__$RETRO$_Ld8,"d"
	.balign 8
.globl	_$RETRO$_Ld8
_$RETRO$_Ld8:
	.ascii	"The Retromachine\000"

.section .data.n_tc_$retro$_$sdlevents_$$_x,"d"
	.balign 4
TC_$RETRO$_$SDLEVENTS_$$_X:
	.long	0
# [535] y:integer=0;

.section .data.n_tc_$retro$_$sdlevents_$$_y,"d"
	.balign 4
TC_$RETRO$_$SDLEVENTS_$$_Y:
	.long	0

.section .rodata.n__$RETRO$_Ld9,"d"
	.balign 8
	.short	0,1
	.long	0
	.quad	-1,18
.globl	_$RETRO$_Ld9
_$RETRO$_Ld9:
	.ascii	"./ataripalette.def\000"

.section .data.n_tc_$retro$_$noise1$$byte_$$_a,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_A:
	.long	8388600
# [961] b22:cardinal=1 shl 22;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b22,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B22:
	.long	4194304
# [962] b20:cardinal=1 shl 20;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b20,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B20:
	.long	1048576
# [963] b16:cardinal=1 shl 16;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b16,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B16:
	.long	65536
# [964] b13:cardinal=1 shl 13;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b13,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B13:
	.long	8192
# [965] b11:cardinal=1 shl 11;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b11,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B11:
	.long	2048
# [966] b07:cardinal=1 shl 07;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b07,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B07:
	.long	128
# [967] b04:cardinal=1 shl 04;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b04,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B04:
	.long	16
# [968] b02:cardinal=1 shl 02;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b02,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B02:
	.long	4
# [969] b17:cardinal=1 shl 17;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b17,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B17:
	.long	131072
# [971] var output:cardinal;

.section .data.n_tc_$retro$_$noise2$$longword_$$_a,"d"
	.balign 8
TC_$RETRO$_$NOISE2$$LONGWORD_$$_A:
	.quad	8388600
# [994] var output:int64;

.section .data.n_tc_$retro$_$noise3$$longword_$$_a,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_A:
	.quad	8388600
# [1016] b22:int64=1 shl 22;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b22,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B22:
	.quad	4194304
# [1017] b20:int64=1 shl 20;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b20,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B20:
	.quad	1048576
# [1018] b16:int64=1 shl 16;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b16,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B16:
	.quad	65536
# [1019] b13:int64=1 shl 13;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b13,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B13:
	.quad	8192
# [1020] b11:int64=1 shl 11;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b11,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B11:
	.quad	2048
# [1021] b07:int64=1 shl 07;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b07,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B07:
	.quad	128
# [1022] b04:int64=1 shl 04;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b04,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B04:
	.quad	16
# [1023] b02:int64=1 shl 02;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b02,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B02:
	.quad	4
# [1024] b17:int64=1 shl 17;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b17,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B17:
	.quad	131072
# [1026] var output:int64;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa1,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1072] pa2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1073] pa3:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa3,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1074] pa1n:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa1n,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1N:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1075] pa2n:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa2n,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2N:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1076] pa3n:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa3n,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3N:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1078] pa1i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa1i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I:
	.long	0
# [1079] pa2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I:
	.long	0
# [1080] pa3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I:
	.long	0
# [1081] pa1ni:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa1ni,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1NI:
	.long	0
# [1082] pa2ni:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa2ni,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2NI:
	.long	0
# [1083] pa3ni:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa3ni,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3NI:
	.long	0
# [1085] filter_b:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_b,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1086] filter_h:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_h,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1087] filter_l:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_l,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1089] filter_b2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_b2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1090] filter_h2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_h2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1091] filter_l2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_l2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1093] filter_b3:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_b3,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B3:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1094] filter_h3:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_h3,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H3:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1095] filter_l3:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_l3,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L3:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1098] filter_bi:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_bi,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_BI:
	.long	0
# [1099] filter_hi:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_hi,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_HI:
	.long	0
# [1100] filter_li:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_li,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_LI:
	.long	0
# [1102] filter_b2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_b2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B2I:
	.long	0
# [1103] filter_h2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_h2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H2I:
	.long	0
# [1104] filter_l2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_l2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L2I:
	.long	0
# [1106] filter_b3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_b3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B3I:
	.long	0
# [1107] filter_h3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_h3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H3I:
	.long	0
# [1108] filter_l3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_l3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L3I:
	.long	0
# [1112] wv1:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv1,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1113] wv2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1114] wv3:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv3,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1115] wv4i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv4i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV4I:
	.long	0
# [1116] wv5i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv5i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV5I:
	.long	0
# [1117] adsrvol1i:int64=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_adsrvol1i,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I:
	.quad	0
# [1118] adsrvol2i:int64=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_adsrvol2i,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I:
	.quad	0
# [1119] adsrvol3i:int64=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_adsrvol3i,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I:
	.quad	0
# [1120] adsrstate1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_adsrstate1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1:
	.byte	0
# [1121] adsrstate2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_adsrstate2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2:
	.byte	0
# [1122] adsrstate3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_adsrstate3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3:
	.byte	0
# [1123] sustainvol1i:int64=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sustainvol1i,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL1I:
	.quad	0
# [1124] sustainvol2i:int64=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sustainvol2i,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL2I:
	.quad	0
# [1125] sustainvol3i:int64=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sustainvol3i,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL3I:
	.quad	0
# [1126] oldsc:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_oldsc,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_OLDSC:
	.long	0
# [1127] sc:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sc,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SC:
	.long	0
# [1128] sli:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sli,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SLI:
	.long	0
# [1129] sri:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sri,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SRI:
	.long	0
# [1132] freq1:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq1,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1133] freq1n:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq1n,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1N:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1134] freq1i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq1i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1I:
	.long	0
# [1135] freq1ni:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq1ni,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1NI:
	.long	0
# [1136] waveform1:word=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_waveform1,"d"
	.balign 2
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1:
	.short	0
# [1137] gate1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_gate1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE1:
	.byte	0
# [1138] sa1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sa1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA1:
	.byte	0
# [1139] sd1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sd1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD1:
	.byte	0
# [1140] ss1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ss1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS1:
	.byte	0
# [1141] sr1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sr1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR1:
	.byte	0
# [1142] pw1i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pw1i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW1I:
	.long	0
# [1143] test1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_test1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST1:
	.byte	0
# [1144] sync1:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sync1,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC1:
	.long	0
# [1145] ring1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ring1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING1:
	.byte	0
# [1146] f1:boolean=false;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_f1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F1:
	.byte	0
# [1148] freq2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1149] freq2n:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq2n,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2N:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1150] freq2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2I:
	.long	0
# [1151] freq2ni:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq2ni,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2NI:
	.long	0
# [1152] waveform2:word=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_waveform2,"d"
	.balign 2
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2:
	.short	0
# [1153] gate2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_gate2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE2:
	.byte	0
# [1154] sa2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sa2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA2:
	.byte	0
# [1155] sd2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sd2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD2:
	.byte	0
# [1156] ss2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ss2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS2:
	.byte	0
# [1157] sr2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sr2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR2:
	.byte	0
# [1158] pw2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pw2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW2I:
	.long	0
# [1159] test2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_test2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST2:
	.byte	0
# [1160] sync2:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sync2,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC2:
	.long	0
# [1161] ring2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ring2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING2:
	.byte	0
# [1162] f2:boolean=false;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_f2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F2:
	.byte	0
# [1164] freq3:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq3,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1165] freq3n:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq3n,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3N:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1166] freq3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3I:
	.long	0
# [1167] freq3ni:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq3ni,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3NI:
	.long	0
# [1168] waveform3:word=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_waveform3,"d"
	.balign 2
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3:
	.short	0
# [1169] gate3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_gate3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE3:
	.byte	0
# [1170] sa3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sa3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA3:
	.byte	0
# [1171] sd3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sd3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD3:
	.byte	0
# [1172] ss3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ss3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS3:
	.byte	0
# [1173] sr3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sr3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR3:
	.byte	0
# [1174] pw3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pw3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW3I:
	.long	0
# [1175] test3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_test3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST3:
	.byte	0
# [1176] sync3:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sync3,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC3:
	.long	0
# [1177] ring3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ring3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING3:
	.byte	0
# [1178] f3:boolean=false;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_f3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F3:
	.byte	0
# [1180] ff:word=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ff,"d"
	.balign 2
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FF:
	.short	0
# [1181] filter_resonance2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_resonance2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1182] filter_freq:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_freq,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQ:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1183] filter_resonance2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_resonance2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I:
	.long	0
# [1184] filter_freqi:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_freqi,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI:
	.long	0
# [1185] volume:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_volume,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_VOLUME:
	.long	0
# [1186] c3off:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_c3off,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_C3OFF:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1188] fu:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_fu,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FU:
	.long	0
# [1189] fl:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_fl,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FL:
	.long	0
# [1190] fb:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_fb,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FB:
	.long	0
# [1191] wv1i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv1i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I:
	.long	0
# [1192] wv2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I:
	.long	0
# [1193] wv3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I:
	.long	0
# [1195] var i,sid1,sid1l,ind:integer;

.section .rodata.n__$RETRO$_Ld10,"d"
	.balign 4
.globl	_$RETRO$_Ld10
_$RETRO$_Ld10:
# value: 0d+2.560000000E+02
	.byte	0,0,128,67

.section .rodata.n__$RETRO$_Ld11,"d"
	.balign 4
.globl	_$RETRO$_Ld11
_$RETRO$_Ld11:
# value: 0d+5.000000000E-01
	.byte	0,0,0,63

.section .rodata.n__$RETRO$_Ld13,"d"
	.balign 8
.globl	_$RETRO$_Ld13
_$RETRO$_Ld13:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0

.section .rodata.n__$RETRO$_Ld16,"d"
	.balign 8
.globl	_$RETRO$_Ld16
_$RETRO$_Ld16:
# value: 0d+8.3886070000000000E+006
	.byte	0,0,0,192,255,255,95,65

.section .rodata.n__$RETRO$_Ld17,"d"
	.balign 8
.globl	_$RETRO$_Ld17
_$RETRO$_Ld17:
# value: 0d+6.2831853071795862E+000
	.byte	24,45,68,84,251,33,25,64

.section .rodata.n__$RETRO$_Ld18,"d"
	.balign 8
.globl	_$RETRO$_Ld18
_$RETRO$_Ld18:
# value: 0d+1.5258789062500000E-005
	.byte	0,0,0,0,0,0,240,62

.section .rodata.n__$RETRO$_Ld19,"d"
	.balign 8
.globl	_$RETRO$_Ld19
_$RETRO$_Ld19:
# value: 0d+4.2949672960000000E+009
	.byte	0,0,0,0,0,0,240,65

.section .rodata.n__$RETRO$_Ld20,"d"
	.balign 8
.globl	_$RETRO$_Ld20
_$RETRO$_Ld20:
# value: 0d+9.9984136378479382E-001
	.byte	108,153,212,80,179,254,239,63

.section .data.n_tc_$retro$_$antialias6$double$tfiltertable$$double_$$_gain,"d"
	.balign 8
TC_$RETRO$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN:
# value: 0d+6.8555321079999998E+007
	.byte	133,235,81,228,72,88,144,65

.section .rodata.n__$RETRO$_Ld21,"d"
	.balign 8
.globl	_$RETRO$_Ld21
_$RETRO$_Ld21:
# value: 0d+6.0000000000000000E+000
	.byte	0,0,0,0,0,0,24,64

.section .rodata.n__$RETRO$_Ld22,"d"
	.balign 8
.globl	_$RETRO$_Ld22
_$RETRO$_Ld22:
# value: 0d+1.5000000000000000E+001
	.byte	0,0,0,0,0,0,46,64

.section .rodata.n__$RETRO$_Ld23,"d"
	.balign 8
.globl	_$RETRO$_Ld23
_$RETRO$_Ld23:
# value: 0d+2.0000000000000000E+001
	.byte	0,0,0,0,0,0,52,64

.section .rodata.n__$RETRO$_Ld24,"d"
	.balign 8
.globl	_$RETRO$_Ld24
_$RETRO$_Ld24:
# value: 0d-7.9924224560000001E-001
	.byte	13,224,77,121,100,147,233,191

.section .rodata.n__$RETRO$_Ld25,"d"
	.balign 8
.globl	_$RETRO$_Ld25
_$RETRO$_Ld25:
# value: 0d+4.9534616898000001E+000
	.byte	55,184,222,66,88,208,19,64

.section .rodata.n__$RETRO$_Ld26,"d"
	.balign 8
.globl	_$RETRO$_Ld26
_$RETRO$_Ld26:
# value: 0d-1.2816370553000000E+001
	.byte	217,26,53,82,251,161,41,192

.section .rodata.n__$RETRO$_Ld27,"d"
	.balign 8
.globl	_$RETRO$_Ld27
_$RETRO$_Ld27:
# value: 0d+1.7720271720000000E+001
	.byte	56,162,57,186,99,184,49,64

.section .rodata.n__$RETRO$_Ld28,"d"
	.balign 8
.globl	_$RETRO$_Ld28
_$RETRO$_Ld28:
# value: 0d-1.3809038175000000E+001
	.byte	89,174,109,64,58,158,43,192

.section .rodata.n__$RETRO$_Ld29,"d"
	.balign 8
.globl	_$RETRO$_Ld29
_$RETRO$_Ld29:
# value: 0d+5.7509166298999999E+000
	.byte	171,197,253,73,240,0,23,64

.section .data.n_tc_$retro$_$audiocallback$pointer$pbyte$longint_$$_aa,"d"
	.balign 4
TC_$RETRO$_$AUDIOCALLBACK$POINTER$PBYTE$LONGINT_$$_AA:
	.long	0

.section .rodata.n__$RETRO$_Ld30,"d"
	.balign 8
.globl	_$RETRO$_Ld30
_$RETRO$_Ld30:
# value: 0d+1.0000001999999999E+000
	.byte	53,229,175,53,0,0,240,63

.section .rodata.n__$RETRO$_Ld31,"d"
	.balign 8
.globl	_$RETRO$_Ld31
_$RETRO$_Ld31:
# value: 0d+1.0000000000000000E+000
	.byte	0,0,0,0,0,0,240,63

.section .rodata.n__$RETRO$_Ld32,"d"
	.balign 8
.globl	_$RETRO$_Ld32
_$RETRO$_Ld32:
# value: 0d+2.5000000000000000E-001
	.byte	0,0,0,0,0,0,208,63

.section .rodata.n__$RETRO$_Ld33,"d"
	.balign 8
.globl	_$RETRO$_Ld33
_$RETRO$_Ld33:
# value: 0d+1.0100000000000000E+000
	.byte	41,92,143,194,245,40,240,63

.section .rodata.n__$RETRO$_Ld34,"d"
	.balign 8
.globl	_$RETRO$_Ld34
_$RETRO$_Ld34:
# value: 0d+3.2767000000000000E+004
	.byte	0,0,0,0,192,255,223,64

.section .rodata.n__$RETRO$_Ld35,"d"
	.balign 8
.globl	_$RETRO$_Ld35
_$RETRO$_Ld35:
# value: 0d+5.0000000000000000E-001
	.byte	0,0,0,0,0,0,224,63

.section .data.n_tc_$retro$_$reverb1$double$$double_$$_sart,"d"
	.balign 4
TC_$RETRO$_$REVERB1$DOUBLE$$DOUBLE_$$_SART:
	.long	1

.section .rodata.n__$RETRO$_Ld36,"d"
	.balign 8
.globl	_$RETRO$_Ld36
_$RETRO$_Ld36:
# value: 0d+1.2500000000000000E-001
	.byte	0,0,0,0,0,0,192,63

.section .rodata.n__$RETRO$_Ld37,"d"
	.balign 8
.globl	_$RETRO$_Ld37
_$RETRO$_Ld37:
# value: 0d+1.0000000000000000E+001
	.byte	0,0,0,0,0,0,36,64

.section .rodata.n__$RETRO$_Ld38,"d"
	.balign 8
.globl	_$RETRO$_Ld38
_$RETRO$_Ld38:
# value: 0d+1.2000000000000000E+001
	.byte	0,0,0,0,0,0,40,64

.section .rodata.n__$RETRO$_Ld39,"d"
	.balign 8
.globl	_$RETRO$_Ld39
_$RETRO$_Ld39:
# value: 0d+1.4000000000000000E+001
	.byte	0,0,0,0,0,0,44,64

.section .rodata.n__$RETRO$_Ld40,"d"
	.balign 8
.globl	_$RETRO$_Ld40
_$RETRO$_Ld40:
# value: 0d+6.2500000000000000E-002
	.byte	0,0,0,0,0,0,176,63

.section .rodata.n__$RETRO$_Ld41,"d"
	.balign 8
.globl	_$RETRO$_Ld41
_$RETRO$_Ld41:
# value: 0d+1.8000000000000000E+001
	.byte	0,0,0,0,0,0,50,64

.section .rodata.n__$RETRO$_Ld42,"d"
	.balign 8
.globl	_$RETRO$_Ld42
_$RETRO$_Ld42:
# value: 0d+2.2000000000000000E+001
	.byte	0,0,0,0,0,0,54,64
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
.Lc236:
	.long	.Lc238-.Lc237
.Lc237:
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
.Lc238:
	.long	.Lc240-.Lc239
.Lc239:
	.secrel32	.Lc236
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
.Lc240:
	.long	.Lc242-.Lc241
.Lc241:
	.secrel32	.Lc236
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
.Lc242:
	.long	.Lc244-.Lc243
.Lc243:
	.secrel32	.Lc236
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
.Lc244:
	.long	.Lc246-.Lc245
.Lc245:
	.secrel32	.Lc236
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
.Lc246:
	.long	.Lc248-.Lc247
.Lc247:
	.secrel32	.Lc236
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
.Lc248:
	.long	.Lc250-.Lc249
.Lc249:
	.secrel32	.Lc236
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
.Lc250:
	.long	.Lc252-.Lc251
.Lc251:
	.secrel32	.Lc236
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
.Lc252:
	.long	.Lc254-.Lc253
.Lc253:
	.secrel32	.Lc236
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
.Lc254:
	.long	.Lc256-.Lc255
.Lc255:
	.secrel32	.Lc236
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
.Lc256:
	.long	.Lc258-.Lc257
.Lc257:
	.secrel32	.Lc236
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
.Lc258:
	.long	.Lc260-.Lc259
.Lc259:
	.secrel32	.Lc236
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
.Lc260:
	.long	.Lc262-.Lc261
.Lc261:
	.secrel32	.Lc236
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
.Lc262:
	.long	.Lc264-.Lc263
.Lc263:
	.secrel32	.Lc236
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
.Lc264:
	.long	.Lc266-.Lc265
.Lc265:
	.secrel32	.Lc236
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
.Lc266:
	.long	.Lc268-.Lc267
.Lc267:
	.secrel32	.Lc236
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
.Lc268:
	.long	.Lc270-.Lc269
.Lc269:
	.secrel32	.Lc236
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
.Lc270:
	.long	.Lc272-.Lc271
.Lc271:
	.secrel32	.Lc236
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
.Lc272:
	.long	.Lc274-.Lc273
.Lc273:
	.secrel32	.Lc236
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
.Lc274:
	.long	.Lc276-.Lc275
.Lc275:
	.secrel32	.Lc236
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
.Lc276:
	.long	.Lc278-.Lc277
.Lc277:
	.secrel32	.Lc236
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
.Lc278:
	.long	.Lc280-.Lc279
.Lc279:
	.secrel32	.Lc236
	.quad	.Lc101
	.quad	.Lc102-.Lc101
	.byte	4
	.long	.Lc103-.Lc101
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc104-.Lc103
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc105-.Lc104
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc280:
	.long	.Lc282-.Lc281
.Lc281:
	.secrel32	.Lc236
	.quad	.Lc106
	.quad	.Lc107-.Lc106
	.byte	4
	.long	.Lc108-.Lc106
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc109-.Lc108
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc110-.Lc109
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc282:
	.long	.Lc284-.Lc283
.Lc283:
	.secrel32	.Lc236
	.quad	.Lc111
	.quad	.Lc112-.Lc111
	.byte	4
	.long	.Lc113-.Lc111
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc114-.Lc113
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc115-.Lc114
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc284:
	.long	.Lc286-.Lc285
.Lc285:
	.secrel32	.Lc236
	.quad	.Lc116
	.quad	.Lc117-.Lc116
	.byte	4
	.long	.Lc118-.Lc116
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc119-.Lc118
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc120-.Lc119
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc286:
	.long	.Lc288-.Lc287
.Lc287:
	.secrel32	.Lc236
	.quad	.Lc121
	.quad	.Lc122-.Lc121
	.byte	4
	.long	.Lc123-.Lc121
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc124-.Lc123
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc125-.Lc124
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc288:
	.long	.Lc290-.Lc289
.Lc289:
	.secrel32	.Lc236
	.quad	.Lc126
	.quad	.Lc127-.Lc126
	.byte	4
	.long	.Lc128-.Lc126
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc129-.Lc128
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc130-.Lc129
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc290:
	.long	.Lc292-.Lc291
.Lc291:
	.secrel32	.Lc236
	.quad	.Lc131
	.quad	.Lc132-.Lc131
	.byte	4
	.long	.Lc133-.Lc131
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc134-.Lc133
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc135-.Lc134
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc292:
	.long	.Lc294-.Lc293
.Lc293:
	.secrel32	.Lc236
	.quad	.Lc136
	.quad	.Lc137-.Lc136
	.byte	4
	.long	.Lc138-.Lc136
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc139-.Lc138
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc140-.Lc139
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc294:
	.long	.Lc296-.Lc295
.Lc295:
	.secrel32	.Lc236
	.quad	.Lc141
	.quad	.Lc142-.Lc141
	.byte	4
	.long	.Lc143-.Lc141
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc144-.Lc143
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc145-.Lc144
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc296:
	.long	.Lc298-.Lc297
.Lc297:
	.secrel32	.Lc236
	.quad	.Lc146
	.quad	.Lc147-.Lc146
	.byte	4
	.long	.Lc148-.Lc146
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc149-.Lc148
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc150-.Lc149
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc298:
	.long	.Lc300-.Lc299
.Lc299:
	.secrel32	.Lc236
	.quad	.Lc151
	.quad	.Lc152-.Lc151
	.byte	4
	.long	.Lc153-.Lc151
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc154-.Lc153
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc155-.Lc154
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc300:
	.long	.Lc302-.Lc301
.Lc301:
	.secrel32	.Lc236
	.quad	.Lc156
	.quad	.Lc157-.Lc156
	.byte	4
	.long	.Lc158-.Lc156
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc159-.Lc158
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc160-.Lc159
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc302:
	.long	.Lc304-.Lc303
.Lc303:
	.secrel32	.Lc236
	.quad	.Lc161
	.quad	.Lc162-.Lc161
	.byte	4
	.long	.Lc163-.Lc161
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc164-.Lc163
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc165-.Lc164
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc304:
	.long	.Lc306-.Lc305
.Lc305:
	.secrel32	.Lc236
	.quad	.Lc166
	.quad	.Lc167-.Lc166
	.byte	4
	.long	.Lc168-.Lc166
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc169-.Lc168
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc170-.Lc169
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc306:
	.long	.Lc308-.Lc307
.Lc307:
	.secrel32	.Lc236
	.quad	.Lc171
	.quad	.Lc172-.Lc171
	.byte	4
	.long	.Lc173-.Lc171
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc174-.Lc173
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc175-.Lc174
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc308:
	.long	.Lc310-.Lc309
.Lc309:
	.secrel32	.Lc236
	.quad	.Lc176
	.quad	.Lc177-.Lc176
	.byte	4
	.long	.Lc178-.Lc176
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc179-.Lc178
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc180-.Lc179
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc310:
	.long	.Lc312-.Lc311
.Lc311:
	.secrel32	.Lc236
	.quad	.Lc181
	.quad	.Lc182-.Lc181
	.byte	4
	.long	.Lc183-.Lc181
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc184-.Lc183
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc185-.Lc184
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc312:
	.long	.Lc314-.Lc313
.Lc313:
	.secrel32	.Lc236
	.quad	.Lc186
	.quad	.Lc187-.Lc186
	.byte	4
	.long	.Lc188-.Lc186
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc189-.Lc188
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc190-.Lc189
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc314:
	.long	.Lc316-.Lc315
.Lc315:
	.secrel32	.Lc236
	.quad	.Lc191
	.quad	.Lc192-.Lc191
	.byte	4
	.long	.Lc193-.Lc191
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc194-.Lc193
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc195-.Lc194
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc316:
	.long	.Lc318-.Lc317
.Lc317:
	.secrel32	.Lc236
	.quad	.Lc196
	.quad	.Lc197-.Lc196
	.byte	4
	.long	.Lc198-.Lc196
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc199-.Lc198
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc200-.Lc199
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc318:
	.long	.Lc320-.Lc319
.Lc319:
	.secrel32	.Lc236
	.quad	.Lc201
	.quad	.Lc202-.Lc201
	.byte	4
	.long	.Lc203-.Lc201
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc204-.Lc203
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc205-.Lc204
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc320:
	.long	.Lc322-.Lc321
.Lc321:
	.secrel32	.Lc236
	.quad	.Lc206
	.quad	.Lc207-.Lc206
	.byte	4
	.long	.Lc208-.Lc206
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc209-.Lc208
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc210-.Lc209
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc322:
	.long	.Lc324-.Lc323
.Lc323:
	.secrel32	.Lc236
	.quad	.Lc211
	.quad	.Lc212-.Lc211
	.byte	4
	.long	.Lc213-.Lc211
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc214-.Lc213
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc215-.Lc214
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc324:
	.long	.Lc326-.Lc325
.Lc325:
	.secrel32	.Lc236
	.quad	.Lc216
	.quad	.Lc217-.Lc216
	.byte	4
	.long	.Lc218-.Lc216
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc219-.Lc218
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc220-.Lc219
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc326:
	.long	.Lc328-.Lc327
.Lc327:
	.secrel32	.Lc236
	.quad	.Lc221
	.quad	.Lc222-.Lc221
	.byte	4
	.long	.Lc223-.Lc221
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc224-.Lc223
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc225-.Lc224
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc328:
	.long	.Lc330-.Lc329
.Lc329:
	.secrel32	.Lc236
	.quad	.Lc226
	.quad	.Lc227-.Lc226
	.byte	4
	.long	.Lc228-.Lc226
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc229-.Lc228
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc230-.Lc229
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc330:
	.long	.Lc332-.Lc331
.Lc331:
	.secrel32	.Lc236
	.quad	.Lc231
	.quad	.Lc232-.Lc231
	.byte	4
	.long	.Lc233-.Lc231
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc234-.Lc233
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc235-.Lc234
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc332:
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
# Symbol GAIN
	.uleb128	3
	.ascii	"GAIN\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$RETRO_$$_GAIN
	.long	.La14-.Ldebug_info0
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
# Symbol READKEYBUFFER
# Symbol WRITEKEYBUFFER
# Syms - End unit RETRO has index 12
# Syms - Begin Staticsymtable
# Symbol UNIT1
# Symbol SYNTHCONTROL
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
# Symbol OPDATA
	.uleb128	4
	.ascii	"OPDATA\000"
	.byte	9
	.byte	3
	.quad	U_$RETRO_$$_OPDATA
	.long	.La70-.Ldebug_info0
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
# Symbol NOISE1
# Symbol INITSINETABLE
# Symbol INITLOGTABLE
# Symbol FMSYNTH
# Symbol div
# Symbol plus
# Symbol REVERB1
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
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol A
	.uleb128	4
	.ascii	"A\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La16-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La16-.Ldebug_info0
# Symbol BB
	.uleb128	4
	.ascii	"BB\000"
	.byte	2
	.byte	118
	.sleb128	-32
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
	.byte	118
	.sleb128	-8
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
	.byte	118
	.sleb128	-8
	.long	.La20-.Ldebug_info0
# Symbol BUF
	.uleb128	6
	.ascii	"BUF\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La16-.Ldebug_info0
# Symbol B
	.uleb128	4
	.ascii	"B\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La16-.Ldebug_info0
# Symbol PI
	.uleb128	4
	.ascii	"PI\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La72-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La16-.Ldebug_info0
# Symbol J
	.uleb128	4
	.ascii	"J\000"
	.byte	2
	.byte	118
	.sleb128	-48
	.long	.La16-.Ldebug_info0
# Symbol K
	.uleb128	4
	.ascii	"K\000"
	.byte	2
	.byte	118
	.sleb128	-56
	.long	.La16-.Ldebug_info0
# Symbol L
	.uleb128	4
	.ascii	"L\000"
	.byte	2
	.byte	118
	.sleb128	-64
	.long	.La16-.Ldebug_info0
# Definition ^LongInt
.La72:
	.uleb128	7
	.long	.La16-.Ldebug_info0
.La73:
	.uleb128	8
	.long	.La72-.Ldebug_info0
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
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol FH
	.uleb128	4
	.ascii	"FH\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol C2
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La16-.Ldebug_info0
# Symbol L
	.uleb128	4
	.ascii	"L\000"
	.byte	2
	.byte	118
	.sleb128	-32
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
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol Y
	.uleb128	6
	.ascii	"Y\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La16-.Ldebug_info0
# Symbol COLOR
	.uleb128	6
	.ascii	"COLOR\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La16-.Ldebug_info0
# Symbol ADR
	.uleb128	4
	.ascii	"ADR\000"
	.byte	2
	.byte	118
	.sleb128	-32
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
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol Y
	.uleb128	6
	.ascii	"Y\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La16-.Ldebug_info0
# Symbol CH
	.uleb128	6
	.ascii	"CH\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La74-.Ldebug_info0
# Symbol COL
	.uleb128	6
	.ascii	"COL\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La16-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La16-.Ldebug_info0
# Symbol J
	.uleb128	4
	.ascii	"J\000"
	.byte	2
	.byte	118
	.sleb128	-48
	.long	.La16-.Ldebug_info0
# Symbol START
	.uleb128	4
	.ascii	"START\000"
	.byte	2
	.byte	118
	.sleb128	-56
	.long	.La16-.Ldebug_info0
# Symbol B
	.uleb128	4
	.ascii	"B\000"
	.byte	2
	.byte	118
	.sleb128	-64
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
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol Y
	.uleb128	6
	.ascii	"Y\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La16-.Ldebug_info0
# Symbol T
	.uleb128	6
	.ascii	"T\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La76-.Ldebug_info0
# Symbol C
	.uleb128	6
	.ascii	"C\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La16-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La16-.Ldebug_info0
# Symbol fin$8
	.byte	0
# Procdef $fin$8(<^untyped>) is nested;
	.uleb128	9
	.ascii	"fin$8\000"
	.byte	1
	.byte	65
	.quad	RETRO$_$OUTTEXTXY$crc6744C382_$$_fin$8
	.quad	.Lt10
# Symbol parentfp
	.uleb128	6
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La78-.Ldebug_info0
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
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol X
	.uleb128	6
	.ascii	"X\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La16-.Ldebug_info0
# Symbol Y
	.uleb128	6
	.ascii	"Y\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La16-.Ldebug_info0
# Symbol TOO
	.uleb128	6
	.ascii	"TOO\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La16-.Ldebug_info0
# Symbol X2
	.uleb128	6
	.ascii	"X2\000"
	.byte	2
	.byte	118
	.sleb128	48
	.long	.La16-.Ldebug_info0
# Symbol Y2
	.uleb128	6
	.ascii	"Y2\000"
	.byte	2
	.byte	118
	.sleb128	56
	.long	.La16-.Ldebug_info0
# Symbol LENGTH
	.uleb128	6
	.ascii	"LENGTH\000"
	.byte	3
	.byte	118
	.sleb128	64
	.long	.La16-.Ldebug_info0
# Symbol LINES
	.uleb128	6
	.ascii	"LINES\000"
	.byte	3
	.byte	118
	.sleb128	72
	.long	.La16-.Ldebug_info0
# Symbol BPL1
	.uleb128	6
	.ascii	"BPL1\000"
	.byte	3
	.byte	118
	.sleb128	80
	.long	.La16-.Ldebug_info0
# Symbol BPL2
	.uleb128	6
	.ascii	"BPL2\000"
	.byte	3
	.byte	118
	.sleb128	88
	.long	.La16-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La16-.Ldebug_info0
# Symbol J
	.uleb128	4
	.ascii	"J\000"
	.byte	2
	.byte	118
	.sleb128	-48
	.long	.La16-.Ldebug_info0
# Symbol B1
	.uleb128	4
	.ascii	"B1\000"
	.byte	2
	.byte	118
	.sleb128	-56
	.long	.La16-.Ldebug_info0
# Symbol B2
	.uleb128	4
	.ascii	"B2\000"
	.byte	2
	.byte	118
	.sleb128	-64
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
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol Y
	.uleb128	6
	.ascii	"Y\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La16-.Ldebug_info0
# Symbol L
	.uleb128	6
	.ascii	"L\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La16-.Ldebug_info0
# Symbol H
	.uleb128	6
	.ascii	"H\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La16-.Ldebug_info0
# Symbol C
	.uleb128	6
	.ascii	"C\000"
	.byte	2
	.byte	118
	.sleb128	48
	.long	.La16-.Ldebug_info0
# Symbol ADR
	.uleb128	4
	.ascii	"ADR\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La16-.Ldebug_info0
# Symbol A
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-56
	.long	.La16-.Ldebug_info0
# Symbol J
	.uleb128	4
	.ascii	"J\000"
	.byte	2
	.byte	118
	.sleb128	-64
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
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol Y1
	.uleb128	6
	.ascii	"Y1\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La16-.Ldebug_info0
# Symbol X2
	.uleb128	6
	.ascii	"X2\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La16-.Ldebug_info0
# Symbol Y2
	.uleb128	6
	.ascii	"Y2\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La16-.Ldebug_info0
# Symbol COLOR
	.uleb128	6
	.ascii	"COLOR\000"
	.byte	2
	.byte	118
	.sleb128	48
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
	.byte	118
	.sleb128	-8
	.long	.La24-.Ldebug_info0
# Symbol GETTIME
	.uleb128	4
	.ascii	"GETTIME\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La24-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La24-.Ldebug_info0
# Symbol PF
	.uleb128	4
	.ascii	"PF\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La24-.Ldebug_info0
# Symbol TM
	.uleb128	4
	.ascii	"TM\000"
	.byte	2
	.byte	118
	.sleb128	-24
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
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol B
	.uleb128	6
	.ascii	"B\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol W
	.uleb128	6
	.ascii	"W\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol C
	.uleb128	6
	.ascii	"C\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La80-.Ldebug_info0
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
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol I
	.uleb128	6
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La26-.Ldebug_info0
# Symbol PEEK
	.uleb128	4
	.ascii	"PEEK\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La26-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La18-.Ldebug_info0
# Symbol DPEEK
	.uleb128	4
	.ascii	"DPEEK\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La18-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La18-.Ldebug_info0
	.byte	0
# Procdef lpeek(LongInt):DWord;
	.uleb128	10
	.ascii	"LPEEK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La80-.Ldebug_info0
	.quad	RETRO_$$_LPEEK$LONGINT$$LONGWORD
	.quad	.Lt21
# Symbol ADDR
	.uleb128	6
	.ascii	"ADDR\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La80-.Ldebug_info0
# Symbol LPEEK
	.uleb128	4
	.ascii	"LPEEK\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La80-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La80-.Ldebug_info0
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
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La16-.Ldebug_info0
# Symbol SLPEEK
	.uleb128	4
	.ascii	"SLPEEK\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La16-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
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
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol BANK
	.uleb128	6
	.ascii	"BANK\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La16-.Ldebug_info0
# Symbol MASK
	.uleb128	6
	.ascii	"MASK\000"
	.byte	2
	.byte	118
	.sleb128	-24
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
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol Y
	.uleb128	6
	.ascii	"Y\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La16-.Ldebug_info0
# Symbol CH
	.uleb128	6
	.ascii	"CH\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La74-.Ldebug_info0
# Symbol COL
	.uleb128	6
	.ascii	"COL\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La16-.Ldebug_info0
# Symbol XZ
	.uleb128	6
	.ascii	"XZ\000"
	.byte	2
	.byte	118
	.sleb128	48
	.long	.La16-.Ldebug_info0
# Symbol YZ
	.uleb128	6
	.ascii	"YZ\000"
	.byte	2
	.byte	118
	.sleb128	56
	.long	.La16-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La16-.Ldebug_info0
# Symbol J
	.uleb128	4
	.ascii	"J\000"
	.byte	2
	.byte	118
	.sleb128	-48
	.long	.La16-.Ldebug_info0
# Symbol K
	.uleb128	4
	.ascii	"K\000"
	.byte	2
	.byte	118
	.sleb128	-56
	.long	.La16-.Ldebug_info0
# Symbol L
	.uleb128	4
	.ascii	"L\000"
	.byte	2
	.byte	118
	.sleb128	-64
	.long	.La16-.Ldebug_info0
# Symbol START
	.uleb128	4
	.ascii	"START\000"
	.byte	3
	.byte	118
	.sleb128	-72
	.long	.La16-.Ldebug_info0
# Symbol B
	.uleb128	4
	.ascii	"B\000"
	.byte	3
	.byte	118
	.sleb128	-80
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
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol Y
	.uleb128	6
	.ascii	"Y\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La16-.Ldebug_info0
# Symbol T
	.uleb128	6
	.ascii	"T\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La76-.Ldebug_info0
# Symbol C
	.uleb128	6
	.ascii	"C\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La16-.Ldebug_info0
# Symbol XZ
	.uleb128	6
	.ascii	"XZ\000"
	.byte	2
	.byte	118
	.sleb128	48
	.long	.La16-.Ldebug_info0
# Symbol YZ
	.uleb128	6
	.ascii	"YZ\000"
	.byte	2
	.byte	118
	.sleb128	56
	.long	.La16-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La16-.Ldebug_info0
# Symbol fin$9
	.byte	0
# Procdef $fin$9(<^untyped>) is nested;
	.uleb128	9
	.ascii	"fin$9\000"
	.byte	1
	.byte	65
	.quad	RETRO$_$OUTTEXTXYZ$crcCA10A6FC_$$_fin$9
	.quad	.Lt26
# Symbol parentfp
	.uleb128	6
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La78-.Ldebug_info0
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
	.byte	118
	.sleb128	-8
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
	.byte	118
	.sleb128	-16
	.byte	6
	.long	.La7-.Ldebug_info0
# Symbol MODE
	.uleb128	6
	.ascii	"MODE\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol SID
	.uleb128	4
	.ascii	"SID\000"
	.byte	3
	.byte	118
	.sleb128	-16
	.byte	6
	.long	.La7-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	3
	.byte	118
	.sleb128	-16
	.byte	6
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
	.byte	118
	.sleb128	-24
	.long	.La16-.Ldebug_info0
# Symbol SID1
	.uleb128	4
	.ascii	"SID1\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La16-.Ldebug_info0
# Symbol SID1L
	.uleb128	4
	.ascii	"SID1L\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La16-.Ldebug_info0
# Symbol IND
	.uleb128	4
	.ascii	"IND\000"
	.byte	2
	.byte	118
	.sleb128	-48
	.long	.La16-.Ldebug_info0
# Symbol ST
# Symbol PP1
	.uleb128	4
	.ascii	"PP1\000"
	.byte	2
	.byte	118
	.sleb128	-64
	.long	.La26-.Ldebug_info0
# Symbol PP2
	.uleb128	4
	.ascii	"PP2\000"
	.byte	3
	.byte	118
	.sleb128	-72
	.long	.La26-.Ldebug_info0
# Symbol PP3
	.uleb128	4
	.ascii	"PP3\000"
	.byte	3
	.byte	118
	.sleb128	-80
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
	.byte	3
	.byte	118
	.sleb128	-160
	.long	.La24-.Ldebug_info0
# Symbol WV2II
	.uleb128	4
	.ascii	"WV2II\000"
	.byte	3
	.byte	118
	.sleb128	-168
	.long	.La24-.Ldebug_info0
# Symbol WV3II
	.uleb128	4
	.ascii	"WV3II\000"
	.byte	3
	.byte	118
	.sleb128	-176
	.long	.La24-.Ldebug_info0
# Symbol FII
	.uleb128	4
	.ascii	"FII\000"
	.byte	3
	.byte	118
	.sleb128	-184
	.long	.La16-.Ldebug_info0
# Symbol FI2I
	.uleb128	4
	.ascii	"FI2I\000"
	.byte	3
	.byte	118
	.sleb128	-192
	.long	.La16-.Ldebug_info0
# Symbol FI3I
	.uleb128	4
	.ascii	"FI3I\000"
	.byte	3
	.byte	118
	.sleb128	-200
	.long	.La16-.Ldebug_info0
# Symbol FOUTI
	.uleb128	4
	.ascii	"FOUTI\000"
	.byte	3
	.byte	118
	.sleb128	-208
	.long	.La16-.Ldebug_info0
# Symbol FOUT2I
	.uleb128	4
	.ascii	"FOUT2I\000"
	.byte	3
	.byte	118
	.sleb128	-216
	.long	.La16-.Ldebug_info0
# Symbol FOUT3I
	.uleb128	4
	.ascii	"FOUT3I\000"
	.byte	3
	.byte	118
	.sleb128	-224
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef noise2:DWord;
	.uleb128	10
	.ascii	"NOISE2\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La80-.Ldebug_info0
	.quad	RETRO_$$_NOISE2$$LONGWORD
	.quad	.Lt29
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La80-.Ldebug_info0
# Symbol NOISE2
	.uleb128	4
	.ascii	"NOISE2\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La80-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La80-.Ldebug_info0
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
	.byte	118
	.sleb128	-16
	.long	.La24-.Ldebug_info0
# Symbol B
	.uleb128	4
	.ascii	"B\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La34-.Ldebug_info0
	.byte	0
# Procdef noise3:DWord;
	.uleb128	10
	.ascii	"NOISE3\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La80-.Ldebug_info0
	.quad	RETRO_$$_NOISE3$$LONGWORD
	.quad	.Lt30
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La80-.Ldebug_info0
# Symbol NOISE3
	.uleb128	4
	.ascii	"NOISE3\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La80-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La80-.Ldebug_info0
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
	.byte	118
	.sleb128	-16
	.long	.La24-.Ldebug_info0
# Symbol B
	.uleb128	4
	.ascii	"B\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La34-.Ldebug_info0
	.byte	0
# Procdef delay1(Double):Double;
	.uleb128	10
	.ascii	"DELAY1\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
	.quad	RETRO_$$_DELAY1$DOUBLE$$DOUBLE
	.quad	.Lt31
# Symbol S
	.uleb128	6
	.ascii	"S\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La14-.Ldebug_info0
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La14-.Ldebug_info0
# Symbol DELAY1
	.uleb128	4
	.ascii	"DELAY1\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La14-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La14-.Ldebug_info0
	.byte	0
# Procdef readkeybuffer:DWord;
	.uleb128	10
	.ascii	"READKEYBUFFER\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La80-.Ldebug_info0
	.quad	RETRO_$$_READKEYBUFFER$$LONGWORD
	.quad	.Lt32
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La80-.Ldebug_info0
# Symbol READKEYBUFFER
	.uleb128	4
	.ascii	"READKEYBUFFER\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La80-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La80-.Ldebug_info0
	.byte	0
# Procdef writekeybuffer(LongInt);
	.uleb128	5
	.ascii	"WRITEKEYBUFFER\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_WRITEKEYBUFFER$LONGINT
	.quad	.Lt33
# Symbol A
	.uleb128	6
	.ascii	"A\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef sprite(Pointer);
	.uleb128	5
	.ascii	"SPRITE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_SPRITE$POINTER
	.quad	.Lt34
# Symbol SCREEN
	.uleb128	6
	.ascii	"SCREEN\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La20-.Ldebug_info0
# Symbol P100
# Symbol OFFSET
	.uleb128	4
	.ascii	"OFFSET\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La16-.Ldebug_info0
# Symbol PIXEL
	.uleb128	4
	.ascii	"PIXEL\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La16-.Ldebug_info0
# Symbol SPRITEBASE
	.uleb128	4
	.ascii	"SPRITEBASE\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La16-.Ldebug_info0
# Symbol SPRITEDEFS
	.uleb128	4
	.ascii	"SPRITEDEFS\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La16-.Ldebug_info0
# Symbol CTRL1
	.uleb128	4
	.ascii	"CTRL1\000"
	.byte	2
	.byte	118
	.sleb128	-48
	.long	.La16-.Ldebug_info0
# Symbol SCREENBASE
	.uleb128	4
	.ascii	"SCREENBASE\000"
	.byte	2
	.byte	118
	.sleb128	-56
	.long	.La82-.Ldebug_info0
# Symbol PI
	.uleb128	4
	.ascii	"PI\000"
	.byte	2
	.byte	118
	.sleb128	-64
	.long	.La82-.Ldebug_info0
# Symbol XPOS
	.uleb128	4
	.ascii	"XPOS\000"
	.byte	3
	.byte	118
	.sleb128	-72
	.long	.La16-.Ldebug_info0
# Symbol YPOS
	.uleb128	4
	.ascii	"YPOS\000"
	.byte	3
	.byte	118
	.sleb128	-80
	.long	.La16-.Ldebug_info0
# Symbol XZOOM
	.uleb128	4
	.ascii	"XZOOM\000"
	.byte	3
	.byte	118
	.sleb128	-88
	.long	.La16-.Ldebug_info0
# Symbol YZOOM
	.uleb128	4
	.ascii	"YZOOM\000"
	.byte	3
	.byte	118
	.sleb128	-96
	.long	.La16-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	3
	.byte	118
	.sleb128	-104
	.long	.La16-.Ldebug_info0
# Symbol J
	.uleb128	4
	.ascii	"J\000"
	.byte	3
	.byte	118
	.sleb128	-112
	.long	.La16-.Ldebug_info0
# Symbol K
	.uleb128	4
	.ascii	"K\000"
	.byte	3
	.byte	118
	.sleb128	-120
	.long	.La16-.Ldebug_info0
# Symbol L
	.uleb128	4
	.ascii	"L\000"
	.byte	3
	.byte	118
	.sleb128	-128
	.long	.La16-.Ldebug_info0
# Symbol M
	.uleb128	4
	.ascii	"M\000"
	.byte	3
	.byte	118
	.sleb128	-136
	.long	.La16-.Ldebug_info0
# Symbol MASK
	.uleb128	4
	.ascii	"MASK\000"
	.byte	3
	.byte	118
	.sleb128	-144
	.long	.La80-.Ldebug_info0
# Definition ^LongInt
.La82:
	.uleb128	7
	.long	.La16-.Ldebug_info0
.La83:
	.uleb128	8
	.long	.La82-.Ldebug_info0
	.byte	0
# Procdef sdlevents;
	.uleb128	5
	.ascii	"SDLEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_SDLEVENTS
	.quad	.Lt35
# Symbol QQ
	.uleb128	4
	.ascii	"QQ\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol EVENT
	.uleb128	4
	.ascii	"EVENT\000"
	.byte	2
	.byte	118
	.sleb128	-64
	.long	.La84-.Ldebug_info0
# Symbol KEY
	.uleb128	4
	.ascii	"KEY\000"
	.byte	3
	.byte	118
	.sleb128	-72
	.long	.La80-.Ldebug_info0
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
	.quad	.Lt36
# Symbol USERDATA
	.uleb128	6
	.ascii	"USERDATA\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La20-.Ldebug_info0
# Symbol AUDIO
	.uleb128	6
	.ascii	"AUDIO\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La86-.Ldebug_info0
# Symbol LENGTH
	.uleb128	6
	.ascii	"LENGTH\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La16-.Ldebug_info0
# Symbol AUDIO2
	.uleb128	4
	.ascii	"AUDIO2\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La88-.Ldebug_info0
# Symbol S
	.uleb128	4
	.ascii	"S\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La7-.Ldebug_info0
# Symbol FS
	.uleb128	4
	.ascii	"FS\000"
	.byte	2
	.byte	118
	.sleb128	-48
	.long	.La14-.Ldebug_info0
# Symbol T
	.uleb128	4
	.ascii	"T\000"
	.byte	2
	.byte	118
	.sleb128	-56
	.long	.La24-.Ldebug_info0
# Symbol K
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	3
	.byte	118
	.sleb128	-72
	.long	.La16-.Ldebug_info0
# Symbol IL
# Symbol J
	.uleb128	4
	.ascii	"J\000"
	.byte	3
	.byte	118
	.sleb128	-88
	.long	.La16-.Ldebug_info0
# Symbol BUF
# Symbol S1
	.uleb128	4
	.ascii	"S1\000"
	.byte	3
	.byte	118
	.sleb128	-128
	.long	.La90-.Ldebug_info0
# Symbol AA
	.byte	0
# Procdef sdl_sound_init:LongInt;
	.uleb128	10
	.ascii	"SDL_SOUND_INIT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La16-.Ldebug_info0
	.quad	RETRO_$$_SDL_SOUND_INIT$$LONGINT
	.quad	.Lt37
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol SDL_SOUND_INIT
	.uleb128	4
	.ascii	"SDL_SOUND_INIT\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-8
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
	.quad	.Lt38
# Symbol INPUT
	.uleb128	6
	.ascii	"INPUT\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La14-.Ldebug_info0
# Symbol FT
	.uleb128	6
	.ascii	"FT\000"
	.byte	3
	.byte	118
	.sleb128	-16
	.byte	6
	.long	.La12-.Ldebug_info0
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La14-.Ldebug_info0
# Symbol ANTIALIAS6
	.uleb128	4
	.ascii	"ANTIALIAS6\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La14-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La14-.Ldebug_info0
# Symbol GAIN
	.uleb128	4
	.ascii	"GAIN\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN
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
	.quad	.Lt39
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La26-.Ldebug_info0
# Symbol NOISE1
	.uleb128	4
	.ascii	"NOISE1\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La26-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La26-.Ldebug_info0
# Symbol A
	.uleb128	4
	.ascii	"A\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_A
	.long	.La80-.Ldebug_info0
# Symbol B22
	.uleb128	4
	.ascii	"B22\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_B22
	.long	.La80-.Ldebug_info0
# Symbol B20
	.uleb128	4
	.ascii	"B20\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_B20
	.long	.La80-.Ldebug_info0
# Symbol B16
	.uleb128	4
	.ascii	"B16\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_B16
	.long	.La80-.Ldebug_info0
# Symbol B13
	.uleb128	4
	.ascii	"B13\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_B13
	.long	.La80-.Ldebug_info0
# Symbol B11
	.uleb128	4
	.ascii	"B11\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_B11
	.long	.La80-.Ldebug_info0
# Symbol B07
	.uleb128	4
	.ascii	"B07\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_B07
	.long	.La80-.Ldebug_info0
# Symbol B04
	.uleb128	4
	.ascii	"B04\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_B04
	.long	.La80-.Ldebug_info0
# Symbol B02
	.uleb128	4
	.ascii	"B02\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_B02
	.long	.La80-.Ldebug_info0
# Symbol B17
	.uleb128	4
	.ascii	"B17\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$NOISE1$$BYTE_$$_B17
	.long	.La80-.Ldebug_info0
# Symbol OUTPUT
	.uleb128	4
	.ascii	"OUTPUT\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La80-.Ldebug_info0
# Symbol B
	.uleb128	4
	.ascii	"B\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La34-.Ldebug_info0
	.byte	0
# Procdef initsinetable;
	.uleb128	5
	.ascii	"INITSINETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_INITSINETABLE
	.quad	.Lt40
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef initlogtable;
	.uleb128	5
	.ascii	"INITLOGTABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	RETRO_$$_INITLOGTABLE
	.quad	.Lt41
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La16-.Ldebug_info0
# Symbol Q
	.uleb128	4
	.ascii	"Q\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La14-.Ldebug_info0
# Symbol Q2
	.uleb128	4
	.ascii	"Q2\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La14-.Ldebug_info0
	.byte	0
# Procdef fmsynth(<var tsample>):Array[0..1] Of SmallInt;
	.uleb128	10
	.ascii	"FMSYNTH\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La7-.Ldebug_info0
	.quad	RETRO_$$_FMSYNTH$$TSAMPLE
	.quad	.Lt42
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	3
	.byte	118
	.sleb128	-8
	.byte	6
	.long	.La7-.Ldebug_info0
# Symbol FMSYNTH
	.uleb128	4
	.ascii	"FMSYNTH\000"
	.byte	3
	.byte	118
	.sleb128	-8
	.byte	6
	.long	.La7-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	3
	.byte	118
	.sleb128	-8
	.byte	6
	.long	.La7-.Ldebug_info0
# Symbol RES64A
# Symbol VEL
	.uleb128	4
	.ascii	"VEL\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La24-.Ldebug_info0
# Symbol MODULATOR
	.uleb128	4
	.ascii	"MODULATOR\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La24-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La16-.Ldebug_info0
# Symbol J
# Symbol SAMPLE
	.uleb128	4
	.ascii	"SAMPLE\000"
	.byte	2
	.byte	118
	.sleb128	-56
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
	.quad	.Lt43
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	3
	.byte	118
	.sleb128	-24
	.byte	6
	.long	.La7-.Ldebug_info0
# Symbol A
	.uleb128	6
	.ascii	"A\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La7-.Ldebug_info0
# Symbol B
	.uleb128	6
	.ascii	"B\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La16-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	3
	.byte	118
	.sleb128	-24
	.byte	6
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
	.quad	.Lt44
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	3
	.byte	118
	.sleb128	-24
	.byte	6
	.long	.La7-.Ldebug_info0
# Symbol A
	.uleb128	6
	.ascii	"A\000"
	.byte	2
	.byte	118
	.sleb128	-48
	.long	.La7-.Ldebug_info0
# Symbol B
	.uleb128	6
	.ascii	"B\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La7-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	3
	.byte	118
	.sleb128	-24
	.byte	6
	.long	.La7-.Ldebug_info0
# Symbol Q1
	.uleb128	4
	.ascii	"Q1\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La16-.Ldebug_info0
# Symbol Q2
	.uleb128	4
	.ascii	"Q2\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef reverb1(Double):Double;
	.uleb128	10
	.ascii	"REVERB1\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
	.quad	RETRO_$$_REVERB1$DOUBLE$$DOUBLE
	.quad	.Lt45
# Symbol S
	.uleb128	6
	.ascii	"S\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La14-.Ldebug_info0
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La14-.Ldebug_info0
# Symbol REVERB1
	.uleb128	4
	.ascii	"REVERB1\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La14-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La14-.Ldebug_info0
# Symbol A1
	.uleb128	4
	.ascii	"A1\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La16-.Ldebug_info0
# Symbol A2
	.uleb128	4
	.ascii	"A2\000"
	.byte	2
	.byte	118
	.sleb128	-32
	.long	.La16-.Ldebug_info0
# Symbol A3
	.uleb128	4
	.ascii	"A3\000"
	.byte	2
	.byte	118
	.sleb128	-40
	.long	.La16-.Ldebug_info0
# Symbol A4
	.uleb128	4
	.ascii	"A4\000"
	.byte	2
	.byte	118
	.sleb128	-48
	.long	.La16-.Ldebug_info0
# Symbol A5
	.uleb128	4
	.ascii	"A5\000"
	.byte	2
	.byte	118
	.sleb128	-56
	.long	.La16-.Ldebug_info0
# Symbol A6
	.uleb128	4
	.ascii	"A6\000"
	.byte	2
	.byte	118
	.sleb128	-64
	.long	.La16-.Ldebug_info0
# Symbol A7
	.uleb128	4
	.ascii	"A7\000"
	.byte	3
	.byte	118
	.sleb128	-72
	.long	.La16-.Ldebug_info0
# Symbol A8
	.uleb128	4
	.ascii	"A8\000"
	.byte	3
	.byte	118
	.sleb128	-80
	.long	.La16-.Ldebug_info0
# Symbol A9
	.uleb128	4
	.ascii	"A9\000"
	.byte	3
	.byte	118
	.sleb128	-88
	.long	.La16-.Ldebug_info0
# Symbol A10
	.uleb128	4
	.ascii	"A10\000"
	.byte	3
	.byte	118
	.sleb128	-96
	.long	.La16-.Ldebug_info0
# Symbol SART
	.uleb128	4
	.ascii	"SART\000"
	.byte	9
	.byte	3
	.quad	TC_$RETRO$_$REVERB1$DOUBLE$$DOUBLE_$$_SART
	.long	.La16-.Ldebug_info0
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition Pointer
.La20:
	.uleb128	12
	.ascii	"POINTER\000"
	.long	.La92-.Ldebug_info0
.La92:
	.uleb128	13
.La21:
	.uleb128	8
	.long	.La20-.Ldebug_info0
# Definition Byte
.La26:
	.uleb128	12
	.ascii	"BYTE\000"
	.long	.La93-.Ldebug_info0
.La93:
	.uleb128	14
	.ascii	"BYTE\000"
	.byte	7
	.byte	1
.La27:
	.uleb128	8
	.long	.La26-.Ldebug_info0
# Definition Word
.La18:
	.uleb128	12
	.ascii	"WORD\000"
	.long	.La94-.Ldebug_info0
.La94:
	.uleb128	14
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La19:
	.uleb128	8
	.long	.La18-.Ldebug_info0
# Definition SmallInt
.La90:
	.uleb128	12
	.ascii	"SMALLINT\000"
	.long	.La95-.Ldebug_info0
.La95:
	.uleb128	14
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.La91:
	.uleb128	8
	.long	.La90-.Ldebug_info0
# Definition LongWord
.La80:
	.uleb128	12
	.ascii	"LONGWORD\000"
	.long	.La96-.Ldebug_info0
.La96:
	.uleb128	14
	.ascii	"LONGWORD\000"
	.byte	7
	.byte	4
.La81:
	.uleb128	8
	.long	.La80-.Ldebug_info0
# Definition LongInt
.La16:
	.uleb128	12
	.ascii	"LONGINT\000"
	.long	.La97-.Ldebug_info0
.La97:
	.uleb128	14
	.ascii	"LONGINT\000"
	.byte	5
	.byte	4
.La17:
	.uleb128	8
	.long	.La16-.Ldebug_info0
# Definition Int64
.La24:
	.uleb128	12
	.ascii	"INT64\000"
	.long	.La98-.Ldebug_info0
.La98:
	.uleb128	14
	.ascii	"Int64\000"
	.byte	5
	.byte	8
.La25:
	.uleb128	8
	.long	.La24-.Ldebug_info0
# Definition Boolean
.La34:
	.uleb128	12
	.ascii	"BOOLEAN\000"
	.long	.La99-.Ldebug_info0
.La99:
	.uleb128	14
	.ascii	"Boolean\000"
	.byte	2
	.byte	1
.La35:
	.uleb128	8
	.long	.La34-.Ldebug_info0
# Definition Char
.La74:
	.uleb128	12
	.ascii	"CHAR\000"
	.long	.La100-.Ldebug_info0
.La100:
	.uleb128	14
	.ascii	"Char\000"
	.byte	8
	.byte	1
.La75:
	.uleb128	8
	.long	.La74-.Ldebug_info0
# Definition AnsiString
.La76:
	.uleb128	12
	.ascii	"ANSISTRING\000"
	.long	.La101-.Ldebug_info0
.La101:
	.uleb128	7
	.long	.La74-.Ldebug_info0
.La77:
	.uleb128	8
	.long	.La76-.Ldebug_info0
# Definition Double
.La14:
	.uleb128	12
	.ascii	"DOUBLE\000"
	.long	.La102-.Ldebug_info0
.La102:
	.uleb128	14
	.ascii	"DOUBLE\000"
	.byte	4
	.byte	8
.La15:
	.uleb128	8
	.long	.La14-.Ldebug_info0
# Definition ^untyped
.La78:
	.uleb128	12
	.ascii	"parentfp_void_pointer\000"
	.long	.La103-.Ldebug_info0
.La103:
	.uleb128	13
.La79:
	.uleb128	8
	.long	.La78-.Ldebug_info0
# Definition PSmallInt
.La88:
	.uleb128	12
	.ascii	"PSMALLINT\000"
	.long	.La104-.Ldebug_info0
.La104:
	.uleb128	7
	.long	.La90-.Ldebug_info0
.La89:
	.uleb128	8
	.long	.La88-.Ldebug_info0
# Definition PByte
.La86:
	.uleb128	12
	.ascii	"PBYTE\000"
	.long	.La105-.Ldebug_info0
.La105:
	.uleb128	7
	.long	.La26-.Ldebug_info0
.La87:
	.uleb128	8
	.long	.La86-.Ldebug_info0
# Defs - End unit SYSTEM has index 1
# Defs - Begin unit OBJPAS has index 6
# Defs - End unit OBJPAS has index 6
# Defs - Begin unit SDL2 has index 255
# Definition TSDL_AudioSpec
.La32:
	.uleb128	12
	.ascii	"TSDL_AUDIOSPEC\000"
	.long	.La106-.Ldebug_info0
.La106:
	.uleb128	15
	.ascii	"TSDL_AUDIOSPEC\000"
	.uleb128	32
	.uleb128	16
	.ascii	"FREQ\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"FORMAT\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La18-.Ldebug_info0
	.uleb128	16
	.ascii	"CHANNELS\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"SILENCE\000"
	.byte	2
	.byte	35
	.uleb128	7
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"SAMPLES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La18-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La18-.Ldebug_info0
	.uleb128	16
	.ascii	"SIZE\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"CALLBACK\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La107-.Ldebug_info0
	.uleb128	16
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
.La84:
	.uleb128	12
	.ascii	"TSDL_EVENT\000"
	.long	.La109-.Ldebug_info0
.La109:
	.uleb128	15
	.ascii	"TSDL_EVENT\000"
	.uleb128	56
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"COMMON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La110-.Ldebug_info0
	.uleb128	16
	.ascii	"WINDOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La112-.Ldebug_info0
	.uleb128	16
	.ascii	"KEY\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La114-.Ldebug_info0
	.uleb128	16
	.ascii	"EDIT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La116-.Ldebug_info0
	.uleb128	16
	.ascii	"TEXT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La118-.Ldebug_info0
	.uleb128	16
	.ascii	"MOTION\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La120-.Ldebug_info0
	.uleb128	16
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La122-.Ldebug_info0
	.uleb128	16
	.ascii	"WHEEL\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La124-.Ldebug_info0
	.uleb128	16
	.ascii	"JAXIS\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La126-.Ldebug_info0
	.uleb128	16
	.ascii	"JBALL\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La128-.Ldebug_info0
	.uleb128	16
	.ascii	"JHAT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La130-.Ldebug_info0
	.uleb128	16
	.ascii	"JBUTTON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La132-.Ldebug_info0
	.uleb128	16
	.ascii	"JDEVICE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La134-.Ldebug_info0
	.uleb128	16
	.ascii	"CAXIS\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La136-.Ldebug_info0
	.uleb128	16
	.ascii	"CBUTTON\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La138-.Ldebug_info0
	.uleb128	16
	.ascii	"CDEVICE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La140-.Ldebug_info0
	.uleb128	16
	.ascii	"QUIT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La142-.Ldebug_info0
	.uleb128	16
	.ascii	"USER\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La144-.Ldebug_info0
	.uleb128	16
	.ascii	"SYSWM\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La146-.Ldebug_info0
	.uleb128	16
	.ascii	"TFINGER\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La148-.Ldebug_info0
	.uleb128	16
	.ascii	"MGESTURE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La150-.Ldebug_info0
	.uleb128	16
	.ascii	"DGESTURE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La152-.Ldebug_info0
	.uleb128	16
	.ascii	"DROP\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La154-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La156-.Ldebug_info0
	.byte	0
.La85:
	.uleb128	8
	.long	.La84-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer;PByte;LongInt);CDecl>
.La107:
	.uleb128	12
	.ascii	"TSDL_AUDIOCALLBACK\000"
	.long	.La158-.Ldebug_info0
.La158:
	.uleb128	17
	.ascii	"TSDL_AUDIOCALLBACK\000"
	.byte	1
	.uleb128	18
	.ascii	"USERDATA\000"
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"STREAM\000"
	.long	.La86-.Ldebug_info0
	.uleb128	18
	.ascii	"LEN\000"
	.long	.La16-.Ldebug_info0
	.byte	0
.La108:
	.uleb128	8
	.long	.La107-.Ldebug_info0
# Definition TSDL_CommonEvent
.La110:
	.uleb128	12
	.ascii	"TSDL_COMMONEVENT\000"
	.long	.La159-.Ldebug_info0
.La159:
	.uleb128	15
	.ascii	"TSDL_COMMONEVENT\000"
	.uleb128	8
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.byte	0
.La111:
	.uleb128	8
	.long	.La110-.Ldebug_info0
# Definition TSDL_WindowEvent
.La112:
	.uleb128	12
	.ascii	"TSDL_WINDOWEVENT\000"
	.long	.La160-.Ldebug_info0
.La160:
	.uleb128	15
	.ascii	"TSDL_WINDOWEVENT\000"
	.uleb128	24
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"EVENT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La16-.Ldebug_info0
	.byte	0
.La113:
	.uleb128	8
	.long	.La112-.Ldebug_info0
# Definition TSDL_KeyboardEvent
.La114:
	.uleb128	12
	.ascii	"TSDL_KEYBOARDEVENT\000"
	.long	.La161-.Ldebug_info0
.La161:
	.uleb128	15
	.ascii	"TSDL_KEYBOARDEVENT\000"
	.uleb128	32
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"REPEAT_\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"KEYSYM\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La162-.Ldebug_info0
	.byte	0
.La115:
	.uleb128	8
	.long	.La114-.Ldebug_info0
# Definition TSDL_TextEditingEvent
.La116:
	.uleb128	12
	.ascii	"TSDL_TEXTEDITINGEVENT\000"
	.long	.La164-.Ldebug_info0
.La164:
	.uleb128	15
	.ascii	"TSDL_TEXTEDITINGEVENT\000"
	.uleb128	52
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TEXT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La165-.Ldebug_info0
	.uleb128	16
	.ascii	"START\000"
	.byte	2
	.byte	35
	.uleb128	44
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"LENGTH\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La16-.Ldebug_info0
	.byte	0
.La117:
	.uleb128	8
	.long	.La116-.Ldebug_info0
# Definition TSDL_TextInputEvent
.La118:
	.uleb128	12
	.ascii	"TSDL_TEXTINPUTEVENT\000"
	.long	.La167-.Ldebug_info0
.La167:
	.uleb128	15
	.ascii	"TSDL_TEXTINPUTEVENT\000"
	.uleb128	44
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TEXT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La168-.Ldebug_info0
	.byte	0
.La119:
	.uleb128	8
	.long	.La118-.Ldebug_info0
# Definition TSDL_MouseMotionEvent
.La120:
	.uleb128	12
	.ascii	"TSDL_MOUSEMOTIONEVENT\000"
	.long	.La170-.Ldebug_info0
.La170:
	.uleb128	15
	.ascii	"TSDL_MOUSEMOTIONEVENT\000"
	.uleb128	36
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"XREL\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"YREL\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La16-.Ldebug_info0
	.byte	0
.La121:
	.uleb128	8
	.long	.La120-.Ldebug_info0
# Definition TSDL_MouseButtonEvent
.La122:
	.uleb128	12
	.ascii	"TSDL_MOUSEBUTTONEVENT\000"
	.long	.La171-.Ldebug_info0
.La171:
	.uleb128	15
	.ascii	"TSDL_MOUSEBUTTONEVENT\000"
	.uleb128	28
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	17
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"CLICKS\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	19
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La16-.Ldebug_info0
	.byte	0
.La123:
	.uleb128	8
	.long	.La122-.Ldebug_info0
# Definition TSDL_MouseWheelEvent
.La124:
	.uleb128	12
	.ascii	"TSDL_MOUSEWHEELEVENT\000"
	.long	.La172-.Ldebug_info0
.La172:
	.uleb128	15
	.ascii	"TSDL_MOUSEWHEELEVENT\000"
	.uleb128	24
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La16-.Ldebug_info0
	.byte	0
.La125:
	.uleb128	8
	.long	.La124-.Ldebug_info0
# Definition TSDL_JoyAxisEvent
.La126:
	.uleb128	12
	.ascii	"TSDL_JOYAXISEVENT\000"
	.long	.La173-.Ldebug_info0
.La173:
	.uleb128	15
	.ascii	"TSDL_JOYAXISEVENT\000"
	.uleb128	20
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"AXIS\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"VALUE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La90-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING4\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La18-.Ldebug_info0
	.byte	0
.La127:
	.uleb128	8
	.long	.La126-.Ldebug_info0
# Definition TSDL_JoyBallEvent
.La128:
	.uleb128	12
	.ascii	"TSDL_JOYBALLEVENT\000"
	.long	.La174-.Ldebug_info0
.La174:
	.uleb128	15
	.ascii	"TSDL_JOYBALLEVENT\000"
	.uleb128	20
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"BALL\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"XREL\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La90-.Ldebug_info0
	.uleb128	16
	.ascii	"YREL\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La90-.Ldebug_info0
	.byte	0
.La129:
	.uleb128	8
	.long	.La128-.Ldebug_info0
# Definition TSDL_JoyHatEvent
.La130:
	.uleb128	12
	.ascii	"TSDL_JOYHATEVENT\000"
	.long	.La175-.Ldebug_info0
.La175:
	.uleb128	15
	.ascii	"TSDL_JOYHATEVENT\000"
	.uleb128	16
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"HAT\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"VALUE\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La26-.Ldebug_info0
	.byte	0
.La131:
	.uleb128	8
	.long	.La130-.Ldebug_info0
# Definition TSDL_JoyButtonEvent
.La132:
	.uleb128	12
	.ascii	"TSDL_JOYBUTTONEVENT\000"
	.long	.La176-.Ldebug_info0
.La176:
	.uleb128	15
	.ascii	"TSDL_JOYBUTTONEVENT\000"
	.uleb128	16
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La26-.Ldebug_info0
	.byte	0
.La133:
	.uleb128	8
	.long	.La132-.Ldebug_info0
# Definition TSDL_JoyDeviceEvent
.La134:
	.uleb128	12
	.ascii	"TSDL_JOYDEVICEEVENT\000"
	.long	.La177-.Ldebug_info0
.La177:
	.uleb128	15
	.ascii	"TSDL_JOYDEVICEEVENT\000"
	.uleb128	12
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.byte	0
.La135:
	.uleb128	8
	.long	.La134-.Ldebug_info0
# Definition TSDL_ControllerAxisEvent
.La136:
	.uleb128	12
	.ascii	"TSDL_CONTROLLERAXISEVENT\000"
	.long	.La178-.Ldebug_info0
.La178:
	.uleb128	15
	.ascii	"TSDL_CONTROLLERAXISEVENT\000"
	.uleb128	20
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"AXIS\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING3\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"VALUE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La90-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING4\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La18-.Ldebug_info0
	.byte	0
.La137:
	.uleb128	8
	.long	.La136-.Ldebug_info0
# Definition TSDL_ControllerButtonEvent
.La138:
	.uleb128	12
	.ascii	"TSDL_CONTROLLERBUTTONEVENT\000"
	.long	.La179-.Ldebug_info0
.La179:
	.uleb128	15
	.ascii	"TSDL_CONTROLLERBUTTONEVENT\000"
	.uleb128	16
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	13
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING1\000"
	.byte	2
	.byte	35
	.uleb128	14
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING2\000"
	.byte	2
	.byte	35
	.uleb128	15
	.long	.La26-.Ldebug_info0
	.byte	0
.La139:
	.uleb128	8
	.long	.La138-.Ldebug_info0
# Definition TSDL_ControllerDeviceEvent
.La140:
	.uleb128	12
	.ascii	"TSDL_CONTROLLERDEVICEEVENT\000"
	.long	.La180-.Ldebug_info0
.La180:
	.uleb128	15
	.ascii	"TSDL_CONTROLLERDEVICEEVENT\000"
	.uleb128	12
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"WHICH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.byte	0
.La141:
	.uleb128	8
	.long	.La140-.Ldebug_info0
# Definition TSDL_TouchFingerEvent
.La148:
	.uleb128	12
	.ascii	"TSDL_TOUCHFINGEREVENT\000"
	.long	.La181-.Ldebug_info0
.La181:
	.uleb128	15
	.ascii	"TSDL_TOUCHFINGEREVENT\000"
	.uleb128	48
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TOUCHID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La24-.Ldebug_info0
	.uleb128	16
	.ascii	"FINGERID\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La24-.Ldebug_info0
	.uleb128	16
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La182-.Ldebug_info0
	.uleb128	16
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La182-.Ldebug_info0
	.uleb128	16
	.ascii	"DX\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La182-.Ldebug_info0
	.uleb128	16
	.ascii	"DY\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La182-.Ldebug_info0
	.uleb128	16
	.ascii	"PRESSURE\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La182-.Ldebug_info0
	.byte	0
.La149:
	.uleb128	8
	.long	.La148-.Ldebug_info0
# Definition TSDL_MultiGestureEvent
.La150:
	.uleb128	12
	.ascii	"TSDL_MULTIGESTUREEVENT\000"
	.long	.La184-.Ldebug_info0
.La184:
	.uleb128	15
	.ascii	"TSDL_MULTIGESTUREEVENT\000"
	.uleb128	40
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TOUCHID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La24-.Ldebug_info0
	.uleb128	16
	.ascii	"DTHETA\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La182-.Ldebug_info0
	.uleb128	16
	.ascii	"DDIST\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La182-.Ldebug_info0
	.uleb128	16
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La182-.Ldebug_info0
	.uleb128	16
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La182-.Ldebug_info0
	.uleb128	16
	.ascii	"NUMFINGERS\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La18-.Ldebug_info0
	.uleb128	16
	.ascii	"PADDING\000"
	.byte	2
	.byte	35
	.uleb128	34
	.long	.La18-.Ldebug_info0
	.byte	0
.La151:
	.uleb128	8
	.long	.La150-.Ldebug_info0
# Definition TSDL_DollarGestureEvent
.La152:
	.uleb128	12
	.ascii	"TSDL_DOLLARGESTUREEVENT\000"
	.long	.La185-.Ldebug_info0
.La185:
	.uleb128	15
	.ascii	"TSDL_DOLLARGESTUREEVENT\000"
	.uleb128	40
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TOUCHID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La24-.Ldebug_info0
	.uleb128	16
	.ascii	"GESTUREID\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La24-.Ldebug_info0
	.uleb128	16
	.ascii	"NUMFINGERS\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"ERROR\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La182-.Ldebug_info0
	.uleb128	16
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La182-.Ldebug_info0
	.uleb128	16
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La182-.Ldebug_info0
	.byte	0
.La153:
	.uleb128	8
	.long	.La152-.Ldebug_info0
# Definition TSDL_DropEvent
.La154:
	.uleb128	12
	.ascii	"TSDL_DROPEVENT\000"
	.long	.La186-.Ldebug_info0
.La186:
	.uleb128	15
	.ascii	"TSDL_DROPEVENT\000"
	.uleb128	16
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"FILE_\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La187-.Ldebug_info0
	.byte	0
.La155:
	.uleb128	8
	.long	.La154-.Ldebug_info0
# Definition TSDL_QuitEvent
.La142:
	.uleb128	12
	.ascii	"TSDL_QUITEVENT\000"
	.long	.La189-.Ldebug_info0
.La189:
	.uleb128	15
	.ascii	"TSDL_QUITEVENT\000"
	.uleb128	8
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.byte	0
.La143:
	.uleb128	8
	.long	.La142-.Ldebug_info0
# Definition TSDL_UserEvent
.La144:
	.uleb128	12
	.ascii	"TSDL_USEREVENT\000"
	.long	.La190-.Ldebug_info0
.La190:
	.uleb128	15
	.ascii	"TSDL_USEREVENT\000"
	.uleb128	32
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"WINDOWID\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"CODE\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La20-.Ldebug_info0
	.uleb128	16
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La20-.Ldebug_info0
	.byte	0
.La145:
	.uleb128	8
	.long	.La144-.Ldebug_info0
# Definition TSDL_SysWMEvent
.La146:
	.uleb128	12
	.ascii	"TSDL_SYSWMEVENT\000"
	.long	.La191-.Ldebug_info0
.La191:
	.uleb128	15
	.ascii	"TSDL_SYSWMEVENT\000"
	.uleb128	16
	.uleb128	16
	.ascii	"TYPE_\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIMESTAMP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La147:
	.uleb128	8
	.long	.La146-.Ldebug_info0
# Definition TSDL_Keysym
.La162:
	.uleb128	12
	.ascii	"TSDL_KEYSYM\000"
	.long	.La192-.Ldebug_info0
.La192:
	.uleb128	15
	.ascii	"TSDL_KEYSYM\000"
	.uleb128	16
	.uleb128	16
	.ascii	"SCANCODE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"SYM\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"MOD_\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La18-.Ldebug_info0
	.uleb128	16
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La80-.Ldebug_info0
	.byte	0
.La163:
	.uleb128	8
	.long	.La162-.Ldebug_info0
# Defs - End unit SDL2 has index 255
# Defs - Begin unit WINDOWS has index 5
# Defs - End unit WINDOWS has index 5
# Defs - Begin unit SYSCONST has index 28
# Defs - End unit SYSCONST has index 28
# Defs - Begin unit WINDIRS has index 29
# Defs - End unit WINDIRS has index 29
# Defs - Begin unit SYSUTILS has index 24
# Defs - End unit SYSUTILS has index 24
# Defs - Begin unit CRT has index 257
# Defs - End unit CRT has index 257
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
# Defs - Begin unit UNIT6502 has index 13
# Defs - End unit UNIT6502 has index 13
# Defs - Begin unit MMSYSTEM has index 258
# Defs - End unit MMSYSTEM has index 258
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
# Definition TFmOperator
.La58:
	.uleb128	12
	.ascii	"TFMOPERATOR\000"
	.long	.La193-.Ldebug_info0
.La193:
	.uleb128	7
	.long	.La60-.Ldebug_info0
.La60:
	.uleb128	19
	.ascii	"TFMOPERATOR\000"
	.uleb128	336
	.uleb128	20
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La196-.Ldebug_info0
	.uleb128	16
	.ascii	"FREQ\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"C3\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"C4\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"C5\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"C6\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"LFO1\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"LFO2\000"
	.byte	2
	.byte	35
	.uleb128	56
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"LFO3\000"
	.byte	2
	.byte	35
	.uleb128	64
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"MUL0\000"
	.byte	2
	.byte	35
	.uleb128	72
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"MUL1\000"
	.byte	2
	.byte	35
	.uleb128	80
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"MUL2\000"
	.byte	2
	.byte	35
	.uleb128	88
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"MUL3\000"
	.byte	2
	.byte	35
	.uleb128	96
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"MUL4\000"
	.byte	2
	.byte	35
	.uleb128	104
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"MUL5\000"
	.byte	2
	.byte	35
	.uleb128	112
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"MUL6\000"
	.byte	2
	.byte	35
	.uleb128	120
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"MUL7\000"
	.byte	3
	.byte	35
	.uleb128	128
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"WPTR\000"
	.byte	3
	.byte	35
	.uleb128	136
	.long	.La197-.Ldebug_info0
	.uleb128	16
	.ascii	"WLENGTH\000"
	.byte	3
	.byte	35
	.uleb128	144
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"WLSTART\000"
	.byte	3
	.byte	35
	.uleb128	152
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"WLEND\000"
	.byte	3
	.byte	35
	.uleb128	160
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"ADSRSTATE\000"
	.byte	3
	.byte	35
	.uleb128	168
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"ADSRVAL\000"
	.byte	3
	.byte	35
	.uleb128	176
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AR1\000"
	.byte	3
	.byte	35
	.uleb128	184
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AV1\000"
	.byte	3
	.byte	35
	.uleb128	192
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AR2\000"
	.byte	3
	.byte	35
	.uleb128	200
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AV2\000"
	.byte	3
	.byte	35
	.uleb128	208
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AR3\000"
	.byte	3
	.byte	35
	.uleb128	216
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AV3\000"
	.byte	3
	.byte	35
	.uleb128	224
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AR4\000"
	.byte	3
	.byte	35
	.uleb128	232
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AV4\000"
	.byte	3
	.byte	35
	.uleb128	240
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AV\000"
	.byte	3
	.byte	35
	.uleb128	248
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AR\000"
	.byte	3
	.byte	35
	.uleb128	256
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"ADSRBIAS\000"
	.byte	3
	.byte	35
	.uleb128	264
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"VEL\000"
	.byte	3
	.byte	35
	.uleb128	272
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"KEYSENSE\000"
	.byte	3
	.byte	35
	.uleb128	280
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"EXPR\000"
	.byte	3
	.byte	35
	.uleb128	288
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"PA\000"
	.byte	3
	.byte	35
	.uleb128	296
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"PA2\000"
	.byte	3
	.byte	35
	.uleb128	304
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"WAVEMODE\000"
	.byte	3
	.byte	35
	.uleb128	312
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"INTPA\000"
	.byte	3
	.byte	35
	.uleb128	316
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"FREQMOD\000"
	.byte	3
	.byte	35
	.uleb128	320
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"OUTPUTTABLE\000"
	.byte	3
	.byte	35
	.uleb128	328
	.long	.La197-.Ldebug_info0
# Procdef getsample(<TFmOperator>):Double;
	.uleb128	21
	.ascii	"GETSAMPLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La58-.Ldebug_info0
	.byte	0
# Procdef init(<TFmOperator>);
	.uleb128	23
	.ascii	"INIT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La58-.Ldebug_info0
	.byte	0
# Procdef setfreq(<TFmOperator>;Double);
	.uleb128	23
	.ascii	"SETFREQ\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La58-.Ldebug_info0
# Symbol AFREQ
	.uleb128	18
	.ascii	"AFREQ\000"
	.long	.La14-.Ldebug_info0
	.byte	0
# Procdef constructor create(<TFmOperator>;<Pointer>;LongInt;Pointer);
	.uleb128	21
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La58-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La58-.Ldebug_info0
# Symbol vmt
	.uleb128	18
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol MODE
	.uleb128	18
	.ascii	"MODE\000"
	.long	.La16-.Ldebug_info0
# Symbol OUTS
	.uleb128	18
	.ascii	"OUTS\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef destructor destroy(<TFmOperator>;<Pointer>);
	.uleb128	23
	.ascii	"DESTROY\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La58-.Ldebug_info0
# Symbol vmt
	.uleb128	18
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
	.byte	0
	.byte	0
.La59:
	.uleb128	8
	.long	.La58-.Ldebug_info0
# Definition TFmVoice
.La61:
	.uleb128	12
	.ascii	"TFMVOICE\000"
	.long	.La199-.Ldebug_info0
.La199:
	.uleb128	7
	.long	.La63-.Ldebug_info0
.La63:
	.uleb128	19
	.ascii	"TFMVOICE\000"
	.uleb128	168
	.uleb128	20
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La196-.Ldebug_info0
	.uleb128	16
	.ascii	"OPERATORS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La200-.Ldebug_info0
	.uleb128	16
	.ascii	"OUTPUTS\000"
	.byte	2
	.byte	35
	.uleb128	72
	.long	.La202-.Ldebug_info0
	.uleb128	16
	.ascii	"OUTMULS\000"
	.byte	3
	.byte	35
	.uleb128	136
	.long	.La204-.Ldebug_info0
# Procdef constructor create(<TFmVoice>;<Pointer>);
	.uleb128	21
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La61-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La61-.Ldebug_info0
# Symbol vmt
	.uleb128	18
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef getsample(<TFmVoice>):Double;
	.uleb128	21
	.ascii	"GETSAMPLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La14-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La61-.Ldebug_info0
	.byte	0
# Procdef setfreq(<TFmVoice>;Double);
	.uleb128	23
	.ascii	"SETFREQ\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La61-.Ldebug_info0
# Symbol AFREQ
	.uleb128	18
	.ascii	"AFREQ\000"
	.long	.La14-.Ldebug_info0
	.byte	0
	.byte	0
.La62:
	.uleb128	8
	.long	.La61-.Ldebug_info0
# Definition PSinglesample
.La197:
	.uleb128	12
	.ascii	"PSINGLESAMPLE\000"
	.long	.La206-.Ldebug_info0
.La206:
	.uleb128	7
	.long	.La14-.Ldebug_info0
.La198:
	.uleb128	8
	.long	.La197-.Ldebug_info0
# Defs - End unit FMSYNTH has index 18
# Defs - Begin unit RETRO has index 12
# Definition tram
.La1:
	.uleb128	12
	.ascii	"TRAM\000"
	.long	.La207-.Ldebug_info0
.La207:
	.uleb128	24
	.ascii	"TRAM\000"
	.uleb128	268435456
	.long	.La16-.Ldebug_info0
	.uleb128	25
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
	.uleb128	12
	.ascii	"TRAMW\000"
	.long	.La208-.Ldebug_info0
.La208:
	.uleb128	24
	.ascii	"TRAMW\000"
	.uleb128	268435456
	.long	.La18-.Ldebug_info0
	.uleb128	25
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
	.uleb128	12
	.ascii	"TRAMB\000"
	.long	.La209-.Ldebug_info0
.La209:
	.uleb128	24
	.ascii	"TRAMB\000"
	.uleb128	268435456
	.long	.La26-.Ldebug_info0
	.uleb128	25
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
	.uleb128	12
	.ascii	"TSAMPLE\000"
	.long	.La210-.Ldebug_info0
.La210:
	.uleb128	24
	.ascii	"TSAMPLE\000"
	.uleb128	4
	.long	.La90-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	1
	.uleb128	2
	.long	.La211-.Ldebug_info0
	.byte	0
.La8:
	.uleb128	8
	.long	.La7-.Ldebug_info0
# Definition TRetro
.La9:
	.uleb128	12
	.ascii	"TRETRO\000"
	.long	.La213-.Ldebug_info0
.La213:
	.uleb128	7
	.long	.La11-.Ldebug_info0
.La11:
	.uleb128	19
	.ascii	"TRETRO\000"
	.uleb128	88
	.uleb128	20
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La216-.Ldebug_info0
# Procdef Execute(<TRetro>);
	.uleb128	26
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
	.quad	.Lt46
# Symbol this
	.uleb128	27
	.ascii	"this\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.byte	1
	.long	.La9-.Ldebug_info0
# Symbol P3
	.uleb128	4
	.ascii	"P3\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La20-.Ldebug_info0
# Symbol T
	.uleb128	4
	.ascii	"T\000"
	.byte	2
	.byte	118
	.sleb128	-24
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
	.quad	.Lt47
# Symbol this
	.uleb128	27
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
	.uleb128	12
	.ascii	"TFILTERTABLE\000"
	.long	.La217-.Ldebug_info0
.La217:
	.uleb128	24
	.ascii	"TFILTERTABLE\000"
	.uleb128	112
	.long	.La14-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	13
	.uleb128	8
	.long	.La211-.Ldebug_info0
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
	.uleb128	28
	.uleb128	1024
	.long	.La26-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	1023
	.uleb128	1
	.long	.La90-.Ldebug_info0
	.byte	0
.La29:
	.uleb128	8
	.long	.La28-.Ldebug_info0
# Definition Array[0..959] Of LongInt
.La30:
	.uleb128	28
	.uleb128	3840
	.long	.La16-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	959
	.uleb128	4
	.long	.La90-.Ldebug_info0
	.byte	0
.La31:
	.uleb128	8
	.long	.La30-.Ldebug_info0
# Definition Array[0..15] Of LongInt
.La36:
	.uleb128	28
	.uleb128	64
	.long	.La16-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	15
	.uleb128	4
	.long	.La211-.Ldebug_info0
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
	.uleb128	28
	.uleb128	128
	.long	.La14-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	15
	.uleb128	8
	.long	.La211-.Ldebug_info0
	.byte	0
.La45:
	.uleb128	8
	.long	.La44-.Ldebug_info0
# Definition Array[0..15] Of Int64
.La46:
	.uleb128	28
	.uleb128	128
	.long	.La24-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	15
	.uleb128	8
	.long	.La211-.Ldebug_info0
	.byte	0
.La47:
	.uleb128	8
	.long	.La46-.Ldebug_info0
# Definition Array[0..15] Of Int64
.La48:
	.uleb128	28
	.uleb128	128
	.long	.La24-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	15
	.uleb128	8
	.long	.La211-.Ldebug_info0
	.byte	0
.La49:
	.uleb128	8
	.long	.La48-.Ldebug_info0
# Definition Array[0..192000] Of Double
.La50:
	.uleb128	28
	.uleb128	1536008
	.long	.La14-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	192000
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.byte	0
.La51:
	.uleb128	8
	.long	.La50-.Ldebug_info0
# Definition Array[0..192000] Of Double
.La52:
	.uleb128	28
	.uleb128	1536008
	.long	.La14-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	192000
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.byte	0
.La53:
	.uleb128	8
	.long	.La52-.Ldebug_info0
# Definition Array[0..127] Of Byte
.La54:
	.uleb128	28
	.uleb128	128
	.long	.La26-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	127
	.uleb128	1
	.long	.La211-.Ldebug_info0
	.byte	0
.La55:
	.uleb128	8
	.long	.La54-.Ldebug_info0
# Definition Array[0..255] Of LongWord
.La56:
	.uleb128	28
	.uleb128	1024
	.long	.La80-.Ldebug_info0
	.uleb128	25
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
	.uleb128	28
	.uleb128	262144
	.long	.La16-.Ldebug_info0
	.uleb128	25
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
	.uleb128	28
	.uleb128	262144
	.long	.La80-.Ldebug_info0
	.uleb128	25
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
	.uleb128	28
	.uleb128	32768
	.long	.La16-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	8191
	.uleb128	4
	.long	.La90-.Ldebug_info0
	.byte	0
.La69:
	.uleb128	8
	.long	.La68-.Ldebug_info0
# Definition Array[0..65535] Of LongWord
.La70:
	.uleb128	28
	.uleb128	262144
	.long	.La80-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	65535
	.uleb128	4
	.long	.La18-.Ldebug_info0
	.byte	0
.La71:
	.uleb128	8
	.long	.La70-.Ldebug_info0
# Defs - End Staticsymtable
# Definition TSDL_Event.Array[0..55] Of Byte
.La156:
	.uleb128	28
	.uleb128	56
	.long	.La26-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	55
	.uleb128	1
	.long	.La211-.Ldebug_info0
	.byte	0
.La157:
	.uleb128	8
	.long	.La156-.Ldebug_info0
# Definition TSDL_TextEditingEvent.Array[0..31] Of Char
.La165:
	.uleb128	28
	.uleb128	32
	.long	.La74-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	31
	.uleb128	1
	.long	.La211-.Ldebug_info0
	.byte	0
.La166:
	.uleb128	8
	.long	.La165-.Ldebug_info0
# Definition TSDL_TextInputEvent.Array[0..31] Of Char
.La168:
	.uleb128	28
	.uleb128	32
	.long	.La74-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	31
	.uleb128	1
	.long	.La211-.Ldebug_info0
	.byte	0
.La169:
	.uleb128	8
	.long	.La168-.Ldebug_info0
# Definition Single
.La182:
	.uleb128	12
	.ascii	"SINGLE\000"
	.long	.La218-.Ldebug_info0
.La218:
	.uleb128	14
	.ascii	"SINGLE\000"
	.byte	4
	.byte	4
.La183:
	.uleb128	8
	.long	.La182-.Ldebug_info0
# Definition PChar
.La187:
	.uleb128	12
	.ascii	"PCHAR\000"
	.long	.La219-.Ldebug_info0
.La219:
	.uleb128	7
	.long	.La74-.Ldebug_info0
.La188:
	.uleb128	8
	.long	.La187-.Ldebug_info0
# Definition TObject
.La194:
	.uleb128	12
	.ascii	"TOBJECT\000"
	.long	.La220-.Ldebug_info0
.La220:
	.uleb128	7
	.long	.La196-.Ldebug_info0
.La196:
	.uleb128	19
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
	.uleb128	21
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol vmt
	.uleb128	18
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol vmt
	.uleb128	18
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
	.long	.La194-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La221-.Ldebug_info0
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
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
	.long	.La223-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol EXCEPTOBJECT
	.uleb128	18
	.ascii	"EXCEPTOBJECT\000"
	.long	.La194-.Ldebug_info0
# Symbol EXCEPTADDR
	.uleb128	18
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	18
	.ascii	"MESSAGE\000"
	.long	.La225-.Ldebug_info0
	.byte	0
# Procdef Free(<TObject>);
	.uleb128	23
	.ascii	"FREE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
	.byte	0
# Procdef class InitInstance(<Class Of TObject>;Pointer):TObject;
	.uleb128	21
	.ascii	"INITINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La227-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	18
	.ascii	"INSTANCE\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef CleanupInstance(<TObject>);
	.uleb128	23
	.ascii	"CLEANUPINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
	.byte	0
# Procdef class ClassType(<Class Of TObject>):Class Of TObject;
	.uleb128	21
	.ascii	"CLASSTYPE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La229-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La231-.Ldebug_info0
	.byte	0
# Procdef class ClassInfo(<Class Of TObject>):^untyped;
	.uleb128	21
	.ascii	"CLASSINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La233-.Ldebug_info0
	.byte	0
# Procdef class ClassName(<Class Of TObject>;<var ShortString>):ShortString;
	.uleb128	21
	.ascii	"CLASSNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La235-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La235-.Ldebug_info0
	.byte	0
# Procdef class ClassNameIs(<Class Of TObject>;const ShortString):Boolean;
	.uleb128	21
	.ascii	"CLASSNAMEIS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La34-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La239-.Ldebug_info0
# Symbol NAME
	.uleb128	18
	.ascii	"NAME\000"
	.long	.La235-.Ldebug_info0
	.byte	0
# Procdef class ClassParent(<Class Of TObject>):Class Of TObject;
	.uleb128	21
	.ascii	"CLASSPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La229-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La241-.Ldebug_info0
	.byte	0
# Procdef class InstanceSize(<Class Of TObject>):Int64;
	.uleb128	21
	.ascii	"INSTANCESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La243-.Ldebug_info0
	.byte	0
# Procdef class InheritsFrom(<Class Of TObject>;TClass):Boolean;
	.uleb128	21
	.ascii	"INHERITSFROM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La34-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La245-.Ldebug_info0
# Symbol ACLASS
	.uleb128	18
	.ascii	"ACLASS\000"
	.long	.La229-.Ldebug_info0
	.byte	0
# Procdef class StringMessageTable(<Class Of TObject>):^TStringMessageTable;
	.uleb128	21
	.ascii	"STRINGMESSAGETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La247-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La249-.Ldebug_info0
	.byte	0
# Procdef class MethodAddress(<Class Of TObject>;const ShortString):^untyped;
	.uleb128	21
	.ascii	"METHODADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La251-.Ldebug_info0
# Symbol NAME
	.uleb128	18
	.ascii	"NAME\000"
	.long	.La235-.Ldebug_info0
	.byte	0
# Procdef class MethodName(<Class Of TObject>;<var ShortString>;Pointer):ShortString;
	.uleb128	21
	.ascii	"METHODNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La235-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La253-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La235-.Ldebug_info0
# Symbol ADDRESS
	.uleb128	18
	.ascii	"ADDRESS\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef FieldAddress(<TObject>;const ShortString):^untyped;
	.uleb128	21
	.ascii	"FIELDADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol NAME
	.uleb128	18
	.ascii	"NAME\000"
	.long	.La235-.Ldebug_info0
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	18
	.ascii	"MESSAGE\000"
	.long	.La225-.Ldebug_info0
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	18
	.ascii	"MESSAGE\000"
	.long	.La225-.Ldebug_info0
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	18
	.ascii	"MESSAGE\000"
	.long	.La225-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	21
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La34-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol IID
	.uleb128	18
	.ascii	"IID\000"
	.long	.La255-.Ldebug_info0
# Symbol OBJ
	.uleb128	18
	.ascii	"OBJ\000"
	.long	.La225-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	21
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La34-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	18
	.ascii	"IIDSTR\000"
	.long	.La235-.Ldebug_info0
# Symbol OBJ
	.uleb128	18
	.ascii	"OBJ\000"
	.long	.La225-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceByStr(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	21
	.ascii	"GETINTERFACEBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La34-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	18
	.ascii	"IIDSTR\000"
	.long	.La235-.Ldebug_info0
# Symbol OBJ
	.uleb128	18
	.ascii	"OBJ\000"
	.long	.La225-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceWeak(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	21
	.ascii	"GETINTERFACEWEAK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La34-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol IID
	.uleb128	18
	.ascii	"IID\000"
	.long	.La255-.Ldebug_info0
# Symbol OBJ
	.uleb128	18
	.ascii	"OBJ\000"
	.long	.La225-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntry(<Class Of TObject>;const TGuid):^tinterfaceentry;
	.uleb128	21
	.ascii	"GETINTERFACEENTRY\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La257-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La259-.Ldebug_info0
# Symbol IID
	.uleb128	18
	.ascii	"IID\000"
	.long	.La255-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntryByStr(<Class Of TObject>;const ShortString):^tinterfaceentry;
	.uleb128	21
	.ascii	"GETINTERFACEENTRYBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La257-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La261-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	18
	.ascii	"IIDSTR\000"
	.long	.La235-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceTable(<Class Of TObject>):^tinterfacetable;
	.uleb128	21
	.ascii	"GETINTERFACETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La263-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La265-.Ldebug_info0
	.byte	0
# Procdef class UnitName(<Class Of TObject>;<var AnsiString>):AnsiString;
	.uleb128	21
	.ascii	"UNITNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La76-.Ldebug_info0
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La267-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La76-.Ldebug_info0
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol OBJ
	.uleb128	18
	.ascii	"OBJ\000"
	.long	.La194-.Ldebug_info0
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
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
	.long	.La76-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La76-.Ldebug_info0
	.byte	0
	.byte	0
.La195:
	.uleb128	8
	.long	.La194-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of TFmOperator
.La200:
	.uleb128	28
	.uleb128	64
	.long	.La58-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	7
	.uleb128	8
	.long	.La211-.Ldebug_info0
	.byte	0
.La201:
	.uleb128	8
	.long	.La200-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of Double
.La202:
	.uleb128	28
	.uleb128	64
	.long	.La14-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	7
	.uleb128	8
	.long	.La211-.Ldebug_info0
	.byte	0
.La203:
	.uleb128	8
	.long	.La202-.Ldebug_info0
# Definition TFmVoice.Array[0..7] Of Single
.La204:
	.uleb128	28
	.uleb128	32
	.long	.La182-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	7
	.uleb128	4
	.long	.La211-.Ldebug_info0
	.byte	0
.La205:
	.uleb128	8
	.long	.La204-.Ldebug_info0
# Definition ShortInt
.La211:
	.uleb128	12
	.ascii	"SHORTINT\000"
	.long	.La269-.Ldebug_info0
.La269:
	.uleb128	14
	.ascii	"SHORTINT\000"
	.byte	5
	.byte	1
.La212:
	.uleb128	8
	.long	.La211-.Ldebug_info0
# Definition TThread
.La214:
	.uleb128	12
	.ascii	"TTHREAD\000"
	.long	.La270-.Ldebug_info0
.La270:
	.uleb128	7
	.long	.La216-.Ldebug_info0
.La216:
	.uleb128	19
	.ascii	"TTHREAD\000"
	.uleb128	88
	.uleb128	20
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La196-.Ldebug_info0
	.uleb128	33
	.ascii	"FHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La271-.Ldebug_info0
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
	.long	.La273-.Ldebug_info0
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
	.long	.La275-.Ldebug_info0
	.uleb128	33
	.ascii	"FFATALEXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La194-.Ldebug_info0
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
	.long	.La277-.Ldebug_info0
	.uleb128	33
	.ascii	"FTHREADID\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	2
	.long	.La271-.Ldebug_info0
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
	.long	.La271-.Ldebug_info0
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
	.long	.La271-.Ldebug_info0
	.uleb128	33
	.ascii	"ONTERMINATE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La275-.Ldebug_info0
	.uleb128	33
	.ascii	"FATALEXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La194-.Ldebug_info0
# Procdef class GetCurrentThread:TThread; Static;
	.uleb128	34
	.ascii	"GETCURRENTTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La214-.Ldebug_info0
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
	.byte	0
# Procdef GetPriority(<TThread>):<enumeration type>;
	.uleb128	34
	.ascii	"GETPRIORITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La279-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
	.byte	0
# Procdef SetPriority(<TThread>;TThreadPriority);
	.uleb128	35
	.ascii	"SETPRIORITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
# Symbol VALUE
	.uleb128	18
	.ascii	"VALUE\000"
	.long	.La279-.Ldebug_info0
	.byte	0
# Procdef SetSuspended(<TThread>;Boolean);
	.uleb128	35
	.ascii	"SETSUSPENDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
# Symbol VALUE
	.uleb128	18
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
	.byte	0
# Procdef InitSynchronizeEvent(<TThread>);
	.uleb128	35
	.ascii	"INITSYNCHRONIZEEVENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
	.byte	0
# Procdef DoneSynchronizeEvent(<TThread>);
	.uleb128	35
	.ascii	"DONESYNCHRONIZEEVENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
	.byte	0
# Procdef SysCreate(<TThread>;Boolean;const QWord);
	.uleb128	35
	.ascii	"SYSCREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	18
	.ascii	"CREATESUSPENDED\000"
	.long	.La34-.Ldebug_info0
# Symbol STACKSIZE
	.uleb128	18
	.ascii	"STACKSIZE\000"
	.long	.La271-.Ldebug_info0
	.byte	0
# Procdef SysDestroy(<TThread>);
	.uleb128	35
	.ascii	"SYSDESTROY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
	.byte	0
# Procdef Synchronize(<TThread>;TThreadMethod);
	.uleb128	35
	.ascii	"SYNCHRONIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	18
	.ascii	"AMETHOD\000"
	.long	.La281-.Ldebug_info0
	.byte	0
# Procdef Queue(<TThread>;TThreadMethod);
	.uleb128	35
	.ascii	"QUEUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	18
	.ascii	"AMETHOD\000"
	.long	.La281-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TThread>;<Pointer>;Boolean;const QWord="4194304");
	.uleb128	21
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La214-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
# Symbol vmt
	.uleb128	18
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol CREATESUSPENDED
	.uleb128	18
	.ascii	"CREATESUSPENDED\000"
	.long	.La34-.Ldebug_info0
# Symbol STACKSIZE
	.uleb128	18
	.ascii	"STACKSIZE\000"
	.long	.La271-.Ldebug_info0
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
# Symbol vmt
	.uleb128	18
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef class CreateAnonymousThread(TProcedure):TThread; Static;
	.uleb128	21
	.ascii	"CREATEANONYMOUSTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La214-.Ldebug_info0
# Symbol APROC
	.uleb128	18
	.ascii	"APROC\000"
	.long	.La283-.Ldebug_info0
	.byte	0
# Procdef class NameThreadForDebugging(UnicodeString;QWord="18446744073709551615"); Static;
	.uleb128	23
	.ascii	"NAMETHREADFORDEBUGGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREADNAME
	.uleb128	18
	.ascii	"ATHREADNAME\000"
	.long	.La285-.Ldebug_info0
# Symbol ATHREADID
	.uleb128	18
	.ascii	"ATHREADID\000"
	.long	.La271-.Ldebug_info0
	.byte	0
# Procdef class NameThreadForDebugging(AnsiString;QWord="18446744073709551615"); Static;
	.uleb128	23
	.ascii	"NAMETHREADFORDEBUGGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREADNAME
	.uleb128	18
	.ascii	"ATHREADNAME\000"
	.long	.La76-.Ldebug_info0
# Symbol ATHREADID
	.uleb128	18
	.ascii	"ATHREADID\000"
	.long	.La271-.Ldebug_info0
	.byte	0
# Procdef class SetReturnValue(LongInt); Static;
	.uleb128	23
	.ascii	"SETRETURNVALUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AVALUE
	.uleb128	18
	.ascii	"AVALUE\000"
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef class CheckTerminated:Boolean; Static;
	.uleb128	21
	.ascii	"CHECKTERMINATED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La34-.Ldebug_info0
	.byte	0
# Procdef class Synchronize(<Class Of TThread>;TThread;TThreadMethod);
	.uleb128	23
	.ascii	"SYNCHRONIZE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol self
	.uleb128	22
	.ascii	"self\000"
	.byte	1
	.long	.La287-.Ldebug_info0
# Symbol ATHREAD
	.uleb128	18
	.ascii	"ATHREAD\000"
	.long	.La214-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	18
	.ascii	"AMETHOD\000"
	.long	.La281-.Ldebug_info0
	.byte	0
# Procdef class Queue(TThread;TThreadMethod); Static;
	.uleb128	23
	.ascii	"QUEUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	18
	.ascii	"ATHREAD\000"
	.long	.La214-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	18
	.ascii	"AMETHOD\000"
	.long	.La281-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThread;TThreadMethod); Static;
	.uleb128	23
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	18
	.ascii	"ATHREAD\000"
	.long	.La214-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	18
	.ascii	"AMETHOD\000"
	.long	.La281-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThreadMethod); Static;
	.uleb128	23
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AMETHOD
	.uleb128	18
	.ascii	"AMETHOD\000"
	.long	.La281-.Ldebug_info0
	.byte	0
# Procdef class RemoveQueuedEvents(TThread); Static;
	.uleb128	23
	.ascii	"REMOVEQUEUEDEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ATHREAD
	.uleb128	18
	.ascii	"ATHREAD\000"
	.long	.La214-.Ldebug_info0
	.byte	0
# Procdef class SpinWait(LongWord); Static;
	.uleb128	23
	.ascii	"SPINWAIT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AITERATIONS
	.uleb128	18
	.ascii	"AITERATIONS\000"
	.long	.La80-.Ldebug_info0
	.byte	0
# Procdef class Sleep(LongWord); Static;
	.uleb128	23
	.ascii	"SLEEP\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol AMILLISECONDS
	.uleb128	18
	.ascii	"AMILLISECONDS\000"
	.long	.La80-.Ldebug_info0
	.byte	0
# Procdef class Yield; Static;
	.uleb128	23
	.ascii	"YIELD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	0
# Procdef class GetSystemTimes(out TThread.TSystemTimes); Static;
	.uleb128	23
	.ascii	"GETSYSTEMTIMES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol ASYSTEMTIMES
	.uleb128	18
	.ascii	"ASYSTEMTIMES\000"
	.long	.La289-.Ldebug_info0
	.byte	0
# Procdef class GetTickCount:DWord; Static;
	.uleb128	21
	.ascii	"GETTICKCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La80-.Ldebug_info0
	.byte	0
# Procdef class GetTickCount64:QWord; Static;
	.uleb128	21
	.ascii	"GETTICKCOUNT64\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La271-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadMethod;TNotifyEvent="nil"):TThread; Static;
	.uleb128	21
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La214-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	18
	.ascii	"AMETHOD\000"
	.long	.La281-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	18
	.ascii	"AONTERMINATE\000"
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteStatusHandler;TThreadStatusNotifyEvent;TNotifyEvent="nil"):TThread; Static;
	.uleb128	21
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La214-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	18
	.ascii	"AMETHOD\000"
	.long	.La291-.Ldebug_info0
# Symbol AONSTATUS
	.uleb128	18
	.ascii	"AONSTATUS\000"
	.long	.La293-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	18
	.ascii	"AONTERMINATE\000"
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteCallBack;Pointer="nil";TNotifyCallBack="nil"):TThread; Static;
	.uleb128	21
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La214-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	18
	.ascii	"AMETHOD\000"
	.long	.La295-.Ldebug_info0
# Symbol ADATA
	.uleb128	18
	.ascii	"ADATA\000"
	.long	.La20-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	18
	.ascii	"AONTERMINATE\000"
	.long	.La297-.Ldebug_info0
	.byte	0
# Procdef class ExecuteInThread(TThreadExecuteStatusCallBack;TThreadStatusNotifyCallBack;Pointer="nil";TNotifyCallBack="nil"):TThread; Static;
	.uleb128	21
	.ascii	"EXECUTEINTHREAD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La214-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	18
	.ascii	"AMETHOD\000"
	.long	.La299-.Ldebug_info0
# Symbol AONSTATUS
	.uleb128	18
	.ascii	"AONSTATUS\000"
	.long	.La301-.Ldebug_info0
# Symbol ADATA
	.uleb128	18
	.ascii	"ADATA\000"
	.long	.La20-.Ldebug_info0
# Symbol AONTERMINATE
	.uleb128	18
	.ascii	"AONTERMINATE\000"
	.long	.La297-.Ldebug_info0
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
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
	.byte	0
# Procdef Start(<TThread>);
	.uleb128	23
	.ascii	"START\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
	.byte	0
# Procdef Resume(<TThread>);
	.uleb128	23
	.ascii	"RESUME\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
	.byte	0
# Procdef Suspend(<TThread>);
	.uleb128	23
	.ascii	"SUSPEND\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
	.byte	0
# Procdef Terminate(<TThread>);
	.uleb128	23
	.ascii	"TERMINATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
	.byte	0
# Procdef WaitFor(<TThread>):LongInt;
	.uleb128	21
	.ascii	"WAITFOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La16-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La214-.Ldebug_info0
	.byte	0
	.byte	0
.La215:
	.uleb128	8
	.long	.La214-.Ldebug_info0
# Definition TObject.Class Of TObject
.La221:
	.uleb128	7
	.long	.La303-.Ldebug_info0
.La222:
	.uleb128	8
	.long	.La221-.Ldebug_info0
# Definition HRESULT
.La223:
	.uleb128	12
	.ascii	"HRESULT\000"
	.long	.La305-.Ldebug_info0
.La305:
	.uleb128	14
	.ascii	"HRESULT\000"
	.byte	5
	.byte	4
.La224:
	.uleb128	8
	.long	.La223-.Ldebug_info0
# Definition <Formal type>
.La225:
	.uleb128	12
	.ascii	"formal\000"
	.long	.La306-.Ldebug_info0
.La306:
	.uleb128	14
	.ascii	"FormalDef\000"
	.byte	7
	.byte	0
.La226:
	.uleb128	8
	.long	.La225-.Ldebug_info0
# Definition TObject.Class Of TObject
.La227:
	.uleb128	7
	.long	.La303-.Ldebug_info0
.La228:
	.uleb128	8
	.long	.La227-.Ldebug_info0
# Definition TClass
.La229:
	.uleb128	12
	.ascii	"TCLASS\000"
	.long	.La307-.Ldebug_info0
.La307:
	.uleb128	7
	.long	.La303-.Ldebug_info0
.La230:
	.uleb128	8
	.long	.La229-.Ldebug_info0
# Definition TObject.Class Of TObject
.La231:
	.uleb128	7
	.long	.La303-.Ldebug_info0
.La232:
	.uleb128	8
	.long	.La231-.Ldebug_info0
# Definition TObject.Class Of TObject
.La233:
	.uleb128	7
	.long	.La303-.Ldebug_info0
.La234:
	.uleb128	8
	.long	.La233-.Ldebug_info0
# Definition ShortString
.La235:
	.uleb128	12
	.ascii	"SHORTSTRING\000"
	.long	.La308-.Ldebug_info0
.La308:
	.uleb128	15
	.ascii	"ShortString\000"
	.uleb128	256
	.uleb128	16
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La309-.Ldebug_info0
	.byte	0
.La309:
	.uleb128	37
	.uleb128	256
	.uleb128	1
	.long	.La74-.Ldebug_info0
	.uleb128	38
	.uleb128	1
	.uleb128	255
	.long	.La26-.Ldebug_info0
	.byte	0
.La236:
	.uleb128	8
	.long	.La235-.Ldebug_info0
# Definition TObject.Class Of TObject
.La237:
	.uleb128	7
	.long	.La303-.Ldebug_info0
.La238:
	.uleb128	8
	.long	.La237-.Ldebug_info0
# Definition TObject.Class Of TObject
.La239:
	.uleb128	7
	.long	.La303-.Ldebug_info0
.La240:
	.uleb128	8
	.long	.La239-.Ldebug_info0
# Definition TObject.Class Of TObject
.La241:
	.uleb128	7
	.long	.La303-.Ldebug_info0
.La242:
	.uleb128	8
	.long	.La241-.Ldebug_info0
# Definition TObject.Class Of TObject
.La243:
	.uleb128	7
	.long	.La303-.Ldebug_info0
.La244:
	.uleb128	8
	.long	.La243-.Ldebug_info0
# Definition TObject.Class Of TObject
.La245:
	.uleb128	7
	.long	.La303-.Ldebug_info0
.La246:
	.uleb128	8
	.long	.La245-.Ldebug_info0
# Definition pstringmessagetable
.La247:
	.uleb128	12
	.ascii	"PSTRINGMESSAGETABLE\000"
	.long	.La310-.Ldebug_info0
.La310:
	.uleb128	7
	.long	.La311-.Ldebug_info0
.La248:
	.uleb128	8
	.long	.La247-.Ldebug_info0
# Definition TObject.Class Of TObject
.La249:
	.uleb128	7
	.long	.La303-.Ldebug_info0
.La250:
	.uleb128	8
	.long	.La249-.Ldebug_info0
# Definition TObject.Class Of TObject
.La251:
	.uleb128	7
	.long	.La303-.Ldebug_info0
.La252:
	.uleb128	8
	.long	.La251-.Ldebug_info0
# Definition TObject.Class Of TObject
.La253:
	.uleb128	7
	.long	.La303-.Ldebug_info0
.La254:
	.uleb128	8
	.long	.La253-.Ldebug_info0
# Definition TGuid
.La255:
	.uleb128	12
	.ascii	"TGUID\000"
	.long	.La313-.Ldebug_info0
.La313:
	.uleb128	15
	.ascii	"TGUID\000"
	.uleb128	16
	.uleb128	16
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La18-.Ldebug_info0
	.uleb128	16
	.ascii	"DATA3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La18-.Ldebug_info0
	.uleb128	16
	.ascii	"DATA4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La314-.Ldebug_info0
	.uleb128	16
	.ascii	"D1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"D2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La18-.Ldebug_info0
	.uleb128	16
	.ascii	"D3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La18-.Ldebug_info0
	.uleb128	16
	.ascii	"D4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La316-.Ldebug_info0
	.uleb128	16
	.ascii	"TIME_LOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"TIME_MID\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La18-.Ldebug_info0
	.uleb128	16
	.ascii	"TIME_HI_AND_VERSION\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La18-.Ldebug_info0
	.uleb128	16
	.ascii	"CLOCK_SEQ_HI_AND_RESERVED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"CLOCK_SEQ_LOW\000"
	.byte	2
	.byte	35
	.uleb128	9
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"NODE\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La318-.Ldebug_info0
	.byte	0
.La256:
	.uleb128	8
	.long	.La255-.Ldebug_info0
# Definition pinterfaceentry
.La257:
	.uleb128	12
	.ascii	"PINTERFACEENTRY\000"
	.long	.La320-.Ldebug_info0
.La320:
	.uleb128	7
	.long	.La321-.Ldebug_info0
.La258:
	.uleb128	8
	.long	.La257-.Ldebug_info0
# Definition TObject.Class Of TObject
.La259:
	.uleb128	7
	.long	.La303-.Ldebug_info0
.La260:
	.uleb128	8
	.long	.La259-.Ldebug_info0
# Definition TObject.Class Of TObject
.La261:
	.uleb128	7
	.long	.La303-.Ldebug_info0
.La262:
	.uleb128	8
	.long	.La261-.Ldebug_info0
# Definition pinterfacetable
.La263:
	.uleb128	12
	.ascii	"PINTERFACETABLE\000"
	.long	.La323-.Ldebug_info0
.La323:
	.uleb128	7
	.long	.La324-.Ldebug_info0
.La264:
	.uleb128	8
	.long	.La263-.Ldebug_info0
# Definition TObject.Class Of TObject
.La265:
	.uleb128	7
	.long	.La303-.Ldebug_info0
.La266:
	.uleb128	8
	.long	.La265-.Ldebug_info0
# Definition TObject.Class Of TObject
.La267:
	.uleb128	7
	.long	.La303-.Ldebug_info0
.La268:
	.uleb128	8
	.long	.La267-.Ldebug_info0
# Definition QWord
.La271:
	.uleb128	12
	.ascii	"QWORD\000"
	.long	.La326-.Ldebug_info0
.La326:
	.uleb128	14
	.ascii	"QWord\000"
	.byte	7
	.byte	8
.La272:
	.uleb128	8
	.long	.La271-.Ldebug_info0
# Definition LongBool
.La273:
	.uleb128	12
	.ascii	"LONGBOOL\000"
	.long	.La327-.Ldebug_info0
.La327:
	.uleb128	14
	.ascii	"LongBool\000"
	.byte	2
	.byte	4
.La274:
	.uleb128	8
	.long	.La273-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject) of object;Register>
.La275:
	.uleb128	12
	.ascii	"TNOTIFYEVENT\000"
	.long	.La328-.Ldebug_info0
.La328:
	.uleb128	39
	.byte	16
	.uleb128	16
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La329-.Ldebug_info0
	.uleb128	16
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La194-.Ldebug_info0
	.byte	0
.La329:
	.uleb128	17
	.ascii	"TNOTIFYEVENT\000"
	.byte	1
	.uleb128	18
	.ascii	"this\000"
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"SENDER\000"
	.long	.La194-.Ldebug_info0
	.byte	0
.La276:
	.uleb128	8
	.long	.La275-.Ldebug_info0
# Definition TThread.PThreadQueueEntry
.La277:
	.uleb128	12
	.ascii	"PTHREADQUEUEENTRY\000"
	.long	.La330-.Ldebug_info0
.La330:
	.uleb128	7
	.long	.La331-.Ldebug_info0
.La278:
	.uleb128	8
	.long	.La277-.Ldebug_info0
# Definition TThreadPriority
.La279:
	.uleb128	12
	.ascii	"TTHREADPRIORITY\000"
	.long	.La333-.Ldebug_info0
.La333:
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
.La280:
	.uleb128	8
	.long	.La279-.Ldebug_info0
# Definition <procedure variable type of procedure of object;Register>
.La281:
	.uleb128	12
	.ascii	"TTHREADMETHOD\000"
	.long	.La334-.Ldebug_info0
.La334:
	.uleb128	39
	.byte	16
	.uleb128	16
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La335-.Ldebug_info0
	.uleb128	16
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La194-.Ldebug_info0
	.byte	0
.La335:
	.uleb128	17
	.ascii	"TTHREADMETHOD\000"
	.byte	1
	.uleb128	18
	.ascii	"this\000"
	.long	.La20-.Ldebug_info0
	.byte	0
.La282:
	.uleb128	8
	.long	.La281-.Ldebug_info0
# Definition <procedure variable type of procedure;Register>
.La283:
	.uleb128	12
	.ascii	"TPROCEDURE\000"
	.long	.La336-.Ldebug_info0
.La336:
	.uleb128	17
	.ascii	"TPROCEDURE\000"
	.byte	1
	.byte	0
.La284:
	.uleb128	8
	.long	.La283-.Ldebug_info0
# Definition UnicodeString
.La285:
	.uleb128	12
	.ascii	"UNICODESTRING\000"
	.long	.La337-.Ldebug_info0
.La337:
	.uleb128	7
	.long	.La338-.Ldebug_info0
.La286:
	.uleb128	8
	.long	.La285-.Ldebug_info0
# Definition TThread.Class Of TThread
.La287:
	.uleb128	7
	.long	.La303-.Ldebug_info0
.La288:
	.uleb128	8
	.long	.La287-.Ldebug_info0
# Definition TThread.TSystemTimes
.La289:
	.uleb128	12
	.ascii	"TSYSTEMTIMES\000"
	.long	.La340-.Ldebug_info0
.La340:
	.uleb128	15
	.ascii	"TSYSTEMTIMES\000"
	.uleb128	32
	.uleb128	16
	.ascii	"IDLETIME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La271-.Ldebug_info0
	.uleb128	16
	.ascii	"USERTIME\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La271-.Ldebug_info0
	.uleb128	16
	.ascii	"KERNELTIME\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La271-.Ldebug_info0
	.uleb128	16
	.ascii	"NICETIME\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La271-.Ldebug_info0
	.byte	0
.La290:
	.uleb128	8
	.long	.La289-.Ldebug_info0
# Definition <procedure variable type of procedure(TThreadReportStatus) of object;Register>
.La291:
	.uleb128	12
	.ascii	"TTHREADEXECUTESTATUSHANDLER\000"
	.long	.La341-.Ldebug_info0
.La341:
	.uleb128	39
	.byte	16
	.uleb128	16
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La342-.Ldebug_info0
	.uleb128	16
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La194-.Ldebug_info0
	.byte	0
.La342:
	.uleb128	17
	.ascii	"TTHREADEXECUTESTATUSHANDLER\000"
	.byte	1
	.uleb128	18
	.ascii	"this\000"
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"REPORTSTATUS\000"
	.long	.La343-.Ldebug_info0
	.byte	0
.La292:
	.uleb128	8
	.long	.La291-.Ldebug_info0
# Definition <procedure variable type of procedure(TThread;const AnsiString) of object;Register>
.La293:
	.uleb128	12
	.ascii	"TTHREADSTATUSNOTIFYEVENT\000"
	.long	.La345-.Ldebug_info0
.La345:
	.uleb128	39
	.byte	16
	.uleb128	16
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La346-.Ldebug_info0
	.uleb128	16
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La194-.Ldebug_info0
	.byte	0
.La346:
	.uleb128	17
	.ascii	"TTHREADSTATUSNOTIFYEVENT\000"
	.byte	1
	.uleb128	18
	.ascii	"this\000"
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"SENDER\000"
	.long	.La214-.Ldebug_info0
	.uleb128	18
	.ascii	"STATUS\000"
	.long	.La76-.Ldebug_info0
	.byte	0
.La294:
	.uleb128	8
	.long	.La293-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer);Register>
.La295:
	.uleb128	12
	.ascii	"TTHREADEXECUTECALLBACK\000"
	.long	.La347-.Ldebug_info0
.La347:
	.uleb128	17
	.ascii	"TTHREADEXECUTECALLBACK\000"
	.byte	1
	.uleb128	18
	.ascii	"ADATA\000"
	.long	.La20-.Ldebug_info0
	.byte	0
.La296:
	.uleb128	8
	.long	.La295-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;Pointer);Register>
.La297:
	.uleb128	12
	.ascii	"TNOTIFYCALLBACK\000"
	.long	.La348-.Ldebug_info0
.La348:
	.uleb128	17
	.ascii	"TNOTIFYCALLBACK\000"
	.byte	1
	.uleb128	18
	.ascii	"SENDER\000"
	.long	.La194-.Ldebug_info0
	.uleb128	18
	.ascii	"ADATA\000"
	.long	.La20-.Ldebug_info0
	.byte	0
.La298:
	.uleb128	8
	.long	.La297-.Ldebug_info0
# Definition <procedure variable type of procedure(Pointer;TThreadReportStatus);Register>
.La299:
	.uleb128	12
	.ascii	"TTHREADEXECUTESTATUSCALLBACK\000"
	.long	.La349-.Ldebug_info0
.La349:
	.uleb128	17
	.ascii	"TTHREADEXECUTESTATUSCALLBACK\000"
	.byte	1
	.uleb128	18
	.ascii	"ADATA\000"
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"REPORTSTATUS\000"
	.long	.La343-.Ldebug_info0
	.byte	0
.La300:
	.uleb128	8
	.long	.La299-.Ldebug_info0
# Definition <procedure variable type of procedure(TThread;Pointer;const AnsiString);Register>
.La301:
	.uleb128	12
	.ascii	"TTHREADSTATUSNOTIFYCALLBACK\000"
	.long	.La350-.Ldebug_info0
.La350:
	.uleb128	17
	.ascii	"TTHREADSTATUSNOTIFYCALLBACK\000"
	.byte	1
	.uleb128	18
	.ascii	"SENDER\000"
	.long	.La214-.Ldebug_info0
	.uleb128	18
	.ascii	"ADATA\000"
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"STATUS\000"
	.long	.La76-.Ldebug_info0
	.byte	0
.La302:
	.uleb128	8
	.long	.La301-.Ldebug_info0
# Definition <record type>
.La303:
	.uleb128	12
	.ascii	"__vtbl_ptr_type\000"
	.long	.La351-.Ldebug_info0
.La351:
	.uleb128	42
	.uleb128	40
	.byte	0
.La304:
	.uleb128	8
	.long	.La303-.Ldebug_info0
# Definition TStringMessageTable
.La311:
	.uleb128	12
	.ascii	"TSTRINGMESSAGETABLE\000"
	.long	.La352-.Ldebug_info0
.La352:
	.uleb128	15
	.ascii	"TSTRINGMESSAGETABLE\000"
	.uleb128	24
	.uleb128	16
	.ascii	"COUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"MSGSTRTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La353-.Ldebug_info0
	.byte	0
.La312:
	.uleb128	8
	.long	.La311-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La314:
	.uleb128	28
	.uleb128	8
	.long	.La26-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La211-.Ldebug_info0
	.byte	0
.La315:
	.uleb128	8
	.long	.La314-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La316:
	.uleb128	28
	.uleb128	8
	.long	.La26-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La211-.Ldebug_info0
	.byte	0
.La317:
	.uleb128	8
	.long	.La316-.Ldebug_info0
# Definition TGuid.Array[0..5] Of Byte
.La318:
	.uleb128	28
	.uleb128	6
	.long	.La26-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	5
	.uleb128	1
	.long	.La211-.Ldebug_info0
	.byte	0
.La319:
	.uleb128	8
	.long	.La318-.Ldebug_info0
# Definition tinterfaceentry
.La321:
	.uleb128	12
	.ascii	"TINTERFACEENTRY\000"
	.long	.La355-.Ldebug_info0
.La355:
	.uleb128	15
	.ascii	"TINTERFACEENTRY\000"
	.uleb128	40
	.uleb128	16
	.ascii	"IID\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La356-.Ldebug_info0
	.uleb128	16
	.ascii	"VTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	16
	.ascii	"IOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La271-.Ldebug_info0
	.uleb128	16
	.ascii	"IIDSTR\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La358-.Ldebug_info0
	.uleb128	16
	.ascii	"ITYPE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La360-.Ldebug_info0
	.uleb128	16
	.ascii	"__PAD_DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La24-.Ldebug_info0
	.byte	0
.La322:
	.uleb128	8
	.long	.La321-.Ldebug_info0
# Definition tinterfacetable
.La324:
	.uleb128	12
	.ascii	"TINTERFACETABLE\000"
	.long	.La362-.Ldebug_info0
.La362:
	.uleb128	15
	.ascii	"TINTERFACETABLE\000"
	.uleb128	48
	.uleb128	16
	.ascii	"ENTRYCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La271-.Ldebug_info0
	.uleb128	16
	.ascii	"ENTRIES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La363-.Ldebug_info0
	.byte	0
.La325:
	.uleb128	8
	.long	.La324-.Ldebug_info0
# Definition TThread.TThreadQueueEntry
.La331:
	.uleb128	12
	.ascii	"TTHREADQUEUEENTRY\000"
	.long	.La365-.Ldebug_info0
.La365:
	.uleb128	15
	.ascii	"TTHREADQUEUEENTRY\000"
	.uleb128	48
	.uleb128	16
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La281-.Ldebug_info0
	.uleb128	16
	.ascii	"THREAD\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La214-.Ldebug_info0
	.uleb128	16
	.ascii	"EXCEPTION\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La366-.Ldebug_info0
	.uleb128	16
	.ascii	"SYNCEVENT\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La369-.Ldebug_info0
	.uleb128	16
	.ascii	"NEXT\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La277-.Ldebug_info0
	.byte	0
.La332:
	.uleb128	8
	.long	.La331-.Ldebug_info0
# Definition WideChar
.La338:
	.uleb128	12
	.ascii	"WIDECHAR\000"
	.long	.La371-.Ldebug_info0
.La371:
	.uleb128	14
	.ascii	"WideChar\000"
	.byte	8
	.byte	2
.La339:
	.uleb128	8
	.long	.La338-.Ldebug_info0
# Definition <procedure variable type of procedure(const AnsiString) of object;Register>
.La343:
	.uleb128	12
	.ascii	"TTHREADREPORTSTATUS\000"
	.long	.La372-.Ldebug_info0
.La372:
	.uleb128	39
	.byte	16
	.uleb128	16
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La373-.Ldebug_info0
	.uleb128	16
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La194-.Ldebug_info0
	.byte	0
.La373:
	.uleb128	17
	.ascii	"TTHREADREPORTSTATUS\000"
	.byte	1
	.uleb128	18
	.ascii	"this\000"
	.long	.La20-.Ldebug_info0
	.uleb128	18
	.ascii	"STATUS\000"
	.long	.La76-.Ldebug_info0
	.byte	0
.La344:
	.uleb128	8
	.long	.La343-.Ldebug_info0
# Definition TStringMessageTable.Array[0..0] Of TMsgStrTable
.La353:
	.uleb128	28
	.uleb128	16
	.long	.La374-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	0
	.uleb128	16
	.long	.La211-.Ldebug_info0
	.byte	0
.La354:
	.uleb128	8
	.long	.La353-.Ldebug_info0
# Definition PGuid
.La356:
	.uleb128	12
	.ascii	"PGUID\000"
	.long	.La376-.Ldebug_info0
.La376:
	.uleb128	7
	.long	.La255-.Ldebug_info0
.La357:
	.uleb128	8
	.long	.La356-.Ldebug_info0
# Definition PShortString
.La358:
	.uleb128	12
	.ascii	"PSHORTSTRING\000"
	.long	.La377-.Ldebug_info0
.La377:
	.uleb128	7
	.long	.La235-.Ldebug_info0
.La359:
	.uleb128	8
	.long	.La358-.Ldebug_info0
# Definition tinterfaceentrytype
.La360:
	.uleb128	12
	.ascii	"TINTERFACEENTRYTYPE\000"
	.long	.La378-.Ldebug_info0
.La378:
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
.La361:
	.uleb128	8
	.long	.La360-.Ldebug_info0
# Definition tinterfacetable.Array[0..0] Of tinterfaceentry
.La363:
	.uleb128	28
	.uleb128	40
	.long	.La321-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	0
	.uleb128	40
	.long	.La211-.Ldebug_info0
	.byte	0
.La364:
	.uleb128	8
	.long	.La363-.Ldebug_info0
# Definition Exception
.La366:
	.uleb128	12
	.ascii	"EXCEPTION\000"
	.long	.La379-.Ldebug_info0
.La379:
	.uleb128	7
	.long	.La368-.Ldebug_info0
.La368:
	.uleb128	19
	.ascii	"EXCEPTION\000"
	.uleb128	24
	.uleb128	20
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La196-.Ldebug_info0
	.uleb128	33
	.ascii	"FMESSAGE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La76-.Ldebug_info0
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
	.long	.La76-.Ldebug_info0
# Procdef constructor Create(<Exception>;<Pointer>;const AnsiString);
	.uleb128	21
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La366-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La366-.Ldebug_info0
# Symbol vmt
	.uleb128	18
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol MSG
	.uleb128	18
	.ascii	"MSG\000"
	.long	.La76-.Ldebug_info0
	.byte	0
# Procdef constructor CreateFmt(<Exception>;<Pointer>;const AnsiString;const Array Of Const;<const Int64>);
	.uleb128	21
	.ascii	"CREATEFMT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La366-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La366-.Ldebug_info0
# Symbol vmt
	.uleb128	18
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol MSG
	.uleb128	18
	.ascii	"MSG\000"
	.long	.La76-.Ldebug_info0
# Symbol ARGS
	.uleb128	18
	.ascii	"ARGS\000"
	.long	.La380-.Ldebug_info0
# Symbol highARGS
	.uleb128	18
	.ascii	"highARGS\000"
	.long	.La24-.Ldebug_info0
# Definition Array Of Const
.La380:
	.uleb128	43
	.long	.La382-.Ldebug_info0
	.uleb128	44
	.sleb128	0
	.uleb128	16
	.long	.La24-.Ldebug_info0
	.byte	0
.La381:
	.uleb128	8
	.long	.La380-.Ldebug_info0
	.byte	0
# Procdef constructor CreateRes(<Exception>;<Pointer>;PAnsiString);
	.uleb128	21
	.ascii	"CREATERES\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La366-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La366-.Ldebug_info0
# Symbol vmt
	.uleb128	18
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	18
	.ascii	"RESSTRING\000"
	.long	.La384-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResFmt(<Exception>;<Pointer>;PAnsiString;const Array Of Const;<const Int64>);
	.uleb128	21
	.ascii	"CREATERESFMT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La366-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La366-.Ldebug_info0
# Symbol vmt
	.uleb128	18
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	18
	.ascii	"RESSTRING\000"
	.long	.La384-.Ldebug_info0
# Symbol ARGS
	.uleb128	18
	.ascii	"ARGS\000"
	.long	.La386-.Ldebug_info0
# Symbol highARGS
	.uleb128	18
	.ascii	"highARGS\000"
	.long	.La24-.Ldebug_info0
# Definition Array Of Const
.La386:
	.uleb128	43
	.long	.La382-.Ldebug_info0
	.uleb128	44
	.sleb128	0
	.uleb128	16
	.long	.La24-.Ldebug_info0
	.byte	0
.La387:
	.uleb128	8
	.long	.La386-.Ldebug_info0
	.byte	0
# Procdef constructor CreateHelp(<Exception>;<Pointer>;const AnsiString;LongInt);
	.uleb128	21
	.ascii	"CREATEHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La366-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La366-.Ldebug_info0
# Symbol vmt
	.uleb128	18
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol MSG
	.uleb128	18
	.ascii	"MSG\000"
	.long	.La76-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	18
	.ascii	"AHELPCONTEXT\000"
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef constructor CreateFmtHelp(<Exception>;<Pointer>;const AnsiString;const Array Of Const;<const Int64>;LongInt);
	.uleb128	21
	.ascii	"CREATEFMTHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La366-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La366-.Ldebug_info0
# Symbol vmt
	.uleb128	18
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol MSG
	.uleb128	18
	.ascii	"MSG\000"
	.long	.La76-.Ldebug_info0
# Symbol ARGS
	.uleb128	18
	.ascii	"ARGS\000"
	.long	.La388-.Ldebug_info0
# Symbol highARGS
	.uleb128	18
	.ascii	"highARGS\000"
	.long	.La24-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	18
	.ascii	"AHELPCONTEXT\000"
	.long	.La16-.Ldebug_info0
# Definition Array Of Const
.La388:
	.uleb128	43
	.long	.La382-.Ldebug_info0
	.uleb128	44
	.sleb128	0
	.uleb128	16
	.long	.La24-.Ldebug_info0
	.byte	0
.La389:
	.uleb128	8
	.long	.La388-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResHelp(<Exception>;<Pointer>;PAnsiString;LongInt);
	.uleb128	21
	.ascii	"CREATERESHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La366-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La366-.Ldebug_info0
# Symbol vmt
	.uleb128	18
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	18
	.ascii	"RESSTRING\000"
	.long	.La384-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	18
	.ascii	"AHELPCONTEXT\000"
	.long	.La16-.Ldebug_info0
	.byte	0
# Procdef constructor CreateResFmtHelp(<Exception>;<Pointer>;PAnsiString;const Array Of Const;<const Int64>;LongInt);
	.uleb128	21
	.ascii	"CREATERESFMTHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La366-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La366-.Ldebug_info0
# Symbol vmt
	.uleb128	18
	.ascii	"vmt\000"
	.long	.La20-.Ldebug_info0
# Symbol RESSTRING
	.uleb128	18
	.ascii	"RESSTRING\000"
	.long	.La384-.Ldebug_info0
# Symbol ARGS
	.uleb128	18
	.ascii	"ARGS\000"
	.long	.La390-.Ldebug_info0
# Symbol highARGS
	.uleb128	18
	.ascii	"highARGS\000"
	.long	.La24-.Ldebug_info0
# Symbol AHELPCONTEXT
	.uleb128	18
	.ascii	"AHELPCONTEXT\000"
	.long	.La16-.Ldebug_info0
# Definition Array Of Const
.La390:
	.uleb128	43
	.long	.La382-.Ldebug_info0
	.uleb128	44
	.sleb128	0
	.uleb128	16
	.long	.La24-.Ldebug_info0
	.byte	0
.La391:
	.uleb128	8
	.long	.La390-.Ldebug_info0
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
	.long	.La76-.Ldebug_info0
# Symbol this
	.uleb128	22
	.ascii	"this\000"
	.byte	1
	.long	.La366-.Ldebug_info0
# Symbol result
	.uleb128	32
	.ascii	"result\000"
	.long	.La76-.Ldebug_info0
	.byte	0
	.byte	0
.La367:
	.uleb128	8
	.long	.La366-.Ldebug_info0
# Definition PRTLEvent
.La369:
	.uleb128	12
	.ascii	"PRTLEVENT\000"
	.long	.La392-.Ldebug_info0
.La392:
	.uleb128	13
.La370:
	.uleb128	8
	.long	.La369-.Ldebug_info0
# Definition TMsgStrTable
.La374:
	.uleb128	12
	.ascii	"TMSGSTRTABLE\000"
	.long	.La393-.Ldebug_info0
.La393:
	.uleb128	15
	.ascii	"TMSGSTRTABLE\000"
	.uleb128	16
	.uleb128	16
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La358-.Ldebug_info0
	.uleb128	16
	.ascii	"METHOD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La375:
	.uleb128	8
	.long	.La374-.Ldebug_info0
# Definition TVarRec
.La382:
	.uleb128	12
	.ascii	"TVARREC\000"
	.long	.La394-.Ldebug_info0
.La394:
	.uleb128	15
	.ascii	"TVARREC\000"
	.uleb128	16
	.uleb128	16
	.ascii	"VTYPE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La24-.Ldebug_info0
	.uleb128	16
	.ascii	"VINTEGER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"VBOOLEAN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La34-.Ldebug_info0
	.uleb128	16
	.ascii	"VCHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La74-.Ldebug_info0
	.uleb128	16
	.ascii	"VWIDECHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La338-.Ldebug_info0
	.uleb128	16
	.ascii	"VEXTENDED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La395-.Ldebug_info0
	.uleb128	16
	.ascii	"VSTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La358-.Ldebug_info0
	.uleb128	16
	.ascii	"VPOINTER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	16
	.ascii	"VPCHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La187-.Ldebug_info0
	.uleb128	16
	.ascii	"VOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La194-.Ldebug_info0
	.uleb128	16
	.ascii	"VCLASS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La229-.Ldebug_info0
	.uleb128	16
	.ascii	"VPWIDECHAR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La397-.Ldebug_info0
	.uleb128	16
	.ascii	"VANSISTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	16
	.ascii	"VCURRENCY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La399-.Ldebug_info0
	.uleb128	16
	.ascii	"VVARIANT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La401-.Ldebug_info0
	.uleb128	16
	.ascii	"VINTERFACE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	16
	.ascii	"VWIDESTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	16
	.ascii	"VINT64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La403-.Ldebug_info0
	.uleb128	16
	.ascii	"VUNICODESTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	16
	.ascii	"VQWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La405-.Ldebug_info0
	.byte	0
.La383:
	.uleb128	8
	.long	.La382-.Ldebug_info0
# Definition PAnsiString
.La384:
	.uleb128	12
	.ascii	"PANSISTRING\000"
	.long	.La407-.Ldebug_info0
.La407:
	.uleb128	7
	.long	.La76-.Ldebug_info0
.La385:
	.uleb128	8
	.long	.La384-.Ldebug_info0
# Definition PExtended
.La395:
	.uleb128	12
	.ascii	"PEXTENDED\000"
	.long	.La408-.Ldebug_info0
.La408:
	.uleb128	7
	.long	.La14-.Ldebug_info0
.La396:
	.uleb128	8
	.long	.La395-.Ldebug_info0
# Definition PWideChar
.La397:
	.uleb128	12
	.ascii	"PWIDECHAR\000"
	.long	.La409-.Ldebug_info0
.La409:
	.uleb128	7
	.long	.La338-.Ldebug_info0
.La398:
	.uleb128	8
	.long	.La397-.Ldebug_info0
# Definition PCurrency
.La399:
	.uleb128	12
	.ascii	"PCURRENCY\000"
	.long	.La410-.Ldebug_info0
.La410:
	.uleb128	7
	.long	.La411-.Ldebug_info0
.La400:
	.uleb128	8
	.long	.La399-.Ldebug_info0
# Definition PVariant
.La401:
	.uleb128	12
	.ascii	"PVARIANT\000"
	.long	.La413-.Ldebug_info0
.La413:
	.uleb128	7
	.long	.La414-.Ldebug_info0
.La402:
	.uleb128	8
	.long	.La401-.Ldebug_info0
# Definition PInt64
.La403:
	.uleb128	12
	.ascii	"PINT64\000"
	.long	.La416-.Ldebug_info0
.La416:
	.uleb128	7
	.long	.La24-.Ldebug_info0
.La404:
	.uleb128	8
	.long	.La403-.Ldebug_info0
# Definition PQWord
.La405:
	.uleb128	12
	.ascii	"PQWORD\000"
	.long	.La417-.Ldebug_info0
.La417:
	.uleb128	7
	.long	.La271-.Ldebug_info0
.La406:
	.uleb128	8
	.long	.La405-.Ldebug_info0
# Definition Currency
.La411:
	.uleb128	12
	.ascii	"CURRENCY\000"
	.long	.La418-.Ldebug_info0
.La418:
	.uleb128	14
	.ascii	"Currency\000"
	.byte	5
	.byte	8
.La412:
	.uleb128	8
	.long	.La411-.Ldebug_info0
# Definition Variant
.La414:
	.uleb128	12
	.ascii	"VARIANT\000"
	.long	.La419-.Ldebug_info0
.La419:
	.uleb128	15
	.ascii	"Variant\000"
	.uleb128	24
	.uleb128	16
	.ascii	"VTYPE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La18-.Ldebug_info0
	.uleb128	16
	.ascii	"RES1\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La18-.Ldebug_info0
	.uleb128	16
	.ascii	"RES2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La18-.Ldebug_info0
	.uleb128	16
	.ascii	"RES3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La18-.Ldebug_info0
	.uleb128	16
	.ascii	"VSMALLINT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La90-.Ldebug_info0
	.uleb128	16
	.ascii	"VINTEGER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"VSINGLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La182-.Ldebug_info0
	.uleb128	16
	.ascii	"VDOUBLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"VDATE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La420-.Ldebug_info0
	.uleb128	16
	.ascii	"VCURRENCY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La411-.Ldebug_info0
	.uleb128	16
	.ascii	"VOLESTR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La397-.Ldebug_info0
	.uleb128	16
	.ascii	"VDISPATCH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	16
	.ascii	"VERROR\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La223-.Ldebug_info0
	.uleb128	16
	.ascii	"VBOOLEAN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La422-.Ldebug_info0
	.uleb128	16
	.ascii	"VUNKNOWN\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	16
	.ascii	"VSHORTINT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La211-.Ldebug_info0
	.uleb128	16
	.ascii	"VBYTE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La26-.Ldebug_info0
	.uleb128	16
	.ascii	"VWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La18-.Ldebug_info0
	.uleb128	16
	.ascii	"VLONGWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La80-.Ldebug_info0
	.uleb128	16
	.ascii	"VINT64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La24-.Ldebug_info0
	.uleb128	16
	.ascii	"VQWORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La271-.Ldebug_info0
	.uleb128	16
	.ascii	"VWORD64\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La271-.Ldebug_info0
	.uleb128	16
	.ascii	"VSTRING\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	16
	.ascii	"VANY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	16
	.ascii	"VARRAY\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La424-.Ldebug_info0
	.uleb128	16
	.ascii	"VPOINTER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	16
	.ascii	"VRECORD\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.uleb128	16
	.ascii	"PRECINFO\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La20-.Ldebug_info0
	.uleb128	16
	.ascii	"VLONGS\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La426-.Ldebug_info0
	.uleb128	16
	.ascii	"VWORDS\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La428-.Ldebug_info0
	.uleb128	16
	.ascii	"VBYTES\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La430-.Ldebug_info0
	.byte	0
.La415:
	.uleb128	8
	.long	.La414-.Ldebug_info0
# Definition TDateTime
.La420:
	.uleb128	12
	.ascii	"TDATETIME\000"
	.long	.La432-.Ldebug_info0
.La432:
	.uleb128	14
	.ascii	"TDATETIME\000"
	.byte	4
	.byte	8
.La421:
	.uleb128	8
	.long	.La420-.Ldebug_info0
# Definition WordBool
.La422:
	.uleb128	12
	.ascii	"WORDBOOL\000"
	.long	.La433-.Ldebug_info0
.La433:
	.uleb128	14
	.ascii	"WordBool\000"
	.byte	2
	.byte	2
.La423:
	.uleb128	8
	.long	.La422-.Ldebug_info0
# Definition pvararray
.La424:
	.uleb128	12
	.ascii	"PVARARRAY\000"
	.long	.La434-.Ldebug_info0
.La434:
	.uleb128	7
	.long	.La435-.Ldebug_info0
.La425:
	.uleb128	8
	.long	.La424-.Ldebug_info0
# Definition tvardata.Array[0..2] Of LongInt
.La426:
	.uleb128	28
	.uleb128	12
	.long	.La16-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	2
	.uleb128	4
	.long	.La211-.Ldebug_info0
	.byte	0
.La427:
	.uleb128	8
	.long	.La426-.Ldebug_info0
# Definition tvardata.Array[0..6] Of Word
.La428:
	.uleb128	28
	.uleb128	14
	.long	.La18-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	6
	.uleb128	2
	.long	.La211-.Ldebug_info0
	.byte	0
.La429:
	.uleb128	8
	.long	.La428-.Ldebug_info0
# Definition tvardata.Array[0..13] Of Byte
.La430:
	.uleb128	28
	.uleb128	14
	.long	.La26-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	13
	.uleb128	1
	.long	.La211-.Ldebug_info0
	.byte	0
.La431:
	.uleb128	8
	.long	.La430-.Ldebug_info0
# Definition tvararray
.La435:
	.uleb128	12
	.ascii	"TVARARRAY\000"
	.long	.La437-.Ldebug_info0
.La437:
	.uleb128	15
	.ascii	"TVARARRAY\000"
	.uleb128	32
	.uleb128	16
	.ascii	"DIMCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La18-.Ldebug_info0
	.uleb128	16
	.ascii	"FLAGS\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La18-.Ldebug_info0
	.uleb128	16
	.ascii	"ELEMENTSIZE\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"LOCKCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"DATA\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La20-.Ldebug_info0
	.uleb128	16
	.ascii	"BOUNDS\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La438-.Ldebug_info0
	.byte	0
.La436:
	.uleb128	8
	.long	.La435-.Ldebug_info0
# Definition tvararrayboundarray
.La438:
	.uleb128	12
	.ascii	"TVARARRAYBOUNDARRAY\000"
	.long	.La440-.Ldebug_info0
.La440:
	.uleb128	24
	.ascii	"TVARARRAYBOUNDARRAY\000"
	.uleb128	8
	.long	.La441-.Ldebug_info0
	.uleb128	25
	.sleb128	0
	.sleb128	0
	.uleb128	8
	.long	.La211-.Ldebug_info0
	.byte	0
.La439:
	.uleb128	8
	.long	.La438-.Ldebug_info0
# Definition tvararraybound
.La441:
	.uleb128	12
	.ascii	"TVARARRAYBOUND\000"
	.long	.La443-.Ldebug_info0
.La443:
	.uleb128	15
	.ascii	"TVARARRAYBOUND\000"
	.uleb128	8
	.uleb128	16
	.ascii	"ELEMENTCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"LOWBOUND\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La16-.Ldebug_info0
	.byte	0
.La442:
	.uleb128	8
	.long	.La441-.Ldebug_info0
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
	.uleb128	15
	.byte	0
	.byte	0
	.byte	0
# Abbrev 14
	.uleb128	14
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
# Abbrev 15
	.uleb128	15
	.uleb128	19
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.byte	0
	.byte	0
# Abbrev 16
	.uleb128	16
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
# Abbrev 17
	.uleb128	17
	.uleb128	21
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	39
	.uleb128	12
	.byte	0
	.byte	0
# Abbrev 18
	.uleb128	18
	.uleb128	5
	.byte	0
	.uleb128	3
	.uleb128	8
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
	.uleb128	52
	.uleb128	12
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
	.byte	0
	.byte	0
# Abbrev 24
	.uleb128	24
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
# Abbrev 25
	.uleb128	25
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
	.uleb128	50
	.uleb128	11
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
# Abbrev 27
	.uleb128	27
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
# Abbrev 28
	.uleb128	28
	.uleb128	1
	.byte	1
	.uleb128	11
	.uleb128	15
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
# [223:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	234
# [223:1]
	.byte	2
	.uleb128	.Ll2-.Ll1
	.byte	1
# [226:1]
	.byte	2
	.uleb128	.Ll3-.Ll2
	.byte	15
# [224:19]
	.byte	2
	.uleb128	.Ll4-.Ll3
	.byte	5
	.uleb128	19
	.byte	3
	.sleb128	-2
	.byte	1
# [225:3]
	.byte	2
	.uleb128	.Ll5-.Ll4
	.byte	5
	.uleb128	3
	.byte	13
# [226:1]
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
# [240:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll8
	.byte	5
	.uleb128	1
	.byte	251
# [241:1]
	.byte	2
	.uleb128	.Ll9-.Ll8
	.byte	13
# [242:1]
	.byte	2
	.uleb128	.Ll10-.Ll9
	.byte	13
# [244:6]
	.byte	2
	.uleb128	.Ll11-.Ll10
	.byte	5
	.uleb128	6
	.byte	14
# [247:9]
	.byte	2
	.uleb128	.Ll12-.Ll11
	.byte	5
	.uleb128	9
	.byte	15
# [248:3]
	.byte	2
	.uleb128	.Ll13-.Ll12
	.byte	5
	.uleb128	3
	.byte	13
# [249:3]
	.byte	2
	.uleb128	.Ll14-.Ll13
	.byte	13
# [250:6]
	.byte	2
	.uleb128	.Ll15-.Ll14
	.byte	5
	.uleb128	6
	.byte	13
# [251:22]
	.byte	2
	.uleb128	.Ll16-.Ll15
	.byte	5
	.uleb128	22
	.byte	13
# [252:8]
	.byte	2
	.uleb128	.Ll17-.Ll16
	.byte	5
	.uleb128	8
	.byte	13
# [253:8]
	.byte	2
	.uleb128	.Ll18-.Ll17
	.byte	13
# [254:3]
	.byte	2
	.uleb128	.Ll19-.Ll18
	.byte	5
	.uleb128	3
	.byte	13
# [255:3]
	.byte	2
	.uleb128	.Ll20-.Ll19
	.byte	13
# [256:16]
	.byte	2
	.uleb128	.Ll21-.Ll20
	.byte	5
	.uleb128	16
	.byte	13
# [257:3]
	.byte	2
	.uleb128	.Ll22-.Ll21
	.byte	5
	.uleb128	3
	.byte	13
# [262:6]
	.byte	2
	.uleb128	.Ll23-.Ll22
	.byte	5
	.uleb128	6
	.byte	17
# [265:5]
	.byte	2
	.uleb128	.Ll24-.Ll23
	.byte	5
	.uleb128	5
	.byte	15
# [266:5]
	.byte	2
	.uleb128	.Ll25-.Ll24
	.byte	13
# [267:20]
	.byte	2
	.uleb128	.Ll26-.Ll25
	.byte	5
	.uleb128	20
	.byte	13
# [268:8]
	.byte	2
	.uleb128	.Ll27-.Ll26
	.byte	5
	.uleb128	8
	.byte	13
# [269:21]
	.byte	2
	.uleb128	.Ll28-.Ll27
	.byte	5
	.uleb128	21
	.byte	13
# [270:21]
	.byte	2
	.uleb128	.Ll29-.Ll28
	.byte	13
# [271:7]
	.byte	2
	.uleb128	.Ll30-.Ll29
	.byte	5
	.uleb128	7
	.byte	13
# [275:21]
	.byte	2
	.uleb128	.Ll31-.Ll30
	.byte	5
	.uleb128	21
	.byte	16
# [276:21]
	.byte	2
	.uleb128	.Ll32-.Ll31
	.byte	13
# [277:7]
	.byte	2
	.uleb128	.Ll33-.Ll32
	.byte	5
	.uleb128	7
	.byte	13
# [279:9]
	.byte	2
	.uleb128	.Ll34-.Ll33
	.byte	5
	.uleb128	9
	.byte	14
# [283:3]
	.byte	2
	.uleb128	.Ll35-.Ll34
	.byte	5
	.uleb128	3
	.byte	16
# [284:3]
	.byte	2
	.uleb128	.Ll36-.Ll35
	.byte	13
# [285:3]
	.byte	2
	.uleb128	.Ll37-.Ll36
	.byte	13
# [286:3]
	.byte	2
	.uleb128	.Ll38-.Ll37
	.byte	13
# [287:3]
	.byte	2
	.uleb128	.Ll39-.Ll38
	.byte	13
# [291:3]
	.byte	2
	.uleb128	.Ll40-.Ll39
	.byte	16
# [292:3]
	.byte	2
	.uleb128	.Ll41-.Ll40
	.byte	13
# [293:6]
	.byte	2
	.uleb128	.Ll42-.Ll41
	.byte	5
	.uleb128	6
	.byte	13
# [294:22]
	.byte	2
	.uleb128	.Ll43-.Ll42
	.byte	5
	.uleb128	22
	.byte	13
# [295:8]
	.byte	2
	.uleb128	.Ll44-.Ll43
	.byte	5
	.uleb128	8
	.byte	13
# [296:8]
	.byte	2
	.uleb128	.Ll45-.Ll44
	.byte	13
# [297:3]
	.byte	2
	.uleb128	.Ll46-.Ll45
	.byte	5
	.uleb128	3
	.byte	13
# [298:3]
	.byte	2
	.uleb128	.Ll47-.Ll46
	.byte	13
# [299:16]
	.byte	2
	.uleb128	.Ll48-.Ll47
	.byte	5
	.uleb128	16
	.byte	13
# [300:3]
	.byte	2
	.uleb128	.Ll49-.Ll48
	.byte	5
	.uleb128	3
	.byte	13
# [302:7]
	.byte	2
	.uleb128	.Ll50-.Ll49
	.byte	5
	.uleb128	7
	.byte	14
# [305:5]
	.byte	2
	.uleb128	.Ll51-.Ll50
	.byte	5
	.uleb128	5
	.byte	15
# [306:5]
	.byte	2
	.uleb128	.Ll52-.Ll51
	.byte	13
# [307:20]
	.byte	2
	.uleb128	.Ll53-.Ll52
	.byte	5
	.uleb128	20
	.byte	13
# [308:8]
	.byte	2
	.uleb128	.Ll54-.Ll53
	.byte	5
	.uleb128	8
	.byte	13
# [309:21]
	.byte	2
	.uleb128	.Ll55-.Ll54
	.byte	5
	.uleb128	21
	.byte	13
# [310:21]
	.byte	2
	.uleb128	.Ll56-.Ll55
	.byte	13
# [311:7]
	.byte	2
	.uleb128	.Ll57-.Ll56
	.byte	5
	.uleb128	7
	.byte	13
# [315:21]
	.byte	2
	.uleb128	.Ll58-.Ll57
	.byte	5
	.uleb128	21
	.byte	16
# [316:21]
	.byte	2
	.uleb128	.Ll59-.Ll58
	.byte	13
# [317:7]
	.byte	2
	.uleb128	.Ll60-.Ll59
	.byte	5
	.uleb128	7
	.byte	13
# [319:9]
	.byte	2
	.uleb128	.Ll61-.Ll60
	.byte	5
	.uleb128	9
	.byte	14
# [323:3]
	.byte	2
	.uleb128	.Ll62-.Ll61
	.byte	5
	.uleb128	3
	.byte	16
# [324:3]
	.byte	2
	.uleb128	.Ll63-.Ll62
	.byte	13
# [325:3]
	.byte	2
	.uleb128	.Ll64-.Ll63
	.byte	13
# [326:3]
	.byte	2
	.uleb128	.Ll65-.Ll64
	.byte	13
# [327:3]
	.byte	2
	.uleb128	.Ll66-.Ll65
	.byte	13
# [330:7]
	.byte	2
	.uleb128	.Ll67-.Ll66
	.byte	5
	.uleb128	7
	.byte	15
# [331:1]
	.byte	2
	.uleb128	.Ll68-.Ll67
	.byte	5
	.uleb128	1
	.byte	13
# [332:1]
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
# [347:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll71
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	346
	.byte	1
# [349:1]
	.byte	2
	.uleb128	.Ll72-.Ll71
	.byte	14
# [350:1]
	.byte	2
	.uleb128	.Ll73-.Ll72
	.byte	13
# [351:1]
	.byte	2
	.uleb128	.Ll74-.Ll73
	.byte	13
# [352:5]
	.byte	2
	.uleb128	.Ll75-.Ll74
	.byte	5
	.uleb128	5
	.byte	13
# [353:5]
	.byte	2
	.uleb128	.Ll76-.Ll75
	.byte	13
# [355:30]
	.byte	2
	.uleb128	.Ll77-.Ll76
	.byte	5
	.uleb128	30
	.byte	14
# [356:19]
	.byte	2
	.uleb128	.Ll78-.Ll77
	.byte	5
	.uleb128	19
	.byte	13
# [357:14]
	.byte	2
	.uleb128	.Ll79-.Ll78
	.byte	5
	.uleb128	14
	.byte	13
# [359:40]
	.byte	2
	.uleb128	.Ll80-.Ll79
	.byte	5
	.uleb128	40
	.byte	14
# [360:13]
	.byte	2
	.uleb128	.Ll81-.Ll80
	.byte	5
	.uleb128	13
	.byte	13
# [361:14]
	.byte	2
	.uleb128	.Ll82-.Ll81
	.byte	5
	.uleb128	14
	.byte	13
# [363:27]
	.byte	2
	.uleb128	.Ll83-.Ll82
	.byte	5
	.uleb128	27
	.byte	14
# [364:1]
	.byte	2
	.uleb128	.Ll84-.Ll83
	.byte	5
	.uleb128	1
	.byte	13
# [366:15]
	.byte	2
	.uleb128	.Ll85-.Ll84
	.byte	5
	.uleb128	15
	.byte	14
# [367:6]
	.byte	2
	.uleb128	.Ll86-.Ll85
	.byte	5
	.uleb128	6
	.byte	13
# [368:8]
	.byte	2
	.uleb128	.Ll87-.Ll86
	.byte	5
	.uleb128	8
	.byte	13
# [369:8]
	.byte	2
	.uleb128	.Ll88-.Ll87
	.byte	13
# [364:1]
	.byte	2
	.uleb128	.Ll89-.Ll88
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-5
	.byte	1
# [371:14]
	.byte	2
	.uleb128	.Ll90-.Ll89
	.byte	5
	.uleb128	14
	.byte	19
# [375:1]
	.byte	2
	.uleb128	.Ll91-.Ll90
	.byte	5
	.uleb128	1
	.byte	16
# [377:50]
	.byte	2
	.uleb128	.Ll92-.Ll91
	.byte	5
	.uleb128	50
	.byte	14
# [378:53]
	.byte	2
	.uleb128	.Ll93-.Ll92
	.byte	5
	.uleb128	53
	.byte	13
# [379:8]
	.byte	2
	.uleb128	.Ll94-.Ll93
	.byte	5
	.uleb128	8
	.byte	13
# [380:8]
	.byte	2
	.uleb128	.Ll95-.Ll94
	.byte	13
# [381:16]
	.byte	2
	.uleb128	.Ll96-.Ll95
	.byte	5
	.uleb128	16
	.byte	13
# [382:15]
	.byte	2
	.uleb128	.Ll97-.Ll96
	.byte	5
	.uleb128	15
	.byte	13
# [383:1]
	.byte	2
	.uleb128	.Ll98-.Ll97
	.byte	5
	.uleb128	1
	.byte	13
# [385:1]
	.byte	2
	.uleb128	.Ll99-.Ll98
	.byte	14
# [387:1]
	.byte	2
	.uleb128	.Ll100-.Ll99
	.byte	14
# [388:1]
	.byte	2
	.uleb128	.Ll101-.Ll100
	.byte	13
# [390:9]
	.byte	2
	.uleb128	.Ll102-.Ll101
	.byte	5
	.uleb128	9
	.byte	14
# [391:1]
	.byte	2
	.uleb128	.Ll103-.Ll102
	.byte	5
	.uleb128	1
	.byte	13
# [393:1]
	.byte	2
	.uleb128	.Ll104-.Ll103
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll105
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_STOPMACHINE
# [405:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll106
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	404
	.byte	1
# [409:1]
	.byte	2
	.uleb128	.Ll107-.Ll106
	.byte	16
# [410:1]
	.byte	2
	.uleb128	.Ll108-.Ll107
	.byte	13
# [411:1]
	.byte	2
	.uleb128	.Ll109-.Ll108
	.byte	13
# [412:21]
	.byte	2
	.uleb128	.Ll110-.Ll109
	.byte	5
	.uleb128	21
	.byte	13
# [413:1]
	.byte	2
	.uleb128	.Ll111-.Ll110
	.byte	5
	.uleb128	1
	.byte	13
# [414:1]
	.byte	2
	.uleb128	.Ll112-.Ll111
	.byte	13
# [415:1]
	.byte	2
	.uleb128	.Ll113-.Ll112
	.byte	13
# [416:1]
	.byte	2
	.uleb128	.Ll114-.Ll113
	.byte	13
# [420:1]
	.byte	2
	.uleb128	.Ll115-.Ll114
	.byte	16
# [421:1]
	.byte	2
	.uleb128	.Ll116-.Ll115
	.byte	13
# [423:1]
	.byte	2
	.uleb128	.Ll117-.Ll116
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll118
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_POKE$LONGINT$BYTE
# [433:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll119
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	432
	.byte	1
# [434:6]
	.byte	2
	.uleb128	.Ll120-.Ll119
	.byte	5
	.uleb128	6
	.byte	13
# [435:1]
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
# function: RETRO_$$_DPOKE$LONGINT$WORD
# [439:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll123
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	438
	.byte	1
# [440:6]
	.byte	2
	.uleb128	.Ll124-.Ll123
	.byte	5
	.uleb128	6
	.byte	13
# [441:1]
	.byte	2
	.uleb128	.Ll125-.Ll124
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll126
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_LPOKE$LONGINT$LONGWORD
# [446:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll127
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	445
	.byte	1
# [447:6]
	.byte	2
	.uleb128	.Ll128-.Ll127
	.byte	5
	.uleb128	6
	.byte	13
# [448:1]
	.byte	2
	.uleb128	.Ll129-.Ll128
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll130
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SLPOKE$LONGINT$LONGINT
# [452:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll131
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	451
	.byte	1
# [453:6]
	.byte	2
	.uleb128	.Ll132-.Ll131
	.byte	5
	.uleb128	6
	.byte	13
# [454:1]
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
# function: RETRO_$$_PEEK$LONGINT$$BYTE
# [458:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll135
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	457
	.byte	1
# [459:12]
	.byte	2
	.uleb128	.Ll136-.Ll135
	.byte	5
	.uleb128	12
	.byte	13
# [460:1]
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
# function: RETRO_$$_DPEEK$LONGINT$$WORD
# [464:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll139
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	463
	.byte	1
# [465:29]
	.byte	2
	.uleb128	.Ll140-.Ll139
	.byte	5
	.uleb128	29
	.byte	13
# [466:1]
	.byte	2
	.uleb128	.Ll141-.Ll140
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll142
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_LPEEK$LONGINT$$LONGWORD
# [470:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll143
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	469
	.byte	1
# [471:13]
	.byte	2
	.uleb128	.Ll144-.Ll143
	.byte	5
	.uleb128	13
	.byte	13
# [472:1]
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
# function: RETRO_$$_SLPEEK$LONGINT$$LONGINT
# [476:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll147
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	475
	.byte	1
# [477:14]
	.byte	2
	.uleb128	.Ll148-.Ll147
	.byte	5
	.uleb128	14
	.byte	13
# [478:1]
	.byte	2
	.uleb128	.Ll149-.Ll148
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll150
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_GETTIME$$INT64
# [491:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll151
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	490
	.byte	1
# [492:1]
	.byte	2
	.uleb128	.Ll152-.Ll151
	.byte	13
# [493:1]
	.byte	2
	.uleb128	.Ll153-.Ll152
	.byte	13
# [494:23]
	.byte	2
	.uleb128	.Ll154-.Ll153
	.byte	5
	.uleb128	23
	.byte	13
# [495:1]
	.byte	2
	.uleb128	.Ll155-.Ll154
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll156
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_READKEYBUFFER$$LONGWORD
# [499:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll157
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	498
	.byte	1
# [500:6]
	.byte	2
	.uleb128	.Ll158-.Ll157
	.byte	5
	.uleb128	6
	.byte	13
# [502:20]
	.byte	2
	.uleb128	.Ll159-.Ll158
	.byte	5
	.uleb128	20
	.byte	14
# [503:3]
	.byte	2
	.uleb128	.Ll160-.Ll159
	.byte	5
	.uleb128	3
	.byte	13
# [504:3]
	.byte	2
	.uleb128	.Ll161-.Ll160
	.byte	13
# [503:3]
	.byte	2
	.uleb128	.Ll162-.Ll161
	.byte	3
	.sleb128	-1
	.byte	1
# [505:6]
	.byte	2
	.uleb128	.Ll163-.Ll162
	.byte	5
	.uleb128	6
	.byte	14
# [506:1]
	.byte	2
	.uleb128	.Ll164-.Ll163
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll165
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_WRITEKEYBUFFER$LONGINT
# [510:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll166
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	509
	.byte	1
# [511:8]
	.byte	2
	.uleb128	.Ll167-.Ll166
	.byte	5
	.uleb128	8
	.byte	13
# [513:12]
	.byte	2
	.uleb128	.Ll168-.Ll167
	.byte	5
	.uleb128	12
	.byte	14
# [514:3]
	.byte	2
	.uleb128	.Ll169-.Ll168
	.byte	5
	.uleb128	3
	.byte	13
# [516:1]
	.byte	2
	.uleb128	.Ll170-.Ll169
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll171
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SDLEVENTS
# [537:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll172
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	536
	.byte	1
# [539:27]
	.byte	2
	.uleb128	.Ll173-.Ll172
	.byte	5
	.uleb128	27
	.byte	14
# [540:6]
	.byte	2
	.uleb128	.Ll174-.Ll173
	.byte	5
	.uleb128	6
	.byte	13
# [542:6]
	.byte	2
	.uleb128	.Ll175-.Ll174
	.byte	14
# [544:5]
	.byte	2
	.uleb128	.Ll176-.Ll175
	.byte	5
	.uleb128	5
	.byte	14
# [545:5]
	.byte	2
	.uleb128	.Ll177-.Ll176
	.byte	13
# [546:9]
	.byte	2
	.uleb128	.Ll178-.Ll177
	.byte	5
	.uleb128	9
	.byte	13
# [547:9]
	.byte	2
	.uleb128	.Ll179-.Ll178
	.byte	13
# [548:9]
	.byte	2
	.uleb128	.Ll180-.Ll179
	.byte	13
# [549:9]
	.byte	2
	.uleb128	.Ll181-.Ll180
	.byte	13
# [550:10]
	.byte	2
	.uleb128	.Ll182-.Ll181
	.byte	5
	.uleb128	10
	.byte	13
# [551:10]
	.byte	2
	.uleb128	.Ll183-.Ll182
	.byte	13
# [554:11]
	.byte	2
	.uleb128	.Ll184-.Ll183
	.byte	5
	.uleb128	11
	.byte	15
# [556:26]
	.byte	2
	.uleb128	.Ll185-.Ll184
	.byte	5
	.uleb128	26
	.byte	14
# [558:12]
	.byte	2
	.uleb128	.Ll186-.Ll185
	.byte	5
	.uleb128	12
	.byte	14
# [559:12]
	.byte	2
	.uleb128	.Ll187-.Ll186
	.byte	13
# [562:11]
	.byte	2
	.uleb128	.Ll188-.Ll187
	.byte	5
	.uleb128	11
	.byte	15
# [564:10]
	.byte	2
	.uleb128	.Ll189-.Ll188
	.byte	5
	.uleb128	10
	.byte	14
# [565:5]
	.byte	2
	.uleb128	.Ll190-.Ll189
	.byte	5
	.uleb128	5
	.byte	13
# [566:10]
	.byte	2
	.uleb128	.Ll191-.Ll190
	.byte	5
	.uleb128	10
	.byte	13
# [567:26]
	.byte	2
	.uleb128	.Ll192-.Ll191
	.byte	5
	.uleb128	26
	.byte	13
# [568:5]
	.byte	2
	.uleb128	.Ll193-.Ll192
	.byte	5
	.uleb128	5
	.byte	13
# [570:11]
	.byte	2
	.uleb128	.Ll194-.Ll193
	.byte	5
	.uleb128	11
	.byte	14
# [572:10]
	.byte	2
	.uleb128	.Ll195-.Ll194
	.byte	5
	.uleb128	10
	.byte	14
# [573:5]
	.byte	2
	.uleb128	.Ll196-.Ll195
	.byte	5
	.uleb128	5
	.byte	13
# [574:10]
	.byte	2
	.uleb128	.Ll197-.Ll196
	.byte	5
	.uleb128	10
	.byte	13
# [575:30]
	.byte	2
	.uleb128	.Ll198-.Ll197
	.byte	5
	.uleb128	30
	.byte	13
# [577:5]
	.byte	2
	.uleb128	.Ll199-.Ll198
	.byte	5
	.uleb128	5
	.byte	14
# [579:11]
	.byte	2
	.uleb128	.Ll200-.Ll199
	.byte	5
	.uleb128	11
	.byte	14
# [580:1]
	.byte	2
	.uleb128	.Ll201-.Ll200
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll202
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_BLIT$crc5A667533
# [597:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll203
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	596
	.byte	1
# [598:9]
	.byte	2
	.uleb128	.Ll204-.Ll203
	.byte	5
	.uleb128	9
	.byte	13
# [600:13]
	.byte	2
	.uleb128	.Ll205-.Ll204
	.byte	5
	.uleb128	13
	.byte	14
# [601:11]
	.byte	2
	.uleb128	.Ll206-.Ll205
	.byte	5
	.uleb128	11
	.byte	13
# [602:20]
	.byte	2
	.uleb128	.Ll207-.Ll206
	.byte	5
	.uleb128	20
	.byte	13
# [604:18]
	.byte	2
	.uleb128	.Ll208-.Ll207
	.byte	5
	.uleb128	18
	.byte	14
# [605:19]
	.byte	2
	.uleb128	.Ll209-.Ll208
	.byte	5
	.uleb128	19
	.byte	13
# [606:23]
	.byte	2
	.uleb128	.Ll210-.Ll209
	.byte	5
	.uleb128	23
	.byte	13
# [607:12]
	.byte	2
	.uleb128	.Ll211-.Ll210
	.byte	5
	.uleb128	12
	.byte	13
# [606:9]
	.byte	2
	.uleb128	.Ll212-.Ll211
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	-1
	.byte	1
# [602:7]
	.byte	2
	.uleb128	.Ll213-.Ll212
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-4
	.byte	1
# [610:15]
	.byte	2
	.uleb128	.Ll214-.Ll213
	.byte	5
	.uleb128	15
	.byte	20
# [612:9]
	.byte	2
	.uleb128	.Ll215-.Ll214
	.byte	5
	.uleb128	9
	.byte	14
# [613:8]
	.byte	2
	.uleb128	.Ll216-.Ll215
	.byte	5
	.uleb128	8
	.byte	13
# [614:20]
	.byte	2
	.uleb128	.Ll217-.Ll216
	.byte	5
	.uleb128	20
	.byte	13
# [616:18]
	.byte	2
	.uleb128	.Ll218-.Ll217
	.byte	5
	.uleb128	18
	.byte	14
# [617:19]
	.byte	2
	.uleb128	.Ll219-.Ll218
	.byte	5
	.uleb128	19
	.byte	13
# [618:23]
	.byte	2
	.uleb128	.Ll220-.Ll219
	.byte	5
	.uleb128	23
	.byte	13
# [619:12]
	.byte	2
	.uleb128	.Ll221-.Ll220
	.byte	5
	.uleb128	12
	.byte	13
# [618:9]
	.byte	2
	.uleb128	.Ll222-.Ll221
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	-1
	.byte	1
# [614:7]
	.byte	2
	.uleb128	.Ll223-.Ll222
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-4
	.byte	1
# [624:9]
	.byte	2
	.uleb128	.Ll224-.Ll223
	.byte	5
	.uleb128	9
	.byte	22
# [625:8]
	.byte	2
	.uleb128	.Ll225-.Ll224
	.byte	5
	.uleb128	8
	.byte	13
# [626:20]
	.byte	2
	.uleb128	.Ll226-.Ll225
	.byte	5
	.uleb128	20
	.byte	13
# [628:18]
	.byte	2
	.uleb128	.Ll227-.Ll226
	.byte	5
	.uleb128	18
	.byte	14
# [629:19]
	.byte	2
	.uleb128	.Ll228-.Ll227
	.byte	5
	.uleb128	19
	.byte	13
# [630:23]
	.byte	2
	.uleb128	.Ll229-.Ll228
	.byte	5
	.uleb128	23
	.byte	13
# [631:12]
	.byte	2
	.uleb128	.Ll230-.Ll229
	.byte	5
	.uleb128	12
	.byte	13
# [630:9]
	.byte	2
	.uleb128	.Ll231-.Ll230
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	-1
	.byte	1
# [626:7]
	.byte	2
	.uleb128	.Ll232-.Ll231
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-4
	.byte	1
# [634:1]
	.byte	2
	.uleb128	.Ll233-.Ll232
	.byte	5
	.uleb128	1
	.byte	20
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll234
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_GRAPHICS$LONGINT
# [638:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll235
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	637
	.byte	1
# [639:6]
	.byte	2
	.uleb128	.Ll236-.Ll235
	.byte	5
	.uleb128	6
	.byte	13
# [640:1]
	.byte	2
	.uleb128	.Ll237-.Ll236
	.byte	5
	.uleb128	1
	.byte	13
# [644:13]
	.byte	2
	.uleb128	.Ll238-.Ll237
	.byte	5
	.uleb128	13
	.byte	16
# [645:13]
	.byte	2
	.uleb128	.Ll239-.Ll238
	.byte	13
# [646:13]
	.byte	2
	.uleb128	.Ll240-.Ll239
	.byte	13
# [652:14]
	.byte	2
	.uleb128	.Ll241-.Ll240
	.byte	5
	.uleb128	14
	.byte	18
# [653:14]
	.byte	2
	.uleb128	.Ll242-.Ll241
	.byte	13
# [654:14]
	.byte	2
	.uleb128	.Ll243-.Ll242
	.byte	13
# [657:6]
	.byte	2
	.uleb128	.Ll244-.Ll243
	.byte	5
	.uleb128	6
	.byte	15
# [658:1]
	.byte	2
	.uleb128	.Ll245-.Ll244
	.byte	5
	.uleb128	1
	.byte	13
# [660:1]
	.byte	2
	.uleb128	.Ll246-.Ll245
	.byte	14
# [661:1]
	.byte	2
	.uleb128	.Ll247-.Ll246
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll248
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SCRCONVERT$POINTER$LONGINT
# [673:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll249
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	672
	.byte	1
# [674:10]
	.byte	2
	.uleb128	.Ll250-.Ll249
	.byte	5
	.uleb128	10
	.byte	13
# [675:1]
	.byte	2
	.uleb128	.Ll251-.Ll250
	.byte	5
	.uleb128	1
	.byte	13
# [676:9]
	.byte	2
	.uleb128	.Ll252-.Ll251
	.byte	5
	.uleb128	9
	.byte	13
# [677:1]
	.byte	2
	.uleb128	.Ll253-.Ll252
	.byte	5
	.uleb128	1
	.byte	13
# [678:1]
	.byte	2
	.uleb128	.Ll254-.Ll253
	.byte	13
# [679:1]
	.byte	2
	.uleb128	.Ll255-.Ll254
	.byte	13
# [680:1]
	.byte	2
	.uleb128	.Ll256-.Ll255
	.byte	13
# [682:3]
	.byte	2
	.uleb128	.Ll257-.Ll256
	.byte	5
	.uleb128	3
	.byte	14
# [683:3]
	.byte	2
	.uleb128	.Ll258-.Ll257
	.byte	13
# [684:17]
	.byte	2
	.uleb128	.Ll259-.Ll258
	.byte	5
	.uleb128	17
	.byte	13
# [683:3]
	.byte	2
	.uleb128	.Ll260-.Ll259
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-1
	.byte	1
# [685:3]
	.byte	2
	.uleb128	.Ll261-.Ll260
	.byte	14
# [680:1]
	.byte	2
	.uleb128	.Ll262-.Ll261
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-5
	.byte	1
# [687:1]
	.byte	2
	.uleb128	.Ll263-.Ll262
	.byte	19
# [689:1]
	.byte	2
	.uleb128	.Ll264-.Ll263
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll265
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SPRITE$POINTER
# [709:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll266
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	708
	.byte	1
# [710:1]
	.byte	2
	.uleb128	.Ll267-.Ll266
	.byte	13
# [711:1]
	.byte	2
	.uleb128	.Ll268-.Ll267
	.byte	13
# [712:1]
	.byte	2
	.uleb128	.Ll269-.Ll268
	.byte	13
# [713:4]
	.byte	2
	.uleb128	.Ll270-.Ll269
	.byte	5
	.uleb128	4
	.byte	13
# [714:1]
	.byte	2
	.uleb128	.Ll271-.Ll270
	.byte	5
	.uleb128	1
	.byte	13
# [716:16]
	.byte	2
	.uleb128	.Ll272-.Ll271
	.byte	5
	.uleb128	16
	.byte	14
# [717:10]
	.byte	2
	.uleb128	.Ll273-.Ll272
	.byte	5
	.uleb128	10
	.byte	13
# [718:16]
	.byte	2
	.uleb128	.Ll274-.Ll273
	.byte	5
	.uleb128	16
	.byte	13
# [719:15]
	.byte	2
	.uleb128	.Ll275-.Ll274
	.byte	5
	.uleb128	15
	.byte	13
# [720:15]
	.byte	2
	.uleb128	.Ll276-.Ll275
	.byte	13
# [721:10]
	.byte	2
	.uleb128	.Ll277-.Ll276
	.byte	5
	.uleb128	10
	.byte	13
# [722:16]
	.byte	2
	.uleb128	.Ll278-.Ll277
	.byte	5
	.uleb128	16
	.byte	13
# [723:10]
	.byte	2
	.uleb128	.Ll279-.Ll278
	.byte	5
	.uleb128	10
	.byte	13
# [724:11]
	.byte	2
	.uleb128	.Ll280-.Ll279
	.byte	5
	.uleb128	11
	.byte	13
# [725:11]
	.byte	2
	.uleb128	.Ll281-.Ll280
	.byte	13
# [726:16]
	.byte	2
	.uleb128	.Ll282-.Ll281
	.byte	5
	.uleb128	16
	.byte	13
# [727:11]
	.byte	2
	.uleb128	.Ll283-.Ll282
	.byte	5
	.uleb128	11
	.byte	13
# [728:11]
	.byte	2
	.uleb128	.Ll284-.Ll283
	.byte	13
# [729:6]
	.byte	2
	.uleb128	.Ll285-.Ll284
	.byte	5
	.uleb128	6
	.byte	13
# [731:21]
	.byte	2
	.uleb128	.Ll286-.Ll285
	.byte	5
	.uleb128	21
	.byte	14
# [732:5]
	.byte	2
	.uleb128	.Ll287-.Ll286
	.byte	5
	.uleb128	5
	.byte	13
# [734:3]
	.byte	2
	.uleb128	.Ll288-.Ll287
	.byte	5
	.uleb128	3
	.byte	14
# [736:5]
	.byte	2
	.uleb128	.Ll289-.Ll288
	.byte	5
	.uleb128	5
	.byte	14
# [738:36]
	.byte	2
	.uleb128	.Ll290-.Ll289
	.byte	5
	.uleb128	36
	.byte	14
# [739:22]
	.byte	2
	.uleb128	.Ll291-.Ll290
	.byte	5
	.uleb128	22
	.byte	13
# [740:7]
	.byte	2
	.uleb128	.Ll292-.Ll291
	.byte	5
	.uleb128	7
	.byte	13
# [742:9]
	.byte	2
	.uleb128	.Ll293-.Ll292
	.byte	5
	.uleb128	9
	.byte	14
# [744:18]
	.byte	2
	.uleb128	.Ll294-.Ll293
	.byte	5
	.uleb128	18
	.byte	14
# [745:26]
	.byte	2
	.uleb128	.Ll295-.Ll294
	.byte	5
	.uleb128	26
	.byte	13
# [746:24]
	.byte	2
	.uleb128	.Ll296-.Ll295
	.byte	5
	.uleb128	24
	.byte	13
# [742:13]
	.byte	2
	.uleb128	.Ll297-.Ll296
	.byte	5
	.uleb128	13
	.byte	3
	.sleb128	-4
	.byte	1
# [748:22]
	.byte	2
	.uleb128	.Ll298-.Ll297
	.byte	5
	.uleb128	22
	.byte	18
# [740:7]
	.byte	2
	.uleb128	.Ll299-.Ll298
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-8
	.byte	1
# [751:7]
	.byte	2
	.uleb128	.Ll300-.Ll299
	.byte	23
# [750:7]
	.byte	2
	.uleb128	.Ll301-.Ll300
	.byte	3
	.sleb128	-1
	.byte	1
# [736:9]
	.byte	2
	.uleb128	.Ll302-.Ll301
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	-14
	.byte	1
# [752:20]
	.byte	2
	.uleb128	.Ll303-.Ll302
	.byte	5
	.uleb128	20
	.byte	28
# [734:3]
	.byte	2
	.uleb128	.Ll304-.Ll303
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-18
	.byte	1
# [714:1]
	.byte	2
	.uleb128	.Ll305-.Ll304
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-20
	.byte	1
# [756:5]
	.byte	2
	.uleb128	.Ll306-.Ll305
	.byte	5
	.uleb128	5
	.byte	54
# [758:1]
	.byte	2
	.uleb128	.Ll307-.Ll306
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll308
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SETATARIPALLETTE$LONGINT
# [766:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll309
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	765
	.byte	1
# [767:34]
	.byte	2
	.uleb128	.Ll310-.Ll309
	.byte	5
	.uleb128	34
	.byte	13
# [768:18]
	.byte	2
	.uleb128	.Ll311-.Ll310
	.byte	5
	.uleb128	18
	.byte	13
# [769:13]
	.byte	2
	.uleb128	.Ll312-.Ll311
	.byte	5
	.uleb128	13
	.byte	13
# [770:1]
	.byte	2
	.uleb128	.Ll313-.Ll312
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll314
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
# [774:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll315
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	773
	.byte	1
# [775:6]
	.byte	2
	.uleb128	.Ll316-.Ll315
	.byte	5
	.uleb128	6
	.byte	13
# [776:1]
	.byte	2
	.uleb128	.Ll317-.Ll316
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll318
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_CLS$LONGINT
# [782:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll319
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	781
	.byte	1
# [783:4]
	.byte	2
	.uleb128	.Ll320-.Ll319
	.byte	5
	.uleb128	4
	.byte	13
# [785:10]
	.byte	2
	.uleb128	.Ll321-.Ll320
	.byte	5
	.uleb128	10
	.byte	14
# [786:6]
	.byte	2
	.uleb128	.Ll322-.Ll321
	.byte	5
	.uleb128	6
	.byte	13
# [787:1]
	.byte	2
	.uleb128	.Ll323-.Ll322
	.byte	5
	.uleb128	1
	.byte	13
# [789:1]
	.byte	2
	.uleb128	.Ll324-.Ll323
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll325
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
# [803:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll326
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	802
	.byte	1
# [805:9]
	.byte	2
	.uleb128	.Ll327-.Ll326
	.byte	5
	.uleb128	9
	.byte	14
# [806:29]
	.byte	2
	.uleb128	.Ll328-.Ll327
	.byte	5
	.uleb128	29
	.byte	13
# [807:15]
	.byte	2
	.uleb128	.Ll329-.Ll328
	.byte	5
	.uleb128	15
	.byte	13
# [808:29]
	.byte	2
	.uleb128	.Ll330-.Ll329
	.byte	5
	.uleb128	29
	.byte	13
# [810:29]
	.byte	2
	.uleb128	.Ll331-.Ll330
	.byte	14
# [811:1]
	.byte	2
	.uleb128	.Ll332-.Ll331
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll333
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [829:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll334
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	828
	.byte	1
# [831:5]
	.byte	2
	.uleb128	.Ll335-.Ll334
	.byte	5
	.uleb128	5
	.byte	14
# [832:5]
	.byte	2
	.uleb128	.Ll336-.Ll335
	.byte	13
# [833:5]
	.byte	2
	.uleb128	.Ll337-.Ll336
	.byte	13
# [834:5]
	.byte	2
	.uleb128	.Ll338-.Ll337
	.byte	13
# [835:4]
	.byte	2
	.uleb128	.Ll339-.Ll338
	.byte	5
	.uleb128	4
	.byte	13
# [836:4]
	.byte	2
	.uleb128	.Ll340-.Ll339
	.byte	13
# [837:9]
	.byte	2
	.uleb128	.Ll341-.Ll340
	.byte	5
	.uleb128	9
	.byte	13
# [839:16]
	.byte	2
	.uleb128	.Ll342-.Ll341
	.byte	5
	.uleb128	16
	.byte	14
# [841:23]
	.byte	2
	.uleb128	.Ll343-.Ll342
	.byte	5
	.uleb128	23
	.byte	14
# [842:18]
	.byte	2
	.uleb128	.Ll344-.Ll343
	.byte	5
	.uleb128	18
	.byte	13
# [839:7]
	.byte	2
	.uleb128	.Ll345-.Ll344
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-3
	.byte	1
# [845:15]
	.byte	2
	.uleb128	.Ll346-.Ll345
	.byte	5
	.uleb128	15
	.byte	18
# [847:16]
	.byte	2
	.uleb128	.Ll347-.Ll346
	.byte	5
	.uleb128	16
	.byte	14
# [849:23]
	.byte	2
	.uleb128	.Ll348-.Ll347
	.byte	5
	.uleb128	23
	.byte	14
# [850:18]
	.byte	2
	.uleb128	.Ll349-.Ll348
	.byte	5
	.uleb128	18
	.byte	13
# [847:7]
	.byte	2
	.uleb128	.Ll350-.Ll349
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-3
	.byte	1
# [855:16]
	.byte	2
	.uleb128	.Ll351-.Ll350
	.byte	5
	.uleb128	16
	.byte	20
# [857:23]
	.byte	2
	.uleb128	.Ll352-.Ll351
	.byte	5
	.uleb128	23
	.byte	14
# [858:18]
	.byte	2
	.uleb128	.Ll353-.Ll352
	.byte	5
	.uleb128	18
	.byte	13
# [855:7]
	.byte	2
	.uleb128	.Ll354-.Ll353
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-3
	.byte	1
# [861:1]
	.byte	2
	.uleb128	.Ll355-.Ll354
	.byte	5
	.uleb128	1
	.byte	18
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll356
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [873:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll357
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	872
	.byte	1
# [876:4]
	.byte	2
	.uleb128	.Ll358-.Ll357
	.byte	5
	.uleb128	4
	.byte	15
# [877:4]
	.byte	2
	.uleb128	.Ll359-.Ll358
	.byte	13
# [879:1]
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
# function: RETRO_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT
# [897:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll362
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	896
	.byte	1
# [898:25]
	.byte	2
	.uleb128	.Ll363-.Ll362
	.byte	5
	.uleb128	25
	.byte	13
# [899:1]
	.byte	2
	.uleb128	.Ll364-.Ll363
	.byte	5
	.uleb128	1
	.byte	13
# [901:11]
	.byte	2
	.uleb128	.Ll365-.Ll364
	.byte	5
	.uleb128	11
	.byte	14
# [902:3]
	.byte	2
	.uleb128	.Ll366-.Ll365
	.byte	5
	.uleb128	3
	.byte	13
# [904:22]
	.byte	2
	.uleb128	.Ll367-.Ll366
	.byte	5
	.uleb128	22
	.byte	14
# [905:23]
	.byte	2
	.uleb128	.Ll368-.Ll367
	.byte	5
	.uleb128	23
	.byte	13
# [902:3]
	.byte	2
	.uleb128	.Ll369-.Ll368
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-3
	.byte	1
# [899:1]
	.byte	2
	.uleb128	.Ll370-.Ll369
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-3
	.byte	1
# [908:1]
	.byte	2
	.uleb128	.Ll371-.Ll370
	.byte	21
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll372
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT
# [917:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll373
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	916
	.byte	1
# [918:25]
	.byte	2
	.uleb128	.Ll374-.Ll373
	.byte	5
	.uleb128	25
	.byte	13
# [919:1]
	.byte	2
	.uleb128	.Ll375-.Ll374
	.byte	5
	.uleb128	1
	.byte	13
# [921:11]
	.byte	2
	.uleb128	.Ll376-.Ll375
	.byte	5
	.uleb128	11
	.byte	14
# [922:3]
	.byte	2
	.uleb128	.Ll377-.Ll376
	.byte	5
	.uleb128	3
	.byte	13
# [924:22]
	.byte	2
	.uleb128	.Ll378-.Ll377
	.byte	5
	.uleb128	22
	.byte	14
# [925:21]
	.byte	2
	.uleb128	.Ll379-.Ll378
	.byte	5
	.uleb128	21
	.byte	13
# [926:23]
	.byte	2
	.uleb128	.Ll380-.Ll379
	.byte	5
	.uleb128	23
	.byte	13
# [927:33]
	.byte	2
	.uleb128	.Ll381-.Ll380
	.byte	5
	.uleb128	33
	.byte	13
# [926:13]
	.byte	2
	.uleb128	.Ll382-.Ll381
	.byte	5
	.uleb128	13
	.byte	3
	.sleb128	-1
	.byte	1
# [925:11]
	.byte	2
	.uleb128	.Ll383-.Ll382
	.byte	5
	.uleb128	11
	.byte	3
	.sleb128	-1
	.byte	1
# [922:3]
	.byte	2
	.uleb128	.Ll384-.Ll383
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-3
	.byte	1
# [919:1]
	.byte	2
	.uleb128	.Ll385-.Ll384
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-3
	.byte	1
# [930:1]
	.byte	2
	.uleb128	.Ll386-.Ll385
	.byte	23
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll387
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO$_$OUTTEXTXY$crc6744C382_$$_fin$8
# [936:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll388
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	935
	.byte	1
# [936:1]
	.byte	2
	.uleb128	.Ll389-.Ll388
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll390
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
# [936:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll391
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	935
	.byte	1
# [937:1]
	.byte	2
	.uleb128	.Ll392-.Ll391
	.byte	13
# [938:1]
	.byte	2
	.uleb128	.Ll393-.Ll392
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll394
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO$_$OUTTEXTXYZ$crcCA10A6FC_$$_fin$9
# [944:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll395
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	943
	.byte	1
# [944:1]
	.byte	2
	.uleb128	.Ll396-.Ll395
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll397
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [944:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll398
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	943
	.byte	1
# [945:1]
	.byte	2
	.uleb128	.Ll399-.Ll398
	.byte	13
# [946:1]
	.byte	2
	.uleb128	.Ll400-.Ll399
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll401
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SCROLLUP
# [952:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll402
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	951
	.byte	1
# [953:1]
	.byte	2
	.uleb128	.Ll403-.Ll402
	.byte	13
# [954:1]
	.byte	2
	.uleb128	.Ll404-.Ll403
	.byte	13
# [955:1]
	.byte	2
	.uleb128	.Ll405-.Ll404
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll406
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_NOISE1$$BYTE
# [974:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll407
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	973
	.byte	1
# [975:10]
	.byte	2
	.uleb128	.Ll408-.Ll407
	.byte	5
	.uleb128	10
	.byte	13
# [976:10]
	.byte	2
	.uleb128	.Ll409-.Ll408
	.byte	13
# [977:10]
	.byte	2
	.uleb128	.Ll410-.Ll409
	.byte	13
# [978:10]
	.byte	2
	.uleb128	.Ll411-.Ll410
	.byte	13
# [979:10]
	.byte	2
	.uleb128	.Ll412-.Ll411
	.byte	13
# [980:10]
	.byte	2
	.uleb128	.Ll413-.Ll412
	.byte	13
# [981:10]
	.byte	2
	.uleb128	.Ll414-.Ll413
	.byte	13
# [982:10]
	.byte	2
	.uleb128	.Ll415-.Ll414
	.byte	13
# [984:5]
	.byte	2
	.uleb128	.Ll416-.Ll415
	.byte	5
	.uleb128	5
	.byte	14
# [985:6]
	.byte	2
	.uleb128	.Ll417-.Ll416
	.byte	5
	.uleb128	6
	.byte	13
# [986:4]
	.byte	2
	.uleb128	.Ll418-.Ll417
	.byte	5
	.uleb128	4
	.byte	13
# [987:1]
	.byte	2
	.uleb128	.Ll419-.Ll418
	.byte	5
	.uleb128	1
	.byte	13
# [988:1]
	.byte	2
	.uleb128	.Ll420-.Ll419
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll421
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_NOISE2$$LONGWORD
# [998:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll422
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	997
	.byte	1
# [999:10]
	.byte	2
	.uleb128	.Ll423-.Ll422
	.byte	5
	.uleb128	10
	.byte	13
# [1000:10]
	.byte	2
	.uleb128	.Ll424-.Ll423
	.byte	13
# [1001:10]
	.byte	2
	.uleb128	.Ll425-.Ll424
	.byte	13
# [1002:10]
	.byte	2
	.uleb128	.Ll426-.Ll425
	.byte	13
# [1003:10]
	.byte	2
	.uleb128	.Ll427-.Ll426
	.byte	13
# [1004:10]
	.byte	2
	.uleb128	.Ll428-.Ll427
	.byte	13
# [1005:10]
	.byte	2
	.uleb128	.Ll429-.Ll428
	.byte	13
# [1006:10]
	.byte	2
	.uleb128	.Ll430-.Ll429
	.byte	13
# [1007:5]
	.byte	2
	.uleb128	.Ll431-.Ll430
	.byte	5
	.uleb128	5
	.byte	13
# [1008:6]
	.byte	2
	.uleb128	.Ll432-.Ll431
	.byte	5
	.uleb128	6
	.byte	13
# [1009:4]
	.byte	2
	.uleb128	.Ll433-.Ll432
	.byte	5
	.uleb128	4
	.byte	13
# [1010:1]
	.byte	2
	.uleb128	.Ll434-.Ll433
	.byte	5
	.uleb128	1
	.byte	13
# [1011:1]
	.byte	2
	.uleb128	.Ll435-.Ll434
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll436
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_NOISE3$$LONGWORD
# [1029:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll437
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1028
	.byte	1
# [1030:10]
	.byte	2
	.uleb128	.Ll438-.Ll437
	.byte	5
	.uleb128	10
	.byte	13
# [1031:10]
	.byte	2
	.uleb128	.Ll439-.Ll438
	.byte	13
# [1032:10]
	.byte	2
	.uleb128	.Ll440-.Ll439
	.byte	13
# [1033:10]
	.byte	2
	.uleb128	.Ll441-.Ll440
	.byte	13
# [1034:10]
	.byte	2
	.uleb128	.Ll442-.Ll441
	.byte	13
# [1035:10]
	.byte	2
	.uleb128	.Ll443-.Ll442
	.byte	13
# [1036:10]
	.byte	2
	.uleb128	.Ll444-.Ll443
	.byte	13
# [1037:10]
	.byte	2
	.uleb128	.Ll445-.Ll444
	.byte	13
# [1039:5]
	.byte	2
	.uleb128	.Ll446-.Ll445
	.byte	5
	.uleb128	5
	.byte	14
# [1040:6]
	.byte	2
	.uleb128	.Ll447-.Ll446
	.byte	5
	.uleb128	6
	.byte	13
# [1041:4]
	.byte	2
	.uleb128	.Ll448-.Ll447
	.byte	5
	.uleb128	4
	.byte	13
# [1042:1]
	.byte	2
	.uleb128	.Ll449-.Ll448
	.byte	5
	.uleb128	1
	.byte	13
# [1043:1]
	.byte	2
	.uleb128	.Ll450-.Ll449
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll451
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SID$LONGINT$$TSAMPLE
# [1203:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll452
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1202
	.byte	1
# [1204:8]
	.byte	2
	.uleb128	.Ll453-.Ll452
	.byte	5
	.uleb128	8
	.byte	13
# [1207:42]
	.byte	2
	.uleb128	.Ll454-.Ll453
	.byte	5
	.uleb128	42
	.byte	15
# [1208:18]
	.byte	2
	.uleb128	.Ll455-.Ll454
	.byte	5
	.uleb128	18
	.byte	13
# [1209:41]
	.byte	2
	.uleb128	.Ll456-.Ll455
	.byte	5
	.uleb128	41
	.byte	13
# [1210:18]
	.byte	2
	.uleb128	.Ll457-.Ll456
	.byte	5
	.uleb128	18
	.byte	13
# [1211:41]
	.byte	2
	.uleb128	.Ll458-.Ll457
	.byte	5
	.uleb128	41
	.byte	13
# [1212:18]
	.byte	2
	.uleb128	.Ll459-.Ll458
	.byte	5
	.uleb128	18
	.byte	13
# [1214:15]
	.byte	2
	.uleb128	.Ll460-.Ll459
	.byte	5
	.uleb128	15
	.byte	14
# [1215:15]
	.byte	2
	.uleb128	.Ll461-.Ll460
	.byte	13
# [1216:15]
	.byte	2
	.uleb128	.Ll462-.Ll461
	.byte	13
# [1217:17]
	.byte	2
	.uleb128	.Ll463-.Ll462
	.byte	5
	.uleb128	17
	.byte	13
# [1218:13]
	.byte	2
	.uleb128	.Ll464-.Ll463
	.byte	5
	.uleb128	13
	.byte	13
# [1219:13]
	.byte	2
	.uleb128	.Ll465-.Ll464
	.byte	13
# [1220:13]
	.byte	2
	.uleb128	.Ll466-.Ll465
	.byte	13
# [1221:13]
	.byte	2
	.uleb128	.Ll467-.Ll466
	.byte	13
# [1222:33]
	.byte	2
	.uleb128	.Ll468-.Ll467
	.byte	5
	.uleb128	33
	.byte	13
# [1224:15]
	.byte	2
	.uleb128	.Ll469-.Ll468
	.byte	5
	.uleb128	15
	.byte	14
# [1225:15]
	.byte	2
	.uleb128	.Ll470-.Ll469
	.byte	13
# [1226:15]
	.byte	2
	.uleb128	.Ll471-.Ll470
	.byte	13
# [1227:17]
	.byte	2
	.uleb128	.Ll472-.Ll471
	.byte	5
	.uleb128	17
	.byte	13
# [1228:13]
	.byte	2
	.uleb128	.Ll473-.Ll472
	.byte	5
	.uleb128	13
	.byte	13
# [1229:13]
	.byte	2
	.uleb128	.Ll474-.Ll473
	.byte	13
# [1230:13]
	.byte	2
	.uleb128	.Ll475-.Ll474
	.byte	13
# [1231:13]
	.byte	2
	.uleb128	.Ll476-.Ll475
	.byte	13
# [1232:33]
	.byte	2
	.uleb128	.Ll477-.Ll476
	.byte	5
	.uleb128	33
	.byte	13
# [1234:15]
	.byte	2
	.uleb128	.Ll478-.Ll477
	.byte	5
	.uleb128	15
	.byte	14
# [1235:15]
	.byte	2
	.uleb128	.Ll479-.Ll478
	.byte	13
# [1236:15]
	.byte	2
	.uleb128	.Ll480-.Ll479
	.byte	13
# [1237:17]
	.byte	2
	.uleb128	.Ll481-.Ll480
	.byte	5
	.uleb128	17
	.byte	13
# [1238:13]
	.byte	2
	.uleb128	.Ll482-.Ll481
	.byte	5
	.uleb128	13
	.byte	13
# [1239:13]
	.byte	2
	.uleb128	.Ll483-.Ll482
	.byte	13
# [1240:13]
	.byte	2
	.uleb128	.Ll484-.Ll483
	.byte	13
# [1241:13]
	.byte	2
	.uleb128	.Ll485-.Ll484
	.byte	13
# [1242:33]
	.byte	2
	.uleb128	.Ll486-.Ll485
	.byte	5
	.uleb128	33
	.byte	13
# [1244:34]
	.byte	2
	.uleb128	.Ll487-.Ll486
	.byte	5
	.uleb128	34
	.byte	14
# [1245:22]
	.byte	2
	.uleb128	.Ll488-.Ll487
	.byte	5
	.uleb128	22
	.byte	13
# [1246:12]
	.byte	2
	.uleb128	.Ll489-.Ll488
	.byte	5
	.uleb128	12
	.byte	13
# [1247:12]
	.byte	2
	.uleb128	.Ll490-.Ll489
	.byte	13
# [1248:12]
	.byte	2
	.uleb128	.Ll491-.Ll490
	.byte	13
# [1249:14]
	.byte	2
	.uleb128	.Ll492-.Ll491
	.byte	5
	.uleb128	14
	.byte	13
# [1250:14]
	.byte	2
	.uleb128	.Ll493-.Ll492
	.byte	13
# [1251:14]
	.byte	2
	.uleb128	.Ll494-.Ll493
	.byte	13
# [1252:47]
	.byte	2
	.uleb128	.Ll495-.Ll494
	.byte	5
	.uleb128	47
	.byte	13
# [1253:12]
	.byte	2
	.uleb128	.Ll496-.Ll495
	.byte	5
	.uleb128	12
	.byte	13
# [1255:19]
	.byte	2
	.uleb128	.Ll497-.Ll496
	.byte	5
	.uleb128	19
	.byte	14
# [1256:19]
	.byte	2
	.uleb128	.Ll498-.Ll497
	.byte	13
# [1257:19]
	.byte	2
	.uleb128	.Ll499-.Ll498
	.byte	13
# [1259:17]
	.byte	2
	.uleb128	.Ll500-.Ll499
	.byte	5
	.uleb128	17
	.byte	14
# [1260:17]
	.byte	2
	.uleb128	.Ll501-.Ll500
	.byte	13
# [1261:17]
	.byte	2
	.uleb128	.Ll502-.Ll501
	.byte	13
# [1264:1]
	.byte	2
	.uleb128	.Ll503-.Ll502
	.byte	5
	.uleb128	1
	.byte	15
# [1266:1]
	.byte	2
	.uleb128	.Ll504-.Ll503
	.byte	14
# [1269:13]
	.byte	2
	.uleb128	.Ll505-.Ll504
	.byte	5
	.uleb128	13
	.byte	15
# [1270:15]
	.byte	2
	.uleb128	.Ll506-.Ll505
	.byte	5
	.uleb128	15
	.byte	13
# [1271:10]
	.byte	2
	.uleb128	.Ll507-.Ll506
	.byte	5
	.uleb128	10
	.byte	13
# [1273:16]
	.byte	2
	.uleb128	.Ll508-.Ll507
	.byte	5
	.uleb128	16
	.byte	14
# [1274:19]
	.byte	2
	.uleb128	.Ll509-.Ll508
	.byte	5
	.uleb128	19
	.byte	13
# [1276:11]
	.byte	2
	.uleb128	.Ll510-.Ll509
	.byte	5
	.uleb128	11
	.byte	14
# [1278:20]
	.byte	2
	.uleb128	.Ll511-.Ll510
	.byte	5
	.uleb128	20
	.byte	14
# [1279:5]
	.byte	2
	.uleb128	.Ll512-.Ll511
	.byte	5
	.uleb128	5
	.byte	13
# [1281:8]
	.byte	2
	.uleb128	.Ll513-.Ll512
	.byte	5
	.uleb128	8
	.byte	14
# [1283:11]
	.byte	2
	.uleb128	.Ll514-.Ll513
	.byte	5
	.uleb128	11
	.byte	14
# [1284:13]
	.byte	2
	.uleb128	.Ll515-.Ll514
	.byte	5
	.uleb128	13
	.byte	13
# [1285:8]
	.byte	2
	.uleb128	.Ll516-.Ll515
	.byte	5
	.uleb128	8
	.byte	13
# [1287:17]
	.byte	2
	.uleb128	.Ll517-.Ll516
	.byte	5
	.uleb128	17
	.byte	14
# [1288:14]
	.byte	2
	.uleb128	.Ll518-.Ll517
	.byte	5
	.uleb128	14
	.byte	13
# [1290:9]
	.byte	2
	.uleb128	.Ll519-.Ll518
	.byte	5
	.uleb128	9
	.byte	14
# [1292:18]
	.byte	2
	.uleb128	.Ll520-.Ll519
	.byte	5
	.uleb128	18
	.byte	14
# [1293:3]
	.byte	2
	.uleb128	.Ll521-.Ll520
	.byte	5
	.uleb128	3
	.byte	13
# [1295:6]
	.byte	2
	.uleb128	.Ll522-.Ll521
	.byte	5
	.uleb128	6
	.byte	14
# [1297:11]
	.byte	2
	.uleb128	.Ll523-.Ll522
	.byte	5
	.uleb128	11
	.byte	14
# [1298:13]
	.byte	2
	.uleb128	.Ll524-.Ll523
	.byte	5
	.uleb128	13
	.byte	13
# [1299:8]
	.byte	2
	.uleb128	.Ll525-.Ll524
	.byte	5
	.uleb128	8
	.byte	13
# [1300:9]
	.byte	2
	.uleb128	.Ll526-.Ll525
	.byte	5
	.uleb128	9
	.byte	13
# [1302:18]
	.byte	2
	.uleb128	.Ll527-.Ll526
	.byte	5
	.uleb128	18
	.byte	14
# [1303:3]
	.byte	2
	.uleb128	.Ll528-.Ll527
	.byte	5
	.uleb128	3
	.byte	13
# [1305:6]
	.byte	2
	.uleb128	.Ll529-.Ll528
	.byte	5
	.uleb128	6
	.byte	14
# [1309:11]
	.byte	2
	.uleb128	.Ll530-.Ll529
	.byte	5
	.uleb128	11
	.byte	16
# [1310:11]
	.byte	2
	.uleb128	.Ll531-.Ll530
	.byte	13
# [1311:11]
	.byte	2
	.uleb128	.Ll532-.Ll531
	.byte	13
# [1314:3]
	.byte	2
	.uleb128	.Ll533-.Ll532
	.byte	5
	.uleb128	3
	.byte	15
# [1317:21]
	.byte	2
	.uleb128	.Ll534-.Ll533
	.byte	5
	.uleb128	21
	.byte	15
# [1318:16]
	.byte	2
	.uleb128	.Ll535-.Ll534
	.byte	5
	.uleb128	16
	.byte	13
# [1319:22]
	.byte	2
	.uleb128	.Ll536-.Ll535
	.byte	5
	.uleb128	22
	.byte	13
# [1320:9]
	.byte	2
	.uleb128	.Ll537-.Ll536
	.byte	5
	.uleb128	9
	.byte	13
# [1321:22]
	.byte	2
	.uleb128	.Ll538-.Ll537
	.byte	5
	.uleb128	22
	.byte	13
# [1322:22]
	.byte	2
	.uleb128	.Ll539-.Ll538
	.byte	13
# [1323:22]
	.byte	2
	.uleb128	.Ll540-.Ll539
	.byte	13
# [1324:18]
	.byte	2
	.uleb128	.Ll541-.Ll540
	.byte	5
	.uleb128	18
	.byte	13
# [1325:6]
	.byte	2
	.uleb128	.Ll542-.Ll541
	.byte	5
	.uleb128	6
	.byte	13
# [1326:7]
	.byte	2
	.uleb128	.Ll543-.Ll542
	.byte	5
	.uleb128	7
	.byte	13
# [1327:11]
	.byte	2
	.uleb128	.Ll544-.Ll543
	.byte	5
	.uleb128	11
	.byte	13
# [1328:20]
	.byte	2
	.uleb128	.Ll545-.Ll544
	.byte	5
	.uleb128	20
	.byte	13
# [1332:3]
	.byte	2
	.uleb128	.Ll546-.Ll545
	.byte	5
	.uleb128	3
	.byte	16
# [1335:21]
	.byte	2
	.uleb128	.Ll547-.Ll546
	.byte	5
	.uleb128	21
	.byte	15
# [1336:16]
	.byte	2
	.uleb128	.Ll548-.Ll547
	.byte	5
	.uleb128	16
	.byte	13
# [1337:22]
	.byte	2
	.uleb128	.Ll549-.Ll548
	.byte	5
	.uleb128	22
	.byte	13
# [1338:9]
	.byte	2
	.uleb128	.Ll550-.Ll549
	.byte	5
	.uleb128	9
	.byte	13
# [1339:22]
	.byte	2
	.uleb128	.Ll551-.Ll550
	.byte	5
	.uleb128	22
	.byte	13
# [1340:22]
	.byte	2
	.uleb128	.Ll552-.Ll551
	.byte	13
# [1341:22]
	.byte	2
	.uleb128	.Ll553-.Ll552
	.byte	13
# [1342:18]
	.byte	2
	.uleb128	.Ll554-.Ll553
	.byte	5
	.uleb128	18
	.byte	13
# [1343:6]
	.byte	2
	.uleb128	.Ll555-.Ll554
	.byte	5
	.uleb128	6
	.byte	13
# [1344:7]
	.byte	2
	.uleb128	.Ll556-.Ll555
	.byte	5
	.uleb128	7
	.byte	13
# [1345:11]
	.byte	2
	.uleb128	.Ll557-.Ll556
	.byte	5
	.uleb128	11
	.byte	13
# [1346:20]
	.byte	2
	.uleb128	.Ll558-.Ll557
	.byte	5
	.uleb128	20
	.byte	13
# [1349:3]
	.byte	2
	.uleb128	.Ll559-.Ll558
	.byte	5
	.uleb128	3
	.byte	15
# [1352:21]
	.byte	2
	.uleb128	.Ll560-.Ll559
	.byte	5
	.uleb128	21
	.byte	15
# [1353:16]
	.byte	2
	.uleb128	.Ll561-.Ll560
	.byte	5
	.uleb128	16
	.byte	13
# [1354:22]
	.byte	2
	.uleb128	.Ll562-.Ll561
	.byte	5
	.uleb128	22
	.byte	13
# [1355:9]
	.byte	2
	.uleb128	.Ll563-.Ll562
	.byte	5
	.uleb128	9
	.byte	13
# [1356:22]
	.byte	2
	.uleb128	.Ll564-.Ll563
	.byte	5
	.uleb128	22
	.byte	13
# [1357:22]
	.byte	2
	.uleb128	.Ll565-.Ll564
	.byte	13
# [1358:22]
	.byte	2
	.uleb128	.Ll566-.Ll565
	.byte	13
# [1359:18]
	.byte	2
	.uleb128	.Ll567-.Ll566
	.byte	5
	.uleb128	18
	.byte	13
# [1363:20]
	.byte	2
	.uleb128	.Ll568-.Ll567
	.byte	5
	.uleb128	20
	.byte	16
# [1367:11]
	.byte	2
	.uleb128	.Ll569-.Ll568
	.byte	5
	.uleb128	11
	.byte	16
# [1369:6]
	.byte	2
	.uleb128	.Ll570-.Ll569
	.byte	5
	.uleb128	6
	.byte	14
# [1370:11]
	.byte	2
	.uleb128	.Ll571-.Ll570
	.byte	5
	.uleb128	11
	.byte	13
# [1371:11]
	.byte	2
	.uleb128	.Ll572-.Ll571
	.byte	13
# [1372:11]
	.byte	2
	.uleb128	.Ll573-.Ll572
	.byte	13
# [1373:8]
	.byte	2
	.uleb128	.Ll574-.Ll573
	.byte	5
	.uleb128	8
	.byte	13
# [1375:11]
	.byte	2
	.uleb128	.Ll575-.Ll574
	.byte	5
	.uleb128	11
	.byte	14
# [1377:6]
	.byte	2
	.uleb128	.Ll576-.Ll575
	.byte	5
	.uleb128	6
	.byte	14
# [1378:11]
	.byte	2
	.uleb128	.Ll577-.Ll576
	.byte	5
	.uleb128	11
	.byte	13
# [1379:28]
	.byte	2
	.uleb128	.Ll578-.Ll577
	.byte	5
	.uleb128	28
	.byte	13
# [1380:11]
	.byte	2
	.uleb128	.Ll579-.Ll578
	.byte	5
	.uleb128	11
	.byte	13
# [1382:27]
	.byte	2
	.uleb128	.Ll580-.Ll579
	.byte	5
	.uleb128	27
	.byte	14
# [1383:17]
	.byte	2
	.uleb128	.Ll581-.Ll580
	.byte	5
	.uleb128	17
	.byte	13
# [1384:7]
	.byte	2
	.uleb128	.Ll582-.Ll581
	.byte	5
	.uleb128	7
	.byte	13
# [1385:11]
	.byte	2
	.uleb128	.Ll583-.Ll582
	.byte	5
	.uleb128	11
	.byte	13
# [1386:8]
	.byte	2
	.uleb128	.Ll584-.Ll583
	.byte	5
	.uleb128	8
	.byte	13
# [1389:11]
	.byte	2
	.uleb128	.Ll585-.Ll584
	.byte	5
	.uleb128	11
	.byte	15
# [1391:6]
	.byte	2
	.uleb128	.Ll586-.Ll585
	.byte	5
	.uleb128	6
	.byte	14
# [1392:11]
	.byte	2
	.uleb128	.Ll587-.Ll586
	.byte	5
	.uleb128	11
	.byte	13
# [1393:11]
	.byte	2
	.uleb128	.Ll588-.Ll587
	.byte	13
# [1394:11]
	.byte	2
	.uleb128	.Ll589-.Ll588
	.byte	13
# [1395:8]
	.byte	2
	.uleb128	.Ll590-.Ll589
	.byte	5
	.uleb128	8
	.byte	13
# [1400:10]
	.byte	2
	.uleb128	.Ll591-.Ll590
	.byte	5
	.uleb128	10
	.byte	17
# [1401:10]
	.byte	2
	.uleb128	.Ll592-.Ll591
	.byte	13
# [1402:10]
	.byte	2
	.uleb128	.Ll593-.Ll592
	.byte	13
# [1406:10]
	.byte	2
	.uleb128	.Ll594-.Ll593
	.byte	16
# [1407:10]
	.byte	2
	.uleb128	.Ll595-.Ll594
	.byte	13
# [1408:10]
	.byte	2
	.uleb128	.Ll596-.Ll595
	.byte	13
# [1410:3]
	.byte	2
	.uleb128	.Ll597-.Ll596
	.byte	5
	.uleb128	3
	.byte	14
# [1411:6]
	.byte	2
	.uleb128	.Ll598-.Ll597
	.byte	5
	.uleb128	6
	.byte	13
# [1412:6]
	.byte	2
	.uleb128	.Ll599-.Ll598
	.byte	13
# [1413:6]
	.byte	2
	.uleb128	.Ll600-.Ll599
	.byte	13
# [1415:25]
	.byte	2
	.uleb128	.Ll601-.Ll600
	.byte	5
	.uleb128	25
	.byte	14
# [1416:27]
	.byte	2
	.uleb128	.Ll602-.Ll601
	.byte	5
	.uleb128	27
	.byte	13
# [1417:27]
	.byte	2
	.uleb128	.Ll603-.Ll602
	.byte	13
# [1419:17]
	.byte	2
	.uleb128	.Ll604-.Ll603
	.byte	5
	.uleb128	17
	.byte	14
# [1420:18]
	.byte	2
	.uleb128	.Ll605-.Ll604
	.byte	5
	.uleb128	18
	.byte	13
# [1421:18]
	.byte	2
	.uleb128	.Ll606-.Ll605
	.byte	13
# [1423:17]
	.byte	2
	.uleb128	.Ll607-.Ll606
	.byte	5
	.uleb128	17
	.byte	14
# [1424:18]
	.byte	2
	.uleb128	.Ll608-.Ll607
	.byte	5
	.uleb128	18
	.byte	13
# [1425:18]
	.byte	2
	.uleb128	.Ll609-.Ll608
	.byte	13
# [1427:3]
	.byte	2
	.uleb128	.Ll610-.Ll609
	.byte	5
	.uleb128	3
	.byte	14
# [1428:20]
	.byte	2
	.uleb128	.Ll611-.Ll610
	.byte	5
	.uleb128	20
	.byte	13
# [1429:20]
	.byte	2
	.uleb128	.Ll612-.Ll611
	.byte	13
# [1430:20]
	.byte	2
	.uleb128	.Ll613-.Ll612
	.byte	13
# [1432:3]
	.byte	2
	.uleb128	.Ll614-.Ll613
	.byte	5
	.uleb128	3
	.byte	14
# [1433:22]
	.byte	2
	.uleb128	.Ll615-.Ll614
	.byte	5
	.uleb128	22
	.byte	13
# [1434:22]
	.byte	2
	.uleb128	.Ll616-.Ll615
	.byte	13
# [1435:22]
	.byte	2
	.uleb128	.Ll617-.Ll616
	.byte	13
# [1437:3]
	.byte	2
	.uleb128	.Ll618-.Ll617
	.byte	5
	.uleb128	3
	.byte	14
# [1438:22]
	.byte	2
	.uleb128	.Ll619-.Ll618
	.byte	5
	.uleb128	22
	.byte	13
# [1439:22]
	.byte	2
	.uleb128	.Ll620-.Ll619
	.byte	13
# [1440:22]
	.byte	2
	.uleb128	.Ll621-.Ll620
	.byte	13
# [1442:19]
	.byte	2
	.uleb128	.Ll622-.Ll621
	.byte	5
	.uleb128	19
	.byte	14
# [1443:27]
	.byte	2
	.uleb128	.Ll623-.Ll622
	.byte	5
	.uleb128	27
	.byte	13
# [1446:12]
	.byte	2
	.uleb128	.Ll624-.Ll623
	.byte	5
	.uleb128	12
	.byte	15
# [1447:12]
	.byte	2
	.uleb128	.Ll625-.Ll624
	.byte	13
# [1266:1]
	.byte	2
	.uleb128	.Ll626-.Ll625
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-181
	.byte	1
# [1450:7]
	.byte	2
	.uleb128	.Ll627-.Ll626
	.byte	5
	.uleb128	7
	.byte	196
# [1451:8]
	.byte	2
	.uleb128	.Ll628-.Ll627
	.byte	5
	.uleb128	8
	.byte	13
# [1452:1]
	.byte	2
	.uleb128	.Ll629-.Ll628
	.byte	5
	.uleb128	1
	.byte	13
# [1453:9]
	.byte	2
	.uleb128	.Ll630-.Ll629
	.byte	5
	.uleb128	9
	.byte	13
# [1454:11]
	.byte	2
	.uleb128	.Ll631-.Ll630
	.byte	5
	.uleb128	11
	.byte	13
# [1456:4]
	.byte	2
	.uleb128	.Ll632-.Ll631
	.byte	5
	.uleb128	4
	.byte	14
# [1457:4]
	.byte	2
	.uleb128	.Ll633-.Ll632
	.byte	13
# [1458:1]
	.byte	2
	.uleb128	.Ll634-.Ll633
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll635
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_INITSINETABLE
# [1516:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll636
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1515
	.byte	1
# [1517:1]
	.byte	2
	.uleb128	.Ll637-.Ll636
	.byte	13
# [1518:40]
	.byte	2
	.uleb128	.Ll638-.Ll637
	.byte	5
	.uleb128	40
	.byte	13
# [1517:1]
	.byte	2
	.uleb128	.Ll639-.Ll638
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [1520:1]
	.byte	2
	.uleb128	.Ll640-.Ll639
	.byte	15
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll641
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_INITLOGTABLE
# [1527:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll642
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1526
	.byte	1
# [1528:1]
	.byte	2
	.uleb128	.Ll643-.Ll642
	.byte	13
# [1529:1]
	.byte	2
	.uleb128	.Ll644-.Ll643
	.byte	13
# [1531:1]
	.byte	2
	.uleb128	.Ll645-.Ll644
	.byte	14
# [1533:7]
	.byte	2
	.uleb128	.Ll646-.Ll645
	.byte	5
	.uleb128	7
	.byte	14
# [1534:23]
	.byte	2
	.uleb128	.Ll647-.Ll646
	.byte	5
	.uleb128	23
	.byte	13
# [1531:1]
	.byte	2
	.uleb128	.Ll648-.Ll647
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-3
	.byte	1
# [1536:1]
	.byte	2
	.uleb128	.Ll649-.Ll648
	.byte	17
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll650
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_FMSYNTH$$TSAMPLE
# [1597:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll651
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1596
	.byte	1
# [1598:5]
	.byte	2
	.uleb128	.Ll652-.Ll651
	.byte	5
	.uleb128	5
	.byte	13
# [1618:2]
	.byte	2
	.uleb128	.Ll653-.Ll652
	.byte	5
	.uleb128	2
	.byte	32
# [1620:33]
	.byte	2
	.uleb128	.Ll654-.Ll653
	.byte	5
	.uleb128	33
	.byte	14
# [1624:25]
	.byte	2
	.uleb128	.Ll655-.Ll654
	.byte	5
	.uleb128	25
	.byte	16
# [1625:15]
	.byte	2
	.uleb128	.Ll656-.Ll655
	.byte	5
	.uleb128	15
	.byte	13
# [1626:15]
	.byte	2
	.uleb128	.Ll657-.Ll656
	.byte	13
# [1627:15]
	.byte	2
	.uleb128	.Ll658-.Ll657
	.byte	13
# [1628:15]
	.byte	2
	.uleb128	.Ll659-.Ll658
	.byte	13
# [1629:15]
	.byte	2
	.uleb128	.Ll660-.Ll659
	.byte	13
# [1630:15]
	.byte	2
	.uleb128	.Ll661-.Ll660
	.byte	13
# [1631:15]
	.byte	2
	.uleb128	.Ll662-.Ll661
	.byte	13
# [1624:3]
	.byte	2
	.uleb128	.Ll663-.Ll662
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-7
	.byte	1
# [1633:22]
	.byte	2
	.uleb128	.Ll664-.Ll663
	.byte	5
	.uleb128	22
	.byte	21
# [1640:22]
	.byte	2
	.uleb128	.Ll665-.Ll664
	.byte	19
# [1657:16]
	.byte	2
	.uleb128	.Ll666-.Ll665
	.byte	5
	.uleb128	16
	.byte	29
# [1659:26]
	.byte	2
	.uleb128	.Ll667-.Ll666
	.byte	5
	.uleb128	26
	.byte	14
# [1664:20]
	.byte	2
	.uleb128	.Ll668-.Ll667
	.byte	5
	.uleb128	20
	.byte	17
# [1666:26]
	.byte	2
	.uleb128	.Ll669-.Ll668
	.byte	5
	.uleb128	26
	.byte	14
# [1667:17]
	.byte	2
	.uleb128	.Ll670-.Ll669
	.byte	5
	.uleb128	17
	.byte	13
# [1669:20]
	.byte	2
	.uleb128	.Ll671-.Ll670
	.byte	5
	.uleb128	20
	.byte	14
# [1671:26]
	.byte	2
	.uleb128	.Ll672-.Ll671
	.byte	5
	.uleb128	26
	.byte	14
# [1676:20]
	.byte	2
	.uleb128	.Ll673-.Ll672
	.byte	5
	.uleb128	20
	.byte	17
# [1678:26]
	.byte	2
	.uleb128	.Ll674-.Ll673
	.byte	5
	.uleb128	26
	.byte	14
# [1684:24]
	.byte	2
	.uleb128	.Ll675-.Ll674
	.byte	5
	.uleb128	24
	.byte	18
# [1699:23]
	.byte	2
	.uleb128	.Ll676-.Ll675
	.byte	5
	.uleb128	23
	.byte	27
# [1700:31]
	.byte	2
	.uleb128	.Ll677-.Ll676
	.byte	5
	.uleb128	31
	.byte	13
# [1701:9]
	.byte	2
	.uleb128	.Ll678-.Ll677
	.byte	5
	.uleb128	9
	.byte	13
# [1702:23]
	.byte	2
	.uleb128	.Ll679-.Ll678
	.byte	5
	.uleb128	23
	.byte	13
# [1703:23]
	.byte	2
	.uleb128	.Ll680-.Ll679
	.byte	13
# [1618:2]
	.byte	2
	.uleb128	.Ll681-.Ll680
	.byte	5
	.uleb128	2
	.byte	3
	.sleb128	-85
	.byte	1
# [1710:7]
	.byte	2
	.uleb128	.Ll682-.Ll681
	.byte	5
	.uleb128	7
	.byte	104
# [1714:8]
	.byte	2
	.uleb128	.Ll683-.Ll682
	.byte	5
	.uleb128	8
	.byte	16
# [1715:8]
	.byte	2
	.uleb128	.Ll684-.Ll683
	.byte	13
# [1717:1]
	.byte	2
	.uleb128	.Ll685-.Ll684
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll686
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE
# [1728:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll687
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1727
	.byte	1
# [1730:1]
	.byte	2
	.uleb128	.Ll688-.Ll687
	.byte	14
# [1731:1]
	.byte	2
	.uleb128	.Ll689-.Ll688
	.byte	13
# [1732:1]
	.byte	2
	.uleb128	.Ll690-.Ll689
	.byte	13
# [1733:1]
	.byte	2
	.uleb128	.Ll691-.Ll690
	.byte	13
# [1734:1]
	.byte	2
	.uleb128	.Ll692-.Ll691
	.byte	13
# [1735:1]
	.byte	2
	.uleb128	.Ll693-.Ll692
	.byte	13
# [1737:13]
	.byte	2
	.uleb128	.Ll694-.Ll693
	.byte	5
	.uleb128	13
	.byte	14
# [1739:1]
	.byte	2
	.uleb128	.Ll695-.Ll694
	.byte	5
	.uleb128	1
	.byte	14
# [1740:1]
	.byte	2
	.uleb128	.Ll696-.Ll695
	.byte	13
# [1741:1]
	.byte	2
	.uleb128	.Ll697-.Ll696
	.byte	13
# [1742:1]
	.byte	2
	.uleb128	.Ll698-.Ll697
	.byte	13
# [1743:1]
	.byte	2
	.uleb128	.Ll699-.Ll698
	.byte	13
# [1744:1]
	.byte	2
	.uleb128	.Ll700-.Ll699
	.byte	13
# [1746:26]
	.byte	2
	.uleb128	.Ll701-.Ll700
	.byte	5
	.uleb128	26
	.byte	14
# [1747:42]
	.byte	2
	.uleb128	.Ll702-.Ll701
	.byte	5
	.uleb128	42
	.byte	13
# [1748:42]
	.byte	2
	.uleb128	.Ll703-.Ll702
	.byte	13
# [1749:42]
	.byte	2
	.uleb128	.Ll704-.Ll703
	.byte	13
# [1746:1]
	.byte	2
	.uleb128	.Ll705-.Ll704
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-3
	.byte	1
# [1751:13]
	.byte	2
	.uleb128	.Ll706-.Ll705
	.byte	5
	.uleb128	13
	.byte	17
# [1752:1]
	.byte	2
	.uleb128	.Ll707-.Ll706
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll708
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SDL_SOUND_INIT$$LONGINT
# [1758:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll709
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1757
	.byte	1
# [1759:1]
	.byte	2
	.uleb128	.Ll710-.Ll709
	.byte	13
# [1760:1]
	.byte	2
	.uleb128	.Ll711-.Ll710
	.byte	13
# [1761:1]
	.byte	2
	.uleb128	.Ll712-.Ll711
	.byte	13
# [1762:1]
	.byte	2
	.uleb128	.Ll713-.Ll712
	.byte	13
# [1763:1]
	.byte	2
	.uleb128	.Ll714-.Ll713
	.byte	13
# [1764:21]
	.byte	2
	.uleb128	.Ll715-.Ll714
	.byte	5
	.uleb128	21
	.byte	13
# [1765:1]
	.byte	2
	.uleb128	.Ll716-.Ll715
	.byte	5
	.uleb128	1
	.byte	13
# [1767:38]
	.byte	2
	.uleb128	.Ll717-.Ll716
	.byte	5
	.uleb128	38
	.byte	14
# [1769:3]
	.byte	2
	.uleb128	.Ll718-.Ll717
	.byte	5
	.uleb128	3
	.byte	14
# [1771:1]
	.byte	2
	.uleb128	.Ll719-.Ll718
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll720
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_AUDIOCALLBACK$POINTER$PBYTE$LONGINT
# [1787:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll721
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1786
	.byte	1
# [1789:1]
	.byte	2
	.uleb128	.Ll722-.Ll721
	.byte	14
# [1790:4]
	.byte	2
	.uleb128	.Ll723-.Ll722
	.byte	5
	.uleb128	4
	.byte	13
# [1792:1]
	.byte	2
	.uleb128	.Ll724-.Ll723
	.byte	5
	.uleb128	1
	.byte	14
# [1794:12]
	.byte	2
	.uleb128	.Ll725-.Ll724
	.byte	5
	.uleb128	12
	.byte	14
# [1795:8]
	.byte	2
	.uleb128	.Ll726-.Ll725
	.byte	5
	.uleb128	8
	.byte	13
# [1797:18]
	.byte	2
	.uleb128	.Ll727-.Ll726
	.byte	5
	.uleb128	18
	.byte	14
# [1798:3]
	.byte	2
	.uleb128	.Ll728-.Ll727
	.byte	5
	.uleb128	3
	.byte	13
# [1799:23]
	.byte	2
	.uleb128	.Ll729-.Ll728
	.byte	5
	.uleb128	23
	.byte	13
# [1798:3]
	.byte	2
	.uleb128	.Ll730-.Ll729
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-1
	.byte	1
# [1800:6]
	.byte	2
	.uleb128	.Ll731-.Ll730
	.byte	5
	.uleb128	6
	.byte	14
# [1801:18]
	.byte	2
	.uleb128	.Ll732-.Ll731
	.byte	5
	.uleb128	18
	.byte	13
# [1803:9]
	.byte	2
	.uleb128	.Ll733-.Ll732
	.byte	5
	.uleb128	9
	.byte	14
# [1804:21]
	.byte	2
	.uleb128	.Ll734-.Ll733
	.byte	5
	.uleb128	21
	.byte	13
# [1805:3]
	.byte	2
	.uleb128	.Ll735-.Ll734
	.byte	5
	.uleb128	3
	.byte	13
# [1806:3]
	.byte	2
	.uleb128	.Ll736-.Ll735
	.byte	13
# [1809:3]
	.byte	2
	.uleb128	.Ll737-.Ll736
	.byte	15
# [1810:3]
	.byte	2
	.uleb128	.Ll738-.Ll737
	.byte	13
# [1811:3]
	.byte	2
	.uleb128	.Ll739-.Ll738
	.byte	13
# [1812:8]
	.byte	2
	.uleb128	.Ll740-.Ll739
	.byte	5
	.uleb128	8
	.byte	13
# [1813:8]
	.byte	2
	.uleb128	.Ll741-.Ll740
	.byte	13
# [1792:1]
	.byte	2
	.uleb128	.Ll742-.Ll741
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-21
	.byte	1
# [1816:10]
	.byte	2
	.uleb128	.Ll743-.Ll742
	.byte	5
	.uleb128	10
	.byte	36
# [1817:1]
	.byte	2
	.uleb128	.Ll744-.Ll743
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll745
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
# [1822:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll746
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1821
	.byte	1
# [1823:13]
	.byte	2
	.uleb128	.Ll747-.Ll746
	.byte	5
	.uleb128	13
	.byte	13
# [1824:13]
	.byte	2
	.uleb128	.Ll748-.Ll747
	.byte	13
# [1825:1]
	.byte	2
	.uleb128	.Ll749-.Ll748
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll750
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
# [1830:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll751
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1829
	.byte	1
# [1831:6]
	.byte	2
	.uleb128	.Ll752-.Ll751
	.byte	5
	.uleb128	6
	.byte	13
# [1832:6]
	.byte	2
	.uleb128	.Ll753-.Ll752
	.byte	13
# [1833:6]
	.byte	2
	.uleb128	.Ll754-.Ll753
	.byte	13
# [1834:6]
	.byte	2
	.uleb128	.Ll755-.Ll754
	.byte	13
# [1835:6]
	.byte	2
	.uleb128	.Ll756-.Ll755
	.byte	13
# [1836:6]
	.byte	2
	.uleb128	.Ll757-.Ll756
	.byte	13
# [1837:7]
	.byte	2
	.uleb128	.Ll758-.Ll757
	.byte	5
	.uleb128	7
	.byte	13
# [1838:7]
	.byte	2
	.uleb128	.Ll759-.Ll758
	.byte	13
# [1839:1]
	.byte	2
	.uleb128	.Ll760-.Ll759
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll761
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_DELAY1$DOUBLE$$DOUBLE
# [1844:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll762
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1843
	.byte	1
# [1845:12]
	.byte	2
	.uleb128	.Ll763-.Ll762
	.byte	5
	.uleb128	12
	.byte	13
# [1846:12]
	.byte	2
	.uleb128	.Ll764-.Ll763
	.byte	13
# [1847:6]
	.byte	2
	.uleb128	.Ll765-.Ll764
	.byte	5
	.uleb128	6
	.byte	13
# [1848:1]
	.byte	2
	.uleb128	.Ll766-.Ll765
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll767
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_REVERB1$DOUBLE$$DOUBLE
# [1857:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll768
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1856
	.byte	1
# [1858:8]
	.byte	2
	.uleb128	.Ll769-.Ll768
	.byte	5
	.uleb128	8
	.byte	13
# [1859:1]
	.byte	2
	.uleb128	.Ll770-.Ll769
	.byte	5
	.uleb128	1
	.byte	13
# [1860:6]
	.byte	2
	.uleb128	.Ll771-.Ll770
	.byte	5
	.uleb128	6
	.byte	13
# [1861:6]
	.byte	2
	.uleb128	.Ll772-.Ll771
	.byte	13
# [1862:6]
	.byte	2
	.uleb128	.Ll773-.Ll772
	.byte	13
# [1863:6]
	.byte	2
	.uleb128	.Ll774-.Ll773
	.byte	13
# [1864:6]
	.byte	2
	.uleb128	.Ll775-.Ll774
	.byte	13
# [1865:6]
	.byte	2
	.uleb128	.Ll776-.Ll775
	.byte	13
# [1866:6]
	.byte	2
	.uleb128	.Ll777-.Ll776
	.byte	13
# [1867:6]
	.byte	2
	.uleb128	.Ll778-.Ll777
	.byte	13
# [1868:6]
	.byte	2
	.uleb128	.Ll779-.Ll778
	.byte	13
# [1869:6]
	.byte	2
	.uleb128	.Ll780-.Ll779
	.byte	13
# [1870:7]
	.byte	2
	.uleb128	.Ll781-.Ll780
	.byte	5
	.uleb128	7
	.byte	13
# [1872:12]
	.byte	2
	.uleb128	.Ll782-.Ll781
	.byte	5
	.uleb128	12
	.byte	14
# [1873:7]
	.byte	2
	.uleb128	.Ll783-.Ll782
	.byte	5
	.uleb128	7
	.byte	13
# [1874:8]
	.byte	2
	.uleb128	.Ll784-.Ll783
	.byte	5
	.uleb128	8
	.byte	13
# [1875:9]
	.byte	2
	.uleb128	.Ll785-.Ll784
	.byte	5
	.uleb128	9
	.byte	13
# [1876:10]
	.byte	2
	.uleb128	.Ll786-.Ll785
	.byte	5
	.uleb128	10
	.byte	13
# [1877:11]
	.byte	2
	.uleb128	.Ll787-.Ll786
	.byte	5
	.uleb128	11
	.byte	13
# [1878:12]
	.byte	2
	.uleb128	.Ll788-.Ll787
	.byte	5
	.uleb128	12
	.byte	13
# [1879:13]
	.byte	2
	.uleb128	.Ll789-.Ll788
	.byte	5
	.uleb128	13
	.byte	13
# [1880:14]
	.byte	2
	.uleb128	.Ll790-.Ll789
	.byte	5
	.uleb128	14
	.byte	13
# [1881:15]
	.byte	2
	.uleb128	.Ll791-.Ll790
	.byte	5
	.uleb128	15
	.byte	13
# [1882:17]
	.byte	2
	.uleb128	.Ll792-.Ll791
	.byte	5
	.uleb128	17
	.byte	13
# [1872:1]
	.byte	2
	.uleb128	.Ll793-.Ll792
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-10
	.byte	1
# [1886:12]
	.byte	2
	.uleb128	.Ll794-.Ll793
	.byte	5
	.uleb128	12
	.byte	26
# [1887:6]
	.byte	2
	.uleb128	.Ll795-.Ll794
	.byte	5
	.uleb128	6
	.byte	13
# [1888:1]
	.byte	2
	.uleb128	.Ll796-.Ll795
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll797
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

