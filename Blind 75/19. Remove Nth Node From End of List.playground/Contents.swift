/*
 * Difficulty:
 * Medium
 *
 * Desc:
 * Given a linked list, remove the nth node from the end of list and return its head.
 *
 * Example:
 * Given linked list: 1->2->3->4->5, and n = 2.
 * After removing the second node from the end, the linked list becomes 1->2->3->5.
 *
 * Note:
 * Given n will always be valid.
 * Try to do this in one pass.
 *
 * 给出一个链表，删除倒数第 n 位的元素
 */



public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

//n : 2
// 1  2  3  4  5  6

// fast = 2
//slow = 1
//slowNode = slownode.next

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        guard let node = head, n > 0 else {
            return nil
        }

        var dummyHead = ListNode(0)
        dummyHead.next = head
//        var dummyHead = head
        
        var slow = dummyHead
        var fast = dummyHead
        
        for _ in 0...(n) {
            fast = fast.next!
        }
        print("Fast node at the n + 1 : \(fast.val)")
        
        while fast.next != nil {
            slow = slow.next!
            fast = fast.next!
        }
        
        print("Fast node after : \(fast.val)")
        print("Slow node after : \(slow.val)")
        
        slow.next = slow.next?.next
       // return head
        return dummyHead.next
    }
}

let list = [1,2,3,4,5]

var node1 = ListNode(1)
var node2 = ListNode(2)
var node3 = ListNode(3)
var node4 = ListNode(4)
var node5 = ListNode(5)

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5

let solution = Solution()
solution.removeNthFromEnd(node1, 2)

