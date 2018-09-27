class Clock
  attr_accessor :hour, :minute

  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
    _normalize
  end

  def to_s
    "%02d:%02d" % [ @hour, @minute ]
  end

  def +(clock)
    @hour += clock.hour
    @minute += clock.minute
    _normalize
    self
  end

  def -(clock)
    @hour -= clock.hour
    @minute -= clock.minute
    _normalize
    self
  end

  def ==(clock)
    (@hour == clock.hour) and (@minute == clock.minute)
  end

  def _normalize
    @hour = (@hour + @minute / 60) % 24
    @minute = @minute % 60
  end
end
