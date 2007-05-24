#!/usr/bin/env ruby

exit(-1) if ARGV.size != 2

page_template = File.open(ARGV[0]).read
puts page_template

File.open(ARGV[1]).each do |l|
	if l =~ /^---/
		puts "\\" + l
	else
		puts l
	end
end




