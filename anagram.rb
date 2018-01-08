class Anagram
  attr_reader :word

  def initialize(word)
    @word = word.upcase
  end

  def match(candidates)
    candidates
      .reject { |candidate| candidate.upcase == word }
      .select { |candidate| normalize(candidate) == normalize(word) }
  end

  private

  def normalize(word)
    word.upcase.chars.sort
  end
end

module BookKeeping
  VERSION = 2
end
