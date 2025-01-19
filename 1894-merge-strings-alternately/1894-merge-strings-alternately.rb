# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
  len = (word1.length > word2.length)? word1.length : word2.length
  cur_index = 0
  str = ''

  while(cur_index <= len - 1)
    if(word1[cur_index])
      str += word1[cur_index]
    end

    if(word2[cur_index])
      str += word2[cur_index]
    end

    cur_index += 1
  end

  str
end