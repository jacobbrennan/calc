//
//  main.swift
//  calc
//
//  Created by Jesse Clark on 12/3/18.
//  Copyright © 2018 UTS. All rights reserved.
//

import Foundation

//A function to read user input
func getInput() -> Any{
    let input : Any! = readLine()
    return input!;
}

//Reworked from code on https://www.hackingwithswift.com/example-code/strings/how-to-split-a-string-into-an-array-componentsseparatedby
let str = getInput()
var characters  = str.components(separatedBy: " ")

/*var tokens: [Any] = characters
let i = 2
let left_half = tokens[..<i]
// let middle = 3 * 4
let right_half = characters[(i+3)...]
characters = left_half + right_half
*/

//a for in loop to show that the string is broken into characters
//for character in characters {
//    print(character)
//}

//Work out what operations to perform
for character in characters {
    switch character {
        case "+":
            let total: Int! = add()
            print(total)
        case "-":
            let total: Int! = sub()
            print(total)
        case "x":
            let total: Int! = multiply()
            print(total)
        case "/":
            let total: Int! = divide()
            print(total)
        case "%":
            let total: Int! = modulus()
            print(total)
        default:
            print("")
    }
}

func add() -> Int{
    /* Get array value 0 -> Get array value 2 -> add together */
    let str1 = characters[0]
    let str2 = characters[2]
    let num1: Int! = Int(str1)
    let num2: Int! = Int(str2)
    let total: Int! = num1 + num2
    return total!
}

func sub() -> Int {
    let str1 = characters[0]
    let str2 = characters[2]
    let num1: Int! = Int(str1)
    let num2: Int! = Int(str2)
    let total: Int! = num1 - num2
    return total!
}

func multiply() -> Int {
    let str1 = characters[0]
    let str2 = characters[2]
    let num1: Int! = Int(str1)
    let num2: Int! = Int(str2)
    let total: Int! = num1 * num2
    return total!
}

func divide() -> Int {
    let str1 = characters[0]
    let str2 = characters[2]
    let num1: Int! = Int(str1)
    let num2: Int! = Int(str2)
    let total: Int! = num1 / num2
    return total!
}

func modulus() -> Int {
    let str1 = characters[0]
    let str2 = characters[2]
    let num1: Int! = Int(str1)
    let num2: Int! = Int(str2)
    let total: Int! = num1 % num2
    return total!
}
/*
 Process
 1. Read in user input - DONE
 2. Break into characters - DONE
 3. Find the numbers
 4. Find the operators
 5. Evaluate the equation
    - Parse single number
    - Parse two numbers
    - BODMAS
 6. Print result
 */


var args = ProcessInfo.processInfo.arguments
args.removeFirst() // remove the name of the program

print(Int(args[0])!)


