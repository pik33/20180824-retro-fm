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
# [241] running:=1;                               // tell them the machine is running
	movl	$1,TC_$RETRO_$$_RUNNING(%rip)
.Ll10:
# [242] SDL_SetThreadPriority(SDL_THREAD_PRIORITY_HIGH);
	movl	$2,%ecx
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
	movq	%rax,%rsi
.Ll13:
# [248] sdlevents;                              // get events from SDL and update system variables
	call	RETRO_$$_SDLEVENTS
.Ll14:
# [249] vblank1:=0;                             // tell them there is no vblank
	movb	$0,U_$RETRO_$$_VBLANK1(%rip)
.Ll15:
# [250] t:=gettime;                             // prepare for screen time measurement
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,%rdi
.Ll16:
# [251] scrconvert(p2,raml^[$18001]);           // convert the screen
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393220(%rax),%edx
	movq	U_$RETRO_$$_P2(%rip),%rcx
	call	RETRO_$$_SCRCONVERT$POINTER$LONGINT
.Ll17:
# [252] tim:=gettime-t;                         // get screen time for debug
	call	RETRO_$$_GETTIME$$INT64
	subq	%rdi,%rax
	movq	%rax,U_$RETRO_$$_TIM(%rip)
.Ll18:
# [253] raml^[$18000]+=1;                       // increment frame counter
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393216(%rax),%eax
	leal	1(%eax),%eax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movl	%eax,393216(%rdx)
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
	movq	%rax,%rdi
.Ll43:
# [294] scrconvert(p3,raml^[$18001]);
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393220(%rax),%edx
	movq	%rsi,%rcx
	call	RETRO_$$_SCRCONVERT$POINTER$LONGINT
.Ll44:
# [295] tim:=gettime-t;
	call	RETRO_$$_GETTIME$$INT64
	subq	%rdi,%rax
	movq	%rax,U_$RETRO_$$_TIM(%rip)
.Ll45:
# [296] raml^[$18000]+=1;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	393216(%rax),%eax
	leal	1(%eax),%edx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	%edx,393216(%rax)
.Ll46:
# [297] vblank1:=1;
	movb	$1,U_$RETRO_$$_VBLANK1(%rip)
.Ll47:
# [298] sprite(p3);
	movq	%rsi,%rcx
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
	movq	%rsi,%r8
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
	cmpb	$0,16(%rbx)
	je	.Lj48
.Ll68:
# [331] running:=0;
	movl	$0,TC_$RETRO_$$_RUNNING(%rip)
