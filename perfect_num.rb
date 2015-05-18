number = gets.to_i

def perfect_num(number)
  sum = 0
  for i in 1..number-1
    if n % i == 0
      sum += i
    end
  end

  if number == sum
    puts "#{number} is perfect number"
  else
    puts "#{number} is not perfect number"
  end
end

perfect_num(number)
