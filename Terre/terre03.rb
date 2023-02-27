class String
  def alphabet_from(letter)
    letter == letter.downcase ? [*letter.."z"].join : [*letter.."Z"].join
  end
end


(puts "Erreur"; exit) unless ARGV[0].size == 1 && ARGV[0].match(/[a-zA-Z]/)

puts String.new.alphabet_from(ARGV[0])