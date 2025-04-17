#include <Arduino.h>

const int VRX = 26;
const int VRY = 27;
const int SW = 14;

void setup() {
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(SW, INPUT_PULLUP);
  Serial.begin(115200);
}

void loop() {

  int x_value = analogRead(VRX);
  int y_value = analogRead(VRY);
  bool button = digitalRead(SW) == LOW;

  Serial.print("X: ");
  Serial.print(x_value);
  Serial.print(" | Y: ");
  Serial.print(y_value);
  Serial.print(" | Button: ");
  Serial.println(button ? "Pressed" : "Released");

  delay(100);
}
