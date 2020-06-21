//incoming data event on the serial port

void serialEvent(Serial p)
{ 
    DataIn = p.readString(); 
     println(DataIn);

    IncomingDistance = int(trim(DataIn)); //conversion from string to integer

    println(IncomingDistance); //checks....

    if (IncomingDistance>1  && IncomingDistance<100 )
    {
        Ultrasonic_Sensor_Distance = IncomingDistance; //save the value only if its in the range 1 to 100     }
    }
}
