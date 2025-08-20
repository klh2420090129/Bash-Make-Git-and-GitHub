# Makefile to create README.md with details

README.md:
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "Make run on: $$(date)" >> README.md
	echo "" >> README.md
	echo "Lines of code in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

.PHONY: all
all: README.md
