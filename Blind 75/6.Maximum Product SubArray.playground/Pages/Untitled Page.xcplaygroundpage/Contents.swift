import Foundation


func maxProduct(_ nums: [Int]) -> Int {
    var result = nums.max()!
    
    var currentMaximum = 1
    var currentMininum = 1
    
    for i in nums {
        
        if i == 0 {
            currentMaximum = 1
            currentMininum = 1
            continue
        }

        let tempCurrentMax = currentMaximum * i
        
        currentMaximum = max(currentMaximum * i, currentMininum * i, i)
        currentMininum = min(tempCurrentMax, currentMininum * i, i)
        result = max(currentMaximum, result)
    }
    return result
}


/*
 [-2,3,-2,4]
 max 1  min 1  result 1 // default starting values
 max 1  min -2 result 1
 max 3  min -6 result 3
 max 12 min -6 resul 12
 max 48 min -24 resul 48
 */

var array = [-2,3,-2,4]
maxProduct(array)

/*
 [-2,3,-2,0,4]
 max 1  min 1  result 1 // default starting values
 max 1  min -2 result 1
 max 3  min -6 result 3
 max 12 min -6 result 12
 max 1  min  1  result 12 //--- 0 gelince min ve max ı 1 e sıfırladık
 max 4  min  4  result 12
 */

var array2 = [-2,3,-2,0,4]
maxProduct(array2)
