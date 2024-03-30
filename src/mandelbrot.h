#ifndef MANDELBROT
#define MANDELBROT

#include "common.h"

//! @details Calculates for all points in specified area (see below) 
//! number of steps it takes the point to enter the 'DEAD ZONE' (see .h).
//! If ret_res != NULL, calls this func for every calculated point, using
//! its integer indexes (like in a bidimensional arrey) and passing the number 
//! of step, on which the point entered the 'DEAD ZONE'. If it is larger than
//! uint8_t max value, returns zero (which can mean it is actually infinity).
//! Area:
//!     - (top_left_x, top_left_y) is its top left corner in cartesian coordinates; 
//!     - area's width  = image_width*step;
//!     - area's height = image_height*step;
//!     - total number of procesed points = image_width*image_height.
//! Step:
//!     - distance between two consecutive points 
//! @note This func must be used only in graphics mode, in testing mode alg's are called on their own.
void calculate_image( State state, void (*ret_res)(unsigned i,unsigned j,u_int8_t step_number) = NULL );

//! //TODO description
void alg_single_dot ( State st, void (*ret_res)(unsigned i,unsigned j,u_int8_t step_number) );

void alg_vectors    ( State st, void (*ret_res)(unsigned i,unsigned j,u_int8_t step_number) );

void alg_sse        ( State st, void (*ret_res)(unsigned i,unsigned j,u_int8_t step_number) );

void alg_avx        ( State st, void (*ret_res)(unsigned i,unsigned j,u_int8_t step_number) );

#endif /* MANDELBROT */