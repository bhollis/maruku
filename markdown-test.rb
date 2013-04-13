#! /usr/bin/env ruby

puts "Maruku:"
puts `ruby -Ilib bin/maruku -o - --html-frag #{ARGV[0]}`

puts "Old Maruku:"
puts `ruby -S maruku -o - --html-frag #{ARGV[0]}`

puts "\n\nRedcarpet:"
puts `redcarpet --smarty #{ARGV[0]}`

puts "\n\nKramdown:"
puts `kramdown #{ARGV[0]}`

puts "\n\nBluecloth:"
puts `bluecloth #{ARGV[0]}`

puts "\n\nRDiscount:"
puts `rdiscount #{ARGV[0]}`

puts "\n\nMultiMarkdown:"
puts `multimarkdown #{ARGV[0]}`
