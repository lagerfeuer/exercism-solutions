class Series
  def initialize(string)
    @series = string
  end

  def slices(size)
    raise ArgumentError if @series.length < size

    slices = []
    (0..(@series.length - size)).each do |i|
      slices << @series[i, size]
    end
    slices
  end
end
