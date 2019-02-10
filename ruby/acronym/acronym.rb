class Acronym
  def self.abbreviate(name)
    name.scan(/\b\w/).join.upcase
  end
end

if __FILE__ == $0
  puts "Usage: %{program_name} [Name] ..." % {:program_name => $0} if ARGV.empty?
  ARGV.each{ |arg| puts Acronym.abbreviate(arg.to_s) }
end
