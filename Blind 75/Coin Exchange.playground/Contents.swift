import Cocoa

/*You are given an integer array coins representing coins of different denominations and an integer amount representing a total amount of money.
 
 Return the fewest number of coins that you need to make up that amount. If that amount of money cannot be made up by any combination of the coins, return -1.

 You may assume that you have an infinite number of each kind of coin.

  

 Example 1:

 Input: coins = [1,2,5], amount = 11
 Output: 3
 Explanation: 11 = 5 + 5 + 1
 Example 2:

 Input: coins = [2], amount = 3
 Output: -1
 Example 3:

 Input: coins = [1], amount = 0
 Output: 0
 */

class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        guard amount >= 0 else { return -1}
        let coins = coins.sorted()
        var memo = Array(repeating: amount + 1, count: amount + 1)
        
        memo[0] = 0
        
        for number in 1..<(amount+1){
//               7
            for coin in coins {
//               4
                if number - coin >= 0 {
//                      7 - 4    >= 0
                    memo[number] = min(memo[number], memo[number-coin] + 1)
//                  memo[7]      = min(memo[7]     , memo[7-4] + 1
//                  memo[7]      = min(memo[7]     , memo [3]  + 1
                }
            }
        }
        return memo[amount]
    }
}

let solution = Solution()
solution.coinChange([1,2,5], 5)


