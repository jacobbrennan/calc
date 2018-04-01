//
//  main.swift
//  calc
//
//  Created by Jesse Clark on 12/3/18.
//  Added to by Jacob Brennan
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

var args = ProcessInfo.processInfo.arguments
args.removeFirst() // remove the name of the program
print(Int(args[0])!)

var tokens: [Any] = []
let operators: [String] = ["+", "-", "x", "/", "%"]
for arg in args {
    if let num = Int(arg) {
        tokens.append(num)
    }
    else if operators.contains(arg) {
        tokens.append(arg)
    }
    else {
        print("Invalid input: \(arg) is not an operator or a number",to:&standardError)
        exit(1)
    }
}

var operatorStack = Stack()
var numArray: [Int] = []
var postFixArray: [Any] = []
for token in tokens {
    if let num = token as? Int {
        numArray.append(num)
    }
    else if let op: String = token as? String {
        operatorStack.push(op)
    }
}





