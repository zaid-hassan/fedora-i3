set -e

FONT_DIR="$HOME/.local/share/fonts/IosevkaNerdFont"
mkdir -p "$FONT_DIR"

cd /tmp

echo "Downloading Iosevka Nerd Font..."
curl -L -o Iosevka.zip \
  https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Iosevka.zip

echo "Installing..."
unzip -o Iosevka.zip -d "$FONT_DIR"

echo "Refreshing font cache..."
fc-cache -f "$HOME/.local/share/fonts"

echo
echo "Installed Iosevka Nerd Font:"
fc-list | grep -i "Iosevka Nerd Font" | head -10

echo
echo "Done."
