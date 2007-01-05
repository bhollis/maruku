require 'maruku'
require 'bluecloth'


data = $stdin.read

num = 10

methods = 
[
	
	[Maruku,    :to_html],
	[BlueCloth, :to_html],
	[Maruku,    :to_latex]
	
]

#methods = [[Maruku, :class]]
#num = 10

stats = 
methods .map do |c, method|
	puts "Computing for #{c}"

	start = Time.now
	doc = nil
	for i in 1..num
		$stdout.write "#{i} "; $stdout.flush
		doc = c.new(data)
	end
	stop = Time.now
	parsing = (stop-start)/num

	start = Time.now
	for i in 1..num
		$stdout.write "#{i} "; $stdout.flush
		s = doc.send method
	end
	stop = Time.now
	rendering = (stop-start)/num

	puts ("%s (%s): parsing %0.2f sec + rendering %0.2f sec "+
	"= %0.2f sec ") % [c, method, parsing,rendering,parsing+rendering]

	[c, method, parsing, rendering]
end

for c, method, parsing, rendering in stats
	puts ("%s (%s): parsing %0.2f sec + rendering %0.2f sec "+
	"= %0.2f sec ") % [c, method, parsing,rendering,parsing+rendering]
end

