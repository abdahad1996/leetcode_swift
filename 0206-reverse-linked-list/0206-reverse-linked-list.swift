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
[1,2,3,4,5]
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var previous:ListNode? 
        var current = head
        var next: ListNode?
        
        while(current != nil){
            next = current?.next
            current?.next = previous
            previous = current
            current = next
        
        }
        return previous
    }
}