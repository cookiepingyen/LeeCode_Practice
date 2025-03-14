require 'pry'

# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# You can return the answer in any order.

# Example 1:

# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
# Example 2:

# Input: nums = [3,2,4], target = 6
# Output: [1,2]
# Example 3:

# Input: nums = [3,3], target = 6
# Output: [0,1]

# nums_input = [2,7,11,15]
# nums_input = [3,2,4]

def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |number, index|
    if hash.key?(target - number)
      return [hash[target - number], index]
    else
      hash[number] = index
    end
  end
end

p two_sum(nums_input, 9)
