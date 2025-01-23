# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  hash = {}
  nums.each_with_index do |n, i|
    if(hash.key?(n))
      return true
    else
      hash[n] = i
    end
  end
  return false
end