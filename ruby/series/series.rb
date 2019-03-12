class Series
  def initialize(string)
    @series = string
  end

  def slices(size)
    raise ArgumentError if @series.length < size

    @series.chars.each_cons(size).map { |e| e.join }
  end
end
