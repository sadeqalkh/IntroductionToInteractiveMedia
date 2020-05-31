//BACKGROUND SIZE
size(200, 200); // The size of the squared background that is 200 by 200

//THE BACKGROUND
background(67); //The background color

//THE FACE 

fill(255); //Filling the color white to the ellipse
ellipse(100,90,80,100); //An ellipse that is represented as the face 



//THE EYES

ellipse(83,75,17,10); //An ellipse that represents the  Left Eye 
fill(167); //Mid Gray color that resembles the          Left IRIS
ellipse(83,75,9,10); //An ellipse that resembles the    Left IRIS

fill(0); //Black fill color to resemble the             Left IRIS Pupil
ellipse(83,75,4,4); //An ellipse that resembles the     Left IRIS Pupil

fill(255); //White fill color for the                   Right Eye
ellipse(117,75,17,10); //An ellipse that represents the Right Eye
fill(167); //Mid Gray color that resembles the          Right IRIS
ellipse(117,75,9,10); //An ellipse that resembles the   Right IRIS

fill(0); //Black fill color to resemble the             Right IRIS Pupil
ellipse(117,75,4,4); //An ellipse that resembles the    Right IRIS Pupil



//THE NOSE

fill(167);//Mid Gray color that represents the                                         Nose
arc(90,90,40,30,0,radians(60),CHORD); // 60 degrees in an ellipse angle represents the Nose

fill(0); //A black fill that represents the                                            Nostril 
ellipse(97,98,3,3); //An ellipse that represents a Left                                Nostril



//THE MOUTH

stroke(0); //Borders of the Mouth will be represented as black
fill(150,0,0); //The Mouth will be represented as red
arc(100,110,30,30,0,radians(180),CHORD); //An arc from a circle that represents the mouth



//THE TEETH

stroke(0); //The outline of the teeth will be represented black
fill(255); //The filling color of the teeth will be rep[resented as white
square(90,110,5);  //Upper Teeth 1
square(95,110,5);  //Upper Teeth 2
square(100,110,5); //Upper Teeth 3
square(105,110,5); //Upper Teeth 4

square(96,119,5); //Lower Teeth 1
square(101,119,5); //Lower Teeth 2



//THE HAT
stroke(0);
fill(0);
rect(60,45,80,20);
rect(80,25,40,20);