.Ll69:
# [332] end;
	nop
	leaq	48(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc7:
.Lt46:
.Ll70:

.section .text.n_retro_$$_initmachine$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_INITMACHINE$LONGINT
RETRO_$$_INITMACHINE$LONGINT:
.Lc9:
.seh_proc RETRO_$$_INITMACHINE$LONGINT
.Ll71:
# [347] begin
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
# [348] initvoices;
	call	FMSYNTH_$$_INITVOICES
.Ll73:
# [349] initsamples0;
	call	FMSYNTH_$$_INITSAMPLES0
.Ll74:
# [350] initsamples1;
	call	FMSYNTH_$$_INITSAMPLES1
.Ll75:
# [351] initsamples2;
	call	FMSYNTH_$$_INITSAMPLES2
.Ll76:
# [352] r1:=virtualalloc(nil,268435456, MEM_COMMIT or MEM_RESERVE,PAGE_EXECUTE_READWRITE);  // get 256 MB ram
	movl	$64,%r9d
	movl	$12288,%r8d
	movq	$268435456,%rdx
	movq	$0,%rcx
	call	_$dll$kernel32$VirtualAlloc
	movq	%rax,U_$RETRO_$$_R1(%rip)
.Ll77:
# [353] p2:=virtualalloc(nil,20971520, MEM_COMMIT or MEM_RESERVE,PAGE_READWRITE);  // get the RAM for the framebuffer
	movl	$4,%r9d
	movl	$12288,%r8d
	movq	$20971520,%rdx
	movq	$0,%rcx
	call	_$dll$kernel32$VirtualAlloc
	movq	%rax,U_$RETRO_$$_P2(%rip)
.Ll78:
# [355] fh2:=fileopen('./st4font.def',$40);              // load 8x16 font
	leaq	_$RETRO$_Ld1(%rip),%rcx
	movl	$64,%edx
	call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$QWORD
	movl	%eax,U_$RETRO_$$_FH2(%rip)
.Ll79:
# [356] fileread(fh2,ramb^[$50000],2048);
	movq	U_$RETRO_$$_R1(%rip),%rax
	leaq	327680(%rax),%rdx
	movslq	U_$RETRO_$$_FH2(%rip),%rcx
	movl	$2048,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll80:
# [357] fileclose(fh2);
	movslq	U_$RETRO_$$_FH2(%rip),%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll81:
# [359] fh2:=fileopen('./combinedwaveforms.bin',$40);   // load combined waveforms for SID
	leaq	_$RETRO$_Ld2(%rip),%rcx
	movl	$64,%edx
	call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$QWORD
	movl	%eax,U_$RETRO_$$_FH2(%rip)
.Ll82:
# [360] fileread(fh2,combined,1024);
	movslq	U_$RETRO_$$_FH2(%rip),%rcx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rdx
	movl	$1024,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll83:
# [361] fileclose(fh2);
	movslq	U_$RETRO_$$_FH2(%rip),%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll84:
# [363] fh2:=fileopen('./mysz.def',$40);                // load mouse cursor definition at sprite 8
	leaq	_$RETRO$_Ld3(%rip),%rcx
	movl	$64,%edx
	call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$QWORD
	movl	%eax,U_$RETRO_$$_FH2(%rip)
# Var i located in register edi
.Ll85:
# [364] for i:=0 to 1023 do
	movl	$0,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj351:
	addl	$1,%edi
.Ll86:
# [366] fileread(fh2,bb,1);
	movslq	U_$RETRO_$$_FH2(%rip),%rcx
	leaq	48(%rsp),%rdx
	movl	$1,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll87:
# [367] a:=bb;
	movzbl	48(%rsp),%eax
# PeepHole Optimization,MovMov2Mov1
	movl	%eax,%esi
.Ll88:
# [368] a:=a+(a shl 8) + (a shl 16);
	shll	$8,%eax
	leal	(%eax,%esi),%edx
	movl	%esi,%eax
	shll	$16,%eax
	leal	(%edx,%eax),%eax
	movl	%eax,%esi
.Ll89:
# [369] raml^[$16400+i]:=a;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movslq	%edi,%rax
	movl	%esi,364544(%rdx,%rax,4)
.Ll90:
	cmpl	$1023,%edi
	jl	.Lj351
.Ll91:
# [371] fileclose(fh2);
	movslq	U_$RETRO_$$_FH2(%rip),%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll92:
# [375] SDL_Init(SDL_INIT_everything);
	movl	$12849,%ecx
	call	_$dll$sdl2$SDL_Init
.Ll93:
# [377] SDL_SetHint(SDL_HINT_RENDER_SCALE_QUALITY, 'best'); // make the scaled rendering look smoother.
	leaq	_$RETRO$_Ld4(%rip),%rdx
	leaq	_$RETRO$_Ld5(%rip),%rcx
	call	_$dll$sdl2$SDL_SetHint
.Ll94:
# [378] SDL_SetHint(SDL_HINT_RENDER_DIRECT3D_THREADSAFE, '1');
	leaq	_$RETRO$_Ld6(%rip),%rdx
	leaq	_$RETRO$_Ld7(%rip),%rcx
	call	_$dll$sdl2$SDL_SetHint
.Ll95:
# [379] if mode=0 then scr := SDL_CreateWindow( 'The Retromachine', SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 960,600, SDL_WINDOW_shown);
	testl	%ebx,%ebx
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
.Ll96:
# [380] if mode=1 then scr := SDL_CreateWindow( 'The Retromachine', SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 960,600 , SDL_WINDOW_fullscreen_desktop);
	cmpl	$1,%ebx
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
.Ll97:
# [381] sdlRenderer := SDL_CreateRenderer(scr, -1, 14);   // hardware+vsync+texture
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	movl	$14,%r8d
	movl	$-1,%edx
	call	_$dll$sdl2$SDL_CreateRenderer
	movq	%rax,U_$RETRO_$$_SDLRENDERER(%rip)
.Ll98:
# [382] sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
	movl	$1200,32(%rsp)
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1920,%r9d
	movl	$1,%r8d
	movl	$372645892,%edx
	call	_$dll$sdl2$SDL_CreateTexture
	movq	%rax,U_$RETRO_$$_SDLTEXTURE(%rip)
.Ll99:
# [383] SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	movl	$1200,%r8d
	movl	$1920,%edx
	call	_$dll$sdl2$SDL_RenderSetLogicalSize
.Ll100:
# [385] sdl_showcursor(0);             // hide sdl cursor
	movl	$0,%ecx
	call	_$dll$sdl2$SDL_ShowCursor
.Ll101:
# [387] sdl_sound_init;
	call	RETRO_$$_SDL_SOUND_INIT$$LONGINT
.Ll102:
# [388] sdl_pauseaudio(0);
	movl	$0,%ecx
	call	_$dll$sdl2$SDL_PauseAudio
.Ll103:
# [390] thread:=tretro.create(true);   // start frame refreshing thread
	leaq	VMT_$RETRO_$$_TRETRO(%rip),%rcx
	movl	$1,%r8d
	movq	$1,%rdx
	call	RETRO$_$TRETRO_$__$$_CREATE$BOOLEAN$$TRETRO
# PeepHole Optimization,MovMov2MovMov1
	movq	%rax,U_$RETRO_$$_THREAD(%rip)
.Ll104:
# [391] thread.start;
	movq	%rax,%rcx
	call	CLASSES$_$TTHREAD_$__$$_START
.Ll105:
# [393] end;
	nop
	leaq	64(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc10:
.Lt1:
.Ll106:

.section .text.n_retro_$$_stopmachine,"x"
	.balign 16,0x90
.globl	RETRO_$$_STOPMACHINE
RETRO_$$_STOPMACHINE:
.Lc12:
.seh_proc RETRO_$$_STOPMACHINE
.Ll107:
# [405] begin
	leaq	-40(%rsp),%rsp
.Lc14:
.seh_stackalloc 40
.seh_endprologue
.Ll108:
# [409] sdl_pauseaudio(1);
	movl	$1,%eax
	movl	%eax,%ecx
	call	_$dll$sdl2$SDL_PauseAudio
.Ll109:
# [410] sdl_closeaudio;
	call	_$dll$sdl2$SDL_CloseAudio
.Ll110:
# [411] thread.terminate;
	movq	U_$RETRO_$$_THREAD(%rip),%rcx
	call	CLASSES$_$TTHREAD_$__$$_TERMINATE
	.balign 8,0x90
.Lj454:
.Ll111:
# [412] repeat until running=0;
	cmpl	$0,TC_$RETRO_$$_RUNNING(%rip)
	jne	.Lj454
.Ll112:
# [413] SDL_DestroyTexture( sdlTexture );
	movq	U_$RETRO_$$_SDLTEXTURE(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyTexture
.Ll113:
# [414] SDL_DestroyRenderer( sdlRenderer );
	movq	U_$RETRO_$$_SDLRENDERER(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyRenderer
.Ll114:
# [415] SDL_DestroyWindow ( scr);
	movq	U_$RETRO_$$_SCR(%rip),%rcx
	call	_$dll$sdl2$SDL_DestroyWindow
.Ll115:
# [416] sdl_quit;
	call	_$dll$sdl2$SDL_Quit
.Ll116:
# [420] virtualfree(p2,0,mem_release);
	movq	U_$RETRO_$$_P2(%rip),%rcx
	movl	$32768,%r8d
	movq	$0,%rdx
	call	_$dll$kernel32$VirtualFree
.Ll117:
# [421] virtualfree(r1,0,mem_release);
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movl	$32768,%r8d
	movq	$0,%rdx
	call	_$dll$kernel32$VirtualFree
.Ll118:
# [423] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc13:
.Lt2:
.Ll119:

.section .text.n_retro_$$_poke$longint$byte,"x"
	.balign 16,0x90
.globl	RETRO_$$_POKE$LONGINT$BYTE
RETRO_$$_POKE$LONGINT$BYTE:
.Lc15:
# Var addr located in register eax
# Var b located in register dl
.Ll120:
# [433] begin
	movl	%ecx,%eax
.Ll121:
# [434] ramb^[addr]:=b;
	movq	U_$RETRO_$$_R1(%rip),%rcx
	andl	$4294967295,%eax
# Var b located in register dl
	movb	%dl,(%rcx,%rax,1)
.Ll122:
# [435] end;
	ret
.Lc16:
.Lt15:
.Ll123:

.section .text.n_retro_$$_dpoke$longint$word,"x"
	.balign 16,0x90
.globl	RETRO_$$_DPOKE$LONGINT$WORD
RETRO_$$_DPOKE$LONGINT$WORD:
.Lc17:
# Var addr located in register eax
# Var w located in register dx
.Ll124:
# [439] begin
	movl	%ecx,%eax
.Ll125:
# [440] ramw^[addr shr 1]:=w;
	movq	U_$RETRO_$$_R1(%rip),%rcx
	shrl	$1,%eax
	andl	$4294967295,%eax
# Var w located in register dx
	movw	%dx,(%rcx,%rax,2)
.Ll126:
# [441] end;
	ret
.Lc18:
.Lt16:
.Ll127:

.section .text.n_retro_$$_lpoke$longint$longword,"x"
	.balign 16,0x90
.globl	RETRO_$$_LPOKE$LONGINT$LONGWORD
RETRO_$$_LPOKE$LONGINT$LONGWORD:
.Lc19:
# Var addr located in register eax
# Var c located in register edx
.Ll128:
# [446] begin
	movl	%ecx,%eax
.Ll129:
# [447] raml^[addr shr 2]:=c;
	movq	U_$RETRO_$$_R1(%rip),%rcx
	shrl	$2,%eax
	andl	$4294967295,%eax
	movl	%edx,(%rcx,%rax,4)
.Ll130:
# [448] end;
	ret
.Lc20:
.Lt17:
.Ll131:

.section .text.n_retro_$$_slpoke$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_SLPOKE$LONGINT$LONGINT
RETRO_$$_SLPOKE$LONGINT$LONGINT:
.Lc21:
# Var addr located in register eax
# Var i located in register edx
.Ll132:
# [452] begin
	movl	%ecx,%eax
.Ll133:
# [453] raml^[addr shr 2]:=i;
	movq	U_$RETRO_$$_R1(%rip),%rcx
	shrl	$2,%eax
	andl	$4294967295,%eax
# Var i located in register edx
	movl	%edx,(%rcx,%rax,4)
.Ll134:
# [454] end;
	ret
.Lc22:
.Lt18:
.Ll135:

.section .text.n_retro_$$_peek$longint$$byte,"x"
	.balign 16,0x90
.globl	RETRO_$$_PEEK$LONGINT$$BYTE
RETRO_$$_PEEK$LONGINT$$BYTE:
.Lc23:
# Var addr located in register ecx
# Var $result located in register al
# [458] begin
.Ll136:
# [459] peek:=ramb^[addr];
	movq	U_$RETRO_$$_R1(%rip),%rax
	andl	$4294967295,%ecx
# Var $result located in register al
	movb	(%rax,%rcx,1),%al
# PeepHole Optimization,var9
.Ll137:
# [460] end;
	andl	$255,%eax
	ret
.Lc24:
.Lt19:
.Ll138:

.section .text.n_retro_$$_dpeek$longint$$word,"x"
	.balign 16,0x90
.globl	RETRO_$$_DPEEK$LONGINT$$WORD
RETRO_$$_DPEEK$LONGINT$$WORD:
.Lc25:
# Var addr located in register ecx
# Var $result located in register ax
# [464] begin
.Ll139:
# [465] dpeek:=ramb^[addr]+256*ramb^[addr+1];
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
.Ll140:
# [466] end;
	andl	$65535,%eax
	ret
.Lc26:
.Lt20:
.Ll141:

.section .text.n_retro_$$_lpeek$longint$$longword,"x"
	.balign 16,0x90
.globl	RETRO_$$_LPEEK$LONGINT$$LONGWORD
RETRO_$$_LPEEK$LONGINT$$LONGWORD:
.Lc27:
# Var addr located in register ecx
# Var $result located in register eax
# [470] begin
.Ll142:
# [471] lpeek:=raml^[addr shr 2];
	movq	U_$RETRO_$$_R1(%rip),%rax
	shrl	$2,%ecx
	andl	$4294967295,%ecx
# Var $result located in register eax
	movl	(%rax,%rcx,4),%eax
.Ll143:
# [472] end;
	ret
.Lc28:
.Lt21:
.Ll144:

.section .text.n_retro_$$_slpeek$longint$$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_SLPEEK$LONGINT$$LONGINT
RETRO_$$_SLPEEK$LONGINT$$LONGINT:
.Lc29:
# Var addr located in register ecx
# Var $result located in register eax
# [476] begin
.Ll145:
# [477] slpeek:=raml^[addr shr 2];
	movq	U_$RETRO_$$_R1(%rip),%rax
	shrl	$2,%ecx
	andl	$4294967295,%ecx
# Var $result located in register eax
	movl	(%rax,%rcx,4),%eax
.Ll146:
# [478] end;
	ret
.Lc30:
.Lt22:
.Ll147:

.section .text.n_retro_$$_gettime$$int64,"x"
	.balign 16,0x90
.globl	RETRO_$$_GETTIME$$INT64
RETRO_$$_GETTIME$$INT64:
.Lc31:
.seh_proc RETRO_$$_GETTIME$$INT64
.Ll148:
# [491] begin
	leaq	-56(%rsp),%rsp
.Lc33:
.seh_stackalloc 56
# Var $result located in register rax
.seh_endprologue
# Var pf located at rsp+32, size=OS_S64
# Var tm located at rsp+40, size=OS_S64
.Ll149:
# [492] QueryPerformanceFrequency(pf);
	leaq	32(%rsp),%rcx
	call	_$dll$kernel32$QueryPerformanceFrequency
.Ll150:
# [493] QueryPerformanceCounter(tm);
	leaq	40(%rsp),%rcx
	call	_$dll$kernel32$QueryPerformanceCounter
.Ll151:
# [494] gettime:=round(1000000*tm/pf);
	movq	40(%rsp),%rax
	imulq	$1000000,%rax,%rax
	cvtsi2sd	%rax,%xmm0
	cvtsi2sdq	32(%rsp),%xmm1
	divsd	%xmm1,%xmm0
	cvtsd2siq	%xmm0,%rax
# Var $result located in register rax
.Ll152:
# [495] end;
	nop
	leaq	56(%rsp),%rsp
	ret
.seh_endproc
.Lc32:
.Lt14:
.Ll153:

.section .text.n_retro_$$_readkeybuffer$$longword,"x"
	.balign 16,0x90
.globl	RETRO_$$_READKEYBUFFER$$LONGWORD
RETRO_$$_READKEYBUFFER$$LONGWORD:
.Lc34:
# Var $result located in register eax
# [499] begin
.Ll154:
# [500] if be<>bs then
	movb	U_$RETRO_$$_BE(%rip),%al
	cmpb	U_$RETRO_$$_BS(%rip),%al
	je	.Lj518
.Ll155:
# [502] result:=keybuffer[bs];
	movzbl	U_$RETRO_$$_BS(%rip),%eax
	leaq	U_$RETRO_$$_KEYBUFFER(%rip),%rdx
	movl	(%rdx,%rax,4),%eax
.Ll156:
# [503] bs+=1
	movzbl	U_$RETRO_$$_BS(%rip),%edx
.Ll157:
# [504] end
	leal	1(%edx),%edx
.Ll158:
	movb	%dl,U_$RETRO_$$_BS(%rip)
	jmp	.Lj523
.Lj518:
.Ll159:
# [505] else result:=$FFFFFFFF;
	movl	$4294967295,%eax
.Lj523:
.Ll160:
# [506] end;
	ret
.Lc35:
.Lt32:
.Ll161:

.section .text.n_retro_$$_writekeybuffer$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_WRITEKEYBUFFER$LONGINT
RETRO_$$_WRITEKEYBUFFER$LONGINT:
.Lc36:
# Var a located in register eax
.Ll162:
# [510] begin
	movl	%ecx,%eax
.Ll163:
# [511] if be<>bs-1 then
	movzbl	U_$RETRO_$$_BS(%rip),%edx
	leaq	-1(%rdx),%rcx
	movzbl	U_$RETRO_$$_BE(%rip),%edx
	cmpq	%rdx,%rcx
	je	.Lj529
.Ll164:
# [513] keybuffer[be]:=a;
	movzbl	U_$RETRO_$$_BE(%rip),%ecx
	leaq	U_$RETRO_$$_KEYBUFFER(%rip),%rdx
	movl	%eax,(%rdx,%rcx,4)
.Ll165:
# [514] be+=1;
	movzbl	U_$RETRO_$$_BE(%rip),%eax
	leal	1(%eax),%eax
	movb	%al,U_$RETRO_$$_BE(%rip)
.Lj529:
.Ll166:
# [516] end;
	ret
.Lc37:
.Lt33:
.Ll167:

.section .text.n_retro_$$_sdlevents,"x"
	.balign 16,0x90
.globl	RETRO_$$_SDLEVENTS
RETRO_$$_SDLEVENTS:
.Lc38:
.seh_proc RETRO_$$_SDLEVENTS
.Ll168:
# [537] begin
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
.Lj536:
.Ll169:
# [539] qq:=sdl_pollevent(@event)  ;
	leaq	32(%rsp),%rcx
	call	_$dll$sdl2$SDL_PollEvent
	movl	%eax,%ebx
.Ll170:
# [540] if (qq>0) and (event.type_=sdl_windowevent) then if event.window.event=SDL_WINDOWEVENT_ENTER then needrestart:=1;
	cmpl	$0,%ebx
	jng	.Lj544
	cmpl	$512,32(%rsp)
	jne	.Lj544
	cmpb	$10,44(%rsp)
	jne	.Lj547
	movb	$1,TC_$RETRO_$$_NEEDRESTART(%rip)
.Lj547:
.Lj544:
.Ll171:
# [542] if (qq<>0) and (event.type_=sdl_mousemotion)  then
	testl	%ebx,%ebx
	je	.Lj551
	cmpl	$1024,32(%rsp)
	jne	.Lj551
.Ll172:
# [544] x:=event.motion.x;
	movl	52(%rsp),%eax
	movl	%eax,TC_$RETRO$_$SDLEVENTS_$$_X(%rip)
.Ll173:
# [545] y:=event.motion.y;
	movl	56(%rsp),%eax
	movl	%eax,TC_$RETRO$_$SDLEVENTS_$$_Y(%rip)
.Ll174:
# [546] if x<64 then x:=64;
	cmpl	$64,TC_$RETRO$_$SDLEVENTS_$$_X(%rip)
	jnl	.Lj558
	movl	$64,TC_$RETRO$_$SDLEVENTS_$$_X(%rip)
.Lj558:
.Ll175:
# [547] if x>1855 then x:=1855;
	cmpl	$1855,TC_$RETRO$_$SDLEVENTS_$$_X(%rip)
	jng	.Lj562
	movl	$1855,TC_$RETRO$_$SDLEVENTS_$$_X(%rip)
.Lj562:
.Ll176:
# [548] if y<40 then y:=40;
	cmpl	$40,TC_$RETRO$_$SDLEVENTS_$$_Y(%rip)
	jnl	.Lj566
	movl	$40,TC_$RETRO$_$SDLEVENTS_$$_Y(%rip)
.Lj566:
.Ll177:
# [549] if y>1159 then y:=1159;
	cmpl	$1159,TC_$RETRO$_$SDLEVENTS_$$_Y(%rip)
	jng	.Lj570
	movl	$1159,TC_$RETRO$_$SDLEVENTS_$$_Y(%rip)
.Lj570:
.Ll178:
# [550] ramw^[$30016]:=x;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movw	TC_$RETRO$_$SDLEVENTS_$$_X(%rip),%ax
	movw	%ax,393260(%rdx)
.Ll179:
# [551] ramw^[$30017]:=y;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movw	TC_$RETRO$_$SDLEVENTS_$$_Y(%rip),%dx
	movw	%dx,393262(%rax)
	jmp	.Lj577
.Lj551:
.Ll180:
# [554] else  if (qq<>0) and (event.type_=sdl_mousewheel)  then
	testl	%ebx,%ebx
	je	.Lj579
	cmpl	$1027,32(%rsp)
	jne	.Lj579
.Ll181:
# [556] x:=event.wheel.x;
	movl	48(%rsp),%eax
	movl	%eax,TC_$RETRO$_$SDLEVENTS_$$_X(%rip)
.Ll182:
# [557] y:=event.wheel.y;
	movl	52(%rsp),%eax
	movl	%eax,TC_$RETRO$_$SDLEVENTS_$$_Y(%rip)
.Ll183:
# [562] ramb^[$60032]:=y;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movb	TC_$RETRO$_$SDLEVENTS_$$_Y(%rip),%al
	movb	%al,393266(%rdx)
	jmp	.Lj587
.Lj579:
.Ll184:
# [564] else if (qq<>0) and (event.type_=sdl_mousebuttondown)  then
	testl	%ebx,%ebx
	je	.Lj589
	cmpl	$1025,32(%rsp)
	jne	.Lj589
.Ll185:
# [566] if event.button.state=sdl_pressed then
	cmpb	$1,49(%rsp)
	jne	.Lj597
.Ll186:
# [568] ramb^[$60033]:=2;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movb	$2,393267(%rax)
.Ll187:
# [569] ramb^[$60030]:=event.button.button;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movb	48(%rsp),%dl
	movb	%dl,393264(%rax)
	jmp	.Lj597
.Lj589:
.Ll188:
# [572] else if (qq<>0) and (event.type_=sdl_keydown) then
	testl	%ebx,%ebx
	je	.Lj599
	cmpl	$768,32(%rsp)
	jne	.Lj599
.Ll189:
# [574] ramb^[$6002B]:=1;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movb	$1,393259(%rax)
.Ll190:
# [575] key:=event.key.keysym.sym;
	movl	52(%rsp),%esi
.Ll191:
# [576] key:=(key shr 24) shl 8 + (key and $FF);
	movl	%esi,%eax
	shrl	$24,%eax
	shll	$8,%eax
	movl	%esi,%edx
	andl	$255,%edx
	leal	(%eax,%edx),%eax
	movl	%eax,%esi
.Ll192:
# [577] if event.key.repeat_ = 0 then writekeybuffer(key);
	cmpb	$0,45(%rsp)
	jne	.Lj608
	movl	%esi,%ecx
	call	RETRO_$$_WRITEKEYBUFFER$LONGINT
.Lj608:
.Ll193:
# [578] dpoke($60028,key);
	movw	%si,%dx
# PeepHole Optimization,var11
	andl	$65535,%edx
	movl	$393256,%ecx
	call	RETRO_$$_DPOKE$LONGINT$WORD
	jmp	.Lj615
.Lj599:
.Ll194:
# [580] else if (qq<>0) and (event.type_=sdl_keyUP) then
	testl	%ebx,%ebx
	je	.Lj617
	cmpl	$769,32(%rsp)
	jne	.Lj617
.Ll195:
# [582] ramb^[$6002B]:=0;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movb	$0,393259(%rax)
.Ll196:
# [583] key:=event.key.keysym.sym;
	movl	52(%rsp),%esi
.Ll197:
# [584] key:=(key shr 24) shl 8 + (key and $FF);
	movl	%esi,%eax
	shrl	$24,%eax
	shll	$8,%eax
	movl	%esi,%edx
	andl	$255,%edx
	leal	(%eax,%edx),%eax
	movl	%eax,%esi
.Ll198:
# [585] writekeybuffer(key+$10000);
	leal	65536(%esi),%ecx
	call	RETRO_$$_WRITEKEYBUFFER$LONGINT
.Ll199:
# [587] dpoke($6002A,key);
	movw	%si,%dx
# PeepHole Optimization,var11
	andl	$65535,%edx
	movl	$393258,%ecx
	call	RETRO_$$_DPOKE$LONGINT$WORD
	jmp	.Lj631
.Lj617:
.Ll200:
# [589] else if (qq<>0) and (event.type_=sdl_windowevent)  then
	testl	%ebx,%ebx
	je	.Lj633
	cmpl	$512,32(%rsp)
	jne	.Lj633
.Ll201:
# [591] if event.window.event=SDL_WINDOWEVENT_CLOSE then poke($70004,1);
	cmpb	$14,44(%rsp)
	jne	.Lj636
	movl	$1,%edx
	movl	$458756,%ecx
	call	RETRO_$$_POKE$LONGINT$BYTE
.Lj636:
.Lj633:
.Lj631:
.Lj615:
.Lj597:
.Lj587:
.Lj577:
.Ll202:
# [593] until qq=0;
	testl	%ebx,%ebx
	jne	.Lj536
.Ll203:
# [594] end;
	nop
	leaq	88(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc39:
.Lt35:
.Ll204:

.section .text.n_retro_$$_blit$crc5a667533,"x"
	.balign 16,0x90
.globl	RETRO_$$_BLIT$crc5A667533
RETRO_$$_BLIT$crc5A667533:
.Lc41:
# Temps allocated between rbp-112 and rbp+0
.seh_proc RETRO_$$_BLIT$crc5A667533
.Ll205:
# [611] begin
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
.Ll206:
# [612] if raml^[$18002]<16 then
	movq	U_$RETRO_$$_R1(%rip),%rax
	cmpl	$16,393224(%rax)
	jnl	.Lj644
.Ll207:
# [614] from:=from+x;
	movl	-56(%rbp),%eax
	leal	(%eax,%edx),%ecx
	movl	%ecx,%eax
	movq	%rax,-56(%rbp)
.Ll208:
# [615] too:=too+x2;
	movl	-8(%rbp),%eax
	leal	(%eax,%ebx),%ecx
	movl	%ecx,%eax
	movq	%rax,-8(%rbp)
.Ll209:
# [616] for i:=0 to lines-1 do
	leal	-1(%esi),%eax
	movl	%eax,%r13d
	movl	$0,%r15d
	cmpl	%r15d,%r13d
	jl	.Lj667
	subl	$1,%r15d
	.balign 8,0x90
.Lj653:
	addl	$1,%r15d
.Ll210:
# [618] b2:=too+bpl2*(i+y2);
	movl	-40(%rbp),%eax
	leal	(%r15d,%eax),%ecx
	movl	-16(%rbp),%eax
	movl	%eax,%r8d
	imull	%ecx,%r8d
	movl	-8(%rbp),%eax
	leal	(%r8d,%eax),%ecx
	movl	%ecx,%r12d
.Ll211:
# [619] b1:=from+bpl1*(i+y);
	movl	-48(%rbp),%eax
	leal	(%r15d,%eax),%ecx
	movl	-24(%rbp),%eax
	movl	%eax,%r8d
	imull	%ecx,%r8d
	movl	-56(%rbp),%ecx
	leal	(%r8d,%ecx),%eax
	movl	%eax,%r14d
.Ll212:
# [620] for j:=0 to length-1 do
	movl	-32(%rbp),%eax
	leal	-1(%eax),%ecx
	movl	%ecx,%eax
	movl	$0,%edi
	cmpl	%edi,%eax
	jl	.Lj661
	subl	$1,%edi
	.balign 8,0x90
.Lj662:
	addl	$1,%edi
.Ll213:
# [621] ramb^[b2+j]:=ramb^[b1+j];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	%r12d,%r9
	movslq	%edi,%r8
	leaq	(%r9,%r8),%r9
	movq	U_$RETRO_$$_R1(%rip),%r10
	movslq	%r14d,%r11
	leaq	(%r11,%r8),%r8
	movb	(%r10,%r8,1),%r8b
	movb	%r8b,(%rcx,%r9,1)
.Ll214:
	cmpl	%edi,%eax
	jg	.Lj662
.Lj661:
.Ll215:
	cmpl	%r15d,%r13d
	jg	.Lj653
	jmp	.Lj667
.Lj644:
.Ll216:
# [624] else if (raml^[$18002]>=16) and (raml^[$18002]<32) then
	movq	U_$RETRO_$$_R1(%rip),%rax
.Ll217:
	movl	393224(%rax),%eax
.Ll218:
	cmpl	$16,%eax
	jnge	.Lj669
	cmpl	$32,%eax
	jnl	.Lj669
.Ll219:
# [626] from:=(from shr 1)+x;
	movl	-56(%rbp),%eax
	movl	%eax,%ecx
	shrl	$1,%ecx
	leal	(%ecx,%edx),%ecx
	movl	%ecx,%eax
	movq	%rax,-56(%rbp)
.Ll220:
# [627] too:=(too shr 1)+x2;
	movl	-8(%rbp),%eax
	movl	%eax,%ecx
	shrl	$1,%ecx
	leal	(%ecx,%ebx),%ecx
	movl	%ecx,%eax
	movq	%rax,-8(%rbp)
.Ll221:
# [628] for i:=0 to lines-1 do
	leal	-1(%esi),%eax
	movl	$0,%r15d
	cmpl	%r15d,%eax
	jl	.Lj695
	subl	$1,%r15d
	.balign 8,0x90
.Lj681:
	addl	$1,%r15d
.Ll222:
# [630] b2:=too+bpl2*(i+y2);
	movl	-40(%rbp),%ecx
	leal	(%r15d,%ecx),%r9d
	movl	-16(%rbp),%ecx
	movl	%ecx,%r8d
	imull	%r9d,%r8d
	movl	-8(%rbp),%ecx
	leal	(%r8d,%ecx),%r8d
	movl	%r8d,%r12d
.Ll223:
# [631] b1:=from+bpl1*(i+y);
	movl	-48(%rbp),%ecx
	leal	(%r15d,%ecx),%r8d
	movl	-24(%rbp),%ecx
	movl	%ecx,%r9d
	imull	%r8d,%r9d
	movl	-56(%rbp),%ecx
	leal	(%r9d,%ecx),%r8d
	movl	%r8d,%r14d
.Ll224:
# [632] for j:=0 to length-1 do
	movl	-32(%rbp),%ecx
	leal	-1(%ecx),%r8d
	movl	%r8d,%ecx
	movl	$0,%edi
	cmpl	%edi,%ecx
	jl	.Lj689
	subl	$1,%edi
	.balign 8,0x90
.Lj690:
	addl	$1,%edi
.Ll225:
# [633] ramw^[b2+j]:=ramw^[b1+j];
	movq	U_$RETRO_$$_R1(%rip),%r8
	movslq	%r12d,%r10
	movslq	%edi,%r9
	leaq	(%r10,%r9),%r10
	movq	U_$RETRO_$$_R1(%rip),%r11
	movslq	%r14d,%r13
	leaq	(%r13,%r9),%r9
	movw	(%r11,%r9,2),%r9w
	movw	%r9w,(%r8,%r10,2)
.Ll226:
	cmpl	%edi,%ecx
	jg	.Lj690
.Lj689:
.Ll227:
	cmpl	%r15d,%eax
	jg	.Lj681
	jmp	.Lj695
.Lj669:
.Ll228:
# [638] from:=(from shr 2)+x;
	movl	-56(%rbp),%eax
	movl	%eax,%ecx
	shrl	$2,%ecx
	leal	(%ecx,%edx),%eax
	movl	%eax,%edx
	movq	%rdx,-56(%rbp)
.Ll229:
# [639] too:=(too shr 2)+x2;
	movl	-8(%rbp),%edx
	movl	%edx,%eax
	shrl	$2,%eax
	leal	(%eax,%ebx),%eax
	movl	%eax,%edx
	movq	%rdx,-8(%rbp)
.Ll230:
# [640] for i:=0 to lines-1 do
	leal	-1(%esi),%eax
	movl	%eax,%ecx
	movl	$0,%r15d
	cmpl	%r15d,%ecx
	jl	.Lj703
	subl	$1,%r15d
	.balign 8,0x90
.Lj704:
	addl	$1,%r15d
.Ll231:
# [642] b2:=too+bpl2*(i+y2);
	movl	-40(%rbp),%eax
	leal	(%r15d,%eax),%edx
	movl	-16(%rbp),%eax
	movl	%eax,%r8d
	imull	%edx,%r8d
	movl	-8(%rbp),%edx
	leal	(%r8d,%edx),%eax
	movl	%eax,%r12d
.Ll232:
# [643] b1:=from+bpl1*(i+y);
	movl	-48(%rbp),%eax
	leal	(%r15d,%eax),%edx
	movl	-24(%rbp),%eax
	movl	%eax,%r8d
	imull	%edx,%r8d
	movl	-56(%rbp),%edx
	leal	(%r8d,%edx),%eax
	movl	%eax,%r14d
.Ll233:
# [644] for j:=0 to length-1 do
	movl	-32(%rbp),%edx
	leal	-1(%edx),%eax
	movl	%eax,%r9d
	movl	$0,%edi
	cmpl	%edi,%r9d
	jl	.Lj712
	subl	$1,%edi
	.balign 8,0x90
.Lj713:
	addl	$1,%edi
.Ll234:
# [645] raml^[b2+j]:=raml^[b1+j];
	movq	U_$RETRO_$$_R1(%rip),%r8
	movslq	%r12d,%rdx
	movslq	%edi,%rax
.Ll235:
	movq	%rax,%r10
.Ll236:
	leaq	(%rdx,%r10),%r11
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movslq	%r14d,%rax
	leaq	(%rax,%r10),%rax
	movl	(%rdx,%rax,4),%eax
	movl	%eax,(%r8,%r11,4)
.Ll237:
	cmpl	%edi,%r9d
	jg	.Lj713
.Lj712:
.Ll238:
	cmpl	%r15d,%ecx
	jg	.Lj704
.Lj703:
.Lj695:
.Lj667:
.Ll239:
# [648] end;
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
.Ll240:

.section .text.n_retro_$$_graphics$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_GRAPHICS$LONGINT
RETRO_$$_GRAPHICS$LONGINT:
.Lc46:
.seh_proc RETRO_$$_GRAPHICS$LONGINT
.Ll241:
# [652] begin
	leaq	-40(%rsp),%rsp
.Lc48:
.seh_stackalloc 40
# Var mode located in register eax
.seh_endprologue
	movl	%ecx,%eax
.Ll242:
# [653] raml^[$18001]:=$F000000;
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movl	$251658240,393220(%rdx)
.Ll243:
# [654] case mode of
	cmpl	$16,%eax
	jl	.Lj723
	subl	$16,%eax
	jne	.Lj723
.Ll244:
# [658] raml^[$18002]:=16;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16,393224(%rax)
.Ll245:
# [659] raml^[$18008]:=1792;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$1792,393248(%rax)
.Ll246:
# [660] raml^[$18009]:=1120;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$1120,393252(%rax)
	jmp	.Lj722
.Lj723:
.Ll247:
# [666] raml^[$18002]:=16;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$16,393224(%rax)
.Ll248:
# [667] raml^[$18008]:=1792;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$1792,393248(%rax)
.Ll249:
# [668] raml^[$18009]:=1120;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$1120,393252(%rax)
.Lj722:
.Ll250:
# [671] raml^[$18001]:=$F000000;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movl	$251658240,393220(%rax)
.Ll251:
# [672] setataripallette(0);
	movl	$0,%ecx
	call	RETRO_$$_SETATARIPALLETTE$LONGINT
.Ll252:
# [674] cls(0);
	movl	$0,%ecx
	call	RETRO_$$_CLS$LONGINT
.Ll253:
# [675] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc47:
.Lt3:
.Ll254:

.section .text.n_retro_$$_scrconvert$pointer$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_SCRCONVERT$POINTER$LONGINT
RETRO_$$_SCRCONVERT$POINTER$LONGINT:
.Lc49:
.seh_proc RETRO_$$_SCRCONVERT$POINTER$LONGINT
.Ll255:
# [687] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
# Var screen located in register rcx
# Var buf located in register edx
# Var b located in register r11d
# Var pi located in register rcx
# Var i located in register edx
# Var j located in register r9d
# Var k located in register r8d
# Var l located in register r10d
.seh_endprologue
.Ll256:
# [688] buf:=buf shr 1;
	shrl	$1,%edx
# Var buf located in register edx
# Var pi located in register rcx
# Var screen located in register rcx
.Ll257:
# [690] b:=raml^[$18003];
	movq	U_$RETRO_$$_R1(%rip),%rax
# Var b located in register r11d
	movl	393228(%rax),%r11d
# Var l located in register r10d
.Ll258:
# [691] l:=0;
	movl	$0,%r10d
# Var i located in register r8d
.Ll259:
# [692] for i:=0 to 39 do begin {if peek($70001)=0 then b:=lpeek($10000+4*((i div 4)+lpeek($60000)  ) mod 1024);} for j:=0 to 1919  do (pi+i*1920+j)^:=b; end;
	movl	$0,%r8d
	subl	$1,%r8d
	.balign 8,0x90
.Lj755:
	addl	$1,%r8d
	movl	$0,%r9d
	subl	$1,%r9d
	.balign 8,0x90
.Lj758:
	addl	$1,%r9d
	movslq	%r8d,%rax
	imulq	$1920,%rax,%rax
	shlq	$2,%rax
	leaq	(%rax,%rcx),%rbx
	movslq	%r9d,%rax
	shlq	$2,%rax
	leaq	(%rbx,%rax),%rax
	movl	%r11d,(%rax)
	cmpl	$1919,%r9d
	jl	.Lj758
	cmpl	$39,%r8d
	jl	.Lj755
# Var k located in register r8d
.Ll260:
# [693] k:=76800;
	movl	$76800,%r8d
# Var i located in register esi
.Ll261:
# [694] for i:=40 to 1159 do
	movl	$40,%esi
	subl	$1,%esi
	.balign 8,0x90
.Lj765:
	addl	$1,%esi
.Ll262:
# [696] for j:=0 to 63 do begin {if peek($70001)=0 then b:=lpeek($10000+4*((i div 4)+lpeek($60000) ) mod 1024); } (pi+k)^:=b; k+=1; end;
	movl	$0,%r9d
	subl	$1,%r9d
	.balign 8,0x90
.Lj768:
	addl	$1,%r9d
	movslq	%r8d,%rax
	shlq	$2,%rax
	leaq	(%rax,%rcx),%rax
	movl	%r11d,(%rax)
	leal	1(%r8d),%eax
	movl	%eax,%r8d
	cmpl	$63,%r9d
	jl	.Lj768
.Ll263:
# [697] for j:=0 to 1791 do begin
	movl	$0,%r9d
	subl	$1,%r9d
	.balign 8,0x90
.Lj775:
	addl	$1,%r9d
.Ll264:
# [698] (pi+k)^:=raml^[$4000+ramw^[buf+l]]; k+=1; l+=1; end;
	movq	U_$RETRO_$$_R1(%rip),%rdi
	movq	U_$RETRO_$$_R1(%rip),%r12
	movslq	%edx,%rax
	movslq	%r10d,%rbx
	leaq	(%rax,%rbx),%rax
	movzwl	(%r12,%rax,2),%r12d
	movslq	%r8d,%rax
	shlq	$2,%rax
	leaq	(%rax,%rcx),%rbx
	movl	65536(%rdi,%r12,4),%eax
	movl	%eax,(%rbx)
	leal	1(%r8d),%eax
	movl	%eax,%r8d
	leal	1(%r10d),%eax
	movl	%eax,%r10d
.Ll265:
	cmpl	$1791,%r9d
	jl	.Lj775
.Ll266:
# [699] for j:=0 to 63 do begin (pi+k)^:=b; k+=1; end;
	movl	$0,%r9d
	subl	$1,%r9d
	.balign 8,0x90
.Lj784:
	addl	$1,%r9d
	movslq	%r8d,%rax
	shlq	$2,%rax
	leaq	(%rax,%rcx),%rax
	movl	%r11d,(%rax)
	leal	1(%r8d),%eax
	movl	%eax,%r8d
	cmpl	$63,%r9d
	jl	.Lj784
.Ll267:
	cmpl	$1159,%esi
	jl	.Lj765
# Var i located in register edx
.Ll268:
# [701] for i:=1160 to 1199 do begin {if peek($70001)=0 then b:=lpeek($10000+4*((i div 4)+lpeek($60000) ) mod 1024); }for j:=0 to 1919  do (pi+i*1920+j)^:=b; end;
	movl	$1160,%edx
	subl	$1,%edx
	.balign 8,0x90
.Lj791:
	addl	$1,%edx
	movl	$0,%r9d
	subl	$1,%r9d
	.balign 8,0x90
.Lj794:
	addl	$1,%r9d
	movslq	%edx,%rax
	imulq	$1920,%rax,%rax
	shlq	$2,%rax
	leaq	(%rax,%rcx),%r8
	movslq	%r9d,%rax
	shlq	$2,%rax
	leaq	(%r8,%rax),%rax
	movl	%r11d,(%rax)
	cmpl	$1919,%r9d
	jl	.Lj794
	cmpl	$1199,%edx
	jl	.Lj791
.Ll269:
# [703] end;
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc50:
.Lt4:
.Ll270:

.section .text.n_retro_$$_sprite$pointer,"x"
	.balign 16,0x90
.globl	RETRO_$$_SPRITE$POINTER
RETRO_$$_SPRITE$POINTER:
.Lc51:
# Temps allocated between rsp+32 and rsp+128
.seh_proc RETRO_$$_SPRITE$POINTER
.Ll271:
# [723] begin
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
.Lc53:
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
.Ll272:
# [724] pi:=screen;
	movq	%rcx,%r15
# Var screen located in register r15
	movq	%r15,%r13
# Var spritebase located in register r14d
.Ll273:
# [725] spritebase:=$60040;
	movl	$393280,%r14d
# Var spritedefs located in register esi
.Ll274:
# [726] spritedefs:=$52000;
	movl	$335872,%esi
.Ll275:
# [727] t:=gettime;
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,U_$RETRO_$$_T(%rip)
# Var i located in register ebx
.Ll276:
# [728] for i:=0 to 7 do
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj809:
	addl	$1,%ebx
.Ll277:
# [730] mask:=1 shl (i+24);
	movslq	%ebx,%rax
	leaq	24(%rax),%rax
	movl	$1,%edx
	movl	%eax,%ecx
	movl	%edx,%eax
	movslq	%ecx,%rcx
	shll	%cl,%eax
	movl	%eax,%ebp
.Ll278:
# [731] ctrl1:=lpeek(spritebase);
	movl	%r14d,%ecx
	call	RETRO_$$_LPEEK$LONGINT$$LONGWORD
	movl	%eax,%edx
	movq	%rdx,104(%rsp)
.Ll279:
# [732] spritebase+=4;
	leal	4(%r14d),%eax
	movl	%eax,%r14d
.Ll280:
# [733] ypos:=ctrl1 shr 16;
	movl	104(%rsp),%eax
# PeepHole Optimization,var2
# P=movl
# HP1=shrl
# HP2=movl
# PeepHole Optimization,var2
	shrl	$16,%eax
	movq	%rax,80(%rsp)
.Ll281:
# [734] xpos:=ctrl1 and $FFFF;
	movl	104(%rsp),%eax
	movl	%eax,%edx
	andl	$65535,%edx
	movl	%edx,%eax
	movq	%rax,88(%rsp)
.Ll282:
# [735] ctrl1:=lpeek(spritebase);
	movl	%r14d,%ecx
	call	RETRO_$$_LPEEK$LONGINT$$LONGWORD
	movl	%eax,%edx
	movq	%rdx,104(%rsp)
.Ll283:
# [736] spritebase+=4;
	leal	4(%r14d),%eax
	movl	%eax,%r14d
.Ll284:
# [737] yzoom:=(ctrl1 shr 16) and $7FFF ;
	movl	104(%rsp),%eax
	movl	%eax,%edx
	shrl	$16,%edx
	andl	$32767,%edx
	movl	%edx,%eax
	movq	%rax,72(%rsp)
.Ll285:
# [738] if yzoom>8 then yzoom:=8;
	movl	72(%rsp),%eax
	cmpl	$8,%eax
	jng	.Lj831
	movl	$8,%eax
	movq	%rax,72(%rsp)
.Lj831:
.Ll286:
# [739] if yzoom<1 then yzoom:=1;
	movl	72(%rsp),%eax
	cmpl	$1,%eax
	jnl	.Lj835
	movl	$1,%eax
	movq	%rax,72(%rsp)
.Lj835:
.Ll287:
# [740] xzoom:=ctrl1 and $7FFF ;
	movl	104(%rsp),%eax
	movl	%eax,%edx
	andl	$32767,%edx
	movl	%edx,%eax
	movq	%rax,64(%rsp)
.Ll288:
# [741] if xzoom>8 then xzoom:=8;
	movl	64(%rsp),%eax
	cmpl	$8,%eax
	jng	.Lj841
	movl	$8,%eax
	movq	%rax,64(%rsp)
.Lj841:
.Ll289:
# [742] if xzoom<1 then xzoom:=1;
	movl	64(%rsp),%eax
	cmpl	$1,%eax
	jnl	.Lj845
	movl	$1,%eax
	movq	%rax,64(%rsp)
.Lj845:
.Ll290:
# [743] if (xpos>2048) or (ypos>2048) then
	movl	88(%rsp),%eax
	cmpl	$2048,%eax
	jg	.Lj848
	movl	80(%rsp),%eax
	cmpl	$2048,%eax
	jng	.Lj849
.Lj848:
.Ll291:
# [745] spritedefs+=4096;
	leal	4096(%esi),%eax
	movl	%eax,%esi
.Ll292:
# [746] goto p100;
	jmp	.Lj853
.Lj849:
.Ll293:
# [748] for l:=0 to 31 do
	movl	$0,%eax
	movq	%rax,56(%rsp)
# PeepHole Optimization,var2
# P=movl
# HP1=subl
# HP2=movq
# PeepHole Optimization,var2
	subl	$1,56(%rsp)
	.balign 8,0x90
.Lj856:
# PeepHole Optimization,var2
# P=movl
# HP1=addl
# HP2=movq
# PeepHole Optimization,var2
	addl	$1,56(%rsp)
.Ll294:
# [750] for m:=1 to yzoom do
	movl	72(%rsp),%eax
	movl	%eax,%r12d
	movl	$1,%eax
	movq	%rax,48(%rsp)
	movl	48(%rsp),%eax
	cmpl	%eax,%r12d
	jl	.Lj860
# PeepHole Optimization,var2
# P=movl
# HP1=subl
# HP2=movq
# PeepHole Optimization,var2
	subl	$1,48(%rsp)
	.balign 8,0x90
.Lj861:
# PeepHole Optimization,var2
# P=movl
# HP1=addl
# HP2=movq
# PeepHole Optimization,var2
	addl	$1,48(%rsp)
.Ll295:
# [752] offset:=xpos+1920*(ypos+yzoom*l+m-1);
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
.Ll296:
# [753] screenbase:=pi+offset;
	movslq	120(%rsp),%rax
	shlq	$2,%rax
	leaq	(%rax,%r13),%rax
	movq	%rax,96(%rsp)
.Ll297:
# [754] for j:=0 to 31 do
	movl	$0,%eax
	movq	%rax,40(%rsp)
# PeepHole Optimization,var2
# P=movl
# HP1=subl
# HP2=movq
# PeepHole Optimization,var2
	subl	$1,40(%rsp)
	.balign 8,0x90
.Lj868:
# PeepHole Optimization,var2
# P=movl
# HP1=addl
# HP2=movq
# PeepHole Optimization,var2
	addl	$1,40(%rsp)
.Ll298:
# [756] for k:=1 to xzoom do
	movl	64(%rsp),%eax
	movl	%eax,%edi
	movl	$1,%eax
	movq	%rax,32(%rsp)
	movl	32(%rsp),%eax
	cmpl	%eax,%edi
	jl	.Lj872
# PeepHole Optimization,var2
# P=movl
# HP1=subl
# HP2=movq
# PeepHole Optimization,var2
	subl	$1,32(%rsp)
	.balign 8,0x90
.Lj873:
# PeepHole Optimization,var2
# P=movl
# HP1=addl
# HP2=movq
# PeepHole Optimization,var2
	addl	$1,32(%rsp)
.Ll299:
# [758] pixel:=lpeek(spritedefs);
	movl	%esi,%ecx
	call	RETRO_$$_LPEEK$LONGINT$$LONGWORD
	movl	%eax,%edx
	movq	%rdx,112(%rsp)
.Ll300:
# [759] if ((screenbase^ and mask)=0) and (offset<2304000) and (pixel<>0) then screenbase^:=pixel;
	movq	96(%rsp),%rax
	movl	(%rax),%edx
	movl	%ebp,%eax
	andl	%edx,%eax
	testl	%eax,%eax
	jne	.Lj879
	movl	120(%rsp),%eax
	cmpl	$2304000,%eax
	jnl	.Lj879
	movl	112(%rsp),%eax
	testl	%eax,%eax
	je	.Lj879
	movl	112(%rsp),%eax
	movq	96(%rsp),%rdx
	movl	%eax,(%rdx)
.Lj879:
.Ll301:
# [760] screenbase+=1;
	movq	96(%rsp),%rdx
	leaq	4(%rdx),%rax
	movq	%rax,96(%rsp)
.Ll302:
	movl	32(%rsp),%eax
	cmpl	%eax,%edi
	jg	.Lj873
.Lj872:
.Ll303:
# [762] spritedefs+=4;
	leal	4(%esi),%eax
	movl	%eax,%esi
.Ll304:
	movl	40(%rsp),%eax
	cmpl	$31,%eax
	jl	.Lj868
.Ll305:
# [765] end;
	leal	-128(%esi),%eax
.Ll306:
# [764] spritedefs-=128
	movl	%eax,%esi
.Ll307:
	movl	48(%rsp),%eax
	cmpl	%eax,%r12d
	jg	.Lj861
.Lj860:
.Ll308:
# [766] spritedefs+=128;
	leal	128(%esi),%eax
	movl	%eax,%esi
.Ll309:
	movl	56(%rsp),%eax
	cmpl	$31,%eax
	jl	.Lj856
.Lj853:
.Ll310:
	cmpl	$7,%ebx
	jl	.Lj809
.Ll311:
# [770] ts:=gettime-t;
	call	RETRO_$$_GETTIME$$INT64
	movq	U_$RETRO_$$_T(%rip),%rdx
	subq	%rdx,%rax
	movq	%rax,U_$RETRO_$$_TS(%rip)
.Ll312:
# [772] end;
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
.Lc52:
.Lt34:
.Ll313:

.section .text.n_retro_$$_setataripallette$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_SETATARIPALLETTE$LONGINT
RETRO_$$_SETATARIPALLETTE$LONGINT:
.Lc54:
.seh_proc RETRO_$$_SETATARIPALLETTE$LONGINT
.Ll314:
# [780] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc56:
.seh_stackalloc 40
# Var bank located in register ebx
# Var fh located in register esi
.seh_endprologue
	movl	%ecx,%ebx
.Ll315:
# [781] fh:=fileopen('./ataripalette.def',$40);
	leaq	_$RETRO$_Ld9(%rip),%rcx
	movl	$64,%edx
	call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$LONGINT$$QWORD
	movq	%rax,%rsi
# Var fh located in register esi
.Ll316:
# [782] fileread(fh,raml^[$4000+256*bank],1024);
	movq	U_$RETRO_$$_R1(%rip),%rax
	movslq	%ebx,%rbx
	shlq	$8,%rbx
	leaq	65536(%rax,%rbx,4),%rdx
	movslq	%esi,%rcx
	movl	$1024,%r8d
	call	SYSUTILS_$$_FILEREAD$QWORD$formal$LONGINT$$LONGINT
.Ll317:
# [783] fileclose(fh);
	movslq	%esi,%rcx
	call	SYSUTILS_$$_FILECLOSE$QWORD
.Ll318:
# [784] end;
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc55:
.Lt5:
.Ll319:

.section .text.n_retro_$$_sethidecolor$longint$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
RETRO_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT:
.Lc57:
# Var c located in register eax
# Var bank located in register edx
# Var mask located in register r8d
.Ll320:
# [788] begin
	movl	%ecx,%eax
.Ll321:
# [789] raml^[$4000+256*bank+c]+=(mask shl 24);
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
.Ll322:
# [790] end;
	ret
.Lc58:
.Lt23:
.Ll323:

.section .text.n_retro_$$_cls$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_CLS$LONGINT
RETRO_$$_CLS$LONGINT:
.Lc59:
# Var c located in register edx
# Var c2 located in register eax
# Var i located in register r8d
# Var l located in register eax
.Ll324:
# [796] begin
	movl	%ecx,%eax
.Ll325:
# [797] c:=c mod 65535;
	movslq	%eax,%rax
	cqto
	movq	$65535,%rcx
	idivq	%rcx
# Var c located in register edx
.Ll326:
# [799] l:=(raml^[$18008]*raml^[$18009]) div 2 ;
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
.Ll327:
# [800] c:=c+(c shl 16);
	movl	%edx,%ecx
	shll	$16,%ecx
	leal	(%ecx,%edx),%edx
# Var c located in register edx
# Var l located in register eax
# Var i located in register r8d
.Ll328:
# [801] for i:=0 to l do raml^[$3C00000+i]:=c;
	movl	$0,%r8d
	cmpl	%r8d,%eax
	jl	.Lj927
	subl	$1,%r8d
	.balign 8,0x90
.Lj928:
	addl	$1,%r8d
	movq	U_$RETRO_$$_R1(%rip),%r9
	movslq	%r8d,%rcx
	movl	%edx,251658240(%r9,%rcx,4)
	cmpl	%r8d,%eax
	jg	.Lj928
.Lj927:
.Ll329:
# [803] end;
	ret
.Lc60:
.Lt6:
.Ll330:

.section .text.n_retro_$$_putpixel$longint$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
RETRO_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT:
.Lc61:
# Var x located in register ecx
# Var y located in register edx
# Var color located in register r8d
# Var adr located in register eax
# [817] begin
.Ll331:
# [819] if raml^[$18002]<16 then
	movq	U_$RETRO_$$_R1(%rip),%rax
	cmpl	$16,393224(%rax)
	jnl	.Lj934
.Ll332:
# [820] begin adr:=$F000000+x+1792*y; if adr<$FFFFFFF then ramb^[adr]:=color; end
	imull	$1792,%edx,%eax
	leal	251658240(%ecx),%r9d
	leal	(%eax,%r9d),%eax
	cmpl	$268435455,%eax
	jnl	.Lj941
	movq	U_$RETRO_$$_R1(%rip),%r11
# PeepHole Optimization,var2a
	movl	%eax,%r9d
	movb	%r8b,%r10b
	movb	%r10b,(%r11,%r9,1)
	jmp	.Lj941
.Lj934:
.Ll333:
# [821] else if (raml^[$18002]>=16) and (raml^[$18002]<32) then
	movq	U_$RETRO_$$_R1(%rip),%r9
.Ll334:
	movl	393224(%r9),%r9d
.Ll335:
	cmpl	$16,%r9d
	jnge	.Lj943
	cmpl	$32,%r9d
	jnl	.Lj943
.Ll336:
# [822] begin adr:=$7800000+x+1792*y; if adr<$7FFFFFF then ramw^[adr]:=color; end
	imull	$1792,%edx,%r9d
	leal	125829120(%ecx),%r10d
	leal	(%r9d,%r10d),%r9d
	movl	%r9d,%eax
	cmpl	$134217727,%eax
	jnl	.Lj953
	movq	U_$RETRO_$$_R1(%rip),%r11
# PeepHole Optimization,var2a
	movl	%eax,%r9d
	movw	%r8w,%r10w
	movw	%r10w,(%r11,%r9,2)
	jmp	.Lj953
.Lj943:
.Ll337:
# [824] begin adr:=$3c00000+x+1792*y; if adr<$3FFFFFF then raml^[adr]:=color; end;
	imull	$1792,%edx,%r9d
	leal	62914560(%ecx),%edx
	leal	(%r9d,%edx),%edx
	movl	%edx,%eax
	cmpl	$67108863,%eax
	jnl	.Lj957
	movq	U_$RETRO_$$_R1(%rip),%rdx
	andl	$4294967295,%eax
	movl	%r8d,(%rdx,%rax,4)
.Lj957:
.Lj953:
.Lj941:
.Ll338:
# [825] end;
	ret
.Lc62:
.Lt7:
.Ll339:

.section .text.n_retro_$$_box$longint$longint$longint$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
.Lc63:
# Temps allocated between rbp-48 and rbp+0
.seh_proc RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll340:
# [843] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc65:
.Lc66:
	movq	%rsp,%rbp
.Lc67:
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
.Ll341:
# [845] if x<0 then x:=0;
	cmpl	$0,%ecx
	jnl	.Lj963
	movl	$0,%ecx
.Lj963:
.Ll342:
# [846] if x>1792 then x:=1792;
	cmpl	$1792,%ecx
	jng	.Lj967
	movl	$1792,%ecx
.Lj967:
.Ll343:
# [847] if y<0 then y:=0;
	cmpl	$0,%edx
	jnl	.Lj971
	movl	$0,%edx
.Lj971:
.Ll344:
# [848] if y>1120 then y:=1120;
	cmpl	$1120,%edx
	jng	.Lj975
	movl	$1120,%edx
.Lj975:
.Ll345:
# [849] if x+l>1792 then l:=1792-x-1;
	movslq	%ecx,%rax
	movslq	%r8d,%r10
	leaq	(%rax,%r10),%rax
	cmpq	$1792,%rax
	jng	.Lj979
	movl	$1792,%eax
	subl	%ecx,%eax
	leal	-1(%eax),%eax
	movl	%eax,%r8d
.Lj979:
.Ll346:
# [850] if y+h>1120 then h:=1120-y-1 ;
	movslq	%edx,%rax
	movslq	%r9d,%r10
	leaq	(%rax,%r10),%rax
	cmpq	$1120,%rax
	jng	.Lj983
	movl	$1120,%eax
	subl	%edx,%eax
	leal	-1(%eax),%eax
	movl	%eax,%r9d
.Lj983:
.Ll347:
# [851] if raml^[$18002]<16 then
	movq	U_$RETRO_$$_R1(%rip),%rax
	cmpl	$16,393224(%rax)
	jnl	.Lj987
.Ll348:
# [853] for j:=y to y+h-1 do
	leal	(%edx,%r9d),%eax
	leal	-1(%eax),%eax
	movl	%edx,%r10d
	cmpl	%r10d,%eax
	jl	.Lj1002
	subl	$1,%r10d
	.balign 8,0x90
.Lj992:
	addl	$1,%r10d
.Ll349:
# [855] adr:=$F000000+1792*j;
	imull	$1792,%r10d,%esi
	leal	251658240(%esi),%esi
	movl	%esi,%ebx
.Ll350:
# [856] for i:=x to x+l-1 do ramb^[adr+i]:=c;
	leal	(%ecx,%r8d),%esi
	leal	-1(%esi),%esi
	movl	%ecx,%edi
	cmpl	%edi,%esi
	jl	.Lj998
	subl	$1,%edi
	.balign 8,0x90
.Lj999:
	addl	$1,%edi
	movq	U_$RETRO_$$_R1(%rip),%r14
	movslq	%ebx,%r12
	movslq	%edi,%r13
	leaq	(%r12,%r13),%r13
	movb	%r11b,%r12b
	movb	%r12b,(%r14,%r13,1)
	cmpl	%edi,%esi
	jg	.Lj999
.Lj998:
.Ll351:
	cmpl	%r10d,%eax
	jg	.Lj992
	jmp	.Lj1002
.Lj987:
.Ll352:
# [859] else if (raml^[$18002]>=16) and (raml^[$18002]<32) then
	movq	U_$RETRO_$$_R1(%rip),%rax
.Ll353:
	movl	393224(%rax),%eax
.Ll354:
	cmpl	$16,%eax
	jnge	.Lj1004
	cmpl	$32,%eax
	jnl	.Lj1004
.Ll355:
# [861] for j:=y to y+h-1 do
	leal	(%edx,%r9d),%eax
	leal	-1(%eax),%eax
	movl	%edx,%r10d
	cmpl	%r10d,%eax
	jl	.Lj1022
	subl	$1,%r10d
	.balign 8,0x90
.Lj1012:
	addl	$1,%r10d
.Ll356:
# [863] adr:=$7800000+1792*j;
	imull	$1792,%r10d,%esi
	leal	125829120(%esi),%esi
	movl	%esi,%ebx
.Ll357:
# [864] for i:=x to x+l-1 do ramw^[adr+i]:=c;
	leal	(%ecx,%r8d),%esi
	leal	-1(%esi),%esi
	movl	%ecx,%edi
	cmpl	%edi,%esi
	jl	.Lj1018
	subl	$1,%edi
	.balign 8,0x90
.Lj1019:
	addl	$1,%edi
	movq	U_$RETRO_$$_R1(%rip),%r14
	movslq	%ebx,%r12
	movslq	%edi,%r13
	leaq	(%r12,%r13),%r13
	movw	%r11w,%r12w
	movw	%r12w,(%r14,%r13,2)
	cmpl	%edi,%esi
	jg	.Lj1019
.Lj1018:
.Ll358:
	cmpl	%r10d,%eax
	jg	.Lj1012
	jmp	.Lj1022
.Lj1004:
.Ll359:
# [869] for j:=y to y+h-1 do
	leal	(%edx,%r9d),%eax
	leal	-1(%eax),%eax
	movl	%edx,%r10d
	cmpl	%r10d,%eax
	jl	.Lj1026
	subl	$1,%r10d
	.balign 8,0x90
.Lj1027:
	addl	$1,%r10d
.Ll360:
# [871] adr:=$3c00000+1792*j;
	imull	$1792,%r10d,%edx
	leal	62914560(%edx),%edx
	movl	%edx,%ebx
.Ll361:
# [872] for i:=x to x+l-1 do raml^[adr+i]:=c;
	leal	(%ecx,%r8d),%edx
	leal	-1(%edx),%edx
	movl	%ecx,%edi
	cmpl	%edi,%edx
	jl	.Lj1033
	subl	$1,%edi
	.balign 8,0x90
.Lj1034:
	addl	$1,%edi
	movq	U_$RETRO_$$_R1(%rip),%r12
	movslq	%ebx,%r9
	movslq	%edi,%rsi
	leaq	(%r9,%rsi),%r9
	movl	%r11d,(%r12,%r9,4)
	cmpl	%edi,%edx
	jg	.Lj1034
.Lj1033:
.Ll362:
	cmpl	%r10d,%eax
	jg	.Lj1027
.Lj1026:
.Lj1022:
.Lj1002:
.Ll363:
# [875] end;
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
.Lc64:
.Lt12:
.Ll364:

.section .text.n_retro_$$_box2$longint$longint$longint$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
.Lc68:
.seh_proc RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Ll365:
# [887] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc70:
.Lc71:
	movq	%rsp,%rbp
.Lc72:
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
.Ll366:
# [890] if (x1<x2) and (y1<y2) then
	cmpl	%r8d,%eax
	jnl	.Lj1040
	cmpl	%r9d,%edx
	jnl	.Lj1040
.Ll367:
# [891] box(x1,y1,x2-x1+1, y2-y1+1,color);
	movl	%ecx,32(%rsp)
	subl	%edx,%r9d
	leal	1(%r9d),%r9d
	subl	%eax,%r8d
	leal	1(%r8d),%r8d
	movl	%eax,%ecx
	call	RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Lj1040:
.Ll368:
# [893] end;
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc69:
.Lt13:
.Ll369:

.section .text.n_retro_$$_putchar$longint$longint$char$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT
RETRO_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT:
.Lc73:
.seh_proc RETRO_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT
.Ll370:
# [911] begin
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
.Lc75:
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
.Ll371:
# [912] start:=$50000+16*ord(ch);
	andl	$255,%r8d
	shll	$4,%r8d
	leal	327680(%r8d),%r12d
# Var start located in register r12d
# Var i located in register r15d
.Ll372:
# [913] for i:=0 to 15 do
	movl	$0,%r15d
	subl	$1,%r15d
	.balign 8,0x90
.Lj1058:
	addl	$1,%r15d
.Ll373:
# [915] b:=ramb^[start+i];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	%r12d,%rax
	movslq	%r15d,%rdx
	leaq	(%rax,%rdx),%rax
	movb	(%rcx,%rax,1),%r13b
.Ll374:
# [916] for j:=0 to 7 do
	movl	$0,%r14d
	subl	$1,%r14d
	.balign 8,0x90
.Lj1063:
	addl	$1,%r14d
.Ll375:
# [918] if (b and (1 shl j))<>0 then
	movslq	%r14d,%rcx
	movl	$1,%eax
	movslq	%ecx,%rcx
	shll	%cl,%eax
	movzbl	%r13b,%edx
	andl	%eax,%edx
	testl	%edx,%edx
	je	.Lj1065
.Ll376:
# [919] putpixel(x+j,y+i,col);
	leal	(%esi,%r15d),%edx
	leal	(%ebx,%r14d),%ecx
	movl	%edi,%r8d
	call	RETRO_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
.Lj1065:
.Ll377:
	cmpl	$7,%r14d
	jl	.Lj1063
.Ll378:
	cmpl	$15,%r15d
	jl	.Lj1058
.Ll379:
# [922] end;
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
.Lc74:
.Lt8:
.Ll380:

.section .text.n_retro_$$_putcharz$longint$longint$char$longint$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT
RETRO_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT:
.Lc76:
# Temps allocated between rbp-104 and rbp+0
.seh_proc RETRO_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT
.Ll381:
# [931] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc78:
.Lc79:
	movq	%rsp,%rbp
.Lc80:
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
.Ll382:
# [932] start:=$50000+16*ord(ch);
	andl	$255,%r8d
	shll	$4,%r8d
	leal	327680(%r8d),%eax
# Var start located in register eax
	movl	%eax,%edx
	movq	%rdx,-8(%rbp)
# Var i located in register r14d
.Ll383:
# [933] for i:=0 to 15 do
	movl	$0,%r14d
	subl	$1,%r14d
	.balign 8,0x90
.Lj1078:
	addl	$1,%r14d
.Ll384:
# [935] b:=ramb^[start+i];
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movslq	-8(%rbp),%rdx
	movslq	%r14d,%rax
	leaq	(%rdx,%rax),%rax
	movb	(%rcx,%rax,1),%r15b
.Ll385:
# [936] for j:=0 to 7 do
	movl	$0,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj1083:
	addl	$1,%edi
.Ll386:
# [938] if (b and (1 shl j))<>0 then
	movslq	%edi,%rax
	movl	$1,%edx
	movl	%eax,%ecx
	movslq	%ecx,%rcx
	shll	%cl,%edx
	movzbl	%r15b,%eax
	andl	%edx,%eax
	testl	%eax,%eax
	je	.Lj1085
.Ll387:
# [939] for k:=0 to yz-1 do
	movl	-24(%rbp),%edx
	leal	-1(%edx),%eax
	movl	%eax,%r13d
	movl	$0,%ebx
	cmpl	%ebx,%r13d
	jl	.Lj1089
	subl	$1,%ebx
	.balign 8,0x90
.Lj1090:
	addl	$1,%ebx
.Ll388:
# [940] for l:=0 to xz-1 do
	movl	-16(%rbp),%eax
	leal	-1(%eax),%edx
	movl	%edx,%r12d
	movl	$0,%esi
	cmpl	%esi,%r12d
	jl	.Lj1094
	subl	$1,%esi
	.balign 8,0x90
.Lj1095:
	addl	$1,%esi
.Ll389:
# [941] putpixel(x+j*xz+l,y+i*yz+k,col);
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
.Ll390:
	cmpl	%esi,%r12d
	jg	.Lj1095
.Lj1094:
.Ll391:
	cmpl	%ebx,%r13d
	jg	.Lj1090
.Lj1089:
.Lj1085:
.Ll392:
	cmpl	$7,%edi
	jl	.Lj1083
.Ll393:
	cmpl	$15,%r14d
	jl	.Lj1078
.Ll394:
# [944] end;
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
.Lc77:
.Lt24:
.Ll395:

.section .text.n_retro$_$outtextxy$crc6744c382_$$_fin$0,"x"
	.balign 16,0x90
RETRO$_$OUTTEXTXY$crc6744C382_$$_fin$0:
.Lc81:
.seh_proc RETRO$_$OUTTEXTXY$crc6744C382_$$_fin$0
.Ll396:
# [950] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc83:
.Lc84:
	movq	%rcx,%rbp
.Lc85:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
# Var $parentfp located in register rbp
.seh_endprologue
.Ll397:
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc82:
.Lt10:
.Ll398:

.section .text.n_retro_$$_outtextxy$longint$longint$ansistring$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT:
.Lc86:
# Temps allocated between rbp-48 and rbp-8
.seh_proc RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
.Ll399:
	pushq	%rbp
.seh_pushreg %rbp
.Lc88:
.Lc89:
	movq	%rsp,%rbp
.Lc90:
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
.Lj1110:
.Ll400:
# [951] for i:=1 to length(t) do putchar(x+8*i-8,y,t[i],c);
	nop
.Lj1106:
	movq	-8(%rbp),%r12
	testq	%r12,%r12
	je	.Lj1113
	movq	-8(%r12),%r12
.Lj1113:
	movl	$1,%r13d
	cmpl	%r13d,%r12d
	jl	.Lj1115
	subl	$1,%r13d
	.balign 8,0x90
.Lj1116:
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
	jg	.Lj1116
.Lj1115:
.Lj1125:
	nop
.Lj1107:
	movq	%rbp,%rcx
	call	RETRO$_$OUTTEXTXY$crc6744C382_$$_fin$0
.Ll401:
# [952] end;
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
	.rva	.Lj1106
	.rva	.Lj1107
	.rva	RETRO$_$OUTTEXTXY$crc6744C382_$$_fin$0

.section .text.n_retro_$$_outtextxy$longint$longint$ansistring$longint,"x"
.seh_endproc
.Lc87:
.Lt9:
.Ll402:

.section .text.n_retro$_$outtextxyz$crcca10a6fc_$$_fin$1,"x"
	.balign 16,0x90
RETRO$_$OUTTEXTXYZ$crcCA10A6FC_$$_fin$1:
.Lc91:
.seh_proc RETRO$_$OUTTEXTXYZ$crcCA10A6FC_$$_fin$1
.Ll403:
# [958] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc93:
.Lc94:
	movq	%rcx,%rbp
.Lc95:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
# Var $parentfp located in register rbp
.seh_endprologue
.Ll404:
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc92:
.Lt26:
.Ll405:

.section .text.n_retro_$$_outtextxyz$longint$longint$ansistring$longint$longint$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT:
.Lc96:
# Temps allocated between rbp-64 and rbp-8
.seh_proc RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Ll406:
	pushq	%rbp
.seh_pushreg %rbp
.Lc98:
.Lc99:
	movq	%rsp,%rbp
.Lc100:
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
.Lj1136:
.Ll407:
# [959] for i:=0 to length(t)-1 do putcharz(x+8*xz*i,y,t[i+1],c,xz,yz);
	nop
.Lj1132:
	movq	-8(%rbp),%rax
	testq	%rax,%rax
	je	.Lj1139
	movq	-8(%rax),%rax
.Lj1139:
	leaq	-1(%rax),%rax
	movl	%eax,%r12d
	movl	$0,%r13d
	cmpl	%r13d,%r12d
	jl	.Lj1141
	subl	$1,%r13d
	.balign 8,0x90
.Lj1142:
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
	jg	.Lj1142
.Lj1141:
.Lj1155:
	nop
.Lj1133:
	movq	%rbp,%rcx
	call	RETRO$_$OUTTEXTXYZ$crcCA10A6FC_$$_fin$1
.Ll408:
# [960] end;
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
	.rva	.Lj1132
	.rva	.Lj1133
	.rva	RETRO$_$OUTTEXTXYZ$crcCA10A6FC_$$_fin$1

.section .text.n_retro_$$_outtextxyz$longint$longint$ansistring$longint$longint$longint,"x"
.seh_endproc
.Lc97:
.Lt25:
.Ll409:

.section .text.n_retro_$$_scrollup,"x"
	.balign 16,0x90
.globl	RETRO_$$_SCROLLUP
RETRO_$$_SCROLLUP:
.Lc101:
# Var i located in register edx
# [966] begin
# Var i located in register edx
.Ll410:
# [967] for i:=0 to 447 do raml^[$3c7a800+i]:=raml^[$3c00000+i];
	movl	$0,%edx
	subl	$1,%edx
	.balign 8,0x90
.Lj1162:
	addl	$1,%edx
	movq	U_$RETRO_$$_R1(%rip),%r8
	movslq	%edx,%rax
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movl	251658240(%rcx,%rax,4),%ecx
	movl	%ecx,253665280(%r8,%rax,4)
	cmpl	$447,%edx
	jl	.Lj1162
# Var i located in register edx
.Ll411:
# [968] for i:=0 to 501760 do raml^[$3C00000+i]:=raml^[$3c001c0+i];
	movl	$0,%edx
	subl	$1,%edx
	.balign 8,0x90
.Lj1169:
	addl	$1,%edx
	movq	U_$RETRO_$$_R1(%rip),%r8
	movslq	%edx,%rax
	movq	U_$RETRO_$$_R1(%rip),%rcx
	movl	251660032(%rcx,%rax,4),%ecx
	movl	%ecx,251658240(%r8,%rax,4)
	cmpl	$501760,%edx
	jl	.Lj1169
.Ll412:
# [969] end;
	ret
.Lc102:
.Lt27:
.Ll413:

.section .text.n_retro_$$_noise1$$byte,"x"
	.balign 16,0x90
.globl	RETRO_$$_NOISE1$$BYTE
RETRO_$$_NOISE1$$BYTE:
.Lc103:
# Var $result located in register al
# Var output located in register eax
# Var b located in register dl
# [988] begin
.Ll414:
# [989] output:= (a and b22) shr 15;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%edx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B22(%rip),%eax
	andl	%edx,%eax
	shrl	$15,%eax
# Var output located in register eax
.Ll415:
# [990] output+= (a and b20) shr 14;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%ecx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B20(%rip),%edx
	andl	%ecx,%edx
	shrl	$14,%edx
	leal	(%edx,%eax),%eax
# Var output located in register eax
.Ll416:
# [991] output+= (a and b16) shr 11;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%ecx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B16(%rip),%edx
	andl	%ecx,%edx
	shrl	$11,%edx
	leal	(%edx,%eax),%eax
# Var output located in register eax
.Ll417:
# [992] output+= (a and b13) shr 9;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%ecx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B13(%rip),%edx
	andl	%ecx,%edx
	shrl	$9,%edx
	leal	(%edx,%eax),%eax
# Var output located in register eax
.Ll418:
# [993] output+= (a and b11) shr 8;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%ecx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B11(%rip),%edx
	andl	%ecx,%edx
	shrl	$8,%edx
	leal	(%edx,%eax),%eax
# Var output located in register eax
.Ll419:
# [994] output+= (a and b07) shr 5;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%ecx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B07(%rip),%edx
	andl	%ecx,%edx
	shrl	$5,%edx
	leal	(%edx,%eax),%eax
# Var output located in register eax
.Ll420:
# [995] output+= (a and b04) shr 3;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%ecx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B04(%rip),%edx
	andl	%ecx,%edx
	shrl	$3,%edx
	leal	(%edx,%eax),%eax
# Var output located in register eax
.Ll421:
# [996] output+= (a and b02) shr 2;
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%ecx
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_B02(%rip),%edx
	andl	%ecx,%edx
	shrl	$2,%edx
	leal	(%edx,%eax),%eax
# Var output located in register eax
.Ll422:
	movl	TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip),%ecx
.Ll423:
# [998] b:=((a and b22)>0) xor ((a and b17)>0);
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
.Ll424:
# [999] a:=a shl 1;
	shll	$1,TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip)
.Ll425:
# [1000] if b then a:=a or 1;
	testb	%dl,%dl
	je	.Lj1199
# PeepHole Optimization,var2
# P=movl
# HP1=orl
# HP2=movl
# PeepHole Optimization,var2
	orl	$1,TC_$RETRO$_$NOISE1$$BYTE_$$_A(%rip)
.Lj1199:
# Var $result located in register al
# PeepHole Optimization,var9
.Ll426:
# [1002] end;
	andl	$255,%eax
	ret
.Lc104:
.Lt39:
.Ll427:

.section .text.n_retro_$$_noise2$$longword,"x"
	.balign 16,0x90
.globl	RETRO_$$_NOISE2$$LONGWORD
RETRO_$$_NOISE2$$LONGWORD:
.Lc105:
# Var $result located in register eax
# Var output located in register rax
# Var b located in register dl
# [1012] begin
.Ll428:
# [1013] output:= (a and 4194304) shr 15;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rax
	andq	$4194304,%rax
	shrq	$15,%rax
# Var output located in register rax
.Ll429:
# [1014] output+= (a and 1048576) shr 14;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rdx
	andq	$1048576,%rdx
	shrq	$14,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll430:
# [1015] output+= (a and 65536) shr 11;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rdx
	andq	$65536,%rdx
	shrq	$11,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll431:
# [1016] output+= (a and 8192) shr 9;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rdx
	andq	$8192,%rdx
	shrq	$9,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll432:
# [1017] output+= (a and 2048) shr 8;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rdx
	andq	$2048,%rdx
	shrq	$8,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll433:
# [1018] output+= (a and 128) shr 5;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rdx
	andq	$128,%rdx
	shrq	$5,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll434:
# [1019] output+= (a and 16) shr 3;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rdx
	andq	$16,%rdx
	shrq	$3,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll435:
# [1020] output+= (a and 4) shr 2;
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rdx
	andq	$4,%rdx
	shrq	$2,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll436:
	movq	TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip),%rcx
.Ll437:
# [1021] b:=((a and 4194304)>0) xor ((a and 131072)>0);
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
.Ll438:
# [1022] a:=a shl 1;
	shlq	$1,TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip)
.Ll439:
# [1023] if b then a:=a or 1;
	testb	%dl,%dl
	je	.Lj1229
# PeepHole Optimization,var2
# P=movq
# HP1=orq
# HP2=movq
# PeepHole Optimization,var2
	orq	$1,TC_$RETRO$_$NOISE2$$LONGWORD_$$_A(%rip)
.Lj1229:
# Var $result located in register eax
.Ll440:
# [1025] end;
	ret
.Lc106:
.Lt29:
.Ll441:

.section .text.n_retro_$$_noise3$$longword,"x"
	.balign 16,0x90
.globl	RETRO_$$_NOISE3$$LONGWORD
RETRO_$$_NOISE3$$LONGWORD:
.Lc107:
# Var $result located in register eax
# Var output located in register rax
# Var b located in register dl
# [1043] begin
.Ll442:
# [1044] output:= (a and b22) shr 15;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rdx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B22(%rip),%rax
	andq	%rdx,%rax
	shrq	$15,%rax
# Var output located in register rax
.Ll443:
# [1045] output+= (a and b20) shr 14;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rcx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B20(%rip),%rdx
	andq	%rcx,%rdx
	shrq	$14,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll444:
# [1046] output+= (a and b16) shr 11;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rcx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B16(%rip),%rdx
	andq	%rcx,%rdx
	shrq	$11,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll445:
# [1047] output+= (a and b13) shr 9;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rcx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B13(%rip),%rdx
	andq	%rcx,%rdx
	shrq	$9,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll446:
# [1048] output+= (a and b11) shr 8;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rcx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B11(%rip),%rdx
	andq	%rcx,%rdx
	shrq	$8,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll447:
# [1049] output+= (a and b07) shr 5;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rcx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B07(%rip),%rdx
	andq	%rcx,%rdx
	shrq	$5,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll448:
# [1050] output+= (a and b04) shr 3;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rcx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B04(%rip),%rdx
	andq	%rcx,%rdx
	shrq	$3,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll449:
# [1051] output+= (a and b02) shr 2;
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rcx
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_B02(%rip),%rdx
	andq	%rcx,%rdx
	shrq	$2,%rdx
	leaq	(%rdx,%rax),%rax
# Var output located in register rax
.Ll450:
	movq	TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip),%rcx
