# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
  array = []

  for i in (0..n) do
    num = i.to_s(2).chars.count("1")

    array.push(num)
  end
  array
end