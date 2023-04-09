import Cocoa

var string = "([{}])"

func isBalanced(string : String) -> Bool {
    var array = [Character]()
    
    for i in string {
        switch i {
        case "(", "[", "{":
            array.append(i)
        case ")" :
            if array.isEmpty || array.last != "("{ return false }
            array.popLast()
        case "]" :
            if array.isEmpty || array.last != "["{ return false }
            array.popLast()
        case "}" :
            if array.isEmpty || array.last != "{"{ return false }
            array.popLast()
        default:
            print("Breaking \(i)")
        }
    }
    return array.isEmpty
}


isBalanced(string: string)
