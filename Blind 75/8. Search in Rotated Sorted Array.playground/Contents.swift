import Foundation


func search(_ nums: [Int], _ target: Int) -> Int {
    var l = 0
    var r = nums.count-1
    
    while l <= r {
        var middle = (l+r)/2
        
        if nums[middle] == target { return middle }
        
        
        // If left smaller than middle, we are in the left portion
        if nums[l] <= nums [middle] {
            //if target bigger than middle or smaller than most left
            // than it most be on right portion, so search there and move left to right
            if target < nums[l] || target > nums[middle] {
                l = middle + 1
            } else {
                r = middle - 1
            }
        } else {
            //if target smaller than middle or bigger than most right
            // than it most be on left portion, so search there and move right to left
            if target > nums[r] || target < nums[middle] {
                r = middle - 1
            } else {
                l = middle + 1
            }
        }
    }

    return -1
}

var nums = [13,14,15,16,0,1,2,3,4,5,6,7,8,9,10]

search(nums, 6)


