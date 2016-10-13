//: Playground - noun: a place where people can play

import UIKit

// Question 1
// Declare a variable integer and a constant string in swift.

var num: Int = 1
let str: String = "Hello"

// Question 2
// What is type inference? Describe it in a comment below.
/*
 Type inference is when Swift automatically assumes the type of something. For instance above on Question 1 I did not need to declacre them as Int or String. Type inference would see the number and treat num as an int and the same for string on str.
 */
// Question 3
// Using a range, print out numbers 1 through 10.
for i in 1...10{
    print(i)
}
// Question 4
// Given an array of Strings where each item is a planet, loop through the array and print each planet.

let planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]

for planet in planets {
    print(planet)
}

// Question 5
// Given the following if statement, reduce it to a ternary statement

// Try changing the value of x to test your cases!

//var x = 4

//if x > 3 {
   // x += 1
//} else {
   // x += 2
//}

//let x: Int = 4 ? +=3 : +=2 (closest I could get still haven't used a ternary)

// Question 6
/*
 Create a dictionary with 5 states and their state codes.
 
 Here are a few :
 
 Kentucky, KY
 Ohio, OH
 Missouri, MO
 Mississippi, MS
 New York, NY
 New Jersey, NJ
 Kansas, KS
 California, CA
 Colorado, CO
 */
var states: [String: String] = ["KY": "Kentucky", "OH": "Ohio", "NY": "New York", "KS": "Kansas", "CA": "California"]
// Question 7
// Using the dictionary from the previous question, create a function that will look up the state name for any state code in your dictionary.  Make sure codes that don't exist are handled.

func stateCodes () {
    if states ["KY"] != nil {
        print("The state name is \(states)")
}
}//still haven't used dictionaries and can't remember how to do this properly

// Question 8
/*
 Which statement will unwrap the optional before printing?
 
 1. print("optionalVal! \(optionalVal)")
 2. print("optionalVal? \(optionalVal)")
 3. print("optionalVal: \(optionalVal?)")
 4. print("optionalVal: \(optionalVal++)") */
 //ANSWER print("optionalVal: \(optionalVal!)")

// Question 9
/*
 Create a class called StopLight
 
 * It will have a stored property called lightColor
 * lightColor will be represented by the an enumeration LightColor.
 * Create an enumeration called LightColor for the states of a stop light
 * Create a method called changeLight that accepts a value of LightColor.
 
 */

class StopLight {
    
    enum LightColor {
        case red
        case yellow
        case green
    }
    func changeLight () {
        LightColor.self
    }
}

// Question 10
// You are given a superclass Vehicle and a subclass Motorcycle.
// A motorcycle should have 2 wheels and a max of 2 passengers.
//Override the makeNoise method to print out "Beep" instead of "Honk"

// Vehicle class
class Vehicle {
    var numberOfWheels = 4
    var maxNumberOfPassengers = 4
  
    func information() {
        print("I have \(numberOfWheels) wheels and can carry \(maxNumberOfPassengers) people")
    }
    
    func makeNoise() {
        print("Honk")
    }
}

// Motorcycle class
class Motorcycle: Vehicle {
     override init() {
        //numberOfWheels = 2
        //maxNumberOfPassengers = 2
        //Commented out because of an error I don't understand didn't have issues with this one last week
    }
    override func information() {
        print("I have \(numberOfWheels) wheels and can carry \(maxNumberOfPassengers) people")
    }
    override func makeNoise() {
        print("Beep!")
    }
}
