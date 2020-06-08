//June 8th Assignment 
//Sadeq M. Alkhoori

//Resource:
//Generative Text example from the lecture notes

//This program is designed to let the user experience a random choice generator to his next decision.
//The user should tap once to acknowledge his/her next choice

PFont font1;    //initializing "font1" to represent the first font in the program
PFont font2;    //initializing "font2" to represent the second font in the program
float x1, y1;   //initializing "x1" and "y1" to represent the x and y coordinates of the first generative text
float x2, y2;   //initializing "x2" and "y2" to represent the x and y coordinates of the second generative text


int maxImages = 5; //the max amount of images in this program will be set to 5
int imageIndex = 0; 
PImage[] images = new PImage[maxImages]; 

String message1= "MY NEXT PHOTO EDIT IS:";                              //first text
String message2= "Note: The first displayed picture is not counted.";   //second text

void setup() 
{
  //setting the program's output screen size to 1600 by 600 pixels

  size(1600, 600);

  //setting the background to black

  background(0);

  //creating the first font, the upper text
  font1 = createFont("PTMono-Bold", 32);
  textFont(font1, 32);

  //setting the x and y coordinates of the first generative text
  x1=width/14;
  y1=height=100;

  fill(255, 200, 0);
  textAlign(LEFT);
  text(message1, x1, y1);

  //creating the second font, the lower text
  font2 =createFont("PTMono-Bold", 12);
  textFont(font2, 12);
  
  //setting the x and y coordinates of the second generative text
  x2=width/14;
  y2=height=115;

  fill(255, 255, 255);
  textAlign(LEFT);
  text(message2, x2, y2);

  for (int i = 0; i < images.length; i ++ ) 
  {
    //calling PIC into this program to represent "PIC0, PIC1, PIC2, PIC3, and PIC4"
    images[i] = loadImage( "PIC" + i + ".jpg" );
  }
}

void draw() 
{

  translate(10, 0);
  for (int i = 0; i < images.length; i ++ ) 
  {
    tint(0); //this tint variable will cover the unselected pictures from the output screen
    image(images[i], width*i/5, 200);
  }

  tint(255, 255, 255); //this tint variable will display the randomly selected picture to the output screen  
  
  image(images[imageIndex], width*imageIndex/5, 200); //to add 5 pictures seperated by a distance of 200 pixels
}

void mousePressed() //The role of this function is to randomly change the displayed picture by a mouse click
{
  imageIndex = int(random(images.length));
}
