HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60

class Clock
  attr_accessor :minutes
  protected :minutes

  def initialize(hour: 0, minute: 0)
    @minutes = (hour * MINUTES_PER_HOUR + minute) \
      % (HOURS_PER_DAY * MINUTES_PER_HOUR)
  end

  def to_s
    "%02d:%02d" % @minutes.divmod(MINUTES_PER_HOUR)
  end

  def +(clock)
    Clock.new(hour: 0, minute: @minutes + clock.minutes)
  end

  def -(clock)
    Clock.new(hour: 0, minute: @minutes - clock.minutes)
  end

  def ==(clock)
    @minutes == clock.minutes
  end
end
