# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

 

# Example 1:

# Input: strs = ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.

def longest_common_prefix(strs)
  perfix = ""
  length = strs.map{|s| s.length}.min
  0.upto(length-1) do |i|
    char = strs[0][i]
    strs.each do |str|
      return perfix if str[i] != char
    end
    perfix += char
  end
  perfix
end

p longest_common_prefix(["flower","flow","flight"])