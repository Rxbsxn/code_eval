class LowestUniqueNumber < Struct.new(:numbers)
  def initialize(numbers)
    @numbers = numbers
  end

  def result
    elements_count

    winner_index = lowest_numbers(elements_count)
    if winner_index == nil || winner_index == 0
      0
    else
      @numbers.index(winner_index) + 1
    end
  end

  def elements_count
    @numbers.each_with_object({}) do |item, acc|
      if acc[item]
        acc[item] += 1
      else
        acc[item] = 1
      end
    end
  end

  def lowest_numbers(arr)
    arr.map { |x| x.last == 1 ? x.first : 0 }.sort.select { |x| x > 0 }.min
  end
end


unless ENV['RACK_ENV'] == 'rspec'
  File.open(ARGV[0]).each_line do |line|
    arr = []
    line.each_char { |c| c.to_i != 0 ? arr << c.to_i : nil }
    puts LowestUniqueNumber.new(arr).result
  end
end
