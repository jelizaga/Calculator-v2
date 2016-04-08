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
    print("clear - Clears the calculator of data.")
    print("quit - Quits the calculator.")
    print("help - Prints this menu again.")
    print("print array - Prints the data array.")
    print("print points - Prints the points currently")
    print("stored.")
    print("")
    print("VALID OPERATORS:")
    print("+ - * / %")
    print("")
    print("OPERATIONS:")
    print("count - Counts the number of inputs received.")
    print("average - Averages all inputs received.")
    print("fact - Calculates the factorial of one input.")
    print("add all - Calculates the sum of all received")
    print("numbers.")
    print("multiply all - Calculates the result of")
    print("multiplying all received numbers.")
    print("")
    print("POINT OPERATIONS:")
    print("create tuple - Creates a new tuple point with")
    print("the last two values received.")
    print("create dictionary - Creates a new dictionary")
    print("point with the last two values received.")
    print("+ tuples - Adds the last two tuples you made.")
    print("- tuples - Subtracts the last two tuples you")
    print("made.")
    print("+ dictionaries - Adds the last two")
    print("dictionaries you made.")
    print("- dictionaries - Subtracts the last two")
    print("dictionaries you made.")
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
    
    var result: Int = 1
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

// TUPLES: Returns a point representing the added values of the two received points.
func addiPointsT(point1: (x: Int, y: Int), point2: (x: Int, y: Int)) -> (x: Int, y: Int) {
    
    var result: (x: Int, y: Int) = (0, 0)
    result.x = point1.x + point2.x
    result.y = point1.y + point2.y
    return result
    
}

// TUPLES: Returns a point representing the subtracted values of the two received points.
func subtPointsT(point1: (x: Int, y: Int), point2: (x: Int, y: Int)) -> (x: Int, y: Int) {
    
    var result: (x: Int, y: Int) = (0, 0)
    result.x = point1.x - point2.x
    result.y = point1.y - point2.y
    return result
    
}

// DICTIONARIES: Returns a point representing the added values of the two received points.
func addiPointsD(point1: [String: Int], point2: [String: Int]) -> [String: Int]  {
    
    let result = [
        "x": point1["x"]! + point2["x"]!,
        "y": point1["y"]! + point2["y"]!,
    ]
    return result
}

// DICTIONARIES: Returns a point representing the subtracted values of the two received points.
func subtPointsD(point1: [String: Int], point2: [String: Int]) -> [String: Int] {
    
    let result = [
        "x": point1["x"]! - point2["x"]!,
        "y": point1["y"]! - point2["y"]!,
    ]
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
    var tpoint1: (x: Int, y: Int) = (0, 0)
    var tpoint2: (x: Int, y: Int) = (0, 0)
    // Declaring two empty dictionary points.
    var dpoint1 = [
        "x": 0,
        "y": 0
    ]
    var dpoint2 = [
        "x": 0,
        "y": 0
    ]
    
    print("Data clear. Calculate:")
    
    while !complete {
        
        // Raw response.
        var response = readLine()
        // Response converted into an Int.
        var operand = Int.init(response!)
        
        if (response == "clear") {
            
            complete = true
            print("")
            break
            
        } else if (response == "quit") {
            
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
            
        } else if (response == "+ tuples") {
            
            var result = addiPointsT(tpoint1, point2: tpoint2)
            print(result)
            complete = true
            print("")
            
        } else if (response == "- tuples") {
            
            var result = subtPointsT(tpoint1, point2: tpoint2)
            print(result)
            complete = true
            print("")
            
        } else if (response == "+ dictionaries") {
            
            var result = addiPointsD(dpoint1, point2: dpoint2)
            print(result)
            complete = true
            print("")
            
        } else if (response == "- dictionaries") {
            
            var result = subtPointsD(dpoint1, point2: dpoint2)
            print(result)
            complete = true
            print("")
            
        } else if (response == "create tuple") {
            
            tpoint1.x = tpoint2.x
            tpoint1.y = tpoint2.y
            tpoint2.x = secondToLast
            if (storage.last == nil) {
                tpoint2.y = 0
            } else {
                tpoint2.y = storage.last!
            }
            print("Tuple created.")
            print("Tuple 1: \(tpoint1)")
            print("Tuple 2: \(tpoint2)")
            
        } else if (response == "create dictionary") {
            
            dpoint1["x"] = dpoint2["x"]
            dpoint1["y"] = dpoint2["y"]
            dpoint2["x"] = secondToLast
            if (storage.last == nil) {
                dpoint2["y"] = 0
            } else {
                dpoint2["y"] = storage.last!
            }
            print("Dictionary created.")
            print("Dictionary 1: \(dpoint1)")
            print("Dictionary 2: \(dpoint2)")
            
        } else if (operand != nil) {
            
            if (storage.last != nil) {
                secondToLast = storage.last!
            }
            
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
            
        } else {
            
            print("\(response) isn't an integer, operator, or a command.")
            
        }
        
    }
    
}

