public class Solution {
    public int[] TwoSum(int[] nums, int target) {
        Dictionary<int,int> hash = new Dictionary<int,int>();
        for(int i = 0; i < nums.Length; i++){
          int cur = nums[i];
          if (hash.ContainsKey(target-cur)){
            return new int[] {hash[target-cur], i};
          }
          else{
            hash[cur] = i;
          }
        }
        return new int[] {};
    }
}