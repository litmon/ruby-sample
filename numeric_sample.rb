puts "upto -5 -> 5"
-5.upto(5){|i| puts i}

puts "downto 5 -> -5"
5.downto(-5){|i| puts i}

puts "step from: -5 to: 5 by: 1"
-5.step(by: 1, to: 5){|i| puts i}

puts "step from: 5 to: -5 by: 1"
5.step(by: -1, to: -5){|i| puts i}

puts "upto -5 -> -5"
-5.upto(-5){|i| puts i} #=> -5
