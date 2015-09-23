class String
  define_method(:anagrams) do |check_word|
    words = self.downcase
    words_array = words.split(" ")
    check_word = check_word.downcase

    words_array.each do |word|
      if (word.chars.sort) == (check_word.chars.sort)
        return true
      else
        next
      end
    end
    if (words_array[-1].chars.sort) != (check_word.chars.sort)
      return false
    end
  end
end




# if/else shorthand
# words_array.each do |word|
#   return true if (word.chars.sort) == (check_word.chars.sort)
#   return false if (word.chars.sort) != (check_word.chars.sort)
# end
