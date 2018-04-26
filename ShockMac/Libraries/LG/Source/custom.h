#include <termios.h>

static struct termios old, new;

void initTermios(int echo);

void resetTermios(void);

int getch_(int echo);

int getch(void);

int getche(void);
