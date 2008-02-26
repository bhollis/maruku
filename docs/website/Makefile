
PAGES = \
	src/maruku.page \
#	src/changelog.page \
	src/proposal.page \
	src/download.page
	
additional= \
	src/maruku.pdf \
	src/proposal.pdf \
	src/maruku.md \
	src/proposal.md

all: $(PAGES)

src/%.page: src/%.md src/%.page.txt
	./compose-page.rb src/$*.page.txt src/$*.md  > src/$*.page

src/%.pdf: src/%.md
	maruku --pdf $<
	cp $*.pdf $@
	rm $*.pdf $*.out $*.aux $*.log src/$*.tex

run: all
	webgen run
	cp ../entity_test.{pdf,html} output/

others: $(additional)
	cp $(additional) output/

clean: 
	-rm $(PAGES)
	
	
publish: 
	rsync  --recursive output/* andrea@rubyforge.org:/var/www/gforge-projects/maruku/
