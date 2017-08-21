class SumOfDigits
  attr_reader :string
  def initialize(string)
    @string = string
  end

  def sum
    string.chars.map(&:to_i).reduce(:+)
  end
end

unless ENV['RACK_ENV'] == 'rspec'
  File.open(ARGV[0]).each_line do |line|
    puts SumOfDigits.new(line).sum
  end
end