.Ll451:
# [1053] b:=((a and b22)>0) xor ((a and b17)>0);
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
.Ll452:
# [1054] a:=a shl 1;
	shlq	$1,TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip)
.Ll453:
# [1055] if b then a:=a or 1;
	testb	%dl,%dl
	je	.Lj1259
# PeepHole Optimization,var2
# P=movq
# HP1=orq
# HP2=movq
# PeepHole Optimization,var2
	orq	$1,TC_$RETRO$_$NOISE3$$LONGWORD_$$_A(%rip)
.Lj1259:
# Var $result located in register eax
.Ll454:
# [1057] end;
	ret
.Lc108:
.Lt30:
.Ll455:

.section .text.n_retro_$$_sid$longint$$tsample,"x"
	.balign 16,0x90
.globl	RETRO_$$_SID$LONGINT$$TSAMPLE
RETRO_$$_SID$LONGINT$$TSAMPLE:
.Lc109:
# Temps allocated between rsp+32 and rsp+88
.seh_proc RETRO_$$_SID$LONGINT$$TSAMPLE
.Ll456:
# [1217] begin
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
.Lc111:
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
.Ll457:
# [1218] if mode=1 then  // get regs
	cmpl	$1,%edx
	jne	.Lj1267
.Ll458:
# [1221] freq1i:=(32768* (ramb^[$D400]+256*ramb^[$d401])) div 31940;
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
# PeepHole Optimization,MovMov2MovMov1
	movl	%edx,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1I(%rip)
.Ll459:
# [1222] freq1ni:=freq1i*16;
	movl	%edx,%eax
	shll	$4,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1NI(%rip)
.Ll460:
# [1223] freq2i:=(32768*(ramb^[$d407]+256*ramb^[$d408])) div 31940;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54280(%rax),%edx
	shll	$8,%edx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54279(%rax),%eax
	leal	(%edx,%eax),%edx
	shll	$15,%edx
	movl	$1101577085,%eax
	mull	%edx
	shrl	$13,%edx
# PeepHole Optimization,MovMov2MovMov1
	movl	%edx,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2I(%rip)
.Ll461:
# [1224] freq2ni:=freq2i*16;
	movl	%edx,%eax
	shll	$4,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2NI(%rip)
.Ll462:
# [1225] freq3i:=(32768*(ramb^[$d40e]+256*ramb^[$d40f])) div 31940;
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
# PeepHole Optimization,MovMov2MovMov1
	movl	%edx,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3I(%rip)
.Ll463:
# [1226] freq3ni:=freq3i*16;
	movl	%edx,%eax
	shll	$4,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3NI(%rip)
.Ll464:
# [1228] gate1:=ramb^[$d404] and 1;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54276(%rax),%ax
	andw	$1,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE1(%rip)
.Ll465:
# [1229] ring1:=ramb^[$d404] and 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54276(%rax),%ax
	andw	$4,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING1(%rip)
.Ll466:
# [1230] test1:=ramb^[$d404] and 8;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54276(%rax),%ax
	andw	$8,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST1(%rip)
.Ll467:
# [1231] sync1:=((ramb^[$d404] and 2) shr 1)-1;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54276(%rax),%ax
	andw	$2,%ax
	movswl	%ax,%eax
	shrl	$1,%eax
	leal	-1(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC1(%rip)
.Ll468:
# [1232] sd1:=ramb^[$d405] and  $F;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54277(%rax),%ax
	andw	$15,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD1(%rip)
.Ll469:
# [1233] sa1:=ramb^[$d405] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54277(%rax),%eax
	shrl	$4,%eax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA1(%rip)
.Ll470:
# [1234] sr1:=ramb^[$d406]and $F;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54278(%rax),%ax
	andw	$15,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR1(%rip)
.Ll471:
# [1235] ss1:=ramb^[$d406] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54278(%rax),%eax
	shrl	$4,%eax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS1(%rip)
.Ll472:
# [1236] pw1i:=((ramb^[$d402]+256*ramb^[$d403]) and $FFF);
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54275(%rax),%edx
	shll	$8,%edx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54274(%rax),%eax
	leal	(%edx,%eax),%eax
	andl	$4095,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW1I(%rip)
.Ll473:
# [1238] gate2:=ramb^[$d40b] and 1;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54283(%rax),%ax
	andw	$1,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE2(%rip)
.Ll474:
# [1239] ring2:=ramb^[$d40b] and 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54283(%rax),%ax
	andw	$4,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING2(%rip)
.Ll475:
# [1240] test2:=ramb^[$d40b] and 8;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54283(%rax),%ax
	andw	$8,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST2(%rip)
.Ll476:
# [1241] sync2:=((ramb^[$d40b] and 2) shr 1)-1;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54283(%rax),%ax
	andw	$2,%ax
	movswl	%ax,%eax
	shrl	$1,%eax
	leal	-1(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC2(%rip)
.Ll477:
# [1242] sd2:=ramb^[$d40c] and  $F;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54284(%rax),%ax
	andw	$15,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD2(%rip)
.Ll478:
# [1243] sa2:=ramb^[$d40c] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54284(%rax),%eax
	shrl	$4,%eax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA2(%rip)
.Ll479:
# [1244] sr2:=ramb^[$d40d]and $F;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54285(%rax),%ax
	andw	$15,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR2(%rip)
.Ll480:
# [1245] ss2:=ramb^[$d40d] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54285(%rax),%eax
	shrl	$4,%eax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS2(%rip)
.Ll481:
# [1246] pw2i:=((ramb^[$d409]+256*ramb^[$d40a]) and $FFF);
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54282(%rax),%eax
	shll	$8,%eax
	movq	U_$RETRO_$$_R1(%rip),%rdx
	movzbl	54281(%rdx),%edx
	leal	(%eax,%edx),%eax
	andl	$4095,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW2I(%rip)
.Ll482:
# [1248] gate3:=ramb^[$d412] and 1;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54290(%rax),%ax
	andw	$1,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE3(%rip)
.Ll483:
# [1249] ring3:=ramb^[$d412] and 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54290(%rax),%ax
	andw	$4,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING3(%rip)
.Ll484:
# [1250] test3:=ramb^[$d412] and 8;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54290(%rax),%ax
	andw	$8,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST3(%rip)
.Ll485:
# [1251] sync3:=((ramb^[$d412] and 2) shr 1)-1;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54290(%rax),%ax
	andw	$2,%ax
	movswl	%ax,%eax
	shrl	$1,%eax
	leal	-1(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC3(%rip)
.Ll486:
# [1252] sd3:=ramb^[$d413] and  $F;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54291(%rax),%ax
	andw	$15,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD3(%rip)
.Ll487:
# [1253] sa3:=ramb^[$d413] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54291(%rax),%eax
	shrl	$4,%eax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA3(%rip)
.Ll488:
# [1254] sr3:=ramb^[$d414]and $F;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54292(%rax),%ax
	andw	$15,%ax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR3(%rip)
.Ll489:
# [1255] ss3:=ramb^[$d414] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54292(%rax),%eax
	shrl	$4,%eax
	movb	%al,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS3(%rip)
.Ll490:
# [1256] pw3i:=((ramb^[$d410]+256*ramb^[$d411]) and $FFF);
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54289(%rax),%edx
	shll	$8,%edx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54288(%rax),%eax
	leal	(%edx,%eax),%eax
	andl	$4095,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW3I(%rip)
.Ll491:
# [1258] ff:=(ramb^[$d416] shl 3)+(ramb^[$d415] and 7);
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
.Ll492:
	movw	%ax,%dx
.Ll493:
# [1259] filter_freqi:=(ff+(ff shl 2)+30) shr 2;
	movzwl	%dx,%eax
	shll	$2,%eax
	andl	$4294967295,%eax
# PeepHole Optimization,var11
	andl	$65535,%edx
	leaq	(%rax,%rdx),%rax
	leaq	30(%rax),%rax
	shrq	$2,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI(%rip)
.Ll494:
# [1260] if (ramb^[$d417] and 1)>0 then f1:=true else f1:=false;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54295(%rax),%ax
	andw	$1,%ax
	cmpw	$0,%ax
	jng	.Lj1341
	movb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F1(%rip)
	jmp	.Lj1344
.Lj1341:
	movb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F1(%rip)
.Lj1344:
.Ll495:
# [1261] if (ramb^[$d417]  and 2)>0 then f2:=true else f2:=false;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54295(%rax),%ax
	andw	$2,%ax
	cmpw	$0,%ax
	jng	.Lj1348
	movb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F2(%rip)
	jmp	.Lj1351
.Lj1348:
	movb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F2(%rip)
.Lj1351:
.Ll496:
# [1262] if (ramb^[$d417]  and 4)>0 then f3:=true else f3:=false;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54295(%rax),%ax
	andw	$4,%ax
	cmpw	$0,%ax
	jng	.Lj1355
	movb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F3(%rip)
	jmp	.Lj1358
.Lj1355:
	movb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F3(%rip)
.Lj1358:
.Ll497:
# [1263] fl:=-(ramb^[$d418] and $10) shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54296(%rax),%ax
	andw	$16,%ax
	movswq	%ax,%rax
	negq	%rax
	shrq	$4,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FL(%rip)
.Ll498:
# [1264] fb:=-(ramb^[$d418] and $20) shr 5;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54296(%rax),%ax
	andw	$32,%ax
	movswq	%ax,%rax
	negq	%rax
	shrq	$5,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FB(%rip)
.Ll499:
# [1265] fu:=-(ramb^[$d418] and $40) shr 6;
	movq	U_$RETRO_$$_R1(%rip),%rax
# PeepHole Optimization,var15
	movw	54296(%rax),%ax
	andw	$64,%ax
	movswq	%ax,%rax
	negq	%rax
	shrq	$6,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FU(%rip)
.Ll500:
# [1266] filter_resonance2i:=round(256*(0.5+(0.5/(1+(peek($d416) shr 4)))));
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
.Ll501:
# [1267] volume:=(peek($d418) and 15);
	movl	$54296,%ecx
	call	RETRO_$$_PEEK$LONGINT$$BYTE
# PeepHole Optimization,var7
# PeepHole Optimization,var1
	andw	$15,%ax
	movswl	%ax,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_VOLUME(%rip)
.Ll502:
# [1269] waveform1:=ramb^[$d404] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54276(%rax),%eax
	shrl	$4,%eax
	movw	%ax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1(%rip)
.Ll503:
# [1270] waveform2:=ramb^[$d40b] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54283(%rax),%eax
	shrl	$4,%eax
	movw	%ax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2(%rip)
.Ll504:
# [1271] waveform3:=ramb^[$d412] shr 4;
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	54290(%rax),%eax
	shrl	$4,%eax
	movw	%ax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3(%rip)
.Ll505:
# [1273] sustainvol1i:=ss1 shl 26;
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS1(%rip),%eax
	shll	$26,%eax
	andl	$4294967295,%eax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL1I(%rip)
.Ll506:
# [1274] sustainvol2i:=ss2 shl 26;
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS2(%rip),%eax
	shll	$26,%eax
	andl	$4294967295,%eax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL2I(%rip)
.Ll507:
# [1275] sustainvol3i:=ss3 shl 26;
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS3(%rip),%eax
	shll	$26,%eax
	andl	$4294967295,%eax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL3I(%rip)
.Lj1267:
.Ll508:
# [1278] sli:=0; sri:=0;
	movl	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SLI(%rip)
	movl	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SRI(%rip)
# Var i located in register eax
.Ll509:
# [1280] for i:=1 to 5 do
	movl	$1,%eax
	movq	%rax,72(%rsp)
# PeepHole Optimization,var2
# P=movl
# HP1=subl
# HP2=movq
# PeepHole Optimization,var2
	subl	$1,72(%rsp)
	.balign 8,0x90
.Lj1393:
# PeepHole Optimization,var2
# P=movl
# HP1=addl
# HP2=movq
# PeepHole Optimization,var2
	addl	$1,72(%rsp)
.Ll510:
# [1283] pa1i:=pa1i+freq1i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1I(%rip),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip)
.Ll511:
# [1284] pa1ni:=pa1ni+freq1ni;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1NI(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1NI(%rip),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1NI(%rip)
.Ll512:
# [1285] if pa1i>16777216 then
	cmpl	$16777216,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip)
	jng	.Lj1399
.Ll513:
# [1287] pa2i:=pa2i and sync2;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC2(%rip),%eax
	andl	%edx,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip)
.Ll514:
# [1288] pa1i-=16777216;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	leal	-16777216(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip)
.Lj1399:
.Ll515:
# [1290] if pa1ni>=16777216 then
	cmpl	$16777216,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1NI(%rip)
	jnge	.Lj1405
.Ll516:
# [1292] pa1ni-=16777216;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1NI(%rip),%eax
	leal	-16777216(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1NI(%rip)
.Ll517:
# [1293] pp1:=1;
	movb	$1,64(%rsp)
	jmp	.Lj1410
.Lj1405:
.Ll518:
# [1295] else pp1:=0;
	movb	$0,64(%rsp)
.Lj1410:
.Ll519:
# [1297] pa2i:=pa2i+freq2i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2I(%rip),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip)
.Ll520:
# [1298] pa2ni:=pa2ni+freq2ni;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2NI(%rip),%eax
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2NI(%rip),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2NI(%rip)
.Ll521:
# [1299] if pa2i>16777216 then
	cmpl	$16777216,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip)
	jng	.Lj1418
.Ll522:
# [1301] pa2i-=16777216;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	leal	-16777216(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip)
.Ll523:
# [1302] pa3i:=pa3i and sync3;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC3(%rip),%eax
	andl	%edx,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip)
.Lj1418:
.Ll524:
# [1304] if pa2ni>=16777216 then
	cmpl	$16777216,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2NI(%rip)
	jnge	.Lj1424
.Ll525:
# [1306] pa2ni-=16777216;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2NI(%rip),%eax
	leal	-16777216(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2NI(%rip)
.Ll526:
# [1307] pp2:=1;
	movb	$1,56(%rsp)
	jmp	.Lj1429
.Lj1424:
.Ll527:
# [1309] else pp2:=0;
	movb	$0,56(%rsp)
.Lj1429:
.Ll528:
# [1311] pa3i:=pa3i+freq3i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3I(%rip),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip)
.Ll529:
# [1312] pa3ni:=pa3ni+freq3ni;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3NI(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3NI(%rip),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3NI(%rip)
.Ll530:
# [1313] if pa3i>16777216 then begin pa3i-=16777216;  pa1i:=pa1i and sync1; end ;
	cmpl	$16777216,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip)
	jng	.Lj1437
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	leal	-16777216(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip)
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC1(%rip),%eax
	andl	%edx,%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip)
.Lj1437:
.Ll531:
# [1314] if pa3ni>=16777216 then
	cmpl	$16777216,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3NI(%rip)
	jnge	.Lj1443
.Ll532:
# [1316] pa3ni-=16777216;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3NI(%rip),%eax
	leal	-16777216(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3NI(%rip)
.Ll533:
# [1317] pp3:=1;
	movb	$1,48(%rsp)
	jmp	.Lj1448
.Lj1443:
.Ll534:
# [1319] else pp3:=0;
	movb	$0,48(%rsp)
.Lj1448:
.Ll535:
# [1323] if test1>0 then pa1i:=0;
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST1(%rip)
	jna	.Lj1452
	movl	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip)
.Lj1452:
.Ll536:
# [1324] if test2>0 then pa2i:=0;
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST2(%rip)
	jna	.Lj1456
	movl	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip)
.Lj1456:
.Ll537:
# [1325] if test3>0 then pa3i:=0;
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST3(%rip)
	jna	.Lj1460
	movl	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip)
.Lj1460:
.Ll538:
# [1328] case waveform1 of
	movw	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1(%rip),%ax
	cmpw	$15,%ax
	ja	.Lj1464
# PeepHole Optimization,var11
	andl	$65535,%eax
	leaq	.Ld12(%rip),%rdx
	movslq	(%rdx,%rax,4),%rax
	leaq	(%rdx,%rax,1),%rax
	jmp	*%rax
.Lj1465:
	jmp	.Lj1463
.Lj1466:
.Ll539:
# [1331] 1: begin if (pa1i shr 23 = 0) then wv1i:=(pa1i shl 1)-8388608 else wv1i:=((not (pa1i shl 1)) and $FFFFFF)-8388608; if (ring1>0) and (pa3>0) then wv1i:=-wv1i; end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shrl	$23,%eax
	testl	%eax,%eax
	jne	.Lj1478
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shll	$1,%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1481
.Lj1478:
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shll	$1,%eax
	notl	%eax
	andl	$16777215,%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
.Lj1481:
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING1(%rip)
	jna	.Lj1463
	movsd	_$RETRO$_Ld13(%rip),%xmm0
	comisd	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3(%rip),%xmm0
	jp	.Lj1463
	jnb	.Lj1463
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip),%rax
	negq	%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1463
.Lj1467:
.Ll540:
# [1332] 2: wv1i:=pa1i-8388608;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1463
.Lj1468:
.Ll541:
# [1333] 3: begin ind:=pa1i shr 16; wv1i:=((combined[ind]-128) shl 16); end;
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
	jmp	.Lj1463
.Lj1469:
.Ll542:
# [1334] 4: if (pa1i shr 12) < pw1i then wv1i:=-8388608 else wv1i:=8388608;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shrl	$12,%eax
	cmpl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW1I(%rip),%eax
	jnl	.Lj1497
	movl	$-8388608,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1463
.Lj1497:
	movl	$8388608,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1463
