require 'pry'

# @param {Integer[]} nums
# @return {Integer}
# Input: nums = [1,1,2]
# Output: 2, nums = [1,2,_]

# Input: nums = [0,0,1,1,1,2,2,3,3,4]
# Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]

nums = [0,0,1,1,1,2,2,3,3,4]
# nums = [1,1,2]


def remove_duplicates(nums)
  k = 1
  nums.each_with_index do |num, index|
    next if index == 0

    if nums[index] != nums[index-1]
      k += 1
      nums[k-1] = num
    end
  end
  k
end


p remove_duplicates(nums)
p nums
