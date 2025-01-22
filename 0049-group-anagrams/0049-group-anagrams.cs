public class Solution {
    public IList<IList<string>> GroupAnagrams(string[] strs) {
        Dictionary<string, List<string>> dic = new Dictionary<string, List<string>>();

        foreach(string str in strs){
          char[] chrArray = str.ToCharArray();
          Array.Sort(chrArray);
          string orderStr = new string(chrArray);

          if (dic.TryGetValue(orderStr, out List<string> value)){
            value.Add(str);
          }
          else{
            dic.Add(orderStr, new List<string>{str});
          }
        }


        return new List<IList<string>>(dic.Values);
    }
}