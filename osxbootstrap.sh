# Install Homebrew deps
xcode-select --install >> .droplog 2>&1

# Install Homebrew
mkdir ~/dev >> .droplog 2>&1
cd ~/dev
mkdir homebrew && curl -L https://github.com/Homebrew/homebrew/tarball/master |  tar xz --strip 1 -C homebrew 

