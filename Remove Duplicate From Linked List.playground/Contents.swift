import Foundation


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        
        guard let head = head else {
            return nil
        }
        
        var new = head
        
        while new.next != nil {
            if new.val == new.next!.val {
                new.next = new.next!.next
            } else {
                new = new.next!
            }
        }
        
        return head
    }
}
