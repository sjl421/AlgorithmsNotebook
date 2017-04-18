//: Playground - noun: a place where people can play

import UIKit

func partition<T: Comparable>(_ left: Int, _ right: Int, _ array: inout [T]) -> Int {
    var k = left
    let pivot = array[right]
    
    for i in left..<right {
        if array[i] <= pivot {
            (array[i], array[k]) = (array[k], array[i])
            k += 1
        }
    }
    
    (array[k], array[right]) = (array[right], array[k])
    
    return k
}

func quickSort<T: Comparable>(_ array: inout [T], _ left: Int, _ right: Int) {
    if right > left {
        let k = partition(left, right, &array)

        quickSort(&array, left, k - 1)
        quickSort(&array, k + 1, right)
    }
}

var array = [3, 7, 8, 5, 2, 1, 9, 5, 4]
quickSort(&array, 0, 8)
