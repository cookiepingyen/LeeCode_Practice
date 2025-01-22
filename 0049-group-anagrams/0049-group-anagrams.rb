# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  hash = Hash.new {|hash, key| hash[key] = []}

  strs.each_with_index do |str, index|
    hash[str.chars.sort].push(str)
  end

  hash.values
end