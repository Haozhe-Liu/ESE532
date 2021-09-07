#include <stdio.h>
#include <stdlib.h>

int main(){
    int a[8] = {10,20,30,40,50,60,70,80};
    int **p1 , *p2 , *p3 ;
    p1 = &p2; p2 = &a[0]; p3= &a[4];

    for(int i=7; i>=0; i--){
        printf("%p %d\n", &a[i], a[i]);
    }

    //printf("\n%p %d\n", &a[4], a[4]); // pointer p3 points to a[4] , the value of p2 is 50
    printf("%p -> %p %d\n", &p3, p3, *p3);

    //printf("\n%p %d\n", &a[0], a[0]); // pointer p2 points to a[0] , the value of p1 is 10
    printf("%p -> %p %d\n", &p2, p2, *p2);

    printf("%p -> %p -> %p\n", &p1, p1, *p1);

    return 0;

}

// results
// 0x7fff6a4e57cc 80
// 0x7fff6a4e57c8 70
// 0x7fff6a4e57c4 60
// 0x7fff6a4e57c0 50
// 0x7fff6a4e57bc 40
// 0x7fff6a4e57b8 30
// 0x7fff6a4e57b4 20
// 0x7fff6a4e57b0 10
// 0x7fff6a4e57a8 -> 0x7fff6a4e57c0 50
// 0x7fff6a4e57a0 -> 0x7fff6a4e57b0 10
// 0x7fff6a4e5798 -> 0x7fff6a4e57a0 -> 0x7fff6a4e57b0
