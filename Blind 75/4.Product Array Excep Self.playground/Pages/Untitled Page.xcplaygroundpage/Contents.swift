/*
 Given an array of integers arr, you’re asked to calculate for each index i the product of all integers except the integer at that index (i.e. except arr[i]). Implement a function arrayOfArrayProducts that takes an array of integers and returns an array of the products.

 input:  arr = [8, 10, 2]
 output: [20, 16, 80] # by calculating: [10*2, 8*2, 8*10]
 
 */

import Foundation

var nums = [1,2,3,4]

func productExceptSelf_2(arr: [Int]) -> [Int] {
    
    let lenght = arr.count
    if  lenght < 2 { return [] }
    
    var productArray = [Int]()
    for i in 0..<lenght { productArray.append(i)}
    
    for i in 0..<lenght {
        var placeholder = 1
        for j in 0..<lenght {
            if i != j {
                placeholder *= arr[j]
            }
            
            productArray[i] = placeholder
        }
        
    }
    return productArray
}

func productExceptSelf( _ nums: [Int]) -> [Int]{
    var left = Array.init(repeating: 1, count: nums.count)  //[1,1,1,1]
    var right = Array.init(repeating: 1, count: nums.count) //[1,1,1,1]
    var result = [Int]()
    
    let length = nums.count - 1


    for i in 1...length {
        left[i] = left[i-1] * nums[i-1]
    }

    print(left) // [1,1,2,6]
    
 
    for j in stride(from: length-1, through: 0, by: -1) {
        right[j] = right[j+1] * nums[j+1]
    }

    print(right) // [24,12,4,1]
    
    for i in 0...length {
        result.insert((right[i] * left[i]), at: i)
    }

    
    return result
    
}


func productExceptSelf_3( _ arr: [Int]) -> [Int]{

    var result = [Int]()
    
    let length = arr.count

    var product = 1
    for i in 0..<length {
        result.insert(product, at: i)
        product *= arr[i]
    }

    product = 1
    for j in stride(from: length - 1, through: 0, by: -1) {
        result[j] *= product
        product *= arr[j]
    }
    
    return result
    
}


productExceptSelf_3(nums)
