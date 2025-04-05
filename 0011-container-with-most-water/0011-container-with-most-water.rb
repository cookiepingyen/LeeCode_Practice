# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  left = 0                   # left_side
  right = height.length - 1  # right_side
  max_area = 0               # water_area

  # 重複移動直到left在right的右側
  while left < right
    width = right - left
    wall = [height[left], height[right]].min
    area = width * wall

    max_area = [max_area, area].max

    # 較矮的一側繼續網內部移動
    if(height[left] < height[right])
      left += 1
    else
      right -= 1
    end
  end
  max_area
end