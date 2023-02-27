class Array
  def middle_value
    nums =map(&:to_i)
    nums - [nums.max] - [nums.min]
  end
end

(puts "Erreur"; exit) unless ARGV.size == 3 &&
                             ARGV.all?(/[0-9]/) &&
                             ARGV.uniq == ARGV

puts ARGV.middle_value