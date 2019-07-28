module Hamming
  def self.distance(a, b)
    raise ArgumentError.new("Sizes do not match") if a.size != b.size
    return a.chars.zip(b.chars).count { |ai,bi| ai != bi }
  end
end

