import Foundation
/*
Exercise - While Loops

Create a while loop that simulates rolling a 6-sided dice repeatedly until a 1 is rolled. 
After each roll, print the value. (Hint: use Int(arc4random_uniform(6) + 1) to generate a 
random number between 1 and 6).
*/

var rolling = 0


while rolling != 1 {
    rolling = Int(arc4random_uniform(6) + 1)
    print(rolling)
}