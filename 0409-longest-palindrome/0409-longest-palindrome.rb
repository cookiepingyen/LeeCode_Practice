# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  hash = Hash.new(0)
  s.each_char do |char|
    hash[char] += 1
  end
  count = hash.values.reduce(0) {|sum, n| sum + (n/2)*2 }
  count += 1 if hash.values.find{|num| num.odd?}
  count
end