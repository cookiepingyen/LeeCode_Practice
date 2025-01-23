# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  return n if(n == 1 || n == 2)
  dp = [];
  dp[1] = 1;
  dp[2] = 2;

  for i in 3..n
    dp[i] = dp[i-1] + dp[i-2]
  end

  dp[n]
end