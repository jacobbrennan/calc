//
//  main.swift
//  calc
//
//  Created by Jesse Clark on 12/3/18.
//  Written to by Jacob Brennan
//  Copyright © 2018 UTS. All rights reserved.
//

import Foundation

//std error from https://stackoverflow.com/questions/24041554/how-can-i-output-to-stderr-with-swift/41679101#41679101
var standardError = FileHandle.standardError
extension FileHandle : TextOutputStream {
    public func write(_ string: String) {
        guard let data = string.data(using: .utf8) else { return }
        self.write(data)
    }
}

// Reads input
var args = ProcessInfo.processInfo.arguments
args.removeFirst() // remove the name of the program
//print(Int(args[0])!)

// Creates array of values by type (Int or Operator)
var tokens: [Any] = []
for arg in args {
    if args.count == 2 {
        print("Unable to calculate expression")
        exit(1)
    }
    if let num = Int(arg) {
        tokens.append(num)
    }
    else if let op = supportedOperators [arg] {
        tokens.append(op)
    }
    else {
        print("Invalid input: \(arg) is not an operator or a number",to:&standardError)
        exit(1)
    }
}

// Converts infix notation to postfix notation
var operatorStack = Stack()
var numArray: [Int] = []
for token in tokens {
    if let num = token as? Int {
        numArray.append(num)
    }
    else if let op: Operator = token as? Operator {
        operatorStack.push(stringToPush: op)
    }
}

// Shunting Yard algorithm
var postFixArray: [Any] = [numArray, operatorStack] //combines the numbers + operators

var postFixStack = Stack() // creates the stack to use for SYA
for values in postFixArray {
    if let num = values as? Int {
        postFixStack.push(stringToPush: num)
    }
    else if let oper = values as? Operator {
        let num1: Int = postFixStack.pop() as! Int
        let num2: Int = postFixStack.pop() as! Int
        let total = oper.operate(num1, num2)
        print(total)
    }
}
