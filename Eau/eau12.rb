class Array
  def bubble_sort
    arr = dup
    (size - 1).downto(1) do |i|
      (0..i - 1).each do |j|
        arr[j + 1], arr[j] = arr[j], arr[j + 1] if arr[j + 1] < arr[j]
      end
    end
    arr.join(" ")
  end
end

(puts "Erreur"; exit) unless ARGV.size > 1 && 
                             ARGV.all? { |arg| arg.scan(/\D/).empty? }

nums = ARGV.map(&:to_i)

puts nums.bubble_sort