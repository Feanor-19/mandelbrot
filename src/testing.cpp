#include "testing.h"
#include "mandelbrot.h"
#include "math.h"

typedef unsigned long long ticks_t;

inline ticks_t rdtsc() {
	unsigned int lo, hi;
	asm volatile ( "rdtsc\n" : "=a" (lo), "=d" (hi) );
	return ((ticks_t)hi << 32) | lo;
}

inline void run_test( const State params, ticks_t *test_res, uint64_t num_of_reps,
                      void (*f)( State st, void (*ret_res)(unsigned i,unsigned j,u_int8_t step_number) ) )
{
    uint64_t one_percet_of_all_tests = num_of_reps / 100;
    printf("Progress: 00%%");
    for ( u_int64_t rep = 0; rep < num_of_reps; rep++ )
    {
        ticks_t t_start = rdtsc();

        f( params, NULL );

        /* REVIEW - переполнение? */
        ticks_t time = rdtsc() - t_start;
        test_res[rep] = time;

        if (rep % one_percet_of_all_tests == 0)
        {
            printf("\b\b\b%02lu%%", rep / one_percet_of_all_tests);
            fflush(stdout);
        }
    }
    printf( "\b\b\b100%%\n" );
}

inline void calc_stat( const ticks_t *test_res, uint64_t num_of_reps, double *avg_ptr, double *abs_err_ptr )
{
    ticks_t sum = 0;
    for ( uint64_t i = 0; i < num_of_reps; i++ )
    {
        sum += test_res[i];
    }

    double avg = (double) sum / (double) num_of_reps;
    *avg_ptr = avg;

    double sum_sqr_diff = 0;
    for ( uint64_t i = 0; i < num_of_reps; i++ )
    {
        double tmp = (double) test_res[i] - avg;
        sum_sqr_diff += tmp*tmp;
    }

    *abs_err_ptr = sqrt( sum_sqr_diff / (double) ( num_of_reps * (num_of_reps - 1) ) );
}

#define RUN_TEST( alg__ )                                           \
    no_tests_to_run = false;                                        \
    printf( "Testing " #alg__ "...\n" );                            \
    run_test( settings->params, test_res, num_of_reps, alg__ );     \
    calc_stat( test_res, num_of_reps, &average, &abs_err );         \
    printf( "\tAverage: %g\n\tAbsolute error: %g\n\tRelative error: %g%%\n",\
            average, abs_err, abs_err / average * 100 );


void run_tests( const Settings *settings )
{
    uint64_t num_of_reps = settings->num_of_reps;

    ticks_t *test_res = (ticks_t*) calloc( num_of_reps, sizeof(ticks_t) );
    double average = 0;
    double abs_err = 0;

    bool no_tests_to_run = true;
    if ( settings->alg_all || settings->alg_single_dot )
    {
        RUN_TEST( alg_single_dot );
    }

    if ( settings->alg_all || settings->alg_vectors )
    {
        RUN_TEST( alg_vectors );
    }

    if ( settings->alg_all || settings->alg_sse )
    {
        RUN_TEST( alg_sse );
    }

    if (no_tests_to_run)
        printf( "No tests were tasked to run. Use --alg-all to run all tests,"
                "or see docs to learn which tests can be run on your machine.\n" );

    free(test_res);
}