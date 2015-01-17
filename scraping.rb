require 'open-uri'
require 'nokogiri'

puts 'Input URL you want to scraping and Enter.'
print '> '
url = STDIN.gets

puts 'Site connecting....'

html = open(url).read
doc = Nokogiri::HTML(html, url)

unless doc
  puts 'Sorry! we could not get the site.'
  return
end

puts 'Get page.'

while true
  puts 'Please input css selector.'
  print "> "
  selector = STDIN.gets.chomp()

  puts "---Node Information---"
  puts "Node: #{doc.css(selector)}"
  puts "Node length: #{doc.css(selector).length}"
  puts "--- ---"
end

