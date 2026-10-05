// Copyright 2023 QMK
// SPDX-License-Identifier: GPL-2.0-or-later

#include QMK_KEYBOARD_H

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
     /*
      * ┌───┬───┬───┬───┬───┐
      * │ Q │ W │ E │ R │ T │
      * ├───┼───┼───┼───┼───┤
      * │ A │ S │ D │ F │ G │
      * ├───┼───┼───┼───┼───┤
      * │ Z │ X │ C │ V │ B │
      * └───┴───┴───┴───┴───┘
      *           ┌───┐      
      *           │GUI├───┐  
      *           └───┤Bsp├───┐
      *               └───┤   │
      *                   └───┘
      */
    [0] = LAYOUT_split_3x5_3(
        KC_Q,   KC_W,   KC_E,       KC_R,       KC_T,
        KC_A,   KC_S,   KC_D,       KC_F,       KC_G,
        KC_Z,   KC_X,   KC_C,       KC_V,        KC_B,
        KC_LGUI,    KC_BSPC,    KC_SPC
    )
};

