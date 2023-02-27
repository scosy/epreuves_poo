class Integer
  def prime?
    i = 2
    nope = "Non, #{self} n'est pas un nombre premier."
    return nope if self == 1
    unless [2, 3, 5, 7].include?(self)
      while i * i <= self
        return nope if (self % i).zero?
        i += 1
      end
    end
    "Oui, #{self} est un nombre premier"
  end
end

(puts "Erreur"; exit) unless ARGV.size == 1 && ARGV[0].match(/[0-9]/)
num = ARGV[0].to_i

puts num.prime? if __FILE__ == $0