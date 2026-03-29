#!/bin/bash

# guessinggame.sh - A number guessing game in Bash

# Function to count files in current directory
count_files() {
    ls -1 | wc -l
}

# Get the actual number of files
actual_count=$(count_files)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"
echo -n "Enter your guess: "
read guess

while [ "$guess" -ne "$actual_count" ]
do
    if [ "$guess" -gt "$actual_count" ]; then
        echo "Too high! Try again."
    else
        echo "Too low! Try again."
    fi
    echo -n "Enter your guess: "
    read guess
done

echo "Congratulations! You guessed the correct number: $actual_count"
