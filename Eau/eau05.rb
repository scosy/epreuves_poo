class String
  def includes?(substr)
    index = 0
    while index != size - substr.size + 1
      return true if self[index..substr.size - 1 + index] == substr

      index += 1
    end
    false
  end
end

(puts "Erreur"; exit) unless ARGV.size == 2 &&
                             ARGV[0].split('').any?(/[a-zA-Z]/) &&
                             ARGV[1].split('').any?(/[a-zA-Z]/)

puts ARGV[0].includes?(ARGV[1])