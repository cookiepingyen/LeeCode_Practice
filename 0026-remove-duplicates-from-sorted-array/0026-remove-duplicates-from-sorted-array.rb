# @param {Integer[]} nums
# @return {Integer}
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