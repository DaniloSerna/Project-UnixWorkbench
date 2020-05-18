
README.md: guessinggame.sh
	touch README.md
	echo "# Unix Workbench Project" >> README.md
	echo "### Date:" >> README.md
	date >> README.md
	echo "### Number of lines in *guessinggame.sh*:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md 

clean:
	rm README.md
