#include <stdlib.h>
#include <stdio.h>
#include "App.h"
#include <cstdint>
#include <chrono>
#include <iostream>

#define INPUT_HEIGHT (4500)
#define INPUT_WIDTH (6000)

#define FILTER_LENGTH (7)

#define OUTPUT_HEIGHT (INPUT_HEIGHT - (FILTER_LENGTH - 1))
#define OUTPUT_WIDTH (INPUT_WIDTH - (FILTER_LENGTH - 1))

class stopwatch
{
  public:
    double total_time, calls;
    std::chrono::time_point<std::chrono::high_resolution_clock> start_time, end_time;
    stopwatch() : total_time(0), calls(0) {};

    inline void reset() {
      total_time = 0;
      calls = 0;
    }

    inline void start() {
      start_time = std::chrono::high_resolution_clock::now();
      calls++;
    };

    inline void stop() {
      end_time = std::chrono::high_resolution_clock::now();
      auto elapsed = std::chrono::duration_cast<std::chrono::nanoseconds>(end_time-start_time).count();
      total_time += static_cast<double>(elapsed);
    };

    // return latency in ns
    inline double latency() {
      return total_time;
    };

    // return latency in ns
    inline double avg_latency() {
      return (total_time / calls);
    };
};

unsigned Coefficients[] = {2, 15, 62, 98, 62, 15, 2};

void Filter_horizontal(const unsigned char * Input, unsigned char * Output)
{
  LOOP1: for (int Y = 0; Y < INPUT_HEIGHT; Y++)
    LOOP2: for (int X = 0; X < OUTPUT_WIDTH; X++)
    {
      unsigned int Sum = 0;
      LOOP3: for (int i = 0; i < FILTER_LENGTH; i++)
        Sum += Coefficients[i] * Input[Y * INPUT_WIDTH + X + i];
      // Sum += Coefficients[0] * Input[Y * INPUT_WIDTH + X + 0];
      // Sum += Coefficients[1] * Input[Y * INPUT_WIDTH + X + 1];  
      // Sum += Coefficients[2] * Input[Y * INPUT_WIDTH + X + 2];  
      // Sum += Coefficients[3] * Input[Y * INPUT_WIDTH + X + 3];    
      // Sum += Coefficients[4] * Input[Y * INPUT_WIDTH + X + 4];  
      // Sum += Coefficients[5] * Input[Y * INPUT_WIDTH + X + 5];  
      // Sum += Coefficients[6] * Input[Y * INPUT_WIDTH + X + 6];  
      Output[Y * OUTPUT_WIDTH + X] = Sum >> 8;
    }
}

void Filter_vertical(const unsigned char * Input, unsigned char * Output)
{
  LOOP1: for (int Y = 0; Y < OUTPUT_HEIGHT; Y++)
    LOOP2: for (int X = 0; X < OUTPUT_WIDTH; X++)
    {
      unsigned int Sum = 0;
      LOOP3: for (int i = 0; i < FILTER_LENGTH; i++)
        Sum += Coefficients[i] * Input[(Y + i) * OUTPUT_WIDTH + X];
      // Sum += Coefficients[0] * Input[(Y + 0) * OUTPUT_WIDTH + X];
      // Sum += Coefficients[1] * Input[(Y + 1) * OUTPUT_WIDTH + X];
      // Sum += Coefficients[2] * Input[(Y + 2) * OUTPUT_WIDTH + X];
      // Sum += Coefficients[3] * Input[(Y + 3) * OUTPUT_WIDTH + X];
      // Sum += Coefficients[4] * Input[(Y + 4) * OUTPUT_WIDTH + X];
      // Sum += Coefficients[5] * Input[(Y + 5) * OUTPUT_WIDTH + X];
      // Sum += Coefficients[6] * Input[(Y + 6) * OUTPUT_WIDTH + X];
      
      Output[Y * OUTPUT_WIDTH + X] = Sum >> 8;
    }
}

void Filter(const unsigned char * Input, unsigned char * Output)
{
  unsigned char * Temp = (unsigned char*)malloc(INPUT_HEIGHT * OUTPUT_WIDTH);
  
  stopwatch time_Filter_horizontal;
  stopwatch time_Filter_vertical;

  time_Filter_horizontal.start();
  Filter_horizontal(Input, Temp);
  time_Filter_horizontal.stop();

  time_Filter_vertical.start();
  Filter_vertical(Temp, Output);
  time_Filter_vertical.stop();

  std::cout << "Total latency of Filter_horizontal is: " << time_Filter_horizontal.latency() << " ns." << std::endl;
  std::cout << "Total latency of Filter_vertical is: " << time_Filter_vertical.latency() << " ns." << std::endl;
  std::cout << "---------------------------------------------------------------" << std::endl;
  std::cout << "Average latency of Filter_horizontal per loop iteration is: " << time_Filter_horizontal.avg_latency() << " ns." << std::endl;
  std::cout << "Average latency of Filtime_Filter_vertical per loop iteration is: " <<time_Filter_vertical.avg_latency() << " ns." << std::endl;
  std::cout << "---------------------------------------------------------------" << std::endl;
  
  free(Temp);
}

