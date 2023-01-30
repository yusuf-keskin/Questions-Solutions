import UIKit

var array = [0,1,3]

func missingNumber(_ nums: [Int]) -> Int {
    let newNums = nums.sorted()

    for i in 0...nums.count {
      
        if newNums[0] != 0 {
            return 0
        }

        if newNums[newNums.count - 1] != newNums.count {
            return newNums.count
        }

        if newNums[i] != i {
            return i
        }
    }
    return 0
}

missingNumber(array)
