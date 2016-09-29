out = paper/paper.md
mds = $(wildcard paper/sections/*.md)

.phony: all clean

all: $(out) paper/paper.html

paper/paper.md: $(mds)
	cat $(mds) > $(out)

# $< paper/paper.md (first prerequisite)
# $@ paper/paper.html (target)
paper/paper.html: $(out)
	pandoc $< -s -o $@

clean: 
	rm -f $(out) -o paper/paper.html


