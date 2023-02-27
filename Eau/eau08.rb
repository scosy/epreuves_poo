class String
  def all_numbers?
    each_char { |char| return false unless char.match?(/[0-9]/) }
    true
  end
end

(puts "Erreur"; exit) unless ARGV.size == 1

puts ARGV[0].all_numbers?