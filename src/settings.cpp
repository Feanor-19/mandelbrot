#include "settings.h"

#include <assert.h>

void parse_cmd_args( int argc, char **argv, Settings *settings )
{
    assert(argv);
    assert(settings);

    int c = 0;

    while (1)
    {
        // getopt_long stores the option index here
        int option_index = 0;

        c = getopt_long(argc, argv, "t", long_options, &option_index);

        // Detect the end of the options
        if (c == -1)
            break;

        switch (c)
        {
            case 't':
                settings->testing = true;
                break;
            
            case ID_W_WIDTH:
                if ( sscanf( optarg, "%u", &settings->params.window_width ) != 1 )
                    printf( "--w-width has a bad argument <%s>, setting it to default\n", optarg );
                break;

            case ID_W_HEIGHT:
                if ( sscanf( optarg, "%u", &settings->params.window_height ) != 1 )
                    printf( "--w-height has a bad argument <%s>, setting it to default\n", optarg );
                break;

            case ID_TOP_LEFT_X:
                if ( sscanf( optarg, "%lf", &settings->params.top_left_x ) != 1 )
                    printf( "--top-left-x has a bad argument <%s>, setting it to default\n", optarg );
                break;

            case ID_TOP_LEFT_Y:
                if ( sscanf( optarg, "%lf", &settings->params.top_left_y ) != 1 )
                    printf( "--top-left-y has a bad argument <%s>, setting it to default\n", optarg );
                break;

            case ID_STEP:
                if ( sscanf( optarg, "%lf", &settings->params.step ) != 1 )
                    printf( "--step has a bad argument <%s>, setting it to default\n", optarg );
                break;

            case ID_NUM_OF_REPS:
                if ( sscanf( optarg, "%lu", &settings->num_of_reps ) != 1 )
                    printf( "--num-of-reps has a bad argument <%s>, setting it to default\n", optarg );
                break;

            case ID_DEATH_RADIUS:
                if ( sscanf( optarg, "%lf", &settings->params.death_radius ) != 1 )
                    printf( "--death-radius has a bad argument <%s>, setting it to default\n", optarg );
                break;
            case ALG_ALL:
                settings->alg_all = true;
                break;
            case ALG_SINGLE_DOT:
                settings->alg_single_dot = true;
                break;
            case ALG_VECTORS:
                settings->alg_vectors = true;
                break;
            case ALG_SSE:
                settings->alg_sse = true;
                break;
            case ALG_AVX:
                settings->alg_avx = true;
                break;
            case '?':
                // getopt_long already printed an error message
                break;

            default:
                assert(0 && "Unreacheable line!");
        }
    }

    // Print any remaining command line arguments (not options).
    if (optind < argc)
        {
        printf ("Unrecognised options: ");
        while (optind < argc)
            printf ("%s ", argv[optind++]);
        putchar ('\n');
        }
        
}

SettingsStatus check_settings( const Settings *settings )
{
    if ( settings->params.window_width * settings->params.window_height % 4 != 0 )
        return SETS_STATUS_ERROR_WIDTH_MUL_HEIGHT_NOT_MULTIPLE_OF_4;

    return SETS_STATUS_OK;
}

void print_settings_error( SettingsStatus status )
{
    switch (status)
    {
    case SETS_STATUS_OK:
        assert(0 && "Unreacheable line!");
        break;
    case SETS_STATUS_ERROR_WIDTH_MUL_HEIGHT_NOT_MULTIPLE_OF_4:
        printf( "ERROR: window's width multiplied with window's height must be a multiple of 4!\n" );
    default:
        break;
    }
}

void print_settings( const Settings *settings )
{
    printf( "Applied settings:\n"
            "\tWindow's width:  %u\n"
            "\tWindow's height: %u\n"
            "\tTop left corner's x coordinate: %lf\n"
            "\tTop left corner's y coordinate: %lf\n"
            "\tStep (size of one pixel): %lf\n"
            "\tDeath raduis: %lf\n",
            settings->params.window_width,
            settings->params.window_height,
            settings->params.top_left_x,
            settings->params.top_left_y,
            settings->params.step,
            settings->params.death_radius);

    if ( settings->testing )
    {
        printf( "Testing mode. Graphics won't be invoked.\n" );
        printf( "\tNumber of times a test will be repeated: %lu\n",
                settings->num_of_reps );
    }
}