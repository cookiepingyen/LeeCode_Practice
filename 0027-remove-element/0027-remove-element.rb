# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  count = 0
  nums.each_with_index do |num, index|
    if num == val
      count += 1
    else
      nums[(index-count)] = num
    end
  end
  return nums.length - count
end