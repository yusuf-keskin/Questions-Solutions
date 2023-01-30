import Foundation

var nums = [1,2,3,4]

func productExceptSelf( _ nums: [Int]) -> [Int]{
    var left = Array.init(repeating: 1, count: nums.count)  //[1,1,1,1]
    var right = Array.init(repeating: 1, count: nums.count) //[1,1,1,1]
    var result = [Int]()
    
    let length = nums.count - 1

    //Began to calculate left from index 1 to keep starting value of left as 1
    for i in 1...length {
        left[i] = left[i-1] * nums[i-1]
    }

    print(left) // [1,1,2,6]
    
    //Began to calculate right from index (last - 1) to keep ending value of last as 1
    for j in stride(from: length-1, through: 0, by: -1) {
        right[j] = right[j+1] * nums[j+1]
    }

    print(right) // [24,12,4,1]
    
    for i in 0...length {
        result.insert((right[i] * left[i]), at: i)
    }
    
//    [1, 1, 2,6]
//    [24,12,4,1]
//    multiply same index of each array and add insert to result
//    [24,12,8,6]
    
    return result
    
}

productExceptSelf(nums)


