HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60

class Clock
  def initialize(hour: 0, minute: 0)
    @minutes = (hour * MINUTES_PER_HOUR + minute) \
      % (HOURS_PER_DAY * MINUTES_PER_HOUR)
  end

  def to_s
    "%02d:%02d" % @minutes.divmod(MINUTES_PER_HOUR)
  end

  def +(clock)
    Clock.new(minute: @minutes + clock.minutes)
  end

  def -(clock)
    Clock.new(minute: @minutes - clock.minutes)
  end

  def ==(clock)
    @minutes == clock.minutes
  end

  protected

  attr_accessor :minutes
end
