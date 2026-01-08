#!/usr/bin/env bash
#
# post-create.sh
# Install NPM dependencies and configure git hooks for HVE Core development container

set -euo pipefail

main() {
  echo "Installing NPM dependencies..."
  npm install
  echo "NPM dependencies installed successfully"
  
  echo "Installing pre-commit hook..."
  cp .devcontainer/scripts/pre-commit .git/hooks/pre-commit
  chmod +x .git/hooks/pre-commit
  echo "Pre-commit hook installed successfully"
}

main "$@"
