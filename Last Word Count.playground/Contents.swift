import Foundation

    func lengthOfLastWord(_ s: String) -> Int {
        var  wordsArray = s.split(separator: " ")
        return wordsArray.last!.count
    }

var sent = "Hello my big world"

lengthOfLastWord(sent)
