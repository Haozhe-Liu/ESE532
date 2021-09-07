#include <stdio.h>
#include <stdlib.h>



int main(){

  struct s2 {
    float a;
    int b;
  };

  struct s1 {
    int c;
    struct s2 **d;
  };

  struct s1 x[5];

  printf("%p\n", );

  return 0;
}

