import Cocoa

func canConstruct(arr: [String], word : String ) -> Bool {
    if word == "" { return true }
    
    for i in arr {
        if word.hasPrefix(i) {
            let prefixLength = i.count
            let newWord = word.suffix(word.count - i.count)
            print(newWord)
            if canConstruct(arr: arr, word: String(newWord)) {
                return true
            }
        }
    }
    return false
}

func canConstruct_memo(_ arr: [String], _ word : String, _ memo: [String:Bool] = [String:Bool]() ) -> Bool {
    var memo = memo
    if memo[word] != nil { return true }
    //or, you can do:
    //if memo[word] != nil { return memo[word]! }
    
    if word == "" { return true }
    
    for i in arr {
        if word.hasPrefix(i) {
            let prefixLength = i.count
            let newWord = word.suffix(word.count - i.count)
            print(newWord)
            let result = canConstruct_memo(arr, String(newWord), memo)
            if result {
                memo[word] = result
                return result
            }
        }
    }
    return false
}

let word = "abcdef"

let arr = ["ab", "abc", "cd", "def", "abcd"]

canConstruct_memo(arr, word)
