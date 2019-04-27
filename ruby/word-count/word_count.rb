REGEXPs = {
  "words" => /\b\w*'?\w/
}

class Phrase
  def initialize(phrase)
    @phrase = phrase.downcase.scan(REGEXPs["words"])
  end

  def word_count
    @phrase.each_with_object(Hash.new(0)) do |word, h|
      h[word] += 1
    end
  end
end
