require "open-uri"
require "nokogiri"

puts "Input URL you want to scraping and Enter."
print "> "
url = STDIN.gets

puts "Site connecting...."

html = open(url).read
doc = Nokogiri::HTML(html, url)

unless doc
  puts "Sorry! we could not get the site. #{url}"
  exit
end

puts "Get page."

while true
  puts "Please input css selector. (please ENTER to finish)"
  print "> "
  selector = STDIN.gets.chomp

  break if selector == ""

  puts "---Node Information---"
  puts "Node: #{doc.css(selector)}"
  puts "Node length: #{doc.css(selector).length}"
  puts "--- ---"
end

puts "See you again!"
