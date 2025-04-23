# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
  dummy = ListNode.new(0)
  dummy.next = head
  prev = dummy

  while(head)
    if(head.val == val)
      prev.next = prev.next.next
    else
      prev = prev.next
    end
    head = head.next
  end
  return dummy.next
end