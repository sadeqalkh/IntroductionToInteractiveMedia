# Midterm Assignment Page:

### Pictures of this assignment's program and screenshots of its process:

Screenshots from each page in the program

<img width="1000" alt="Screen Shot 2020-06-10 at 11 29 22 AM" src="https://user-images.githubusercontent.com/60816393/84239560-b81c2c00-ab0d-11ea-880c-323e61712128.png">

<img width="998" alt="Screen Shot 2020-06-10 at 11 31 12 AM" src="https://user-images.githubusercontent.com/60816393/84239671-f44f8c80-ab0d-11ea-8aae-868a14beb7d0.png">

<img width="999" alt="Screen Shot 2020-06-10 at 11 33 10 AM" src="https://user-images.githubusercontent.com/60816393/84239899-4395bd00-ab0e-11ea-875a-6ed96c5113c1.png">

<img width="999" alt="Screen Shot 2020-06-10 at 11 35 42 AM" src="https://user-images.githubusercontent.com/60816393/84240122-97080b00-ab0e-11ea-840f-c5ec3bb5d7ba.png">

<img width="1001" alt="Screen Shot 2020-06-10 at 11 36 38 AM" src="https://user-images.githubusercontent.com/60816393/84240162-aa1adb00-ab0e-11ea-8cd3-9b9a235521b3.png">

A method when applying rect() to the first Maze

<img width="1495" alt="Screen Shot 2020-06-09 at 12 21 37 AM" src="https://user-images.githubusercontent.com/60816393/84241068-ffa3b780-ab0f-11ea-88ff-c00e9784a603.png">


### Concept:

The concept of this program is to let the users experience a game with two different modes. This game is a Maze, and the two different modes represent two different structures of the maze. The user is required to use the mouse in the game until a status appears, a win a lose. In the black background, the user is required to click 'space' if he is willing to retry the same maze structure or the second. The red circle, which represents a subject that is controlled by the mouse, cannot pass or touch the Maze walls; that is, if the user wants to win the mode. To win the game, the user must reach the red circle to the blue square, which resembles the finish point of the mode.

### Outcome:

This assignment helped me to understand how I add multiple pages in a program. In which, colors in this program played an essential role in the transition from one page to another. Mainly because of an if statement which declares that if a mouse touched a specific color, proceed in applying a top layer that represents a second page. I also learned how to create different "PageStates" in which its role is to save integer variables in the manner of representing different pages. For instance, if I had "PageState == 0" and "PageState == 1," 0 will resemble a first page and 1 will resemble a second page. In this step, the PageState will be represented within the if statement; for example, if the mouse touches (255), which is white in the current page, proceed to "PageState == 1," is the second page.
This assignment also helped me understand the application of sounds in processing and how it might motivate the users differently. The background music saved in the program as a loop() plays a role in representing a 3rd sense to the program that is by hearing. The game motivated the users to use three of their senses in this program: sight, touch, and hearing. Hence, this game communicates an interactive experience to the users. Sounds in a program can also represent a tools for hooking people to the program.

### Challenges:

The challenges that I encountered in this program is undoubtedly from organizing the program to carry many intended concepts all at once. I tried to simplify my code in my early state; however, it only resulted in errors while running the program. I then decided to organize them in different tabs that are in the manner of representing different setups of the game. I added the "Main_Setup" which represents most of the statements that help in running the program and the interactive experience. The "First_Maze_Setup" and the "Second_Maze_Setup" represents the base structure of the maze, which is the maze walls.

The second challenge is applying play() it sounds to apply many SFX to the two-game statuses. At first, I was confused about where to use sounds in the code, mainly because of how play() sounded in the program. In play(), I tried two different file types, WAV, and MP3, which had a difference only in the file size. As I applied a file in play(), the SFX in the program sounded like cracks with slow.mo of the original. Unfortunately, the play() variable does not stop the file from running with cracks until I stop running the program.

### Resource:
Circle not passing the Maze walls, and creating overlapped pages:
 https://www.youtube.com/watch?v=teEO51HkRxk
Sounds:
 https://www.youtube.com/watch?v=QbT0gbZG1I0

