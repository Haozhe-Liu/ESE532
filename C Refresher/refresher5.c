#include <stdio.h>
#include <stdlib.h>


int main(){
    double a[] = {3.14, 2.71};

printf("%f %p\n",a[0],&a[0]);
printf("%f %p\n",a[1], &a[1]);



return 0;
}

// (gdb) ptype a
// type = double [2]
// (gdb) print sizeof(a)
// $2 = 16
// (gdb)  x/16xb &a
// 0x7fffffffd760:	0x1f	0x85	0xeb	0x51	0xb8	0x1e	0x09	0x40
// 0x7fffffffd768:	0xae	0x47	0xe1	0x7a	0x14	0xae	0x05	0x40
// 40 09 1e b8 51 eb 85 1f
// 40 05 ae 14 7a e1 47 ae