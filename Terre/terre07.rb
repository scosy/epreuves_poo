class String
  def char_counter
    count = 0
    each_char { |c| count += 1 }
    count
  end
end

(puts "Erreur"; exit) unless ARGV.size == 1 &&
                      ARGV[0].class == String


puts ARGV[0].char_counter