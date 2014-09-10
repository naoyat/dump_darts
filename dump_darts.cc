#include <stdio.h>
#include "darts.h"

int main(int argc, char *argv[]) {
  Darts::DoubleArray da;

  if (argc != 2) {
    printf("usage: %s <darts-file>\n", argv[0]);
    return 0;
  }

  da.open(argv[1]);
  da.dump_all_keys();

  return 0;
}
