# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
  word1_max_index = word1.length - 1
  word2_max_index = word2.length - 1

  str = ""
  index_1 = 0
  index_2 = 0

  while(index_1 <= word1_max_index && index_2 <= word2_max_index)
    if(index_1 <= index_2)
      str += word1[index_1]
      index_1 += 1
    else
      str += word2[index_2]
      index_2 += 1
    end
  end

  while(index_1 <= word1_max_index)
    str += word1[index_1]
    index_1 += 1
  end

  while(index_2 <= word2_max_index)
    str += word2[index_2]
    index_2 += 1
  end

  str
end