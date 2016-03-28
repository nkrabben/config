atomlibs=(
# Code lint
  linter
  linter-alex
  linter-pylint
  linter-js-yaml
  linter-csslint
# Markup
  pigments
  highlight-selected
# Usability
  minimap
  minimap-highlight-selected
  autoclose-html
  atom-beautify
  auto-detect-indentation
  scripts
)
echo "### installing atom extensions..."
apm install ${atomlibs[@]}
