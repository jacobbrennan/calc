//
//  Operator.swift
//  calc
//
//  Created by Jacob Brennan on 31/3/18.
//  Copyright © 2018 UTS. All rights reserved.
//

import Foundation

// Code provided by Jesse Clark via UTSOnline
struct Operator {
    let name: String
    var precedence: Int
    let operate: (Int, Int) -> Int
    
}

// Add Function
func add(num1: Int, num2: Int) -> (Int) {
    return num1 + num2
}
// Subtraction Function
func sub(num1: Int, num2: Int) -> (Int) {
    let total = (num1 - num2) * -1
    return total
}
// Multiplication Function
func multiply(num1: Int, num2: Int) -> (Int) {
    let total = num1 * num2
    return total
}
// Divide Function
func divide(num1: Int, num2: Int) -> (Int){
    if num2 == 0 {
        print("Cannot divide by 0 - Mathematical Error")
        exit(2)
    }
    else {
        let total = num1/num2
        return total
    }
    
}
// Modulus Function
func modulus(num1: Int, num2: Int) -> (Int) {
    let total = num1 % num2
    return total
}

// Look-up table of supported operators, template provided by Jesse Clark
let supportedOperators: [String:Operator] = [
    "+":Operator(name:"+", precedence:10, operate:add),
    "-":Operator(name:"-", precedence:10, operate:sub),
    "x":Operator(name:"x", precedence:20, operate:multiply),
    "/":Operator(name:"/", precedence:20, operate:divide),
    "%":Operator(name:"%", precedence:20, operate:modulus)
]











