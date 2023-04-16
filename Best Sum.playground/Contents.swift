import Cocoa

var arr = [2,3,5]
let total = 8

func bestSum(_ target: Int, _ arr: inout [Int]) -> [Int]? {
    if target == 0 { return []}
    if target < 0 { return nil }
    
    var shortestCombination = [Int]()
    
    for number in arr.sorted().reversed() {
        let remainder = target - number
        var combineRemainder = bestSum(remainder, &arr)
        if combineRemainder != nil {
            let currentCombination = combineRemainder! + [number]
            
            if shortestCombination == [] ||                currentCombination.count < shortestCombination.count {
                shortestCombination = currentCombination
            }
        }
    }

    return shortestCombination
}

func bestSumMemo(_ target: Int, _ arr: inout [Int], memo: [Int:[Int]] = [Int:[Int]]() ) -> [Int]? {
    var memo = memo
    if let result = memo[target] { return result }
    if target == 0 { return []}
    if target < 0 { return nil }
    
    var shortestCombination = [Int]()
    
    for number in arr.sorted().reversed() {
        let remainder = target - number
        var combineRemainder = bestSumMemo(remainder, &arr, memo: memo)
        if combineRemainder != nil {
            let currentCombination = combineRemainder! + [number]
            
            if shortestCombination == [] || currentCombination.count < shortestCombination.count {
                shortestCombination = currentCombination
            }
        }
    }
    memo[target] = shortestCombination
    return shortestCombination
}

bestSumMemo(total, &arr)
