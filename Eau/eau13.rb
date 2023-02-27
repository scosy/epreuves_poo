class Array
  def selection_sort
    arr = self.dup
    n = arr.size - 1
    n.times do |i|
      arr[i], arr[arr.index(arr[i..n].min)] = arr[arr.index(arr[i..n].min)], arr[i]
    end
    arr.join(" ")
  end
end

(puts "Erreur"; exit) unless ARGV.size > 1 && 
                             ARGV.all? { |arg| arg.scan(/\D/).empty? }

nums = ARGV.map(&:to_i)

puts nums.selection_sort