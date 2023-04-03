/*
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Every close bracket has a corresponding open bracket of the same type.
  

 Example 1:

 Input: s = "()"
 Output: true
 Example 2:

 Input: s = "()[]{}"
 Output: true
 Example 3:

 Input: s = "(]"
 Output: false
 */

import Cocoa

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()

        for i in s {
            switch i {
            case "{" , "(" , "[" :
                stack.append(i)
            case "}":
                if stack.last != "{" || stack.isEmpty {
                    return false
                } else {
                    stack.popLast()
                }
            case "]":
                if stack.last != "[" || stack.isEmpty {
                    return false
                } else {
                    stack.popLast()
                }
            case ")":
                if stack.last != "(" || stack.isEmpty {
                    return false
                } else {
                    stack.popLast()
                }

            default :
               continue
            }
            
        }
        if stack.isEmpty {
            return false
        }
        return true
    }
}

let s1  = "()"
let s2  = "()[]{}"
let s3  = "(]"

let solution =  Solution()
solution.isValid(s1)
solution.isValid(s2)
solution.isValid(s3)
