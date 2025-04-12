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

head1 = array_to_list([1, 5, 3, 4, 0])

def sort_list(head)
  return head if head == nil || head.next == nil



end



def merge(a, b)



end



def spilt(head)
  prev = nil
  fast = slow = head

  while(fast && fast.next)


  end


end


p list_to_array(sort_list(head1))
