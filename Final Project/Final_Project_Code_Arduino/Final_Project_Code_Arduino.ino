//Sadeq M. Alkhoori
//Final Project
//June 24th, 2020

//This program transfers data from the "ultrasonic distance measuring sensor" to Processing. LEDs in this program are initialized as OUTPUTS, in which acts to the "ultrasonic distance measuring sensor" Serial Monitor data.

//for the Trig and Echo pins in the "ultrasonic distance measuring sensor"
const int Trigger_Pin = 12;
const int Echo_Pin = 11;

//for the "ultrasonic distance measuring sensor" we will need a "Pulse time", the "Distance" of an object and an "Old Distance" that updates to "Distance" if it is not equal to "Distance"
unsigned long Pulse_Time = 0;
unsigned Distance = 0;
unsigned Old_Distance = 0;

//for the LEDs,
const int Red_LedPin = 7;
const int Yellow_LedPin = 6;
const int Green_LedPin = 5;

void setup()
{

  // initialize the serial communication:
  pinMode (Trigger_Pin, OUTPUT);
  pinMode (Echo_Pin, INPUT);
  Serial.begin(9600);

  //Conisdering the LEDs in the program to be recognized as OUTPUTs
  pinMode(Red_LedPin, OUTPUT);
  pinMode(Yellow_LedPin, OUTPUT);
  pinMode(Green_LedPin, OUTPUT);
}

void loop()
{
  digitalWrite(Trigger_Pin, LOW);
  delayMicroseconds(100);
  digitalWrite(Trigger_Pin, HIGH);
  delayMicroseconds(100);
  digitalWrite(Trigger_Pin, LOW);

  Pulse_Time = pulseIn(Echo_Pin, HIGH);

  //Distance formula in the program for detecting objects within the users' surroundings
  Distance = Pulse_Time / 58;
  delay(10);
  
//if the Old Distance is not equal to the Distance of an object, procced and update "Old_Distance" to "Distance"
  if (Old_Distance != Distance)
  {

    Serial.println(Distance);

    Old_Distance = Distance;
  }

  delay(50);

  //initializing the role of the RED LED in the program

  if (Distance >= 0 && Distance <= 40)
  {
    digitalWrite(Red_LedPin, HIGH);
    digitalWrite(Yellow_LedPin, LOW);
    digitalWrite(Green_LedPin, LOW);
  }

  //initializing the role of the YELLOW LED in the program

  else if (Distance >= 40 && Distance <= 80)
  {
    digitalWrite(Red_LedPin, LOW);
    digitalWrite(Yellow_LedPin, HIGH);
    digitalWrite(Green_LedPin, LOW);
  }

  //initializing the role of the GREEN LED in the program

  else if (Distance >= 80)
  {
    digitalWrite(Red_LedPin, LOW);
    digitalWrite(Yellow_LedPin, LOW);
    digitalWrite(Green_LedPin, HIGH);
  }
}
