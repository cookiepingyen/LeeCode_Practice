require 'pry'

class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def array_to_list(arr)
  return nil if arr.empty?

  head = ListNode.new(arr[0])
  current = head

  arr[1..-1].each do |val|
    current.next = ListNode.new(val)
    current = current.next
  end

  head
end

def list_to_array(head)
  arr = []
  while head
    arr << head.val
    head = head.next
  end
  arr
end

# ================= 下方為練習區 =================

head1 = array_to_list([9,9,9,9,9,9,9])
head2 = array_to_list([9,9,9,9])


def add_two_numbers(l1, l2)
  sum = 0
  carry = 0

  dummy = l3 = ListNode.new(0)

  while(l1 || l2)
    if (l1)
      sum += l1.val
      l1 = l1.next
    end

    if(l2)
      sum += l2.val
      l2 = l2.next
    end

    sum += carry


    num = sum % 10
    tmp = ListNode.new(num)
    l3.next = tmp
    l3 = l3.next
    carry = sum / 10
    sum = 0
  end

  if(carry != 0)
    tmp = ListNode.new(carry)
    l3.next = tmp
  end
  binding.pry


  return dummy.next
end

p add_two_numbers(head1, head2)
