atomlibs=(
# Code lint
  linter
  linter-alex
  linter-pylint
  linter-lintr
  linter-tidy
  linter-js-yaml
  linter-csslint
)
echo "### installing atom extensions..."
pip install ${atomlibs[@]}
