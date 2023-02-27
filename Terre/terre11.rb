class String
  def is_time?
    if match?(/([0-9]{2}:[0-9]{2})/) &&
       [*0..23].include?(self[0..1].to_i) &&
       [*0..59].include?(self[3..4].to_i)
      return true
    end
    false
  end

  def to_12
    time = dup
    if [*"01".."11"].include?(time[0..1])
      time += "AM"
    elsif [*"13".."23"].include?(time[0..1])
      time[0..1] = (time[0..1].to_i - 12).to_s
      time +="PM"
    else
      time += time[0..1] == "00" ? "AM": "PM"
      time[0..1] = "12"
    end
    time
  end
end

(puts "Erreur"; exit) unless ARGV.size == 1 &&
                             ARGV[0].size == 5 &&
                             ARGV[0].is_time?

puts ARGV[0].to_12