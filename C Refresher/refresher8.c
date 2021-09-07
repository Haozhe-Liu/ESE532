#include "stdio.h"
#include "stdlib.h"

int main(int argc, char** argv) {
  unsigned char a[3] = {0xFF, 0x01, 73};
  unsigned char sum;
  unsigned int intsum;

  signed char sa[3] = {127, 1, 33};
  signed char ssum;
  signed int sintsum;

  fprintf(stdout, "Unsigned:\n");
  for (int i = 0; i < 3; i++)
    for (int j = 0; j < 3; j++) {
      sum = a[i] + a[j];
      intsum = a[i] + a[j];
      fprintf(stdout, "in decimal: %d+%d=%d (intsum=%d)\t", a[i], a[j], sum,
              intsum);
      fprintf(stdout, "in hexadecimal: %x+%x=%x (intsum=%x)\n", a[i], a[j], sum,
              intsum);
    }

  fprintf(stdout, "Signed:\n");
  for (int i = 0; i < 3; i++)
    for (int j = 0; j < 3; j++) {
      ssum = sa[i] + sa[j];
      sintsum = sa[i] + sa[j];
      fprintf(stdout, "in decimal: %d+%d=%d (intsum=%d)\t", sa[i], sa[j], ssum,
              sintsum);
      fprintf(stdout, "in hexadecimal: %x+%x=%x (intsum=%x)\n", sa[i], sa[j],
              ssum, sintsum);
    }
}

//results
// Unsigned:
// in decimal: 255+255=254 (intsum=510)  in hexadecimal: ff+ff=fe (intsum=1fe)
// in decimal: 255+1=0 (intsum=256)  in hexadecimal: ff+1=0 (intsum=100)
// in decimal: 255+73=72 (intsum=328)  in hexadecimal: ff+49=48 (intsum=148)
// in decimal: 1+255=0 (intsum=256)  in hexadecimal: 1+ff=0 (intsum=100)
// in decimal: 1+1=2 (intsum=2)  in hexadecimal: 1+1=2 (intsum=2)
// in decimal: 1+73=74 (intsum=74) in hexadecimal: 1+49=4a (intsum=4a)
// in decimal: 73+255=72 (intsum=328)  in hexadecimal: 49+ff=48 (intsum=148)
// in decimal: 73+1=74 (intsum=74) in hexadecimal: 49+1=4a (intsum=4a)
// in decimal: 73+73=146 (intsum=146)  in hexadecimal: 49+49=92 (intsum=92)
// Signed:
// in decimal: 127+127=-2 (intsum=254) in hexadecimal: 7f+7f=fffffffe (intsum=fe)
// in decimal: 127+1=-128 (intsum=128) in hexadecimal: 7f+1=ffffff80 (intsum=80)
// in decimal: 127+33=-96 (intsum=160) in hexadecimal: 7f+21=ffffffa0 (intsum=a0)
// in decimal: 1+127=-128 (intsum=128) in hexadecimal: 1+7f=ffffff80 (intsum=80)
// in decimal: 1+1=2 (intsum=2)  in hexadecimal: 1+1=2 (intsum=2)
// in decimal: 1+33=34 (intsum=34) in hexadecimal: 1+21=22 (intsum=22)
// in decimal: 33+127=-96 (intsum=160) in hexadecimal: 21+7f=ffffffa0 (intsum=a0)
// in decimal: 33+1=34 (intsum=34) in hexadecimal: 21+1=22 (intsum=22)
// in decimal: 33+33=66 (intsum=66)  in hexadecimal: 21+21=42 (intsum=42)
