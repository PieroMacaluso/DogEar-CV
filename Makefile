.PHONY: examples

CC = xelatex
EXAMPLES_DIR = out
COVER_DIR = coverletter
CV_DIR = cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

examples: $(foreach x, coverletter cv resume, $x.pdf)

cv.pdf: cv.tex
		$(CC) -output-directory=$(CV_DIR) $ $<

coverletter.pdf: coverletter.tex
		$(CC) -output-directory=$(COVER_DIR) $ $<

clean:
	rm -rf $(EXAMPLES_DIR)/*.pdf
