# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def sort_list(head)
  return head if head == nil || head.next == nil

  a, b = spilt(head)
  a = sort_list(a)
  b = sort_list(b)

  merge(a, b)
end



def merge(a, b)
  dummy = cur = ListNode.new(0)
  while(a && b)
    if(a.val < b.val)
      cur.next = a
      a = a.next
    else
      cur.next = b
      b = b.next
    end
    cur = cur.next
  end

  cur.next = a if a
  cur.next = b if b

  return dummy.next
end

def spilt(head)
  prev = nil
  fast = slow = head

  while(fast && fast.next)
    prev = slow
    slow = slow.next
    fast = fast.next.next
  end
  prev.next = nil

  return [head, slow]
end