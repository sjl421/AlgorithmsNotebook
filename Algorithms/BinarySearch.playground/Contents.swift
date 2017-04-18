//: Playground - noun: a place where people can play

import UIKit

func binarySearch<T: Comparable>(_ array: [T], key: T, start: Int, end: Int) -> Int {
    if start < end {
        let mid = start + (end - start) / 2
        
        if key == array[mid] {
            return mid
        } else if key > array[mid] {
            return binarySearch(array, key: key, start: mid + 1, end: end)
        } else {
            return binarySearch(array, key: key, start: start, end: mid - 1)
        }
    }
    
    return -1
}

let a = [-1, 2, 4, 5, 7, 9, 10]
binarySearch(a, key: 5, start: 0, end: 6)

func binarySearchWithoutRecursive<T: Comparable>(_ array: [T], _ key: T, _ start: Int, _ end: Int) -> Int {
    var s = start, e = end
    while s < e {
        let mid = s + (e - s) / 2
        
        if key == array[mid] {
            return mid
        } else if (key > array[mid]) {
            s = mid + 1
        } else {
            e = mid - 1
        }
    }
    
    return -1
}

binarySearchWithoutRecursive(a, 5, 0, 6)
binarySearchWithoutRecursive(a, 33, 0, 6)

