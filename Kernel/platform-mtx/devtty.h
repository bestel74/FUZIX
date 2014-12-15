#ifndef __DEVTTY_DOT_H__
#define __DEVTTY_DOT_H__

extern void kbd_interrupt(void);
extern void tty_interrupt(void);
extern int mtxtty_close(uint8_t);

extern signed char vt_twidth[2];
extern signed char vt_tright[2];
extern uint8_t curtty;

#endif
