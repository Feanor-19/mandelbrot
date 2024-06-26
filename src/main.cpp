#include "common.h"
#include "handlers.h"
#include "image.h"
#include "mandelbrot.h"
#include "settings.h"
#include "testing.h"

int main(int argc, char **argv)
{
    Settings settings;
    parse_cmd_args(argc, argv, &settings);
    SettingsStatus settings_status = check_settings( &settings );
    if (settings_status != SETS_STATUS_OK)
    {
        print_settings_error( settings_status );
        exit(settings_status);
    }
    print_settings( &settings );

    if ( settings.testing )
    {
        run_tests( &settings );
        exit(0);
    }

    // --------------------------------------------------------------------------------
    // graphics, no testing
    State state = settings.params;

    sf::RenderWindow window(sf::VideoMode( state.window_width, state.window_height ), W_NAME, 
                            sf::Style::Titlebar | sf::Style::Close);

    init_image( state.window_width, state.window_height );
    // drawing initial image
    calculate_image( state, set_pixel_color );

    sf::Texture window_texture;
    window_texture.loadFromImage( get_image() );

    sf::Sprite window_sprite;
    window_sprite.setTexture( window_texture );

    // For FPS
    clock_t last_clock = clock();
    int64_t frames = 0;
    printf( "FPS: % 10ld", frames );

    // main loop
    while (window.isOpen())
    {
        handle_events(window, &state);
        handle_keyboard( &state );

        calculate_image( state, set_pixel_color );
        window_texture.update( get_image() );

        // no window.clear(), because sprite takes up the whole window
        // and is always opaque

        window.draw( window_sprite );
        window.display();

        clock_t curr_clock = clock();
        if ( curr_clock - last_clock >= REF_CLOCKS )
        {
            printf( "\b\b\b\b\b\b\b\b\b\b% 10ld", frames * CLOCKS_PER_SEC / ( curr_clock - last_clock ) );
            fflush(stdout);
            last_clock = curr_clock;
            frames = 0;
        }
        else
        {
            frames++;
        }
    }
    // After FPS
    putchar('\n');
}