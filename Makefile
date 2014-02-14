# Makefile
 
MD = markdown
MDFLAGS = -T

all: index.html
 
index.html: README.md
	@echo "== Build index.html ... =="
	cat head.t > $@
	$(MD) $(MDFLAGS) $< >> $@
	cat footer.t >> $@

clean:
	rm -f index.html
