import Cocoa
import Foundation


    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        for i in 0...(nums.count - 1) {
            for j in 0...(nums.count - 1) {
                if i != j && nums[i] + nums[j] == target {
                    let numbers = [i,j]
                    result = numbers.sorted()
                }
            }
        }
        return result
    }

func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
    
    
    // this dict is backward to the other one below. we'll make array elements as keys and indexes as values
    var dict = [Int:Int]()

    // So we created another dict = [0:2, 1:7, 2:11, 3: 15]
    for (enumIndex, val) in nums.enumerated() {
   
        //  define index that gives us key(target - val) = index from backward dict
        if let newIndex = dict[target - val] {
            // if we found it, return current iterating index and other index
            print([newIndex, enumIndex])
            return [newIndex, enumIndex]
        }
        //top dict are actually being created here , backwards,
        // [2:0, 7:1, 11:2, 15:3 ] , here we insert enumarated dicts values as keys to the top dict
        dict[val] = enumIndex
    }
    
    fatalError("No valid outputs")
}

let a = [2,7,11,15]

twoSum2(a, 13)


