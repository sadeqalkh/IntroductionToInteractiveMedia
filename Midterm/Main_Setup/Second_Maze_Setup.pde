void Second_Maze()
{
  fill(0);
  //applying the picture "The_Circular_Maze" to be the background of the second maze. 
  //The picture will also play the role of an actual maze
  image(The_Circular_Maze, 0, 0);


  //rect() with the color blue represents the finish point 
  stroke(50);
  fill(0, 200, 255);
  rect(500, 250, 50, 50);
}
