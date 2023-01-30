import Foundation

func maxSubArray(_ nums: [Int]) -> Int {
    if nums.count<2 { return nums[0]}
    var array = [Int]()
    var current = nums[0]
    var maximum = nums[0]

    //[-2,1,-3,4,-1,2,1,-5,4]
    // 1  1  0 4  3 5 6  0  0
    
    for i in 1...(nums.count - 1) {
        if (current + nums[i]) < 0 { current = 0 }
        current = max((current + nums[i]), nums[i])
        maximum = max(current, maximum)
    }
    return maximum
}

var array = [-2,1,-3,4,-1,2,1,-5,4]

maxSubArray(array)

