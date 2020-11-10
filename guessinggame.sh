no_of_files=` ls -1| wc -l`
#echo 'No of file in this directory -'
#echo $no_of_files

echo "How many files do you think are there in the current directory?"
read guess
echo 'guessed no.of files - '
echo $guess
if [ $guess -ge $no_of_files ]
then
	echo 'Haha! Guessed too high'
elif [ $guess -le $no_of_files ]
then
	echo 'Oops! Guessed too low'
fi

while [ true ]
do
	echo "Guess again :P - "
	read guess
	echo 'guessed no.of files - '
	echo $guess
	if [ $guess -eq $no_of_files ]
	then
		break
	elif [ $guess -ge $no_of_files ]
	then
		echo 'Haha! Guessed too high'
	elif [ $guess -le $no_of_files ]
	then
		echo 'Oops! Guessed too low'
	fi
done

echo 'Congratulations! You guessed it right :)'

