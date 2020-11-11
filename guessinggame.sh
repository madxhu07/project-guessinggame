#!/bin/bash
#counts all files including the hidden ones
no_of_files=` ls -1A| wc -l`

gues_seq () {
        while true
        do
                read guess
                echo 'guessed no.of files - ' $guess
                if [ $guess -eq $no_of_files ]
                then
                        echo 'Congratulations! You guessed it right :)'
                        break
                elif [ $guess -le $no_of_files ]
                then
                        echo 'Oops! Guessed too low'
                else
                        echo 'Haha! Guessed too high'
                fi
                echo 'Guess Again! :P'
        done
}

#the code starts here
echo "How many files do you think are there in the current directory?"
gues_seq
