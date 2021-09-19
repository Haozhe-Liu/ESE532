#include <iostream>
#include <thread>
#include "Utilities.h"
#include <unistd.h>
#include <array>

void my_function(int a, int b) {
    int c = a + b;
    std::cout << "From thread id:"
            << std::this_thread::get_id()
            << " a+b=" << c << std::endl;
    sleep(60);
}

int main() {
    // pin main thread to cpu 0
    pin_main_thread_to_cpu0();

    int a = 2;
    int b = 3;
    

    // create an array of threads
    std::array<std::thread, 4> threads;
    
    // spawn some threads and pin them to specific cpus
    for(int i = 0; i < 4; i++) {
      threads[i] = std::thread(&my_function, a, b);
      pin_thread_to_cpu(threads[i], 2*i+1); 
    }

    // wait for threads to finish
    for(std::thread& th : threads) {
      th.join();
    }
}
