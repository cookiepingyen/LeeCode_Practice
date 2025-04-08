# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)

  # 如果 ListNode 本身 nil 或是 next 為 nil，就回傳nil
  if head == nil || head.next == nil
    return nil
  end

  # 用快慢指標，假設要刪除倒數第2個，fast先走兩步的情況，fast走完的時候(fast = nil)，slow 會在倒數第2個
  # 因此slow用new的方式，後退一步，才可以用slow.next == slow.next.next 的方法把倒數第二個刪除
  dummy = ListNode.new(0)
  dummy.next = head
  fast = head
  slow = dummy
  linkList = slow.next

  (n).times do
    fast = fast.next
  end

  while(fast != nil)
    fast = fast.next
    slow = slow.next
  end

  slow.next = slow.next.next
  return dummy.next
end