# June 16th Assignment Page:

### Pictures demonstrating the assignment's process:
#### Stage 1: Implementing and experimenting with the analog sensor.
![20200616_001420](https://user-images.githubusercontent.com/60816393/84718601-099f3d80-af8a-11ea-865e-e5a196f0f49a.jpg)

![20200616_001441](https://user-images.githubusercontent.com/60816393/84718626-1c197700-af8a-11ea-9f29-45f03e2042da.jpg)

#### Stage 2: Implementing the analog sensor and the digital sensor to the arduino.
![20200616_043234](https://user-images.githubusercontent.com/60816393/84718837-cbeee480-af8a-11ea-92e3-880d0743ebbc.jpg)

![20200616_043306](https://user-images.githubusercontent.com/60816393/84718840-cdb8a800-af8a-11ea-8b36-81dcb5e9fd6c.jpg)

### Schematic Diagram:




### Concept:
  The concept of this program is to give the user the ability to experience how switches and light sensors can motivate LEDs differently. The analog sensor will control three modes in the LED brightness: Off, Average, and High. The LED's will turn off if the surrounding light was bright, considered in the program to be greater than 550. In the second stage, the light sensor should detect indoor light, ranging between 350 and 550 in the program. Lastly, to have a high mode in the LEDs, the Arduino board surrounding should be dark. The program considers dark or shaded surroundings to be any value that is less than 350.

  The second aspect of this program is the usage of a switch. The switch plays a role in controlling three LEDs to switch on or off. The user should tap on the switch to get an off result; not taping it will result in the LEDs to remain open. The blinking of the LEDs is motivated by the analogRead from the program.
  
### Outcome:

  This assignment helped me understand and experience the digital and analog readers in Arduino. Adding wirings and LEDs in such a structure was a challenge that took me a while to accomplish. I ran through many schematic examples again to understand how everything is supposed to work thoroughly. My learning outcome from this assignment would be not complicating issues encountered from Arduino, mainly because it mostly turns out to be simple.

### Challenges:

I have encountered two challenges in this assignment, one from misplacing wirings, and the second was from the program. In my first challenge, it was a challenge to follow my wires and distinguish the analog and digital. I then changed the colors of the wirings for each stage separately. This aspect alone helped me read my structure; however, I misplaced some of the connections to different pins in the Arduino. Thus, it led me to believe that something was wrong in my program because it ran for a second and then turned the connection off. I spend almost an hour until I figured my misplaced wirings, and finally, it worked.

The second challenge I faced in this assignment was experimenting with the delay() variable. From my first stage, which was the implementation of the analog reader, the delay() variable was helpful because it creates a smooth transition when switching to different modes, and also does not spam the Serial Monitor input messages. As I reached here, I thought that delay() would not affect my second command/stage in the program, which was the digital reader's implementation. As I finish the placement of the wirings and the code in the program, the program was running fine with no errors in the code; however, the LEDs acted strangely. The second command (digital reader) was implementing delay(1000) from the first command. Thus, it resulted in slowing inputting data to the digital reader. I removed the delay() variable because it acted on the second command; it was not what I expected. The number of blinks in all LEDs now depends on the Serial Monitor output data. I tried to implement two delays for each command, but then, all of the LEDs acted strangely and created unique patterns. Thus, until now, I did not find a solution to the delay() variable in my program.

### Resources:

Arduino Example "Button"
