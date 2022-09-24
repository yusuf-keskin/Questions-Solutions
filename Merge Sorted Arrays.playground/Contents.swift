import Foundation


var nums1 = [1,2,3,0,0,0]
var nums2 = [2,5,6]

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
        var firstIndex = m - 1
        var secondIndex = n - 1
        var last = nums1.count - 1
        while firstIndex >= 0 || secondIndex >= 0 {
            defer {
                last -= 1
            }
            
            if secondIndex < 0 {
                nums1[last] = nums1[firstIndex]
                firstIndex -= 1
                continue
            }
            
            if firstIndex < 0 {
                nums1[last] = nums2[secondIndex]
                secondIndex -= 1
                continue
            }
            
            if nums2[secondIndex] >= nums1[firstIndex] {
                nums1[last] = nums2[secondIndex]
                secondIndex -= 1
                continue
            }
            
            nums1[last] = nums1[firstIndex]
            firstIndex -= 1
    }
}

merge(&nums1, 3 , nums2, 3)
