#ifndef SETTINGS_H
#define SETTINGS_H

#include <getopt.h>

#include "common.h"

//NOTE (w_width * w_height) must be a multiple of 4!

enum LongOptionsIds
{
    ID_W_WIDTH,
    ID_W_HEIGHT,
    ID_TOP_LEFT_X,
    ID_TOP_LEFT_Y,
    ID_STEP,
    ID_NUM_OF_REPS,
    ID_DEATH_RADIUS,
    //! Algorithms
    ALG_ALL,
    ALG_SINGLE_DOT,
    ALG_VECTORS,
    ALG_SSE,
};

struct option const long_options[] = 
{
    {"width",        required_argument, 0, ID_W_WIDTH       },
    {"height",       required_argument, 0, ID_W_HEIGHT      },
    {"top-left-x",   required_argument, 0, ID_TOP_LEFT_X    },
    {"top-left-y",   required_argument, 0, ID_TOP_LEFT_Y    },
    {"step",         required_argument, 0, ID_STEP          },
    {"num-of-reps",  required_argument, 0, ID_NUM_OF_REPS   },
    {"death-radius", required_argument, 0, ID_DEATH_RADIUS  },
    //! Algorithms
    {"alg-all",         no_argument, 0, ALG_ALL       },
    {"alg-single-dot",  no_argument, 0, ALG_SINGLE_DOT},
    {"alg-vectors",     no_argument, 0, ALG_VECTORS   },
    {"alg-sse",         no_argument, 0, ALG_SSE       },
    {0, 0, 0, 0}
};

enum SettingsStatus
{
    SETS_STATUS_OK,
    SETS_STATUS_ERROR_WIDTH_MUL_HEIGHT_NOT_MULTIPLE_OF_4,
};


void parse_cmd_args( int argc, char **argv, Settings *settings );

SettingsStatus check_settings( const Settings *settings );

void print_settings_error( SettingsStatus status );

void print_settings( const Settings *settings );

#endif /* SETTINGS_H */