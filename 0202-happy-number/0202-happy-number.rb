# @param {Integer} n
# @return {Boolean}
def is_happy(num)
  # 先放一個陣列儲存計算過的數字
  array = []

  # 如果計算出來的 num == 1，或是曾經有計算過，就離開loop
  while(num != 1 && !array.include?(num))
    array.push(num)
    num = num.to_s.chars.map {|digit| digit.to_i ** 2}.sum
  end

  num == 1
end