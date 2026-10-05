void setup() {
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(16, INPUT_PULLUP);
}

/*
28 17 16 09
22 06 19 21
07 18 20 08
*/

void loop() {
  if(digitalRead(16) == LOW){
    digitalWrite(LED_BUILTIN, HIGH);
  } else {
    digitalWrite(LED_BUILTIN, LOW);
  }
  delay(10);
}
