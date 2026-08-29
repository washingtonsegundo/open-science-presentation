#!/bin/zsh
set -euo pipefail

project_dir="${0:A:h:h}"
cd "$project_dir"
export TECTONIC_CACHE_DIR="$project_dir/.cache/tectonic"

if ! command -v tectonic >/dev/null 2>&1; then
  echo "Tectonic is not installed. Run: make setup" >&2
  exit 1
fi

mkdir -p build "$TECTONIC_CACHE_DIR"
tectonic -X compile main.tex --outdir build --keep-logs

if [[ ! -s build/main.pdf ]]; then
  echo "Compilation finished without producing build/main.pdf" >&2
  exit 1
fi

cp build/main.pdf open-science-presentation.pdf

echo "PDF created at: $project_dir/build/main.pdf"
echo "Viewer copy updated at: $project_dir/open-science-presentation.pdf"
