n = gets.to_i

class Integer
  def perfect?
    number = self

    # sum = 0
    # for i in 1..number-1
    #   if number % i == 0
    #     sum += i
    #   end
    # end

    number == (1..number).select{|i| number % i == 0}.inject(:+)
  end
end

puts n.perfect?
