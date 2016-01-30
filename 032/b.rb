module Password
  def self.start(s, k)
    result = 0
    unless s.size < k
      patterns= []
      s.each_cons(k) do |n|
        pattern = ''
        n.each do |i|
          pattern << i
        end
        patterns << pattern
      end
      patterns.uniq!
      result = patterns.size
    end
    puts result
  end
end

s = gets.chomp.split('')
k = gets.chomp.to_i

Password.start(s, k)