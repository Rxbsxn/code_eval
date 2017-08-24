class SumOfIntegersFromFile
  attr_reader :arr

  def initialize(arr)
    @arr = arr
  end

  def array_sum
    arr.reduce(:+)
  end
end

# arr = Array.new()

# unless ENV['RACK_ENV'] == 'rspec'
#   File.open(ARGV[0]).each_line do |line|
#     arr << line.to_i
#   end
# end

# p SumOfIntegersFromFile.new(arr).array_sum

