import Foundation

func reverseWords(arr: String) -> String {
    guard arr.count > 1 else { return arr }
    var result = [Character]()
    let arrChars = Array(arr)
    var stack = [Character]()

    var start = 0
    var end = 0

    for i in 0..<arr.count {
        if String(arrChars[i]) != " " {
            stack.append(arrChars[i])
            end += 1
        } else {
            if !stack.isEmpty {
                print(stack)
                result.insert(contentsOf: stack, at: 0)
                stack = []
                start = i
                end = i
                result.insert(arrChars[i], at: 0)
            } else {
                result.insert(arrChars[i], at: 0)
                start += 1
                end += 1
            }
        }
        if i == arrChars.count - 1 {
            result.insert(contentsOf: stack, at: 0)
        }
        print(i)

    }

    return String(result)
}

let merhaba = "Merhaba sevgili arkadaşlar"

reverseWords(arr: merhaba)


