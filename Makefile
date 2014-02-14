# Makefile
 
MD = markdown
MDFLAGS = -T
SOURCES := $(wildcard *.md)
OBJECTS := $(patsubst %.md, %.html, $(wildcard *.md))
 
all: build
 
build: html
 
html: $(OBJECTS)
 
$(OBJECTS): %.html: %.md
	@echo "== Build $@ ... =="
	$(MD) $(MDFLAGS) -o $@.bak $<
	cat head.t $@.bak footer.t > $@
	rm -f $@.bak

clean:
	rm -f $(OBJECTS)