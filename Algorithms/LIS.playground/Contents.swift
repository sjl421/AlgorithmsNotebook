//: Playground - noun: a place where people can play

import UIKit

func lis(_ list: [Int]) {
    var max: [Int:Int] = [:]
    let n = list.count
    
    for i in 0..<n {
        max[i] = 1
        for j in 0..<i {
            if list[j] < list[i] && max[j]! + 1 > max[i]! {
                max[i] = max[j]! + 1
            }
        }
        print(max[i]!)
    }
}

let a = [5, 3, 4, 8, 6, 7]
lis(a)