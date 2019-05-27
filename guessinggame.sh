function dirNumOfFiles(){ local directory=$1;  echo $(ls $directory | wc -l); }
numberOfFiles=$(pwd | dirNumOfFiles)
while  [[ $resp -ne $numberOfFiles ]]
do
	read -p "What is the number of files in the current directory: " resp
	if [[ $numberOfFiles -eq $resp ]]
	then
		echo "Congratulations, you have guessed correctly";
	elif [[ $numberOfFiles -ge $resp ]]
	then
		echo "Your guess is too low!";
        elif [[ $numberOfFiles -le $resp ]]
	then
		echo "Your guess is too high!";
	else
		echo "Something went wrong!";
	fi
done
echo Exiting Program