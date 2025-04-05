# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  k = 1
  1.upto(nums.length-1) do |i|
    if(nums[i] != nums[i-1])
      k += 1
      nums[k-1] = nums[i]
    end
  end
  k
end