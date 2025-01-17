# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  left = 1
  right = x
  middle = (1 + x)/2


  while left != middle
    square = middle * middle

    return middle if (middle * middle == x)
    if square > x
      right = middle
    else
      left = middle
    end
      middle = (left + right)/2
  end

  left
end