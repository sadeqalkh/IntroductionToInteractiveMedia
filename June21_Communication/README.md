# June 21st Assignment Page

### Pictures:

Initial Idea wirings and connections: 

![Initial Idea](https://user-images.githubusercontent.com/60816393/85220605-04912280-b3be-11ea-85ff-52585059d25f.jpeg)

Second idea wirings and connections:

![Second Idea 1](https://user-images.githubusercontent.com/60816393/85220606-0529b900-b3be-11ea-97d7-616e233c6063.jpeg)

![Second Idea 2](https://user-images.githubusercontent.com/60816393/85220607-05c24f80-b3be-11ea-9e66-56c5303225fb.jpeg)

Final Idea wirings and connections:

![Final Idea 1](https://user-images.githubusercontent.com/60816393/85220603-00fd9b80-b3be-11ea-91bc-c5eb15482720.jpeg)

![Final Idea 2](https://user-images.githubusercontent.com/60816393/85220604-03f88c00-b3be-11ea-8877-831b1faddb15.jpeg)

### Schematic Diagrams:

##### Initial Idea: Buttons to control a snake game.

![Initial Idea Schematic](https://user-images.githubusercontent.com/60816393/85230530-e64d1600-b401-11ea-80e4-f9f4f06f9c8b.jpeg)

##### Second Idea: Potentiometer to contol a rect() in breakout game.

![Second Idea Schematic](https://user-images.githubusercontent.com/60816393/85230531-e77e4300-b401-11ea-960c-b99a8f79b7fa.jpeg)

##### Final Idea: Ultrasonic sensor to contorl the altitude of a jet plane.

![Final Idea Schematic](https://user-images.githubusercontent.com/60816393/85230527-e3522580-b401-11ea-98f1-6305963c349c.jpeg)

### Video of the Final Idea:
https://www.youtube.com/watch?v=cNgZyGGEgHk

### Initial Concepts:

The initial concepts in which I passed through considered two different games, the breakout game, and the snake game. The snake game, the program included three different input buttons, two for the left and right controls, and the third was for the game reset. The up and down button in this program did not exist mainly because of the breadboard size. Thus, the user had to double-tap the left button for down and double-tap right for up. The user had to follow instructions at the start of the game to acknowledge the controls.

The second game, which is the breakout game, used a potentiometer as an analog read. The role of the potentiometer is to direct two different directions in the game, right and left. As the potentiometer moves to its maximum value, a base rec() will be motivated to go right, and if the value is minimum in the potentiometer, the rect() will move to the left. Because the second game seemed simple, I intended to experiment with inputting values and commands from Arduino to processing. Thus, I considered it as a trial step in this assignment. 

### Working Concept:

The program's concept is to introduce the users a new way of interacting with a game. The user in this program has the opportunity to control a similar version of the flappy bird "https://flappybird.io" game without having physical contact with either a touch screen or a keyboard. The flying jet, the name of this program's name, is positioned in the middle of the user's output screen. The user is expected the move the jet up or down by the ultrasonic distance measuring sensor. As the user enters his/her hand within the ultrasonic sensor's region, the jet will go down, and as there are no updates to the sensor, the plane will remain up.


### Outcome:

This assignment allowed me to understand how to transmit INPUT data from Arduino's Distance Measuring Sensor to Processing.

### Challenges:

I have encountered the most challenges since day one of this class from this assignment. I have experienced difficulties with three different codes that resulted from the initial idea, the Snake game. As I learned how to debug wires' connection in Arduino from the past assignment, I proceeded to the next step, building communication between the PinButton and Processing. I thought it would be easy as it once worked in Arduino's example "Graph." As I delved deeper into trying to connect the button to the Processing, I realized that the "Graph" example could not be any helpful. I then did some research looking for some answers and examples that could have helped me proceed. Most of what I found was how to build a connection between the PinButton and LEDs using Arduino and Processing, which was far from what I needed. I might have misled some concepts when initializing Arduino's buttons, as I open the example "Button" to explore it much further. Button's initialization was explicit, but it did not help me build on a game's example. I opened the example "Graph" from Arduino to see if reading from the digital (button) was possible. I changed from the example the analog initialization to digital read, followed with its values and Pin numbers. I realized that Pins with the symbol "~" did not provide INPUT data to the example, as Pin numbers such as 13, 12, 8, and 7 worked fine within the example. By knowing this fact, I returned to my game's code, hoping that it might work. The result was the same, but changing data in the Serial read displayed. 

At this point, followed by time pressure, I decided to try an example that uses a potentiometer. The example I used in the Second idea was "Graph" from Arduino, as it had a buildup command which involved a potentiometer. It made me feel that my Arduino was working along with the Processing program. As I finished this trial, I started experimenting with the potentiometer in another game, since it would not make sense if it were implemented in the snake code. The snake code had four commands considered as buttons, whereas the potentiometer was considered one command for the snake game, which adds complexity to the user's controls. At this stage, I thought of having the breakout game as an example to use the potentiometer. Unlike the snake game, the Breakout game can receive two commands or one command from the potentiometer in a manner to move either right or left. The experiment failed, mainly because I did not know how to implement a successful communication that controls the Processing. I had to move quickly due to the deadline, and so, I dedicated two full hours researching and viewing the last 30 minutes of the 18th of June lecture twice. Passing by my dedicated time, I felt hopeless about building a successful communication. I then challenged myself and switched on searching for all possible games that were inspired by Processing. I found the flappy bird, which was famous at a time. 

I started to question myself at this stage, what is the least command a game can perform through an INPUT. I realized that I could use one button, a potentiometer, or an ultrasonic distance measuring sensor. I felt motivated to experiment with the ultrasonic sensor since it might be my last hope before the deadline. I searched for examples with similar concepts of "Flappy Bird" and used an ultrasonic sensor. I found one example which contained a flying plane that is motivated by ultrasonic sensor updates. Regardless of the code's description, this example is a lifesaver, in which, it helped me to acknowledge how data is transmitted from an ultrasonic sensor to Processing. It worked fine in my program, which resulted in me tweaking its declaration and removing unnecessary command in the program. It was hard to understand the code; however, it passed through each line bit by bit removing lines and adding them back to understand the primary function.

### Sources:

##### Arduino Examples:

- "Graph"
- "Button"

##### Final Idea Example:

https://www.instructables.com/id/How-to-control-a-simple-Processing-game-with-Ardui/

##### Tutorials on using communication:

https://howtomechatronics.com/tutorials/arduino/processing/

https://learn.sparkfun.com/tutorials/connecting-arduino-to-processing/all

https://maker.pro/arduino/tutorial/how-to-make-arduino-and-processing-ide-communicate

##### Forums:

https://forum.processing.org/two/discussion/7293/using-arduino-buttons-to-do-something-in-processing-best-method

##### Tutorial on potentiometer communication to Arduino:

https://forum.processing.org/two/discussion/7293/using-arduino-buttons-to-do-something-in-processing-best-method

##### Snake Game Development:

https://www.youtube.com/watch?time_continue=2&v=AaGK-fj-BAM&feature=emb_title

https://www.openprocessing.org/sketch/50988/

https://discourse.processing.org/t/snake-game-code/1725

##### Breakout Game:

http://programmingjustforfun.blogspot.com/2015/11/9-breakout-game-in-processing.html

https://www.youtube.com/watch?v=Bh8-C8gzmXI&feature=emb_logo

