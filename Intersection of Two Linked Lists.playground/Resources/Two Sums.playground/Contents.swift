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

let a = [2,7,11,15]

twoSum(a, 13)


