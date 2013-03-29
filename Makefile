.PHONY: all clean

all: cv.html cv.pdf cv.rtf cv.odt cv.epub cv.docx

clean:
	rm -fv cv.*

cv.pdf: README.md
	pandoc -o $@ $<

cv.html: README.md
	pandoc -s -t html5 -o $@ $<

cv.rtf: README.md
	pandoc -s -o $@ $<

cv.odt: README.md
	pandoc -s -o $@ $<

cv.docx: README.md
	pandoc -s -o $@ $<

cv.epub: README.md
	pandoc -s -o $@ $<
