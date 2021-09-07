#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

/*
* definition of linked list node
* the value is the element in the list
* the pointer points to the next element in the list
* if it exists
*/
typedef struct node_struct {
    int8_t value;
    struct node_struct* next;
} node_struct;

// when the list is not empty, this variable will always contain
// the element in the first position in the list (the ¡°head¡± of the list)
static node_struct* head;



// This function will perform the insertion sort and maintain the linked list
// you will need to maintain the links and properly place the new element
void insert_in_order(node_struct* new_element) {
    // YOUR CODE HERE

    node_struct* tail = head;

    if (tail) {
        while (tail->next) {
            tail = tail->next;
        }
        tail->next = new_element;
    }
    else {
        head = new_element;
    }

    node_struct* p1 = NULL;
    node_struct* teil = NULL;
    p1 = head->next;
    while (p1 != teil && head->next != NULL) {
        while (p1->next != teil) {
            if (p1->value > p1->next->value) {
                int8_t temp = p1->value;
                p1->value = p1->next->value;
                p1->next->value = temp;
            }
            p1 = p1->next;
        }
        teil = p1;
        p1 = head->next;
    }
}

// this function creates a new entry into the list to be inserted

void add_element(int8_t value) {
    // create a new element in our list
    node_struct* new_element = (node_struct*)malloc(sizeof(node_struct));
    if (new_element == NULL) {
        printf("malloc failed \n");
        return;
    }
    // assign our values
    new_element->value = value;
    new_element->next = NULL;
    insert_in_order(new_element);
    
}

// prints the entirety of our list
void print_list() {
    if (head == NULL) {
        printf("list is empty \n");
        return;
    }

    node_struct* element = head->next;  // to exclude the pre-node

    while (element != NULL) {
        printf("value in list %d \n", element->value);
        element = element->next;
    }
}

int main() {
    int8_t a = 20;
    int8_t b = 5;
    int8_t c = 10;
    int8_t d = 21;
    int8_t e = 41;
    int8_t f = 2;

    head = NULL;

    head = (node_struct*)malloc(sizeof(node_struct)); //add another pre-node 
    head->next = NULL;


    add_element(a);
    add_element(b);
    add_element(c);
    add_element(d);
    add_element(e);
    add_element(f);


    print_list();

    return 0;
}