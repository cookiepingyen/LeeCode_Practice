# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  n = 0
  while (n * n <= x)
    n += 1
  end
  n - 1
end