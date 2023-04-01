
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        guard head != nil else { return false }
        guard head?.next != nil else { return false }
        
        var current = head
        var next = head?.next
        
        if head === head?.next {
            return true
        }
        
        while current?.next != nil , next?.next != nil {
            if current === next {
                return true
            } else {
                current = current?.next
                next = next?.next?.next
            }
        }
        return false
    }
}
