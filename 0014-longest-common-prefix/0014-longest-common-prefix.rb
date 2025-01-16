# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  perfix = ""
  length = strs.map{|s| s.length}.min
  0.upto(length-1) do |i|
    char = strs[0][i]
    strs.each do |str|
      return perfix if str[i] != char
    end
    perfix += char
  end
  perfix
end