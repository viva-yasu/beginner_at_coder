=begin
A - 高橋君と青木君の好きな数

問題文
青木君は整数 a で割り切れる数が好きです。 高橋君は整数 b で割り切れる数が好きです。
n 以上の整数で、青木君と高橋君の両方が好きな最小の数を答えてください。

入力
入力は以下の形式で標準入力から与えられる。
a
b
n
1 行目には、整数 a(1≦a≦100) が与えられる。
2 行目には、整数 b(1≦b≦100) が与えられる。
3 行目には、整数 n(1≦n≦20,000) が与えられる。

出力
出力は以下の形式で標準出力に行うこと。
1 行目に、n 以上の整数で青木君と高橋君の両方が好きな数の最小値を出力せよ。末尾の改行を忘れないこと。

入力例1
2
3
8
出力例1
12
12 は 8 以上の整数のうち、 2 と 3 で割り切れるものの最小値です。

入力例2
2
2
2
出力例2
2

入力例3
12
8
25
出力例3
48
=end

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