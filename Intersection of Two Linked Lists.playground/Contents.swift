import Cocoa
import Foundation


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        
    var currentHeadA : ListNode? = headA
    var currentHeadB : ListNode? = headB
    
    var countingHeadA : ListNode? = headA
    var countingHeadB : ListNode? = headB
    
        
        var indexA = 0
        var indexB = 0
        
        guard currentHeadA != nil else { return nil }
        guard currentHeadB != nil else { return nil }
        
        if currentHeadA == currentHeadB {
            return currentHeadA
        }

        while countingHeadA != nil {
            countingHeadA = countingHeadA!.next
            indexA += 1
        }
        
        while countingHeadB != nil {
            countingHeadB = countingHeadB!.next
            indexB += 1
        }
    

        while indexA > indexB {
            indexA -= 1
            currentHeadA = currentHeadA?.next
        }
        
        while indexB > indexA {
            indexB -= 1
            currentHeadB = currentHeadB?.next
        }
    

        while currentHeadB != currentHeadA {
            currentHeadA = currentHeadA?.next
            currentHeadB = currentHeadB?.next
        }
        
        return currentHeadA
}


extension ListNode : Equatable {
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        lhs === rhs
    }
    
    
}
