import Foundation

func maxArea(_ height: [Int]) -> Int {
    var result = 0
    
    var left = 0
    var right = height.count - 1
    
    while left < right {
        var area = (right - left) * min(height[right], height[left])
        result = max(result, area)
        
        
        if height[left] < height[right] {
            left += 1
        } else if height[left] > height[right] {
            right -= 1
        } else {
            right -= 1
        }
 
    }

  return result
    
}

var height = [1,8,6,2,5,4,8,3,7]

maxArea(height)
