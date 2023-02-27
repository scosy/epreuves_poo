class Array
  def sorted?
    nums = map(&:to_i)
    nums.size.times do
      return false if nums[0] != nums.min
      nums.shift
    end
    true
  end
end

(puts "Erreur"; exit) unless ARGV.size > 1 &&
                             ARGV.all?(/[0-9]/)

puts ARGV.sorted? ? "Triée !" : "Pas triée !"