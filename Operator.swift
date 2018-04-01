//
//  Operator.swift
//  calc
//
//  Created by Jacob Brennan on 31/3/18.
//  Copyright © 2018 UTS. All rights reserved.
//

import Foundation

class Operator {
    let name: String
    var precedence: Int
    //let operate: (Int, Int) -> Int
    
    //init(name: String, precedence: Int, operate: (Int, Int) -> (Int)) {
    //    self.name = name
    //    self.precedence = precedence
        //self.operate(Int, Int) = operate(Int, Int)
    //}
    
    init(name: String, precedence: Int) {
        self.name = name
        self.precedence = precedence
    }
}

func add(num1: Int, num2: Int) -> (Int) {
    let total = num1 + num2
    return total
}
func sub(num1: Int, num2: Int) -> (Int) {
    let total = num1 - num2
    return total
}
func multiply(num1: Int, num2: Int) -> (Int) {
    let total = num1 * num2
    return total
}
func divide(num1: Int, num2: Int) -> (Int){
    let total = num1 / num2
    return total
}
func modulus(num1: Int, num2: Int) -> (Int) {
    let total = num1 % num2
    return total
}

let supportedOperators: [String:Operator] = [
    "+":Operator(name:"+", precedence:10),
    "-":Operator(name:"-", precedence:10),
    "x":Operator(name:"x", precedence:20),
    "/":Operator(name:"/", precedence:20),
    "%":Operator(name:"%", precedence:20)
]

/*
let supportedOperators: [String:Operator] = [
    "+":Operator(name:"+", precedence:10, operate:add),
    "-":Operator(name:"-", precedence:10, operate:sub),
    "x":Operator(name:"x", precedence:20, operate:multiply),
    "/":Operator(name:"/", precedence:20, operate:divide),
    "%":Operator(name:"%", precedence:20, operate:modulus)
]
*/


func operate(num1: Int, num2: Int) {

}
