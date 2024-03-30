#include "mandelbrot.h"
#include "SFML/Config.hpp"

void calculate_image( State state, void (*ret_res)(unsigned i,unsigned j,u_int8_t step_number) )
{
    // TODO - в state будет храниться алгоритм, который в данный момент используется в графическом режиме
    // и тут нужный вызывается
    alg_sse( state, ret_res );
}

// ----------------------------- ALG_SINGLE_DOT -----------------------------------------

//! @brief Calculates at which step number given point (start_x, start_y)
//! enters dead zone. 
inline u_int8_t calc_step_number( double start_x, double start_y, double death_radius )
{
    double curr_x = 0;
    double curr_y = 0;

    u_int8_t step_number = 0;
    for ( ; step_number < INFINITE_STEP_NUMBER; step_number++ )
    {
        if (curr_x*curr_x + curr_y*curr_y >= death_radius * death_radius)
            break;

        double new_curr_x = curr_x*curr_x - curr_y*curr_y + start_x;
        double new_curr_y = 2*curr_x*curr_y + start_y;

        curr_x = new_curr_x;
        curr_y = new_curr_y;
    }

    return step_number;
}

void alg_single_dot( State st, void (*ret_res)(unsigned i,unsigned j,u_int8_t step_number) )
{
    for ( unsigned i = 0; i < st.window_height; i++ )
    {
        for ( unsigned j = 0; j < st.window_width; j++ )
        {
            double start_x = st.top_left_x + j*st.step;
            double start_y = st.top_left_y - i*st.step; //< axis 'i' points down

            if (ret_res) ret_res( i, j, calc_step_number( start_x, start_y, st.death_radius ) );
        }
    }
}

// ------------------------------------------------------------------------------------------------

// ------------------------------------- ALG_VECTORS ----------------------------------------------

#define foreach4 for (unsigned i = 0; i < 4; i++)

void alg_vectors( State st, void (*ret_res)(unsigned i,unsigned j,u_int8_t step_number) )
{
    for ( unsigned pix_i = 0; pix_i < st.window_height; pix_i++ )
    {
        double start_y_0 = st.top_left_y - pix_i*st.step; //< axis 'i' points down
        for ( unsigned pix_j = 0; pix_j < st.window_width; pix_j+=4 )
        {
            double start_x_0 = st.top_left_x + pix_j*st.step;

            double start_x[4] = {start_x_0, start_x_0 + st.step, start_x_0 + 2*st.step, start_x_0 + 3*st.step};
            double start_y[4] = {start_y_0, start_y_0,           start_y_0,             start_y_0            };

            double curr_x[4]  = {start_x_0, start_x_0 + st.step, start_x_0 + 2*st.step, start_x_0 + 3*st.step};
            double curr_y[4]  = {start_y_0, start_y_0,           start_y_0,             start_y_0            };

            u_int8_t curr_step_n[4] = {0, 0, 0, 0};

            for ( int step_n = 0; step_n < INFINITE_STEP_NUMBER; step_n++ )
            {
                double curr_x_sqr[4] = {}; foreach4 curr_x_sqr[i] = curr_x[i]*curr_x[i];
                double curr_y_sqr[4] = {}; foreach4 curr_y_sqr[i] = curr_y[i]*curr_y[i];
                double curr_xy[4]    = {}; foreach4 curr_xy[i]    = curr_x[i]*curr_y[i];

                double mod_sqr[4] = {}; foreach4 mod_sqr[i] = curr_x_sqr[i]+curr_y_sqr[i];
                
                int is_in_life_zone[4] = {};
                double death_r_sqr = st.death_radius*st.death_radius;
                foreach4 if (mod_sqr[i] <= death_r_sqr) is_in_life_zone[i] = 1;

                int mask = 0;
                foreach4 mask |= ( is_in_life_zone[i] << i );
                if (!mask) break;

                foreach4 curr_step_n[i] += (u_int8_t) is_in_life_zone[i];

                foreach4 curr_x[i] = curr_x_sqr[i] - curr_y_sqr[i] + start_x[i];
                foreach4 curr_y[i] = 2*curr_xy[i] + start_y[i];
            }

            if (ret_res)
                foreach4 ret_res( pix_i, pix_j+i, curr_step_n[i] );
        }
    }
}

// ------------------------------------------------------------------------------------------------

// ----------------------------------------- ALG_SSE ----------------------------------------------

#include <emmintrin.h>

void alg_sse( State st, void (*ret_res)(unsigned i,unsigned j,u_int8_t step_number) )
{
    const __m128 death_r_sqr = _mm_set_ps1( (float) (st.death_radius*st.death_radius) );
    
    const __m128 offsets = _mm_set_ps(3.f, 2.f, 1.f, 0.f);

    for ( unsigned pix_i = 0; pix_i < st.window_height; pix_i++ )
    {
        float start_y_0 = (float) (st.top_left_y - pix_i*st.step); //< axis 'i' points down
        for ( unsigned pix_j = 0; pix_j < st.window_width; pix_j+=4 )
        {
            float start_x_0 = (float) (st.top_left_x + pix_j*st.step);

            __m128 start_x = _mm_add_ps(_mm_set_ps1(start_x_0), _mm_mul_ps(offsets, _mm_set_ps1((float) st.step)));
            __m128 start_y = _mm_set_ps1( start_y_0 );

            __m128 curr_x  = start_x;
            __m128 curr_y  = start_y;

            __m128i curr_step_n = _mm_setzero_si128();

            for ( int step_n = 0; step_n < INFINITE_STEP_NUMBER; step_n++ )
            {
                __m128 curr_x_sqr = _mm_mul_ps( curr_x, curr_x );
                __m128 curr_y_sqr = _mm_mul_ps( curr_y, curr_y );
                __m128 curr_xy    = _mm_mul_ps( curr_x, curr_y );
                
                __m128 mod_sqr = _mm_add_ps( curr_x_sqr, curr_y_sqr ); 
                
                __m128 is_in_life_zone = _mm_cmple_ps( mod_sqr, death_r_sqr );

                int mask = _mm_movemask_ps( is_in_life_zone );
                if (!mask) break;

                curr_step_n = _mm_sub_epi32(curr_step_n, _mm_castps_si128(is_in_life_zone));

                curr_x = _mm_add_ps( _mm_sub_ps( curr_x_sqr, curr_y_sqr ), start_x );
                curr_y = _mm_add_ps( _mm_add_ps( curr_xy, curr_xy ),       start_y );
            }

            if (ret_res)
                foreach4 ret_res( pix_i, pix_j+i, *((u_int8_t*)&curr_step_n + i*sizeof(int)) );
        }
    }
}

// ------------------------------------------------------------------------------------------------