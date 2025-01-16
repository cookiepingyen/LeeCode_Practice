def search_insert(nums, target)
  nums.each_with_index do |num, index|
      if target == num
          return index
      elsif target < num
          return index
      end
  end
  return nums.length
end
