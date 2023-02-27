class Array
  def minimum_difference
    diffs = []
    arr = sort.reverse
    arr.each_with_index do |n, i|
      break if i == size - 1
      diffs << n - arr[i + 1]
    end
    diffs.min
  end
end

(puts "Erreur"; exit) unless ARGV.size > 1 && 
                             ARGV.all? { |arg| arg.scan(/\D/).empty? }

nums = ARGV.map(&:to_i)

puts nums.minimum_difference