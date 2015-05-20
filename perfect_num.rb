class Integer
  def perfect?
    self == (1..self).select{|i| self % i == 0}.inject(:+)
  end
end
