all: README.md

README.md: guessinggame.sh
	echo "#guessinggame" > README.md
	echo $(shell date +%FT%T%Z) >> README.md
	echo "The number of lines of code contained in guessinggame.sh is `cat guessinggame.sh | wc -l`" >> README.md

clean:
	rm README.md
