void First_Maze()
{

  Text1 =createFont("PTMono-Bold", 15);
  textFont(Text1, 15);
  fill(0);
  //creating text that will be displayed in the first maze page
  text("Start", 295, 70);
  //setting the stroke and color of rect() to be gray
  stroke(50);
  fill(50);

  //Rectangles in width

  rect(442, 123, 20, 105);
  rect(760, 119, 20, 308);
  rect(222, 350, 20, 80);
  rect(40, 22, 20, 510);
  rect(257, 22, 20, 116);
  rect(126, 70, 20, 165);
  rect(222, 119, 20, 201);
  rect(318, 270, 20, 105);
  rect(318, 169, 20, 70);
  rect(357, 22, 20, 68);
  rect(587, 214, 20, 121);
  rect(942, 22, 20, 510);
  rect(856, 70, 20, 415);
  rect(125, 280, 20, 205);
  rect(665, 175, 20, 205);

  //Rectangles in height

  rect(200, 119, 580, 20);
  rect(222, 410, 558, 20);
  rect(40, 512, 922, 20);
  rect(126, 465, 750, 20);
  rect(318, 270, 100, 20);
  rect(126, 70, 150, 20);
  rect(40, 22, 922, 20);
  rect(318, 169, 144, 20);
  rect(390, 214, 216, 20);
  rect(126, 300, 212, 20);
  rect(357, 70, 518, 20);
  rect(318, 360, 365, 20);
  rect(530, 170, 155, 20);
  rect(390, 315, 217, 20);

  //rect() with the color blue represents the finish point 

  stroke(0);
  fill(0, 200, 255);
  rect(500, 250, 50, 50);
}
