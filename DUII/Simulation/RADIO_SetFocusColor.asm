﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Widget\RADIO_SetFocusColor.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_RADIO_SetFocusColor
EXTRN	_GUI_ALLOC_UnlockH:PROC
EXTRN	_WM_InvalidateWindow:PROC
EXTRN	_RADIO_LockH:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\widget\radio_setfocuscolor.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _RADIO_SetFocusColor
_TEXT	SEGMENT
_pObj$10455 = -20					; size = 4
_OldColor$ = -8						; size = 4
_hObj$ = 8						; size = 4
_Color$ = 12						; size = 4
_RADIO_SetFocusColor PROC				; COMDAT
; Line 37
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
; Line 38
	mov	DWORD PTR _OldColor$[ebp], 0
; Line 39
	cmp	DWORD PTR _hObj$[ebp], 0
	je	SHORT $LN2@RADIO_SetF
; Line 42
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_RADIO_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$10455[ebp], eax
; Line 43
	mov	eax, DWORD PTR _pObj$10455[ebp]
	mov	ecx, DWORD PTR _Color$[ebp]
	cmp	ecx, DWORD PTR [eax+64]
	je	SHORT $LN1@RADIO_SetF
; Line 44
	mov	eax, DWORD PTR _pObj$10455[ebp]
	mov	ecx, DWORD PTR [eax+64]
	mov	DWORD PTR _OldColor$[ebp], ecx
; Line 45
	mov	eax, DWORD PTR _pObj$10455[ebp]
	mov	ecx, DWORD PTR _Color$[ebp]
	mov	DWORD PTR [eax+64], ecx
; Line 46
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_InvalidateWindow
	add	esp, 4
$LN1@RADIO_SetF:
; Line 48
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$10455[ebp], 0
$LN2@RADIO_SetF:
; Line 51
	mov	eax, DWORD PTR _OldColor$[ebp]
; Line 52
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_RADIO_SetFocusColor ENDP
_TEXT	ENDS
END
