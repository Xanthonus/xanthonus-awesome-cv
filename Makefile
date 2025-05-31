.PHONY: xan-documents

CC = xelatex
EXAMPLES_DIR = xan-documents
RESUME_DIR = xan-documents/resume
# CV_DIR = xan-documents/cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
# CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

# xan-documents: $(foreach x, coverletter cv resume, $x.pdf)
xan-documents: $(foreach x, resume, $x.pdf)

resume.pdf: $(EXAMPLES_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

# cv.pdf: $(EXAMPLES_DIR)/cv.tex $(CV_SRCS)
#	$(CC) -output-directory=$(EXAMPLES_DIR) $<

# coverletter.pdf: $(EXAMPLES_DIR)/coverletter.tex
#	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	rm -rf $(EXAMPLES_DIR)/*.pdf
