.PHONY: all clean

cvfiles = cv.html cv.pdf cv.rtf cv.odt cv.epub cv.docx
date = $(shell git log -1 --format=%ci)

all: $(cvfiles)

clean:
	rm -fv $(cvfiles)

cv.html: README.md
	sed "s/__NOW__/$(date)/" $< | pandoc -s -t html5 -o $@

cv.pdf: README.md
	sed "s/__NOW__/$(date)/" $< | pandoc -s -o $@ \
	-V geometry:a4paper \
	-V geometry:margin=3cm \
	-V fontfamily:dejavu

cv.%: README.md
	sed "s/__NOW__/$(date)/" $< | pandoc -s -o $@

