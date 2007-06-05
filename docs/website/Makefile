
PAGES = \
	src/maruku.page \
	src/changelog.page \
	src/proposal.page \
	src/download.page
	#	src/maruku.pdf \
	#	src/changelog.pdf \
	# src/download.pdf 

all: $(PAGES)

src/%.page: src/%.md src/%.page.txt
	./compose-page.rb src/$*.page.txt src/$*.md  > src/$*.page

src/%.pdf: src/%.md
	maruku --pdf $< 
	cp $*.pdf $@
	rm $*.pdf $*.out $*.aux $*.log src/$*.tex

run: all
	webgen run

clean: 
	-rm $(PAGES)
