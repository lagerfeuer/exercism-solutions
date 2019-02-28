class Series
  def initialize(string)
    @series = string
  end

  def slices(size)
    raise ArgumentError if @series.length < size

    slices = []
    @series.chars.each_cons(size) { |e| slices << e.join }
    slices
  end
end
