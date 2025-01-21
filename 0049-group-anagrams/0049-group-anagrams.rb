# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  hash = {}
  array = []
  strs.each_with_index do |str, index|
    if hash.key?(str.chars.sort)
      array[hash[str.chars.sort]].push(str)
    else
      hash[str.chars.sort] = hash.length
      array.push([str])
    end
  end

  array
end