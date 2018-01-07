class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(possible_anagrams)
    possible_anagrams.select do |possible_anagram|
      possible_anagram.upcase.chars.sort == word.upcase.chars.sort &&
        possible_anagram.upcase != word.upcase
    end
  end
end

module BookKeeping
  VERSION = 2
end
