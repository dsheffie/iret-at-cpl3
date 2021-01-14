#include <stdio.h>
void iret_func(void);

int main(int argc, char *argv[]) {
  iret_func();
  printf("after iret!\n");
  return 0;
}
