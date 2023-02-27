class String
  def maj_in_two
    res = dup
    idx = 0
    iterator = 0
    each_char do |char|
      res[idx] = res[idx].upcase if iterator.even?

      idx += 1
      iterator += 1 unless char.match(/\W|_|\s/)

    end
    res
  end
end

(puts "Erreur"; exit) unless ARGV.size == 1 &&
                             ARGV[0].split('').any?(/[a-zA-Z]/)

puts ARGV[0].maj_in_two