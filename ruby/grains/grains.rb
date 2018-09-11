class Grains
  BOARD_SIZE = 64
  def self.square(location)
    raise ArgumentError unless (1..BOARD_SIZE).include?(location)
    1 << (location - 1)
  end

  def self.total
    square(BOARD_SIZE) * 2 - 1
  end
end
