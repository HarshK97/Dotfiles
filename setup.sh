#!/bin/bash

# Define paths
DOTFILES_DIR="$HOME/.dotfiles"
CONFIG_DIR="$HOME/.config"

# List of configs to symlink
CONFIGS=(
  "fish"
  "hypr"
  "ghostty"
  "nvim"
  "mechabar-rofi"
  "rofi"
  "spicetify"
  "swaync"
  "swappy"
  "tmux"
  "waybar"
  "wlogout"
  "fastfetch"
  "yazi"
  "kitty"
)

# Function to create symlinks
create_symlinks() {
  echo "🔗 Creating symlinks..."
  for config in "${CONFIGS[@]}"; do
    SRC="$DOTFILES_DIR/$config"
    DEST="$CONFIG_DIR/$config"

    if [ -e "$DEST" ] || [ -L "$DEST" ]; then
      echo "🚮 Removing existing $DEST"
      rm -rf "$DEST"
    fi

    ln -s "$SRC" "$DEST"
    echo "✅ Linked $SRC -> $DEST"
  done
}

# Install packages
install_packages() {
  if [ -f "$DOTFILES_DIR/pkglist.txt" ]; then
    echo "📦 Installing packages from pkglist.txt..."
    yay -S --needed --noconfirm - < "$DOTFILES_DIR/pkglist.txt"
  else
    echo "⚠️ No pkglist.txt found! Skipping package installation."
  fi
}

# Set Fish as default shell
set_fish_shell() {
  if command -v fish &>/dev/null; then
    echo "🐟 Setting Fish as the default shell..."
    chsh -s "$(which fish)"
  else
    echo "❌ Fish shell not found! Install it first."
  fi
}

# Apply Spicetify theme
apply_spicetify_theme() {
  if command -v spicetify &>/dev/null; then
    echo "🎵 Applying Spicetify theme..."
    spicetify apply
  else
    echo "⚠️ Spicetify not installed! Skipping."
  fi
}

# Execute functions
create_symlinks
install_packages
set_fish_shell
apply_spicetify_theme

echo "🚀 Setup complete! Restart your shell or reboot to apply changes."

