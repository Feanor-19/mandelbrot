#ifndef HANDLERS
#define HANDLERS

#include "common.h"


//! @brief Handles events of the given window.
void handle_events( sf::Window &window, const State *state_ptr );

//! @brief Handles keyboard, changes *state_ptr if needed.
void handle_keyboard( State *state_ptr );

#endif /* HANDLERS */