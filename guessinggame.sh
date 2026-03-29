#!/bin/bash
# guessinggame.sh - A number guessing game in Bash
# This script counts files in the current directory and lets the user guess the count

# Function to count files in the current directory
count_files() {
    ls -1 | wc -l
}

# Function to display a welcome message
display_welcome() {
    echo "================================"
    echo "  Welcome to the Guessing Game!"
    echo "================================"
}

# Get the actual number of files in the current directory
actual_count=$(count_files)

# Display the welcome message
display_welcome

echo ""
echo "How many files are in the current directory?"
echo ""
echo -n "Enter your guess: "
read guess

# Loop until the user guesses correctly
while [ "$guess" -ne "$actual_count" ]
do
    if [ "$guess" -gt "$actual_count" ]; then
        echo "Too high! Try again."
    else
        echo "Too low! Try again."
    fi
    echo ""
    echo -n "Enter your guess: "
    read guess
done

# Congratulate the user when they guess correctly
echo ""
echo "Congratulations! You guessed the correct number: $actual_count"
echo "Thank you for playing!"
