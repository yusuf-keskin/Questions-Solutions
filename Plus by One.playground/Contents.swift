var intArray = [4,3,2,1,5,8,7,8,9,7,]

func plusOne(digits: [Int]) -> [Int] {
    var array = digits
    var index = digits.count - 1
    
    while index >= 0 {
        if array[index] < 9 {
            array[index] += 1
            return array
        }
        
        array[index] = 0
        index -= 1
    }
    array.insert(1, at: 0)
    return array
}

plusOne(digits: intArray)
