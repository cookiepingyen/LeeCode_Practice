# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  dp = []
  dp[0] = [1]

  for i in 1..(num_rows-1)
    tmp_array1 = [0] + dp[i - 1]
    tmp_array2 = dp[i - 1] + [0]
    tmp_array1.each_with_index do |n, index|
      tmp_array1[index] = tmp_array1[index] + tmp_array2[index]
    end

    dp[i] = tmp_array1
  end
  dp
end