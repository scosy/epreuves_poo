class Array
  def reversed_args
    res = []
    (size - 1).downto(0) do |i|
      res << self[i]
    end
    res
  end
end

(puts "Erreur"; exit) if ARGV.size.zero?

puts ARGV.reversed_args