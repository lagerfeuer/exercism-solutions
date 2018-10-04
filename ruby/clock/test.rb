require_relative 'clock'

clock = Clock.new
clock = clock + Clock.new(hour: 1)

START_OF_DAY = Clock.new(hour: 8, minute: 0)
POMODORO_LENGTH = Clock.new(hour: 0, minute: 45)
BREAK_LENGTH = Clock.new(hour:0, minute: 15)

first_break_start = START_OF_DAY + POMODORO_LENGTH
first_break_end = START_OF_DAY + POMODORO_LENGTH + BREAK_LENGTH

puts first_break_end
puts START_OF_DAY
