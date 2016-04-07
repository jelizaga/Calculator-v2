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
    print("COMMANDS:")
    print("quit - Quits the calculator.")
    print("help - Prints this menu again.")
    print("print array - Prints the calculation array.")
    print("print points - Prints the points currently stored.")
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
    print("POINT OPERATIONS")
    print("create tuple - Creates a new tuple point with the last two values received.")
    print("create dictionary - Creates a new dictionary point with the last two values received.")
    print("+ tuples - Adds the last two tuples you made.")
    print("- tuples - Subtracts the last two tuples you made.")
    print("+ dictionaries - Adds the last two dictionaries you made.")
    print("- dictionaries - Substracts the last two dictionaries you made.")
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

// Performs the factorial of the received Int.
func fact(val1: Int) -> Int {
    
    var result:Int = 0;
    for (var i = 0; i <= val1; i++) {
        result += i
    }
    return result
    
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
    
    var result: Int = 0
    for num in storage {
        result += num
    }
    return result
    
}

// Receives an array of Ints; returns the result of multiplying every single one.
func multArray(storage: [Int]) -> Int {
    
    var result: Int = 0
    for num in storage {
        result = result * num
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

//////////////////////
// POINT OPERATIONS //
//////////////////////

// Creates a point with the last two received numbers.
func createPoint(val1: Int, val2: Int) {
    
    print("Point created: (\(val1), \(val2))")
    
}

// TUPLES: Returns a point representing the added values of the two received points.
func addiPointsT(point1: (Int, Int), point2: (Int, Int)) {
    
}

// TUPLES: Returns a point representing the subtracted values of the two received points.
func subtPointsT(point1: (Int, Int), point2: (Int, Int)) {
    
}

// DICTIONARIES: Returns a point representing the added values of the two received points.
func addiPointsD(point1: [Int: Int], point2: [Int: Int]) -> [Int: Int] {
    var x = point1
    var result = point1
    return result
}

// DICTIONARIES: Returns a point representing the subtracted values of the two received points.
func subtPointsD(point1: [Int: Int], point2: [Int: Int]) -> [Int: Int] {
    var result = point1
    return result
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
    // Declaring the variable declared last.
    var secondToLast = 0;
    // Declaring two empty tuple points.
    var tpoint1: (x : Int, y : Int) = (0, 0)
    var tpoint2: (x : Int, y : Int) = (0, 0)
    // Declaring two empty dictionary points.
    var dpoint1: [Int: Int] = [0: 0]
    var dpoint2: [Int: Int] = [0: 0]
    
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
            
        } else if (response == "print array") {
          
            print(storage)
            
        } else if (response == "print points") {
          
            print("Tuple 1: \(tpoint1)")
            print("Tuple 2: \(tpoint2)")
            print("Dictionary 1: \(dpoint1)")
            print("Dictionary 2: \(dpoint2)")
            
        } else if (response == "+" || response == "-" || response == "*" || response == "/" || response == "%") {
            
            op = response!
            opDeclared = true
            
        } else if (response == "count") {
            
            var result = countArray(storage)
            print(result)
            complete = true
            print("")
            
        } else if (response == "average") {
            
            // Could not use the generic array function, as averages need doubles, not ints.
            var result = averageArray(storage)
            print(result)
            complete = true
            print("")
            
        } else if (response == "fact") {
            
            var result = fact(storage.last!)
            print(result)
            complete = true
            print("")
            
        } else if (response == "add all") {
            
            var result = addiArray(storage)
            print(result)
            complete = true
            print("")
            
        } else if (response == "multiply all") {
            
            var result = multArray(storage)
            print(result)
            complete = true
            print("")
            
        } else if (operand != nil) {
            
            storage.append(operand!)
     
            if (opDeclared) {
                
                var result = 0
                
                if (op == "+") {
                    result = performOperation(addi, val1: secondToLast, val2: storage.last!)
                } else if (op == "-") {
                    result = performOperation(subt, val1: secondToLast, val2: storage.last!)
                } else if (op == "*") {
                    result = performOperation(mult, val1: secondToLast, val2: storage.last!)
                } else if (op == "/") {
                    result = performOperation(divi, val1: secondToLast, val2: storage.last!)
                } else {
                    result = performOperation(mod, val1: secondToLast, val2: storage.last!)
                }
                print(result)
                complete = true;
                print("")
                
            }
            
            secondToLast = operand!
            
        } else {
            
            print("\(response) isn't an integer, operator, or a command.")
            
        }
        
    }
    
}

