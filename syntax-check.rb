def a
  def b(x)
    "x: #{x}"
  end

  b(10)
end

puts a

def c
  -> x{ "x: #{x}" }
end

puts c.call(10)


puts "### +a; -a;"

a = 10

puts +a
puts -a

puts "### *a; /a;"

puts *a
puts "/a syntax error"


puts "if i = 1"

if i = 1
  puts "collect"
end
