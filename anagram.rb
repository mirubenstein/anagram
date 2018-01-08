class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(candidates)
    candidates
      .reject { |candidate| candidate.upcase == word.upcase }
      .select { |candidate| normalize(candidate) == normalize(word) }
  end

  def normalize(word)
    word.upcase.chars.sort
  end
end

module BookKeeping
  VERSION = 2
end
