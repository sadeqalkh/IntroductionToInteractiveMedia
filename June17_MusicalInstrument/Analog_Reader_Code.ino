#define echoPin 7 // Echo Pin
#define trigPin 8 // Trigger Pin

const int frequency = 500;
const int duration = 20;
const int buzzer = 3;

int maximumRange = 200; // Maximum range needed
int minimumRange = 0; // Minimum range needed
long duration0, distance; // Duration used to calculate the distance of the analog reader

void setup() {
pinMode(buzzer, OUTPUT);
 pinMode(trigPin, OUTPUT);
 pinMode(echoPin, INPUT);
 
 delay(300);
 
 tone(buzzer, frequency, duration);


}

void loop() 
{

/* The following trigPin/echoPin cycle is used to determine the
 distance of the nearest object by bouncing soundwaves off of it. */ 
 digitalWrite(trigPin, LOW); 
 delayMicroseconds(2); 


 digitalWrite(trigPin, HIGH);
 delayMicroseconds(10); 
 
 digitalWrite(trigPin, LOW);
 duration0 = pulseIn(echoPin, HIGH);
 
 //Calculate the distance (in cm) based on the speed of sound.
 distance = duration0/58.2;
 
 
 if(distance < 7)
 {
   tone(buzzer, frequency, duration);
   delay(5);
 } 
 else if (distance < 15)
 {
   tone(buzzer, frequency, duration);
   delay(10);
 } 
 else if (distance < 20)
 {
   tone(buzzer, frequency, duration);
   delay(15);
 } 
 else if (distance < 25)
 {
   tone(buzzer, frequency, duration);
   delay(20);
 } 
 else if (distance < 30)
 {
   tone(buzzer, frequency, duration);
   delay(25);
 } 
 else if (distance < 35)
 {
   tone(buzzer, frequency, duration);
   delay(30);
 } 
 else if (distance < 40)
 {
   tone(buzzer, frequency, duration);
   delay(35);
 } 
 else if (distance < 45)
 {
   tone(buzzer, frequency, duration);
   delay(40);
 } 
 else if (distance < 50)
 {
   tone(buzzer, frequency, duration);
   delay(45);
 } 
 else if (distance < 55)
 {
   tone(buzzer, frequency, duration);
   delay(50);
 } 
 
}
