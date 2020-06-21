void Trace_Flying_Object(float Y, float AngleInclinaison) 
{
    //draw the plane at given position and angle

    noStroke();
    pushMatrix();
    translate(400, Y);
    rotate(radians(AngleInclinaison)); //changing the values from radians to degrees

    scale(0.5);

    //unless drawing the plane "by hands", just display the stored picture instead. Note that the parameters 2 and 3 are half the picture size, to make sure that the Jet rotates in the center of the output screen.
    image(Jet, -111, -55, 223, 110); // 223 110 : picture size

    popMatrix(); //the end of the rotation matrix
}
