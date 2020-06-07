//June 7th Assignment
//Sadeq M. Alkhoori

//Resource:
//DANIEL SHIFFMAN's Nested Pop Push example motivated the implementation of the 360 IRIS LINES in this program.

//This program is designed to let the user explore how a human eye pupil minimizes and expands due to change in lights' desity.
//The light in this program is represented by the mouse
//Move the mouse to motivate the human eye pupil

float theta=0;


void setup()
{
  size(900, 700); //initializing the output page size to 900 by 700 pixels
}


void draw()
{

  background(150);



  //FIRST OUTLINE of an Ellipse that represents the eye
  push();
  fill(225);
  strokeWeight(30);
  translate(425, 360);
  ellipse(0, 0, 500, 200);
  pop();

  //Inner white Ellipse that covers the "FIRST OUTLINE" ellipse
  push();
  fill(255);
  strokeWeight(20);
  stroke(255);
  translate(425, 364);
  ellipse(0, 0, 480, 180);
  pop();

  //IRIS OUTLINE
  push();
  fill(225);
  strokeWeight(4);
  translate(425, 350);
  ellipse(0, 0, 225, 190);
  pop();


  //IRIS LINES
  // Push, translate, rotate to draw 360 lines
  for (float x = 0; x < TWO_PI; x += 0.5) 
  {
    pushMatrix();
    translate(425, 350);
    rotate(-theta-x);

    strokeWeight(2.5);
    line(0, 0, 97, 0);

    strokeWeight(2);
    line(0, 0, 80, 20);

    strokeWeight(2);
    line(0, 0, 95, 20);

    strokeWeight(2);
    line(0, 0, 95, 20);

    strokeWeight(2);
    line(0, 0, 95, 30);

    strokeWeight(2);
    line(0, 0, 0, 75);

    strokeWeight(1);
    line(0, 0, 60, 45);

    strokeWeight(1);
    line(0, 0, 45, 60);

    strokeWeight(1);
    line(0, 0, 30, 90);

    strokeWeight(1);
    line(0, 0, 10, 60);

    popMatrix();
  }

  //PUPIL
  push();
  fill(0);
  strokeWeight(0);
  translate(425, 350);
  scale(mouseX/400);
  ellipse(0, 0, 90, 90);
  pop();

  //Top right white circle besides the pupil
  //This circle represents a lights reflection
  push();
  fill(255);
  strokeWeight(1);
  translate(470, 335);
  ellipse(0, 0, 43, 40);
  pop();

  //Top left white circle besides the pupil
  //This circle represents a lights reflection
  push();
  fill(255);
  strokeWeight(1);
  translate(373, 325);
  ellipse(0, 0, 29, 24);
  pop();
}
