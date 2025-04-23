# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Integer}
def get_decimal_value(head)
  sum = 0
  while(head)
    sum *= 2
    if(head.val == 1)
      sum += 1
    end
    head = head.next
  end
  return sum
end