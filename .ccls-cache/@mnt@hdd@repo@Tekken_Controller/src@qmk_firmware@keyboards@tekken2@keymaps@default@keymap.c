// Copyright 2023 QMK
// SPDX-License-Identifier: GPL-2.0-or-later

#include QMK_KEYBOARD_H

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
    /* [0] = LAYOUT_ortho_4x4( */
    /*     KC_P7,   KC_P8,   KC_P9,   KC_PSLS, */
    /*     KC_P4,   KC_P5,   KC_P6,   KC_PAST, */
    /*     KC_P1,   KC_P2,   KC_P3,   KC_PMNS */
    /* ) */
    /* [0] = LAYOUT_ortho_4x4( */
    /*     KC_R,   KC_W,   KC_O,   KC_P, */
    /*     KC_A,   KC_S,   KC_D,   KC_K, */
    /*     KC_V,   KC_C,   KC_X,   KC_M */
    /* ) */
    [0] = LAYOUT_ortho_4x4(
        KC_U,   KC_I,   KC_W,   KC_B,
        KC_J,   KC_A,   KC_S,   KC_D,
        KC_K,   KC_V,   KC_O,   KC_P
    )
};
