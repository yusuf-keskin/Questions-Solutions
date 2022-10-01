import Foundation

func isIsomorphic(_ s: String, _ t: String) -> Bool {
    let firstArray = Array(s)
    let secondArray = Array(t)
    guard s.count == t.count else { return false }
    
    var dict: [Character: Character] = [:]
    for index in 0..<firstArray.count {
        // Define element as first array's first char, as a key in dict.
        if let character = dict[firstArray[index]] {
            //make this char equal to second arrays element in same index
            guard character == secondArray[index] else { return false }
            //If second element already in dict as an other value, return false
        } else if dict.values.contains(secondArray[index]) {
            return false
        } else {
            //Equate arrays elements in same index
            dict[firstArray[index]] = secondArray[index]
        }
    }
    return true
}


let s = "foo"
let t = "baa"

isIsomorphic(s, t)


