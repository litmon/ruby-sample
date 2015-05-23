class Circle
  attr_accessor :x, :y, :r

  def initialize(x, y, r)
    @x = x
    @y = y
    @r = r
  end

  def distance(x, y)
    (x - @x) ** 2 + (y - @y) ** 2
  end

  def inside?(x, y)
    distance(x, y) <= @r ** 2
  end

  def outside?(x, y)
    distance(x, y) => @r ** 2
  end
end

class Typhoon
  attr_accessor :x, :y

  def initialize(x, y, r1, r2)
    @x = x
    @y = y

    @c1 = Circle.new(x, y, r1)
    @c2 = Circle.new(x, y, r2)
  end

  def storm?(x, y)
    @c1.outside?(x, y) && @c2.inside?(x, y)
  end
end
