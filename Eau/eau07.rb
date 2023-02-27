class String
  def titleize
    split.map { |word| word.capitalize }.join(" ")
  end
end

(puts "Erreur"; exit) unless ARGV.size == 1 &&
                             ARGV[0].split('').any?(/[a-zA-Z]/)

puts ARGV[0].titleize