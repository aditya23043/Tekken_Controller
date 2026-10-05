// config.h
#pragma once

/* USB Device descriptor parameter */
#define VENDOR_ID 0xFEED
#define PRODUCT_ID 0x0000
#define DEVICE_VER 0x0001
#define MANUFACTURER Your_Name
#define PRODUCT 4x3_Direct_Keypad

/* key matrix size */
#define MATRIX_ROWS 3
#define MATRIX_COLS 4

/*
 * Direct pin configuration for RP2040
 * Each key connects directly to a GPIO pin
 */
#define DIRECT_PINS                                         \
    {                                                       \
        {GP28, GP17, GP16, GP9}, {GP22, GP6, GP19, GP21}, { \
            GP7, GP18, GP20, GP8                            \
        }                                                   \
    }

/* Set 0 if debouncing isn't needed */
#define DEBOUNCE 5

/* Mechanical locking support. Use KC_LCAP, KC_LNUM or KC_LSCR instead in keymap */
#define LOCKING_SUPPORT_ENABLE
/* Locking resynchronize hack */
#define LOCKING_RESYNC_ENABLE
