class Integer
  def even_or_odd
    (to_i % 2).zero? ? "Pair" : "Impair"
  end
end

(puts "Erreur"; exit) unless ARGV.size == 1 && ARGV[0].match(/[0-9]/)
num = ARGV[0].to_i

puts num.even_or_odd