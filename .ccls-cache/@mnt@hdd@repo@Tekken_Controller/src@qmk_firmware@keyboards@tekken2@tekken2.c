#include "quantum.h"
#include "print.h"

#ifdef DIRECT_PINS
#  define DIRECT_PINS { \
    { GP28, GP17, GP16, GP9 }, \
    { GP22, GP6,  GP19, GP21 }, \
    { GP7,  GP18, GP20, GP8 } \
  }
#endif

const pin_t direct_pins[MATRIX_ROWS][MATRIX_COLS] = {
    { GP28,  GP17,  GP16,  GP9},
    { GP22,  GP6,  GP19,  GP21},
    { GP7, GP18, GP20, GP8},
};


void matrix_scan_user(void) {
    for (int row = 0; row < MATRIX_ROWS; row++) {
        for (int col = 0; col < MATRIX_COLS; col++) {
            pin_t pin = direct_pins[row][col];
            bool pressed = !readPin(pin); // pressed = LOW
            if (pressed) {
                uprintf("Key pressed at row %d col %d (pin GP%lu)\n", row, col, (unsigned long)pin);
            }
        }
    }
}
