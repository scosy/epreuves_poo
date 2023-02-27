class Integer
  def between(num)
    self < num ? [*self..num - 1] : [*num..self - 1]
  end
end

(puts "Erreur"; exit) unless ARGV.size == 2 &&
                             ARGV[0].split('').all?(/[0-9]/) &&
                             ARGV[1].split('').all?(/[0-9]/)

puts ARGV[0].to_i.between(ARGV[1].to_i)