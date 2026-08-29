#!/bin/zsh
set -euo pipefail

if command -v tectonic >/dev/null 2>&1; then
  echo "Tectonic is already installed: $(tectonic --version)"
  exit 0
fi

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew is required. Install it from https://brew.sh and run make setup again." >&2
  exit 1
fi

echo "Installing Tectonic with Homebrew..."
brew install tectonic
echo "Installed: $(tectonic --version)"
