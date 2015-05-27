require "ap"
# 入力
# n m
# a_0 a_1 ... a_m
#
# 出力
# n円をm枚のコインで支払うときの最小枚数
# 

MAX_COIN = 100000000

def ints
  gets.split("\s").map{|i| i.to_i}
end

n, m = ints
a = ints

result = Array.new(n, MAX_COIN).unshift(0)
a.each do |a_i|
  result.map!.each_with_index do |r_i, i|
    if i < a_i
      r_i
    else
      [r_i, result[i - a_i] + 1].min
    end
  end
end

puts result[n]
