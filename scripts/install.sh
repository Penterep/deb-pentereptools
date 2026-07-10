#!/bin/sh
set -eu

DEB_URL="https://raw.githubusercontent.com/Penterep/deb-pentereptools/main/penterep-tools_0.3_all.deb"

# The script is intended to run through `sudo sh`, because package
# installation and writes below /opt and /usr require root privileges.
if [ "$(id -u)" -ne 0 ]; then
    echo "Run this installer with sudo." >&2
    exit 1
fi

DEB_FILE=$(mktemp /tmp/penterep-tools.XXXXXX.deb)

cleanup() {
    rm -f "$DEB_FILE"
}
trap cleanup EXIT INT TERM

echo "[+] Downloading Penterep Tools..."
curl -fsSL "$DEB_URL" -o "$DEB_FILE"

# apt downloads as the sandboxed _apt user. A world-readable file in /tmp
# keeps that sandbox enabled and avoids the local-file permission warning.
chmod 644 "$DEB_FILE"

echo "[+] Installing Penterep Tools..."
DEBIAN_FRONTEND=noninteractive apt-get install -y "$DEB_FILE"
