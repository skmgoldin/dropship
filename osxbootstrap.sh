# Install Homebrew deps
xcode-select --install >> .droplog 2>&1

# If Homebrew is already installed and in the PATH, exit.
if command -v brew; then
  exit;
fi

# Install Homebrew (Default)
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

