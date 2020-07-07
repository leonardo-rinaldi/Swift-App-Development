import Foundation

/*
App Exercise - While Loops

You may want your fitness tracking app to help runners track and improve their cadence. 
Running cadence is the number of steps a runner takes in a minute. To help with this, 
you decide to let the user input a cadence, after which your app will play a sound at 
each interval they need to take another step.

For this exercise, you'll simulate a "test run" of the cadence feature of your app. 
Use a while loop to print "Take a step" to the console 10 times. Once you've successfully 
printed "Take a step" to the console 10 times, add the following code to the end of your 
while loop: Thread.sleep(forTimeInterval: 60/cadence). This will put a pause between each 
itertion of the while loop so that the print statements actually occur at the proper cadence.
*/

let cadence: Double = 180
var testSteps = 0

while testSteps < 10 {
    testSteps += 1
    print("Take a step")
    Thread.sleep(forTimeInterval: 60/cadence)
}