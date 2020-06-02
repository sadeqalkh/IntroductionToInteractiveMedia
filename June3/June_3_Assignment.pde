int XSPEED = 3; //Initiating the integer XSPEED to have the value of 1
int YSPEED = 2; //Initiating the integer YSPEED to have the value of 1
int RECTANGLE_SIZE = 15; //Initiating the integer RECTANGLE_SIZE to have the value of 15

Moving_Burj[] Burj_Array = new Moving_Burj[2];//initiating an array for the Moving Burj

void setup() //initiating the setup function in the program
{
  size(900, 900);//the size of the output screen will be 900x900 pixels
  smooth();

  for (int i=0; i < Burj_Array.length; i++) //for loop that will represent a random generator for the Burj whenever the user runs the program
  {
   
    Burj_Array[i] = new Moving_Burj(random(RECTANGLE_SIZE, width-RECTANGLE_SIZE), 
                           random(RECTANGLE_SIZE, height-RECTANGLE_SIZE));
  }
}

void draw() 
{
  background(0); //background set to black

  for (int i=0; i < Burj_Array.length; i++) 
  {

    Burj_Array[i].update();
    Burj_Array[i].checkCollisions();

    Burj_Array[i].Draw_Burj();
  }
}
class Moving_Burj //initiating the class Moving_Burj
{

  float x, y, xSpeed, ySpeed; //initialing floating variables x,y, xSpeed and ySpeed

  Moving_Burj(float xpos, float ypos) 
  {
    x = xpos;
    y = ypos;
    xSpeed = XSPEED;
    ySpeed = YSPEED;
  }

  void update() //initial an update function to the program. In which will update the speed of the Burj in within the output screen.
  {
    x += xSpeed;//x+xSpeed=xSpeed
    y += ySpeed;//y+ySpeed=ySpeed
  }

  void checkCollisions() //initialing checkCollisions function
  {
    float r = RECTANGLE_SIZE/2; 
    if ( (x<r) || (x+50>width-r))  //if x is less than r "Radius", or x+50 is greater than width-r. Proceed.
    {
      xSpeed = -xSpeed; //to initial an opposite reaction force in the X-axis
    }
    if ( (y<r) || (y+357>height-r)) // if y is less than r "Radius", or y+357 is greater than height-r. Proceed.
    {
      ySpeed = -ySpeed;//to initial an opposite reaction in the Y-axis
    }
  }

  void Draw_Burj() 
  {
    fill(30);                                //color fill for the 1st rectangle 
    rect(x,y,10,RECTANGLE_SIZE);
    //initialting th dimensions for the 1st rectangle
    fill(40);                                //color fill for the 2nd rectangle
    rect(x,y+17,10,RECTANGLE_SIZE);
    //initialting th dimensions for the 2nd rectangle
    fill(50);                                //color fill for the 3rd rectangle
    rect(x,y+34,10,RECTANGLE_SIZE);
    //initialting th dimensions for the 3rd rectangle
    fill(60);                                //color fill for the 4th rectangle
    rect(x-10,y+51,20,RECTANGLE_SIZE);
    //initialting th dimensions for the 4th rectangle
    fill(70);                                //color fill for the 5th rectangle
    rect(x-10,y+68,20,RECTANGLE_SIZE);
    //initialting th dimensions for the 5th rectangle
    fill(80);                                //color fill for the 6th rectangle
    rect(x-10,y+85,30,RECTANGLE_SIZE);
    //initialting th dimensions for the 6th rectangle
    fill(90);                                //color fill for the 7th rectangle
    rect(x-10,y+102,30,RECTANGLE_SIZE);
    //initialting th dimensions for the 7th rectangle
    fill(100);                               //color fill for the 8th rectangle
    rect(x-20,y+119,40,RECTANGLE_SIZE);
    //initialting th dimensions for the 8th rectangle
    fill(110);                               //color fill for the 9th rectangle
    rect(x-20,y+136,40,RECTANGLE_SIZE);
    //initialting th dimensions for the 9th rectangle
    fill(120);                               //color fill for the 10th rectangle
    rect(x-20,y+153,50,RECTANGLE_SIZE);
    //initialting th dimensions for the 10th rectangle
    fill(130);                               //color fill for the 11th rectangle
    rect(x-20,y+170,50,RECTANGLE_SIZE);
    //initialting th dimensions for the 11th rectangle
    fill(140);                               //color fill for the 12th rectangle
    rect(x-30,y+187,60,RECTANGLE_SIZE);
    //initialting th dimensions for the 12th rectangle
    fill(150);                               //color fill for the 13th rectangle
    rect(x-30,y+204,60,RECTANGLE_SIZE);
    //initialting th dimensions for the 13th rectangle
    fill(160);                               //color fill for the 14th rectangle
    rect(x-30,y+221,70,RECTANGLE_SIZE);
    //initialting th dimensions for the 14th rectangle
    fill(170);                               //color fill for the 15th rectangle
    rect(x-30,y+238,70,RECTANGLE_SIZE);
    //initialting th dimensions for the 15th rectangle
    fill(180);                               //color fill for the 16th rectangle
    rect(x-40,y+255,80,RECTANGLE_SIZE);
    //initialting th dimensions for the 16th rectangle
    fill(190);                               //color fill for the 17th rectangle
    rect(x-40,y+272,80,RECTANGLE_SIZE);
    //initialting th dimensions for the 17th rectangle
    fill(200);                               //color fill for the 18th rectangle
    rect(x-40,y+289,90,RECTANGLE_SIZE);
    //initialting th dimensions for the 18th rectangle
    fill(210);                               //color fill for the 19th rectangle
    rect(x-40,y+306,90,RECTANGLE_SIZE);
    //initialting th dimensions for the 19th rectangle
    fill(220);                               //color fill for the 20th rectangle
    rect(x-50,y+323,100,RECTANGLE_SIZE);
    //initialting th dimensions for the 20th rectangle
    fill(230);                               //color fill for the 21st rectangle
    rect(x-50,y+340,100,RECTANGLE_SIZE);
    //initialting th dimensions for the 21st rectangle
    fill(240);                               //color fill for the 22nd rectangle
    rect(x-50,y+357,100,RECTANGLE_SIZE);
    //initialting th dimensions for the 22nd rectangle
    
    
  }
}
