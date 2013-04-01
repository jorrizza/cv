.PHONY: all clean

cvfiles = cv.html cv.pdf cv.rtf cv.odt cv.epub cv.docx

all: $(cvfiles)

clean:
	rm -fv $(cvfiles)

cv.html: README.md
	pandoc -s -t html5 -o $@ $<

cv.%: README.md
	pandoc -s -o $@ $<

