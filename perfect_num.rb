number = gets.to_i

class Integer
  def perfect?
    number = self
    sum = 0
    for i in 1..number-1
      if number % i == 0
        sum += i
      end
    end

    number == sum
  end
end

puts number.perfect?
