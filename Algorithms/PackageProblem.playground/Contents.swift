//: Playground - noun: a place where people can play

import UIKit

func packageSolve(_ n: Int, _ options: [Int]) -> Int {
    var states:[Int:Int] = [:]
    states[0] = 0
    
    for i in 1...n {
        for j in options.sorted() {
            if j <= i {
                if let iState = states[i] {
                    if states[i - j]! + 1 < iState {
                        states[i] = states[i - j]! + 1
                    }
                } else {
                    states[i] = states[i - j]! + 1
                }
            } else {
                break
            }
        }
    }
    
    return states[n]!
}

let n = 11
let options = [1, 3, 5]
packageSolve(n, options)