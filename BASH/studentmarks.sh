#!/bin/bash

read -p "Enter the first mark: " mark1
read -p "Enter the second mark: " mark2
read -p "Enter the third mark: " mark3

average=$(( (mark1 + mark2 + mark3) / 3 ))

echo "Average mark: $average"

if (( average >= 90 )); then
  echo "Grade: S"
elif (( average >= 80 )); then
  echo "Grade: A"
elif (( average >= 60 )); then
  echo "Grade: B"
elif (( average >= 40 )); then
  echo "Grade: P"
else
  echo "Grade: F"
fi

