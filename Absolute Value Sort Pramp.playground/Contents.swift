
/*
 Given an array of integers arr, write a function absSort(arr), that sorts the array according to the absolute values of the numbers in arr. If two numbers have the same absolute value, sort them according to sign, where the negative numbers come before the positive numbers.

 Examples:

 input:  arr = [2, -7, -2, -2, 0]
 output: [0, -2, -2, 2, -7]
 Constraints:

 [time limit] 5000ms
 [input] array.integer arr
 0 ≤ arr.length ≤ 10
 [output] array.integer
 
 */

import UIKit

func sort(input : [Int]) -> [Int]? {
    return nil
}

var arr = [2, -7, -2, -2, 0]
var arr2 = [5,2,2,-2,6,-5,9,8,-4,0,1]
print(arr2)


func sort(_ arr : inout [Int]) -> [Int] {
    guard !arr.isEmpty else { return arr }
    for i in 0..<arr.count - 1 {
        //let min = i
        for j in (i+1)..<arr.count {
            if isSmaller(arr[j], arr[i]) {
                
                //arr.swapAt(i, j)
                swap(array: &arr, i, j)
            }
        }
    }
    return arr
}


func isSmaller(_ a : Int,  _ b: Int) -> Bool {
    if abs(a) > abs(b) {
        return false
    } else if abs(a) < abs(b) {
        return true
    } else if a < b {
        return true
    } else if a > b {
        return false
    } else {
        return false
    }
}


func swap(array : inout [Int], _ a: Int, _ b : Int) -> [Int] {
    guard !array.isEmpty else { return array }
    let temp = array[a]
    array[a] = array[b]
    array[b] = temp
    return array
}

let sortedArray = sort(&arr2)
print(sortedArray)
