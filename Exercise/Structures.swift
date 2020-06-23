/*
Exercise - Structs, Instances, and Default Values

Imagine you are creating some kind of app for monitoring location. 
Create a GPS struct with two variable properties, latitude and longitude, both with default values of 0.0.
*/

struct GPS {
    var latitude: Double = 0.0
    var longitude: Double = 0.0
}

/*
Create a variable instance of GPS called somePlace. It should be initialized without supplying any arguments.
Print out the latitude and longitude of somePlace, which should be 0.0 for both.
*/

let somePlace = GPS()
print(somePlace.latitude)
print(somePlace.longitude)

/*
Change somePlace's latitude to 51.514004, and the longitude to 0.125226, then print the updated values.
*/

let somePlaceX = GPS(latitude: 51.514004, longitude: 0.125226)
print(somePlaceX.latitude)
print(somePlaceX.longitude)

/*
Now imagine you are making a social app for sharing your favorite books. Create a Book struct with four 
variable properties: title, author, pages, and price. The default values for both title and author should 
be an empty string. pages should default to 0, and price should default to 0.0.
*/

struct Book {
    var title = String.init()   //inizilizzo la stringa vuota ""
    var author = String.init()
    var page = Int.init()   // Inizializzo con il valore 0
    var price = Double.init()   //Inizializzo con il valore 0.0
}

/*
Create a variable instance of Book called favoriteBook without supplying any arguments. Print out the title of favoriteBook. 
Does it currently reflect the title of your favorite book? Probably not. Change all four properties of favoriteBook to reflect 
your favorite book. Then using the properties of favoriteBook, print out facts about the book.
*/

let favoriteBook = Book(title: "Steve Jobs", author: "Walter Isaacson", page: 600, price: 16.00)
print(favoriteBook.title)
print(favoriteBook.author)
print(favoriteBook.page)
print(favoriteBook.price)


/*
Exercise - Memberwise and Custom Initializers

If you completed the exercise Structs, Instances, and Default Values, you created a GPS struct with default values for properties of 
latitude and longitude. Create your GPS struct again, but this time do not provide default values. Both properties should be of type 
Double.

*/

struct GPS {
    var latitude: Double
    var longitude: Double
}

/*
Now create a constant instance of GPS called somePlace, and use the memberwise initializer to set latitude to 51.514004, and longitude 
to 0.125226. Print the values of somePlace's properties.
*/

let somePlace = GPS(latitude: 51.514004, longitude: 0.125226)
print(somePlace.latitude)
print(somePlace.longitude)

/*
In Structs, Instance, and Default Values, you also created a Book struct. Creat this struct again without default values. Give each property 
appropriate types. Declare your favoriteBook instance and pass in the values of your favorite book using the memberwise initializer. Print a 
statement about your favorite book using favoriteBook's properties.
*/

struct Book {
    var title: String
    var author: String
    var page: Int
    var price: Double
}

let favoriteBook = Book(title: "Steve Jobs", author: "Walter Isacsoon", page: 600, price: 16.00)
print(favoriteBook.title)
print(favoriteBook.author)
print(favoriteBook.page)
print(favoriteBook.price)

/*
Make a Height struct with two variable properties, heightInInches and heightInCentimeters. Both should be of type Double.

Create two custom initializers. One initializer will take a Double argument that represents height in inches. The other 
initializer will take a Double argument that represents height in centimeters. Each initializer should take the passed in 
value and use it to set the property that corresponds to the unit of measurement passed in. It should then set the other 
property by calculating the right value from the passed in value. Hint: 1 inch = 2.54 centimeters.

Example

If you use the initializer for inches to pass in a height of 65, the initializer should set heightInInches to 65 and 
heightInCentimeters to 165.1.
*/

struct Height {
    var heightInInches: Double
    var heightInCentimeters: Double
    
    
    
    init(toInch: Double) {
        heightInCentimeters = toInch
        heightInInches = toInch / 2.54
    }
    
    init(toCentimetrs: Double ) {
        
        heightInCentimeters = toCentimetrs * 2.54
        heightInInches = toCentimetrs
    }
    
}

/*
Now create a variable instance of Height called someonesHeight. Use the initializer for inches to set the height to 65. 
Print out the property for height in centimeters and verify that it is equal to 165.1.
*/

var someonesHeight = Height(toCentimetrs: 65)
print(someonesHeight.heightInCentimeters)

/*
Now create a variable instance of Height called myHeight and initialize it with your own height. Verify that both 
heightInInches and heightInCentimeters are accurate.
*/

var myHeight = Height(toInch: 170)
print(myHeight.heightInInches)
print(myHeight.heightInCentimeters)

/*
App Exercise - Users and Distance

Note:
These exercises reinforce Swift concepts in the context of a fitness tracking app.

For most apps you'll need to have a data structure to hold information about a user. 
Create a User struct that has properties for basic information about a user. At a minimum, it should have properties to 
represent a user's name, age, height, weight, and activity level. You could do this by having name be a String, age be an Int,
height and weight be of type Double, and activityLevel be an Int that will represent a scoring 1-10 of how active they are. 
Implement this now.

*/

