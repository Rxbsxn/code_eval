unless ENV['RACK_ENV'] == 'rspec'
  File.open(ARGV[0]).each_line do |line|
    puts line.split(' ').map { |x| x[0].upcase + x[1..-1] }.join(' ')
  end
end
