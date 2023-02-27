class Integer  
  def divide(divider)
    "Résultat: #{self / divider}\nReste: #{self % divider}"
  end
end

divided = ARGV[0].to_i
divider = ARGV[1].to_i

(puts "Erreur"; exit) unless ARGV.size == 2 &&
                      divider.positive? &&
                      divided > divider

puts divided.divide(divider)