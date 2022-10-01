import Foundation

func climbStairs(_ n: Int) -> Int {
    
    let numberOfSteps = n
    
    if numberOfSteps == 0 || numberOfSteps == 1 {
        return 1
    }
        
    var step = 1
    var nextStep = 1


    for _ in 1...(numberOfSteps - 1) {

        let temp = step
        step = step + nextStep
        nextStep = temp
        
    }
    
    return step
}

/**
 n = 0 -> 1
 n = 1 -> 1
 n = 2 -> 1
 n = 3 -> 3
 n = 4 -> 5
 n = 5 -> 8
 n = 6 -> 13
 n = n -> (n-1)+(n-2)
*/

 climbStairs(5)
