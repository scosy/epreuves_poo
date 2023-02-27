class Integer
  def sqrt
    (0..self).each do |n|
      return n if n * n == self
    end
    "La racine carrée de #{self} n'est pas un entier positif"
  end
end

(puts "Erreur"; exit) unless ARGV.size == 1 && ARGV[0].match(/[0-9]/)
num = ARGV[0].to_i

puts num.sqrt