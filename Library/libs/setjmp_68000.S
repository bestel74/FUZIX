/* setjmp for 68000 and gcc.

   The called function is expected to save registers it damages so we need
   to do a full save here expect for a0/a1 d0/d1 which are scratch */

	.text
	.globl setjmp
	.globl longjmp
.mri 1

setjmp: move.l 4(sp),a0
	add #48,a0
	movem.l d2-d7/a2-a7,-(a0)	; 12 * 4 = 48 bytes
	moveq #0,d0			; return 0 from setjmp
	rts

longjmp:
	move.l 4(sp),a0
	move.l 8(sp),d0
	tst.l  d0
	beq    d0_ok
	moveq  #1,d0
d0_ok:
	movem.l (a0)+,d2-d7/a2-a7
	rts
