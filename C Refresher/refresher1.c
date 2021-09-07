#include <stdio.h>
#include <stdlib.h>

int global = 8;

int main(){

    printf("%p %d\n", &global, global);
    
    int *p1, *p2, *p3;              // from the bottom to the top of the stack (stack goes downward)
    int x = 20;
    p3 = &x;                        // p1 points to x
    p2=(int *)malloc(7*sizeof(int));   // alloc mem for heap
    p1=(int *)malloc(sizeof(int));   
    
    printf("\n%p %d\n", &x, x);        // pointer a points to x , the value of a is 20              
    printf("%p -> %p %d\n", &p3, p3, *p3);

    printf("\nHeap Locations:\n");
    printf("%p -> %p \n", &p2, p2);
    printf("%p -> %p \n", &p1, p1);

    free(p2); free(p1);
    p2=NULL; p3=NULL;


    return 0;
}

//results
//0x561996a82010 8
//
//0x7fff83cb071c 20
//0x7fff83cb0730 -> 0x7fff83cb071c 20
//
//Heap Locations:
//0x7fff83cb0728 -> 0x5619989ec670 
//0x7fff83cb0720 -> 0x5619989ec6a0 

