// Joel Elizaga
// INFO 498 D
// Spring 2016

// A second iteration of the Swift CLI calculator I wrote earlier--except this one's written a little bit better.

import Foundation

//////////
// HELP //
//////////

func help() {
    
    print("")
    print("=============================================")
    print("")
    print("USEFUL COMMANDS:")
    print("quit - Quits the calculator.")
    print("help - Prints this menu again.")
    print("")
    print("VALID OPERATORS:")
    print("+ - * / %")
    print("")
    print("OPERATIONS:")
    print("count - Counts the number of inputs received.")
    print("average - Averages all inputs received.")
    print("fact - Calculates the factorial of one input.")
    print("")
    print("=============================================")
    print("")
    
}

//////////////////////
// BASIC OPERATIONS //
//////////////////////

// Performs addition.
func addi(val1 : Int, val2 : Int) -> Int {
    return val1 + val2
}

// Performs subtraction.
func subt(val1 : Int, val2 : Int) -> Int {
    return val1 - val2
}

// Performs multiplication.
func mult(val1 : Int, val2 : Int) -> Int {
    return val1 * val2
}

// Performs division.
func divi(val1: Int, val2 : Int) -> Int {
    return val1 / val2
}

// Performs mod.
func mod(val1 : Int, val2 : Int) -> Int {
    return val1 % val2
}

//////////////////////
// ARRAY OPERATIONS //
//////////////////////

// Receives an array of Ints; returns the result of adding every single one.
func addiArray() {
    
}

// Receives an array of Ints; returns the result of multiplying every single one.
func multiArray() {
    
}

///////////////////////
// PERFORM OPERATION //
///////////////////////

// Generic "math operation" function that accepts two Ints and passes them to an operation.
func perfOp(val1 : Int, val2 : Int) {
    
}

//////////////////
// INTRODUCTION //
//////////////////

print("Welcome to Calculator-v2.")

////////////////
// CALCULATOR //
////////////////

var calculatorOn = true
var complete = false

while calculatorOn {
    
    var storage = [Int]()
    var op = ""
    
    while !complete {
        
    }
    
    
}

