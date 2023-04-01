import Foundation

class Solution {
    func lenghtOfLongestSubstring(_ s: String ) -> Int {
        var charactersAndIndexDict = [Character: Int]()
        
        let slenght = s.count
        if slenght == 0 { return 0 }
        
        var longetsSequence = 0
        var windowStartIndex = 0
        
        for (windowsEndIndex, char) in s.enumerated() {
            /*
             endIndex 0123
             char     abcd  example. Indexleme yapılır.

             mevcut en uzun kelime ile windows un end-star aralığı arası mesafe
             karşılaştırılarak en uzun substring güncellenir
             */
            
            longetsSequence = max((windowsEndIndex - windowStartIndex) + 1, longetsSequence )
            charactersAndIndexDict[char] = windowsEndIndex
            
            /*
             aynı harf daha önce dictionary e girilmişse ve start index değerinden büyükse,
             tekrarlama oluşmuş demektir: Bu harf yeni başlangıç harfi yapılır.

             */
            if let existingCharIndex = charactersAndIndexDict[char] ,
               existingCharIndex >= windowStartIndex {
                windowStartIndex = windowsEndIndex + 1
            }

        }
        // Loop soununda en uzun substring değereri dönülür.
        
        return longetsSequence
    }
}

// "abcakkadrlo"
/*
 start = a
 dic = abcakadrlo
       1112111111
 */

let solution = Solution()
let testString = "abcakkadsrlo"

solution.lenghtOfLongestSubstring(testString)
