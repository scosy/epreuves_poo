class Array
  def three_numbers_combination
    [*"000".."999"].select { |num| num[0].to_i < num[1].to_i && num[1].to_i < num [2].to_i }.join(" ")
  end
end

puts [].three_numbers_combination