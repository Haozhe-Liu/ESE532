#include <stdio.h>
#include <stdlib.h>

void temp(int i) {
  int a[2];
  int b[3];
  int *c;
  int *d;
  c = (int *)malloc(sizeof(int) * 4);
  d = (int *)malloc(sizeof(int) * 5);

  // print addresses for arrays here....
    
    printf("%p \n", &a);  printf("%p \n", &a+1);                   
    printf("\n%p \n", &b);  printf("%p \n", &b+1);   printf("%p \n", &b+2);

    printf("\nHeap Locations:\n");
    printf("%p -> %p \n", &c, c);
    printf("%p -> %p \n", &d, d);

    free(c); free(d);
    c=NULL; d=NULL;

  return;
}

int main()
{
 temp(1);
 return 0;
}



// 0x7fffe966f4a4 
// 0x7fffe966f4ac 

// 0x7fffe966f4ac 
// 0x7fffe966f4b8 
// 0x7fffe966f4c4 

// Heap Locations:
// 0x7fffe966f490 -> 0x558555a62260 
// 0x7fffe966f498 -> 0x558555a62280