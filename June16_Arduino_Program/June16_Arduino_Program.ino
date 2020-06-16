int light = 0; // to store the current light value
// constants won't change. They're used here to set pin numbers:
const int buttonPin = 10;     // the number of the pushbutton pin
const int Button_led_Pin1 =   6;      // the number of the LED pin
const int Button_led_Pin2 =   5;      // the number of the LED pin
const int Button_led_Pin3 =   3;      // the number of the LED pin

int buttonState = 0;         // variable for reading the pushbutton status

void setup()
{
  // initializing the LED pin as an output:
  pinMode(Button_led_Pin1, OUTPUT);
  pinMode(Button_led_Pin2, OUTPUT);
  pinMode(Button_led_Pin3, OUTPUT);
  // initializing the Button pin as an input:
  pinMode(buttonPin, INPUT);

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

  // read the state of the pushbutton value:
  buttonState = digitalRead(buttonPin);


  // check if the the Button is pressed. If it is, the buttonState is HIGH (Open)
  if (buttonState ==  HIGH)
  {
    // turn LED on:
    digitalWrite(Button_led_Pin1, HIGH);
    digitalWrite(Button_led_Pin2, HIGH);
    digitalWrite(Button_led_Pin3, HIGH);
  }
  else
  {
    // turn LED off:
    digitalWrite(Button_led_Pin1, LOW);
    digitalWrite(Button_led_Pin2, LOW);
    digitalWrite(Button_led_Pin3, LOW);
  }
}
