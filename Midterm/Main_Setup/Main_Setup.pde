/*
Sadeq M. Alkhoori
Introduction to Interactive Media Midterm
June 10th, 2020

This program is designed to let the users experience two different mazes in a program. In which, the user is required to move the mouse to control the small red circle in the game. 
If the mouse touches the walls of the maze, the user will be reuired to retry his/her attempt. If the user reaches to the finish point of the maze, which will be represented as a 
blue square, will accomplish a winning note. 
Users are free to have unlimited attempts in both mazes.
*/


import processing.sound.*; //importing the processing sound library to the program
SoundFile Maze_Runner; //Initializing the variable "Maze_Runner" as a Sound file

PImage Main_Page_Background; //Initializing "Main_Page_Background" as a variable that saves the black polygon background of the main page
PImage Background_Picture; //Initializing "Background_Picture" as a varaiable that saves a background picture for "FirstMaze"
PImage The_Circular_Maze;  //Initialing "The_Circular_Maze" as a variable that saves the "SecondMaze" as a background and acts as a usable Maze by the user
int PageState = 0;  //initializing PageState that will be considered as a mode of switching between different pages
int FirstMaze=0;  //Initialing "FirstMaze" as an integer variable 
int SecondMaze =0; //Initialing "SecondMaze" as an integer variable 
color BlueColor_MainScreen_and_Game = color(0, 200, 255); //The variable "BlueColor_MainScreen_and_Game" will save a Blue color
color Second_Maze_White_Square = color(255);  //The variable "Second_Maze_White_Square" will save a White color 
color WallColor_Gray = color(50); //The variable "WallColor_Gray" will save a Gray color 
color SecondMazeBlackWall =color(0); //The variable "SecondMazeBlackWall" will save a Gray color 
PFont Text1; //initializing the text "Text1" in the program
PFont Text2; //initializing the text "Text2" in the program
PFont Text3; //initializing the text "Text3" in the program
PFont Text4; //initializing the text "Text4" in the program
PFont Text5; //initializing the text "Text5" in the program

void setup()
{
  //The size of the output screen will be set to 1000 by 550 pixels

  size(1000, 550);

  //A black background that will be represented below the different background pictures

  background(0);

  //load the Background picture to the main page in the program

  Main_Page_Background = loadImage("BlackPolygons.png");

  //load the First Maze Background picture in the program

  Background_Picture = loadImage("BackgroundPicture.png");

  //load the Second Maze Background picture in the program

  The_Circular_Maze = loadImage("Maze1.png");

  //adding "MazeRunner.mp3" backgroud music to the background

  Maze_Runner =new SoundFile(this, "MazeRunner.mp3");

  //playing the background music in a loop

  Maze_Runner.loop();
}

void draw()
{
  //If the "PageState" is in the main screen proceed
  if (PageState ==0)
  {
    //applying the main screen background
    image(Main_Page_Background, 0, 0);

    //creating the blue square
    fill(0, 200, 255);
    stroke(0);
    strokeWeight(5);
    rect(295, 45, 35, 35);
    //creating the white square
    fill(255); 
    stroke(0);
    strokeWeight(5);
    rect(360, 45, 35, 35);
    //creating text that will be displayed in the main screen
    fill(200);
    Text2 =createFont("PTMono-Bold", 50);
    textFont(Text2, 50);
    text("Welcome to the IM-Maze", 180, 250);

    fill(200);
    Text3 =createFont("PTMono-Bold", 20);
    textFont(Text3, 20);
    text("Please scroll your mouse to the blue or yellow squares to start your adventure.", 40, 280);

    //if the mouse within the X and Y axis passed or touched a blue color, proceed
    if (get(mouseX, mouseY) == BlueColor_MainScreen_and_Game)
    {
      PageState =1;
      fill(255);
      //creating an ellipse that moves with the mouse 
      ellipse(mouseX, mouseY, 20, 20);
    }
  }
  //if the "PageState" is 1, proceed to the first maze
  if (PageState == 1) 
  {
    //applying a backgroung picture to the first maze
    image(Background_Picture, 0, 0);

    //to create the first maze layer:
    if (FirstMaze == 0) 
    {
      First_Maze();
    }

    //First Maze Page Ellipse
    fill(255, 0, 0);
    stroke(255, 0, 0);
    //if the mouse within the X and Y axis passed or touched a gray color, proceed
    if (get(mouseX, mouseY) == WallColor_Gray) 
    {
      PageState = 2;
      background(0);
    }

    // The program executes the user to a second page as the white circle hits the blue rect()
    if (get(mouseX, mouseY) == BlueColor_MainScreen_and_Game) 
    {
      PageState = 3;
    }
    //creating an ellipse that moves with the mouse 
    ellipse(mouseX, mouseY, 10, 10);
  }
  //creating a black backgrounded screen for the game's result: Win or Lose
  if (PageState==2)
  {
    fill(255);
    background(0);
    //creating text that will be displayed in the black backgrounded screen
    Text4 =createFont("PTMono-Bold", 15);
    textFont(Text4, 15);
    fill(255);
    text("Game Over!", 500, 270);
    text("Press Space to Restart.", 450, 300);
  }
  //if the "PageState" equals 3 proceed to a black background will a Win note
  if (PageState==3) 
  {
    fill(255);
    background(0);
    Text4 =createFont("PTMono-Bold", 15);
    //creating text that will be displayed in the black backgrounded screen
    textFont(Text4, 15);
    fill(255);
    text("Winner!", 510, 270);
    text("Press Space to Retry", 450, 300);
  }
  //if the mouse within the X and Y axis passed or touched a white color, proceed
  if (get(mouseX, mouseY) == Second_Maze_White_Square)
  {
    PageState =4;
    fill(255);
    //creating an ellipse that moves with the mouse 
    ellipse(mouseX, mouseY, 20, 20);
  }

  if (PageState == 4)
  {
    //applying the a maze background to the second maze
    image(The_Circular_Maze, 0, 0);
    //to create the second maze layer:
    if (SecondMaze == 0) 
    {
      Second_Maze();
    }

    //Second Maze Page Ellipse
    fill(255, 0, 0);
    stroke(255, 0, 0);

//if the mouse hit the black color in the second maze, proceed.
    if (get(mouseX, mouseY) == SecondMazeBlackWall) 
    {
      PageState = 2;
      background(0);
    }

    // The program executes the user to a second page as the white circle hits the blue rect()
    if (get(mouseX, mouseY) == BlueColor_MainScreen_and_Game) 
    {
      PageState = 3;
    }
    //creating an ellipse that moves with the mouse 
    ellipse(mouseX, mouseY, 10, 10);
  }
//if the "PageState" equals 2 in the second maze, proceed.
  if (PageState==2)
  {
    fill(255);
    background(0);
    
    Text4 =createFont("PTMono-Bold", 15);
    textFont(Text4, 15);
    fill(255);
    //creating text that will be displayed in the black backgrounded screen
    text("Game Over!", 500, 270);
    text("Press Space to Restart.", 450, 300);
  }
  //if the "PageState" equals 3 in the second maze, proceed.
  if (PageState==3) 
  {
    fill(255);
    background(0);
    //creating text that will be displayed in the black backgrounded screen
    Text4 =createFont("PTMono-Bold", 15);
    textFont(Text4, 15);
    fill(255);
    text("Winner!", 510, 270);
    text("Press Space to Retry", 450, 300);
  }
}
void keyReleased()
{
  //if the "space" key is pressed after displaying a black background, proceed to the main screen.
  if (key==' ')
  {
    PageState = 0;
  }
}
