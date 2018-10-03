class Clock
  attr_accessor :minutes

  def initialize(hour: 0, minute: 0)
    @minutes = (hour * 60 + minute) % (24 * 60)
  end

  def to_s
    "%02d:%02d" % [ (@minutes / 60) % 24, @minutes % 60 ]
  end

  def +(clock)
    @minutes += clock.minutes
    self
  end

  def -(clock)
    @minutes -= clock.minutes
    self
  end

  def ==(clock)
    @minutes == clock.minutes
  end
end
