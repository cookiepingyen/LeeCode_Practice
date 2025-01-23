public class Solution {
    public int ClimbStairs(int n) {
        List<int> steps = new List<int>(){0, 1, 2};
        if(n <= 2){
          return n;
        }
        for(int i = 3; i <= n; i++){
          steps.Add(steps[i-1] + steps[i-2]);
        }
        return steps[n];
    }
}