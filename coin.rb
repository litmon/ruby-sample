# 入力
# n m
# a_0 a_1 ... a_m
#
# 出力
# n円をm枚のコインで支払うときの最小枚数
# 

n, m = gets.split("\s").map{|i| i.to_i}
a = (1..m).map{gets.to_i}

result = Array.new(n, INF)
a.each do |a_i|
end
