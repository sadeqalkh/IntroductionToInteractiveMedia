
float XValue=0;//initializing a floating variable "XValue=0" in the program.

void setup()//initializing setup() function in the program.
{
  size(500,500);//the size of the output page will be 500x500 pixels.
}
void draw()//initializing draw() fucntion in the program.
{
background(0);//the background output will be displayed as black.

strokeWeight(3);//trhe stroke weight of the lines will be save as 3.

int x=0;//intializing the integer "x=0" in the program.
while (x<XValue)//while x is less than XValue, proceed.
{
stroke(random(100));//Random colors that vary from black to white will represent the lines.
line(x,0,x,height);//placing the dimensions of the line.
stroke(random(255));
line(100, 100, x, height);//Triangular animated lines dimensions
x=x+40;
}
XValue += 1;//XValue + 1 = XValue.
}
