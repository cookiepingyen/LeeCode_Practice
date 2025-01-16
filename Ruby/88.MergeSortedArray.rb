require 'pry'

# 影片參考網址: https://youtu.be/P1Ic85RarKY?si=BbWw5yfrDwaLRC1U

# Example 1:fit in nums1.
nums1 = [1,2,3,0,0,0]
m = 3
nums2 = [2,5,6]
n = 3

# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  return if n == 0
  max_index = nums1.length - 1
  while(n > 0 && m > 0)

    binding.pry

    if nums2[n-1] >= nums1[m-1]
      nums1[max_index] = nums2[n-1]
      n -= 1
    else
      nums1[max_index] = nums1[m-1]
      m -= 1
    end
    max_index -= 1
  end
  while(n > 0)
    nums1[max_index] = nums2[n-1]
    n -= 1
    max_index -= 1
  end
end

merge(nums1, m, nums2, n)
p nums1
