/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var dummyNode = ListNode(-1)
        var tail = dummyNode
        var head1 = list1
        var head2 = list2
        
        while( (head1 != nil) && (head2 != nil) ){
            if((head1!.val) <= (head2!.val)){
                tail.next = head1!
                head1 = head1!.next
            }else{
                tail.next = head2!
                head2 = head2!.next
            }
            tail = tail.next ?? dummyNode
        }
        
        if(head1 != nil) {tail.next = head1!}
        if(head2 != nil) {tail.next = head2!}

       
       return dummyNode.next
    }
}