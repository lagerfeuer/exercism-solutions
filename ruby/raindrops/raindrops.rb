module BookKeeping
  VERSION = 3
end

class Raindrops
  TABLE = { 3 => "Pling",
            5 => "Plang",
            7 => "Plong" }

  def self.convert(num)
    result = TABLE.select do |key, word|
      (num % key).zero?
    end.values
    result.empty? ? num.to_s : result.join() # implicit return
  end
end
