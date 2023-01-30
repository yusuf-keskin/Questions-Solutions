import Foundation

var nums = [1,2,3,1]

func containsDuplicate(_ nums: [Int]) -> Bool {
    return Set(nums).count != nums.count
}

containsDuplicate(nums)
