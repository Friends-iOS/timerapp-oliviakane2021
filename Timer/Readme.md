iOS - Timer App

For this week's assignment we will be designing and coding our own version of the Timer App we worked on in class. Our in-class version of the Timer App was designed for cooking the perfect egg, but a Timer App can be used for a myriad of purposes. Your assignment is to re-design the app to fit a new purpose. 

Points: 10
DUE: 4/9 before class begins
**submit via GitHub as normal**

-design a whole new UI for the app. The cute egg graphics don't really work for our re-designed apps!
    -The UI must have the following:
        -At least 3 buttons
        -background
        -labels
        -alarm sound
-Refactor (ie edit) the code to match our new UI. 
    -all buttons, labels, and progress view in the Storyboard must be connected to code in the View Controller
    -all buttons, labels, and progress views must be working. No non-functioning elements.
-BONUS:
    -Implement a Progress View in your Timer App.
    -A Progress View acts like a progress bar (a bar that slowly gets filled; visually shows the progress of the action)
    -The code is rather straight forward. Give it a shot!
    -To get started do the following (I've added some of this in my version):
        -Add a UIProgressView  in your Storyboard (click on plus (+) button, search for UIProgressView and drag it to your Storyboard)
        -Control+drag the UIProgressView to the ViewController and add it as an Outlet
        -to control the percentage of fill in the Progress View, we use the progress field. See attribute window
        -do a Google Search for "swift how to add a progress view" and experiment!
IDEAS (in case you're stuck and need some inspiration)
-Homework Timer
-Food Timer (Rice, etc)
-Custom Timer (more advanced, user will input their desired countdown). THis can be repurposed to an alarm clock.