.Lj1470:
.Ll543:
# [1335] 5: begin ind:=pa1i shr 16; wv1i:=((combined[ind+256]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,%r15d
	movslq	%r15d,%rax
	leaq	U_$RETRO_$$_COMBINED(%rip),%rdx
	movzbl	256(%rdx,%rax,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1463
.Lj1471:
.Ll544:
# [1336] 6: begin ind:=pa1i shr 16; wv1i:=((combined[ind+512]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,%r15d
	movslq	%r15d,%rdx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rax
	movzbl	512(%rax,%rdx,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1463
.Lj1472:
.Ll545:
# [1337] 7: begin ind:=pa1i shr 16; wv1i:=((combined[ind+768]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,%r15d
	movslq	%r15d,%rdx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rax
	movzbl	768(%rax,%rdx,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1463
.Lj1473:
.Ll546:
# [1338] 8: begin if pp1=1 then wv1i:=(noise1-128) shl 16; end;
	cmpb	$1,64(%rsp)
	jne	.Lj1463
	call	RETRO_$$_NOISE1$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1463
.Lj1474:
.Ll547:
# [1339] 9: wv1i:=pa1i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1463
.Lj1475:
.Ll548:
# [1340] 10: wv1i:=pa1i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1463
.Lj1476:
.Ll549:
# [1341] 11..15: wv1i:=pa1i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
	jmp	.Lj1463
.Lj1464:
.Ll550:
# [1342] else begin if pp1=1 then wv1i:=(noise1-128) shl 16; end;
	cmpb	$1,64(%rsp)
	jne	.Lj1526
	call	RETRO_$$_NOISE1$$BYTE
# PeepHole Optimization,var9
	andl	$255,%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip)
.Lj1526:
.Lj1463:
.Ll551:
# [1346] case waveform2 of
	movw	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2(%rip),%ax
	cmpw	$15,%ax
	ja	.Lj1530
# PeepHole Optimization,var11
	andl	$65535,%eax
	leaq	.Ld14(%rip),%rdx
	movslq	(%rdx,%rax,4),%rax
	leaq	(%rdx,%rax,1),%rax
	jmp	*%rax
.Lj1531:
	jmp	.Lj1529
.Lj1532:
.Ll552:
# [1349] 1: begin if (pa2i shr 23 = 0) then wv2i:=(pa2i shl 1)-8388608 else wv2i:=((not (pa2i shl 1)) and $FFFFFF)-8388608; if (ring2>0) and (pa1>0) then wv2i:=-wv2i; end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shrl	$23,%eax
	testl	%eax,%eax
	jne	.Lj1544
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shll	$1,%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1547
.Lj1544:
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shll	$1,%eax
	notl	%eax
	andl	$16777215,%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
.Lj1547:
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING2(%rip)
	jna	.Lj1529
	movsd	_$RETRO$_Ld13(%rip),%xmm0
	comisd	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1(%rip),%xmm0
	jp	.Lj1529
	jnb	.Lj1529
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip),%rax
	negq	%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1529
.Lj1533:
.Ll553:
# [1350] 2: wv2i:=pa2i-8388608;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1529
.Lj1534:
.Ll554:
# [1351] 3: begin ind:=pa2i shr 16; wv2i:=((combined[ind]-128) shl 16); end;
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
	jmp	.Lj1529
.Lj1535:
.Ll555:
# [1352] 4: if (pa2i shr 12) < pw2i then wv2i:=-8388608 else wv2i:=8388608;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shrl	$12,%eax
	cmpl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW2I(%rip),%eax
	jnl	.Lj1563
	movl	$-8388608,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1529
.Lj1563:
	movl	$8388608,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1529
.Lj1536:
.Ll556:
# [1353] 5: begin ind:=pa2i shr 16; wv2i:=((combined[ind+256]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,%r15d
	movslq	%r15d,%rdx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rax
	movzbl	256(%rax,%rdx,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1529
.Lj1537:
.Ll557:
# [1354] 6: begin ind:=pa2i shr 16; wv2i:=((combined[ind+512]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,%r15d
	movslq	%r15d,%rdx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rax
	movzbl	512(%rax,%rdx,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1529
.Lj1538:
.Ll558:
# [1355] 7: begin ind:=pa2i shr 16; wv2i:=((combined[ind+768]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,%r15d
	movslq	%r15d,%rdx
	leaq	U_$RETRO_$$_COMBINED(%rip),%rax
	movzbl	768(%rax,%rdx,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1529
.Lj1539:
.Ll559:
# [1356] 8: begin if pp2=1 then wv2i:=(noise2-128) shl 16; end;
	cmpb	$1,56(%rsp)
	jne	.Lj1529
	call	RETRO_$$_NOISE2$$LONGWORD
	andl	$4294967295,%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1529
.Lj1540:
.Ll560:
# [1357] 9: wv2i:=pa2i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1529
.Lj1541:
.Ll561:
# [1358] 10: wv2i:=pa2i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1529
.Lj1542:
.Ll562:
# [1359] 11..15: wv2i:=pa2i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
	jmp	.Lj1529
.Lj1530:
.Ll563:
# [1360] else begin if pp2=1 then wv2i:=(noise2-128) shl 16; end;
	cmpb	$1,56(%rsp)
	jne	.Lj1592
	call	RETRO_$$_NOISE2$$LONGWORD
	andl	$4294967295,%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip)
.Lj1592:
.Lj1529:
.Ll564:
# [1363] case waveform3 of
	movw	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3(%rip),%ax
	cmpw	$15,%ax
	ja	.Lj1596
# PeepHole Optimization,var11
	andl	$65535,%eax
	leaq	.Ld15(%rip),%rdx
	movslq	(%rdx,%rax,4),%rax
	leaq	(%rdx,%rax,1),%rax
	jmp	*%rax
.Lj1597:
	jmp	.Lj1595
.Lj1598:
.Ll565:
# [1366] 1: begin if (pa3i shr 23 = 0) then wv3i:=(pa3i shl 1)-8388608 else wv3i:=((not (pa3i shl 1)) and $FFFFFF)-8388608; if (ring3>0) and (pa2>0) then wv3i:=-wv3i; end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shrl	$23,%eax
	testl	%eax,%eax
	jne	.Lj1610
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shll	$1,%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1613
.Lj1610:
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shll	$1,%eax
	notl	%eax
	andl	$16777215,%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
.Lj1613:
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING3(%rip)
	jna	.Lj1595
	movsd	_$RETRO$_Ld13(%rip),%xmm0
	comisd	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2(%rip),%xmm0
	jp	.Lj1595
	jnb	.Lj1595
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip),%rax
	negq	%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1595
.Lj1599:
.Ll566:
# [1367] 2: wv3i:=pa3i-8388608;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	leal	-8388608(%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1595
.Lj1600:
.Ll567:
# [1368] 3: begin ind:=pa3i shr 16; wv3i:=((combined[ind]-128) shl 16); end;
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
	jmp	.Lj1595
.Lj1601:
.Ll568:
# [1369] 4: if (pa3i shr 12) < pw3i then wv3i:=-8388608 else wv3i:=8388608;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shrl	$12,%eax
	cmpl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW3I(%rip),%eax
	jnl	.Lj1629
	movl	$-8388608,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1595
.Lj1629:
	movl	$8388608,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1595
.Lj1602:
.Ll569:
# [1370] 5: begin ind:=pa3i shr 16; wv3i:=((combined[ind+256]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,%r15d
	movslq	%r15d,%rax
	leaq	U_$RETRO_$$_COMBINED(%rip),%rdx
	movzbl	256(%rdx,%rax,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1595
.Lj1603:
.Ll570:
# [1371] 6: begin ind:=pa3i shr 16; wv3i:=((combined[ind+512]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,%r15d
	movslq	%r15d,%rax
	leaq	U_$RETRO_$$_COMBINED(%rip),%rdx
	movzbl	512(%rdx,%rax,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1595
.Lj1604:
.Ll571:
# [1372] 7: begin ind:=pa3i shr 16; wv3i:=((combined[ind+768]-128) shl 16); end;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I(%rip),%eax
	shrl	$16,%eax
	movl	%eax,%r15d
	movslq	%r15d,%rax
	leaq	U_$RETRO_$$_COMBINED(%rip),%rdx
	movzbl	768(%rdx,%rax,1),%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1595
.Lj1605:
.Ll572:
# [1373] 8: begin if pp3=1 then wv3i:=(noise3-128) shl 16; end;
	cmpb	$1,48(%rsp)
	jne	.Lj1595
	call	RETRO_$$_NOISE3$$LONGWORD
	andl	$4294967295,%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
	jmp	.Lj1595
.Lj1606:
	jmp	.Lj1595
.Lj1607:
	jmp	.Lj1595
.Lj1608:
	jmp	.Lj1595
.Lj1596:
.Ll573:
# [1377] else begin if pp3=1 then wv3i:=(noise3-128) shl 16; end;
	cmpb	$1,48(%rsp)
	jne	.Lj1652
	call	RETRO_$$_NOISE3$$LONGWORD
	andl	$4294967295,%eax
	leaq	-128(%rax),%rax
	shlq	$16,%rax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip)
.Lj1652:
.Lj1595:
.Ll574:
# [1381] if gate1=0 then adsrstate1:=4 else begin if ((adsrstate1=0) or (adsrstate1=4)) then adsrstate1:=1; end;  //release /attack
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE1(%rip)
	jne	.Lj1656
	movb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jmp	.Lj1659
.Lj1656:
.Ll575:
	movb	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip),%al
.Ll576:
	testb	%al,%al
	je	.Lj1660
	cmpb	$4,%al
	jne	.Lj1661
.Lj1660:
	movb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
.Lj1661:
.Lj1659:
.Ll577:
# [1383] if (adsrstate1=3) then adsrvol1i:=sustainvol1i
	cmpb	$3,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jne	.Lj1668
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL1I(%rip),%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	jmp	.Lj1671
.Lj1668:
.Ll578:
# [1384] else if (adsrstate1=1) then begin adsrvol1i:=adsrvol1i+(attacktablei[sa1]); if adsrvol1i>=1073741824 then adsrstate1:=2; end
	cmpb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jne	.Lj1673
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA1(%rip),%edx
	leaq	U_$RETRO_$$_ATTACKTABLEI(%rip),%rax
	movq	(%rax,%rdx,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	cmpq	$1073741824,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	jnge	.Lj1680
	movb	$2,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jmp	.Lj1680
.Lj1673:
.Ll579:
# [1385] else if (adsrstate1=2) then begin adsrvol1i:=(adsrvol1i*(srtablei[sd1])) shr 30; if adsrvol1i<=sustainvol1i then adsrstate1:=3; end
	cmpb	$2,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jne	.Lj1682
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD1(%rip),%edx
	leaq	U_$RETRO_$$_SRTABLEI(%rip),%rax
	movq	(%rax,%rdx,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip),%rax
	imulq	%rdx,%rax
	shrq	$30,%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	cmpq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL1I(%rip),%rax
	jnle	.Lj1689
	movb	$3,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jmp	.Lj1689
.Lj1682:
.Ll580:
# [1386] else if (adsrstate1=4) then begin adsrvol1i:=(adsrvol1i*(srtablei[sr1])) shr 30; if (adsrvol1i<=65536) then begin adsrstate1:=0; adsrvol1i:=0; end; end
	cmpb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	jne	.Lj1691
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR1(%rip),%edx
	leaq	U_$RETRO_$$_SRTABLEI(%rip),%rax
	movq	(%rax,%rdx,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip),%rax
	imulq	%rdx,%rax
	shrq	$30,%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	cmpq	$65536,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	jnle	.Lj1700
	movb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1(%rip)
	movq	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
	jmp	.Lj1700
.Lj1691:
.Ll581:
# [1387] else adsrvol1i:=0;
	movq	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip)
.Lj1700:
.Lj1689:
.Lj1680:
.Lj1671:
.Ll582:
# [1389] if gate2=0 then adsrstate2:=4 else begin if ((adsrstate2=0) or (adsrstate2=4)) then adsrstate2:=1; end;  //release /attack
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE2(%rip)
	jne	.Lj1704
	movb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jmp	.Lj1707
.Lj1704:
.Ll583:
	movb	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip),%al
.Ll584:
	testb	%al,%al
	je	.Lj1708
	cmpb	$4,%al
	jne	.Lj1709
.Lj1708:
	movb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
.Lj1709:
.Lj1707:
.Ll585:
# [1391] if (adsrstate2=3) then adsrvol2i:=sustainvol2i
	cmpb	$3,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jne	.Lj1716
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL2I(%rip),%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
	jmp	.Lj1719
.Lj1716:
.Ll586:
# [1392] else if (adsrstate2=1) then begin
	cmpb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jne	.Lj1721
.Ll587:
# [1393] adsrvol2i:=adsrvol2i+(attacktablei[sa2]); if adsrvol2i>=1073741824 then adsrstate2:=2; end
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA2(%rip),%eax
	leaq	U_$RETRO_$$_ATTACKTABLEI(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip),%rax
	leaq	(%rdx,%rax),%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
	cmpq	$1073741824,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
	jnge	.Lj1728
	movb	$2,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jmp	.Lj1728
.Lj1721:
.Ll588:
# [1394] else if (adsrstate2=2) then
	cmpb	$2,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jne	.Lj1730
.Ll589:
# [1396] adsrvol2i:=(adsrvol2i*(srtablei[sd2])) shr 30;
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD2(%rip),%edx
	leaq	U_$RETRO_$$_SRTABLEI(%rip),%rax
	movq	(%rax,%rdx,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip),%rax
	imulq	%rdx,%rax
	shrq	$30,%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
.Ll590:
# [1397] if adsrvol2i<=sustainvol2i then
	cmpq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL2I(%rip),%rax
	jnle	.Lj1737
.Ll591:
# [1398] adsrstate2:=3; end
	movb	$3,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jmp	.Lj1737
.Lj1730:
.Ll592:
# [1399] else if (adsrstate2=4) then begin adsrvol2i:=(adsrvol2i*(srtablei[sr2])) shr 30; if (adsrvol2i<=65536) then begin adsrstate2:=0; adsrvol2i:=0; end; end
	cmpb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	jne	.Lj1739
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR2(%rip),%eax
	leaq	U_$RETRO_$$_SRTABLEI(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip),%rax
	imulq	%rdx,%rax
	shrq	$30,%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
	cmpq	$65536,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
	jnle	.Lj1748
	movb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2(%rip)
	movq	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
	jmp	.Lj1748
.Lj1739:
.Ll593:
# [1400] else adsrvol2i:=0;
	movq	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip)
.Lj1748:
.Lj1737:
.Lj1728:
.Lj1719:
.Ll594:
# [1403] if gate3=0 then adsrstate3:=4  else begin if ((adsrstate3=0) or (adsrstate3=4)) then adsrstate3:=1; end;  //release /attack
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE3(%rip)
	jne	.Lj1752
	movb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jmp	.Lj1755
.Lj1752:
.Ll595:
	movb	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip),%al
.Ll596:
	testb	%al,%al
	je	.Lj1756
	cmpb	$4,%al
	jne	.Lj1757
.Lj1756:
	movb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
.Lj1757:
.Lj1755:
.Ll597:
# [1405] if (adsrstate3=3) then adsrvol3i:=sustainvol3i
	cmpb	$3,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jne	.Lj1764
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL3I(%rip),%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	jmp	.Lj1767
.Lj1764:
.Ll598:
# [1406] else if (adsrstate3=1) then begin adsrvol3i:=adsrvol3i+(attacktablei[sa3]); if adsrvol3i>=1073741824 then adsrstate3:=2; end
	cmpb	$1,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jne	.Lj1769
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA3(%rip),%eax
	leaq	U_$RETRO_$$_ATTACKTABLEI(%rip),%rdx
	movq	(%rdx,%rax,8),%rax
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip),%rdx
	leaq	(%rax,%rdx),%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	cmpq	$1073741824,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	jnge	.Lj1776
	movb	$2,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jmp	.Lj1776
.Lj1769:
.Ll599:
# [1407] else if (adsrstate3=2) then begin adsrvol3i:=(adsrvol3i*(srtablei[sd3])) shr 30; if adsrvol3i<=sustainvol3i then adsrstate3:=3; end
	cmpb	$2,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jne	.Lj1778
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD3(%rip),%eax
	leaq	U_$RETRO_$$_SRTABLEI(%rip),%rdx
	movq	(%rdx,%rax,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip),%rax
	imulq	%rdx,%rax
	shrq	$30,%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	cmpq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL3I(%rip),%rax
	jnle	.Lj1785
	movb	$3,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jmp	.Lj1785
.Lj1778:
.Ll600:
# [1408] else if (adsrstate3=4) then begin adsrvol3i:=(adsrvol3i*(srtablei[sr3])) shr 30; if (adsrvol3i<=65536) then begin adsrstate3:=0; adsrvol3i:=0; end; end
	cmpb	$4,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	jne	.Lj1787
	movzbl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR3(%rip),%edx
	leaq	U_$RETRO_$$_SRTABLEI(%rip),%rax
	movq	(%rax,%rdx,8),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip),%rax
	imulq	%rdx,%rax
	shrq	$30,%rax
	movq	%rax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	cmpq	$65536,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	jnle	.Lj1796
	movb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3(%rip)
	movq	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
	jmp	.Lj1796
.Lj1787:
.Ll601:
# [1409] else adsrvol3i:=0;
	movq	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip)
.Lj1796:
.Lj1785:
.Lj1776:
.Lj1767:
.Ll602:
# [1414] wv1ii:=wv1i*adsrvol1i*ramb^[$70003];    // wv1a:=0;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I(%rip),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I(%rip),%rax
	movq	%rax,%rcx
	imulq	%rdx,%rcx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	458755(%rax),%eax
	imulq	%rcx,%rax
	movq	%rax,%r14
.Ll603:
# [1415] wv2ii:=wv2i*adsrvol2i*ramb^[$70004];    // wv2a:=0;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I(%rip),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I(%rip),%rax
	movq	%rax,%rcx
	imulq	%rdx,%rcx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	458756(%rax),%eax
	imulq	%rcx,%rax
	movq	%rax,%r13
.Ll604:
# [1416] wv3ii:=wv3i*adsrvol3i*ramb^[$70005];    // wv3a:=0;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I(%rip),%rdx
	movq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I(%rip),%rax
	movq	%rax,%rcx
	imulq	%rdx,%rcx
	movq	U_$RETRO_$$_R1(%rip),%rax
	movzbl	458757(%rax),%eax
	imulq	%rcx,%rax
	movq	%rax,%r12
.Ll605:
# [1420] wv1ii:=(wv1ii div 137438953472);
	movq	%r14,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	movq	$137438953471,%rcx
	andq	%rcx,%rdx
	addq	%rdx,%rax
	sarq	$37,%rax
	movq	%rax,%r14
.Ll606:
# [1421] wv2ii:=(wv2ii div 137438953472);
	movq	%r13,%rax
	movq	%rax,%rcx
	sarq	$63,%rcx
	movq	$137438953471,%rdx
	andq	%rdx,%rcx
	addq	%rcx,%rax
	sarq	$37,%rax
	movq	%rax,%r13
.Ll607:
# [1422] wv3ii:=(wv3ii div 137438953472);
	movq	%r12,%rdx
	movq	%rdx,%rcx
	sarq	$63,%rcx
	movq	$137438953471,%rax
	andq	%rax,%rcx
	addq	%rcx,%rdx
	sarq	$37,%rdx
	movq	%rdx,%r12
.Ll608:
# [1424] fii:=1; fi2i:=1; fi3i:=1;
	movl	$1,%eax
	movq	%rax,40(%rsp)
	movl	$1,%ebp
	movl	$1,%eax
	movq	%rax,32(%rsp)
.Ll609:
# [1425] if f1 then begin fii:=wv1ii; wv1ii:=0; end;
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F1(%rip)
	je	.Lj1818
	movl	%r14d,%eax
	movl	%eax,%edx
	movq	%rdx,40(%rsp)
	movq	$0,%r14
.Lj1818:
.Ll610:
# [1426] if f2 then begin fi2i:=wv2ii; wv2ii:=0; end;
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F2(%rip)
	je	.Lj1824
	movl	%r13d,%eax
	movl	%eax,%ebp
	movq	$0,%r13
.Lj1824:
.Ll611:
# [1427] if f3 then begin fi3i:=wv3ii; wv3ii:=0; end;
	cmpb	$0,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F3(%rip)
	je	.Lj1830
	movl	%r12d,%eax
	movl	%eax,%edx
	movq	%rdx,32(%rsp)
	movq	$0,%r12
.Lj1830:
.Ll612:
# [1429] filter_Hi  := fii - ((filter_Bi * filter_resonance2i) div 256) - filter_Li;
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
.Ll613:
# [1430] filter_H2i  := fi2i - ((filter_B2i * filter_resonance2i) div 256) - filter_L2i;
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
.Ll614:
# [1431] filter_H3i  := fi3i - ((filter_B3i * filter_resonance2i) div 256) - filter_L3i;
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
.Ll615:
# [1433] filter_Bi += (filter_freqi * filter_Hi) div 32768;
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
.Ll616:
# [1434] filter_B2i += (filter_freqi * filter_H2i) div 32768;
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
.Ll617:
# [1435] filter_B3i += (filter_freqi * filter_H3i) div 32768;
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
.Ll618:
# [1437] filter_Li += (filter_freqi * filter_Bi) div 32768;
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
.Ll619:
# [1438] filter_L2i += (filter_freqi * filter_B2i) div 32768;
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
.Ll620:
# [1439] filter_L3i += (filter_freqi * filter_B3i) div 32768;
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
.Ll621:
# [1441] fouti:=wv1ii;
	movl	%r14d,%eax
	movl	%eax,%esi
.Ll622:
# [1442] fouti+=filter_li and fl;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_LI(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FL(%rip),%eax
	andl	%edx,%eax
	leal	(%eax,%esi),%eax
	movl	%eax,%esi
.Ll623:
# [1443] fouti+=filter_bi and fb;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_BI(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FB(%rip),%eax
	andl	%edx,%eax
	leal	(%eax,%esi),%eax
	movl	%eax,%esi
.Ll624:
# [1444] fouti+=filter_hi and fu;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_HI(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FU(%rip),%eax
	andl	%edx,%eax
	leal	(%eax,%esi),%eax
	movl	%eax,%esi
.Ll625:
# [1446] fout2i:=wv2ii;
	movl	%r13d,%eax
	movl	%eax,%ebx
.Ll626:
# [1447] fout2i+=filter_l2i and fl;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L2I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FL(%rip),%eax
	andl	%edx,%eax
	leal	(%eax,%ebx),%eax
	movl	%eax,%ebx
.Ll627:
# [1448] fout2i+=filter_b2i and fb;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B2I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FB(%rip),%eax
	andl	%edx,%eax
	leal	(%eax,%ebx),%eax
	movl	%eax,%ebx
.Ll628:
# [1449] fout2i+=filter_h2i and fu;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H2I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FU(%rip),%eax
	andl	%edx,%eax
	leal	(%eax,%ebx),%eax
	movl	%eax,%ebx
.Ll629:
# [1451] fout3i:=wv3ii;
	movl	%r12d,%eax
	movl	%eax,%edi
.Ll630:
# [1452] fout3i+=filter_l3i and fl;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L3I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FL(%rip),%eax
	andl	%edx,%eax
	leal	(%eax,%edi),%eax
	movl	%eax,%edi
.Ll631:
# [1453] fout3i+=filter_b3i and fb;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B3I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FB(%rip),%eax
	andl	%edx,%eax
	leal	(%eax,%edi),%eax
	movl	%eax,%edi
.Ll632:
# [1454] fout3i+=filter_h3i and fu;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H3I(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FU(%rip),%eax
	andl	%edx,%eax
	leal	(%eax,%edi),%eax
	movl	%eax,%edi
.Ll633:
# [1456] wv5i:=(volume*((fouti div 2)+(fout2i div 4)+ (fout2i div 2)+(fout3i)));
	movslq	%esi,%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,%rcx
	sarq	$63,%rax
	andq	$1,%rax
	addq	%rax,%rcx
	sarq	$1,%rcx
	movslq	%ebx,%rax
.Ll634:
	movq	%rax,%r8
.Ll635:
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
.Ll636:
# [1457] wv4i:=(volume*((fouti)+(fout2i div 4)+ (fout2i div 2)+(fout3i div 2)));
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
.Ll639:
# [1460] sri+=wv4i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SRI(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV4I(%rip),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SRI(%rip)
.Ll640:
# [1461] sli+=wv5i;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SLI(%rip),%edx
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV5I(%rip),%eax
	leal	(%edx,%eax),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SLI(%rip)
.Ll641:
	movl	72(%rsp),%eax
	cmpl	$5,%eax
	jl	.Lj1393
.Ll642:
# [1464] sid1:=sri div 512;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SRI(%rip),%rsi
	movq	%rsi,%rax
	sarq	$63,%rax
	andq	$511,%rax
	addq	%rax,%rsi
	sarq	$9,%rsi
# Var sid1 located in register esi
.Ll643:
# [1465] sid1l:=sli div 512;
	movslq	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SLI(%rip),%rbx
	movq	%rbx,%rax
	sarq	$63,%rax
	andq	$511,%rax
	addq	%rax,%rbx
	sarq	$9,%rbx
# Var sid1l located in register ebx
.Ll644:
# [1466] oldsc:=sc;
	movl	TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SC(%rip),%eax
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_OLDSC(%rip)
.Ll645:
# [1467] sc:=sid1+sid1l;
	leal	(%esi,%ebx),%eax
# PeepHole Optimization,MovMov2Mov1
	movl	%eax,TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SC(%rip)
.Ll646:
# [1468] if abs(sc)>65535 then lpoke ($6000c,$FF0000);
	movl	%eax,%edx
	negl	%edx
	cmovnsl	%edx,%eax
	cmpl	$65535,%eax
	jng	.Lj1898
	movl	$16711680,%edx
	movl	$393228,%ecx
	call	RETRO_$$_LPOKE$LONGINT$LONGWORD
.Lj1898:
.Ll647:
# [1470] sid[0]:=sid1;
	movq	80(%rsp),%rax
	movw	%si,(%rax)
.Ll648:
# [1471] sid[1]:=sid1l;
	movq	80(%rsp),%rax
	movw	%bx,2(%rax)
.Ll649:
# [1472] end;
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
.Lc110:
.Lt28:
.Ll650:

.section .data.n_RETRO_$$_SID$LONGINT$$TSAMPLE,"d"
	.balign 4
.Ld12:
	.long	.Lj1465-.Ld12
	.long	.Lj1466-.Ld12
	.long	.Lj1467-.Ld12
	.long	.Lj1468-.Ld12
	.long	.Lj1469-.Ld12
	.long	.Lj1470-.Ld12
	.long	.Lj1471-.Ld12
	.long	.Lj1472-.Ld12
	.long	.Lj1473-.Ld12
	.long	.Lj1474-.Ld12
	.long	.Lj1475-.Ld12
	.long	.Lj1476-.Ld12
	.long	.Lj1476-.Ld12
	.long	.Lj1476-.Ld12
	.long	.Lj1476-.Ld12
	.long	.Lj1476-.Ld12

.section .data.n_RETRO_$$_SID$LONGINT$$TSAMPLE,"d"
	.balign 4
.Ld14:
	.long	.Lj1531-.Ld14
	.long	.Lj1532-.Ld14
	.long	.Lj1533-.Ld14
	.long	.Lj1534-.Ld14
	.long	.Lj1535-.Ld14
	.long	.Lj1536-.Ld14
	.long	.Lj1537-.Ld14
	.long	.Lj1538-.Ld14
	.long	.Lj1539-.Ld14
	.long	.Lj1540-.Ld14
	.long	.Lj1541-.Ld14
	.long	.Lj1542-.Ld14
	.long	.Lj1542-.Ld14
	.long	.Lj1542-.Ld14
	.long	.Lj1542-.Ld14
	.long	.Lj1542-.Ld14

.section .data.n_RETRO_$$_SID$LONGINT$$TSAMPLE,"d"
	.balign 4
.Ld15:
	.long	.Lj1597-.Ld15
	.long	.Lj1598-.Ld15
	.long	.Lj1599-.Ld15
	.long	.Lj1600-.Ld15
	.long	.Lj1601-.Ld15
	.long	.Lj1602-.Ld15
	.long	.Lj1603-.Ld15
	.long	.Lj1604-.Ld15
	.long	.Lj1605-.Ld15
	.long	.Lj1606-.Ld15
	.long	.Lj1607-.Ld15
	.long	.Lj1608-.Ld15
	.long	.Lj1608-.Ld15
	.long	.Lj1608-.Ld15
	.long	.Lj1608-.Ld15
	.long	.Lj1608-.Ld15

.section .text.n_retro_$$_initsinetable,"x"
	.balign 16,0x90
.globl	RETRO_$$_INITSINETABLE
RETRO_$$_INITSINETABLE:
.Lc112:
.seh_proc RETRO_$$_INITSINETABLE
.Ll651:
# [1530] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc114:
.seh_stackalloc 32
# Var i located in register ebx
.seh_endprologue
# Var i located in register ebx
.Ll652:
# [1531] for i:=0 to 65535 do
	movl	$0,%ebx
	subl	$1,%ebx
	.balign 8,0x90
.Lj1911:
	addl	$1,%ebx
.Ll653:
# [1532] sinetable[i]:=round(8388607*sin(2*pi*i/65536));
	cvtsi2sd	%ebx,%xmm0
	mulsd	_$RETRO$_Ld17(%rip),%xmm0
	mulsd	_$RETRO$_Ld18(%rip),%xmm0
	call	fpc_sin_real
	mulsd	_$RETRO$_Ld16(%rip),%xmm0
	cvtsd2siq	%xmm0,%rax
# PeepHole Optimization,var2a
	movl	%ebx,%edx
	leaq	U_$RETRO_$$_SINETABLE(%rip),%rcx
	movl	%eax,(%rcx,%rdx,4)
.Ll654:
	cmpl	$65535,%ebx
	jl	.Lj1911
.Ll655:
# [1534] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc113:
.Lt40:
.Ll656:

.section .text.n_retro_$$_initlogtable,"x"
	.balign 16,0x90
.globl	RETRO_$$_INITLOGTABLE
RETRO_$$_INITLOGTABLE:
.Lc115:
# Var i located in register ecx
# Var q located in register xmm1
# Var q2 located in register xmm2
# [1541] begin
# Var q located in register xmm1
.Ll657:
# [1542] q:=4294967296;
	movsd	_$RETRO$_Ld19(%rip),%xmm1
# Var q2 located in register xmm2
.Ll658:
# [1543] q2:=0.999841363784793800909651;
	movsd	_$RETRO$_Ld20(%rip),%xmm2
# Var i located in register ecx
.Ll659:
# [1545] for i:=65535 downto 0 do
	movl	$65535,%ecx
	addl	$1,%ecx
	.balign 8,0x90
.Lj1924:
	subl	$1,%ecx
.Ll660:
# [1547] q:=q*q2;
	movapd	%xmm1,%xmm0
	mulsd	%xmm2,%xmm0
	movapd	%xmm0,%xmm1
.Ll661:
# [1548] logtable[i]:=trunc(q);
	movapd	%xmm1,%xmm0
	cvttsd2siq	%xmm0,%rax
# PeepHole Optimization,var2a
	movl	%ecx,%edx
	leaq	U_$RETRO_$$_LOGTABLE(%rip),%r8
	movl	%eax,(%r8,%rdx,4)
.Ll662:
	testl	%ecx,%ecx
	jg	.Lj1924
.Ll663:
# [1550] end;
	ret
.Lc116:
.Lt41:
.Ll664:

.section .text.n_retro_$$_fmsynth$$tsample,"x"
	.balign 16,0x90
.globl	RETRO_$$_FMSYNTH$$TSAMPLE
RETRO_$$_FMSYNTH$$TSAMPLE:
.Lc117:
.seh_proc RETRO_$$_FMSYNTH$$TSAMPLE
.Ll665:
# [1611] begin
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-32(%rsp),%rsp
.Lc119:
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
.Ll666:
# [1612] ft:=gettime;
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,U_$RETRO_$$_FT(%rip)
# Var i located in register r10d
.Ll667:
# [1632] for i:=1 to 1000 do
	movl	$1,%r10d
	subl	$1,%r10d
	.balign 8,0x90
.Lj1935:
	addl	$1,%r10d
.Ll668:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rax
.Ll669:
# [1634] opdata[0]:=(opdata[0]+((opdata[1]*opdata[2]) shr 24)*opdata[3]*opdata[4] shr 24);
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
.Ll670:
	leaq	U_$RETRO_$$_OUTPUTTABLE(%rip),%rax
.Ll671:
# [1638] modulator:=outputtable[0]*opdata[6]
	movslq	(%rax),%r11
.Ll672:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rdx
.Ll673:
	movl	24(%rdx),%ecx
	imulq	%r11,%rcx
.Ll674:
# [1639] +outputtable[1]*opdata[7]
	movslq	4(%rax),%rdi
	movl	28(%rdx),%r11d
	imulq	%rdi,%r11
	leaq	(%rcx,%r11),%r11
.Ll675:
# [1640] +outputtable[2]*opdata[8]
	movslq	8(%rax),%rdi
	movl	32(%rdx),%ecx
	imulq	%rdi,%rcx
	leaq	(%r11,%rcx),%r11
.Ll676:
# [1641] +outputtable[3]*opdata[9]
	movslq	12(%rax),%rdi
	movl	36(%rdx),%ecx
	imulq	%rdi,%rcx
	leaq	(%r11,%rcx),%r11
.Ll677:
# [1642] +outputtable[4]*opdata[10]
	movslq	16(%rax),%rdi
	movl	40(%rdx),%ecx
	imulq	%rdi,%rcx
	leaq	(%r11,%rcx),%r11
.Ll678:
# [1643] +outputtable[5]*opdata[11]
	movslq	20(%rax),%rdi
	movl	44(%rdx),%ecx
	imulq	%rdi,%rcx
	leaq	(%r11,%rcx),%r11
.Ll679:
# [1644] +outputtable[6]*opdata[12]
	movslq	24(%rax),%rdi
	movl	48(%rdx),%ecx
	imulq	%rdi,%rcx
	leaq	(%r11,%rcx),%r11
.Ll680:
# [1645] +outputtable[7]*opdata[13];
	movslq	28(%rax),%rcx
	movl	52(%rdx),%eax
	imulq	%rcx,%rax
	leaq	(%r11,%rax),%rax
.Ll681:
	movq	%rax,%r8
.Ll682:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rax
.Ll683:
# [1647] opdata[5]:=((opdata[5]+(modulator shr 32)+opdata[0]));
	movl	20(%rax),%ecx
	movq	%r8,%rdx
	shrq	$32,%rdx
	leaq	(%rcx,%rdx),%rdx
	movl	(%rax),%ecx
	leaq	(%rdx,%rcx),%rdx
	movl	%edx,20(%rax)
.Ll684:
# [1654] sample:=sinetable[opdata[5]];
	movl	U_$RETRO_$$_OPDATA+20(%rip),%edx
	leaq	U_$RETRO_$$_SINETABLE(%rip),%rax
	movslq	(%rax,%rdx,4),%rax
	movq	%rax,%rbx
.Ll685:
# [1671] if opdata[19]=4 then  // release
	cmpl	$4,U_$RETRO_$$_OPDATA+76(%rip)
	jne	.Lj1953
.Ll686:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rax
.Ll687:
# [1673] opdata[18]:=opdata[18]+opdata[26];
	movl	72(%rax),%ecx
	movl	104(%rax),%edx
	leal	(%ecx,%edx),%edx
	movl	%edx,72(%rax)
	jmp	.Lj1958
.Lj1953:
.Ll688:
# [1678] else if opdata[19]=1 then //attack
	cmpl	$1,U_$RETRO_$$_OPDATA+76(%rip)
	jne	.Lj1960
.Ll689:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rax
.Ll690:
# [1680] opdata[18]:=opdata[18]+opdata[20];
	movl	72(%rax),%edx
	movl	80(%rax),%ecx
	leal	(%edx,%ecx),%edx
	movl	%edx,72(%rax)
.Ll691:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rax
.Ll692:
# [1681] if opdata[20]>=opdata[21] then opdata[19]:=2;
	movl	80(%rax),%edx
	cmpl	84(%rax),%edx
.Ll693:
	jnae	.Lj1971
.Ll694:
	movl	$2,U_$RETRO_$$_OPDATA+76(%rip)
	jmp	.Lj1971
.Lj1960:
.Ll695:
# [1683] else if opdata[19]=2 then  // decay 1
	cmpl	$2,U_$RETRO_$$_OPDATA+76(%rip)
	jne	.Lj1973
.Ll696:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rax
.Ll697:
# [1685] opdata[18]:=opdata[18]+opdata[22];
	movl	72(%rax),%edx
	movl	88(%rax),%ecx
	leal	(%edx,%ecx),%edx
	movl	%edx,72(%rax)
	jmp	.Lj1978
.Lj1973:
.Ll698:
# [1690] else if opdata[19]=3 then  // decay 2
	cmpl	$3,U_$RETRO_$$_OPDATA+76(%rip)
	jne	.Lj1980
.Ll699:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rax
.Ll700:
# [1692] opdata[18]:=opdata[18]+opdata[24];
	movl	72(%rax),%ecx
	movl	96(%rax),%edx
	leal	(%ecx,%edx),%edx
	movl	%edx,72(%rax)
.Lj1980:
.Lj1978:
.Lj1971:
.Lj1958:
.Ll701:
# [1698] sample:=(sample*opdata[18])shr 32;
	movl	U_$RETRO_$$_OPDATA+72(%rip),%edx
	movq	%rbx,%rax
	imulq	%rdx,%rax
	shrq	$32,%rax
	movq	%rax,%rbx
.Ll702:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rax
.Ll703:
# [1713] sample:=(sample*opdata[29]*opdata[30]) shr 24;
	movl	116(%rax),%ecx
	movq	%rbx,%rdx
	imulq	%rcx,%rdx
	movl	120(%rax),%eax
	imulq	%rdx,%rax
	shrq	$24,%rax
	movq	%rax,%rbx
.Ll704:
	leaq	U_$RETRO_$$_OPDATA(%rip),%rax
.Ll705:
# [1714] vel:=$FFFFFF-opdata[31]+opdata[31]*opdata[32];
	movl	128(%rax),%ecx
.Ll706:
	movl	124(%rax),%edx
# PeepHole Optimization,var2a
.Ll707:
	movl	%edx,%eax
	imulq	%rcx,%rax
	andl	$4294967295,%edx
	movq	$16777215,%rcx
	subq	%rdx,%rcx
	leaq	(%rax,%rcx),%rax
# PeepHole Optimization,MovMov2Mov1
	movq	%rax,%r9
.Ll708:
# [1715] sample:=(sample*vel) shr 24;
	imulq	%rbx,%rax
	shrq	$24,%rax
	movq	%rax,%rbx
.Ll709:
# [1716] sample:=(sample*opdata[33]) div $1000000;
	movl	U_$RETRO_$$_OPDATA+132(%rip),%edx
	movq	%rbx,%rax
	imulq	%rdx,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$16777215,%rdx
	addq	%rdx,%rax
	sarq	$24,%rax
	movq	%rax,%rbx
.Ll710:
# [1717] sample:=(sample*opdata[34]) div $1000000;
	movl	U_$RETRO_$$_OPDATA+136(%rip),%edx
	movq	%rbx,%rax
	imulq	%rdx,%rax
	movq	%rax,%rdx
	sarq	$63,%rdx
	andq	$16777215,%rdx
	addq	%rdx,%rax
	sarq	$24,%rax
	movq	%rax,%rbx
.Ll711:
	cmpl	$1000,%r10d
	jl	.Lj1935
.Ll712:
# [1724] ftt:=gettime-ft;
	call	RETRO_$$_GETTIME$$INT64
	movq	U_$RETRO_$$_FT(%rip),%rdx
	subq	%rdx,%rax
	movq	%rax,U_$RETRO_$$_FTT(%rip)
.Ll713:
# [1728] fmsynth[0]:=sample;
	movw	%bx,%ax
	movw	%ax,(%rsi)
.Ll714:
# [1729] fmsynth[1]:=sample;
	movw	%bx,2(%rsi)
