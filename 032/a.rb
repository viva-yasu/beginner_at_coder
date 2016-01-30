module SmallestDivisor
  def self.start(a, b, n)
    result = 0
    loop do
      if n % a == 0 && n % b == 0
        result = n
        break
      end
      n += 1
    end
    result
  end

end

a = gets.chomp.to_i
b = gets.chomp.to_i
n = gets.chomp.to_i

puts SmallestDivisor.start(a, b, n)