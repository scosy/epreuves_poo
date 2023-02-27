class Array
  def include_index
    word_to_find = self[-1]
    words = self[0..-2]

    words.each_with_index { |word, index| return index if word == word_to_find }

    -1
  end
end

(puts "Erreur"; exit) if ARGV.size < 2

puts ARGV.include_index
