class Phrase
  def initialize(phrase)
    @phrase = normalize(phrase)
  end

  def word_count
    @phrase.each_with_object(Hash.new(0)) do |e, h|
      h[e] += 1
      h
    end
  end

  private

  def normalize(phrase)
    phrase.downcase.scan(/\b\w*'?\w/)
  end
end
