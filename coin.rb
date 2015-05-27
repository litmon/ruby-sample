# 入力
# n m
# a_0 a_1 ... a_m
#
# 出力
# n円をm枚のコインで支払うときの最小枚数
# 

MAX_COIN = 100000000

n, m = gets.split("\s").map{|i| i.to_i}
a = (1..m).map{gets.to_i}

result = Array.new(n, MAX_COIN)
a.each do |a_i|
  result = result.each_with_index.map do |r_i|
    if r_i[0] < a_i
      r_i[1]
    else
      [r_i[1], result[r_i[0] - a_i] + 1].min
    end
  end
end
