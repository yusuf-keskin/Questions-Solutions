import Cocoa

import Foundation


    func isPalindrome (_ x: Int) -> Bool {
        
        let array = String(x)
        
        if x%2 == 0 {
            let onehalf = array.count / 2
            
            for i in 1...onehalf {
                if array.prefix(i) == array.suffix(i) {
                    return true
                } else {
                    return false
                }
            }
            
        } else {
            let otherhalf = (array.count-1) / 2
            
            for i in 1...otherhalf {
                if array.prefix(i) == array.suffix(i) {
                    return true
                } else {
                    return false
                }
            }
        }
        return false
    }

var number1 = 1221
var number2 = 12214
var number3 = 1234567654321

isPalindrome(number1)
isPalindrome(number2)
isPalindrome(number3)
