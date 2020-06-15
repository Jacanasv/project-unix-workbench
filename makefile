README.md: 
	echo '# The Unix Workbench project:Guessing Game' > README.md

	date >> README.md

	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
