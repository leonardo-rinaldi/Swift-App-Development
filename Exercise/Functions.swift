/*
Exercise - Create Functions

Write a function called introduceMyself that prints a brief introduction of yourself. 
Call the funtion and observe the printout.
*/

func introduceMyself() {
    print("Ciao mi chiamo Leonardo")
}

introduceMyself()


/*
Write a function called magicEightBall that generates a random number and then uses 
either a switch statement or if-else-if statements to print different responses based 
on the random number generated. let randomNum = arc4random_uniform(UInt32(5)) will 
generate a random number from 0 to 4, after which you can print different phrases 
corresponding to the number generated. Call the function multiple times and observe 
the different printouts. Note that the random number generation will not work unless 
your function is declared after the import Foundation statement below. This is because 
the arc4random_uniform(_:) function is declared in the Foundation framework.
*/

import Foundation

func magicEightBall() {

    let randomNum = arc4random_uniform(UInt32(5))
    
    if randomNum == 1 {
        print("Il valore è 1")
    } else
        if randomNum == 2 {
            print("Il valore è 2")
    } else
            if randomNum == 3 {
                print("Il valore è 4")
    } else
                if randomNum == 5 {
                    print("il valore è 5")
    }
}

magicEightBall()

/*
App Exercise - A Functioning App

As you may have guessed, functions are key to making your app work. For example,
in every exercise dealing with step count until now, you have simply assigned a
number of steps to a steps variable. This isn't very realistic seeing as the 
number of steps you take increments one at a time and continues changing throughout 
the day.

A reoccurring process like this is a perfect candidate for a function. Write a function 
called incrementSteps after the declaration of steps below that will increment steps by 
one and then print its value. Call the function multiple times and observe the printouts.
*/

var steps = 0

func incrementSteps() {

     steps = steps + 1
     print(steps)
}

incrementSteps() 
incrementSteps() 
incrementSteps()

/*
Similarly, if you want to regularly provide progress updates to your user, you can put 
your control flow statements that check on progress into a function. Write a function 
called progressUpdate after the declaration of goal below. The function should print 
"You're off to a good start." if steps is less than 10% of goal, "You're almost halfway there!" 
if steps is less than half of goal, "You're over halfway there!" if steps is less than 90% of 
goal, "You're almost there!" if steps is less than goal, and "You beat your goal!" otherwise. 
Call the function and observe the printout. Remember, you can convert numbers using the 
appropriate Int or Double initializer.
*/

let goal = 10000


func progressUpdate() {
    
    if Double(steps) <= (0.10 * Double(goal)) { 
        print("You're off to a good start.")
    } else
        if Double(steps) <= (0.50 * Double(goal)) { /
            print("You're almost halway there!")
    } else
            if Double(steps) <= (0.9 * Double(goal)) { 
                print("You're over halfway there!")
    } else
                if steps < goal {
                    print("You're almost there!")
                } else {
                    print("You beat tour goal")
}
}

progressUpdate()

/*
Exercise - Parameters and Argument Labels

Write a new introduction function called introduction. It should take two String parameters, 
name and home, and one Int parameter, age. The function should print a brief introduction. 
I.e. if "Mary," "California," and 32 were passed into the function, it might print 
"Mary, 32, is from California." Call the function and observe the printout.
*/

func introduction(name: String, home: String, age: Int) {
    print("\(name), \(age), is from \(home)")
}

introduction(name: "Mary", home: "California", age: 32)


/*
Write a function called almostAddition that takes two Int arguments. The first argument 
should not require an argument label. The function should add the two arguments together, 
subtract 2, then print the result. Call the function and observe the printout.
*/

func almostAddition(_ first: Int, second: Int) {
    print( ((first + second) - 2) )
}

almostAddition(2, second: 3)

/*
Write a function called multiply that takes two Double arguments. The function should 
multiply the two arguments and print the result. The first argument should not require 
a label, and the second argument should have an external label, "by", that differs from 
the internal label. Call the function and observe the printout.
*/

func multiply(_ first: Double, by second: Double) {
    print( first * second )
}

multiply(2, by: 2)

/*
App Exercise - Progress Updates

In many cases you want to provide input to a function. For example, the progress function 
you wrote in the Functioning App exercise might be located in an area of your project that 
doesn't have access to the value of steps and goal. In that case, whenever you called the 
function, you would need to provide it with the number of steps that have been taken and 
the goal for the day so it can print the correct progress statement.

Rewrite the function progressUpdate, only this time give it two parameters of type Int 
called steps and goal, respectively. Like before, it should print "You're off to a good 
start." if steps is less than 10% of goal, "You're almost halfway there!" if steps is 
less than half of goal, "You're over halfway there!" if steps is less than 90% of goal, 
"You're almost there!" if steps is less than goal, and "You beat your goal!" otherwise. 
Call the function and observe the printout.

Call the function a number of times, passing in different values of steps and goal. 
Observe the printouts and make sure what is printed to the console is what you would 
expect for the parameters passsed in.
*/

