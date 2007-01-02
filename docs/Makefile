
out=index.html maruku.html  markdown_syntax.html 
out+=markdown_extra2.html
#out+=markdown_extra2.pdf 
#out+=maruku.pdf maruku.pdf
others=maruku.md style.css markdown_syntax.md markdown_extra2.md

out+=proposal.pdf
out+=proposal.html
others+=proposal.md


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
	
