The example in the `Configuration.md` file includes some markup that seems misaligned and could be cleaned up for better clarity. Here's a fixed version for the example:

### Revised Installation Guide for Shell and Python

#### Installing Python

1. **Check if Python is already installed:**

   ```bash
   python3 --version
   ```

   If Python is installed, this command will display the installed version.

2. **Install Python (if not installed):**

   - **On Ubuntu/Debian-based systems:**
     ```bash
     sudo apt update
     sudo apt install python3 python3-pip
     ```

   - **On macOS:**
     ```bash
     brew install python
     ```

   - **On Windows:**  
     Download and install Python from the official [Python website](https://www.python.org).

3. **Verify the installation:**

   ```bash
   python3 --version
   pip3 --version
   ```

#### Installing Shell

1. **Check if a Shell is already installed:**

   Most systems come with `bash` or `zsh` pre-installed. You can check the default shell by running:

   ```bash
   echo $SHELL
   ```

2. **Install a Shell (if needed):**

   - **On Ubuntu/Debian-based systems:**
     ```bash
     sudo apt update
     sudo apt install bash
     ```

   - **On macOS:**  
     Update to the latest version of `zsh` using Homebrew:
     ```bash
     brew install zsh
     ```

   - **On Windows:**  
     Install a shell like [Git Bash](https://git-scm.com/) or use the Windows Subsystem for Linux (WSL).

3. **Set the default shell:**

   ```bash
   chsh -s /bin/bash   # Replace /bin/bash with the path to your preferred shell.
   ```

This revised version improves formatting, aligns the code blocks properly, and ensures consistency across all instructions. Let me know if you'd like further modifications!
