/* Sadeq M. Alkhoori
 *  
 *  June 17th, 2020
 *  
 *  This program is designed to let the user experience two diiferent musical instruments. These instruments can be used as an inital source to an editting program or designed with specific tones of a music. 
 * 
 */


#define echoPin 7 // Echo Pin
#define trigPin 8 // Trigger Pin

const int frequency = 500; // initializing the buzzer's frequency variable with the integer 500
const int duration = 20; // initialing the duration's variable with the integer 20.
const int buzzer = 3; // initializing the digital pin number 3 to the variable "buzzer"

int maximumRange = 200; // initializing the maximum range needed
int minimumRange = 0; // initializing the minimum range needed
long duration0, distance; // the duration used to calculate the distance of the analog reader

#include <Servo.h>

Servo myservo;  // create servo object to control a servo
// twelve servo objects can be created on most boards

int pos = 0;    // variable to store the servo position

void setup()
{
  pinMode(buzzer, OUTPUT);
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);

  delay(300);

  tone(buzzer, frequency, duration);

  myservo.attach(9);  // attaches the servo on pin 9 to the servo object

}

void loop() {

  for (pos = 0; pos <= 180; pos += 10)
  { // goes from 0 degrees to 180 degrees
    // in steps of 1 degree
    myservo.write(pos);              // tell servo to go to position in variable 'pos'
    delay(15);                 // waits 15 milli seconds until it reachs to the second position
  }
  for (pos = 180; pos >= 0; pos -= 10)
  { // goes from 180 degrees to 0 degrees
    myservo.write(pos);              // tells the servo to go to position of the variable "pos"
    delay(15);               // waits 15 milli seconds until it reachs to the second position
  }


  // the following trigPin/echoPin cycle is used to determine the distance of the nearest object by bouncing soundwaves off of it.
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);


  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);

  digitalWrite(trigPin, LOW);
  duration0 = pulseIn(echoPin, HIGH);

  //to calculate the distance (in cm) based on the speed of sound.
  distance = duration0 / 58.2;

  //if statements which will indentify specific surrounding range with a unique frequency
  if (distance < 7)
  {
    tone(buzzer, frequency, duration);
    delay(5); // waits 5 milli seconds with a unique frequency until it proceeds to the second region which is 10 milli seconds
  }
  else if (distance < 15)
  {
    tone(buzzer, frequency, duration);
    delay(10); // waits 10 milli seconds with a unique frequency until it proceeds to the second region which is 15 milli seconds
  }
  else if (distance < 20)
  {
    tone(buzzer, frequency, duration);
    delay(15); // waits 15 milli seconds with a unique frequency until it proceeds to the second region which is 20 milli seconds
  }
  else if (distance < 25)
  {
    tone(buzzer, frequency, duration);
    delay(20); // waits 20 milli seconds with a unique frequency until it proceeds to the second region which is 25 milli seconds
  }
  else if (distance < 30)
  {
    tone(buzzer, frequency, duration);
    delay(25); // waits 25 milli seconds with a unique frequency until it proceeds to the second region which is 30 milli seconds
  }
  else if (distance < 35)
  {
    tone(buzzer, frequency, duration);
    delay(30); // waits 30 milli seconds with a unique frequency until it proceeds to the second region which is 35 milli seconds
  }
  else if (distance < 40)
  {
    tone(buzzer, frequency, duration);
    delay(35); // waits 35 milli seconds with a unique frequency until it proceeds to the second region which is 40 milli seconds
  }
  else if (distance < 45)
  {
    tone(buzzer, frequency, duration);
    delay(40); // waits 40 milli seconds with a unique frequency until it proceeds to the second region which is 45 milli seconds
  }
  else if (distance < 50)
  {
    tone(buzzer, frequency, duration);
    delay(45); // waits 45 milli seconds with a unique frequency until it proceeds to the second region which is 50 milli seconds
  }
  else if (distance < 55)
  {
    tone(buzzer, frequency, duration);
    delay(50); // waits 50 milli seconds until it the object leaves the region; thus, turning the buzzer off or "LOW"
  }

}
