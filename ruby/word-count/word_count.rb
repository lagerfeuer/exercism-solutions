class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    map = Hash.new(0)
    @phrase.downcase.scan(/\b\w*'?\w/).select { |e| map[e] += 1 }
    map
  end
end
