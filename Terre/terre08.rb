class Integer
  def power(pow)
    self ** pow
  end
end

num = ARGV[0].to_i
pow = ARGV[1].to_i

(puts "Erreur"; exit) unless ARGV.size == 2 &&
                      num.positive? &&
                      pow.positive?

puts num.power(pow)