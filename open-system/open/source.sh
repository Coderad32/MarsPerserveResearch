#!/bin/bash

# A simple shell command-line interface GUI

echo "---------------------------------------"
echo "Welcome to the Mars Preserve CLI!"
echo "---------------------------------------"
echo "Enter a command (type 'exit' to quit):"
echo "---------------------------------------"

while true; do
    read -p "> " cmd
    if [ "$cmd" = "exit" ]; then
        echo "Exiting the CLI. Goodbye from Mars Preserve!"
        break
    fi
    eval "$cmd"
done
