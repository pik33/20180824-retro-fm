	.file "midi.pas"
# Begin asmlist al_begin

.section .debug_line
.Ldebug_linesection0:
.Ldebug_line0:

.section .debug_abbrev
.Ldebug_abbrevsection0:
.Ldebug_abbrev0:

.section .text.b_DEBUGSTART_$MIDI,"x"
.globl	DEBUGSTART_$MIDI
DEBUGSTART_$MIDI:
# End asmlist al_begin
# Begin asmlist al_procedures

.section .text.n_midi_$$_readbuffer$$longword,"x"
	.balign 16,0x90
.globl	MIDI_$$_READBUFFER$$LONGWORD
MIDI_$$_READBUFFER$$LONGWORD:
.Lc1:
# Var $result located in register eax
# [midi.pas]
# [39] begin
.Ll1:
# [40] if be<>bs then
	movb	TC_$MIDI_$$_BE(%rip),%al
	cmpb	TC_$MIDI_$$_BS(%rip),%al
	je	.Lj6
.Ll2:
# [42] result:=buffer[bs];
	movzbl	TC_$MIDI_$$_BS(%rip),%eax
	leaq	U_$MIDI_$$_BUFFER(%rip),%rdx
	movl	(%rdx,%rax,4),%eax
.Ll3:
# [43] bs+=1
	movzbl	TC_$MIDI_$$_BS(%rip),%edx
.Ll4:
# [44] end
	leal	1(%edx),%edx
.Ll5:
	movb	%dl,TC_$MIDI_$$_BS(%rip)
	jmp	.Lj11
.Lj6:
.Ll6:
# [45] else result:=$FFFFFFFF;
	movl	$4294967295,%eax
.Lj11:
.Ll7:
# [46] end;
	ret
.Lc2:
.Lt1:
.Ll8:

.section .text.n_midi_$$_writebuffer$longint,"x"
	.balign 16,0x90
.globl	MIDI_$$_WRITEBUFFER$LONGINT
MIDI_$$_WRITEBUFFER$LONGINT:
.Lc3:
# Var a located in register eax
.Ll9:
# [50] begin
	movl	%ecx,%eax
.Ll10:
# [51] if be<>bs-1 then
	movzbl	TC_$MIDI_$$_BS(%rip),%edx
	leaq	-1(%rdx),%rcx
	movzbl	TC_$MIDI_$$_BE(%rip),%edx
	cmpq	%rdx,%rcx
	je	.Lj17
.Ll11:
# [53] buffer[be]:=a;
	movzbl	TC_$MIDI_$$_BE(%rip),%ecx
	leaq	U_$MIDI_$$_BUFFER(%rip),%rdx
	movl	%eax,(%rdx,%rcx,4)
.Ll12:
# [54] be+=1;
	movzbl	TC_$MIDI_$$_BE(%rip),%eax
	leal	1(%eax),%eax
	movb	%al,TC_$MIDI_$$_BE(%rip)
.Lj17:
.Ll13:
# [56] end;
	ret
.Lc4:
.Lt2:
.Ll14:

.section .text.n_midi_$$_midiincallback$lphmidiin$longint$longint$longint$longint,"x"
	.balign 16,0x90
.globl	MIDI_$$_MIDIINCALLBACK$LPHMIDIIN$LONGINT$LONGINT$LONGINT$LONGINT
MIDI_$$_MIDIINCALLBACK$LPHMIDIIN$LONGINT$LONGINT$LONGINT$LONGINT:
.Lc5:
.seh_proc MIDI_$$_MIDIINCALLBACK$LPHMIDIIN$LONGINT$LONGINT$LONGINT$LONGINT
.Ll15:
# [66] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc7:
.Lc8:
	movq	%rsp,%rbp
.Lc9:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
# Var aMidiInHandle located in register rax
# Var aMsg located in register edx
# Var aInstance located in register r8d
# Var aMidiData located in register ecx
# Var aTimeStamp located in register eax
.seh_endprologue
	movq	%rcx,%rax
	movl	%r9d,%ecx
	movl	48(%rbp),%eax
# Var aMsg located in register edx
.Ll16:
# [68] callback:=integer(amsg);
	movl	%edx,U_$MIDI_$$_CALLBACK(%rip)
.Ll17:
# [69] case aMsg of
	cmpl	$963,%edx
	jl	.Lj27
	subl	$963,%edx
	je	.Lj28
	subl	$1,%edx
	je	.Lj26
	subl	$1,%edx
	je	.Lj26
	subl	$1,%edx
	je	.Lj26
	jmp	.Lj27
.Lj28:
.Ll18:
# [73] writebuffer(amididata);
	call	MIDI_$$_WRITEBUFFER$LONGINT
.Lj27:
.Lj26:
.Ll19:
# [92] end;
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc6:
.Lt5:
.Ll20:

.section .text.n_midi$_$openmidi_$$_fin$11,"x"
	.balign 16,0x90
