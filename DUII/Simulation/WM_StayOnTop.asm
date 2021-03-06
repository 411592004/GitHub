﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\WM\WM_StayOnTop.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_WM_SetStayOnTop
EXTRN	_WM_AttachWindow:PROC
EXTRN	_WM_GetParent:PROC
EXTRN	_GUI_ALLOC_h2p:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\wm\wm_stayontop.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _WM_SetStayOnTop
_TEXT	SEGMENT
_OldStatus$9438 = -20					; size = 2
_pWin$ = -8						; size = 4
_hWin$ = 8						; size = 4
_OnOff$ = 12						; size = 4
_WM_SetStayOnTop PROC					; COMDAT
; Line 38
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 40
	cmp	DWORD PTR _hWin$[ebp], 0
	je	SHORT $LN7@WM_SetStay
; Line 43
	mov	eax, DWORD PTR _hWin$[ebp]
	push	eax
	call	_GUI_ALLOC_h2p
	add	esp, 4
	mov	DWORD PTR _pWin$[ebp], eax
; Line 44
	mov	eax, DWORD PTR _pWin$[ebp]
	mov	cx, WORD PTR [eax+40]
	mov	WORD PTR _OldStatus$9438[ebp], cx
; Line 45
	cmp	DWORD PTR _OnOff$[ebp], 0
	je	SHORT $LN5@WM_SetStay
; Line 46
	mov	eax, DWORD PTR _pWin$[ebp]
	mov	ecx, DWORD PTR [eax+40]
	and	ecx, 8
	jne	SHORT $LN4@WM_SetStay
; Line 47
	mov	eax, DWORD PTR _pWin$[ebp]
	mov	ecx, DWORD PTR [eax+40]
	or	ecx, 8
	mov	edx, DWORD PTR _pWin$[ebp]
	mov	DWORD PTR [edx+40], ecx
$LN4@WM_SetStay:
; Line 49
	jmp	SHORT $LN3@WM_SetStay
$LN5@WM_SetStay:
; Line 50
	mov	eax, DWORD PTR _pWin$[ebp]
	mov	ecx, DWORD PTR [eax+40]
	and	ecx, 8
	je	SHORT $LN3@WM_SetStay
; Line 51
	mov	eax, DWORD PTR _pWin$[ebp]
	mov	ecx, DWORD PTR [eax+40]
	and	ecx, -9					; fffffff7H
	mov	edx, DWORD PTR _pWin$[ebp]
	mov	DWORD PTR [edx+40], ecx
$LN3@WM_SetStay:
; Line 54
	movzx	eax, WORD PTR _OldStatus$9438[ebp]
	mov	ecx, DWORD PTR _pWin$[ebp]
	cmp	DWORD PTR [ecx+40], eax
	je	SHORT $LN7@WM_SetStay
; Line 55
	mov	eax, DWORD PTR _hWin$[ebp]
	push	eax
	call	_WM_GetParent
	add	esp, 4
	push	eax
	mov	ecx, DWORD PTR _hWin$[ebp]
	push	ecx
	call	_WM_AttachWindow
	add	esp, 8
$LN7@WM_SetStay:
; Line 59
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_WM_SetStayOnTop ENDP
_TEXT	ENDS
PUBLIC	_WM_GetStayOnTop
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _WM_GetStayOnTop
_TEXT	SEGMENT
_pWin$ = -20						; size = 4
_Result$ = -8						; size = 4
_hWin$ = 8						; size = 4
_WM_GetStayOnTop PROC					; COMDAT
; Line 65
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 66
	mov	DWORD PTR _Result$[ebp], 0
; Line 68
	cmp	DWORD PTR _hWin$[ebp], 0
	je	SHORT $LN2@WM_GetStay
; Line 70
	mov	eax, DWORD PTR _hWin$[ebp]
	push	eax
	call	_GUI_ALLOC_h2p
	add	esp, 4
	mov	DWORD PTR _pWin$[ebp], eax
; Line 71
	mov	eax, DWORD PTR _pWin$[ebp]
	mov	ecx, DWORD PTR [eax+40]
	and	ecx, 8
	je	SHORT $LN2@WM_GetStay
; Line 72
	mov	DWORD PTR _Result$[ebp], 1
$LN2@WM_GetStay:
; Line 76
	mov	eax, DWORD PTR _Result$[ebp]
; Line 77
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_WM_GetStayOnTop ENDP
_TEXT	ENDS
END
