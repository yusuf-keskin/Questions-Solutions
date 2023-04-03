/*
 You are given a string s and an integer k. You can choose any character of the string and change it to any other uppercase English character. You can perform this operation at most k times.

 Return the length of the longest substring containing the same letter you can get after performing the above operations.

 Example 1:

 Input: s = "ABAB", k = 2
 Output: 4
 Explanation: Replace the two 'A's with two 'B's or vice versa.
 Example 2:

 Input: s = "AABABBA", k = 1
 Output: 4
 Explanation: Replace the one 'A' in the middle with 'B' and form "AABBBBA".
 The substring "BBBB" has the longest repeating letters, which is 4.
  

 Constraints:

 1 <= s.length <= 105
 s consists of only uppercase English letters.
 0 <= k <= s.length
 */

import Foundation

class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        
        var result = 0
        var maxCount = 0
        
        var count = [Character:Int]()
        let charArray = Array(s)
        let length = s.count
        
        var l = 0
        var r = 0
        
        while r < length {
            // mevcut harfin tekrar sayısını dict te arttır.
            count[charArray[r]] = (count[charArray[r]] ?? 0) + 1
            //mevcut harf ve halihazırdaki max repeating harf count karşılaştır
            maxCount = max(maxCount,  count[charArray[r]]! )
            
            /*
             Eğer penceredeki toplam harf sayısı - en çok tekrarlaran harfin tekrar
             miktarının farkı (yani toplamda değiştirilecek olan tekrar miktarı az olan harflerin toplam sayısı) değiştirilebilecek harf sayısını geçiyorsa, en baştaki pointer ı sola kaydır, ve onun toplam harf adedini bir düşür
             
             */
            while r - l + 1 - maxCount > k {
                count[charArray[l]] = count[charArray[l]]! - 1
                l += 1
            }
            
            /*
             Maximum değerimiz, bu işlem bittiğindeki penceredeki harf sayısı ile
             mevcut maximum değerimizin karşılaştırılması ile bulunur.
             */
            
            result = max(result, r - l + 1)
            r += 1
        }
        
        return result
        
    }
}

let test = "AABABBA"
let k = 1

let solution = Solution()

solution.characterReplacement(test, k)

