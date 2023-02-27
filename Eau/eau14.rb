class Array
  def sort_by_ASCII
    asciis = map { _1.bytes }
    asciis.sort!
    asciis.each_with_index do |a, i|
      self[i], self[index(a.map(&:chr).join)] = self[index(a.map(&:chr).join)], self[i]
    end
    self.join(" ")
  end
end

(puts "Erreur"; exit) unless ARGV.size > 1

puts ARGV.sort_by_ASCII