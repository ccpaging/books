# Makefile
 
MD = markdown
MDFLAGS = -T
SOURCES := $(wildcard *.md)
OBJECTS := $(patsubst %.md, %.html, $(wildcard *.md))
 
all: build
 
build: html
 
html: $(OBJECTS)
 
$(OBJECTS): %.html: %.md
	cat ../head.t > $@ && $(MD) $(MDFLAGS) $< >> $@ && cat ../footer.t >> $@

clean:
	rm -f $(OBJECTS)
