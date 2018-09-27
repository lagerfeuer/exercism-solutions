require_relative 'clock'

clock = Clock.new
clock = clock + Clock.new(hour: 1)
