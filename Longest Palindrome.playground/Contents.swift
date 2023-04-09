import Cocoa

class Solution {
    func longestPalindrome(_ s: String) -> String {
        var result = ""
        var resultLenght = 0
        var sArray = Array(s)
        
        for i in 0..<s.count {
            //odd lenght
            var l = i
            var r = i
            
            while l >= 0 && r < s.count - 1 && sArray[l] == sArray[r] {
                
                result = String(sArray[l...(r+1)])
                resultLenght = r - l + 1
                
                l = -1
                r = +1
            }
            
            l = i
            r = i + 1
            
            
            while l >= 0 && r < s.count - 1 && sArray[l] == sArray[r] {
                
                result = String(sArray[l...(r+1)])
                resultLenght = r - l + 1
                
                
                l = -1
                r = +1
            }
        }
        
        return result
    }
}


let s = "babad"
let solution = Solution()
print(solution.longestPalindrome(s))