func progressUpdate(steps: Int, goal: Int) {
    
      if Double(steps) <= (0.10 * Double(goal)) { 
            print("You're off to a good start.")
        } else
            if Double(steps) <= (0.50 * Double(goal)) { 
                print("You're almost halway there!")
        } else
                if Double(steps) <= (0.9 * Double(goal)) { 
                    print("You're over halfway there!")
        } else
                    if steps < goal {
                        print("You're almost there!")
                    } else {
                        print("You beat tour goal")
    }
}

progressUpdate(steps: 5000, goal: 10000)

/*
Your fitness tracking app is going to help runners stay on pace to reach their goals. 
Write a function called pacing that takes four Double parameters called currentDistance, 
totalDistance, currentTime, and goalTime. Your function should calculate whether or not 
the user is on pace to hit or beat goalTime. If yes, print "Keep it up!", otherwise print 
"You've got to push it just a bit harder!"
*/

func pacing(currentDistance: Double, totalDistance: Double, currentTime: Double, goalTime: Double) {
    
    if currentDistance + totalDistance + currentTime < goalTime {
        print("You've got to push it just a bit harder")
    } else {
        print("Keep it up")
    }
}

pacing(currentDistance: 20.20, totalDistance: 10, currentTime: 20, goalTime: 40.5)

/*
Exercise - Return Values and Tuples

Write a function called greeting that takes a String argument called name, and returns 
a String that greets the name that was passed into the function. I.e. if you pass in "Dan" 
the return value might be "Hi, Dan! How are you?" Use the function and print the result.
*/

func greeting(name: String) -> String {
    return "Hi, \(name)! Ho are you?"
}

print(greeting(name: "Dan"))

/*
Write a function that takes two Int arguments, and returns an Int. The function should 
multiply the two arguments, add 2, then return the result. Use the function and print 
the result.
*/

func numbers(first: Int, second: Int) -> Int {
    
    return (first * second) + 2
}

print(numbers(first: 10, second: 2))

/*
App Exercise - Separating Functions

One principle that can help in debugging and maintaining code is abstraction. For example, 
in your fitness tracking app some of your existing functions have been written to both perform 
a calculation and print a message. But it's very possible that you'll decide to change either 
the calculation or the message in the future. It will be easier to go back and change this if 
you separate the calculation from the message.

As an example, write a function that only does a portion of what your previous pacing function 
did. This function will be called calculatePace. It should take three Double arguments called 
currentDistance, totalDistance, and currentTime, and should return a Double that will represent 
the time at which the user will finish the run based on the user's current distance and time. 
Call the function and print the return value.
*/

func calculatePace(currentDistance: Double, totalDistance: Double, currentTime: Double) -> Double {
    return (totalDistance - currentDistance) / currentTime     
}

print(calculatePace(currentDistance: 20, totalDistance: 40, currentTime: 10))

/*
Now write a function called pacing that takes four Double arguments called currentDistance, 
totalDistance, currentTime, and goalTime. The function should also return a String, which will 
be the message to show the user. The function should call calculatePace, passing in the 
appropriate values, and capture the return value. The function should then compare the returned 
value to goalTime and if the user is on pace return "Keep it up!", and return "You've got to 
push it just a bit harder!" otherwise. Call the function and print the return value.
*/

func pacing(currentDistance: Double, totalDistance: Double, currentTime: Double, goalTime: Double) -> String {
    
    let returnValue = calculatePace(currentDistance: currentDistance, totalDistance: totalDistance, currentTime: currentTime)
    
    if returnValue >= goalTime {
        return "Keep it up!"
    } else
        if returnValue < goalTime {
            return "You've got to push it just a bit harder"
        } else {
            return "\(returnValue)"
    }
}

print(pacing(currentDistance: 300, totalDistance: 300, currentTime: 300, goalTime: 0))


/*
Copyright © 2017 Apple Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software 
and associated documentation files (the "Software"), to deal in the Software without restriction, 
including without limitation the rights to use, copy, modify, merge, publish, distribute, 
sublicense, and/or sell copies of the Software, and to permit persons to whom the Software 
is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or 
substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT 
NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/