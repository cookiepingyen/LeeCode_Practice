# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    return if n == 0
    max_index = nums1.length - 1
    while(n > 0 && m > 0)
        if nums2[n-1] >= nums1[m-1]
             nums1[max_index] = nums2[n-1]
             n-=1
        else
             nums1[max_index] = nums1[m-1]
              m-=1
        end
        max_index-=1
    end
    while(n > 0)
        nums1[max_index] = nums2[n-1]
        n -= 1
        max_index -= 1
    end   
end