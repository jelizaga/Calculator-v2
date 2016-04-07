// Joel Elizaga
// INFO 498 D
// Spring 2016

// A second iteration of the Swift CLI calculator I wrote earlier--except this one's written a
// little bit better.

import Foundation

///////////////////////////////////////////////////////////////////////////////////////////////////
// FUNCTIONS //////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////

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
func addi(val1: Int, val2: Int) -> Int {
    return val1 + val2
}

// Performs subtraction, returns result.
func subt(val1: Int, val2: Int) -> Int {
    return val1 - val2
}

// Performs multiplication, returns result.
func mult(val1: Int, val2: Int) -> Int {
    return val1 * val2
}

// Performs division, returns result.
func divi(val1: Int, val2: Int) -> Int {
    return val1 / val2
}

// Performs mod, returns result.
func mod(val1: Int, val2: Int) -> Int {
    return val1 % val2
}

///////////////////////
// GENERIC OPERATION //
///////////////////////

// Generic "math operation" function that accepts two Ints and passes them to an operation.
func performOperation(operation: (Int, Int) -> Int, val1: Int, val2: Int) -> Int {
    return operation(val1, val2)
}

//////////////////////
// ARRAY OPERATIONS //
//////////////////////

// Receives an array of Ints; returns its size.
func countArray(storage: [Int]) -> Int {
    return storage.count
}

// Receives an array of Ints; returns its average.
func averageArray(storage: [Int]) -> Double {
    let count = Double(storage.count)
    var total = 0.0
    for num in storage {
        total += Double(num)
    }
    let result = total / count
    return result
}

// Receives an array of Ints; returns the result of adding every single one.
func addiArray(storage: [Int]) -> Int {
    var result:Int = 0
    for num in storage {
        result += num
    }
    return result
}

// Receives an array of Ints; returns the result of multiplying every single one.
func multArray(storage: [Int]) -> Int {
    var result:Int = 0
    for num in storage {
        result *= num
    }
    return result
}

/////////////////////////////
// GENERIC ARRAY OPERATION //
/////////////////////////////

// Generic "math operation" function that accepts two Ints and passes them to an operation.
func performArrayOperation(operation: ([Int]) -> Int, storage: [Int]) -> Int {
    return operation(storage)
}

///////////////////////////////////////////////////////////////////////////////////////////////////
// START //////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////

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
            var result = addiArray(storage)
            print(result)
            complete = true
        } else if (response == "multiply all") {
            var result = multArray(storage)
            print(result)
            complete = true
        } else if (response == "count") {
            var result = countArray(storage)
            print(result)
            complete = true
        } else if (response == "average") {
            var result = averageArray(storage)
            print(result)
            complete = true
        } else if (operand != nil) {
            storage.append(operand!)
     
            if (opDeclared) {
                var result = 0
                if (op == "+") {
                    result = performOperation(addi, val1: storage.first!, val2: storage.last!)
                } else if (op == "-") {
                    result = performOperation(subt, val1: storage.first!, val2: storage.last!)
                } else if (op == "*") {
                    result = performOperation(mult, val1: storage.first!, val2: storage.last!)
                } else if (op == "/") {
                    result = performOperation(divi, val1: storage.first!, val2: storage.last!)
                } else {
                    result = performOperation(mod, val1: storage.first!, val2: storage.last!)
                }
                print(result)
                complete = true;
                print("")
            }
            
        }
        
    }
    
}

