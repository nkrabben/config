# Update brews
brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

# Update pip
pip list --outdated
echo "Use 'pip install -U package1 package2 ...' to update outdated packages"
