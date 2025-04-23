Installation Guide for Shell and Python
Installing Python

    Check if Python is already installed:
    bash

python3 --version

If Python is installed, this command will show the installed version.

Install Python (if not installed):

    On Ubuntu/Debian-based systems:
    bash

sudo apt update
sudo apt install python3 python3-pip

On macOS:
bash

    brew install python

    On Windows: Download and install Python from the official website.

Verify the installation:
bash

    python3 --version
    pip3 --version

Installing Shell

    Check if a Shell is already installed:
        Most systems come with bash or zsh pre-installed. You can check the default shell by running:
        bash

    echo $SHELL

Install a Shell (if needed):

    On Ubuntu/Debian-based systems:
    bash

sudo apt update
sudo apt install bash

On macOS: Update to the latest version of zsh using Homebrew:
bash

    brew install zsh

    On Windows: Install a shell like Git Bash or use the Windows Subsystem for Linux (WSL).

Set the default shell:
bash

chsh -s /bin/bash   # Replace /bin/bash with the path to your preferred shell.
