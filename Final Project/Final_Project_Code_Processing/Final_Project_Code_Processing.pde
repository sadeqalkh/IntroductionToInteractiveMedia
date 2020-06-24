// Sadeq M. Alkhoori
// Final Project
// June 24th, 2020

/*

The concept of this program is to enhance the safety of the users from the COVID-19 pandemic. The user in this program will be alerted by three Processing 
background colors, and three LED lights. The backgrounds and lights are in RED, YELLOW, and GREEN. The RED color in this program is considered a danger zone or 
a region in which the user is experiencing outside his house. YELLOW color represents an average zone in which the user can suffer in case of over crowdings. 
The program within the second stage, which is YELLOW, will alert the user that he is still in a danger zone and that it is preferred to step back for a safe area. 
GREEN, which is represented as a safe zone, motivates the user to experience a proper social distancing.

*/



import processing.serial.*;

Serial myPort;        // The serial port
float inByte = 0;

// initializing the output screen text font. For instance, the text in the background RED, YELLOW and GREEN. 
PFont Red_Text1; 
PFont Red_Text2; 

PFont Yellow_Text1; 
PFont Yellow_Text2; 

PFont Green_Text1; 
PFont Green_Text2; 

// initializing the output screen text font for the top left text in the RED, YELLOW and GREEN backgrounds.
PFont TopLeftText; 




void setup()
{
  //the background size
  size (1500, 900);

  println(Serial.list()); //to print the user's Serial List. the user will choose the port that is connected to the Arduino board

  myPort = new Serial(this, "/dev/cu.usbserial-1430", 9600); // to connect Processing with the mac's port "/dev/cu.usbserial-1430"
  myPort.bufferUntil('\n');

//setting the main background color to black. This background will not be in display as the program works properly
  background(0);
}
void draw()
{
  // RED Region
  if (inByte >=0 && inByte <=40)
  {
    //for color red
    background(255, 0, 0);

    // applying to the RED screen text the font and the text size. First line

    Red_Text1 =createFont("PTMono-Bold", 100);
    textFont(Red_Text1, 100);
    fill(0);
    text("WARNING!", 520, 450);

    // applying to the RED screen text the font and the text size. Second line

    Red_Text2 =createFont("PTMono-Bold", 30);
    textFont(Red_Text2, 30);
    fill(0);
    text("For your safety, please stay within the GREEN region.", 300, 500);

    // applying to the top left text the font and the text size

    TopLeftText =createFont("PTMono-Bold", 30);
    textFont(TopLeftText, 30);
    fill(200);
    stroke(0);
    strokeWeight(30);
    text("COVID-19 SOCIAL DISTANCING STATUS:", 20, 50);
  }


  // YELLOW Region
  if (inByte >=40 && inByte <=80)
  {
    // for color yellow
    background(255, 255, 0);

    // applying to the YELLOW screen text the font and the text size. First line

    Yellow_Text1 =createFont("PTMono-Bold", 60);
    textFont(Yellow_Text1, 60);
    fill(0);
    text("ALMOST IN THE RED ZONE!", 360, 450);

    // applying to the YELLOW screen text the font and the text size. Second line

    Yellow_Text2 =createFont("PTMono-Bold", 30);
    textFont(Yellow_Text2, 30);
    fill(0);
    text("Please maintain your distance within the GREEN region.", 290, 500);

    // applying to the top left text the font and the text size

    TopLeftText =createFont("PTMono-Bold", 30);
    textFont(TopLeftText, 30);
    fill(200);
    stroke(0);
    strokeWeight(30);
    text("COVID-19 SOCIAL DISTANCING STATUS:", 20, 50);
  }


  // GREEN Region
  if (inByte >=80)
  {
    // for color green
    background(0, 150, 0);

    // applying to the GREEN screen text the font and the text size. First line

    Green_Text1 =createFont("PTMono-Bold", 100);
    textFont(Green_Text1, 100);
    fill(0);
    text("SAFE!", 620, 450);

    // applying to the GREEN screen text the font and the text size. Second line

    Green_Text2 =createFont("PTMono-Bold", 30);
    textFont(Green_Text2, 30);
    fill(0);
    text("You are in the SAFE region. Thank you!", 430, 500);

    // applying to the top left text the font and the text size

    TopLeftText =createFont("PTMono-Bold", 30);
    textFont(TopLeftText, 30);
    fill(200);
    stroke(0);
    strokeWeight(30);
    text("COVID-19 SOCIAL DISTANCING STATUS:", 20, 50);
  }
}

//the occuring event that is happening in the arduino, specifically with the "ultrasonic distance measuring sensor"

void serialEvent (Serial myPort) 
{
  // get the ASCII string:
  String inString = myPort.readStringUntil('\n');

  if (inString != null) {
    // trim off any whitespace:
    inString = trim(inString);
    // convert to an int and map to the screen height:
    inByte = float(inString);
    // to print the "ultrasonic distance measuring sensor" data in the bottom outpt screen
    println(inByte);
  }
}
