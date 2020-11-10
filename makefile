all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "#guessinggame" > README.md
	echo $(date) >> README.md
	echo "The number of lines of code contained in guessinggame.sh is `cat guessinggame.sh | wc -l`" >> README.md
clean:
	rm README.md
