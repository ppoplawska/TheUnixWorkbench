all: README.md guessinggame.sh

guessinggame.sh:
	chmod 775 ./guessinggame.sh

README.md: guessinggame.sh
	echo "#The Unix Workbench: Guessing Game Project" > README.md
	echo "##The lastest make was performed on: $$(date)" >> README.md
	echo "##The script contains: $$(wc -l ./guessinggame.sh | egrep -o [0-9]+ ) lines" >> README.md

clean:
	rm README.md