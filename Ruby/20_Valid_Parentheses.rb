# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.
 

# Example 1:

# Input: s = "()"
# Output: true
# Example 2:

# Input: s = "()[]{}"
# Output: true
# Example 3:

# Input: s = "(]"
# Output: false

# s consists of parentheses only '()[]{}'.


def is_valid(s)
  arr = []
  strs = s.split("")
  strs.each do |chr|
      case chr
      when '(', '{', '['
          arr.push(chr)
      when ')'
          return false if arr.pop() != '('
      when ']'
          return false if arr.pop() != '['
      when '}'
          return false if arr.pop() != '{'  
      end
  end
  return arr.empty?
end

puts is_valid("(]")  
