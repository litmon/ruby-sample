puts "================="
puts "show file list"
puts "================="

Dir::entries(".").each do |f|
  puts f
end

puts "================="
puts "show file only .rb extension"
puts "================="

Dir::glob("*.rb").each do |f|
  puts f
end
