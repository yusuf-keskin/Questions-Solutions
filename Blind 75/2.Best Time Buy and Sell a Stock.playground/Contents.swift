import Foundation

var prices = [7,1,5,3,6,4]
var otherPrices = [7,6,4,3,1]

func maxProfit(_ prices: [Int]) -> Int {
    var leftIndex = 0
    var rightIndex = 1

    var array = [Int]()
    
    while rightIndex < prices.count {
        if prices[leftIndex] < prices[rightIndex] {
            array.append((prices[rightIndex] - prices[leftIndex]))
            rightIndex += 1
        } else {
            leftIndex = rightIndex
            rightIndex += 1
        }
    }
    return array.max() ?? 0
}

maxProfit(prices)
maxProfit(otherPrices)


