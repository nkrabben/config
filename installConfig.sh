
autoload colors
colors
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
  trash
  tree
  ack
  python
  r
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
  spectacle
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
  google-chrome
  firefox
  seashore
  inkscape
  xquartz
)

echo "### installing casks..."
brew cask install ${casks[@]}

#
# Data science
#
libs=(
  libtiff
  libjpeg
  webp
  little-cms2
  imagemagick --with-fftw --with-librsvg --with-x11
  graphviz --with-librsvg --with-x11
  cairo
  py2cairo
  qt
  pyqt
  matplotlib --with-cairo --with-tex
)
echo "### installing libraries for data science..."
brew install ${libs[@]}

pylibs=(
  Pillow
  virtualenv
  nose
# analysis libs
  numpy
  scipy
  pandas
  nltk
  sympy
  q
  snakeviz
  networkx
# ipython
  ipython[all]
# data mungers
  html5lib
  cssselect
  pyquery
  lxml
  BeautifulSoup
  rdflib
  SPARQLWrapper
# frameworks
  Flask
  Django
  tornado
)
echo "### installing python libraries for data science..."
pip install ${pylibs[@]}

brew cleanup
brew cask cleanup
