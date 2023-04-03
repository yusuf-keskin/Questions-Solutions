import Cocoa
import Foundation

/*
 Given two strings s and t, return true if t is an anagram of s, and false otherwise.

 An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

  

 Example 1:

 Input: s = "anagram", t = "nagaram"
 Output: true
 Example 2:

 Input: s = "rat", t = "car"
 Output: false
  

 Constraints:

 1 <= s.length, t.length <= 5 * 104
 s and t consist of lowercase English letters.
 */

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var dictS = [Character:Int]()
        var dictT = [Character:Int]()
        var sArr = Array(s)
        var tArr = Array(t)

        if s.count != t.count { return false }

        // Her kalimede her harfi ve tekrar sayısını kaydet
        for i in 0..<s.count {
            dictS[sArr[i]] =  (dictS[sArr[i]] ?? 0) + 1
            dictT[tArr[i]] =  (dictT[tArr[i]] ?? 0) + 1
        }

        // Eğer bir harf iki kelimede var ve tekrar sayısı aynı ise anagramdır.
        for i in 0..<s.count {
            if dictS[sArr[i]] != dictT[sArr[i]] {
                return false
            }
        }

        return true
    }
}

let s = "rat"
let t = "car"

let solution = Solution()
solution.isAnagram(s,t)



func alteranteIsAnagram(_ s : String, _ t : String) -> Bool {
    let sortedS = s.sorted()
    let sortedT = t.sorted()
    
    if sortedS == sortedT {
        return true
    }
    return false
}

alteranteIsAnagram(s, t)
