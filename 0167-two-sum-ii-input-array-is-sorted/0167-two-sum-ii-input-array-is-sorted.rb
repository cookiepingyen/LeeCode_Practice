# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  hash = {}
  numbers.each_with_index do |num, i|
    if(hash.has_key?(target - num))
      return [hash[target - num], i + 1]
    else
      hash[num] = i + 1
    end
  end
end