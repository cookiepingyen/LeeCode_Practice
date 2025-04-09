# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Void} Do not return anything, modify head in-place instead.
def reorder_list(head)
  
  # 1. use slow and fast find the middle
  slow = fast = head
  while(fast && fast.next)
    fast = fast.next.next
    slow = slow.next
  end

  # 2. reverse the second half
  second = slow.next
  prev = slow.next = nil

  while second
    tmp = second.next
    second.next = prev
    prev = second
    second = tmp
  end


  first, second = head, prev
  while(second)
    tmp1, tmp2 = first.next, second.next
    first.next = second
    second.next = tmp1
    first, second = tmp1, tmp2
  end
end