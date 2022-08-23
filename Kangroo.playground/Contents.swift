import Cocoa

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    
    if (x2 > x1 && v2 > v1) || (x2 > x1 && v2 == v1) {
        return "NO"
    }
    
    if x1 >= x2 || v1 > 10000 || v2 > 10000 || v1 <= 0 || v2 <= 0 {
        return "NO"
    }
    
    let a = Double(x2 - x1 ) / Double(v1 - v2)
    
    if  a.rounded() == a {
            return "YES"
    } else {
        return "NO"
    }
}

kangaroo(x1: 4602, v1: 8519, x2: 7585, v2: 8362)

kangaroo(x1: 0, v1: 2, x2: 5, v2: 3)


