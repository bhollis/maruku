
htmls=index.html maruku.html  markdown_syntax.html 

pdfs= maruku.pdf proposal.pdf

others=logo.png maruku.md style.css markdown_syntax.md  proposal.md 

pdfs+=proposal.pdf
htmls+=proposal.html
others+=proposal.md

pdfs+=entity_test.pdf
htmls+=entity_test.html

pdfs+=math.pdf
htmls+=math.xhtml
others+=math.md


all: pdf html 

pdf: $(pdfs)

html: $(htmls)

index.html: maruku.html
	cp $< $@

%.html: %.md
	ruby -I../lib ../bin/maruku --html -u $<

%.xhtml: %.md
	ruby -I../lib ../bin/maruku -m itex2mml --html -u $<

%.pdf: %.md
	ruby -I../lib ../bin/maruku -m none --pdf -u $<

dist:
	-rm *.out *.aux *.tex *.toc *.dvi *.log

clean: 
	-rm -f $(htmls) $(pdfs) *.out *.aux *.tex *.toc


publish: $(htmls) $(others) $(pdfs) 
	rsync  $^ andrea@rubyforge.org:/var/www/gforge-projects/maruku/
	
publish_tests:
#	scp -r ../tests andrea@rubyforge.org:/var/www/gforge-projects/maruku/tests/
	rsync --recursive -v ../tests/unittest/  andrea@rubyforge.org:/var/www/gforge-projects/maruku/tests
	
publish_doc:
	rsync --recursive -v ../doc/  andrea@rubyforge.org:/var/www/gforge-projects/maruku/rdoc

exd.html:
	ruby -I../lib exd/exd.rb
	
	
