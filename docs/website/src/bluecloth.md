
The other Ruby implementation of Markdown is [Bluecloth]. 

Maruku is much different in philosophy from Bluecloth: the biggest 
difference is that *parsing* is separated from *rendering*.
In Maruku, an in-memory representation of the Markdown
document is created. Instead, Bluecloth mantains the document in
memory as a String at all times, and does a series of `gsub` 
to transform to HTML.

Maruku is usually faster than Bluecloth. Bluecloth is faster 
for very small documents. Bluecloth sometimes chokes on very big
documents (it is reported that the blame should be on Ruby's regexp 
implementation).

This is the canonical benchmark (the Markdown specification), 
executed with Ruby 1.8.5 on a Powerbook 1.5GhZ:

	BlueCloth (to_html): parsing 0.01 sec + rendering 1.87 sec = 1.88 sec   (1.00x)
	   Maruku (to_html): parsing 0.66 sec + rendering 0.43 sec = 1.09 sec   (1.73x)
	  Maruku (to_latex): parsing 0.67 sec + rendering 0.23 sec = 0.90 sec   (2.10x)

Please note that Maruku has a lot more features and therefore is 
looking for much more patterns in the file.

