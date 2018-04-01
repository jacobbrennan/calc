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

let tokens = args.map { (arg:String) -> Any in
    if let num = Int(arg) {
        return num
    }
    else if let op = supportedOperators[arg] {
        return op
    }
    else {
        print("Invalid input: '\(arg)' is neither a number or supported operator")
        exit(1)
    }
}

/*
for token in tokens {
    if let num = token as? Int {
        //process
    }
    else if let op = token as? Operator {
        switch op {
            case "+":
                print("")
        default:
                print("Default")
            
        }
    }
}
 */





