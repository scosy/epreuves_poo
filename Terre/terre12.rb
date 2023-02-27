class String
  def is_time?
    if match?(/[0-9]{2}:[0-9]{2}[APM]{2}/) &&
       [*1..12].include?(self[0..1].to_i) &&
       [*0..59].include?(self[3..4].to_i)
      return true
    end
    false
  end

  def to_24
    time = dup
    if time[0..1] == "12"
      time[0..1] = "00" if time[5..6] == "AM"
      time[5..6] = ""
    elsif time[5..6] == "AM"
      time[5..6] = ""
    elsif time[5..6] == "PM"
      time[0..1] = (time[0..1].to_i + 12).to_s
      time[5..6] = ""
    end
    time
  end
end

(puts "Erreur"; exit) unless ARGV.size == 1 &&
                             ARGV[0].size == 7 &&
                             ARGV[0].is_time?

puts ARGV[0].to_24