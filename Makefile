.phony: all
 
all: paper/paper.md paper/paper.html

paper/paper.md: 
			touch paper/sections/00-abstract.md 
	        touch paper/sections/01-introduction.md 
	        touch paper/sections/02-discussion.md 
			touch paper/sections/03-conclusion.md
			cat paper/sections/*.md > paper/paper.md

#generate a html from a markdown file
paper/paper.html: paper/paper.md
		cd paper; pandoc -s paper.md -o paper.html

clean: 
		cd paper; rm -f paper.md -o paper.html