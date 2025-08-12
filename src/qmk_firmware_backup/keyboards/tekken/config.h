#pragma once

#define MATRIX_ROWS 3
#define MATRIX_COLS 4

#define DIRECT_PINS                                         \
    {                                                       \
        {GP28, GP17, GP16, GP9}, {GP22, GP6, GP19, GP21}, { \
            GP7, GP18, GP20, GP8                            \
        }                                                   \
    }

#define DIODE_DIRECTION COL2ROW
