echo "### setting up binaries and applications..."
echo "### ..."
echo "### ..."

if test ! $(which brew); then
  echo "### installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install caskroom/cask
fi

#
# Tap libraries
#
taps=(
  homebrew/dupes
  homebrew/science
  homebrew/python
  caskroom/versions
)
echo "### tapping libraries..."
brew tap ${taps[@]}
brew update && brew upgrade

#
# Brew packages
#
binaries=(
  coreutils
  findutils
  homebrew/dupes/grep
  zsh
  zsh-completions
  git
  bagit
  graphicsmagick
  ffmpeg
  mediainfo
  trash
  tree
  ack
  python
  python3
  ruby-build
  rbenv
  ansible
  tidy-html5
  wget
)
echo "### installing binaries..."
brew install ${binaries[@]}

echo "Add /usr/local/sbin: to $PATH"
# echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.zshrc
# $PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
echo "$PATH"

#
# Brew Casks
#
casks=(
# Finder quicklook extensions
  qlcolorcode
  qlprettypatch
  quicklook-csv
  suspicious-package
  qlmarkdown
  qlstephen
  quicklook-json
  betterzipql
  webpquicklook
# Workflow stuff
  alfred
  flux
  day-o
# Editors
  atom
  sublime-text3
  mactex
# Files
  dropbox
  osxfuse
  google-drive
  the-unarchiver
# Dev
  iterm2
  java
  rstudio
  vagrant
  virtualbox
# Other stuff
  vlc
  slack
  google-chrome
  firefox
  seashore
  inkscape
  xquartz
)

echo "### installing casks..."
brew cask install ${casks[@]}

brew cleanup
brew cask cleanup
