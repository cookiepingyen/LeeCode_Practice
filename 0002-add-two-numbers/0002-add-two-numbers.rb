# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  num1 = list_to_num(l1)
  num2 = list_to_num(l2)

  return num_to_list(num1+num2)
end

def list_to_num(list)
  str = ""
  while(list)
    str += list.val.to_s
    list = list.next
  end
  return str.reverse.to_i
end

def num_to_list(num)
  dummy = head = ListNode.new(0)
  return dummy if num == 0

  while(num > 0)
    digit = num % 10
    list = ListNode.new(digit)
    head.next = list
    head = head.next
    num /= 10
  end

  return dummy.next
end