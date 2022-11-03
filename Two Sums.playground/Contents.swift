import Foundation

var nums = [2,7,9,11,15]

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int:Int]()
    
    for index in 0...nums.count {
        if let reverseIndex = dict[target - nums[index]] {
            return [index, reverseIndex]
        } else {
            dict[nums[index]] = index
        }
    }
    return [0,0]
}

twoSum(nums, 9)
