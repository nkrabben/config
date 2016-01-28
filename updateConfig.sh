# Update brews
brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

# Update python packges
pip list --outdated
echo "Use 'pip install -U package1 package2 ...' to update outdated packages"

# Update atom packages
apm update
