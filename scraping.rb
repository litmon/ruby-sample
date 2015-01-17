require 'open-uri'
require 'nokogiri'

puts 'Input URL you want to scraping and Enter.'
print '> '
# url = STDIN.gets
url = "http://life-is-tech.com"

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
  puts "Node Inner Text: #{doc.css(selector).inner_text}"
  puts "Node length: #{doc.css(selector).length}"
  puts "--- ---"
end

