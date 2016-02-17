#
# Install ruby and rbenv
#
brew install rbenv ruby-build

# Add rbenv to bash so that it loads every time you open a terminal
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc

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
