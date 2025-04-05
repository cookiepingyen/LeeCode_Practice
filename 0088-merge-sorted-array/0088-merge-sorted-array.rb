# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  return if nums2.length == 0

  # 從最後面開始把最大的加進去，避免從頭開始蓋掉原本的 num1
  max = nums1.length - 1

  while(m > 0 && n > 0)
    if(nums1[m-1] < nums2[n-1])
      nums1[max] = nums2[n-1]
      n -= 1
    else
      nums1[max] = nums1[m-1]
      m -= 1
    end
    max -= 1
  end

  while(n > 0)
    nums1[max] = nums2[n-1]
    n -= 1
    max -= 1
  end
end