#!/bin/bash

# A simple shell command-line interface GUI

echo "---------------------------------------"
echo "Welcome to the Mars Preserve CLI!"
echo "---------------------------------------"
echo "Enter a command (type 'help' for a list of commands or 'exit' to quit):"
echo "---------------------------------------"

while true; do
    # Prompt the user for input
    read -p "> " cmd

    # Check if the user wants to exit
    if [ "$cmd" = "exit" ]; then
        echo "Exiting the CLI. Goodbye from Mars Preserve!"
        break
    fi

    # Check if the input is empty
    if [ -z "$cmd" ]; then
        echo "No command entered. Please try again."
        continue
    fi

    # Custom commands
    case "$cmd" in
        help)
            echo "Available commands:"
            echo "  help       - Show this help message"
            echo "  date       - Display the current date and time"
            echo "  uptime     - Show system uptime"
            echo "  mars-info  - Display information about the Mars Preserve project"
            echo "  clear      - Clear the terminal screen"
            echo "  exit       - Exit the CLI"
            ;;
        date)
            echo "Current date and time: $(date)"
            ;;
        uptime)
            echo "System uptime: $(uptime -p)"
            ;;
        mars-info)
            echo "Mars Preserve is a visionary project dedicated to exploring and safeguarding the legacy of Mars."
            echo "Learn more at: https://github.com/marspreserve"
            ;;
        clear)
            clear
            ;;
        *)
            # Execute the command and handle errors
            eval "$cmd" 2>/dev/null || echo "Error: Command '$cmd' not found."
            ;;
    esac
done
