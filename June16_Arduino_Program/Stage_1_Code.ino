int light = 0; // to store the current light value


void setup()
{
  Serial.begin(9600); //configuring the serial number (9600) to read analog sensor data to the computer (Serial Monitor)
  pinMode(9, OUTPUT); // Initializing "9" pin in the arduino mini to the program
}

void loop()
{
  light = analogRead(A0); // the analog reader will be intialized from A0 in the arduino mini

  Serial.println(light); // print current light value

  if (light > 550) // if the environment's light is greater than 550, proceed.
  {
    Serial.println ("It is Bright Light!"); // print to the output screen "It is Bright Light"
    analogWrite(9, LOW); // to turn the Led light off
  }
  else if (light > 350 && light < 550) // if the environment's light is in the range of 250 and 550, proceed.
  {
    Serial.println ("It is Indoor Light."); // print to the output screen "It is Indoor Light"
    analogWrite(9, 20); // to turn the LED on with an average brightness
  }
  else // if the environement's light was not greater than 550 and does not match the initialized range, proceed.
  {
    Serial.println ("It is Dark!"); // print to the output screen "It is Dark!"
    analogWrite(9, 255); // to turn the LED on with the highest brightness
  }
  delay(1000);
}
