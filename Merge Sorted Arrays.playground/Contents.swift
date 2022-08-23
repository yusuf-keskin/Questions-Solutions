import Foundation


var nums1 = [1,2,3,0,0,0]
var nums2 = [2,5,6]

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {

    var i = m - 1
    var j = n - 1
    var k = m + n - 1
    
    while nums1.last == 0 {
        nums1.removeLast()
    }
    
    while i >= 0 && j >= 0 {
        if nums1[i] > nums2[j] {
            nums1[k] = nums1[i]
            k -= 1
            i -= 1
        } else {
            nums1[k] = nums2[j]
            k -= 1
            j -= 1
        }
    }

}

merge(&nums1, 6 , nums2, 3)
