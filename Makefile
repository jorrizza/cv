.PHONY: all clean

all: cv.pdf cv.html

clean:
	rm -f cv.html cv.pdf

cv.pdf: cv.md
	pandoc -o $@ $<

cv.html: cv.md
	pandoc -s -t html5 -o $@ $<
