import Foundation

func climbStairs(_ n: Int) -> Int {
    
    if n == 0 || n == 1 {
        return 1
    }
        
    var first = 1
    var second = 1


    for var i in 1...(n-1) {

        var temp = first
        first = first + second
        second = temp
        
    }
    
    return first
}
 climbStairs(5)
