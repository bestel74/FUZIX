	.text

	.globl open

open:
.mri 1
	move.l 12(sp),a1
	move.l 8(sp),a0
	move.l 4(sp),d1
	move.w #1,d0
	trap #14
	ext.l d1
	bne _error
	rts
_error:
	move.l d1,errno
	rts
