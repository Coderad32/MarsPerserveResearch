#!/bin/bash

# A simple shell command-line interface

echo "Welcome to the Mars Preserve CLI!"
echo "Enter a command (type 'exit' to quit):"

while true; do
    read -p "> " cmd
    if [ "$cmd" = "exit" ]; then
        echo "Exiting the CLI. Goodbye!"
        break
    fi
    eval "$cmd"
done
