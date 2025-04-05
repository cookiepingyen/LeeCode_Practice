# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def getIntersectionNode(headA, headB)
  # 如果會有交會點的話，走完 A + B + 重疊node = B + A + 重疊node
  return if(headA == nil || headB == nil)

  pointer1 = headA
  pointer2 = headB

  # 如果兩個沒有交集，最終會有 pointer1 == pointer2 = null，因此不會有無窮迴圈
  while(pointer1 != pointer2)
    pointer1 = (pointer1 == nil)? headB : pointer1.next
    pointer2 = (pointer2 == nil)? headA : pointer2.next
  end

  pointer1
end