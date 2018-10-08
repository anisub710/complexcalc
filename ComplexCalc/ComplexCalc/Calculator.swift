//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
   
    //Add with lhs and rhs specified
    func add(lhs: Int, rhs: Int) -> Int {
        return (lhs + rhs)
    }
    
    //Add for array of numbers
    func add(_ nums: [Int]) -> Int {
        return nums.reduce(0, {x, y in
            x + y
        })
    }
    
    //Add for tuples
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    //Add for dictionaries
    func add(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        return ["x" : lhs["x"]! + rhs["x"]!, "y" : lhs["y"]! + rhs["y"]!]
    }
    
    //Subtract with lhs and rhs specified
    func subtract(lhs: Int, rhs: Int) -> Int {
        return (lhs - rhs)
    }
    
    //Subtract for array of numbers
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    //Subtract for tuples
    func subtract (lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        return ["x" : lhs["x"]! - rhs["x"]!, "y" : lhs["y"]! - rhs["y"]!]
    }
    
    //Multiply with lhs and rhs specified
    func multiply(lhs: Int, rhs: Int) -> Int {
        return (lhs * rhs)
    }
    
    //Multiply for array of numbers
    func multiply(_ nums: [Int]) -> Int {
        return nums.reduce(1, {x, y in
            x * y
        })
    }
    
    //Divide with lhs and rhs specified
    func divide(lhs: Int, rhs: Int) -> Int {
        return (lhs / rhs)
    }
    
    //MathOp for lhs and rhs specified
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    //MathOp for array of numbers
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        return args.reduce(beg, {x, y in
            op(x, y)            
        })
    }
    
    //Count for array of numbers
    func count(_ nums: [Int]) -> Int {
        return nums.count
    }
    
    //Average for array of numbers
    func avg(_ nums: [Int]) -> Int {
        return add(nums)/nums.count
    }
    
}
