import Foundation

// Memoization. Define a dict that func args are key and returns are value.
var dict = [Int:Int]()

func climbStairs(_ n: Int) -> Int {
    // If we already have value (return) for func argument, just return it.
    if let value = dict[n] { return value }
    
    if n<2 {
        return 1
    } else {
        
        // Define func return for a small number and make it a constant
        let newValue =  climbStairs(n-1) + climbStairs(n-2)
        
        // add this return value for func arg
        dict[n] = newValue
        
        //return this value again, so next recursive loop can take and use it to move further
        
        return newValue
    }

}

climbStairs(20)
