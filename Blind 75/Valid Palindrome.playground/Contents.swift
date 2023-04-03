/*
 A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

 Given a string s, return true if it is a palindrome, or false otherwise.

  

 Example 1:

 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.
 Example 2:

 Input: s = "race a car"
 Output: false
 Explanation: "raceacar" is not a palindrome.
 Example 3:

 Input: s = " "
 Output: true
 Explanation: s is an empty string "" after removing non-alphanumeric characters.
 Since an empty string reads the same forward and backward, it is a palindrome.
  

 Constraints:

 1 <= s.length <= 2 * 105
 s consists only of printable ASCII characters.
 */

import Cocoa

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        
        var newString = ""
        
        for i in s {
            if i.isLetter || i.isNumber {
                newString.append(String(i).lowercased())
            }
        }
        print(newString)

        var l = 0
        var r = newString.count - 1
        let s_Array = Array(newString)
        
        while l < r {
            if s_Array[l] != s_Array[r] {
                return false
            } else {
                l += 1
                r -= 1
            }
        }
        return true
    }
}

let s = "A man, a plan, a canal: Panama"

let solution = Solution()
solution.isPalindrome(s)
