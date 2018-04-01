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
    var stackArray = [String] ()
    
    // create push function
    func push(stringToPush : String) {
        self.stackArray.append(stringToPush)
    }
    
    // create pop function
    func pop() -> String? {
        if self.stackArray.last != nil {
            let stringToReturn = self.stackArray.last
            self.stackArray.removeLast()
            return stringToReturn
        }
        else {
            return nil
        }
    }
}


