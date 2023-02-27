class Array
  def two_numbers_combination
    nums = [*"00".."99"]
    res = []

    nums.each do |num1|
      nums.each do |num2|
        res << "#{num1} #{num2}"
      end
    end
    res.select { |comb| comb[0..1] < comb[3..4] }.size
  end
end

puts [].two_numbers_combination