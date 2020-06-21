/*
Exercise - String Basics

Create a name constant and assign it a string literal representing your name.
*/

var name = "Leonardo"

/*
Create a favoriteQuote constant and assign it the following string literal:

"My favorite quote is <INSERT QUOTE HERE>."

Write in your own favorite quote where indicated, and be sure to include escaped quotation marks. Print the value of favoriteQuote
*/

let favoriteQuote = "My favorite quote is \"Think different\""
print(favoriteQuote)

/*
 Write an if-else statement that prints "There's nothing here" if emptyString is empty, and "It's not as empty as I thought" otherwise.
 */

let emptyString = ""
if emptyString.isEmpty {
    print("There's nothing here")
} else {
    print("It's not empty as I trought")
}


/*
 Exercise - Concatenation and Interpolation

 Create a city constant and assign it a string literal representing your home city. Then create a state constant and assign it a string literal representing your home state. Finally, create a home constant and use string concatenation to assign it a string representing your home city and state (i.e. Portland, Oregon). Print the value of home.
 */

let city = "Pordenone"
let state = " Italy"
let home = city + state
print(home)


/*
 Use the compound assignment operator (+=) to add home to introduction below. Print the value of introduction.
 */

var introduction = "I live in "
introduction += home
print(introduction)


/*
 Declare a name constant and assign it your name as a string literal. Then declare an age constant and give it your current age as an Int. Then print the following phrase using string interpolation:

 "My name is <INSERT NAME HERE> and after my next birthday I will be <INSERT AGE HERE> years old."

 Insert name where indicated, and insert a mathematical expression that evaluates to your current age plus one where indicated.
 */

let myFirstName = "Leonardo"
let age: Int = 21
print("My name is \(myFirstName) and after my next birthday I will be \(age)")


/*
 App Exercise - Notifications

 In your app, you may want to search for other users. This would be easier with first and last names stored separately. This is not an uncommon practice.

 Create firstName and lastName constants and assign them string literals representing a user's first name and last name, respectively. Create a fullName constant that uses string concatenation to combine firstName and lastName. Print the value of fullName.
 */

let firstName = "Leonardo"
let lastName = "Rinaldi"
let fullName = firstName + " " + lastName
print(fullName)

/*
 Occasionally users of your fitness tracking app will beat previous goals or records. You may want to notify them when this happens for encouragement purposes. Create a new constant congratulations and assign it a string literal that uses string interpolation to create the following string:

 "Congratulations, <INSERT USER'S FULL NAME HERE>! You beat your previous daily high score of <INSERT PREVIOUS HIGHEST STEPS HERE> steps by walking <INSERT NEW HIGHEST STEPS HERE> steps yesterday!"

 Insert fullName, previousBest and newBest where indicated. Print the value of congratulations.
 */

let previousBest = 14392
let newBest = 15125
let congratulations = "Congratulation \(fullName)! You beat your previous daily high score of \(previousBest) steps by walking \(newBest) steps yesterday!"
print(congratulations)


/*
 Exercise - String Equality and Comparison

 Create two constants, nameInCaps and name. Assign nameInCaps your name as a string literal with proper capitalization. Assign name your name as a string literal in all lowercase. Write an if-else statement that checks to see if nameInCaps and name are the same. If they are, print "The two strings are equal", otherwise print "The two strings are not equal."
 */

let nameInCaps = "Leonardo Rinaldi"
let nameSurname = "leonardo rinaldi"

if nameInCaps == nameSurname {
    print("The two strings are equal.")
} else {
    print("The two strings are not equal.")
}

/*
 Write a new if-else statement that also checks to see if nameInCaps and name are the same. However, this time use the lowercased() method on each constant to compare the lowercase version of the strings. If they are equal, print the following statement using string interpolations:

 "<INSERT LOWERCASED VERSION OF nameInCaps HERE> and <INSERT LOWERCASED VERSION OF name HERE> are the same."

 If they are not equal, print the following statement using string interpolation:

 "<INSERT LOWERCASED VERSION OF nameInCaps HERE> and <INSERT LOWERCASED VERSION OF name HERE> are not the same."
 */

if nameInCaps.lowercased() == name.lowercased() {
    print("\(nameInCaps.lowercased()) and \(name.lowercased()) are the same")
} else {
    print("\(nameInCaps.lowercased()) and \(name.lowercased()) are not the same")
}

/*
 Imagine you are looking through a list of names to find any that end in "Jr." Write an if statement below that will check if junior has the suffix "Jr.". If it does, print "We found a second generation name!"
 */

let junior = "Cal Ripken Jr."

if junior.hasSuffix("Jr.") {
    print("We found a second generation name!")
}

/*
 Suppose you are trying to find a document on your computer that contains Hamlet's famous soliloquy written by Shakespeare. You write a simple app that will check every document to see if it contains the phrase "to be, or not to be". You decide to do part of this with the contains(_:) method. Write an if statement below that will check if textToSearchThrough contains textToSearchFor. If it does, print "I found it!" Be sure to make this functionality case insensitive.
 */

import Foundation
let textToSearchThrough = "To be, or not to be--that is the question"
let textToSearchFor = "to be, or not to be"

if textToSearchThrough.lowercased().contains(textToSearchFor.lowercased()) {
    print("I found it!")
}

/*
 Print to the console the number of characters in your name by using the count property on name.
 */

let myName = "Leonardo"
print(myName.count)


/*
 App Exercise - Password Entry and User Search

 You think it might be fun to incorporate some friendly competition into your fitness tracking app. Users will be able to compete with friends in small fitness challenges. However, to do this users will need a password-protected account. Write an if-else statement below that will check that the entered user name and password match the stored user name and password. While the password should be case sensitive, users should be able to log in even if their entered user name has the wrong capitalization. If the user name and password match, print "You are now logged in!" Otherwise, print "Please check your user name and password and try again."
 */

let storedUserName = "TheFittest11"
let storedPassword = "a8H1LuK91"
let enteredUserName = "thefittest11"
let enteredPassword: String = "a8H1Luk9"

if enteredUserName.lowercased() == storedUserName.lowercased() || enteredPassword.lowercased() == storedPassword.lowercased() {
    print("You are now logged in!")
} else {
    print("Please check your user name and password and try again")
}

/*
 Now that users can log in, they need to be able to search through a list of users to find their friends. This might normally be done by having the user enter a name, and then looping through all user names to see if a user name contains the search term entered. You'll learn about loops later, so for now you'll just work through one cycle of that. Imagine you are searching for a friend whose user name is StepChallenger. You enter "step" into a search bar and the app begins to search. When the app comes to the user name "stepchallenger," it checks to see if "StepChallenger" contains "step."

 Using userName and searchName below, write an if-else statement that checks to see if userName contains the search term. The search should not be case sensitive.
 */

import Foundation
let userName = "StepChallenger"
let searchName = "step"

if userName.lowercased().contains(searchName) {
    print("StepChallenger")
}