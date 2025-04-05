# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  return false if(head.nil? || head.next.nil?)

  fast = head
  slow = head

  while(!fast.nil? && !fast.next.nil?)
    fast = fast.next.next
    slow = slow.next
    return true if fast == slow
  end

  false
end