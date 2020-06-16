# June 16th Assignment Page:

### Pictures demonstrating the assignment's process:
#### Stage 1: Implementing and experimenting with the analog sensor.
![20200616_001420](https://user-images.githubusercontent.com/60816393/84718601-099f3d80-af8a-11ea-865e-e5a196f0f49a.jpg)

![20200616_001441](https://user-images.githubusercontent.com/60816393/84718626-1c197700-af8a-11ea-9f29-45f03e2042da.jpg)

#### Stage 2: Implementing the analog sensor and the digital sensor to the arduino.
![20200616_043234](https://user-images.githubusercontent.com/60816393/84718837-cbeee480-af8a-11ea-92e3-880d0743ebbc.jpg)

![20200616_043306](https://user-images.githubusercontent.com/60816393/84718840-cdb8a800-af8a-11ea-8b36-81dcb5e9fd6c.jpg)

### Schematic Drawing:

### Concept:
The concept of this program is to give the user the ability to experience how switches and light sensors can motivate LEDs differently. The analog sensor will control three different modes in the LED brightness: Off, Average and High. The LED's will turn off if the surrounding light was bright, which is considered in the program greater than 550. To have an average light, the light sensor should detect indoor light, ranging between 350 and 550 in the program. Lastly, to have high mode in the LEDs, the arduino board surrounding should be dark. In which, the dark region in the program is considered to be any value that is less than 350.

The second aspect from this program is the usage of a switch. The switch plays a role in controlling three LEDs to switch on or off. The user should tap on the switch to get an off result; untapping it will result the LEDs to remain open. The blinking of the LEDs are motivated by the analogRead from the program.
### Outcome:

### Challenges:

### Resources:
