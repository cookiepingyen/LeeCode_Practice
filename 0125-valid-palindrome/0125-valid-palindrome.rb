# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  filtere_str = s.gsub(/[^A-Za-z]/, '').downcase

  0.upto(filtere_str.length - 1) do |i|
    if(filtere_str[i] != filtere_str[filtere_str.length - 1 - i])
      return false
    end
  end
  true
end