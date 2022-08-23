import Foundation

func romanToInt(_ s: String) -> Int {
    var array1 = [Int]()
    var m = s

    if m.contains("IV"){
        array1.append(4)
        m = m.replacingOccurrences(of: "IV", with: "", options: .literal, range: nil)
    }
    if m.contains("IX"){
        array1.append(9)
        m = m.replacingOccurrences(of: "IX", with: "", options: .literal, range: nil)
    }
    if m.contains("XL"){
        array1.append(40)
        m = m.replacingOccurrences(of: "XL", with: "", options: .literal, range: nil)
    }
    if m.contains("XC"){
        array1.append(90)
        m = m.replacingOccurrences(of: "XC", with: "", options: .literal, range: nil)
    }
    if m.contains("CD"){
        array1.append(400)
        m = m.replacingOccurrences(of: "CD", with: "", options: .literal, range: nil)
    }
    if m.contains("CM"){
        array1.append(900)
        m = m.replacingOccurrences(of: "CM", with: "", options: .literal, range: nil)
    }
   
    for i in m {
        if i == "I" { array1.append(1)
        } else if  i == "V" { array1.append(5)}
        else if  i == "X" { array1.append(10)}
        else if  i == "L" { array1.append(50)}
        else if  i == "C" { array1.append(100)}
        else if  i == "D" { array1.append(500)}
        else if  i == "M" { array1.append(1000)}
      
    }
    return array1.reduce(0){ $0 + $1 }
}
let word = "MCMXCIV"

romanToInt(word)

    

