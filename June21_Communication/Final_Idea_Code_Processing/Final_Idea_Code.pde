
int i, j; //initializing i and j as integer variables

float Plane_Value; //for Jet's Y position
float Angle; //initializing Angle as a floating variable
int Ultrasonic_Sensor_Distance; //initializing Ultrasonic_Sensor_Distance as an integer variable
int IncomingDistance; //initializing IncomingDistance as an integer variable
float GrassX ;  //for X position

String DataIn; //incoming data on the serial port

//updating floating variables for the Cloud in the X and Y positions
float [] CloudX = new float[6];
float [] CloudY = new float[6];

//initializing varaibles to save pictures of Clouds, Jet, and Grass
PImage Cloud;
PImage Jet;
PImage Grass;

// serial port configuration
import processing.serial.*; 
Serial myPort;    

//preparation
void setup() 
{
//connecting to the arduino port in the mac's usb serial 1440
    myPort = new Serial(this, "/dev/cu.usbserial-1440", 9600); 

    myPort.bufferUntil(10);   //end the reception as it detects a carriage return

    frameRate(30); 

    size(800, 600);
    textSize(16);

    Plane_Value = 300; //initial plane value


    Cloud = loadImage("cloud.png");  //load a picture
    Jet = loadImage("Fighter_Jet.png");  //the new plane picture

        Grass = loadImage("grass.png");  //some grass


    //int clouds position
    for  (int i = 1; i <= 5; i = i+1)
    {
        CloudX[i]=random(1000);
        CloudY[i]=random(400);
    }
}

//main drawing loop
void draw() 
{
    background(0, 0, 0);
    Sky(); //draw the sky
    fill(5, 72, 0);

    for  (int i = -2; i <= 4; i = i+1) {  //a loop to display the grass picture 6 times

        image(Grass, 224*i  + GrassX, 550, 224, 58);  // 224 58 : picture size
    }

    //calculates the X grass translation. 
    GrassX = GrassX  -  cos(radians(Angle))*10;

    if (GrassX < -224) {  //to have a perfect loop
        GrassX=224;
    }


    text(Angle, 10, 30); //debug things...
    text(Plane_Value, 10, 60); 


    Angle = mouseY-300; //uncomment this line and comment the next one if you want to play with the mouse
    Angle = (18- Ultrasonic_Sensor_Distance)*4;  // you can increase the 4 value...

    Plane_Value = Plane_Value + sin(radians(Angle))*10; //calculates the vertical position of the plane

    //check the height range to keep the plane on the screen 
    if (Plane_Value < 0) 
    {
        Plane_Value=0;
    }

    if (Plane_Value > 600)
    {
        Plane_Value=600;
    }

    Trace_Flying_Object (Plane_Value, Angle);

    //for loop that will initailize the clouds in the program and motivate the cloud's movements 
    for  (int x = 1; x <= 5; x = x+1) 
    {
        CloudX[x] = CloudX[x] - cos(radians(Angle))*(10+2*x);

        image(Cloud, CloudX[x], CloudY[x], 300, 200);

        if (CloudX[x] < -300) {
            CloudX[x]=1000;
            CloudY[x] = random(400);
        }
    }
}
