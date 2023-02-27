module Math
  def self.nth_fibo(num)
    fibo = [0, 1]
    while fibo.size < num + 1
      fibo << fibo[-1] + fibo[-2]
    end
    fibo[-1]
  end
end

(puts "Erreur"; exit) unless ARGV.size == 1 &&
                             ARGV[0].match(/[0-9]/)

puts Math.nth_fibo(ARGV[0].to_i)