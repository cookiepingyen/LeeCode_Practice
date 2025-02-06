# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
def coin_change(coins, amount)
  dp = {}
  dp[0] = 0 # init condition

  # each condition value
  # dp[1]...dp[amount]
  for i in 1..amount
    dp[i] = Float::INFINITY

    coins.each do |num|  
      # 1.i 必須大於 num 2. dp[i-num] 必須存在
      if(i >= num && dp[i-num] != Float::INFINITY)
        dp[i] = [dp[i], dp[i-num] + 1].min
      end
    end
  end
  (dp[amount] == Float::INFINITY)? -1 : dp[amount]
end