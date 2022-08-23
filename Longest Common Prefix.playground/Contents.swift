import Cocoa
import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    var wordLengths = [Int]()

    for word in strs {
        wordLengths.append(word.count)
    }
    let minWordLenght = wordLengths.min()

    
    for i in 1...minWordLenght! {
        
        for word in strs {
            
            if let firstChar = strs[0].first {
                if word.first != firstChar {
                    return ""
                }
            }
            
            let commonPrefix = word.prefix(i)
            
            let isAllHasCommonPrefix = strs.allSatisfy { $0.hasPrefix(commonPrefix)}
            
            if isAllHasCommonPrefix != true {
                return String(word.prefix(i-1))
            }
            }
        }
    
    return ""
}

var strs = ["dog","racecar","car"]

longestCommonPrefix(strs)

