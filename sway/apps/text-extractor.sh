set -eo pipefail
if TEXTO=$(grim -g "$(slurp)" - | tesseract -l por - - | sed '/^$/N;/^\n$/D'); then
  printf '%s\n' "$TEXTO" | wl-copy
fi
