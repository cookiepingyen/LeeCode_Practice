# You are given the heads of two sorted linked lists list1 and list2.

# Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.

# Return the head of the merged linked list.

# Example 1:
# Input: list1 = [1,2,4], list2 = [1,3,4]
# Output: [1,1,2,3,4,4]

# Example 2:
# Input: list1 = [], list2 = []
# Output: []

# Example 3:
# Input: list1 = [], list2 = [0]
# Output: [0]


# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}

def merge_two_lists(list1, list2)
    result = ListNode.new
    current = result

    return list1 if list2 == nil;
    return list2 if list1 == nil;

    while(list1 != nil && list2 !=nil)
      if list1.val < list2.val
          current.next = list1
          list1 = list1.next
      else
          current.next = list2
          list2 = list2.next
      end
      current = current.next
    end

    if list1 != nil
      current.next = list1
    end

    if list2 != nil
      current.next = list2
    end

    return result.next
  end

p merge_two_lists([1,2,4], [1,3,4])

p merge_two_lists([], [])

p merge_two_lists([], [0])
