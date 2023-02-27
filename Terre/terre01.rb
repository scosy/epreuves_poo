class File  
  def name
    $0
  end
end

puts File.new(__FILE__).name