struct User {
    var name: String
    var age: Int
    var height: Double
    var weight: Double
    var activityLevel: Int
}

/*
Create a variable instance of User and call it your name. Use the memberwise initializer to pass in information about yourself. 
Then print out a description of your User instance using the instance's properties.
*/

var utente = User(name: "Leonardo", age: 21, height: 1.70, weight: 61, activityLevel: 3)
print(utente.name)
print(utente.age)
print(utente.height)
print(utente.weight)
print(utente.activityLevel)

/*
In previous app exercises, you've worked with distance in the fitness tracking app example as a simple number. However, distance 
can be represented using a variety of units of measurement. Create a Distance struct that will represent distance in various units 
of measurement. At a minimum, it should have a meters property and a feet property. Create a custom initializer corresponding to each 
property (i.e. if you only have the two properties for meters and feet you will then have two initializers) that will take in a distance
in one unit of measurement and assign the correct value to both units of measurements. Hint: 1 meter = 3.28084 feet.

Example
If you use the initializer for meters and pass in a distance of 1600, the initializer should set meters to 1600 and feet to 5249.344.
*/

struct Distance {
    
    var meters: Double
    var feet: Double
    
    init(toMeters: Double) { // da feet a meters
        meters = toMeters / 3.28084
        feet = toMeters
    }
    
    init(toFeet: Double) {  // da metri a piedi
        meters = toFeet
        feet = toFeet * 3.28004
    }
}

/*
Now create an instance of Distance called mile. Use the initializer for meters to set the distance to 1600. Print out the property for 
feet and verify that it is equal to 5249.344.
*/

var mile = Distance(toFeet: 1600)
print(mile.feet)

/*
Now create another instance of Distance and give it some other distance. Ensure that both properties are set correctly.
*/

var otherDistance = Distance(toMeters: 5248.064)
print(otherDistance.meters)

/*
Exercise - Methods

A Book struct has been created for you below. Add an instance method on Book called description that will print out facts about the book. 
Then create an instance of Book and call this method on that instance.
*/

struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    func description() {
       print("The title is: \(title), the author is: \(author), pages: \(pages), price: \(price)")
       
    }
}

let instanceBook = Book(title: "Steve Jobs", author: "Walter Isaacson", pages: 600, price: 16.00)
instanceBook.description()

/*
A Post struct has been created for you below, representing a generic social media post. Add a mutating method on Post called like that will 
increment likes by one. Then create an instance of Post and call like() on it. Print out the likes property before and after calling the method 
to see whether or not the value was incremented.
*/

struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    mutating func like() {
        likes += 1
    }
}

var post = Post(message: "Hello, world!", likes: 10, numberOfComments: 2)
print(post.likes)
post.like()
print(post.likes)

/*
App Exercise - Workout Functions

Note:
These exercises reinforce Swift concepts in the context of a fitness tracking app.

A RunningWorkout struct has been created for you below. Add a method on RunningWorkout 
called postWorkoutStats that prints out the details of the run. Then create an instance of RunningWorkout
and call postWorkoutStats().
*/

struct RunningWorkout {
    var distance: Double
    var time: Double
    var elevation: Double
    
    
    func postWorkoutStats()  {
    print("Distance: \(distance), time: \(time), elevation: \(elevation)")
    }
}

var runningWorkout = RunningWorkout(distance: 10.2, time: 1.0, elevation: 20.2)
runningWorkout.postWorkoutStats()


/*
A Steps struct has been created for you below, representing the day's step-tracking data. It has the goal 
number of steps for the day and the number of steps taken so far. Create a method on Steps called takeStep 
that increments the value of steps by one. Then create an instance of Steps and call takeStep(). 
Print the value of the instance's steps property before and after the method call.
*/

struct Steps { 
    var steps: Int
    var goal: Int
    
    mutating func takeStep() {
        steps += 1
    }
}

var steps = Steps(steps: 10, goal: 20)
print(steps.steps)
steps.takeStep()
print(steps.steps)

/*
Exercise - Computed Properties and Property Observers

The Rectangle struct below has two properties, one for width and one for height. Add a computed property that
computes the area of the rectangle (i.e. width * height). Create an instance of Rectangle and print the area property.
*/

struct Rectangle {
    var width: Int
    var height: Int
    
    var area: Int {         // Computed property
        return width * height
    }
}

var rectangle = Rectangle(width: 10, height: 10)
print(rectangle.area)

/*
In the Height struct below, height is represented in both inches and centimeters. However, if heightInInches is changed, 
heightInCentimeters should also adjust to match it. Add a didSet to each property that will check if the other property 
is what it should be, and if not, sets the proper value. If you set the value of the other property even though it already 
has the right value, you will end up with an infinite loop of each property setting the other.

Create an instance of Height and then change one of its properties. Print out the other property to ensure that it was 
adjusted accordingly.
*/

