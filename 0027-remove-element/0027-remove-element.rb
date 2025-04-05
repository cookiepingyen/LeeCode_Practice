# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  p1 = 0
  0.upto(nums.length - 1) do |i|
    if(nums[i] != val)
      nums[p1], nums[i] = nums[i], nums[p1]
      p1 += 1
    end
  end
  p1
end