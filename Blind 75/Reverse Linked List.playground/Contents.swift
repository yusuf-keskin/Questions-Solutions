import Foundation


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func reverseList(_ head: ListNode?) -> ListNode? {
    
    var current = head
    
    //Define prev node (nil)
    var prev : ListNode?
    
    while current != nil {
        //define next node
        let
        next = current?.next
        // make prev to currents new next node
        current?.next = prev
        // make current to new prev node
        prev = current
        // make old next node to new current node
        current = next
    }
    
    
    //When completed, it'll stop at the last one, it'll be current and
    // prev at the same time since no more next remains to make new previews
    return prev
}

