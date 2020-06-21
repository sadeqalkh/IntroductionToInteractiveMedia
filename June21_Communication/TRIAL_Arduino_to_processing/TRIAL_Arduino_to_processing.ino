void setup() 
{
  // initialize the serial communication:
  Serial.begin(9600);
}

void loop() {
  // send the value of analog input 0:
  Serial.println(digitalRead(13));
  Serial.println(digitalRead(12));
  Serial.println(digitalRead(7));
  // wait a bit for the digital converter to stabilize after the last
  // reading:
  delay(2);
}
