//
//  Stack.swift
//  calc
//
//  Created by Jacob Brennan on 1/4/18.
//  Copyright © 2018 UTS. All rights reserved.
//

import Foundation

// code found at https://medium.com/@ranleung/stacks-10785239540b
class Stack {
    var stackArray = [Any] ()
    
    // returns count of how many values in stack
    var count: Int {
        return stackArray.count
    }
    
    // create push function, adds to top of stack
    func push(valueToPush : Any) {
        self.stackArray.append(valueToPush)
    }
    
    // create pop function, removes top of stack
    func pop() -> Any? {
        if self.stackArray.last != nil {
            let valueToReturn = self.stackArray.last
            self.stackArray.removeLast()
            return valueToReturn
        }
        else {
            return nil
        }
    }
}


