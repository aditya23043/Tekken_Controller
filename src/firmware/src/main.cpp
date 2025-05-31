#include <Arduino.h>
#include <USBMouseKeyboard.h>

/*
28 27 26 09
22 06 19 21
07 18 20 08
*/

const int VRX = 27;
const int VRY = 26;
const int SW = 14;

const int pins[] = {28, 27, 26, 9, 22, 6, 19, 21, 7, 18, 20, 8};
const char mapping[] = {};

const int sensitivity = 5;

USBMouseKeyboard key_mouse;

void setup() {
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(SW, INPUT_PULLUP);
}

void loop() {

  int x_value = analogRead(VRX);
  int y_value = analogRead(VRY);
  int button = digitalRead(SW);

  if (y_value == 5) {
    key_mouse.move(0, -1 * sensitivity);
  } else if (y_value < 400) {
    key_mouse.move(0, -1 * (sensitivity - 3));
  }
  if (y_value == 1023) {
    key_mouse.move(0, sensitivity);
  } else if (y_value > 600) {
    key_mouse.move(0, (sensitivity - 3));
  }

  if (x_value == 5) {
    key_mouse.move(sensitivity, 0);
  } else if (x_value < 400) {
    key_mouse.move((sensitivity - 3), 0);
  }

  if (x_value == 1023) {
    key_mouse.move(-1 * sensitivity, 0);
  } else if (x_value > 600) {
    key_mouse.move(-1 * (sensitivity - 3), 0);
  }

  if (button == LOW) {
    key_mouse.click(MOUSE_LEFT);
  }

  delay(10);
}
