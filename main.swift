//
//  main.swift
//  calc
//
//  Created by Jesse Clark on 12/3/18.
//  Added to by Jacob Brennan
//  Copyright © 2018 UTS. All rights reserved.
//

import Foundation

var args = ProcessInfo.processInfo.arguments
args.removeFirst() // remove the name of the program
print(Int(args[0])!)

var tokens: [Any] = []
for operators in tokens {
    if let num = operators as? Int {
        tokens.append(num)
    }
    else if let op = operators as? Operator {
        tokens.append(op)
    }
    else {
        print("Invalid input: '\(operators)' is neither a number or supported operator")
        exit(1)
    }
}




