class String
  def reverse
    reversed = []
    each_char{ |char| reversed.prepend(char) }
    reversed.join
  end
end

(puts "Erreur"; exit) unless ARGV.size == 1 &&
                      ARGV[0].size > 2 &&
                      ARGV[0].match(/[a-zA-Z]{2,}/)

puts ARGV[0].reverse
