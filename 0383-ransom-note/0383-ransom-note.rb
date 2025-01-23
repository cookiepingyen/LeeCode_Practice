# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  return false if ransom_note.length > magazine.length
  hash = {}

  magazine.chars.each_with_index do |char|
    hash[char] = (hash.key?(char))? hash[char]+1 : 1
  end

  ransom_note.chars.each do |char|
    if hash.key?(char) && hash[char] > 0
      hash[char] -= 1
    else
      return false
    end
  end
  return true
end