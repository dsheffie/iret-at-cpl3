#include <stdio.h>
#include <stdint.h>

void iret_func(void);
uint64_t get_cs(void);
uint64_t get_ss(void);

int main(int argc, char *argv[]) {
  printf("cs = %zu, ss = %zu\n", get_cs(), get_ss());
  iret_func();
  printf("after iret!\n");
  return 0;
}
