class File
  def args
    ARGV.join("\n")
  end
end

puts File.new($0).args