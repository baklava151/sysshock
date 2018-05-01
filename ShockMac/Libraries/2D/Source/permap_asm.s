;Copyright (C) 2015-2018 Night Dive Studios, LLC.

;This program is free software: you can redistribute it and/or modify
;it under the terms of the GNU General Public License as published by
;the Free Software Foundation, either version 3 of the License, or
;(at your option) any later version.
 
;This program is distributed in the hope that it will be useful,
;but WITHOUT ANY WARRANTY; without even the implied warranty of
;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;GNU General Public License for more details.
 
;You should have received a copy of the GNU General Public License
;along with this program.  If not, see <http://www.gnu.org/licenses/>.
 
; Ignore this completely
; $Source: r:/prj/lib/src/2d/RCS/permap.c $
; $Revision: 1.8 $
; $Author: kevin $
; $Date: 1994/12/01 14:59:57 $
; 
; Full perspective texture mapping dispatchers.
; 

section .text
    global fix_div_16_16_3
    global fix_mul_3_3_3
    global fix_mul_3_32_16
    global fix_mul_3_16_20
    global fix_mul_16_32_20
    
 ; 68K math routines used by permap stuff
    ;fix fix_div_16_16_3 (fix a, fix b)
fix_div_16_16_3:
    ; 	tst.l		8(a7)
    xor eax, eax
    cmp eax, [esp+8]
    ;	beq.s		@DivZero
    je DivZero

 	; move.l	4(a7),d0
    mov eax, [esp+4]
    
    ; 	move.l	d0,d1
    mov ecx, eax
    ; 	asr.l		#3,d1
    sar ecx, 3
    ; 	moveq		#29,d2

 	;lsl.l		d2,d0
    shl eax, 29
    mov edx, ecx
	;dc.w		0x4C6F,0x0C01,0x0008		; 	divs.l	8(a7),d1:d0
    mov ecx, [esp+8]
    idiv ecx
    ;	bvs.s		@DivZero
    jo DivZero
 	ret

DivZero:
	;move.l	#0x7FFFFFFF,d0
    mov eax, 0x7FFFFFFF
	;tst.b		4(a7)
    mov ecx, [esp+4]
    cmp ecx, 0
    ;	bpl.s		@noNeg
    jge noNeg
    ;	neg.l		d0
    neg eax
noNeg:
	ret
 
fix_mul_3_3_3:
 	;move.l	4(A7),d0
    mov eax, [esp+4]
    mov ecx, [esp+8]
	;dc.w		0x4c2f,0x0c01,0x0008		; 	muls.l	8(A7),d1:d0
    imul ecx
    ;	moveq		#29,d2

    ;	lsr.l		d2,d0
    shr eax, 29
	;lsl.l		#3,d1
    shl edx, 3
	;or.l		d1,d0
    or eax, edx
	;rts
    ret
 

fix_mul_3_32_16:    
    ; 	move.l	4(A7),d0
    mov eax, [esp+4]
    mov ecx, [esp+8]
    ;	dc.w		0x4c2f,0x0c01,0x0008		; 	muls.l	8(A7),d1:d0
    imul ecx
	;moveq		#13,d2

	;lsr.l		d2,d0
    shr eax, 13
	;moveq		#19,d2

	;lsl.l		d2,d1
    shl edx, 19
	;or.l		d1,d0
    or eax, edx
	ret

fix_mul_3_16_20:    
    ; 	move.l	4(A7),d0
    mov eax, [esp+4]
    mov ecx, [esp+8]
	;dc.w		0x4c2f,0x0c01,0x0008		; 	muls.l	8(A7),d1:d0
    imul ecx
	;asr.l		#1,d1
    sar edx, 1
	;move.l	d1,d0
    mov eax, edx
	ret

fix_mul_16_32_20:   
 	;move.l	4(A7),d0
    mov eax, [esp+4]
    mov ecx, [esp+8]
	;dc.w		0x4c2f,0x0c01,0x0008		; 	muls.l	8(A7),d1:d0
    imul ecx
	;lsr.l		#4,d0
    shr eax, 4
	;moveq		#28,d2

	;lsl.l		d2,d1
    shl edx, 28
	;or.l		d1,d0
    or eax, edx
	ret
