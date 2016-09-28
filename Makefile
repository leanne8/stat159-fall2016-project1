out = paper/paper.md
mds = $(wildcard paper/sections/*.md)
#mds = paper/sections/*.md

.phony: all clean

all: $(out) paper/paper.html

paper/paper.md: $(mds)
	# touch paper/sections/00-abstract.md 
	# touch paper/sections/01-introduction.md 
	# touch paper/sections/02-discussion.md 
	# touch paper/sections/03-conclusion.md
	cat $(mds) > $(out)

#generate a html from a markdown file
# $< paper/paper.md (first prerequisite)
# $@ paper/paper.html (target)
paper/paper.html: $(out)
	pandoc $< -s -o $@

clean: 
	rm -f out -o paper/paper.html paper/paper.md


