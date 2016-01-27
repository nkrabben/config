atomlibs=(
# Code lint
  linter
  linter-alex
  linter-pylint
  linter-lintr
  linter-tidy
  linter-js-yaml
  linter-csslint
  pigments
)
echo "### installing atom extensions..."
apm install ${atomlibs[@]}
