import Foundation

// Pro way
extension Array where Element: Hashable {
    func duplicates() -> Array {
        let groups = Dictionary(grouping: self, by: {$0})
        let duplicateGroups = groups.filter {$1.count > 1}
        let duplicates = Array(duplicateGroups.keys)
        return duplicates
    }
}

// Normal Solution
func removeDuplicates(_ nums: inout [Int]) -> Int {
    nums = Array(Set(nums)).sorted()
    return nums.count
}

var nums = [0,0,1,1,1,2,2,3,3,4]
var nums2 = [1,1,2]

removeDuplicates(&nums)

