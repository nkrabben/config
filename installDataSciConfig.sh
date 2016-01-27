#
# Data science brews
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
brew cleanup

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
