import Foundation

//Make a set to follow if same numbers comes up
var set = Set<Int>()

func isHappy(_ n: Int) -> Bool {
    
    
    let calculationClosure : (Int) -> Int = { number in

        // Turn it to string
        let numString = String(number)
        //Turn string characters to integers array
        var array = numString.compactMap{$0.wholeNumberValue}
        // Mutate array and change elements with their squares
        array = array.map { $0*$0 }
        // Sum array values
        let result = array.reduce(0) { x,y in  x+y }
        return result
    } 
    
    let calculatingNumber = calculationClosure(n)
    print(calculatingNumber)
    
    if calculatingNumber == 1 {
        return true
    }

    // if same numbers doesn't come up, add it to the set,
    if set.contains(calculatingNumber) == false {
        set.insert(calculatingNumber)
    } else {
        // if same number comes up, it means it's a infitine repeating order loop
        return false
    }
    
    // Recursive run:
    return isHappy(calculatingNumber)

}


var n = 25

isHappy(n)

// n = 25 :

//85
//89 ----------- Repeat
//145
//42
//20
//4
//16
//37
//58
//89 ----------- Repeat
//145
//42
