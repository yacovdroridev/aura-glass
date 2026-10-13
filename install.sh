#!/bin/sh
# Install aura-glass GTK4 theme (backs up existing files)
set -e
t="$HOME/.config/gtk-4.0"; mkdir -p "$t"
for f in gtk.css gtk-dark.css; do
  [ -f "$t/$f" ] && cp "$t/$f" "$t/$f.bak-$(date +%s)"
  cp "$(dirname "$0")/$f" "$t/$f"
done
echo "Installed. Restart apps (and reload Desktop Icons extension) to apply."
