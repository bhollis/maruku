
out=index.html maruku.pdf maruku.html  markdown_syntax.pdf
others=maruku.md style.css

all: $(out)

index.html: maruku.html
	cp $< $@

%.html: %.md
	ruby -I../lib ../bin/maruku $<

%.pdf: %.md
	ruby -I../lib ../bin/marutex $<

clean: 
	-rm -f $(out)


publish: $(out) $(others)
	scp $^ andrea@rubyforge.org:/var/www/gforge-projects/maruku/
	
publish_tests:
	scp -r ../tests/*.md ../tests/*.html ../tests/*.pdf andrea@rubyforge.org:/var/www/gforge-projects/maruku/tests/
	