MIDI$_$OPENMIDI_$$_fin$11:
.Lc10:
.seh_proc MIDI$_$OPENMIDI_$$_fin$11
.Ll21:
# [102] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc12:
.Lc13:
	movq	%rcx,%rbp
.Lc14:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
# Var $parentfp located in register rbp
.seh_endprologue
.Ll22:
	leaq	-88(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc11:
.Lt4:
.Ll23:

.section .text.n_midi_$$_openmidi,"x"
	.balign 16,0x90
.globl	MIDI_$$_OPENMIDI
MIDI_$$_OPENMIDI:
.Lc15:
# Temps allocated between rbp-96 and rbp-80
.seh_proc MIDI_$$_OPENMIDI
.Ll24:
	pushq	%rbp
.seh_pushreg %rbp
.Lc17:
.Lc18:
	movq	%rsp,%rbp
.Lc19:
	leaq	-144(%rsp),%rsp
.seh_stackalloc 144
	movq	%rbx,-96(%rbp)
.seh_savereg %rbx, 48
.seh_endprologue
# Var i located at rbp-8, size=OS_S32
# Var inputs located at rbp-16, size=OS_S32
# Var result located at rbp-24, size=OS_32
# Var caps located at rbp-72, size=OS_NO
# Var handle located at rbp-80, size=OS_64
.Ll25:
	movq	$0,-88(%rbp)
.Lj42:
	nop
.Lj38:
.Lj48:
.Ll26:
# [103] try
	nop
.Lj47:
.Ll27:
# [104] inputs:= MidiInGetNumDevs;
	call	_$dll$winmm$midiInGetNumDevs
	movl	%eax,-16(%rbp)
.Ll28:
	jmp	.Lj45
.Lj44:
.Ll29:
# [106] inputs:= 0;
	movl	$0,-16(%rbp)
.Ll30:
	call	FPC_DONEEXCEPTION
.Lj53:
	nop
.Lj45:
.Ll31:
# [109] if inputs>maxmidi then inputs:=maxmidi;
	cmpl	$16,-16(%rbp)
	jng	.Lj55
	movl	$16,-16(%rbp)
.Lj55:
.Ll32:
# [110] for i:=0 to maxmidi-1 do devicenames[i]:='';
	movl	$0,-8(%rbp)
	subl	$1,-8(%rbp)
	.balign 8,0x90
.Lj60:
	addl	$1,-8(%rbp)
	movl	-8(%rbp),%edx
	leaq	U_$MIDI_$$_DEVICENAMES(%rip),%rax
	leaq	(%rax,%rdx,8),%rcx
	movq	$0,%rdx
	call	fpc_ansistr_assign
	cmpl	$15,-8(%rbp)
	jl	.Lj60
.Ll33:
# [111] if inputs>0 then
	cmpl	$0,-16(%rbp)
	jng	.Lj66
.Ll34:
# [113] for i:=0 to inputs-1 do
	movl	-16(%rbp),%eax
	leal	-1(%eax),%ebx
	movl	$0,-8(%rbp)
	cmpl	-8(%rbp),%ebx
	jl	.Lj70
	subl	$1,-8(%rbp)
	.balign 8,0x90
.Lj71:
	addl	$1,-8(%rbp)
.Ll35:
# [115] result := midiInGetDevCaps(i, @caps, SizeOf(TMidiInCaps));
	leaq	-72(%rbp),%rdx
	movl	-8(%rbp),%ecx
	movl	$44,%r8d
	call	_$dll$winmm$midiInGetDevCapsA
	movl	%eax,-24(%rbp)
.Ll36:
# [116] if result = MMSYSERR_NOERROR then devicenames[i]:=(StrPas(caps.szPname));
	cmpl	$0,-24(%rbp)
	jne	.Lj81
	leaq	-64(%rbp),%rdx
	leaq	-88(%rbp),%rcx
	call	SYSUTILS_$$_STRPAS$PCHAR$$ANSISTRING
	movq	-88(%rbp),%rdx
	movl	-8(%rbp),%eax
	leaq	U_$MIDI_$$_DEVICENAMES(%rip),%rcx
	leaq	(%rcx,%rax,8),%rcx
	call	fpc_ansistr_assign
.Lj81:
.Ll37:
	cmpl	-8(%rbp),%ebx
	jg	.Lj71
.Lj70:
.Lj66:
.Ll38:
# [120] result := midiInOpen( @handle, 0 {devindex}, cardinal(@midiInCallback),
	movl	$196608,32(%rsp)
	leaq	MIDI_$$_MIDIINCALLBACK$LPHMIDIIN$LONGINT$LONGINT$LONGINT$LONGINT(%rip),%r8
	leaq	-80(%rbp),%rcx
	movl	$0,%r9d
	movl	$0,%edx
	call	_$dll$winmm$midiInOpen
	movl	%eax,-24(%rbp)
.Ll39:
# [127] Result := midiInPrepareHeader(Handle, @SysExHeader, SizeOf(TMidiHdr));
	leaq	U_$MIDI_$$_SYSEXHEADER(%rip),%rdx
	movq	-80(%rbp),%rcx
	movl	$108,%r8d
	call	_$dll$winmm$midiInPrepareHeader
	movl	%eax,-24(%rbp)
.Ll40:
# [128] Result := midiInAddBuffer( Handle, @SysExHeader, SizeOf(TMidiHdr));
	leaq	U_$MIDI_$$_SYSEXHEADER(%rip),%rdx
	movq	-80(%rbp),%rcx
	movl	$108,%r8d
	call	_$dll$winmm$midiInAddBuffer
	movl	%eax,-24(%rbp)
.Ll41:
# [129] Result := midiInStart( Handle);
	movq	-80(%rbp),%rcx
	call	_$dll$winmm$midiInStart
	movl	%eax,-24(%rbp)
.Lj122:
.Ll42:
	nop
.Lj39:
	movq	%rbp,%rcx
	call	MIDI$_$OPENMIDI_$$_fin$11
.Ll43:
# [131] end;
	movq	-96(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	2
	.long	1
	.rva	.Lj47
	.rva	.Lj44
	.rva	.Lj45
	.long	0
	.rva	.Lj38
	.rva	.Lj39
	.rva	MIDI$_$OPENMIDI_$$_fin$11

.section .text.n_midi_$$_openmidi,"x"
.seh_endproc
.Lc16:
.Lt3:
.Ll44:

.section .text.n_midi_$$_init_implicit$,"x"
	.balign 16,0x90
.globl	INIT$_$MIDI
INIT$_$MIDI:
.globl	MIDI_$$_init_implicit$
MIDI_$$_init_implicit$:
.Lc20:
.seh_proc MIDI_$$_init_implicit$
	leaq	-40(%rsp),%rsp
.Lc22:
.seh_stackalloc 40
.seh_endprologue
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc21:
.Lt6:
.Ll45:

.section .text.n_midi_$$_finalize_implicit$,"x"
	.balign 16,0x90
.globl	FINALIZE$_$MIDI
FINALIZE$_$MIDI:
.globl	MIDI_$$_finalize_implicit$
MIDI_$$_finalize_implicit$:
.Lc23:
.seh_proc MIDI_$$_finalize_implicit$
	leaq	-40(%rsp),%rsp
.Lc25:
.seh_stackalloc 40
.seh_endprologue
	leaq	RTTI_$MIDI_$$_DEF0(%rip),%rax
	movq	%rax,%rdx
	leaq	U_$MIDI_$$_DEVICENAMES(%rip),%rcx
	call	fpc_finalize
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc24:
.Lt7:
.Ll46:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 8
# [midi.pas]
# [16] var devicenames:array[0..maxmidi-1] of string;
	.globl U_$MIDI_$$_DEVICENAMES
U_$MIDI_$$_DEVICENAMES:
	.zero 128

.section .bss
	.balign 4
# [17] mididata:cardinal;
	.globl U_$MIDI_$$_MIDIDATA
U_$MIDI_$$_MIDIDATA:
	.zero 4

.section .bss
	.balign 4
# [18] midireceived:integer;
	.globl U_$MIDI_$$_MIDIRECEIVED
U_$MIDI_$$_MIDIRECEIVED:
	.zero 4

.section .bss
	.balign 4
# [19] callback:integer;
	.globl U_$MIDI_$$_CALLBACK
U_$MIDI_$$_CALLBACK:
	.zero 4

.section .bss
	.balign 4
# [20] buffer: array[0..255] of cardinal;
	.globl U_$MIDI_$$_BUFFER
U_$MIDI_$$_BUFFER:
	.zero 1024

.section .bss
# [30] SysExBuffer: array[0..2047] of AnsiChar;
	.globl U_$MIDI_$$_SYSEXBUFFER
U_$MIDI_$$_SYSEXBUFFER:
	.zero 2048

.section .bss
	.balign 8
# [31] SysExHeader: _midihdr ;
	.globl U_$MIDI_$$_SYSEXHEADER
U_$MIDI_$$_SYSEXHEADER:
	.zero 108
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .data.n_tc_$midi_$$_bs,"d"
.globl	TC_$MIDI_$$_BS
TC_$MIDI_$$_BS:
	.byte	0
# [22] be:byte=0;

.section .data.n_tc_$midi_$$_be,"d"
.globl	TC_$MIDI_$$_BE
TC_$MIDI_$$_BE:
	.byte	0
# [24] function readbuffer:cardinal;
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .data.n_RTTI_$MIDI_$$_DEF0,"d"
	.balign 8
.globl	RTTI_$MIDI_$$_DEF0
RTTI_$MIDI_$$_DEF0:
	.byte	12
# [135] 
	.ascii	"\000"
	.quad	128,16
	.quad	RTTI_$SYSTEM_$$_ANSISTRING
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc26:
	.long	.Lc28-.Lc27
.Lc27:
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
.Lc28:
	.long	.Lc30-.Lc29
.Lc29:
	.secrel32	.Lc26
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.balign 4,0
.Lc30:
	.long	.Lc32-.Lc31
.Lc31:
	.secrel32	.Lc26
	.quad	.Lc3
	.quad	.Lc4-.Lc3
	.balign 4,0
.Lc32:
	.long	.Lc34-.Lc33
.Lc33:
	.secrel32	.Lc26
	.quad	.Lc5
	.quad	.Lc6-.Lc5
	.byte	4
	.long	.Lc7-.Lc5
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc8-.Lc7
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc9-.Lc8
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc34:
	.long	.Lc36-.Lc35
.Lc35:
	.secrel32	.Lc26
	.quad	.Lc10
	.quad	.Lc11-.Lc10
	.byte	4
	.long	.Lc12-.Lc10
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc13-.Lc12
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc14-.Lc13
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc36:
	.long	.Lc38-.Lc37
.Lc37:
	.secrel32	.Lc26
	.quad	.Lc15
	.quad	.Lc16-.Lc15
	.byte	4
	.long	.Lc17-.Lc15
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc18-.Lc17
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc19-.Lc18
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc38:
	.long	.Lc40-.Lc39
.Lc39:
	.secrel32	.Lc26
	.quad	.Lc20
	.quad	.Lc21-.Lc20
	.byte	4
	.long	.Lc22-.Lc20
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc40:
	.long	.Lc42-.Lc41
.Lc41:
	.secrel32	.Lc26
	.quad	.Lc23
	.quad	.Lc24-.Lc23
	.byte	4
	.long	.Lc25-.Lc23
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc42:
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
# [37] function readbuffer:cardinal;
	.ascii	"midi.pas\000"
	.ascii	"Free Pascal 3.0.4 2017/12/03\000"
	.ascii	"D:/Programowanie/20180824 retro-fm/\000"
	.byte	9
	.byte	3
	.secrel32	.Ldebug_line0
	.quad	DEBUGSTART_$MIDI
	.quad	DEBUGEND_$MIDI
# Syms - Begin unit MIDI has index 15
# Symbol MIDI
# Symbol SYSTEM
# Symbol OBJPAS
# Symbol CLASSES
# Symbol SYSUTILS
# Symbol MMSYSTEM
# Symbol MAXMIDI
	.uleb128	2
	.ascii	"MAXMIDI\000"
	.long	.La1-.Ldebug_info0
	.uleb128	16
# Symbol DEVICENAMES
	.uleb128	3
	.ascii	"DEVICENAMES\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$MIDI_$$_DEVICENAMES
	.long	.La3-.Ldebug_info0
# Symbol MIDIDATA
	.uleb128	3
	.ascii	"MIDIDATA\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$MIDI_$$_MIDIDATA
	.long	.La5-.Ldebug_info0
# Symbol MIDIRECEIVED
	.uleb128	3
	.ascii	"MIDIRECEIVED\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$MIDI_$$_MIDIRECEIVED
	.long	.La7-.Ldebug_info0
# Symbol CALLBACK
	.uleb128	3
	.ascii	"CALLBACK\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$MIDI_$$_CALLBACK
	.long	.La7-.Ldebug_info0
# Symbol BUFFER
	.uleb128	3
	.ascii	"BUFFER\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$MIDI_$$_BUFFER
	.long	.La9-.Ldebug_info0
# Symbol BS
	.uleb128	3
	.ascii	"BS\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$MIDI_$$_BS
	.long	.La11-.Ldebug_info0
# Symbol BE
	.uleb128	3
	.ascii	"BE\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	TC_$MIDI_$$_BE
	.long	.La11-.Ldebug_info0
# Symbol READBUFFER
# Symbol WRITEBUFFER
# Symbol OPENMIDI
# Symbol SYSEXBUFFER
	.uleb128	3
	.ascii	"SYSEXBUFFER\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$MIDI_$$_SYSEXBUFFER
	.long	.La13-.Ldebug_info0
# Symbol SYSEXHEADER
	.uleb128	3
	.ascii	"SYSEXHEADER\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$MIDI_$$_SYSEXHEADER
	.long	.La15-.Ldebug_info0
# Syms - End unit MIDI has index 15
# Syms - Begin Staticsymtable
# Symbol RETRO
# Symbol MIDI_$$_init$
# Symbol MIDIINCALLBACK
# Symbol MIDI_$$_init_implicit$
# Symbol MIDI_$$_finalize_implicit$
# Syms - End Staticsymtable
# Procdef readbuffer:DWord;
	.uleb128	4
	.ascii	"READBUFFER\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La5-.Ldebug_info0
	.quad	MIDI_$$_READBUFFER$$LONGWORD
	.quad	.Lt1
# Symbol result
	.uleb128	5
	.ascii	"result\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La5-.Ldebug_info0
# Symbol READBUFFER
	.uleb128	5
	.ascii	"READBUFFER\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La5-.Ldebug_info0
# Symbol RESULT
	.uleb128	5
	.ascii	"RESULT\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La5-.Ldebug_info0
	.byte	0
# Procdef writebuffer(LongInt);
	.uleb128	6
	.ascii	"WRITEBUFFER\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	MIDI_$$_WRITEBUFFER$LONGINT
	.quad	.Lt2
# Symbol A
	.uleb128	7
	.ascii	"A\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La7-.Ldebug_info0
	.byte	0
# Procdef openmidi;
	.uleb128	6
	.ascii	"OPENMIDI\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	MIDI_$$_OPENMIDI
	.quad	.Lt3
# Symbol I
	.uleb128	5
	.ascii	"I\000"
	.byte	2
	.byte	118
	.sleb128	-8
	.long	.La7-.Ldebug_info0
# Symbol INPUTS
	.uleb128	5
	.ascii	"INPUTS\000"
	.byte	2
	.byte	118
	.sleb128	-16
	.long	.La7-.Ldebug_info0
# Symbol RESULT
	.uleb128	5
	.ascii	"RESULT\000"
	.byte	2
	.byte	118
	.sleb128	-24
	.long	.La5-.Ldebug_info0
# Symbol CAPS
	.uleb128	5
	.ascii	"CAPS\000"
	.byte	3
	.byte	118
	.sleb128	-72
	.long	.La17-.Ldebug_info0
# Symbol HANDLE
	.uleb128	5
	.ascii	"HANDLE\000"
	.byte	3
	.byte	118
	.sleb128	-80
	.long	.La19-.Ldebug_info0
# Symbol fin$11
	.byte	0
# Procdef $fin$11(<^untyped>) is nested;
	.uleb128	8
	.ascii	"fin$11\000"
	.byte	1
	.byte	65
	.quad	MIDI$_$OPENMIDI_$$_fin$11
	.quad	.Lt4
# Symbol parentfp
	.uleb128	7
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La21-.Ldebug_info0
	.byte	0
# Procdef MidiInCallback(LPHMIDIIN;LongInt;LongInt;LongInt;LongInt); StdCall;
	.uleb128	9
	.ascii	"MIDIINCALLBACK\000"
	.byte	1
	.byte	1
	.quad	MIDI_$$_MIDIINCALLBACK$LPHMIDIIN$LONGINT$LONGINT$LONGINT$LONGINT
	.quad	.Lt5
# Symbol AMIDIINHANDLE
	.uleb128	7
	.ascii	"AMIDIINHANDLE\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La23-.Ldebug_info0
# Symbol AMSG
	.uleb128	7
	.ascii	"AMSG\000"
	.byte	2
	.byte	144
	.uleb128	1
	.long	.La7-.Ldebug_info0
# Symbol AINSTANCE
	.uleb128	7
	.ascii	"AINSTANCE\000"
	.byte	2
	.byte	144
	.uleb128	8
	.long	.La7-.Ldebug_info0
# Symbol AMIDIDATA
	.uleb128	7
	.ascii	"AMIDIDATA\000"
	.byte	2
	.byte	144
	.uleb128	2
	.long	.La7-.Ldebug_info0
# Symbol ATIMESTAMP
	.uleb128	7
	.ascii	"ATIMESTAMP\000"
	.byte	2
	.byte	144
	.uleb128	0
	.long	.La7-.Ldebug_info0
	.byte	0
# Procdef $MIDI_$$_init_implicit$; Register;
	.uleb128	6
	.ascii	"MIDI_$$_init_implicit$\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	MIDI_$$_init_implicit$
	.quad	.Lt6
	.byte	0
# Procdef $MIDI_$$_finalize_implicit$; Register;
	.uleb128	6
	.ascii	"MIDI_$$_finalize_implicit$\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	MIDI_$$_finalize_implicit$
	.quad	.Lt7
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition Byte
.La11:
	.uleb128	10
	.ascii	"BYTE\000"
	.long	.La25-.Ldebug_info0
.La25:
	.uleb128	11
	.ascii	"BYTE\000"
	.byte	7
	.byte	1
.La12:
	.uleb128	12
	.long	.La11-.Ldebug_info0
# Definition ShortInt
.La1:
	.uleb128	10
	.ascii	"SHORTINT\000"
	.long	.La26-.Ldebug_info0
.La26:
	.uleb128	11
	.ascii	"SHORTINT\000"
	.byte	5
	.byte	1
.La2:
	.uleb128	12
	.long	.La1-.Ldebug_info0
# Definition LongWord
.La5:
	.uleb128	10
	.ascii	"LONGWORD\000"
	.long	.La27-.Ldebug_info0
.La27:
	.uleb128	11
	.ascii	"LONGWORD\000"
	.byte	7
	.byte	4
.La6:
	.uleb128	12
	.long	.La5-.Ldebug_info0
# Definition LongInt
.La7:
	.uleb128	10
	.ascii	"LONGINT\000"
	.long	.La28-.Ldebug_info0
.La28:
	.uleb128	11
	.ascii	"LONGINT\000"
	.byte	5
	.byte	4
.La8:
	.uleb128	12
	.long	.La7-.Ldebug_info0
# Definition QWord
.La19:
	.uleb128	10
	.ascii	"QWORD\000"
	.long	.La29-.Ldebug_info0
.La29:
	.uleb128	11
	.ascii	"QWord\000"
	.byte	7
	.byte	8
.La20:
	.uleb128	12
	.long	.La19-.Ldebug_info0
# Definition ^untyped
.La21:
	.uleb128	10
	.ascii	"parentfp_void_pointer\000"
	.long	.La30-.Ldebug_info0
.La30:
	.uleb128	13
.La22:
	.uleb128	12
	.long	.La21-.Ldebug_info0
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
# Defs - Begin unit MMSYSTEM has index 256
# Definition LPHMIDIIN
.La23:
	.uleb128	10
	.ascii	"LPHMIDIIN\000"
	.long	.La31-.Ldebug_info0
.La31:
	.uleb128	14
	.long	.La19-.Ldebug_info0
.La24:
	.uleb128	12
	.long	.La23-.Ldebug_info0
# Definition _MIDIINCAPSA
.La17:
	.uleb128	10
	.ascii	"_MIDIINCAPSA\000"
	.long	.La32-.Ldebug_info0
.La32:
	.uleb128	15
	.ascii	"_MIDIINCAPSA\000"
	.uleb128	44
	.uleb128	16
	.ascii	"WMID\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La33-.Ldebug_info0
	.uleb128	16
	.ascii	"WPID\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La33-.Ldebug_info0
	.uleb128	16
	.ascii	"VDRIVERVERSION\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La5-.Ldebug_info0
	.uleb128	16
	.ascii	"SZPNAME\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La35-.Ldebug_info0
	.uleb128	16
	.ascii	"DWSUPPORT\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La5-.Ldebug_info0
	.byte	0
.La18:
	.uleb128	12
	.long	.La17-.Ldebug_info0
# Definition _midihdr
.La15:
	.uleb128	10
	.ascii	"_MIDIHDR\000"
	.long	.La37-.Ldebug_info0
.La37:
	.uleb128	15
	.ascii	"_MIDIHDR\000"
	.uleb128	108
	.uleb128	16
	.ascii	"LPDATA\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La38-.Ldebug_info0
	.uleb128	16
	.ascii	"DWBUFFERLENGTH\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La5-.Ldebug_info0
	.uleb128	16
	.ascii	"DWBYTESRECORDED\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La5-.Ldebug_info0
	.uleb128	16
	.ascii	"DWUSER\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La19-.Ldebug_info0
	.uleb128	16
	.ascii	"DWFLAGS\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La5-.Ldebug_info0
	.uleb128	16
	.ascii	"LPNEXT\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La40-.Ldebug_info0
	.uleb128	16
	.ascii	"RESERVED\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La5-.Ldebug_info0
	.uleb128	16
	.ascii	"DWOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La5-.Ldebug_info0
	.uleb128	16
	.ascii	"DWRESERVED\000"
	.byte	2
	.byte	35
	.uleb128	44
	.long	.La42-.Ldebug_info0
	.byte	0
.La16:
	.uleb128	12
	.long	.La15-.Ldebug_info0
# Definition PMIDIHDR
.La40:
	.uleb128	10
	.ascii	"PMIDIHDR\000"
	.long	.La44-.Ldebug_info0
.La44:
	.uleb128	14
	.long	.La15-.Ldebug_info0
.La41:
	.uleb128	12
	.long	.La40-.Ldebug_info0
# Defs - End unit MMSYSTEM has index 256
# Defs - Begin unit SDL2 has index 254
# Defs - End unit SDL2 has index 254
# Defs - Begin unit CRT has index 255
# Defs - End unit CRT has index 255
# Defs - Begin unit UNIT6502 has index 13
# Defs - End unit UNIT6502 has index 13
# Defs - Begin unit MIDI has index 15
# Definition Array[0..15] Of AnsiString
.La3:
	.uleb128	17
	.uleb128	128
	.long	.La45-.Ldebug_info0
	.uleb128	18
	.sleb128	0
	.sleb128	15
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.byte	0
.La4:
	.uleb128	12
	.long	.La3-.Ldebug_info0
# Definition Array[0..255] Of LongWord
.La9:
	.uleb128	17
	.uleb128	1024
	.long	.La5-.Ldebug_info0
	.uleb128	18
	.sleb128	0
	.sleb128	255
	.uleb128	4
	.long	.La11-.Ldebug_info0
	.byte	0
.La10:
	.uleb128	12
	.long	.La9-.Ldebug_info0
# Definition Array[0..2047] Of Char
.La13:
	.uleb128	17
	.uleb128	2048
	.long	.La47-.Ldebug_info0
	.uleb128	18
	.sleb128	0
	.sleb128	2047
	.uleb128	1
	.long	.La49-.Ldebug_info0
	.byte	0
.La14:
	.uleb128	12
	.long	.La13-.Ldebug_info0
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
# Defs - Begin unit UNIT65032 has index 14
# Defs - End unit UNIT65032 has index 14
# Defs - Begin unit SYNTHCONTROL has index 17
# Defs - End unit SYNTHCONTROL has index 17
# Defs - Begin unit UNIT2 has index 16
# Defs - End unit UNIT2 has index 16
# Defs - Begin unit UNIT1 has index 10
# Defs - End unit UNIT1 has index 10
# Defs - Begin unit RETRO has index 12
# Defs - End unit RETRO has index 12
# Defs - Begin unit MIDI has index 15
# Defs - End unit MIDI has index 15
# Defs - Begin Staticsymtable
# Defs - End Staticsymtable
# Definition Word
.La33:
	.uleb128	10
	.ascii	"WORD\000"
	.long	.La51-.Ldebug_info0
.La51:
	.uleb128	11
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La34:
	.uleb128	12
	.long	.La33-.Ldebug_info0
# Definition _MIDIINCAPSA.Array[0..31] Of Char
.La35:
	.uleb128	17
	.uleb128	32
	.long	.La47-.Ldebug_info0
	.uleb128	18
	.sleb128	0
	.sleb128	31
	.uleb128	1
	.long	.La1-.Ldebug_info0
	.byte	0
.La36:
	.uleb128	12
	.long	.La35-.Ldebug_info0
# Definition PChar
.La38:
	.uleb128	10
	.ascii	"PCHAR\000"
	.long	.La52-.Ldebug_info0
.La52:
	.uleb128	14
	.long	.La47-.Ldebug_info0
.La39:
	.uleb128	12
	.long	.La38-.Ldebug_info0
# Definition _midihdr.Array[0..7] Of QWord
.La42:
	.uleb128	17
	.uleb128	64
	.long	.La19-.Ldebug_info0
	.uleb128	18
	.sleb128	0
	.sleb128	7
	.uleb128	8
	.long	.La1-.Ldebug_info0
	.byte	0
.La43:
	.uleb128	12
	.long	.La42-.Ldebug_info0
# Definition AnsiString
.La45:
	.uleb128	10
	.ascii	"ANSISTRING\000"
	.long	.La53-.Ldebug_info0
.La53:
	.uleb128	14
	.long	.La47-.Ldebug_info0
.La46:
	.uleb128	12
	.long	.La45-.Ldebug_info0
# Definition Char
.La47:
	.uleb128	10
	.ascii	"CHAR\000"
	.long	.La54-.Ldebug_info0
.La54:
	.uleb128	11
	.ascii	"Char\000"
	.byte	8
	.byte	1
.La48:
	.uleb128	12
	.long	.La47-.Ldebug_info0
# Definition SmallInt
.La49:
	.uleb128	10
	.ascii	"SMALLINT\000"
	.long	.La55-.Ldebug_info0
.La55:
	.uleb128	11
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.La50:
	.uleb128	12
	.long	.La49-.Ldebug_info0
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
	.uleb128	15
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
# Abbrev 8
	.uleb128	8
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
# Abbrev 9
	.uleb128	9
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
# Abbrev 10
	.uleb128	10
	.uleb128	22
	.byte	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 11
	.uleb128	11
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
# Abbrev 12
	.uleb128	12
	.uleb128	16
	.byte	0
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
	.uleb128	15
	.byte	0
	.uleb128	73
	.uleb128	19
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
	.uleb128	1
	.byte	1
	.uleb128	11
	.uleb128	15
	.uleb128	73
	.uleb128	19
	.byte	0
	.byte	0
# Abbrev 18
	.uleb128	18
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
	.ascii	"midi.pas\000"
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Lehdebug_line0:
# === header end ===
# function: MIDI_$$_READBUFFER$$LONGWORD
# [40:6]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	6
	.byte	51
# [42:17]
	.byte	2
	.uleb128	.Ll2-.Ll1
	.byte	5
	.uleb128	17
	.byte	14
# [43:3]
	.byte	2
	.uleb128	.Ll3-.Ll2
	.byte	5
	.uleb128	3
	.byte	13
# [44:3]
	.byte	2
	.uleb128	.Ll4-.Ll3
	.byte	13
# [43:3]
	.byte	2
	.uleb128	.Ll5-.Ll4
	.byte	3
	.sleb128	-1
	.byte	1
# [45:6]
	.byte	2
	.uleb128	.Ll6-.Ll5
	.byte	5
	.uleb128	6
	.byte	14
# [46:1]
	.byte	2
	.uleb128	.Ll7-.Ll6
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll8
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: MIDI_$$_WRITEBUFFER$LONGINT
# [50:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll9
	.byte	5
	.uleb128	1
	.byte	61
# [51:8]
	.byte	2
	.uleb128	.Ll10-.Ll9
	.byte	5
	.uleb128	8
	.byte	13
# [53:9]
	.byte	2
	.uleb128	.Ll11-.Ll10
	.byte	5
	.uleb128	9
	.byte	14
# [54:3]
	.byte	2
	.uleb128	.Ll12-.Ll11
	.byte	5
	.uleb128	3
	.byte	13
# [56:1]
	.byte	2
	.uleb128	.Ll13-.Ll12
	.byte	5
	.uleb128	1
	.byte	14
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll14
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: MIDI_$$_MIDIINCALLBACK$LPHMIDIIN$LONGINT$LONGINT$LONGINT$LONGINT
# [66:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll15
	.byte	5
	.uleb128	1
	.byte	77
# [68:1]
	.byte	2
	.uleb128	.Ll16-.Ll15
	.byte	14
# [69:1]
	.byte	2
	.uleb128	.Ll17-.Ll16
	.byte	13
# [73:5]
	.byte	2
	.uleb128	.Ll18-.Ll17
	.byte	5
	.uleb128	5
	.byte	16
# [92:1]
	.byte	2
	.uleb128	.Ll19-.Ll18
	.byte	5
	.uleb128	1
	.byte	31
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll20
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: MIDI$_$OPENMIDI_$$_fin$11
# [102:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll21
	.byte	5
	.uleb128	1
	.byte	113
# [102:1]
	.byte	2
	.uleb128	.Ll22-.Ll21
	.byte	1
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll23
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: MIDI_$$_OPENMIDI
# [102:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll24
	.byte	5
	.uleb128	1
	.byte	113
# [102:1]
	.byte	2
	.uleb128	.Ll25-.Ll24
	.byte	1
# [103:3]
	.byte	2
	.uleb128	.Ll26-.Ll25
	.byte	5
	.uleb128	3
	.byte	13
# [104:14]
	.byte	2
	.uleb128	.Ll27-.Ll26
	.byte	5
	.uleb128	14
	.byte	13
# [103:3]
	.byte	2
	.uleb128	.Ll28-.Ll27
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-1
	.byte	1
# [106:5]
	.byte	2
	.uleb128	.Ll29-.Ll28
	.byte	5
	.uleb128	5
	.byte	15
# [103:3]
	.byte	2
	.uleb128	.Ll30-.Ll29
	.byte	5
	.uleb128	3
	.byte	3
	.sleb128	-3
	.byte	1
# [109:10]
	.byte	2
	.uleb128	.Ll31-.Ll30
	.byte	5
	.uleb128	10
	.byte	18
# [110:1]
	.byte	2
	.uleb128	.Ll32-.Ll31
	.byte	5
	.uleb128	1
	.byte	13
# [111:10]
	.byte	2
	.uleb128	.Ll33-.Ll32
	.byte	5
	.uleb128	10
	.byte	13
# [113:21]
	.byte	2
	.uleb128	.Ll34-.Ll33
	.byte	5
	.uleb128	21
	.byte	14
# [115:40]
	.byte	2
	.uleb128	.Ll35-.Ll34
	.byte	5
	.uleb128	40
	.byte	14
# [116:15]
	.byte	2
	.uleb128	.Ll36-.Ll35
	.byte	5
	.uleb128	15
	.byte	13
# [113:7]
	.byte	2
	.uleb128	.Ll37-.Ll36
	.byte	5
	.uleb128	7
	.byte	3
	.sleb128	-3
	.byte	1
# [120:11]
	.byte	2
	.uleb128	.Ll38-.Ll37
	.byte	5
	.uleb128	11
	.byte	19
# [127:51]
	.byte	2
	.uleb128	.Ll39-.Ll38
	.byte	5
	.uleb128	51
	.byte	19
# [128:48]
	.byte	2
	.uleb128	.Ll40-.Ll39
	.byte	5
	.uleb128	48
	.byte	13
# [129:11]
	.byte	2
	.uleb128	.Ll41-.Ll40
	.byte	5
	.uleb128	11
	.byte	13
# [102:1]
	.byte	2
	.uleb128	.Ll42-.Ll41
	.byte	5
	.uleb128	1
	.byte	3
	.sleb128	-27
	.byte	1
# [131:1]
	.byte	2
	.uleb128	.Ll43-.Ll42
	.byte	41
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll44
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: INIT$_$MIDI
# function: MIDI_$$_init_implicit$
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll45
	.byte	0
	.byte	1
	.byte	1
# ###################
# function: FINALIZE$_$MIDI
# function: MIDI_$$_finalize_implicit$
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll46
	.byte	0
	.byte	1
	.byte	1
# ###################
.Ledebug_line0:
# End asmlist al_dwarf_line
# Begin asmlist al_end

.section .text.z_DEBUGEND_$MIDI,"x"
.globl	DEBUGEND_$MIDI
DEBUGEND_$MIDI:
# End asmlist al_end

