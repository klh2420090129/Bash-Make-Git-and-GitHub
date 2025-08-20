# Makefile to generate README.md for guessinggame project

SCRIPT=guessinggame.sh
README=README.md
TITLE=Guessing Game Project

all: $(README)

$(README): $(SCRIPT)
	echo "# $(TITLE)" > $(README)
	echo "" >> $(README)
	echo "Date and Time: $$(date '+%Y-%m-%d %H:%M:%S')" >> $(README)
	echo "" >> $(README)
	echo "Number of lines in $(SCRIPT): $$(wc -l < $(SCRIPT))" >> $(README)
