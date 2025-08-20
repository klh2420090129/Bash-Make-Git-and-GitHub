#!/usr/bin/env bash

# guessinggame.sh
# A simple guessing game about the number of files in the current directory.

# Function to get number of files in current directory
function file_count {
    # Count only regular files (not directories)
    echo $(ls -1 | wc -l)
}

# Store actual number of files
actual_count=$(file_count)

echo "Welcome to the Guessing Game!"
echo "How many files do you think are in the current directory?"

# Initialize guess variable
guess=-1

# Main loop
while [[ $guess -ne $actual_count ]]
do
    # Prompt for user input
    read -p "Enter your guess: " guess
    
    # Validate input: check if it's a number
    if ! [[ $guess =~ ^[0-9]+$ ]]; then
        echo "Invalid input. Please enter a number."
        continue
    fi

    # Compare guess with actual file count
    if [[ $guess -lt $actual_count ]]; then
        echo "Too low! Try again."
    elif [[ $guess -gt $actual_count ]]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed correctly!"
    fi
done
