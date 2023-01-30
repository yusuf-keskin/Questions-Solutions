import Foundation
/*
 Suppose an array of length n sorted in ascending order is rotated between 1 and n times. For example, the array nums = [0,1,2,4,5,6,7] might become:

 [4,5,6,7,0,1,2] if it was rotated 4 times.
 [0,1,2,4,5,6,7] if it was rotated 7 times.
 Notice that rotating an array [a[0], a[1], a[2], ..., a[n-1]] 1 time results in the array [a[n-1], a[0], a[1], a[2], ..., a[n-2]].

 Given the sorted rotated array nums of unique elements, return the minimum element of this array.

 You must write an algorithm that runs in O(log n) time.
 Example 1:

 Input: nums = [3,4,5,1,2]
 Output: 1
 Explanation: The original array was [1,2,3,4,5] rotated 3 times.
 
 
 -------------------------------------------


 0123459 min value index first
 7890123 min value index inside
 9876543 min valueindex last

 */


var array = [4,5,6,7,0,1,2]
var array2 = [4,5,6,7,2,3]

func findMin(_ nums: [Int]) -> Int {
    if nums.count == 1 {return nums[0]}

    var result = nums[0]
    var l = 0
    var r = nums.count - 1
    
    while l <= r {
        
        if nums[l] < nums[r] {
            result = min(nums[l], result)
            break
            
        } else {  // Binary Search
            
            let medium = (l + r) / 2
            
            result = min(result, nums[medium])

            if nums[medium] >= nums[l] {
                l = medium + 1
            } else {
                r = medium - 1
            }
        }
    }
    return result
}

findMin(array)
findMin(array2)
