#!/bin/zsh
set -euo pipefail

project_dir="${0:A:h:h}"
cd "$project_dir"
export TECTONIC_CACHE_DIR="$project_dir/.cache/tectonic"

failed=0

if command -v tectonic >/dev/null 2>&1; then
  echo "OK  Tectonic: $(tectonic --version)"
else
  echo "ERR Tectonic is not installed. Run: make setup"
  failed=1
fi

mkdir -p "$TECTONIC_CACHE_DIR"
if [[ -w "$TECTONIC_CACHE_DIR" ]]; then
  echo "OK  Local Tectonic cache: .cache/"
else
  echo "ERR Local Tectonic cache is not writable"
  failed=1
fi

if [[ -f main.tex ]]; then
  echo "OK  main.tex"
else
  echo "ERR main.tex is missing"
  failed=1
fi

for asset in \
  assets/open-science-hero.png \
  assets/open-infrastructure.png \
  assets/open-science-brazil.png \
  assets/knowledge-value-chain.png \
  assets/science-to-sustainable-development.png; do
  if [[ -f "$asset" ]]; then
    echo "OK  $asset"
  else
    echo "ERR $asset is missing"
    failed=1
  fi
done

exit "$failed"
