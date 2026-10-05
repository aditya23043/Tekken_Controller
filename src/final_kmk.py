import board

from kmk.kmk_keyboard import KMKKeyboard
from kmk.keys import KC
from kmk.scanners.keypad import KeysScanner

from kmk.modules.holdtap import HoldTap, HoldTapRepeat
from kmk.modules.layers import Layers
from kmk.modules.mouse_keys import MouseKeys
from kmk.modules.macros import Macros
from kmk.modules.tapdance import TapDance
from kmk.modules.sticky_keys import StickyKeys

_KEY_CFG = [
    board.GP28,  board.GP17,  board.GP16, board.GP9,
    board.GP22,  board.GP6,  board.GP19, board.GP21,
    board.GP7, board.GP18, board.GP20, board.GP8
]


class MyKeyboard(KMKKeyboard):
    def __init__(self):
        super().__init__()
        self.matrix = KeysScanner(
            pins=_KEY_CFG,
            value_when_pressed=False,
            pull=True,
        )
        self.coord_mapping = [
             0,  1,  2,  3,
             4,  5,  6,  7,
             8,  9, 10, 11,
        ]

keyboard = MyKeyboard()

keyboard.keymap = [

    [
        KC.Q, KC.W, KC.E, KC.R,
        KC.A, KC.S, KC.D, KC.F,
        KC.Z, KC.X, KC.C, KC.V,
    ]

]

if __name__ == '__main__':
    keyboard.go()
