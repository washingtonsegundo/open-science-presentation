#!/bin/zsh
set -u

project_dir="${0:A:h:h}"
cd "$project_dir"

stamp="build/.watch-stamp"
mkdir -p build

echo "Watching main.tex and assets/ — press Ctrl+C to stop."

if ./scripts/compile.sh; then
  touch "$stamp"
else
  echo "Initial compilation failed; watching for corrections."
  touch "$stamp"
fi

while true; do
  if [[ -n "$(find main.tex assets -type f -newer "$stamp" -print -quit 2>/dev/null)" ]]; then
    echo "Change detected; recompiling..."
    if ./scripts/compile.sh; then
      echo "Updated: build/main.pdf"
    else
      echo "Compilation failed; correct the reported error and save again."
    fi
    touch "$stamp"
  fi
  sleep 1
done
