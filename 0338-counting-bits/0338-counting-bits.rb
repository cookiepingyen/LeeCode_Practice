# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
  array = []

  for i in (0..n) do
    num = i.to_s(2).chars.reduce(0){|sum, n| sum + n.to_i}

    array.push(num)
  end
  array
end