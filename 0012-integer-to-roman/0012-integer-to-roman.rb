# @param {Integer} num
# @return {String}
def int_to_roman(num)
  str = ''
  hash = {
    1000 => "M",
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I',
  }

  hash.each_with_index do |pair, i|
    while num >= pair[0]
      str += pair[1]
      num -= pair[0]
    end
  end
  str
end