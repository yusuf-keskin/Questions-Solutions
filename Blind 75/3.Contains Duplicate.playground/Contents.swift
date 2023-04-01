import Foundation

var nums = [1,2,3,1,]

func containsDuplicate(_ nums: [Int]) -> Bool {
    return Set(nums).count != nums.count
}

containsDuplicate(nums)


func hasDuplicate(_ num : [Int]) -> Bool {
    var dict = [Int: Bool]()
    guard nums.count > 2 else { return false }
    
    for num in nums {
        if dict[num] == true {
            return true
        } else {
            dict[num] = true
        }
    }
    return false
}

hasDuplicate(nums)


