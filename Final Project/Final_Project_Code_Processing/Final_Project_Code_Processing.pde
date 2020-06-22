import processing.serial.*;

Serial myPort;        // The serial port
float inByte = 0;

//initializing the texts in the program

PFont Red_Text1; 
PFont Red_Text2; 

PFont Yellow_Text1; 
PFont Yellow_Text2; 

PFont Green_Text1; 
PFont Green_Text2; 
PFont TopLeftText; 




void setup()
{
  size (1500, 900);

  println(Serial.list());

  myPort = new Serial(this, "/dev/cu.usbserial-1430", 9600);
  myPort.bufferUntil('\n');

  background(0);
}
void draw()
{
  // Red Region
  if (inByte >=0 && inByte <=40)
  {
    //for color red
    background(255, 0, 0);
    Red_Text1 =createFont("PTMono-Bold", 100);
    textFont(Red_Text1, 100);
    fill(0);
    text("WARNING!", 520, 450);

    Red_Text2 =createFont("PTMono-Bold", 30);
    textFont(Red_Text2, 30);
    fill(0);
    text("For your safety, please stay within the GREEN region.", 300, 500);

    TopLeftText =createFont("PTMono-Bold", 30);
    textFont(TopLeftText, 30);
    fill(200);
    stroke(0);
    strokeWeight(30);
    text("COVID-19 SOCIAL DISTANCING STATUS:", 20, 50);
  }


  // Yellow Region
  if (inByte >=40 && inByte <=80)
  {
    // for color yellow
    background(255, 255, 0);

    Yellow_Text1 =createFont("PTMono-Bold", 60);
    textFont(Yellow_Text1, 60);
    fill(0);
    text("ALMOST IN THE RED ZONE!", 360, 450);

    Yellow_Text2 =createFont("PTMono-Bold", 30);
    textFont(Yellow_Text2, 30);
    fill(0);
    text("Please maintain your distance within the GREEN region.", 290, 500);

    TopLeftText =createFont("PTMono-Bold", 30);
    textFont(TopLeftText, 30);
    fill(200);
    stroke(0);
    strokeWeight(30);
    text("COVID-19 SOCIAL DISTANCING STATUS:", 20, 50);
  }


  // Green Region
  if (inByte >=80)
  {
    // for color green
    background(0, 150, 0);

    Green_Text1 =createFont("PTMono-Bold", 100);
    textFont(Green_Text1, 100);
    fill(0);
    text("SAFE!", 620, 450);

    Green_Text2 =createFont("PTMono-Bold", 30);
    textFont(Green_Text2, 30);
    fill(0);
    text("You are in the SAFE region. Thank you!", 430, 500);
    
    TopLeftText =createFont("PTMono-Bold", 30);
    textFont(TopLeftText, 30);
    fill(200);
    stroke(0);
    strokeWeight(30);
    text("COVID-19 SOCIAL DISTANCING STATUS:", 20, 50);
  }
}

void serialEvent (Serial myPort) 
{
  // get the ASCII string:
  String inString = myPort.readStringUntil('\n');

  if (inString != null) {
    // trim off any whitespace:
    inString = trim(inString);
    // convert to an int and map to the screen height:
    inByte = float(inString);
    println(inByte);
  }
}
