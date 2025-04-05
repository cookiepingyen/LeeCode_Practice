# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  point = 0

  nums.each_with_index do |num, i|
    if(num != 0)
      nums[point], nums[i] = nums[i], nums[point]
      point += 1
    end
  end
  nums
end