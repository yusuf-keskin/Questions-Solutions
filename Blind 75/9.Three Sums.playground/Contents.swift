import Foundation


func threeSum(_ nums: [Int]) -> [[Int]] {
    
    var result = [[Int]]()
    var newNums = nums.sorted()
    
    for (i, number) in newNums.enumerated() {
        if i > 0 && number == newNums[i-1] {
            continue
        }
        
        var left = i + 1
        var right = newNums.count - 1
        
        while left < right {
            var sum = number + newNums[left] + newNums[right]
            
            if sum > 0 {
                right -= 1
            }
            
            if sum < 0 {
                left += 1
            }
            
            if sum == 0 {
                result.append([number, newNums[left], newNums[right]])
                left += 1
                
                if newNums[left] == newNums[left - 1] && left < right {
                    left += 1
                }
            }
        }
    }
    return Array(Set(result))
}

