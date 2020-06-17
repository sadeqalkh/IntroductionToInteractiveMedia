
int interval_Button = 15;
unsigned long interval_Button = 0;

int interval_DistanceMeasuringSensor1 = 5;
unsigned long DistanceMeasuringSensor1 = 0;

int interval_DistanceMeasuringSensor2 = 10;
unsigned long DistanceMeasuringSensor2 = 0;

int interval_DistanceMeasuringSensor3 = 15;
unsigned long DistanceMeasuringSensor3 = 0;

int interval_DistanceMeasuringSensor4 = 20;
unsigned long DistanceMeasuringSensor4 = 0;

int interval_DistanceMeasuringSensor5 = 25;
unsigned long DistanceMeasuringSensor5 = 0;

int interval_DistanceMeasuringSensor6 = 30;
unsigned long DistanceMeasuringSensor6 = 0;

int interval_DistanceMeasuringSensor7 = 35;
unsigned long DistanceMeasuringSensor7 = 0;

int interval_DistanceMeasuringSensor8 = 40;
unsigned long DistanceMeasuringSensor8 = 0;

int interval_DistanceMeasuringSensor9 = 45;
unsigned long DistanceMeasuringSensor9 = 0;

int interval_DistanceMeasuringSensor10 = 50;
unsigned long DistanceMeasuringSensor10 = 0;

const int frequency = 500;
const int duration = 20;
const int buzzer = 3;

int maximumRange = 200; // Maximum range needed
int minimumRange = 0; // Minimum range needed
long duration0, distance;

#define echoPin 7
#define trigPin 8

#include <Servo.h>

Servo myservo;

void setup()
{
  pinMode(buzzer, OUTPUT);
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);

  delay(300);

  tone(buzzer, frequency, duration);

  myservo.attach(9);
}
void checkButton()
{
  for (pos = 0; pos <= 180; pos += 10)
  { // goes from 0 degrees to 180 degrees
    // in steps of 1 degree
    myservo.write(pos);              // tell servo to go to position in variable 'pos'
  }
  for (pos = 180; pos >= 0; pos -= 10) { // goes from 180 degrees to 0 degrees
    myservo.write(pos);              // tell servo to go to position in variable 'pos'
  }
}
void check_DistanceMeasuringSensor1()
{
  if (distance < 7)
  {
    tone(buzzer, frequency, duration);
  }
  void check_DistanceMeasuringSensor2()
  {
    if (distance < 15)
    {
      tone(buzzer, frequency, duration);
    }
  }
  void check_DistanceMeasuringSensor3()
  {
    if (distance < 20)
    {
      tone(buzzer, frequency, duration);
    }
  }
  void check_DistanceMeasuringSensor4()
  {
    if (distance < 25)
    {
      tone(buzzer, frequency, duration);
    }
  }
  void check_DistanceMeasuringSensor5()
  {
    if (distance < 30)
    {
      tone(buzzer, frequency, duration);
    }
  }
  void check_DistanceMeasuringSensor6()
  {
    if (distance < 35)
    {
      tone(buzzer, frequency, duration);
    }
  }
  void check_DistanceMeasuringSensor7()
  {
    if (distance < 40)
    {
      tone(buzzer, frequency, duration);
    }
  }
  void check_DistanceMeasuringSensor8()
  {
    if (distance < 45)
    {
      tone(buzzer, frequency, duration);
    }
  }
  void check_DistanceMeasuringSensor9()
  {
    if (distance < 50)
    {
      tone(buzzer, frequency, duration);
    }
  }
  void check_DistanceMeasuringSensor10()
  {
    if (distance < 55)
    {
      tone(buzzer, frequency, duration);
    }
  }

  void loop()
  {
    checkButton();
    check_DistanceMeasuringSensor1();
    check_DistanceMeasuringSensor2();
    check_DistanceMeasuringSensor3();
    check_DistanceMeasuringSensor4();
    check_DistanceMeasuringSensor5();
    check_DistanceMeasuringSensor6();
    check_DistanceMeasuringSensor7();
    check_DistanceMeasuringSensor8();
    check_DistanceMeasuringSensor9();
    check_DistanceMeasuringSensor10();
    check_DistanceMeasuringSensor11();
  }
