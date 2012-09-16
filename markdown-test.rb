#! /usr/bin/env ruby

puts "Maruku:"
puts `bin/maruku -o - --html-frag #{ARGV[0]}`

puts "Redcarpet:"
puts `redcarpet #{ARGV[0]}`
