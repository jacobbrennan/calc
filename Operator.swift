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
    let operate: (Int, Int) -> Int
    
    init(_ name: String) {
        self.name = name
    }
}


func add() { }
func sub() { }
func multiply() { }
func divide() { }
func modulus() { }


let supportedOperators: [String:Operator] = [
    "+":Operator(name:"+", precedence:10, operate:add),
    "-":Operator(name:"-", precedence:10, operate:sub),
    "x":Operator(name:"x", precendece:20, operate:multiply),
    "/":Operator(name:"/", precedence:20, operate:divide),
    "%":Operator(name:"%", precedence:20, operate:modulus)
]



//func operate(num1: Int, num2: Int) {
//
//}
