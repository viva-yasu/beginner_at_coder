=begin
B - 高橋君とパスワード

問題文
高橋君の会社には、秘密の金庫があります。この金庫にはパスワードをかけているのですが、高橋君はそのパスワードを忘れてしまいました。 しかし、幸運なことに、手元にはパスワードのヒントが以下のように書かれていました。
パスワードは、この紙に書かれている文字列 s の長さ k の部分文字列(※)のどれかである。
高橋君は、ありうるパスワードを全部試せば金庫を開けられる！と喜びました。 しかし、文字列 s はとても長い可能性があるし、しかも同じ部分文字列が複数個文字列 s 中に存在する可能性もあります。明らかに、重複したパスワードを繰り返し試す必要はありません。 そこで、手動で全てのパスワードを試す前に、試す必要がある異なるパスワードの数がいくつあるかを数えることにしました。

あなたの仕事は、文字列 s の内容が与えられるので、試す必要がある異なるパスワードの数がいくつあるかを高橋君に教えてあげることです。

(※)文字列 s の「部分文字列」とは、文字列 s に含まれるある区間を取り出した文字列のことです。 例えば、abc の部分文字列として a,b,c,ab,bc,abc などが挙げられます。 ac や ba などは部分文字列ではないことに注意してください。

入力
入力は以下の形式で標準入力から与えられる。
s
k
1 行目には、ヒントの紙に書かれている文字列 s(1≦|s|≦300) が与えられる。s は英小文字(a-z)のみから成る。|s| は文字列 s の長さを表す。
2 行目には、パスワードとしてありうる整数 k(1≦k≦300) が与えられる。 k は |s| よりも大きいことがある。

出力
出力は以下の形式で標準出力に行うこと。
1 行目に、パスワードとして考えられる文字列の数を出力せよ。末尾の改行を忘れないこと。

入力例1
abcabc
2
出力例1
3
パスワードとしてありうる部分文字列の集合は、{ab,bc,ca} です。

入力例2
aaaaa
1
出力例2
1
パスワードとしてありえる部分文字列は、a のみです。

入力例3
hello
10
出力例3
0
=end

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