class String
  define_method(:anagrams) do |check_word|
    words = self.downcase
    check_word = check_word.downcase
    words_array = words.split(" ")

    words_array.each do |word|
      return true if (word.chars.sort) == (check_word.chars.sort)
      return false if (word.chars.sort) != (check_word.chars.sort)
    end
  end
end



# if/else longhand
# if (word.chars.sort) == (check_word.chars.sort)
#   return true
# else
#   return false
# end