.Ll715:
# [1731] end;
	nop
	leaq	32(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc118:
.Lt42:
.Ll716:

.section .text.n_retro_$$_antialias6$double$tfiltertable$$double,"x"
	.balign 16,0x90
.globl	RETRO_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE
RETRO_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE:
.Lc120:
# Var input located in register xmm0
# Var ft located in register rax
# Var $result located in register xmm0
.Ll717:
# [1742] begin
	movq	%rdx,%rax
.Ll718:
# [1744] ft[0]:=ft[1];
	movq	8(%rax),%rdx
	movq	%rdx,(%rax)
.Ll719:
# [1745] ft[1]:=ft[2];
	movq	16(%rax),%rdx
	movq	%rdx,8(%rax)
.Ll720:
# [1746] ft[2]:=ft[3];
	movq	24(%rax),%rdx
	movq	%rdx,16(%rax)
.Ll721:
# [1747] ft[3]:=ft[4];
	movq	32(%rax),%rdx
	movq	%rdx,24(%rax)
.Ll722:
# [1748] ft[4]:=ft[5];
	movq	40(%rax),%rdx
	movq	%rdx,32(%rax)
.Ll723:
# [1749] ft[5]:=ft[6];
	movq	48(%rax),%rdx
	movq	%rdx,40(%rax)
.Ll724:
# [1751] ft[6]:=input/gain;
	divsd	TC_$RETRO$_$ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE_$$_GAIN(%rip),%xmm0
	movsd	%xmm0,48(%rax)
.Ll725:
# [1753] ft[7]:=ft[8];
	movq	64(%rax),%rdx
	movq	%rdx,56(%rax)
.Ll726:
# [1754] ft[8]:=ft[9];
	movq	72(%rax),%rdx
	movq	%rdx,64(%rax)
.Ll727:
# [1755] ft[9]:=ft[10];
	movq	80(%rax),%rdx
	movq	%rdx,72(%rax)
.Ll728:
# [1756] ft[10]:=ft[11];
	movq	88(%rax),%rdx
	movq	%rdx,80(%rax)
.Ll729:
# [1757] ft[11]:=ft[12];
	movq	96(%rax),%rdx
	movq	%rdx,88(%rax)
.Ll730:
# [1758] ft[12]:=ft[13];
	movq	104(%rax),%rdx
	movq	%rdx,96(%rax)
.Ll731:
# [1760] ft[13]:=(ft[0]+ft[6])+6*(ft[1]+ft[5])+15*(ft[3]+ft[4])+20*ft[3]
	movsd	8(%rax),%xmm0
	addsd	40(%rax),%xmm0
	mulsd	_$RETRO$_Ld21(%rip),%xmm0
	movsd	(%rax),%xmm1
	addsd	48(%rax),%xmm1
	addsd	%xmm1,%xmm0
.Ll732:
	movsd	24(%rax),%xmm2
.Ll733:
	movapd	%xmm2,%xmm1
	addsd	32(%rax),%xmm1
	mulsd	_$RETRO$_Ld22(%rip),%xmm1
	addsd	%xmm0,%xmm1
	movsd	_$RETRO$_Ld23(%rip),%xmm0
	mulsd	%xmm2,%xmm0
	addsd	%xmm1,%xmm0
.Ll734:
# [1761] + ( -0.7992422456 * ft[7]) + (  4.9534616898 * ft[8])
	movsd	_$RETRO$_Ld24(%rip),%xmm1
	mulsd	56(%rax),%xmm1
	addsd	%xmm0,%xmm1
	movsd	_$RETRO$_Ld25(%rip),%xmm0
	mulsd	64(%rax),%xmm0
	addsd	%xmm1,%xmm0
.Ll735:
# [1762] + (-12.8163705530 * ft[9]) + ( 17.7202717200 * ft[10])
	movsd	_$RETRO$_Ld26(%rip),%xmm1
	mulsd	72(%rax),%xmm1
	addsd	%xmm0,%xmm1
	movsd	_$RETRO$_Ld27(%rip),%xmm0
	mulsd	80(%rax),%xmm0
	addsd	%xmm1,%xmm0
.Ll736:
# [1763] + (-13.8090381750 * ft[11]) + (  5.7509166299 * ft[12]);
	movsd	_$RETRO$_Ld28(%rip),%xmm1
	mulsd	88(%rax),%xmm1
	addsd	%xmm0,%xmm1
	movsd	_$RETRO$_Ld29(%rip),%xmm0
	mulsd	96(%rax),%xmm0
	addsd	%xmm1,%xmm0
.Ll737:
	movsd	%xmm0,104(%rax)
# Var $result located in register xmm0
.Ll738:
# [1765] antialias6:=ft[13];
	movsd	104(%rax),%xmm0
.Ll739:
# [1766] end;
	ret
.Lc121:
.Lt38:
.Ll740:

.section .text.n_retro_$$_sdl_sound_init$$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_SDL_SOUND_INIT$$LONGINT
RETRO_$$_SDL_SOUND_INIT$$LONGINT:
.Lc122:
.seh_proc RETRO_$$_SDL_SOUND_INIT$$LONGINT
.Ll741:
# [1772] begin
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc124:
.seh_stackalloc 32
# Var $result located in register ebx
.seh_endprologue
# Var $result located in register ebx
.Ll742:
# [1773] Result:=0;
	movl	$0,%ebx
.Ll743:
# [1774] desired.freq := 96000;                                     // sample rate
	movl	$96000,U_$RETRO_$$_DESIRED(%rip)
.Ll744:
# [1775] desired.format := AUDIO_S16;                               // 16-bit samples
	movw	$32784,U_$RETRO_$$_DESIRED+4(%rip)
.Ll745:
# [1776] desired.samples := 960;                                    // samples for 1 callback
	movw	$960,U_$RETRO_$$_DESIRED+8(%rip)
.Ll746:
# [1777] desired.channels := 2;                                     // stereo
	movb	$2,U_$RETRO_$$_DESIRED+6(%rip)
.Ll747:
# [1778] desired.callback := @AudioCallback;
	leaq	RETRO_$$_AUDIOCALLBACK$POINTER$PBYTE$LONGINT(%rip),%rax
	movq	%rax,U_$RETRO_$$_DESIRED+16(%rip)
.Ll748:
# [1779] desired.userdata := nil;
	movq	$0,U_$RETRO_$$_DESIRED+24(%rip)
.Ll749:
# [1781] if (SDL_OpenAudio(@desired, @obtained) < 0) then
	leaq	U_$RETRO_$$_OBTAINED(%rip),%rdx
	leaq	U_$RETRO_$$_DESIRED(%rip),%rcx
	call	_$dll$sdl2$SDL_OpenAudio
	cmpl	$0,%eax
	jnl	.Lj2060
.Ll750:
# [1783] Result:=-2;
	movl	$-2,%ebx
.Lj2060:
.Ll751:
# [1785] end;
	movl	%ebx,%eax
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc123:
.Lt37:
.Ll752:

.section .text.n_retro_$$_audiocallback$pointer$pbyte$longint,"x"
	.balign 16,0x90
.globl	RETRO_$$_AUDIOCALLBACK$POINTER$PBYTE$LONGINT
RETRO_$$_AUDIOCALLBACK$POINTER$PBYTE$LONGINT:
.Lc125:
.seh_proc RETRO_$$_AUDIOCALLBACK$POINTER$PBYTE$LONGINT
.Ll753:
# [1801] begin
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
	leaq	-96(%rsp),%rsp
.Lc127:
.seh_stackalloc 96
	movdqa	%xmm6,80(%rsp)
# Var userdata located in register rcx
# Var audio located in register rbx
# Var length located in register r8d
# Var audio2 located in register rbx
# Var fs located in register xmm6
# Var t located in register rsi
# Var k located in register eax
# Var i located in register r13d
# Var il located in register eax
# Var j located in register edi
# Var s1 located in register r12w
.seh_savexmm %xmm6, 80
.seh_endprologue
# Var s located at rsp+32, size=OS_32
# Var buf located at rsp+40, size=OS_NO
	movq	%rdx,%rbx
# Var audio2 located in register rbx
# Var audio located in register rbx
.Ll754:
# [1804] t:=gettime;
	call	RETRO_$$_GETTIME$$INT64
	movq	%rax,%rsi
# Var t located in register rsi
# Var i located in register r13d
.Ll755:
# [1806] for i:=0 to 959 do
	movl	$0,%r13d
	subl	$1,%r13d
	.balign 8,0x90
.Lj2075:
	addl	$1,%r13d
.Ll756:
# [1808] gain:=gain*1.0000002;
	movsd	TC_$RETRO_$$_GAIN(%rip),%xmm0
	mulsd	_$RETRO$_Ld30(%rip),%xmm0
	movsd	%xmm0,TC_$RETRO_$$_GAIN(%rip)
.Ll757:
# [1809] if gain>1 then gain:=1;
	movsd	_$RETRO$_Ld31(%rip),%xmm0
	comisd	TC_$RETRO_$$_GAIN(%rip),%xmm0
	jp	.Lj2079
	jnb	.Lj2079
	movq	_$RETRO$_Ld31(%rip),%rax
	movq	%rax,TC_$RETRO_$$_GAIN(%rip)
.Lj2079:
.Ll758:
# [1811] fs:=0.25*voices[0].getsample;
	movq	U_$FMSYNTH_$$_VOICES(%rip),%rcx
	call	FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
	mulsd	_$RETRO$_Ld32(%rip),%xmm0
	movapd	%xmm0,%xmm6
.Ll759:
# [1812] for j:=1 to maxchannel-1 do
	movl	$1,%edi
	subl	$1,%edi
	.balign 8,0x90
.Lj2089:
	addl	$1,%edi
# PeepHole Optimization,var2a
.Ll760:
# [1813] fs+=0.25*voices[j].getsample;
	movl	%edi,%eax
	leaq	U_$FMSYNTH_$$_VOICES(%rip),%rdx
	movq	(%rdx,%rax,8),%rcx
	call	FMSYNTH$_$TFMVOICE_$__$$_GETSAMPLE$$DOUBLE
	mulsd	_$RETRO$_Ld32(%rip),%xmm0
	addsd	%xmm6,%xmm0
	movapd	%xmm0,%xmm6
.Ll761:
	cmpl	$29,%edi
	jl	.Lj2089
.Ll762:
# [1814] if edelay then fs:=delay1(fs);
	cmpb	$0,TC_$RETRO_$$_EDELAY(%rip)
	je	.Lj2095
	movapd	%xmm6,%xmm0
	call	RETRO_$$_DELAY1$DOUBLE$$DOUBLE
	movapd	%xmm0,%xmm6
.Lj2095:
.Ll763:
# [1815] if gain*abs(fs)>1 then gain:=1/(1.01*abs(fs));
	movapd	%xmm6,%xmm0
	andpd	FPC_ABSMASK_DOUBLE(%rip),%xmm0
	mulsd	TC_$RETRO_$$_GAIN(%rip),%xmm0
	comisd	_$RETRO$_Ld31(%rip),%xmm0
	jp	.Lj2101
	jna	.Lj2101
	movapd	%xmm6,%xmm0
	andpd	FPC_ABSMASK_DOUBLE(%rip),%xmm0
	mulsd	_$RETRO$_Ld33(%rip),%xmm0
	movsd	_$RETRO$_Ld31(%rip),%xmm1
	divsd	%xmm0,%xmm1
	movsd	%xmm1,TC_$RETRO_$$_GAIN(%rip)
.Lj2101:
.Ll764:
# [1817] fs:=fs*gain;
	movapd	%xmm6,%xmm0
	mulsd	TC_$RETRO_$$_GAIN(%rip),%xmm0
	movapd	%xmm0,%xmm6
.Ll765:
# [1818] s1:=round(32767*fs);
	movsd	_$RETRO$_Ld34(%rip),%xmm0
	mulsd	%xmm6,%xmm0
	cvtsd2siq	%xmm0,%rax
	movw	%ax,%r12w
.Ll766:
# [1819] s[0]:=s1;
	movw	%r12w,32(%rsp)
.Ll767:
# [1820] s[1]:=s1;
	movw	%r12w,34(%rsp)
.Ll768:
# [1823] audio2[2*i]:=s[0];
	movslq	%r13d,%rax
	shlq	$1,%rax
	movw	32(%rsp),%dx
	movw	%dx,(%rbx,%rax,2)
.Ll769:
# [1824] audio2[2*i+1]:=s[1];
	movslq	%r13d,%rax
	shlq	$1,%rax
	movw	34(%rsp),%dx
	movw	%dx,2(%rbx,%rax,2)
.Ll770:
# [1825] oldsc:=sc;
	movl	TC_$RETRO_$$_SC(%rip),%eax
	movl	%eax,TC_$RETRO_$$_OLDSC(%rip)
.Ll771:
# [1826] sc:=s[0]+s[1];
	movswl	32(%rsp),%eax
	movswl	34(%rsp),%edx
	leal	(%eax,%edx),%eax
	movl	%eax,TC_$RETRO_$$_SC(%rip)
.Ll772:
# [1827] scope[scj div 1]:=sc; inc(scj); if scj>959 then if (oldsc<0) and (sc>0) then scj:=0 else scj:=959;
	movl	TC_$RETRO_$$_SCJ(%rip),%eax
	movl	TC_$RETRO_$$_SC(%rip),%edx
	leaq	U_$RETRO_$$_SCOPE(%rip),%rcx
	movl	%edx,(%rcx,%rax,4)
	addl	$1,TC_$RETRO_$$_SCJ(%rip)
	cmpl	$959,TC_$RETRO_$$_SCJ(%rip)
	jng	.Lj2124
	cmpl	$0,TC_$RETRO_$$_OLDSC(%rip)
	jnl	.Lj2126
	cmpl	$0,TC_$RETRO_$$_SC(%rip)
	jng	.Lj2126
	movl	$0,TC_$RETRO_$$_SCJ(%rip)
	jmp	.Lj2130
.Lj2126:
	movl	$959,TC_$RETRO_$$_SCJ(%rip)
.Lj2130:
.Lj2124:
.Ll773:
	cmpl	$959,%r13d
	jl	.Lj2075
.Ll774:
# [1830] sidtime:=gettime-t;
	call	RETRO_$$_GETTIME$$INT64
	subq	%rsi,%rax
	movq	%rax,U_$RETRO_$$_SIDTIME(%rip)
.Ll775:
# [1831] end;
	nop
	movdqa	80(%rsp),%xmm6
	leaq	96(%rsp),%rsp
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc126:
.Lt36:
.Ll776:

.section .text.n_retro_$$_div$tsample$longint$$tsample,"x"
	.balign 16,0x90
.globl	RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE:
.Lc128:
# Temps allocated between rsp+8 and rsp+16
.seh_proc RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
.Ll777:
# [1836] begin
	leaq	-24(%rsp),%rsp
.Lc130:
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
.Ll778:
# [1837] result[0]:=a[0] div b;
	movswq	8(%rsp),%rax
	movslq	%r8d,%r9
	cqto
	idivq	%r9
	movw	%ax,(%rcx)
.Ll779:
# [1838] result[1]:=a[1] div b;
	movswq	10(%rsp),%rax
	movslq	%r8d,%r8
	cqto
	idivq	%r8
	movw	%ax,2(%rcx)
.Ll780:
# [1839] end;
	leaq	24(%rsp),%rsp
	ret
.seh_endproc
.Lc129:
.Lt43:
.Ll781:

.section .text.n_retro_$$_plus$tsample$tsample$$tsample,"x"
	.balign 16,0x90
.globl	RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE:
.Lc131:
# Temps allocated between rsp+16 and rsp+24
.seh_proc RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
.Ll782:
# [1844] begin
	leaq	-24(%rsp),%rsp
.Lc133:
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
.Ll783:
# [1845] q1:=a[0] + b[0];
	movswl	16(%rsp),%eax
	movswl	(%rsp),%edx
	leal	(%eax,%edx),%eax
# Var q1 located in register eax
.Ll784:
# [1846] q2:=a[1] + b[1];
	movswl	18(%rsp),%edx
	movswl	2(%rsp),%r8d
	leal	(%edx,%r8d),%edx
# Var q2 located in register edx
.Ll785:
# [1847] if q1>32767 then q1:=32767;
	cmpl	$32767,%eax
	jng	.Lj2148
	movl	$32767,%eax
.Lj2148:
.Ll786:
# [1848] if q1<-32767 then q1:=-32767;
	cmpl	$-32767,%eax
	jnl	.Lj2152
	movl	$-32767,%eax
.Lj2152:
.Ll787:
# [1849] if q2>32767 then q2:=32767;
	cmpl	$32767,%edx
	jng	.Lj2156
	movl	$32767,%edx
.Lj2156:
.Ll788:
# [1850] if q2<-32767 then q2:=-32767;
	cmpl	$-32767,%edx
	jnl	.Lj2160
	movl	$-32767,%edx
.Lj2160:
.Ll789:
# [1851] result[0]:=q1;
	movw	%ax,(%rcx)
.Ll790:
# [1852] result[1]:=q2;
	movw	%dx,2(%rcx)
.Ll791:
# [1853] end;
	leaq	24(%rsp),%rsp
	ret
.seh_endproc
.Lc132:
.Lt44:
.Ll792:

.section .text.n_retro_$$_delay1$double$$double,"x"
	.balign 16,0x90
.globl	RETRO_$$_DELAY1$DOUBLE$$DOUBLE
RETRO_$$_DELAY1$DOUBLE$$DOUBLE:
.Lc134:
# Var s located in register xmm1
# Var $result located in register xmm0
.Ll793:
# [1858] begin
	movapd	%xmm0,%xmm1
.Ll794:
# [1859] result:=(dl[de] / 2) +s;
	movl	TC_$RETRO_$$_DE(%rip),%edx
	leaq	U_$RETRO_$$_DL(%rip),%rax
	movsd	(%rax,%rdx,8),%xmm0
	mulsd	_$RETRO$_Ld35(%rip),%xmm0
	addsd	%xmm1,%xmm0
# Var $result located in register xmm0
.Ll795:
	leaq	U_$RETRO_$$_DL(%rip),%rax
	movl	TC_$RETRO_$$_DE(%rip),%ecx
# PeepHole Optimization,var2a
.Ll796:
# [1860] dl[de]:=(dl[de] / 2) +s;
	movl	%ecx,%edx
	movsd	(%rax,%rdx,8),%xmm2
	mulsd	_$RETRO$_Ld35(%rip),%xmm2
	addsd	%xmm1,%xmm2
	andl	$4294967295,%ecx
	movsd	%xmm2,(%rax,%rcx,8)
.Ll797:
# [1861] de:=(de+1) mod da;
	movslq	TC_$RETRO_$$_DE(%rip),%rax
	leaq	1(%rax),%rax
	movslq	TC_$RETRO_$$_DA(%rip),%rcx
	cqto
	idivq	%rcx
	movl	%edx,TC_$RETRO_$$_DE(%rip)
.Ll798:
# [1862] end;
	ret
.Lc135:
.Lt31:
.Ll799:

.section .text.n_retro_$$_reverb1$double$$double,"x"
	.balign 16,0x90
.globl	RETRO_$$_REVERB1$DOUBLE$$DOUBLE
RETRO_$$_REVERB1$DOUBLE$$DOUBLE:
.Lc136:
.seh_proc RETRO_$$_REVERB1$DOUBLE$$DOUBLE
.Ll800:
# [1871] begin
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
# Var s located in register xmm1
# Var $result located in register xmm0
# Var a1 located in register ecx
# Var a2 located in register r8d
# Var a3 located in register r9d
# Var a4 located in register r10d
# Var a5 located in register r11d
# Var a6 located in register ebx
# Var a7 located in register esi
# Var a8 located in register edi
# Var a9 located in register r12d
# Var a10 located in register edx
.seh_endprologue
	movapd	%xmm0,%xmm1
.Ll801:
# [1872] if sart=1 then begin sart:=0; rl[0]:=32767; end;
	cmpl	$1,TC_$RETRO$_$REVERB1$DOUBLE$$DOUBLE_$$_SART(%rip)
	jne	.Lj2182
	movl	$0,TC_$RETRO$_$REVERB1$DOUBLE$$DOUBLE_$$_SART(%rip)
	movq	_$RETRO$_Ld34(%rip),%rax
	movq	%rax,U_$RETRO_$$_RL(%rip)
.Lj2182:
.Ll802:
# [1873] ra:=657 ;
	movl	$657,TC_$RETRO_$$_RA(%rip)
.Ll803:
# [1874] a1:=(ra+re-160) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	leaq	(%rax,%rcx),%rax
	leaq	-160(%rax),%rax
	cqto
	idivq	%rcx
	movq	%rdx,%rcx
# Var a1 located in register ecx
.Ll804:
# [1875] a2:=(ra+re-192) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%r8
	leaq	(%rax,%r8),%rax
	leaq	-192(%rax),%rax
	cqto
	idivq	%r8
	movq	%rdx,%r8
# Var a2 located in register r8d
.Ll805:
# [1876] a3:=(ra+re-256) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%r9
	leaq	(%rax,%r9),%rax
	leaq	-256(%rax),%rax
	cqto
	idivq	%r9
	movq	%rdx,%r9
# Var a3 located in register r9d
.Ll806:
# [1877] a4:=(ra+re-320) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%r10
	leaq	(%rax,%r10),%rax
	leaq	-320(%rax),%rax
	cqto
	idivq	%r10
	movq	%rdx,%r10
# Var a4 located in register r10d
.Ll807:
# [1878] a5:=(ra+re-352) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%r11
	leaq	(%rax,%r11),%rax
	leaq	-352(%rax),%rax
	cqto
	idivq	%r11
	movq	%rdx,%r11
# Var a5 located in register r11d
.Ll808:
# [1879] a6:=(ra+re-384) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rbx
	leaq	(%rax,%rbx),%rax
	leaq	-384(%rax),%rax
	cqto
	idivq	%rbx
# Var a6 located in register edx
.Ll809:
# [1880] a6:=(ra+re-448) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rbx
	leaq	(%rax,%rbx),%rax
	leaq	-448(%rax),%rax
	cqto
	idivq	%rbx
	movq	%rdx,%rbx
# Var a6 located in register ebx
.Ll810:
# [1881] a7:=(ra+re-480) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rsi
	leaq	(%rax,%rsi),%rax
	leaq	-480(%rax),%rax
	cqto
	idivq	%rsi
	movq	%rdx,%rsi
# Var a7 located in register esi
.Ll811:
# [1882] a8:=(ra+re-512) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rdi
	leaq	(%rax,%rdi),%rax
	leaq	-512(%rax),%rax
	cqto
	idivq	%rdi
	movq	%rdx,%rdi
# Var a8 located in register edi
.Ll812:
# [1883] a9:=(ra+re-576) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%r12
	leaq	(%rax,%r12),%rax
	leaq	-576(%rax),%rax
	cqto
	idivq	%r12
	movq	%rdx,%r12
# Var a9 located in register r12d
.Ll813:
# [1884] a10:=(ra+re-640) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%r13
	leaq	(%rax,%r13),%rax
	leaq	-640(%rax),%rax
	cqto
	idivq	%r13
# Var a10 located in register edx
.Ll814:
	leaq	U_$RETRO_$$_RL(%rip),%rax
.Ll815:
# [1886] result:=(rl[re] / 2) +s
	movl	TC_$RETRO_$$_RE(%rip),%r13d
	movsd	(%rax,%r13,8),%xmm0
	mulsd	_$RETRO$_Ld35(%rip),%xmm0
	addsd	%xmm1,%xmm0
.Ll816:
# [1887] + (rl[a1] / 4)
	andl	$4294967295,%ecx
	movsd	(%rax,%rcx,8),%xmm2
	mulsd	_$RETRO$_Ld32(%rip),%xmm2
	addsd	%xmm0,%xmm2
.Ll817:
# [1888] + (rl[a2] / 6)
	andl	$4294967295,%r8d
	movsd	(%rax,%r8,8),%xmm0
	mulsd	_$RETRO$_Ld36(%rip),%xmm0
	addsd	%xmm2,%xmm0
.Ll818:
# [1889] + (rl[a3] / 8)
	andl	$4294967295,%r9d
	movsd	(%rax,%r9,8),%xmm2
	mulsd	_$RETRO$_Ld37(%rip),%xmm2
	addsd	%xmm0,%xmm2
.Ll819:
# [1890] + (rl[a4] / 10)
	andl	$4294967295,%r10d
	movsd	(%rax,%r10,8),%xmm0
	mulsd	_$RETRO$_Ld38(%rip),%xmm0
	addsd	%xmm2,%xmm0
.Ll820:
# [1891] + (rl[a5] / 12)
	andl	$4294967295,%r11d
	movsd	(%rax,%r11,8),%xmm2
	mulsd	_$RETRO$_Ld39(%rip),%xmm2
	addsd	%xmm0,%xmm2
.Ll821:
# [1892] + (rl[a6] / 14)
	andl	$4294967295,%ebx
	movsd	(%rax,%rbx,8),%xmm0
	mulsd	_$RETRO$_Ld40(%rip),%xmm0
	addsd	%xmm2,%xmm0
.Ll822:
# [1893] + (rl[a7] / 16)
	andl	$4294967295,%esi
	movsd	(%rax,%rsi,8),%xmm2
	mulsd	_$RETRO$_Ld41(%rip),%xmm2
	addsd	%xmm0,%xmm2
.Ll823:
# [1894] + (rl[a8]/ 18)
	andl	$4294967295,%edi
	movsd	(%rax,%rdi,8),%xmm0
	mulsd	_$RETRO$_Ld42(%rip),%xmm0
	addsd	%xmm2,%xmm0
.Ll824:
# [1895] + (rl[a9] /20)
	andl	$4294967295,%r12d
	movsd	(%rax,%r12,8),%xmm2
	mulsd	_$RETRO$_Ld43(%rip),%xmm2
	addsd	%xmm0,%xmm2
.Ll825:
# [1896] + (rl[a10] / 22)
	andl	$4294967295,%edx
	movsd	(%rax,%rdx,8),%xmm0
	mulsd	_$RETRO$_Ld44(%rip),%xmm0
	addsd	%xmm2,%xmm0
# Var $result located in register xmm0
.Ll826:
	leaq	U_$RETRO_$$_RL(%rip),%rax
	movl	TC_$RETRO_$$_RE(%rip),%ecx
# PeepHole Optimization,var2a
.Ll827:
# [1900] rl[re]:=(rl[re] / 2) +s;
	movl	%ecx,%edx
	movsd	(%rax,%rdx,8),%xmm2
	mulsd	_$RETRO$_Ld35(%rip),%xmm2
	addsd	%xmm1,%xmm2
	andl	$4294967295,%ecx
	movsd	%xmm2,(%rax,%rcx,8)
.Ll828:
# [1901] re:=(re+1) mod ra;
	movslq	TC_$RETRO_$$_RE(%rip),%rax
	leaq	1(%rax),%rax
	movslq	TC_$RETRO_$$_RA(%rip),%rcx
	cqto
	idivq	%rcx
	movl	%edx,TC_$RETRO_$$_RE(%rip)
.Ll829:
# [1902] end;
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc137:
.Lt45:
.Ll830:
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
	.quad	.Ld45
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
# [1906] 
	.balign 8
.Ld45:
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
# [975] b22:cardinal=1 shl 22;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b22,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B22:
	.long	4194304
# [976] b20:cardinal=1 shl 20;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b20,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B20:
	.long	1048576
# [977] b16:cardinal=1 shl 16;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b16,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B16:
	.long	65536
# [978] b13:cardinal=1 shl 13;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b13,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B13:
	.long	8192
# [979] b11:cardinal=1 shl 11;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b11,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B11:
	.long	2048
# [980] b07:cardinal=1 shl 07;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b07,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B07:
	.long	128
# [981] b04:cardinal=1 shl 04;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b04,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B04:
	.long	16
# [982] b02:cardinal=1 shl 02;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b02,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B02:
	.long	4
# [983] b17:cardinal=1 shl 17;

.section .data.n_tc_$retro$_$noise1$$byte_$$_b17,"d"
	.balign 4
TC_$RETRO$_$NOISE1$$BYTE_$$_B17:
	.long	131072
# [985] var output:cardinal;

.section .data.n_tc_$retro$_$noise2$$longword_$$_a,"d"
	.balign 8
TC_$RETRO$_$NOISE2$$LONGWORD_$$_A:
	.quad	8388600
# [1008] var output:int64;

.section .data.n_tc_$retro$_$noise3$$longword_$$_a,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_A:
	.quad	8388600
# [1030] b22:int64=1 shl 22;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b22,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B22:
	.quad	4194304
# [1031] b20:int64=1 shl 20;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b20,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B20:
	.quad	1048576
# [1032] b16:int64=1 shl 16;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b16,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B16:
	.quad	65536
# [1033] b13:int64=1 shl 13;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b13,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B13:
	.quad	8192
# [1034] b11:int64=1 shl 11;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b11,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B11:
	.quad	2048
# [1035] b07:int64=1 shl 07;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b07,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B07:
	.quad	128
# [1036] b04:int64=1 shl 04;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b04,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B04:
	.quad	16
# [1037] b02:int64=1 shl 02;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b02,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B02:
	.quad	4
# [1038] b17:int64=1 shl 17;

.section .data.n_tc_$retro$_$noise3$$longword_$$_b17,"d"
	.balign 8
TC_$RETRO$_$NOISE3$$LONGWORD_$$_B17:
	.quad	131072
# [1040] var output:int64;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa1,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1086] pa2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1087] pa3:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa3,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1088] pa1n:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa1n,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1N:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1089] pa2n:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa2n,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2N:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1090] pa3n:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa3n,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3N:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1092] pa1i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa1i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1I:
	.long	0
# [1093] pa2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2I:
	.long	0
# [1094] pa3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3I:
	.long	0
# [1095] pa1ni:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa1ni,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA1NI:
	.long	0
# [1096] pa2ni:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa2ni,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA2NI:
	.long	0
# [1097] pa3ni:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pa3ni,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PA3NI:
	.long	0
# [1099] filter_b:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_b,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1100] filter_h:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_h,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1101] filter_l:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_l,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1103] filter_b2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_b2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1104] filter_h2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_h2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1105] filter_l2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_l2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1107] filter_b3:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_b3,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B3:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1108] filter_h3:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_h3,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H3:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1109] filter_l3:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_l3,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L3:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1112] filter_bi:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_bi,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_BI:
	.long	0
# [1113] filter_hi:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_hi,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_HI:
	.long	0
# [1114] filter_li:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_li,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_LI:
	.long	0
# [1116] filter_b2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_b2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B2I:
	.long	0
# [1117] filter_h2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_h2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H2I:
	.long	0
# [1118] filter_l2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_l2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L2I:
	.long	0
# [1120] filter_b3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_b3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_B3I:
	.long	0
# [1121] filter_h3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_h3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_H3I:
	.long	0
# [1122] filter_l3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_l3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_L3I:
	.long	0
# [1126] wv1:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv1,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1127] wv2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1128] wv3:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv3,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1129] wv4i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv4i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV4I:
	.long	0
# [1130] wv5i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv5i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV5I:
	.long	0
# [1131] adsrvol1i:int64=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_adsrvol1i,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL1I:
	.quad	0
# [1132] adsrvol2i:int64=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_adsrvol2i,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL2I:
	.quad	0
# [1133] adsrvol3i:int64=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_adsrvol3i,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRVOL3I:
	.quad	0
# [1134] adsrstate1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_adsrstate1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE1:
	.byte	0
# [1135] adsrstate2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_adsrstate2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE2:
	.byte	0
# [1136] adsrstate3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_adsrstate3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_ADSRSTATE3:
	.byte	0
# [1137] sustainvol1i:int64=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sustainvol1i,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL1I:
	.quad	0
# [1138] sustainvol2i:int64=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sustainvol2i,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL2I:
	.quad	0
# [1139] sustainvol3i:int64=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sustainvol3i,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SUSTAINVOL3I:
	.quad	0
# [1140] oldsc:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_oldsc,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_OLDSC:
	.long	0
# [1141] sc:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sc,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SC:
	.long	0
# [1142] sli:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sli,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SLI:
	.long	0
# [1143] sri:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sri,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SRI:
	.long	0
# [1146] freq1:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq1,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1147] freq1n:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq1n,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1N:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1148] freq1i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq1i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1I:
	.long	0
# [1149] freq1ni:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq1ni,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ1NI:
	.long	0
# [1150] waveform1:word=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_waveform1,"d"
	.balign 2
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM1:
	.short	0
# [1151] gate1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_gate1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE1:
	.byte	0
# [1152] sa1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sa1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA1:
	.byte	0
# [1153] sd1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sd1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD1:
	.byte	0
# [1154] ss1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ss1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS1:
	.byte	0
# [1155] sr1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sr1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR1:
	.byte	0
# [1156] pw1i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pw1i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW1I:
	.long	0
# [1157] test1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_test1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST1:
	.byte	0
# [1158] sync1:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sync1,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC1:
	.long	0
# [1159] ring1:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ring1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING1:
	.byte	0
# [1160] f1:boolean=false;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_f1,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F1:
	.byte	0
# [1162] freq2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1163] freq2n:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq2n,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2N:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1164] freq2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2I:
	.long	0
# [1165] freq2ni:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq2ni,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ2NI:
	.long	0
# [1166] waveform2:word=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_waveform2,"d"
	.balign 2
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM2:
	.short	0
# [1167] gate2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_gate2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE2:
	.byte	0
# [1168] sa2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sa2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA2:
	.byte	0
# [1169] sd2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sd2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD2:
	.byte	0
# [1170] ss2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ss2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS2:
	.byte	0
# [1171] sr2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sr2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR2:
	.byte	0
# [1172] pw2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pw2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW2I:
	.long	0
# [1173] test2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_test2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST2:
	.byte	0
# [1174] sync2:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sync2,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC2:
	.long	0
# [1175] ring2:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ring2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING2:
	.byte	0
# [1176] f2:boolean=false;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_f2,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F2:
	.byte	0
# [1178] freq3:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq3,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1179] freq3n:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq3n,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3N:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1180] freq3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3I:
	.long	0
# [1181] freq3ni:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_freq3ni,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FREQ3NI:
	.long	0
# [1182] waveform3:word=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_waveform3,"d"
	.balign 2
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WAVEFORM3:
	.short	0
# [1183] gate3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_gate3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_GATE3:
	.byte	0
# [1184] sa3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sa3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SA3:
	.byte	0
# [1185] sd3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sd3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SD3:
	.byte	0
# [1186] ss3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ss3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SS3:
	.byte	0
# [1187] sr3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sr3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SR3:
	.byte	0
# [1188] pw3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_pw3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_PW3I:
	.long	0
# [1189] test3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_test3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_TEST3:
	.byte	0
# [1190] sync3:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_sync3,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_SYNC3:
	.long	0
# [1191] ring3:byte=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ring3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_RING3:
	.byte	0
# [1192] f3:boolean=false;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_f3,"d"
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_F3:
	.byte	0
# [1194] ff:word=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_ff,"d"
	.balign 2
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FF:
	.short	0
# [1195] filter_resonance2:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_resonance2,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1196] filter_freq:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_freq,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQ:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1197] filter_resonance2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_resonance2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_RESONANCE2I:
	.long	0
# [1198] filter_freqi:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_filter_freqi,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FILTER_FREQI:
	.long	0
# [1199] volume:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_volume,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_VOLUME:
	.long	0
# [1200] c3off:double=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_c3off,"d"
	.balign 8
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_C3OFF:
# value: 0d+0.0000000000000000E+000
	.byte	0,0,0,0,0,0,0,0
# [1202] fu:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_fu,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FU:
	.long	0
# [1203] fl:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_fl,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FL:
	.long	0
# [1204] fb:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_fb,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_FB:
	.long	0
# [1205] wv1i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv1i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV1I:
	.long	0
# [1206] wv2i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv2i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV2I:
	.long	0
# [1207] wv3i:integer=0;

.section .data.n_tc_$retro$_$sid$longint$$tsample_$$_wv3i,"d"
	.balign 4
TC_$RETRO$_$SID$LONGINT$$TSAMPLE_$$_WV3I:
	.long	0
# [1209] var i,sid1,sid1l,ind:integer;

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
# value: 0d+1.6666666666666666E-001
	.byte	85,85,85,85,85,85,197,63

.section .rodata.n__$RETRO$_Ld37,"d"
	.balign 8
.globl	_$RETRO$_Ld37
_$RETRO$_Ld37:
# value: 0d+1.2500000000000000E-001
	.byte	0,0,0,0,0,0,192,63

.section .rodata.n__$RETRO$_Ld38,"d"
	.balign 8
.globl	_$RETRO$_Ld38
_$RETRO$_Ld38:
# value: 0d+1.0000000000000001E-001
	.byte	154,153,153,153,153,153,185,63

.section .rodata.n__$RETRO$_Ld39,"d"
	.balign 8
.globl	_$RETRO$_Ld39
_$RETRO$_Ld39:
# value: 0d+8.3333333333333329E-002
	.byte	85,85,85,85,85,85,181,63

.section .rodata.n__$RETRO$_Ld40,"d"
	.balign 8
.globl	_$RETRO$_Ld40
_$RETRO$_Ld40:
# value: 0d+7.1428571428571425E-002
	.byte	146,36,73,146,36,73,178,63

.section .rodata.n__$RETRO$_Ld41,"d"
	.balign 8
.globl	_$RETRO$_Ld41
_$RETRO$_Ld41:
# value: 0d+6.2500000000000000E-002
	.byte	0,0,0,0,0,0,176,63

.section .rodata.n__$RETRO$_Ld42,"d"
	.balign 8
.globl	_$RETRO$_Ld42
_$RETRO$_Ld42:
# value: 0d+5.5555555555555552E-002
	.byte	28,199,113,28,199,113,172,63

.section .rodata.n__$RETRO$_Ld43,"d"
	.balign 8
.globl	_$RETRO$_Ld43
_$RETRO$_Ld43:
# value: 0d+5.0000000000000003E-002
	.byte	154,153,153,153,153,153,169,63

.section .rodata.n__$RETRO$_Ld44,"d"
	.balign 8
.globl	_$RETRO$_Ld44
_$RETRO$_Ld44:
# value: 0d+4.5454545454545456E-002
	.byte	70,23,93,116,209,69,167,63
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
.Lc138:
	.long	.Lc140-.Lc139
.Lc139:
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
.Lc140:
	.long	.Lc142-.Lc141
.Lc141:
	.secrel32	.Lc138
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
.Lc142:
	.long	.Lc144-.Lc143
.Lc143:
	.secrel32	.Lc138
	.quad	.Lc6
	.quad	.Lc7-.Lc6
	.byte	4
	.long	.Lc8-.Lc6
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc144:
	.long	.Lc146-.Lc145
.Lc145:
	.secrel32	.Lc138
	.quad	.Lc9
	.quad	.Lc10-.Lc9
	.byte	4
	.long	.Lc11-.Lc9
	.byte	14
	.uleb128	72
	.balign 4,0
.Lc146:
	.long	.Lc148-.Lc147
.Lc147:
	.secrel32	.Lc138
	.quad	.Lc12
	.quad	.Lc13-.Lc12
	.byte	4
	.long	.Lc14-.Lc12
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc148:
	.long	.Lc150-.Lc149
.Lc149:
	.secrel32	.Lc138
	.quad	.Lc15
	.quad	.Lc16-.Lc15
	.balign 4,0
.Lc150:
	.long	.Lc152-.Lc151
.Lc151:
	.secrel32	.Lc138
	.quad	.Lc17
	.quad	.Lc18-.Lc17
	.balign 4,0
.Lc152:
	.long	.Lc154-.Lc153
.Lc153:
	.secrel32	.Lc138
	.quad	.Lc19
	.quad	.Lc20-.Lc19
	.balign 4,0
.Lc154:
	.long	.Lc156-.Lc155
.Lc155:
	.secrel32	.Lc138
	.quad	.Lc21
	.quad	.Lc22-.Lc21
	.balign 4,0
.Lc156:
	.long	.Lc158-.Lc157
.Lc157:
	.secrel32	.Lc138
	.quad	.Lc23
	.quad	.Lc24-.Lc23
	.balign 4,0
.Lc158:
	.long	.Lc160-.Lc159
.Lc159:
	.secrel32	.Lc138
	.quad	.Lc25
	.quad	.Lc26-.Lc25
	.balign 4,0
.Lc160:
	.long	.Lc162-.Lc161
.Lc161:
	.secrel32	.Lc138
	.quad	.Lc27
	.quad	.Lc28-.Lc27
	.balign 4,0
.Lc162:
	.long	.Lc164-.Lc163
.Lc163:
	.secrel32	.Lc138
	.quad	.Lc29
	.quad	.Lc30-.Lc29
	.balign 4,0
.Lc164:
	.long	.Lc166-.Lc165
.Lc165:
	.secrel32	.Lc138
	.quad	.Lc31
	.quad	.Lc32-.Lc31
	.byte	4
	.long	.Lc33-.Lc31
	.byte	14
	.uleb128	64
	.balign 4,0
.Lc166:
	.long	.Lc168-.Lc167
.Lc167:
	.secrel32	.Lc138
	.quad	.Lc34
	.quad	.Lc35-.Lc34
	.balign 4,0
.Lc168:
	.long	.Lc170-.Lc169
.Lc169:
	.secrel32	.Lc138
	.quad	.Lc36
	.quad	.Lc37-.Lc36
	.balign 4,0
.Lc170:
	.long	.Lc172-.Lc171
.Lc171:
	.secrel32	.Lc138
	.quad	.Lc38
	.quad	.Lc39-.Lc38
	.byte	4
	.long	.Lc40-.Lc38
	.byte	14
	.uleb128	96
	.balign 4,0
.Lc172:
	.long	.Lc174-.Lc173
.Lc173:
	.secrel32	.Lc138
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
.Lc174:
	.long	.Lc176-.Lc175
.Lc175:
	.secrel32	.Lc138
	.quad	.Lc46
	.quad	.Lc47-.Lc46
	.byte	4
	.long	.Lc48-.Lc46
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc176:
	.long	.Lc178-.Lc177
.Lc177:
	.secrel32	.Lc138
	.quad	.Lc49
	.quad	.Lc50-.Lc49
	.balign 4,0
.Lc178:
	.long	.Lc180-.Lc179
.Lc179:
	.secrel32	.Lc138
	.quad	.Lc51
	.quad	.Lc52-.Lc51
	.byte	4
	.long	.Lc53-.Lc51
	.byte	14
	.uleb128	144
	.balign 4,0
.Lc180:
	.long	.Lc182-.Lc181
.Lc181:
	.secrel32	.Lc138
	.quad	.Lc54
	.quad	.Lc55-.Lc54
	.byte	4
	.long	.Lc56-.Lc54
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc182:
	.long	.Lc184-.Lc183
.Lc183:
	.secrel32	.Lc138
	.quad	.Lc57
	.quad	.Lc58-.Lc57
	.balign 4,0
.Lc184:
	.long	.Lc186-.Lc185
.Lc185:
	.secrel32	.Lc138
	.quad	.Lc59
	.quad	.Lc60-.Lc59
	.balign 4,0
.Lc186:
	.long	.Lc188-.Lc187
.Lc187:
	.secrel32	.Lc138
	.quad	.Lc61
	.quad	.Lc62-.Lc61
	.balign 4,0
.Lc188:
	.long	.Lc190-.Lc189
.Lc189:
	.secrel32	.Lc138
	.quad	.Lc63
	.quad	.Lc64-.Lc63
	.byte	4
	.long	.Lc65-.Lc63
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc66-.Lc65
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc67-.Lc66
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc190:
	.long	.Lc192-.Lc191
.Lc191:
	.secrel32	.Lc138
	.quad	.Lc68
	.quad	.Lc69-.Lc68
	.byte	4
	.long	.Lc70-.Lc68
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc71-.Lc70
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc72-.Lc71
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc192:
	.long	.Lc194-.Lc193
.Lc193:
	.secrel32	.Lc138
	.quad	.Lc73
	.quad	.Lc74-.Lc73
	.byte	4
	.long	.Lc75-.Lc73
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc194:
	.long	.Lc196-.Lc195
.Lc195:
	.secrel32	.Lc138
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
.Lc196:
	.long	.Lc198-.Lc197
.Lc197:
	.secrel32	.Lc138
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
.Lc198:
	.long	.Lc200-.Lc199
.Lc199:
	.secrel32	.Lc138
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
.Lc200:
	.long	.Lc202-.Lc201
.Lc201:
	.secrel32	.Lc138
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
.Lc202:
	.long	.Lc204-.Lc203
.Lc203:
	.secrel32	.Lc138
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
.Lc204:
	.long	.Lc206-.Lc205
.Lc205:
	.secrel32	.Lc138
	.quad	.Lc101
	.quad	.Lc102-.Lc101
	.balign 4,0
.Lc206:
	.long	.Lc208-.Lc207
.Lc207:
	.secrel32	.Lc138
	.quad	.Lc103
	.quad	.Lc104-.Lc103
	.balign 4,0
.Lc208:
	.long	.Lc210-.Lc209
.Lc209:
	.secrel32	.Lc138
	.quad	.Lc105
	.quad	.Lc106-.Lc105
	.balign 4,0
.Lc210:
	.long	.Lc212-.Lc211
.Lc211:
	.secrel32	.Lc138
	.quad	.Lc107
	.quad	.Lc108-.Lc107
	.balign 4,0
.Lc212:
	.long	.Lc214-.Lc213
.Lc213:
	.secrel32	.Lc138
	.quad	.Lc109
	.quad	.Lc110-.Lc109
	.byte	4
	.long	.Lc111-.Lc109
	.byte	14
	.uleb128	96
	.balign 4,0
.Lc214:
	.long	.Lc216-.Lc215
.Lc215:
	.secrel32	.Lc138
	.quad	.Lc112
	.quad	.Lc113-.Lc112
	.byte	4
	.long	.Lc114-.Lc112
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc216:
	.long	.Lc218-.Lc217
.Lc217:
	.secrel32	.Lc138
	.quad	.Lc115
	.quad	.Lc116-.Lc115
	.balign 4,0
.Lc218:
	.long	.Lc220-.Lc219
.Lc219:
	.secrel32	.Lc138
	.quad	.Lc117
	.quad	.Lc118-.Lc117
	.byte	4
	.long	.Lc119-.Lc117
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc220:
	.long	.Lc222-.Lc221
.Lc221:
	.secrel32	.Lc138
	.quad	.Lc120
	.quad	.Lc121-.Lc120
	.balign 4,0
.Lc222:
	.long	.Lc224-.Lc223
.Lc223:
	.secrel32	.Lc138
	.quad	.Lc122
	.quad	.Lc123-.Lc122
	.byte	4
	.long	.Lc124-.Lc122
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc224:
	.long	.Lc226-.Lc225
.Lc225:
	.secrel32	.Lc138
	.quad	.Lc125
	.quad	.Lc126-.Lc125
	.byte	4
	.long	.Lc127-.Lc125
	.byte	14
	.uleb128	104
	.balign 4,0
.Lc226:
	.long	.Lc228-.Lc227
.Lc227:
	.secrel32	.Lc138
	.quad	.Lc128
	.quad	.Lc129-.Lc128
	.byte	4
	.long	.Lc130-.Lc128
	.byte	14
	.uleb128	32
	.balign 4,0
.Lc228:
	.long	.Lc230-.Lc229
.Lc229:
	.secrel32	.Lc138
	.quad	.Lc131
	.quad	.Lc132-.Lc131
	.byte	4
	.long	.Lc133-.Lc131
	.byte	14
	.uleb128	32
	.balign 4,0
.Lc230:
	.long	.Lc232-.Lc231
.Lc231:
	.secrel32	.Lc138
	.quad	.Lc134
	.quad	.Lc135-.Lc134
	.balign 4,0
.Lc232:
	.long	.Lc234-.Lc233
.Lc233:
	.secrel32	.Lc138
	.quad	.Lc136
	.quad	.Lc137-.Lc136
	.balign 4,0
.Lc234:
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
	.uleb128	1
	.long	.La16-.Ldebug_info0
# Symbol B
	.uleb128	4
	.ascii	"B\000"
	.byte	2
	.byte	144
	.uleb128	11
	.long	.La16-.Ldebug_info0
# Symbol PI
	.uleb128	4
	.ascii	"PI\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La72-.Ldebug_info0
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La16-.Ldebug_info0
# Symbol J
	.uleb128	4
	.ascii	"J\000"
	.byte	2
	.byte	144
	.uleb128	9
	.long	.La16-.Ldebug_info0
# Symbol K
	.uleb128	4
	.ascii	"K\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La16-.Ldebug_info0
# Symbol L
	.uleb128	4
	.ascii	"L\000"
	.byte	2
	.byte	144
	.uleb128	10
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
	.long	.La74-.Ldebug_info0
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
	.long	.La76-.Ldebug_info0
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
	.long	.La80-.Ldebug_info0
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
	.long	.La80-.Ldebug_info0
# Symbol LPEEK
	.uleb128	4
	.ascii	"LPEEK\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La80-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
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
	.long	.La74-.Ldebug_info0
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
	.long	.La76-.Ldebug_info0
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
	.long	.La80-.Ldebug_info0
	.quad	RETRO_$$_NOISE2$$LONGWORD
	.quad	.Lt29
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La80-.Ldebug_info0
# Symbol NOISE2
	.uleb128	4
	.ascii	"NOISE2\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La80-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
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
	.long	.La80-.Ldebug_info0
	.quad	RETRO_$$_NOISE3$$LONGWORD
	.quad	.Lt30
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La80-.Ldebug_info0
# Symbol NOISE3
	.uleb128	4
	.ascii	"NOISE3\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La80-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
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
	.byte	144
	.uleb128	18
	.long	.La14-.Ldebug_info0
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La14-.Ldebug_info0
# Symbol DELAY1
	.uleb128	4
	.ascii	"DELAY1\000"
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
	.byte	144
	.uleb128	0
	.long	.La80-.Ldebug_info0
# Symbol READKEYBUFFER
	.uleb128	4
	.ascii	"READKEYBUFFER\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La80-.Ldebug_info0
# Symbol RESULT
	.uleb128	4
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
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
	.quad	.Lt34
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
	.long	.La82-.Ldebug_info0
# Symbol PI
	.uleb128	4
	.ascii	"PI\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La82-.Ldebug_info0
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
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
# Symbol EVENT
	.uleb128	4
	.ascii	"EVENT\000"
	.byte	2
	.byte	119
	.sleb128	32
	.long	.La84-.Ldebug_info0
# Symbol KEY
	.uleb128	4
	.ascii	"KEY\000"
	.byte	2
	.byte	144
	.uleb128	4
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
	.byte	144
	.uleb128	2
	.long	.La20-.Ldebug_info0
# Symbol AUDIO
	.uleb128	6
	.ascii	"AUDIO\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La86-.Ldebug_info0
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
	.long	.La88-.Ldebug_info0
# Symbol S
	.uleb128	4
	.ascii	"S\000"
	.byte	2
	.byte	119
	.sleb128	32
	.long	.La7-.Ldebug_info0
# Symbol FS
	.uleb128	4
	.ascii	"FS\000"
	.byte	2
	.byte	144
	.uleb128	23
	.long	.La14-.Ldebug_info0
# Symbol T
	.uleb128	4
	.ascii	"T\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La24-.Ldebug_info0
# Symbol K
# Symbol I
	.uleb128	4
	.ascii	"I\000"
	.byte	2
	.byte	144
	.uleb128	13
	.long	.La16-.Ldebug_info0
# Symbol IL
# Symbol J
	.uleb128	4
	.ascii	"J\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La16-.Ldebug_info0
# Symbol BUF
# Symbol S1
	.uleb128	4
	.ascii	"S1\000"
	.byte	2
	.byte	144
	.uleb128	12
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
	.quad	.Lt38
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
	.byte	144
	.uleb128	0
	.long	.La80-.Ldebug_info0
# Symbol B
	.uleb128	4
	.ascii	"B\000"
	.byte	2
	.byte	144
	.uleb128	1
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
	.quad	.Lt41
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
	.quad	.Lt43
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
	.quad	.Lt44
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
	.byte	144
	.uleb128	18
	.long	.La14-.Ldebug_info0
# Symbol result
	.uleb128	4
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	17
	.long	.La14-.Ldebug_info0
# Symbol REVERB1
	.uleb128	4
	.ascii	"REVERB1\000"
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
# Symbol A1
	.uleb128	4
	.ascii	"A1\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La16-.Ldebug_info0
# Symbol A2
	.uleb128	4
	.ascii	"A2\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La16-.Ldebug_info0
# Symbol A3
	.uleb128	4
	.ascii	"A3\000"
	.byte	2
	.byte	144
	.uleb128	9
	.long	.La16-.Ldebug_info0
# Symbol A4
	.uleb128	4
	.ascii	"A4\000"
	.byte	2
	.byte	144
	.uleb128	10
	.long	.La16-.Ldebug_info0
# Symbol A5
	.uleb128	4
	.ascii	"A5\000"
	.byte	2
	.byte	144
	.uleb128	11
	.long	.La16-.Ldebug_info0
# Symbol A6
	.uleb128	4
	.ascii	"A6\000"
	.byte	2
	.byte	144
	.uleb128	3
	.long	.La16-.Ldebug_info0
# Symbol A7
	.uleb128	4
	.ascii	"A7\000"
	.byte	2
	.byte	144
	.uleb128	4
	.long	.La16-.Ldebug_info0
# Symbol A8
	.uleb128	4
	.ascii	"A8\000"
	.byte	2
	.byte	144
	.uleb128	5
	.long	.La16-.Ldebug_info0
# Symbol A9
	.uleb128	4
	.ascii	"A9\000"
	.byte	2
	.byte	144
	.uleb128	12
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
	.uleb128	344
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
	.uleb128	328
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"ADSRVAL\000"
	.byte	3
	.byte	35
	.uleb128	168
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AR1\000"
	.byte	3
	.byte	35
	.uleb128	176
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AV1\000"
	.byte	3
	.byte	35
	.uleb128	184
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AR2\000"
	.byte	3
	.byte	35
	.uleb128	192
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AV2\000"
	.byte	3
	.byte	35
	.uleb128	200
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AR3\000"
	.byte	3
	.byte	35
	.uleb128	208
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AV3\000"
	.byte	3
	.byte	35
	.uleb128	216
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AR4\000"
	.byte	3
	.byte	35
	.uleb128	224
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AV4\000"
	.byte	3
	.byte	35
	.uleb128	232
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AV\000"
	.byte	3
	.byte	35
	.uleb128	240
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"AR\000"
	.byte	3
	.byte	35
	.uleb128	248
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"ADSRBIAS\000"
	.byte	3
	.byte	35
	.uleb128	256
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"VEL\000"
	.byte	3
	.byte	35
	.uleb128	264
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"KEYSENSE\000"
	.byte	3
	.byte	35
	.uleb128	272
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"EXPR\000"
	.byte	3
	.byte	35
	.uleb128	280
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"PA\000"
	.byte	3
	.byte	35
	.uleb128	288
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"PA2\000"
	.byte	3
	.byte	35
	.uleb128	296
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"WAVEMODE\000"
	.byte	3
	.byte	35
	.uleb128	332
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"INTPA\000"
	.byte	3
	.byte	35
	.uleb128	336
	.long	.La16-.Ldebug_info0
	.uleb128	16
	.ascii	"FREQMOD\000"
	.byte	3
	.byte	35
	.uleb128	304
	.long	.La14-.Ldebug_info0
	.uleb128	16
	.ascii	"OUTPUTTABLE\000"
	.byte	3
	.byte	35
	.uleb128	312
	.long	.La197-.Ldebug_info0
	.uleb128	16
	.ascii	"PAN\000"
	.byte	3
	.byte	35
	.uleb128	320
	.long	.La14-.Ldebug_info0
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
	.uleb128	24
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
	.uleb128	25
	.ascii	"TRAM\000"
	.uleb128	268435456
	.long	.La16-.Ldebug_info0
	.uleb128	26
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
	.uleb128	25
	.ascii	"TRAMW\000"
	.uleb128	268435456
	.long	.La18-.Ldebug_info0
	.uleb128	26
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
	.uleb128	25
	.ascii	"TRAMB\000"
	.uleb128	268435456
	.long	.La26-.Ldebug_info0
	.uleb128	26
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
	.uleb128	25
	.ascii	"TSAMPLE\000"
	.uleb128	4
	.long	.La90-.Ldebug_info0
	.uleb128	26
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
	.quad	.Lt46
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
	.quad	.Lt47
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
	.uleb128	12
	.ascii	"TFILTERTABLE\000"
	.long	.La217-.Ldebug_info0
.La217:
	.uleb128	25
	.ascii	"TFILTERTABLE\000"
	.uleb128	112
	.long	.La14-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	1024
	.long	.La26-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	3840
	.long	.La16-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	64
	.long	.La16-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	128
	.long	.La14-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	128
	.long	.La24-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	128
	.long	.La24-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	1536008
	.long	.La14-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	1536008
	.long	.La14-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	128
	.long	.La26-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	1024
	.long	.La80-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	262144
	.long	.La16-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	262144
	.long	.La80-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	32768
	.long	.La16-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	262144
	.long	.La80-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	56
	.long	.La26-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	32
	.long	.La74-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	32
	.long	.La74-.Ldebug_info0
	.uleb128	26
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
	.uleb128	30
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
	.uleb128	24
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
	.uleb128	24
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
	.uleb128	24
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
	.uleb128	24
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
	.uleb128	24
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
	.uleb128	24
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
	.uleb128	24
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
	.uleb128	24
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
	.uleb128	29
	.uleb128	64
	.long	.La58-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	64
	.long	.La14-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	32
	.long	.La182-.Ldebug_info0
	.uleb128	26
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
	.uleb128	24
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
	.uleb128	24
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
	.uleb128	29
	.uleb128	8
	.long	.La26-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	8
	.long	.La26-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	6
	.long	.La26-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	16
	.long	.La374-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	40
	.long	.La321-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	12
	.long	.La16-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	14
	.long	.La18-.Ldebug_info0
	.uleb128	26
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
	.uleb128	29
	.uleb128	14
	.long	.La26-.Ldebug_info0
	.uleb128	26
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
	.uleb128	25
	.ascii	"TVARARRAYBOUNDARRAY\000"
	.uleb128	8
	.long	.La441-.Ldebug_info0
	.uleb128	26
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
# Abbrev 25
	.uleb128	25
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
# Abbrev 26
	.uleb128	26
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
	.uleb128	1
	.byte	1
	.uleb128	11
	.uleb128	15
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 30
	.uleb128	30
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
# [348:1]
	.byte	2
	.uleb128	.Ll72-.Ll71
	.byte	13
# [349:1]
	.byte	2
	.uleb128	.Ll73-.Ll72
	.byte	13
# [350:1]
	.byte	2
	.uleb128	.Ll74-.Ll73
	.byte	13
# [351:1]
	.byte	2
	.uleb128	.Ll75-.Ll74
	.byte	13
# [352:5]
	.byte	2
	.uleb128	.Ll76-.Ll75
	.byte	5
	.uleb128	5
	.byte	13
# [353:5]
	.byte	2
	.uleb128	.Ll77-.Ll76
	.byte	13
# [355:30]
	.byte	2
	.uleb128	.Ll78-.Ll77
	.byte	5
	.uleb128	30
	.byte	14
# [356:19]
	.byte	2
	.uleb128	.Ll79-.Ll78
	.byte	5
	.uleb128	19
	.byte	13
# [357:14]
	.byte	2
	.uleb128	.Ll80-.Ll79
	.byte	5
	.uleb128	14
	.byte	13
# [359:40]
	.byte	2
	.uleb128	.Ll81-.Ll80
	.byte	5
	.uleb128	40
	.byte	14
# [360:13]
	.byte	2
	.uleb128	.Ll82-.Ll81
	.byte	5
	.uleb128	13
	.byte	13
# [361:14]
	.byte	2
	.uleb128	.Ll83-.Ll82
	.byte	5
	.uleb128	14
	.byte	13
# [363:27]
	.byte	2
	.uleb128	.Ll84-.Ll83
	.byte	5
	.uleb128	27
	.byte	14
# [364:1]
	.byte	2
	.uleb128	.Ll85-.Ll84
	.byte	5
	.uleb128	1
	.byte	13
# [366:15]
	.byte	2
	.uleb128	.Ll86-.Ll85
	.byte	5
	.uleb128	15
	.byte	14
# [367:6]
	.byte	2
	.uleb128	.Ll87-.Ll86
	.byte	5
	.uleb128	6
	.byte	13
# [368:8]
	.byte	2
	.uleb128	.Ll88-.Ll87
	.byte	5
	.uleb128	8
	.byte	13
# [369:8]
	.byte	2
	.uleb128	.Ll89-.Ll88
	.byte	13
# [364:1]
	.byte	2
	.uleb128	.Ll90-.Ll89
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-5
	.byte	1
# [371:14]
	.byte	2
	.uleb128	.Ll91-.Ll90
	.byte	5
	.uleb128	14
	.byte	19
# [375:1]
	.byte	2
	.uleb128	.Ll92-.Ll91
	.byte	5
	.uleb128	1
	.byte	16
# [377:50]
	.byte	2
	.uleb128	.Ll93-.Ll92
	.byte	5
	.uleb128	50
	.byte	14
# [378:53]
	.byte	2
	.uleb128	.Ll94-.Ll93
	.byte	5
	.uleb128	53
	.byte	13
# [379:8]
	.byte	2
	.uleb128	.Ll95-.Ll94
	.byte	5
	.uleb128	8
	.byte	13
# [380:8]
	.byte	2
	.uleb128	.Ll96-.Ll95
	.byte	13
# [381:16]
	.byte	2
	.uleb128	.Ll97-.Ll96
	.byte	5
	.uleb128	16
	.byte	13
# [382:15]
	.byte	2
	.uleb128	.Ll98-.Ll97
	.byte	5
	.uleb128	15
	.byte	13
# [383:1]
	.byte	2
	.uleb128	.Ll99-.Ll98
	.byte	5
	.uleb128	1
	.byte	13
# [385:1]
	.byte	2
	.uleb128	.Ll100-.Ll99
	.byte	14
# [387:1]
	.byte	2
	.uleb128	.Ll101-.Ll100
	.byte	14
# [388:1]
	.byte	2
	.uleb128	.Ll102-.Ll101
	.byte	13
# [390:9]
	.byte	2
	.uleb128	.Ll103-.Ll102
	.byte	5
	.uleb128	9
	.byte	14
# [391:1]
	.byte	2
	.uleb128	.Ll104-.Ll103
	.byte	5
	.uleb128	1
	.byte	13
# [393:1]
	.byte	2
	.uleb128	.Ll105-.Ll104
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll106
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_STOPMACHINE
# [405:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll107
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	404
	.byte	1
# [409:1]
	.byte	2
	.uleb128	.Ll108-.Ll107
	.byte	16
# [410:1]
	.byte	2
	.uleb128	.Ll109-.Ll108
	.byte	13
# [411:1]
	.byte	2
	.uleb128	.Ll110-.Ll109
	.byte	13
# [412:21]
	.byte	2
	.uleb128	.Ll111-.Ll110
	.byte	5
	.uleb128	21
	.byte	13
# [413:1]
	.byte	2
	.uleb128	.Ll112-.Ll111
	.byte	5
	.uleb128	1
	.byte	13
# [414:1]
	.byte	2
	.uleb128	.Ll113-.Ll112
	.byte	13
# [415:1]
	.byte	2
	.uleb128	.Ll114-.Ll113
	.byte	13
# [416:1]
	.byte	2
	.uleb128	.Ll115-.Ll114
	.byte	13
# [420:1]
	.byte	2
	.uleb128	.Ll116-.Ll115
	.byte	16
# [421:1]
	.byte	2
	.uleb128	.Ll117-.Ll116
	.byte	13
# [423:1]
	.byte	2
	.uleb128	.Ll118-.Ll117
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll119
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_POKE$LONGINT$BYTE
# [433:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll120
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	432
	.byte	1
# [434:6]
	.byte	2
	.uleb128	.Ll121-.Ll120
	.byte	5
	.uleb128	6
	.byte	13
# [435:1]
	.byte	2
	.uleb128	.Ll122-.Ll121
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll123
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_DPOKE$LONGINT$WORD
# [439:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll124
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	438
	.byte	1
# [440:6]
	.byte	2
	.uleb128	.Ll125-.Ll124
	.byte	5
	.uleb128	6
	.byte	13
# [441:1]
	.byte	2
	.uleb128	.Ll126-.Ll125
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll127
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_LPOKE$LONGINT$LONGWORD
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
# function: RETRO_$$_SLPOKE$LONGINT$LONGINT
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
# function: RETRO_$$_PEEK$LONGINT$$BYTE
# [459:12]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll136
	.byte	5
	.uleb128	12
	.byte	3
	.sleb128	458
	.byte	1
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
# [465:29]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll139
	.byte	5
	.uleb128	29
	.byte	3
	.sleb128	464
	.byte	1
# [466:1]
	.byte	2
	.uleb128	.Ll140-.Ll139
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll141
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_LPEEK$LONGINT$$LONGWORD
# [471:13]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll142
	.byte	5
	.uleb128	13
	.byte	3
	.sleb128	470
	.byte	1
# [472:1]
	.byte	2
	.uleb128	.Ll143-.Ll142
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll144
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SLPEEK$LONGINT$$LONGINT
# [477:14]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll145
	.byte	5
	.uleb128	14
	.byte	3
	.sleb128	476
	.byte	1
# [478:1]
	.byte	2
	.uleb128	.Ll146-.Ll145
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll147
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_GETTIME$$INT64
# [491:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll148
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	490
	.byte	1
# [492:1]
	.byte	2
	.uleb128	.Ll149-.Ll148
	.byte	13
# [493:1]
	.byte	2
	.uleb128	.Ll150-.Ll149
	.byte	13
# [494:23]
	.byte	2
	.uleb128	.Ll151-.Ll150
	.byte	5
	.uleb128	23
	.byte	13
# [495:1]
	.byte	2
	.uleb128	.Ll152-.Ll151
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll153
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_READKEYBUFFER$$LONGWORD
# [500:6]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll154
	.byte	5
	.uleb128	6
	.byte	3
	.sleb128	499
	.byte	1
# [502:20]
	.byte	2
	.uleb128	.Ll155-.Ll154
	.byte	5
	.uleb128	20
	.byte	14
# [503:3]
	.byte	2
	.uleb128	.Ll156-.Ll155
	.byte	5
	.uleb128	3
	.byte	13
# [504:3]
	.byte	2
	.uleb128	.Ll157-.Ll156
	.byte	13
# [503:3]
	.byte	2
	.uleb128	.Ll158-.Ll157
	.byte	3
	.sleb128	-1
	.byte	1
# [505:6]
	.byte	2
	.uleb128	.Ll159-.Ll158
	.byte	5
	.uleb128	6
	.byte	14
# [506:1]
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
# function: RETRO_$$_WRITEKEYBUFFER$LONGINT
# [510:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll162
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	509
	.byte	1
# [511:8]
	.byte	2
	.uleb128	.Ll163-.Ll162
	.byte	5
	.uleb128	8
	.byte	13
# [513:12]
	.byte	2
	.uleb128	.Ll164-.Ll163
	.byte	5
	.uleb128	12
	.byte	14
# [514:3]
	.byte	2
	.uleb128	.Ll165-.Ll164
	.byte	5
	.uleb128	3
	.byte	13
# [516:1]
	.byte	2
	.uleb128	.Ll166-.Ll165
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll167
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SDLEVENTS
# [537:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll168
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	536
	.byte	1
# [539:27]
	.byte	2
	.uleb128	.Ll169-.Ll168
	.byte	5
	.uleb128	27
	.byte	14
# [540:6]
	.byte	2
	.uleb128	.Ll170-.Ll169
	.byte	5
	.uleb128	6
	.byte	13
# [542:6]
	.byte	2
	.uleb128	.Ll171-.Ll170
	.byte	14
# [544:5]
	.byte	2
	.uleb128	.Ll172-.Ll171
	.byte	5
	.uleb128	5
	.byte	14
# [545:5]
	.byte	2
	.uleb128	.Ll173-.Ll172
	.byte	13
# [546:9]
	.byte	2
	.uleb128	.Ll174-.Ll173
	.byte	5
	.uleb128	9
	.byte	13
# [547:9]
	.byte	2
	.uleb128	.Ll175-.Ll174
	.byte	13
# [548:9]
	.byte	2
	.uleb128	.Ll176-.Ll175
	.byte	13
# [549:9]
	.byte	2
	.uleb128	.Ll177-.Ll176
	.byte	13
# [550:10]
	.byte	2
	.uleb128	.Ll178-.Ll177
	.byte	5
	.uleb128	10
	.byte	13
# [551:10]
	.byte	2
	.uleb128	.Ll179-.Ll178
	.byte	13
# [554:11]
	.byte	2
	.uleb128	.Ll180-.Ll179
	.byte	5
	.uleb128	11
	.byte	15
# [556:5]
	.byte	2
	.uleb128	.Ll181-.Ll180
	.byte	5
	.uleb128	5
	.byte	14
# [557:5]
	.byte	2
	.uleb128	.Ll182-.Ll181
	.byte	13
# [562:10]
	.byte	2
	.uleb128	.Ll183-.Ll182
	.byte	5
	.uleb128	10
	.byte	17
# [564:11]
	.byte	2
	.uleb128	.Ll184-.Ll183
	.byte	5
	.uleb128	11
	.byte	14
# [566:26]
	.byte	2
	.uleb128	.Ll185-.Ll184
	.byte	5
	.uleb128	26
	.byte	14
# [568:12]
	.byte	2
	.uleb128	.Ll186-.Ll185
	.byte	5
	.uleb128	12
	.byte	14
# [569:12]
	.byte	2
	.uleb128	.Ll187-.Ll186
	.byte	13
# [572:11]
	.byte	2
	.uleb128	.Ll188-.Ll187
	.byte	5
	.uleb128	11
	.byte	15
# [574:10]
	.byte	2
	.uleb128	.Ll189-.Ll188
	.byte	5
	.uleb128	10
	.byte	14
# [575:5]
	.byte	2
	.uleb128	.Ll190-.Ll189
	.byte	5
	.uleb128	5
	.byte	13
# [576:10]
	.byte	2
	.uleb128	.Ll191-.Ll190
	.byte	5
	.uleb128	10
	.byte	13
# [577:26]
	.byte	2
	.uleb128	.Ll192-.Ll191
	.byte	5
	.uleb128	26
	.byte	13
# [578:21]
	.byte	2
	.uleb128	.Ll193-.Ll192
	.byte	5
	.uleb128	21
	.byte	13
# [580:11]
	.byte	2
	.uleb128	.Ll194-.Ll193
	.byte	5
	.uleb128	11
	.byte	14
# [582:10]
	.byte	2
	.uleb128	.Ll195-.Ll194
	.byte	5
	.uleb128	10
	.byte	14
# [583:5]
	.byte	2
	.uleb128	.Ll196-.Ll195
	.byte	5
	.uleb128	5
	.byte	13
# [584:10]
	.byte	2
	.uleb128	.Ll197-.Ll196
	.byte	5
	.uleb128	10
	.byte	13
# [585:30]
	.byte	2
	.uleb128	.Ll198-.Ll197
	.byte	5
	.uleb128	30
	.byte	13
# [587:21]
	.byte	2
	.uleb128	.Ll199-.Ll198
	.byte	5
	.uleb128	21
	.byte	14
# [589:12]
	.byte	2
	.uleb128	.Ll200-.Ll199
	.byte	5
	.uleb128	12
	.byte	14
# [591:27]
	.byte	2
	.uleb128	.Ll201-.Ll200
	.byte	5
	.uleb128	27
	.byte	14
# [593:11]
	.byte	2
	.uleb128	.Ll202-.Ll201
	.byte	5
	.uleb128	11
	.byte	14
# [594:1]
	.byte	2
	.uleb128	.Ll203-.Ll202
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll204
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_BLIT$crc5A667533
# [611:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll205
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	610
	.byte	1
# [612:9]
	.byte	2
	.uleb128	.Ll206-.Ll205
	.byte	5
	.uleb128	9
	.byte	13
# [614:13]
	.byte	2
	.uleb128	.Ll207-.Ll206
	.byte	5
	.uleb128	13
	.byte	14
# [615:11]
	.byte	2
	.uleb128	.Ll208-.Ll207
	.byte	5
	.uleb128	11
	.byte	13
# [616:20]
	.byte	2
	.uleb128	.Ll209-.Ll208
	.byte	5
	.uleb128	20
	.byte	13
# [618:18]
	.byte	2
	.uleb128	.Ll210-.Ll209
	.byte	5
	.uleb128	18
	.byte	14
# [619:19]
	.byte	2
	.uleb128	.Ll211-.Ll210
	.byte	5
	.uleb128	19
	.byte	13
# [620:23]
	.byte	2
	.uleb128	.Ll212-.Ll211
	.byte	5
	.uleb128	23
	.byte	13
# [621:12]
	.byte	2
	.uleb128	.Ll213-.Ll212
	.byte	5
	.uleb128	12
	.byte	13
# [620:9]
	.byte	2
	.uleb128	.Ll214-.Ll213
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	-1
	.byte	1
# [616:7]
	.byte	2
	.uleb128	.Ll215-.Ll214
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-4
	.byte	1
# [624:15]
	.byte	2
	.uleb128	.Ll216-.Ll215
	.byte	5
	.uleb128	15
	.byte	20
# [611:1]
	.byte	2
	.uleb128	.Ll217-.Ll216
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-13
	.byte	1
# [624:9]
	.byte	2
	.uleb128	.Ll218-.Ll217
	.byte	5
	.uleb128	9
	.byte	25
# [626:9]
	.byte	2
	.uleb128	.Ll219-.Ll218
	.byte	14
# [627:8]
	.byte	2
	.uleb128	.Ll220-.Ll219
	.byte	5
	.uleb128	8
	.byte	13
# [628:20]
	.byte	2
	.uleb128	.Ll221-.Ll220
	.byte	5
	.uleb128	20
	.byte	13
# [630:18]
	.byte	2
	.uleb128	.Ll222-.Ll221
	.byte	5
	.uleb128	18
	.byte	14
# [631:19]
	.byte	2
	.uleb128	.Ll223-.Ll222
	.byte	5
	.uleb128	19
	.byte	13
# [632:23]
	.byte	2
	.uleb128	.Ll224-.Ll223
	.byte	5
	.uleb128	23
	.byte	13
# [633:12]
	.byte	2
	.uleb128	.Ll225-.Ll224
	.byte	5
	.uleb128	12
	.byte	13
# [632:9]
	.byte	2
	.uleb128	.Ll226-.Ll225
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	-1
	.byte	1
# [628:7]
	.byte	2
	.uleb128	.Ll227-.Ll226
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-4
	.byte	1
# [638:9]
	.byte	2
	.uleb128	.Ll228-.Ll227
	.byte	5
	.uleb128	9
	.byte	22
# [639:8]
	.byte	2
	.uleb128	.Ll229-.Ll228
	.byte	5
	.uleb128	8
	.byte	13
# [640:20]
	.byte	2
	.uleb128	.Ll230-.Ll229
	.byte	5
	.uleb128	20
	.byte	13
# [642:18]
	.byte	2
	.uleb128	.Ll231-.Ll230
	.byte	5
	.uleb128	18
	.byte	14
# [643:19]
	.byte	2
	.uleb128	.Ll232-.Ll231
	.byte	5
	.uleb128	19
	.byte	13
# [644:23]
	.byte	2
	.uleb128	.Ll233-.Ll232
	.byte	5
	.uleb128	23
	.byte	13
# [645:12]
	.byte	2
	.uleb128	.Ll234-.Ll233
	.byte	5
	.uleb128	12
	.byte	13
# [611:1]
	.byte	2
	.uleb128	.Ll235-.Ll234
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-34
	.byte	1
# [645:15]
	.byte	2
	.uleb128	.Ll236-.Ll235
	.byte	5
	.uleb128	15
	.byte	46
# [644:9]
	.byte	2
	.uleb128	.Ll237-.Ll236
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	-1
	.byte	1
# [640:7]
	.byte	2
	.uleb128	.Ll238-.Ll237
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-4
	.byte	1
# [648:1]
	.byte	2
	.uleb128	.Ll239-.Ll238
	.byte	5
	.uleb128	1
	.byte	20
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll240
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_GRAPHICS$LONGINT
# [652:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll241
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	651
	.byte	1
# [653:6]
	.byte	2
	.uleb128	.Ll242-.Ll241
	.byte	5
	.uleb128	6
	.byte	13
# [654:1]
	.byte	2
	.uleb128	.Ll243-.Ll242
	.byte	5
	.uleb128	1
	.byte	13
# [658:13]
	.byte	2
	.uleb128	.Ll244-.Ll243
	.byte	5
	.uleb128	13
	.byte	16
# [659:13]
	.byte	2
	.uleb128	.Ll245-.Ll244
	.byte	13
# [660:13]
	.byte	2
	.uleb128	.Ll246-.Ll245
	.byte	13
# [666:14]
	.byte	2
	.uleb128	.Ll247-.Ll246
	.byte	5
	.uleb128	14
	.byte	18
# [667:14]
	.byte	2
	.uleb128	.Ll248-.Ll247
	.byte	13
# [668:14]
	.byte	2
	.uleb128	.Ll249-.Ll248
	.byte	13
# [671:6]
	.byte	2
	.uleb128	.Ll250-.Ll249
	.byte	5
	.uleb128	6
	.byte	15
# [672:1]
	.byte	2
	.uleb128	.Ll251-.Ll250
	.byte	5
	.uleb128	1
	.byte	13
# [674:1]
	.byte	2
	.uleb128	.Ll252-.Ll251
	.byte	14
# [675:1]
	.byte	2
	.uleb128	.Ll253-.Ll252
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll254
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SCRCONVERT$POINTER$LONGINT
# [687:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll255
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	686
	.byte	1
# [688:10]
	.byte	2
	.uleb128	.Ll256-.Ll255
	.byte	5
	.uleb128	10
	.byte	13
# [690:9]
	.byte	2
	.uleb128	.Ll257-.Ll256
	.byte	5
	.uleb128	9
	.byte	14
# [691:1]
	.byte	2
	.uleb128	.Ll258-.Ll257
	.byte	5
	.uleb128	1
	.byte	13
# [692:1]
	.byte	2
	.uleb128	.Ll259-.Ll258
	.byte	13
# [693:1]
	.byte	2
	.uleb128	.Ll260-.Ll259
	.byte	13
# [694:1]
	.byte	2
	.uleb128	.Ll261-.Ll260
	.byte	13
# [696:3]
	.byte	2
	.uleb128	.Ll262-.Ll261
	.byte	5
	.uleb128	3
	.byte	14
# [697:3]
	.byte	2
	.uleb128	.Ll263-.Ll262
	.byte	13
# [698:17]
	.byte	2
	.uleb128	.Ll264-.Ll263
	.byte	5
	.uleb128	17
	.byte	13
# [697:3]
	.byte	2
	.uleb128	.Ll265-.Ll264
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-1
	.byte	1
# [699:3]
	.byte	2
	.uleb128	.Ll266-.Ll265
	.byte	14
# [694:1]
	.byte	2
	.uleb128	.Ll267-.Ll266
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-5
	.byte	1
# [701:1]
	.byte	2
	.uleb128	.Ll268-.Ll267
	.byte	19
# [703:1]
	.byte	2
	.uleb128	.Ll269-.Ll268
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll270
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SPRITE$POINTER
# [723:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll271
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	722
	.byte	1
# [724:1]
	.byte	2
	.uleb128	.Ll272-.Ll271
	.byte	13
# [725:1]
	.byte	2
	.uleb128	.Ll273-.Ll272
	.byte	13
# [726:1]
	.byte	2
	.uleb128	.Ll274-.Ll273
	.byte	13
# [727:4]
	.byte	2
	.uleb128	.Ll275-.Ll274
	.byte	5
	.uleb128	4
	.byte	13
# [728:1]
	.byte	2
	.uleb128	.Ll276-.Ll275
	.byte	5
	.uleb128	1
	.byte	13
# [730:16]
	.byte	2
	.uleb128	.Ll277-.Ll276
	.byte	5
	.uleb128	16
	.byte	14
# [731:10]
	.byte	2
	.uleb128	.Ll278-.Ll277
	.byte	5
	.uleb128	10
	.byte	13
# [732:16]
	.byte	2
	.uleb128	.Ll279-.Ll278
	.byte	5
	.uleb128	16
	.byte	13
# [733:15]
	.byte	2
	.uleb128	.Ll280-.Ll279
	.byte	5
	.uleb128	15
	.byte	13
# [734:15]
	.byte	2
	.uleb128	.Ll281-.Ll280
	.byte	13
# [735:10]
	.byte	2
	.uleb128	.Ll282-.Ll281
	.byte	5
	.uleb128	10
	.byte	13
# [736:16]
	.byte	2
	.uleb128	.Ll283-.Ll282
	.byte	5
	.uleb128	16
	.byte	13
# [737:10]
	.byte	2
	.uleb128	.Ll284-.Ll283
	.byte	5
	.uleb128	10
	.byte	13
# [738:11]
	.byte	2
	.uleb128	.Ll285-.Ll284
	.byte	5
	.uleb128	11
	.byte	13
# [739:11]
	.byte	2
	.uleb128	.Ll286-.Ll285
	.byte	13
# [740:16]
	.byte	2
	.uleb128	.Ll287-.Ll286
	.byte	5
	.uleb128	16
	.byte	13
# [741:11]
	.byte	2
	.uleb128	.Ll288-.Ll287
	.byte	5
	.uleb128	11
	.byte	13
# [742:11]
	.byte	2
	.uleb128	.Ll289-.Ll288
	.byte	13
# [743:6]
	.byte	2
	.uleb128	.Ll290-.Ll289
	.byte	5
	.uleb128	6
	.byte	13
# [745:21]
	.byte	2
	.uleb128	.Ll291-.Ll290
	.byte	5
	.uleb128	21
	.byte	14
# [746:5]
	.byte	2
	.uleb128	.Ll292-.Ll291
	.byte	5
	.uleb128	5
	.byte	13
# [748:3]
	.byte	2
	.uleb128	.Ll293-.Ll292
	.byte	5
	.uleb128	3
	.byte	14
# [750:5]
	.byte	2
	.uleb128	.Ll294-.Ll293
	.byte	5
	.uleb128	5
	.byte	14
# [752:36]
	.byte	2
	.uleb128	.Ll295-.Ll294
	.byte	5
	.uleb128	36
	.byte	14
# [753:22]
	.byte	2
	.uleb128	.Ll296-.Ll295
	.byte	5
	.uleb128	22
	.byte	13
# [754:7]
	.byte	2
	.uleb128	.Ll297-.Ll296
	.byte	5
	.uleb128	7
	.byte	13
# [756:9]
	.byte	2
	.uleb128	.Ll298-.Ll297
	.byte	5
	.uleb128	9
	.byte	14
# [758:18]
	.byte	2
	.uleb128	.Ll299-.Ll298
	.byte	5
	.uleb128	18
	.byte	14
# [759:15]
	.byte	2
	.uleb128	.Ll300-.Ll299
	.byte	5
	.uleb128	15
	.byte	13
# [760:24]
	.byte	2
	.uleb128	.Ll301-.Ll300
	.byte	5
	.uleb128	24
	.byte	13
# [756:13]
	.byte	2
	.uleb128	.Ll302-.Ll301
	.byte	5
	.uleb128	13
	.byte	3
	.sleb128	-4
	.byte	1
# [762:22]
	.byte	2
	.uleb128	.Ll303-.Ll302
	.byte	5
	.uleb128	22
	.byte	18
# [754:7]
	.byte	2
	.uleb128	.Ll304-.Ll303
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-8
	.byte	1
# [765:7]
	.byte	2
	.uleb128	.Ll305-.Ll304
	.byte	23
# [764:7]
	.byte	2
	.uleb128	.Ll306-.Ll305
	.byte	3
	.sleb128	-1
	.byte	1
# [750:9]
	.byte	2
	.uleb128	.Ll307-.Ll306
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	-14
	.byte	1
# [766:20]
	.byte	2
	.uleb128	.Ll308-.Ll307
	.byte	5
	.uleb128	20
	.byte	28
# [748:3]
	.byte	2
	.uleb128	.Ll309-.Ll308
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-18
	.byte	1
# [728:1]
	.byte	2
	.uleb128	.Ll310-.Ll309
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-20
	.byte	1
# [770:5]
	.byte	2
	.uleb128	.Ll311-.Ll310
	.byte	5
	.uleb128	5
	.byte	54
# [772:1]
	.byte	2
	.uleb128	.Ll312-.Ll311
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll313
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SETATARIPALLETTE$LONGINT
# [780:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll314
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	779
	.byte	1
# [781:34]
	.byte	2
	.uleb128	.Ll315-.Ll314
	.byte	5
	.uleb128	34
	.byte	13
# [782:18]
	.byte	2
	.uleb128	.Ll316-.Ll315
	.byte	5
	.uleb128	18
	.byte	13
# [783:13]
	.byte	2
	.uleb128	.Ll317-.Ll316
	.byte	5
	.uleb128	13
	.byte	13
# [784:1]
	.byte	2
	.uleb128	.Ll318-.Ll317
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll319
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
# [788:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll320
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	787
	.byte	1
# [789:26]
	.byte	2
	.uleb128	.Ll321-.Ll320
	.byte	5
	.uleb128	26
	.byte	13
# [790:1]
	.byte	2
	.uleb128	.Ll322-.Ll321
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll323
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_CLS$LONGINT
# [796:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll324
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	795
	.byte	1
# [797:4]
	.byte	2
	.uleb128	.Ll325-.Ll324
	.byte	5
	.uleb128	4
	.byte	13
# [799:10]
	.byte	2
	.uleb128	.Ll326-.Ll325
	.byte	5
	.uleb128	10
	.byte	14
# [800:6]
	.byte	2
	.uleb128	.Ll327-.Ll326
	.byte	5
	.uleb128	6
	.byte	13
# [801:5]
	.byte	2
	.uleb128	.Ll328-.Ll327
	.byte	5
	.uleb128	5
	.byte	13
# [803:1]
	.byte	2
	.uleb128	.Ll329-.Ll328
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll330
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_PUTPIXEL$LONGINT$LONGINT$LONGINT
# [819:9]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll331
	.byte	5
	.uleb128	9
	.byte	3
	.sleb128	818
	.byte	1
# [820:29]
	.byte	2
	.uleb128	.Ll332-.Ll331
	.byte	5
	.uleb128	29
	.byte	13
# [821:15]
	.byte	2
	.uleb128	.Ll333-.Ll332
	.byte	5
	.uleb128	15
	.byte	13
# [817:1]
	.byte	2
	.uleb128	.Ll334-.Ll333
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-4
	.byte	1
# [821:9]
	.byte	2
	.uleb128	.Ll335-.Ll334
	.byte	5
	.uleb128	9
	.byte	16
# [822:29]
	.byte	2
	.uleb128	.Ll336-.Ll335
	.byte	5
	.uleb128	29
	.byte	13
# [824:29]
	.byte	2
	.uleb128	.Ll337-.Ll336
	.byte	14
# [825:1]
	.byte	2
	.uleb128	.Ll338-.Ll337
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll339
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [843:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll340
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	842
	.byte	1
# [845:5]
	.byte	2
	.uleb128	.Ll341-.Ll340
	.byte	5
	.uleb128	5
	.byte	14
# [846:5]
	.byte	2
	.uleb128	.Ll342-.Ll341
	.byte	13
# [847:5]
	.byte	2
	.uleb128	.Ll343-.Ll342
	.byte	13
# [848:5]
	.byte	2
	.uleb128	.Ll344-.Ll343
	.byte	13
# [849:4]
	.byte	2
	.uleb128	.Ll345-.Ll344
	.byte	5
	.uleb128	4
	.byte	13
# [850:4]
	.byte	2
	.uleb128	.Ll346-.Ll345
	.byte	13
# [851:9]
	.byte	2
	.uleb128	.Ll347-.Ll346
	.byte	5
	.uleb128	9
	.byte	13
# [853:16]
	.byte	2
	.uleb128	.Ll348-.Ll347
	.byte	5
	.uleb128	16
	.byte	14
# [855:23]
	.byte	2
	.uleb128	.Ll349-.Ll348
	.byte	5
	.uleb128	23
	.byte	14
# [856:18]
	.byte	2
	.uleb128	.Ll350-.Ll349
	.byte	5
	.uleb128	18
	.byte	13
# [853:7]
	.byte	2
	.uleb128	.Ll351-.Ll350
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-3
	.byte	1
# [859:15]
	.byte	2
	.uleb128	.Ll352-.Ll351
	.byte	5
	.uleb128	15
	.byte	18
# [843:1]
	.byte	2
	.uleb128	.Ll353-.Ll352
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-16
	.byte	1
# [859:9]
	.byte	2
	.uleb128	.Ll354-.Ll353
	.byte	5
	.uleb128	9
	.byte	28
# [861:16]
	.byte	2
	.uleb128	.Ll355-.Ll354
	.byte	5
	.uleb128	16
	.byte	14
# [863:23]
	.byte	2
	.uleb128	.Ll356-.Ll355
	.byte	5
	.uleb128	23
	.byte	14
# [864:18]
	.byte	2
	.uleb128	.Ll357-.Ll356
	.byte	5
	.uleb128	18
	.byte	13
# [861:7]
	.byte	2
	.uleb128	.Ll358-.Ll357
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-3
	.byte	1
# [869:16]
	.byte	2
	.uleb128	.Ll359-.Ll358
	.byte	5
	.uleb128	16
	.byte	20
# [871:23]
	.byte	2
	.uleb128	.Ll360-.Ll359
	.byte	5
	.uleb128	23
	.byte	14
# [872:18]
	.byte	2
	.uleb128	.Ll361-.Ll360
	.byte	5
	.uleb128	18
	.byte	13
# [869:7]
	.byte	2
	.uleb128	.Ll362-.Ll361
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-3
	.byte	1
# [875:1]
	.byte	2
	.uleb128	.Ll363-.Ll362
	.byte	5
	.uleb128	1
	.byte	18
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll364
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [887:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll365
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	886
	.byte	1
# [890:4]
	.byte	2
	.uleb128	.Ll366-.Ll365
	.byte	5
	.uleb128	4
	.byte	15
# [891:4]
	.byte	2
	.uleb128	.Ll367-.Ll366
	.byte	13
# [893:1]
	.byte	2
	.uleb128	.Ll368-.Ll367
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll369
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_PUTCHAR$LONGINT$LONGINT$CHAR$LONGINT
# [911:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll370
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	910
	.byte	1
# [912:25]
	.byte	2
	.uleb128	.Ll371-.Ll370
	.byte	5
	.uleb128	25
	.byte	13
# [913:1]
	.byte	2
	.uleb128	.Ll372-.Ll371
	.byte	5
	.uleb128	1
	.byte	13
# [915:11]
	.byte	2
	.uleb128	.Ll373-.Ll372
	.byte	5
	.uleb128	11
	.byte	14
# [916:3]
	.byte	2
	.uleb128	.Ll374-.Ll373
	.byte	5
	.uleb128	3
	.byte	13
# [918:22]
	.byte	2
	.uleb128	.Ll375-.Ll374
	.byte	5
	.uleb128	22
	.byte	14
# [919:23]
	.byte	2
	.uleb128	.Ll376-.Ll375
	.byte	5
	.uleb128	23
	.byte	13
# [916:3]
	.byte	2
	.uleb128	.Ll377-.Ll376
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-3
	.byte	1
# [913:1]
	.byte	2
	.uleb128	.Ll378-.Ll377
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-3
	.byte	1
# [922:1]
	.byte	2
	.uleb128	.Ll379-.Ll378
	.byte	21
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll380
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_PUTCHARZ$LONGINT$LONGINT$CHAR$LONGINT$LONGINT$LONGINT
# [931:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll381
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	930
	.byte	1
# [932:25]
	.byte	2
	.uleb128	.Ll382-.Ll381
	.byte	5
	.uleb128	25
	.byte	13
# [933:1]
	.byte	2
	.uleb128	.Ll383-.Ll382
	.byte	5
	.uleb128	1
	.byte	13
# [935:11]
	.byte	2
	.uleb128	.Ll384-.Ll383
	.byte	5
	.uleb128	11
	.byte	14
# [936:3]
	.byte	2
	.uleb128	.Ll385-.Ll384
	.byte	5
	.uleb128	3
	.byte	13
# [938:22]
	.byte	2
	.uleb128	.Ll386-.Ll385
	.byte	5
	.uleb128	22
	.byte	14
# [939:21]
	.byte	2
	.uleb128	.Ll387-.Ll386
	.byte	5
	.uleb128	21
	.byte	13
# [940:23]
	.byte	2
	.uleb128	.Ll388-.Ll387
	.byte	5
	.uleb128	23
	.byte	13
# [941:33]
	.byte	2
	.uleb128	.Ll389-.Ll388
	.byte	5
	.uleb128	33
	.byte	13
# [940:13]
	.byte	2
	.uleb128	.Ll390-.Ll389
	.byte	5
	.uleb128	13
	.byte	3
	.sleb128	-1
	.byte	1
# [939:11]
	.byte	2
	.uleb128	.Ll391-.Ll390
	.byte	5
	.uleb128	11
	.byte	3
	.sleb128	-1
	.byte	1
# [936:3]
	.byte	2
	.uleb128	.Ll392-.Ll391
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-3
	.byte	1
# [933:1]
	.byte	2
	.uleb128	.Ll393-.Ll392
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-3
	.byte	1
# [944:1]
	.byte	2
	.uleb128	.Ll394-.Ll393
	.byte	23
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll395
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO$_$OUTTEXTXY$crc6744C382_$$_fin$0
# [950:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll396
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	949
	.byte	1
# [950:1]
	.byte	2
	.uleb128	.Ll397-.Ll396
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll398
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_OUTTEXTXY$LONGINT$LONGINT$ANSISTRING$LONGINT
# [950:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll399
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	949
	.byte	1
# [951:1]
	.byte	2
	.uleb128	.Ll400-.Ll399
	.byte	13
# [952:1]
	.byte	2
	.uleb128	.Ll401-.Ll400
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll402
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO$_$OUTTEXTXYZ$crcCA10A6FC_$$_fin$1
# [958:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll403
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	957
	.byte	1
# [958:1]
	.byte	2
	.uleb128	.Ll404-.Ll403
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll405
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [958:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll406
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	957
	.byte	1
# [959:1]
	.byte	2
	.uleb128	.Ll407-.Ll406
	.byte	13
# [960:1]
	.byte	2
	.uleb128	.Ll408-.Ll407
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll409
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SCROLLUP
# [967:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll410
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	966
	.byte	1
# [968:1]
	.byte	2
	.uleb128	.Ll411-.Ll410
	.byte	13
# [969:1]
	.byte	2
	.uleb128	.Ll412-.Ll411
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll413
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_NOISE1$$BYTE
# [989:10]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll414
	.byte	5
	.uleb128	10
	.byte	3
	.sleb128	988
	.byte	1
# [990:10]
	.byte	2
	.uleb128	.Ll415-.Ll414
	.byte	13
# [991:10]
	.byte	2
	.uleb128	.Ll416-.Ll415
	.byte	13
# [992:10]
	.byte	2
	.uleb128	.Ll417-.Ll416
	.byte	13
# [993:10]
	.byte	2
	.uleb128	.Ll418-.Ll417
	.byte	13
# [994:10]
	.byte	2
	.uleb128	.Ll419-.Ll418
	.byte	13
# [995:10]
	.byte	2
	.uleb128	.Ll420-.Ll419
	.byte	13
# [996:10]
	.byte	2
	.uleb128	.Ll421-.Ll420
	.byte	13
# [988:1]
	.byte	2
	.uleb128	.Ll422-.Ll421
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-8
	.byte	1
# [998:5]
	.byte	2
	.uleb128	.Ll423-.Ll422
	.byte	5
	.uleb128	5
	.byte	22
# [999:6]
	.byte	2
	.uleb128	.Ll424-.Ll423
	.byte	5
	.uleb128	6
	.byte	13
# [1000:4]
	.byte	2
	.uleb128	.Ll425-.Ll424
	.byte	5
	.uleb128	4
	.byte	13
# [1002:1]
	.byte	2
	.uleb128	.Ll426-.Ll425
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll427
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_NOISE2$$LONGWORD
# [1013:10]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll428
	.byte	5
	.uleb128	10
	.byte	3
	.sleb128	1012
	.byte	1
# [1014:10]
	.byte	2
	.uleb128	.Ll429-.Ll428
	.byte	13
# [1015:10]
	.byte	2
	.uleb128	.Ll430-.Ll429
	.byte	13
# [1016:10]
	.byte	2
	.uleb128	.Ll431-.Ll430
	.byte	13
# [1017:10]
	.byte	2
	.uleb128	.Ll432-.Ll431
	.byte	13
# [1018:10]
	.byte	2
	.uleb128	.Ll433-.Ll432
	.byte	13
# [1019:10]
	.byte	2
	.uleb128	.Ll434-.Ll433
	.byte	13
# [1020:10]
	.byte	2
	.uleb128	.Ll435-.Ll434
	.byte	13
# [1012:1]
	.byte	2
	.uleb128	.Ll436-.Ll435
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-8
	.byte	1
# [1021:5]
	.byte	2
	.uleb128	.Ll437-.Ll436
	.byte	5
	.uleb128	5
	.byte	21
# [1022:6]
	.byte	2
	.uleb128	.Ll438-.Ll437
	.byte	5
	.uleb128	6
	.byte	13
# [1023:4]
	.byte	2
	.uleb128	.Ll439-.Ll438
	.byte	5
	.uleb128	4
	.byte	13
# [1025:1]
	.byte	2
	.uleb128	.Ll440-.Ll439
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll441
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_NOISE3$$LONGWORD
# [1044:10]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll442
	.byte	5
	.uleb128	10
	.byte	3
	.sleb128	1043
	.byte	1
# [1045:10]
	.byte	2
	.uleb128	.Ll443-.Ll442
	.byte	13
# [1046:10]
	.byte	2
	.uleb128	.Ll444-.Ll443
	.byte	13
# [1047:10]
	.byte	2
	.uleb128	.Ll445-.Ll444
	.byte	13
# [1048:10]
	.byte	2
	.uleb128	.Ll446-.Ll445
	.byte	13
# [1049:10]
	.byte	2
	.uleb128	.Ll447-.Ll446
	.byte	13
# [1050:10]
	.byte	2
	.uleb128	.Ll448-.Ll447
	.byte	13
# [1051:10]
	.byte	2
	.uleb128	.Ll449-.Ll448
	.byte	13
# [1043:1]
	.byte	2
	.uleb128	.Ll450-.Ll449
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-8
	.byte	1
# [1053:5]
	.byte	2
	.uleb128	.Ll451-.Ll450
	.byte	5
	.uleb128	5
	.byte	22
# [1054:6]
	.byte	2
	.uleb128	.Ll452-.Ll451
	.byte	5
	.uleb128	6
	.byte	13
# [1055:4]
	.byte	2
	.uleb128	.Ll453-.Ll452
	.byte	5
	.uleb128	4
	.byte	13
# [1057:1]
	.byte	2
	.uleb128	.Ll454-.Ll453
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll455
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SID$LONGINT$$TSAMPLE
# [1217:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll456
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1216
	.byte	1
# [1218:8]
	.byte	2
	.uleb128	.Ll457-.Ll456
	.byte	5
	.uleb128	8
	.byte	13
# [1221:42]
	.byte	2
	.uleb128	.Ll458-.Ll457
	.byte	5
	.uleb128	42
	.byte	15
# [1222:18]
	.byte	2
	.uleb128	.Ll459-.Ll458
	.byte	5
	.uleb128	18
	.byte	13
# [1223:41]
	.byte	2
	.uleb128	.Ll460-.Ll459
	.byte	5
	.uleb128	41
	.byte	13
# [1224:18]
	.byte	2
	.uleb128	.Ll461-.Ll460
	.byte	5
	.uleb128	18
	.byte	13
# [1225:41]
	.byte	2
	.uleb128	.Ll462-.Ll461
	.byte	5
	.uleb128	41
	.byte	13
# [1226:18]
	.byte	2
	.uleb128	.Ll463-.Ll462
	.byte	5
	.uleb128	18
	.byte	13
# [1228:15]
	.byte	2
	.uleb128	.Ll464-.Ll463
	.byte	5
	.uleb128	15
	.byte	14
# [1229:15]
	.byte	2
	.uleb128	.Ll465-.Ll464
	.byte	13
# [1230:15]
	.byte	2
	.uleb128	.Ll466-.Ll465
	.byte	13
# [1231:17]
	.byte	2
	.uleb128	.Ll467-.Ll466
	.byte	5
	.uleb128	17
	.byte	13
# [1232:13]
	.byte	2
	.uleb128	.Ll468-.Ll467
	.byte	5
	.uleb128	13
	.byte	13
# [1233:13]
	.byte	2
	.uleb128	.Ll469-.Ll468
	.byte	13
# [1234:13]
	.byte	2
	.uleb128	.Ll470-.Ll469
	.byte	13
# [1235:13]
	.byte	2
	.uleb128	.Ll471-.Ll470
	.byte	13
# [1236:33]
	.byte	2
	.uleb128	.Ll472-.Ll471
	.byte	5
	.uleb128	33
	.byte	13
# [1238:15]
	.byte	2
	.uleb128	.Ll473-.Ll472
	.byte	5
	.uleb128	15
	.byte	14
# [1239:15]
	.byte	2
	.uleb128	.Ll474-.Ll473
	.byte	13
# [1240:15]
	.byte	2
	.uleb128	.Ll475-.Ll474
	.byte	13
# [1241:17]
	.byte	2
	.uleb128	.Ll476-.Ll475
	.byte	5
	.uleb128	17
	.byte	13
# [1242:13]
	.byte	2
	.uleb128	.Ll477-.Ll476
	.byte	5
	.uleb128	13
	.byte	13
# [1243:13]
	.byte	2
	.uleb128	.Ll478-.Ll477
	.byte	13
# [1244:13]
	.byte	2
	.uleb128	.Ll479-.Ll478
	.byte	13
# [1245:13]
	.byte	2
	.uleb128	.Ll480-.Ll479
	.byte	13
# [1246:33]
	.byte	2
	.uleb128	.Ll481-.Ll480
	.byte	5
	.uleb128	33
	.byte	13
# [1248:15]
	.byte	2
	.uleb128	.Ll482-.Ll481
	.byte	5
	.uleb128	15
	.byte	14
# [1249:15]
	.byte	2
	.uleb128	.Ll483-.Ll482
	.byte	13
# [1250:15]
	.byte	2
	.uleb128	.Ll484-.Ll483
	.byte	13
# [1251:17]
	.byte	2
	.uleb128	.Ll485-.Ll484
	.byte	5
	.uleb128	17
	.byte	13
# [1252:13]
	.byte	2
	.uleb128	.Ll486-.Ll485
	.byte	5
	.uleb128	13
	.byte	13
# [1253:13]
	.byte	2
	.uleb128	.Ll487-.Ll486
	.byte	13
# [1254:13]
	.byte	2
	.uleb128	.Ll488-.Ll487
	.byte	13
# [1255:13]
	.byte	2
	.uleb128	.Ll489-.Ll488
	.byte	13
# [1256:33]
	.byte	2
	.uleb128	.Ll490-.Ll489
	.byte	5
	.uleb128	33
	.byte	13
# [1258:34]
	.byte	2
	.uleb128	.Ll491-.Ll490
	.byte	5
	.uleb128	34
	.byte	14
# [1217:1]
	.byte	2
	.uleb128	.Ll492-.Ll491
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-41
	.byte	1
# [1259:22]
	.byte	2
	.uleb128	.Ll493-.Ll492
	.byte	5
	.uleb128	22
	.byte	54
# [1260:12]
	.byte	2
	.uleb128	.Ll494-.Ll493
	.byte	5
	.uleb128	12
	.byte	13
# [1261:12]
	.byte	2
	.uleb128	.Ll495-.Ll494
	.byte	13
# [1262:12]
	.byte	2
	.uleb128	.Ll496-.Ll495
	.byte	13
# [1263:14]
	.byte	2
	.uleb128	.Ll497-.Ll496
	.byte	5
	.uleb128	14
	.byte	13
# [1264:14]
	.byte	2
	.uleb128	.Ll498-.Ll497
	.byte	13
# [1265:14]
	.byte	2
	.uleb128	.Ll499-.Ll498
	.byte	13
# [1266:47]
	.byte	2
	.uleb128	.Ll500-.Ll499
	.byte	5
	.uleb128	47
	.byte	13
# [1267:12]
	.byte	2
	.uleb128	.Ll501-.Ll500
	.byte	5
	.uleb128	12
	.byte	13
# [1269:19]
	.byte	2
	.uleb128	.Ll502-.Ll501
	.byte	5
	.uleb128	19
	.byte	14
# [1270:19]
	.byte	2
	.uleb128	.Ll503-.Ll502
	.byte	13
# [1271:19]
	.byte	2
	.uleb128	.Ll504-.Ll503
	.byte	13
# [1273:17]
	.byte	2
	.uleb128	.Ll505-.Ll504
	.byte	5
	.uleb128	17
	.byte	14
# [1274:17]
	.byte	2
	.uleb128	.Ll506-.Ll505
	.byte	13
# [1275:17]
	.byte	2
	.uleb128	.Ll507-.Ll506
	.byte	13
# [1278:1]
	.byte	2
	.uleb128	.Ll508-.Ll507
	.byte	5
	.uleb128	1
	.byte	15
# [1280:1]
	.byte	2
	.uleb128	.Ll509-.Ll508
	.byte	14
# [1283:13]
	.byte	2
	.uleb128	.Ll510-.Ll509
	.byte	5
	.uleb128	13
	.byte	15
# [1284:15]
	.byte	2
	.uleb128	.Ll511-.Ll510
	.byte	5
	.uleb128	15
	.byte	13
# [1285:10]
	.byte	2
	.uleb128	.Ll512-.Ll511
	.byte	5
	.uleb128	10
	.byte	13
# [1287:16]
	.byte	2
	.uleb128	.Ll513-.Ll512
	.byte	5
	.uleb128	16
	.byte	14
# [1288:19]
	.byte	2
	.uleb128	.Ll514-.Ll513
	.byte	5
	.uleb128	19
	.byte	13
# [1290:11]
	.byte	2
	.uleb128	.Ll515-.Ll514
	.byte	5
	.uleb128	11
	.byte	14
# [1292:20]
	.byte	2
	.uleb128	.Ll516-.Ll515
	.byte	5
	.uleb128	20
	.byte	14
# [1293:5]
	.byte	2
	.uleb128	.Ll517-.Ll516
	.byte	5
	.uleb128	5
	.byte	13
# [1295:8]
	.byte	2
	.uleb128	.Ll518-.Ll517
	.byte	5
	.uleb128	8
	.byte	14
# [1297:11]
	.byte	2
	.uleb128	.Ll519-.Ll518
	.byte	5
	.uleb128	11
	.byte	14
# [1298:13]
	.byte	2
	.uleb128	.Ll520-.Ll519
	.byte	5
	.uleb128	13
	.byte	13
# [1299:8]
	.byte	2
	.uleb128	.Ll521-.Ll520
	.byte	5
	.uleb128	8
	.byte	13
# [1301:17]
	.byte	2
	.uleb128	.Ll522-.Ll521
	.byte	5
	.uleb128	17
	.byte	14
# [1302:14]
	.byte	2
	.uleb128	.Ll523-.Ll522
	.byte	5
	.uleb128	14
	.byte	13
# [1304:9]
	.byte	2
	.uleb128	.Ll524-.Ll523
	.byte	5
	.uleb128	9
	.byte	14
# [1306:18]
	.byte	2
	.uleb128	.Ll525-.Ll524
	.byte	5
	.uleb128	18
	.byte	14
# [1307:3]
	.byte	2
	.uleb128	.Ll526-.Ll525
	.byte	5
	.uleb128	3
	.byte	13
# [1309:6]
	.byte	2
	.uleb128	.Ll527-.Ll526
	.byte	5
	.uleb128	6
	.byte	14
# [1311:11]
	.byte	2
	.uleb128	.Ll528-.Ll527
	.byte	5
	.uleb128	11
	.byte	14
# [1312:13]
	.byte	2
	.uleb128	.Ll529-.Ll528
	.byte	5
	.uleb128	13
	.byte	13
# [1313:8]
	.byte	2
	.uleb128	.Ll530-.Ll529
	.byte	5
	.uleb128	8
	.byte	13
# [1314:9]
	.byte	2
	.uleb128	.Ll531-.Ll530
	.byte	5
	.uleb128	9
	.byte	13
# [1316:18]
	.byte	2
	.uleb128	.Ll532-.Ll531
	.byte	5
	.uleb128	18
	.byte	14
# [1317:3]
	.byte	2
	.uleb128	.Ll533-.Ll532
	.byte	5
	.uleb128	3
	.byte	13
# [1319:6]
	.byte	2
	.uleb128	.Ll534-.Ll533
	.byte	5
	.uleb128	6
	.byte	14
# [1323:11]
	.byte	2
	.uleb128	.Ll535-.Ll534
	.byte	5
	.uleb128	11
	.byte	16
# [1324:11]
	.byte	2
	.uleb128	.Ll536-.Ll535
	.byte	13
# [1325:11]
	.byte	2
	.uleb128	.Ll537-.Ll536
	.byte	13
# [1328:3]
	.byte	2
	.uleb128	.Ll538-.Ll537
	.byte	5
	.uleb128	3
	.byte	15
# [1331:21]
	.byte	2
	.uleb128	.Ll539-.Ll538
	.byte	5
	.uleb128	21
	.byte	15
# [1332:16]
	.byte	2
	.uleb128	.Ll540-.Ll539
	.byte	5
	.uleb128	16
	.byte	13
# [1333:22]
	.byte	2
	.uleb128	.Ll541-.Ll540
	.byte	5
	.uleb128	22
	.byte	13
# [1334:9]
	.byte	2
	.uleb128	.Ll542-.Ll541
	.byte	5
	.uleb128	9
	.byte	13
# [1335:22]
	.byte	2
	.uleb128	.Ll543-.Ll542
	.byte	5
	.uleb128	22
	.byte	13
# [1336:22]
	.byte	2
	.uleb128	.Ll544-.Ll543
	.byte	13
# [1337:22]
	.byte	2
	.uleb128	.Ll545-.Ll544
	.byte	13
# [1338:18]
	.byte	2
	.uleb128	.Ll546-.Ll545
	.byte	5
	.uleb128	18
	.byte	13
# [1339:6]
	.byte	2
	.uleb128	.Ll547-.Ll546
	.byte	5
	.uleb128	6
	.byte	13
# [1340:7]
	.byte	2
	.uleb128	.Ll548-.Ll547
	.byte	5
	.uleb128	7
	.byte	13
# [1341:11]
	.byte	2
	.uleb128	.Ll549-.Ll548
	.byte	5
	.uleb128	11
	.byte	13
# [1342:20]
	.byte	2
	.uleb128	.Ll550-.Ll549
	.byte	5
	.uleb128	20
	.byte	13
# [1346:3]
	.byte	2
	.uleb128	.Ll551-.Ll550
	.byte	5
	.uleb128	3
	.byte	16
# [1349:21]
	.byte	2
	.uleb128	.Ll552-.Ll551
	.byte	5
	.uleb128	21
	.byte	15
# [1350:16]
	.byte	2
	.uleb128	.Ll553-.Ll552
	.byte	5
	.uleb128	16
	.byte	13
# [1351:22]
	.byte	2
	.uleb128	.Ll554-.Ll553
	.byte	5
	.uleb128	22
	.byte	13
# [1352:9]
	.byte	2
	.uleb128	.Ll555-.Ll554
	.byte	5
	.uleb128	9
	.byte	13
# [1353:22]
	.byte	2
	.uleb128	.Ll556-.Ll555
	.byte	5
	.uleb128	22
	.byte	13
# [1354:22]
	.byte	2
	.uleb128	.Ll557-.Ll556
	.byte	13
# [1355:22]
	.byte	2
	.uleb128	.Ll558-.Ll557
	.byte	13
# [1356:18]
	.byte	2
	.uleb128	.Ll559-.Ll558
	.byte	5
	.uleb128	18
	.byte	13
# [1357:6]
	.byte	2
	.uleb128	.Ll560-.Ll559
	.byte	5
	.uleb128	6
	.byte	13
# [1358:7]
	.byte	2
	.uleb128	.Ll561-.Ll560
	.byte	5
	.uleb128	7
	.byte	13
# [1359:11]
	.byte	2
	.uleb128	.Ll562-.Ll561
	.byte	5
	.uleb128	11
	.byte	13
# [1360:20]
	.byte	2
	.uleb128	.Ll563-.Ll562
	.byte	5
	.uleb128	20
	.byte	13
# [1363:3]
	.byte	2
	.uleb128	.Ll564-.Ll563
	.byte	5
	.uleb128	3
	.byte	15
# [1366:21]
	.byte	2
	.uleb128	.Ll565-.Ll564
	.byte	5
	.uleb128	21
	.byte	15
# [1367:16]
	.byte	2
	.uleb128	.Ll566-.Ll565
	.byte	5
	.uleb128	16
	.byte	13
# [1368:22]
	.byte	2
	.uleb128	.Ll567-.Ll566
	.byte	5
	.uleb128	22
	.byte	13
# [1369:9]
	.byte	2
	.uleb128	.Ll568-.Ll567
	.byte	5
	.uleb128	9
	.byte	13
# [1370:22]
	.byte	2
	.uleb128	.Ll569-.Ll568
	.byte	5
	.uleb128	22
	.byte	13
# [1371:22]
	.byte	2
	.uleb128	.Ll570-.Ll569
	.byte	13
# [1372:22]
	.byte	2
	.uleb128	.Ll571-.Ll570
	.byte	13
# [1373:18]
	.byte	2
	.uleb128	.Ll572-.Ll571
	.byte	5
	.uleb128	18
	.byte	13
# [1377:20]
	.byte	2
	.uleb128	.Ll573-.Ll572
	.byte	5
	.uleb128	20
	.byte	16
# [1381:11]
	.byte	2
	.uleb128	.Ll574-.Ll573
	.byte	5
	.uleb128	11
	.byte	16
# [1217:1]
	.byte	2
	.uleb128	.Ll575-.Ll574
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-164
	.byte	1
# [1381:48]
	.byte	2
	.uleb128	.Ll576-.Ll575
	.byte	5
	.uleb128	48
	.byte	176
# [1383:6]
	.byte	2
	.uleb128	.Ll577-.Ll576
	.byte	5
	.uleb128	6
	.byte	14
# [1384:11]
	.byte	2
	.uleb128	.Ll578-.Ll577
	.byte	5
	.uleb128	11
	.byte	13
# [1385:11]
	.byte	2
	.uleb128	.Ll579-.Ll578
	.byte	13
# [1386:11]
	.byte	2
	.uleb128	.Ll580-.Ll579
	.byte	13
# [1387:8]
	.byte	2
	.uleb128	.Ll581-.Ll580
	.byte	5
	.uleb128	8
	.byte	13
# [1389:11]
	.byte	2
	.uleb128	.Ll582-.Ll581
	.byte	5
	.uleb128	11
	.byte	14
# [1217:1]
	.byte	2
	.uleb128	.Ll583-.Ll582
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-172
	.byte	1
# [1389:48]
	.byte	2
	.uleb128	.Ll584-.Ll583
	.byte	5
	.uleb128	48
	.byte	184
# [1391:6]
	.byte	2
	.uleb128	.Ll585-.Ll584
	.byte	5
	.uleb128	6
	.byte	14
# [1392:11]
	.byte	2
	.uleb128	.Ll586-.Ll585
	.byte	5
	.uleb128	11
	.byte	13
# [1393:28]
	.byte	2
	.uleb128	.Ll587-.Ll586
	.byte	5
	.uleb128	28
	.byte	13
# [1394:11]
	.byte	2
	.uleb128	.Ll588-.Ll587
	.byte	5
	.uleb128	11
	.byte	13
# [1396:27]
	.byte	2
	.uleb128	.Ll589-.Ll588
	.byte	5
	.uleb128	27
	.byte	14
# [1397:17]
	.byte	2
	.uleb128	.Ll590-.Ll589
	.byte	5
	.uleb128	17
	.byte	13
# [1398:7]
	.byte	2
	.uleb128	.Ll591-.Ll590
	.byte	5
	.uleb128	7
	.byte	13
# [1399:11]
	.byte	2
	.uleb128	.Ll592-.Ll591
	.byte	5
	.uleb128	11
	.byte	13
# [1400:8]
	.byte	2
	.uleb128	.Ll593-.Ll592
	.byte	5
	.uleb128	8
	.byte	13
# [1403:11]
	.byte	2
	.uleb128	.Ll594-.Ll593
	.byte	5
	.uleb128	11
	.byte	15
# [1217:1]
	.byte	2
	.uleb128	.Ll595-.Ll594
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-186
	.byte	1
# [1403:49]
	.byte	2
	.uleb128	.Ll596-.Ll595
	.byte	5
	.uleb128	49
	.byte	198
# [1405:6]
	.byte	2
	.uleb128	.Ll597-.Ll596
	.byte	5
	.uleb128	6
	.byte	14
# [1406:11]
	.byte	2
	.uleb128	.Ll598-.Ll597
	.byte	5
	.uleb128	11
	.byte	13
# [1407:11]
	.byte	2
	.uleb128	.Ll599-.Ll598
	.byte	13
# [1408:11]
	.byte	2
	.uleb128	.Ll600-.Ll599
	.byte	13
# [1409:8]
	.byte	2
	.uleb128	.Ll601-.Ll600
	.byte	5
	.uleb128	8
	.byte	13
# [1414:10]
	.byte	2
	.uleb128	.Ll602-.Ll601
	.byte	5
	.uleb128	10
	.byte	17
# [1415:10]
	.byte	2
	.uleb128	.Ll603-.Ll602
	.byte	13
# [1416:10]
	.byte	2
	.uleb128	.Ll604-.Ll603
	.byte	13
# [1420:10]
	.byte	2
	.uleb128	.Ll605-.Ll604
	.byte	16
# [1421:10]
	.byte	2
	.uleb128	.Ll606-.Ll605
	.byte	13
# [1422:10]
	.byte	2
	.uleb128	.Ll607-.Ll606
	.byte	13
# [1424:3]
	.byte	2
	.uleb128	.Ll608-.Ll607
	.byte	5
	.uleb128	3
	.byte	14
# [1425:6]
	.byte	2
	.uleb128	.Ll609-.Ll608
	.byte	5
	.uleb128	6
	.byte	13
# [1426:6]
	.byte	2
	.uleb128	.Ll610-.Ll609
	.byte	13
# [1427:6]
	.byte	2
	.uleb128	.Ll611-.Ll610
	.byte	13
# [1429:25]
	.byte	2
	.uleb128	.Ll612-.Ll611
	.byte	5
	.uleb128	25
	.byte	14
# [1430:27]
	.byte	2
	.uleb128	.Ll613-.Ll612
	.byte	5
	.uleb128	27
	.byte	13
# [1431:27]
	.byte	2
	.uleb128	.Ll614-.Ll613
	.byte	13
# [1433:17]
	.byte	2
	.uleb128	.Ll615-.Ll614
	.byte	5
	.uleb128	17
	.byte	14
# [1434:18]
	.byte	2
	.uleb128	.Ll616-.Ll615
	.byte	5
	.uleb128	18
	.byte	13
# [1435:18]
	.byte	2
	.uleb128	.Ll617-.Ll616
	.byte	13
# [1437:17]
	.byte	2
	.uleb128	.Ll618-.Ll617
	.byte	5
	.uleb128	17
	.byte	14
# [1438:18]
	.byte	2
	.uleb128	.Ll619-.Ll618
	.byte	5
	.uleb128	18
	.byte	13
# [1439:18]
	.byte	2
	.uleb128	.Ll620-.Ll619
	.byte	13
# [1441:10]
	.byte	2
	.uleb128	.Ll621-.Ll620
	.byte	5
	.uleb128	10
	.byte	14
# [1442:20]
	.byte	2
	.uleb128	.Ll622-.Ll621
	.byte	5
	.uleb128	20
	.byte	13
# [1443:20]
	.byte	2
	.uleb128	.Ll623-.Ll622
	.byte	13
# [1444:20]
	.byte	2
	.uleb128	.Ll624-.Ll623
	.byte	13
# [1446:11]
	.byte	2
	.uleb128	.Ll625-.Ll624
	.byte	5
	.uleb128	11
	.byte	14
# [1447:22]
	.byte	2
	.uleb128	.Ll626-.Ll625
	.byte	5
	.uleb128	22
	.byte	13
# [1448:22]
	.byte	2
	.uleb128	.Ll627-.Ll626
	.byte	13
# [1449:22]
	.byte	2
	.uleb128	.Ll628-.Ll627
	.byte	13
# [1451:11]
	.byte	2
	.uleb128	.Ll629-.Ll628
	.byte	5
	.uleb128	11
	.byte	14
# [1452:22]
	.byte	2
	.uleb128	.Ll630-.Ll629
	.byte	5
	.uleb128	22
	.byte	13
# [1453:22]
	.byte	2
	.uleb128	.Ll631-.Ll630
	.byte	13
# [1454:22]
	.byte	2
	.uleb128	.Ll632-.Ll631
	.byte	13
# [1456:19]
	.byte	2
	.uleb128	.Ll633-.Ll632
	.byte	5
	.uleb128	19
	.byte	14
# [1217:1]
	.byte	2
	.uleb128	.Ll634-.Ll633
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-239
	.byte	1
# [1456:32]
	.byte	2
	.uleb128	.Ll635-.Ll634
	.byte	5
	.uleb128	32
	.byte	251
# [1457:27]
	.byte	2
	.uleb128	.Ll636-.Ll635
	.byte	5
	.uleb128	27
	.byte	13
# [1217:1]
	.byte	2
	.uleb128	.Ll637-.Ll636
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-240
	.byte	1
# [1457:26]
	.byte	2
	.uleb128	.Ll638-.Ll637
	.byte	5
	.uleb128	26
	.byte	252
# [1460:12]
	.byte	2
	.uleb128	.Ll639-.Ll638
	.byte	5
	.uleb128	12
	.byte	15
# [1461:12]
	.byte	2
	.uleb128	.Ll640-.Ll639
	.byte	13
# [1280:1]
	.byte	2
	.uleb128	.Ll641-.Ll640
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-181
	.byte	1
# [1464:7]
	.byte	2
	.uleb128	.Ll642-.Ll641
	.byte	5
	.uleb128	7
	.byte	196
# [1465:8]
	.byte	2
	.uleb128	.Ll643-.Ll642
	.byte	5
	.uleb128	8
	.byte	13
# [1466:1]
	.byte	2
	.uleb128	.Ll644-.Ll643
	.byte	5
	.uleb128	1
	.byte	13
# [1467:9]
	.byte	2
	.uleb128	.Ll645-.Ll644
	.byte	5
	.uleb128	9
	.byte	13
# [1468:11]
	.byte	2
	.uleb128	.Ll646-.Ll645
	.byte	5
	.uleb128	11
	.byte	13
# [1470:1]
	.byte	2
	.uleb128	.Ll647-.Ll646
	.byte	5
	.uleb128	1
	.byte	14
# [1471:1]
	.byte	2
	.uleb128	.Ll648-.Ll647
	.byte	13
# [1472:1]
	.byte	2
	.uleb128	.Ll649-.Ll648
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll650
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_INITSINETABLE
# [1530:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll651
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1529
	.byte	1
# [1531:1]
	.byte	2
	.uleb128	.Ll652-.Ll651
	.byte	13
# [1532:40]
	.byte	2
	.uleb128	.Ll653-.Ll652
	.byte	5
	.uleb128	40
	.byte	13
# [1531:1]
	.byte	2
	.uleb128	.Ll654-.Ll653
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [1534:1]
	.byte	2
	.uleb128	.Ll655-.Ll654
	.byte	15
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll656
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_INITLOGTABLE
# [1542:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll657
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1541
	.byte	1
# [1543:1]
	.byte	2
	.uleb128	.Ll658-.Ll657
	.byte	13
# [1545:1]
	.byte	2
	.uleb128	.Ll659-.Ll658
	.byte	14
# [1547:7]
	.byte	2
	.uleb128	.Ll660-.Ll659
	.byte	5
	.uleb128	7
	.byte	14
# [1548:23]
	.byte	2
	.uleb128	.Ll661-.Ll660
	.byte	5
	.uleb128	23
	.byte	13
# [1545:1]
	.byte	2
	.uleb128	.Ll662-.Ll661
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-3
	.byte	1
# [1550:1]
	.byte	2
	.uleb128	.Ll663-.Ll662
	.byte	17
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll664
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_FMSYNTH$$TSAMPLE
# [1611:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll665
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1610
	.byte	1
# [1612:5]
	.byte	2
	.uleb128	.Ll666-.Ll665
	.byte	5
	.uleb128	5
	.byte	13
# [1632:2]
	.byte	2
	.uleb128	.Ll667-.Ll666
	.byte	5
	.uleb128	2
	.byte	32
# [1611:1]
	.byte	2
	.uleb128	.Ll668-.Ll667
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-21
	.byte	1
# [1634:33]
	.byte	2
	.uleb128	.Ll669-.Ll668
	.byte	5
	.uleb128	33
	.byte	35
# [1611:1]
	.byte	2
	.uleb128	.Ll670-.Ll669
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-23
	.byte	1
# [1638:25]
	.byte	2
	.uleb128	.Ll671-.Ll670
	.byte	5
	.uleb128	25
	.byte	39
# [1611:1]
	.byte	2
	.uleb128	.Ll672-.Ll671
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-27
	.byte	1
# [1638:35]
	.byte	2
	.uleb128	.Ll673-.Ll672
	.byte	5
	.uleb128	35
	.byte	39
# [1639:15]
	.byte	2
	.uleb128	.Ll674-.Ll673
	.byte	5
	.uleb128	15
	.byte	13
# [1640:15]
	.byte	2
	.uleb128	.Ll675-.Ll674
	.byte	13
# [1641:15]
	.byte	2
	.uleb128	.Ll676-.Ll675
	.byte	13
# [1642:15]
	.byte	2
	.uleb128	.Ll677-.Ll676
	.byte	13
# [1643:15]
	.byte	2
	.uleb128	.Ll678-.Ll677
	.byte	13
# [1644:15]
	.byte	2
	.uleb128	.Ll679-.Ll678
	.byte	13
# [1645:15]
	.byte	2
	.uleb128	.Ll680-.Ll679
	.byte	13
# [1638:3]
	.byte	2
	.uleb128	.Ll681-.Ll680
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-7
	.byte	1
# [1611:1]
	.byte	2
	.uleb128	.Ll682-.Ll681
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-27
	.byte	1
# [1647:22]
	.byte	2
	.uleb128	.Ll683-.Ll682
	.byte	5
	.uleb128	22
	.byte	48
# [1654:22]
	.byte	2
	.uleb128	.Ll684-.Ll683
	.byte	19
# [1671:16]
	.byte	2
	.uleb128	.Ll685-.Ll684
	.byte	5
	.uleb128	16
	.byte	29
# [1611:1]
	.byte	2
	.uleb128	.Ll686-.Ll685
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-60
	.byte	1
# [1673:26]
	.byte	2
	.uleb128	.Ll687-.Ll686
	.byte	5
	.uleb128	26
	.byte	74
# [1678:20]
	.byte	2
	.uleb128	.Ll688-.Ll687
	.byte	5
	.uleb128	20
	.byte	17
# [1611:1]
	.byte	2
	.uleb128	.Ll689-.Ll688
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-67
	.byte	1
# [1680:26]
	.byte	2
	.uleb128	.Ll690-.Ll689
	.byte	5
	.uleb128	26
	.byte	81
# [1611:1]
	.byte	2
	.uleb128	.Ll691-.Ll690
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-69
	.byte	1
# [1681:17]
	.byte	2
	.uleb128	.Ll692-.Ll691
	.byte	5
	.uleb128	17
	.byte	82
# [1611:1]
	.byte	2
	.uleb128	.Ll693-.Ll692
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-70
	.byte	1
# [1681:35]
	.byte	2
	.uleb128	.Ll694-.Ll693
	.byte	5
	.uleb128	35
	.byte	82
# [1683:20]
	.byte	2
	.uleb128	.Ll695-.Ll694
	.byte	5
	.uleb128	20
	.byte	14
# [1611:1]
	.byte	2
	.uleb128	.Ll696-.Ll695
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-72
	.byte	1
# [1685:26]
	.byte	2
	.uleb128	.Ll697-.Ll696
	.byte	5
	.uleb128	26
	.byte	86
# [1690:20]
	.byte	2
	.uleb128	.Ll698-.Ll697
	.byte	5
	.uleb128	20
	.byte	17
# [1611:1]
	.byte	2
	.uleb128	.Ll699-.Ll698
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-79
	.byte	1
# [1692:26]
	.byte	2
	.uleb128	.Ll700-.Ll699
	.byte	5
	.uleb128	26
	.byte	93
# [1698:24]
	.byte	2
	.uleb128	.Ll701-.Ll700
	.byte	5
	.uleb128	24
	.byte	18
# [1611:1]
	.byte	2
	.uleb128	.Ll702-.Ll701
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-87
	.byte	1
# [1713:23]
	.byte	2
	.uleb128	.Ll703-.Ll702
	.byte	5
	.uleb128	23
	.byte	114
# [1611:1]
	.byte	2
	.uleb128	.Ll704-.Ll703
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-102
	.byte	1
# [1714:42]
	.byte	2
	.uleb128	.Ll705-.Ll704
	.byte	5
	.uleb128	42
	.byte	115
# [1611:1]
	.byte	2
	.uleb128	.Ll706-.Ll705
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-103
	.byte	1
# [1714:31]
	.byte	2
	.uleb128	.Ll707-.Ll706
	.byte	5
	.uleb128	31
	.byte	115
# [1715:9]
	.byte	2
	.uleb128	.Ll708-.Ll707
	.byte	5
	.uleb128	9
	.byte	13
# [1716:23]
	.byte	2
	.uleb128	.Ll709-.Ll708
	.byte	5
	.uleb128	23
	.byte	13
# [1717:23]
	.byte	2
	.uleb128	.Ll710-.Ll709
	.byte	13
# [1632:2]
	.byte	2
	.uleb128	.Ll711-.Ll710
	.byte	5
	.uleb128	2
	.byte	3
	.sleb128	-85
	.byte	1
# [1724:7]
	.byte	2
	.uleb128	.Ll712-.Ll711
	.byte	5
	.uleb128	7
	.byte	104
# [1728:13]
	.byte	2
	.uleb128	.Ll713-.Ll712
	.byte	5
	.uleb128	13
	.byte	16
# [1729:1]
	.byte	2
	.uleb128	.Ll714-.Ll713
	.byte	5
	.uleb128	1
	.byte	13
# [1731:1]
	.byte	2
	.uleb128	.Ll715-.Ll714
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll716
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_ANTIALIAS6$DOUBLE$TFILTERTABLE$$DOUBLE
# [1742:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll717
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1741
	.byte	1
# [1744:1]
	.byte	2
	.uleb128	.Ll718-.Ll717
	.byte	14
# [1745:1]
	.byte	2
	.uleb128	.Ll719-.Ll718
	.byte	13
# [1746:1]
	.byte	2
	.uleb128	.Ll720-.Ll719
	.byte	13
# [1747:1]
	.byte	2
	.uleb128	.Ll721-.Ll720
	.byte	13
# [1748:1]
	.byte	2
	.uleb128	.Ll722-.Ll721
	.byte	13
# [1749:1]
	.byte	2
	.uleb128	.Ll723-.Ll722
	.byte	13
# [1751:13]
	.byte	2
	.uleb128	.Ll724-.Ll723
	.byte	5
	.uleb128	13
	.byte	14
# [1753:1]
	.byte	2
	.uleb128	.Ll725-.Ll724
	.byte	5
	.uleb128	1
	.byte	14
# [1754:1]
	.byte	2
	.uleb128	.Ll726-.Ll725
	.byte	13
# [1755:1]
	.byte	2
	.uleb128	.Ll727-.Ll726
	.byte	13
# [1756:1]
	.byte	2
	.uleb128	.Ll728-.Ll727
	.byte	13
# [1757:1]
	.byte	2
	.uleb128	.Ll729-.Ll728
	.byte	13
# [1758:1]
	.byte	2
	.uleb128	.Ll730-.Ll729
	.byte	13
# [1760:25]
	.byte	2
	.uleb128	.Ll731-.Ll730
	.byte	5
	.uleb128	25
	.byte	14
# [1742:1]
	.byte	2
	.uleb128	.Ll732-.Ll731
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-18
	.byte	1
# [1760:42]
	.byte	2
	.uleb128	.Ll733-.Ll732
	.byte	5
	.uleb128	42
	.byte	30
# [1761:24]
	.byte	2
	.uleb128	.Ll734-.Ll733
	.byte	5
	.uleb128	24
	.byte	13
# [1762:24]
	.byte	2
	.uleb128	.Ll735-.Ll734
	.byte	13
# [1763:24]
	.byte	2
	.uleb128	.Ll736-.Ll735
	.byte	13
# [1760:1]
	.byte	2
	.uleb128	.Ll737-.Ll736
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-3
	.byte	1
# [1765:1]
	.byte	2
	.uleb128	.Ll738-.Ll737
	.byte	17
# [1766:1]
	.byte	2
	.uleb128	.Ll739-.Ll738
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll740
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_SDL_SOUND_INIT$$LONGINT
# [1772:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll741
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1771
	.byte	1
# [1773:1]
	.byte	2
	.uleb128	.Ll742-.Ll741
	.byte	13
# [1774:1]
	.byte	2
	.uleb128	.Ll743-.Ll742
	.byte	13
# [1775:1]
	.byte	2
	.uleb128	.Ll744-.Ll743
	.byte	13
# [1776:1]
	.byte	2
	.uleb128	.Ll745-.Ll744
	.byte	13
# [1777:1]
	.byte	2
	.uleb128	.Ll746-.Ll745
	.byte	13
# [1778:21]
	.byte	2
	.uleb128	.Ll747-.Ll746
	.byte	5
	.uleb128	21
	.byte	13
# [1779:1]
	.byte	2
	.uleb128	.Ll748-.Ll747
	.byte	5
	.uleb128	1
	.byte	13
# [1781:38]
	.byte	2
	.uleb128	.Ll749-.Ll748
	.byte	5
	.uleb128	38
	.byte	14
# [1783:3]
	.byte	2
	.uleb128	.Ll750-.Ll749
	.byte	5
	.uleb128	3
	.byte	14
# [1785:1]
	.byte	2
	.uleb128	.Ll751-.Ll750
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll752
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_AUDIOCALLBACK$POINTER$PBYTE$LONGINT
# [1801:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll753
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1800
	.byte	1
# [1804:4]
	.byte	2
	.uleb128	.Ll754-.Ll753
	.byte	5
	.uleb128	4
	.byte	15
# [1806:1]
	.byte	2
	.uleb128	.Ll755-.Ll754
	.byte	5
	.uleb128	1
	.byte	14
# [1808:12]
	.byte	2
	.uleb128	.Ll756-.Ll755
	.byte	5
	.uleb128	12
	.byte	14
# [1809:8]
	.byte	2
	.uleb128	.Ll757-.Ll756
	.byte	5
	.uleb128	8
	.byte	13
# [1811:18]
	.byte	2
	.uleb128	.Ll758-.Ll757
	.byte	5
	.uleb128	18
	.byte	14
# [1812:3]
	.byte	2
	.uleb128	.Ll759-.Ll758
	.byte	5
	.uleb128	3
	.byte	13
# [1813:22]
	.byte	2
	.uleb128	.Ll760-.Ll759
	.byte	5
	.uleb128	22
	.byte	13
# [1812:3]
	.byte	2
	.uleb128	.Ll761-.Ll760
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-1
	.byte	1
# [1814:6]
	.byte	2
	.uleb128	.Ll762-.Ll761
	.byte	5
	.uleb128	6
	.byte	14
# [1815:18]
	.byte	2
	.uleb128	.Ll763-.Ll762
	.byte	5
	.uleb128	18
	.byte	13
# [1817:9]
	.byte	2
	.uleb128	.Ll764-.Ll763
	.byte	5
	.uleb128	9
	.byte	14
# [1818:21]
	.byte	2
	.uleb128	.Ll765-.Ll764
	.byte	5
	.uleb128	21
	.byte	13
# [1819:3]
	.byte	2
	.uleb128	.Ll766-.Ll765
	.byte	5
	.uleb128	3
	.byte	13
# [1820:3]
	.byte	2
	.uleb128	.Ll767-.Ll766
	.byte	13
# [1823:12]
	.byte	2
	.uleb128	.Ll768-.Ll767
	.byte	5
	.uleb128	12
	.byte	15
# [1824:12]
	.byte	2
	.uleb128	.Ll769-.Ll768
	.byte	13
# [1825:3]
	.byte	2
	.uleb128	.Ll770-.Ll769
	.byte	5
	.uleb128	3
	.byte	13
# [1826:8]
	.byte	2
	.uleb128	.Ll771-.Ll770
	.byte	5
	.uleb128	8
	.byte	13
# [1827:8]
	.byte	2
	.uleb128	.Ll772-.Ll771
	.byte	13
# [1806:1]
	.byte	2
	.uleb128	.Ll773-.Ll772
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-21
	.byte	1
# [1830:10]
	.byte	2
	.uleb128	.Ll774-.Ll773
	.byte	5
	.uleb128	10
	.byte	36
# [1831:1]
	.byte	2
	.uleb128	.Ll775-.Ll774
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll776
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_div$TSAMPLE$LONGINT$$TSAMPLE
# [1836:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll777
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1835
	.byte	1
# [1837:13]
	.byte	2
	.uleb128	.Ll778-.Ll777
	.byte	5
	.uleb128	13
	.byte	13
# [1838:13]
	.byte	2
	.uleb128	.Ll779-.Ll778
	.byte	13
# [1839:1]
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
# function: RETRO_$$_plus$TSAMPLE$TSAMPLE$$TSAMPLE
# [1844:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll782
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1843
	.byte	1
# [1845:6]
	.byte	2
	.uleb128	.Ll783-.Ll782
	.byte	5
	.uleb128	6
	.byte	13
# [1846:6]
	.byte	2
	.uleb128	.Ll784-.Ll783
	.byte	13
# [1847:6]
	.byte	2
	.uleb128	.Ll785-.Ll784
	.byte	13
# [1848:6]
	.byte	2
	.uleb128	.Ll786-.Ll785
	.byte	13
# [1849:6]
	.byte	2
	.uleb128	.Ll787-.Ll786
	.byte	13
# [1850:6]
	.byte	2
	.uleb128	.Ll788-.Ll787
	.byte	13
# [1851:1]
	.byte	2
	.uleb128	.Ll789-.Ll788
	.byte	5
	.uleb128	1
	.byte	13
# [1852:1]
	.byte	2
	.uleb128	.Ll790-.Ll789
	.byte	13
# [1853:1]
	.byte	2
	.uleb128	.Ll791-.Ll790
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll792
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_DELAY1$DOUBLE$$DOUBLE
# [1858:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll793
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1857
	.byte	1
# [1859:12]
	.byte	2
	.uleb128	.Ll794-.Ll793
	.byte	5
	.uleb128	12
	.byte	13
# [1858:1]
	.byte	2
	.uleb128	.Ll795-.Ll794
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-1
	.byte	1
# [1860:12]
	.byte	2
	.uleb128	.Ll796-.Ll795
	.byte	5
	.uleb128	12
	.byte	14
# [1861:6]
	.byte	2
	.uleb128	.Ll797-.Ll796
	.byte	5
	.uleb128	6
	.byte	13
# [1862:1]
	.byte	2
	.uleb128	.Ll798-.Ll797
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll799
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: RETRO_$$_REVERB1$DOUBLE$$DOUBLE
# [1871:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll800
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	1870
	.byte	1
# [1872:8]
	.byte	2
	.uleb128	.Ll801-.Ll800
	.byte	5
	.uleb128	8
	.byte	13
# [1873:1]
	.byte	2
	.uleb128	.Ll802-.Ll801
	.byte	5
	.uleb128	1
	.byte	13
# [1874:9]
	.byte	2
	.uleb128	.Ll803-.Ll802
	.byte	5
	.uleb128	9
	.byte	13
# [1875:9]
	.byte	2
	.uleb128	.Ll804-.Ll803
	.byte	13
# [1876:9]
	.byte	2
	.uleb128	.Ll805-.Ll804
	.byte	13
# [1877:9]
	.byte	2
	.uleb128	.Ll806-.Ll805
	.byte	13
# [1878:9]
	.byte	2
	.uleb128	.Ll807-.Ll806
	.byte	13
# [1879:9]
	.byte	2
	.uleb128	.Ll808-.Ll807
	.byte	13
# [1880:9]
	.byte	2
	.uleb128	.Ll809-.Ll808
	.byte	13
# [1881:9]
	.byte	2
	.uleb128	.Ll810-.Ll809
	.byte	13
# [1882:9]
	.byte	2
	.uleb128	.Ll811-.Ll810
	.byte	13
# [1883:9]
	.byte	2
	.uleb128	.Ll812-.Ll811
	.byte	13
# [1884:10]
	.byte	2
	.uleb128	.Ll813-.Ll812
	.byte	5
	.uleb128	10
	.byte	13
# [1871:1]
	.byte	2
	.uleb128	.Ll814-.Ll813
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-13
	.byte	1
# [1886:12]
	.byte	2
	.uleb128	.Ll815-.Ll814
	.byte	5
	.uleb128	12
	.byte	27
# [1887:7]
	.byte	2
	.uleb128	.Ll816-.Ll815
	.byte	5
	.uleb128	7
	.byte	13
# [1888:8]
	.byte	2
	.uleb128	.Ll817-.Ll816
	.byte	5
	.uleb128	8
	.byte	13
# [1889:9]
	.byte	2
	.uleb128	.Ll818-.Ll817
	.byte	5
	.uleb128	9
	.byte	13
# [1890:10]
	.byte	2
	.uleb128	.Ll819-.Ll818
	.byte	5
	.uleb128	10
	.byte	13
# [1891:11]
	.byte	2
	.uleb128	.Ll820-.Ll819
	.byte	5
	.uleb128	11
	.byte	13
# [1892:12]
	.byte	2
	.uleb128	.Ll821-.Ll820
	.byte	5
	.uleb128	12
	.byte	13
# [1893:13]
	.byte	2
	.uleb128	.Ll822-.Ll821
	.byte	5
	.uleb128	13
	.byte	13
# [1894:14]
	.byte	2
	.uleb128	.Ll823-.Ll822
	.byte	5
	.uleb128	14
	.byte	13
# [1895:15]
	.byte	2
	.uleb128	.Ll824-.Ll823
	.byte	5
	.uleb128	15
	.byte	13
# [1896:17]
	.byte	2
	.uleb128	.Ll825-.Ll824
	.byte	5
	.uleb128	17
	.byte	13
# [1871:1]
	.byte	2
	.uleb128	.Ll826-.Ll825
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-25
	.byte	1
# [1900:12]
	.byte	2
	.uleb128	.Ll827-.Ll826
	.byte	5
	.uleb128	12
	.byte	41
# [1901:6]
	.byte	2
	.uleb128	.Ll828-.Ll827
	.byte	5
	.uleb128	6
	.byte	13
# [1902:1]
	.byte	2
	.uleb128	.Ll829-.Ll828
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll830
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

