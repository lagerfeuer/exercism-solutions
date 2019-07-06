module Hamming
  def self.distance(a, b)
    raise ArgumentError.new("Sizes do not match") if a.size != b.size
    distance = 0
    a.chars.zip(b.chars).each do |ai,bi|
      if ai != bi
        distance += 1
      end
    end
    return distance
  end
end

