#!/usr/bin/env bash
set -e

DOTFILES="$HOME/Dev/penrose-dotfiles"

mkdir -p "$HOME/.config/i3"
mkdir -p "$HOME/.config/rofi"
mkdir -p "$HOME/.config/desktop"
mkdir -p "$HOME/.config/polybar"
mkdir -p "$HOME/.config/git"

mkdir -p "$DOTFILES/generated/i3"
mkdir -p "$DOTFILES/generated/rofi"
mkdir -p "$DOTFILES/generated/desktop"
mkdir -p "$DOTFILES/generated/polybar"

ln -sfn "$DOTFILES/generated/i3/config" "$HOME/.config/i3/config"
ln -sfn "$DOTFILES/generated/rofi/config.rasi" "$HOME/.config/rofi/config.rasi"
ln -sfn "$DOTFILES/generated/desktop/wallpaper.sh" "$HOME/.config/desktop/wallpaper.sh"
ln -sfn "$DOTFILES/generated/polybar/config.ini" "$HOME/.config/polybar/config.ini"
ln -sfn "$DOTFILES/config/polybar/launch.sh" "$HOME/.config/polybar/launch.sh"
ln -sfn "$DOTFILES/config/git/ignore" "$HOME/.config/git/ignore"

echo "Linked i3, polybar, and rofi configs."
echo "Run: make apply"
