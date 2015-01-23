/*
 * Purdue iOS Dev Club
 * September 26, 2014
 * First Swift Tutorial
 * by George Lo
 */

/*
 * If you have any question
 * feel free to email me (log@purdue.edu)
 */

// Import all frameworks here
import UIKit

// Integer (Equivalent to Int32)
var sum: Int = 3

// Short (−32,768 to 32,767)
var short: Int16 = 32000

// Integer (−2,147,483,648 to 2,147,483,647)
var int: Int32 = 3

// Long (−9,223,372,036,854,775,808 to 9,223,372,036,854,775,807)
var long: Int64 = 43289402384023

// Boolean
var boolExample: Bool = true

// String
var str: String = "Hello World"

// String concatenation
str += "!"

// Double
var dou: Double = 3.0

// Float
var flo: Float = 4.7

// Array
var array: [String] = ["Apple", "Banana", "Pineapple"]

// Adding elements to an array
array += ["Passion Fruit", "Strawberry"]

// Dictionary (Hash)
var pair: NSDictionary = ["Key": "Value"]

// Method with multiple return types
func dummy() -> (firstStr: String, secondStr: String) {
    return ("George", "Student")
}

// Retrieve and save the multiple returns
var (Key, Value) = dummy()
Key += " Lo" // Key is "George Lo" now!

// Constant variable
let constStr: String = "Hi"

// Type is optional in Swift
var str1 = "Test"
var str2: String = "Test"

// Declaring a class in Swift
class Car: NSObject {
    var name: String
    var serial: String
    var type: String
    var make: String
    var year: Int16
    
    init(name: String, serial: String, type: String, make: String, year: Int16) {
        self.name = name
        self.serial = serial
        self.type = type
        self.make = make
        self.year = year
    }
}

// Creating a Car object
var c: Car = Car(name: "My Car", serial: "WB83297GJK", type: "Sedan", make: "Aston Martin", year: 2014)

