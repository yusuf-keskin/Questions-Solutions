import Foundation


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }



func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    
    let startNode = ListNode(0)
    
    //Add func argument (head) after initial node
    // Our node doesn't come as optional, it comes with default first node defined in Class above!
    
    startNode.next = head
    
    var firstNode: ListNode? = startNode
    
    
    // Firstnode val is already set and cannot be nil,
    // so we look at the next nodes
    
    while firstNode != nil {
        if let next = firstNode!.next {
            if next.val == val {
                firstNode!.next = next.next
            } else {
                firstNode = firstNode!.next
            }
        } else {
            // If no nodes after initial node remains, Our new head will not be exist.
            // So head and tail are the same
            firstNode = firstNode!.next
        }
    }
    
    
    // we return our head
    return startNode.next
    
}
