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
    print("add all - Calculates the sum of all received numbers.")
    print("multiply all - Calculates the result of multiplying all received numbers.")
    print("")
    print("=============================================")
    print("")
    
}

//////////////////////
// BASIC OPERATIONS //
//////////////////////

// Performs addition, returns result.
func addi(val1 : Int, val2 : Int) -> Int {
    return val1 + val2
}

// Performs subtraction, returns result.
func subt(val1 : Int, val2 : Int) -> Int {
    return val1 - val2
}

// Performs multiplication, returns result.
func mult(val1 : Int, val2 : Int) -> Int {
    return val1 * val2
}

// Performs division, returns result.
func divi(val1: Int, val2 : Int) -> Int {
    return val1 / val2
}

// Performs mod, returns result.
func mod(val1 : Int, val2 : Int) -> Int {
    return val1 % val2
}

//////////////////////
// ARRAY OPERATIONS //
//////////////////////

// Receives an array of Ints; returns the result of adding every single one.
func addiArray(storage : [Int]) -> Int {
    var result:Int = 0
    for num in storage {
        result += num
    }
    return result
}

// Receives an array of Ints; returns the result of multiplying every single one.
func multArray() {
    
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
help()

////////////////
// CALCULATOR //
////////////////

var calculatorOn = true

while calculatorOn {
    
    // Declaring empty calculator array.
    var storage = [Int]()
    // Declaring empty operator.
    var op = ""
    // Declaring boolean for a completed calculation.
    var complete = false
    // Declaring a boolean for a declared operand.
    var opDeclared = false
    
    print("Calculate:")
    
    while !complete {
        
        // Raw response.
        var response = readLine()
        // Response converted into an Int.
        var operand = Int.init(response!)
        
        if (response == "quit") {
            calculatorOn = false
            print("")
            break
        } else if (response == "help") {
            help()
        } else if (response == "+" || response == "-" || response == "*" || response == "/" || response == "%") {
            op = response!
            opDeclared = true
        } else if (response == "count") {
            
        } else if (response == "average") {
            
        } else if (response == "fact") {
            
        } else if (response == "add all") {
            
        } else if (response == "multiply all") {
            
        }
        
    }
    
}

