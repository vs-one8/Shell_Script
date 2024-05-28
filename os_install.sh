#!/bin/bash

# Function to install Git on Linux (Debian/Ubuntu and CentOS/RHEL)
install_git_linux() {
    if [ -f /etc/debian_version ]; then
        echo "Installing Git on Debian/Ubuntu..."
        sudo apt-get update
        sudo apt-get install git -y
    elif [ -f /etc/redhat-release ]; then
        echo "Installing Git on CentOS/RHEL..."
        sudo yum install git -y
    else
        echo "Unsupported Linux distribution. Please install Git manually."
    fi
}

# Function to install Git on macOS
install_git_macos() {
    echo "Installing Git on macOS..."
    if ! command -v brew &> /dev/null; then
        echo "Homebrew is not installed. Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    brew install git
}

# Function to install Git on Windows (using Git for Windows)
install_git_windows() {
    echo "Please download and install Git for Windows from https://gitforwindows.org/"
}

# Main script
echo "Installing Git on the system..."

# Check the operating system and install Git accordingly
case "$(uname -s)" in
    Linux*)   install_git_linux;;
    Darwin*)  install_git_macos;;
    CYGWIN*)  install_git_windows;;
    MINGW*)   install_git_windows;;
    *)        echo "Unsupported operating system: $(uname -s). Please install Git manually.";;
esac

echo "Git installation completed successfully."

