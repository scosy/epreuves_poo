require_relative("../Terre/terre10")

class Integer
  def next_prime_number
    n = self.dup + 1
    until n.prime?.start_with?("Oui")
      n += 1
    end
    n
  end
end

(puts "Erreur"; exit) unless ARGV.size == 1 &&
                             ARGV[0].match(/[0-9]/)

puts ARGV[0].to_i.next_prime_number