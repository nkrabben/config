#
# Install ruby and rbenv
#
brew install rbenv ruby-build

# Add rbenv to bash so that it loads every time you open a terminal
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile

# Install Ruby
rbenv install 2.2.3
rbenv global 2.2.3
ruby -v

#
# Install gems
#
gems=(
  rails
)
echo "### installing gems..."
gem install ${gems[@]}
