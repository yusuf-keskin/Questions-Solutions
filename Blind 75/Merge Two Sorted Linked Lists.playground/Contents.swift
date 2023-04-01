public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var newList : ListNode = ListNode(0)
        var temp = newList

        var headA = list1
        var headB = list2

        while headA != nil && headB != nil {
            if headA!.val > headB!.val {
                temp.next = headB
                headB = headB?.next
            } else {
                temp.next = headA
                headA = headA?.next
            }
            temp = temp.next!
        }

        temp.next = headA ?? headB
        return newList.next
    }
}

