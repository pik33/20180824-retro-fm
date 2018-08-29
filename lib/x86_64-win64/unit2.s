	.file "unit2.pas"
# Begin asmlist al_begin

.section .debug_line
.Ldebug_linesection0:
.Ldebug_line0:

.section .debug_abbrev
.Ldebug_abbrevsection0:
.Ldebug_abbrev0:

.section .text.b_DEBUGSTART_$UNIT2,"x"
.globl	DEBUGSTART_$UNIT2
DEBUGSTART_$UNIT2:
# End asmlist al_begin
# Begin asmlist al_procedures

.section .text.n_unit2$_$tform2_$__$$_button1click$tobject,"x"
	.balign 16,0x90
.globl	UNIT2$_$TFORM2_$__$$_BUTTON1CLICK$TOBJECT
UNIT2$_$TFORM2_$__$$_BUTTON1CLICK$TOBJECT:
.Lc1:
.seh_proc UNIT2$_$TFORM2_$__$$_BUTTON1CLICK$TOBJECT
.Ll1:
# [unit2.pas]
# [37] begin
	leaq	-40(%rsp),%rsp
.Lc3:
.seh_stackalloc 40
# Var Sender located in register rdx
# Var $self located in register rax
.seh_endprologue
	movq	%rcx,%rax
.Ll2:
# [38] openmidi;
	call	MIDI_$$_OPENMIDI
.Ll3:
# [39] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc2:
.Lt2:
.Ll4:

.section .text.n_unit2$_$tform2_$_timer1timer$tobject_$$_fin$2,"x"
	.balign 16,0x90
UNIT2$_$TFORM2_$_TIMER1TIMER$TOBJECT_$$_fin$2:
.Lc4:
.seh_proc UNIT2$_$TFORM2_$_TIMER1TIMER$TOBJECT_$$_fin$2
.Ll5:
# [42] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc6:
.Lc7:
	movq	%rcx,%rbp
.Lc8:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
# Var $parentfp located in register rbp
.seh_endprologue
.Ll6:
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc5:
.Lt1:
.Ll7:

.section .text.n_unit2$_$tform2_$__$$_timer1timer$tobject,"x"
	.balign 16,0x90
.globl	UNIT2$_$TFORM2_$__$$_TIMER1TIMER$TOBJECT
UNIT2$_$TFORM2_$__$$_TIMER1TIMER$TOBJECT:
.Lc9:
# Temps allocated between rbp-8 and rbp+0
.seh_proc UNIT2$_$TFORM2_$__$$_TIMER1TIMER$TOBJECT
.Ll8:
	pushq	%rbp
.seh_pushreg %rbp
.Lc11:
.Lc12:
	movq	%rsp,%rbp
.Lc13:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
# Var Sender located in register rdx
# Var $self located in register rax
.seh_endprologue
	movq	%rcx,%rax
.Ll9:
	movq	$0,-8(%rbp)
.Lj13:
	nop
.Lj9:
.Ll10:
# [43] if callback<>0 then
	cmpl	$0,U_$MIDI_$$_CALLBACK(%rip)
	je	.Lj15
.Ll11:
# [45] form2.memo1.lines.add(inttostr(mididata));
	movl	U_$MIDI_$$_MIDIDATA(%rip),%edx
	leaq	-8(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	movq	-8(%rbp),%rdx
	movq	U_$UNIT2_$$_FORM2(%rip),%rax
	movq	1904(%rax),%rax
	movq	1480(%rax),%rcx
	movq	U_$UNIT2_$$_FORM2(%rip),%rax
	movq	1904(%rax),%rax
	movq	1480(%rax),%rax
	movq	(%rax),%rax
	call	*328(%rax)
.Ll12:
# [46] form2.memo1.lines.add(inttostr(callback));
	movl	U_$MIDI_$$_CALLBACK(%rip),%edx
	leaq	-8(%rbp),%rcx
	call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	movq	-8(%rbp),%rdx
	movq	U_$UNIT2_$$_FORM2(%rip),%rax
	movq	1904(%rax),%rax
	movq	1480(%rax),%rcx
	movq	U_$UNIT2_$$_FORM2(%rip),%rax
	movq	1904(%rax),%rax
	movq	1480(%rax),%rax
	movq	(%rax),%rax
	call	*328(%rax)
.Ll13:
# [48] callback:=0;
	movl	$0,U_$MIDI_$$_CALLBACK(%rip)
.Ll14:
# [49] midireceived:=0;
	movl	$0,U_$MIDI_$$_MIDIRECEIVED(%rip)
.Lj15:
.Lj36:
.Ll15:
	nop
.Lj10:
	movq	%rbp,%rcx
	call	UNIT2$_$TFORM2_$_TIMER1TIMER$TOBJECT_$$_fin$2
.Ll16:
# [52] end;
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj9
	.rva	.Lj10
	.rva	UNIT2$_$TFORM2_$_TIMER1TIMER$TOBJECT_$$_fin$2

.section .text.n_unit2$_$tform2_$__$$_timer1timer$tobject,"x"
.seh_endproc
.Lc10:
.Lt3:
.Ll17:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 8
# [28] Form2: TForm2;
	.globl U_$UNIT2_$$_FORM2
U_$UNIT2_$$_FORM2:
	.zero 8

.section .data.n_VMT_$UNIT2_$$_TFORM2,"d"
	.balign 8
.globl	VMT_$UNIT2_$$_TFORM2
VMT_$UNIT2_$$_TFORM2:
	.quad	1920,-1920
	.quad	VMT_$FORMS_$$_TFORM
	.quad	.Ld1
	.quad	0
	.quad	.Ld2
	.quad	.Ld5
	.quad	RTTI_$UNIT2_$$_TFORM2
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
# [56] 
	.balign 8
.Ld1:
	.byte	6
	.ascii	"TForm2"
	.balign 8
.Ld2:
	.long	2
	.quad	.Ld3
	.quad	UNIT2$_$TFORM2_$__$$_BUTTON1CLICK$TOBJECT
	.quad	.Ld4
	.quad	UNIT2$_$TFORM2_$__$$_TIMER1TIMER$TOBJECT
	.balign 8
.Ld3:
	.byte	12
	.ascii	"Button1Click"
	.balign 8
.Ld4:
	.byte	11
	.ascii	"Timer1Timer"
	.balign 8
.Ld5:
	.short	3
	.quad	.Ld6
	.quad	1896
	.short	1
	.byte	7
	.ascii	"Button1"
	.quad	1904
	.short	2
	.byte	5
	.ascii	"Memo1"
	.quad	1912
	.short	3
	.byte	6
	.ascii	"Timer1"
	.balign 8
.Ld6:
	.short	3
	.quad	VMT_$STDCTRLS_$$_TBUTTON
	.quad	VMT_$STDCTRLS_$$_TMEMO
	.quad	VMT_$EXTCTRLS_$$_TTIMER
# End asmlist al_globals
# Begin asmlist al_rtti

.section .data.n_INIT_$UNIT2_$$_TFORM2,"d"
	.balign 8
.globl	INIT_$UNIT2_$$_TFORM2
INIT_$UNIT2_$$_TFORM2:
	.byte	15,6
	.ascii	"TForm2"
	.long	8,0

.section .data.n_RTTI_$UNIT2_$$_TFORM2,"d"
	.balign 8
.globl	RTTI_$UNIT2_$$_TFORM2
RTTI_$UNIT2_$$_TFORM2:
	.byte	15,6
	.ascii	"TForm2"
	.quad	VMT_$UNIT2_$$_TFORM2
	.quad	RTTI_$FORMS_$$_TFORM
	.short	103
	.byte	5
	.ascii	"Unit2"
	.short	0
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc14:
	.long	.Lc16-.Lc15
.Lc15:
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
.Lc16:
	.long	.Lc18-.Lc17
.Lc17:
	.secrel32	.Lc14
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc18:
	.long	.Lc20-.Lc19
.Lc19:
	.secrel32	.Lc14
	.quad	.Lc4
	.quad	.Lc5-.Lc4
	.byte	4
	.long	.Lc6-.Lc4
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc7-.Lc6
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc8-.Lc7
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc20:
	.long	.Lc22-.Lc21
.Lc21:
	.secrel32	.Lc14
	.quad	.Lc9
	.quad	.Lc10-.Lc9
	.byte	4
	.long	.Lc11-.Lc9
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc12-.Lc11
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc13-.Lc12
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc22:
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
# [36] procedure TForm2.Button1Click(Sender: TObject);
	.ascii	"unit2.pas\000"
	.ascii	"Free Pascal 3.0.4 2017/12/03\000"
	.ascii	"D:/Programowanie/20180824 retro-fm/\000"
	.byte	9
	.byte	3
	.secrel32	.Ldebug_line0
	.quad	DEBUGSTART_$UNIT2
	.quad	DEBUGEND_$UNIT2
# Syms - Begin unit UNIT2 has index 16
# Symbol UNIT2
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
# Symbol EXTCTRLS
# Symbol MIDI
# Symbol TFORM2
# Symbol FORM2
	.uleb128	2
	.ascii	"FORM2\000"
	.byte	1
	.byte	9
	.byte	3
	.quad	U_$UNIT2_$$_FORM2
	.long	.La1-.Ldebug_info0
# Syms - End unit UNIT2 has index 16
# Syms - Begin Staticsymtable
# Symbol UNIT2_$$_init$
# Syms - End Staticsymtable
# Procdef $fin$2(<^untyped>) is nested;
	.uleb128	3
	.ascii	"fin$2\000"
	.byte	1
	.byte	65
	.quad	UNIT2$_$TFORM2_$_TIMER1TIMER$TOBJECT_$$_fin$2
	.quad	.Lt1
# Symbol parentfp
	.uleb128	4
	.ascii	"parentfp\000"
	.byte	2
	.byte	144
	.uleb128	6
	.long	.La4-.Ldebug_info0
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Definition ^untyped
.La4:
	.uleb128	5
	.ascii	"parentfp_void_pointer\000"
	.long	.La6-.Ldebug_info0
.La6:
	.uleb128	6
.La5:
	.uleb128	7
	.long	.La4-.Ldebug_info0
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
# Defs - Begin unit MMSYSTEM has index 256
# Defs - End unit MMSYSTEM has index 256
# Defs - Begin unit SDL2 has index 254
# Defs - End unit SDL2 has index 254
# Defs - Begin unit CRT has index 255
# Defs - End unit CRT has index 255
# Defs - Begin unit UNIT6502 has index 13
# Defs - End unit UNIT6502 has index 13
# Defs - Begin unit FMSYNTH has index 18
# Defs - End unit FMSYNTH has index 18
# Defs - Begin unit UMAIN has index 11
# Defs - End unit UMAIN has index 11
# Defs - Begin unit UNIT65032 has index 14
# Defs - End unit UNIT65032 has index 14
# Defs - Begin unit SYNTHCONTROL has index 17
# Defs - End unit SYNTHCONTROL has index 17
# Defs - Begin unit UNIT2 has index 16
# Definition TForm2
.La1:
	.uleb128	5
	.ascii	"TFORM2\000"
	.long	.La7-.Ldebug_info0
.La7:
	.uleb128	8
	.long	.La3-.Ldebug_info0
.La3:
	.uleb128	9
	.ascii	"TFORM2\000"
	.uleb128	1920
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La10-.Ldebug_info0
	.uleb128	11
	.ascii	"BUTTON1\000"
	.byte	3
	.byte	35
	.uleb128	1896
	.long	.La11-.Ldebug_info0
	.uleb128	11
	.ascii	"MEMO1\000"
	.byte	3
	.byte	35
	.uleb128	1904
	.long	.La14-.Ldebug_info0
	.uleb128	11
	.ascii	"TIMER1\000"
	.byte	3
	.byte	35
	.uleb128	1912
	.long	.La17-.Ldebug_info0
# Procdef Button1Click(<TForm2>;TObject);
	.uleb128	12
	.ascii	"BUTTON1CLICK\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT2$_$TFORM2_$__$$_BUTTON1CLICK$TOBJECT
	.quad	.Lt2
# Symbol this
	.uleb128	13
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
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef Timer1Timer(<TForm2>;TObject);
	.uleb128	12
	.ascii	"TIMER1TIMER\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	UNIT2$_$TFORM2_$__$$_TIMER1TIMER$TOBJECT
	.quad	.Lt3
# Symbol this
	.uleb128	13
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
	.long	.La20-.Ldebug_info0
# Symbol fin$2
	.byte	0
	.byte	0
.La2:
	.uleb128	7
	.long	.La1-.Ldebug_info0
# Defs - End unit UNIT2 has index 16
# Defs - Begin unit UNIT1 has index 10
# Defs - End unit UNIT1 has index 10
# Defs - Begin unit RETRO has index 12
# Defs - End unit RETRO has index 12
# Defs - Begin unit MIDI has index 15
# Defs - End unit MIDI has index 15
# Defs - Begin unit UNIT2 has index 16
# Defs - End unit UNIT2 has index 16
# Defs - Begin Staticsymtable
# Defs - End Staticsymtable
# Definition TForm
.La8:
	.uleb128	5
	.ascii	"TFORM\000"
	.long	.La23-.Ldebug_info0
.La23:
	.uleb128	8
	.long	.La10-.Ldebug_info0
.La10:
	.uleb128	9
	.ascii	"TFORM\000"
	.uleb128	1896
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La26-.Ldebug_info0
	.uleb128	14
	.ascii	"FLCLVERSION\000"
	.byte	3
	.byte	35
	.uleb128	1888
	.byte	3
	.long	.La27-.Ldebug_info0
	.uleb128	14
	.ascii	"LCLVERSION\000"
	.byte	3
	.byte	35
	.uleb128	1888
	.byte	3
	.long	.La27-.Ldebug_info0
# Procdef LCLVersionIsStored(<TForm>):Boolean;
	.uleb128	15
	.ascii	"LCLVERSIONISSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La8-.Ldebug_info0
	.byte	0
# Procdef CreateWnd(<TForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La8-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La8-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TForm>;<Pointer>;TComponent);
	.uleb128	18
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
	.long	.La8-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La8-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	19
	.ascii	"THEOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef Cascade(<TForm>);
	.uleb128	20
	.ascii	"CASCADE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La8-.Ldebug_info0
	.byte	0
# Procdef Next(<TForm>);
	.uleb128	20
	.ascii	"NEXT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La8-.Ldebug_info0
	.byte	0
# Procdef Previous(<TForm>);
	.uleb128	20
	.ascii	"PREVIOUS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La8-.Ldebug_info0
	.byte	0
# Procdef Tile(<TForm>);
	.uleb128	20
	.ascii	"TILE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La8-.Ldebug_info0
	.byte	0
	.byte	0
.La9:
	.uleb128	7
	.long	.La8-.Ldebug_info0
# Definition TButton
.La11:
	.uleb128	5
	.ascii	"TBUTTON\000"
	.long	.La36-.Ldebug_info0
.La36:
	.uleb128	8
	.long	.La13-.Ldebug_info0
.La13:
	.uleb128	9
	.ascii	"TBUTTON\000"
	.uleb128	1424
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La39-.Ldebug_info0
	.byte	0
.La12:
	.uleb128	7
	.long	.La11-.Ldebug_info0
# Definition TMemo
.La14:
	.uleb128	5
	.ascii	"TMEMO\000"
	.long	.La40-.Ldebug_info0
.La40:
	.uleb128	8
	.long	.La16-.Ldebug_info0
.La16:
	.uleb128	9
	.ascii	"TMEMO\000"
	.uleb128	1512
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La43-.Ldebug_info0
	.byte	0
.La15:
	.uleb128	7
	.long	.La14-.Ldebug_info0
# Definition TTimer
.La17:
	.uleb128	5
	.ascii	"TTIMER\000"
	.long	.La44-.Ldebug_info0
.La44:
	.uleb128	8
	.long	.La19-.Ldebug_info0
.La19:
	.uleb128	9
	.ascii	"TTIMER\000"
	.uleb128	168
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La47-.Ldebug_info0
	.byte	0
.La18:
	.uleb128	7
	.long	.La17-.Ldebug_info0
# Definition TObject
.La20:
	.uleb128	5
	.ascii	"TOBJECT\000"
	.long	.La48-.Ldebug_info0
.La48:
	.uleb128	8
	.long	.La22-.Ldebug_info0
.La22:
	.uleb128	9
	.ascii	"TOBJECT\000"
	.uleb128	8
	.uleb128	21
	.byte	1
	.ascii	"_vptr$TOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La31-.Ldebug_info0
# Procdef constructor Create(<TObject>;<Pointer>);
	.uleb128	22
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TObject>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef class newinstance(<Class Of TObject>):TObject;
	.uleb128	18
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
	.long	.La20-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La49-.Ldebug_info0
	.byte	0
# Procdef FreeInstance(<TObject>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef SafeCallException(<TObject>;TObject;Pointer):LongInt;
	.uleb128	18
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
	.long	.La51-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol EXCEPTOBJECT
	.uleb128	19
	.ascii	"EXCEPTOBJECT\000"
	.long	.La20-.Ldebug_info0
# Symbol EXCEPTADDR
	.uleb128	19
	.ascii	"EXCEPTADDR\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef DefaultHandler(<TObject>;var <Formal type>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef Free(<TObject>);
	.uleb128	20
	.ascii	"FREE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef class InitInstance(<Class Of TObject>;Pointer):TObject;
	.uleb128	22
	.ascii	"INITINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La55-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	19
	.ascii	"INSTANCE\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef CleanupInstance(<TObject>);
	.uleb128	20
	.ascii	"CLEANUPINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef class ClassType(<Class Of TObject>):Class Of TObject;
	.uleb128	22
	.ascii	"CLASSTYPE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La57-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La59-.Ldebug_info0
	.byte	0
# Procdef class ClassInfo(<Class Of TObject>):^untyped;
	.uleb128	22
	.ascii	"CLASSINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La31-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La61-.Ldebug_info0
	.byte	0
# Procdef class ClassName(<Class Of TObject>;<var ShortString>):ShortString;
	.uleb128	22
	.ascii	"CLASSNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La63-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La65-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La63-.Ldebug_info0
	.byte	0
# Procdef class ClassNameIs(<Class Of TObject>;const ShortString):Boolean;
	.uleb128	22
	.ascii	"CLASSNAMEIS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La67-.Ldebug_info0
# Symbol NAME
	.uleb128	19
	.ascii	"NAME\000"
	.long	.La63-.Ldebug_info0
	.byte	0
# Procdef class ClassParent(<Class Of TObject>):Class Of TObject;
	.uleb128	22
	.ascii	"CLASSPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La57-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La69-.Ldebug_info0
	.byte	0
# Procdef class InstanceSize(<Class Of TObject>):Int64;
	.uleb128	22
	.ascii	"INSTANCESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La71-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La73-.Ldebug_info0
	.byte	0
# Procdef class InheritsFrom(<Class Of TObject>;TClass):Boolean;
	.uleb128	22
	.ascii	"INHERITSFROM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La75-.Ldebug_info0
# Symbol ACLASS
	.uleb128	19
	.ascii	"ACLASS\000"
	.long	.La57-.Ldebug_info0
	.byte	0
# Procdef class StringMessageTable(<Class Of TObject>):^TStringMessageTable;
	.uleb128	22
	.ascii	"STRINGMESSAGETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La77-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La79-.Ldebug_info0
	.byte	0
# Procdef class MethodAddress(<Class Of TObject>;const ShortString):^untyped;
	.uleb128	22
	.ascii	"METHODADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La31-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La81-.Ldebug_info0
# Symbol NAME
	.uleb128	19
	.ascii	"NAME\000"
	.long	.La63-.Ldebug_info0
	.byte	0
# Procdef class MethodName(<Class Of TObject>;<var ShortString>;Pointer):ShortString;
	.uleb128	22
	.ascii	"METHODNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La63-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La83-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La63-.Ldebug_info0
# Symbol ADDRESS
	.uleb128	19
	.ascii	"ADDRESS\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef FieldAddress(<TObject>;const ShortString):^untyped;
	.uleb128	22
	.ascii	"FIELDADDRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La31-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol NAME
	.uleb128	19
	.ascii	"NAME\000"
	.long	.La63-.Ldebug_info0
	.byte	0
# Procdef AfterConstruction(<TObject>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef BeforeDestruction(<TObject>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef DefaultHandlerStr(<TObject>;var <Formal type>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef Dispatch(<TObject>;var <Formal type>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef DispatchStr(<TObject>;var <Formal type>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	22
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol IID
	.uleb128	19
	.ascii	"IID\000"
	.long	.La85-.Ldebug_info0
# Symbol OBJ
	.uleb128	19
	.ascii	"OBJ\000"
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef GetInterface(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	22
	.ascii	"GETINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	19
	.ascii	"IIDSTR\000"
	.long	.La63-.Ldebug_info0
# Symbol OBJ
	.uleb128	19
	.ascii	"OBJ\000"
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceByStr(<TObject>;const ShortString;out <Formal type>):Boolean;
	.uleb128	22
	.ascii	"GETINTERFACEBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	19
	.ascii	"IIDSTR\000"
	.long	.La63-.Ldebug_info0
# Symbol OBJ
	.uleb128	19
	.ascii	"OBJ\000"
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef GetInterfaceWeak(<TObject>;const TGuid;out <Formal type>):Boolean;
	.uleb128	22
	.ascii	"GETINTERFACEWEAK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol IID
	.uleb128	19
	.ascii	"IID\000"
	.long	.La85-.Ldebug_info0
# Symbol OBJ
	.uleb128	19
	.ascii	"OBJ\000"
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntry(<Class Of TObject>;const TGuid):^tinterfaceentry;
	.uleb128	22
	.ascii	"GETINTERFACEENTRY\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La87-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La89-.Ldebug_info0
# Symbol IID
	.uleb128	19
	.ascii	"IID\000"
	.long	.La85-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceEntryByStr(<Class Of TObject>;const ShortString):^tinterfaceentry;
	.uleb128	22
	.ascii	"GETINTERFACEENTRYBYSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La87-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La91-.Ldebug_info0
# Symbol IIDSTR
	.uleb128	19
	.ascii	"IIDSTR\000"
	.long	.La63-.Ldebug_info0
	.byte	0
# Procdef class GetInterfaceTable(<Class Of TObject>):^tinterfacetable;
	.uleb128	22
	.ascii	"GETINTERFACETABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La93-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La95-.Ldebug_info0
	.byte	0
# Procdef class UnitName(<Class Of TObject>;<var AnsiString>):AnsiString;
	.uleb128	22
	.ascii	"UNITNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La27-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La97-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef Equals(<TObject>;TObject):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol OBJ
	.uleb128	19
	.ascii	"OBJ\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef GetHashCode(<TObject>):Int64;
	.uleb128	18
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
	.long	.La71-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef ToString(<TObject>;<var AnsiString>):AnsiString;
	.uleb128	18
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
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La20-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
	.byte	0
.La21:
	.uleb128	7
	.long	.La20-.Ldebug_info0
# Definition TCustomForm
.La24:
	.uleb128	5
	.ascii	"TCUSTOMFORM\000"
	.long	.La99-.Ldebug_info0
.La99:
	.uleb128	8
	.long	.La26-.Ldebug_info0
.La26:
	.uleb128	9
	.ascii	"TCUSTOMFORM\000"
	.uleb128	1888
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La102-.Ldebug_info0
	.uleb128	14
	.ascii	"FACTIVE\000"
	.byte	3
	.byte	35
	.uleb128	1448
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FACTIVECONTROL\000"
	.byte	3
	.byte	35
	.uleb128	1456
	.byte	3
	.long	.La103-.Ldebug_info0
	.uleb128	14
	.ascii	"FACTIVEDEFAULTCONTROL\000"
	.byte	3
	.byte	35
	.uleb128	1464
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"FALLOWDROPFILES\000"
	.byte	3
	.byte	35
	.uleb128	1472
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FALPHABLEND\000"
	.byte	3
	.byte	35
	.uleb128	1473
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FALPHABLENDVALUE\000"
	.byte	3
	.byte	35
	.uleb128	1474
	.byte	3
	.long	.La109-.Ldebug_info0
	.uleb128	14
	.ascii	"FBORDERICONS\000"
	.byte	3
	.byte	35
	.uleb128	1476
	.byte	3
	.long	.La111-.Ldebug_info0
	.uleb128	14
	.ascii	"FDEFAULTCONTROL\000"
	.byte	3
	.byte	35
	.uleb128	1480
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"FCANCELCONTROL\000"
	.byte	3
	.byte	35
	.uleb128	1488
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"FDEFAULTMONITOR\000"
	.byte	3
	.byte	35
	.uleb128	1496
	.byte	3
	.long	.La113-.Ldebug_info0
	.uleb128	14
	.ascii	"FDESIGNER\000"
	.byte	3
	.byte	35
	.uleb128	1504
	.byte	3
	.long	.La115-.Ldebug_info0
	.uleb128	14
	.ascii	"FFORMSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	1512
	.byte	3
	.long	.La118-.Ldebug_info0
	.uleb128	14
	.ascii	"FFORMUPDATECOUNT\000"
	.byte	3
	.byte	35
	.uleb128	1516
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FFORMHANDLERS\000"
	.byte	3
	.byte	35
	.uleb128	1520
	.byte	3
	.long	.La122-.Ldebug_info0
	.uleb128	14
	.ascii	"FHELPFILE\000"
	.byte	3
	.byte	35
	.uleb128	1544
	.byte	3
	.long	.La27-.Ldebug_info0
	.uleb128	14
	.ascii	"FICON\000"
	.byte	3
	.byte	35
	.uleb128	1552
	.byte	3
	.long	.La124-.Ldebug_info0
	.uleb128	14
	.ascii	"FONSHOWMODALFINISHED\000"
	.byte	3
	.byte	35
	.uleb128	1560
	.byte	3
	.long	.La127-.Ldebug_info0
	.uleb128	14
	.ascii	"FPOPUPMODE\000"
	.byte	3
	.byte	35
	.uleb128	1576
	.byte	3
	.long	.La129-.Ldebug_info0
	.uleb128	14
	.ascii	"FPOPUPPARENT\000"
	.byte	3
	.byte	35
	.uleb128	1584
	.byte	3
	.long	.La24-.Ldebug_info0
	.uleb128	14
	.ascii	"FSMALLICONHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	1592
	.byte	3
	.long	.La131-.Ldebug_info0
	.uleb128	14
	.ascii	"FBIGICONHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	1600
	.byte	3
	.long	.La131-.Ldebug_info0
	.uleb128	14
	.ascii	"FKEYPREVIEW\000"
	.byte	3
	.byte	35
	.uleb128	1608
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FMENU\000"
	.byte	3
	.byte	35
	.uleb128	1616
	.byte	3
	.long	.La133-.Ldebug_info0
	.uleb128	14
	.ascii	"FMODALRESULT\000"
	.byte	3
	.byte	35
	.uleb128	1624
	.byte	3
	.long	.La136-.Ldebug_info0
	.uleb128	14
	.ascii	"FLASTFOCUSEDCONTROL\000"
	.byte	3
	.byte	35
	.uleb128	1632
	.byte	3
	.long	.La103-.Ldebug_info0
	.uleb128	14
	.ascii	"FOLDBORDERSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	1640
	.byte	3
	.long	.La138-.Ldebug_info0
	.uleb128	14
	.ascii	"FONACTIVATE\000"
	.byte	3
	.byte	35
	.uleb128	1648
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCLOSE\000"
	.byte	3
	.byte	35
	.uleb128	1664
	.byte	3
	.long	.La142-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCLOSEQUERY\000"
	.byte	3
	.byte	35
	.uleb128	1680
	.byte	3
	.long	.La144-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCREATE\000"
	.byte	3
	.byte	35
	.uleb128	1696
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONDEACTIVATE\000"
	.byte	3
	.byte	35
	.uleb128	1712
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONDESTROY\000"
	.byte	3
	.byte	35
	.uleb128	1728
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONDROPFILES\000"
	.byte	3
	.byte	35
	.uleb128	1744
	.byte	3
	.long	.La146-.Ldebug_info0
	.uleb128	14
	.ascii	"FONHELP\000"
	.byte	3
	.byte	35
	.uleb128	1760
	.byte	3
	.long	.La148-.Ldebug_info0
	.uleb128	14
	.ascii	"FONHIDE\000"
	.byte	3
	.byte	35
	.uleb128	1776
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONSHORTCUT\000"
	.byte	3
	.byte	35
	.uleb128	1792
	.byte	3
	.long	.La150-.Ldebug_info0
	.uleb128	14
	.ascii	"FONSHOW\000"
	.byte	3
	.byte	35
	.uleb128	1808
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONWINDOWSTATECHANGE\000"
	.byte	3
	.byte	35
	.uleb128	1824
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FPOSITION\000"
	.byte	3
	.byte	35
	.uleb128	1840
	.byte	3
	.long	.La152-.Ldebug_info0
	.uleb128	14
	.ascii	"FRESTOREDLEFT\000"
	.byte	3
	.byte	35
	.uleb128	1844
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FRESTOREDTOP\000"
	.byte	3
	.byte	35
	.uleb128	1848
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FRESTOREDWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	1852
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FRESTOREDHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	1856
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FSHOWINTASKBAR\000"
	.byte	3
	.byte	35
	.uleb128	1860
	.byte	3
	.long	.La154-.Ldebug_info0
	.uleb128	14
	.ascii	"FWINDOWSTATE\000"
	.byte	3
	.byte	35
	.uleb128	1864
	.byte	3
	.long	.La156-.Ldebug_info0
	.uleb128	14
	.ascii	"FACTIONLISTS\000"
	.byte	3
	.byte	35
	.uleb128	1872
	.byte	2
	.long	.La158-.Ldebug_info0
	.uleb128	14
	.ascii	"FFORMBORDERSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	1880
	.byte	2
	.long	.La138-.Ldebug_info0
	.uleb128	14
	.ascii	"FFORMSTATE\000"
	.byte	3
	.byte	35
	.uleb128	1884
	.byte	2
	.long	.La161-.Ldebug_info0
	.uleb128	14
	.ascii	"ACTIVE\000"
	.byte	3
	.byte	35
	.uleb128	1448
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"ACTIVECONTROL\000"
	.byte	3
	.byte	35
	.uleb128	1456
	.byte	3
	.long	.La103-.Ldebug_info0
	.uleb128	14
	.ascii	"ACTIVEDEFAULTCONTROL\000"
	.byte	3
	.byte	35
	.uleb128	1464
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"ALLOWDROPFILES\000"
	.byte	3
	.byte	35
	.uleb128	1472
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"ALPHABLEND\000"
	.byte	3
	.byte	35
	.uleb128	1473
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"ALPHABLENDVALUE\000"
	.byte	3
	.byte	35
	.uleb128	1474
	.byte	3
	.long	.La109-.Ldebug_info0
	.uleb128	14
	.ascii	"BORDERICONS\000"
	.byte	3
	.byte	35
	.uleb128	1476
	.byte	3
	.long	.La111-.Ldebug_info0
	.uleb128	14
	.ascii	"BORDERSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	1880
	.byte	2
	.long	.La138-.Ldebug_info0
	.uleb128	14
	.ascii	"CANCELCONTROL\000"
	.byte	3
	.byte	35
	.uleb128	1488
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"DEFAULTCONTROL\000"
	.byte	3
	.byte	35
	.uleb128	1480
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"DEFAULTMONITOR\000"
	.byte	3
	.byte	35
	.uleb128	1496
	.byte	3
	.long	.La113-.Ldebug_info0
	.uleb128	14
	.ascii	"DESIGNER\000"
	.byte	3
	.byte	35
	.uleb128	1504
	.byte	3
	.long	.La115-.Ldebug_info0
	.uleb128	14
	.ascii	"FORMSTATE\000"
	.byte	3
	.byte	35
	.uleb128	1884
	.byte	2
	.long	.La161-.Ldebug_info0
	.uleb128	14
	.ascii	"FORMSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	1512
	.byte	3
	.long	.La118-.Ldebug_info0
	.uleb128	14
	.ascii	"HELPFILE\000"
	.byte	3
	.byte	35
	.uleb128	1544
	.byte	3
	.long	.La27-.Ldebug_info0
	.uleb128	14
	.ascii	"ICON\000"
	.byte	3
	.byte	35
	.uleb128	1552
	.byte	3
	.long	.La124-.Ldebug_info0
	.uleb128	14
	.ascii	"KEYPREVIEW\000"
	.byte	3
	.byte	35
	.uleb128	1608
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"MENU\000"
	.byte	3
	.byte	35
	.uleb128	1616
	.byte	3
	.long	.La133-.Ldebug_info0
	.uleb128	14
	.ascii	"MODALRESULT\000"
	.byte	3
	.byte	35
	.uleb128	1624
	.byte	3
	.long	.La136-.Ldebug_info0
	.uleb128	14
	.ascii	"POPUPMODE\000"
	.byte	3
	.byte	35
	.uleb128	1576
	.byte	3
	.long	.La129-.Ldebug_info0
	.uleb128	14
	.ascii	"POPUPPARENT\000"
	.byte	3
	.byte	35
	.uleb128	1584
	.byte	3
	.long	.La24-.Ldebug_info0
	.uleb128	14
	.ascii	"ONACTIVATE\000"
	.byte	3
	.byte	35
	.uleb128	1648
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCLOSE\000"
	.byte	3
	.byte	35
	.uleb128	1664
	.byte	3
	.long	.La142-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCLOSEQUERY\000"
	.byte	3
	.byte	35
	.uleb128	1680
	.byte	3
	.long	.La144-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCREATE\000"
	.byte	3
	.byte	35
	.uleb128	1696
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONDEACTIVATE\000"
	.byte	3
	.byte	35
	.uleb128	1712
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONDESTROY\000"
	.byte	3
	.byte	35
	.uleb128	1728
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONDROPFILES\000"
	.byte	3
	.byte	35
	.uleb128	1744
	.byte	3
	.long	.La146-.Ldebug_info0
	.uleb128	14
	.ascii	"ONHELP\000"
	.byte	3
	.byte	35
	.uleb128	1760
	.byte	3
	.long	.La148-.Ldebug_info0
	.uleb128	14
	.ascii	"ONHIDE\000"
	.byte	3
	.byte	35
	.uleb128	1776
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONSHORTCUT\000"
	.byte	3
	.byte	35
	.uleb128	1792
	.byte	3
	.long	.La150-.Ldebug_info0
	.uleb128	14
	.ascii	"ONSHOW\000"
	.byte	3
	.byte	35
	.uleb128	1808
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONSHOWMODALFINISHED\000"
	.byte	3
	.byte	35
	.uleb128	1560
	.byte	3
	.long	.La127-.Ldebug_info0
	.uleb128	14
	.ascii	"ONWINDOWSTATECHANGE\000"
	.byte	3
	.byte	35
	.uleb128	1824
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"POSITION\000"
	.byte	3
	.byte	35
	.uleb128	1840
	.byte	3
	.long	.La152-.Ldebug_info0
	.uleb128	14
	.ascii	"RESTOREDLEFT\000"
	.byte	3
	.byte	35
	.uleb128	1844
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"RESTOREDTOP\000"
	.byte	3
	.byte	35
	.uleb128	1848
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"RESTOREDWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	1852
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"RESTOREDHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	1856
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"SHOWINTASKBAR\000"
	.byte	3
	.byte	35
	.uleb128	1860
	.byte	3
	.long	.La154-.Ldebug_info0
	.uleb128	14
	.ascii	"WINDOWSTATE\000"
	.byte	3
	.byte	35
	.uleb128	1864
	.byte	3
	.long	.La156-.Ldebug_info0
# Procdef GetClientHandle(<TCustomForm>):QWord;
	.uleb128	15
	.ascii	"GETCLIENTHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef GetEffectiveShowInTaskBar(<TCustomForm>):<enumeration type>;
	.uleb128	15
	.ascii	"GETEFFECTIVESHOWINTASKBAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La154-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef GetMonitor(<TCustomForm>):TMonitor;
	.uleb128	15
	.ascii	"GETMONITOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La163-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef IsAutoScrollStored(<TCustomForm>):Boolean;
	.uleb128	15
	.ascii	"ISAUTOSCROLLSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef IsForm(<TCustomForm>):Boolean;
	.uleb128	15
	.ascii	"ISFORM\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef IsIconStored(<TCustomForm>):Boolean;
	.uleb128	15
	.ascii	"ISICONSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef CloseModal(<TCustomForm>);
	.uleb128	25
	.ascii	"CLOSEMODAL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef FreeIconHandles(<TCustomForm>);
	.uleb128	25
	.ascii	"FREEICONHANDLES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef IconChanged(<TCustomForm>;TObject);
	.uleb128	25
	.ascii	"ICONCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef Moved(<TCustomForm>;Int64);
	.uleb128	25
	.ascii	"MOVED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol DATA
	.uleb128	19
	.ascii	"DATA\000"
	.long	.La71-.Ldebug_info0
	.byte	0
# Procdef SetActive(<TCustomForm>;Boolean);
	.uleb128	25
	.ascii	"SETACTIVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetActiveControl(<TCustomForm>;TWinControl);
	.uleb128	25
	.ascii	"SETACTIVECONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol AWINCONTROL
	.uleb128	19
	.ascii	"AWINCONTROL\000"
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef SetActiveDefaultControl(<TCustomForm>;TControl);
	.uleb128	25
	.ascii	"SETACTIVEDEFAULTCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef SetAllowDropFiles(<TCustomForm>;const Boolean);
	.uleb128	25
	.ascii	"SETALLOWDROPFILES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetAlphaBlend(<TCustomForm>;const Boolean);
	.uleb128	25
	.ascii	"SETALPHABLEND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetAlphaBlendValue(<TCustomForm>;const Byte);
	.uleb128	25
	.ascii	"SETALPHABLENDVALUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La109-.Ldebug_info0
	.byte	0
# Procdef SetBorderIcons(<TCustomForm>;TBorderIcons);
	.uleb128	25
	.ascii	"SETBORDERICONS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol NEWICONS
	.uleb128	19
	.ascii	"NEWICONS\000"
	.long	.La111-.Ldebug_info0
	.byte	0
# Procdef SetFormBorderStyle(<TCustomForm>;TFormBorderStyle);
	.uleb128	25
	.ascii	"SETFORMBORDERSTYLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol NEWSTYLE
	.uleb128	19
	.ascii	"NEWSTYLE\000"
	.long	.La138-.Ldebug_info0
	.byte	0
# Procdef SetCancelControl(<TCustomForm>;TControl);
	.uleb128	25
	.ascii	"SETCANCELCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol NEWCONTROL
	.uleb128	19
	.ascii	"NEWCONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef SetDefaultControl(<TCustomForm>;TControl);
	.uleb128	25
	.ascii	"SETDEFAULTCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol NEWCONTROL
	.uleb128	19
	.ascii	"NEWCONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef SetFormStyle(<TCustomForm>;TFormStyle);
	.uleb128	25
	.ascii	"SETFORMSTYLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La118-.Ldebug_info0
	.byte	0
# Procdef SetIcon(<TCustomForm>;TIcon);
	.uleb128	25
	.ascii	"SETICON\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La124-.Ldebug_info0
	.byte	0
# Procdef SetMenu(<TCustomForm>;TMainMenu);
	.uleb128	25
	.ascii	"SETMENU\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La133-.Ldebug_info0
	.byte	0
# Procdef SetModalResult(<TCustomForm>;TModalResult);
	.uleb128	25
	.ascii	"SETMODALRESULT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La136-.Ldebug_info0
	.byte	0
# Procdef SetPopupMode(<TCustomForm>;const TPopupMode);
	.uleb128	25
	.ascii	"SETPOPUPMODE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La129-.Ldebug_info0
	.byte	0
# Procdef SetPopupParent(<TCustomForm>;const TCustomForm);
	.uleb128	25
	.ascii	"SETPOPUPPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef SetPosition(<TCustomForm>;TPosition);
	.uleb128	25
	.ascii	"SETPOSITION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La152-.Ldebug_info0
	.byte	0
# Procdef SetShowInTaskbar(<TCustomForm>;TShowInTaskbar);
	.uleb128	25
	.ascii	"SETSHOWINTASKBAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La154-.Ldebug_info0
	.byte	0
# Procdef SetLastFocusedControl(<TCustomForm>;TWinControl);
	.uleb128	25
	.ascii	"SETLASTFOCUSEDCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef SetWindowFocus(<TCustomForm>);
	.uleb128	25
	.ascii	"SETWINDOWFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef SetWindowState(<TCustomForm>;TWindowState);
	.uleb128	25
	.ascii	"SETWINDOWSTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La156-.Ldebug_info0
	.byte	0
# Procdef AddHandler(<TCustomForm>;TFormHandlerType;const TMethod;Boolean="FALSE");
	.uleb128	25
	.ascii	"ADDHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol HANDLERTYPE
	.uleb128	19
	.ascii	"HANDLERTYPE\000"
	.long	.La166-.Ldebug_info0
# Symbol HANDLER
	.uleb128	19
	.ascii	"HANDLER\000"
	.long	.La168-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	19
	.ascii	"ASFIRST\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef RemoveHandler(<TCustomForm>;TFormHandlerType;const TMethod);
	.uleb128	25
	.ascii	"REMOVEHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol HANDLERTYPE
	.uleb128	19
	.ascii	"HANDLERTYPE\000"
	.long	.La166-.Ldebug_info0
# Symbol HANDLER
	.uleb128	19
	.ascii	"HANDLER\000"
	.long	.La168-.Ldebug_info0
	.byte	0
# Procdef FindDefaultForActiveControl(<TCustomForm>):TWinControl;
	.uleb128	15
	.ascii	"FINDDEFAULTFORACTIVECONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La103-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef UpdateMenu(<TCustomForm>);
	.uleb128	25
	.ascii	"UPDATEMENU\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef UpdateShowInTaskBar(<TCustomForm>);
	.uleb128	25
	.ascii	"UPDATESHOWINTASKBAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef WMActivate(<TCustomForm>;var TLMActivate);
	.uleb128	25
	.ascii	"WMACTIVATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La170-.Ldebug_info0
	.byte	0
# Procdef WMCloseQuery(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"WMCLOSEQUERY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef WMHelp(<TCustomForm>;var TLMHelp);
	.uleb128	25
	.ascii	"WMHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La174-.Ldebug_info0
	.byte	0
# Procdef WMMove(<TCustomForm>;var TLMMove);
	.uleb128	25
	.ascii	"WMMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La176-.Ldebug_info0
	.byte	0
# Procdef WMShowWindow(<TCustomForm>;var TWMShowWindow);
	.uleb128	25
	.ascii	"WMSHOWWINDOW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La178-.Ldebug_info0
	.byte	0
# Procdef WMSize(<TCustomForm>;var TWMSize);
	.uleb128	25
	.ascii	"WMSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La180-.Ldebug_info0
	.byte	0
# Procdef WMWindowPosChanged(<TCustomForm>;var TLMWindowPosMsg);
	.uleb128	25
	.ascii	"WMWINDOWPOSCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La182-.Ldebug_info0
	.byte	0
# Procdef CMBiDiModeChanged(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMBIDIMODECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMParentBiDiModeChanged(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMPARENTBIDIMODECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMAppShowBtnGlyphChanged(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMAPPSHOWBTNGLYPHCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMAppShowMenuGlyphChanged(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMAPPSHOWMENUGLYPHCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMIconChanged(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMICONCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMRelease(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMRELEASE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMActivate(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMACTIVATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMDeactivate(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMDEACTIVATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMShowingChanged(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMSHOWINGCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef WMDPIChanged(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"WMDPICHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MSG
	.uleb128	19
	.ascii	"MSG\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La184-.Ldebug_info0
	.byte	0
# Procdef DoShowWindow(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef Activate(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef ActiveChanged(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef AdjustClientRect(<TCustomForm>;var TRect);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol RECT
	.uleb128	19
	.ascii	"RECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef BeginFormUpdate(<TCustomForm>);
	.uleb128	25
	.ascii	"BEGINFORMUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef ColorIsStored(<TCustomForm>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef CreateParams(<TCustomForm>;var TCreateParams);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol PARAMS
	.uleb128	19
	.ascii	"PARAMS\000"
	.long	.La188-.Ldebug_info0
	.byte	0
# Procdef CreateWnd(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef Deactivate(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef DoClose(<TCustomForm>;var TCloseAction);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol CLOSEACTION
	.uleb128	19
	.ascii	"CLOSEACTION\000"
	.long	.La190-.Ldebug_info0
	.byte	0
# Procdef DoCreate(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef DoDestroy(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef DoHide(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef DoShow(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef EndFormUpdate(<TCustomForm>);
	.uleb128	25
	.ascii	"ENDFORMUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef HandleCreateException(<TCustomForm>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef HandleDestroyException(<TCustomForm>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef HandleShowHideException(<TCustomForm>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef InitializeWnd(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef ChildHandlesCreated(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef Notification(<TCustomForm>;TComponent;TOperation);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
# Symbol OPERATION
	.uleb128	19
	.ascii	"OPERATION\000"
	.long	.La192-.Ldebug_info0
	.byte	0
# Procdef PaintWindow(<TCustomForm>;QWord);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol DC
	.uleb128	19
	.ascii	"DC\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef RequestAlign(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef Resizing(<TCustomForm>;TWindowState);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol STATE
	.uleb128	19
	.ascii	"STATE\000"
	.long	.La156-.Ldebug_info0
	.byte	0
# Procdef CalculatePreferredSize(<TCustomForm>;var LongInt;var LongInt;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol PREFERREDWIDTH
	.uleb128	19
	.ascii	"PREFERREDWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol PREFERREDHEIGHT
	.uleb128	19
	.ascii	"PREFERREDHEIGHT\000"
	.long	.La120-.Ldebug_info0
# Symbol WITHTHEMESPACE
	.uleb128	19
	.ascii	"WITHTHEMESPACE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetZOrder(<TCustomForm>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol TOPMOST
	.uleb128	19
	.ascii	"TOPMOST\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetParent(<TCustomForm>;TWinControl);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol NEWPARENT
	.uleb128	19
	.ascii	"NEWPARENT\000"
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef MoveToDefaultPosition(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef UpdateShowing(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef SetVisible(<TCustomForm>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef AllAutoSized(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef DoFirstShow(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef UpdateWindowState(<TCustomForm>);
	.uleb128	25
	.ascii	"UPDATEWINDOWSTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef VisibleChanging(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef VisibleChanged(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef WndProc(<TCustomForm>;var TMessage);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol THEMESSAGE
	.uleb128	19
	.ascii	"THEMESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef VisibleIsStored(<TCustomForm>):Boolean;
	.uleb128	15
	.ascii	"VISIBLEISSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef DoSendBoundsToInterface(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef DoAutoSize(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef SetAutoSize(<TCustomForm>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetAutoScroll(<TCustomForm>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetScaled(<TCustomForm>;const Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol ASCALED
	.uleb128	19
	.ascii	"ASCALED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DoAddActionList(<TCustomForm>;TCustomActionList);
	.uleb128	25
	.ascii	"DOADDACTIONLIST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol LIST
	.uleb128	19
	.ascii	"LIST\000"
	.long	.La194-.Ldebug_info0
	.byte	0
# Procdef DoRemoveActionList(<TCustomForm>;TCustomActionList);
	.uleb128	25
	.ascii	"DOREMOVEACTIONLIST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol LIST
	.uleb128	19
	.ascii	"LIST\000"
	.long	.La194-.Ldebug_info0
	.byte	0
# Procdef ProcessResource(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef BeginAutoDrag(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef DoDock(<TCustomForm>;TWinControl;var TRect);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol NEWDOCKSITE
	.uleb128	19
	.ascii	"NEWDOCKSITE\000"
	.long	.La103-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef GetFloating(<TCustomForm>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef GetDefaultDockCaption(<TCustomForm>;<var AnsiString>):AnsiString;
	.uleb128	26
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
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef CMActionExecute(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMACTIONEXECUTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMActionUpdate(<TCustomForm>;var TMessage);
	.uleb128	25
	.ascii	"CMACTIONUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef DoExecuteAction(<TCustomForm>;TBasicAction):Boolean;
	.uleb128	15
	.ascii	"DOEXECUTEACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol EXEACTION
	.uleb128	19
	.ascii	"EXEACTION\000"
	.long	.La197-.Ldebug_info0
	.byte	0
# Procdef DoUpdateAction(<TCustomForm>;TBasicAction):Boolean;
	.uleb128	15
	.ascii	"DOUPDATEACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol THEACTION
	.uleb128	19
	.ascii	"THEACTION\000"
	.long	.La197-.Ldebug_info0
	.byte	0
# Procdef UpdateActions(<TCustomForm>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TCustomForm>;<Pointer>;TComponent);
	.uleb128	18
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
	.long	.La24-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol AOWNER
	.uleb128	19
	.ascii	"AOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef constructor CreateNew(<TCustomForm>;<Pointer>;TComponent;LongInt="0");
	.uleb128	18
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
	.long	.La24-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol AOWNER
	.uleb128	19
	.ascii	"AOWNER\000"
	.long	.La33-.Ldebug_info0
# Symbol NUM
	.uleb128	19
	.ascii	"NUM\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TCustomForm>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef AfterConstruction(<TCustomForm>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef BeforeDestruction(<TCustomForm>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef class GetControlClassDefaultSize(<Class Of TCustomForm>):<record type>;
	.uleb128	18
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
	.long	.La200-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La202-.Ldebug_info0
	.byte	0
# Procdef BigIconHandle(<TCustomForm>):QWord;
	.uleb128	22
	.ascii	"BIGICONHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef Close(<TCustomForm>);
	.uleb128	20
	.ascii	"CLOSE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef CloseQuery(<TCustomForm>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef DefocusControl(<TCustomForm>;TWinControl;Boolean);
	.uleb128	20
	.ascii	"DEFOCUSCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol CONTROL
	.uleb128	19
	.ascii	"CONTROL\000"
	.long	.La103-.Ldebug_info0
# Symbol REMOVING
	.uleb128	19
	.ascii	"REMOVING\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DestroyWnd(<TCustomForm>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef EnsureVisible(<TCustomForm>;Boolean="TRUE");
	.uleb128	20
	.ascii	"ENSUREVISIBLE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol AMOVETOTOP
	.uleb128	19
	.ascii	"AMOVETOTOP\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef FocusControl(<TCustomForm>;TWinControl);
	.uleb128	20
	.ascii	"FOCUSCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol WINCONTROL
	.uleb128	19
	.ascii	"WINCONTROL\000"
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef FormIsUpdating(<TCustomForm>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef GetFormImage(<TCustomForm>):TBitmap;
	.uleb128	22
	.ascii	"GETFORMIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La204-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef GetRolesForControl(<TCustomForm>;TControl):Set Of TControlRoleForForm;
	.uleb128	22
	.ascii	"GETROLESFORCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La207-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetRealPopupParent(<TCustomForm>):TCustomForm;
	.uleb128	22
	.ascii	"GETREALPOPUPPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef Hide(<TCustomForm>);
	.uleb128	20
	.ascii	"HIDE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef IntfDropFiles(<TCustomForm>;const {Open} Array Of AnsiString;<const Int64>);
	.uleb128	20
	.ascii	"INTFDROPFILES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol FILENAMES
	.uleb128	19
	.ascii	"FILENAMES\000"
	.long	.La209-.Ldebug_info0
# Symbol highFILENAMES
	.uleb128	19
	.ascii	"highFILENAMES\000"
	.long	.La71-.Ldebug_info0
# Definition {Open} Array Of AnsiString
.La209:
	.uleb128	27
	.long	.La27-.Ldebug_info0
	.uleb128	28
	.sleb128	0
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.byte	0
.La210:
	.uleb128	7
	.long	.La209-.Ldebug_info0
	.byte	0
# Procdef IntfHelp(<TCustomForm>;TComponent);
	.uleb128	20
	.ascii	"INTFHELP\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef IsShortcut(<TCustomForm>;var TLMKey):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef MakeFullyVisible(<TCustomForm>;TMonitor="nil";Boolean="FALSE");
	.uleb128	20
	.ascii	"MAKEFULLYVISIBLE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol AMONITOR
	.uleb128	19
	.ascii	"AMONITOR\000"
	.long	.La163-.Ldebug_info0
# Symbol USEWORKAREA
	.uleb128	19
	.ascii	"USEWORKAREA\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef AutoSizeDelayedHandle(<TCustomForm>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef GetPreferredSize(<TCustomForm>;var LongInt;var LongInt;Boolean="FALSE";Boolean="TRUE");
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol PREFERREDWIDTH
	.uleb128	19
	.ascii	"PREFERREDWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol PREFERREDHEIGHT
	.uleb128	19
	.ascii	"PREFERREDHEIGHT\000"
	.long	.La120-.Ldebug_info0
# Symbol RAW
	.uleb128	19
	.ascii	"RAW\000"
	.long	.La29-.Ldebug_info0
# Symbol WITHTHEMESPACE
	.uleb128	19
	.ascii	"WITHTHEMESPACE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef Release(<TCustomForm>);
	.uleb128	20
	.ascii	"RELEASE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef CanFocus(<TCustomForm>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef SetFocus(<TCustomForm>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef SetFocusedControl(<TCustomForm>;TWinControl):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol CONTROL
	.uleb128	19
	.ascii	"CONTROL\000"
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef SetRestoredBounds(<TCustomForm>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	20
	.ascii	"SETRESTOREDBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol ALEFT
	.uleb128	19
	.ascii	"ALEFT\000"
	.long	.La120-.Ldebug_info0
# Symbol ATOP
	.uleb128	19
	.ascii	"ATOP\000"
	.long	.La120-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Show(<TCustomForm>);
	.uleb128	20
	.ascii	"SHOW\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef ShowModal(<TCustomForm>):LongInt;
	.uleb128	18
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef ShowOnTop(<TCustomForm>);
	.uleb128	20
	.ascii	"SHOWONTOP\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef SmallIconHandle(<TCustomForm>):QWord;
	.uleb128	22
	.ascii	"SMALLICONHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef GetChildren(<TCustomForm>;TGetChildProc;TComponent);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol PROC
	.uleb128	19
	.ascii	"PROC\000"
	.long	.La213-.Ldebug_info0
# Symbol ROOT
	.uleb128	19
	.ascii	"ROOT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef WantChildKey(<TCustomForm>;TControl;var TMessage):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol CHILD
	.uleb128	19
	.ascii	"CHILD\000"
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef RemoveAllHandlersOfObject(<TCustomForm>;TObject);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol ANOBJECT
	.uleb128	19
	.ascii	"ANOBJECT\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef AddHandlerFirstShow(<TCustomForm>;TNotifyEvent;Boolean="FALSE");
	.uleb128	20
	.ascii	"ADDHANDLERFIRSTSHOW\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol ONFIRSTSHOWHANDLER
	.uleb128	19
	.ascii	"ONFIRSTSHOWHANDLER\000"
	.long	.La140-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	19
	.ascii	"ASFIRST\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerFirstShow(<TCustomForm>;TNotifyEvent);
	.uleb128	20
	.ascii	"REMOVEHANDLERFIRSTSHOW\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol ONFIRSTSHOWHANDLER
	.uleb128	19
	.ascii	"ONFIRSTSHOWHANDLER\000"
	.long	.La140-.Ldebug_info0
	.byte	0
# Procdef AddHandlerClose(<TCustomForm>;TCloseEvent;Boolean="FALSE");
	.uleb128	20
	.ascii	"ADDHANDLERCLOSE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol ONCLOSEHANDLER
	.uleb128	19
	.ascii	"ONCLOSEHANDLER\000"
	.long	.La142-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	19
	.ascii	"ASFIRST\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerClose(<TCustomForm>;TCloseEvent);
	.uleb128	20
	.ascii	"REMOVEHANDLERCLOSE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol ONCLOSEHANDLER
	.uleb128	19
	.ascii	"ONCLOSEHANDLER\000"
	.long	.La142-.Ldebug_info0
	.byte	0
# Procdef AddHandlerCreate(<TCustomForm>;TNotifyEvent;Boolean="FALSE");
	.uleb128	20
	.ascii	"ADDHANDLERCREATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol ONCREATEHANDLER
	.uleb128	19
	.ascii	"ONCREATEHANDLER\000"
	.long	.La140-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	19
	.ascii	"ASFIRST\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerCreate(<TCustomForm>;TNotifyEvent);
	.uleb128	20
	.ascii	"REMOVEHANDLERCREATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol ONCREATEHANDLER
	.uleb128	19
	.ascii	"ONCREATEHANDLER\000"
	.long	.La140-.Ldebug_info0
	.byte	0
# Procdef ActiveMDIChild(<TCustomForm>):TCustomForm;
	.uleb128	18
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
	.long	.La24-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef GetMDIChildren(<TCustomForm>;LongInt):TCustomForm;
	.uleb128	18
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
	.long	.La24-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef MDIChildCount(<TCustomForm>):LongInt;
	.uleb128	18
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef AutoScale(<TCustomForm>);
	.uleb128	20
	.ascii	"AUTOSCALE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
	.byte	0
# Procdef Dock(<TCustomForm>;TWinControl;TRect);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol NEWDOCKSITE
	.uleb128	19
	.ascii	"NEWDOCKSITE\000"
	.long	.La103-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef UpdateDockCaption(<TCustomForm>;TControl);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La24-.Ldebug_info0
# Symbol EXCLUDE
	.uleb128	19
	.ascii	"EXCLUDE\000"
	.long	.La106-.Ldebug_info0
	.byte	0
	.byte	0
.La25:
	.uleb128	7
	.long	.La24-.Ldebug_info0
# Definition AnsiString
.La27:
	.uleb128	5
	.ascii	"ANSISTRING\000"
	.long	.La215-.Ldebug_info0
.La215:
	.uleb128	8
	.long	.La216-.Ldebug_info0
.La28:
	.uleb128	7
	.long	.La27-.Ldebug_info0
# Definition Boolean
.La29:
	.uleb128	5
	.ascii	"BOOLEAN\000"
	.long	.La218-.Ldebug_info0
.La218:
	.uleb128	29
	.ascii	"Boolean\000"
	.byte	2
	.byte	1
.La30:
	.uleb128	7
	.long	.La29-.Ldebug_info0
# Definition Pointer
.La31:
	.uleb128	5
	.ascii	"POINTER\000"
	.long	.La219-.Ldebug_info0
.La219:
	.uleb128	6
.La32:
	.uleb128	7
	.long	.La31-.Ldebug_info0
# Definition TComponent
.La33:
	.uleb128	5
	.ascii	"TCOMPONENT\000"
	.long	.La220-.Ldebug_info0
.La220:
	.uleb128	8
	.long	.La35-.Ldebug_info0
.La35:
	.uleb128	9
	.ascii	"TCOMPONENT\000"
	.uleb128	96
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La223-.Ldebug_info0
	.uleb128	14
	.ascii	"FOWNER\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"FNAME\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La27-.Ldebug_info0
	.uleb128	14
	.ascii	"FTAG\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La71-.Ldebug_info0
	.uleb128	14
	.ascii	"FCOMPONENTS\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La224-.Ldebug_info0
	.uleb128	14
	.ascii	"FFREENOTIFIES\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La224-.Ldebug_info0
	.uleb128	14
	.ascii	"FDESIGNINFO\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FVCLCOMOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	3
	.long	.La31-.Ldebug_info0
	.uleb128	14
	.ascii	"FCOMPONENTSTATE\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La227-.Ldebug_info0
	.uleb128	14
	.ascii	"FCOMPONENTSTYLE\000"
	.byte	2
	.byte	35
	.uleb128	84
	.byte	2
	.long	.La229-.Ldebug_info0
	.uleb128	14
	.ascii	"COMPONENTSTATE\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La227-.Ldebug_info0
	.uleb128	14
	.ascii	"COMPONENTSTYLE\000"
	.byte	2
	.byte	35
	.uleb128	84
	.byte	2
	.long	.La229-.Ldebug_info0
	.uleb128	14
	.ascii	"DESIGNINFO\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"OWNER\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"VCLCOMOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	3
	.long	.La31-.Ldebug_info0
	.uleb128	14
	.ascii	"NAME\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La27-.Ldebug_info0
	.uleb128	14
	.ascii	"TAG\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La71-.Ldebug_info0
# Procdef GetComObject(<TComponent>;<var IUnknown>):IUnknown;
	.uleb128	15
	.ascii	"GETCOMOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La231-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La231-.Ldebug_info0
	.byte	0
# Procdef GetComponent(<TComponent>;LongInt):TComponent;
	.uleb128	15
	.ascii	"GETCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetComponentCount(<TComponent>):LongInt;
	.uleb128	15
	.ascii	"GETCOMPONENTCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef GetComponentIndex(<TComponent>):LongInt;
	.uleb128	15
	.ascii	"GETCOMPONENTINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef Insert(<TComponent>;TComponent);
	.uleb128	25
	.ascii	"INSERT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef ReadLeft(<TComponent>;TReader);
	.uleb128	25
	.ascii	"READLEFT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol READER
	.uleb128	19
	.ascii	"READER\000"
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef ReadTop(<TComponent>;TReader);
	.uleb128	25
	.ascii	"READTOP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol READER
	.uleb128	19
	.ascii	"READER\000"
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef Remove(<TComponent>;TComponent);
	.uleb128	25
	.ascii	"REMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef RemoveNotification(<TComponent>;TComponent);
	.uleb128	25
	.ascii	"REMOVENOTIFICATION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef SetComponentIndex(<TComponent>;LongInt);
	.uleb128	25
	.ascii	"SETCOMPONENTINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetReference(<TComponent>;Boolean);
	.uleb128	25
	.ascii	"SETREFERENCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol ENABLE
	.uleb128	19
	.ascii	"ENABLE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef WriteLeft(<TComponent>;TWriter);
	.uleb128	25
	.ascii	"WRITELEFT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol WRITER
	.uleb128	19
	.ascii	"WRITER\000"
	.long	.La237-.Ldebug_info0
	.byte	0
# Procdef WriteTop(<TComponent>;TWriter);
	.uleb128	25
	.ascii	"WRITETOP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol WRITER
	.uleb128	19
	.ascii	"WRITER\000"
	.long	.La237-.Ldebug_info0
	.byte	0
# Procdef ChangeName(<TComponent>;const AnsiString);
	.uleb128	25
	.ascii	"CHANGENAME\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol NEWNAME
	.uleb128	19
	.ascii	"NEWNAME\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef DefineProperties(<TComponent>;TFiler);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol FILER
	.uleb128	19
	.ascii	"FILER\000"
	.long	.La240-.Ldebug_info0
	.byte	0
# Procdef GetChildren(<TComponent>;TGetChildProc;TComponent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol PROC
	.uleb128	19
	.ascii	"PROC\000"
	.long	.La243-.Ldebug_info0
# Symbol ROOT
	.uleb128	19
	.ascii	"ROOT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef GetChildOwner(<TComponent>):TComponent;
	.uleb128	26
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
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef GetChildParent(<TComponent>):TComponent;
	.uleb128	26
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
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef GetOwner(<TComponent>):TPersistent;
	.uleb128	26
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
	.long	.La221-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TComponent>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef Loading(<TComponent>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef Notification(<TComponent>;TComponent;TOperation);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
# Symbol OPERATION
	.uleb128	19
	.ascii	"OPERATION\000"
	.long	.La192-.Ldebug_info0
	.byte	0
# Procdef PaletteCreated(<TComponent>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef ReadState(<TComponent>;TReader);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol READER
	.uleb128	19
	.ascii	"READER\000"
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef SetAncestor(<TComponent>;Boolean);
	.uleb128	25
	.ascii	"SETANCESTOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetDesigning(<TComponent>;Boolean;Boolean="TRUE");
	.uleb128	25
	.ascii	"SETDESIGNING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
# Symbol SETCHILDREN
	.uleb128	19
	.ascii	"SETCHILDREN\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetDesignInstance(<TComponent>;Boolean);
	.uleb128	25
	.ascii	"SETDESIGNINSTANCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetInline(<TComponent>;Boolean);
	.uleb128	25
	.ascii	"SETINLINE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetName(<TComponent>;const AnsiString);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol NEWNAME
	.uleb128	19
	.ascii	"NEWNAME\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef SetChildOrder(<TComponent>;TComponent;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol CHILD
	.uleb128	19
	.ascii	"CHILD\000"
	.long	.La33-.Ldebug_info0
# Symbol ORDER
	.uleb128	19
	.ascii	"ORDER\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetParentComponent(<TComponent>;TComponent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef Updating(<TComponent>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef Updated(<TComponent>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef class UpdateRegistry(<Class Of TComponent>;Boolean;const AnsiString;const AnsiString);
	.uleb128	17
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
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La245-.Ldebug_info0
# Symbol REGISTER
	.uleb128	19
	.ascii	"REGISTER\000"
	.long	.La29-.Ldebug_info0
# Symbol CLASSID
	.uleb128	19
	.ascii	"CLASSID\000"
	.long	.La27-.Ldebug_info0
# Symbol PROGID
	.uleb128	19
	.ascii	"PROGID\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef ValidateRename(<TComponent>;TComponent;const AnsiString;const AnsiString);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
# Symbol CURNAME
	.uleb128	19
	.ascii	"CURNAME\000"
	.long	.La27-.Ldebug_info0
# Symbol NEWNAME
	.uleb128	19
	.ascii	"NEWNAME\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef ValidateContainer(<TComponent>;TComponent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef ValidateInsert(<TComponent>;TComponent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef QueryInterface(<TComponent>;constref TGuid;out <Formal type>):LongInt; StdCall;
	.uleb128	30
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
	.long	.La51-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol IID
	.uleb128	19
	.ascii	"IID\000"
	.long	.La85-.Ldebug_info0
# Symbol OBJ
	.uleb128	19
	.ascii	"OBJ\000"
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef _AddRef(<TComponent>):LongInt; StdCall;
	.uleb128	31
	.ascii	"_ADDREF\000"
	.byte	1
	.byte	1
	.byte	2
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef _Release(<TComponent>):LongInt; StdCall;
	.uleb128	31
	.ascii	"_RELEASE\000"
	.byte	1
	.byte	1
	.byte	2
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef iicrGetComponent(<TComponent>):TComponent;
	.uleb128	15
	.ascii	"IICRGETCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef GetTypeInfoCount(<TComponent>;out LongInt):LongInt; StdCall;
	.uleb128	31
	.ascii	"GETTYPEINFOCOUNT\000"
	.byte	1
	.byte	1
	.byte	2
	.long	.La51-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol COUNT
	.uleb128	19
	.ascii	"COUNT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetTypeInfo(<TComponent>;LongInt;LongInt;out <Formal type>):LongInt; StdCall;
	.uleb128	31
	.ascii	"GETTYPEINFO\000"
	.byte	1
	.byte	1
	.byte	2
	.long	.La51-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol LOCALEID
	.uleb128	19
	.ascii	"LOCALEID\000"
	.long	.La120-.Ldebug_info0
# Symbol TYPEINFO
	.uleb128	19
	.ascii	"TYPEINFO\000"
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef GetIDsOfNames(<TComponent>;const TGuid;Pointer;LongInt;LongInt;Pointer):LongInt; StdCall;
	.uleb128	31
	.ascii	"GETIDSOFNAMES\000"
	.byte	1
	.byte	1
	.byte	2
	.long	.La51-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol IID
	.uleb128	19
	.ascii	"IID\000"
	.long	.La85-.Ldebug_info0
# Symbol NAMES
	.uleb128	19
	.ascii	"NAMES\000"
	.long	.La31-.Ldebug_info0
# Symbol NAMECOUNT
	.uleb128	19
	.ascii	"NAMECOUNT\000"
	.long	.La120-.Ldebug_info0
# Symbol LOCALEID
	.uleb128	19
	.ascii	"LOCALEID\000"
	.long	.La120-.Ldebug_info0
# Symbol DISPIDS
	.uleb128	19
	.ascii	"DISPIDS\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Invoke(<TComponent>;LongInt;const TGuid;LongInt;Word;var <Formal type>;Pointer;Pointer;Pointer):LongInt; StdCall;
	.uleb128	31
	.ascii	"INVOKE\000"
	.byte	1
	.byte	1
	.byte	2
	.long	.La51-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol DISPID
	.uleb128	19
	.ascii	"DISPID\000"
	.long	.La120-.Ldebug_info0
# Symbol IID
	.uleb128	19
	.ascii	"IID\000"
	.long	.La85-.Ldebug_info0
# Symbol LOCALEID
	.uleb128	19
	.ascii	"LOCALEID\000"
	.long	.La120-.Ldebug_info0
# Symbol FLAGS
	.uleb128	19
	.ascii	"FLAGS\000"
	.long	.La247-.Ldebug_info0
# Symbol PARAMS
	.uleb128	19
	.ascii	"PARAMS\000"
	.long	.La53-.Ldebug_info0
# Symbol VARRESULT
	.uleb128	19
	.ascii	"VARRESULT\000"
	.long	.La31-.Ldebug_info0
# Symbol EXCEPINFO
	.uleb128	19
	.ascii	"EXCEPINFO\000"
	.long	.La31-.Ldebug_info0
# Symbol ARGERR
	.uleb128	19
	.ascii	"ARGERR\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef WriteState(<TComponent>;TWriter);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol WRITER
	.uleb128	19
	.ascii	"WRITER\000"
	.long	.La237-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TComponent>;<Pointer>;TComponent);
	.uleb128	18
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
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol AOWNER
	.uleb128	19
	.ascii	"AOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TComponent>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef BeforeDestruction(<TComponent>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef DestroyComponents(<TComponent>);
	.uleb128	20
	.ascii	"DESTROYCOMPONENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef Destroying(<TComponent>);
	.uleb128	20
	.ascii	"DESTROYING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef ExecuteAction(<TComponent>;TBasicAction):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol ACTION
	.uleb128	19
	.ascii	"ACTION\000"
	.long	.La197-.Ldebug_info0
	.byte	0
# Procdef FindComponent(<TComponent>;const AnsiString):TComponent;
	.uleb128	22
	.ascii	"FINDCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol ANAME
	.uleb128	19
	.ascii	"ANAME\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef FreeNotification(<TComponent>;TComponent);
	.uleb128	20
	.ascii	"FREENOTIFICATION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef RemoveFreeNotification(<TComponent>;TComponent);
	.uleb128	20
	.ascii	"REMOVEFREENOTIFICATION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef FreeOnRelease(<TComponent>);
	.uleb128	20
	.ascii	"FREEONRELEASE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef GetEnumerator(<TComponent>):TComponentEnumerator;
	.uleb128	22
	.ascii	"GETENUMERATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La249-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef GetNamePath(<TComponent>;<var AnsiString>):AnsiString;
	.uleb128	18
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
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef GetParentComponent(<TComponent>):TComponent;
	.uleb128	18
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
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef HasParent(<TComponent>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef InsertComponent(<TComponent>;TComponent);
	.uleb128	20
	.ascii	"INSERTCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef RemoveComponent(<TComponent>;TComponent);
	.uleb128	20
	.ascii	"REMOVECOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef SafeCallException(<TComponent>;TObject;Pointer):LongInt;
	.uleb128	18
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
	.long	.La51-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol EXCEPTOBJECT
	.uleb128	19
	.ascii	"EXCEPTOBJECT\000"
	.long	.La20-.Ldebug_info0
# Symbol EXCEPTADDR
	.uleb128	19
	.ascii	"EXCEPTADDR\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef SetSubComponent(<TComponent>;Boolean);
	.uleb128	20
	.ascii	"SETSUBCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol ASUBCOMPONENT
	.uleb128	19
	.ascii	"ASUBCOMPONENT\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef UpdateAction(<TComponent>;TBasicAction):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol ACTION
	.uleb128	19
	.ascii	"ACTION\000"
	.long	.La197-.Ldebug_info0
	.byte	0
# Procdef IsImplementorOf(<TComponent>;const IUnknown):Boolean;
	.uleb128	22
	.ascii	"ISIMPLEMENTOROF\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol INTF
	.uleb128	19
	.ascii	"INTF\000"
	.long	.La231-.Ldebug_info0
	.byte	0
# Procdef ReferenceInterface(<TComponent>;const IUnknown;TOperation);
	.uleb128	20
	.ascii	"REFERENCEINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol INTF
	.uleb128	19
	.ascii	"INTF\000"
	.long	.La231-.Ldebug_info0
# Symbol OP
	.uleb128	19
	.ascii	"OP\000"
	.long	.La192-.Ldebug_info0
	.byte	0
	.byte	0
.La34:
	.uleb128	7
	.long	.La33-.Ldebug_info0
# Definition TCustomButton
.La37:
	.uleb128	5
	.ascii	"TCUSTOMBUTTON\000"
	.long	.La252-.Ldebug_info0
.La252:
	.uleb128	8
	.long	.La39-.Ldebug_info0
.La39:
	.uleb128	9
	.ascii	"TCUSTOMBUTTON\000"
	.uleb128	1424
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La255-.Ldebug_info0
	.uleb128	14
	.ascii	"FMODALRESULT\000"
	.byte	3
	.byte	35
	.uleb128	1408
	.byte	3
	.long	.La136-.Ldebug_info0
	.uleb128	14
	.ascii	"FSHORTCUT\000"
	.byte	3
	.byte	35
	.uleb128	1412
	.byte	3
	.long	.La256-.Ldebug_info0
	.uleb128	14
	.ascii	"FSHORTCUTKEY2\000"
	.byte	3
	.byte	35
	.uleb128	1414
	.byte	3
	.long	.La256-.Ldebug_info0
	.uleb128	14
	.ascii	"FCANCEL\000"
	.byte	3
	.byte	35
	.uleb128	1416
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FDEFAULT\000"
	.byte	3
	.byte	35
	.uleb128	1417
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FACTIVE\000"
	.byte	3
	.byte	35
	.uleb128	1418
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FROLESUPDATELOCKED\000"
	.byte	3
	.byte	35
	.uleb128	1419
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"ACTIVE\000"
	.byte	3
	.byte	35
	.uleb128	1418
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"DEFAULT\000"
	.byte	3
	.byte	35
	.uleb128	1417
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"MODALRESULT\000"
	.byte	3
	.byte	35
	.uleb128	1408
	.byte	3
	.long	.La136-.Ldebug_info0
	.uleb128	14
	.ascii	"SHORTCUT\000"
	.byte	3
	.byte	35
	.uleb128	1412
	.byte	3
	.long	.La256-.Ldebug_info0
	.uleb128	14
	.ascii	"SHORTCUTKEY2\000"
	.byte	3
	.byte	35
	.uleb128	1414
	.byte	3
	.long	.La256-.Ldebug_info0
	.uleb128	14
	.ascii	"CANCEL\000"
	.byte	3
	.byte	35
	.uleb128	1416
	.byte	3
	.long	.La29-.Ldebug_info0
# Procdef SetCancel(<TCustomButton>;Boolean);
	.uleb128	25
	.ascii	"SETCANCEL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
# Symbol NEWCANCEL
	.uleb128	19
	.ascii	"NEWCANCEL\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetDefault(<TCustomButton>;Boolean);
	.uleb128	25
	.ascii	"SETDEFAULT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetModalResult(<TCustomButton>;const TModalResult);
	.uleb128	25
	.ascii	"SETMODALRESULT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La136-.Ldebug_info0
	.byte	0
# Procdef CMUIActivate(<TCustomButton>;var TMessage);
	.uleb128	25
	.ascii	"CMUIACTIVATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef WMSetFocus(<TCustomButton>;var TLMSetFocus);
	.uleb128	25
	.ascii	"WMSETFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La258-.Ldebug_info0
	.byte	0
# Procdef WMKillFocus(<TCustomButton>;var TWMKillFocus);
	.uleb128	25
	.ascii	"WMKILLFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La260-.Ldebug_info0
	.byte	0
# Procdef UpdateFocus(<TCustomButton>;Boolean);
	.uleb128	25
	.ascii	"UPDATEFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
# Symbol AFOCUSED
	.uleb128	19
	.ascii	"AFOCUSED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TCustomButton>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La262-.Ldebug_info0
	.byte	0
# Procdef CreateWnd(<TCustomButton>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
	.byte	0
# Procdef CreateParams(<TCustomButton>;var TCreateParams);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
# Symbol PARAMS
	.uleb128	19
	.ascii	"PARAMS\000"
	.long	.La188-.Ldebug_info0
	.byte	0
# Procdef ControlKeyDown(<TCustomButton>;var Word;TShiftState);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
# Symbol KEY
	.uleb128	19
	.ascii	"KEY\000"
	.long	.La247-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
	.byte	0
# Procdef ControlKeyUp(<TCustomButton>;var Word;TShiftState);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
# Symbol KEY
	.uleb128	19
	.ascii	"KEY\000"
	.long	.La247-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
	.byte	0
# Procdef DialogChar(<TCustomButton>;var TLMKey):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef ChildClassAllowed(<TCustomButton>;TClass):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
# Symbol CHILDCLASS
	.uleb128	19
	.ascii	"CHILDCLASS\000"
	.long	.La57-.Ldebug_info0
	.byte	0
# Procdef class GetControlClassDefaultSize(<Class Of TCustomButton>):<record type>;
	.uleb128	26
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
	.long	.La200-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La266-.Ldebug_info0
	.byte	0
# Procdef WSSetDefault(<TCustomButton>);
	.uleb128	25
	.ascii	"WSSETDEFAULT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
	.byte	0
# Procdef WSSetText(<TCustomButton>;const AnsiString);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
# Symbol ATEXT
	.uleb128	19
	.ascii	"ATEXT\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef TextChanged(<TCustomButton>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TCustomButton>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
	.byte	0
# Procdef UpdateDefaultCancel(<TCustomButton>);
	.uleb128	25
	.ascii	"UPDATEDEFAULTCANCEL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TCustomButton>;<Pointer>;TComponent);
	.uleb128	18
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
	.long	.La37-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	19
	.ascii	"THEOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef Click(<TCustomButton>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
	.byte	0
# Procdef ExecuteDefaultAction(<TCustomButton>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
	.byte	0
# Procdef ExecuteCancelAction(<TCustomButton>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
	.byte	0
# Procdef ActiveDefaultControlChanged(<TCustomButton>;TControl);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
# Symbol NEWCONTROL
	.uleb128	19
	.ascii	"NEWCONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef UpdateRolesForForm(<TCustomButton>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
	.byte	0
# Procdef UseRightToLeftAlignment(<TCustomButton>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La37-.Ldebug_info0
	.byte	0
	.byte	0
.La38:
	.uleb128	7
	.long	.La37-.Ldebug_info0
# Definition TCustomMemo
.La41:
	.uleb128	5
	.ascii	"TCUSTOMMEMO\000"
	.long	.La268-.Ldebug_info0
.La268:
	.uleb128	8
	.long	.La43-.Ldebug_info0
.La43:
	.uleb128	9
	.ascii	"TCUSTOMMEMO\000"
	.uleb128	1512
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La271-.Ldebug_info0
	.uleb128	14
	.ascii	"FHORZSCROLLBAR\000"
	.byte	3
	.byte	35
	.uleb128	1472
	.byte	3
	.long	.La272-.Ldebug_info0
	.uleb128	14
	.ascii	"FLINES\000"
	.byte	3
	.byte	35
	.uleb128	1480
	.byte	3
	.long	.La275-.Ldebug_info0
	.uleb128	14
	.ascii	"FSCROLLBARS\000"
	.byte	3
	.byte	35
	.uleb128	1488
	.byte	3
	.long	.La278-.Ldebug_info0
	.uleb128	14
	.ascii	"FVERTSCROLLBAR\000"
	.byte	3
	.byte	35
	.uleb128	1496
	.byte	3
	.long	.La272-.Ldebug_info0
	.uleb128	14
	.ascii	"FWANTRETURNS\000"
	.byte	3
	.byte	35
	.uleb128	1504
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FWANTTABS\000"
	.byte	3
	.byte	35
	.uleb128	1505
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FWORDWRAP\000"
	.byte	3
	.byte	35
	.uleb128	1506
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"LINES\000"
	.byte	3
	.byte	35
	.uleb128	1480
	.byte	3
	.long	.La275-.Ldebug_info0
	.uleb128	14
	.ascii	"HORZSCROLLBAR\000"
	.byte	3
	.byte	35
	.uleb128	1472
	.byte	3
	.long	.La272-.Ldebug_info0
	.uleb128	14
	.ascii	"VERTSCROLLBAR\000"
	.byte	3
	.byte	35
	.uleb128	1496
	.byte	3
	.long	.La272-.Ldebug_info0
	.uleb128	14
	.ascii	"SCROLLBARS\000"
	.byte	3
	.byte	35
	.uleb128	1488
	.byte	3
	.long	.La278-.Ldebug_info0
	.uleb128	14
	.ascii	"WANTRETURNS\000"
	.byte	3
	.byte	35
	.uleb128	1504
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"WANTTABS\000"
	.byte	3
	.byte	35
	.uleb128	1505
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"WORDWRAP\000"
	.byte	3
	.byte	35
	.uleb128	1506
	.byte	3
	.long	.La29-.Ldebug_info0
# Procdef SetHorzScrollBar(<TCustomMemo>;const TMemoScrollbar);
	.uleb128	25
	.ascii	"SETHORZSCROLLBAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La272-.Ldebug_info0
	.byte	0
# Procdef SetVertScrollBar(<TCustomMemo>;const TMemoScrollbar);
	.uleb128	25
	.ascii	"SETVERTSCROLLBAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La272-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TCustomMemo>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La280-.Ldebug_info0
	.byte	0
# Procdef CreateParams(<TCustomMemo>;var TCreateParams);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol PARAMS
	.uleb128	19
	.ascii	"PARAMS\000"
	.long	.La188-.Ldebug_info0
	.byte	0
# Procdef InitializeWnd(<TCustomMemo>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
	.byte	0
# Procdef FinalizeWnd(<TCustomMemo>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
	.byte	0
# Procdef RealGetText(<TCustomMemo>;<var TTranslateString>):AnsiString;
	.uleb128	26
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
	.long	.La282-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef RealSetText(<TCustomMemo>;const TTranslateString);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef GetCachedText(<TCustomMemo>;var TTranslateString):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol CACHEDTEXT
	.uleb128	19
	.ascii	"CACHEDTEXT\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef GetCaretPos(<TCustomMemo>):<record type>;
	.uleb128	26
	.ascii	"GETCARETPOS\000"
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
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
	.byte	0
# Procdef KeyUpAfterInterface(<TCustomMemo>;var Word;TShiftState);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol KEY
	.uleb128	19
	.ascii	"KEY\000"
	.long	.La247-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
	.byte	0
# Procdef SetCaretPos(<TCustomMemo>;const TPoint);
	.uleb128	17
	.ascii	"SETCARETPOS\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef SetLines(<TCustomMemo>;const TStrings);
	.uleb128	25
	.ascii	"SETLINES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef SetWantReturns(<TCustomMemo>;const Boolean);
	.uleb128	25
	.ascii	"SETWANTRETURNS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetWantTabs(<TCustomMemo>;const Boolean);
	.uleb128	25
	.ascii	"SETWANTTABS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol NEWWANTTABS
	.uleb128	19
	.ascii	"NEWWANTTABS\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetWordWrap(<TCustomMemo>;const Boolean);
	.uleb128	25
	.ascii	"SETWORDWRAP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetScrollBars(<TCustomMemo>;const TScrollStyle);
	.uleb128	25
	.ascii	"SETSCROLLBARS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La278-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TCustomMemo>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
	.byte	0
# Procdef CMWantSpecialKey(<TCustomMemo>;var TLMKey);
	.uleb128	25
	.ascii	"CMWANTSPECIALKEY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef WMGetDlgCode(<TCustomMemo>;var TWMNoParams);
	.uleb128	25
	.ascii	"WMGETDLGCODE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La286-.Ldebug_info0
	.byte	0
# Procdef class GetControlClassDefaultSize(<Class Of TCustomMemo>):<record type>;
	.uleb128	26
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
	.long	.La200-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La288-.Ldebug_info0
	.byte	0
# Procdef UTF8KeyPress(<TCustomMemo>;var TUTF8Char);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol UTF8KEY
	.uleb128	19
	.ascii	"UTF8KEY\000"
	.long	.La290-.Ldebug_info0
	.byte	0
# Procdef CanShowEmulatedTextHint(<TCustomMemo>):Boolean;
	.uleb128	26
	.ascii	"CANSHOWEMULATEDTEXTHINT\000"
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TCustomMemo>;<Pointer>;TComponent);
	.uleb128	18
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol AOWNER
	.uleb128	19
	.ascii	"AOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TCustomMemo>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Append(<TCustomMemo>;const AnsiString);
	.uleb128	20
	.ascii	"APPEND\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef ScrollBy(<TCustomMemo>;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La41-.Ldebug_info0
# Symbol DELTAX
	.uleb128	19
	.ascii	"DELTAX\000"
	.long	.La120-.Ldebug_info0
# Symbol DELTAY
	.uleb128	19
	.ascii	"DELTAY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
	.byte	0
.La42:
	.uleb128	7
	.long	.La41-.Ldebug_info0
# Definition TCustomTimer
.La45:
	.uleb128	5
	.ascii	"TCUSTOMTIMER\000"
	.long	.La292-.Ldebug_info0
.La292:
	.uleb128	8
	.long	.La47-.Ldebug_info0
.La47:
	.uleb128	9
	.ascii	"TCUSTOMTIMER\000"
	.uleb128	168
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La35-.Ldebug_info0
	.uleb128	14
	.ascii	"FINTERVAL\000"
	.byte	2
	.byte	35
	.uleb128	96
	.byte	3
	.long	.La293-.Ldebug_info0
	.uleb128	14
	.ascii	"FONSTARTTIMER\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONSTOPTIMER\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FTIMERHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La131-.Ldebug_info0
	.uleb128	14
	.ascii	"FONTIMER\000"
	.byte	3
	.byte	35
	.uleb128	144
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FENABLED\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"ENABLED\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"INTERVAL\000"
	.byte	2
	.byte	35
	.uleb128	96
	.byte	3
	.long	.La293-.Ldebug_info0
	.uleb128	14
	.ascii	"ONTIMER\000"
	.byte	3
	.byte	35
	.uleb128	144
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONSTARTTIMER\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONSTOPTIMER\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La140-.Ldebug_info0
# Procdef Timer(<TCustomTimer>);
	.uleb128	25
	.ascii	"TIMER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La45-.Ldebug_info0
	.byte	0
# Procdef SetEnabled(<TCustomTimer>;Boolean);
	.uleb128	17
	.ascii	"SETENABLED\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La45-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetInterval(<TCustomTimer>;LongWord);
	.uleb128	17
	.ascii	"SETINTERVAL\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La45-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La293-.Ldebug_info0
	.byte	0
# Procdef SetOnTimer(<TCustomTimer>;TNotifyEvent);
	.uleb128	17
	.ascii	"SETONTIMER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	448
	.byte	34
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La45-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La140-.Ldebug_info0
	.byte	0
# Procdef DoOnTimer(<TCustomTimer>);
	.uleb128	17
	.ascii	"DOONTIMER\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La45-.Ldebug_info0
	.byte	0
# Procdef UpdateTimer(<TCustomTimer>);
	.uleb128	17
	.ascii	"UPDATETIMER\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La45-.Ldebug_info0
	.byte	0
# Procdef KillTimer(<TCustomTimer>);
	.uleb128	17
	.ascii	"KILLTIMER\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La45-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TCustomTimer>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La45-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TCustomTimer>;<Pointer>;TComponent);
	.uleb128	18
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
	.long	.La45-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La45-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol AOWNER
	.uleb128	19
	.ascii	"AOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TCustomTimer>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La45-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
	.byte	0
.La46:
	.uleb128	7
	.long	.La45-.Ldebug_info0
# Definition TObject.Class Of TObject
.La49:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La50:
	.uleb128	7
	.long	.La49-.Ldebug_info0
# Definition HRESULT
.La51:
	.uleb128	5
	.ascii	"HRESULT\000"
	.long	.La297-.Ldebug_info0
.La297:
	.uleb128	29
	.ascii	"HRESULT\000"
	.byte	5
	.byte	4
.La52:
	.uleb128	7
	.long	.La51-.Ldebug_info0
# Definition <Formal type>
.La53:
	.uleb128	5
	.ascii	"formal\000"
	.long	.La298-.Ldebug_info0
.La298:
	.uleb128	29
	.ascii	"FormalDef\000"
	.byte	7
	.byte	0
.La54:
	.uleb128	7
	.long	.La53-.Ldebug_info0
# Definition TObject.Class Of TObject
.La55:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La56:
	.uleb128	7
	.long	.La55-.Ldebug_info0
# Definition TClass
.La57:
	.uleb128	5
	.ascii	"TCLASS\000"
	.long	.La299-.Ldebug_info0
.La299:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La58:
	.uleb128	7
	.long	.La57-.Ldebug_info0
# Definition TObject.Class Of TObject
.La59:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La60:
	.uleb128	7
	.long	.La59-.Ldebug_info0
# Definition TObject.Class Of TObject
.La61:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La62:
	.uleb128	7
	.long	.La61-.Ldebug_info0
# Definition ShortString
.La63:
	.uleb128	5
	.ascii	"SHORTSTRING\000"
	.long	.La300-.Ldebug_info0
.La300:
	.uleb128	32
	.ascii	"ShortString\000"
	.uleb128	256
	.uleb128	11
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La109-.Ldebug_info0
	.uleb128	11
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La301-.Ldebug_info0
	.byte	0
.La301:
	.uleb128	33
	.uleb128	256
	.uleb128	1
	.long	.La216-.Ldebug_info0
	.uleb128	34
	.uleb128	1
	.uleb128	255
	.long	.La109-.Ldebug_info0
	.byte	0
.La64:
	.uleb128	7
	.long	.La63-.Ldebug_info0
# Definition TObject.Class Of TObject
.La65:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La66:
	.uleb128	7
	.long	.La65-.Ldebug_info0
# Definition TObject.Class Of TObject
.La67:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La68:
	.uleb128	7
	.long	.La67-.Ldebug_info0
# Definition TObject.Class Of TObject
.La69:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La70:
	.uleb128	7
	.long	.La69-.Ldebug_info0
# Definition Int64
.La71:
	.uleb128	5
	.ascii	"INT64\000"
	.long	.La302-.Ldebug_info0
.La302:
	.uleb128	29
	.ascii	"Int64\000"
	.byte	5
	.byte	8
.La72:
	.uleb128	7
	.long	.La71-.Ldebug_info0
# Definition TObject.Class Of TObject
.La73:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La74:
	.uleb128	7
	.long	.La73-.Ldebug_info0
# Definition TObject.Class Of TObject
.La75:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La76:
	.uleb128	7
	.long	.La75-.Ldebug_info0
# Definition pstringmessagetable
.La77:
	.uleb128	5
	.ascii	"PSTRINGMESSAGETABLE\000"
	.long	.La303-.Ldebug_info0
.La303:
	.uleb128	8
	.long	.La304-.Ldebug_info0
.La78:
	.uleb128	7
	.long	.La77-.Ldebug_info0
# Definition TObject.Class Of TObject
.La79:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La80:
	.uleb128	7
	.long	.La79-.Ldebug_info0
# Definition TObject.Class Of TObject
.La81:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La82:
	.uleb128	7
	.long	.La81-.Ldebug_info0
# Definition TObject.Class Of TObject
.La83:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La84:
	.uleb128	7
	.long	.La83-.Ldebug_info0
# Definition TGuid
.La85:
	.uleb128	5
	.ascii	"TGUID\000"
	.long	.La306-.Ldebug_info0
.La306:
	.uleb128	32
	.ascii	"TGUID\000"
	.uleb128	16
	.uleb128	11
	.ascii	"DATA1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"DATA2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La247-.Ldebug_info0
	.uleb128	11
	.ascii	"DATA3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La247-.Ldebug_info0
	.uleb128	11
	.ascii	"DATA4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La307-.Ldebug_info0
	.uleb128	11
	.ascii	"D1\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"D2\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La247-.Ldebug_info0
	.uleb128	11
	.ascii	"D3\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La247-.Ldebug_info0
	.uleb128	11
	.ascii	"D4\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La309-.Ldebug_info0
	.uleb128	11
	.ascii	"TIME_LOW\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"TIME_MID\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La247-.Ldebug_info0
	.uleb128	11
	.ascii	"TIME_HI_AND_VERSION\000"
	.byte	2
	.byte	35
	.uleb128	6
	.long	.La247-.Ldebug_info0
	.uleb128	11
	.ascii	"CLOCK_SEQ_HI_AND_RESERVED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La109-.Ldebug_info0
	.uleb128	11
	.ascii	"CLOCK_SEQ_LOW\000"
	.byte	2
	.byte	35
	.uleb128	9
	.long	.La109-.Ldebug_info0
	.uleb128	11
	.ascii	"NODE\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La311-.Ldebug_info0
	.byte	0
.La86:
	.uleb128	7
	.long	.La85-.Ldebug_info0
# Definition pinterfaceentry
.La87:
	.uleb128	5
	.ascii	"PINTERFACEENTRY\000"
	.long	.La313-.Ldebug_info0
.La313:
	.uleb128	8
	.long	.La314-.Ldebug_info0
.La88:
	.uleb128	7
	.long	.La87-.Ldebug_info0
# Definition TObject.Class Of TObject
.La89:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La90:
	.uleb128	7
	.long	.La89-.Ldebug_info0
# Definition TObject.Class Of TObject
.La91:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La92:
	.uleb128	7
	.long	.La91-.Ldebug_info0
# Definition pinterfacetable
.La93:
	.uleb128	5
	.ascii	"PINTERFACETABLE\000"
	.long	.La316-.Ldebug_info0
.La316:
	.uleb128	8
	.long	.La317-.Ldebug_info0
.La94:
	.uleb128	7
	.long	.La93-.Ldebug_info0
# Definition TObject.Class Of TObject
.La95:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La96:
	.uleb128	7
	.long	.La95-.Ldebug_info0
# Definition TObject.Class Of TObject
.La97:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La98:
	.uleb128	7
	.long	.La97-.Ldebug_info0
# Definition TCustomDesignControl
.La100:
	.uleb128	5
	.ascii	"TCUSTOMDESIGNCONTROL\000"
	.long	.La319-.Ldebug_info0
.La319:
	.uleb128	8
	.long	.La102-.Ldebug_info0
.La102:
	.uleb128	9
	.ascii	"TCUSTOMDESIGNCONTROL\000"
	.uleb128	1448
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La322-.Ldebug_info0
	.uleb128	14
	.ascii	"FSCALED\000"
	.byte	3
	.byte	35
	.uleb128	1432
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FDESIGNTIMEPPI\000"
	.byte	3
	.byte	35
	.uleb128	1436
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FPIXELSPERINCH\000"
	.byte	3
	.byte	35
	.uleb128	1440
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"DESIGNTIMEDPI\000"
	.byte	3
	.byte	35
	.uleb128	1436
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"DESIGNTIMEPPI\000"
	.byte	3
	.byte	35
	.uleb128	1436
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"PIXELSPERINCH\000"
	.byte	3
	.byte	35
	.uleb128	1440
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"SCALED\000"
	.byte	3
	.byte	35
	.uleb128	1432
	.byte	3
	.long	.La29-.Ldebug_info0
# Procdef SetDesignTimePPI(<TCustomDesignControl>;const LongInt);
	.uleb128	25
	.ascii	"SETDESIGNTIMEPPI\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La100-.Ldebug_info0
# Symbol ADESIGNTIMEPPI
	.uleb128	19
	.ascii	"ADESIGNTIMEPPI\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetScaled(<TCustomDesignControl>;const Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La100-.Ldebug_info0
# Symbol ASCALED
	.uleb128	19
	.ascii	"ASCALED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef AutoAdjustLayout(<TCustomDesignControl>;TLayoutAdjustmentPolicy;const LongInt;const LongInt;const LongInt;const LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La100-.Ldebug_info0
# Symbol AMODE
	.uleb128	19
	.ascii	"AMODE\000"
	.long	.La323-.Ldebug_info0
# Symbol AFROMPPI
	.uleb128	19
	.ascii	"AFROMPPI\000"
	.long	.La120-.Ldebug_info0
# Symbol ATOPPI
	.uleb128	19
	.ascii	"ATOPPI\000"
	.long	.La120-.Ldebug_info0
# Symbol AOLDFORMWIDTH
	.uleb128	19
	.ascii	"AOLDFORMWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol ANEWFORMWIDTH
	.uleb128	19
	.ascii	"ANEWFORMWIDTH\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef DoAutoAdjustLayout(<TCustomDesignControl>;const TLayoutAdjustmentPolicy;const Double;const Double);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La100-.Ldebug_info0
# Symbol AMODE
	.uleb128	19
	.ascii	"AMODE\000"
	.long	.La323-.Ldebug_info0
# Symbol AXPROPORTION
	.uleb128	19
	.ascii	"AXPROPORTION\000"
	.long	.La325-.Ldebug_info0
# Symbol AYPROPORTION
	.uleb128	19
	.ascii	"AYPROPORTION\000"
	.long	.La325-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TCustomDesignControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La100-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TCustomDesignControl>;<Pointer>;TComponent);
	.uleb128	18
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
	.long	.La100-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La100-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	19
	.ascii	"THEOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
	.byte	0
.La101:
	.uleb128	7
	.long	.La100-.Ldebug_info0
# Definition TWinControl
.La103:
	.uleb128	5
	.ascii	"TWINCONTROL\000"
	.long	.La327-.Ldebug_info0
.La327:
	.uleb128	8
	.long	.La105-.Ldebug_info0
.La105:
	.uleb128	9
	.ascii	"TWINCONTROL\000"
	.uleb128	1384
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La108-.Ldebug_info0
	.uleb128	14
	.ascii	"FALIGNORDER\000"
	.byte	3
	.byte	35
	.uleb128	992
	.byte	3
	.long	.La224-.Ldebug_info0
	.uleb128	14
	.ascii	"FBORDERWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	1000
	.byte	3
	.long	.La328-.Ldebug_info0
	.uleb128	14
	.ascii	"FBOUNDSLOCKCOUNT\000"
	.byte	3
	.byte	35
	.uleb128	1004
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FBOUNDSREALIZED\000"
	.byte	3
	.byte	35
	.uleb128	1008
	.byte	3
	.long	.La186-.Ldebug_info0
	.uleb128	14
	.ascii	"FBORDERSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	1024
	.byte	3
	.long	.La330-.Ldebug_info0
	.uleb128	14
	.ascii	"FBRUSH\000"
	.byte	3
	.byte	35
	.uleb128	1032
	.byte	3
	.long	.La332-.Ldebug_info0
	.uleb128	14
	.ascii	"FADJUSTCLIENTRECTREALIZED\000"
	.byte	3
	.byte	35
	.uleb128	1040
	.byte	3
	.long	.La186-.Ldebug_info0
	.uleb128	14
	.ascii	"FADJUSTCLIENTRECT\000"
	.byte	3
	.byte	35
	.uleb128	1056
	.byte	3
	.long	.La186-.Ldebug_info0
	.uleb128	14
	.ascii	"FCHILDSIZING\000"
	.byte	3
	.byte	35
	.uleb128	1072
	.byte	3
	.long	.La335-.Ldebug_info0
	.uleb128	14
	.ascii	"FCONTROLS\000"
	.byte	3
	.byte	35
	.uleb128	1080
	.byte	3
	.long	.La224-.Ldebug_info0
	.uleb128	14
	.ascii	"FONGETDOCKCAPTION\000"
	.byte	3
	.byte	35
	.uleb128	1088
	.byte	3
	.long	.La338-.Ldebug_info0
	.uleb128	14
	.ascii	"FDEFWNDPROC\000"
	.byte	3
	.byte	35
	.uleb128	1104
	.byte	3
	.long	.La31-.Ldebug_info0
	.uleb128	14
	.ascii	"FDOCKCLIENTS\000"
	.byte	3
	.byte	35
	.uleb128	1112
	.byte	3
	.long	.La224-.Ldebug_info0
	.uleb128	14
	.ascii	"FCLIENTWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	1120
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FCLIENTHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	1124
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FDOCKMANAGER\000"
	.byte	3
	.byte	35
	.uleb128	1128
	.byte	3
	.long	.La340-.Ldebug_info0
	.uleb128	14
	.ascii	"FONALIGNINSERTBEFORE\000"
	.byte	3
	.byte	35
	.uleb128	1136
	.byte	3
	.long	.La343-.Ldebug_info0
	.uleb128	14
	.ascii	"FONALIGNPOSITION\000"
	.byte	3
	.byte	35
	.uleb128	1152
	.byte	3
	.long	.La345-.Ldebug_info0
	.uleb128	14
	.ascii	"FONDOCKDROP\000"
	.byte	3
	.byte	35
	.uleb128	1168
	.byte	3
	.long	.La347-.Ldebug_info0
	.uleb128	14
	.ascii	"FONDOCKOVER\000"
	.byte	3
	.byte	35
	.uleb128	1184
	.byte	3
	.long	.La349-.Ldebug_info0
	.uleb128	14
	.ascii	"FONGETSITEINFO\000"
	.byte	3
	.byte	35
	.uleb128	1200
	.byte	3
	.long	.La351-.Ldebug_info0
	.uleb128	14
	.ascii	"FONKEYDOWN\000"
	.byte	3
	.byte	35
	.uleb128	1216
	.byte	3
	.long	.La353-.Ldebug_info0
	.uleb128	14
	.ascii	"FONKEYPRESS\000"
	.byte	3
	.byte	35
	.uleb128	1232
	.byte	3
	.long	.La355-.Ldebug_info0
	.uleb128	14
	.ascii	"FONKEYUP\000"
	.byte	3
	.byte	35
	.uleb128	1248
	.byte	3
	.long	.La353-.Ldebug_info0
	.uleb128	14
	.ascii	"FONENTER\000"
	.byte	3
	.byte	35
	.uleb128	1264
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONEXIT\000"
	.byte	3
	.byte	35
	.uleb128	1280
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONUNDOCK\000"
	.byte	3
	.byte	35
	.uleb128	1296
	.byte	3
	.long	.La357-.Ldebug_info0
	.uleb128	14
	.ascii	"FONUTF8KEYPRESS\000"
	.byte	3
	.byte	35
	.uleb128	1312
	.byte	3
	.long	.La359-.Ldebug_info0
	.uleb128	14
	.ascii	"FPARENTWINDOW\000"
	.byte	3
	.byte	35
	.uleb128	1328
	.byte	3
	.long	.La131-.Ldebug_info0
	.uleb128	14
	.ascii	"FREALIZEBOUNDSLOCKCOUNT\000"
	.byte	3
	.byte	35
	.uleb128	1336
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	1344
	.byte	3
	.long	.La131-.Ldebug_info0
	.uleb128	14
	.ascii	"FTABORDER\000"
	.byte	3
	.byte	35
	.uleb128	1352
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FTABLIST\000"
	.byte	3
	.byte	35
	.uleb128	1360
	.byte	3
	.long	.La224-.Ldebug_info0
	.uleb128	14
	.ascii	"FTABSTOP\000"
	.byte	3
	.byte	35
	.uleb128	1368
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FSHOWING\000"
	.byte	3
	.byte	35
	.uleb128	1369
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FDOUBLEBUFFERED\000"
	.byte	3
	.byte	35
	.uleb128	1370
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FDOCKSITE\000"
	.byte	3
	.byte	35
	.uleb128	1371
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FUSEDOCKMANAGER\000"
	.byte	3
	.byte	35
	.uleb128	1372
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FDESIGNERDELETING\000"
	.byte	3
	.byte	35
	.uleb128	1373
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FWINCONTROLFLAGS\000"
	.byte	3
	.byte	35
	.uleb128	1376
	.byte	2
	.long	.La361-.Ldebug_info0
	.uleb128	14
	.ascii	"WINDOWHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	1344
	.byte	3
	.long	.La131-.Ldebug_info0
	.uleb128	14
	.ascii	"ONGETSITEINFO\000"
	.byte	3
	.byte	35
	.uleb128	1200
	.byte	3
	.long	.La351-.Ldebug_info0
	.uleb128	14
	.ascii	"ONGETDOCKCAPTION\000"
	.byte	3
	.byte	35
	.uleb128	1088
	.byte	3
	.long	.La338-.Ldebug_info0
	.uleb128	14
	.ascii	"BORDERWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	1000
	.byte	3
	.long	.La328-.Ldebug_info0
	.uleb128	14
	.ascii	"BOUNDSLOCKCOUNT\000"
	.byte	3
	.byte	35
	.uleb128	1004
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"CACHEDCLIENTHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	1124
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"CACHEDCLIENTWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	1120
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"CHILDSIZING\000"
	.byte	3
	.byte	35
	.uleb128	1072
	.byte	3
	.long	.La335-.Ldebug_info0
	.uleb128	14
	.ascii	"DEFWNDPROC\000"
	.byte	3
	.byte	35
	.uleb128	1104
	.byte	3
	.long	.La31-.Ldebug_info0
	.uleb128	14
	.ascii	"DOCKMANAGER\000"
	.byte	3
	.byte	35
	.uleb128	1128
	.byte	3
	.long	.La340-.Ldebug_info0
	.uleb128	14
	.ascii	"DOCKSITE\000"
	.byte	3
	.byte	35
	.uleb128	1371
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"DOUBLEBUFFERED\000"
	.byte	3
	.byte	35
	.uleb128	1370
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"TABSTOP\000"
	.byte	3
	.byte	35
	.uleb128	1368
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"ONALIGNINSERTBEFORE\000"
	.byte	3
	.byte	35
	.uleb128	1136
	.byte	3
	.long	.La343-.Ldebug_info0
	.uleb128	14
	.ascii	"ONALIGNPOSITION\000"
	.byte	3
	.byte	35
	.uleb128	1152
	.byte	3
	.long	.La345-.Ldebug_info0
	.uleb128	14
	.ascii	"ONDOCKDROP\000"
	.byte	3
	.byte	35
	.uleb128	1168
	.byte	3
	.long	.La347-.Ldebug_info0
	.uleb128	14
	.ascii	"ONDOCKOVER\000"
	.byte	3
	.byte	35
	.uleb128	1184
	.byte	3
	.long	.La349-.Ldebug_info0
	.uleb128	14
	.ascii	"ONENTER\000"
	.byte	3
	.byte	35
	.uleb128	1264
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONEXIT\000"
	.byte	3
	.byte	35
	.uleb128	1280
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONKEYDOWN\000"
	.byte	3
	.byte	35
	.uleb128	1216
	.byte	3
	.long	.La353-.Ldebug_info0
	.uleb128	14
	.ascii	"ONKEYPRESS\000"
	.byte	3
	.byte	35
	.uleb128	1232
	.byte	3
	.long	.La355-.Ldebug_info0
	.uleb128	14
	.ascii	"ONKEYUP\000"
	.byte	3
	.byte	35
	.uleb128	1248
	.byte	3
	.long	.La353-.Ldebug_info0
	.uleb128	14
	.ascii	"ONUNDOCK\000"
	.byte	3
	.byte	35
	.uleb128	1296
	.byte	3
	.long	.La357-.Ldebug_info0
	.uleb128	14
	.ascii	"ONUTF8KEYPRESS\000"
	.byte	3
	.byte	35
	.uleb128	1312
	.byte	3
	.long	.La359-.Ldebug_info0
	.uleb128	14
	.ascii	"PARENTWINDOW\000"
	.byte	3
	.byte	35
	.uleb128	1328
	.byte	3
	.long	.La131-.Ldebug_info0
	.uleb128	14
	.ascii	"SHOWING\000"
	.byte	3
	.byte	35
	.uleb128	1369
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"USEDOCKMANAGER\000"
	.byte	3
	.byte	35
	.uleb128	1372
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"DESIGNERDELETING\000"
	.byte	3
	.byte	35
	.uleb128	1373
	.byte	3
	.long	.La29-.Ldebug_info0
# Procdef AlignControl(<TWinControl>;TControl);
	.uleb128	25
	.ascii	"ALIGNCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetBrush(<TWinControl>):TBrush;
	.uleb128	15
	.ascii	"GETBRUSH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La332-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef GetControl(<TWinControl>;const LongInt):TControl;
	.uleb128	15
	.ascii	"GETCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La106-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetControlCount(<TWinControl>):LongInt;
	.uleb128	15
	.ascii	"GETCONTROLCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef GetDockClientCount(<TWinControl>):LongInt;
	.uleb128	15
	.ascii	"GETDOCKCLIENTCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef GetDockClients(<TWinControl>;LongInt):TControl;
	.uleb128	15
	.ascii	"GETDOCKCLIENTS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La106-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetHandle(<TWinControl>):QWord;
	.uleb128	15
	.ascii	"GETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef GetIsResizing(<TWinControl>):Boolean;
	.uleb128	15
	.ascii	"GETISRESIZING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef GetTabOrder(<TWinControl>):SmallInt;
	.uleb128	15
	.ascii	"GETTABORDER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La363-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef GetVisibleDockClientCount(<TWinControl>):LongInt;
	.uleb128	15
	.ascii	"GETVISIBLEDOCKCLIENTCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef SetChildSizing(<TWinControl>;const TControlChildSizing);
	.uleb128	25
	.ascii	"SETCHILDSIZING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef SetDockSite(<TWinControl>;const Boolean);
	.uleb128	25
	.ascii	"SETDOCKSITE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol NEWDOCKSITE
	.uleb128	19
	.ascii	"NEWDOCKSITE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetHandle(<TWinControl>;QWord);
	.uleb128	25
	.ascii	"SETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol NEWHANDLE
	.uleb128	19
	.ascii	"NEWHANDLE\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef SetBorderWidth(<TWinControl>;TBorderWidth);
	.uleb128	25
	.ascii	"SETBORDERWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La328-.Ldebug_info0
	.byte	0
# Procdef SetParentWindow(<TWinControl>;const QWord);
	.uleb128	25
	.ascii	"SETPARENTWINDOW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef SetTabOrder(<TWinControl>;TTabOrder);
	.uleb128	25
	.ascii	"SETTABORDER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol NEWTABORDER
	.uleb128	19
	.ascii	"NEWTABORDER\000"
	.long	.La363-.Ldebug_info0
	.byte	0
# Procdef SetTabStop(<TWinControl>;Boolean);
	.uleb128	25
	.ascii	"SETTABSTOP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol NEWTABSTOP
	.uleb128	19
	.ascii	"NEWTABSTOP\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetUseDockManager(<TWinControl>;const Boolean);
	.uleb128	25
	.ascii	"SETUSEDOCKMANAGER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef UpdateTabOrder(<TWinControl>;TTabOrder);
	.uleb128	25
	.ascii	"UPDATETABORDER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol NEWTABORDER
	.uleb128	19
	.ascii	"NEWTABORDER\000"
	.long	.La363-.Ldebug_info0
	.byte	0
# Procdef Insert(<TWinControl>;TControl);
	.uleb128	25
	.ascii	"INSERT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef Insert(<TWinControl>;TControl;LongInt);
	.uleb128	25
	.ascii	"INSERT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Remove(<TWinControl>;TControl);
	.uleb128	25
	.ascii	"REMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef AlignNonAlignedControls(<TWinControl>;TFPList;var Boolean);
	.uleb128	25
	.ascii	"ALIGNNONALIGNEDCONTROLS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol LISTOFCONTROLS
	.uleb128	19
	.ascii	"LISTOFCONTROLS\000"
	.long	.La224-.Ldebug_info0
# Symbol BOUNDSMODIFIED
	.uleb128	19
	.ascii	"BOUNDSMODIFIED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La365-.Ldebug_info0
	.byte	0
# Procdef AdjustClientRect(<TWinControl>;var TRect);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef GetAdjustedLogicalClientRect(<TWinControl>;out TRect);
	.uleb128	25
	.ascii	"GETADJUSTEDLOGICALCLIENTRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef CreateControlAlignList(<TWinControl>;TAlign;TFPList;TControl);
	.uleb128	25
	.ascii	"CREATECONTROLALIGNLIST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol THEALIGN
	.uleb128	19
	.ascii	"THEALIGN\000"
	.long	.La367-.Ldebug_info0
# Symbol ALIGNLIST
	.uleb128	19
	.ascii	"ALIGNLIST\000"
	.long	.La224-.Ldebug_info0
# Symbol STARTCONTROL
	.uleb128	19
	.ascii	"STARTCONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef AlignControls(<TWinControl>;TControl;var TRect);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
# Symbol REMAININGCLIENTRECT
	.uleb128	19
	.ascii	"REMAININGCLIENTRECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef CustomAlignInsertBefore(<TWinControl>;TControl;TControl):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ACONTROL1
	.uleb128	19
	.ascii	"ACONTROL1\000"
	.long	.La106-.Ldebug_info0
# Symbol ACONTROL2
	.uleb128	19
	.ascii	"ACONTROL2\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef CustomAlignPosition(<TWinControl>;TControl;var LongInt;var LongInt;var LongInt;var LongInt;var TRect;TAlignInfo);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
# Symbol ANEWLEFT
	.uleb128	19
	.ascii	"ANEWLEFT\000"
	.long	.La120-.Ldebug_info0
# Symbol ANEWTOP
	.uleb128	19
	.ascii	"ANEWTOP\000"
	.long	.La120-.Ldebug_info0
# Symbol ANEWWIDTH
	.uleb128	19
	.ascii	"ANEWWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol ANEWHEIGHT
	.uleb128	19
	.ascii	"ANEWHEIGHT\000"
	.long	.La120-.Ldebug_info0
# Symbol ALIGNRECT
	.uleb128	19
	.ascii	"ALIGNRECT\000"
	.long	.La186-.Ldebug_info0
# Symbol ALIGNINFO
	.uleb128	19
	.ascii	"ALIGNINFO\000"
	.long	.La369-.Ldebug_info0
	.byte	0
# Procdef DoAlignChildControls(<TWinControl>;TAlign;TControl;TFPList;var TRect):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol THEALIGN
	.uleb128	19
	.ascii	"THEALIGN\000"
	.long	.La367-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
# Symbol ACONTROLLIST
	.uleb128	19
	.ascii	"ACONTROLLIST\000"
	.long	.La224-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef DoChildSizingChange(<TWinControl>;TObject);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef InvalidatePreferredChildSizes(<TWinControl>);
	.uleb128	25
	.ascii	"INVALIDATEPREFERREDCHILDSIZES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef CanTab(<TWinControl>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef IsClientHeightStored(<TWinControl>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef IsClientWidthStored(<TWinControl>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef DoSendShowHideToInterface(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef ControlsAligned(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef DoSendBoundsToInterface(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef RealizeBounds(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef RealizeBoundsRecursive(<TWinControl>);
	.uleb128	25
	.ascii	"REALIZEBOUNDSRECURSIVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef InvalidateBoundsRealized(<TWinControl>);
	.uleb128	25
	.ascii	"INVALIDATEBOUNDSREALIZED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef CreateSubClass(<TWinControl>;var TCreateParams;PChar);
	.uleb128	25
	.ascii	"CREATESUBCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol PARAMS
	.uleb128	19
	.ascii	"PARAMS\000"
	.long	.La188-.Ldebug_info0
# Symbol CONTROLCLASSNAME
	.uleb128	19
	.ascii	"CONTROLCLASSNAME\000"
	.long	.La371-.Ldebug_info0
	.byte	0
# Procdef DoConstraintsChange(<TWinControl>;TObject);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef DoSetBounds(<TWinControl>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ALEFT
	.uleb128	19
	.ascii	"ALEFT\000"
	.long	.La120-.Ldebug_info0
# Symbol ATOP
	.uleb128	19
	.ascii	"ATOP\000"
	.long	.La120-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef DoAutoSize(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef DoAllAutoSize(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef AllAutoSized(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef CalculatePreferredSize(<TWinControl>;var LongInt;var LongInt;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol PREFERREDWIDTH
	.uleb128	19
	.ascii	"PREFERREDWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol PREFERREDHEIGHT
	.uleb128	19
	.ascii	"PREFERREDHEIGHT\000"
	.long	.La120-.Ldebug_info0
# Symbol WITHTHEMESPACE
	.uleb128	19
	.ascii	"WITHTHEMESPACE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef GetPreferredSizeClientFrame(<TWinControl>;out LongInt;out LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetChildren(<TWinControl>;TGetChildProc;TComponent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol PROC
	.uleb128	19
	.ascii	"PROC\000"
	.long	.La213-.Ldebug_info0
# Symbol ROOT
	.uleb128	19
	.ascii	"ROOT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef ChildClassAllowed(<TWinControl>;TClass):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol CHILDCLASS
	.uleb128	19
	.ascii	"CHILDCLASS\000"
	.long	.La57-.Ldebug_info0
	.byte	0
# Procdef PaintControls(<TWinControl>;QWord;TControl);
	.uleb128	25
	.ascii	"PAINTCONTROLS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol DC
	.uleb128	19
	.ascii	"DC\000"
	.long	.La131-.Ldebug_info0
# Symbol FIRST
	.uleb128	19
	.ascii	"FIRST\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef PaintHandler(<TWinControl>;var TLMPaint);
	.uleb128	25
	.ascii	"PAINTHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol THEMESSAGE
	.uleb128	19
	.ascii	"THEMESSAGE\000"
	.long	.La373-.Ldebug_info0
	.byte	0
# Procdef PaintWindow(<TWinControl>;QWord);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol DC
	.uleb128	19
	.ascii	"DC\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef CreateBrush(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef ScaleControls(<TWinControl>;LongInt;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MULTIPLIER
	.uleb128	19
	.ascii	"MULTIPLIER\000"
	.long	.La120-.Ldebug_info0
# Symbol DIVIDER
	.uleb128	19
	.ascii	"DIVIDER\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef ChangeScale(<TWinControl>;LongInt;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MULTIPLIER
	.uleb128	19
	.ascii	"MULTIPLIER\000"
	.long	.La120-.Ldebug_info0
# Symbol DIVIDER
	.uleb128	19
	.ascii	"DIVIDER\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef CMBiDiModeChanged(<TWinControl>;var TMessage);
	.uleb128	25
	.ascii	"CMBIDIMODECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMBorderChanged(<TWinControl>;var TMessage);
	.uleb128	25
	.ascii	"CMBORDERCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMEnabledChanged(<TWinControl>;var TMessage);
	.uleb128	25
	.ascii	"CMENABLEDCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMShowingChanged(<TWinControl>;var TMessage);
	.uleb128	25
	.ascii	"CMSHOWINGCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMShowHintChanged(<TWinControl>;var TMessage);
	.uleb128	25
	.ascii	"CMSHOWHINTCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMVisibleChanged(<TWinControl>;var TMessage);
	.uleb128	25
	.ascii	"CMVISIBLECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMEnter(<TWinControl>;var TMessage);
	.uleb128	25
	.ascii	"CMENTER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMExit(<TWinControl>;var TMessage);
	.uleb128	25
	.ascii	"CMEXIT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef WMContextMenu(<TWinControl>;var TLMContextMenu);
	.uleb128	25
	.ascii	"WMCONTEXTMENU\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La375-.Ldebug_info0
	.byte	0
# Procdef WMEraseBkgnd(<TWinControl>;var TLMEraseBkgnd);
	.uleb128	25
	.ascii	"WMERASEBKGND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La377-.Ldebug_info0
	.byte	0
# Procdef WMNotify(<TWinControl>;var TLMNotify);
	.uleb128	25
	.ascii	"WMNOTIFY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La379-.Ldebug_info0
	.byte	0
# Procdef WMSetFocus(<TWinControl>;var TLMSetFocus);
	.uleb128	25
	.ascii	"WMSETFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La258-.Ldebug_info0
	.byte	0
# Procdef WMKillFocus(<TWinControl>;var TWMKillFocus);
	.uleb128	25
	.ascii	"WMKILLFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La260-.Ldebug_info0
	.byte	0
# Procdef WMShowWindow(<TWinControl>;var TWMShowWindow);
	.uleb128	25
	.ascii	"WMSHOWWINDOW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La178-.Ldebug_info0
	.byte	0
# Procdef WMEnter(<TWinControl>;var TWMNoParams);
	.uleb128	25
	.ascii	"WMENTER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La286-.Ldebug_info0
	.byte	0
# Procdef WMExit(<TWinControl>;var TWMNoParams);
	.uleb128	25
	.ascii	"WMEXIT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La286-.Ldebug_info0
	.byte	0
# Procdef WMKeyDown(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"WMKEYDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef WMSysKeyDown(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"WMSYSKEYDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef WMKeyUp(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"WMKEYUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef WMSysKeyUp(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"WMSYSKEYUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef WMChar(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"WMCHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef WMSysChar(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"WMSYSCHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef WMPaint(<TWinControl>;var TLMPaint);
	.uleb128	25
	.ascii	"WMPAINT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MSG
	.uleb128	19
	.ascii	"MSG\000"
	.long	.La373-.Ldebug_info0
	.byte	0
# Procdef WMDestroy(<TWinControl>;var TWMNoParams);
	.uleb128	25
	.ascii	"WMDESTROY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La286-.Ldebug_info0
	.byte	0
# Procdef WMMove(<TWinControl>;var TLMMove);
	.uleb128	25
	.ascii	"WMMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La176-.Ldebug_info0
	.byte	0
# Procdef WMSize(<TWinControl>;var TWMSize);
	.uleb128	25
	.ascii	"WMSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La180-.Ldebug_info0
	.byte	0
# Procdef WMWindowPosChanged(<TWinControl>;var TLMWindowPosMsg);
	.uleb128	25
	.ascii	"WMWINDOWPOSCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La182-.Ldebug_info0
	.byte	0
# Procdef CNKeyDown(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"CNKEYDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef CNSysKeyDown(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"CNSYSKEYDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef CNKeyUp(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"CNKEYUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef CNSysKeyUp(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"CNSYSKEYUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef CNChar(<TWinControl>;var TLMKey);
	.uleb128	25
	.ascii	"CNCHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef DoDragMsg(<TWinControl>;TDragMessage;TPoint;TDragObject;TControl;Boolean):Int64;
	.uleb128	26
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
	.long	.La71-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ADRAGMESSAGE
	.uleb128	19
	.ascii	"ADRAGMESSAGE\000"
	.long	.La381-.Ldebug_info0
# Symbol APOSITION
	.uleb128	19
	.ascii	"APOSITION\000"
	.long	.La284-.Ldebug_info0
# Symbol ADRAGOBJECT
	.uleb128	19
	.ascii	"ADRAGOBJECT\000"
	.long	.La383-.Ldebug_info0
# Symbol ATARGET
	.uleb128	19
	.ascii	"ATARGET\000"
	.long	.La106-.Ldebug_info0
# Symbol ADOCKING
	.uleb128	19
	.ascii	"ADOCKING\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DoDockClientMsg(<TWinControl>;TDragDockObject;TPoint):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol DRAGDOCKOBJECT
	.uleb128	19
	.ascii	"DRAGDOCKOBJECT\000"
	.long	.La386-.Ldebug_info0
# Symbol APOSITION
	.uleb128	19
	.ascii	"APOSITION\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef DoUndockClientMsg(<TWinControl>;TControl;TControl):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol NEWTARGET
	.uleb128	19
	.ascii	"NEWTARGET\000"
	.long	.La106-.Ldebug_info0
# Symbol CLIENT
	.uleb128	19
	.ascii	"CLIENT\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef DoAddDockClient(<TWinControl>;TControl;const TRect);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol CLIENT
	.uleb128	19
	.ascii	"CLIENT\000"
	.long	.La106-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef DockOver(<TWinControl>;TDragDockObject;LongInt;LongInt;TDragState;var Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La386-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol STATE
	.uleb128	19
	.ascii	"STATE\000"
	.long	.La389-.Ldebug_info0
# Symbol ACCEPT
	.uleb128	19
	.ascii	"ACCEPT\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DoDockOver(<TWinControl>;TDragDockObject;LongInt;LongInt;TDragState;var Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La386-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol STATE
	.uleb128	19
	.ascii	"STATE\000"
	.long	.La389-.Ldebug_info0
# Symbol ACCEPT
	.uleb128	19
	.ascii	"ACCEPT\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DoRemoveDockClient(<TWinControl>;TControl);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol CLIENT
	.uleb128	19
	.ascii	"CLIENT\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef DoUnDock(<TWinControl>;TWinControl;TControl;Boolean="TRUE"):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol NEWTARGET
	.uleb128	19
	.ascii	"NEWTARGET\000"
	.long	.La103-.Ldebug_info0
# Symbol CLIENT
	.uleb128	19
	.ascii	"CLIENT\000"
	.long	.La106-.Ldebug_info0
# Symbol KEEPDOCKSITESIZE
	.uleb128	19
	.ascii	"KEEPDOCKSITESIZE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef GetSiteInfo(<TWinControl>;TControl;var TRect;TPoint;var Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol CLIENT
	.uleb128	19
	.ascii	"CLIENT\000"
	.long	.La106-.Ldebug_info0
# Symbol INFLUENCERECT
	.uleb128	19
	.ascii	"INFLUENCERECT\000"
	.long	.La186-.Ldebug_info0
# Symbol MOUSEPOS
	.uleb128	19
	.ascii	"MOUSEPOS\000"
	.long	.La284-.Ldebug_info0
# Symbol CANDOCK
	.uleb128	19
	.ascii	"CANDOCK\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef GetParentHandle(<TWinControl>):QWord;
	.uleb128	15
	.ascii	"GETPARENTHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef GetTopParentHandle(<TWinControl>):QWord;
	.uleb128	15
	.ascii	"GETTOPPARENTHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef ReloadDockedControl(<TWinControl>;const AnsiString;var TControl);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ACONTROLNAME
	.uleb128	19
	.ascii	"ACONTROLNAME\000"
	.long	.La27-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef CreateDockManager(<TWinControl>):TDockManager;
	.uleb128	26
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
	.long	.La340-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef SetDockManager(<TWinControl>;TDockManager);
	.uleb128	25
	.ascii	"SETDOCKMANAGER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol AMGR
	.uleb128	19
	.ascii	"AMGR\000"
	.long	.La340-.Ldebug_info0
	.byte	0
# Procdef DoFloatMsg(<TWinControl>;TDragDockObject);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ADOCKSOURCE
	.uleb128	19
	.ascii	"ADOCKSOURCE\000"
	.long	.La386-.Ldebug_info0
	.byte	0
# Procdef DoGetDockCaption(<TWinControl>;TControl;var AnsiString);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
# Symbol ACAPTION
	.uleb128	19
	.ascii	"ACAPTION\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef DoEnter(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef DoExit(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef DoKeyDownBeforeInterface(<TWinControl>;var TLMKey;Boolean):Boolean;
	.uleb128	15
	.ascii	"DOKEYDOWNBEFOREINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
# Symbol ISRECURSECALL
	.uleb128	19
	.ascii	"ISRECURSECALL\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DoRemainingKeyDown(<TWinControl>;var TLMKey):Boolean;
	.uleb128	15
	.ascii	"DOREMAININGKEYDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef DoRemainingKeyUp(<TWinControl>;var TLMKey):Boolean;
	.uleb128	15
	.ascii	"DOREMAININGKEYUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef DoKeyPress(<TWinControl>;var TLMKey):Boolean;
	.uleb128	15
	.ascii	"DOKEYPRESS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef DoUTF8KeyPress(<TWinControl>;var TUTF8Char):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol UTF8KEY
	.uleb128	19
	.ascii	"UTF8KEY\000"
	.long	.La290-.Ldebug_info0
	.byte	0
# Procdef DoKeyUpBeforeInterface(<TWinControl>;var TLMKey):Boolean;
	.uleb128	15
	.ascii	"DOKEYUPBEFOREINTERFACE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef ChildKey(<TWinControl>;var TLMKey):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef SendDialogChar(<TWinControl>;var TLMKey):Boolean;
	.uleb128	15
	.ascii	"SENDDIALOGCHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef DialogChar(<TWinControl>;var TLMKey):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef ControlKeyDown(<TWinControl>;var Word;TShiftState);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol KEY
	.uleb128	19
	.ascii	"KEY\000"
	.long	.La247-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
	.byte	0
# Procdef ControlKeyUp(<TWinControl>;var Word;TShiftState);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol KEY
	.uleb128	19
	.ascii	"KEY\000"
	.long	.La247-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
	.byte	0
# Procdef KeyDown(<TWinControl>;var Word;TShiftState);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol KEY
	.uleb128	19
	.ascii	"KEY\000"
	.long	.La247-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
	.byte	0
# Procdef KeyDownBeforeInterface(<TWinControl>;var Word;TShiftState);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol KEY
	.uleb128	19
	.ascii	"KEY\000"
	.long	.La247-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
	.byte	0
# Procdef KeyDownAfterInterface(<TWinControl>;var Word;TShiftState);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol KEY
	.uleb128	19
	.ascii	"KEY\000"
	.long	.La247-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
	.byte	0
# Procdef KeyPress(<TWinControl>;var Char);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol KEY
	.uleb128	19
	.ascii	"KEY\000"
	.long	.La216-.Ldebug_info0
	.byte	0
# Procdef KeyUp(<TWinControl>;var Word;TShiftState);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol KEY
	.uleb128	19
	.ascii	"KEY\000"
	.long	.La247-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
	.byte	0
# Procdef KeyUpBeforeInterface(<TWinControl>;var Word;TShiftState);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol KEY
	.uleb128	19
	.ascii	"KEY\000"
	.long	.La247-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
	.byte	0
# Procdef KeyUpAfterInterface(<TWinControl>;var Word;TShiftState);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol KEY
	.uleb128	19
	.ascii	"KEY\000"
	.long	.La247-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
	.byte	0
# Procdef UTF8KeyPress(<TWinControl>;var TUTF8Char);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol UTF8KEY
	.uleb128	19
	.ascii	"UTF8KEY\000"
	.long	.La290-.Ldebug_info0
	.byte	0
# Procdef FindNextControl(<TWinControl>;TWinControl;Boolean;Boolean;Boolean):TWinControl;
	.uleb128	15
	.ascii	"FINDNEXTCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La103-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol CURRENTCONTROL
	.uleb128	19
	.ascii	"CURRENTCONTROL\000"
	.long	.La103-.Ldebug_info0
# Symbol GOFORWARD
	.uleb128	19
	.ascii	"GOFORWARD\000"
	.long	.La29-.Ldebug_info0
# Symbol CHECKTABSTOP
	.uleb128	19
	.ascii	"CHECKTABSTOP\000"
	.long	.La29-.Ldebug_info0
# Symbol CHECKPARENT
	.uleb128	19
	.ascii	"CHECKPARENT\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SelectFirst(<TWinControl>);
	.uleb128	25
	.ascii	"SELECTFIRST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef RealGetText(<TWinControl>;<var TTranslateString>):AnsiString;
	.uleb128	26
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
	.long	.La282-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef GetBorderStyle(<TWinControl>):<enumeration type>;
	.uleb128	15
	.ascii	"GETBORDERSTYLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La330-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef GetClientOrigin(<TWinControl>):<record type>;
	.uleb128	26
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
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef GetClientRect(<TWinControl>;<var TRect>):<record type>;
	.uleb128	26
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
	.long	.La186-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef GetControlOrigin(<TWinControl>):<record type>;
	.uleb128	26
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
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef GetDeviceContext(<TWinControl>;var QWord):QWord;
	.uleb128	26
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
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol WINDOWHANDLE
	.uleb128	19
	.ascii	"WINDOWHANDLE\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef IsControlMouseMsg(<TWinControl>;var <Formal type>):Boolean;
	.uleb128	15
	.ascii	"ISCONTROLMOUSEMSG\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol THEMESSAGE
	.uleb128	19
	.ascii	"THEMESSAGE\000"
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef CreateHandle(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef CreateParams(<TWinControl>;var TCreateParams);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol PARAMS
	.uleb128	19
	.ascii	"PARAMS\000"
	.long	.La188-.Ldebug_info0
	.byte	0
# Procdef CreateWnd(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef DestroyHandle(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef DestroyWnd(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef DoFlipChildren(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef FinalizeWnd(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef FixupTabList(<TWinControl>);
	.uleb128	25
	.ascii	"FIXUPTABLIST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef FontChanged(<TWinControl>;TObject);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef InitializeWnd(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef FormEndUpdated(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef MainWndProc(<TWinControl>;var TMessage);
	.uleb128	25
	.ascii	"MAINWNDPROC\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MSG
	.uleb128	19
	.ascii	"MSG\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef ParentFormHandleInitialized(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef ChildHandlesCreated(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef GetMouseCapture(<TWinControl>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef RealSetText(<TWinControl>;const TTranslateString);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef RemoveFocus(<TWinControl>;Boolean);
	.uleb128	25
	.ascii	"REMOVEFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol REMOVING
	.uleb128	19
	.ascii	"REMOVING\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SendMoveSizeMessages(<TWinControl>;Boolean;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol SIZECHANGED
	.uleb128	19
	.ascii	"SIZECHANGED\000"
	.long	.La29-.Ldebug_info0
# Symbol POSCHANGED
	.uleb128	19
	.ascii	"POSCHANGED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetBorderStyle(<TWinControl>;TBorderStyle);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol NEWSTYLE
	.uleb128	19
	.ascii	"NEWSTYLE\000"
	.long	.La330-.Ldebug_info0
	.byte	0
# Procdef SetColor(<TWinControl>;TGraphicsColor);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La391-.Ldebug_info0
	.byte	0
# Procdef SetChildZPosition(<TWinControl>;const TControl;const LongInt);
	.uleb128	25
	.ascii	"SETCHILDZPOSITION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ACHILD
	.uleb128	19
	.ascii	"ACHILD\000"
	.long	.La106-.Ldebug_info0
# Symbol APOSITION
	.uleb128	19
	.ascii	"APOSITION\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef ShowControl(<TWinControl>;TControl);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef UpdateControlState(<TWinControl>);
	.uleb128	25
	.ascii	"UPDATECONTROLSTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef UpdateShowing(<TWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef WndProc(<TWinControl>;var TMessage);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef WSSetText(<TWinControl>;const AnsiString);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ATEXT
	.uleb128	19
	.ascii	"ATEXT\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef AutoSizePhases(<TWinControl>):Set Of TControlAutoSizePhase;
	.uleb128	18
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
	.long	.La393-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef AutoSizeDelayed(<TWinControl>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef AutoSizeDelayedReport(<TWinControl>;<var AnsiString>):AnsiString;
	.uleb128	18
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
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef AutoSizeDelayedHandle(<TWinControl>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef BeginUpdateBounds(<TWinControl>);
	.uleb128	20
	.ascii	"BEGINUPDATEBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef EndUpdateBounds(<TWinControl>);
	.uleb128	20
	.ascii	"ENDUPDATEBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef LockRealizeBounds(<TWinControl>);
	.uleb128	20
	.ascii	"LOCKREALIZEBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef UnlockRealizeBounds(<TWinControl>);
	.uleb128	20
	.ascii	"UNLOCKREALIZEBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef ControlAtPos(<TWinControl>;const TPoint;Boolean):TControl;
	.uleb128	22
	.ascii	"CONTROLATPOS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol POS
	.uleb128	19
	.ascii	"POS\000"
	.long	.La284-.Ldebug_info0
# Symbol ALLOWDISABLED
	.uleb128	19
	.ascii	"ALLOWDISABLED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef ControlAtPos(<TWinControl>;const TPoint;Boolean;Boolean):TControl;
	.uleb128	22
	.ascii	"CONTROLATPOS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol POS
	.uleb128	19
	.ascii	"POS\000"
	.long	.La284-.Ldebug_info0
# Symbol ALLOWDISABLED
	.uleb128	19
	.ascii	"ALLOWDISABLED\000"
	.long	.La29-.Ldebug_info0
# Symbol ALLOWWINCONTROLS
	.uleb128	19
	.ascii	"ALLOWWINCONTROLS\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef ControlAtPos(<TWinControl>;const TPoint;TControlAtPosFlags):TControl;
	.uleb128	22
	.ascii	"CONTROLATPOS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol POS
	.uleb128	19
	.ascii	"POS\000"
	.long	.La284-.Ldebug_info0
# Symbol FLAGS
	.uleb128	19
	.ascii	"FLAGS\000"
	.long	.La395-.Ldebug_info0
	.byte	0
# Procdef ContainsControl(<TWinControl>;TControl):Boolean;
	.uleb128	22
	.ascii	"CONTAINSCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol CONTROL
	.uleb128	19
	.ascii	"CONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef DoAdjustClientRectChange(<TWinControl>;const Boolean="TRUE");
	.uleb128	20
	.ascii	"DOADJUSTCLIENTRECTCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol INVALIDATERECT
	.uleb128	19
	.ascii	"INVALIDATERECT\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef InvalidateClientRectCache(<TWinControl>;Boolean);
	.uleb128	20
	.ascii	"INVALIDATECLIENTRECTCACHE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol WITHCHILDCONTROLS
	.uleb128	19
	.ascii	"WITHCHILDCONTROLS\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef ClientRectNeedsInterfaceUpdate(<TWinControl>):Boolean;
	.uleb128	22
	.ascii	"CLIENTRECTNEEDSINTERFACEUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef SetBounds(<TWinControl>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ALEFT
	.uleb128	19
	.ascii	"ALEFT\000"
	.long	.La120-.Ldebug_info0
# Symbol ATOP
	.uleb128	19
	.ascii	"ATOP\000"
	.long	.La120-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetChildrenRect(<TWinControl>;<var TRect>;Boolean):<record type>;
	.uleb128	18
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
	.long	.La186-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
# Symbol SCROLLED
	.uleb128	19
	.ascii	"SCROLLED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DisableAlign(<TWinControl>);
	.uleb128	20
	.ascii	"DISABLEALIGN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef EnableAlign(<TWinControl>);
	.uleb128	20
	.ascii	"ENABLEALIGN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef ReAlign(<TWinControl>);
	.uleb128	20
	.ascii	"REALIGN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef ScrollBy_WS(<TWinControl>;LongInt;LongInt);
	.uleb128	20
	.ascii	"SCROLLBY_WS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol DELTAX
	.uleb128	19
	.ascii	"DELTAX\000"
	.long	.La120-.Ldebug_info0
# Symbol DELTAY
	.uleb128	19
	.ascii	"DELTAY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef ScrollBy(<TWinControl>;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol DELTAX
	.uleb128	19
	.ascii	"DELTAX\000"
	.long	.La120-.Ldebug_info0
# Symbol DELTAY
	.uleb128	19
	.ascii	"DELTAY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef WriteLayoutDebugReport(<TWinControl>;const AnsiString);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol PREFIX
	.uleb128	19
	.ascii	"PREFIX\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef AutoAdjustLayout(<TWinControl>;TLayoutAdjustmentPolicy;const LongInt;const LongInt;const LongInt;const LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol AMODE
	.uleb128	19
	.ascii	"AMODE\000"
	.long	.La323-.Ldebug_info0
# Symbol AFROMPPI
	.uleb128	19
	.ascii	"AFROMPPI\000"
	.long	.La120-.Ldebug_info0
# Symbol ATOPPI
	.uleb128	19
	.ascii	"ATOPPI\000"
	.long	.La120-.Ldebug_info0
# Symbol AOLDFORMWIDTH
	.uleb128	19
	.ascii	"AOLDFORMWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol ANEWFORMWIDTH
	.uleb128	19
	.ascii	"ANEWFORMWIDTH\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TWinControl>;<Pointer>;TComponent);
	.uleb128	18
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
	.long	.La103-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	19
	.ascii	"THEOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef constructor CreateParented(<TWinControl>;<Pointer>;QWord);
	.uleb128	22
	.ascii	"CREATEPARENTED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol APARENTWINDOW
	.uleb128	19
	.ascii	"APARENTWINDOW\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef class CreateParentedControl(<Class Of TWinControl>;QWord):TWinControl;
	.uleb128	22
	.ascii	"CREATEPARENTEDCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La397-.Ldebug_info0
# Symbol APARENTWINDOW
	.uleb128	19
	.ascii	"APARENTWINDOW\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TWinControl>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef DockDrop(<TWinControl>;TDragDockObject;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol DRAGDOCKOBJECT
	.uleb128	19
	.ascii	"DRAGDOCKOBJECT\000"
	.long	.La386-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef CanFocus(<TWinControl>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef CanSetFocus(<TWinControl>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef GetControlIndex(<TWinControl>;TControl):LongInt;
	.uleb128	22
	.ascii	"GETCONTROLINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef SetControlIndex(<TWinControl>;TControl;LongInt);
	.uleb128	20
	.ascii	"SETCONTROLINDEX\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
# Symbol NEWINDEX
	.uleb128	19
	.ascii	"NEWINDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Focused(<TWinControl>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef PerformTab(<TWinControl>;Boolean):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol FORWARDTAB
	.uleb128	19
	.ascii	"FORWARDTAB\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef FindChildControl(<TWinControl>;const AnsiString):TControl;
	.uleb128	22
	.ascii	"FINDCHILDCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol CONTROLNAME
	.uleb128	19
	.ascii	"CONTROLNAME\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef SelectNext(<TWinControl>;TWinControl;Boolean;Boolean);
	.uleb128	20
	.ascii	"SELECTNEXT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol CURCONTROL
	.uleb128	19
	.ascii	"CURCONTROL\000"
	.long	.La103-.Ldebug_info0
# Symbol GOFORWARD
	.uleb128	19
	.ascii	"GOFORWARD\000"
	.long	.La29-.Ldebug_info0
# Symbol CHECKTABSTOP
	.uleb128	19
	.ascii	"CHECKTABSTOP\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetTempCursor(<TWinControl>;TCursor);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La399-.Ldebug_info0
	.byte	0
# Procdef BroadCast(<TWinControl>;var <Formal type>);
	.uleb128	20
	.ascii	"BROADCAST\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol TOALLMESSAGE
	.uleb128	19
	.ascii	"TOALLMESSAGE\000"
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef NotifyControls(<TWinControl>;Word);
	.uleb128	20
	.ascii	"NOTIFYCONTROLS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MSG
	.uleb128	19
	.ascii	"MSG\000"
	.long	.La247-.Ldebug_info0
	.byte	0
# Procdef DefaultHandler(<TWinControl>;var <Formal type>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol AMESSAGE
	.uleb128	19
	.ascii	"AMESSAGE\000"
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef GetTextLen(<TWinControl>):LongInt;
	.uleb128	18
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef Invalidate(<TWinControl>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef AddControl(<TWinControl>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef InsertControl(<TWinControl>;TControl);
	.uleb128	20
	.ascii	"INSERTCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef InsertControl(<TWinControl>;TControl;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef RemoveControl(<TWinControl>;TControl);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetEnumeratorControls(<TWinControl>):TWinControlEnumerator;
	.uleb128	22
	.ascii	"GETENUMERATORCONTROLS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La401-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef GetEnumeratorControlsReverse(<TWinControl>):TWinControlEnumerator;
	.uleb128	22
	.ascii	"GETENUMERATORCONTROLSREVERSE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La401-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef Repaint(<TWinControl>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef Update(<TWinControl>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef SetFocus(<TWinControl>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef FlipChildren(<TWinControl>;Boolean);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ALLLEVELS
	.uleb128	19
	.ascii	"ALLLEVELS\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef ScaleBy(<TWinControl>;LongInt;LongInt);
	.uleb128	20
	.ascii	"SCALEBY\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol MULTIPLIER
	.uleb128	19
	.ascii	"MULTIPLIER\000"
	.long	.La120-.Ldebug_info0
# Symbol DIVIDER
	.uleb128	19
	.ascii	"DIVIDER\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetDockCaption(<TWinControl>;<var AnsiString>;TControl):AnsiString;
	.uleb128	18
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
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef UpdateDockCaption(<TWinControl>;TControl="nil");
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol EXCLUDE
	.uleb128	19
	.ascii	"EXCLUDE\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetTabOrderList(<TWinControl>;TFPList);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol LIST
	.uleb128	19
	.ascii	"LIST\000"
	.long	.La224-.Ldebug_info0
	.byte	0
# Procdef HandleAllocated(<TWinControl>):Boolean;
	.uleb128	22
	.ascii	"HANDLEALLOCATED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef ParentHandlesAllocated(<TWinControl>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef HandleNeeded(<TWinControl>);
	.uleb128	20
	.ascii	"HANDLENEEDED\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef BrushCreated(<TWinControl>):Boolean;
	.uleb128	22
	.ascii	"BRUSHCREATED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef EraseBackground(<TWinControl>;QWord);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol DC
	.uleb128	19
	.ascii	"DC\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef IntfUTF8KeyPress(<TWinControl>;var TUTF8Char;LongInt;Boolean):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol UTF8KEY
	.uleb128	19
	.ascii	"UTF8KEY\000"
	.long	.La290-.Ldebug_info0
# Symbol REPEATCOUNT
	.uleb128	19
	.ascii	"REPEATCOUNT\000"
	.long	.La120-.Ldebug_info0
# Symbol SYSTEMKEY
	.uleb128	19
	.ascii	"SYSTEMKEY\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef IntfGetDropFilesTarget(<TWinControl>):TWinControl;
	.uleb128	18
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
	.long	.La103-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef PaintTo(<TWinControl>;QWord;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol DC
	.uleb128	19
	.ascii	"DC\000"
	.long	.La131-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef PaintTo(<TWinControl>;TCanvas;LongInt;LongInt);
	.uleb128	20
	.ascii	"PAINTTO\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ACANVAS
	.uleb128	19
	.ascii	"ACANVAS\000"
	.long	.La404-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetShape(<TWinControl>;TBitmap);
	.uleb128	20
	.ascii	"SETSHAPE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ASHAPE
	.uleb128	19
	.ascii	"ASHAPE\000"
	.long	.La204-.Ldebug_info0
	.byte	0
# Procdef SetShape(<TWinControl>;TRegion);
	.uleb128	20
	.ascii	"SETSHAPE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol ASHAPE
	.uleb128	19
	.ascii	"ASHAPE\000"
	.long	.La407-.Ldebug_info0
	.byte	0
	.byte	0
.La104:
	.uleb128	7
	.long	.La103-.Ldebug_info0
# Definition TControl
.La106:
	.uleb128	5
	.ascii	"TCONTROL\000"
	.long	.La410-.Ldebug_info0
.La410:
	.uleb128	8
	.long	.La108-.Ldebug_info0
.La108:
	.uleb128	9
	.ascii	"TCONTROL\000"
	.uleb128	992
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La413-.Ldebug_info0
	.uleb128	14
	.ascii	"FACTIONLINK\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La414-.Ldebug_info0
	.uleb128	14
	.ascii	"FALIGN\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La367-.Ldebug_info0
	.uleb128	14
	.ascii	"FANCHORS\000"
	.byte	2
	.byte	35
	.uleb128	124
	.byte	3
	.long	.La417-.Ldebug_info0
	.uleb128	14
	.ascii	"FANCHORSIDES\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La419-.Ldebug_info0
	.uleb128	14
	.ascii	"FANCHOREDCONTROLS\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La224-.Ldebug_info0
	.uleb128	14
	.ascii	"FAUTOSIZINGLOCKCOUNT\000"
	.byte	3
	.byte	35
	.uleb128	168
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FBASEBOUNDS\000"
	.byte	3
	.byte	35
	.uleb128	172
	.byte	3
	.long	.La186-.Ldebug_info0
	.uleb128	14
	.ascii	"FBASEBOUNDSLOCK\000"
	.byte	3
	.byte	35
	.uleb128	188
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FBASEPARENTCLIENTSIZE\000"
	.byte	3
	.byte	35
	.uleb128	192
	.byte	3
	.long	.La200-.Ldebug_info0
	.uleb128	14
	.ascii	"FBIDIMODE\000"
	.byte	3
	.byte	35
	.uleb128	200
	.byte	3
	.long	.La421-.Ldebug_info0
	.uleb128	14
	.ascii	"FBORDERSPACING\000"
	.byte	3
	.byte	35
	.uleb128	208
	.byte	3
	.long	.La423-.Ldebug_info0
	.uleb128	14
	.ascii	"FBOUNDSRECTFORNEWPARENT\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La186-.Ldebug_info0
	.uleb128	14
	.ascii	"FCAPTION\000"
	.byte	3
	.byte	35
	.uleb128	232
	.byte	3
	.long	.La282-.Ldebug_info0
	.uleb128	14
	.ascii	"FCAPTUREMOUSEBUTTONS\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La426-.Ldebug_info0
	.uleb128	14
	.ascii	"FCOLOR\000"
	.byte	3
	.byte	35
	.uleb128	244
	.byte	3
	.long	.La391-.Ldebug_info0
	.uleb128	14
	.ascii	"FCONSTRAINTS\000"
	.byte	3
	.byte	35
	.uleb128	248
	.byte	3
	.long	.La428-.Ldebug_info0
	.uleb128	14
	.ascii	"FCONTROLFLAGS\000"
	.byte	3
	.byte	35
	.uleb128	256
	.byte	3
	.long	.La431-.Ldebug_info0
	.uleb128	14
	.ascii	"FCONTROLHANDLERS\000"
	.byte	3
	.byte	35
	.uleb128	264
	.byte	3
	.long	.La433-.Ldebug_info0
	.uleb128	14
	.ascii	"FCONTROLSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	336
	.byte	3
	.long	.La435-.Ldebug_info0
	.uleb128	14
	.ascii	"FDESKTOPFONT\000"
	.byte	3
	.byte	35
	.uleb128	340
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FDOCKORIENTATION\000"
	.byte	3
	.byte	35
	.uleb128	344
	.byte	3
	.long	.La437-.Ldebug_info0
	.uleb128	14
	.ascii	"FDRAGCURSOR\000"
	.byte	3
	.byte	35
	.uleb128	348
	.byte	3
	.long	.La399-.Ldebug_info0
	.uleb128	14
	.ascii	"FDRAGKIND\000"
	.byte	3
	.byte	35
	.uleb128	352
	.byte	3
	.long	.La439-.Ldebug_info0
	.uleb128	14
	.ascii	"FDRAGMODE\000"
	.byte	3
	.byte	35
	.uleb128	356
	.byte	3
	.long	.La441-.Ldebug_info0
	.uleb128	14
	.ascii	"FFLOATINGDOCKSITECLASS\000"
	.byte	3
	.byte	35
	.uleb128	360
	.byte	3
	.long	.La443-.Ldebug_info0
	.uleb128	14
	.ascii	"FFONT\000"
	.byte	3
	.byte	35
	.uleb128	368
	.byte	3
	.long	.La445-.Ldebug_info0
	.uleb128	14
	.ascii	"FHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	376
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FHELPCONTEXT\000"
	.byte	3
	.byte	35
	.uleb128	380
	.byte	3
	.long	.La448-.Ldebug_info0
	.uleb128	14
	.ascii	"FHELPKEYWORD\000"
	.byte	3
	.byte	35
	.uleb128	384
	.byte	3
	.long	.La27-.Ldebug_info0
	.uleb128	14
	.ascii	"FHELPTYPE\000"
	.byte	3
	.byte	35
	.uleb128	392
	.byte	3
	.long	.La450-.Ldebug_info0
	.uleb128	14
	.ascii	"FHINT\000"
	.byte	3
	.byte	35
	.uleb128	400
	.byte	3
	.long	.La282-.Ldebug_info0
	.uleb128	14
	.ascii	"FHOSTDOCKSITE\000"
	.byte	3
	.byte	35
	.uleb128	408
	.byte	3
	.long	.La103-.Ldebug_info0
	.uleb128	14
	.ascii	"FLASTDOCHANGEBOUNDS\000"
	.byte	3
	.byte	35
	.uleb128	416
	.byte	3
	.long	.La186-.Ldebug_info0
	.uleb128	14
	.ascii	"FLASTDOCHANGECLIENTSIZE\000"
	.byte	3
	.byte	35
	.uleb128	432
	.byte	3
	.long	.La284-.Ldebug_info0
	.uleb128	14
	.ascii	"FLASTRESIZECLIENTHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	440
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FLASTRESIZECLIENTWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	444
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FLASTRESIZEHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	448
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FLASTRESIZEWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	452
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FLEFT\000"
	.byte	3
	.byte	35
	.uleb128	456
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FLOADEDCLIENTSIZE\000"
	.byte	3
	.byte	35
	.uleb128	460
	.byte	3
	.long	.La200-.Ldebug_info0
	.uleb128	14
	.ascii	"FLRDOCKWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	468
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCHANGEBOUNDS\000"
	.byte	3
	.byte	35
	.uleb128	472
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCLICK\000"
	.byte	3
	.byte	35
	.uleb128	488
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCONSTRAINEDRESIZE\000"
	.byte	3
	.byte	35
	.uleb128	504
	.byte	3
	.long	.La452-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCONTEXTPOPUP\000"
	.byte	3
	.byte	35
	.uleb128	520
	.byte	3
	.long	.La454-.Ldebug_info0
	.uleb128	14
	.ascii	"FONDBLCLICK\000"
	.byte	3
	.byte	35
	.uleb128	536
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONDRAGDROP\000"
	.byte	3
	.byte	35
	.uleb128	552
	.byte	3
	.long	.La456-.Ldebug_info0
	.uleb128	14
	.ascii	"FONDRAGOVER\000"
	.byte	3
	.byte	35
	.uleb128	568
	.byte	3
	.long	.La458-.Ldebug_info0
	.uleb128	14
	.ascii	"FONEDITINGDONE\000"
	.byte	3
	.byte	35
	.uleb128	584
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONENDDOCK\000"
	.byte	3
	.byte	35
	.uleb128	600
	.byte	3
	.long	.La460-.Ldebug_info0
	.uleb128	14
	.ascii	"FONENDDRAG\000"
	.byte	3
	.byte	35
	.uleb128	616
	.byte	3
	.long	.La460-.Ldebug_info0
	.uleb128	14
	.ascii	"FONMOUSEDOWN\000"
	.byte	3
	.byte	35
	.uleb128	632
	.byte	3
	.long	.La462-.Ldebug_info0
	.uleb128	14
	.ascii	"FONMOUSEENTER\000"
	.byte	3
	.byte	35
	.uleb128	648
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONMOUSELEAVE\000"
	.byte	3
	.byte	35
	.uleb128	664
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONMOUSEMOVE\000"
	.byte	3
	.byte	35
	.uleb128	680
	.byte	3
	.long	.La464-.Ldebug_info0
	.uleb128	14
	.ascii	"FONMOUSEUP\000"
	.byte	3
	.byte	35
	.uleb128	696
	.byte	3
	.long	.La462-.Ldebug_info0
	.uleb128	14
	.ascii	"FONMOUSEWHEEL\000"
	.byte	3
	.byte	35
	.uleb128	712
	.byte	3
	.long	.La466-.Ldebug_info0
	.uleb128	14
	.ascii	"FONMOUSEWHEELDOWN\000"
	.byte	3
	.byte	35
	.uleb128	728
	.byte	3
	.long	.La468-.Ldebug_info0
	.uleb128	14
	.ascii	"FONMOUSEWHEELUP\000"
	.byte	3
	.byte	35
	.uleb128	744
	.byte	3
	.long	.La468-.Ldebug_info0
	.uleb128	14
	.ascii	"FONQUADCLICK\000"
	.byte	3
	.byte	35
	.uleb128	760
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONRESIZE\000"
	.byte	3
	.byte	35
	.uleb128	776
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONSHOWHINT\000"
	.byte	3
	.byte	35
	.uleb128	792
	.byte	3
	.long	.La470-.Ldebug_info0
	.uleb128	14
	.ascii	"FONSTARTDOCK\000"
	.byte	3
	.byte	35
	.uleb128	808
	.byte	3
	.long	.La472-.Ldebug_info0
	.uleb128	14
	.ascii	"FONSTARTDRAG\000"
	.byte	3
	.byte	35
	.uleb128	824
	.byte	3
	.long	.La474-.Ldebug_info0
	.uleb128	14
	.ascii	"FONTRIPLECLICK\000"
	.byte	3
	.byte	35
	.uleb128	840
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FPARENT\000"
	.byte	3
	.byte	35
	.uleb128	856
	.byte	3
	.long	.La103-.Ldebug_info0
	.uleb128	14
	.ascii	"FPARENTBIDIMODE\000"
	.byte	3
	.byte	35
	.uleb128	864
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FPOPUPMENU\000"
	.byte	3
	.byte	35
	.uleb128	872
	.byte	3
	.long	.La476-.Ldebug_info0
	.uleb128	14
	.ascii	"FPREFERREDMINWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	880
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FPREFERREDMINHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	884
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FPREFERREDWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	888
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FPREFERREDHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	892
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FREADBOUNDS\000"
	.byte	3
	.byte	35
	.uleb128	896
	.byte	3
	.long	.La186-.Ldebug_info0
	.uleb128	14
	.ascii	"FSESSIONPROPERTIES\000"
	.byte	3
	.byte	35
	.uleb128	912
	.byte	3
	.long	.La27-.Ldebug_info0
	.uleb128	14
	.ascii	"FSIZELOCK\000"
	.byte	3
	.byte	35
	.uleb128	920
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FTBDOCKHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	924
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FTOP\000"
	.byte	3
	.byte	35
	.uleb128	928
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FUNDOCKHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	932
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FUNDOCKWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	936
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	940
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FWINDOWPROC\000"
	.byte	3
	.byte	35
	.uleb128	944
	.byte	3
	.long	.La479-.Ldebug_info0
	.uleb128	14
	.ascii	"FISCONTROL\000"
	.byte	3
	.byte	35
	.uleb128	960
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FSHOWHINT\000"
	.byte	3
	.byte	35
	.uleb128	961
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FPARENTCOLOR\000"
	.byte	3
	.byte	35
	.uleb128	962
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FPARENTFONT\000"
	.byte	3
	.byte	35
	.uleb128	963
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FPARENTSHOWHINT\000"
	.byte	3
	.byte	35
	.uleb128	964
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FAUTOSIZE\000"
	.byte	3
	.byte	35
	.uleb128	965
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FAUTOSIZINGALL\000"
	.byte	3
	.byte	35
	.uleb128	966
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FAUTOSIZINGSELF\000"
	.byte	3
	.byte	35
	.uleb128	967
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FENABLED\000"
	.byte	3
	.byte	35
	.uleb128	968
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FMOUSEENTERED\000"
	.byte	3
	.byte	35
	.uleb128	969
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FVISIBLE\000"
	.byte	3
	.byte	35
	.uleb128	970
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FACCESSIBLEOBJECT\000"
	.byte	3
	.byte	35
	.uleb128	976
	.byte	2
	.long	.La481-.Ldebug_info0
	.uleb128	14
	.ascii	"FCONTROLSTATE\000"
	.byte	3
	.byte	35
	.uleb128	984
	.byte	2
	.long	.La484-.Ldebug_info0
	.uleb128	14
	.ascii	"FCURSOR\000"
	.byte	3
	.byte	35
	.uleb128	988
	.byte	2
	.long	.La399-.Ldebug_info0
	.uleb128	14
	.ascii	"AUTOSIZING\000"
	.byte	3
	.byte	35
	.uleb128	967
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"AUTOSIZINGLOCKCOUNT\000"
	.byte	3
	.byte	35
	.uleb128	168
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"ACTIONLINK\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La414-.Ldebug_info0
	.uleb128	14
	.ascii	"DESKTOPFONT\000"
	.byte	3
	.byte	35
	.uleb128	340
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"DRAGCURSOR\000"
	.byte	3
	.byte	35
	.uleb128	348
	.byte	3
	.long	.La399-.Ldebug_info0
	.uleb128	14
	.ascii	"DRAGKIND\000"
	.byte	3
	.byte	35
	.uleb128	352
	.byte	3
	.long	.La439-.Ldebug_info0
	.uleb128	14
	.ascii	"DRAGMODE\000"
	.byte	3
	.byte	35
	.uleb128	356
	.byte	3
	.long	.La441-.Ldebug_info0
	.uleb128	14
	.ascii	"PARENTCOLOR\000"
	.byte	3
	.byte	35
	.uleb128	962
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"PARENTFONT\000"
	.byte	3
	.byte	35
	.uleb128	963
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"PARENTSHOWHINT\000"
	.byte	3
	.byte	35
	.uleb128	964
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"SESSIONPROPERTIES\000"
	.byte	3
	.byte	35
	.uleb128	912
	.byte	3
	.long	.La27-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCONSTRAINEDRESIZE\000"
	.byte	3
	.byte	35
	.uleb128	504
	.byte	3
	.long	.La452-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCONTEXTPOPUP\000"
	.byte	3
	.byte	35
	.uleb128	520
	.byte	3
	.long	.La454-.Ldebug_info0
	.uleb128	14
	.ascii	"ONDBLCLICK\000"
	.byte	3
	.byte	35
	.uleb128	536
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONTRIPLECLICK\000"
	.byte	3
	.byte	35
	.uleb128	840
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONQUADCLICK\000"
	.byte	3
	.byte	35
	.uleb128	760
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONDRAGDROP\000"
	.byte	3
	.byte	35
	.uleb128	552
	.byte	3
	.long	.La456-.Ldebug_info0
	.uleb128	14
	.ascii	"ONDRAGOVER\000"
	.byte	3
	.byte	35
	.uleb128	568
	.byte	3
	.long	.La458-.Ldebug_info0
	.uleb128	14
	.ascii	"ONENDDOCK\000"
	.byte	3
	.byte	35
	.uleb128	600
	.byte	3
	.long	.La460-.Ldebug_info0
	.uleb128	14
	.ascii	"ONENDDRAG\000"
	.byte	3
	.byte	35
	.uleb128	616
	.byte	3
	.long	.La460-.Ldebug_info0
	.uleb128	14
	.ascii	"ONMOUSEDOWN\000"
	.byte	3
	.byte	35
	.uleb128	632
	.byte	3
	.long	.La462-.Ldebug_info0
	.uleb128	14
	.ascii	"ONMOUSEMOVE\000"
	.byte	3
	.byte	35
	.uleb128	680
	.byte	3
	.long	.La464-.Ldebug_info0
	.uleb128	14
	.ascii	"ONMOUSEUP\000"
	.byte	3
	.byte	35
	.uleb128	696
	.byte	3
	.long	.La462-.Ldebug_info0
	.uleb128	14
	.ascii	"ONMOUSEENTER\000"
	.byte	3
	.byte	35
	.uleb128	648
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONMOUSELEAVE\000"
	.byte	3
	.byte	35
	.uleb128	664
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONMOUSEWHEEL\000"
	.byte	3
	.byte	35
	.uleb128	712
	.byte	3
	.long	.La466-.Ldebug_info0
	.uleb128	14
	.ascii	"ONMOUSEWHEELDOWN\000"
	.byte	3
	.byte	35
	.uleb128	728
	.byte	3
	.long	.La468-.Ldebug_info0
	.uleb128	14
	.ascii	"ONMOUSEWHEELUP\000"
	.byte	3
	.byte	35
	.uleb128	744
	.byte	3
	.long	.La468-.Ldebug_info0
	.uleb128	14
	.ascii	"ONSTARTDOCK\000"
	.byte	3
	.byte	35
	.uleb128	808
	.byte	3
	.long	.La472-.Ldebug_info0
	.uleb128	14
	.ascii	"ONSTARTDRAG\000"
	.byte	3
	.byte	35
	.uleb128	824
	.byte	3
	.long	.La474-.Ldebug_info0
	.uleb128	14
	.ascii	"ONEDITINGDONE\000"
	.byte	3
	.byte	35
	.uleb128	584
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	11
	.ascii	"FCOMPSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	990
	.long	.La109-.Ldebug_info0
	.uleb128	14
	.ascii	"BASEBOUNDS\000"
	.byte	3
	.byte	35
	.uleb128	172
	.byte	3
	.long	.La186-.Ldebug_info0
	.uleb128	14
	.ascii	"READBOUNDS\000"
	.byte	3
	.byte	35
	.uleb128	896
	.byte	3
	.long	.La186-.Ldebug_info0
	.uleb128	14
	.ascii	"BASEPARENTCLIENTSIZE\000"
	.byte	3
	.byte	35
	.uleb128	192
	.byte	3
	.long	.La200-.Ldebug_info0
	.uleb128	14
	.ascii	"ALIGN\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La367-.Ldebug_info0
	.uleb128	14
	.ascii	"ANCHORS\000"
	.byte	2
	.byte	35
	.uleb128	124
	.byte	3
	.long	.La417-.Ldebug_info0
	.uleb128	14
	.ascii	"AUTOSIZE\000"
	.byte	3
	.byte	35
	.uleb128	965
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"BORDERSPACING\000"
	.byte	3
	.byte	35
	.uleb128	208
	.byte	3
	.long	.La423-.Ldebug_info0
	.uleb128	14
	.ascii	"BOUNDSRECTFORNEWPARENT\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La186-.Ldebug_info0
	.uleb128	14
	.ascii	"CAPTUREMOUSEBUTTONS\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La426-.Ldebug_info0
	.uleb128	14
	.ascii	"COLOR\000"
	.byte	3
	.byte	35
	.uleb128	244
	.byte	3
	.long	.La391-.Ldebug_info0
	.uleb128	14
	.ascii	"CONSTRAINTS\000"
	.byte	3
	.byte	35
	.uleb128	248
	.byte	3
	.long	.La428-.Ldebug_info0
	.uleb128	14
	.ascii	"CONTROLSTATE\000"
	.byte	3
	.byte	35
	.uleb128	984
	.byte	2
	.long	.La484-.Ldebug_info0
	.uleb128	14
	.ascii	"CONTROLSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	336
	.byte	3
	.long	.La435-.Ldebug_info0
	.uleb128	14
	.ascii	"FONT\000"
	.byte	3
	.byte	35
	.uleb128	368
	.byte	3
	.long	.La445-.Ldebug_info0
	.uleb128	14
	.ascii	"ISCONTROL\000"
	.byte	3
	.byte	35
	.uleb128	960
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"MOUSEENTERED\000"
	.byte	3
	.byte	35
	.uleb128	969
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCHANGEBOUNDS\000"
	.byte	3
	.byte	35
	.uleb128	472
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCLICK\000"
	.byte	3
	.byte	35
	.uleb128	488
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONRESIZE\000"
	.byte	3
	.byte	35
	.uleb128	776
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONSHOWHINT\000"
	.byte	3
	.byte	35
	.uleb128	792
	.byte	3
	.long	.La470-.Ldebug_info0
	.uleb128	14
	.ascii	"PARENT\000"
	.byte	3
	.byte	35
	.uleb128	856
	.byte	3
	.long	.La103-.Ldebug_info0
	.uleb128	14
	.ascii	"SHOWHINT\000"
	.byte	3
	.byte	35
	.uleb128	961
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"VISIBLE\000"
	.byte	3
	.byte	35
	.uleb128	970
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"WINDOWPROC\000"
	.byte	3
	.byte	35
	.uleb128	944
	.byte	3
	.long	.La479-.Ldebug_info0
	.uleb128	14
	.ascii	"DOCKORIENTATION\000"
	.byte	3
	.byte	35
	.uleb128	344
	.byte	3
	.long	.La437-.Ldebug_info0
	.uleb128	14
	.ascii	"HOSTDOCKSITE\000"
	.byte	3
	.byte	35
	.uleb128	408
	.byte	3
	.long	.La103-.Ldebug_info0
	.uleb128	14
	.ascii	"BIDIMODE\000"
	.byte	3
	.byte	35
	.uleb128	200
	.byte	3
	.long	.La421-.Ldebug_info0
	.uleb128	14
	.ascii	"PARENTBIDIMODE\000"
	.byte	3
	.byte	35
	.uleb128	864
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"LEFT\000"
	.byte	3
	.byte	35
	.uleb128	456
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"HEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	376
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"HINT\000"
	.byte	3
	.byte	35
	.uleb128	400
	.byte	3
	.long	.La282-.Ldebug_info0
	.uleb128	14
	.ascii	"TOP\000"
	.byte	3
	.byte	35
	.uleb128	928
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"WIDTH\000"
	.byte	3
	.byte	35
	.uleb128	940
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"HELPTYPE\000"
	.byte	3
	.byte	35
	.uleb128	392
	.byte	3
	.long	.La450-.Ldebug_info0
	.uleb128	14
	.ascii	"HELPKEYWORD\000"
	.byte	3
	.byte	35
	.uleb128	384
	.byte	3
	.long	.La27-.Ldebug_info0
	.uleb128	14
	.ascii	"HELPCONTEXT\000"
	.byte	3
	.byte	35
	.uleb128	380
	.byte	3
	.long	.La448-.Ldebug_info0
# Procdef CaptureMouseButtonsIsStored(<TControl>):Boolean;
	.uleb128	15
	.ascii	"CAPTUREMOUSEBUTTONSISSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef DoActionChange(<TControl>;TObject);
	.uleb128	25
	.ascii	"DOACTIONCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef GetAccessibleDescription(<TControl>;<var TTranslateString>):AnsiString;
	.uleb128	15
	.ascii	"GETACCESSIBLEDESCRIPTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La282-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef GetAccessibleValue(<TControl>;<var TTranslateString>):AnsiString;
	.uleb128	15
	.ascii	"GETACCESSIBLEVALUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La282-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef GetAccessibleRole(<TControl>):<enumeration type>;
	.uleb128	15
	.ascii	"GETACCESSIBLEROLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La486-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetAutoSizingAll(<TControl>):Boolean;
	.uleb128	15
	.ascii	"GETAUTOSIZINGALL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetAnchorSide(<TControl>;TAnchorKind):TAnchorSide;
	.uleb128	15
	.ascii	"GETANCHORSIDE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La488-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol KIND
	.uleb128	19
	.ascii	"KIND\000"
	.long	.La491-.Ldebug_info0
	.byte	0
# Procdef GetAnchoredControls(<TControl>;LongInt):TControl;
	.uleb128	15
	.ascii	"GETANCHOREDCONTROLS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La106-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetBoundsRect(<TControl>;<var TRect>):<record type>;
	.uleb128	15
	.ascii	"GETBOUNDSRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La186-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef GetClientHeight(<TControl>):LongInt;
	.uleb128	15
	.ascii	"GETCLIENTHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetClientWidth(<TControl>):LongInt;
	.uleb128	15
	.ascii	"GETCLIENTWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetLRDockWidth(<TControl>):LongInt;
	.uleb128	15
	.ascii	"GETLRDOCKWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetTBDockHeight(<TControl>):LongInt;
	.uleb128	15
	.ascii	"GETTBDOCKHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetText(<TControl>;<var TTranslateString>):AnsiString;
	.uleb128	15
	.ascii	"GETTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La282-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef GetUndockHeight(<TControl>):LongInt;
	.uleb128	15
	.ascii	"GETUNDOCKHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetUndockWidth(<TControl>):LongInt;
	.uleb128	15
	.ascii	"GETUNDOCKWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsAnchorsStored(<TControl>):Boolean;
	.uleb128	15
	.ascii	"ISANCHORSSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsBiDiModeStored(<TControl>):Boolean;
	.uleb128	15
	.ascii	"ISBIDIMODESTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsEnabledStored(<TControl>):Boolean;
	.uleb128	15
	.ascii	"ISENABLEDSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsFontStored(<TControl>):Boolean;
	.uleb128	15
	.ascii	"ISFONTSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsHintStored(<TControl>):Boolean;
	.uleb128	15
	.ascii	"ISHINTSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsHelpContextStored(<TControl>):Boolean;
	.uleb128	15
	.ascii	"ISHELPCONTEXTSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsHelpKeyWordStored(<TControl>):Boolean;
	.uleb128	15
	.ascii	"ISHELPKEYWORDSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsShowHintStored(<TControl>):Boolean;
	.uleb128	15
	.ascii	"ISSHOWHINTSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsVisibleStored(<TControl>):Boolean;
	.uleb128	15
	.ascii	"ISVISIBLESTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef DoBeforeMouseMessage(<TControl>);
	.uleb128	25
	.ascii	"DOBEFOREMOUSEMESSAGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef DoConstrainedResize(<TControl>;var LongInt;var LongInt;var LongInt;var LongInt);
	.uleb128	25
	.ascii	"DOCONSTRAINEDRESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol NEWLEFT
	.uleb128	19
	.ascii	"NEWLEFT\000"
	.long	.La120-.Ldebug_info0
# Symbol NEWTOP
	.uleb128	19
	.ascii	"NEWTOP\000"
	.long	.La120-.Ldebug_info0
# Symbol NEWWIDTH
	.uleb128	19
	.ascii	"NEWWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol NEWHEIGHT
	.uleb128	19
	.ascii	"NEWHEIGHT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef DoMouseDown(<TControl>;var TLMMouse;TMouseButton;TShiftState);
	.uleb128	25
	.ascii	"DOMOUSEDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
# Symbol BUTTON
	.uleb128	19
	.ascii	"BUTTON\000"
	.long	.La495-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
	.byte	0
# Procdef DoMouseUp(<TControl>;var TLMMouse;TMouseButton);
	.uleb128	25
	.ascii	"DOMOUSEUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
# Symbol BUTTON
	.uleb128	19
	.ascii	"BUTTON\000"
	.long	.La495-.Ldebug_info0
	.byte	0
# Procdef SetAccessibleDescription(<TControl>;TTranslateString);
	.uleb128	25
	.ascii	"SETACCESSIBLEDESCRIPTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef SetAccessibleValue(<TControl>;TTranslateString);
	.uleb128	25
	.ascii	"SETACCESSIBLEVALUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef SetAccessibleRole(<TControl>;TLazAccessibilityRole);
	.uleb128	25
	.ascii	"SETACCESSIBLEROLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La486-.Ldebug_info0
	.byte	0
# Procdef SetAnchorSide(<TControl>;TAnchorKind;TAnchorSide);
	.uleb128	25
	.ascii	"SETANCHORSIDE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol KIND
	.uleb128	19
	.ascii	"KIND\000"
	.long	.La491-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La488-.Ldebug_info0
	.byte	0
# Procdef SetBorderSpacing(<TControl>;const TControlBorderSpacing);
	.uleb128	25
	.ascii	"SETBORDERSPACING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La423-.Ldebug_info0
	.byte	0
# Procdef SetBoundsRect(<TControl>;const TRect);
	.uleb128	25
	.ascii	"SETBOUNDSRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef SetBoundsRectForNewParent(<TControl>;const TRect);
	.uleb128	25
	.ascii	"SETBOUNDSRECTFORNEWPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef SetClientHeight(<TControl>;LongInt);
	.uleb128	25
	.ascii	"SETCLIENTHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetClientSize(<TControl>;const TPoint);
	.uleb128	25
	.ascii	"SETCLIENTSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef SetClientWidth(<TControl>;LongInt);
	.uleb128	25
	.ascii	"SETCLIENTWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetConstraints(<TControl>;const TSizeConstraints);
	.uleb128	25
	.ascii	"SETCONSTRAINTS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La428-.Ldebug_info0
	.byte	0
# Procdef SetDesktopFont(<TControl>;const Boolean);
	.uleb128	25
	.ascii	"SETDESKTOPFONT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetDragCursor(<TControl>;const TCursor);
	.uleb128	25
	.ascii	"SETDRAGCURSOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La399-.Ldebug_info0
	.byte	0
# Procdef SetFont(<TControl>;TFont);
	.uleb128	25
	.ascii	"SETFONT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef SetHeight(<TControl>;LongInt);
	.uleb128	25
	.ascii	"SETHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetHelpContext(<TControl>;const THelpContext);
	.uleb128	25
	.ascii	"SETHELPCONTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La448-.Ldebug_info0
	.byte	0
# Procdef SetHelpKeyword(<TControl>;const AnsiString);
	.uleb128	25
	.ascii	"SETHELPKEYWORD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef SetHostDockSite(<TControl>;const TWinControl);
	.uleb128	25
	.ascii	"SETHOSTDOCKSITE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef SetLeft(<TControl>;LongInt);
	.uleb128	25
	.ascii	"SETLEFT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetMouseCapture(<TControl>;Boolean);
	.uleb128	25
	.ascii	"SETMOUSECAPTURE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetParentShowHint(<TControl>;Boolean);
	.uleb128	25
	.ascii	"SETPARENTSHOWHINT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetParentColor(<TControl>;Boolean);
	.uleb128	25
	.ascii	"SETPARENTCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetParentFont(<TControl>;Boolean);
	.uleb128	25
	.ascii	"SETPARENTFONT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetPopupMenu(<TControl>;TPopupMenu);
	.uleb128	25
	.ascii	"SETPOPUPMENU\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La476-.Ldebug_info0
	.byte	0
# Procdef SetShowHint(<TControl>;Boolean);
	.uleb128	25
	.ascii	"SETSHOWHINT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetText(<TControl>;const TTranslateString);
	.uleb128	25
	.ascii	"SETTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef SetTop(<TControl>;LongInt);
	.uleb128	25
	.ascii	"SETTOP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetWidth(<TControl>;LongInt);
	.uleb128	25
	.ascii	"SETWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La497-.Ldebug_info0
	.byte	0
# Procdef GetCursor(<TControl>):SmallInt;
	.uleb128	26
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
	.long	.La399-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef SetCursor(<TControl>;TCursor);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La399-.Ldebug_info0
	.byte	0
# Procdef SetVisible(<TControl>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DoOnParentHandleDestruction(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef DoAutoSize(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef DoAllAutoSize(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef BeginAutoSizing(<TControl>);
	.uleb128	25
	.ascii	"BEGINAUTOSIZING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef EndAutoSizing(<TControl>);
	.uleb128	25
	.ascii	"ENDAUTOSIZING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef AnchorSideChanged(<TControl>;TAnchorSide);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol THEANCHORSIDE
	.uleb128	19
	.ascii	"THEANCHORSIDE\000"
	.long	.La488-.Ldebug_info0
	.byte	0
# Procdef ForeignAnchorSideChanged(<TControl>;TAnchorSide;TAnchorSideChangeOperation);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol THEANCHORSIDE
	.uleb128	19
	.ascii	"THEANCHORSIDE\000"
	.long	.La488-.Ldebug_info0
# Symbol OPERATION
	.uleb128	19
	.ascii	"OPERATION\000"
	.long	.La499-.Ldebug_info0
	.byte	0
# Procdef SetAlign(<TControl>;TAlign);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La367-.Ldebug_info0
	.byte	0
# Procdef SetAnchors(<TControl>;const TAnchors);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La417-.Ldebug_info0
	.byte	0
# Procdef SetAutoSize(<TControl>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef BoundsChanged(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef CreateControlBorderSpacing(<TControl>):TControlBorderSpacing;
	.uleb128	26
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
	.long	.La423-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef DoConstraintsChange(<TControl>;TObject);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef DoBorderSpacingChange(<TControl>;TObject;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
# Symbol INNERSPACECHANGED
	.uleb128	19
	.ascii	"INNERSPACECHANGED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef IsBorderSpacingInnerBorderStored(<TControl>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsCaptionStored(<TControl>):Boolean;
	.uleb128	15
	.ascii	"ISCAPTIONSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef SendMoveSizeMessages(<TControl>;Boolean;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SIZECHANGED
	.uleb128	19
	.ascii	"SIZECHANGED\000"
	.long	.La29-.Ldebug_info0
# Symbol POSCHANGED
	.uleb128	19
	.ascii	"POSCHANGED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef ConstrainedResize(<TControl>;var TConstraintSize;var TConstraintSize;var TConstraintSize;var TConstraintSize);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MINWIDTH
	.uleb128	19
	.ascii	"MINWIDTH\000"
	.long	.La501-.Ldebug_info0
# Symbol MINHEIGHT
	.uleb128	19
	.ascii	"MINHEIGHT\000"
	.long	.La501-.Ldebug_info0
# Symbol MAXWIDTH
	.uleb128	19
	.ascii	"MAXWIDTH\000"
	.long	.La501-.Ldebug_info0
# Symbol MAXHEIGHT
	.uleb128	19
	.ascii	"MAXHEIGHT\000"
	.long	.La501-.Ldebug_info0
	.byte	0
# Procdef CalculatePreferredSize(<TControl>;var LongInt;var LongInt;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol PREFERREDWIDTH
	.uleb128	19
	.ascii	"PREFERREDWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol PREFERREDHEIGHT
	.uleb128	19
	.ascii	"PREFERREDHEIGHT\000"
	.long	.La120-.Ldebug_info0
# Symbol WITHTHEMESPACE
	.uleb128	19
	.ascii	"WITHTHEMESPACE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DoOnResize(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef DoOnChangeBounds(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef CheckOnChangeBounds(<TControl>);
	.uleb128	25
	.ascii	"CHECKONCHANGEBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef Resize(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef RequestAlign(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef UpdateAnchorRules(<TControl>);
	.uleb128	25
	.ascii	"UPDATEANCHORRULES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef ChangeBounds(<TControl>;LongInt;LongInt;LongInt;LongInt;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ALEFT
	.uleb128	19
	.ascii	"ALEFT\000"
	.long	.La120-.Ldebug_info0
# Symbol ATOP
	.uleb128	19
	.ascii	"ATOP\000"
	.long	.La120-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La120-.Ldebug_info0
# Symbol KEEPBASE
	.uleb128	19
	.ascii	"KEEPBASE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DoSetBounds(<TControl>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ALEFT
	.uleb128	19
	.ascii	"ALEFT\000"
	.long	.La120-.Ldebug_info0
# Symbol ATOP
	.uleb128	19
	.ascii	"ATOP\000"
	.long	.La120-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef ScaleConstraints(<TControl>;LongInt;LongInt);
	.uleb128	25
	.ascii	"SCALECONSTRAINTS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MULTIPLIER
	.uleb128	19
	.ascii	"MULTIPLIER\000"
	.long	.La120-.Ldebug_info0
# Symbol DIVIDER
	.uleb128	19
	.ascii	"DIVIDER\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef ChangeScale(<TControl>;LongInt;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MULTIPLIER
	.uleb128	19
	.ascii	"MULTIPLIER\000"
	.long	.La120-.Ldebug_info0
# Symbol DIVIDER
	.uleb128	19
	.ascii	"DIVIDER\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef CanAutoSize(<TControl>;var LongInt;var LongInt):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol NEWWIDTH
	.uleb128	19
	.ascii	"NEWWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol NEWHEIGHT
	.uleb128	19
	.ascii	"NEWHEIGHT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef UpdateAlignIndex(<TControl>);
	.uleb128	25
	.ascii	"UPDATEALIGNINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef SetBiDiMode(<TControl>;TBiDiMode);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La421-.Ldebug_info0
	.byte	0
# Procdef SetParentBiDiMode(<TControl>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef IsAParentAligning(<TControl>):Boolean;
	.uleb128	15
	.ascii	"ISAPARENTALIGNING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetClientOrigin(<TControl>):<record type>;
	.uleb128	26
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
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetClientRect(<TControl>;<var TRect>):<record type>;
	.uleb128	26
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
	.long	.La186-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef GetLogicalClientRect(<TControl>;<var TRect>):<record type>;
	.uleb128	26
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
	.long	.La186-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef GetScrolledClientRect(<TControl>;<var TRect>):<record type>;
	.uleb128	26
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
	.long	.La186-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef GetClientScrollOffset(<TControl>):<record type>;
	.uleb128	26
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
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetControlOrigin(<TControl>):<record type>;
	.uleb128	26
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
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsClientHeightStored(<TControl>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsClientWidthStored(<TControl>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef WidthIsAnchored(<TControl>):Boolean;
	.uleb128	15
	.ascii	"WIDTHISANCHORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef HeightIsAnchored(<TControl>):Boolean;
	.uleb128	15
	.ascii	"HEIGHTISANCHORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef WMCancelMode(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"WMCANCELMODE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef WMContextMenu(<TControl>;var TLMContextMenu);
	.uleb128	25
	.ascii	"WMCONTEXTMENU\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La375-.Ldebug_info0
	.byte	0
# Procdef WMLButtonDown(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMLBUTTONDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMRButtonDown(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMRBUTTONDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMMButtonDown(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMMBUTTONDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMXButtonDown(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMXBUTTONDOWN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMLButtonDBLCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMLBUTTONDBLCLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMRButtonDBLCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMRBUTTONDBLCLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMMButtonDBLCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMMBUTTONDBLCLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMXButtonDBLCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMXBUTTONDBLCLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMLButtonTripleCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMLBUTTONTRIPLECLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMRButtonTripleCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMRBUTTONTRIPLECLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMMButtonTripleCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMMBUTTONTRIPLECLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMXButtonTripleCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMXBUTTONTRIPLECLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMLButtonQuadCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMLBUTTONQUADCLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMRButtonQuadCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMRBUTTONQUADCLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMMButtonQuadCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMMBUTTONQUADCLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMXButtonQuadCLK(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMXBUTTONQUADCLK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMMouseMove(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMMOUSEMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMLButtonUp(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMLBUTTONUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMRButtonUp(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMRBUTTONUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMMButtonUp(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMMBUTTONUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMXButtonUp(<TControl>;var TLMMouse);
	.uleb128	25
	.ascii	"WMXBUTTONUP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La493-.Ldebug_info0
	.byte	0
# Procdef WMMouseWheel(<TControl>;var TLMMouseEvent);
	.uleb128	25
	.ascii	"WMMOUSEWHEEL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La503-.Ldebug_info0
	.byte	0
# Procdef WMMove(<TControl>;var TLMMove);
	.uleb128	25
	.ascii	"WMMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La176-.Ldebug_info0
	.byte	0
# Procdef WMSize(<TControl>;var TWMSize);
	.uleb128	25
	.ascii	"WMSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La180-.Ldebug_info0
	.byte	0
# Procdef WMWindowPosChanged(<TControl>;var TLMWindowPosMsg);
	.uleb128	25
	.ascii	"WMWINDOWPOSCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La182-.Ldebug_info0
	.byte	0
# Procdef CMChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef LMCaptureChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"LMCAPTURECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMBiDiModeChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMBIDIMODECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMSysFontChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMSYSFONTCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMEnabledChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMENABLEDCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMHitTest(<TControl>;var TLMNCHITTEST);
	.uleb128	25
	.ascii	"CMHITTEST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La505-.Ldebug_info0
	.byte	0
# Procdef CMMouseEnter(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMMOUSEENTER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMMouseLeave(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMMOUSELEAVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMHintShow(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMHINTSHOW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMParentBiDiModeChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMPARENTBIDIMODECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMParentColorChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMPARENTCOLORCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMParentFontChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMPARENTFONTCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMParentShowHintChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMPARENTSHOWHINTCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMVisibleChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMVISIBLECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMTextChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMTEXTCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMCursorChanged(<TControl>;var TMessage);
	.uleb128	25
	.ascii	"CMCURSORCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CalculateDockSizes(<TControl>);
	.uleb128	25
	.ascii	"CALCULATEDOCKSIZES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef CreateFloatingDockSite(<TControl>;const TRect):TWinControl;
	.uleb128	15
	.ascii	"CREATEFLOATINGDOCKSITE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La103-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol BOUNDS
	.uleb128	19
	.ascii	"BOUNDS\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef GetDockEdge(<TControl>;const TPoint):<enumeration type>;
	.uleb128	26
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
	.long	.La367-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MOUSEPOS
	.uleb128	19
	.ascii	"MOUSEPOS\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef GetDragImages(<TControl>):TDragImageList;
	.uleb128	26
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
	.long	.La507-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetFloating(<TControl>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetFloatingDockSiteClass(<TControl>):Class Of TWinControl;
	.uleb128	26
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
	.long	.La443-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef BeforeDragStart(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef BeginAutoDrag(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef DoFloatMsg(<TControl>;TDragDockObject);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ADOCKSOURCE
	.uleb128	19
	.ascii	"ADOCKSOURCE\000"
	.long	.La386-.Ldebug_info0
	.byte	0
# Procdef DockTrackNoTarget(<TControl>;TDragDockObject;LongInt;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La386-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef DoDock(<TControl>;TWinControl;var TRect);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol NEWDOCKSITE
	.uleb128	19
	.ascii	"NEWDOCKSITE\000"
	.long	.La103-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef DoDragMsg(<TControl>;TDragMessage;TPoint;TDragObject;TControl;Boolean):Int64;
	.uleb128	26
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
	.long	.La71-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ADRAGMESSAGE
	.uleb128	19
	.ascii	"ADRAGMESSAGE\000"
	.long	.La381-.Ldebug_info0
# Symbol APOSITION
	.uleb128	19
	.ascii	"APOSITION\000"
	.long	.La284-.Ldebug_info0
# Symbol ADRAGOBJECT
	.uleb128	19
	.ascii	"ADRAGOBJECT\000"
	.long	.La383-.Ldebug_info0
# Symbol ATARGET
	.uleb128	19
	.ascii	"ATARGET\000"
	.long	.La106-.Ldebug_info0
# Symbol ADOCKING
	.uleb128	19
	.ascii	"ADOCKING\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DoEndDock(<TControl>;TObject;LongInt;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol TARGET
	.uleb128	19
	.ascii	"TARGET\000"
	.long	.La20-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef DoEndDrag(<TControl>;TObject;LongInt;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol TARGET
	.uleb128	19
	.ascii	"TARGET\000"
	.long	.La20-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef DoStartDock(<TControl>;var TDragObject);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol DRAGOBJECT
	.uleb128	19
	.ascii	"DRAGOBJECT\000"
	.long	.La383-.Ldebug_info0
	.byte	0
# Procdef DoStartDrag(<TControl>;var TDragObject);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol DRAGOBJECT
	.uleb128	19
	.ascii	"DRAGOBJECT\000"
	.long	.La383-.Ldebug_info0
	.byte	0
# Procdef DragCanceled(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef DragOver(<TControl>;TObject;LongInt;LongInt;TDragState;var Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La20-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol STATE
	.uleb128	19
	.ascii	"STATE\000"
	.long	.La389-.Ldebug_info0
# Symbol ACCEPT
	.uleb128	19
	.ascii	"ACCEPT\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef PositionDockRect(<TControl>;TDragDockObject);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol DRAGDOCKOBJECT
	.uleb128	19
	.ascii	"DRAGDOCKOBJECT\000"
	.long	.La386-.Ldebug_info0
	.byte	0
# Procdef SetDragMode(<TControl>;TDragMode);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La441-.Ldebug_info0
	.byte	0
# Procdef GetDefaultDockCaption(<TControl>;<var AnsiString>):AnsiString;
	.uleb128	26
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
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef Click(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef DblClick(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef TripleClick(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef QuadClick(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetMousePosFromMessage(<TControl>;const TSmallPoint):<record type>;
	.uleb128	15
	.ascii	"GETMOUSEPOSFROMMESSAGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGEMOUSEPOS
	.uleb128	19
	.ascii	"MESSAGEMOUSEPOS\000"
	.long	.La510-.Ldebug_info0
	.byte	0
# Procdef MouseDown(<TControl>;TMouseButton;TShiftState;LongInt;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol BUTTON
	.uleb128	19
	.ascii	"BUTTON\000"
	.long	.La495-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef MouseMove(<TControl>;TShiftState;LongInt;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef MouseUp(<TControl>;TMouseButton;TShiftState;LongInt;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol BUTTON
	.uleb128	19
	.ascii	"BUTTON\000"
	.long	.La495-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef MouseEnter(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef MouseLeave(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef DialogChar(<TControl>;var TLMKey):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef UpdateMouseCursor(<TControl>;LongInt;LongInt);
	.uleb128	25
	.ascii	"UPDATEMOUSECURSOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Changed(<TControl>);
	.uleb128	25
	.ascii	"CHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetPalette(<TControl>):QWord;
	.uleb128	26
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
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef ChildClassAllowed(<TControl>;TClass):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol CHILDCLASS
	.uleb128	19
	.ascii	"CHILDCLASS\000"
	.long	.La57-.Ldebug_info0
	.byte	0
# Procdef ReadState(<TControl>;TReader);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol READER
	.uleb128	19
	.ascii	"READER\000"
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef LoadedAll(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef DefineProperties(<TControl>;TFiler);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol FILER
	.uleb128	19
	.ascii	"FILER\000"
	.long	.La240-.Ldebug_info0
	.byte	0
# Procdef AssignTo(<TControl>;TPersistent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol DEST
	.uleb128	19
	.ascii	"DEST\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef FormEndUpdated(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef InvalidateControl(<TControl>;Boolean;Boolean);
	.uleb128	25
	.ascii	"INVALIDATECONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol CTRLISVISIBLE
	.uleb128	19
	.ascii	"CTRLISVISIBLE\000"
	.long	.La29-.Ldebug_info0
# Symbol CTRLISOPAQUE
	.uleb128	19
	.ascii	"CTRLISOPAQUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef InvalidateControl(<TControl>;Boolean;Boolean;Boolean);
	.uleb128	25
	.ascii	"INVALIDATECONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol CTRLISVISIBLE
	.uleb128	19
	.ascii	"CTRLISVISIBLE\000"
	.long	.La29-.Ldebug_info0
# Symbol CTRLISOPAQUE
	.uleb128	19
	.ascii	"CTRLISOPAQUE\000"
	.long	.La29-.Ldebug_info0
# Symbol IGNOREWINCONTROLS
	.uleb128	19
	.ascii	"IGNOREWINCONTROLS\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef FontChanged(<TControl>;TObject);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef ParentFontChanged(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetAction(<TControl>):TBasicAction;
	.uleb128	26
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
	.long	.La197-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef RealGetText(<TControl>;<var TTranslateString>):AnsiString;
	.uleb128	26
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
	.long	.La282-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef RealSetText(<TControl>;const TTranslateString);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef TextChanged(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetCachedText(<TControl>;var TTranslateString):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol CACHEDTEXT
	.uleb128	19
	.ascii	"CACHEDTEXT\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef SetAction(<TControl>;TBasicAction);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La197-.Ldebug_info0
	.byte	0
# Procdef SetColor(<TControl>;TGraphicsColor);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La391-.Ldebug_info0
	.byte	0
# Procdef SetEnabled(<TControl>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetHint(<TControl>;const TTranslateString);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef SetName(<TControl>;const AnsiString);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef SetParent(<TControl>;TWinControl);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol NEWPARENT
	.uleb128	19
	.ascii	"NEWPARENT\000"
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef SetParentComponent(<TControl>;TComponent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol NEWPARENTCOMPONENT
	.uleb128	19
	.ascii	"NEWPARENTCOMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef WndProc(<TControl>;var TMessage);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol THEMESSAGE
	.uleb128	19
	.ascii	"THEMESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef ParentFormHandleInitialized(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetMouseCapture(<TControl>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef CaptureChanged(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef Notification(<TControl>;TComponent;TOperation);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
# Symbol OPERATION
	.uleb128	19
	.ascii	"OPERATION\000"
	.long	.La192-.Ldebug_info0
	.byte	0
# Procdef CanTab(<TControl>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetDeviceContext(<TControl>;var QWord):QWord;
	.uleb128	26
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
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol WINDOWHANDLE
	.uleb128	19
	.ascii	"WINDOWHANDLE\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef GetEnabled(<TControl>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetPopupMenu(<TControl>):TPopupMenu;
	.uleb128	26
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
	.long	.La476-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef DoOnShowHint(<TControl>;PHintInfo);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol HINTINFO
	.uleb128	19
	.ascii	"HINTINFO\000"
	.long	.La512-.Ldebug_info0
	.byte	0
# Procdef DoMouseWheel(<TControl>;TShiftState;LongInt;TPoint):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
# Symbol WHEELDELTA
	.uleb128	19
	.ascii	"WHEELDELTA\000"
	.long	.La120-.Ldebug_info0
# Symbol MOUSEPOS
	.uleb128	19
	.ascii	"MOUSEPOS\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef DoMouseWheelDown(<TControl>;TShiftState;TPoint):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
# Symbol MOUSEPOS
	.uleb128	19
	.ascii	"MOUSEPOS\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef DoMouseWheelUp(<TControl>;TShiftState;TPoint):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
# Symbol MOUSEPOS
	.uleb128	19
	.ascii	"MOUSEPOS\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef VisibleChanging(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef VisibleChanged(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef EnabledChanging(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef EnabledChanged(<TControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef AddHandler(<TControl>;TControlHandlerType;const TMethod;Boolean="FALSE");
	.uleb128	25
	.ascii	"ADDHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol HANDLERTYPE
	.uleb128	19
	.ascii	"HANDLERTYPE\000"
	.long	.La514-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La168-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	19
	.ascii	"ASFIRST\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef RemoveHandler(<TControl>;TControlHandlerType;const TMethod);
	.uleb128	25
	.ascii	"REMOVEHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol HANDLERTYPE
	.uleb128	19
	.ascii	"HANDLERTYPE\000"
	.long	.La514-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La168-.Ldebug_info0
	.byte	0
# Procdef DoCallNotifyHandler(<TControl>;TControlHandlerType);
	.uleb128	25
	.ascii	"DOCALLNOTIFYHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol HANDLERTYPE
	.uleb128	19
	.ascii	"HANDLERTYPE\000"
	.long	.La514-.Ldebug_info0
	.byte	0
# Procdef DoCallKeyEventHandler(<TControl>;TControlHandlerType;var Word;TShiftState);
	.uleb128	25
	.ascii	"DOCALLKEYEVENTHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol HANDLERTYPE
	.uleb128	19
	.ascii	"HANDLERTYPE\000"
	.long	.La514-.Ldebug_info0
# Symbol KEY
	.uleb128	19
	.ascii	"KEY\000"
	.long	.La247-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
	.byte	0
# Procdef DoCallMouseWheelEventHandler(<TControl>;TControlHandlerType;TShiftState;LongInt;TPoint;var Boolean);
	.uleb128	25
	.ascii	"DOCALLMOUSEWHEELEVENTHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol HANDLERTYPE
	.uleb128	19
	.ascii	"HANDLERTYPE\000"
	.long	.La514-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
# Symbol WHEELDELTA
	.uleb128	19
	.ascii	"WHEELDELTA\000"
	.long	.La120-.Ldebug_info0
# Symbol MOUSEPOS
	.uleb128	19
	.ascii	"MOUSEPOS\000"
	.long	.La284-.Ldebug_info0
# Symbol HANDLED
	.uleb128	19
	.ascii	"HANDLED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DoContextPopup(<TControl>;TPoint;var Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MOUSEPOS
	.uleb128	19
	.ascii	"MOUSEPOS\000"
	.long	.La284-.Ldebug_info0
# Symbol HANDLED
	.uleb128	19
	.ascii	"HANDLED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetZOrder(<TControl>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol TOPMOST
	.uleb128	19
	.ascii	"TOPMOST\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef class GetControlClassDefaultSize(<Class Of TControl>):<record type>;
	.uleb128	26
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
	.long	.La200-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La516-.Ldebug_info0
	.byte	0
# Procdef ColorIsStored(<TControl>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef DoAutoAdjustLayout(<TControl>;const TLayoutAdjustmentPolicy;const Double;const Double);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol AMODE
	.uleb128	19
	.ascii	"AMODE\000"
	.long	.La323-.Ldebug_info0
# Symbol AXPROPORTION
	.uleb128	19
	.ascii	"AXPROPORTION\000"
	.long	.La325-.Ldebug_info0
# Symbol AYPROPORTION
	.uleb128	19
	.ascii	"AYPROPORTION\000"
	.long	.La325-.Ldebug_info0
	.byte	0
# Procdef DoFixDesignFontPPI(<TControl>;const TFont;const LongInt);
	.uleb128	25
	.ascii	"DOFIXDESIGNFONTPPI\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol AFONT
	.uleb128	19
	.ascii	"AFONT\000"
	.long	.La445-.Ldebug_info0
# Symbol ADESIGNTIMEPPI
	.uleb128	19
	.ascii	"ADESIGNTIMEPPI\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef DoScaleFontPPI(<TControl>;const TFont;const Double);
	.uleb128	25
	.ascii	"DOSCALEFONTPPI\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol AFONT
	.uleb128	19
	.ascii	"AFONT\000"
	.long	.La445-.Ldebug_info0
# Symbol APROPORTION
	.uleb128	19
	.ascii	"APROPORTION\000"
	.long	.La325-.Ldebug_info0
	.byte	0
# Procdef GetActionLinkClass(<TControl>):Class Of TControlActionLink;
	.uleb128	26
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
	.long	.La518-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef ActionChange(<TControl>;TObject;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
# Symbol CHECKDEFAULTS
	.uleb128	19
	.ascii	"CHECKDEFAULTS\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DragDrop(<TControl>;TObject;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La20-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Dock(<TControl>;TWinControl;TRect);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol NEWDOCKSITE
	.uleb128	19
	.ascii	"NEWDOCKSITE\000"
	.long	.La103-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef ManualDock(<TControl>;TWinControl;TControl="nil";TAlign="0";Boolean="TRUE"):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol NEWDOCKSITE
	.uleb128	19
	.ascii	"NEWDOCKSITE\000"
	.long	.La103-.Ldebug_info0
# Symbol DROPCONTROL
	.uleb128	19
	.ascii	"DROPCONTROL\000"
	.long	.La106-.Ldebug_info0
# Symbol CONTROLSIDE
	.uleb128	19
	.ascii	"CONTROLSIDE\000"
	.long	.La367-.Ldebug_info0
# Symbol KEEPDOCKSITESIZE
	.uleb128	19
	.ascii	"KEEPDOCKSITESIZE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef ManualFloat(<TControl>;TRect;Boolean="TRUE"):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol THESCREENRECT
	.uleb128	19
	.ascii	"THESCREENRECT\000"
	.long	.La186-.Ldebug_info0
# Symbol KEEPDOCKSITESIZE
	.uleb128	19
	.ascii	"KEEPDOCKSITESIZE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef ReplaceDockedControl(<TControl>;TControl;TWinControl;TControl;TAlign):Boolean;
	.uleb128	22
	.ascii	"REPLACEDOCKEDCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol CONTROL
	.uleb128	19
	.ascii	"CONTROL\000"
	.long	.La106-.Ldebug_info0
# Symbol NEWDOCKSITE
	.uleb128	19
	.ascii	"NEWDOCKSITE\000"
	.long	.La103-.Ldebug_info0
# Symbol DROPCONTROL
	.uleb128	19
	.ascii	"DROPCONTROL\000"
	.long	.La106-.Ldebug_info0
# Symbol CONTROLSIDE
	.uleb128	19
	.ascii	"CONTROLSIDE\000"
	.long	.La367-.Ldebug_info0
	.byte	0
# Procdef Dragging(<TControl>):Boolean;
	.uleb128	22
	.ascii	"DRAGGING\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetAccessibleObject(<TControl>):TLazAccessibleObject;
	.uleb128	22
	.ascii	"GETACCESSIBLEOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La481-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef CreateAccessibleObject(<TControl>):TLazAccessibleObject;
	.uleb128	18
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
	.long	.La481-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetSelectedChildAccessibleObject(<TControl>):TLazAccessibleObject;
	.uleb128	18
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
	.long	.La481-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetChildAccessibleObjectAtPos(<TControl>;TPoint):TLazAccessibleObject;
	.uleb128	18
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
	.long	.La481-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol APOS
	.uleb128	19
	.ascii	"APOS\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef ScaleDesignToForm(<TControl>;const LongInt):LongInt;
	.uleb128	22
	.ascii	"SCALEDESIGNTOFORM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ASIZE
	.uleb128	19
	.ascii	"ASIZE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef ScaleFormToDesign(<TControl>;const LongInt):LongInt;
	.uleb128	22
	.ascii	"SCALEFORMTODESIGN\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ASIZE
	.uleb128	19
	.ascii	"ASIZE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Scale96ToForm(<TControl>;const LongInt):LongInt;
	.uleb128	22
	.ascii	"SCALE96TOFORM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ASIZE
	.uleb128	19
	.ascii	"ASIZE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef ScaleFormTo96(<TControl>;const LongInt):LongInt;
	.uleb128	22
	.ascii	"SCALEFORMTO96\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ASIZE
	.uleb128	19
	.ascii	"ASIZE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Scale96ToFont(<TControl>;const LongInt):LongInt;
	.uleb128	22
	.ascii	"SCALE96TOFONT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ASIZE
	.uleb128	19
	.ascii	"ASIZE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef ScaleFontTo96(<TControl>;const LongInt):LongInt;
	.uleb128	22
	.ascii	"SCALEFONTTO96\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ASIZE
	.uleb128	19
	.ascii	"ASIZE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef ScaleScreenToFont(<TControl>;const LongInt):LongInt;
	.uleb128	22
	.ascii	"SCALESCREENTOFONT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ASIZE
	.uleb128	19
	.ascii	"ASIZE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef ScaleFontToScreen(<TControl>;const LongInt):LongInt;
	.uleb128	22
	.ascii	"SCALEFONTTOSCREEN\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ASIZE
	.uleb128	19
	.ascii	"ASIZE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Scale96ToScreen(<TControl>;const LongInt):LongInt;
	.uleb128	22
	.ascii	"SCALE96TOSCREEN\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ASIZE
	.uleb128	19
	.ascii	"ASIZE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef ScaleScreenTo96(<TControl>;const LongInt):LongInt;
	.uleb128	22
	.ascii	"SCALESCREENTO96\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ASIZE
	.uleb128	19
	.ascii	"ASIZE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef AdjustSize(<TControl>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef AutoSizePhases(<TControl>):Set Of TControlAutoSizePhase;
	.uleb128	18
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
	.long	.La393-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef AutoSizeDelayed(<TControl>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef AutoSizeDelayedReport(<TControl>;<var AnsiString>):AnsiString;
	.uleb128	18
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
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef AutoSizeDelayedHandle(<TControl>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef AnchorToNeighbour(<TControl>;TAnchorKind;LongInt;TControl);
	.uleb128	20
	.ascii	"ANCHORTONEIGHBOUR\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SIDE
	.uleb128	19
	.ascii	"SIDE\000"
	.long	.La491-.Ldebug_info0
# Symbol SPACE
	.uleb128	19
	.ascii	"SPACE\000"
	.long	.La120-.Ldebug_info0
# Symbol SIBLING
	.uleb128	19
	.ascii	"SIBLING\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef AnchorParallel(<TControl>;TAnchorKind;LongInt;TControl);
	.uleb128	20
	.ascii	"ANCHORPARALLEL\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SIDE
	.uleb128	19
	.ascii	"SIDE\000"
	.long	.La491-.Ldebug_info0
# Symbol SPACE
	.uleb128	19
	.ascii	"SPACE\000"
	.long	.La120-.Ldebug_info0
# Symbol SIBLING
	.uleb128	19
	.ascii	"SIBLING\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef AnchorHorizontalCenterTo(<TControl>;TControl);
	.uleb128	20
	.ascii	"ANCHORHORIZONTALCENTERTO\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SIBLING
	.uleb128	19
	.ascii	"SIBLING\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef AnchorVerticalCenterTo(<TControl>;TControl);
	.uleb128	20
	.ascii	"ANCHORVERTICALCENTERTO\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SIBLING
	.uleb128	19
	.ascii	"SIBLING\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef AnchorToCompanion(<TControl>;TAnchorKind;LongInt;TControl;Boolean="TRUE");
	.uleb128	20
	.ascii	"ANCHORTOCOMPANION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SIDE
	.uleb128	19
	.ascii	"SIDE\000"
	.long	.La491-.Ldebug_info0
# Symbol SPACE
	.uleb128	19
	.ascii	"SPACE\000"
	.long	.La120-.Ldebug_info0
# Symbol SIBLING
	.uleb128	19
	.ascii	"SIBLING\000"
	.long	.La106-.Ldebug_info0
# Symbol FREECOMPOSITESIDE
	.uleb128	19
	.ascii	"FREECOMPOSITESIDE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef AnchorSame(<TControl>;TAnchorKind;TControl);
	.uleb128	20
	.ascii	"ANCHORSAME\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SIDE
	.uleb128	19
	.ascii	"SIDE\000"
	.long	.La491-.Ldebug_info0
# Symbol SIBLING
	.uleb128	19
	.ascii	"SIBLING\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef AnchorAsAlign(<TControl>;TAlign;LongInt);
	.uleb128	20
	.ascii	"ANCHORASALIGN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol THEALIGN
	.uleb128	19
	.ascii	"THEALIGN\000"
	.long	.La367-.Ldebug_info0
# Symbol SPACE
	.uleb128	19
	.ascii	"SPACE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef AnchorClient(<TControl>;LongInt);
	.uleb128	20
	.ascii	"ANCHORCLIENT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SPACE
	.uleb128	19
	.ascii	"SPACE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef AnchoredControlCount(<TControl>):LongInt;
	.uleb128	22
	.ascii	"ANCHOREDCONTROLCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef SetBounds(<TControl>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ALEFT
	.uleb128	19
	.ascii	"ALEFT\000"
	.long	.La120-.Ldebug_info0
# Symbol ATOP
	.uleb128	19
	.ascii	"ATOP\000"
	.long	.La120-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetInitialBounds(<TControl>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ALEFT
	.uleb128	19
	.ascii	"ALEFT\000"
	.long	.La120-.Ldebug_info0
# Symbol ATOP
	.uleb128	19
	.ascii	"ATOP\000"
	.long	.La120-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetBoundsKeepBase(<TControl>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ALEFT
	.uleb128	19
	.ascii	"ALEFT\000"
	.long	.La120-.Ldebug_info0
# Symbol ATOP
	.uleb128	19
	.ascii	"ATOP\000"
	.long	.La120-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetPreferredSize(<TControl>;var LongInt;var LongInt;Boolean="FALSE";Boolean="TRUE");
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol PREFERREDWIDTH
	.uleb128	19
	.ascii	"PREFERREDWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol PREFERREDHEIGHT
	.uleb128	19
	.ascii	"PREFERREDHEIGHT\000"
	.long	.La120-.Ldebug_info0
# Symbol RAW
	.uleb128	19
	.ascii	"RAW\000"
	.long	.La29-.Ldebug_info0
# Symbol WITHTHEMESPACE
	.uleb128	19
	.ascii	"WITHTHEMESPACE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef GetDefaultWidth(<TControl>):LongInt;
	.uleb128	22
	.ascii	"GETDEFAULTWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetDefaultHeight(<TControl>):LongInt;
	.uleb128	22
	.ascii	"GETDEFAULTHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetDefaultColor(<TControl>;const TDefaultColorType):LongInt;
	.uleb128	18
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
	.long	.La391-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol DEFAULTCOLORTYPE
	.uleb128	19
	.ascii	"DEFAULTCOLORTYPE\000"
	.long	.La520-.Ldebug_info0
	.byte	0
# Procdef GetColorResolvingParent(<TControl>):LongInt;
	.uleb128	22
	.ascii	"GETCOLORRESOLVINGPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La391-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetRGBColorResolvingParent(<TControl>):LongInt;
	.uleb128	22
	.ascii	"GETRGBCOLORRESOLVINGPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La391-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetSidePosition(<TControl>;TAnchorKind):LongInt;
	.uleb128	22
	.ascii	"GETSIDEPOSITION\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol SIDE
	.uleb128	19
	.ascii	"SIDE\000"
	.long	.La491-.Ldebug_info0
	.byte	0
# Procdef CNPreferredSizeChanged(<TControl>);
	.uleb128	20
	.ascii	"CNPREFERREDSIZECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef InvalidatePreferredSize(<TControl>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetAnchorsDependingOnParent(<TControl>;Boolean):Set Of TAnchorKind;
	.uleb128	22
	.ascii	"GETANCHORSDEPENDINGONPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La417-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol WITHNORMALANCHORS
	.uleb128	19
	.ascii	"WITHNORMALANCHORS\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DisableAutoSizing(<TControl>);
	.uleb128	20
	.ascii	"DISABLEAUTOSIZING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef EnableAutoSizing(<TControl>);
	.uleb128	20
	.ascii	"ENABLEAUTOSIZING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef UpdateBaseBounds(<TControl>;Boolean;Boolean;Boolean);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol STOREBOUNDS
	.uleb128	19
	.ascii	"STOREBOUNDS\000"
	.long	.La29-.Ldebug_info0
# Symbol STOREPARENTCLIENTSIZE
	.uleb128	19
	.ascii	"STOREPARENTCLIENTSIZE\000"
	.long	.La29-.Ldebug_info0
# Symbol USELOADEDVALUES
	.uleb128	19
	.ascii	"USELOADEDVALUES\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef WriteLayoutDebugReport(<TControl>;const AnsiString);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol PREFIX
	.uleb128	19
	.ascii	"PREFIX\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef AutoAdjustLayout(<TControl>;TLayoutAdjustmentPolicy;const LongInt;const LongInt;const LongInt;const LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol AMODE
	.uleb128	19
	.ascii	"AMODE\000"
	.long	.La323-.Ldebug_info0
# Symbol AFROMPPI
	.uleb128	19
	.ascii	"AFROMPPI\000"
	.long	.La120-.Ldebug_info0
# Symbol ATOPPI
	.uleb128	19
	.ascii	"ATOPPI\000"
	.long	.La120-.Ldebug_info0
# Symbol AOLDFORMWIDTH
	.uleb128	19
	.ascii	"AOLDFORMWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol ANEWFORMWIDTH
	.uleb128	19
	.ascii	"ANEWFORMWIDTH\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef ShouldAutoAdjust(<TControl>;var Boolean;var Boolean);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La29-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef FixDesignFontsPPI(<TControl>;const LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ADESIGNTIMEPPI
	.uleb128	19
	.ascii	"ADESIGNTIMEPPI\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef ScaleFontsPPI(<TControl>;const Double);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol APROPORTION
	.uleb128	19
	.ascii	"APROPORTION\000"
	.long	.La325-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TControl>;<Pointer>;TComponent);
	.uleb128	18
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
	.long	.La106-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	19
	.ascii	"THEOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TControl>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef BeforeDestruction(<TControl>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef EditingDone(<TControl>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef ExecuteDefaultAction(<TControl>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef ExecuteCancelAction(<TControl>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef BeginDrag(<TControl>;Boolean;LongInt="-1");
	.uleb128	20
	.ascii	"BEGINDRAG\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol IMMEDIATE
	.uleb128	19
	.ascii	"IMMEDIATE\000"
	.long	.La29-.Ldebug_info0
# Symbol THRESHOLD
	.uleb128	19
	.ascii	"THRESHOLD\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef EndDrag(<TControl>;Boolean);
	.uleb128	20
	.ascii	"ENDDRAG\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol DROP
	.uleb128	19
	.ascii	"DROP\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef BringToFront(<TControl>);
	.uleb128	20
	.ascii	"BRINGTOFRONT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef HasParent(<TControl>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetParentComponent(<TControl>):TComponent;
	.uleb128	18
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
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsParentOf(<TControl>;TControl):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetTopParent(<TControl>):TControl;
	.uleb128	22
	.ascii	"GETTOPPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsVisible(<TControl>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsControlVisible(<TControl>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsEnabled(<TControl>):Boolean;
	.uleb128	22
	.ascii	"ISENABLED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsParentColor(<TControl>):Boolean;
	.uleb128	22
	.ascii	"ISPARENTCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsParentFont(<TControl>):Boolean;
	.uleb128	22
	.ascii	"ISPARENTFONT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef FormIsUpdating(<TControl>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsProcessingPaintMsg(<TControl>):Boolean;
	.uleb128	22
	.ascii	"ISPROCESSINGPAINTMSG\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef Hide(<TControl>);
	.uleb128	20
	.ascii	"HIDE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef Refresh(<TControl>);
	.uleb128	20
	.ascii	"REFRESH\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef Repaint(<TControl>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef Invalidate(<TControl>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef CheckChildClassAllowed(<TControl>;TClass;Boolean):Boolean;
	.uleb128	22
	.ascii	"CHECKCHILDCLASSALLOWED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol CHILDCLASS
	.uleb128	19
	.ascii	"CHILDCLASS\000"
	.long	.La57-.Ldebug_info0
# Symbol EXCEPTIONONINVALID
	.uleb128	19
	.ascii	"EXCEPTIONONINVALID\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef CheckNewParent(<TControl>;TWinControl);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol APARENT
	.uleb128	19
	.ascii	"APARENT\000"
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef SendToBack(<TControl>);
	.uleb128	20
	.ascii	"SENDTOBACK\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef SetTempCursor(<TControl>;TCursor);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La399-.Ldebug_info0
	.byte	0
# Procdef UpdateRolesForForm(<TControl>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef ActiveDefaultControlChanged(<TControl>;TControl);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol NEWCONTROL
	.uleb128	19
	.ascii	"NEWCONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef GetTextBuf(<TControl>;PChar;LongInt):LongInt;
	.uleb128	18
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol BUFFER
	.uleb128	19
	.ascii	"BUFFER\000"
	.long	.La371-.Ldebug_info0
# Symbol BUFSIZE
	.uleb128	19
	.ascii	"BUFSIZE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetTextLen(<TControl>):LongInt;
	.uleb128	18
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef SetTextBuf(<TControl>;PChar);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol BUFFER
	.uleb128	19
	.ascii	"BUFFER\000"
	.long	.La371-.Ldebug_info0
	.byte	0
# Procdef Perform(<TControl>;LongWord;Int64;Int64):Int64;
	.uleb128	22
	.ascii	"PERFORM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La71-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol MSG
	.uleb128	19
	.ascii	"MSG\000"
	.long	.La293-.Ldebug_info0
# Symbol WPARAM
	.uleb128	19
	.ascii	"WPARAM\000"
	.long	.La71-.Ldebug_info0
# Symbol LPARAM
	.uleb128	19
	.ascii	"LPARAM\000"
	.long	.La71-.Ldebug_info0
	.byte	0
# Procdef ScreenToClient(<TControl>;const TPoint):<record type>;
	.uleb128	22
	.ascii	"SCREENTOCLIENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol APOINT
	.uleb128	19
	.ascii	"APOINT\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef ClientToScreen(<TControl>;const TPoint):<record type>;
	.uleb128	22
	.ascii	"CLIENTTOSCREEN\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol APOINT
	.uleb128	19
	.ascii	"APOINT\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef ScreenToControl(<TControl>;const TPoint):<record type>;
	.uleb128	22
	.ascii	"SCREENTOCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol APOINT
	.uleb128	19
	.ascii	"APOINT\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef ControlToScreen(<TControl>;const TPoint):<record type>;
	.uleb128	22
	.ascii	"CONTROLTOSCREEN\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol APOINT
	.uleb128	19
	.ascii	"APOINT\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef ClientToParent(<TControl>;const TPoint;TWinControl="nil"):<record type>;
	.uleb128	22
	.ascii	"CLIENTTOPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol POINT
	.uleb128	19
	.ascii	"POINT\000"
	.long	.La284-.Ldebug_info0
# Symbol APARENT
	.uleb128	19
	.ascii	"APARENT\000"
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef ParentToClient(<TControl>;const TPoint;TWinControl="nil"):<record type>;
	.uleb128	22
	.ascii	"PARENTTOCLIENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol POINT
	.uleb128	19
	.ascii	"POINT\000"
	.long	.La284-.Ldebug_info0
# Symbol APARENT
	.uleb128	19
	.ascii	"APARENT\000"
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef GetChildrenRect(<TControl>;<var TRect>;Boolean):<record type>;
	.uleb128	18
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
	.long	.La186-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
# Symbol SCROLLED
	.uleb128	19
	.ascii	"SCROLLED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef Show(<TControl>);
	.uleb128	20
	.ascii	"SHOW\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef Update(<TControl>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef HandleObjectShouldBeVisible(<TControl>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef ParentDestroyingHandle(<TControl>):Boolean;
	.uleb128	22
	.ascii	"PARENTDESTROYINGHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef ParentHandlesAllocated(<TControl>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef InitiateAction(<TControl>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef ShowHelp(<TControl>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef HasHelp(<TControl>):Boolean;
	.uleb128	22
	.ascii	"HASHELP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef RemoveAllHandlersOfObject(<TControl>;TObject);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ANOBJECT
	.uleb128	19
	.ascii	"ANOBJECT\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef AddHandlerOnResize(<TControl>;const TNotifyEvent;Boolean="FALSE");
	.uleb128	20
	.ascii	"ADDHANDLERONRESIZE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ONRESIZEEVENT
	.uleb128	19
	.ascii	"ONRESIZEEVENT\000"
	.long	.La140-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	19
	.ascii	"ASFIRST\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerOnResize(<TControl>;const TNotifyEvent);
	.uleb128	20
	.ascii	"REMOVEHANDLERONRESIZE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ONRESIZEEVENT
	.uleb128	19
	.ascii	"ONRESIZEEVENT\000"
	.long	.La140-.Ldebug_info0
	.byte	0
# Procdef AddHandlerOnChangeBounds(<TControl>;const TNotifyEvent;Boolean="FALSE");
	.uleb128	20
	.ascii	"ADDHANDLERONCHANGEBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ONCHANGEBOUNDSEVENT
	.uleb128	19
	.ascii	"ONCHANGEBOUNDSEVENT\000"
	.long	.La140-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	19
	.ascii	"ASFIRST\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerOnChangeBounds(<TControl>;const TNotifyEvent);
	.uleb128	20
	.ascii	"REMOVEHANDLERONCHANGEBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ONCHANGEBOUNDSEVENT
	.uleb128	19
	.ascii	"ONCHANGEBOUNDSEVENT\000"
	.long	.La140-.Ldebug_info0
	.byte	0
# Procdef AddHandlerOnVisibleChanging(<TControl>;const TNotifyEvent;Boolean="FALSE");
	.uleb128	20
	.ascii	"ADDHANDLERONVISIBLECHANGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ONVISIBLECHANGINGEVENT
	.uleb128	19
	.ascii	"ONVISIBLECHANGINGEVENT\000"
	.long	.La140-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	19
	.ascii	"ASFIRST\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerOnVisibleChanging(<TControl>;const TNotifyEvent);
	.uleb128	20
	.ascii	"REMOVEHANDLERONVISIBLECHANGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ONVISIBLECHANGINGEVENT
	.uleb128	19
	.ascii	"ONVISIBLECHANGINGEVENT\000"
	.long	.La140-.Ldebug_info0
	.byte	0
# Procdef AddHandlerOnVisibleChanged(<TControl>;const TNotifyEvent;Boolean="FALSE");
	.uleb128	20
	.ascii	"ADDHANDLERONVISIBLECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ONVISIBLECHANGEDEVENT
	.uleb128	19
	.ascii	"ONVISIBLECHANGEDEVENT\000"
	.long	.La140-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	19
	.ascii	"ASFIRST\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerOnVisibleChanged(<TControl>;const TNotifyEvent);
	.uleb128	20
	.ascii	"REMOVEHANDLERONVISIBLECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ONVISIBLECHANGEDEVENT
	.uleb128	19
	.ascii	"ONVISIBLECHANGEDEVENT\000"
	.long	.La140-.Ldebug_info0
	.byte	0
# Procdef AddHandlerOnEnabledChanged(<TControl>;const TNotifyEvent;Boolean="FALSE");
	.uleb128	20
	.ascii	"ADDHANDLERONENABLEDCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ONENABLEDCHANGEDEVENT
	.uleb128	19
	.ascii	"ONENABLEDCHANGEDEVENT\000"
	.long	.La140-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	19
	.ascii	"ASFIRST\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerOnEnableChanging(<TControl>;const TNotifyEvent);
	.uleb128	20
	.ascii	"REMOVEHANDLERONENABLECHANGING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ONENABLECHANGINGEVENT
	.uleb128	19
	.ascii	"ONENABLECHANGINGEVENT\000"
	.long	.La140-.Ldebug_info0
	.byte	0
# Procdef AddHandlerOnKeyDown(<TControl>;const TKeyEvent;Boolean="FALSE");
	.uleb128	20
	.ascii	"ADDHANDLERONKEYDOWN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ONKEYDOWNEVENT
	.uleb128	19
	.ascii	"ONKEYDOWNEVENT\000"
	.long	.La353-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	19
	.ascii	"ASFIRST\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerOnKeyDown(<TControl>;const TKeyEvent);
	.uleb128	20
	.ascii	"REMOVEHANDLERONKEYDOWN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ONKEYDOWNEVENT
	.uleb128	19
	.ascii	"ONKEYDOWNEVENT\000"
	.long	.La353-.Ldebug_info0
	.byte	0
# Procdef AddHandlerOnBeforeDestruction(<TControl>;const TNotifyEvent;Boolean="FALSE");
	.uleb128	20
	.ascii	"ADDHANDLERONBEFOREDESTRUCTION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ONBEFOREDESTRUCTIONEVENT
	.uleb128	19
	.ascii	"ONBEFOREDESTRUCTIONEVENT\000"
	.long	.La140-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	19
	.ascii	"ASFIRST\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerOnBeforeDestruction(<TControl>;const TNotifyEvent);
	.uleb128	20
	.ascii	"REMOVEHANDLERONBEFOREDESTRUCTION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ONBEFOREDESTRUCTIONEVENT
	.uleb128	19
	.ascii	"ONBEFOREDESTRUCTIONEVENT\000"
	.long	.La140-.Ldebug_info0
	.byte	0
# Procdef AddHandlerOnMouseWheel(<TControl>;const TMouseWheelEvent;Boolean="FALSE");
	.uleb128	20
	.ascii	"ADDHANDLERONMOUSEWHEEL\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ONMOUSEWHEELEVENT
	.uleb128	19
	.ascii	"ONMOUSEWHEELEVENT\000"
	.long	.La466-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	19
	.ascii	"ASFIRST\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerOnMouseWheel(<TControl>;const TMouseWheelEvent);
	.uleb128	20
	.ascii	"REMOVEHANDLERONMOUSEWHEEL\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
# Symbol ONMOUSEWHEELEVENT
	.uleb128	19
	.ascii	"ONMOUSEWHEELEVENT\000"
	.long	.La466-.Ldebug_info0
	.byte	0
# Procdef UseRightToLeftAlignment(<TControl>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef UseRightToLeftReading(<TControl>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef UseRightToLeftScrollBar(<TControl>):Boolean;
	.uleb128	22
	.ascii	"USERIGHTTOLEFTSCROLLBAR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef IsRightToLeft(<TControl>):Boolean;
	.uleb128	22
	.ascii	"ISRIGHTTOLEFT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La106-.Ldebug_info0
	.byte	0
	.byte	0
.La107:
	.uleb128	7
	.long	.La106-.Ldebug_info0
# Definition Byte
.La109:
	.uleb128	5
	.ascii	"BYTE\000"
	.long	.La522-.Ldebug_info0
.La522:
	.uleb128	29
	.ascii	"BYTE\000"
	.byte	7
	.byte	1
.La110:
	.uleb128	7
	.long	.La109-.Ldebug_info0
# Definition TBorderIcons
.La111:
	.uleb128	5
	.ascii	"TBORDERICONS\000"
	.long	.La523-.Ldebug_info0
.La523:
	.uleb128	35
	.ascii	"TBORDERICONS\000"
	.byte	7
	.short	4
.La112:
	.uleb128	7
	.long	.La111-.Ldebug_info0
# Definition TDefaultMonitor
.La113:
	.uleb128	5
	.ascii	"TDEFAULTMONITOR\000"
	.long	.La524-.Ldebug_info0
.La524:
	.uleb128	36
	.ascii	"TDEFAULTMONITOR\000"
	.byte	4
	.uleb128	37
	.ascii	"DMDESKTOP\000"
	.long	0
	.uleb128	37
	.ascii	"DMPRIMARY\000"
	.long	1
	.uleb128	37
	.ascii	"DMMAINFORM\000"
	.long	2
	.uleb128	37
	.ascii	"DMACTIVEFORM\000"
	.long	3
	.byte	0
.La114:
	.uleb128	7
	.long	.La113-.Ldebug_info0
# Definition TIDesigner
.La115:
	.uleb128	5
	.ascii	"TIDESIGNER\000"
	.long	.La525-.Ldebug_info0
.La525:
	.uleb128	8
	.long	.La117-.Ldebug_info0
.La117:
	.uleb128	9
	.ascii	"TIDESIGNER\000"
	.uleb128	24
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La22-.Ldebug_info0
	.uleb128	14
	.ascii	"FLOOKUPROOT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	2
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"FDEFAULTFORMBOUNDSVALID\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	2
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"LOOKUPROOT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	2
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"DEFAULTFORMBOUNDSVALID\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	2
	.long	.La29-.Ldebug_info0
# Procdef IsDesignMsg(<TIDesigner>;TControl;var TMessage):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef UTF8KeyPress(<TIDesigner>;var TUTF8Char);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol UTF8KEY
	.uleb128	19
	.ascii	"UTF8KEY\000"
	.long	.La290-.Ldebug_info0
	.byte	0
# Procdef Modified(<TIDesigner>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef Notification(<TIDesigner>;TComponent;TOperation);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
# Symbol OPERATION
	.uleb128	19
	.ascii	"OPERATION\000"
	.long	.La192-.Ldebug_info0
	.byte	0
# Procdef PaintGrid(<TIDesigner>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef ValidateRename(<TIDesigner>;TComponent;const AnsiString;const AnsiString);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
# Symbol CURNAME
	.uleb128	19
	.ascii	"CURNAME\000"
	.long	.La27-.Ldebug_info0
# Symbol NEWNAME
	.uleb128	19
	.ascii	"NEWNAME\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef GetShiftState(<TIDesigner>):Set Of TShiftStateEnum;
	.uleb128	18
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
	.long	.La264-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
	.byte	0
# Procdef SelectOnlyThisComponent(<TIDesigner>;TComponent);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef UniqueName(<TIDesigner>;<var AnsiString>;const AnsiString):AnsiString;
	.uleb128	18
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
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
# Symbol BASENAME
	.uleb128	19
	.ascii	"BASENAME\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef PrepareFreeDesigner(<TIDesigner>;Boolean);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La115-.Ldebug_info0
# Symbol AFREECOMPONENT
	.uleb128	19
	.ascii	"AFREECOMPONENT\000"
	.long	.La29-.Ldebug_info0
	.byte	0
	.byte	0
.La116:
	.uleb128	7
	.long	.La115-.Ldebug_info0
# Definition TFormStyle
.La118:
	.uleb128	5
	.ascii	"TFORMSTYLE\000"
	.long	.La526-.Ldebug_info0
.La526:
	.uleb128	36
	.ascii	"TFORMSTYLE\000"
	.byte	4
	.uleb128	37
	.ascii	"FSNORMAL\000"
	.long	0
	.uleb128	37
	.ascii	"FSMDICHILD\000"
	.long	1
	.uleb128	37
	.ascii	"FSMDIFORM\000"
	.long	2
	.uleb128	37
	.ascii	"FSSTAYONTOP\000"
	.long	3
	.uleb128	37
	.ascii	"FSSPLASH\000"
	.long	4
	.uleb128	37
	.ascii	"FSSYSTEMSTAYONTOP\000"
	.long	5
	.byte	0
.La119:
	.uleb128	7
	.long	.La118-.Ldebug_info0
# Definition LongInt
.La120:
	.uleb128	5
	.ascii	"LONGINT\000"
	.long	.La527-.Ldebug_info0
.La527:
	.uleb128	29
	.ascii	"LONGINT\000"
	.byte	5
	.byte	4
.La121:
	.uleb128	7
	.long	.La120-.Ldebug_info0
# Definition TCustomForm.Array[TFormHandlerType] Of TMethodList
.La122:
	.uleb128	38
	.uleb128	24
	.long	.La528-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.sleb128	2
	.uleb128	8
	.long	.La166-.Ldebug_info0
	.byte	0
.La123:
	.uleb128	7
	.long	.La122-.Ldebug_info0
# Definition TIcon
.La124:
	.uleb128	5
	.ascii	"TICON\000"
	.long	.La531-.Ldebug_info0
.La531:
	.uleb128	8
	.long	.La126-.Ldebug_info0
.La126:
	.uleb128	9
	.ascii	"TICON\000"
	.uleb128	120
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La534-.Ldebug_info0
# Procdef GetIconHandle(<TIcon>):QWord;
	.uleb128	15
	.ascii	"GETICONHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La124-.Ldebug_info0
	.byte	0
# Procdef SetIconHandle(<TIcon>;const QWord);
	.uleb128	25
	.ascii	"SETICONHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La124-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef class GetStreamSignature(<Class Of TIcon>):DWord;
	.uleb128	26
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
	.long	.La293-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La535-.Ldebug_info0
	.byte	0
# Procdef class GetTypeID(<Class Of TIcon>):Word;
	.uleb128	26
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
	.long	.La247-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La537-.Ldebug_info0
	.byte	0
# Procdef HandleNeeded(<TIcon>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La124-.Ldebug_info0
	.byte	0
# Procdef LoadFromResourceHandle(<TIcon>;QWord;QWord);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La124-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	19
	.ascii	"INSTANCE\000"
	.long	.La131-.Ldebug_info0
# Symbol RESHANDLE
	.uleb128	19
	.ascii	"RESHANDLE\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef ReleaseHandle(<TIcon>):QWord;
	.uleb128	22
	.ascii	"RELEASEHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La124-.Ldebug_info0
	.byte	0
# Procdef GetResourceType(<TIcon>):^Char;
	.uleb128	18
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
	.long	.La371-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La124-.Ldebug_info0
	.byte	0
	.byte	0
.La125:
	.uleb128	7
	.long	.La124-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;LongInt) of object;Register>
.La127:
	.uleb128	5
	.ascii	"TMODALDIALOGFINISHED\000"
	.long	.La539-.Ldebug_info0
.La539:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La540-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La540:
	.uleb128	41
	.ascii	"TMODALDIALOGFINISHED\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"ARESULT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
.La128:
	.uleb128	7
	.long	.La127-.Ldebug_info0
# Definition TPopupMode
.La129:
	.uleb128	5
	.ascii	"TPOPUPMODE\000"
	.long	.La541-.Ldebug_info0
.La541:
	.uleb128	36
	.ascii	"TPOPUPMODE\000"
	.byte	4
	.uleb128	37
	.ascii	"PMNONE\000"
	.long	0
	.uleb128	37
	.ascii	"PMAUTO\000"
	.long	1
	.uleb128	37
	.ascii	"PMEXPLICIT\000"
	.long	2
	.byte	0
.La130:
	.uleb128	7
	.long	.La129-.Ldebug_info0
# Definition QWord
.La131:
	.uleb128	5
	.ascii	"QWORD\000"
	.long	.La542-.Ldebug_info0
.La542:
	.uleb128	29
	.ascii	"QWord\000"
	.byte	7
	.byte	8
.La132:
	.uleb128	7
	.long	.La131-.Ldebug_info0
# Definition TMainMenu
.La133:
	.uleb128	5
	.ascii	"TMAINMENU\000"
	.long	.La543-.Ldebug_info0
.La543:
	.uleb128	8
	.long	.La135-.Ldebug_info0
.La135:
	.uleb128	9
	.ascii	"TMAINMENU\000"
	.uleb128	224
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La546-.Ldebug_info0
	.uleb128	14
	.ascii	"FWINDOWHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La131-.Ldebug_info0
	.uleb128	14
	.ascii	"WINDOWHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La131-.Ldebug_info0
# Procdef GetHeight(<TMainMenu>):LongInt;
	.uleb128	15
	.ascii	"GETHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La133-.Ldebug_info0
	.byte	0
# Procdef SetWindowHandle(<TMainMenu>;const QWord);
	.uleb128	25
	.ascii	"SETWINDOWHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La133-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef ItemChanged(<TMainMenu>);
	.uleb128	25
	.ascii	"ITEMCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La133-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TMainMenu>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La547-.Ldebug_info0
	.byte	0
# Procdef MenuChanged(<TMainMenu>;TObject;TMenuItem;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La133-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La549-.Ldebug_info0
# Symbol REBUILD
	.uleb128	19
	.ascii	"REBUILD\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TMainMenu>;<Pointer>;TComponent);
	.uleb128	18
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
	.long	.La133-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La133-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol AOWNER
	.uleb128	19
	.ascii	"AOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
	.byte	0
.La134:
	.uleb128	7
	.long	.La133-.Ldebug_info0
# Definition TModalResult
.La136:
	.uleb128	5
	.ascii	"TMODALRESULT\000"
	.long	.La552-.Ldebug_info0
.La552:
	.uleb128	29
	.ascii	"TMODALRESULT\000"
	.byte	5
	.byte	4
.La137:
	.uleb128	7
	.long	.La136-.Ldebug_info0
# Definition TFormBorderStyle
.La138:
	.uleb128	5
	.ascii	"TFORMBORDERSTYLE\000"
	.long	.La553-.Ldebug_info0
.La553:
	.uleb128	36
	.ascii	"TFORMBORDERSTYLE\000"
	.byte	4
	.uleb128	37
	.ascii	"BSNONE\000"
	.long	0
	.uleb128	37
	.ascii	"BSSINGLE\000"
	.long	1
	.uleb128	37
	.ascii	"BSSIZEABLE\000"
	.long	2
	.uleb128	37
	.ascii	"BSDIALOG\000"
	.long	3
	.uleb128	37
	.ascii	"BSTOOLWINDOW\000"
	.long	4
	.uleb128	37
	.ascii	"BSSIZETOOLWIN\000"
	.long	5
	.byte	0
.La139:
	.uleb128	7
	.long	.La138-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject) of object;Register>
.La140:
	.uleb128	5
	.ascii	"TNOTIFYEVENT\000"
	.long	.La554-.Ldebug_info0
.La554:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La555-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La555:
	.uleb128	41
	.ascii	"TNOTIFYEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
.La141:
	.uleb128	7
	.long	.La140-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;var TCloseAction) of object;Register>
.La142:
	.uleb128	5
	.ascii	"TCLOSEEVENT\000"
	.long	.La556-.Ldebug_info0
.La556:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La557-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La557:
	.uleb128	41
	.ascii	"TCLOSEEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"CLOSEACTION\000"
	.long	.La190-.Ldebug_info0
	.byte	0
.La143:
	.uleb128	7
	.long	.La142-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;var Boolean) of object;Register>
.La144:
	.uleb128	5
	.ascii	"TCLOSEQUERYEVENT\000"
	.long	.La558-.Ldebug_info0
.La558:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La559-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La559:
	.uleb128	41
	.ascii	"TCLOSEQUERYEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"CANCLOSE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
.La145:
	.uleb128	7
	.long	.La144-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;const {Open} Array Of AnsiString) of object;Register>
.La146:
	.uleb128	5
	.ascii	"TDROPFILESEVENT\000"
	.long	.La560-.Ldebug_info0
.La560:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La561-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La561:
	.uleb128	41
	.ascii	"TDROPFILESEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"FILENAMES\000"
	.long	.La562-.Ldebug_info0
	.uleb128	19
	.ascii	"highFILENAMES\000"
	.long	.La71-.Ldebug_info0
	.byte	0
.La147:
	.uleb128	7
	.long	.La146-.Ldebug_info0
# Definition <procedure variable type of function(Word;Int64;var Boolean):Boolean of object;Register>
.La148:
	.uleb128	5
	.ascii	"THELPEVENT\000"
	.long	.La564-.Ldebug_info0
.La564:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La565-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La565:
	.uleb128	42
	.ascii	"THELPEVENT\000"
	.byte	1
	.long	.La29-.Ldebug_info0
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"COMMAND\000"
	.long	.La247-.Ldebug_info0
	.uleb128	19
	.ascii	"DATA\000"
	.long	.La71-.Ldebug_info0
	.uleb128	19
	.ascii	"CALLHELP\000"
	.long	.La29-.Ldebug_info0
	.byte	0
.La149:
	.uleb128	7
	.long	.La148-.Ldebug_info0
# Definition <procedure variable type of procedure(var TLMKey;var Boolean) of object;Register>
.La150:
	.uleb128	5
	.ascii	"TSHORTCUTEVENT\000"
	.long	.La566-.Ldebug_info0
.La566:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La567-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La567:
	.uleb128	41
	.ascii	"TSHORTCUTEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"MSG\000"
	.long	.La211-.Ldebug_info0
	.uleb128	19
	.ascii	"HANDLED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
.La151:
	.uleb128	7
	.long	.La150-.Ldebug_info0
# Definition TPosition
.La152:
	.uleb128	5
	.ascii	"TPOSITION\000"
	.long	.La568-.Ldebug_info0
.La568:
	.uleb128	36
	.ascii	"TPOSITION\000"
	.byte	4
	.uleb128	37
	.ascii	"PODESIGNED\000"
	.long	0
	.uleb128	37
	.ascii	"PODEFAULT\000"
	.long	1
	.uleb128	37
	.ascii	"PODEFAULTPOSONLY\000"
	.long	2
	.uleb128	37
	.ascii	"PODEFAULTSIZEONLY\000"
	.long	3
	.uleb128	37
	.ascii	"POSCREENCENTER\000"
	.long	4
	.uleb128	37
	.ascii	"PODESKTOPCENTER\000"
	.long	5
	.uleb128	37
	.ascii	"POMAINFORMCENTER\000"
	.long	6
	.uleb128	37
	.ascii	"POOWNERFORMCENTER\000"
	.long	7
	.uleb128	37
	.ascii	"POWORKAREACENTER\000"
	.long	8
	.byte	0
.La153:
	.uleb128	7
	.long	.La152-.Ldebug_info0
# Definition TShowInTaskbar
.La154:
	.uleb128	5
	.ascii	"TSHOWINTASKBAR\000"
	.long	.La569-.Ldebug_info0
.La569:
	.uleb128	36
	.ascii	"TSHOWINTASKBAR\000"
	.byte	4
	.uleb128	37
	.ascii	"STDEFAULT\000"
	.long	0
	.uleb128	37
	.ascii	"STALWAYS\000"
	.long	1
	.uleb128	37
	.ascii	"STNEVER\000"
	.long	2
	.byte	0
.La155:
	.uleb128	7
	.long	.La154-.Ldebug_info0
# Definition TWindowState
.La156:
	.uleb128	5
	.ascii	"TWINDOWSTATE\000"
	.long	.La570-.Ldebug_info0
.La570:
	.uleb128	36
	.ascii	"TWINDOWSTATE\000"
	.byte	4
	.uleb128	37
	.ascii	"WSNORMAL\000"
	.long	0
	.uleb128	37
	.ascii	"WSMINIMIZED\000"
	.long	1
	.uleb128	37
	.ascii	"WSMAXIMIZED\000"
	.long	2
	.uleb128	37
	.ascii	"WSFULLSCREEN\000"
	.long	3
	.byte	0
.La157:
	.uleb128	7
	.long	.La156-.Ldebug_info0
# Definition TList
.La158:
	.uleb128	5
	.ascii	"TLIST\000"
	.long	.La571-.Ldebug_info0
.La571:
	.uleb128	8
	.long	.La160-.Ldebug_info0
.La160:
	.uleb128	9
	.ascii	"TLIST\000"
	.uleb128	32
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La22-.Ldebug_info0
	.uleb128	14
	.ascii	"FLIST\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La224-.Ldebug_info0
	.uleb128	14
	.ascii	"FOBSERVERS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La224-.Ldebug_info0
# Procdef CopyMove(<TList>;TList);
	.uleb128	25
	.ascii	"COPYMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol ALIST
	.uleb128	19
	.ascii	"ALIST\000"
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef MergeMove(<TList>;TList);
	.uleb128	25
	.ascii	"MERGEMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol ALIST
	.uleb128	19
	.ascii	"ALIST\000"
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef DoCopy(<TList>;TList;TList);
	.uleb128	25
	.ascii	"DOCOPY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol LISTA
	.uleb128	19
	.ascii	"LISTA\000"
	.long	.La158-.Ldebug_info0
# Symbol LISTB
	.uleb128	19
	.ascii	"LISTB\000"
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef DoSrcUnique(<TList>;TList;TList);
	.uleb128	25
	.ascii	"DOSRCUNIQUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol LISTA
	.uleb128	19
	.ascii	"LISTA\000"
	.long	.La158-.Ldebug_info0
# Symbol LISTB
	.uleb128	19
	.ascii	"LISTB\000"
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef DoAnd(<TList>;TList;TList);
	.uleb128	25
	.ascii	"DOAND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol LISTA
	.uleb128	19
	.ascii	"LISTA\000"
	.long	.La158-.Ldebug_info0
# Symbol LISTB
	.uleb128	19
	.ascii	"LISTB\000"
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef DoDestUnique(<TList>;TList;TList);
	.uleb128	25
	.ascii	"DODESTUNIQUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol LISTA
	.uleb128	19
	.ascii	"LISTA\000"
	.long	.La158-.Ldebug_info0
# Symbol LISTB
	.uleb128	19
	.ascii	"LISTB\000"
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef DoOr(<TList>;TList;TList);
	.uleb128	25
	.ascii	"DOOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol LISTA
	.uleb128	19
	.ascii	"LISTA\000"
	.long	.La158-.Ldebug_info0
# Symbol LISTB
	.uleb128	19
	.ascii	"LISTB\000"
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef DoXOr(<TList>;TList;TList);
	.uleb128	25
	.ascii	"DOXOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol LISTA
	.uleb128	19
	.ascii	"LISTA\000"
	.long	.La158-.Ldebug_info0
# Symbol LISTB
	.uleb128	19
	.ascii	"LISTB\000"
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef Get(<TList>;LongInt):^untyped;
	.uleb128	15
	.ascii	"GET\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La31-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Grow(<TList>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef Put(<TList>;LongInt;Pointer);
	.uleb128	25
	.ascii	"PUT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol ITEM
	.uleb128	19
	.ascii	"ITEM\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Notify(<TList>;Pointer;TListNotification);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol PTR
	.uleb128	19
	.ascii	"PTR\000"
	.long	.La31-.Ldebug_info0
# Symbol ACTION
	.uleb128	19
	.ascii	"ACTION\000"
	.long	.La572-.Ldebug_info0
	.byte	0
# Procdef SetCapacity(<TList>;LongInt);
	.uleb128	25
	.ascii	"SETCAPACITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol NEWCAPACITY
	.uleb128	19
	.ascii	"NEWCAPACITY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetCapacity(<TList>):LongInt;
	.uleb128	15
	.ascii	"GETCAPACITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef SetCount(<TList>;LongInt);
	.uleb128	25
	.ascii	"SETCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol NEWCOUNT
	.uleb128	19
	.ascii	"NEWCOUNT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetCount(<TList>):LongInt;
	.uleb128	15
	.ascii	"GETCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef GetList(<TList>):^TPointerList;
	.uleb128	15
	.ascii	"GETLIST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La574-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TList>;<Pointer>);
	.uleb128	22
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TList>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef FPOAttachObserver(<TList>;TObject);
	.uleb128	20
	.ascii	"FPOATTACHOBSERVER\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol AOBSERVER
	.uleb128	19
	.ascii	"AOBSERVER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef FPODetachObserver(<TList>;TObject);
	.uleb128	20
	.ascii	"FPODETACHOBSERVER\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol AOBSERVER
	.uleb128	19
	.ascii	"AOBSERVER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef FPONotifyObservers(<TList>;TObject;TFPObservedOperation;Pointer);
	.uleb128	20
	.ascii	"FPONOTIFYOBSERVERS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol ASENDER
	.uleb128	19
	.ascii	"ASENDER\000"
	.long	.La20-.Ldebug_info0
# Symbol AOPERATION
	.uleb128	19
	.ascii	"AOPERATION\000"
	.long	.La576-.Ldebug_info0
# Symbol DATA
	.uleb128	19
	.ascii	"DATA\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef AddList(<TList>;TList);
	.uleb128	20
	.ascii	"ADDLIST\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol ALIST
	.uleb128	19
	.ascii	"ALIST\000"
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef Add(<TList>;Pointer):LongInt;
	.uleb128	22
	.ascii	"ADD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol ITEM
	.uleb128	19
	.ascii	"ITEM\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Clear(<TList>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef Delete(<TList>;LongInt);
	.uleb128	20
	.ascii	"DELETE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef class Error(<Class Of TList>;const AnsiString;Int64);
	.uleb128	23
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
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La578-.Ldebug_info0
# Symbol MSG
	.uleb128	19
	.ascii	"MSG\000"
	.long	.La27-.Ldebug_info0
# Symbol DATA
	.uleb128	19
	.ascii	"DATA\000"
	.long	.La71-.Ldebug_info0
	.byte	0
# Procdef Exchange(<TList>;LongInt;LongInt);
	.uleb128	20
	.ascii	"EXCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol INDEX1
	.uleb128	19
	.ascii	"INDEX1\000"
	.long	.La120-.Ldebug_info0
# Symbol INDEX2
	.uleb128	19
	.ascii	"INDEX2\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Expand(<TList>):TList;
	.uleb128	22
	.ascii	"EXPAND\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef Extract(<TList>;Pointer):^untyped;
	.uleb128	22
	.ascii	"EXTRACT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La31-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol ITEM
	.uleb128	19
	.ascii	"ITEM\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef First(<TList>):^untyped;
	.uleb128	22
	.ascii	"FIRST\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La31-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef GetEnumerator(<TList>):TListEnumerator;
	.uleb128	22
	.ascii	"GETENUMERATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La580-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef IndexOf(<TList>;Pointer):LongInt;
	.uleb128	22
	.ascii	"INDEXOF\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol ITEM
	.uleb128	19
	.ascii	"ITEM\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Insert(<TList>;LongInt;Pointer);
	.uleb128	20
	.ascii	"INSERT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol ITEM
	.uleb128	19
	.ascii	"ITEM\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Last(<TList>):^untyped;
	.uleb128	22
	.ascii	"LAST\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La31-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef Move(<TList>;LongInt;LongInt);
	.uleb128	20
	.ascii	"MOVE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol CURINDEX
	.uleb128	19
	.ascii	"CURINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol NEWINDEX
	.uleb128	19
	.ascii	"NEWINDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Assign(<TList>;TList;TListAssignOp="0";TList="nil");
	.uleb128	20
	.ascii	"ASSIGN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol LISTA
	.uleb128	19
	.ascii	"LISTA\000"
	.long	.La158-.Ldebug_info0
# Symbol AOPERATOR
	.uleb128	19
	.ascii	"AOPERATOR\000"
	.long	.La583-.Ldebug_info0
# Symbol LISTB
	.uleb128	19
	.ascii	"LISTB\000"
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef Remove(<TList>;Pointer):LongInt;
	.uleb128	22
	.ascii	"REMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol ITEM
	.uleb128	19
	.ascii	"ITEM\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Pack(<TList>);
	.uleb128	20
	.ascii	"PACK\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef Sort(<TList>;TListSortCompare);
	.uleb128	20
	.ascii	"SORT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La158-.Ldebug_info0
# Symbol COMPARE
	.uleb128	19
	.ascii	"COMPARE\000"
	.long	.La585-.Ldebug_info0
	.byte	0
	.byte	0
.La159:
	.uleb128	7
	.long	.La158-.Ldebug_info0
# Definition TFormState
.La161:
	.uleb128	5
	.ascii	"TFORMSTATE\000"
	.long	.La587-.Ldebug_info0
.La587:
	.uleb128	35
	.ascii	"TFORMSTATE\000"
	.byte	7
	.short	4
.La162:
	.uleb128	7
	.long	.La161-.Ldebug_info0
# Definition TMonitor
.La163:
	.uleb128	5
	.ascii	"TMONITOR\000"
	.long	.La588-.Ldebug_info0
.La588:
	.uleb128	8
	.long	.La165-.Ldebug_info0
.La165:
	.uleb128	9
	.ascii	"TMONITOR\000"
	.uleb128	24
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La22-.Ldebug_info0
	.uleb128	14
	.ascii	"FHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La131-.Ldebug_info0
	.uleb128	14
	.ascii	"FMONITORNUM\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"HANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La131-.Ldebug_info0
	.uleb128	14
	.ascii	"MONITORNUM\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La120-.Ldebug_info0
# Procdef GetInfo(<TMonitor>;out tagMonitorInfo):Boolean;
	.uleb128	15
	.ascii	"GETINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La163-.Ldebug_info0
# Symbol INFO
	.uleb128	19
	.ascii	"INFO\000"
	.long	.La589-.Ldebug_info0
	.byte	0
# Procdef GetLeft(<TMonitor>):LongInt;
	.uleb128	15
	.ascii	"GETLEFT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La163-.Ldebug_info0
	.byte	0
# Procdef GetHeight(<TMonitor>):LongInt;
	.uleb128	15
	.ascii	"GETHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La163-.Ldebug_info0
	.byte	0
# Procdef GetPixelsPerInch(<TMonitor>):LongInt;
	.uleb128	15
	.ascii	"GETPIXELSPERINCH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La163-.Ldebug_info0
	.byte	0
# Procdef GetTop(<TMonitor>):LongInt;
	.uleb128	15
	.ascii	"GETTOP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La163-.Ldebug_info0
	.byte	0
# Procdef GetWidth(<TMonitor>):LongInt;
	.uleb128	15
	.ascii	"GETWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La163-.Ldebug_info0
	.byte	0
# Procdef GetBoundsRect(<TMonitor>;<var TRect>):<record type>;
	.uleb128	15
	.ascii	"GETBOUNDSRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La186-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La163-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef GetWorkareaRect(<TMonitor>;<var TRect>):<record type>;
	.uleb128	15
	.ascii	"GETWORKAREARECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La186-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La163-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef GetPrimary(<TMonitor>):Boolean;
	.uleb128	15
	.ascii	"GETPRIMARY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La163-.Ldebug_info0
	.byte	0
	.byte	0
.La164:
	.uleb128	7
	.long	.La163-.Ldebug_info0
# Definition TFormHandlerType
.La166:
	.uleb128	5
	.ascii	"TFORMHANDLERTYPE\000"
	.long	.La591-.Ldebug_info0
.La591:
	.uleb128	36
	.ascii	"TFORMHANDLERTYPE\000"
	.byte	4
	.uleb128	37
	.ascii	"FHTFIRSTSHOW\000"
	.long	0
	.uleb128	37
	.ascii	"FHTCLOSE\000"
	.long	1
	.uleb128	37
	.ascii	"FHTCREATE\000"
	.long	2
	.byte	0
.La167:
	.uleb128	7
	.long	.La166-.Ldebug_info0
# Definition TMethod
.La168:
	.uleb128	5
	.ascii	"TMETHOD\000"
	.long	.La592-.Ldebug_info0
.La592:
	.uleb128	32
	.ascii	"TMETHOD\000"
	.uleb128	16
	.uleb128	11
	.ascii	"CODE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La31-.Ldebug_info0
	.uleb128	11
	.ascii	"DATA\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La31-.Ldebug_info0
	.byte	0
.La169:
	.uleb128	7
	.long	.La168-.Ldebug_info0
# Definition TLMActivate
.La170:
	.uleb128	5
	.ascii	"TLMACTIVATE\000"
	.long	.La593-.Ldebug_info0
.La593:
	.uleb128	32
	.ascii	"TLMACTIVATE\000"
	.uleb128	32
	.uleb128	11
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"ACTIVE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La247-.Ldebug_info0
	.uleb128	11
	.ascii	"MINIMIZED\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La594-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"ACTIVEWINDOW\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La131-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La71-.Ldebug_info0
	.byte	0
.La171:
	.uleb128	7
	.long	.La170-.Ldebug_info0
# Definition TMessage
.La172:
	.uleb128	5
	.ascii	"TMESSAGE\000"
	.long	.La596-.Ldebug_info0
.La596:
	.uleb128	32
	.ascii	"TMESSAGE\000"
	.uleb128	32
	.uleb128	11
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"WPARAM\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"LPARAM\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"WPARAMLO\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La247-.Ldebug_info0
	.uleb128	11
	.ascii	"WPARAMHI\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La247-.Ldebug_info0
	.uleb128	11
	.ascii	"WPARAMFILLER\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La597-.Ldebug_info0
	.uleb128	11
	.ascii	"LPARAMLO\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La247-.Ldebug_info0
	.uleb128	11
	.ascii	"LPARAMHI\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La247-.Ldebug_info0
	.uleb128	11
	.ascii	"LPARAMFILLER\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La597-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULTLO\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La247-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULTHI\000"
	.byte	2
	.byte	35
	.uleb128	26
	.long	.La247-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULTFILLER\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La597-.Ldebug_info0
	.byte	0
.La173:
	.uleb128	7
	.long	.La172-.Ldebug_info0
# Definition TLMHelp
.La174:
	.uleb128	5
	.ascii	"TLMHELP\000"
	.long	.La599-.Ldebug_info0
.La599:
	.uleb128	32
	.ascii	"TLMHELP\000"
	.uleb128	32
	.uleb128	11
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"HELPINFO\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La600-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La71-.Ldebug_info0
	.byte	0
.La175:
	.uleb128	7
	.long	.La174-.Ldebug_info0
# Definition TLMMove
.La176:
	.uleb128	5
	.ascii	"TLMMOVE\000"
	.long	.La602-.Ldebug_info0
.La602:
	.uleb128	32
	.ascii	"TLMMOVE\000"
	.uleb128	32
	.uleb128	11
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"MOVETYPE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"XPOS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La603-.Ldebug_info0
	.uleb128	11
	.ascii	"YPOS\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La603-.Ldebug_info0
	.uleb128	11
	.ascii	"POS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La510-.Ldebug_info0
	.uleb128	11
	.ascii	"DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La71-.Ldebug_info0
	.byte	0
.La177:
	.uleb128	7
	.long	.La176-.Ldebug_info0
# Definition TWMShowWindow
.La178:
	.uleb128	5
	.ascii	"TWMSHOWWINDOW\000"
	.long	.La605-.Ldebug_info0
.La605:
	.uleb128	32
	.ascii	"TWMSHOWWINDOW\000"
	.uleb128	32
	.uleb128	11
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"MSGFILLER\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La597-.Ldebug_info0
	.uleb128	11
	.ascii	"SHOW\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La594-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La247-.Ldebug_info0
	.uleb128	11
	.ascii	"WPARAMFILLER\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La597-.Ldebug_info0
	.uleb128	11
	.ascii	"STATUS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La71-.Ldebug_info0
	.byte	0
.La179:
	.uleb128	7
	.long	.La178-.Ldebug_info0
# Definition TWMSize
.La180:
	.uleb128	5
	.ascii	"TWMSIZE\000"
	.long	.La606-.Ldebug_info0
.La606:
	.uleb128	32
	.ascii	"TWMSIZE\000"
	.uleb128	32
	.uleb128	11
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"MSGFILLER\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La597-.Ldebug_info0
	.uleb128	11
	.ascii	"SIZETYPE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"WIDTH\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La247-.Ldebug_info0
	.uleb128	11
	.ascii	"HEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La247-.Ldebug_info0
	.uleb128	11
	.ascii	"LPARAMFILLER\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La597-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La71-.Ldebug_info0
	.byte	0
.La181:
	.uleb128	7
	.long	.La180-.Ldebug_info0
# Definition TLMWindowPosMsg
.La182:
	.uleb128	5
	.ascii	"TLMWINDOWPOSMSG\000"
	.long	.La607-.Ldebug_info0
.La607:
	.uleb128	32
	.ascii	"TLMWINDOWPOSMSG\000"
	.uleb128	32
	.uleb128	11
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"WINDOWPOS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La608-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La71-.Ldebug_info0
	.byte	0
.La183:
	.uleb128	7
	.long	.La182-.Ldebug_info0
# Definition TCustomForm.Class Of TCustomForm
.La184:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La185:
	.uleb128	7
	.long	.La184-.Ldebug_info0
# Definition TRect
.La186:
	.uleb128	5
	.ascii	"TRECT\000"
	.long	.La610-.Ldebug_info0
.La610:
	.uleb128	32
	.ascii	"TRECT\000"
	.uleb128	16
	.uleb128	11
	.ascii	"LEFT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"TOP\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"RIGHT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"BOTTOM\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"TOPLEFT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La284-.Ldebug_info0
	.uleb128	11
	.ascii	"BOTTOMRIGHT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La284-.Ldebug_info0
	.uleb128	11
	.ascii	"VECTOR\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La611-.Ldebug_info0
# Procdef getHeight(<var TRect>):LongInt;
	.uleb128	31
	.ascii	"GETHEIGHT\000"
	.byte	1
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef getLocation(<var TRect>):<record type>;
	.uleb128	31
	.ascii	"GETLOCATION\000"
	.byte	1
	.byte	1
	.byte	3
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef getSize(<var TRect>):<record type>;
	.uleb128	31
	.ascii	"GETSIZE\000"
	.byte	1
	.byte	1
	.byte	3
	.long	.La200-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef getWidth(<var TRect>):LongInt;
	.uleb128	31
	.ascii	"GETWIDTH\000"
	.byte	1
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef setHeight(<var TRect>;LongInt);
	.uleb128	43
	.ascii	"SETHEIGHT\000"
	.byte	1
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef setSize(<var TRect>;TSize);
	.uleb128	43
	.ascii	"SETSIZE\000"
	.byte	1
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La200-.Ldebug_info0
	.byte	0
# Procdef setWidth(<var TRect>;LongInt);
	.uleb128	43
	.ascii	"SETWIDTH\000"
	.byte	1
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<var TRect>;TPoint);
	.uleb128	44
	.ascii	"CREATE\000"
	.byte	1
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol ORIGIN
	.uleb128	19
	.ascii	"ORIGIN\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<var TRect>;TPoint;LongInt;LongInt);
	.uleb128	44
	.ascii	"CREATE\000"
	.byte	1
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol ORIGIN
	.uleb128	19
	.ascii	"ORIGIN\000"
	.long	.La284-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<var TRect>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	44
	.ascii	"CREATE\000"
	.byte	1
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol ALEFT
	.uleb128	19
	.ascii	"ALEFT\000"
	.long	.La120-.Ldebug_info0
# Symbol ATOP
	.uleb128	19
	.ascii	"ATOP\000"
	.long	.La120-.Ldebug_info0
# Symbol ARIGHT
	.uleb128	19
	.ascii	"ARIGHT\000"
	.long	.La120-.Ldebug_info0
# Symbol ABOTTOM
	.uleb128	19
	.ascii	"ABOTTOM\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<var TRect>;TPoint;TPoint;Boolean="FALSE");
	.uleb128	44
	.ascii	"CREATE\000"
	.byte	1
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol P1
	.uleb128	19
	.ascii	"P1\000"
	.long	.La284-.Ldebug_info0
# Symbol P2
	.uleb128	19
	.ascii	"P2\000"
	.long	.La284-.Ldebug_info0
# Symbol NORMALIZE
	.uleb128	19
	.ascii	"NORMALIZE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<var TRect>;TRect;Boolean="FALSE");
	.uleb128	44
	.ascii	"CREATE\000"
	.byte	1
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol R
	.uleb128	19
	.ascii	"R\000"
	.long	.La186-.Ldebug_info0
# Symbol NORMALIZE
	.uleb128	19
	.ascii	"NORMALIZE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef operator =(TRect;TRect):Boolean;
	.uleb128	44
	.ascii	"equal\000"
	.byte	1
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol L
	.uleb128	19
	.ascii	"L\000"
	.long	.La186-.Ldebug_info0
# Symbol R
	.uleb128	19
	.ascii	"R\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef operator <>(TRect;TRect):Boolean;
	.uleb128	44
	.ascii	"not_equal\000"
	.byte	1
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol L
	.uleb128	19
	.ascii	"L\000"
	.long	.La186-.Ldebug_info0
# Symbol R
	.uleb128	19
	.ascii	"R\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef operator +(<var TRect>;TRect;TRect):<record type>;
	.uleb128	44
	.ascii	"plus\000"
	.byte	1
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
# Symbol L
	.uleb128	19
	.ascii	"L\000"
	.long	.La186-.Ldebug_info0
# Symbol R
	.uleb128	19
	.ascii	"R\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef operator *(<var TRect>;TRect;TRect):<record type>;
	.uleb128	44
	.ascii	"star\000"
	.byte	1
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
# Symbol L
	.uleb128	19
	.ascii	"L\000"
	.long	.La186-.Ldebug_info0
# Symbol R
	.uleb128	19
	.ascii	"R\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef class Empty(<var TRect>):<record type>; Static;
	.uleb128	44
	.ascii	"EMPTY\000"
	.byte	1
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef NormalizeRect(<var TRect>);
	.uleb128	45
	.ascii	"NORMALIZERECT\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef IsEmpty(<var TRect>):Boolean;
	.uleb128	44
	.ascii	"ISEMPTY\000"
	.byte	1
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef Contains(<var TRect>;TPoint):Boolean;
	.uleb128	44
	.ascii	"CONTAINS\000"
	.byte	1
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol PT
	.uleb128	19
	.ascii	"PT\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef Contains(<var TRect>;TRect):Boolean;
	.uleb128	44
	.ascii	"CONTAINS\000"
	.byte	1
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol R
	.uleb128	19
	.ascii	"R\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef IntersectsWith(<var TRect>;TRect):Boolean;
	.uleb128	44
	.ascii	"INTERSECTSWITH\000"
	.byte	1
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol R
	.uleb128	19
	.ascii	"R\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef class Intersect(<var TRect>;TRect;TRect):<record type>; Static;
	.uleb128	44
	.ascii	"INTERSECT\000"
	.byte	1
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
# Symbol R1
	.uleb128	19
	.ascii	"R1\000"
	.long	.La186-.Ldebug_info0
# Symbol R2
	.uleb128	19
	.ascii	"R2\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef Intersect(<var TRect>;TRect);
	.uleb128	45
	.ascii	"INTERSECT\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol R
	.uleb128	19
	.ascii	"R\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef class Union(<var TRect>;TRect;TRect):<record type>; Static;
	.uleb128	44
	.ascii	"UNION\000"
	.byte	1
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
# Symbol R1
	.uleb128	19
	.ascii	"R1\000"
	.long	.La186-.Ldebug_info0
# Symbol R2
	.uleb128	19
	.ascii	"R2\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef Union(<var TRect>;TRect);
	.uleb128	45
	.ascii	"UNION\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol R
	.uleb128	19
	.ascii	"R\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef class Union(<var TRect>;const {Open} Array Of TPoint;<const Int64>):<record type>; Static;
	.uleb128	44
	.ascii	"UNION\000"
	.byte	1
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
# Symbol POINTS
	.uleb128	19
	.ascii	"POINTS\000"
	.long	.La613-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	19
	.ascii	"highPOINTS\000"
	.long	.La71-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La613:
	.uleb128	27
	.long	.La284-.Ldebug_info0
	.uleb128	28
	.sleb128	0
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.byte	0
.La614:
	.uleb128	7
	.long	.La613-.Ldebug_info0
	.byte	0
# Procdef Offset(<var TRect>;LongInt;LongInt);
	.uleb128	45
	.ascii	"OFFSET\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol DX
	.uleb128	19
	.ascii	"DX\000"
	.long	.La120-.Ldebug_info0
# Symbol DY
	.uleb128	19
	.ascii	"DY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Offset(<var TRect>;TPoint);
	.uleb128	45
	.ascii	"OFFSET\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol DP
	.uleb128	19
	.ascii	"DP\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef SetLocation(<var TRect>;LongInt;LongInt);
	.uleb128	45
	.ascii	"SETLOCATION\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetLocation(<var TRect>;TPoint);
	.uleb128	45
	.ascii	"SETLOCATION\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol P
	.uleb128	19
	.ascii	"P\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef Inflate(<var TRect>;LongInt;LongInt);
	.uleb128	45
	.ascii	"INFLATE\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol DX
	.uleb128	19
	.ascii	"DX\000"
	.long	.La120-.Ldebug_info0
# Symbol DY
	.uleb128	19
	.ascii	"DY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Inflate(<var TRect>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	45
	.ascii	"INFLATE\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol DL
	.uleb128	19
	.ascii	"DL\000"
	.long	.La120-.Ldebug_info0
# Symbol DT
	.uleb128	19
	.ascii	"DT\000"
	.long	.La120-.Ldebug_info0
# Symbol DR
	.uleb128	19
	.ascii	"DR\000"
	.long	.La120-.Ldebug_info0
# Symbol DB
	.uleb128	19
	.ascii	"DB\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef CenterPoint(<var TRect>):<record type>;
	.uleb128	44
	.ascii	"CENTERPOINT\000"
	.byte	1
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef SplitRect(<var TRect>;<var TRect>;TSplitRectType;LongInt):<record type>;
	.uleb128	44
	.ascii	"SPLITRECT\000"
	.byte	1
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
# Symbol SPLITTYPE
	.uleb128	19
	.ascii	"SPLITTYPE\000"
	.long	.La615-.Ldebug_info0
# Symbol ASIZE
	.uleb128	19
	.ascii	"ASIZE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SplitRect(<var TRect>;<var TRect>;TSplitRectType;Double):<record type>;
	.uleb128	44
	.ascii	"SPLITRECT\000"
	.byte	1
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La186-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
# Symbol SPLITTYPE
	.uleb128	19
	.ascii	"SPLITTYPE\000"
	.long	.La615-.Ldebug_info0
# Symbol PERCENT
	.uleb128	19
	.ascii	"PERCENT\000"
	.long	.La325-.Ldebug_info0
	.byte	0
	.byte	0
.La187:
	.uleb128	7
	.long	.La186-.Ldebug_info0
# Definition TCreateParams
.La188:
	.uleb128	5
	.ascii	"TCREATEPARAMS\000"
	.long	.La617-.Ldebug_info0
.La617:
	.uleb128	32
	.ascii	"TCREATEPARAMS\000"
	.uleb128	184
	.uleb128	11
	.ascii	"CAPTION\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La371-.Ldebug_info0
	.uleb128	11
	.ascii	"STYLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"EXSTYLE\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"WIDTH\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"HEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	28
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"WNDPARENT\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La131-.Ldebug_info0
	.uleb128	11
	.ascii	"PARAM\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La31-.Ldebug_info0
	.uleb128	11
	.ascii	"WINDOWCLASS\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La618-.Ldebug_info0
	.uleb128	11
	.ascii	"WINCLASSNAME\000"
	.byte	2
	.byte	35
	.uleb128	120
	.long	.La620-.Ldebug_info0
	.byte	0
.La189:
	.uleb128	7
	.long	.La188-.Ldebug_info0
# Definition TCloseAction
.La190:
	.uleb128	5
	.ascii	"TCLOSEACTION\000"
	.long	.La622-.Ldebug_info0
.La622:
	.uleb128	36
	.ascii	"TCLOSEACTION\000"
	.byte	4
	.uleb128	37
	.ascii	"CANONE\000"
	.long	0
	.uleb128	37
	.ascii	"CAHIDE\000"
	.long	1
	.uleb128	37
	.ascii	"CAFREE\000"
	.long	2
	.uleb128	37
	.ascii	"CAMINIMIZE\000"
	.long	3
	.byte	0
.La191:
	.uleb128	7
	.long	.La190-.Ldebug_info0
# Definition TOperation
.La192:
	.uleb128	5
	.ascii	"TOPERATION\000"
	.long	.La623-.Ldebug_info0
.La623:
	.uleb128	36
	.ascii	"TOPERATION\000"
	.byte	4
	.uleb128	37
	.ascii	"OPINSERT\000"
	.long	0
	.uleb128	37
	.ascii	"OPREMOVE\000"
	.long	1
	.byte	0
.La193:
	.uleb128	7
	.long	.La192-.Ldebug_info0
# Definition TCustomActionList
.La194:
	.uleb128	5
	.ascii	"TCUSTOMACTIONLIST\000"
	.long	.La624-.Ldebug_info0
.La624:
	.uleb128	8
	.long	.La196-.Ldebug_info0
.La196:
	.uleb128	9
	.ascii	"TCUSTOMACTIONLIST\000"
	.uleb128	192
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La413-.Ldebug_info0
	.uleb128	14
	.ascii	"FACTIONS\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La224-.Ldebug_info0
	.uleb128	14
	.ascii	"FIMAGECHANGELINK\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La625-.Ldebug_info0
	.uleb128	14
	.ascii	"FIMAGES\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La628-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONEXECUTE\000"
	.byte	3
	.byte	35
	.uleb128	152
	.byte	3
	.long	.La631-.Ldebug_info0
	.uleb128	14
	.ascii	"FONUPDATE\000"
	.byte	3
	.byte	35
	.uleb128	168
	.byte	3
	.long	.La631-.Ldebug_info0
	.uleb128	14
	.ascii	"FSTATE\000"
	.byte	3
	.byte	35
	.uleb128	184
	.byte	3
	.long	.La633-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONEXECUTE\000"
	.byte	3
	.byte	35
	.uleb128	152
	.byte	3
	.long	.La631-.Ldebug_info0
	.uleb128	14
	.ascii	"ONUPDATE\000"
	.byte	3
	.byte	35
	.uleb128	168
	.byte	3
	.long	.La631-.Ldebug_info0
	.uleb128	14
	.ascii	"IMAGES\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La628-.Ldebug_info0
	.uleb128	14
	.ascii	"STATE\000"
	.byte	3
	.byte	35
	.uleb128	184
	.byte	3
	.long	.La633-.Ldebug_info0
# Procdef GetAction(<TCustomActionList>;LongInt):TContainedAction;
	.uleb128	15
	.ascii	"GETACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La635-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetActionCount(<TCustomActionList>):LongInt;
	.uleb128	15
	.ascii	"GETACTIONCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
	.byte	0
# Procdef ImageListChange(<TCustomActionList>;TObject);
	.uleb128	25
	.ascii	"IMAGELISTCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef SetAction(<TCustomActionList>;LongInt;TContainedAction);
	.uleb128	25
	.ascii	"SETACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La635-.Ldebug_info0
	.byte	0
# Procdef SetState(<TCustomActionList>;const TActionListState);
	.uleb128	25
	.ascii	"SETSTATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La633-.Ldebug_info0
	.byte	0
# Procdef AddAction(<TCustomActionList>;TContainedAction);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol ACTION
	.uleb128	19
	.ascii	"ACTION\000"
	.long	.La635-.Ldebug_info0
	.byte	0
# Procdef RemoveAction(<TCustomActionList>;TContainedAction);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol ACTION
	.uleb128	19
	.ascii	"ACTION\000"
	.long	.La635-.Ldebug_info0
	.byte	0
# Procdef Change(<TCustomActionList>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
	.byte	0
# Procdef GetChildren(<TCustomActionList>;TGetChildProc;TComponent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol PROC
	.uleb128	19
	.ascii	"PROC\000"
	.long	.La243-.Ldebug_info0
# Symbol ROOT
	.uleb128	19
	.ascii	"ROOT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef Notification(<TCustomActionList>;TComponent;TOperation);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
# Symbol OPERATION
	.uleb128	19
	.ascii	"OPERATION\000"
	.long	.La192-.Ldebug_info0
	.byte	0
# Procdef SetChildOrder(<TCustomActionList>;TComponent;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol COMPONENT
	.uleb128	19
	.ascii	"COMPONENT\000"
	.long	.La33-.Ldebug_info0
# Symbol ORDER
	.uleb128	19
	.ascii	"ORDER\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetImages(<TCustomActionList>;TCustomImageList);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La628-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TCustomActionList>;<Pointer>;TComponent);
	.uleb128	18
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
	.long	.La194-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol AOWNER
	.uleb128	19
	.ascii	"AOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TCustomActionList>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef ActionByName(<TCustomActionList>;const AnsiString):TContainedAction;
	.uleb128	22
	.ascii	"ACTIONBYNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La635-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol ACTIONNAME
	.uleb128	19
	.ascii	"ACTIONNAME\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef ExecuteAction(<TCustomActionList>;TBasicAction):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol ACTION
	.uleb128	19
	.ascii	"ACTION\000"
	.long	.La197-.Ldebug_info0
	.byte	0
# Procdef GetEnumerator(<TCustomActionList>):TActionListEnumerator;
	.uleb128	22
	.ascii	"GETENUMERATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La638-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
	.byte	0
# Procdef IndexOfName(<TCustomActionList>;const AnsiString):LongInt;
	.uleb128	22
	.ascii	"INDEXOFNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol ACTIONNAME
	.uleb128	19
	.ascii	"ACTIONNAME\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef IsShortCut(<TCustomActionList>;var TLMKey):Boolean;
	.uleb128	22
	.ascii	"ISSHORTCUT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef UpdateAction(<TCustomActionList>;TBasicAction):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La194-.Ldebug_info0
# Symbol ACTION
	.uleb128	19
	.ascii	"ACTION\000"
	.long	.La197-.Ldebug_info0
	.byte	0
	.byte	0
.La195:
	.uleb128	7
	.long	.La194-.Ldebug_info0
# Definition TBasicAction
.La197:
	.uleb128	5
	.ascii	"TBASICACTION\000"
	.long	.La641-.Ldebug_info0
.La641:
	.uleb128	8
	.long	.La199-.Ldebug_info0
.La199:
	.uleb128	9
	.ascii	"TBASICACTION\000"
	.uleb128	160
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La35-.Ldebug_info0
	.uleb128	14
	.ascii	"FACTIONCOMPONENT\000"
	.byte	2
	.byte	35
	.uleb128	96
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONEXECUTE\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONUPDATE\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FCLIENTS\000"
	.byte	3
	.byte	35
	.uleb128	152
	.byte	2
	.long	.La224-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ACTIONCOMPONENT\000"
	.byte	2
	.byte	35
	.uleb128	96
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"ONEXECUTE\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONUPDATE\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La140-.Ldebug_info0
# Procdef Change(<TBasicAction>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La197-.Ldebug_info0
	.byte	0
# Procdef SetOnExecute(<TBasicAction>;TNotifyEvent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La197-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La140-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TBasicAction>;<Pointer>;TComponent);
	.uleb128	18
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
	.long	.La197-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La197-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol AOWNER
	.uleb128	19
	.ascii	"AOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TBasicAction>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La197-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef HandlesTarget(<TBasicAction>;TObject):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La197-.Ldebug_info0
# Symbol TARGET
	.uleb128	19
	.ascii	"TARGET\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef UpdateTarget(<TBasicAction>;TObject);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La197-.Ldebug_info0
# Symbol TARGET
	.uleb128	19
	.ascii	"TARGET\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef ExecuteTarget(<TBasicAction>;TObject);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La197-.Ldebug_info0
# Symbol TARGET
	.uleb128	19
	.ascii	"TARGET\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef Execute(<TBasicAction>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La197-.Ldebug_info0
	.byte	0
# Procdef RegisterChanges(<TBasicAction>;TBasicActionLink);
	.uleb128	20
	.ascii	"REGISTERCHANGES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La197-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La642-.Ldebug_info0
	.byte	0
# Procdef UnRegisterChanges(<TBasicAction>;TBasicActionLink);
	.uleb128	20
	.ascii	"UNREGISTERCHANGES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La197-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La642-.Ldebug_info0
	.byte	0
# Procdef Update(<TBasicAction>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La197-.Ldebug_info0
	.byte	0
	.byte	0
.La198:
	.uleb128	7
	.long	.La197-.Ldebug_info0
# Definition TSize
.La200:
	.uleb128	5
	.ascii	"TSIZE\000"
	.long	.La645-.Ldebug_info0
.La645:
	.uleb128	32
	.ascii	"TSIZE\000"
	.uleb128	8
	.uleb128	11
	.ascii	"CX\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"CY\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"WIDTH\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"HEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La120-.Ldebug_info0
# Procdef constructor Create(<var TSize>;LongInt;LongInt);
	.uleb128	44
	.ascii	"CREATE\000"
	.byte	1
	.byte	1
	.long	.La200-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La200-.Ldebug_info0
# Symbol AX
	.uleb128	19
	.ascii	"AX\000"
	.long	.La120-.Ldebug_info0
# Symbol AY
	.uleb128	19
	.ascii	"AY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<var TSize>;TSize);
	.uleb128	44
	.ascii	"CREATE\000"
	.byte	1
	.byte	1
	.long	.La200-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La200-.Ldebug_info0
# Symbol ASZ
	.uleb128	19
	.ascii	"ASZ\000"
	.long	.La200-.Ldebug_info0
	.byte	0
# Procdef Add(<var TSize>;const TSize):<record type>;
	.uleb128	44
	.ascii	"ADD\000"
	.byte	1
	.byte	1
	.long	.La200-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La200-.Ldebug_info0
# Symbol ASZ
	.uleb128	19
	.ascii	"ASZ\000"
	.long	.La200-.Ldebug_info0
	.byte	0
# Procdef Distance(<var TSize>;const TSize):Double;
	.uleb128	44
	.ascii	"DISTANCE\000"
	.byte	1
	.byte	1
	.long	.La325-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La200-.Ldebug_info0
# Symbol ASZ
	.uleb128	19
	.ascii	"ASZ\000"
	.long	.La200-.Ldebug_info0
	.byte	0
# Procdef IsZero(<var TSize>):Boolean;
	.uleb128	44
	.ascii	"ISZERO\000"
	.byte	1
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La200-.Ldebug_info0
	.byte	0
# Procdef Subtract(<var TSize>;const TSize):<record type>;
	.uleb128	44
	.ascii	"SUBTRACT\000"
	.byte	1
	.byte	1
	.long	.La200-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La200-.Ldebug_info0
# Symbol ASZ
	.uleb128	19
	.ascii	"ASZ\000"
	.long	.La200-.Ldebug_info0
	.byte	0
# Procdef operator =(const TSize;const TSize):Boolean;
	.uleb128	44
	.ascii	"equal\000"
	.byte	1
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol ASZ1
	.uleb128	19
	.ascii	"ASZ1\000"
	.long	.La200-.Ldebug_info0
# Symbol ASZ2
	.uleb128	19
	.ascii	"ASZ2\000"
	.long	.La200-.Ldebug_info0
	.byte	0
# Procdef operator <>(const TSize;const TSize):Boolean;
	.uleb128	44
	.ascii	"not_equal\000"
	.byte	1
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol ASZ1
	.uleb128	19
	.ascii	"ASZ1\000"
	.long	.La200-.Ldebug_info0
# Symbol ASZ2
	.uleb128	19
	.ascii	"ASZ2\000"
	.long	.La200-.Ldebug_info0
	.byte	0
# Procdef operator +(const TSize;const TSize):<record type>;
	.uleb128	44
	.ascii	"plus\000"
	.byte	1
	.byte	1
	.long	.La200-.Ldebug_info0
# Symbol ASZ1
	.uleb128	19
	.ascii	"ASZ1\000"
	.long	.La200-.Ldebug_info0
# Symbol ASZ2
	.uleb128	19
	.ascii	"ASZ2\000"
	.long	.La200-.Ldebug_info0
	.byte	0
# Procdef operator -(const TSize;const TSize):<record type>;
	.uleb128	44
	.ascii	"minus\000"
	.byte	1
	.byte	1
	.long	.La200-.Ldebug_info0
# Symbol ASZ1
	.uleb128	19
	.ascii	"ASZ1\000"
	.long	.La200-.Ldebug_info0
# Symbol ASZ2
	.uleb128	19
	.ascii	"ASZ2\000"
	.long	.La200-.Ldebug_info0
	.byte	0
	.byte	0
.La201:
	.uleb128	7
	.long	.La200-.Ldebug_info0
# Definition TCustomForm.Class Of TCustomForm
.La202:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La203:
	.uleb128	7
	.long	.La202-.Ldebug_info0
# Definition TBitmap
.La204:
	.uleb128	5
	.ascii	"TBITMAP\000"
	.long	.La646-.Ldebug_info0
.La646:
	.uleb128	8
	.long	.La206-.Ldebug_info0
.La206:
	.uleb128	9
	.ascii	"TBITMAP\000"
	.uleb128	120
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La649-.Ldebug_info0
# Procdef InitializeReader(<TBitmap>;TLazIntfImage;TFPCustomImageReader);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La204-.Ldebug_info0
# Symbol AIMAGE
	.uleb128	19
	.ascii	"AIMAGE\000"
	.long	.La650-.Ldebug_info0
# Symbol AREADER
	.uleb128	19
	.ascii	"AREADER\000"
	.long	.La653-.Ldebug_info0
	.byte	0
# Procdef class GetReaderClass(<Class Of TBitmap>):Class Of TFPCustomImageReader;
	.uleb128	26
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
	.long	.La656-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La658-.Ldebug_info0
	.byte	0
# Procdef class GetWriterClass(<Class Of TBitmap>):Class Of TFPCustomImageWriter;
	.uleb128	26
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
	.long	.La660-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La662-.Ldebug_info0
	.byte	0
# Procdef class GetSharedImageClass(<Class Of TBitmap>):Class Of TSharedRasterImage;
	.uleb128	26
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
	.long	.La664-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La666-.Ldebug_info0
	.byte	0
# Procdef class GetFileExtensions(<Class Of TBitmap>;<var AnsiString>):AnsiString;
	.uleb128	18
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
	.long	.La27-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La668-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef GetResourceType(<TBitmap>):^Char;
	.uleb128	18
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
	.long	.La371-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La204-.Ldebug_info0
	.byte	0
# Procdef LoadFromStream(<TBitmap>;TStream;LongWord);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La204-.Ldebug_info0
# Symbol ASTREAM
	.uleb128	19
	.ascii	"ASTREAM\000"
	.long	.La670-.Ldebug_info0
# Symbol ASIZE
	.uleb128	19
	.ascii	"ASIZE\000"
	.long	.La293-.Ldebug_info0
	.byte	0
	.byte	0
.La205:
	.uleb128	7
	.long	.La204-.Ldebug_info0
# Definition TControlRolesForForm
.La207:
	.uleb128	5
	.ascii	"TCONTROLROLESFORFORM\000"
	.long	.La673-.Ldebug_info0
.La673:
	.uleb128	35
	.ascii	"TCONTROLROLESFORFORM\000"
	.byte	7
	.short	4
.La208:
	.uleb128	7
	.long	.La207-.Ldebug_info0
# Definition TLMKey
.La211:
	.uleb128	5
	.ascii	"TLMKEY\000"
	.long	.La674-.Ldebug_info0
.La674:
	.uleb128	32
	.ascii	"TLMKEY\000"
	.uleb128	32
	.uleb128	11
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"CHARCODE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La247-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La247-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSED2\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"KEYDATA\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La71-.Ldebug_info0
	.byte	0
.La212:
	.uleb128	7
	.long	.La211-.Ldebug_info0
# Definition <procedure variable type of procedure(TComponent) of object;Register>
.La213:
	.uleb128	5
	.ascii	"TGETCHILDPROC\000"
	.long	.La675-.Ldebug_info0
.La675:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La676-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La676:
	.uleb128	41
	.ascii	"TGETCHILDPROC\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"CHILD\000"
	.long	.La33-.Ldebug_info0
	.byte	0
.La214:
	.uleb128	7
	.long	.La213-.Ldebug_info0
# Definition Char
.La216:
	.uleb128	5
	.ascii	"CHAR\000"
	.long	.La677-.Ldebug_info0
.La677:
	.uleb128	29
	.ascii	"Char\000"
	.byte	8
	.byte	1
.La217:
	.uleb128	7
	.long	.La216-.Ldebug_info0
# Definition TPersistent
.La221:
	.uleb128	5
	.ascii	"TPERSISTENT\000"
	.long	.La678-.Ldebug_info0
.La678:
	.uleb128	8
	.long	.La223-.Ldebug_info0
.La223:
	.uleb128	9
	.ascii	"TPERSISTENT\000"
	.uleb128	24
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La22-.Ldebug_info0
	.uleb128	14
	.ascii	"FOBSERVERS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La224-.Ldebug_info0
# Procdef AssignError(<TPersistent>;TPersistent);
	.uleb128	25
	.ascii	"ASSIGNERROR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La221-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef AssignTo(<TPersistent>;TPersistent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La221-.Ldebug_info0
# Symbol DEST
	.uleb128	19
	.ascii	"DEST\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef DefineProperties(<TPersistent>;TFiler);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La221-.Ldebug_info0
# Symbol FILER
	.uleb128	19
	.ascii	"FILER\000"
	.long	.La240-.Ldebug_info0
	.byte	0
# Procdef GetOwner(<TPersistent>):TPersistent;
	.uleb128	26
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
	.long	.La221-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TPersistent>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La221-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Assign(<TPersistent>;TPersistent);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La221-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef FPOAttachObserver(<TPersistent>;TObject);
	.uleb128	20
	.ascii	"FPOATTACHOBSERVER\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La221-.Ldebug_info0
# Symbol AOBSERVER
	.uleb128	19
	.ascii	"AOBSERVER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef FPODetachObserver(<TPersistent>;TObject);
	.uleb128	20
	.ascii	"FPODETACHOBSERVER\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La221-.Ldebug_info0
# Symbol AOBSERVER
	.uleb128	19
	.ascii	"AOBSERVER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef FPONotifyObservers(<TPersistent>;TObject;TFPObservedOperation;Pointer);
	.uleb128	20
	.ascii	"FPONOTIFYOBSERVERS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La221-.Ldebug_info0
# Symbol ASENDER
	.uleb128	19
	.ascii	"ASENDER\000"
	.long	.La20-.Ldebug_info0
# Symbol AOPERATION
	.uleb128	19
	.ascii	"AOPERATION\000"
	.long	.La576-.Ldebug_info0
# Symbol DATA
	.uleb128	19
	.ascii	"DATA\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef GetNamePath(<TPersistent>;<var AnsiString>):AnsiString;
	.uleb128	18
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
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La221-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
	.byte	0
.La222:
	.uleb128	7
	.long	.La221-.Ldebug_info0
# Definition TFPList
.La224:
	.uleb128	5
	.ascii	"TFPLIST\000"
	.long	.La679-.Ldebug_info0
.La679:
	.uleb128	8
	.long	.La226-.Ldebug_info0
.La226:
	.uleb128	9
	.ascii	"TFPLIST\000"
	.uleb128	24
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La22-.Ldebug_info0
	.uleb128	14
	.ascii	"FLIST\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La574-.Ldebug_info0
	.uleb128	14
	.ascii	"FCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FCAPACITY\000"
	.byte	2
	.byte	35
	.uleb128	20
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"CAPACITY\000"
	.byte	2
	.byte	35
	.uleb128	20
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"COUNT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"LIST\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La574-.Ldebug_info0
# Procdef CopyMove(<TFPList>;TFPList);
	.uleb128	25
	.ascii	"COPYMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol ALIST
	.uleb128	19
	.ascii	"ALIST\000"
	.long	.La224-.Ldebug_info0
	.byte	0
# Procdef MergeMove(<TFPList>;TFPList);
	.uleb128	25
	.ascii	"MERGEMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol ALIST
	.uleb128	19
	.ascii	"ALIST\000"
	.long	.La224-.Ldebug_info0
	.byte	0
# Procdef DoCopy(<TFPList>;TFPList;TFPList);
	.uleb128	25
	.ascii	"DOCOPY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol LISTA
	.uleb128	19
	.ascii	"LISTA\000"
	.long	.La224-.Ldebug_info0
# Symbol LISTB
	.uleb128	19
	.ascii	"LISTB\000"
	.long	.La224-.Ldebug_info0
	.byte	0
# Procdef DoSrcUnique(<TFPList>;TFPList;TFPList);
	.uleb128	25
	.ascii	"DOSRCUNIQUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol LISTA
	.uleb128	19
	.ascii	"LISTA\000"
	.long	.La224-.Ldebug_info0
# Symbol LISTB
	.uleb128	19
	.ascii	"LISTB\000"
	.long	.La224-.Ldebug_info0
	.byte	0
# Procdef DoAnd(<TFPList>;TFPList;TFPList);
	.uleb128	25
	.ascii	"DOAND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol LISTA
	.uleb128	19
	.ascii	"LISTA\000"
	.long	.La224-.Ldebug_info0
# Symbol LISTB
	.uleb128	19
	.ascii	"LISTB\000"
	.long	.La224-.Ldebug_info0
	.byte	0
# Procdef DoDestUnique(<TFPList>;TFPList;TFPList);
	.uleb128	25
	.ascii	"DODESTUNIQUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol LISTA
	.uleb128	19
	.ascii	"LISTA\000"
	.long	.La224-.Ldebug_info0
# Symbol LISTB
	.uleb128	19
	.ascii	"LISTB\000"
	.long	.La224-.Ldebug_info0
	.byte	0
# Procdef DoOr(<TFPList>;TFPList;TFPList);
	.uleb128	25
	.ascii	"DOOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol LISTA
	.uleb128	19
	.ascii	"LISTA\000"
	.long	.La224-.Ldebug_info0
# Symbol LISTB
	.uleb128	19
	.ascii	"LISTB\000"
	.long	.La224-.Ldebug_info0
	.byte	0
# Procdef DoXOr(<TFPList>;TFPList;TFPList);
	.uleb128	25
	.ascii	"DOXOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol LISTA
	.uleb128	19
	.ascii	"LISTA\000"
	.long	.La224-.Ldebug_info0
# Symbol LISTB
	.uleb128	19
	.ascii	"LISTB\000"
	.long	.La224-.Ldebug_info0
	.byte	0
# Procdef Get(<TFPList>;LongInt):^untyped;
	.uleb128	15
	.ascii	"GET\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La31-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Put(<TFPList>;LongInt;Pointer);
	.uleb128	25
	.ascii	"PUT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol ITEM
	.uleb128	19
	.ascii	"ITEM\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef SetCapacity(<TFPList>;LongInt);
	.uleb128	25
	.ascii	"SETCAPACITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol NEWCAPACITY
	.uleb128	19
	.ascii	"NEWCAPACITY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetCount(<TFPList>;LongInt);
	.uleb128	25
	.ascii	"SETCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol NEWCOUNT
	.uleb128	19
	.ascii	"NEWCOUNT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef RaiseIndexError(<TFPList>;LongInt);
	.uleb128	25
	.ascii	"RAISEINDEXERROR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TFPList>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef AddList(<TFPList>;TFPList);
	.uleb128	20
	.ascii	"ADDLIST\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol ALIST
	.uleb128	19
	.ascii	"ALIST\000"
	.long	.La224-.Ldebug_info0
	.byte	0
# Procdef Add(<TFPList>;Pointer):LongInt;
	.uleb128	22
	.ascii	"ADD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol ITEM
	.uleb128	19
	.ascii	"ITEM\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Clear(<TFPList>);
	.uleb128	20
	.ascii	"CLEAR\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
	.byte	0
# Procdef Delete(<TFPList>;LongInt);
	.uleb128	20
	.ascii	"DELETE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef class Error(<Class Of TFPList>;const AnsiString;Int64);
	.uleb128	20
	.ascii	"ERROR\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La680-.Ldebug_info0
# Symbol MSG
	.uleb128	19
	.ascii	"MSG\000"
	.long	.La27-.Ldebug_info0
# Symbol DATA
	.uleb128	19
	.ascii	"DATA\000"
	.long	.La71-.Ldebug_info0
	.byte	0
# Procdef Exchange(<TFPList>;LongInt;LongInt);
	.uleb128	20
	.ascii	"EXCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol INDEX1
	.uleb128	19
	.ascii	"INDEX1\000"
	.long	.La120-.Ldebug_info0
# Symbol INDEX2
	.uleb128	19
	.ascii	"INDEX2\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Expand(<TFPList>):TFPList;
	.uleb128	22
	.ascii	"EXPAND\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
	.byte	0
# Procdef Extract(<TFPList>;Pointer):^untyped;
	.uleb128	22
	.ascii	"EXTRACT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La31-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol ITEM
	.uleb128	19
	.ascii	"ITEM\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef First(<TFPList>):^untyped;
	.uleb128	22
	.ascii	"FIRST\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La31-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
	.byte	0
# Procdef GetEnumerator(<TFPList>):TFPListEnumerator;
	.uleb128	22
	.ascii	"GETENUMERATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La682-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
	.byte	0
# Procdef IndexOf(<TFPList>;Pointer):LongInt;
	.uleb128	22
	.ascii	"INDEXOF\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol ITEM
	.uleb128	19
	.ascii	"ITEM\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef IndexOfItem(<TFPList>;Pointer;TDirection):LongInt;
	.uleb128	22
	.ascii	"INDEXOFITEM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol ITEM
	.uleb128	19
	.ascii	"ITEM\000"
	.long	.La31-.Ldebug_info0
# Symbol DIRECTION
	.uleb128	19
	.ascii	"DIRECTION\000"
	.long	.La685-.Ldebug_info0
	.byte	0
# Procdef Insert(<TFPList>;LongInt;Pointer);
	.uleb128	20
	.ascii	"INSERT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol ITEM
	.uleb128	19
	.ascii	"ITEM\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Last(<TFPList>):^untyped;
	.uleb128	22
	.ascii	"LAST\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La31-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
	.byte	0
# Procdef Move(<TFPList>;LongInt;LongInt);
	.uleb128	20
	.ascii	"MOVE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol CURINDEX
	.uleb128	19
	.ascii	"CURINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol NEWINDEX
	.uleb128	19
	.ascii	"NEWINDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Assign(<TFPList>;TFPList;TListAssignOp="0";TFPList="nil");
	.uleb128	20
	.ascii	"ASSIGN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol LISTA
	.uleb128	19
	.ascii	"LISTA\000"
	.long	.La224-.Ldebug_info0
# Symbol AOPERATOR
	.uleb128	19
	.ascii	"AOPERATOR\000"
	.long	.La583-.Ldebug_info0
# Symbol LISTB
	.uleb128	19
	.ascii	"LISTB\000"
	.long	.La224-.Ldebug_info0
	.byte	0
# Procdef Remove(<TFPList>;Pointer):LongInt;
	.uleb128	22
	.ascii	"REMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol ITEM
	.uleb128	19
	.ascii	"ITEM\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Pack(<TFPList>);
	.uleb128	20
	.ascii	"PACK\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
	.byte	0
# Procdef Sort(<TFPList>;TListSortCompare);
	.uleb128	20
	.ascii	"SORT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol COMPARE
	.uleb128	19
	.ascii	"COMPARE\000"
	.long	.La585-.Ldebug_info0
	.byte	0
# Procdef ForEachCall(<TFPList>;TListCallback;Pointer);
	.uleb128	20
	.ascii	"FOREACHCALL\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol PROC2CALL
	.uleb128	19
	.ascii	"PROC2CALL\000"
	.long	.La687-.Ldebug_info0
# Symbol ARG
	.uleb128	19
	.ascii	"ARG\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef ForEachCall(<TFPList>;TListStaticCallback;Pointer);
	.uleb128	20
	.ascii	"FOREACHCALL\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La224-.Ldebug_info0
# Symbol PROC2CALL
	.uleb128	19
	.ascii	"PROC2CALL\000"
	.long	.La689-.Ldebug_info0
# Symbol ARG
	.uleb128	19
	.ascii	"ARG\000"
	.long	.La31-.Ldebug_info0
	.byte	0
	.byte	0
.La225:
	.uleb128	7
	.long	.La224-.Ldebug_info0
# Definition TComponentState
.La227:
	.uleb128	5
	.ascii	"TCOMPONENTSTATE\000"
	.long	.La691-.Ldebug_info0
.La691:
	.uleb128	35
	.ascii	"TCOMPONENTSTATE\000"
	.byte	7
	.short	4
.La228:
	.uleb128	7
	.long	.La227-.Ldebug_info0
# Definition TComponentStyle
.La229:
	.uleb128	5
	.ascii	"TCOMPONENTSTYLE\000"
	.long	.La692-.Ldebug_info0
.La692:
	.uleb128	35
	.ascii	"TCOMPONENTSTYLE\000"
	.byte	7
	.short	4
.La230:
	.uleb128	7
	.long	.La229-.Ldebug_info0
# Definition IUnknown
.La231:
	.uleb128	5
	.ascii	"IUNKNOWN\000"
	.long	.La693-.Ldebug_info0
.La693:
	.uleb128	8
	.long	.La233-.Ldebug_info0
.La233:
	.uleb128	9
	.ascii	"IUNKNOWN\000"
	.uleb128	0
# Procdef QueryInterface(<IUnknown>;constref TGuid;out <Formal type>):LongInt; StdCall;
	.uleb128	46
	.ascii	"QUERYINTERFACE\000"
	.byte	1
	.byte	1
	.byte	1
	.byte	4
	.byte	6
	.byte	16
	.uleb128	0
	.byte	34
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La231-.Ldebug_info0
# Symbol IID
	.uleb128	19
	.ascii	"IID\000"
	.long	.La85-.Ldebug_info0
# Symbol OBJ
	.uleb128	19
	.ascii	"OBJ\000"
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef _AddRef(<IUnknown>):LongInt; StdCall;
	.uleb128	46
	.ascii	"_ADDREF\000"
	.byte	1
	.byte	1
	.byte	1
	.byte	4
	.byte	6
	.byte	16
	.uleb128	8
	.byte	34
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La231-.Ldebug_info0
	.byte	0
# Procdef _Release(<IUnknown>):LongInt; StdCall;
	.uleb128	46
	.ascii	"_RELEASE\000"
	.byte	1
	.byte	1
	.byte	1
	.byte	4
	.byte	6
	.byte	16
	.uleb128	16
	.byte	34
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La231-.Ldebug_info0
	.byte	0
	.byte	0
.La232:
	.uleb128	7
	.long	.La231-.Ldebug_info0
# Definition TReader
.La234:
	.uleb128	5
	.ascii	"TREADER\000"
	.long	.La694-.Ldebug_info0
.La694:
	.uleb128	8
	.long	.La236-.Ldebug_info0
.La236:
	.uleb128	9
	.ascii	"TREADER\000"
	.uleb128	256
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La242-.Ldebug_info0
	.uleb128	14
	.ascii	"FDRIVER\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La695-.Ldebug_info0
	.uleb128	14
	.ascii	"FOWNER\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"FPARENT\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"FFIXUPS\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La20-.Ldebug_info0
	.uleb128	14
	.ascii	"FLOADED\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	3
	.long	.La224-.Ldebug_info0
	.uleb128	14
	.ascii	"FONFINDMETHOD\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La698-.Ldebug_info0
	.uleb128	14
	.ascii	"FONSETMETHODPROPERTY\000"
	.byte	2
	.byte	35
	.uleb128	96
	.byte	3
	.long	.La700-.Ldebug_info0
	.uleb128	14
	.ascii	"FONSETNAME\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La702-.Ldebug_info0
	.uleb128	14
	.ascii	"FONREFERENCENAME\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La704-.Ldebug_info0
	.uleb128	14
	.ascii	"FONANCESTORNOTFOUND\000"
	.byte	3
	.byte	35
	.uleb128	144
	.byte	3
	.long	.La706-.Ldebug_info0
	.uleb128	14
	.ascii	"FONERROR\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La708-.Ldebug_info0
	.uleb128	14
	.ascii	"FONPROPERTYNOTFOUND\000"
	.byte	3
	.byte	35
	.uleb128	176
	.byte	3
	.long	.La710-.Ldebug_info0
	.uleb128	14
	.ascii	"FONFINDCOMPONENTCLASS\000"
	.byte	3
	.byte	35
	.uleb128	192
	.byte	3
	.long	.La712-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCREATECOMPONENT\000"
	.byte	3
	.byte	35
	.uleb128	208
	.byte	3
	.long	.La714-.Ldebug_info0
	.uleb128	14
	.ascii	"FPROPNAME\000"
	.byte	3
	.byte	35
	.uleb128	224
	.byte	3
	.long	.La27-.Ldebug_info0
	.uleb128	14
	.ascii	"FCANHANDLEEXCEPTS\000"
	.byte	3
	.byte	35
	.uleb128	232
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FONREADSTRINGPROPERTY\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La716-.Ldebug_info0
	.uleb128	14
	.ascii	"PROPNAME\000"
	.byte	3
	.byte	35
	.uleb128	224
	.byte	3
	.long	.La27-.Ldebug_info0
	.uleb128	14
	.ascii	"CANHANDLEEXCEPTIONS\000"
	.byte	3
	.byte	35
	.uleb128	232
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"DRIVER\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La695-.Ldebug_info0
	.uleb128	14
	.ascii	"OWNER\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"PARENT\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"ONERROR\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La708-.Ldebug_info0
	.uleb128	14
	.ascii	"ONPROPERTYNOTFOUND\000"
	.byte	3
	.byte	35
	.uleb128	176
	.byte	3
	.long	.La710-.Ldebug_info0
	.uleb128	14
	.ascii	"ONFINDMETHOD\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La698-.Ldebug_info0
	.uleb128	14
	.ascii	"ONSETMETHODPROPERTY\000"
	.byte	2
	.byte	35
	.uleb128	96
	.byte	3
	.long	.La700-.Ldebug_info0
	.uleb128	14
	.ascii	"ONSETNAME\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La702-.Ldebug_info0
	.uleb128	14
	.ascii	"ONREFERENCENAME\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La704-.Ldebug_info0
	.uleb128	14
	.ascii	"ONANCESTORNOTFOUND\000"
	.byte	3
	.byte	35
	.uleb128	144
	.byte	3
	.long	.La706-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCREATECOMPONENT\000"
	.byte	3
	.byte	35
	.uleb128	208
	.byte	3
	.long	.La714-.Ldebug_info0
	.uleb128	14
	.ascii	"ONFINDCOMPONENTCLASS\000"
	.byte	3
	.byte	35
	.uleb128	192
	.byte	3
	.long	.La712-.Ldebug_info0
	.uleb128	14
	.ascii	"ONREADSTRINGPROPERTY\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La716-.Ldebug_info0
# Procdef DoFixupReferences(<TReader>);
	.uleb128	25
	.ascii	"DOFIXUPREFERENCES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef FindComponentClass(<TReader>;const AnsiString):Class Of TComponent;
	.uleb128	15
	.ascii	"FINDCOMPONENTCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La718-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol ACLASSNAME
	.uleb128	19
	.ascii	"ACLASSNAME\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef Error(<TReader>;const AnsiString):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef FindMethod(<TReader>;TComponent;const AnsiString):^untyped;
	.uleb128	26
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
	.long	.La31-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol AROOT
	.uleb128	19
	.ascii	"AROOT\000"
	.long	.La33-.Ldebug_info0
# Symbol AMETHODNAME
	.uleb128	19
	.ascii	"AMETHODNAME\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef ReadProperty(<TReader>;TPersistent);
	.uleb128	25
	.ascii	"READPROPERTY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol AINSTANCE
	.uleb128	19
	.ascii	"AINSTANCE\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef ReadPropValue(<TReader>;TPersistent;Pointer);
	.uleb128	25
	.ascii	"READPROPVALUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	19
	.ascii	"INSTANCE\000"
	.long	.La221-.Ldebug_info0
# Symbol PROPINFO
	.uleb128	19
	.ascii	"PROPINFO\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef PropertyError(<TReader>);
	.uleb128	25
	.ascii	"PROPERTYERROR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef ReadData(<TReader>;TComponent);
	.uleb128	25
	.ascii	"READDATA\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	19
	.ascii	"INSTANCE\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef CreateDriver(<TReader>;TStream;LongInt):TAbstractObjectReader;
	.uleb128	26
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
	.long	.La695-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol STREAM
	.uleb128	19
	.ascii	"STREAM\000"
	.long	.La670-.Ldebug_info0
# Symbol BUFSIZE
	.uleb128	19
	.ascii	"BUFSIZE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TReader>;<Pointer>;TStream;LongInt);
	.uleb128	22
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol STREAM
	.uleb128	19
	.ascii	"STREAM\000"
	.long	.La670-.Ldebug_info0
# Symbol BUFSIZE
	.uleb128	19
	.ascii	"BUFSIZE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TReader>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef BeginReferences(<TReader>);
	.uleb128	20
	.ascii	"BEGINREFERENCES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef CheckValue(<TReader>;TValueType);
	.uleb128	20
	.ascii	"CHECKVALUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La720-.Ldebug_info0
	.byte	0
# Procdef DefineProperty(<TReader>;const AnsiString;TReaderProc;TWriterProc;Boolean);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol NAME
	.uleb128	19
	.ascii	"NAME\000"
	.long	.La27-.Ldebug_info0
# Symbol AREADDATA
	.uleb128	19
	.ascii	"AREADDATA\000"
	.long	.La722-.Ldebug_info0
# Symbol WRITEDATA
	.uleb128	19
	.ascii	"WRITEDATA\000"
	.long	.La724-.Ldebug_info0
# Symbol HASDATA
	.uleb128	19
	.ascii	"HASDATA\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DefineBinaryProperty(<TReader>;const AnsiString;TStreamProc;TStreamProc;Boolean);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol NAME
	.uleb128	19
	.ascii	"NAME\000"
	.long	.La27-.Ldebug_info0
# Symbol AREADDATA
	.uleb128	19
	.ascii	"AREADDATA\000"
	.long	.La726-.Ldebug_info0
# Symbol WRITEDATA
	.uleb128	19
	.ascii	"WRITEDATA\000"
	.long	.La726-.Ldebug_info0
# Symbol HASDATA
	.uleb128	19
	.ascii	"HASDATA\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef EndOfList(<TReader>):Boolean;
	.uleb128	22
	.ascii	"ENDOFLIST\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef EndReferences(<TReader>);
	.uleb128	20
	.ascii	"ENDREFERENCES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef FixupReferences(<TReader>);
	.uleb128	20
	.ascii	"FIXUPREFERENCES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef NextValue(<TReader>):<enumeration type>;
	.uleb128	22
	.ascii	"NEXTVALUE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La720-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef Read(<TReader>;var <Formal type>;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol BUF
	.uleb128	19
	.ascii	"BUF\000"
	.long	.La53-.Ldebug_info0
# Symbol COUNT
	.uleb128	19
	.ascii	"COUNT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef ReadBoolean(<TReader>):Boolean;
	.uleb128	22
	.ascii	"READBOOLEAN\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef ReadChar(<TReader>):Char;
	.uleb128	22
	.ascii	"READCHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La216-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef ReadWideChar(<TReader>):WideChar;
	.uleb128	22
	.ascii	"READWIDECHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La728-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef ReadUnicodeChar(<TReader>):WideChar;
	.uleb128	22
	.ascii	"READUNICODECHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La728-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef ReadCollection(<TReader>;TCollection);
	.uleb128	20
	.ascii	"READCOLLECTION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol COLLECTION
	.uleb128	19
	.ascii	"COLLECTION\000"
	.long	.La730-.Ldebug_info0
	.byte	0
# Procdef ReadComponent(<TReader>;TComponent):TComponent;
	.uleb128	22
	.ascii	"READCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol COMPONENT
	.uleb128	19
	.ascii	"COMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef ReadComponents(<TReader>;TComponent;TComponent;TReadComponentsProc);
	.uleb128	20
	.ascii	"READCOMPONENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol AOWNER
	.uleb128	19
	.ascii	"AOWNER\000"
	.long	.La33-.Ldebug_info0
# Symbol APARENT
	.uleb128	19
	.ascii	"APARENT\000"
	.long	.La33-.Ldebug_info0
# Symbol PROC
	.uleb128	19
	.ascii	"PROC\000"
	.long	.La733-.Ldebug_info0
	.byte	0
# Procdef ReadFloat(<TReader>):Double;
	.uleb128	22
	.ascii	"READFLOAT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La325-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef ReadSingle(<TReader>):Single;
	.uleb128	22
	.ascii	"READSINGLE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La735-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef ReadDate(<TReader>):Double;
	.uleb128	22
	.ascii	"READDATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La737-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef ReadCurrency(<TReader>):Currency;
	.uleb128	22
	.ascii	"READCURRENCY\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La739-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef ReadIdent(<TReader>;<var AnsiString>):AnsiString;
	.uleb128	22
	.ascii	"READIDENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef ReadInteger(<TReader>):LongInt;
	.uleb128	22
	.ascii	"READINTEGER\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef ReadInt64(<TReader>):Int64;
	.uleb128	22
	.ascii	"READINT64\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La71-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef ReadSet(<TReader>;Pointer):LongInt;
	.uleb128	22
	.ascii	"READSET\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol ENUMTYPE
	.uleb128	19
	.ascii	"ENUMTYPE\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef ReadListBegin(<TReader>);
	.uleb128	20
	.ascii	"READLISTBEGIN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef ReadListEnd(<TReader>);
	.uleb128	20
	.ascii	"READLISTEND\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef ReadRootComponent(<TReader>;TComponent):TComponent;
	.uleb128	22
	.ascii	"READROOTCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol AROOT
	.uleb128	19
	.ascii	"AROOT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef ReadVariant(<TReader>;<var Variant>):Variant;
	.uleb128	22
	.ascii	"READVARIANT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La741-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La741-.Ldebug_info0
	.byte	0
# Procdef ReadSignature(<TReader>);
	.uleb128	20
	.ascii	"READSIGNATURE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef ReadString(<TReader>;<var AnsiString>):AnsiString;
	.uleb128	22
	.ascii	"READSTRING\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef ReadWideString(<TReader>;<var WideString>):WideString;
	.uleb128	22
	.ascii	"READWIDESTRING\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La743-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La743-.Ldebug_info0
	.byte	0
# Procdef ReadUnicodeString(<TReader>;<var UnicodeString>):UnicodeString;
	.uleb128	22
	.ascii	"READUNICODESTRING\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La745-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La745-.Ldebug_info0
	.byte	0
# Procdef ReadValue(<TReader>):<enumeration type>;
	.uleb128	22
	.ascii	"READVALUE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La720-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef CopyValue(<TReader>;TWriter);
	.uleb128	20
	.ascii	"COPYVALUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La234-.Ldebug_info0
# Symbol WRITER
	.uleb128	19
	.ascii	"WRITER\000"
	.long	.La237-.Ldebug_info0
	.byte	0
	.byte	0
.La235:
	.uleb128	7
	.long	.La234-.Ldebug_info0
# Definition TWriter
.La237:
	.uleb128	5
	.ascii	"TWRITER\000"
	.long	.La747-.Ldebug_info0
.La747:
	.uleb128	8
	.long	.La239-.Ldebug_info0
.La239:
	.uleb128	9
	.ascii	"TWRITER\000"
	.uleb128	136
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La242-.Ldebug_info0
	.uleb128	14
	.ascii	"FDRIVER\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La748-.Ldebug_info0
	.uleb128	14
	.ascii	"FDESTROYDRIVER\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FROOTANCESTOR\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"FPROPPATH\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La27-.Ldebug_info0
	.uleb128	14
	.ascii	"FANCESTORS\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	3
	.long	.La751-.Ldebug_info0
	.uleb128	14
	.ascii	"FANCESTORPOS\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FCURRENTPOS\000"
	.byte	2
	.byte	35
	.uleb128	84
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FONFINDANCESTOR\000"
	.byte	2
	.byte	35
	.uleb128	88
	.byte	3
	.long	.La754-.Ldebug_info0
	.uleb128	14
	.ascii	"FONWRITEMETHODPROPERTY\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	3
	.long	.La756-.Ldebug_info0
	.uleb128	14
	.ascii	"FONWRITESTRINGPROPERTY\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La716-.Ldebug_info0
	.uleb128	14
	.ascii	"ROOTANCESTOR\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"ONFINDANCESTOR\000"
	.byte	2
	.byte	35
	.uleb128	88
	.byte	3
	.long	.La754-.Ldebug_info0
	.uleb128	14
	.ascii	"ONWRITEMETHODPROPERTY\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	3
	.long	.La756-.Ldebug_info0
	.uleb128	14
	.ascii	"ONWRITESTRINGPROPERTY\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La716-.Ldebug_info0
	.uleb128	14
	.ascii	"DRIVER\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La748-.Ldebug_info0
	.uleb128	14
	.ascii	"PROPERTYPATH\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La27-.Ldebug_info0
# Procdef AddToAncestorList(<TWriter>;TComponent);
	.uleb128	25
	.ascii	"ADDTOANCESTORLIST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol COMPONENT
	.uleb128	19
	.ascii	"COMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef WriteComponentData(<TWriter>;TComponent);
	.uleb128	25
	.ascii	"WRITECOMPONENTDATA\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	19
	.ascii	"INSTANCE\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef DetermineAncestor(<TWriter>;TComponent);
	.uleb128	25
	.ascii	"DETERMINEANCESTOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol COMPONENT
	.uleb128	19
	.ascii	"COMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef DoFindAncestor(<TWriter>;TComponent);
	.uleb128	25
	.ascii	"DOFINDANCESTOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol COMPONENT
	.uleb128	19
	.ascii	"COMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef SetRoot(<TWriter>;TComponent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol AROOT
	.uleb128	19
	.ascii	"AROOT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef WriteBinary(<TWriter>;TStreamProc);
	.uleb128	25
	.ascii	"WRITEBINARY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol AWRITEDATA
	.uleb128	19
	.ascii	"AWRITEDATA\000"
	.long	.La726-.Ldebug_info0
	.byte	0
# Procdef WriteProperty(<TWriter>;TPersistent;Pointer);
	.uleb128	25
	.ascii	"WRITEPROPERTY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	19
	.ascii	"INSTANCE\000"
	.long	.La221-.Ldebug_info0
# Symbol PROPINFO
	.uleb128	19
	.ascii	"PROPINFO\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef WriteProperties(<TWriter>;TPersistent);
	.uleb128	25
	.ascii	"WRITEPROPERTIES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	19
	.ascii	"INSTANCE\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef WriteChildren(<TWriter>;TComponent);
	.uleb128	25
	.ascii	"WRITECHILDREN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol COMPONENT
	.uleb128	19
	.ascii	"COMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef CreateDriver(<TWriter>;TStream;LongInt):TAbstractObjectWriter;
	.uleb128	26
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
	.long	.La748-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol STREAM
	.uleb128	19
	.ascii	"STREAM\000"
	.long	.La670-.Ldebug_info0
# Symbol BUFSIZE
	.uleb128	19
	.ascii	"BUFSIZE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TWriter>;<Pointer>;TAbstractObjectWriter);
	.uleb128	22
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol ADRIVER
	.uleb128	19
	.ascii	"ADRIVER\000"
	.long	.La748-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TWriter>;<Pointer>;TStream;LongInt);
	.uleb128	22
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol STREAM
	.uleb128	19
	.ascii	"STREAM\000"
	.long	.La670-.Ldebug_info0
# Symbol BUFSIZE
	.uleb128	19
	.ascii	"BUFSIZE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TWriter>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef DefineProperty(<TWriter>;const AnsiString;TReaderProc;TWriterProc;Boolean);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol NAME
	.uleb128	19
	.ascii	"NAME\000"
	.long	.La27-.Ldebug_info0
# Symbol READDATA
	.uleb128	19
	.ascii	"READDATA\000"
	.long	.La722-.Ldebug_info0
# Symbol AWRITEDATA
	.uleb128	19
	.ascii	"AWRITEDATA\000"
	.long	.La724-.Ldebug_info0
# Symbol HASDATA
	.uleb128	19
	.ascii	"HASDATA\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DefineBinaryProperty(<TWriter>;const AnsiString;TStreamProc;TStreamProc;Boolean);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol NAME
	.uleb128	19
	.ascii	"NAME\000"
	.long	.La27-.Ldebug_info0
# Symbol READDATA
	.uleb128	19
	.ascii	"READDATA\000"
	.long	.La726-.Ldebug_info0
# Symbol AWRITEDATA
	.uleb128	19
	.ascii	"AWRITEDATA\000"
	.long	.La726-.Ldebug_info0
# Symbol HASDATA
	.uleb128	19
	.ascii	"HASDATA\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef Write(<TWriter>;const <Formal type>;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol BUFFER
	.uleb128	19
	.ascii	"BUFFER\000"
	.long	.La53-.Ldebug_info0
# Symbol COUNT
	.uleb128	19
	.ascii	"COUNT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef WriteBoolean(<TWriter>;Boolean);
	.uleb128	20
	.ascii	"WRITEBOOLEAN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef WriteCollection(<TWriter>;TCollection);
	.uleb128	20
	.ascii	"WRITECOLLECTION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La730-.Ldebug_info0
	.byte	0
# Procdef WriteComponent(<TWriter>;TComponent);
	.uleb128	20
	.ascii	"WRITECOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol COMPONENT
	.uleb128	19
	.ascii	"COMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef WriteChar(<TWriter>;Char);
	.uleb128	20
	.ascii	"WRITECHAR\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La216-.Ldebug_info0
	.byte	0
# Procdef WriteWideChar(<TWriter>;WideChar);
	.uleb128	20
	.ascii	"WRITEWIDECHAR\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La728-.Ldebug_info0
	.byte	0
# Procdef WriteDescendent(<TWriter>;TComponent;TComponent);
	.uleb128	20
	.ascii	"WRITEDESCENDENT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol AROOT
	.uleb128	19
	.ascii	"AROOT\000"
	.long	.La33-.Ldebug_info0
# Symbol AANCESTOR
	.uleb128	19
	.ascii	"AANCESTOR\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef WriteFloat(<TWriter>;const Double);
	.uleb128	20
	.ascii	"WRITEFLOAT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La325-.Ldebug_info0
	.byte	0
# Procdef WriteSingle(<TWriter>;const Single);
	.uleb128	20
	.ascii	"WRITESINGLE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La735-.Ldebug_info0
	.byte	0
# Procdef WriteDate(<TWriter>;const TDateTime);
	.uleb128	20
	.ascii	"WRITEDATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La737-.Ldebug_info0
	.byte	0
# Procdef WriteCurrency(<TWriter>;const Currency);
	.uleb128	20
	.ascii	"WRITECURRENCY\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La739-.Ldebug_info0
	.byte	0
# Procdef WriteIdent(<TWriter>;const AnsiString);
	.uleb128	20
	.ascii	"WRITEIDENT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol IDENT
	.uleb128	19
	.ascii	"IDENT\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef WriteInteger(<TWriter>;LongInt);
	.uleb128	20
	.ascii	"WRITEINTEGER\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef WriteInteger(<TWriter>;Int64);
	.uleb128	20
	.ascii	"WRITEINTEGER\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La71-.Ldebug_info0
	.byte	0
# Procdef WriteSet(<TWriter>;LongInt;Pointer);
	.uleb128	20
	.ascii	"WRITESET\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La120-.Ldebug_info0
# Symbol SETTYPE
	.uleb128	19
	.ascii	"SETTYPE\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef WriteListBegin(<TWriter>);
	.uleb128	20
	.ascii	"WRITELISTBEGIN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
	.byte	0
# Procdef WriteListEnd(<TWriter>);
	.uleb128	20
	.ascii	"WRITELISTEND\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
	.byte	0
# Procdef WriteSignature(<TWriter>);
	.uleb128	20
	.ascii	"WRITESIGNATURE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
	.byte	0
# Procdef WriteRootComponent(<TWriter>;TComponent);
	.uleb128	20
	.ascii	"WRITEROOTCOMPONENT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol AROOT
	.uleb128	19
	.ascii	"AROOT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef WriteString(<TWriter>;const AnsiString);
	.uleb128	20
	.ascii	"WRITESTRING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef WriteWideString(<TWriter>;const WideString);
	.uleb128	20
	.ascii	"WRITEWIDESTRING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La743-.Ldebug_info0
	.byte	0
# Procdef WriteUnicodeString(<TWriter>;const UnicodeString);
	.uleb128	20
	.ascii	"WRITEUNICODESTRING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La745-.Ldebug_info0
	.byte	0
# Procdef WriteVariant(<TWriter>;const Variant);
	.uleb128	20
	.ascii	"WRITEVARIANT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La237-.Ldebug_info0
# Symbol VARVALUE
	.uleb128	19
	.ascii	"VARVALUE\000"
	.long	.La741-.Ldebug_info0
	.byte	0
	.byte	0
.La238:
	.uleb128	7
	.long	.La237-.Ldebug_info0
# Definition TFiler
.La240:
	.uleb128	5
	.ascii	"TFILER\000"
	.long	.La758-.Ldebug_info0
.La758:
	.uleb128	8
	.long	.La242-.Ldebug_info0
.La242:
	.uleb128	9
	.ascii	"TFILER\000"
	.uleb128	40
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La22-.Ldebug_info0
	.uleb128	14
	.ascii	"FROOT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"FLOOKUPROOT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"FANCESTOR\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La221-.Ldebug_info0
	.uleb128	14
	.ascii	"FIGNORECHILDREN\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"ROOT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"LOOKUPROOT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"ANCESTOR\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La221-.Ldebug_info0
	.uleb128	14
	.ascii	"IGNORECHILDREN\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La29-.Ldebug_info0
# Procdef SetRoot(<TFiler>;TComponent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La240-.Ldebug_info0
# Symbol AROOT
	.uleb128	19
	.ascii	"AROOT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef DefineProperty(<TFiler>;const AnsiString;TReaderProc;TWriterProc;Boolean);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La240-.Ldebug_info0
# Symbol NAME
	.uleb128	19
	.ascii	"NAME\000"
	.long	.La27-.Ldebug_info0
# Symbol READDATA
	.uleb128	19
	.ascii	"READDATA\000"
	.long	.La722-.Ldebug_info0
# Symbol WRITEDATA
	.uleb128	19
	.ascii	"WRITEDATA\000"
	.long	.La724-.Ldebug_info0
# Symbol HASDATA
	.uleb128	19
	.ascii	"HASDATA\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DefineBinaryProperty(<TFiler>;const AnsiString;TStreamProc;TStreamProc;Boolean);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La240-.Ldebug_info0
# Symbol NAME
	.uleb128	19
	.ascii	"NAME\000"
	.long	.La27-.Ldebug_info0
# Symbol READDATA
	.uleb128	19
	.ascii	"READDATA\000"
	.long	.La726-.Ldebug_info0
# Symbol WRITEDATA
	.uleb128	19
	.ascii	"WRITEDATA\000"
	.long	.La726-.Ldebug_info0
# Symbol HASDATA
	.uleb128	19
	.ascii	"HASDATA\000"
	.long	.La29-.Ldebug_info0
	.byte	0
	.byte	0
.La241:
	.uleb128	7
	.long	.La240-.Ldebug_info0
# Definition <procedure variable type of procedure(TComponent) of object;Register>
.La243:
	.uleb128	5
	.ascii	"TGETCHILDPROC\000"
	.long	.La759-.Ldebug_info0
.La759:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La760-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La760:
	.uleb128	41
	.ascii	"TGETCHILDPROC\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"CHILD\000"
	.long	.La33-.Ldebug_info0
	.byte	0
.La244:
	.uleb128	7
	.long	.La243-.Ldebug_info0
# Definition TComponent.Class Of TComponent
.La245:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La246:
	.uleb128	7
	.long	.La245-.Ldebug_info0
# Definition Word
.La247:
	.uleb128	5
	.ascii	"WORD\000"
	.long	.La761-.Ldebug_info0
.La761:
	.uleb128	29
	.ascii	"WORD\000"
	.byte	7
	.byte	2
.La248:
	.uleb128	7
	.long	.La247-.Ldebug_info0
# Definition TComponentEnumerator
.La249:
	.uleb128	5
	.ascii	"TCOMPONENTENUMERATOR\000"
	.long	.La762-.Ldebug_info0
.La762:
	.uleb128	8
	.long	.La251-.Ldebug_info0
.La251:
	.uleb128	9
	.ascii	"TCOMPONENTENUMERATOR\000"
	.uleb128	24
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La22-.Ldebug_info0
	.uleb128	14
	.ascii	"FCOMPONENT\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"FPOSITION\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La120-.Ldebug_info0
# Procdef constructor Create(<TComponentEnumerator>;<Pointer>;TComponent);
	.uleb128	22
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La249-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La249-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef GetCurrent(<TComponentEnumerator>):TComponent;
	.uleb128	22
	.ascii	"GETCURRENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La249-.Ldebug_info0
	.byte	0
# Procdef MoveNext(<TComponentEnumerator>):Boolean;
	.uleb128	22
	.ascii	"MOVENEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La249-.Ldebug_info0
	.byte	0
	.byte	0
.La250:
	.uleb128	7
	.long	.La249-.Ldebug_info0
# Definition TButtonControl
.La253:
	.uleb128	5
	.ascii	"TBUTTONCONTROL\000"
	.long	.La763-.Ldebug_info0
.La763:
	.uleb128	8
	.long	.La255-.Ldebug_info0
.La255:
	.uleb128	9
	.ascii	"TBUTTONCONTROL\000"
	.uleb128	1408
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La105-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	1384
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FCLICKSDISABLED\000"
	.byte	3
	.byte	35
	.uleb128	1400
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"CLICKSDISABLED\000"
	.byte	3
	.byte	35
	.uleb128	1400
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	1384
	.byte	3
	.long	.La140-.Ldebug_info0
# Procdef IsCheckedStored(<TButtonControl>):Boolean;
	.uleb128	15
	.ascii	"ISCHECKEDSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La253-.Ldebug_info0
	.byte	0
# Procdef WMDefaultClicked(<TButtonControl>;var TMessage);
	.uleb128	25
	.ascii	"WMDEFAULTCLICKED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La253-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TButtonControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La764-.Ldebug_info0
	.byte	0
# Procdef GetActionLinkClass(<TButtonControl>):Class Of TControlActionLink;
	.uleb128	26
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
	.long	.La518-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La253-.Ldebug_info0
	.byte	0
# Procdef GetChecked(<TButtonControl>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La253-.Ldebug_info0
	.byte	0
# Procdef SetChecked(<TButtonControl>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La253-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DoOnChange(<TButtonControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La253-.Ldebug_info0
	.byte	0
# Procdef Click(<TButtonControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La253-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TButtonControl>;<Pointer>;TComponent);
	.uleb128	18
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
	.long	.La253-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La253-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	19
	.ascii	"THEOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
	.byte	0
.La254:
	.uleb128	7
	.long	.La253-.Ldebug_info0
# Definition TShortCut
.La256:
	.uleb128	5
	.ascii	"TSHORTCUT\000"
	.long	.La766-.Ldebug_info0
.La766:
	.uleb128	29
	.ascii	"TSHORTCUT\000"
	.byte	7
	.byte	2
.La257:
	.uleb128	7
	.long	.La256-.Ldebug_info0
# Definition TLMSetFocus
.La258:
	.uleb128	5
	.ascii	"TLMSETFOCUS\000"
	.long	.La767-.Ldebug_info0
.La767:
	.uleb128	32
	.ascii	"TLMSETFOCUS\000"
	.uleb128	32
	.uleb128	11
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"FOCUSEDWND\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La131-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La71-.Ldebug_info0
	.byte	0
.La259:
	.uleb128	7
	.long	.La258-.Ldebug_info0
# Definition TWMKillFocus
.La260:
	.uleb128	5
	.ascii	"TWMKILLFOCUS\000"
	.long	.La768-.Ldebug_info0
.La768:
	.uleb128	32
	.ascii	"TWMKILLFOCUS\000"
	.uleb128	32
	.uleb128	11
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"MSGFILLER\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La597-.Ldebug_info0
	.uleb128	11
	.ascii	"FOCUSEDWND\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La131-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La71-.Ldebug_info0
	.byte	0
.La261:
	.uleb128	7
	.long	.La260-.Ldebug_info0
# Definition TCustomButton.Class Of TCustomButton
.La262:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La263:
	.uleb128	7
	.long	.La262-.Ldebug_info0
# Definition TShiftState
.La264:
	.uleb128	5
	.ascii	"TSHIFTSTATE\000"
	.long	.La769-.Ldebug_info0
.La769:
	.uleb128	35
	.ascii	"TSHIFTSTATE\000"
	.byte	7
	.short	4
.La265:
	.uleb128	7
	.long	.La264-.Ldebug_info0
# Definition TCustomButton.Class Of TCustomButton
.La266:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La267:
	.uleb128	7
	.long	.La266-.Ldebug_info0
# Definition TCustomEdit
.La269:
	.uleb128	5
	.ascii	"TCUSTOMEDIT\000"
	.long	.La770-.Ldebug_info0
.La770:
	.uleb128	8
	.long	.La271-.Ldebug_info0
.La271:
	.uleb128	9
	.ascii	"TCUSTOMEDIT\000"
	.uleb128	1472
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La105-.Ldebug_info0
	.uleb128	14
	.ascii	"FALIGNMENT\000"
	.byte	3
	.byte	35
	.uleb128	1384
	.byte	3
	.long	.La771-.Ldebug_info0
	.uleb128	14
	.ascii	"FAUTOSELECT\000"
	.byte	3
	.byte	35
	.uleb128	1388
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FAUTOSELECTED\000"
	.byte	3
	.byte	35
	.uleb128	1389
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FCHARCASE\000"
	.byte	3
	.byte	35
	.uleb128	1392
	.byte	3
	.long	.La773-.Ldebug_info0
	.uleb128	14
	.ascii	"FCARETPOS\000"
	.byte	3
	.byte	35
	.uleb128	1396
	.byte	3
	.long	.La284-.Ldebug_info0
	.uleb128	14
	.ascii	"FECHOMODE\000"
	.byte	3
	.byte	35
	.uleb128	1404
	.byte	3
	.long	.La775-.Ldebug_info0
	.uleb128	14
	.ascii	"FHIDESELECTION\000"
	.byte	3
	.byte	35
	.uleb128	1408
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FMAXLENGTH\000"
	.byte	3
	.byte	35
	.uleb128	1412
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FMODIFIED\000"
	.byte	3
	.byte	35
	.uleb128	1416
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FPASSWORDCHAR\000"
	.byte	3
	.byte	35
	.uleb128	1417
	.byte	3
	.long	.La216-.Ldebug_info0
	.uleb128	14
	.ascii	"FREADONLY\000"
	.byte	3
	.byte	35
	.uleb128	1418
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FNUMBERSONLY\000"
	.byte	3
	.byte	35
	.uleb128	1419
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	1424
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FSELLENGTH\000"
	.byte	3
	.byte	35
	.uleb128	1440
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FSELSTART\000"
	.byte	3
	.byte	35
	.uleb128	1444
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FTEXTCHANGEDBYREALSETTEXT\000"
	.byte	3
	.byte	35
	.uleb128	1448
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FTEXTHINT\000"
	.byte	3
	.byte	35
	.uleb128	1456
	.byte	3
	.long	.La282-.Ldebug_info0
	.uleb128	14
	.ascii	"FEMULATEDTEXTHINTSTATUS\000"
	.byte	3
	.byte	35
	.uleb128	1464
	.byte	2
	.long	.La777-.Ldebug_info0
	.uleb128	14
	.ascii	"AUTOSELECT\000"
	.byte	3
	.byte	35
	.uleb128	1388
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"AUTOSELECTED\000"
	.byte	3
	.byte	35
	.uleb128	1389
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"ALIGNMENT\000"
	.byte	3
	.byte	35
	.uleb128	1384
	.byte	3
	.long	.La771-.Ldebug_info0
	.uleb128	14
	.ascii	"CHARCASE\000"
	.byte	3
	.byte	35
	.uleb128	1392
	.byte	3
	.long	.La773-.Ldebug_info0
	.uleb128	14
	.ascii	"ECHOMODE\000"
	.byte	3
	.byte	35
	.uleb128	1404
	.byte	3
	.long	.La775-.Ldebug_info0
	.uleb128	14
	.ascii	"HIDESELECTION\000"
	.byte	3
	.byte	35
	.uleb128	1408
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"MAXLENGTH\000"
	.byte	3
	.byte	35
	.uleb128	1412
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	1424
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"PASSWORDCHAR\000"
	.byte	3
	.byte	35
	.uleb128	1417
	.byte	3
	.long	.La216-.Ldebug_info0
# Procdef GetTextHintFontColor(<TCustomEdit>):LongInt;
	.uleb128	15
	.ascii	"GETTEXTHINTFONTCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La391-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef GetTextHintFontStyle(<TCustomEdit>):Set Of TFontStyle;
	.uleb128	15
	.ascii	"GETTEXTHINTFONTSTYLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La779-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef ShowEmulatedTextHint(<TCustomEdit>;const Boolean="FALSE");
	.uleb128	25
	.ascii	"SHOWEMULATEDTEXTHINT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol FORCESHOW
	.uleb128	19
	.ascii	"FORCESHOW\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef HideEmulatedTextHint(<TCustomEdit>);
	.uleb128	25
	.ascii	"HIDEEMULATEDTEXTHINT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef SetAlignment(<TCustomEdit>;const TAlignment);
	.uleb128	25
	.ascii	"SETALIGNMENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La771-.Ldebug_info0
	.byte	0
# Procdef GetCanUndo(<TCustomEdit>):Boolean;
	.uleb128	15
	.ascii	"GETCANUNDO\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef GetModified(<TCustomEdit>):Boolean;
	.uleb128	15
	.ascii	"GETMODIFIED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef SetCharCase(<TCustomEdit>;TEditCharCase);
	.uleb128	25
	.ascii	"SETCHARCASE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La773-.Ldebug_info0
	.byte	0
# Procdef SetHideSelection(<TCustomEdit>;const Boolean);
	.uleb128	25
	.ascii	"SETHIDESELECTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetMaxLength(<TCustomEdit>;LongInt);
	.uleb128	25
	.ascii	"SETMAXLENGTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetModified(<TCustomEdit>;Boolean);
	.uleb128	25
	.ascii	"SETMODIFIED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetPasswordChar(<TCustomEdit>;const Char);
	.uleb128	25
	.ascii	"SETPASSWORDCHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La216-.Ldebug_info0
	.byte	0
# Procdef SetTextHintFontColor(<TCustomEdit>;const TGraphicsColor);
	.uleb128	25
	.ascii	"SETTEXTHINTFONTCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol ATEXTHINTFONTCOLOR
	.uleb128	19
	.ascii	"ATEXTHINTFONTCOLOR\000"
	.long	.La391-.Ldebug_info0
	.byte	0
# Procdef SetTextHintFontStyle(<TCustomEdit>;const TFontStyles);
	.uleb128	25
	.ascii	"SETTEXTHINTFONTSTYLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol ATEXTHINTFONTSTYLE
	.uleb128	19
	.ascii	"ATEXTHINTFONTSTYLE\000"
	.long	.La779-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TCustomEdit>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La781-.Ldebug_info0
	.byte	0
# Procdef CanShowEmulatedTextHint(<TCustomEdit>):Boolean;
	.uleb128	26
	.ascii	"CANSHOWEMULATEDTEXTHINT\000"
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef CreateEmulatedTextHintFont(<TCustomEdit>):TFont;
	.uleb128	26
	.ascii	"CREATEEMULATEDTEXTHINTFONT\000"
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
	.long	.La445-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef CalculatePreferredSize(<TCustomEdit>;var LongInt;var LongInt;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol PREFERREDWIDTH
	.uleb128	19
	.ascii	"PREFERREDWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol PREFERREDHEIGHT
	.uleb128	19
	.ascii	"PREFERREDHEIGHT\000"
	.long	.La120-.Ldebug_info0
# Symbol WITHTHEMESPACE
	.uleb128	19
	.ascii	"WITHTHEMESPACE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef CreateParams(<TCustomEdit>;var TCreateParams);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol PARAMS
	.uleb128	19
	.ascii	"PARAMS\000"
	.long	.La188-.Ldebug_info0
	.byte	0
# Procdef InitializeWnd(<TCustomEdit>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef TextChanged(<TCustomEdit>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef FontChanged(<TCustomEdit>;TObject);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef Change(<TCustomEdit>);
	.uleb128	17
	.ascii	"CHANGE\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef DoEnter(<TCustomEdit>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef DoExit(<TCustomEdit>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef GetCaretPos(<TCustomEdit>):<record type>;
	.uleb128	26
	.ascii	"GETCARETPOS\000"
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
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef GetNumbersOnly(<TCustomEdit>):Boolean;
	.uleb128	26
	.ascii	"GETNUMBERSONLY\000"
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef GetReadOnly(<TCustomEdit>):Boolean;
	.uleb128	26
	.ascii	"GETREADONLY\000"
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef GetSelLength(<TCustomEdit>):LongInt;
	.uleb128	26
	.ascii	"GETSELLENGTH\000"
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef GetSelStart(<TCustomEdit>):LongInt;
	.uleb128	26
	.ascii	"GETSELSTART\000"
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef GetSelText(<TCustomEdit>;<var AnsiString>):AnsiString;
	.uleb128	26
	.ascii	"GETSELTEXT\000"
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
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef GetTextHint(<TCustomEdit>;<var TTranslateString>):AnsiString;
	.uleb128	26
	.ascii	"GETTEXTHINT\000"
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
	.long	.La282-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef SetCaretPos(<TCustomEdit>;const TPoint);
	.uleb128	17
	.ascii	"SETCARETPOS\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef SetEchoMode(<TCustomEdit>;TEchoMode);
	.uleb128	17
	.ascii	"SETECHOMODE\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol VAL
	.uleb128	19
	.ascii	"VAL\000"
	.long	.La775-.Ldebug_info0
	.byte	0
# Procdef SetNumbersOnly(<TCustomEdit>;Boolean);
	.uleb128	17
	.ascii	"SETNUMBERSONLY\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetReadOnly(<TCustomEdit>;Boolean);
	.uleb128	17
	.ascii	"SETREADONLY\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetSelLength(<TCustomEdit>;LongInt);
	.uleb128	17
	.ascii	"SETSELLENGTH\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol VAL
	.uleb128	19
	.ascii	"VAL\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetSelStart(<TCustomEdit>;LongInt);
	.uleb128	17
	.ascii	"SETSELSTART\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol VAL
	.uleb128	19
	.ascii	"VAL\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetSelText(<TCustomEdit>;const AnsiString);
	.uleb128	17
	.ascii	"SETSELTEXT\000"
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
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol VAL
	.uleb128	19
	.ascii	"VAL\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef SetTextHint(<TCustomEdit>;const TTranslateString);
	.uleb128	17
	.ascii	"SETTEXTHINT\000"
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
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef ChildClassAllowed(<TCustomEdit>;TClass):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol CHILDCLASS
	.uleb128	19
	.ascii	"CHILDCLASS\000"
	.long	.La57-.Ldebug_info0
	.byte	0
# Procdef class GetControlClassDefaultSize(<Class Of TCustomEdit>):<record type>;
	.uleb128	26
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
	.long	.La200-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La783-.Ldebug_info0
	.byte	0
# Procdef MouseUp(<TCustomEdit>;TMouseButton;TShiftState;LongInt;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol BUTTON
	.uleb128	19
	.ascii	"BUTTON\000"
	.long	.La495-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef RealSetText(<TCustomEdit>;const TTranslateString);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef RealGetText(<TCustomEdit>;<var TTranslateString>):AnsiString;
	.uleb128	26
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
	.long	.La282-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef KeyUpAfterInterface(<TCustomEdit>;var Word;TShiftState);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol KEY
	.uleb128	19
	.ascii	"KEY\000"
	.long	.La247-.Ldebug_info0
# Symbol SHIFT
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
	.byte	0
# Procdef WMChar(<TCustomEdit>;var TLMKey);
	.uleb128	25
	.ascii	"WMCHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef CMWantSpecialKey(<TCustomEdit>;var TLMKey);
	.uleb128	25
	.ascii	"CMWANTSPECIALKEY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef WndProc(<TCustomEdit>;var TMessage);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef ShouldAutoAdjust(<TCustomEdit>;var Boolean;var Boolean);
	.uleb128	17
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
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La29-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef WMSetFocus(<TCustomEdit>;var TLMSetFocus);
	.uleb128	25
	.ascii	"WMSETFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La258-.Ldebug_info0
	.byte	0
# Procdef WMKillFocus(<TCustomEdit>;var TWMKillFocus);
	.uleb128	25
	.ascii	"WMKILLFOCUS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La260-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TCustomEdit>;<Pointer>;TComponent);
	.uleb128	18
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
	.long	.La269-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol AOWNER
	.uleb128	19
	.ascii	"AOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef Clear(<TCustomEdit>);
	.uleb128	20
	.ascii	"CLEAR\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef SelectAll(<TCustomEdit>);
	.uleb128	20
	.ascii	"SELECTALL\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef ClearSelection(<TCustomEdit>);
	.uleb128	23
	.ascii	"CLEARSELECTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2392
	.byte	34
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef CopyToClipboard(<TCustomEdit>);
	.uleb128	23
	.ascii	"COPYTOCLIPBOARD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2400
	.byte	34
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef CutToClipboard(<TCustomEdit>);
	.uleb128	23
	.ascii	"CUTTOCLIPBOARD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2408
	.byte	34
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef PasteFromClipboard(<TCustomEdit>);
	.uleb128	23
	.ascii	"PASTEFROMCLIPBOARD\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2416
	.byte	34
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
# Procdef Undo(<TCustomEdit>);
	.uleb128	23
	.ascii	"UNDO\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	2424
	.byte	34
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La269-.Ldebug_info0
	.byte	0
	.byte	0
.La270:
	.uleb128	7
	.long	.La269-.Ldebug_info0
# Definition TMemoScrollbar
.La272:
	.uleb128	5
	.ascii	"TMEMOSCROLLBAR\000"
	.long	.La785-.Ldebug_info0
.La785:
	.uleb128	8
	.long	.La274-.Ldebug_info0
.La274:
	.uleb128	9
	.ascii	"TMEMOSCROLLBAR\000"
	.uleb128	96
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La788-.Ldebug_info0
# Procdef GetHorzScrollBar(<TMemoScrollbar>):TControlScrollBar;
	.uleb128	26
	.ascii	"GETHORZSCROLLBAR\000"
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
	.long	.La786-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La272-.Ldebug_info0
	.byte	0
# Procdef GetVertScrollBar(<TMemoScrollbar>):TControlScrollBar;
	.uleb128	26
	.ascii	"GETVERTSCROLLBAR\000"
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
	.long	.La786-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La272-.Ldebug_info0
	.byte	0
	.byte	0
.La273:
	.uleb128	7
	.long	.La272-.Ldebug_info0
# Definition TStrings
.La275:
	.uleb128	5
	.ascii	"TSTRINGS\000"
	.long	.La789-.Ldebug_info0
.La789:
	.uleb128	8
	.long	.La277-.Ldebug_info0
.La277:
	.uleb128	9
	.ascii	"TSTRINGS\000"
	.uleb128	56
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La223-.Ldebug_info0
	.uleb128	14
	.ascii	"FSPECIALCHARSINITED\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FQUOTECHAR\000"
	.byte	2
	.byte	35
	.uleb128	25
	.byte	3
	.long	.La216-.Ldebug_info0
	.uleb128	14
	.ascii	"FDELIMITER\000"
	.byte	2
	.byte	35
	.uleb128	26
	.byte	3
	.long	.La216-.Ldebug_info0
	.uleb128	14
	.ascii	"FNAMEVALUESEPARATOR\000"
	.byte	2
	.byte	35
	.uleb128	27
	.byte	3
	.long	.La216-.Ldebug_info0
	.uleb128	14
	.ascii	"FUPDATECOUNT\000"
	.byte	2
	.byte	35
	.uleb128	28
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FADAPTER\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La790-.Ldebug_info0
	.uleb128	14
	.ascii	"FLBS\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La793-.Ldebug_info0
	.uleb128	14
	.ascii	"FSKIPLASTLINEBREAK\000"
	.byte	2
	.byte	35
	.uleb128	44
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FSTRICTDELIMITER\000"
	.byte	2
	.byte	35
	.uleb128	45
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FLINEBREAK\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La27-.Ldebug_info0
	.uleb128	14
	.ascii	"UPDATECOUNT\000"
	.byte	2
	.byte	35
	.uleb128	28
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"STRICTDELIMITER\000"
	.byte	2
	.byte	35
	.uleb128	45
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"STRINGSADAPTER\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La790-.Ldebug_info0
# Procdef GetCommaText(<TStrings>;<var AnsiString>):AnsiString;
	.uleb128	15
	.ascii	"GETCOMMATEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef GetName(<TStrings>;<var AnsiString>;LongInt):AnsiString;
	.uleb128	15
	.ascii	"GETNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetValue(<TStrings>;<var AnsiString>;const AnsiString):AnsiString;
	.uleb128	15
	.ascii	"GETVALUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
# Symbol NAME
	.uleb128	19
	.ascii	"NAME\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef GetLBS(<TStrings>):<enumeration type>;
	.uleb128	15
	.ascii	"GETLBS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La793-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef SetLBS(<TStrings>;TTextLineBreakStyle);
	.uleb128	25
	.ascii	"SETLBS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La793-.Ldebug_info0
	.byte	0
# Procdef ReadData(<TStrings>;TReader);
	.uleb128	25
	.ascii	"READDATA\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol READER
	.uleb128	19
	.ascii	"READER\000"
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef SetCommaText(<TStrings>;const AnsiString);
	.uleb128	25
	.ascii	"SETCOMMATEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef SetStringsAdapter(<TStrings>;const IStringsAdapter);
	.uleb128	25
	.ascii	"SETSTRINGSADAPTER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La790-.Ldebug_info0
	.byte	0
# Procdef SetValue(<TStrings>;const AnsiString;const AnsiString);
	.uleb128	25
	.ascii	"SETVALUE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol NAME
	.uleb128	19
	.ascii	"NAME\000"
	.long	.La27-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef SetDelimiter(<TStrings>;Char);
	.uleb128	25
	.ascii	"SETDELIMITER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol C
	.uleb128	19
	.ascii	"C\000"
	.long	.La216-.Ldebug_info0
	.byte	0
# Procdef SetQuoteChar(<TStrings>;Char);
	.uleb128	25
	.ascii	"SETQUOTECHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol C
	.uleb128	19
	.ascii	"C\000"
	.long	.La216-.Ldebug_info0
	.byte	0
# Procdef SetNameValueSeparator(<TStrings>;Char);
	.uleb128	25
	.ascii	"SETNAMEVALUESEPARATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol C
	.uleb128	19
	.ascii	"C\000"
	.long	.La216-.Ldebug_info0
	.byte	0
# Procdef WriteData(<TStrings>;TWriter);
	.uleb128	25
	.ascii	"WRITEDATA\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol WRITER
	.uleb128	19
	.ascii	"WRITER\000"
	.long	.La237-.Ldebug_info0
	.byte	0
# Procdef DoSetTextStr(<TStrings>;const AnsiString;Boolean);
	.uleb128	25
	.ascii	"DOSETTEXTSTR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La27-.Ldebug_info0
# Symbol DOCLEAR
	.uleb128	19
	.ascii	"DOCLEAR\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef GetDelimiter(<TStrings>):Char;
	.uleb128	15
	.ascii	"GETDELIMITER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La216-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef GetNameValueSeparator(<TStrings>):Char;
	.uleb128	15
	.ascii	"GETNAMEVALUESEPARATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La216-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef GetQuoteChar(<TStrings>):Char;
	.uleb128	15
	.ascii	"GETQUOTECHAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La216-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef GetLineBreak(<TStrings>;<var AnsiString>):AnsiString;
	.uleb128	15
	.ascii	"GETLINEBREAK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef SetLineBreak(<TStrings>;const AnsiString);
	.uleb128	25
	.ascii	"SETLINEBREAK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol S
	.uleb128	19
	.ascii	"S\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef GetSkipLastLineBreak(<TStrings>):Boolean;
	.uleb128	15
	.ascii	"GETSKIPLASTLINEBREAK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef SetSkipLastLineBreak(<TStrings>;const Boolean);
	.uleb128	25
	.ascii	"SETSKIPLASTLINEBREAK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DefineProperties(<TStrings>;TFiler);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol FILER
	.uleb128	19
	.ascii	"FILER\000"
	.long	.La240-.Ldebug_info0
	.byte	0
# Procdef Error(<TStrings>;const AnsiString;LongInt);
	.uleb128	25
	.ascii	"ERROR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol MSG
	.uleb128	19
	.ascii	"MSG\000"
	.long	.La27-.Ldebug_info0
# Symbol DATA
	.uleb128	19
	.ascii	"DATA\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Error(<TStrings>;const PAnsiString;LongInt);
	.uleb128	25
	.ascii	"ERROR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol MSG
	.uleb128	19
	.ascii	"MSG\000"
	.long	.La795-.Ldebug_info0
# Symbol DATA
	.uleb128	19
	.ascii	"DATA\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Get(<TStrings>;<var AnsiString>;LongInt):AnsiString;
	.uleb128	26
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
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetCapacity(<TStrings>):LongInt;
	.uleb128	26
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef GetCount(<TStrings>):LongInt;
	.uleb128	26
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef GetObject(<TStrings>;LongInt):TObject;
	.uleb128	26
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
	.long	.La20-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetTextStr(<TStrings>;<var AnsiString>):AnsiString;
	.uleb128	26
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
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef Put(<TStrings>;LongInt;const AnsiString);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol S
	.uleb128	19
	.ascii	"S\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef PutObject(<TStrings>;LongInt;TObject);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol AOBJECT
	.uleb128	19
	.ascii	"AOBJECT\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef SetCapacity(<TStrings>;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol NEWCAPACITY
	.uleb128	19
	.ascii	"NEWCAPACITY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetTextStr(<TStrings>;const AnsiString);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef SetUpdateState(<TStrings>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol UPDATING
	.uleb128	19
	.ascii	"UPDATING\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DoCompareText(<TStrings>;const AnsiString;const AnsiString):Int64;
	.uleb128	26
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
	.long	.La71-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol S1
	.uleb128	19
	.ascii	"S1\000"
	.long	.La27-.Ldebug_info0
# Symbol S2
	.uleb128	19
	.ascii	"S2\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef GetDelimitedText(<TStrings>;<var AnsiString>):AnsiString;
	.uleb128	15
	.ascii	"GETDELIMITEDTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef SetDelimitedText(<TStrings>;const AnsiString);
	.uleb128	25
	.ascii	"SETDELIMITEDTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef GetValueFromIndex(<TStrings>;<var AnsiString>;LongInt):AnsiString;
	.uleb128	15
	.ascii	"GETVALUEFROMINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetValueFromIndex(<TStrings>;LongInt;const AnsiString);
	.uleb128	25
	.ascii	"SETVALUEFROMINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef CheckSpecialChars(<TStrings>);
	.uleb128	25
	.ascii	"CHECKSPECIALCHARS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef class GetNextLine(<Class Of TStrings>;const AnsiString;var AnsiString;var LongInt):Boolean;
	.uleb128	15
	.ascii	"GETNEXTLINE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La29-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La797-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La27-.Ldebug_info0
# Symbol S
	.uleb128	19
	.ascii	"S\000"
	.long	.La27-.Ldebug_info0
# Symbol P
	.uleb128	19
	.ascii	"P\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetNextLinebreak(<TStrings>;const AnsiString;var AnsiString;var LongInt):Boolean;
	.uleb128	15
	.ascii	"GETNEXTLINEBREAK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La27-.Ldebug_info0
# Symbol S
	.uleb128	19
	.ascii	"S\000"
	.long	.La27-.Ldebug_info0
# Symbol P
	.uleb128	19
	.ascii	"P\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TStrings>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Add(<TStrings>;const AnsiString):LongInt;
	.uleb128	18
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol S
	.uleb128	19
	.ascii	"S\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef AddObject(<TStrings>;const AnsiString;TObject):LongInt;
	.uleb128	18
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol S
	.uleb128	19
	.ascii	"S\000"
	.long	.La27-.Ldebug_info0
# Symbol AOBJECT
	.uleb128	19
	.ascii	"AOBJECT\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef Add(<TStrings>;const AnsiString;const Array Of Const;<const Int64>):LongInt;
	.uleb128	22
	.ascii	"ADD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol FMT
	.uleb128	19
	.ascii	"FMT\000"
	.long	.La27-.Ldebug_info0
# Symbol ARGS
	.uleb128	19
	.ascii	"ARGS\000"
	.long	.La799-.Ldebug_info0
# Symbol highARGS
	.uleb128	19
	.ascii	"highARGS\000"
	.long	.La71-.Ldebug_info0
# Definition Array Of Const
.La799:
	.uleb128	27
	.long	.La801-.Ldebug_info0
	.uleb128	28
	.sleb128	0
	.uleb128	16
	.long	.La71-.Ldebug_info0
	.byte	0
.La800:
	.uleb128	7
	.long	.La799-.Ldebug_info0
	.byte	0
# Procdef AddObject(<TStrings>;const AnsiString;Array Of Const;<const Int64>;TObject):LongInt;
	.uleb128	22
	.ascii	"ADDOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol FMT
	.uleb128	19
	.ascii	"FMT\000"
	.long	.La27-.Ldebug_info0
# Symbol ARGS
	.uleb128	19
	.ascii	"ARGS\000"
	.long	.La803-.Ldebug_info0
# Symbol highARGS
	.uleb128	19
	.ascii	"highARGS\000"
	.long	.La71-.Ldebug_info0
# Symbol AOBJECT
	.uleb128	19
	.ascii	"AOBJECT\000"
	.long	.La20-.Ldebug_info0
# Definition Array Of Const
.La803:
	.uleb128	27
	.long	.La801-.Ldebug_info0
	.uleb128	28
	.sleb128	0
	.uleb128	16
	.long	.La71-.Ldebug_info0
	.byte	0
.La804:
	.uleb128	7
	.long	.La803-.Ldebug_info0
	.byte	0
# Procdef Append(<TStrings>;const AnsiString);
	.uleb128	20
	.ascii	"APPEND\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol S
	.uleb128	19
	.ascii	"S\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef AddStrings(<TStrings>;TStrings);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol THESTRINGS
	.uleb128	19
	.ascii	"THESTRINGS\000"
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef AddStrings(<TStrings>;TStrings;Boolean);
	.uleb128	20
	.ascii	"ADDSTRINGS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol THESTRINGS
	.uleb128	19
	.ascii	"THESTRINGS\000"
	.long	.La275-.Ldebug_info0
# Symbol CLEARFIRST
	.uleb128	19
	.ascii	"CLEARFIRST\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef AddStrings(<TStrings>;const {Open} Array Of AnsiString;<const Int64>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol THESTRINGS
	.uleb128	19
	.ascii	"THESTRINGS\000"
	.long	.La805-.Ldebug_info0
# Symbol highTHESTRINGS
	.uleb128	19
	.ascii	"highTHESTRINGS\000"
	.long	.La71-.Ldebug_info0
# Definition {Open} Array Of AnsiString
.La805:
	.uleb128	27
	.long	.La27-.Ldebug_info0
	.uleb128	28
	.sleb128	0
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.byte	0
.La806:
	.uleb128	7
	.long	.La805-.Ldebug_info0
	.byte	0
# Procdef AddStrings(<TStrings>;const {Open} Array Of AnsiString;<const Int64>;Boolean);
	.uleb128	20
	.ascii	"ADDSTRINGS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol THESTRINGS
	.uleb128	19
	.ascii	"THESTRINGS\000"
	.long	.La807-.Ldebug_info0
# Symbol highTHESTRINGS
	.uleb128	19
	.ascii	"highTHESTRINGS\000"
	.long	.La71-.Ldebug_info0
# Symbol CLEARFIRST
	.uleb128	19
	.ascii	"CLEARFIRST\000"
	.long	.La29-.Ldebug_info0
# Definition {Open} Array Of AnsiString
.La807:
	.uleb128	27
	.long	.La27-.Ldebug_info0
	.uleb128	28
	.sleb128	0
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.byte	0
.La808:
	.uleb128	7
	.long	.La807-.Ldebug_info0
	.byte	0
# Procdef AddText(<TStrings>;const AnsiString);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol S
	.uleb128	19
	.ascii	"S\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef Assign(<TStrings>;TPersistent);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef BeginUpdate(<TStrings>);
	.uleb128	20
	.ascii	"BEGINUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef Clear(<TStrings>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef Delete(<TStrings>;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef EndUpdate(<TStrings>);
	.uleb128	20
	.ascii	"ENDUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef Equals(<TStrings>;TObject):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol OBJ
	.uleb128	19
	.ascii	"OBJ\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef Equals(<TStrings>;TStrings):Boolean;
	.uleb128	22
	.ascii	"EQUALS\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol THESTRINGS
	.uleb128	19
	.ascii	"THESTRINGS\000"
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef Exchange(<TStrings>;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol INDEX1
	.uleb128	19
	.ascii	"INDEX1\000"
	.long	.La120-.Ldebug_info0
# Symbol INDEX2
	.uleb128	19
	.ascii	"INDEX2\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetEnumerator(<TStrings>):TStringsEnumerator;
	.uleb128	22
	.ascii	"GETENUMERATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La809-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef GetText(<TStrings>):^Char;
	.uleb128	18
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
	.long	.La371-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
	.byte	0
# Procdef IndexOf(<TStrings>;const AnsiString):LongInt;
	.uleb128	18
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol S
	.uleb128	19
	.ascii	"S\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef IndexOfName(<TStrings>;const AnsiString):LongInt;
	.uleb128	18
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol NAME
	.uleb128	19
	.ascii	"NAME\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef IndexOfObject(<TStrings>;TObject):LongInt;
	.uleb128	18
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol AOBJECT
	.uleb128	19
	.ascii	"AOBJECT\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef Insert(<TStrings>;LongInt;const AnsiString);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol S
	.uleb128	19
	.ascii	"S\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef InsertObject(<TStrings>;LongInt;const AnsiString;TObject);
	.uleb128	20
	.ascii	"INSERTOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol S
	.uleb128	19
	.ascii	"S\000"
	.long	.La27-.Ldebug_info0
# Symbol AOBJECT
	.uleb128	19
	.ascii	"AOBJECT\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef LoadFromFile(<TStrings>;const AnsiString);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol FILENAME
	.uleb128	19
	.ascii	"FILENAME\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef LoadFromStream(<TStrings>;TStream);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol STREAM
	.uleb128	19
	.ascii	"STREAM\000"
	.long	.La670-.Ldebug_info0
	.byte	0
# Procdef Move(<TStrings>;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol CURINDEX
	.uleb128	19
	.ascii	"CURINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol NEWINDEX
	.uleb128	19
	.ascii	"NEWINDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SaveToFile(<TStrings>;const AnsiString);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol FILENAME
	.uleb128	19
	.ascii	"FILENAME\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef SaveToStream(<TStrings>;TStream);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol STREAM
	.uleb128	19
	.ascii	"STREAM\000"
	.long	.La670-.Ldebug_info0
	.byte	0
# Procdef SetText(<TStrings>;PChar);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol THETEXT
	.uleb128	19
	.ascii	"THETEXT\000"
	.long	.La371-.Ldebug_info0
	.byte	0
# Procdef GetNameValue(<TStrings>;LongInt;out AnsiString;out AnsiString);
	.uleb128	20
	.ascii	"GETNAMEVALUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol ANAME
	.uleb128	19
	.ascii	"ANAME\000"
	.long	.La27-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef ExtractName(<TStrings>;<var AnsiString>;const AnsiString):AnsiString;
	.uleb128	22
	.ascii	"EXTRACTNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La275-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
# Symbol S
	.uleb128	19
	.ascii	"S\000"
	.long	.La27-.Ldebug_info0
	.byte	0
	.byte	0
.La276:
	.uleb128	7
	.long	.La275-.Ldebug_info0
# Definition TScrollStyle
.La278:
	.uleb128	5
	.ascii	"TSCROLLSTYLE\000"
	.long	.La812-.Ldebug_info0
.La812:
	.uleb128	36
	.ascii	"TSCROLLSTYLE\000"
	.byte	4
	.uleb128	37
	.ascii	"SSNONE\000"
	.long	0
	.uleb128	37
	.ascii	"SSHORIZONTAL\000"
	.long	1
	.uleb128	37
	.ascii	"SSVERTICAL\000"
	.long	2
	.uleb128	37
	.ascii	"SSBOTH\000"
	.long	3
	.uleb128	37
	.ascii	"SSAUTOHORIZONTAL\000"
	.long	4
	.uleb128	37
	.ascii	"SSAUTOVERTICAL\000"
	.long	5
	.uleb128	37
	.ascii	"SSAUTOBOTH\000"
	.long	6
	.byte	0
.La279:
	.uleb128	7
	.long	.La278-.Ldebug_info0
# Definition TCustomMemo.Class Of TCustomMemo
.La280:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La281:
	.uleb128	7
	.long	.La280-.Ldebug_info0
# Definition TTranslateString
.La282:
	.uleb128	5
	.ascii	"TTRANSLATESTRING\000"
	.long	.La813-.Ldebug_info0
.La813:
	.uleb128	8
	.long	.La216-.Ldebug_info0
.La283:
	.uleb128	7
	.long	.La282-.Ldebug_info0
# Definition TPoint
.La284:
	.uleb128	5
	.ascii	"TPOINT\000"
	.long	.La814-.Ldebug_info0
.La814:
	.uleb128	32
	.ascii	"TPOINT\000"
	.uleb128	8
	.uleb128	11
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La120-.Ldebug_info0
# Procdef constructor Create(<var TPoint>;LongInt;LongInt);
	.uleb128	44
	.ascii	"CREATE\000"
	.byte	1
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol AX
	.uleb128	19
	.ascii	"AX\000"
	.long	.La120-.Ldebug_info0
# Symbol AY
	.uleb128	19
	.ascii	"AY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<var TPoint>;TPoint);
	.uleb128	44
	.ascii	"CREATE\000"
	.byte	1
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol APT
	.uleb128	19
	.ascii	"APT\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef class Zero:<record type>; Static;
	.uleb128	44
	.ascii	"ZERO\000"
	.byte	1
	.byte	1
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef Add(<var TPoint>;const TPoint):<record type>;
	.uleb128	44
	.ascii	"ADD\000"
	.byte	1
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol APT
	.uleb128	19
	.ascii	"APT\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef Distance(<var TPoint>;const TPoint):Double;
	.uleb128	44
	.ascii	"DISTANCE\000"
	.byte	1
	.byte	1
	.long	.La325-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol APT
	.uleb128	19
	.ascii	"APT\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef IsZero(<var TPoint>):Boolean;
	.uleb128	44
	.ascii	"ISZERO\000"
	.byte	1
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef Subtract(<var TPoint>;const TPoint):<record type>;
	.uleb128	44
	.ascii	"SUBTRACT\000"
	.byte	1
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol APT
	.uleb128	19
	.ascii	"APT\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef SetLocation(<var TPoint>;const TPoint);
	.uleb128	45
	.ascii	"SETLOCATION\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol APT
	.uleb128	19
	.ascii	"APT\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef SetLocation(<var TPoint>;LongInt;LongInt);
	.uleb128	45
	.ascii	"SETLOCATION\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol AX
	.uleb128	19
	.ascii	"AX\000"
	.long	.La120-.Ldebug_info0
# Symbol AY
	.uleb128	19
	.ascii	"AY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Offset(<var TPoint>;const TPoint);
	.uleb128	45
	.ascii	"OFFSET\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol APT
	.uleb128	19
	.ascii	"APT\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef Offset(<var TPoint>;LongInt;LongInt);
	.uleb128	45
	.ascii	"OFFSET\000"
	.byte	1
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol DX
	.uleb128	19
	.ascii	"DX\000"
	.long	.La120-.Ldebug_info0
# Symbol DY
	.uleb128	19
	.ascii	"DY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef class PointInCircle(const TPoint;const TPoint;const LongInt):Boolean; Static;
	.uleb128	44
	.ascii	"POINTINCIRCLE\000"
	.byte	1
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol APT
	.uleb128	19
	.ascii	"APT\000"
	.long	.La284-.Ldebug_info0
# Symbol ACENTER
	.uleb128	19
	.ascii	"ACENTER\000"
	.long	.La284-.Ldebug_info0
# Symbol ARADIUS
	.uleb128	19
	.ascii	"ARADIUS\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef operator =(const TPoint;const TPoint):Boolean;
	.uleb128	44
	.ascii	"equal\000"
	.byte	1
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol APT1
	.uleb128	19
	.ascii	"APT1\000"
	.long	.La284-.Ldebug_info0
# Symbol APT2
	.uleb128	19
	.ascii	"APT2\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef operator <>(const TPoint;const TPoint):Boolean;
	.uleb128	44
	.ascii	"not_equal\000"
	.byte	1
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol APT1
	.uleb128	19
	.ascii	"APT1\000"
	.long	.La284-.Ldebug_info0
# Symbol APT2
	.uleb128	19
	.ascii	"APT2\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef operator +(const TPoint;const TPoint):<record type>;
	.uleb128	44
	.ascii	"plus\000"
	.byte	1
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol APT1
	.uleb128	19
	.ascii	"APT1\000"
	.long	.La284-.Ldebug_info0
# Symbol APT2
	.uleb128	19
	.ascii	"APT2\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef operator -(const TPoint;const TPoint):<record type>;
	.uleb128	44
	.ascii	"minus\000"
	.byte	1
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol APT1
	.uleb128	19
	.ascii	"APT1\000"
	.long	.La284-.Ldebug_info0
# Symbol APT2
	.uleb128	19
	.ascii	"APT2\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef operator :=(const TSmallPoint):<record type>;
	.uleb128	44
	.ascii	"assign\000"
	.byte	1
	.byte	1
	.long	.La284-.Ldebug_info0
# Symbol ASPT
	.uleb128	19
	.ascii	"ASPT\000"
	.long	.La510-.Ldebug_info0
	.byte	0
# Procdef operator explicit(const TPoint):<record type>;
	.uleb128	44
	.ascii	"explicit\000"
	.byte	1
	.byte	1
	.long	.La510-.Ldebug_info0
# Symbol APT
	.uleb128	19
	.ascii	"APT\000"
	.long	.La284-.Ldebug_info0
	.byte	0
	.byte	0
.La285:
	.uleb128	7
	.long	.La284-.Ldebug_info0
# Definition TWMNoParams
.La286:
	.uleb128	5
	.ascii	"TWMNOPARAMS\000"
	.long	.La815-.Ldebug_info0
.La815:
	.uleb128	32
	.ascii	"TWMNOPARAMS\000"
	.uleb128	32
	.uleb128	11
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSEDW\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSEDL\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La71-.Ldebug_info0
	.byte	0
.La287:
	.uleb128	7
	.long	.La286-.Ldebug_info0
# Definition TCustomMemo.Class Of TCustomMemo
.La288:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La289:
	.uleb128	7
	.long	.La288-.Ldebug_info0
# Definition TUTF8Char
.La290:
	.uleb128	5
	.ascii	"TUTF8CHAR\000"
	.long	.La816-.Ldebug_info0
.La816:
	.uleb128	32
	.ascii	"ShortString\000"
	.uleb128	8
	.uleb128	11
	.ascii	"length\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La109-.Ldebug_info0
	.uleb128	11
	.ascii	"st\000"
	.byte	2
	.byte	35
	.uleb128	1
	.long	.La817-.Ldebug_info0
	.byte	0
.La817:
	.uleb128	33
	.uleb128	8
	.uleb128	1
	.long	.La216-.Ldebug_info0
	.uleb128	34
	.uleb128	1
	.uleb128	7
	.long	.La109-.Ldebug_info0
	.byte	0
.La291:
	.uleb128	7
	.long	.La290-.Ldebug_info0
# Definition LongWord
.La293:
	.uleb128	5
	.ascii	"LONGWORD\000"
	.long	.La818-.Ldebug_info0
.La818:
	.uleb128	29
	.ascii	"LONGWORD\000"
	.byte	7
	.byte	4
.La294:
	.uleb128	7
	.long	.La293-.Ldebug_info0
# Definition <record type>
.La295:
	.uleb128	5
	.ascii	"__vtbl_ptr_type\000"
	.long	.La819-.Ldebug_info0
.La819:
	.uleb128	47
	.uleb128	40
	.byte	0
.La296:
	.uleb128	7
	.long	.La295-.Ldebug_info0
# Definition TStringMessageTable
.La304:
	.uleb128	5
	.ascii	"TSTRINGMESSAGETABLE\000"
	.long	.La820-.Ldebug_info0
.La820:
	.uleb128	32
	.ascii	"TSTRINGMESSAGETABLE\000"
	.uleb128	24
	.uleb128	11
	.ascii	"COUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"MSGSTRTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La821-.Ldebug_info0
	.byte	0
.La305:
	.uleb128	7
	.long	.La304-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La307:
	.uleb128	38
	.uleb128	8
	.long	.La109-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La823-.Ldebug_info0
	.byte	0
.La308:
	.uleb128	7
	.long	.La307-.Ldebug_info0
# Definition TGuid.Array[0..7] Of Byte
.La309:
	.uleb128	38
	.uleb128	8
	.long	.La109-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.sleb128	7
	.uleb128	1
	.long	.La823-.Ldebug_info0
	.byte	0
.La310:
	.uleb128	7
	.long	.La309-.Ldebug_info0
# Definition TGuid.Array[0..5] Of Byte
.La311:
	.uleb128	38
	.uleb128	6
	.long	.La109-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.sleb128	5
	.uleb128	1
	.long	.La823-.Ldebug_info0
	.byte	0
.La312:
	.uleb128	7
	.long	.La311-.Ldebug_info0
# Definition tinterfaceentry
.La314:
	.uleb128	5
	.ascii	"TINTERFACEENTRY\000"
	.long	.La825-.Ldebug_info0
.La825:
	.uleb128	32
	.ascii	"TINTERFACEENTRY\000"
	.uleb128	40
	.uleb128	11
	.ascii	"IID\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La826-.Ldebug_info0
	.uleb128	11
	.ascii	"VTABLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La31-.Ldebug_info0
	.uleb128	11
	.ascii	"IOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La131-.Ldebug_info0
	.uleb128	11
	.ascii	"IIDSTR\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La828-.Ldebug_info0
	.uleb128	11
	.ascii	"ITYPE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La830-.Ldebug_info0
	.uleb128	11
	.ascii	"__PAD_DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La71-.Ldebug_info0
	.byte	0
.La315:
	.uleb128	7
	.long	.La314-.Ldebug_info0
# Definition tinterfacetable
.La317:
	.uleb128	5
	.ascii	"TINTERFACETABLE\000"
	.long	.La832-.Ldebug_info0
.La832:
	.uleb128	32
	.ascii	"TINTERFACETABLE\000"
	.uleb128	48
	.uleb128	11
	.ascii	"ENTRYCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La131-.Ldebug_info0
	.uleb128	11
	.ascii	"ENTRIES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La833-.Ldebug_info0
	.byte	0
.La318:
	.uleb128	7
	.long	.La317-.Ldebug_info0
# Definition TScrollingWinControl
.La320:
	.uleb128	5
	.ascii	"TSCROLLINGWINCONTROL\000"
	.long	.La835-.Ldebug_info0
.La835:
	.uleb128	8
	.long	.La322-.Ldebug_info0
.La322:
	.uleb128	9
	.ascii	"TSCROLLINGWINCONTROL\000"
	.uleb128	1432
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La838-.Ldebug_info0
	.uleb128	14
	.ascii	"FHORZSCROLLBAR\000"
	.byte	3
	.byte	35
	.uleb128	1408
	.byte	3
	.long	.La786-.Ldebug_info0
	.uleb128	14
	.ascii	"FVERTSCROLLBAR\000"
	.byte	3
	.byte	35
	.uleb128	1416
	.byte	3
	.long	.La786-.Ldebug_info0
	.uleb128	14
	.ascii	"FAUTOSCROLL\000"
	.byte	3
	.byte	35
	.uleb128	1424
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FISUPDATING\000"
	.byte	3
	.byte	35
	.uleb128	1425
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"AUTOSCROLL\000"
	.byte	3
	.byte	35
	.uleb128	1424
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"HORZSCROLLBAR\000"
	.byte	3
	.byte	35
	.uleb128	1408
	.byte	3
	.long	.La786-.Ldebug_info0
	.uleb128	14
	.ascii	"VERTSCROLLBAR\000"
	.byte	3
	.byte	35
	.uleb128	1416
	.byte	3
	.long	.La786-.Ldebug_info0
# Procdef SetHorzScrollBar(<TScrollingWinControl>;TControlScrollBar);
	.uleb128	25
	.ascii	"SETHORZSCROLLBAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La786-.Ldebug_info0
	.byte	0
# Procdef SetVertScrollBar(<TScrollingWinControl>;TControlScrollBar);
	.uleb128	25
	.ascii	"SETVERTSCROLLBAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La786-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TScrollingWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La839-.Ldebug_info0
	.byte	0
# Procdef AlignControls(<TScrollingWinControl>;TControl;var TRect);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef AutoScrollEnabled(<TScrollingWinControl>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
	.byte	0
# Procdef CalculateAutoRanges(<TScrollingWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
	.byte	0
# Procdef CreateWnd(<TScrollingWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
	.byte	0
# Procdef GetClientScrollOffset(<TScrollingWinControl>):<record type>;
	.uleb128	26
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
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
	.byte	0
# Procdef GetLogicalClientRect(<TScrollingWinControl>;<var TRect>):<record type>;
	.uleb128	26
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
	.long	.La186-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef DoOnResize(<TScrollingWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
	.byte	0
# Procdef GetPreferredSizeClientFrame(<TScrollingWinControl>;out LongInt;out LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef WMSize(<TScrollingWinControl>;var TWMSize);
	.uleb128	25
	.ascii	"WMSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La180-.Ldebug_info0
	.byte	0
# Procdef WMHScroll(<TScrollingWinControl>;var TLMScroll);
	.uleb128	25
	.ascii	"WMHSCROLL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La841-.Ldebug_info0
	.byte	0
# Procdef WMVScroll(<TScrollingWinControl>;var TLMScroll);
	.uleb128	25
	.ascii	"WMVSCROLL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La841-.Ldebug_info0
	.byte	0
# Procdef ComputeScrollbars(<TScrollingWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
	.byte	0
# Procdef SetAutoScroll(<TScrollingWinControl>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TScrollingWinControl>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
	.byte	0
# Procdef Resizing(<TScrollingWinControl>;TWindowState);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
# Symbol STATE
	.uleb128	19
	.ascii	"STATE\000"
	.long	.La156-.Ldebug_info0
	.byte	0
# Procdef SetAutoSize(<TScrollingWinControl>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TScrollingWinControl>;<Pointer>;TComponent);
	.uleb128	18
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
	.long	.La320-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	19
	.ascii	"THEOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TScrollingWinControl>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef UpdateScrollbars(<TScrollingWinControl>);
	.uleb128	20
	.ascii	"UPDATESCROLLBARS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
	.byte	0
# Procdef class GetControlClassDefaultSize(<Class Of TScrollingWinControl>):<record type>;
	.uleb128	18
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
	.long	.La200-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La843-.Ldebug_info0
	.byte	0
# Procdef ScrollBy(<TScrollingWinControl>;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
# Symbol DELTAX
	.uleb128	19
	.ascii	"DELTAX\000"
	.long	.La120-.Ldebug_info0
# Symbol DELTAY
	.uleb128	19
	.ascii	"DELTAY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef ScrollInView(<TScrollingWinControl>;TControl);
	.uleb128	20
	.ascii	"SCROLLINVIEW\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La320-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
	.byte	0
.La321:
	.uleb128	7
	.long	.La320-.Ldebug_info0
# Definition TLayoutAdjustmentPolicy
.La323:
	.uleb128	5
	.ascii	"TLAYOUTADJUSTMENTPOLICY\000"
	.long	.La845-.Ldebug_info0
.La845:
	.uleb128	36
	.ascii	"TLAYOUTADJUSTMENTPOLICY\000"
	.byte	4
	.uleb128	37
	.ascii	"LAPDEFAULT\000"
	.long	0
	.uleb128	37
	.ascii	"LAPFIXEDLAYOUT\000"
	.long	1
	.uleb128	37
	.ascii	"LAPAUTOADJUSTWITHOUTHORIZONTALSCROLLING\000"
	.long	2
	.uleb128	37
	.ascii	"LAPAUTOADJUSTFORDPI\000"
	.long	3
	.byte	0
.La324:
	.uleb128	7
	.long	.La323-.Ldebug_info0
# Definition Double
.La325:
	.uleb128	5
	.ascii	"DOUBLE\000"
	.long	.La846-.Ldebug_info0
.La846:
	.uleb128	29
	.ascii	"DOUBLE\000"
	.byte	4
	.byte	8
.La326:
	.uleb128	7
	.long	.La325-.Ldebug_info0
# Definition TBorderWidth
.La328:
	.uleb128	5
	.ascii	"TBORDERWIDTH\000"
	.long	.La847-.Ldebug_info0
.La847:
	.uleb128	48
	.ascii	"TBORDERWIDTH\000"
	.uleb128	0
	.uleb128	2147483647
	.long	.La293-.Ldebug_info0
.La329:
	.uleb128	7
	.long	.La328-.Ldebug_info0
# Definition TBorderStyle
.La330:
	.uleb128	5
	.ascii	"TBORDERSTYLE\000"
	.long	.La848-.Ldebug_info0
.La848:
	.uleb128	49
	.ascii	"TBORDERSTYLE\000"
	.byte	4
	.long	.La138-.Ldebug_info0
	.uleb128	37
	.ascii	"BSNONE\000"
	.long	0
	.uleb128	37
	.ascii	"BSSINGLE\000"
	.long	1
	.byte	0
.La331:
	.uleb128	7
	.long	.La330-.Ldebug_info0
# Definition TBrush
.La332:
	.uleb128	5
	.ascii	"TBRUSH\000"
	.long	.La849-.Ldebug_info0
.La849:
	.uleb128	8
	.long	.La334-.Ldebug_info0
.La334:
	.uleb128	9
	.ascii	"TBRUSH\000"
	.uleb128	264
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La852-.Ldebug_info0
	.uleb128	14
	.ascii	"FBRUSHHANDLECACHED\000"
	.byte	3
	.byte	35
	.uleb128	232
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FCOLOR\000"
	.byte	3
	.byte	35
	.uleb128	236
	.byte	3
	.long	.La391-.Ldebug_info0
	.uleb128	14
	.ascii	"FBITMAP\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La853-.Ldebug_info0
	.uleb128	14
	.ascii	"FREFERENCE\000"
	.byte	3
	.byte	35
	.uleb128	248
	.byte	3
	.long	.La856-.Ldebug_info0
	.uleb128	14
	.ascii	"FINTERNALUPDATEINDEX\000"
	.byte	3
	.byte	35
	.uleb128	256
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"BITMAP\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La853-.Ldebug_info0
	.uleb128	14
	.ascii	"COLOR\000"
	.byte	3
	.byte	35
	.uleb128	236
	.byte	3
	.long	.La391-.Ldebug_info0
# Procdef FreeReference(<TBrush>);
	.uleb128	25
	.ascii	"FREEREFERENCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La332-.Ldebug_info0
	.byte	0
# Procdef GetHandle(<TBrush>):QWord;
	.uleb128	15
	.ascii	"GETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La332-.Ldebug_info0
	.byte	0
# Procdef GetReference(<TBrush>;<var TWSBrushReference>):TWSBrushReference;
	.uleb128	15
	.ascii	"GETREFERENCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La856-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La332-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La856-.Ldebug_info0
	.byte	0
# Procdef GetColor(<TBrush>):LongInt;
	.uleb128	15
	.ascii	"GETCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La391-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La332-.Ldebug_info0
	.byte	0
# Procdef ReferenceNeeded(<TBrush>);
	.uleb128	25
	.ascii	"REFERENCENEEDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La332-.Ldebug_info0
	.byte	0
# Procdef SetHandle(<TBrush>;const QWord);
	.uleb128	25
	.ascii	"SETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La332-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef DoChange(<TBrush>;var <Formal type>);
	.uleb128	25
	.ascii	"DOCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La332-.Ldebug_info0
# Symbol MSG
	.uleb128	19
	.ascii	"MSG\000"
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef DoAllocateResources(<TBrush>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La332-.Ldebug_info0
	.byte	0
# Procdef DoDeAllocateResources(<TBrush>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La332-.Ldebug_info0
	.byte	0
# Procdef DoCopyProps(<TBrush>;TFPCanvasHelper);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La332-.Ldebug_info0
# Symbol FROM
	.uleb128	19
	.ascii	"FROM\000"
	.long	.La858-.Ldebug_info0
	.byte	0
# Procdef SetColor(<TBrush>;const TGraphicsColor;const TFPColor);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La332-.Ldebug_info0
# Symbol NEWCOLOR
	.uleb128	19
	.ascii	"NEWCOLOR\000"
	.long	.La391-.Ldebug_info0
# Symbol NEWFPCOLOR
	.uleb128	19
	.ascii	"NEWFPCOLOR\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef SetFPColor(<TBrush>;const TFPColor);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La332-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef SetBitmap(<TBrush>;TCustomBitmap);
	.uleb128	25
	.ascii	"SETBITMAP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La332-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La853-.Ldebug_info0
	.byte	0
# Procdef SetColor(<TBrush>;TGraphicsColor);
	.uleb128	25
	.ascii	"SETCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La332-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La391-.Ldebug_info0
	.byte	0
# Procdef SetStyle(<TBrush>;TFPBrushStyle);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La332-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La863-.Ldebug_info0
	.byte	0
# Procdef Assign(<TBrush>;TPersistent);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La332-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TBrush>;<Pointer>);
	.uleb128	18
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
	.long	.La332-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La332-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TBrush>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La332-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef EqualsBrush(<TBrush>;TBrush):Boolean;
	.uleb128	22
	.ascii	"EQUALSBRUSH\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La332-.Ldebug_info0
# Symbol ABRUSH
	.uleb128	19
	.ascii	"ABRUSH\000"
	.long	.La332-.Ldebug_info0
	.byte	0
	.byte	0
.La333:
	.uleb128	7
	.long	.La332-.Ldebug_info0
# Definition TControlChildSizing
.La335:
	.uleb128	5
	.ascii	"TCONTROLCHILDSIZING\000"
	.long	.La865-.Ldebug_info0
.La865:
	.uleb128	8
	.long	.La337-.Ldebug_info0
.La337:
	.uleb128	9
	.ascii	"TCONTROLCHILDSIZING\000"
	.uleb128	88
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La223-.Ldebug_info0
	.uleb128	14
	.ascii	"FCONTROL\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La103-.Ldebug_info0
	.uleb128	14
	.ascii	"FCONTROLSPERLINE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FENLARGEHORIZONTAL\000"
	.byte	2
	.byte	35
	.uleb128	36
	.byte	3
	.long	.La866-.Ldebug_info0
	.uleb128	14
	.ascii	"FENLARGEVERTICAL\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La866-.Ldebug_info0
	.uleb128	14
	.ascii	"FHORIZONTALSPACING\000"
	.byte	2
	.byte	35
	.uleb128	44
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FLAYOUT\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La868-.Ldebug_info0
	.uleb128	14
	.ascii	"FLEFTRIGHTSPACING\000"
	.byte	2
	.byte	35
	.uleb128	52
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FSHRINKHORIZONTAL\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	3
	.long	.La866-.Ldebug_info0
	.uleb128	14
	.ascii	"FSHRINKVERTICAL\000"
	.byte	2
	.byte	35
	.uleb128	76
	.byte	3
	.long	.La866-.Ldebug_info0
	.uleb128	14
	.ascii	"FTOPBOTTOMSPACING\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FVERTICALSPACING\000"
	.byte	2
	.byte	35
	.uleb128	84
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"CONTROL\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La103-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"LEFTRIGHTSPACING\000"
	.byte	2
	.byte	35
	.uleb128	52
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"TOPBOTTOMSPACING\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"HORIZONTALSPACING\000"
	.byte	2
	.byte	35
	.uleb128	44
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"VERTICALSPACING\000"
	.byte	2
	.byte	35
	.uleb128	84
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"ENLARGEHORIZONTAL\000"
	.byte	2
	.byte	35
	.uleb128	36
	.byte	3
	.long	.La866-.Ldebug_info0
	.uleb128	14
	.ascii	"ENLARGEVERTICAL\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La866-.Ldebug_info0
	.uleb128	14
	.ascii	"SHRINKHORIZONTAL\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	3
	.long	.La866-.Ldebug_info0
	.uleb128	14
	.ascii	"SHRINKVERTICAL\000"
	.byte	2
	.byte	35
	.uleb128	76
	.byte	3
	.long	.La866-.Ldebug_info0
	.uleb128	14
	.ascii	"LAYOUT\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La868-.Ldebug_info0
	.uleb128	14
	.ascii	"CONTROLSPERLINE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La120-.Ldebug_info0
# Procdef SetControlsPerLine(<TControlChildSizing>;const LongInt);
	.uleb128	25
	.ascii	"SETCONTROLSPERLINE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetEnlargeHorizontal(<TControlChildSizing>;const TChildControlResizeStyle);
	.uleb128	25
	.ascii	"SETENLARGEHORIZONTAL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La866-.Ldebug_info0
	.byte	0
# Procdef SetEnlargeVertical(<TControlChildSizing>;const TChildControlResizeStyle);
	.uleb128	25
	.ascii	"SETENLARGEVERTICAL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La866-.Ldebug_info0
	.byte	0
# Procdef SetHorizontalSpacing(<TControlChildSizing>;const LongInt);
	.uleb128	25
	.ascii	"SETHORIZONTALSPACING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetLayout(<TControlChildSizing>;const TControlChildrenLayout);
	.uleb128	25
	.ascii	"SETLAYOUT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La868-.Ldebug_info0
	.byte	0
# Procdef SetLeftRightSpacing(<TControlChildSizing>;const LongInt);
	.uleb128	25
	.ascii	"SETLEFTRIGHTSPACING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetShrinkHorizontal(<TControlChildSizing>;const TChildControlResizeStyle);
	.uleb128	25
	.ascii	"SETSHRINKHORIZONTAL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La866-.Ldebug_info0
	.byte	0
# Procdef SetShrinkVertical(<TControlChildSizing>;const TChildControlResizeStyle);
	.uleb128	25
	.ascii	"SETSHRINKVERTICAL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La866-.Ldebug_info0
	.byte	0
# Procdef SetTopBottomSpacing(<TControlChildSizing>;const LongInt);
	.uleb128	25
	.ascii	"SETTOPBOTTOMSPACING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetVerticalSpacing(<TControlChildSizing>;const LongInt);
	.uleb128	25
	.ascii	"SETVERTICALSPACING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Change(<TControlChildSizing>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TControlChildSizing>;<Pointer>;TWinControl);
	.uleb128	22
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol OWNERCONTROL
	.uleb128	19
	.ascii	"OWNERCONTROL\000"
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef Assign(<TControlChildSizing>;TPersistent);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef AssignTo(<TControlChildSizing>;TPersistent);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol DEST
	.uleb128	19
	.ascii	"DEST\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef IsEqual(<TControlChildSizing>;TControlChildSizing):Boolean;
	.uleb128	22
	.ascii	"ISEQUAL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol SIZING
	.uleb128	19
	.ascii	"SIZING\000"
	.long	.La335-.Ldebug_info0
	.byte	0
# Procdef SetGridSpacing(<TControlChildSizing>;LongInt);
	.uleb128	20
	.ascii	"SETGRIDSPACING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La335-.Ldebug_info0
# Symbol SPACING
	.uleb128	19
	.ascii	"SPACING\000"
	.long	.La120-.Ldebug_info0
	.byte	0
	.byte	0
.La336:
	.uleb128	7
	.long	.La335-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TControl;var AnsiString) of object;Register>
.La338:
	.uleb128	5
	.ascii	"TGETDOCKCAPTIONEVENT\000"
	.long	.La870-.Ldebug_info0
.La870:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La871-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La871:
	.uleb128	41
	.ascii	"TGETDOCKCAPTIONEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
	.uleb128	19
	.ascii	"ACAPTION\000"
	.long	.La27-.Ldebug_info0
	.byte	0
.La339:
	.uleb128	7
	.long	.La338-.Ldebug_info0
# Definition TDockManager
.La340:
	.uleb128	5
	.ascii	"TDOCKMANAGER\000"
	.long	.La872-.Ldebug_info0
.La872:
	.uleb128	8
	.long	.La342-.Ldebug_info0
.La342:
	.uleb128	9
	.ascii	"TDOCKMANAGER\000"
	.uleb128	24
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La223-.Ldebug_info0
# Procdef constructor Create(<TDockManager>;<Pointer>;TWinControl);
	.uleb128	18
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
	.long	.La340-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La340-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol ADOCKSITE
	.uleb128	19
	.ascii	"ADOCKSITE\000"
	.long	.La103-.Ldebug_info0
	.byte	0
# Procdef BeginUpdate(<TDockManager>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La340-.Ldebug_info0
	.byte	0
# Procdef EndUpdate(<TDockManager>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La340-.Ldebug_info0
	.byte	0
# Procdef GetControlBounds(<TDockManager>;TControl;out TRect);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La340-.Ldebug_info0
# Symbol CONTROL
	.uleb128	19
	.ascii	"CONTROL\000"
	.long	.La106-.Ldebug_info0
# Symbol ACONTROLBOUNDS
	.uleb128	19
	.ascii	"ACONTROLBOUNDS\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef GetDockEdge(<TDockManager>;TDragDockObject):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La340-.Ldebug_info0
# Symbol ADOCKOBJECT
	.uleb128	19
	.ascii	"ADOCKOBJECT\000"
	.long	.La386-.Ldebug_info0
	.byte	0
# Procdef InsertControl(<TDockManager>;TDragDockObject);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La340-.Ldebug_info0
# Symbol ADOCKOBJECT
	.uleb128	19
	.ascii	"ADOCKOBJECT\000"
	.long	.La386-.Ldebug_info0
	.byte	0
# Procdef InsertControl(<TDockManager>;TControl;TAlign;TControl);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La340-.Ldebug_info0
# Symbol CONTROL
	.uleb128	19
	.ascii	"CONTROL\000"
	.long	.La106-.Ldebug_info0
# Symbol INSERTAT
	.uleb128	19
	.ascii	"INSERTAT\000"
	.long	.La367-.Ldebug_info0
# Symbol DROPCTL
	.uleb128	19
	.ascii	"DROPCTL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef LoadFromStream(<TDockManager>;TStream);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La340-.Ldebug_info0
# Symbol STREAM
	.uleb128	19
	.ascii	"STREAM\000"
	.long	.La670-.Ldebug_info0
	.byte	0
# Procdef PaintSite(<TDockManager>;QWord);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La340-.Ldebug_info0
# Symbol DC
	.uleb128	19
	.ascii	"DC\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef MessageHandler(<TDockManager>;TControl;var TMessage);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La340-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La106-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef PositionDockRect(<TDockManager>;TDragDockObject);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La340-.Ldebug_info0
# Symbol ADOCKOBJECT
	.uleb128	19
	.ascii	"ADOCKOBJECT\000"
	.long	.La386-.Ldebug_info0
	.byte	0
# Procdef PositionDockRect(<TDockManager>;TControl;TControl;TAlign;var TRect);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La340-.Ldebug_info0
# Symbol CLIENT
	.uleb128	19
	.ascii	"CLIENT\000"
	.long	.La106-.Ldebug_info0
# Symbol DROPCTL
	.uleb128	19
	.ascii	"DROPCTL\000"
	.long	.La106-.Ldebug_info0
# Symbol DROPALIGN
	.uleb128	19
	.ascii	"DROPALIGN\000"
	.long	.La367-.Ldebug_info0
# Symbol DOCKRECT
	.uleb128	19
	.ascii	"DOCKRECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef RemoveControl(<TDockManager>;TControl);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La340-.Ldebug_info0
# Symbol CONTROL
	.uleb128	19
	.ascii	"CONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef ResetBounds(<TDockManager>;Boolean);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La340-.Ldebug_info0
# Symbol FORCE
	.uleb128	19
	.ascii	"FORCE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SaveToStream(<TDockManager>;TStream);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La340-.Ldebug_info0
# Symbol STREAM
	.uleb128	19
	.ascii	"STREAM\000"
	.long	.La670-.Ldebug_info0
	.byte	0
# Procdef SetReplacingControl(<TDockManager>;TControl);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La340-.Ldebug_info0
# Symbol CONTROL
	.uleb128	19
	.ascii	"CONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef AutoFreeByControl(<TDockManager>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La340-.Ldebug_info0
	.byte	0
	.byte	0
.La341:
	.uleb128	7
	.long	.La340-.Ldebug_info0
# Definition <procedure variable type of function(TWinControl;TControl;TControl):Boolean of object;Register>
.La343:
	.uleb128	5
	.ascii	"TALIGNINSERTBEFOREEVENT\000"
	.long	.La873-.Ldebug_info0
.La873:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La874-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La874:
	.uleb128	42
	.ascii	"TALIGNINSERTBEFOREEVENT\000"
	.byte	1
	.long	.La29-.Ldebug_info0
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La103-.Ldebug_info0
	.uleb128	19
	.ascii	"CONTROL1\000"
	.long	.La106-.Ldebug_info0
	.uleb128	19
	.ascii	"CONTROL2\000"
	.long	.La106-.Ldebug_info0
	.byte	0
.La344:
	.uleb128	7
	.long	.La343-.Ldebug_info0
# Definition <procedure variable type of procedure(TWinControl;TControl;var LongInt;var LongInt;var LongInt;var LongInt;var TRect;TAlignInfo) of object;Register>
.La345:
	.uleb128	5
	.ascii	"TALIGNPOSITIONEVENT\000"
	.long	.La875-.Ldebug_info0
.La875:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La876-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La876:
	.uleb128	41
	.ascii	"TALIGNPOSITIONEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La103-.Ldebug_info0
	.uleb128	19
	.ascii	"CONTROL\000"
	.long	.La106-.Ldebug_info0
	.uleb128	19
	.ascii	"NEWLEFT\000"
	.long	.La120-.Ldebug_info0
	.uleb128	19
	.ascii	"NEWTOP\000"
	.long	.La120-.Ldebug_info0
	.uleb128	19
	.ascii	"NEWWIDTH\000"
	.long	.La120-.Ldebug_info0
	.uleb128	19
	.ascii	"NEWHEIGHT\000"
	.long	.La120-.Ldebug_info0
	.uleb128	19
	.ascii	"ALIGNRECT\000"
	.long	.La186-.Ldebug_info0
	.uleb128	19
	.ascii	"ALIGNINFO\000"
	.long	.La369-.Ldebug_info0
	.byte	0
.La346:
	.uleb128	7
	.long	.La345-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TDragDockObject;LongInt;LongInt) of object;Register>
.La347:
	.uleb128	5
	.ascii	"TDOCKDROPEVENT\000"
	.long	.La877-.Ldebug_info0
.La877:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La878-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La878:
	.uleb128	41
	.ascii	"TDOCKDROPEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La386-.Ldebug_info0
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
.La348:
	.uleb128	7
	.long	.La347-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TDragDockObject;LongInt;LongInt;TDragState;var Boolean) of object;Register>
.La349:
	.uleb128	5
	.ascii	"TDOCKOVEREVENT\000"
	.long	.La879-.Ldebug_info0
.La879:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La880-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La880:
	.uleb128	41
	.ascii	"TDOCKOVEREVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La386-.Ldebug_info0
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.uleb128	19
	.ascii	"STATE\000"
	.long	.La389-.Ldebug_info0
	.uleb128	19
	.ascii	"ACCEPT\000"
	.long	.La29-.Ldebug_info0
	.byte	0
.La350:
	.uleb128	7
	.long	.La349-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TControl;var TRect;TPoint;var Boolean) of object;Register>
.La351:
	.uleb128	5
	.ascii	"TGETSITEINFOEVENT\000"
	.long	.La881-.Ldebug_info0
.La881:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La882-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La882:
	.uleb128	41
	.ascii	"TGETSITEINFOEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"DOCKCLIENT\000"
	.long	.La106-.Ldebug_info0
	.uleb128	19
	.ascii	"INFLUENCERECT\000"
	.long	.La186-.Ldebug_info0
	.uleb128	19
	.ascii	"MOUSEPOS\000"
	.long	.La284-.Ldebug_info0
	.uleb128	19
	.ascii	"CANDOCK\000"
	.long	.La29-.Ldebug_info0
	.byte	0
.La352:
	.uleb128	7
	.long	.La351-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;var Word;TShiftState) of object;Register>
.La353:
	.uleb128	5
	.ascii	"TKEYEVENT\000"
	.long	.La883-.Ldebug_info0
.La883:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La884-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La884:
	.uleb128	41
	.ascii	"TKEYEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"KEY\000"
	.long	.La247-.Ldebug_info0
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
	.byte	0
.La354:
	.uleb128	7
	.long	.La353-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;var Char) of object;Register>
.La355:
	.uleb128	5
	.ascii	"TKEYPRESSEVENT\000"
	.long	.La885-.Ldebug_info0
.La885:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La886-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La886:
	.uleb128	41
	.ascii	"TKEYPRESSEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"KEY\000"
	.long	.La216-.Ldebug_info0
	.byte	0
.La356:
	.uleb128	7
	.long	.La355-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TControl;TWinControl;var Boolean) of object;Register>
.La357:
	.uleb128	5
	.ascii	"TUNDOCKEVENT\000"
	.long	.La887-.Ldebug_info0
.La887:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La888-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La888:
	.uleb128	41
	.ascii	"TUNDOCKEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"CLIENT\000"
	.long	.La106-.Ldebug_info0
	.uleb128	19
	.ascii	"NEWTARGET\000"
	.long	.La103-.Ldebug_info0
	.uleb128	19
	.ascii	"ALLOW\000"
	.long	.La29-.Ldebug_info0
	.byte	0
.La358:
	.uleb128	7
	.long	.La357-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;var TUTF8Char) of object;Register>
.La359:
	.uleb128	5
	.ascii	"TUTF8KEYPRESSEVENT\000"
	.long	.La889-.Ldebug_info0
.La889:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La890-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La890:
	.uleb128	41
	.ascii	"TUTF8KEYPRESSEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"UTF8KEY\000"
	.long	.La290-.Ldebug_info0
	.byte	0
.La360:
	.uleb128	7
	.long	.La359-.Ldebug_info0
# Definition TWinControlFlags
.La361:
	.uleb128	5
	.ascii	"TWINCONTROLFLAGS\000"
	.long	.La891-.Ldebug_info0
.La891:
	.uleb128	35
	.ascii	"TWINCONTROLFLAGS\000"
	.byte	7
	.short	4
.La362:
	.uleb128	7
	.long	.La361-.Ldebug_info0
# Definition TTabOrder
.La363:
	.uleb128	5
	.ascii	"TTABORDER\000"
	.long	.La892-.Ldebug_info0
.La892:
	.uleb128	50
	.ascii	"TTABORDER\000"
	.sleb128	-1
	.sleb128	32767
	.long	.La603-.Ldebug_info0
.La364:
	.uleb128	7
	.long	.La363-.Ldebug_info0
# Definition TWinControl.Class Of TWinControl
.La365:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La366:
	.uleb128	7
	.long	.La365-.Ldebug_info0
# Definition TAlign
.La367:
	.uleb128	5
	.ascii	"TALIGN\000"
	.long	.La893-.Ldebug_info0
.La893:
	.uleb128	36
	.ascii	"TALIGN\000"
	.byte	4
	.uleb128	37
	.ascii	"ALNONE\000"
	.long	0
	.uleb128	37
	.ascii	"ALTOP\000"
	.long	1
	.uleb128	37
	.ascii	"ALBOTTOM\000"
	.long	2
	.uleb128	37
	.ascii	"ALLEFT\000"
	.long	3
	.uleb128	37
	.ascii	"ALRIGHT\000"
	.long	4
	.uleb128	37
	.ascii	"ALCLIENT\000"
	.long	5
	.uleb128	37
	.ascii	"ALCUSTOM\000"
	.long	6
	.byte	0
.La368:
	.uleb128	7
	.long	.La367-.Ldebug_info0
# Definition TAlignInfo
.La369:
	.uleb128	5
	.ascii	"TALIGNINFO\000"
	.long	.La894-.Ldebug_info0
.La894:
	.uleb128	32
	.ascii	"TALIGNINFO\000"
	.uleb128	24
	.uleb128	11
	.ascii	"ALIGNLIST\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La224-.Ldebug_info0
	.uleb128	11
	.ascii	"CONTROLINDEX\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"ALIGN\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La367-.Ldebug_info0
	.uleb128	11
	.ascii	"SCRATCH\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La120-.Ldebug_info0
	.byte	0
.La370:
	.uleb128	7
	.long	.La369-.Ldebug_info0
# Definition PChar
.La371:
	.uleb128	5
	.ascii	"PCHAR\000"
	.long	.La895-.Ldebug_info0
.La895:
	.uleb128	8
	.long	.La216-.Ldebug_info0
.La372:
	.uleb128	7
	.long	.La371-.Ldebug_info0
# Definition TLMPaint
.La373:
	.uleb128	5
	.ascii	"TLMPAINT\000"
	.long	.La896-.Ldebug_info0
.La896:
	.uleb128	32
	.ascii	"TLMPAINT\000"
	.uleb128	32
	.uleb128	11
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"DC\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La131-.Ldebug_info0
	.uleb128	11
	.ascii	"PAINTSTRUCT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La897-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La71-.Ldebug_info0
	.byte	0
.La374:
	.uleb128	7
	.long	.La373-.Ldebug_info0
# Definition TLMContextMenu
.La375:
	.uleb128	5
	.ascii	"TLMCONTEXTMENU\000"
	.long	.La899-.Ldebug_info0
.La899:
	.uleb128	32
	.ascii	"TLMCONTEXTMENU\000"
	.uleb128	32
	.uleb128	11
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"HWND\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La131-.Ldebug_info0
	.uleb128	11
	.ascii	"XPOS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La603-.Ldebug_info0
	.uleb128	11
	.ascii	"YPOS\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La603-.Ldebug_info0
	.uleb128	11
	.ascii	"POS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La510-.Ldebug_info0
	.uleb128	11
	.ascii	"DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La71-.Ldebug_info0
	.byte	0
.La376:
	.uleb128	7
	.long	.La375-.Ldebug_info0
# Definition TLMEraseBkgnd
.La377:
	.uleb128	5
	.ascii	"TLMERASEBKGND\000"
	.long	.La900-.Ldebug_info0
.La900:
	.uleb128	32
	.ascii	"TLMERASEBKGND\000"
	.uleb128	32
	.uleb128	11
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"DC\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La131-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La71-.Ldebug_info0
	.byte	0
.La378:
	.uleb128	7
	.long	.La377-.Ldebug_info0
# Definition TLMNotify
.La379:
	.uleb128	5
	.ascii	"TLMNOTIFY\000"
	.long	.La901-.Ldebug_info0
.La901:
	.uleb128	32
	.ascii	"TLMNOTIFY\000"
	.uleb128	32
	.uleb128	11
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"IDCTRL\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"NMHDR\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La902-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La71-.Ldebug_info0
	.byte	0
.La380:
	.uleb128	7
	.long	.La379-.Ldebug_info0
# Definition TDragMessage
.La381:
	.uleb128	5
	.ascii	"TDRAGMESSAGE\000"
	.long	.La904-.Ldebug_info0
.La904:
	.uleb128	36
	.ascii	"TDRAGMESSAGE\000"
	.byte	4
	.uleb128	37
	.ascii	"DMDRAGENTER\000"
	.long	0
	.uleb128	37
	.ascii	"DMDRAGLEAVE\000"
	.long	1
	.uleb128	37
	.ascii	"DMDRAGMOVE\000"
	.long	2
	.uleb128	37
	.ascii	"DMDRAGDROP\000"
	.long	3
	.uleb128	37
	.ascii	"DMDRAGCANCEL\000"
	.long	4
	.uleb128	37
	.ascii	"DMFINDTARGET\000"
	.long	5
	.byte	0
.La382:
	.uleb128	7
	.long	.La381-.Ldebug_info0
# Definition TDragObject
.La383:
	.uleb128	5
	.ascii	"TDRAGOBJECT\000"
	.long	.La905-.Ldebug_info0
.La905:
	.uleb128	8
	.long	.La385-.Ldebug_info0
.La385:
	.uleb128	9
	.ascii	"TDRAGOBJECT\000"
	.uleb128	56
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La22-.Ldebug_info0
	.uleb128	14
	.ascii	"FALWAYSSHOWDRAGIMAGES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FDRAGPOS\000"
	.byte	2
	.byte	35
	.uleb128	12
	.byte	3
	.long	.La284-.Ldebug_info0
	.uleb128	14
	.ascii	"FCONTROL\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"FDRAGTARGET\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"FDRAGTARGETPOS\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La284-.Ldebug_info0
	.uleb128	14
	.ascii	"FAUTOFREE\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FAUTOCREATED\000"
	.byte	2
	.byte	35
	.uleb128	49
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FDROPPED\000"
	.byte	2
	.byte	35
	.uleb128	50
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"ALWAYSSHOWDRAGIMAGES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"AUTOCREATED\000"
	.byte	2
	.byte	35
	.uleb128	49
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"AUTOFREE\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"CONTROL\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"DRAGPOS\000"
	.byte	2
	.byte	35
	.uleb128	12
	.byte	3
	.long	.La284-.Ldebug_info0
	.uleb128	14
	.ascii	"DRAGTARGET\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"DRAGTARGETPOS\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La284-.Ldebug_info0
	.uleb128	14
	.ascii	"DROPPED\000"
	.byte	2
	.byte	35
	.uleb128	50
	.byte	3
	.long	.La29-.Ldebug_info0
# Procdef EndDrag(<TDragObject>;TObject;LongInt;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La383-.Ldebug_info0
# Symbol TARGET
	.uleb128	19
	.ascii	"TARGET\000"
	.long	.La20-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetDragImages(<TDragObject>):TDragImageList;
	.uleb128	26
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
	.long	.La507-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La383-.Ldebug_info0
	.byte	0
# Procdef GetDragCursor(<TDragObject>;Boolean;LongInt;LongInt):SmallInt;
	.uleb128	26
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
	.long	.La399-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La383-.Ldebug_info0
# Symbol ACCEPTED
	.uleb128	19
	.ascii	"ACCEPTED\000"
	.long	.La29-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TDragObject>;<Pointer>;TControl);
	.uleb128	18
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
	.long	.La383-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La383-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef constructor AutoCreate(<TDragObject>;<Pointer>;TControl);
	.uleb128	22
	.ascii	"AUTOCREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La383-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La383-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef HideDragImage(<TDragObject>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La383-.Ldebug_info0
	.byte	0
# Procdef ShowDragImage(<TDragObject>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La383-.Ldebug_info0
	.byte	0
	.byte	0
.La384:
	.uleb128	7
	.long	.La383-.Ldebug_info0
# Definition TDragDockObject
.La386:
	.uleb128	5
	.ascii	"TDRAGDOCKOBJECT\000"
	.long	.La906-.Ldebug_info0
.La906:
	.uleb128	8
	.long	.La388-.Ldebug_info0
.La388:
	.uleb128	9
	.ascii	"TDRAGDOCKOBJECT\000"
	.uleb128	120
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La385-.Ldebug_info0
	.uleb128	14
	.ascii	"FDOCKOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La284-.Ldebug_info0
	.uleb128	14
	.ascii	"FDOCKRECT\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La186-.Ldebug_info0
	.uleb128	14
	.ascii	"FDROPALIGN\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La367-.Ldebug_info0
	.uleb128	14
	.ascii	"FDROPONCONTROL\000"
	.byte	2
	.byte	35
	.uleb128	88
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"FERASEDOCKRECT\000"
	.byte	2
	.byte	35
	.uleb128	96
	.byte	3
	.long	.La186-.Ldebug_info0
	.uleb128	14
	.ascii	"FFLOATING\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FINCREASEDOCKAREA\000"
	.byte	2
	.byte	35
	.uleb128	113
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"DOCKOFFSET\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La284-.Ldebug_info0
	.uleb128	14
	.ascii	"DOCKRECT\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La186-.Ldebug_info0
	.uleb128	14
	.ascii	"DROPALIGN\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La367-.Ldebug_info0
	.uleb128	14
	.ascii	"DROPONCONTROL\000"
	.byte	2
	.byte	35
	.uleb128	88
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"FLOATING\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"INCREASEDOCKAREA\000"
	.byte	2
	.byte	35
	.uleb128	113
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"ERASEDOCKRECT\000"
	.byte	2
	.byte	35
	.uleb128	96
	.byte	3
	.long	.La186-.Ldebug_info0
# Procdef AdjustDockRect(<TDragDockObject>;TRect);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La386-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef GetDragCursor(<TDragDockObject>;Boolean;LongInt;LongInt):SmallInt;
	.uleb128	26
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
	.long	.La399-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La386-.Ldebug_info0
# Symbol ACCEPTED
	.uleb128	19
	.ascii	"ACCEPTED\000"
	.long	.La29-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef EndDrag(<TDragDockObject>;TObject;LongInt;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La386-.Ldebug_info0
# Symbol TARGET
	.uleb128	19
	.ascii	"TARGET\000"
	.long	.La20-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef InitDock(<TDragDockObject>;TPoint);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La386-.Ldebug_info0
# Symbol APOSITION
	.uleb128	19
	.ascii	"APOSITION\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef ShowDockImage(<TDragDockObject>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La386-.Ldebug_info0
	.byte	0
# Procdef HideDockImage(<TDragDockObject>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La386-.Ldebug_info0
	.byte	0
# Procdef MoveDockImage(<TDragDockObject>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La386-.Ldebug_info0
	.byte	0
# Procdef HasOnDrawImage(<TDragDockObject>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La386-.Ldebug_info0
	.byte	0
	.byte	0
.La387:
	.uleb128	7
	.long	.La386-.Ldebug_info0
# Definition TDragState
.La389:
	.uleb128	5
	.ascii	"TDRAGSTATE\000"
	.long	.La907-.Ldebug_info0
.La907:
	.uleb128	36
	.ascii	"TDRAGSTATE\000"
	.byte	4
	.uleb128	37
	.ascii	"DSDRAGENTER\000"
	.long	0
	.uleb128	37
	.ascii	"DSDRAGLEAVE\000"
	.long	1
	.uleb128	37
	.ascii	"DSDRAGMOVE\000"
	.long	2
	.byte	0
.La390:
	.uleb128	7
	.long	.La389-.Ldebug_info0
# Definition TGraphicsColor
.La391:
	.uleb128	5
	.ascii	"TGRAPHICSCOLOR\000"
	.long	.La908-.Ldebug_info0
.La908:
	.uleb128	29
	.ascii	"TGRAPHICSCOLOR\000"
	.byte	5
	.byte	4
.La392:
	.uleb128	7
	.long	.La391-.Ldebug_info0
# Definition TControlAutoSizePhases
.La393:
	.uleb128	5
	.ascii	"TCONTROLAUTOSIZEPHASES\000"
	.long	.La909-.Ldebug_info0
.La909:
	.uleb128	35
	.ascii	"TCONTROLAUTOSIZEPHASES\000"
	.byte	7
	.short	4
.La394:
	.uleb128	7
	.long	.La393-.Ldebug_info0
# Definition TControlAtPosFlags
.La395:
	.uleb128	5
	.ascii	"TCONTROLATPOSFLAGS\000"
	.long	.La910-.Ldebug_info0
.La910:
	.uleb128	35
	.ascii	"TCONTROLATPOSFLAGS\000"
	.byte	7
	.short	4
.La396:
	.uleb128	7
	.long	.La395-.Ldebug_info0
# Definition TWinControl.Class Of TWinControl
.La397:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La398:
	.uleb128	7
	.long	.La397-.Ldebug_info0
# Definition TCursor
.La399:
	.uleb128	5
	.ascii	"TCURSOR\000"
	.long	.La911-.Ldebug_info0
.La911:
	.uleb128	29
	.ascii	"TCURSOR\000"
	.byte	5
	.byte	2
.La400:
	.uleb128	7
	.long	.La399-.Ldebug_info0
# Definition TWinControlEnumerator
.La401:
	.uleb128	5
	.ascii	"TWINCONTROLENUMERATOR\000"
	.long	.La912-.Ldebug_info0
.La912:
	.uleb128	8
	.long	.La403-.Ldebug_info0
.La403:
	.uleb128	9
	.ascii	"TWINCONTROLENUMERATOR\000"
	.uleb128	24
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La22-.Ldebug_info0
	.uleb128	14
	.ascii	"FINDEX\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	2
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FLOWTOHIGH\000"
	.byte	2
	.byte	35
	.uleb128	12
	.byte	2
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FPARENT\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	2
	.long	.La103-.Ldebug_info0
# Procdef GetCurrent(<TWinControlEnumerator>):TControl;
	.uleb128	15
	.ascii	"GETCURRENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La106-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La401-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TWinControlEnumerator>;<Pointer>;TWinControl;Boolean="TRUE");
	.uleb128	22
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La401-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La401-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol PARENT
	.uleb128	19
	.ascii	"PARENT\000"
	.long	.La103-.Ldebug_info0
# Symbol ALOWTOHIGH
	.uleb128	19
	.ascii	"ALOWTOHIGH\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef GetEnumerator(<TWinControlEnumerator>):TWinControlEnumerator;
	.uleb128	22
	.ascii	"GETENUMERATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La401-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La401-.Ldebug_info0
	.byte	0
# Procdef MoveNext(<TWinControlEnumerator>):Boolean;
	.uleb128	22
	.ascii	"MOVENEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La401-.Ldebug_info0
	.byte	0
	.byte	0
.La402:
	.uleb128	7
	.long	.La401-.Ldebug_info0
# Definition TCanvas
.La404:
	.uleb128	5
	.ascii	"TCANVAS\000"
	.long	.La913-.Ldebug_info0
.La913:
	.uleb128	8
	.long	.La406-.Ldebug_info0
.La406:
	.uleb128	9
	.ascii	"TCANVAS\000"
	.uleb128	288
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La916-.Ldebug_info0
	.uleb128	14
	.ascii	"FANTIALIASINGMODE\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La917-.Ldebug_info0
	.uleb128	14
	.ascii	"FAUTOREDRAW\000"
	.byte	2
	.byte	35
	.uleb128	124
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FSTATE\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La919-.Ldebug_info0
	.uleb128	14
	.ascii	"FSAVEDFONTHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La131-.Ldebug_info0
	.uleb128	14
	.ascii	"FSAVEDPENHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	144
	.byte	3
	.long	.La131-.Ldebug_info0
	.uleb128	14
	.ascii	"FSAVEDBRUSHHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	152
	.byte	3
	.long	.La131-.Ldebug_info0
	.uleb128	14
	.ascii	"FSAVEDREGIONHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La131-.Ldebug_info0
	.uleb128	14
	.ascii	"FCOPYMODE\000"
	.byte	3
	.byte	35
	.uleb128	168
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	176
	.byte	3
	.long	.La131-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	184
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCHANGING\000"
	.byte	3
	.byte	35
	.uleb128	200
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FTEXTSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La921-.Ldebug_info0
	.uleb128	14
	.ascii	"FLOCK\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La131-.Ldebug_info0
	.uleb128	14
	.ascii	"FREGION\000"
	.byte	3
	.byte	35
	.uleb128	248
	.byte	3
	.long	.La407-.Ldebug_info0
	.uleb128	14
	.ascii	"FLAZPEN\000"
	.byte	3
	.byte	35
	.uleb128	256
	.byte	3
	.long	.La923-.Ldebug_info0
	.uleb128	14
	.ascii	"FLAZFONT\000"
	.byte	3
	.byte	35
	.uleb128	264
	.byte	3
	.long	.La445-.Ldebug_info0
	.uleb128	14
	.ascii	"FLAZBRUSH\000"
	.byte	3
	.byte	35
	.uleb128	272
	.byte	3
	.long	.La332-.Ldebug_info0
	.uleb128	14
	.ascii	"FSAVEDHANDLESTATES\000"
	.byte	3
	.byte	35
	.uleb128	280
	.byte	3
	.long	.La224-.Ldebug_info0
	.uleb128	14
	.ascii	"TEXTSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La921-.Ldebug_info0
	.uleb128	14
	.ascii	"ANTIALIASINGMODE\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La917-.Ldebug_info0
	.uleb128	14
	.ascii	"AUTOREDRAW\000"
	.byte	2
	.byte	35
	.uleb128	124
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"BRUSH\000"
	.byte	3
	.byte	35
	.uleb128	272
	.byte	3
	.long	.La332-.Ldebug_info0
	.uleb128	14
	.ascii	"COPYMODE\000"
	.byte	3
	.byte	35
	.uleb128	168
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FONT\000"
	.byte	3
	.byte	35
	.uleb128	264
	.byte	3
	.long	.La445-.Ldebug_info0
	.uleb128	14
	.ascii	"PEN\000"
	.byte	3
	.byte	35
	.uleb128	256
	.byte	3
	.long	.La923-.Ldebug_info0
	.uleb128	14
	.ascii	"REGION\000"
	.byte	3
	.byte	35
	.uleb128	248
	.byte	3
	.long	.La407-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	184
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCHANGING\000"
	.byte	3
	.byte	35
	.uleb128	200
	.byte	3
	.long	.La140-.Ldebug_info0
# Procdef BrushChanged(<TCanvas>;TObject);
	.uleb128	25
	.ascii	"BRUSHCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ABRUSH
	.uleb128	19
	.ascii	"ABRUSH\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef FontChanged(<TCanvas>;TObject);
	.uleb128	25
	.ascii	"FONTCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol AFONT
	.uleb128	19
	.ascii	"AFONT\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef PenChanged(<TCanvas>;TObject);
	.uleb128	25
	.ascii	"PENCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol APEN
	.uleb128	19
	.ascii	"APEN\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef RegionChanged(<TCanvas>;TObject);
	.uleb128	25
	.ascii	"REGIONCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol AREGION
	.uleb128	19
	.ascii	"AREGION\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef GetHandle(<TCanvas>):QWord;
	.uleb128	15
	.ascii	"GETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef SetAntialiasingMode(<TCanvas>;const TAntialiasingMode);
	.uleb128	25
	.ascii	"SETANTIALIASINGMODE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La917-.Ldebug_info0
	.byte	0
# Procdef SetAutoRedraw(<TCanvas>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetLazFont(<TCanvas>;TFont);
	.uleb128	25
	.ascii	"SETLAZFONT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef SetLazPen(<TCanvas>;TPen);
	.uleb128	25
	.ascii	"SETLAZPEN\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La923-.Ldebug_info0
	.byte	0
# Procdef SetLazBrush(<TCanvas>;TBrush);
	.uleb128	25
	.ascii	"SETLAZBRUSH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La332-.Ldebug_info0
	.byte	0
# Procdef SetRegion(<TCanvas>;TRegion);
	.uleb128	25
	.ascii	"SETREGION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La407-.Ldebug_info0
	.byte	0
# Procdef DoCreateDefaultFont(<TCanvas>):TFPCustomFont;
	.uleb128	26
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
	.long	.La926-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef DoCreateDefaultPen(<TCanvas>):TFPCustomPen;
	.uleb128	26
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
	.long	.La929-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef DoCreateDefaultBrush(<TCanvas>):TFPCustomBrush;
	.uleb128	26
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
	.long	.La850-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef SetColor(<TCanvas>;LongInt;LongInt;const TFPColor);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor(<TCanvas>;LongInt;LongInt):<record type>;
	.uleb128	26
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
	.long	.La861-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetHeight(<TCanvas>;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetHeight(<TCanvas>):LongInt;
	.uleb128	26
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef SetWidth(<TCanvas>;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetWidth(<TCanvas>):LongInt;
	.uleb128	26
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef SetPenPos(<TCanvas>;const TPoint);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef DoLockCanvas(<TCanvas>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef DoUnlockCanvas(<TCanvas>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef DoTextOut(<TCanvas>;LongInt;LongInt;AnsiString);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol TEXT
	.uleb128	19
	.ascii	"TEXT\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef DoGetTextSize(<TCanvas>;AnsiString;var LongInt;var LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol TEXT
	.uleb128	19
	.ascii	"TEXT\000"
	.long	.La27-.Ldebug_info0
# Symbol W
	.uleb128	19
	.ascii	"W\000"
	.long	.La120-.Ldebug_info0
# Symbol H
	.uleb128	19
	.ascii	"H\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef DoGetTextHeight(<TCanvas>;AnsiString):LongInt;
	.uleb128	26
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol TEXT
	.uleb128	19
	.ascii	"TEXT\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef DoGetTextWidth(<TCanvas>;AnsiString):LongInt;
	.uleb128	26
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol TEXT
	.uleb128	19
	.ascii	"TEXT\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef DoRectangle(<TCanvas>;const TRect);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol BOUNDS
	.uleb128	19
	.ascii	"BOUNDS\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef DoRectangleFill(<TCanvas>;const TRect);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol BOUNDS
	.uleb128	19
	.ascii	"BOUNDS\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef DoRectangleAndFill(<TCanvas>;const TRect);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol BOUNDS
	.uleb128	19
	.ascii	"BOUNDS\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef DoEllipse(<TCanvas>;const TRect);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol BOUNDS
	.uleb128	19
	.ascii	"BOUNDS\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef DoEllipseFill(<TCanvas>;const TRect);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol BOUNDS
	.uleb128	19
	.ascii	"BOUNDS\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef DoEllipseAndFill(<TCanvas>;const TRect);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol BOUNDS
	.uleb128	19
	.ascii	"BOUNDS\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef DoPolygon(<TCanvas>;const {Open} Array Of TPoint;<const Int64>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol POINTS
	.uleb128	19
	.ascii	"POINTS\000"
	.long	.La932-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	19
	.ascii	"highPOINTS\000"
	.long	.La71-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La932:
	.uleb128	27
	.long	.La284-.Ldebug_info0
	.uleb128	28
	.sleb128	0
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.byte	0
.La933:
	.uleb128	7
	.long	.La932-.Ldebug_info0
	.byte	0
# Procdef DoPolygonFill(<TCanvas>;const {Open} Array Of TPoint;<const Int64>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol POINTS
	.uleb128	19
	.ascii	"POINTS\000"
	.long	.La934-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	19
	.ascii	"highPOINTS\000"
	.long	.La71-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La934:
	.uleb128	27
	.long	.La284-.Ldebug_info0
	.uleb128	28
	.sleb128	0
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.byte	0
.La935:
	.uleb128	7
	.long	.La934-.Ldebug_info0
	.byte	0
# Procdef DoPolygonAndFill(<TCanvas>;const {Open} Array Of TPoint;<const Int64>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol POINTS
	.uleb128	19
	.ascii	"POINTS\000"
	.long	.La936-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	19
	.ascii	"highPOINTS\000"
	.long	.La71-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La936:
	.uleb128	27
	.long	.La284-.Ldebug_info0
	.uleb128	28
	.sleb128	0
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.byte	0
.La937:
	.uleb128	7
	.long	.La936-.Ldebug_info0
	.byte	0
# Procdef DoPolyline(<TCanvas>;const {Open} Array Of TPoint;<const Int64>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol POINTS
	.uleb128	19
	.ascii	"POINTS\000"
	.long	.La938-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	19
	.ascii	"highPOINTS\000"
	.long	.La71-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La938:
	.uleb128	27
	.long	.La284-.Ldebug_info0
	.uleb128	28
	.sleb128	0
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.byte	0
.La939:
	.uleb128	7
	.long	.La938-.Ldebug_info0
	.byte	0
# Procdef DoPolyBezier(<TCanvas>;PPoint;LongInt;Boolean="FALSE";Boolean="FALSE");
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol POINTS
	.uleb128	19
	.ascii	"POINTS\000"
	.long	.La940-.Ldebug_info0
# Symbol NUMPTS
	.uleb128	19
	.ascii	"NUMPTS\000"
	.long	.La120-.Ldebug_info0
# Symbol FILLED
	.uleb128	19
	.ascii	"FILLED\000"
	.long	.La29-.Ldebug_info0
# Symbol CONTINUOUS
	.uleb128	19
	.ascii	"CONTINUOUS\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DoFloodFill(<TCanvas>;LongInt;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef DoMoveTo(<TCanvas>;LongInt;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef DoLineTo(<TCanvas>;LongInt;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef DoLine(<TCanvas>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X1
	.uleb128	19
	.ascii	"X1\000"
	.long	.La120-.Ldebug_info0
# Symbol Y1
	.uleb128	19
	.ascii	"Y1\000"
	.long	.La120-.Ldebug_info0
# Symbol X2
	.uleb128	19
	.ascii	"X2\000"
	.long	.La120-.Ldebug_info0
# Symbol Y2
	.uleb128	19
	.ascii	"Y2\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef DoCopyRect(<TCanvas>;LongInt;LongInt;TFPCustomCanvas;const TRect);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol SRCCANVAS
	.uleb128	19
	.ascii	"SRCCANVAS\000"
	.long	.La914-.Ldebug_info0
# Symbol SOURCERECT
	.uleb128	19
	.ascii	"SOURCERECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef DoDraw(<TCanvas>;LongInt;LongInt;const TFPCustomImage);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol IMAGE
	.uleb128	19
	.ascii	"IMAGE\000"
	.long	.La942-.Ldebug_info0
	.byte	0
# Procdef CheckHelper(<TCanvas>;TFPCanvasHelper);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol AHELPER
	.uleb128	19
	.ascii	"AHELPER\000"
	.long	.La858-.Ldebug_info0
	.byte	0
# Procdef GetDefaultColor(<TCanvas>;const TDefaultColorType):LongInt;
	.uleb128	26
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
	.long	.La391-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ADEFAULTCOLORTYPE
	.uleb128	19
	.ascii	"ADEFAULTCOLORTYPE\000"
	.long	.La520-.Ldebug_info0
	.byte	0
# Procdef GetClipRect(<TCanvas>;<var TRect>):<record type>;
	.uleb128	26
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
	.long	.La186-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef SetClipRect(<TCanvas>;const TRect);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef GetClipping(<TCanvas>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef SetClipping(<TCanvas>;const Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef GetPixel(<TCanvas>;LongInt;LongInt):LongInt;
	.uleb128	26
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
	.long	.La391-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef CreateBrush(<TCanvas>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef CreateFont(<TCanvas>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef CreateHandle(<TCanvas>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef CreatePen(<TCanvas>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef CreateRegion(<TCanvas>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef DeselectHandles(<TCanvas>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef PenChanging(<TCanvas>;TObject);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol APEN
	.uleb128	19
	.ascii	"APEN\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef FontChanging(<TCanvas>;TObject);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol AFONT
	.uleb128	19
	.ascii	"AFONT\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef BrushChanging(<TCanvas>;TObject);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ABRUSH
	.uleb128	19
	.ascii	"ABRUSH\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef RegionChanging(<TCanvas>;TObject);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol AREGION
	.uleb128	19
	.ascii	"AREGION\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef RealizeAutoRedraw(<TCanvas>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef RealizeAntialiasing(<TCanvas>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef RequiredState(<TCanvas>;TCanvasState);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol REQSTATE
	.uleb128	19
	.ascii	"REQSTATE\000"
	.long	.La919-.Ldebug_info0
	.byte	0
# Procdef SetHandle(<TCanvas>;QWord);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol NEWHANDLE
	.uleb128	19
	.ascii	"NEWHANDLE\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef SetInternalPenPos(<TCanvas>;const TPoint);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef SetPixel(<TCanvas>;LongInt;LongInt;TGraphicsColor);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La391-.Ldebug_info0
	.byte	0
# Procdef FreeHandle(<TCanvas>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TCanvas>;<Pointer>);
	.uleb128	22
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TCanvas>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Lock(<TCanvas>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef TryLock(<TCanvas>):Boolean;
	.uleb128	22
	.ascii	"TRYLOCK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef Unlock(<TCanvas>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef Refresh(<TCanvas>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef Changing(<TCanvas>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef Changed(<TCanvas>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef SaveHandleState(<TCanvas>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef RestoreHandleState(<TCanvas>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef Arc(<TCanvas>;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ALEFT
	.uleb128	19
	.ascii	"ALEFT\000"
	.long	.La120-.Ldebug_info0
# Symbol ATOP
	.uleb128	19
	.ascii	"ATOP\000"
	.long	.La120-.Ldebug_info0
# Symbol ARIGHT
	.uleb128	19
	.ascii	"ARIGHT\000"
	.long	.La120-.Ldebug_info0
# Symbol ABOTTOM
	.uleb128	19
	.ascii	"ABOTTOM\000"
	.long	.La120-.Ldebug_info0
# Symbol ANGLE16DEG
	.uleb128	19
	.ascii	"ANGLE16DEG\000"
	.long	.La120-.Ldebug_info0
# Symbol ANGLE16DEGLENGTH
	.uleb128	19
	.ascii	"ANGLE16DEGLENGTH\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Arc(<TCanvas>;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ALEFT
	.uleb128	19
	.ascii	"ALEFT\000"
	.long	.La120-.Ldebug_info0
# Symbol ATOP
	.uleb128	19
	.ascii	"ATOP\000"
	.long	.La120-.Ldebug_info0
# Symbol ARIGHT
	.uleb128	19
	.ascii	"ARIGHT\000"
	.long	.La120-.Ldebug_info0
# Symbol ABOTTOM
	.uleb128	19
	.ascii	"ABOTTOM\000"
	.long	.La120-.Ldebug_info0
# Symbol SX
	.uleb128	19
	.ascii	"SX\000"
	.long	.La120-.Ldebug_info0
# Symbol SY
	.uleb128	19
	.ascii	"SY\000"
	.long	.La120-.Ldebug_info0
# Symbol EX
	.uleb128	19
	.ascii	"EX\000"
	.long	.La120-.Ldebug_info0
# Symbol EY
	.uleb128	19
	.ascii	"EY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef ArcTo(<TCanvas>;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ALEFT
	.uleb128	19
	.ascii	"ALEFT\000"
	.long	.La120-.Ldebug_info0
# Symbol ATOP
	.uleb128	19
	.ascii	"ATOP\000"
	.long	.La120-.Ldebug_info0
# Symbol ARIGHT
	.uleb128	19
	.ascii	"ARIGHT\000"
	.long	.La120-.Ldebug_info0
# Symbol ABOTTOM
	.uleb128	19
	.ascii	"ABOTTOM\000"
	.long	.La120-.Ldebug_info0
# Symbol SX
	.uleb128	19
	.ascii	"SX\000"
	.long	.La120-.Ldebug_info0
# Symbol SY
	.uleb128	19
	.ascii	"SY\000"
	.long	.La120-.Ldebug_info0
# Symbol EX
	.uleb128	19
	.ascii	"EX\000"
	.long	.La120-.Ldebug_info0
# Symbol EY
	.uleb128	19
	.ascii	"EY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef AngleArc(<TCanvas>;LongInt;LongInt;LongWord;Single;Single);
	.uleb128	20
	.ascii	"ANGLEARC\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol RADIUS
	.uleb128	19
	.ascii	"RADIUS\000"
	.long	.La293-.Ldebug_info0
# Symbol STARTANGLE
	.uleb128	19
	.ascii	"STARTANGLE\000"
	.long	.La735-.Ldebug_info0
# Symbol SWEEPANGLE
	.uleb128	19
	.ascii	"SWEEPANGLE\000"
	.long	.La735-.Ldebug_info0
	.byte	0
# Procdef BrushCopy(<TCanvas>;TRect;TBitmap;TRect;TGraphicsColor);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ADESTRECT
	.uleb128	19
	.ascii	"ADESTRECT\000"
	.long	.La186-.Ldebug_info0
# Symbol ABITMAP
	.uleb128	19
	.ascii	"ABITMAP\000"
	.long	.La204-.Ldebug_info0
# Symbol ASOURCERECT
	.uleb128	19
	.ascii	"ASOURCERECT\000"
	.long	.La186-.Ldebug_info0
# Symbol ATRANSPARENTCOLOR
	.uleb128	19
	.ascii	"ATRANSPARENTCOLOR\000"
	.long	.La391-.Ldebug_info0
	.byte	0
# Procdef Chord(<TCanvas>;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X1
	.uleb128	19
	.ascii	"X1\000"
	.long	.La120-.Ldebug_info0
# Symbol Y1
	.uleb128	19
	.ascii	"Y1\000"
	.long	.La120-.Ldebug_info0
# Symbol X2
	.uleb128	19
	.ascii	"X2\000"
	.long	.La120-.Ldebug_info0
# Symbol Y2
	.uleb128	19
	.ascii	"Y2\000"
	.long	.La120-.Ldebug_info0
# Symbol ANGLE16DEG
	.uleb128	19
	.ascii	"ANGLE16DEG\000"
	.long	.La120-.Ldebug_info0
# Symbol ANGLE16DEGLENGTH
	.uleb128	19
	.ascii	"ANGLE16DEGLENGTH\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Chord(<TCanvas>;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X1
	.uleb128	19
	.ascii	"X1\000"
	.long	.La120-.Ldebug_info0
# Symbol Y1
	.uleb128	19
	.ascii	"Y1\000"
	.long	.La120-.Ldebug_info0
# Symbol X2
	.uleb128	19
	.ascii	"X2\000"
	.long	.La120-.Ldebug_info0
# Symbol Y2
	.uleb128	19
	.ascii	"Y2\000"
	.long	.La120-.Ldebug_info0
# Symbol SX
	.uleb128	19
	.ascii	"SX\000"
	.long	.La120-.Ldebug_info0
# Symbol SY
	.uleb128	19
	.ascii	"SY\000"
	.long	.La120-.Ldebug_info0
# Symbol EX
	.uleb128	19
	.ascii	"EX\000"
	.long	.La120-.Ldebug_info0
# Symbol EY
	.uleb128	19
	.ascii	"EY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef CopyRect(<TCanvas>;const TRect;TCanvas;const TRect);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol DEST
	.uleb128	19
	.ascii	"DEST\000"
	.long	.La186-.Ldebug_info0
# Symbol SRCCANVAS
	.uleb128	19
	.ascii	"SRCCANVAS\000"
	.long	.La404-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef Draw(<TCanvas>;LongInt;LongInt;TGraphic);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol SRCGRAPHIC
	.uleb128	19
	.ascii	"SRCGRAPHIC\000"
	.long	.La945-.Ldebug_info0
	.byte	0
# Procdef DrawFocusRect(<TCanvas>;const TRect);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef StretchDraw(<TCanvas>;const TRect;TGraphic);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol DESTRECT
	.uleb128	19
	.ascii	"DESTRECT\000"
	.long	.La186-.Ldebug_info0
# Symbol SRCGRAPHIC
	.uleb128	19
	.ascii	"SRCGRAPHIC\000"
	.long	.La945-.Ldebug_info0
	.byte	0
# Procdef Ellipse(<TCanvas>;const TRect);
	.uleb128	20
	.ascii	"ELLIPSE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef Ellipse(<TCanvas>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X1
	.uleb128	19
	.ascii	"X1\000"
	.long	.La120-.Ldebug_info0
# Symbol Y1
	.uleb128	19
	.ascii	"Y1\000"
	.long	.La120-.Ldebug_info0
# Symbol X2
	.uleb128	19
	.ascii	"X2\000"
	.long	.La120-.Ldebug_info0
# Symbol Y2
	.uleb128	19
	.ascii	"Y2\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef FillRect(<TCanvas>;const TRect);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef FillRect(<TCanvas>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	20
	.ascii	"FILLRECT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X1
	.uleb128	19
	.ascii	"X1\000"
	.long	.La120-.Ldebug_info0
# Symbol Y1
	.uleb128	19
	.ascii	"Y1\000"
	.long	.La120-.Ldebug_info0
# Symbol X2
	.uleb128	19
	.ascii	"X2\000"
	.long	.La120-.Ldebug_info0
# Symbol Y2
	.uleb128	19
	.ascii	"Y2\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef FloodFill(<TCanvas>;LongInt;LongInt;TGraphicsColor;TGraphicsFillStyle);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol FILLCOLOR
	.uleb128	19
	.ascii	"FILLCOLOR\000"
	.long	.La391-.Ldebug_info0
# Symbol FILLSTYLE
	.uleb128	19
	.ascii	"FILLSTYLE\000"
	.long	.La948-.Ldebug_info0
	.byte	0
# Procdef Frame3d(<TCanvas>;var TRect;const LongInt;const TGraphicsBevelCut);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
# Symbol FRAMEWIDTH
	.uleb128	19
	.ascii	"FRAMEWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol STYLE
	.uleb128	19
	.ascii	"STYLE\000"
	.long	.La950-.Ldebug_info0
	.byte	0
# Procdef Frame3d(<TCanvas>;var TRect;TGraphicsColor;TGraphicsColor;const LongInt);
	.uleb128	20
	.ascii	"FRAME3D\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
# Symbol TOPCOLOR
	.uleb128	19
	.ascii	"TOPCOLOR\000"
	.long	.La391-.Ldebug_info0
# Symbol BOTTOMCOLOR
	.uleb128	19
	.ascii	"BOTTOMCOLOR\000"
	.long	.La391-.Ldebug_info0
# Symbol FRAMEWIDTH
	.uleb128	19
	.ascii	"FRAMEWIDTH\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Frame(<TCanvas>;const TRect);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef Frame(<TCanvas>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	20
	.ascii	"FRAME\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X1
	.uleb128	19
	.ascii	"X1\000"
	.long	.La120-.Ldebug_info0
# Symbol Y1
	.uleb128	19
	.ascii	"Y1\000"
	.long	.La120-.Ldebug_info0
# Symbol X2
	.uleb128	19
	.ascii	"X2\000"
	.long	.La120-.Ldebug_info0
# Symbol Y2
	.uleb128	19
	.ascii	"Y2\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef FrameRect(<TCanvas>;const TRect);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef FrameRect(<TCanvas>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	20
	.ascii	"FRAMERECT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X1
	.uleb128	19
	.ascii	"X1\000"
	.long	.La120-.Ldebug_info0
# Symbol Y1
	.uleb128	19
	.ascii	"Y1\000"
	.long	.La120-.Ldebug_info0
# Symbol X2
	.uleb128	19
	.ascii	"X2\000"
	.long	.La120-.Ldebug_info0
# Symbol Y2
	.uleb128	19
	.ascii	"Y2\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetTextMetrics(<TCanvas>;out TLCLTextMetric):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol TM
	.uleb128	19
	.ascii	"TM\000"
	.long	.La952-.Ldebug_info0
	.byte	0
# Procdef GradientFill(<TCanvas>;TRect;TGraphicsColor;TGraphicsColor;TGradientDirection);
	.uleb128	20
	.ascii	"GRADIENTFILL\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
# Symbol ASTART
	.uleb128	19
	.ascii	"ASTART\000"
	.long	.La391-.Ldebug_info0
# Symbol ASTOP
	.uleb128	19
	.ascii	"ASTOP\000"
	.long	.La391-.Ldebug_info0
# Symbol ADIRECTION
	.uleb128	19
	.ascii	"ADIRECTION\000"
	.long	.La954-.Ldebug_info0
	.byte	0
# Procdef RadialPie(<TCanvas>;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X1
	.uleb128	19
	.ascii	"X1\000"
	.long	.La120-.Ldebug_info0
# Symbol Y1
	.uleb128	19
	.ascii	"Y1\000"
	.long	.La120-.Ldebug_info0
# Symbol X2
	.uleb128	19
	.ascii	"X2\000"
	.long	.La120-.Ldebug_info0
# Symbol Y2
	.uleb128	19
	.ascii	"Y2\000"
	.long	.La120-.Ldebug_info0
# Symbol STARTANGLE16DEG
	.uleb128	19
	.ascii	"STARTANGLE16DEG\000"
	.long	.La120-.Ldebug_info0
# Symbol ANGLE16DEGLENGTH
	.uleb128	19
	.ascii	"ANGLE16DEGLENGTH\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Pie(<TCanvas>;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ELLIPSEX1
	.uleb128	19
	.ascii	"ELLIPSEX1\000"
	.long	.La120-.Ldebug_info0
# Symbol ELLIPSEY1
	.uleb128	19
	.ascii	"ELLIPSEY1\000"
	.long	.La120-.Ldebug_info0
# Symbol ELLIPSEX2
	.uleb128	19
	.ascii	"ELLIPSEX2\000"
	.long	.La120-.Ldebug_info0
# Symbol ELLIPSEY2
	.uleb128	19
	.ascii	"ELLIPSEY2\000"
	.long	.La120-.Ldebug_info0
# Symbol STARTX
	.uleb128	19
	.ascii	"STARTX\000"
	.long	.La120-.Ldebug_info0
# Symbol STARTY
	.uleb128	19
	.ascii	"STARTY\000"
	.long	.La120-.Ldebug_info0
# Symbol ENDX
	.uleb128	19
	.ascii	"ENDX\000"
	.long	.La120-.Ldebug_info0
# Symbol ENDY
	.uleb128	19
	.ascii	"ENDY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef PolyBezier(<TCanvas>;PPoint;LongInt;Boolean="FALSE";Boolean="FALSE");
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol POINTS
	.uleb128	19
	.ascii	"POINTS\000"
	.long	.La940-.Ldebug_info0
# Symbol NUMPTS
	.uleb128	19
	.ascii	"NUMPTS\000"
	.long	.La120-.Ldebug_info0
# Symbol FILLED
	.uleb128	19
	.ascii	"FILLED\000"
	.long	.La29-.Ldebug_info0
# Symbol CONTINUOUS
	.uleb128	19
	.ascii	"CONTINUOUS\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef PolyBezier(<TCanvas>;const {Open} Array Of TPoint;<const Int64>;Boolean="FALSE";Boolean="FALSE");
	.uleb128	20
	.ascii	"POLYBEZIER\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol POINTS
	.uleb128	19
	.ascii	"POINTS\000"
	.long	.La956-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	19
	.ascii	"highPOINTS\000"
	.long	.La71-.Ldebug_info0
# Symbol FILLED
	.uleb128	19
	.ascii	"FILLED\000"
	.long	.La29-.Ldebug_info0
# Symbol CONTINUOUS
	.uleb128	19
	.ascii	"CONTINUOUS\000"
	.long	.La29-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La956:
	.uleb128	27
	.long	.La284-.Ldebug_info0
	.uleb128	28
	.sleb128	0
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.byte	0
.La957:
	.uleb128	7
	.long	.La956-.Ldebug_info0
	.byte	0
# Procdef Polygon(<TCanvas>;const {Open} Array Of TPoint;<const Int64>;Boolean;LongInt="0";LongInt="-1");
	.uleb128	20
	.ascii	"POLYGON\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol POINTS
	.uleb128	19
	.ascii	"POINTS\000"
	.long	.La958-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	19
	.ascii	"highPOINTS\000"
	.long	.La71-.Ldebug_info0
# Symbol WINDING
	.uleb128	19
	.ascii	"WINDING\000"
	.long	.La29-.Ldebug_info0
# Symbol STARTINDEX
	.uleb128	19
	.ascii	"STARTINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol NUMPTS
	.uleb128	19
	.ascii	"NUMPTS\000"
	.long	.La120-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La958:
	.uleb128	27
	.long	.La284-.Ldebug_info0
	.uleb128	28
	.sleb128	0
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.byte	0
.La959:
	.uleb128	7
	.long	.La958-.Ldebug_info0
	.byte	0
# Procdef Polygon(<TCanvas>;PPoint;LongInt;Boolean="FALSE");
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol POINTS
	.uleb128	19
	.ascii	"POINTS\000"
	.long	.La940-.Ldebug_info0
# Symbol NUMPTS
	.uleb128	19
	.ascii	"NUMPTS\000"
	.long	.La120-.Ldebug_info0
# Symbol WINDING
	.uleb128	19
	.ascii	"WINDING\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef Polygon(<TCanvas>;const {Open} Array Of TPoint;<const Int64>);
	.uleb128	20
	.ascii	"POLYGON\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol POINTS
	.uleb128	19
	.ascii	"POINTS\000"
	.long	.La960-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	19
	.ascii	"highPOINTS\000"
	.long	.La71-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La960:
	.uleb128	27
	.long	.La284-.Ldebug_info0
	.uleb128	28
	.sleb128	0
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.byte	0
.La961:
	.uleb128	7
	.long	.La960-.Ldebug_info0
	.byte	0
# Procdef Polyline(<TCanvas>;const {Open} Array Of TPoint;<const Int64>;LongInt;LongInt="-1");
	.uleb128	20
	.ascii	"POLYLINE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol POINTS
	.uleb128	19
	.ascii	"POINTS\000"
	.long	.La962-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	19
	.ascii	"highPOINTS\000"
	.long	.La71-.Ldebug_info0
# Symbol STARTINDEX
	.uleb128	19
	.ascii	"STARTINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol NUMPTS
	.uleb128	19
	.ascii	"NUMPTS\000"
	.long	.La120-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La962:
	.uleb128	27
	.long	.La284-.Ldebug_info0
	.uleb128	28
	.sleb128	0
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.byte	0
.La963:
	.uleb128	7
	.long	.La962-.Ldebug_info0
	.byte	0
# Procdef Polyline(<TCanvas>;PPoint;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol POINTS
	.uleb128	19
	.ascii	"POINTS\000"
	.long	.La940-.Ldebug_info0
# Symbol NUMPTS
	.uleb128	19
	.ascii	"NUMPTS\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Polyline(<TCanvas>;const {Open} Array Of TPoint;<const Int64>);
	.uleb128	20
	.ascii	"POLYLINE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol POINTS
	.uleb128	19
	.ascii	"POINTS\000"
	.long	.La964-.Ldebug_info0
# Symbol highPOINTS
	.uleb128	19
	.ascii	"highPOINTS\000"
	.long	.La71-.Ldebug_info0
# Definition {Open} Array Of TPoint
.La964:
	.uleb128	27
	.long	.La284-.Ldebug_info0
	.uleb128	28
	.sleb128	0
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.byte	0
.La965:
	.uleb128	7
	.long	.La964-.Ldebug_info0
	.byte	0
# Procdef Rectangle(<TCanvas>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X1
	.uleb128	19
	.ascii	"X1\000"
	.long	.La120-.Ldebug_info0
# Symbol Y1
	.uleb128	19
	.ascii	"Y1\000"
	.long	.La120-.Ldebug_info0
# Symbol X2
	.uleb128	19
	.ascii	"X2\000"
	.long	.La120-.Ldebug_info0
# Symbol Y2
	.uleb128	19
	.ascii	"Y2\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Rectangle(<TCanvas>;const TRect);
	.uleb128	20
	.ascii	"RECTANGLE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef RoundRect(<TCanvas>;LongInt;LongInt;LongInt;LongInt;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X1
	.uleb128	19
	.ascii	"X1\000"
	.long	.La120-.Ldebug_info0
# Symbol Y1
	.uleb128	19
	.ascii	"Y1\000"
	.long	.La120-.Ldebug_info0
# Symbol X2
	.uleb128	19
	.ascii	"X2\000"
	.long	.La120-.Ldebug_info0
# Symbol Y2
	.uleb128	19
	.ascii	"Y2\000"
	.long	.La120-.Ldebug_info0
# Symbol RX
	.uleb128	19
	.ascii	"RX\000"
	.long	.La120-.Ldebug_info0
# Symbol RY
	.uleb128	19
	.ascii	"RY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef RoundRect(<TCanvas>;const TRect;LongInt;LongInt);
	.uleb128	20
	.ascii	"ROUNDRECT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol RECT
	.uleb128	19
	.ascii	"RECT\000"
	.long	.La186-.Ldebug_info0
# Symbol RX
	.uleb128	19
	.ascii	"RX\000"
	.long	.La120-.Ldebug_info0
# Symbol RY
	.uleb128	19
	.ascii	"RY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef TextOut(<TCanvas>;LongInt;LongInt;const AnsiString);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol TEXT
	.uleb128	19
	.ascii	"TEXT\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef TextRect(<TCanvas>;const TRect;LongInt;LongInt;const AnsiString);
	.uleb128	20
	.ascii	"TEXTRECT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol TEXT
	.uleb128	19
	.ascii	"TEXT\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef TextRect(<TCanvas>;TRect;LongInt;LongInt;const AnsiString;const TTextStyle);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol TEXT
	.uleb128	19
	.ascii	"TEXT\000"
	.long	.La27-.Ldebug_info0
# Symbol STYLE
	.uleb128	19
	.ascii	"STYLE\000"
	.long	.La921-.Ldebug_info0
	.byte	0
# Procdef TextExtent(<TCanvas>;const AnsiString):<record type>;
	.uleb128	18
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
	.long	.La200-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol TEXT
	.uleb128	19
	.ascii	"TEXT\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef TextHeight(<TCanvas>;const AnsiString):LongInt;
	.uleb128	18
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol TEXT
	.uleb128	19
	.ascii	"TEXT\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef TextWidth(<TCanvas>;const AnsiString):LongInt;
	.uleb128	18
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol TEXT
	.uleb128	19
	.ascii	"TEXT\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef TextFitInfo(<TCanvas>;const AnsiString;LongInt):LongInt;
	.uleb128	22
	.ascii	"TEXTFITINFO\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol TEXT
	.uleb128	19
	.ascii	"TEXT\000"
	.long	.La27-.Ldebug_info0
# Symbol MAXWIDTH
	.uleb128	19
	.ascii	"MAXWIDTH\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef HandleAllocated(<TCanvas>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
	.byte	0
# Procdef GetUpdatedHandle(<TCanvas>;TCanvasState):QWord;
	.uleb128	18
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
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La404-.Ldebug_info0
# Symbol REQSTATE
	.uleb128	19
	.ascii	"REQSTATE\000"
	.long	.La919-.Ldebug_info0
	.byte	0
	.byte	0
.La405:
	.uleb128	7
	.long	.La404-.Ldebug_info0
# Definition TRegion
.La407:
	.uleb128	5
	.ascii	"TREGION\000"
	.long	.La966-.Ldebug_info0
.La966:
	.uleb128	8
	.long	.La409-.Ldebug_info0
.La409:
	.uleb128	9
	.ascii	"TREGION\000"
	.uleb128	64
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La969-.Ldebug_info0
	.uleb128	14
	.ascii	"FREFERENCE\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La970-.Ldebug_info0
# Procdef AddOperation(<TRegion>;TRegionOperation);
	.uleb128	25
	.ascii	"ADDOPERATION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La407-.Ldebug_info0
# Symbol AOP
	.uleb128	19
	.ascii	"AOP\000"
	.long	.La972-.Ldebug_info0
	.byte	0
# Procdef ClearSubRegions(<TRegion>);
	.uleb128	25
	.ascii	"CLEARSUBREGIONS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La407-.Ldebug_info0
	.byte	0
# Procdef AddSubRegion(<TRegion>;QWord);
	.uleb128	25
	.ascii	"ADDSUBREGION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La407-.Ldebug_info0
# Symbol AHANDLE
	.uleb128	19
	.ascii	"AHANDLE\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef FreeReference(<TRegion>);
	.uleb128	25
	.ascii	"FREEREFERENCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La407-.Ldebug_info0
	.byte	0
# Procdef GetReference(<TRegion>;<var TWSRegionReference>):TWSRegionReference;
	.uleb128	15
	.ascii	"GETREFERENCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La970-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La407-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La970-.Ldebug_info0
	.byte	0
# Procdef GetHandle(<TRegion>):QWord;
	.uleb128	15
	.ascii	"GETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La407-.Ldebug_info0
	.byte	0
# Procdef ReferenceNeeded(<TRegion>);
	.uleb128	25
	.ascii	"REFERENCENEEDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La407-.Ldebug_info0
	.byte	0
# Procdef SetHandle(<TRegion>;const QWord);
	.uleb128	25
	.ascii	"SETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La407-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef SetClipRect(<TRegion>;TRect);
	.uleb128	25
	.ascii	"SETCLIPRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La407-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef GetClipRect(<TRegion>;<var TRect>):<record type>;
	.uleb128	15
	.ascii	"GETCLIPRECT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La186-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La407-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TRegion>;<Pointer>);
	.uleb128	22
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La407-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La407-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TRegion>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La407-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Assign(<TRegion>;TPersistent);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La407-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef AddRectangle(<TRegion>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	20
	.ascii	"ADDRECTANGLE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La407-.Ldebug_info0
# Symbol X1
	.uleb128	19
	.ascii	"X1\000"
	.long	.La120-.Ldebug_info0
# Symbol Y1
	.uleb128	19
	.ascii	"Y1\000"
	.long	.La120-.Ldebug_info0
# Symbol X2
	.uleb128	19
	.ascii	"X2\000"
	.long	.La120-.Ldebug_info0
# Symbol Y2
	.uleb128	19
	.ascii	"Y2\000"
	.long	.La120-.Ldebug_info0
	.byte	0
	.byte	0
.La408:
	.uleb128	7
	.long	.La407-.Ldebug_info0
# Definition TLCLComponent
.La411:
	.uleb128	5
	.ascii	"TLCLCOMPONENT\000"
	.long	.La974-.Ldebug_info0
.La974:
	.uleb128	8
	.long	.La413-.Ldebug_info0
.La413:
	.uleb128	9
	.ascii	"TLCLCOMPONENT\000"
	.uleb128	112
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La35-.Ldebug_info0
	.uleb128	14
	.ascii	"FWIDGETSETCLASS\000"
	.byte	2
	.byte	35
	.uleb128	96
	.byte	3
	.long	.La975-.Ldebug_info0
	.uleb128	14
	.ascii	"FLCLREFCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"LCLREFCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"WIDGETSETCLASS\000"
	.byte	2
	.byte	35
	.uleb128	96
	.byte	3
	.long	.La975-.Ldebug_info0
# Procdef class WSRegisterClass(<Class Of TLCLComponent>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La977-.Ldebug_info0
	.byte	0
# Procdef class GetWSComponentClass(<Class Of TLCLComponent>;TLCLComponent):Class Of TWSLCLComponent;
	.uleb128	26
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
	.long	.La975-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La979-.Ldebug_info0
# Symbol ASELF
	.uleb128	19
	.ascii	"ASELF\000"
	.long	.La411-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TLCLComponent>;<Pointer>;TComponent);
	.uleb128	18
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
	.long	.La411-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La411-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	19
	.ascii	"THEOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TLCLComponent>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La411-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef class NewInstance(<Class Of TLCLComponent>):TObject;
	.uleb128	18
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
	.long	.La20-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La981-.Ldebug_info0
	.byte	0
# Procdef RemoveAllHandlersOfObject(<TLCLComponent>;TObject);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La411-.Ldebug_info0
# Symbol ANOBJECT
	.uleb128	19
	.ascii	"ANOBJECT\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef IncLCLRefCount(<TLCLComponent>);
	.uleb128	20
	.ascii	"INCLCLREFCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La411-.Ldebug_info0
	.byte	0
# Procdef DecLCLRefCount(<TLCLComponent>);
	.uleb128	20
	.ascii	"DECLCLREFCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La411-.Ldebug_info0
	.byte	0
	.byte	0
.La412:
	.uleb128	7
	.long	.La411-.Ldebug_info0
# Definition TControlActionLink
.La414:
	.uleb128	5
	.ascii	"TCONTROLACTIONLINK\000"
	.long	.La983-.Ldebug_info0
.La983:
	.uleb128	8
	.long	.La416-.Ldebug_info0
.La416:
	.uleb128	9
	.ascii	"TCONTROLACTIONLINK\000"
	.uleb128	40
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La986-.Ldebug_info0
	.uleb128	14
	.ascii	"FCLIENT\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	2
	.long	.La106-.Ldebug_info0
# Procdef AssignClient(<TControlActionLink>;TObject);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La414-.Ldebug_info0
# Symbol ACLIENT
	.uleb128	19
	.ascii	"ACLIENT\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef SetCaption(<TControlActionLink>;const AnsiString);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La414-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef SetEnabled(<TControlActionLink>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La414-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetHint(<TControlActionLink>;const AnsiString);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La414-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef SetHelpContext(<TControlActionLink>;THelpContext);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La414-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La448-.Ldebug_info0
	.byte	0
# Procdef SetHelpKeyword(<TControlActionLink>;const AnsiString);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La414-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef SetHelpType(<TControlActionLink>;THelpType);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La414-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La450-.Ldebug_info0
	.byte	0
# Procdef SetVisible(<TControlActionLink>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La414-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetOnExecute(<TControlActionLink>;TNotifyEvent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La414-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La140-.Ldebug_info0
	.byte	0
# Procdef IsOnExecuteLinked(<TControlActionLink>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La414-.Ldebug_info0
	.byte	0
# Procdef DoShowHint(<TControlActionLink>;var AnsiString):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La414-.Ldebug_info0
# Symbol HINTSTR
	.uleb128	19
	.ascii	"HINTSTR\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef IsCaptionLinked(<TControlActionLink>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La414-.Ldebug_info0
	.byte	0
# Procdef IsEnabledLinked(<TControlActionLink>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La414-.Ldebug_info0
	.byte	0
# Procdef IsHelpLinked(<TControlActionLink>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La414-.Ldebug_info0
	.byte	0
# Procdef IsHintLinked(<TControlActionLink>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La414-.Ldebug_info0
	.byte	0
# Procdef IsVisibleLinked(<TControlActionLink>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La414-.Ldebug_info0
	.byte	0
	.byte	0
.La415:
	.uleb128	7
	.long	.La414-.Ldebug_info0
# Definition TAnchors
.La417:
	.uleb128	5
	.ascii	"TANCHORS\000"
	.long	.La987-.Ldebug_info0
.La987:
	.uleb128	35
	.ascii	"TANCHORS\000"
	.byte	7
	.short	4
.La418:
	.uleb128	7
	.long	.La417-.Ldebug_info0
# Definition TControl.Array[TAnchorKind] Of TAnchorSide
.La419:
	.uleb128	38
	.uleb128	32
	.long	.La488-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.sleb128	3
	.uleb128	8
	.long	.La491-.Ldebug_info0
	.byte	0
.La420:
	.uleb128	7
	.long	.La419-.Ldebug_info0
# Definition TBiDiMode
.La421:
	.uleb128	5
	.ascii	"TBIDIMODE\000"
	.long	.La988-.Ldebug_info0
.La988:
	.uleb128	36
	.ascii	"TBIDIMODE\000"
	.byte	4
	.uleb128	37
	.ascii	"BDLEFTTORIGHT\000"
	.long	0
	.uleb128	37
	.ascii	"BDRIGHTTOLEFT\000"
	.long	1
	.uleb128	37
	.ascii	"BDRIGHTTOLEFTNOALIGN\000"
	.long	2
	.uleb128	37
	.ascii	"BDRIGHTTOLEFTREADINGONLY\000"
	.long	3
	.byte	0
.La422:
	.uleb128	7
	.long	.La421-.Ldebug_info0
# Definition TControlBorderSpacing
.La423:
	.uleb128	5
	.ascii	"TCONTROLBORDERSPACING\000"
	.long	.La989-.Ldebug_info0
.La989:
	.uleb128	8
	.long	.La425-.Ldebug_info0
.La425:
	.uleb128	9
	.ascii	"TCONTROLBORDERSPACING\000"
	.uleb128	88
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La223-.Ldebug_info0
	.uleb128	14
	.ascii	"FAROUND\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FBOTTOM\000"
	.byte	2
	.byte	35
	.uleb128	28
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FCELLALIGNHORIZONTAL\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La990-.Ldebug_info0
	.uleb128	14
	.ascii	"FCELLALIGNVERTICAL\000"
	.byte	2
	.byte	35
	.uleb128	36
	.byte	3
	.long	.La990-.Ldebug_info0
	.uleb128	14
	.ascii	"FCONTROL\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"FINNERBORDER\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FLEFT\000"
	.byte	2
	.byte	35
	.uleb128	52
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FRIGHT\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FTOP\000"
	.byte	2
	.byte	35
	.uleb128	76
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FDEFAULT\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La992-.Ldebug_info0
	.uleb128	14
	.ascii	"CONTROL\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"LEFT\000"
	.byte	2
	.byte	35
	.uleb128	52
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"TOP\000"
	.byte	2
	.byte	35
	.uleb128	76
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"RIGHT\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"BOTTOM\000"
	.byte	2
	.byte	35
	.uleb128	28
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"AROUND\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"INNERBORDER\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"CELLALIGNHORIZONTAL\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La990-.Ldebug_info0
	.uleb128	14
	.ascii	"CELLALIGNVERTICAL\000"
	.byte	2
	.byte	35
	.uleb128	36
	.byte	3
	.long	.La990-.Ldebug_info0
# Procdef GetAroundBottom(<TControlBorderSpacing>):LongInt;
	.uleb128	15
	.ascii	"GETAROUNDBOTTOM\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
	.byte	0
# Procdef GetAroundLeft(<TControlBorderSpacing>):LongInt;
	.uleb128	15
	.ascii	"GETAROUNDLEFT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
	.byte	0
# Procdef GetAroundRight(<TControlBorderSpacing>):LongInt;
	.uleb128	15
	.ascii	"GETAROUNDRIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
	.byte	0
# Procdef GetAroundTop(<TControlBorderSpacing>):LongInt;
	.uleb128	15
	.ascii	"GETAROUNDTOP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
	.byte	0
# Procdef GetControlBottom(<TControlBorderSpacing>):LongInt;
	.uleb128	15
	.ascii	"GETCONTROLBOTTOM\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
	.byte	0
# Procdef GetControlHeight(<TControlBorderSpacing>):LongInt;
	.uleb128	15
	.ascii	"GETCONTROLHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
	.byte	0
# Procdef GetControlLeft(<TControlBorderSpacing>):LongInt;
	.uleb128	15
	.ascii	"GETCONTROLLEFT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
	.byte	0
# Procdef GetControlRight(<TControlBorderSpacing>):LongInt;
	.uleb128	15
	.ascii	"GETCONTROLRIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
	.byte	0
# Procdef GetControlTop(<TControlBorderSpacing>):LongInt;
	.uleb128	15
	.ascii	"GETCONTROLTOP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
	.byte	0
# Procdef GetControlWidth(<TControlBorderSpacing>):LongInt;
	.uleb128	15
	.ascii	"GETCONTROLWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
	.byte	0
# Procdef IsAroundStored(<TControlBorderSpacing>):Boolean;
	.uleb128	15
	.ascii	"ISAROUNDSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
	.byte	0
# Procdef IsBottomStored(<TControlBorderSpacing>):Boolean;
	.uleb128	15
	.ascii	"ISBOTTOMSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
	.byte	0
# Procdef IsInnerBorderStored(<TControlBorderSpacing>):Boolean;
	.uleb128	15
	.ascii	"ISINNERBORDERSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
	.byte	0
# Procdef IsLeftStored(<TControlBorderSpacing>):Boolean;
	.uleb128	15
	.ascii	"ISLEFTSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
	.byte	0
# Procdef IsRightStored(<TControlBorderSpacing>):Boolean;
	.uleb128	15
	.ascii	"ISRIGHTSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
	.byte	0
# Procdef IsTopStored(<TControlBorderSpacing>):Boolean;
	.uleb128	15
	.ascii	"ISTOPSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
	.byte	0
# Procdef SetAround(<TControlBorderSpacing>;const LongInt);
	.uleb128	25
	.ascii	"SETAROUND\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetBottom(<TControlBorderSpacing>;const LongInt);
	.uleb128	25
	.ascii	"SETBOTTOM\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetCellAlignHorizontal(<TControlBorderSpacing>;const TControlCellAlign);
	.uleb128	25
	.ascii	"SETCELLALIGNHORIZONTAL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La990-.Ldebug_info0
	.byte	0
# Procdef SetCellAlignVertical(<TControlBorderSpacing>;const TControlCellAlign);
	.uleb128	25
	.ascii	"SETCELLALIGNVERTICAL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La990-.Ldebug_info0
	.byte	0
# Procdef SetInnerBorder(<TControlBorderSpacing>;const LongInt);
	.uleb128	25
	.ascii	"SETINNERBORDER\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetLeft(<TControlBorderSpacing>;const LongInt);
	.uleb128	25
	.ascii	"SETLEFT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetRight(<TControlBorderSpacing>;const LongInt);
	.uleb128	25
	.ascii	"SETRIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetSpace(<TControlBorderSpacing>;TAnchorKind;const LongInt);
	.uleb128	25
	.ascii	"SETSPACE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
# Symbol KIND
	.uleb128	19
	.ascii	"KIND\000"
	.long	.La491-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetTop(<TControlBorderSpacing>;const LongInt);
	.uleb128	25
	.ascii	"SETTOP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Change(<TControlBorderSpacing>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
# Symbol INNERSPACECHANGED
	.uleb128	19
	.ascii	"INNERSPACECHANGED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TControlBorderSpacing>;<Pointer>;TControl;PControlBorderSpacingDefault="nil");
	.uleb128	22
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La423-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol OWNERCONTROL
	.uleb128	19
	.ascii	"OWNERCONTROL\000"
	.long	.La106-.Ldebug_info0
# Symbol ADEFAULT
	.uleb128	19
	.ascii	"ADEFAULT\000"
	.long	.La992-.Ldebug_info0
	.byte	0
# Procdef Assign(<TControlBorderSpacing>;TPersistent);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef AssignTo(<TControlBorderSpacing>;TPersistent);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
# Symbol DEST
	.uleb128	19
	.ascii	"DEST\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef IsEqual(<TControlBorderSpacing>;TControlBorderSpacing):Boolean;
	.uleb128	22
	.ascii	"ISEQUAL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
# Symbol SPACING
	.uleb128	19
	.ascii	"SPACING\000"
	.long	.La423-.Ldebug_info0
	.byte	0
# Procdef GetSpaceAround(<TControlBorderSpacing>;var TRect);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
# Symbol SPACEAROUND
	.uleb128	19
	.ascii	"SPACEAROUND\000"
	.long	.La186-.Ldebug_info0
	.byte	0
# Procdef GetSideSpace(<TControlBorderSpacing>;TAnchorKind):LongInt;
	.uleb128	22
	.ascii	"GETSIDESPACE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
# Symbol KIND
	.uleb128	19
	.ascii	"KIND\000"
	.long	.La491-.Ldebug_info0
	.byte	0
# Procdef GetSpace(<TControlBorderSpacing>;TAnchorKind):LongInt;
	.uleb128	18
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
# Symbol KIND
	.uleb128	19
	.ascii	"KIND\000"
	.long	.La491-.Ldebug_info0
	.byte	0
# Procdef AutoAdjustLayout(<TControlBorderSpacing>;const Double;const Double);
	.uleb128	20
	.ascii	"AUTOADJUSTLAYOUT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La423-.Ldebug_info0
# Symbol AXPROPORTION
	.uleb128	19
	.ascii	"AXPROPORTION\000"
	.long	.La325-.Ldebug_info0
# Symbol AYPROPORTION
	.uleb128	19
	.ascii	"AYPROPORTION\000"
	.long	.La325-.Ldebug_info0
	.byte	0
	.byte	0
.La424:
	.uleb128	7
	.long	.La423-.Ldebug_info0
# Definition TCaptureMouseButtons
.La426:
	.uleb128	5
	.ascii	"TCAPTUREMOUSEBUTTONS\000"
	.long	.La994-.Ldebug_info0
.La994:
	.uleb128	35
	.ascii	"TCAPTUREMOUSEBUTTONS\000"
	.byte	7
	.short	4
.La427:
	.uleb128	7
	.long	.La426-.Ldebug_info0
# Definition TSizeConstraints
.La428:
	.uleb128	5
	.ascii	"TSIZECONSTRAINTS\000"
	.long	.La995-.Ldebug_info0
.La995:
	.uleb128	8
	.long	.La430-.Ldebug_info0
.La430:
	.uleb128	9
	.ascii	"TSIZECONSTRAINTS\000"
	.uleb128	88
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La223-.Ldebug_info0
	.uleb128	14
	.ascii	"FCONTROL\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"FMAXHEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La501-.Ldebug_info0
	.uleb128	14
	.ascii	"FMAXINTERFACEHEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	36
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FMAXINTERFACEWIDTH\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FMAXWIDTH\000"
	.byte	2
	.byte	35
	.uleb128	44
	.byte	3
	.long	.La501-.Ldebug_info0
	.uleb128	14
	.ascii	"FMINHEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La501-.Ldebug_info0
	.uleb128	14
	.ascii	"FMININTERFACEHEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	52
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FMININTERFACEWIDTH\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FMINWIDTH\000"
	.byte	2
	.byte	35
	.uleb128	60
	.byte	3
	.long	.La501-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FOPTIONS\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La996-.Ldebug_info0
	.uleb128	14
	.ascii	"MAXINTERFACEHEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	36
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"MAXINTERFACEWIDTH\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"MININTERFACEHEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	52
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"MININTERFACEWIDTH\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"CONTROL\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"OPTIONS\000"
	.byte	2
	.byte	35
	.uleb128	80
	.byte	3
	.long	.La996-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"MAXHEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La501-.Ldebug_info0
	.uleb128	14
	.ascii	"MAXWIDTH\000"
	.byte	2
	.byte	35
	.uleb128	44
	.byte	3
	.long	.La501-.Ldebug_info0
	.uleb128	14
	.ascii	"MINHEIGHT\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La501-.Ldebug_info0
	.uleb128	14
	.ascii	"MINWIDTH\000"
	.byte	2
	.byte	35
	.uleb128	60
	.byte	3
	.long	.La501-.Ldebug_info0
# Procdef SetOptions(<TSizeConstraints>;const TSizeConstraintsOptions);
	.uleb128	25
	.ascii	"SETOPTIONS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La428-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La996-.Ldebug_info0
	.byte	0
# Procdef Change(<TSizeConstraints>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La428-.Ldebug_info0
	.byte	0
# Procdef AssignTo(<TSizeConstraints>;TPersistent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La428-.Ldebug_info0
# Symbol DEST
	.uleb128	19
	.ascii	"DEST\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef SetMaxHeight(<TSizeConstraints>;TConstraintSize);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La428-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La501-.Ldebug_info0
	.byte	0
# Procdef SetMaxWidth(<TSizeConstraints>;TConstraintSize);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La428-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La501-.Ldebug_info0
	.byte	0
# Procdef SetMinHeight(<TSizeConstraints>;TConstraintSize);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La428-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La501-.Ldebug_info0
	.byte	0
# Procdef SetMinWidth(<TSizeConstraints>;TConstraintSize);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La428-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La501-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TSizeConstraints>;<Pointer>;TControl);
	.uleb128	18
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
	.long	.La428-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La428-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol ACONTROL
	.uleb128	19
	.ascii	"ACONTROL\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef UpdateInterfaceConstraints(<TSizeConstraints>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La428-.Ldebug_info0
	.byte	0
# Procdef SetInterfaceConstraints(<TSizeConstraints>;LongInt;LongInt;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La428-.Ldebug_info0
# Symbol MINW
	.uleb128	19
	.ascii	"MINW\000"
	.long	.La120-.Ldebug_info0
# Symbol MINH
	.uleb128	19
	.ascii	"MINH\000"
	.long	.La120-.Ldebug_info0
# Symbol MAXW
	.uleb128	19
	.ascii	"MAXW\000"
	.long	.La120-.Ldebug_info0
# Symbol MAXH
	.uleb128	19
	.ascii	"MAXH\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef EffectiveMinWidth(<TSizeConstraints>):LongInt;
	.uleb128	18
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La428-.Ldebug_info0
	.byte	0
# Procdef EffectiveMinHeight(<TSizeConstraints>):LongInt;
	.uleb128	18
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La428-.Ldebug_info0
	.byte	0
# Procdef EffectiveMaxWidth(<TSizeConstraints>):LongInt;
	.uleb128	18
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La428-.Ldebug_info0
	.byte	0
# Procdef EffectiveMaxHeight(<TSizeConstraints>):LongInt;
	.uleb128	18
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La428-.Ldebug_info0
	.byte	0
# Procdef MinMaxWidth(<TSizeConstraints>;LongInt):LongInt;
	.uleb128	22
	.ascii	"MINMAXWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La428-.Ldebug_info0
# Symbol WIDTH
	.uleb128	19
	.ascii	"WIDTH\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef MinMaxHeight(<TSizeConstraints>;LongInt):LongInt;
	.uleb128	22
	.ascii	"MINMAXHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La428-.Ldebug_info0
# Symbol HEIGHT
	.uleb128	19
	.ascii	"HEIGHT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef AutoAdjustLayout(<TSizeConstraints>;const Double;const Double);
	.uleb128	20
	.ascii	"AUTOADJUSTLAYOUT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La428-.Ldebug_info0
# Symbol AXPROPORTION
	.uleb128	19
	.ascii	"AXPROPORTION\000"
	.long	.La325-.Ldebug_info0
# Symbol AYPROPORTION
	.uleb128	19
	.ascii	"AYPROPORTION\000"
	.long	.La325-.Ldebug_info0
	.byte	0
	.byte	0
.La429:
	.uleb128	7
	.long	.La428-.Ldebug_info0
# Definition TControlFlags
.La431:
	.uleb128	5
	.ascii	"TCONTROLFLAGS\000"
	.long	.La998-.Ldebug_info0
.La998:
	.uleb128	35
	.ascii	"TCONTROLFLAGS\000"
	.byte	7
	.short	4
.La432:
	.uleb128	7
	.long	.La431-.Ldebug_info0
# Definition TControl.Array[TControlHandlerType] Of TMethodList
.La433:
	.uleb128	38
	.uleb128	72
	.long	.La528-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.sleb128	8
	.uleb128	8
	.long	.La514-.Ldebug_info0
	.byte	0
.La434:
	.uleb128	7
	.long	.La433-.Ldebug_info0
# Definition TControlStyle
.La435:
	.uleb128	5
	.ascii	"TCONTROLSTYLE\000"
	.long	.La999-.Ldebug_info0
.La999:
	.uleb128	35
	.ascii	"TCONTROLSTYLE\000"
	.byte	7
	.short	4
.La436:
	.uleb128	7
	.long	.La435-.Ldebug_info0
# Definition TDockOrientation
.La437:
	.uleb128	5
	.ascii	"TDOCKORIENTATION\000"
	.long	.La1000-.Ldebug_info0
.La1000:
	.uleb128	36
	.ascii	"TDOCKORIENTATION\000"
	.byte	4
	.uleb128	37
	.ascii	"DONOORIENT\000"
	.long	0
	.uleb128	37
	.ascii	"DOHORIZONTAL\000"
	.long	1
	.uleb128	37
	.ascii	"DOVERTICAL\000"
	.long	2
	.uleb128	37
	.ascii	"DOPAGES\000"
	.long	3
	.byte	0
.La438:
	.uleb128	7
	.long	.La437-.Ldebug_info0
# Definition TDragKind
.La439:
	.uleb128	5
	.ascii	"TDRAGKIND\000"
	.long	.La1001-.Ldebug_info0
.La1001:
	.uleb128	36
	.ascii	"TDRAGKIND\000"
	.byte	4
	.uleb128	37
	.ascii	"DKDRAG\000"
	.long	0
	.uleb128	37
	.ascii	"DKDOCK\000"
	.long	1
	.byte	0
.La440:
	.uleb128	7
	.long	.La439-.Ldebug_info0
# Definition TDragMode
.La441:
	.uleb128	5
	.ascii	"TDRAGMODE\000"
	.long	.La1002-.Ldebug_info0
.La1002:
	.uleb128	36
	.ascii	"TDRAGMODE\000"
	.byte	4
	.uleb128	37
	.ascii	"DMMANUAL\000"
	.long	0
	.uleb128	37
	.ascii	"DMAUTOMATIC\000"
	.long	1
	.byte	0
.La442:
	.uleb128	7
	.long	.La441-.Ldebug_info0
# Definition TWinControlClass
.La443:
	.uleb128	5
	.ascii	"TWINCONTROLCLASS\000"
	.long	.La1003-.Ldebug_info0
.La1003:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La444:
	.uleb128	7
	.long	.La443-.Ldebug_info0
# Definition TFont
.La445:
	.uleb128	5
	.ascii	"TFONT\000"
	.long	.La1004-.Ldebug_info0
.La1004:
	.uleb128	8
	.long	.La447-.Ldebug_info0
.La447:
	.uleb128	9
	.ascii	"TFONT\000"
	.uleb128	160
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La928-.Ldebug_info0
	.uleb128	14
	.ascii	"FCANUTF8\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FCANUTF8VALID\000"
	.byte	2
	.byte	35
	.uleb128	105
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FISMONOSPACE\000"
	.byte	2
	.byte	35
	.uleb128	106
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FISMONOSPACEVALID\000"
	.byte	2
	.byte	35
	.uleb128	107
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FORIENTATION\000"
	.byte	2
	.byte	35
	.uleb128	108
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FPITCH\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La1005-.Ldebug_info0
	.uleb128	14
	.ascii	"FQUALITY\000"
	.byte	2
	.byte	35
	.uleb128	116
	.byte	3
	.long	.La1007-.Ldebug_info0
	.uleb128	14
	.ascii	"FSTYLE\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La1009-.Ldebug_info0
	.uleb128	14
	.ascii	"FCHARSET\000"
	.byte	2
	.byte	35
	.uleb128	124
	.byte	3
	.long	.La1011-.Ldebug_info0
	.uleb128	14
	.ascii	"FPIXELSPERINCH\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FUPDATECOUNT\000"
	.byte	3
	.byte	35
	.uleb128	132
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FCHANGED\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FFONTHANDLECACHED\000"
	.byte	3
	.byte	35
	.uleb128	137
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FCOLOR\000"
	.byte	3
	.byte	35
	.uleb128	140
	.byte	3
	.long	.La391-.Ldebug_info0
	.uleb128	14
	.ascii	"FHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	144
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FREFERENCE\000"
	.byte	3
	.byte	35
	.uleb128	152
	.byte	3
	.long	.La1013-.Ldebug_info0
	.uleb128	14
	.ascii	"PIXELSPERINCH\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"COLOR\000"
	.byte	3
	.byte	35
	.uleb128	140
	.byte	3
	.long	.La391-.Ldebug_info0
	.uleb128	14
	.ascii	"QUALITY\000"
	.byte	2
	.byte	35
	.uleb128	116
	.byte	3
	.long	.La1007-.Ldebug_info0
# Procdef FreeReference(<TFont>);
	.uleb128	25
	.ascii	"FREEREFERENCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef GetCanUTF8(<TFont>):Boolean;
	.uleb128	15
	.ascii	"GETCANUTF8\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef GetHandle(<TFont>):QWord;
	.uleb128	15
	.ascii	"GETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef GetData(<TFont>;<var TFontData>):<record type>;
	.uleb128	15
	.ascii	"GETDATA\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La1015-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La1015-.Ldebug_info0
	.byte	0
# Procdef GetIsMonoSpace(<TFont>):Boolean;
	.uleb128	15
	.ascii	"GETISMONOSPACE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef GetReference(<TFont>;<var TWSFontReference>):TWSFontReference;
	.uleb128	15
	.ascii	"GETREFERENCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La1013-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La1013-.Ldebug_info0
	.byte	0
# Procdef IsHeightStored(<TFont>):Boolean;
	.uleb128	15
	.ascii	"ISHEIGHTSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef IsNameStored(<TFont>):Boolean;
	.uleb128	15
	.ascii	"ISNAMESTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef SetData(<TFont>;const TFontData);
	.uleb128	25
	.ascii	"SETDATA\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol FONTDATA
	.uleb128	19
	.ascii	"FONTDATA\000"
	.long	.La1015-.Ldebug_info0
	.byte	0
# Procdef SetHandle(<TFont>;const QWord);
	.uleb128	25
	.ascii	"SETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef ReferenceNeeded(<TFont>);
	.uleb128	25
	.ascii	"REFERENCENEEDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef SetPixelsPerInch(<TFont>;const LongInt);
	.uleb128	25
	.ascii	"SETPIXELSPERINCH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol APIXELSPERINCH
	.uleb128	19
	.ascii	"APIXELSPERINCH\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetCharSet(<TFont>):Byte;
	.uleb128	15
	.ascii	"GETCHARSET\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La1011-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef GetHeight(<TFont>):LongInt;
	.uleb128	15
	.ascii	"GETHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef GetName(<TFont>;<var AnsiString>):AnsiString;
	.uleb128	15
	.ascii	"GETNAME\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef GetOrientation(<TFont>):LongInt;
	.uleb128	15
	.ascii	"GETORIENTATION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef GetPitch(<TFont>):<enumeration type>;
	.uleb128	15
	.ascii	"GETPITCH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La1005-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef GetSize(<TFont>):LongInt;
	.uleb128	15
	.ascii	"GETSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef GetStyle(<TFont>):Set Of TFontStyle;
	.uleb128	15
	.ascii	"GETSTYLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La779-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef Changed(<TFont>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef DoAllocateResources(<TFont>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef DoCopyProps(<TFont>;TFPCanvasHelper);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol FROM
	.uleb128	19
	.ascii	"FROM\000"
	.long	.La858-.Ldebug_info0
	.byte	0
# Procdef DoDeAllocateResources(<TFont>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef SetCharSet(<TFont>;const TFontCharSet);
	.uleb128	25
	.ascii	"SETCHARSET\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La1011-.Ldebug_info0
	.byte	0
# Procdef SetColor(<TFont>;const TGraphicsColor;const TFPColor);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol NEWCOLOR
	.uleb128	19
	.ascii	"NEWCOLOR\000"
	.long	.La391-.Ldebug_info0
# Symbol NEWFPCOLOR
	.uleb128	19
	.ascii	"NEWFPCOLOR\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef SetColor(<TFont>;TGraphicsColor);
	.uleb128	25
	.ascii	"SETCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La391-.Ldebug_info0
	.byte	0
# Procdef GetColor(<TFont>):LongInt;
	.uleb128	15
	.ascii	"GETCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La391-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef SetFlags(<TFont>;LongInt;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetFPColor(<TFont>;const TFPColor);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef SetHeight(<TFont>;LongInt);
	.uleb128	25
	.ascii	"SETHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetName(<TFont>;AnsiString);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef SetOrientation(<TFont>;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetPitch(<TFont>;TFontPitch);
	.uleb128	25
	.ascii	"SETPITCH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La1005-.Ldebug_info0
	.byte	0
# Procdef SetSize(<TFont>;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetStyle(<TFont>;TFontStyles);
	.uleb128	25
	.ascii	"SETSTYLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La779-.Ldebug_info0
	.byte	0
# Procdef SetQuality(<TFont>;const TFontQuality);
	.uleb128	25
	.ascii	"SETQUALITY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La1007-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TFont>;<Pointer>);
	.uleb128	18
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
	.long	.La445-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TFont>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Assign(<TFont>;TPersistent);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef Assign(<TFont>;const LOGFONTA);
	.uleb128	20
	.ascii	"ASSIGN\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol ALOGFONT
	.uleb128	19
	.ascii	"ALOGFONT\000"
	.long	.La1017-.Ldebug_info0
	.byte	0
# Procdef BeginUpdate(<TFont>);
	.uleb128	20
	.ascii	"BEGINUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef EndUpdate(<TFont>);
	.uleb128	20
	.ascii	"ENDUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef HandleAllocated(<TFont>):Boolean;
	.uleb128	22
	.ascii	"HANDLEALLOCATED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef IsDefault(<TFont>):Boolean;
	.uleb128	22
	.ascii	"ISDEFAULT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef IsEqual(<TFont>;TFont):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
# Symbol AFONT
	.uleb128	19
	.ascii	"AFONT\000"
	.long	.La445-.Ldebug_info0
	.byte	0
# Procdef SetDefault(<TFont>);
	.uleb128	20
	.ascii	"SETDEFAULT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La445-.Ldebug_info0
	.byte	0
	.byte	0
.La446:
	.uleb128	7
	.long	.La445-.Ldebug_info0
# Definition THelpContext
.La448:
	.uleb128	5
	.ascii	"THELPCONTEXT\000"
	.long	.La1019-.Ldebug_info0
.La1019:
	.uleb128	50
	.ascii	"THELPCONTEXT\000"
	.sleb128	-2147483647
	.sleb128	2147483647
	.long	.La120-.Ldebug_info0
.La449:
	.uleb128	7
	.long	.La448-.Ldebug_info0
# Definition THelpType
.La450:
	.uleb128	5
	.ascii	"THELPTYPE\000"
	.long	.La1020-.Ldebug_info0
.La1020:
	.uleb128	36
	.ascii	"THELPTYPE\000"
	.byte	4
	.uleb128	37
	.ascii	"HTKEYWORD\000"
	.long	0
	.uleb128	37
	.ascii	"HTCONTEXT\000"
	.long	1
	.byte	0
.La451:
	.uleb128	7
	.long	.La450-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;var TConstraintSize;var TConstraintSize;var TConstraintSize;var TConstraintSize) of object;Register>
.La452:
	.uleb128	5
	.ascii	"TCONSTRAINEDRESIZEEVENT\000"
	.long	.La1021-.Ldebug_info0
.La1021:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1022-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La1022:
	.uleb128	41
	.ascii	"TCONSTRAINEDRESIZEEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"MINWIDTH\000"
	.long	.La501-.Ldebug_info0
	.uleb128	19
	.ascii	"MINHEIGHT\000"
	.long	.La501-.Ldebug_info0
	.uleb128	19
	.ascii	"MAXWIDTH\000"
	.long	.La501-.Ldebug_info0
	.uleb128	19
	.ascii	"MAXHEIGHT\000"
	.long	.La501-.Ldebug_info0
	.byte	0
.La453:
	.uleb128	7
	.long	.La452-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TPoint;var Boolean) of object;Register>
.La454:
	.uleb128	5
	.ascii	"TCONTEXTPOPUPEVENT\000"
	.long	.La1023-.Ldebug_info0
.La1023:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1024-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La1024:
	.uleb128	41
	.ascii	"TCONTEXTPOPUPEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"MOUSEPOS\000"
	.long	.La284-.Ldebug_info0
	.uleb128	19
	.ascii	"HANDLED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
.La455:
	.uleb128	7
	.long	.La454-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TObject;LongInt;LongInt) of object;Register>
.La456:
	.uleb128	5
	.ascii	"TDRAGDROPEVENT\000"
	.long	.La1025-.Ldebug_info0
.La1025:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1026-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La1026:
	.uleb128	41
	.ascii	"TDRAGDROPEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
.La457:
	.uleb128	7
	.long	.La456-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TObject;LongInt;LongInt;TDragState;var Boolean) of object;Register>
.La458:
	.uleb128	5
	.ascii	"TDRAGOVEREVENT\000"
	.long	.La1027-.Ldebug_info0
.La1027:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1028-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La1028:
	.uleb128	41
	.ascii	"TDRAGOVEREVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.uleb128	19
	.ascii	"STATE\000"
	.long	.La389-.Ldebug_info0
	.uleb128	19
	.ascii	"ACCEPT\000"
	.long	.La29-.Ldebug_info0
	.byte	0
.La459:
	.uleb128	7
	.long	.La458-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TObject;LongInt;LongInt) of object;Register>
.La460:
	.uleb128	5
	.ascii	"TENDDRAGEVENT\000"
	.long	.La1029-.Ldebug_info0
.La1029:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1030-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La1030:
	.uleb128	41
	.ascii	"TENDDRAGEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"TARGET\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
.La461:
	.uleb128	7
	.long	.La460-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TMouseButton;TShiftState;LongInt;LongInt) of object;Register>
.La462:
	.uleb128	5
	.ascii	"TMOUSEEVENT\000"
	.long	.La1031-.Ldebug_info0
.La1031:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1032-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La1032:
	.uleb128	41
	.ascii	"TMOUSEEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"BUTTON\000"
	.long	.La495-.Ldebug_info0
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
.La463:
	.uleb128	7
	.long	.La462-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TShiftState;LongInt;LongInt) of object;Register>
.La464:
	.uleb128	5
	.ascii	"TMOUSEMOVEEVENT\000"
	.long	.La1033-.Ldebug_info0
.La1033:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1034-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La1034:
	.uleb128	41
	.ascii	"TMOUSEMOVEEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
.La465:
	.uleb128	7
	.long	.La464-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TShiftState;LongInt;TPoint;var Boolean) of object;Register>
.La466:
	.uleb128	5
	.ascii	"TMOUSEWHEELEVENT\000"
	.long	.La1035-.Ldebug_info0
.La1035:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1036-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La1036:
	.uleb128	41
	.ascii	"TMOUSEWHEELEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
	.uleb128	19
	.ascii	"WHEELDELTA\000"
	.long	.La120-.Ldebug_info0
	.uleb128	19
	.ascii	"MOUSEPOS\000"
	.long	.La284-.Ldebug_info0
	.uleb128	19
	.ascii	"HANDLED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
.La467:
	.uleb128	7
	.long	.La466-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;TShiftState;TPoint;var Boolean) of object;Register>
.La468:
	.uleb128	5
	.ascii	"TMOUSEWHEELUPDOWNEVENT\000"
	.long	.La1037-.Ldebug_info0
.La1037:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1038-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La1038:
	.uleb128	41
	.ascii	"TMOUSEWHEELUPDOWNEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"SHIFT\000"
	.long	.La264-.Ldebug_info0
	.uleb128	19
	.ascii	"MOUSEPOS\000"
	.long	.La284-.Ldebug_info0
	.uleb128	19
	.ascii	"HANDLED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
.La469:
	.uleb128	7
	.long	.La468-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;PHintInfo) of object;Register>
.La470:
	.uleb128	5
	.ascii	"TCONTROLSHOWHINTEVENT\000"
	.long	.La1039-.Ldebug_info0
.La1039:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1040-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La1040:
	.uleb128	41
	.ascii	"TCONTROLSHOWHINTEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"HINTINFO\000"
	.long	.La512-.Ldebug_info0
	.byte	0
.La471:
	.uleb128	7
	.long	.La470-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;var TDragDockObject) of object;Register>
.La472:
	.uleb128	5
	.ascii	"TSTARTDOCKEVENT\000"
	.long	.La1041-.Ldebug_info0
.La1041:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1042-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La1042:
	.uleb128	41
	.ascii	"TSTARTDOCKEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"DRAGOBJECT\000"
	.long	.La386-.Ldebug_info0
	.byte	0
.La473:
	.uleb128	7
	.long	.La472-.Ldebug_info0
# Definition <procedure variable type of procedure(TObject;var TDragObject) of object;Register>
.La474:
	.uleb128	5
	.ascii	"TSTARTDRAGEVENT\000"
	.long	.La1043-.Ldebug_info0
.La1043:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1044-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La1044:
	.uleb128	41
	.ascii	"TSTARTDRAGEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.uleb128	19
	.ascii	"DRAGOBJECT\000"
	.long	.La383-.Ldebug_info0
	.byte	0
.La475:
	.uleb128	7
	.long	.La474-.Ldebug_info0
# Definition TPopupMenu
.La476:
	.uleb128	5
	.ascii	"TPOPUPMENU\000"
	.long	.La1045-.Ldebug_info0
.La1045:
	.uleb128	8
	.long	.La478-.Ldebug_info0
.La478:
	.uleb128	9
	.ascii	"TPOPUPMENU\000"
	.uleb128	280
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La546-.Ldebug_info0
	.uleb128	14
	.ascii	"FALIGNMENT\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La1046-.Ldebug_info0
	.uleb128	14
	.ascii	"FAUTOPOPUP\000"
	.byte	3
	.byte	35
	.uleb128	220
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCLOSE\000"
	.byte	3
	.byte	35
	.uleb128	224
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONPOPUP\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FPOPUPCOMPONENT\000"
	.byte	3
	.byte	35
	.uleb128	256
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"FPOPUPPOINT\000"
	.byte	3
	.byte	35
	.uleb128	264
	.byte	3
	.long	.La284-.Ldebug_info0
	.uleb128	14
	.ascii	"FTRACKBUTTON\000"
	.byte	3
	.byte	35
	.uleb128	272
	.byte	3
	.long	.La1048-.Ldebug_info0
	.uleb128	14
	.ascii	"POPUPCOMPONENT\000"
	.byte	3
	.byte	35
	.uleb128	256
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"POPUPPOINT\000"
	.byte	3
	.byte	35
	.uleb128	264
	.byte	3
	.long	.La284-.Ldebug_info0
	.uleb128	14
	.ascii	"ALIGNMENT\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La1046-.Ldebug_info0
	.uleb128	14
	.ascii	"AUTOPOPUP\000"
	.byte	3
	.byte	35
	.uleb128	220
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"TRACKBUTTON\000"
	.byte	3
	.byte	35
	.uleb128	272
	.byte	3
	.long	.La1048-.Ldebug_info0
	.uleb128	14
	.ascii	"ONPOPUP\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCLOSE\000"
	.byte	3
	.byte	35
	.uleb128	224
	.byte	3
	.long	.La140-.Ldebug_info0
# Procdef GetHelpContext(<TPopupMenu>):LongInt;
	.uleb128	15
	.ascii	"GETHELPCONTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La448-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La476-.Ldebug_info0
	.byte	0
# Procdef SetHelpContext(<TPopupMenu>;const THelpContext);
	.uleb128	25
	.ascii	"SETHELPCONTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La476-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La448-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TPopupMenu>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La1050-.Ldebug_info0
	.byte	0
# Procdef DoPopup(<TPopupMenu>;TObject);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La476-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef DoClose(<TPopupMenu>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La476-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TPopupMenu>;<Pointer>;TComponent);
	.uleb128	18
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
	.long	.La476-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La476-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol AOWNER
	.uleb128	19
	.ascii	"AOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TPopupMenu>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La476-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef PopUp(<TPopupMenu>);
	.uleb128	20
	.ascii	"POPUP\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La476-.Ldebug_info0
	.byte	0
# Procdef PopUp(<TPopupMenu>;LongInt;LongInt);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La476-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Close(<TPopupMenu>);
	.uleb128	20
	.ascii	"CLOSE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La476-.Ldebug_info0
	.byte	0
	.byte	0
.La477:
	.uleb128	7
	.long	.La476-.Ldebug_info0
# Definition <procedure variable type of procedure(var TMessage) of object;Register>
.La479:
	.uleb128	5
	.ascii	"TWNDMETHOD\000"
	.long	.La1052-.Ldebug_info0
.La1052:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1053-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La1053:
	.uleb128	41
	.ascii	"TWNDMETHOD\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"THEMESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
.La480:
	.uleb128	7
	.long	.La479-.Ldebug_info0
# Definition TLazAccessibleObject
.La481:
	.uleb128	5
	.ascii	"TLAZACCESSIBLEOBJECT\000"
	.long	.La1054-.Ldebug_info0
.La1054:
	.uleb128	8
	.long	.La483-.Ldebug_info0
.La483:
	.uleb128	9
	.ascii	"TLAZACCESSIBLEOBJECT\000"
	.uleb128	112
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La22-.Ldebug_info0
	.uleb128	14
	.ascii	"FHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La71-.Ldebug_info0
	.uleb128	14
	.ascii	"FPOSITION\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La284-.Ldebug_info0
	.uleb128	14
	.ascii	"FSIZE\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La200-.Ldebug_info0
	.uleb128	14
	.ascii	"FLASTSEARCHNODE\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La1055-.Ldebug_info0
	.uleb128	14
	.ascii	"FLASTSEARCHINDEX\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FLASTSEARCHINSUBCONTROLS\000"
	.byte	2
	.byte	35
	.uleb128	44
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FCHILDRENSORTEDFORDATAOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	2
	.long	.La1058-.Ldebug_info0
	.uleb128	14
	.ascii	"FACCESSIBLEDESCRIPTION\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	2
	.long	.La282-.Ldebug_info0
	.uleb128	14
	.ascii	"FACCESSIBLEVALUE\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	2
	.long	.La282-.Ldebug_info0
	.uleb128	14
	.ascii	"FACCESSIBLEROLE\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	2
	.long	.La486-.Ldebug_info0
	.uleb128	11
	.ascii	"OWNERCONTROL\000"
	.byte	2
	.byte	35
	.uleb128	80
	.long	.La106-.Ldebug_info0
	.uleb128	11
	.ascii	"PARENT\000"
	.byte	2
	.byte	35
	.uleb128	88
	.long	.La481-.Ldebug_info0
	.uleb128	11
	.ascii	"DATAOBJECT\000"
	.byte	2
	.byte	35
	.uleb128	96
	.long	.La20-.Ldebug_info0
	.uleb128	11
	.ascii	"SECONDARYHANDLE\000"
	.byte	2
	.byte	35
	.uleb128	104
	.long	.La71-.Ldebug_info0
	.uleb128	14
	.ascii	"ACCESSIBLEDESCRIPTION\000"
	.byte	2
	.byte	35
	.uleb128	56
	.byte	2
	.long	.La282-.Ldebug_info0
	.uleb128	14
	.ascii	"ACCESSIBLEROLE\000"
	.byte	2
	.byte	35
	.uleb128	72
	.byte	2
	.long	.La486-.Ldebug_info0
# Procdef GetHandle(<TLazAccessibleObject>):Int64;
	.uleb128	15
	.ascii	"GETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La71-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
	.byte	0
# Procdef GetPosition(<TLazAccessibleObject>):<record type>;
	.uleb128	15
	.ascii	"GETPOSITION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
	.byte	0
# Procdef GetSize(<TLazAccessibleObject>):<record type>;
	.uleb128	15
	.ascii	"GETSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La200-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
	.byte	0
# Procdef SetHandle(<TLazAccessibleObject>;Int64);
	.uleb128	25
	.ascii	"SETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La71-.Ldebug_info0
	.byte	0
# Procdef SetPosition(<TLazAccessibleObject>;TPoint);
	.uleb128	25
	.ascii	"SETPOSITION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef SetSize(<TLazAccessibleObject>;TSize);
	.uleb128	25
	.ascii	"SETSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La200-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TLazAccessibleObject>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La1061-.Ldebug_info0
	.byte	0
# Procdef GetAccessibleValue(<TLazAccessibleObject>;<var TTranslateString>):AnsiString;
	.uleb128	26
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
	.long	.La282-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TLazAccessibleObject>;<Pointer>;TControl);
	.uleb128	18
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
	.long	.La481-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol AOWNER
	.uleb128	19
	.ascii	"AOWNER\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TLazAccessibleObject>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef HandleAllocated(<TLazAccessibleObject>):Boolean;
	.uleb128	22
	.ascii	"HANDLEALLOCATED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
	.byte	0
# Procdef InitializeHandle(<TLazAccessibleObject>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
	.byte	0
# Procdef SetAccessibleDescription(<TLazAccessibleObject>;const TTranslateString);
	.uleb128	20
	.ascii	"SETACCESSIBLEDESCRIPTION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
# Symbol ADESCRIPTION
	.uleb128	19
	.ascii	"ADESCRIPTION\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef SetAccessibleValue(<TLazAccessibleObject>;const TTranslateString);
	.uleb128	20
	.ascii	"SETACCESSIBLEVALUE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef SetAccessibleRole(<TLazAccessibleObject>;const TLazAccessibilityRole);
	.uleb128	20
	.ascii	"SETACCESSIBLEROLE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
# Symbol AROLE
	.uleb128	19
	.ascii	"AROLE\000"
	.long	.La486-.Ldebug_info0
	.byte	0
# Procdef FindOwnerWinControl(<TLazAccessibleObject>):TWinControl;
	.uleb128	22
	.ascii	"FINDOWNERWINCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La103-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
	.byte	0
# Procdef AddChildAccessibleObject(<TLazAccessibleObject>):TLazAccessibleObject;
	.uleb128	18
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
	.long	.La481-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
	.byte	0
# Procdef InsertChildAccessibleObject(<TLazAccessibleObject>;TLazAccessibleObject);
	.uleb128	20
	.ascii	"INSERTCHILDACCESSIBLEOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
# Symbol AOBJECT
	.uleb128	19
	.ascii	"AOBJECT\000"
	.long	.La481-.Ldebug_info0
	.byte	0
# Procdef ClearChildAccessibleObjects(<TLazAccessibleObject>);
	.uleb128	20
	.ascii	"CLEARCHILDACCESSIBLEOBJECTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
	.byte	0
# Procdef RemoveChildAccessibleObject(<TLazAccessibleObject>;TLazAccessibleObject;Boolean="TRUE");
	.uleb128	20
	.ascii	"REMOVECHILDACCESSIBLEOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
# Symbol AOBJECT
	.uleb128	19
	.ascii	"AOBJECT\000"
	.long	.La481-.Ldebug_info0
# Symbol AFREEOBJECT
	.uleb128	19
	.ascii	"AFREEOBJECT\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef GetChildAccessibleObjectWithDataObject(<TLazAccessibleObject>;TObject):TLazAccessibleObject;
	.uleb128	22
	.ascii	"GETCHILDACCESSIBLEOBJECTWITHDATAOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La481-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
# Symbol ADATAOBJECT
	.uleb128	19
	.ascii	"ADATAOBJECT\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef GetChildAccessibleObjectsCount(<TLazAccessibleObject>):LongInt;
	.uleb128	22
	.ascii	"GETCHILDACCESSIBLEOBJECTSCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
	.byte	0
# Procdef GetChildAccessibleObject(<TLazAccessibleObject>;LongInt):TLazAccessibleObject;
	.uleb128	22
	.ascii	"GETCHILDACCESSIBLEOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La481-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetFirstChildAccessibleObject(<TLazAccessibleObject>):TLazAccessibleObject;
	.uleb128	22
	.ascii	"GETFIRSTCHILDACCESSIBLEOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La481-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
	.byte	0
# Procdef GetNextChildAccessibleObject(<TLazAccessibleObject>):TLazAccessibleObject;
	.uleb128	22
	.ascii	"GETNEXTCHILDACCESSIBLEOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La481-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
	.byte	0
# Procdef GetSelectedChildAccessibleObject(<TLazAccessibleObject>):TLazAccessibleObject;
	.uleb128	18
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
	.long	.La481-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
	.byte	0
# Procdef GetChildAccessibleObjectAtPos(<TLazAccessibleObject>;TPoint):TLazAccessibleObject;
	.uleb128	18
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
	.long	.La481-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
# Symbol APOS
	.uleb128	19
	.ascii	"APOS\000"
	.long	.La284-.Ldebug_info0
	.byte	0
# Procdef GetEnumerator(<TLazAccessibleObject>):TLazAccessibleObjectEnumerator;
	.uleb128	22
	.ascii	"GETENUMERATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La1063-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La481-.Ldebug_info0
	.byte	0
	.byte	0
.La482:
	.uleb128	7
	.long	.La481-.Ldebug_info0
# Definition TControlState
.La484:
	.uleb128	5
	.ascii	"TCONTROLSTATE\000"
	.long	.La1066-.Ldebug_info0
.La1066:
	.uleb128	35
	.ascii	"TCONTROLSTATE\000"
	.byte	7
	.short	4
.La485:
	.uleb128	7
	.long	.La484-.Ldebug_info0
# Definition TLazAccessibilityRole
.La486:
	.uleb128	5
	.ascii	"TLAZACCESSIBILITYROLE\000"
	.long	.La1067-.Ldebug_info0
.La1067:
	.uleb128	36
	.ascii	"TLAZACCESSIBILITYROLE\000"
	.byte	4
	.uleb128	37
	.ascii	"LARANIMATION\000"
	.long	0
	.uleb128	37
	.ascii	"LARBUTTON\000"
	.long	1
	.uleb128	37
	.ascii	"LARCELL\000"
	.long	2
	.uleb128	37
	.ascii	"LARCHART\000"
	.long	3
	.uleb128	37
	.ascii	"LARCHECKBOX\000"
	.long	4
	.uleb128	37
	.ascii	"LARCLOCK\000"
	.long	5
	.uleb128	37
	.ascii	"LARCOLORPICKER\000"
	.long	6
	.uleb128	37
	.ascii	"LARCOMBOBOX\000"
	.long	7
	.uleb128	37
	.ascii	"LARDATEFIELD\000"
	.long	8
	.uleb128	37
	.ascii	"LARGRID\000"
	.long	9
	.uleb128	37
	.ascii	"LARGROUP\000"
	.long	10
	.uleb128	37
	.ascii	"LARIGNORE\000"
	.long	11
	.uleb128	37
	.ascii	"LARIMAGE\000"
	.long	12
	.uleb128	37
	.ascii	"LARLABEL\000"
	.long	13
	.uleb128	37
	.ascii	"LARLISTBOX\000"
	.long	14
	.uleb128	37
	.ascii	"LARLISTITEM\000"
	.long	15
	.uleb128	37
	.ascii	"LARMENUBAR\000"
	.long	16
	.uleb128	37
	.ascii	"LARMENUITEM\000"
	.long	17
	.uleb128	37
	.ascii	"LARPROGRESSINDICATOR\000"
	.long	18
	.uleb128	37
	.ascii	"LARRADIOBUTTON\000"
	.long	19
	.uleb128	37
	.ascii	"LARRESIZEGRIP\000"
	.long	20
	.uleb128	37
	.ascii	"LARSCROLLBAR\000"
	.long	21
	.uleb128	37
	.ascii	"LARSPINNER\000"
	.long	22
	.uleb128	37
	.ascii	"LARTABCONTROL\000"
	.long	23
	.uleb128	37
	.ascii	"LARTEXTEDITORMULTILINE\000"
	.long	24
	.uleb128	37
	.ascii	"LARTEXTEDITORSINGLELINE\000"
	.long	25
	.uleb128	37
	.ascii	"LARTRACKBAR\000"
	.long	26
	.uleb128	37
	.ascii	"LARTREEVIEW\000"
	.long	27
	.uleb128	37
	.ascii	"LARTREEITEM\000"
	.long	28
	.uleb128	37
	.ascii	"LARWINDOW\000"
	.long	29
	.byte	0
.La487:
	.uleb128	7
	.long	.La486-.Ldebug_info0
# Definition TAnchorSide
.La488:
	.uleb128	5
	.ascii	"TANCHORSIDE\000"
	.long	.La1068-.Ldebug_info0
.La1068:
	.uleb128	8
	.long	.La490-.Ldebug_info0
.La490:
	.uleb128	9
	.ascii	"TANCHORSIDE\000"
	.uleb128	56
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La223-.Ldebug_info0
	.uleb128	14
	.ascii	"FKIND\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La491-.Ldebug_info0
	.uleb128	14
	.ascii	"FCONTROL\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"FOWNER\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"FSIDE\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La1069-.Ldebug_info0
	.uleb128	14
	.ascii	"OWNER\000"
	.byte	2
	.byte	35
	.uleb128	40
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"KIND\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La491-.Ldebug_info0
	.uleb128	14
	.ascii	"CONTROL\000"
	.byte	2
	.byte	35
	.uleb128	32
	.byte	3
	.long	.La106-.Ldebug_info0
	.uleb128	14
	.ascii	"SIDE\000"
	.byte	2
	.byte	35
	.uleb128	48
	.byte	3
	.long	.La1069-.Ldebug_info0
# Procdef IsSideStored(<TAnchorSide>):Boolean;
	.uleb128	15
	.ascii	"ISSIDESTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La488-.Ldebug_info0
	.byte	0
# Procdef SetControl(<TAnchorSide>;const TControl);
	.uleb128	25
	.ascii	"SETCONTROL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La488-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La106-.Ldebug_info0
	.byte	0
# Procdef SetSide(<TAnchorSide>;const TAnchorSideReference);
	.uleb128	25
	.ascii	"SETSIDE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La488-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La1069-.Ldebug_info0
	.byte	0
# Procdef GetOwner(<TAnchorSide>):TPersistent;
	.uleb128	26
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
	.long	.La221-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La488-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TAnchorSide>;<Pointer>;TControl;TAnchorKind);
	.uleb128	22
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La488-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La488-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	19
	.ascii	"THEOWNER\000"
	.long	.La106-.Ldebug_info0
# Symbol THEKIND
	.uleb128	19
	.ascii	"THEKIND\000"
	.long	.La491-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TAnchorSide>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La488-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef GetSidePosition(<TAnchorSide>;out TControl;out TAnchorSideReference;out LongInt);
	.uleb128	20
	.ascii	"GETSIDEPOSITION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La488-.Ldebug_info0
# Symbol REFERENCECONTROL
	.uleb128	19
	.ascii	"REFERENCECONTROL\000"
	.long	.La106-.Ldebug_info0
# Symbol REFERENCESIDE
	.uleb128	19
	.ascii	"REFERENCESIDE\000"
	.long	.La1069-.Ldebug_info0
# Symbol POSITION
	.uleb128	19
	.ascii	"POSITION\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef CheckSidePosition(<TAnchorSide>;TControl;TAnchorSideReference;out TControl;out TAnchorSideReference;out LongInt):Boolean;
	.uleb128	22
	.ascii	"CHECKSIDEPOSITION\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La488-.Ldebug_info0
# Symbol NEWCONTROL
	.uleb128	19
	.ascii	"NEWCONTROL\000"
	.long	.La106-.Ldebug_info0
# Symbol NEWSIDE
	.uleb128	19
	.ascii	"NEWSIDE\000"
	.long	.La1069-.Ldebug_info0
# Symbol REFERENCECONTROL
	.uleb128	19
	.ascii	"REFERENCECONTROL\000"
	.long	.La106-.Ldebug_info0
# Symbol REFERENCESIDE
	.uleb128	19
	.ascii	"REFERENCESIDE\000"
	.long	.La1069-.Ldebug_info0
# Symbol POSITION
	.uleb128	19
	.ascii	"POSITION\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Assign(<TAnchorSide>;TPersistent);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La488-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef IsAnchoredToParent(<TAnchorSide>;TAnchorKind):Boolean;
	.uleb128	22
	.ascii	"ISANCHOREDTOPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La488-.Ldebug_info0
# Symbol PARENTSIDE
	.uleb128	19
	.ascii	"PARENTSIDE\000"
	.long	.La491-.Ldebug_info0
	.byte	0
# Procdef FixCenterAnchoring(<TAnchorSide>);
	.uleb128	20
	.ascii	"FIXCENTERANCHORING\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La488-.Ldebug_info0
	.byte	0
	.byte	0
.La489:
	.uleb128	7
	.long	.La488-.Ldebug_info0
# Definition TAnchorKind
.La491:
	.uleb128	5
	.ascii	"TANCHORKIND\000"
	.long	.La1071-.Ldebug_info0
.La1071:
	.uleb128	36
	.ascii	"TANCHORKIND\000"
	.byte	4
	.uleb128	37
	.ascii	"AKTOP\000"
	.long	0
	.uleb128	37
	.ascii	"AKLEFT\000"
	.long	1
	.uleb128	37
	.ascii	"AKRIGHT\000"
	.long	2
	.uleb128	37
	.ascii	"AKBOTTOM\000"
	.long	3
	.byte	0
.La492:
	.uleb128	7
	.long	.La491-.Ldebug_info0
# Definition TLMMouse
.La493:
	.uleb128	5
	.ascii	"TLMMOUSE\000"
	.long	.La1072-.Ldebug_info0
.La1072:
	.uleb128	32
	.ascii	"TLMMOUSE\000"
	.uleb128	32
	.uleb128	11
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"KEYS\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"XPOS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La603-.Ldebug_info0
	.uleb128	11
	.ascii	"YPOS\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La603-.Ldebug_info0
	.uleb128	11
	.ascii	"POS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La510-.Ldebug_info0
	.uleb128	11
	.ascii	"DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La71-.Ldebug_info0
	.byte	0
.La494:
	.uleb128	7
	.long	.La493-.Ldebug_info0
# Definition TMouseButton
.La495:
	.uleb128	5
	.ascii	"TMOUSEBUTTON\000"
	.long	.La1073-.Ldebug_info0
.La1073:
	.uleb128	36
	.ascii	"TMOUSEBUTTON\000"
	.byte	4
	.uleb128	37
	.ascii	"MBLEFT\000"
	.long	0
	.uleb128	37
	.ascii	"MBRIGHT\000"
	.long	1
	.uleb128	37
	.ascii	"MBMIDDLE\000"
	.long	2
	.uleb128	37
	.ascii	"MBEXTRA1\000"
	.long	3
	.uleb128	37
	.ascii	"MBEXTRA2\000"
	.long	4
	.byte	0
.La496:
	.uleb128	7
	.long	.La495-.Ldebug_info0
# Definition TControl.Class Of TControl
.La497:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La498:
	.uleb128	7
	.long	.La497-.Ldebug_info0
# Definition TAnchorSideChangeOperation
.La499:
	.uleb128	5
	.ascii	"TANCHORSIDECHANGEOPERATION\000"
	.long	.La1074-.Ldebug_info0
.La1074:
	.uleb128	36
	.ascii	"TANCHORSIDECHANGEOPERATION\000"
	.byte	4
	.uleb128	37
	.ascii	"ASCOADD\000"
	.long	0
	.uleb128	37
	.ascii	"ASCOREMOVE\000"
	.long	1
	.uleb128	37
	.ascii	"ASCOCHANGESIDE\000"
	.long	2
	.byte	0
.La500:
	.uleb128	7
	.long	.La499-.Ldebug_info0
# Definition TConstraintSize
.La501:
	.uleb128	5
	.ascii	"TCONSTRAINTSIZE\000"
	.long	.La1075-.Ldebug_info0
.La1075:
	.uleb128	48
	.ascii	"TCONSTRAINTSIZE\000"
	.uleb128	0
	.uleb128	2147483647
	.long	.La293-.Ldebug_info0
.La502:
	.uleb128	7
	.long	.La501-.Ldebug_info0
# Definition TLMMouseEvent
.La503:
	.uleb128	5
	.ascii	"TLMMOUSEEVENT\000"
	.long	.La1076-.Ldebug_info0
.La1076:
	.uleb128	32
	.ascii	"TLMMOUSEEVENT\000"
	.uleb128	48
	.uleb128	11
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"BUTTON\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La247-.Ldebug_info0
	.uleb128	11
	.ascii	"WHEELDELTA\000"
	.byte	2
	.byte	35
	.uleb128	10
	.long	.La603-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSED1\000"
	.byte	2
	.byte	35
	.uleb128	12
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La603-.Ldebug_info0
	.uleb128	11
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La603-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSED2\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"USERDATA\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La31-.Ldebug_info0
	.uleb128	11
	.ascii	"STATE\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La264-.Ldebug_info0
	.byte	0
.La504:
	.uleb128	7
	.long	.La503-.Ldebug_info0
# Definition TLMNCHITTEST
.La505:
	.uleb128	5
	.ascii	"TLMNCHITTEST\000"
	.long	.La1077-.Ldebug_info0
.La1077:
	.uleb128	32
	.ascii	"TLMNCHITTEST\000"
	.uleb128	32
	.uleb128	11
	.ascii	"MSG\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSEDMSG\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"UNUSED\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"XPOS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La603-.Ldebug_info0
	.uleb128	11
	.ascii	"YPOS\000"
	.byte	2
	.byte	35
	.uleb128	18
	.long	.La603-.Ldebug_info0
	.uleb128	11
	.ascii	"POS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La510-.Ldebug_info0
	.uleb128	11
	.ascii	"DUMMY\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La71-.Ldebug_info0
	.uleb128	11
	.ascii	"RESULT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La71-.Ldebug_info0
	.byte	0
.La506:
	.uleb128	7
	.long	.La505-.Ldebug_info0
# Definition TDragImageList
.La507:
	.uleb128	5
	.ascii	"TDRAGIMAGELIST\000"
	.long	.La1078-.Ldebug_info0
.La1078:
	.uleb128	8
	.long	.La509-.Ldebug_info0
.La509:
	.uleb128	9
	.ascii	"TDRAGIMAGELIST\000"
	.uleb128	328
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La630-.Ldebug_info0
	.uleb128	14
	.ascii	"FDRAGCURSOR\000"
	.byte	3
	.byte	35
	.uleb128	288
	.byte	3
	.long	.La399-.Ldebug_info0
	.uleb128	14
	.ascii	"FDRAGGING\000"
	.byte	3
	.byte	35
	.uleb128	290
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FDRAGHOTSPOT\000"
	.byte	3
	.byte	35
	.uleb128	292
	.byte	3
	.long	.La284-.Ldebug_info0
	.uleb128	14
	.ascii	"FOLDCURSOR\000"
	.byte	3
	.byte	35
	.uleb128	300
	.byte	3
	.long	.La399-.Ldebug_info0
	.uleb128	14
	.ascii	"FIMAGEINDEX\000"
	.byte	3
	.byte	35
	.uleb128	304
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FLASTDRAGPOS\000"
	.byte	3
	.byte	35
	.uleb128	308
	.byte	3
	.long	.La284-.Ldebug_info0
	.uleb128	14
	.ascii	"FLOCKEDWINDOW\000"
	.byte	3
	.byte	35
	.uleb128	320
	.byte	3
	.long	.La131-.Ldebug_info0
	.uleb128	14
	.ascii	"DRAGCURSOR\000"
	.byte	3
	.byte	35
	.uleb128	288
	.byte	3
	.long	.La399-.Ldebug_info0
	.uleb128	14
	.ascii	"DRAGHOTSPOT\000"
	.byte	3
	.byte	35
	.uleb128	292
	.byte	3
	.long	.La284-.Ldebug_info0
	.uleb128	14
	.ascii	"DRAGGING\000"
	.byte	3
	.byte	35
	.uleb128	290
	.byte	3
	.long	.La29-.Ldebug_info0
# Procdef SetDragCursor(<TDragImageList>;const TCursor);
	.uleb128	25
	.ascii	"SETDRAGCURSOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La507-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La399-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TDragImageList>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La1079-.Ldebug_info0
	.byte	0
# Procdef Initialize(<TDragImageList>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La507-.Ldebug_info0
	.byte	0
# Procdef BeginDrag(<TDragImageList>;QWord;LongInt;LongInt):Boolean;
	.uleb128	22
	.ascii	"BEGINDRAG\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La507-.Ldebug_info0
# Symbol WINDOW
	.uleb128	19
	.ascii	"WINDOW\000"
	.long	.La131-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef DragLock(<TDragImageList>;QWord;LongInt;LongInt):Boolean;
	.uleb128	22
	.ascii	"DRAGLOCK\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La507-.Ldebug_info0
# Symbol WINDOW
	.uleb128	19
	.ascii	"WINDOW\000"
	.long	.La131-.Ldebug_info0
# Symbol XPOS
	.uleb128	19
	.ascii	"XPOS\000"
	.long	.La120-.Ldebug_info0
# Symbol YPOS
	.uleb128	19
	.ascii	"YPOS\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef DragMove(<TDragImageList>;LongInt;LongInt):Boolean;
	.uleb128	22
	.ascii	"DRAGMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La507-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef DragUnlock(<TDragImageList>);
	.uleb128	20
	.ascii	"DRAGUNLOCK\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La507-.Ldebug_info0
	.byte	0
# Procdef EndDrag(<TDragImageList>):Boolean;
	.uleb128	22
	.ascii	"ENDDRAG\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La507-.Ldebug_info0
	.byte	0
# Procdef GetHotSpot(<TDragImageList>):<record type>;
	.uleb128	18
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
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La507-.Ldebug_info0
	.byte	0
# Procdef HideDragImage(<TDragImageList>);
	.uleb128	20
	.ascii	"HIDEDRAGIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La507-.Ldebug_info0
	.byte	0
# Procdef SetDragImage(<TDragImageList>;LongInt;LongInt;LongInt):Boolean;
	.uleb128	22
	.ascii	"SETDRAGIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La507-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol HOTSPOTX
	.uleb128	19
	.ascii	"HOTSPOTX\000"
	.long	.La120-.Ldebug_info0
# Symbol HOTSPOTY
	.uleb128	19
	.ascii	"HOTSPOTY\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef ShowDragImage(<TDragImageList>);
	.uleb128	20
	.ascii	"SHOWDRAGIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La507-.Ldebug_info0
	.byte	0
	.byte	0
.La508:
	.uleb128	7
	.long	.La507-.Ldebug_info0
# Definition TSmallPoint
.La510:
	.uleb128	5
	.ascii	"TSMALLPOINT\000"
	.long	.La1081-.Ldebug_info0
.La1081:
	.uleb128	32
	.ascii	"TSMALLPOINT\000"
	.uleb128	4
	.uleb128	11
	.ascii	"X\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La603-.Ldebug_info0
	.uleb128	11
	.ascii	"Y\000"
	.byte	2
	.byte	35
	.uleb128	2
	.long	.La603-.Ldebug_info0
	.byte	0
.La511:
	.uleb128	7
	.long	.La510-.Ldebug_info0
# Definition PHintInfo
.La512:
	.uleb128	5
	.ascii	"PHINTINFO\000"
	.long	.La1082-.Ldebug_info0
.La1082:
	.uleb128	8
	.long	.La1083-.Ldebug_info0
.La513:
	.uleb128	7
	.long	.La512-.Ldebug_info0
# Definition TControlHandlerType
.La514:
	.uleb128	5
	.ascii	"TCONTROLHANDLERTYPE\000"
	.long	.La1085-.Ldebug_info0
.La1085:
	.uleb128	36
	.ascii	"TCONTROLHANDLERTYPE\000"
	.byte	4
	.uleb128	37
	.ascii	"CHTONRESIZE\000"
	.long	0
	.uleb128	37
	.ascii	"CHTONCHANGEBOUNDS\000"
	.long	1
	.uleb128	37
	.ascii	"CHTONVISIBLECHANGING\000"
	.long	2
	.uleb128	37
	.ascii	"CHTONVISIBLECHANGED\000"
	.long	3
	.uleb128	37
	.ascii	"CHTONENABLEDCHANGING\000"
	.long	4
	.uleb128	37
	.ascii	"CHTONENABLEDCHANGED\000"
	.long	5
	.uleb128	37
	.ascii	"CHTONKEYDOWN\000"
	.long	6
	.uleb128	37
	.ascii	"CHTONBEFOREDESTRUCTION\000"
	.long	7
	.uleb128	37
	.ascii	"CHTONMOUSEWHEEL\000"
	.long	8
	.byte	0
.La515:
	.uleb128	7
	.long	.La514-.Ldebug_info0
# Definition TControl.Class Of TControl
.La516:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La517:
	.uleb128	7
	.long	.La516-.Ldebug_info0
# Definition TControlActionLinkClass
.La518:
	.uleb128	5
	.ascii	"TCONTROLACTIONLINKCLASS\000"
	.long	.La1086-.Ldebug_info0
.La1086:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La519:
	.uleb128	7
	.long	.La518-.Ldebug_info0
# Definition TDefaultColorType
.La520:
	.uleb128	5
	.ascii	"TDEFAULTCOLORTYPE\000"
	.long	.La1087-.Ldebug_info0
.La1087:
	.uleb128	36
	.ascii	"TDEFAULTCOLORTYPE\000"
	.byte	4
	.uleb128	37
	.ascii	"DCTBRUSH\000"
	.long	0
	.uleb128	37
	.ascii	"DCTFONT\000"
	.long	1
	.byte	0
.La521:
	.uleb128	7
	.long	.La520-.Ldebug_info0
# Definition TMethodList
.La528:
	.uleb128	5
	.ascii	"TMETHODLIST\000"
	.long	.La1088-.Ldebug_info0
.La1088:
	.uleb128	8
	.long	.La530-.Ldebug_info0
.La530:
	.uleb128	9
	.ascii	"TMETHODLIST\000"
	.uleb128	32
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La22-.Ldebug_info0
	.uleb128	14
	.ascii	"FALLOWDUPLICATES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FITEMS\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La1089-.Ldebug_info0
	.uleb128	14
	.ascii	"FCOUNT\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"ALLOWDUPLICATES\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La29-.Ldebug_info0
# Procdef GetItems(<TMethodList>;<var TMethod>;LongInt):<record type>;
	.uleb128	15
	.ascii	"GETITEMS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La168-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La528-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La168-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetAllowDuplicates(<TMethodList>;Boolean);
	.uleb128	25
	.ascii	"SETALLOWDUPLICATES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La528-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetItems(<TMethodList>;LongInt;const TMethod);
	.uleb128	25
	.ascii	"SETITEMS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La528-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La168-.Ldebug_info0
	.byte	0
# Procdef InternalInsert(<TMethodList>;LongInt;const TMethod);
	.uleb128	25
	.ascii	"INTERNALINSERT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La528-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La168-.Ldebug_info0
	.byte	0
# Procdef RaiseIndexOutOfBounds(<TMethodList>;LongInt);
	.uleb128	25
	.ascii	"RAISEINDEXOUTOFBOUNDS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La528-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TMethodList>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La528-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Count(<TMethodList>):LongInt;
	.uleb128	22
	.ascii	"COUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La528-.Ldebug_info0
	.byte	0
# Procdef NextDownIndex(<TMethodList>;var LongInt):Boolean;
	.uleb128	22
	.ascii	"NEXTDOWNINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La528-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef IndexOf(<TMethodList>;const TMethod):LongInt;
	.uleb128	22
	.ascii	"INDEXOF\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La528-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La168-.Ldebug_info0
	.byte	0
# Procdef Delete(<TMethodList>;LongInt);
	.uleb128	20
	.ascii	"DELETE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La528-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Remove(<TMethodList>;const TMethod);
	.uleb128	20
	.ascii	"REMOVE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La528-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La168-.Ldebug_info0
	.byte	0
# Procdef Add(<TMethodList>;const TMethod);
	.uleb128	20
	.ascii	"ADD\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La528-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La168-.Ldebug_info0
	.byte	0
# Procdef Add(<TMethodList>;const TMethod;Boolean);
	.uleb128	20
	.ascii	"ADD\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La528-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La168-.Ldebug_info0
# Symbol ASLAST
	.uleb128	19
	.ascii	"ASLAST\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef Insert(<TMethodList>;LongInt;const TMethod);
	.uleb128	20
	.ascii	"INSERT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La528-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La168-.Ldebug_info0
	.byte	0
# Procdef Move(<TMethodList>;LongInt;LongInt);
	.uleb128	20
	.ascii	"MOVE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La528-.Ldebug_info0
# Symbol OLDINDEX
	.uleb128	19
	.ascii	"OLDINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol NEWINDEX
	.uleb128	19
	.ascii	"NEWINDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef RemoveAllMethodsOfObject(<TMethodList>;const TObject);
	.uleb128	20
	.ascii	"REMOVEALLMETHODSOFOBJECT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La528-.Ldebug_info0
# Symbol ANOBJECT
	.uleb128	19
	.ascii	"ANOBJECT\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef CallNotifyEvents(<TMethodList>;TObject);
	.uleb128	20
	.ascii	"CALLNOTIFYEVENTS\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La528-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef GetReversedEnumerator(<TMethodList>;<var TMethodList.TItemsEnumerator>):<record type>;
	.uleb128	22
	.ascii	"GETREVERSEDENUMERATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La1091-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La528-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La1091-.Ldebug_info0
	.byte	0
# Procdef GetEnumerator(<TMethodList>;<var TMethodList.TItemsEnumerator>):<record type>;
	.uleb128	22
	.ascii	"GETENUMERATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La1091-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La528-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La1091-.Ldebug_info0
	.byte	0
	.byte	0
.La529:
	.uleb128	7
	.long	.La528-.Ldebug_info0
# Definition TCustomIcon
.La532:
	.uleb128	5
	.ascii	"TCUSTOMICON\000"
	.long	.La1093-.Ldebug_info0
.La1093:
	.uleb128	8
	.long	.La534-.Ldebug_info0
.La534:
	.uleb128	9
	.ascii	"TCUSTOMICON\000"
	.uleb128	120
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1096-.Ldebug_info0
	.uleb128	14
	.ascii	"FCURRENT\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	2
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FREQUESTEDSIZE\000"
	.byte	2
	.byte	35
	.uleb128	108
	.byte	2
	.long	.La200-.Ldebug_info0
	.uleb128	14
	.ascii	"CURRENT\000"
	.byte	2
	.byte	35
	.uleb128	104
	.byte	2
	.long	.La120-.Ldebug_info0
# Procdef GetCount(<TCustomIcon>):LongInt;
	.uleb128	15
	.ascii	"GETCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef SetCurrent(<TCustomIcon>;const LongInt);
	.uleb128	25
	.ascii	"SETCURRENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef MaskHandleNeeded(<TCustomIcon>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef PaletteNeeded(<TCustomIcon>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef CanShareImage(<TCustomIcon>;TSharedRasterImageClass):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol ACLASS
	.uleb128	19
	.ascii	"ACLASS\000"
	.long	.La664-.Ldebug_info0
	.byte	0
# Procdef CheckRequestedSize(<TCustomIcon>);
	.uleb128	25
	.ascii	"CHECKREQUESTEDSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef GetIndex(<TCustomIcon>;TPixelFormat;Word;Word):LongInt;
	.uleb128	15
	.ascii	"GETINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol AFORMAT
	.uleb128	19
	.ascii	"AFORMAT\000"
	.long	.La1097-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La247-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La247-.Ldebug_info0
	.byte	0
# Procdef GetBitmapHandle(<TCustomIcon>):QWord;
	.uleb128	26
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
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef class GetDefaultSize(<Class Of TCustomIcon>):<record type>;
	.uleb128	26
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
	.long	.La200-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La1099-.Ldebug_info0
	.byte	0
# Procdef GetMaskHandle(<TCustomIcon>):QWord;
	.uleb128	26
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
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef GetPalette(<TCustomIcon>):QWord;
	.uleb128	26
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
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef GetPixelFormat(<TCustomIcon>):<enumeration type>;
	.uleb128	26
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
	.long	.La1097-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef GetRawImagePtr(<TCustomIcon>):^TRawImage;
	.uleb128	26
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
	.long	.La1101-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef GetRawImageDescriptionPtr(<TCustomIcon>):^TRawImageDescription;
	.uleb128	26
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
	.long	.La1103-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef GetTransparent(<TCustomIcon>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef class GetSharedImageClass(<Class Of TCustomIcon>):Class Of TSharedRasterImage;
	.uleb128	26
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
	.long	.La664-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La1105-.Ldebug_info0
	.byte	0
# Procdef class GetStreamSignature(<Class Of TCustomIcon>):DWord;
	.uleb128	26
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
	.long	.La293-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La1107-.Ldebug_info0
	.byte	0
# Procdef class GetTypeID(<Class Of TCustomIcon>):Word;
	.uleb128	26
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
	.long	.La247-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La1109-.Ldebug_info0
	.byte	0
# Procdef HandleNeeded(<TCustomIcon>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef InternalReleaseBitmapHandle(<TCustomIcon>):QWord;
	.uleb128	26
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
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef InternalReleaseMaskHandle(<TCustomIcon>):QWord;
	.uleb128	26
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
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef InternalReleasePalette(<TCustomIcon>):QWord;
	.uleb128	26
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
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef ReadData(<TCustomIcon>;TStream);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol STREAM
	.uleb128	19
	.ascii	"STREAM\000"
	.long	.La670-.Ldebug_info0
	.byte	0
# Procdef ReadStream(<TCustomIcon>;TMemoryStream;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol ASTREAM
	.uleb128	19
	.ascii	"ASTREAM\000"
	.long	.La1111-.Ldebug_info0
# Symbol ASIZE
	.uleb128	19
	.ascii	"ASIZE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetMasked(<TCustomIcon>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetPixelFormat(<TCustomIcon>;TPixelFormat);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La1097-.Ldebug_info0
	.byte	0
# Procdef SetTransparent(<TCustomIcon>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef UnshareImage(<TCustomIcon>;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol COPYCONTENT
	.uleb128	19
	.ascii	"COPYCONTENT\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef UpdateCurrentView(<TCustomIcon>);
	.uleb128	25
	.ascii	"UPDATECURRENTVIEW\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef SetHandle(<TCustomIcon>;QWord);
	.uleb128	17
	.ascii	"SETHANDLE\000"
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
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef UpdateHandle(<TCustomIcon>;QWord):Boolean;
	.uleb128	26
	.ascii	"UPDATEHANDLE\000"
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef UpdateHandles(<TCustomIcon>;QWord;QWord):Boolean;
	.uleb128	26
	.ascii	"UPDATEHANDLES\000"
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol ABITMAP
	.uleb128	19
	.ascii	"ABITMAP\000"
	.long	.La131-.Ldebug_info0
# Symbol AMASK
	.uleb128	19
	.ascii	"AMASK\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef WriteStream(<TCustomIcon>;TMemoryStream);
	.uleb128	17
	.ascii	"WRITESTREAM\000"
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
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol ASTREAM
	.uleb128	19
	.ascii	"ASTREAM\000"
	.long	.La1111-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TCustomIcon>;<Pointer>);
	.uleb128	18
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	376
	.byte	34
	.long	.La532-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Add(<TCustomIcon>;TPixelFormat;Word;Word);
	.uleb128	20
	.ascii	"ADD\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol AFORMAT
	.uleb128	19
	.ascii	"AFORMAT\000"
	.long	.La1097-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La247-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La247-.Ldebug_info0
	.byte	0
# Procdef Assign(<TCustomIcon>;TPersistent);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef AssignImage(<TCustomIcon>;TRasterImage);
	.uleb128	23
	.ascii	"ASSIGNIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	808
	.byte	34
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol ASOURCE
	.uleb128	19
	.ascii	"ASOURCE\000"
	.long	.La1094-.Ldebug_info0
	.byte	0
# Procdef Clear(<TCustomIcon>);
	.uleb128	23
	.ascii	"CLEAR\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef Delete(<TCustomIcon>;LongInt);
	.uleb128	20
	.ascii	"DELETE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Remove(<TCustomIcon>;TPixelFormat;Word;Word);
	.uleb128	20
	.ascii	"REMOVE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol AFORMAT
	.uleb128	19
	.ascii	"AFORMAT\000"
	.long	.La1097-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La247-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La247-.Ldebug_info0
	.byte	0
# Procdef GetDescription(<TCustomIcon>;LongInt;out TPixelFormat;out Word;out Word);
	.uleb128	20
	.ascii	"GETDESCRIPTION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol AFORMAT
	.uleb128	19
	.ascii	"AFORMAT\000"
	.long	.La1097-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La247-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La247-.Ldebug_info0
	.byte	0
# Procdef SetSize(<TCustomIcon>;LongInt;LongInt);
	.uleb128	23
	.ascii	"SETSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	688
	.byte	34
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef class GetFileExtensions(<Class Of TCustomIcon>;<var AnsiString>):AnsiString;
	.uleb128	18
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
	.long	.La27-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La1114-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef LazarusResourceTypeValid(<TCustomIcon>;const AnsiString):Boolean;
	.uleb128	18
	.ascii	"LAZARUSRESOURCETYPEVALID\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol RESOURCETYPE
	.uleb128	19
	.ascii	"RESOURCETYPE\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef LoadFromResourceName(<TCustomIcon>;QWord;const AnsiString);
	.uleb128	23
	.ascii	"LOADFROMRESOURCENAME\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	19
	.ascii	"INSTANCE\000"
	.long	.La131-.Ldebug_info0
# Symbol RESNAME
	.uleb128	19
	.ascii	"RESNAME\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef LoadFromResourceID(<TCustomIcon>;QWord;Int64);
	.uleb128	23
	.ascii	"LOADFROMRESOURCEID\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	19
	.ascii	"INSTANCE\000"
	.long	.La131-.Ldebug_info0
# Symbol RESID
	.uleb128	19
	.ascii	"RESID\000"
	.long	.La71-.Ldebug_info0
	.byte	0
# Procdef LoadFromResourceHandle(<TCustomIcon>;QWord;QWord);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	19
	.ascii	"INSTANCE\000"
	.long	.La131-.Ldebug_info0
# Symbol RESHANDLE
	.uleb128	19
	.ascii	"RESHANDLE\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef BitmapHandleAllocated(<TCustomIcon>):Boolean;
	.uleb128	18
	.ascii	"BITMAPHANDLEALLOCATED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	728
	.byte	34
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef MaskHandleAllocated(<TCustomIcon>):Boolean;
	.uleb128	18
	.ascii	"MASKHANDLEALLOCATED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	736
	.byte	34
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef PaletteAllocated(<TCustomIcon>):Boolean;
	.uleb128	18
	.ascii	"PALETTEALLOCATED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	744
	.byte	34
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef SetHandles(<TCustomIcon>;QWord;QWord);
	.uleb128	23
	.ascii	"SETHANDLES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	768
	.byte	34
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol ABITMAP
	.uleb128	19
	.ascii	"ABITMAP\000"
	.long	.La131-.Ldebug_info0
# Symbol AMASK
	.uleb128	19
	.ascii	"AMASK\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef GetBestIndexForSize(<TCustomIcon>;TSize):LongInt;
	.uleb128	22
	.ascii	"GETBESTINDEXFORSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La532-.Ldebug_info0
# Symbol ASIZE
	.uleb128	19
	.ascii	"ASIZE\000"
	.long	.La200-.Ldebug_info0
	.byte	0
	.byte	0
.La533:
	.uleb128	7
	.long	.La532-.Ldebug_info0
# Definition TIcon.Class Of TIcon
.La535:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La536:
	.uleb128	7
	.long	.La535-.Ldebug_info0
# Definition TIcon.Class Of TIcon
.La537:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La538:
	.uleb128	7
	.long	.La537-.Ldebug_info0
# Definition TMenu
.La544:
	.uleb128	5
	.ascii	"TMENU\000"
	.long	.La1116-.Ldebug_info0
.La1116:
	.uleb128	8
	.long	.La546-.Ldebug_info0
.La546:
	.uleb128	9
	.ascii	"TMENU\000"
	.uleb128	216
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La413-.Ldebug_info0
	.uleb128	14
	.ascii	"FBIDIMODE\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La421-.Ldebug_info0
	.uleb128	14
	.ascii	"FIMAGECHANGELINK\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La625-.Ldebug_info0
	.uleb128	14
	.ascii	"FIMAGES\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La628-.Ldebug_info0
	.uleb128	14
	.ascii	"FITEMS\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La549-.Ldebug_info0
	.uleb128	14
	.ascii	"FONDRAWITEM\000"
	.byte	3
	.byte	35
	.uleb128	144
	.byte	3
	.long	.La1117-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La1119-.Ldebug_info0
	.uleb128	14
	.ascii	"FONMEASUREITEM\000"
	.byte	3
	.byte	35
	.uleb128	176
	.byte	3
	.long	.La1121-.Ldebug_info0
	.uleb128	14
	.ascii	"FOWNERDRAW\000"
	.byte	3
	.byte	35
	.uleb128	192
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FPARENT\000"
	.byte	3
	.byte	35
	.uleb128	200
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"FPARENTBIDIMODE\000"
	.byte	3
	.byte	35
	.uleb128	208
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FSHORTCUTHANDLED\000"
	.byte	3
	.byte	35
	.uleb128	209
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La1119-.Ldebug_info0
	.uleb128	11
	.ascii	"FCOMPSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	212
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"PARENT\000"
	.byte	3
	.byte	35
	.uleb128	200
	.byte	3
	.long	.La33-.Ldebug_info0
	.uleb128	14
	.ascii	"SHORTCUTHANDLED\000"
	.byte	3
	.byte	35
	.uleb128	209
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"BIDIMODE\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La421-.Ldebug_info0
	.uleb128	14
	.ascii	"PARENTBIDIMODE\000"
	.byte	3
	.byte	35
	.uleb128	208
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"ITEMS\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La549-.Ldebug_info0
	.uleb128	14
	.ascii	"IMAGES\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La628-.Ldebug_info0
	.uleb128	14
	.ascii	"OWNERDRAW\000"
	.byte	3
	.byte	35
	.uleb128	192
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"ONDRAWITEM\000"
	.byte	3
	.byte	35
	.uleb128	144
	.byte	3
	.long	.La1117-.Ldebug_info0
	.uleb128	14
	.ascii	"ONMEASUREITEM\000"
	.byte	3
	.byte	35
	.uleb128	176
	.byte	3
	.long	.La1121-.Ldebug_info0
# Procdef CMParentBiDiModeChanged(<TMenu>;var TMessage);
	.uleb128	25
	.ascii	"CMPARENTBIDIMODECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef CMAppShowMenuGlyphChanged(<TMenu>;var TMessage);
	.uleb128	25
	.ascii	"CMAPPSHOWMENUGLYPHCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La172-.Ldebug_info0
	.byte	0
# Procdef IsBiDiModeStored(<TMenu>):Boolean;
	.uleb128	15
	.ascii	"ISBIDIMODESTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
	.byte	0
# Procdef ImageListChange(<TMenu>;TObject);
	.uleb128	25
	.ascii	"IMAGELISTCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef SetBiDiMode(<TMenu>;const TBiDiMode);
	.uleb128	25
	.ascii	"SETBIDIMODE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La421-.Ldebug_info0
	.byte	0
# Procdef SetImages(<TMenu>;const TCustomImageList);
	.uleb128	25
	.ascii	"SETIMAGES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La628-.Ldebug_info0
	.byte	0
# Procdef SetParent(<TMenu>;const TComponent);
	.uleb128	25
	.ascii	"SETPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef SetParentBiDiMode(<TMenu>;const Boolean);
	.uleb128	25
	.ascii	"SETPARENTBIDIMODE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TMenu>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La1123-.Ldebug_info0
	.byte	0
# Procdef BidiModeChanged(<TMenu>);
	.uleb128	17
	.ascii	"BIDIMODECHANGED\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
	.byte	0
# Procdef CreateHandle(<TMenu>);
	.uleb128	17
	.ascii	"CREATEHANDLE\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
	.byte	0
# Procdef DoChange(<TMenu>;TMenuItem;Boolean);
	.uleb128	17
	.ascii	"DOCHANGE\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La549-.Ldebug_info0
# Symbol REBUILD
	.uleb128	19
	.ascii	"REBUILD\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef GetHandle(<TMenu>):QWord;
	.uleb128	26
	.ascii	"GETHANDLE\000"
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
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
	.byte	0
# Procdef GetChildren(<TMenu>;TGetChildProc;TComponent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
# Symbol PROC
	.uleb128	19
	.ascii	"PROC\000"
	.long	.La243-.Ldebug_info0
# Symbol ROOT
	.uleb128	19
	.ascii	"ROOT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef MenuChanged(<TMenu>;TObject;TMenuItem;Boolean);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La549-.Ldebug_info0
# Symbol REBUILD
	.uleb128	19
	.ascii	"REBUILD\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef Notification(<TMenu>;TComponent;TOperation);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
# Symbol OPERATION
	.uleb128	19
	.ascii	"OPERATION\000"
	.long	.La192-.Ldebug_info0
	.byte	0
# Procdef ParentBidiModeChanged(<TMenu>);
	.uleb128	25
	.ascii	"PARENTBIDIMODECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
	.byte	0
# Procdef ParentBidiModeChanged(<TMenu>;TComponent);
	.uleb128	25
	.ascii	"PARENTBIDIMODECHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
# Symbol AOWNER
	.uleb128	19
	.ascii	"AOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef SetChildOrder(<TMenu>;TComponent;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
# Symbol CHILD
	.uleb128	19
	.ascii	"CHILD\000"
	.long	.La33-.Ldebug_info0
# Symbol ORDER
	.uleb128	19
	.ascii	"ORDER\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef UpdateItems(<TMenu>);
	.uleb128	25
	.ascii	"UPDATEITEMS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TMenu>;<Pointer>;TComponent);
	.uleb128	18
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
	.long	.La544-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol AOWNER
	.uleb128	19
	.ascii	"AOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TMenu>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef DestroyHandle(<TMenu>);
	.uleb128	23
	.ascii	"DESTROYHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	496
	.byte	34
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
	.byte	0
# Procdef FindItem(<TMenu>;Int64;TFindItemKind):TMenuItem;
	.uleb128	22
	.ascii	"FINDITEM\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La71-.Ldebug_info0
# Symbol KIND
	.uleb128	19
	.ascii	"KIND\000"
	.long	.La1125-.Ldebug_info0
	.byte	0
# Procdef GetHelpContext(<TMenu>;Int64;Boolean):LongInt;
	.uleb128	22
	.ascii	"GETHELPCONTEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La448-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La71-.Ldebug_info0
# Symbol BYCOMMAND
	.uleb128	19
	.ascii	"BYCOMMAND\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef IsShortcut(<TMenu>;var TLMKey):Boolean;
	.uleb128	22
	.ascii	"ISSHORTCUT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
# Symbol MESSAGE
	.uleb128	19
	.ascii	"MESSAGE\000"
	.long	.La211-.Ldebug_info0
	.byte	0
# Procdef HandleAllocated(<TMenu>):Boolean;
	.uleb128	22
	.ascii	"HANDLEALLOCATED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
	.byte	0
# Procdef IsRightToLeft(<TMenu>):Boolean;
	.uleb128	18
	.ascii	"ISRIGHTTOLEFT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	504
	.byte	34
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
	.byte	0
# Procdef UseRightToLeftAlignment(<TMenu>):Boolean;
	.uleb128	18
	.ascii	"USERIGHTTOLEFTALIGNMENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	512
	.byte	34
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
	.byte	0
# Procdef UseRightToLeftReading(<TMenu>):Boolean;
	.uleb128	18
	.ascii	"USERIGHTTOLEFTREADING\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	520
	.byte	34
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
	.byte	0
# Procdef HandleNeeded(<TMenu>);
	.uleb128	20
	.ascii	"HANDLENEEDED\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
	.byte	0
# Procdef DispatchCommand(<TMenu>;Word):Boolean;
	.uleb128	22
	.ascii	"DISPATCHCOMMAND\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La544-.Ldebug_info0
# Symbol ACOMMAND
	.uleb128	19
	.ascii	"ACOMMAND\000"
	.long	.La247-.Ldebug_info0
	.byte	0
	.byte	0
.La545:
	.uleb128	7
	.long	.La544-.Ldebug_info0
# Definition TMainMenu.Class Of TMainMenu
.La547:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La548:
	.uleb128	7
	.long	.La547-.Ldebug_info0
# Definition TMenuItem
.La549:
	.uleb128	5
	.ascii	"TMENUITEM\000"
	.long	.La1127-.Ldebug_info0
.La1127:
	.uleb128	8
	.long	.La551-.Ldebug_info0
.La551:
	.uleb128	9
	.ascii	"TMENUITEM\000"
	.uleb128	312
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La413-.Ldebug_info0
	.uleb128	14
	.ascii	"FACTIONLINK\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La1128-.Ldebug_info0
	.uleb128	14
	.ascii	"FCAPTION\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La27-.Ldebug_info0
	.uleb128	14
	.ascii	"FBITMAP\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La204-.Ldebug_info0
	.uleb128	14
	.ascii	"FGLYPHSHOWMODE\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La1131-.Ldebug_info0
	.uleb128	14
	.ascii	"FHANDLE\000"
	.byte	3
	.byte	35
	.uleb128	144
	.byte	3
	.long	.La131-.Ldebug_info0
	.uleb128	14
	.ascii	"FHELPCONTEXT\000"
	.byte	3
	.byte	35
	.uleb128	152
	.byte	3
	.long	.La448-.Ldebug_info0
	.uleb128	14
	.ascii	"FHINT\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La27-.Ldebug_info0
	.uleb128	14
	.ascii	"FIMAGECHANGELINK\000"
	.byte	3
	.byte	35
	.uleb128	168
	.byte	3
	.long	.La625-.Ldebug_info0
	.uleb128	14
	.ascii	"FIMAGEINDEX\000"
	.byte	3
	.byte	35
	.uleb128	176
	.byte	3
	.long	.La1133-.Ldebug_info0
	.uleb128	14
	.ascii	"FITEMS\000"
	.byte	3
	.byte	35
	.uleb128	184
	.byte	3
	.long	.La158-.Ldebug_info0
	.uleb128	14
	.ascii	"FMENU\000"
	.byte	3
	.byte	35
	.uleb128	192
	.byte	3
	.long	.La544-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	200
	.byte	3
	.long	.La1119-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCLICK\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FONDRAWITEM\000"
	.byte	3
	.byte	35
	.uleb128	232
	.byte	3
	.long	.La1117-.Ldebug_info0
	.uleb128	14
	.ascii	"FONMEASUREITEM\000"
	.byte	3
	.byte	35
	.uleb128	248
	.byte	3
	.long	.La1121-.Ldebug_info0
	.uleb128	14
	.ascii	"FPARENT\000"
	.byte	3
	.byte	35
	.uleb128	264
	.byte	3
	.long	.La549-.Ldebug_info0
	.uleb128	14
	.ascii	"FMENUITEMHANDLERS\000"
	.byte	3
	.byte	35
	.uleb128	272
	.byte	3
	.long	.La1135-.Ldebug_info0
	.uleb128	14
	.ascii	"FSUBMENUIMAGES\000"
	.byte	3
	.byte	35
	.uleb128	280
	.byte	3
	.long	.La628-.Ldebug_info0
	.uleb128	14
	.ascii	"FSHORTCUT\000"
	.byte	3
	.byte	35
	.uleb128	288
	.byte	3
	.long	.La256-.Ldebug_info0
	.uleb128	14
	.ascii	"FSHORTCUTKEY2\000"
	.byte	3
	.byte	35
	.uleb128	290
	.byte	3
	.long	.La256-.Ldebug_info0
	.uleb128	14
	.ascii	"FGROUPINDEX\000"
	.byte	3
	.byte	35
	.uleb128	292
	.byte	3
	.long	.La109-.Ldebug_info0
	.uleb128	14
	.ascii	"FRADIOITEM\000"
	.byte	3
	.byte	35
	.uleb128	293
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FRIGHTJUSTIFY\000"
	.byte	3
	.byte	35
	.uleb128	294
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FSHOWALWAYSCHECKABLE\000"
	.byte	3
	.byte	35
	.uleb128	295
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FVISIBLE\000"
	.byte	3
	.byte	35
	.uleb128	296
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FBITMAPISVALID\000"
	.byte	3
	.byte	35
	.uleb128	297
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FAUTOCHECK\000"
	.byte	3
	.byte	35
	.uleb128	298
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FCHECKED\000"
	.byte	3
	.byte	35
	.uleb128	299
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FDEFAULT\000"
	.byte	3
	.byte	35
	.uleb128	300
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FENABLED\000"
	.byte	3
	.byte	35
	.uleb128	301
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FCOMMAND\000"
	.byte	3
	.byte	35
	.uleb128	302
	.byte	2
	.long	.La247-.Ldebug_info0
	.uleb128	14
	.ascii	"ACTIONLINK\000"
	.byte	2
	.byte	35
	.uleb128	112
	.byte	3
	.long	.La1128-.Ldebug_info0
	.uleb128	11
	.ascii	"FCOMPSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	304
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"MENU\000"
	.byte	3
	.byte	35
	.uleb128	192
	.byte	3
	.long	.La544-.Ldebug_info0
	.uleb128	14
	.ascii	"COMMAND\000"
	.byte	3
	.byte	35
	.uleb128	302
	.byte	2
	.long	.La247-.Ldebug_info0
	.uleb128	14
	.ascii	"AUTOCHECK\000"
	.byte	3
	.byte	35
	.uleb128	298
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"CAPTION\000"
	.byte	2
	.byte	35
	.uleb128	120
	.byte	3
	.long	.La282-.Ldebug_info0
	.uleb128	14
	.ascii	"CHECKED\000"
	.byte	3
	.byte	35
	.uleb128	299
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"DEFAULT\000"
	.byte	3
	.byte	35
	.uleb128	300
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"ENABLED\000"
	.byte	3
	.byte	35
	.uleb128	301
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"GROUPINDEX\000"
	.byte	3
	.byte	35
	.uleb128	292
	.byte	3
	.long	.La109-.Ldebug_info0
	.uleb128	14
	.ascii	"GLYPHSHOWMODE\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La1131-.Ldebug_info0
	.uleb128	14
	.ascii	"HELPCONTEXT\000"
	.byte	3
	.byte	35
	.uleb128	152
	.byte	3
	.long	.La448-.Ldebug_info0
	.uleb128	14
	.ascii	"HINT\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La282-.Ldebug_info0
	.uleb128	14
	.ascii	"IMAGEINDEX\000"
	.byte	3
	.byte	35
	.uleb128	176
	.byte	3
	.long	.La1133-.Ldebug_info0
	.uleb128	14
	.ascii	"RADIOITEM\000"
	.byte	3
	.byte	35
	.uleb128	293
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"RIGHTJUSTIFY\000"
	.byte	3
	.byte	35
	.uleb128	294
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"SHORTCUT\000"
	.byte	3
	.byte	35
	.uleb128	288
	.byte	3
	.long	.La256-.Ldebug_info0
	.uleb128	14
	.ascii	"SHORTCUTKEY2\000"
	.byte	3
	.byte	35
	.uleb128	290
	.byte	3
	.long	.La256-.Ldebug_info0
	.uleb128	14
	.ascii	"SHOWALWAYSCHECKABLE\000"
	.byte	3
	.byte	35
	.uleb128	295
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"SUBMENUIMAGES\000"
	.byte	3
	.byte	35
	.uleb128	280
	.byte	3
	.long	.La628-.Ldebug_info0
	.uleb128	14
	.ascii	"VISIBLE\000"
	.byte	3
	.byte	35
	.uleb128	296
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCLICK\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONDRAWITEM\000"
	.byte	3
	.byte	35
	.uleb128	232
	.byte	3
	.long	.La1117-.Ldebug_info0
	.uleb128	14
	.ascii	"ONMEASUREITEM\000"
	.byte	3
	.byte	35
	.uleb128	248
	.byte	3
	.long	.La1121-.Ldebug_info0
# Procdef GetBitmap(<TMenuItem>):TBitmap;
	.uleb128	15
	.ascii	"GETBITMAP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La204-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef GetCount(<TMenuItem>):LongInt;
	.uleb128	15
	.ascii	"GETCOUNT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef GetItem(<TMenuItem>;LongInt):TMenuItem;
	.uleb128	15
	.ascii	"GETITEM\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La549-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetMenuIndex(<TMenuItem>):LongInt;
	.uleb128	15
	.ascii	"GETMENUINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef GetParent(<TMenuItem>):TMenuItem;
	.uleb128	15
	.ascii	"GETPARENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La549-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef IsBitmapStored(<TMenuItem>):Boolean;
	.uleb128	15
	.ascii	"ISBITMAPSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef IsCaptionStored(<TMenuItem>):Boolean;
	.uleb128	15
	.ascii	"ISCAPTIONSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef IsCheckedStored(<TMenuItem>):Boolean;
	.uleb128	15
	.ascii	"ISCHECKEDSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef IsEnabledStored(<TMenuItem>):Boolean;
	.uleb128	15
	.ascii	"ISENABLEDSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef IsHelpContextStored(<TMenuItem>):Boolean;
	.uleb128	15
	.ascii	"ISHELPCONTEXTSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef IsHintStored(<TMenuItem>):Boolean;
	.uleb128	15
	.ascii	"ISHINTSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef IsImageIndexStored(<TMenuItem>):Boolean;
	.uleb128	15
	.ascii	"ISIMAGEINDEXSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef IsShortCutStored(<TMenuItem>):Boolean;
	.uleb128	15
	.ascii	"ISSHORTCUTSTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef IsVisibleStored(<TMenuItem>):Boolean;
	.uleb128	15
	.ascii	"ISVISIBLESTORED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef SetAutoCheck(<TMenuItem>;const Boolean);
	.uleb128	25
	.ascii	"SETAUTOCHECK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetCaption(<TMenuItem>;const TTranslateString);
	.uleb128	25
	.ascii	"SETCAPTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La282-.Ldebug_info0
	.byte	0
# Procdef SetChecked(<TMenuItem>;Boolean);
	.uleb128	25
	.ascii	"SETCHECKED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetDefault(<TMenuItem>;Boolean);
	.uleb128	25
	.ascii	"SETDEFAULT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetEnabled(<TMenuItem>;Boolean);
	.uleb128	25
	.ascii	"SETENABLED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetBitmap(<TMenuItem>;const TBitmap);
	.uleb128	25
	.ascii	"SETBITMAP\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La204-.Ldebug_info0
	.byte	0
# Procdef SetGlyphShowMode(<TMenuItem>;const TGlyphShowMode);
	.uleb128	25
	.ascii	"SETGLYPHSHOWMODE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La1131-.Ldebug_info0
	.byte	0
# Procdef SetMenuIndex(<TMenuItem>;LongInt);
	.uleb128	25
	.ascii	"SETMENUINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetRadioItem(<TMenuItem>;const Boolean);
	.uleb128	25
	.ascii	"SETRADIOITEM\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetRightJustify(<TMenuItem>;const Boolean);
	.uleb128	25
	.ascii	"SETRIGHTJUSTIFY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetShowAlwaysCheckable(<TMenuItem>;const Boolean);
	.uleb128	25
	.ascii	"SETSHOWALWAYSCHECKABLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetSubMenuImages(<TMenuItem>;const TCustomImageList);
	.uleb128	25
	.ascii	"SETSUBMENUIMAGES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La628-.Ldebug_info0
	.byte	0
# Procdef ShortcutChanged(<TMenuItem>);
	.uleb128	25
	.ascii	"SHORTCUTCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef SubItemChanged(<TMenuItem>;TObject;TMenuItem;Boolean);
	.uleb128	25
	.ascii	"SUBITEMCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La549-.Ldebug_info0
# Symbol REBUILD
	.uleb128	19
	.ascii	"REBUILD\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef TurnSiblingsOff(<TMenuItem>);
	.uleb128	25
	.ascii	"TURNSIBLINGSOFF\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef DoActionChange(<TMenuItem>;TObject);
	.uleb128	25
	.ascii	"DOACTIONCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TMenuItem>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La1137-.Ldebug_info0
	.byte	0
# Procdef ActionChange(<TMenuItem>;TObject;Boolean);
	.uleb128	17
	.ascii	"ACTIONCHANGE\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
# Symbol CHECKDEFAULTS
	.uleb128	19
	.ascii	"CHECKDEFAULTS\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef AssignTo(<TMenuItem>;TPersistent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol DEST
	.uleb128	19
	.ascii	"DEST\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef BitmapChange(<TMenuItem>;TObject);
	.uleb128	25
	.ascii	"BITMAPCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef GetAction(<TMenuItem>):TBasicAction;
	.uleb128	15
	.ascii	"GETACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La197-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef GetActionLinkClass(<TMenuItem>):Class Of TMenuActionLink;
	.uleb128	26
	.ascii	"GETACTIONLINKCLASS\000"
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
	.long	.La1139-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef GetHandle(<TMenuItem>):QWord;
	.uleb128	15
	.ascii	"GETHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef DoClicked(<TMenuItem>;var <Formal type>);
	.uleb128	25
	.ascii	"DOCLICKED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol MSG
	.uleb128	19
	.ascii	"MSG\000"
	.long	.La53-.Ldebug_info0
	.byte	0
# Procdef CheckChildrenHandles(<TMenuItem>);
	.uleb128	25
	.ascii	"CHECKCHILDRENHANDLES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef CreateHandle(<TMenuItem>);
	.uleb128	17
	.ascii	"CREATEHANDLE\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef DestroyHandle(<TMenuItem>);
	.uleb128	17
	.ascii	"DESTROYHANDLE\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef Loaded(<TMenuItem>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef Notification(<TMenuItem>;TComponent;TOperation);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
# Symbol OPERATION
	.uleb128	19
	.ascii	"OPERATION\000"
	.long	.La192-.Ldebug_info0
	.byte	0
# Procdef GetChildren(<TMenuItem>;TGetChildProc;TComponent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol PROC
	.uleb128	19
	.ascii	"PROC\000"
	.long	.La243-.Ldebug_info0
# Symbol ROOT
	.uleb128	19
	.ascii	"ROOT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef InitiateActions(<TMenuItem>);
	.uleb128	25
	.ascii	"INITIATEACTIONS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef MenuChanged(<TMenuItem>;Boolean);
	.uleb128	25
	.ascii	"MENUCHANGED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol REBUILD
	.uleb128	19
	.ascii	"REBUILD\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetAction(<TMenuItem>;TBasicAction);
	.uleb128	25
	.ascii	"SETACTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol NEWACTION
	.uleb128	19
	.ascii	"NEWACTION\000"
	.long	.La197-.Ldebug_info0
	.byte	0
# Procdef SetChildOrder(<TMenuItem>;TComponent;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol CHILD
	.uleb128	19
	.ascii	"CHILD\000"
	.long	.La33-.Ldebug_info0
# Symbol ORDER
	.uleb128	19
	.ascii	"ORDER\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetGroupIndex(<TMenuItem>;Byte);
	.uleb128	25
	.ascii	"SETGROUPINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La109-.Ldebug_info0
	.byte	0
# Procdef SetImageIndex(<TMenuItem>;TImageIndex);
	.uleb128	25
	.ascii	"SETIMAGEINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La1133-.Ldebug_info0
	.byte	0
# Procdef SetParentComponent(<TMenuItem>;TComponent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef SetShortCut(<TMenuItem>;const TShortCut);
	.uleb128	25
	.ascii	"SETSHORTCUT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La256-.Ldebug_info0
	.byte	0
# Procdef SetShortCutKey2(<TMenuItem>;const TShortCut);
	.uleb128	25
	.ascii	"SETSHORTCUTKEY2\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La256-.Ldebug_info0
	.byte	0
# Procdef SetVisible(<TMenuItem>;Boolean);
	.uleb128	25
	.ascii	"SETVISIBLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef UpdateImage(<TMenuItem>);
	.uleb128	25
	.ascii	"UPDATEIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef UpdateImages(<TMenuItem>);
	.uleb128	25
	.ascii	"UPDATEIMAGES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef UpdateWSIcon(<TMenuItem>);
	.uleb128	25
	.ascii	"UPDATEWSICON\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef ImageListChange(<TMenuItem>;TObject);
	.uleb128	25
	.ascii	"IMAGELISTCHANGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol SENDER
	.uleb128	19
	.ascii	"SENDER\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TMenuItem>;<Pointer>;TComponent);
	.uleb128	18
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol THEOWNER
	.uleb128	19
	.ascii	"THEOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TMenuItem>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Find(<TMenuItem>;const AnsiString):TMenuItem;
	.uleb128	22
	.ascii	"FIND\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol ACAPTION
	.uleb128	19
	.ascii	"ACAPTION\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef GetEnumerator(<TMenuItem>):TMenuItemEnumerator;
	.uleb128	22
	.ascii	"GETENUMERATOR\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La1141-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef GetImageList(<TMenuItem>):TCustomImageList;
	.uleb128	18
	.ascii	"GETIMAGELIST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	488
	.byte	34
	.long	.La628-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef GetParentComponent(<TMenuItem>):TComponent;
	.uleb128	18
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
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef GetParentMenu(<TMenuItem>):TMenu;
	.uleb128	18
	.ascii	"GETPARENTMENU\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	496
	.byte	34
	.long	.La544-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef GetIsRightToLeft(<TMenuItem>):Boolean;
	.uleb128	18
	.ascii	"GETISRIGHTTOLEFT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	504
	.byte	34
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef HandleAllocated(<TMenuItem>):Boolean;
	.uleb128	22
	.ascii	"HANDLEALLOCATED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef HasIcon(<TMenuItem>):Boolean;
	.uleb128	18
	.ascii	"HASICON\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	512
	.byte	34
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef HasParent(<TMenuItem>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef InitiateAction(<TMenuItem>);
	.uleb128	23
	.ascii	"INITIATEACTION\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef IntfDoSelect(<TMenuItem>);
	.uleb128	23
	.ascii	"INTFDOSELECT\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef IndexOf(<TMenuItem>;TMenuItem):LongInt;
	.uleb128	22
	.ascii	"INDEXOF\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol ITEM
	.uleb128	19
	.ascii	"ITEM\000"
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef IndexOfCaption(<TMenuItem>;const AnsiString):LongInt;
	.uleb128	18
	.ascii	"INDEXOFCAPTION\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	536
	.byte	34
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol ACAPTION
	.uleb128	19
	.ascii	"ACAPTION\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef VisibleIndexOf(<TMenuItem>;TMenuItem):LongInt;
	.uleb128	22
	.ascii	"VISIBLEINDEXOF\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol ITEM
	.uleb128	19
	.ascii	"ITEM\000"
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef Add(<TMenuItem>;TMenuItem);
	.uleb128	20
	.ascii	"ADD\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol ITEM
	.uleb128	19
	.ascii	"ITEM\000"
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef Add(<TMenuItem>;const {Open} Array Of TMenuItem;<const Int64>);
	.uleb128	20
	.ascii	"ADD\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol AITEMS
	.uleb128	19
	.ascii	"AITEMS\000"
	.long	.La1144-.Ldebug_info0
# Symbol highAITEMS
	.uleb128	19
	.ascii	"highAITEMS\000"
	.long	.La71-.Ldebug_info0
# Definition {Open} Array Of TMenuItem
.La1144:
	.uleb128	27
	.long	.La549-.Ldebug_info0
	.uleb128	28
	.sleb128	0
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.byte	0
.La1145:
	.uleb128	7
	.long	.La1144-.Ldebug_info0
	.byte	0
# Procdef AddSeparator(<TMenuItem>);
	.uleb128	20
	.ascii	"ADDSEPARATOR\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef Click(<TMenuItem>);
	.uleb128	23
	.ascii	"CLICK\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef Delete(<TMenuItem>;LongInt);
	.uleb128	20
	.ascii	"DELETE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef HandleNeeded(<TMenuItem>);
	.uleb128	23
	.ascii	"HANDLENEEDED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	552
	.byte	34
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef Insert(<TMenuItem>;LongInt;TMenuItem);
	.uleb128	20
	.ascii	"INSERT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol ITEM
	.uleb128	19
	.ascii	"ITEM\000"
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef RecreateHandle(<TMenuItem>);
	.uleb128	23
	.ascii	"RECREATEHANDLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	560
	.byte	34
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef Remove(<TMenuItem>;TMenuItem);
	.uleb128	20
	.ascii	"REMOVE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol ITEM
	.uleb128	19
	.ascii	"ITEM\000"
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef IsCheckItem(<TMenuItem>):Boolean;
	.uleb128	18
	.ascii	"ISCHECKITEM\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	568
	.byte	34
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef IsLine(<TMenuItem>):Boolean;
	.uleb128	22
	.ascii	"ISLINE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef IsInMenuBar(<TMenuItem>):Boolean;
	.uleb128	18
	.ascii	"ISINMENUBAR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	576
	.byte	34
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef Clear(<TMenuItem>);
	.uleb128	20
	.ascii	"CLEAR\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef HasBitmap(<TMenuItem>):Boolean;
	.uleb128	22
	.ascii	"HASBITMAP\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef GetIconSize(<TMenuItem>):<record type>;
	.uleb128	18
	.ascii	"GETICONSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	584
	.byte	34
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef RemoveAllHandlersOfObject(<TMenuItem>;TObject);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol ANOBJECT
	.uleb128	19
	.ascii	"ANOBJECT\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef AddHandlerOnDestroy(<TMenuItem>;const TNotifyEvent;Boolean="FALSE");
	.uleb128	20
	.ascii	"ADDHANDLERONDESTROY\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol ONDESTROYEVENT
	.uleb128	19
	.ascii	"ONDESTROYEVENT\000"
	.long	.La140-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	19
	.ascii	"ASFIRST\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef RemoveHandlerOnDestroy(<TMenuItem>;const TNotifyEvent);
	.uleb128	20
	.ascii	"REMOVEHANDLERONDESTROY\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol ONDESTROYEVENT
	.uleb128	19
	.ascii	"ONDESTROYEVENT\000"
	.long	.La140-.Ldebug_info0
	.byte	0
# Procdef AddHandler(<TMenuItem>;TMenuItemHandlerType;const TMethod;Boolean="FALSE");
	.uleb128	20
	.ascii	"ADDHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol HANDLERTYPE
	.uleb128	19
	.ascii	"HANDLERTYPE\000"
	.long	.La1146-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La168-.Ldebug_info0
# Symbol ASFIRST
	.uleb128	19
	.ascii	"ASFIRST\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef RemoveHandler(<TMenuItem>;TMenuItemHandlerType;const TMethod);
	.uleb128	20
	.ascii	"REMOVEHANDLER\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol HANDLERTYPE
	.uleb128	19
	.ascii	"HANDLERTYPE\000"
	.long	.La1146-.Ldebug_info0
# Symbol AMETHOD
	.uleb128	19
	.ascii	"AMETHOD\000"
	.long	.La168-.Ldebug_info0
	.byte	0
# Procdef MenuVisibleIndex(<TMenuItem>):LongInt;
	.uleb128	22
	.ascii	"MENUVISIBLEINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
	.byte	0
# Procdef WriteDebugReport(<TMenuItem>;const AnsiString);
	.uleb128	20
	.ascii	"WRITEDEBUGREPORT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La549-.Ldebug_info0
# Symbol PREFIX
	.uleb128	19
	.ascii	"PREFIX\000"
	.long	.La27-.Ldebug_info0
	.byte	0
	.byte	0
.La550:
	.uleb128	7
	.long	.La549-.Ldebug_info0
# Definition {Open} Array Of AnsiString
.La562:
	.uleb128	27
	.long	.La27-.Ldebug_info0
	.uleb128	28
	.sleb128	0
	.uleb128	8
	.long	.La71-.Ldebug_info0
	.byte	0
.La563:
	.uleb128	7
	.long	.La562-.Ldebug_info0
# Definition TListNotification
.La572:
	.uleb128	5
	.ascii	"TLISTNOTIFICATION\000"
	.long	.La1148-.Ldebug_info0
.La1148:
	.uleb128	36
	.ascii	"TLISTNOTIFICATION\000"
	.byte	4
	.uleb128	37
	.ascii	"LNADDED\000"
	.long	0
	.uleb128	37
	.ascii	"LNEXTRACTED\000"
	.long	1
	.uleb128	37
	.ascii	"LNDELETED\000"
	.long	2
	.byte	0
.La573:
	.uleb128	7
	.long	.La572-.Ldebug_info0
# Definition PPointerList
.La574:
	.uleb128	5
	.ascii	"PPOINTERLIST\000"
	.long	.La1149-.Ldebug_info0
.La1149:
	.uleb128	8
	.long	.La1150-.Ldebug_info0
.La575:
	.uleb128	7
	.long	.La574-.Ldebug_info0
# Definition TFPObservedOperation
.La576:
	.uleb128	5
	.ascii	"TFPOBSERVEDOPERATION\000"
	.long	.La1152-.Ldebug_info0
.La1152:
	.uleb128	36
	.ascii	"TFPOBSERVEDOPERATION\000"
	.byte	4
	.uleb128	37
	.ascii	"OOCHANGE\000"
	.long	0
	.uleb128	37
	.ascii	"OOFREE\000"
	.long	1
	.uleb128	37
	.ascii	"OOADDITEM\000"
	.long	2
	.uleb128	37
	.ascii	"OODELETEITEM\000"
	.long	3
	.uleb128	37
	.ascii	"OOCUSTOM\000"
	.long	4
	.byte	0
.La577:
	.uleb128	7
	.long	.La576-.Ldebug_info0
# Definition TList.Class Of TList
.La578:
	.uleb128	8
	.long	.La295-.Ldebug_info0
.La579:
	.uleb128	7
	.long	.La578-.Ldebug_info0
# Definition TListEnumerator
.La580:
	.uleb128	5
	.ascii	"TLISTENUMERATOR\000"
	.long	.La1153-.Ldebug_info0
.La1153:
	.uleb128	8
	.long	.La582-.Ldebug_info0
.La582:
	.uleb128	9
	.ascii	"TLISTENUMERATOR\000"
	.uleb128	24
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La22-.Ldebug_info0
	.uleb128	14
	.ascii	"FLIST\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La158-.Ldebug_info0
	.uleb128	14
	.ascii	"FPOSITION\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La120-.Ldebug_info0
# Procdef constructor Create(<TListEnumerator>;<Pointer>;TList);
	.uleb128	22
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La580-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La580-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol ALIST
	.uleb128	19
	.ascii	"ALIST\000"
	.long	.La158-.Ldebug_info0
	.byte	0
# Procdef GetCurrent(<TListEnumerator>):^untyped;
	.uleb128	22
	.ascii	"GETCURRENT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La31-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La580-.Ldebug_info0
	.byte	0
# Procdef MoveNext(<TListEnumerator>):Boolean;
	.uleb128	22
	.ascii	"MOVENEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La580-.Ldebug_info0
	.byte	0
	.byte	0
.La581:
	.uleb128	7
	.long	.La580-.Ldebug_info0
# Definition TListAssignOp
.La583:
	.uleb128	5
	.ascii	"TLISTASSIGNOP\000"
	.long	.La1154-.Ldebug_info0
.La1154:
	.uleb128	36
	.ascii	"TLISTASSIGNOP\000"
	.byte	4
	.uleb128	37
	.ascii	"LACOPY\000"
	.long	0
	.uleb128	37
	.ascii	"LAAND\000"
	.long	1
	.uleb128	37
	.ascii	"LAOR\000"
	.long	2
	.uleb128	37
	.ascii	"LAXOR\000"
	.long	3
	.uleb128	37
	.ascii	"LASRCUNIQUE\000"
	.long	4
	.uleb128	37
	.ascii	"LADESTUNIQUE\000"
	.long	5
	.byte	0
.La584:
	.uleb128	7
	.long	.La583-.Ldebug_info0
# Definition <procedure variable type of function(Pointer;Pointer):LongInt;Register>
.La585:
	.uleb128	5
	.ascii	"TLISTSORTCOMPARE\000"
	.long	.La1155-.Ldebug_info0
.La1155:
	.uleb128	42
	.ascii	"TLISTSORTCOMPARE\000"
	.byte	1
	.long	.La120-.Ldebug_info0
	.uleb128	19
	.ascii	"ITEM1\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"ITEM2\000"
	.long	.La31-.Ldebug_info0
	.byte	0
.La586:
	.uleb128	7
	.long	.La585-.Ldebug_info0
# Definition tagMonitorInfo
.La589:
	.uleb128	5
	.ascii	"TAGMONITORINFO\000"
	.long	.La1156-.Ldebug_info0
.La1156:
	.uleb128	32
	.ascii	"TAGMONITORINFO\000"
	.uleb128	40
	.uleb128	11
	.ascii	"CBSIZE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"RCMONITOR\000"
	.byte	2
	.byte	35
	.uleb128	4
	.long	.La186-.Ldebug_info0
	.uleb128	11
	.ascii	"RCWORK\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La186-.Ldebug_info0
	.uleb128	11
	.ascii	"DWFLAGS\000"
	.byte	2
	.byte	35
	.uleb128	36
	.long	.La293-.Ldebug_info0
	.byte	0
.La590:
	.uleb128	7
	.long	.La589-.Ldebug_info0
# Definition WordBool
.La594:
	.uleb128	5
	.ascii	"WORDBOOL\000"
	.long	.La1157-.Ldebug_info0
.La1157:
	.uleb128	29
	.ascii	"WordBool\000"
	.byte	2
	.byte	2
.La595:
	.uleb128	7
	.long	.La594-.Ldebug_info0
# Definition TDWordFiller
.La597:
	.uleb128	5
	.ascii	"TDWORDFILLER\000"
	.long	.La1158-.Ldebug_info0
.La1158:
	.uleb128	32
	.ascii	"TDWORDFILLER\000"
	.uleb128	4
	.uleb128	11
	.ascii	"FILLER\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1159-.Ldebug_info0
	.byte	0
.La598:
	.uleb128	7
	.long	.La597-.Ldebug_info0
# Definition PHelpInfo
.La600:
	.uleb128	5
	.ascii	"PHELPINFO\000"
	.long	.La1161-.Ldebug_info0
.La1161:
	.uleb128	8
	.long	.La1162-.Ldebug_info0
.La601:
	.uleb128	7
	.long	.La600-.Ldebug_info0
# Definition SmallInt
.La603:
	.uleb128	5
	.ascii	"SMALLINT\000"
	.long	.La1164-.Ldebug_info0
.La1164:
	.uleb128	29
	.ascii	"SMALLINT\000"
	.byte	5
	.byte	2
.La604:
	.uleb128	7
	.long	.La603-.Ldebug_info0
# Definition PWindowPos
.La608:
	.uleb128	5
	.ascii	"PWINDOWPOS\000"
	.long	.La1165-.Ldebug_info0
.La1165:
	.uleb128	8
	.long	.La1166-.Ldebug_info0
.La609:
	.uleb128	7
	.long	.La608-.Ldebug_info0
# Definition TArray4IntegerType
.La611:
	.uleb128	5
	.ascii	"TARRAY4INTEGERTYPE\000"
	.long	.La1168-.Ldebug_info0
.La1168:
	.uleb128	51
	.ascii	"TARRAY4INTEGERTYPE\000"
	.uleb128	16
	.long	.La120-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.sleb128	3
	.uleb128	4
	.long	.La823-.Ldebug_info0
	.byte	0
.La612:
	.uleb128	7
	.long	.La611-.Ldebug_info0
# Definition TSplitRectType
.La615:
	.uleb128	5
	.ascii	"TSPLITRECTTYPE\000"
	.long	.La1169-.Ldebug_info0
.La1169:
	.uleb128	36
	.ascii	"TSPLITRECTTYPE\000"
	.byte	4
	.uleb128	37
	.ascii	"SRLEFT\000"
	.long	0
	.uleb128	37
	.ascii	"SRRIGHT\000"
	.long	1
	.uleb128	37
	.ascii	"SRTOP\000"
	.long	2
	.uleb128	37
	.ascii	"SRBOTTOM\000"
	.long	3
	.byte	0
.La616:
	.uleb128	7
	.long	.La615-.Ldebug_info0
# Definition tagWNDCLASSA
.La618:
	.uleb128	5
	.ascii	"TAGWNDCLASSA\000"
	.long	.La1170-.Ldebug_info0
.La1170:
	.uleb128	32
	.ascii	"TAGWNDCLASSA\000"
	.uleb128	72
	.uleb128	11
	.ascii	"STYLE\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La293-.Ldebug_info0
	.uleb128	11
	.ascii	"LPFNWNDPROC\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La31-.Ldebug_info0
	.uleb128	11
	.ascii	"CBCLSEXTRA\000"
	.byte	2
	.byte	35
	.uleb128	16
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"CBWNDEXTRA\000"
	.byte	2
	.byte	35
	.uleb128	20
	.long	.La120-.Ldebug_info0
	.uleb128	11
	.ascii	"HINSTANCE\000"
	.byte	2
	.byte	35
	.uleb128	24
	.long	.La131-.Ldebug_info0
	.uleb128	11
	.ascii	"HICON\000"
	.byte	2
	.byte	35
	.uleb128	32
	.long	.La131-.Ldebug_info0
	.uleb128	11
	.ascii	"HCURSOR\000"
	.byte	2
	.byte	35
	.uleb128	40
	.long	.La131-.Ldebug_info0
	.uleb128	11
	.ascii	"HBRBACKGROUND\000"
	.byte	2
	.byte	35
	.uleb128	48
	.long	.La131-.Ldebug_info0
	.uleb128	11
	.ascii	"LPSZMENUNAME\000"
	.byte	2
	.byte	35
	.uleb128	56
	.long	.La371-.Ldebug_info0
	.uleb128	11
	.ascii	"LPSZCLASSNAME\000"
	.byte	2
	.byte	35
	.uleb128	64
	.long	.La371-.Ldebug_info0
	.byte	0
.La619:
	.uleb128	7
	.long	.La618-.Ldebug_info0
# Definition TCreateParams.Array[0..63] Of Char
.La620:
	.uleb128	38
	.uleb128	64
	.long	.La216-.Ldebug_info0
	.uleb128	39
	.sleb128	0
	.sleb128	63
	.uleb128	1
	.long	.La823-.Ldebug_info0
	.byte	0
.La621:
	.uleb128	7
	.long	.La620-.Ldebug_info0
# Definition TChangeLink
.La625:
	.uleb128	5
	.ascii	"TCHANGELINK\000"
	.long	.La1171-.Ldebug_info0
.La1171:
	.uleb128	8
	.long	.La627-.Ldebug_info0
.La627:
	.uleb128	9
	.ascii	"TCHANGELINK\000"
	.uleb128	32
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La22-.Ldebug_info0
	.uleb128	14
	.ascii	"FSENDER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La628-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"SENDER\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La628-.Ldebug_info0
# Procdef destructor Destroy(<TChangeLink>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La625-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Change(<TChangeLink>);
	.uleb128	23
	.ascii	"CHANGE\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La625-.Ldebug_info0
	.byte	0
	.byte	0
.La626:
	.uleb128	7
	.long	.La625-.Ldebug_info0
# Definition TCustomImageList
.La628:
	.uleb128	5
	.ascii	"TCUSTOMIMAGELIST\000"
	.long	.La1172-.Ldebug_info0
.La1172:
	.uleb128	8
	.long	.La630-.Ldebug_info0
.La630:
	.uleb128	9
	.ascii	"TCUSTOMIMAGELIST\000"
	.uleb128	288
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1175-.Ldebug_info0
	.uleb128	14
	.ascii	"FREFERENCE\000"
	.byte	3
	.byte	35
	.uleb128	128
	.byte	3
	.long	.La1176-.Ldebug_info0
	.uleb128	14
	.ascii	"FDRAWINGSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La1178-.Ldebug_info0
	.uleb128	14
	.ascii	"FDATA\000"
	.byte	3
	.byte	35
	.uleb128	144
	.byte	3
	.long	.La1180-.Ldebug_info0
	.uleb128	14
	.ascii	"FIMAGETYPE\000"
	.byte	3
	.byte	35
	.uleb128	152
	.byte	3
	.long	.La1182-.Ldebug_info0
	.uleb128	14
	.ascii	"FHEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	156
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FMASKED\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FSHAREIMAGES\000"
	.byte	3
	.byte	35
	.uleb128	161
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FWIDTH\000"
	.byte	3
	.byte	35
	.uleb128	164
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FALLOCBY\000"
	.byte	3
	.byte	35
	.uleb128	168
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FCOUNT\000"
	.byte	3
	.byte	35
	.uleb128	172
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FALLOCCOUNT\000"
	.byte	3
	.byte	35
	.uleb128	176
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FBLENDCOLOR\000"
	.byte	3
	.byte	35
	.uleb128	180
	.byte	3
	.long	.La391-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	184
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FCHANGELINKLIST\000"
	.byte	3
	.byte	35
	.uleb128	200
	.byte	3
	.long	.La158-.Ldebug_info0
	.uleb128	14
	.ascii	"FBKCOLOR\000"
	.byte	3
	.byte	35
	.uleb128	208
	.byte	3
	.long	.La391-.Ldebug_info0
	.uleb128	14
	.ascii	"FCHANGED\000"
	.byte	3
	.byte	35
	.uleb128	212
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FUPDATECOUNT\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FOVERLAYS\000"
	.byte	3
	.byte	35
	.uleb128	220
	.byte	3
	.long	.La1184-.Ldebug_info0
	.uleb128	14
	.ascii	"FHASOVERLAYS\000"
	.byte	3
	.byte	35
	.uleb128	280
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"HASOVERLAYS\000"
	.byte	3
	.byte	35
	.uleb128	280
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"ALLOCBY\000"
	.byte	3
	.byte	35
	.uleb128	168
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"BLENDCOLOR\000"
	.byte	3
	.byte	35
	.uleb128	180
	.byte	3
	.long	.La391-.Ldebug_info0
	.uleb128	14
	.ascii	"BKCOLOR\000"
	.byte	3
	.byte	35
	.uleb128	208
	.byte	3
	.long	.La391-.Ldebug_info0
	.uleb128	14
	.ascii	"COUNT\000"
	.byte	3
	.byte	35
	.uleb128	172
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"DRAWINGSTYLE\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La1178-.Ldebug_info0
	.uleb128	14
	.ascii	"HEIGHT\000"
	.byte	3
	.byte	35
	.uleb128	156
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"WIDTH\000"
	.byte	3
	.byte	35
	.uleb128	164
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCHANGE\000"
	.byte	3
	.byte	35
	.uleb128	184
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"MASKED\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"SHAREIMAGES\000"
	.byte	3
	.byte	35
	.uleb128	161
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"IMAGETYPE\000"
	.byte	3
	.byte	35
	.uleb128	152
	.byte	3
	.long	.La1182-.Ldebug_info0
# Procdef AllocData(<TCustomImageList>;LongInt);
	.uleb128	25
	.ascii	"ALLOCDATA\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol ACOUNT
	.uleb128	19
	.ascii	"ACOUNT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetReference(<TCustomImageList>;<var TWSCustomImageListReference>):TWSCustomImageListReference;
	.uleb128	15
	.ascii	"GETREFERENCE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La1176-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La1176-.Ldebug_info0
	.byte	0
# Procdef InternalInsert(<TCustomImageList>;LongInt;QWord;QWord;LongInt;LongInt);
	.uleb128	25
	.ascii	"INTERNALINSERT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol AIMAGE
	.uleb128	19
	.ascii	"AIMAGE\000"
	.long	.La131-.Ldebug_info0
# Symbol AMASK
	.uleb128	19
	.ascii	"AMASK\000"
	.long	.La131-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef InternalInsert(<TCustomImageList>;LongInt;TRawImage);
	.uleb128	25
	.ascii	"INTERNALINSERT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol ARAWIMAGE
	.uleb128	19
	.ascii	"ARAWIMAGE\000"
	.long	.La1186-.Ldebug_info0
	.byte	0
# Procdef InternalMove(<TCustomImageList>;LongWord;LongWord;Boolean);
	.uleb128	25
	.ascii	"INTERNALMOVE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol ACURINDEX
	.uleb128	19
	.ascii	"ACURINDEX\000"
	.long	.La293-.Ldebug_info0
# Symbol ANEWINDEX
	.uleb128	19
	.ascii	"ANEWINDEX\000"
	.long	.La293-.Ldebug_info0
# Symbol AIGNORECURRENT
	.uleb128	19
	.ascii	"AIGNORECURRENT\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef InternalReplace(<TCustomImageList>;LongInt;QWord;QWord);
	.uleb128	25
	.ascii	"INTERNALREPLACE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol AIMAGE
	.uleb128	19
	.ascii	"AIMAGE\000"
	.long	.La131-.Ldebug_info0
# Symbol AMASK
	.uleb128	19
	.ascii	"AMASK\000"
	.long	.La131-.Ldebug_info0
	.byte	0
# Procdef InternalSetImage(<TCustomImageList>;LongInt;TRawImage):^TRGBAQuad;
	.uleb128	15
	.ascii	"INTERNALSETIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La1188-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol AIMAGE
	.uleb128	19
	.ascii	"AIMAGE\000"
	.long	.La1186-.Ldebug_info0
	.byte	0
# Procdef NotifyChangeLink(<TCustomImageList>);
	.uleb128	25
	.ascii	"NOTIFYCHANGELINK\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
	.byte	0
# Procdef SetBkColor(<TCustomImageList>;const TGraphicsColor);
	.uleb128	25
	.ascii	"SETBKCOLOR\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La391-.Ldebug_info0
	.byte	0
# Procdef SetDrawingStyle(<TCustomImageList>;const TDrawingStyle);
	.uleb128	25
	.ascii	"SETDRAWINGSTYLE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La1178-.Ldebug_info0
	.byte	0
# Procdef SetHeight(<TCustomImageList>;const LongInt);
	.uleb128	25
	.ascii	"SETHEIGHT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetMasked(<TCustomImageList>;const Boolean);
	.uleb128	25
	.ascii	"SETMASKED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetShareImages(<TCustomImageList>;const Boolean);
	.uleb128	25
	.ascii	"SETSHAREIMAGES\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetWidth(<TCustomImageList>;const LongInt);
	.uleb128	25
	.ascii	"SETWIDTH\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef CheckIndex(<TCustomImageList>;LongInt;Boolean="FALSE");
	.uleb128	25
	.ascii	"CHECKINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol AFORINSERT
	.uleb128	19
	.ascii	"AFORINSERT\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef GetReferenceHandle(<TCustomImageList>):QWord;
	.uleb128	26
	.ascii	"GETREFERENCEHANDLE\000"
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
	.long	.La131-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
	.byte	0
# Procdef Initialize(<TCustomImageList>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
	.byte	0
# Procdef DefineProperties(<TCustomImageList>;TFiler);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol FILER
	.uleb128	19
	.ascii	"FILER\000"
	.long	.La240-.Ldebug_info0
	.byte	0
# Procdef SetWidthHeight(<TCustomImageList>;LongInt;LongInt);
	.uleb128	17
	.ascii	"SETWIDTHHEIGHT\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol NEWWIDTH
	.uleb128	19
	.ascii	"NEWWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol NEWHEIGHT
	.uleb128	19
	.ascii	"NEWHEIGHT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef ClearOverlays(<TCustomImageList>);
	.uleb128	25
	.ascii	"CLEAROVERLAYS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
	.byte	0
# Procdef class WSRegisterClass(<Class Of TCustomImageList>);
	.uleb128	17
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
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La1190-.Ldebug_info0
	.byte	0
# Procdef WSCreateReference(<TCustomImageList>;TCreateParams):^TWSReference;
	.uleb128	26
	.ascii	"WSCREATEREFERENCE\000"
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
	.long	.La1192-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol APARAMS
	.uleb128	19
	.ascii	"APARAMS\000"
	.long	.La188-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TCustomImageList>;<Pointer>;TComponent);
	.uleb128	18
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
	.long	.La628-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol AOWNER
	.uleb128	19
	.ascii	"AOWNER\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef constructor CreateSize(<TCustomImageList>;<Pointer>;LongInt;LongInt);
	.uleb128	22
	.ascii	"CREATESIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TCustomImageList>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef AssignTo(<TCustomImageList>;TPersistent);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol DEST
	.uleb128	19
	.ascii	"DEST\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef Assign(<TCustomImageList>;TPersistent);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol SOURCE
	.uleb128	19
	.ascii	"SOURCE\000"
	.long	.La221-.Ldebug_info0
	.byte	0
# Procdef WriteData(<TCustomImageList>;TStream);
	.uleb128	23
	.ascii	"WRITEDATA\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol ASTREAM
	.uleb128	19
	.ascii	"ASTREAM\000"
	.long	.La670-.Ldebug_info0
	.byte	0
# Procdef ReadData(<TCustomImageList>;TStream);
	.uleb128	23
	.ascii	"READDATA\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol ASTREAM
	.uleb128	19
	.ascii	"ASTREAM\000"
	.long	.La670-.Ldebug_info0
	.byte	0
# Procdef Equals(<TCustomImageList>;TObject):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol OBJ
	.uleb128	19
	.ascii	"OBJ\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef BeginUpdate(<TCustomImageList>);
	.uleb128	20
	.ascii	"BEGINUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
	.byte	0
# Procdef EndUpdate(<TCustomImageList>);
	.uleb128	20
	.ascii	"ENDUPDATE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
	.byte	0
# Procdef Add(<TCustomImageList>;TCustomBitmap;TCustomBitmap):LongInt;
	.uleb128	22
	.ascii	"ADD\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol IMAGE
	.uleb128	19
	.ascii	"IMAGE\000"
	.long	.La853-.Ldebug_info0
# Symbol MASK
	.uleb128	19
	.ascii	"MASK\000"
	.long	.La853-.Ldebug_info0
	.byte	0
# Procdef AddIcon(<TCustomImageList>;TCustomIcon):LongInt;
	.uleb128	22
	.ascii	"ADDICON\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol IMAGE
	.uleb128	19
	.ascii	"IMAGE\000"
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef AddImages(<TCustomImageList>;TCustomImageList);
	.uleb128	20
	.ascii	"ADDIMAGES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La628-.Ldebug_info0
	.byte	0
# Procdef AddMasked(<TCustomImageList>;TBitmap;TGraphicsColor):LongInt;
	.uleb128	22
	.ascii	"ADDMASKED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol IMAGE
	.uleb128	19
	.ascii	"IMAGE\000"
	.long	.La204-.Ldebug_info0
# Symbol MASKCOLOR
	.uleb128	19
	.ascii	"MASKCOLOR\000"
	.long	.La391-.Ldebug_info0
	.byte	0
# Procdef AddLazarusResource(<TCustomImageList>;const AnsiString;TGraphicsColor="536870911"):LongInt;
	.uleb128	22
	.ascii	"ADDLAZARUSRESOURCE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol RESOURCENAME
	.uleb128	19
	.ascii	"RESOURCENAME\000"
	.long	.La27-.Ldebug_info0
# Symbol MASKCOLOR
	.uleb128	19
	.ascii	"MASKCOLOR\000"
	.long	.La391-.Ldebug_info0
	.byte	0
# Procdef AddResourceName(<TCustomImageList>;QWord;const AnsiString;TGraphicsColor="536870911"):LongInt;
	.uleb128	22
	.ascii	"ADDRESOURCENAME\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol INSTANCE
	.uleb128	19
	.ascii	"INSTANCE\000"
	.long	.La131-.Ldebug_info0
# Symbol RESOURCENAME
	.uleb128	19
	.ascii	"RESOURCENAME\000"
	.long	.La27-.Ldebug_info0
# Symbol MASKCOLOR
	.uleb128	19
	.ascii	"MASKCOLOR\000"
	.long	.La391-.Ldebug_info0
	.byte	0
# Procdef Change(<TCustomImageList>);
	.uleb128	20
	.ascii	"CHANGE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
	.byte	0
# Procdef Clear(<TCustomImageList>);
	.uleb128	20
	.ascii	"CLEAR\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
	.byte	0
# Procdef Delete(<TCustomImageList>;LongInt);
	.uleb128	20
	.ascii	"DELETE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Draw(<TCustomImageList>;TCanvas;LongInt;LongInt;LongInt;Boolean="TRUE");
	.uleb128	20
	.ascii	"DRAW\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol ACANVAS
	.uleb128	19
	.ascii	"ACANVAS\000"
	.long	.La404-.Ldebug_info0
# Symbol AX
	.uleb128	19
	.ascii	"AX\000"
	.long	.La120-.Ldebug_info0
# Symbol AY
	.uleb128	19
	.ascii	"AY\000"
	.long	.La120-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol AENABLED
	.uleb128	19
	.ascii	"AENABLED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef Draw(<TCustomImageList>;TCanvas;LongInt;LongInt;LongInt;TGraphicsDrawEffect);
	.uleb128	20
	.ascii	"DRAW\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol ACANVAS
	.uleb128	19
	.ascii	"ACANVAS\000"
	.long	.La404-.Ldebug_info0
# Symbol AX
	.uleb128	19
	.ascii	"AX\000"
	.long	.La120-.Ldebug_info0
# Symbol AY
	.uleb128	19
	.ascii	"AY\000"
	.long	.La120-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol ADRAWEFFECT
	.uleb128	19
	.ascii	"ADRAWEFFECT\000"
	.long	.La1194-.Ldebug_info0
	.byte	0
# Procdef Draw(<TCustomImageList>;TCanvas;LongInt;LongInt;LongInt;TDrawingStyle;TImageType;Boolean="TRUE");
	.uleb128	20
	.ascii	"DRAW\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol ACANVAS
	.uleb128	19
	.ascii	"ACANVAS\000"
	.long	.La404-.Ldebug_info0
# Symbol AX
	.uleb128	19
	.ascii	"AX\000"
	.long	.La120-.Ldebug_info0
# Symbol AY
	.uleb128	19
	.ascii	"AY\000"
	.long	.La120-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol ADRAWINGSTYLE
	.uleb128	19
	.ascii	"ADRAWINGSTYLE\000"
	.long	.La1178-.Ldebug_info0
# Symbol AIMAGETYPE
	.uleb128	19
	.ascii	"AIMAGETYPE\000"
	.long	.La1182-.Ldebug_info0
# Symbol AENABLED
	.uleb128	19
	.ascii	"AENABLED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef Draw(<TCustomImageList>;TCanvas;LongInt;LongInt;LongInt;TDrawingStyle;TImageType;TGraphicsDrawEffect);
	.uleb128	23
	.ascii	"DRAW\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol ACANVAS
	.uleb128	19
	.ascii	"ACANVAS\000"
	.long	.La404-.Ldebug_info0
# Symbol AX
	.uleb128	19
	.ascii	"AX\000"
	.long	.La120-.Ldebug_info0
# Symbol AY
	.uleb128	19
	.ascii	"AY\000"
	.long	.La120-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol ADRAWINGSTYLE
	.uleb128	19
	.ascii	"ADRAWINGSTYLE\000"
	.long	.La1178-.Ldebug_info0
# Symbol AIMAGETYPE
	.uleb128	19
	.ascii	"AIMAGETYPE\000"
	.long	.La1182-.Ldebug_info0
# Symbol ADRAWEFFECT
	.uleb128	19
	.ascii	"ADRAWEFFECT\000"
	.long	.La1194-.Ldebug_info0
	.byte	0
# Procdef DrawOverlay(<TCustomImageList>;TCanvas;LongInt;LongInt;LongInt;TOverlay;Boolean="TRUE");
	.uleb128	20
	.ascii	"DRAWOVERLAY\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol ACANVAS
	.uleb128	19
	.ascii	"ACANVAS\000"
	.long	.La404-.Ldebug_info0
# Symbol AX
	.uleb128	19
	.ascii	"AX\000"
	.long	.La120-.Ldebug_info0
# Symbol AY
	.uleb128	19
	.ascii	"AY\000"
	.long	.La120-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol AOVERLAY
	.uleb128	19
	.ascii	"AOVERLAY\000"
	.long	.La1196-.Ldebug_info0
# Symbol AENABLED
	.uleb128	19
	.ascii	"AENABLED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef DrawOverlay(<TCustomImageList>;TCanvas;LongInt;LongInt;LongInt;TOverlay;TGraphicsDrawEffect);
	.uleb128	20
	.ascii	"DRAWOVERLAY\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol ACANVAS
	.uleb128	19
	.ascii	"ACANVAS\000"
	.long	.La404-.Ldebug_info0
# Symbol AX
	.uleb128	19
	.ascii	"AX\000"
	.long	.La120-.Ldebug_info0
# Symbol AY
	.uleb128	19
	.ascii	"AY\000"
	.long	.La120-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol AOVERLAY
	.uleb128	19
	.ascii	"AOVERLAY\000"
	.long	.La1196-.Ldebug_info0
# Symbol ADRAWEFFECT
	.uleb128	19
	.ascii	"ADRAWEFFECT\000"
	.long	.La1194-.Ldebug_info0
	.byte	0
# Procdef DrawOverlay(<TCustomImageList>;TCanvas;LongInt;LongInt;LongInt;TOverlay;TDrawingStyle;TImageType;TGraphicsDrawEffect);
	.uleb128	23
	.ascii	"DRAWOVERLAY\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol ACANVAS
	.uleb128	19
	.ascii	"ACANVAS\000"
	.long	.La404-.Ldebug_info0
# Symbol AX
	.uleb128	19
	.ascii	"AX\000"
	.long	.La120-.Ldebug_info0
# Symbol AY
	.uleb128	19
	.ascii	"AY\000"
	.long	.La120-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol AOVERLAY
	.uleb128	19
	.ascii	"AOVERLAY\000"
	.long	.La1196-.Ldebug_info0
# Symbol ADRAWINGSTYLE
	.uleb128	19
	.ascii	"ADRAWINGSTYLE\000"
	.long	.La1178-.Ldebug_info0
# Symbol AIMAGETYPE
	.uleb128	19
	.ascii	"AIMAGETYPE\000"
	.long	.La1182-.Ldebug_info0
# Symbol ADRAWEFFECT
	.uleb128	19
	.ascii	"ADRAWEFFECT\000"
	.long	.La1194-.Ldebug_info0
	.byte	0
# Procdef FillDescription(<TCustomImageList>;out TRawImageDescription);
	.uleb128	20
	.ascii	"FILLDESCRIPTION\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol ADESC
	.uleb128	19
	.ascii	"ADESC\000"
	.long	.La1198-.Ldebug_info0
	.byte	0
# Procdef GetBitmap(<TCustomImageList>;LongInt;TCustomBitmap);
	.uleb128	20
	.ascii	"GETBITMAP\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol IMAGE
	.uleb128	19
	.ascii	"IMAGE\000"
	.long	.La853-.Ldebug_info0
	.byte	0
# Procdef GetBitmap(<TCustomImageList>;LongInt;TCustomBitmap;TGraphicsDrawEffect);
	.uleb128	20
	.ascii	"GETBITMAP\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol IMAGE
	.uleb128	19
	.ascii	"IMAGE\000"
	.long	.La853-.Ldebug_info0
# Symbol AEFFECT
	.uleb128	19
	.ascii	"AEFFECT\000"
	.long	.La1194-.Ldebug_info0
	.byte	0
# Procdef GetFullBitmap(<TCustomImageList>;TCustomBitmap;TGraphicsDrawEffect="0");
	.uleb128	20
	.ascii	"GETFULLBITMAP\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol IMAGE
	.uleb128	19
	.ascii	"IMAGE\000"
	.long	.La853-.Ldebug_info0
# Symbol AEFFECT
	.uleb128	19
	.ascii	"AEFFECT\000"
	.long	.La1194-.Ldebug_info0
	.byte	0
# Procdef GetFullRawImage(<TCustomImageList>;out TRawImage);
	.uleb128	20
	.ascii	"GETFULLRAWIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol IMAGE
	.uleb128	19
	.ascii	"IMAGE\000"
	.long	.La1186-.Ldebug_info0
	.byte	0
# Procdef GetIcon(<TCustomImageList>;LongInt;TIcon;TGraphicsDrawEffect);
	.uleb128	20
	.ascii	"GETICON\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol IMAGE
	.uleb128	19
	.ascii	"IMAGE\000"
	.long	.La124-.Ldebug_info0
# Symbol AEFFECT
	.uleb128	19
	.ascii	"AEFFECT\000"
	.long	.La1194-.Ldebug_info0
	.byte	0
# Procdef GetIcon(<TCustomImageList>;LongInt;TIcon);
	.uleb128	20
	.ascii	"GETICON\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol IMAGE
	.uleb128	19
	.ascii	"IMAGE\000"
	.long	.La124-.Ldebug_info0
	.byte	0
# Procdef GetRawImage(<TCustomImageList>;LongInt;out TRawImage);
	.uleb128	20
	.ascii	"GETRAWIMAGE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol IMAGE
	.uleb128	19
	.ascii	"IMAGE\000"
	.long	.La1186-.Ldebug_info0
	.byte	0
# Procdef GetHotSpot(<TCustomImageList>):<record type>;
	.uleb128	18
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
	.long	.La284-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
	.byte	0
# Procdef Insert(<TCustomImageList>;LongInt;TCustomBitmap;TCustomBitmap);
	.uleb128	20
	.ascii	"INSERT\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol AIMAGE
	.uleb128	19
	.ascii	"AIMAGE\000"
	.long	.La853-.Ldebug_info0
# Symbol AMASK
	.uleb128	19
	.ascii	"AMASK\000"
	.long	.La853-.Ldebug_info0
	.byte	0
# Procdef InsertIcon(<TCustomImageList>;LongInt;TCustomIcon);
	.uleb128	20
	.ascii	"INSERTICON\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol AICON
	.uleb128	19
	.ascii	"AICON\000"
	.long	.La532-.Ldebug_info0
	.byte	0
# Procdef InsertMasked(<TCustomImageList>;LongInt;TCustomBitmap;TGraphicsColor);
	.uleb128	20
	.ascii	"INSERTMASKED\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol AIMAGE
	.uleb128	19
	.ascii	"AIMAGE\000"
	.long	.La853-.Ldebug_info0
# Symbol MASKCOLOR
	.uleb128	19
	.ascii	"MASKCOLOR\000"
	.long	.La391-.Ldebug_info0
	.byte	0
# Procdef Move(<TCustomImageList>;LongInt;LongInt);
	.uleb128	20
	.ascii	"MOVE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol ACURINDEX
	.uleb128	19
	.ascii	"ACURINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol ANEWINDEX
	.uleb128	19
	.ascii	"ANEWINDEX\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef Overlay(<TCustomImageList>;LongInt;TOverlay);
	.uleb128	20
	.ascii	"OVERLAY\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol OVERLAY
	.uleb128	19
	.ascii	"OVERLAY\000"
	.long	.La1196-.Ldebug_info0
	.byte	0
# Procdef Replace(<TCustomImageList>;LongInt;TCustomBitmap;TCustomBitmap);
	.uleb128	20
	.ascii	"REPLACE\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol AINDEX
	.uleb128	19
	.ascii	"AINDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol AIMAGE
	.uleb128	19
	.ascii	"AIMAGE\000"
	.long	.La853-.Ldebug_info0
# Symbol AMASK
	.uleb128	19
	.ascii	"AMASK\000"
	.long	.La853-.Ldebug_info0
	.byte	0
# Procdef ReplaceMasked(<TCustomImageList>;LongInt;TCustomBitmap;TGraphicsColor);
	.uleb128	20
	.ascii	"REPLACEMASKED\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol NEWIMAGE
	.uleb128	19
	.ascii	"NEWIMAGE\000"
	.long	.La853-.Ldebug_info0
# Symbol MASKCOLOR
	.uleb128	19
	.ascii	"MASKCOLOR\000"
	.long	.La391-.Ldebug_info0
	.byte	0
# Procdef RegisterChanges(<TCustomImageList>;TChangeLink);
	.uleb128	20
	.ascii	"REGISTERCHANGES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La625-.Ldebug_info0
	.byte	0
# Procdef StretchDraw(<TCustomImageList>;TCanvas;LongInt;TRect;Boolean="TRUE");
	.uleb128	20
	.ascii	"STRETCHDRAW\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol CANVAS
	.uleb128	19
	.ascii	"CANVAS\000"
	.long	.La404-.Ldebug_info0
# Symbol INDEX
	.uleb128	19
	.ascii	"INDEX\000"
	.long	.La120-.Ldebug_info0
# Symbol ARECT
	.uleb128	19
	.ascii	"ARECT\000"
	.long	.La186-.Ldebug_info0
# Symbol ENABLED
	.uleb128	19
	.ascii	"ENABLED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef UnRegisterChanges(<TCustomImageList>;TChangeLink);
	.uleb128	20
	.ascii	"UNREGISTERCHANGES\000"
	.byte	1
	.byte	65
	.byte	1
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La628-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La625-.Ldebug_info0
	.byte	0
	.byte	0
.La629:
	.uleb128	7
	.long	.La628-.Ldebug_info0
# Definition <procedure variable type of procedure(TBasicAction;var Boolean) of object;Register>
.La631:
	.uleb128	5
	.ascii	"TACTIONEVENT\000"
	.long	.La1200-.Ldebug_info0
.La1200:
	.uleb128	40
	.byte	16
	.uleb128	11
	.ascii	"Proc\000"
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La1201-.Ldebug_info0
	.uleb128	11
	.ascii	"Self\000"
	.byte	2
	.byte	35
	.uleb128	8
	.long	.La20-.Ldebug_info0
	.byte	0
.La1201:
	.uleb128	41
	.ascii	"TACTIONEVENT\000"
	.byte	1
	.uleb128	19
	.ascii	"this\000"
	.long	.La31-.Ldebug_info0
	.uleb128	19
	.ascii	"AACTION\000"
	.long	.La197-.Ldebug_info0
	.uleb128	19
	.ascii	"HANDLED\000"
	.long	.La29-.Ldebug_info0
	.byte	0
.La632:
	.uleb128	7
	.long	.La631-.Ldebug_info0
# Definition TActionListState
.La633:
	.uleb128	5
	.ascii	"TACTIONLISTSTATE\000"
	.long	.La1202-.Ldebug_info0
.La1202:
	.uleb128	36
	.ascii	"TACTIONLISTSTATE\000"
	.byte	4
	.uleb128	37
	.ascii	"ASNORMAL\000"
	.long	0
	.uleb128	37
	.ascii	"ASSUSPENDED\000"
	.long	1
	.uleb128	37
	.ascii	"ASSUSPENDEDENABLED\000"
	.long	2
	.byte	0
.La634:
	.uleb128	7
	.long	.La633-.Ldebug_info0
# Definition TContainedAction
.La635:
	.uleb128	5
	.ascii	"TCONTAINEDACTION\000"
	.long	.La1203-.Ldebug_info0
.La1203:
	.uleb128	8
	.long	.La637-.Ldebug_info0
.La637:
	.uleb128	9
	.ascii	"TCONTAINEDACTION\000"
	.uleb128	176
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La199-.Ldebug_info0
	.uleb128	14
	.ascii	"FCATEGORY\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La27-.Ldebug_info0
	.uleb128	14
	.ascii	"FACTIONLIST\000"
	.byte	3
	.byte	35
	.uleb128	168
	.byte	3
	.long	.La194-.Ldebug_info0
	.uleb128	14
	.ascii	"ACTIONLIST\000"
	.byte	3
	.byte	35
	.uleb128	168
	.byte	3
	.long	.La194-.Ldebug_info0
	.uleb128	14
	.ascii	"CATEGORY\000"
	.byte	3
	.byte	35
	.uleb128	160
	.byte	3
	.long	.La27-.Ldebug_info0
# Procdef GetIndex(<TContainedAction>):LongInt;
	.uleb128	15
	.ascii	"GETINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La635-.Ldebug_info0
	.byte	0
# Procdef SetCategory(<TContainedAction>;const AnsiString);
	.uleb128	25
	.ascii	"SETCATEGORY\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La635-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef SetIndex(<TContainedAction>;LongInt);
	.uleb128	25
	.ascii	"SETINDEX\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La635-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetActionList(<TContainedAction>;TCustomActionList);
	.uleb128	25
	.ascii	"SETACTIONLIST\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La635-.Ldebug_info0
# Symbol NEWACTIONLIST
	.uleb128	19
	.ascii	"NEWACTIONLIST\000"
	.long	.La194-.Ldebug_info0
	.byte	0
# Procdef ReadState(<TContainedAction>;TReader);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La635-.Ldebug_info0
# Symbol READER
	.uleb128	19
	.ascii	"READER\000"
	.long	.La234-.Ldebug_info0
	.byte	0
# Procdef SetParentComponent(<TContainedAction>;TComponent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La635-.Ldebug_info0
# Symbol APARENT
	.uleb128	19
	.ascii	"APARENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TContainedAction>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La635-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Execute(<TContainedAction>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La635-.Ldebug_info0
	.byte	0
# Procdef GetParentComponent(<TContainedAction>):TComponent;
	.uleb128	18
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
	.long	.La33-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La635-.Ldebug_info0
	.byte	0
# Procdef HasParent(<TContainedAction>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La635-.Ldebug_info0
	.byte	0
# Procdef Update(<TContainedAction>):Boolean;
	.uleb128	18
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La635-.Ldebug_info0
	.byte	0
	.byte	0
.La636:
	.uleb128	7
	.long	.La635-.Ldebug_info0
# Definition TActionListEnumerator
.La638:
	.uleb128	5
	.ascii	"TACTIONLISTENUMERATOR\000"
	.long	.La1204-.Ldebug_info0
.La1204:
	.uleb128	8
	.long	.La640-.Ldebug_info0
.La640:
	.uleb128	9
	.ascii	"TACTIONLISTENUMERATOR\000"
	.uleb128	24
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La22-.Ldebug_info0
	.uleb128	14
	.ascii	"FLIST\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La194-.Ldebug_info0
	.uleb128	14
	.ascii	"FPOSITION\000"
	.byte	2
	.byte	35
	.uleb128	16
	.byte	3
	.long	.La120-.Ldebug_info0
# Procdef GetCurrent(<TActionListEnumerator>):TContainedAction;
	.uleb128	15
	.ascii	"GETCURRENT\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La635-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La638-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TActionListEnumerator>;<Pointer>;TCustomActionList);
	.uleb128	22
	.ascii	"CREATE\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La638-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La638-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol ALIST
	.uleb128	19
	.ascii	"ALIST\000"
	.long	.La194-.Ldebug_info0
	.byte	0
# Procdef MoveNext(<TActionListEnumerator>):Boolean;
	.uleb128	22
	.ascii	"MOVENEXT\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La638-.Ldebug_info0
	.byte	0
	.byte	0
.La639:
	.uleb128	7
	.long	.La638-.Ldebug_info0
# Definition TBasicActionLink
.La642:
	.uleb128	5
	.ascii	"TBASICACTIONLINK\000"
	.long	.La1205-.Ldebug_info0
.La1205:
	.uleb128	8
	.long	.La644-.Ldebug_info0
.La644:
	.uleb128	9
	.ascii	"TBASICACTIONLINK\000"
	.uleb128	32
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La22-.Ldebug_info0
	.uleb128	14
	.ascii	"FONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La140-.Ldebug_info0
	.uleb128	14
	.ascii	"FACTION\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	2
	.long	.La197-.Ldebug_info0
	.uleb128	14
	.ascii	"ACTION\000"
	.byte	2
	.byte	35
	.uleb128	24
	.byte	2
	.long	.La197-.Ldebug_info0
	.uleb128	14
	.ascii	"ONCHANGE\000"
	.byte	2
	.byte	35
	.uleb128	8
	.byte	3
	.long	.La140-.Ldebug_info0
# Procdef AssignClient(<TBasicActionLink>;TObject);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La642-.Ldebug_info0
# Symbol ACLIENT
	.uleb128	19
	.ascii	"ACLIENT\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef Change(<TBasicActionLink>);
	.uleb128	17
	.ascii	"CHANGE\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La642-.Ldebug_info0
	.byte	0
# Procdef IsOnExecuteLinked(<TBasicActionLink>):Boolean;
	.uleb128	26
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
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La642-.Ldebug_info0
	.byte	0
# Procdef SetAction(<TBasicActionLink>;TBasicAction);
	.uleb128	17
	.ascii	"SETACTION\000"
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
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La642-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La197-.Ldebug_info0
	.byte	0
# Procdef SetOnExecute(<TBasicActionLink>;TNotifyEvent);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La642-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La140-.Ldebug_info0
	.byte	0
# Procdef constructor Create(<TBasicActionLink>;<Pointer>;TObject);
	.uleb128	18
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
	.long	.La642-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La642-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
# Symbol ACLIENT
	.uleb128	19
	.ascii	"ACLIENT\000"
	.long	.La20-.Ldebug_info0
	.byte	0
# Procdef destructor Destroy(<TBasicActionLink>;<Pointer>);
	.uleb128	23
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La642-.Ldebug_info0
# Symbol vmt
	.uleb128	19
	.ascii	"vmt\000"
	.long	.La31-.Ldebug_info0
	.byte	0
# Procdef Execute(<TBasicActionLink>;TComponent="nil"):Boolean;
	.uleb128	18
	.ascii	"EXECUTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	248
	.byte	34
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La642-.Ldebug_info0
# Symbol ACOMPONENT
	.uleb128	19
	.ascii	"ACOMPONENT\000"
	.long	.La33-.Ldebug_info0
	.byte	0
# Procdef Update(<TBasicActionLink>):Boolean;
	.uleb128	18
	.ascii	"UPDATE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	256
	.byte	34
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La642-.Ldebug_info0
	.byte	0
	.byte	0
.La643:
	.uleb128	7
	.long	.La642-.Ldebug_info0
# Definition TFPImageBitmap
.La647:
	.uleb128	5
	.ascii	"TFPIMAGEBITMAP\000"
	.long	.La1206-.Ldebug_info0
.La1206:
	.uleb128	8
	.long	.La649-.Ldebug_info0
.La649:
	.uleb128	9
	.ascii	"TFPIMAGEBITMAP\000"
	.uleb128	120
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La855-.Ldebug_info0
# Procdef GetMimeType(<TFPImageBitmap>;<var AnsiString>):AnsiString;
	.uleb128	26
	.ascii	"GETMIMETYPE\000"
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
	.long	.La27-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La647-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef class GetReaderClass(<Class Of TFPImageBitmap>):Class Of TFPCustomImageReader;
	.uleb128	26
	.ascii	"GETREADERCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	776
	.byte	34
	.byte	2
	.long	.La656-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La1207-.Ldebug_info0
	.byte	0
# Procdef class GetWriterClass(<Class Of TFPImageBitmap>):Class Of TFPCustomImageWriter;
	.uleb128	26
	.ascii	"GETWRITERCLASS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
	.byte	5
	.byte	6
	.byte	16
	.uleb128	784
	.byte	34
	.byte	2
	.long	.La660-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La1209-.Ldebug_info0
	.byte	0
# Procdef InitializeReader(<TFPImageBitmap>;TLazIntfImage;TFPCustomImageReader);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La647-.Ldebug_info0
# Symbol AIMAGE
	.uleb128	19
	.ascii	"AIMAGE\000"
	.long	.La650-.Ldebug_info0
# Symbol AREADER
	.uleb128	19
	.ascii	"AREADER\000"
	.long	.La653-.Ldebug_info0
	.byte	0
# Procdef InitializeWriter(<TFPImageBitmap>;TLazIntfImage;TFPCustomImageWriter);
	.uleb128	17
	.ascii	"INITIALIZEWRITER\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La647-.Ldebug_info0
# Symbol AIMAGE
	.uleb128	19
	.ascii	"AIMAGE\000"
	.long	.La650-.Ldebug_info0
# Symbol AWRITER
	.uleb128	19
	.ascii	"AWRITER\000"
	.long	.La1211-.Ldebug_info0
	.byte	0
# Procdef FinalizeReader(<TFPImageBitmap>;TFPCustomImageReader);
	.uleb128	17
	.ascii	"FINALIZEREADER\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La647-.Ldebug_info0
# Symbol AREADER
	.uleb128	19
	.ascii	"AREADER\000"
	.long	.La653-.Ldebug_info0
	.byte	0
# Procdef FinalizeWriter(<TFPImageBitmap>;TFPCustomImageWriter);
	.uleb128	17
	.ascii	"FINALIZEWRITER\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La647-.Ldebug_info0
# Symbol AWRITER
	.uleb128	19
	.ascii	"AWRITER\000"
	.long	.La1211-.Ldebug_info0
	.byte	0
# Procdef ReadStream(<TFPImageBitmap>;TMemoryStream;LongInt);
	.uleb128	17
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La647-.Ldebug_info0
# Symbol ASTREAM
	.uleb128	19
	.ascii	"ASTREAM\000"
	.long	.La1111-.Ldebug_info0
# Symbol ASIZE
	.uleb128	19
	.ascii	"ASIZE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef WriteStream(<TFPImageBitmap>;TMemoryStream);
	.uleb128	17
	.ascii	"WRITESTREAM\000"
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
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La647-.Ldebug_info0
# Symbol ASTREAM
	.uleb128	19
	.ascii	"ASTREAM\000"
	.long	.La1111-.Ldebug_info0
	.byte	0
# Procdef class GetFileExtensions(<Class Of TFPImageBitmap>;<var AnsiString>):AnsiString;
	.uleb128	18
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
	.long	.La27-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La1214-.Ldebug_info0
# Symbol result
	.uleb128	24
	.ascii	"result\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef class IsStreamFormatSupported(<Class Of TFPImageBitmap>;TStream):Boolean;
	.uleb128	18
	.ascii	"ISSTREAMFORMATSUPPORTED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	520
	.byte	34
	.long	.La29-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La1216-.Ldebug_info0
# Symbol STREAM
	.uleb128	19
	.ascii	"STREAM\000"
	.long	.La670-.Ldebug_info0
	.byte	0
# Procdef class IsFileExtensionSupported(<Class Of TFPImageBitmap>;const AnsiString):Boolean;
	.uleb128	22
	.ascii	"ISFILEEXTENSIONSUPPORTED\000"
	.byte	1
	.byte	65
	.byte	1
	.long	.La29-.Ldebug_info0
# Symbol self
	.uleb128	16
	.ascii	"self\000"
	.byte	1
	.long	.La1218-.Ldebug_info0
# Symbol FILEEXTENSION
	.uleb128	19
	.ascii	"FILEEXTENSION\000"
	.long	.La27-.Ldebug_info0
	.byte	0
# Procdef LazarusResourceTypeValid(<TFPImageBitmap>;const AnsiString):Boolean;
	.uleb128	18
	.ascii	"LAZARUSRESOURCETYPEVALID\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	1
	.byte	5
	.byte	6
	.byte	16
	.uleb128	392
	.byte	34
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La647-.Ldebug_info0
# Symbol RESOURCETYPE
	.uleb128	19
	.ascii	"RESOURCETYPE\000"
	.long	.La27-.Ldebug_info0
	.byte	0
	.byte	0
.La648:
	.uleb128	7
	.long	.La647-.Ldebug_info0
# Definition TLazIntfImage
.La650:
	.uleb128	5
	.ascii	"TLAZINTFIMAGE\000"
	.long	.La1220-.Ldebug_info0
.La1220:
	.uleb128	8
	.long	.La652-.Ldebug_info0
.La652:
	.uleb128	9
	.ascii	"TLAZINTFIMAGE\000"
	.uleb128	288
	.uleb128	10
	.byte	1
	.byte	2
	.byte	35
	.uleb128	0
	.long	.La944-.Ldebug_info0
	.uleb128	14
	.ascii	"FRAWIMAGE\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La1186-.Ldebug_info0
	.uleb128	14
	.ascii	"FLINESTARTS\000"
	.byte	3
	.byte	35
	.uleb128	184
	.byte	3
	.long	.La1221-.Ldebug_info0
	.uleb128	14
	.ascii	"FMASKLINESTARTS\000"
	.byte	3
	.byte	35
	.uleb128	192
	.byte	3
	.long	.La1221-.Ldebug_info0
	.uleb128	14
	.ascii	"FMASKSET\000"
	.byte	3
	.byte	35
	.uleb128	200
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FUPDATECOUNT\000"
	.byte	3
	.byte	35
	.uleb128	204
	.byte	3
	.long	.La120-.Ldebug_info0
	.uleb128	14
	.ascii	"FCREATEALLDATANEEDED\000"
	.byte	3
	.byte	35
	.uleb128	208
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FGETSETCOLORFUNCTIONSUPDATENEEDED\000"
	.byte	3
	.byte	35
	.uleb128	209
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FREADRAWIMAGEBITS\000"
	.byte	3
	.byte	35
	.uleb128	216
	.byte	3
	.long	.La1223-.Ldebug_info0
	.uleb128	14
	.ascii	"FWRITERAWIMAGEBITS\000"
	.byte	3
	.byte	35
	.uleb128	224
	.byte	3
	.long	.La1225-.Ldebug_info0
	.uleb128	14
	.ascii	"FMASKREADRAWIMAGEBITS\000"
	.byte	3
	.byte	35
	.uleb128	232
	.byte	3
	.long	.La1223-.Ldebug_info0
	.uleb128	14
	.ascii	"FMASKWRITERAWIMAGEBITS\000"
	.byte	3
	.byte	35
	.uleb128	240
	.byte	3
	.long	.La1225-.Ldebug_info0
	.uleb128	14
	.ascii	"FDATAOWNER\000"
	.byte	3
	.byte	35
	.uleb128	248
	.byte	3
	.long	.La29-.Ldebug_info0
	.uleb128	14
	.ascii	"FGETINTERNALCOLORPROC\000"
	.byte	3
	.byte	35
	.uleb128	256
	.byte	2
	.long	.La1227-.Ldebug_info0
	.uleb128	14
	.ascii	"FSETINTERNALCOLORPROC\000"
	.byte	3
	.byte	35
	.uleb128	272
	.byte	2
	.long	.La1229-.Ldebug_info0
	.uleb128	14
	.ascii	"PIXELDATA\000"
	.byte	3
	.byte	35
	.uleb128	136
	.byte	3
	.long	.La1231-.Ldebug_info0
	.uleb128	14
	.ascii	"MASKDATA\000"
	.byte	3
	.byte	35
	.uleb128	152
	.byte	3
	.long	.La1231-.Ldebug_info0
	.uleb128	14
	.ascii	"DATADESCRIPTION\000"
	.byte	2
	.byte	35
	.uleb128	64
	.byte	3
	.long	.La1198-.Ldebug_info0
# Procdef GetMasked(<TLazIntfImage>;LongInt;LongInt):Boolean;
	.uleb128	15
	.ascii	"GETMASKED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La29-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetTColors(<TLazIntfImage>;LongInt;LongInt):LongInt;
	.uleb128	15
	.ascii	"GETTCOLORS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
	.long	.La391-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef InternalSetSize(<TLazIntfImage>;LongInt;LongInt);
	.uleb128	25
	.ascii	"INTERNALSETSIZE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol AWIDTH
	.uleb128	19
	.ascii	"AWIDTH\000"
	.long	.La120-.Ldebug_info0
# Symbol AHEIGHT
	.uleb128	19
	.ascii	"AHEIGHT\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetMasked(<TLazIntfImage>;LongInt;LongInt;const Boolean);
	.uleb128	25
	.ascii	"SETMASKED\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetTColors(<TLazIntfImage>;LongInt;LongInt;const TGraphicsColor);
	.uleb128	25
	.ascii	"SETTCOLORS\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	3
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La391-.Ldebug_info0
	.byte	0
# Procdef SetUsePalette(<TLazIntfImage>;Boolean);
	.uleb128	17
	.ascii	"SETUSEPALETTE\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetInternalColor(<TLazIntfImage>;LongInt;LongInt;const TFPColor);
	.uleb128	17
	.ascii	"SETINTERNALCOLOR\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetInternalColor(<TLazIntfImage>;LongInt;LongInt):<record type>;
	.uleb128	26
	.ascii	"GETINTERNALCOLOR\000"
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
	.long	.La861-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef SetInternalPixel(<TLazIntfImage>;LongInt;LongInt;LongInt);
	.uleb128	17
	.ascii	"SETINTERNALPIXEL\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef GetInternalPixel(<TLazIntfImage>;LongInt;LongInt):LongInt;
	.uleb128	26
	.ascii	"GETINTERNALPIXEL\000"
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
	.long	.La120-.Ldebug_info0
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
	.byte	0
# Procdef FreeData(<TLazIntfImage>);
	.uleb128	17
	.ascii	"FREEDATA\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
	.byte	0
# Procdef SetDataDescription(<TLazIntfImage>;const TRawImageDescription);
	.uleb128	17
	.ascii	"SETDATADESCRIPTION\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol ADESCRIPTION
	.uleb128	19
	.ascii	"ADESCRIPTION\000"
	.long	.La1198-.Ldebug_info0
	.byte	0
# Procdef ChooseGetSetColorFunctions(<TLazIntfImage>);
	.uleb128	17
	.ascii	"CHOOSEGETSETCOLORFUNCTIONS\000"
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
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
	.byte	0
# Procdef ChooseRawBitsProc(<TLazIntfImage>;LongWord;TRawImageByteOrder;TRawImageBitOrder;out TOnReadRawImageBits;out TOnWriteRawImageBits);
	.uleb128	25
	.ascii	"CHOOSERAWBITSPROC\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol BITSPERPIXEL
	.uleb128	19
	.ascii	"BITSPERPIXEL\000"
	.long	.La293-.Ldebug_info0
# Symbol BYTEORDER
	.uleb128	19
	.ascii	"BYTEORDER\000"
	.long	.La1233-.Ldebug_info0
# Symbol BITORDER
	.uleb128	19
	.ascii	"BITORDER\000"
	.long	.La1235-.Ldebug_info0
# Symbol PROCREADRAWIMAGEBITS
	.uleb128	19
	.ascii	"PROCREADRAWIMAGEBITS\000"
	.long	.La1223-.Ldebug_info0
# Symbol PROCWRITERAWIMAGEBITS
	.uleb128	19
	.ascii	"PROCWRITERAWIMAGEBITS\000"
	.long	.La1225-.Ldebug_info0
	.byte	0
# Procdef GetColor_Generic(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_GENERIC\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_RGBA_NoPalette(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_RGBA_NOPALETTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_RGB_NoPalette(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_RGB_NOPALETTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_Gray_NoPalette(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_GRAY_NOPALETTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_GrayAlpha_NoPalette(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_GRAYALPHA_NOPALETTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_NULL(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_NULL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_A8R8G8B8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_A8R8G8B8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_A8B8G8R8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_A8B8G8R8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_A8G8R8B8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_A8G8R8B8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_A8G8B8R8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_A8G8B8R8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_A8R8B8G8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_A8R8B8G8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_A8B8R8G8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_A8B8R8G8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_B8G8R8A8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_B8G8R8A8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_R8G8B8A8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_R8G8B8A8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_G8B8R8A8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_G8B8R8A8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_G8R8B8A8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_G8R8B8A8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_B8R8G8A8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_B8R8G8A8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_R8B8G8A8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_R8B8G8A8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_X8R8G8B8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_X8R8G8B8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_X8B8G8R8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_X8B8G8R8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_X8G8R8B8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_X8G8R8B8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_X8G8B8R8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_X8G8B8R8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_X8R8B8G8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_X8R8B8G8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_X8B8R8G8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_X8B8R8G8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_B8G8R8X8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_B8G8R8X8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_R8G8B8X8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_R8G8B8X8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_G8B8R8X8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_G8B8R8X8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_G8R8B8X8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_G8R8B8X8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_B8R8G8X8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_B8R8G8X8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP32_R8B8G8X8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP32_R8B8G8X8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP24_B8G8R8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP24_B8G8R8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP24_R8G8B8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP24_R8G8B8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP24_G8B8R8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP24_G8B8R8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP24_G8R8B8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP24_G8R8B8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP24_B8R8G8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP24_B8R8G8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetColor_BPP24_R8B8G8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;out TFPColor);
	.uleb128	25
	.ascii	"GETCOLOR_BPP24_R8B8G8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef GetMask_Generic(<TLazIntfImage>;LongInt;LongInt;out Boolean);
	.uleb128	25
	.ascii	"GETMASK_GENERIC\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol AVALUE
	.uleb128	19
	.ascii	"AVALUE\000"
	.long	.La29-.Ldebug_info0
	.byte	0
# Procdef SetColor_Generic(<TLazIntfImage>;LongInt;LongInt;const TFPColor);
	.uleb128	25
	.ascii	"SETCOLOR_GENERIC\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef SetColor_RGBA_NoPalette(<TLazIntfImage>;LongInt;LongInt;const TFPColor);
	.uleb128	25
	.ascii	"SETCOLOR_RGBA_NOPALETTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef SetColor_RGB_NoPalette(<TLazIntfImage>;LongInt;LongInt;const TFPColor);
	.uleb128	25
	.ascii	"SETCOLOR_RGB_NOPALETTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef SetColor_Gray_NoPalette(<TLazIntfImage>;LongInt;LongInt;const TFPColor);
	.uleb128	25
	.ascii	"SETCOLOR_GRAY_NOPALETTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef SetColor_GrayAlpha_NoPalette(<TLazIntfImage>;LongInt;LongInt;const TFPColor);
	.uleb128	25
	.ascii	"SETCOLOR_GRAYALPHA_NOPALETTE\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef SetColor_NULL(<TLazIntfImage>;LongInt;LongInt;const TFPColor);
	.uleb128	25
	.ascii	"SETCOLOR_NULL\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef SetColor_BPP32_A8R8G8B8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;const TFPColor);
	.uleb128	25
	.ascii	"SETCOLOR_BPP32_A8R8G8B8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
# Procdef SetColor_BPP32_A8B8G8R8_BIO_TTB(<TLazIntfImage>;LongInt;LongInt;const TFPColor);
	.uleb128	25
	.ascii	"SETCOLOR_BPP32_A8B8G8R8_BIO_TTB\000"
	.byte	1
	.byte	65
	.byte	1
	.byte	2
# Symbol this
	.uleb128	16
	.ascii	"this\000"
	.byte	1
	.long	.La650-.Ldebug_info0
# Symbol X
	.uleb128	19
	.ascii	"X\000"
	.long	.La120-.Ldebug_info0
# Symbol Y
	.uleb128	19
	.ascii	"Y\000"
	.long	.La120-.Ldebug_info0
# Symbol VALUE
	.uleb128	19
	.ascii	"VALUE\000"
	.long	.La861-.Ldebug_info0
	.byte	0
