import Cocoa

let word = "abcdef"
let arr = ["ab", "abc", "cd", "def", "abcd", "ef"]

func listPosssibleConstruct(_ arr :[String], _ word: String) -> [[String]]? {
    if word == "" { return [[]] }
    
    var resultList = [[String]]()
    
    for i in arr {
        if word.hasPrefix(i) {
            let newWordLenght = word.count - i.count
            let remainderWord = String(word.suffix(newWordLenght))
            var result = listPosssibleConstruct(arr, remainderWord)!
            // add word to all possible solutions
            let ways = result.map { return $0 + [i] }
            resultList.append(contentsOf: ways)
        }
    }
    return resultList
}

func listPosssibleConstruct_memo(_ arr :[String], _ word: String, _ memo : Dictionary<String,[[String]]> = [String:[[String]]]()) -> [[String]]? {
    var memo = memo
    if memo[word] != nil { return memo[word]! }
    if word == "" { return [[]] }
    
    var resultList = [[String]]()
    
    for i in arr {
        if word.hasPrefix(i) {
            let newWordLenght = word.count - i.count
            let remainderWord = String(word.suffix(newWordLenght))
            var result = listPosssibleConstruct_memo(arr, remainderWord)!
            // add word to all possible solutions
            let ways = result.map { return $0 + [i] }
            resultList.append(contentsOf: ways)
        }
    }
    memo[word] = resultList
    return memo[word]
}

listPosssibleConstruct_memo(arr, word)
