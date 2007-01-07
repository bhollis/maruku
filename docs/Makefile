
htmls=index.html maruku.html  markdown_syntax.html 

pdfs= maruku.pdf proposal.pdf

others=maruku.md style.css markdown_syntax.md  proposal.md 

pdfs+=proposal.pdf
htmls+=proposal.html
others+=proposal.md

pdf: $(pdfs)

html: $(htmls)

all: pdf html 

index.html: maruku.html
	cp $< $@

%.html: %.md
	ruby -I../lib ../bin/maruku $<

%.pdf: %.md
	ruby -I../lib ../bin/marutex $<

clean: 
	-rm -f $(htmls) $(pdfs) *.out *.aux *.tex *.toc


publish: $(htmls) $(others) $(pdfs) 
	rsync  $^ andrea@rubyforge.org:/var/www/gforge-projects/maruku/
	
publish_tests:
#	scp -r ../tests andrea@rubyforge.org:/var/www/gforge-projects/maruku/tests/
	rsync --recursive -v ../tests/unittest/  andrea@rubyforge.org:/var/www/gforge-projects/maruku/tests
	
publish_doc:
	rsync --recursive -v ../doc/  andrea@rubyforge.org:/var/www/gforge-projects/maruku/rdoc

