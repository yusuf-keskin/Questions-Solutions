import Cocoa

/**
 You are in charge of the cake for a child's birthday. You have decided the cake will have one candle for each year of their total age. They will only be able to blow out the tallest of the candles. Count how many candles are tallest.
 */

func birthdayCakeCandles(candles: [Int]) -> Int {
    var tallestCandlesCount = 0
    
    if candles.count > 0 {
            let longestCandle = candles.max()
        //Check each candle and count how many of them have sam lenght as longestCandle
        candles.forEach { candle in
            if candle == longestCandle {
                tallestCandlesCount += 1
            }
        }
    }
    return tallestCandlesCount
}

let candles = [4,4,2,1]

birthdayCakeCandles(candles: candles)
