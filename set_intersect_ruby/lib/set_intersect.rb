class SetIntersect
  attr_reader :line

  def initialize(line)
    @line = line
  end

  def intersect
    array_intersect
  end

  private

  def line_split
    line.split(';')
  end

  def splitted_array
    line_split.map { |numbers| numbers.split(',').map(&:to_i) }
  end

  def array_intersect
    splitted_array.inject(:&).join(',') if splitted_array.size == 2
  end
end


unless ENV['RACK_ENV'] == 'rspec'
  File.open(ARGV[0]).each_line do |line|
    puts SetIntersect.new(line).intersect
  end
end
