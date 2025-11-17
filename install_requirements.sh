#!/usr/bin/env bash
set -euo pipefail

#!/usr/bin/env bash
set -euo pipefail

# Minimal installer: directly install a small set of packages using pip (no venv)
# Run as:
#   ./install_requirements.sh
# If you want system-wide install and need privileges, run with sudo.

PKGS=(tensorflow numpy scikit-learn matplotlib)
VCS=(git+https://github.com/cair/tmu.git)

PIP_CMD=""
if command -v pip3 >/dev/null 2>&1; then
  PIP_CMD="$(command -v pip3)"
elif command -v pip >/dev/null 2>&1; then
  PIP_CMD="$(command -v pip)"
else
  echo "Error: pip or pip3 not found on PATH. Install pip or use your package manager." >&2
  exit 1
fi

echo "Using pip: $PIP_CMD"
echo "Upgrading pip, setuptools, wheel..."
"$PIP_CMD" install --upgrade pip setuptools wheel

echo "Installing packages..."
for p in "${PKGS[@]}"; do
  echo "  -> $p"
  "$PIP_CMD" install --upgrade "$p"
done

for v in "${VCS[@]}"; do
  echo "  -> $v"
  "$PIP_CMD" install --upgrade "$v"
done

echo "All done. If you needed system-wide installation and hit permissions errors, re-run with sudo."

exit 0
