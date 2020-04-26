readme.txt: 
	touch README.md
	echo "## Guess the number of files in the directory" > README.md
	echo "**The run date is**" >>README.md
	date >> README.md
	echo "*The number of line in guessinggame.sh is*" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md


