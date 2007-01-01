require 'maruku'
require 'bluecloth'

require 'maruku/parse_span_better'

data = $stdin.read

num = 10

stats = 
[
	
	[BlueCloth, :to_html],
	[Maruku,    :to_html],
	[Maruku,    :to_latex]
	
].map do |c, method|
	puts "Computing for #{c}"

	start = Time.now
	doc = nil
	for i in 1..num
		puts "#{i}"
		doc = c.new(data)
	end
	stop = Time.now
	parsing = (stop-start)/num

	start = Time.now
	for i in 1..num
		puts "#{i}"
		s = doc.send method
	end
	stop = Time.now
	rendering = (stop-start)/num

	[c, method, parsing, rendering]
end

for c, method, parsing, rendering in stats
	puts ("%s (%s): parsing %0.2f sec + rendering %0.2f sec "+
	"= %0.2f sec ") % [c, method, parsing,rendering,parsing+rendering]
end