struct Height {
    var heightInInches: Double {
        
        didSet {
            let inCm = heightInInches * 2.54
            if heightInCentimeters != inCm {
                heightInCentimeters = inCm
            }
        }
    }
    
    
    var heightInCentimeters: Double {
        
        didSet {
            let inInch = heightInCentimeters / 2.54
            if heightInInches != inInch {
                heightInInches = inInch
            }
        }
    }
    
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches*2.54
    }
    
    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters/2.54
    }
}

var height = Height(heightInInches: 70)
height.heightInInches = 75
print(height.heightInCentimeters)

/*
App Exercise - Mile Times and Congratulations

Note
These exercises reinforce Swift concepts in the context of a fitness tracking app.

The RunningWorkout struct below holds information about your users' running workouts. However, you 
decide to add information about average mile time. Add a computed property called averageMileTime that uses 
distance and time to compute the user's average mile time. Assume that distance is in meters and 1600 meters is a mile.

Create an instance of RunningWorkout and print the averageMileTime property. Check that it works properly.
*/

struct RunningWorkout {
    var distance: Double
    var time: Double
    var elevation: Double
    
    var averageMileTime: Double {
        return distance + time
    }
}

var runningWorkout = RunningWorkout(distance: 1600, time: 10, elevation: 20)
print(runningWorkout.averageMileTime)


/*
In other app exercises, you've provided encouraging messages to the user based on how many steps they've completed. 
A great place to check whether or not you should display something to the user is in a property observer.

In the Steps struct below, add a willSet to the steps property that will check if the new value is equal to goal, 
and if it is, prints a congratulatory message. Create an instance of Steps where steps is 9999 and goal is 10000, 
then call takeStep() and see if your message is printed to the console.
*/

struct Steps {
    var steps: Int {
        willSet {
            if newValue == goal {
                print("Congratulations!!!")
            }
        }
    }
    var goal: Int
    
    mutating func takeStep() {
        steps += 1
    }
}

var steps = Steps(steps: 9999, goal: 10000)
steps.takeStep()

/*
Exercise - Type Properties and Methods

Imagine you have an app that requires the user to log in. You may have a User struct similar to that shown below. 
However, in addition to keeping track of specific user information, you might want to have a way of knowing who the 
current logged in user is. Create a currentUser type property on the User struct below and assign it to a user object 
representing you. Now you can access the current user through the User struct. Print out the properties of currentUser.
*/

struct User {
    var userName: String
    var email: String
    var age: Int
    
    static var currentUser = User(userName: "Leonardo", email: "leo@gmail.com", age: 21)
    
    static func logIn(user: User) {     //type method
        currentUser = user
        print("Logged in \(currentUser.userName)")
    }
}

print(User.currentUser.userName)

/*
There are other properties and actions associated with a User struct that might be good candidates for a type property or method. 
One might be a method for logging in. Go back and create a type method called logIn(user:) where user is of type User. In the body 
of the method, assign the passed in user to the currentUser property, and print out a statement using the user's userName saying that 
the user has logged in.

Below, call the logIn(user:) method and pass in a different User instance than what you assigned to currentUser above. 
Observe the printout in the console.
*/

let newUser = User(userName: "Leo", email: "newmail@gmail.com", age: 21)
User.logIn(user: newUser)


/*
App Exercise - Type Properties and Methods

Note
These exercises reinforce Swift concepts in the context of a fitness tracking app.

In another exercise, you added a computed property representing the average mile time from a run. 
However, you may want to have a calculator of sorts that users can use before their run to find out 
what mile time they need to average in order to run a given distance in a given time. In this case it 
might be helpful to have a type method on RunningWorkout that can be accessed without having an instance 
of RunningWorkout.

Add to RunningWorkout a type method mileTimeFor(distance:time:) where distance and time are both of type Double. 
This method should have a return value of type Double. The body of the method should calculate the average mile 
time needed to cover the passed in distance in the passed in time. Assume that distance is in meters and that one
mile is 1600 meters.

Call the method from outside of the struct and print the result to ensure that it works properly.
*/

struct RunningWorkout {
    var distance: Double
    var time: Double
    var elevation: Double
    
    static var meterInFeet = 3.28084
    static var mileInMeters = 1600.0
    
    static func mileTimeFor(distance: Double, time: Double) -> Double {
        return time / distance * 1600
    }
}

print(RunningWorkout.mileTimeFor(distance: 10, time: 10))

/*
It may be helpful to have a few type properties on RunningWorkout representing unit conversions 
(i.e. meters to mile, feet to meters, etc.). Go back and add a type property for meterInFeet and assign it 3.28084.
Then add a type property for mileInMeters and assign it 1600.0. Print both of these values below.
*/

print(RunningWorkout.meterInFeet)
print(RunningWorkout.mileInMeters)

/*
Copyright © 2017 Apple Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files 
(the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, 
publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, 
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE 
FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION 
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*/