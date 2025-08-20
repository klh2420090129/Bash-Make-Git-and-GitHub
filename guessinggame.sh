#!/bin/bash

count_files() {
  echo $(ls -1 | wc -l)
}

echo "Welcome to the guessing game!"
echo "How many files are in the current directory?"

actual=$(count_files)

guess() {
  read -p "Enter your guess: " g
  echo $g
}

while true; do
  g=$(guess)
  if [[ ! "$g" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number."
    continue
  fi
  if (( g < actual )); then
    echo "Your guess is too low, try again."
  elif (( g > actual )); then
    echo "Your guess is too high, try again."
  else
    echo "Congratulations! You guessed correctly."
    break
  fi
done
