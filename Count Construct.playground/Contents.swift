import Cocoa

let word = "abcdef"
let arr = ["ab", "abc", "cd", "def", "abcd", "ef"]

func countConstruct(_ arr :[String], _ word: String) -> Int {
    if word == "" {return 1}
    var counter = 0
    
    for i in arr {
        if word.hasPrefix(i) {
            let prefixLength = i.count
            let remainderWord = word.suffix(word.count - i.count)
            let result = countConstruct(arr, String(remainderWord))
            counter += result
        }
    }
    return counter
}

func countConstruct_memo(_ arr :[String], _ word: String, _ memo: [String:Int] = [String:Int]()) -> Int {
    var memo = memo
    if memo[word] != nil { return memo[word]!}
    if word == "" {return 1}
    var counter = 0
    
    for i in arr {
        if word.hasPrefix(i) {
            let prefixLength = i.count
            let remainderWord = word.suffix(word.count - i.count)
            let result = countConstruct(arr, String(remainderWord))
            counter += result
        }
    }
    memo[word] = counter
    return  memo[word]!
}

countConstruct_memo(arr, word)
