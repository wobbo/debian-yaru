#!/usr/bin/env bash
set -euo pipefail

# --- helpers ---------------------------------------------------------------
# Check if a GTK theme exists
theme_exists() {
  local name="$1"
  [[ -d "/usr/share/themes/$name" ]] || [[ -d "$HOME/.themes/$name" ]]
}
# Check if an icon theme exists
icon_exists() {
  local name="$1"
  [[ -d "/usr/share/icons/$name" ]] || [[ -d "$HOME/.icons/$name" ]] || [[ -d "$HOME/.local/share/icons/$name" ]]
}
# Read GNOME accent color (fallback to 'default')
get_accent() {
  local a
  a="$(gsettings get org.gnome.desktop.interface accent-color || echo "'default'")"
  a="${a//\'}"; a="${a,,}"
  [[ -z "$a" ]] && a="default"
  echo "$a"
}
# Map GNOME accent → Yaru suffix for GTK/icons
accent_to_suffix() {
  case "$1" in
    default|orange) echo "" ;;
    blue)           echo "-blue" ;;
    pink)           echo "-magenta" ;;
    purple)         echo "-purple" ;;
    red)            echo "-red" ;;
    yellow)         echo "-yellow" ;;
    green)          echo "-sage" ;;
    teal)           echo "-prussiangreen" ;;
    olive)          echo "-olive" ;;
    brown)          echo "-wartybrown" ;;
    slate|gray|grey) echo "" ;;  # no grey Yaru; fall back to Orange/Yaru
    *)              echo "" ;;
  esac
}
# Force the dock to fixed black @ 80% opacity (0.8)
set_dock_black_80pct() {
  gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED' || true
  gsettings set org.gnome.shell.extensions.dash-to-dock custom-background-color true || true
  gsettings set org.gnome.shell.extensions.dash-to-dock background-color '#222222' || true
  gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.8 || true
}
# Apply themes (GTK + Icons per accent). Shell stays base Yaru/Yaru-dark only.
apply_theme() {
  local scheme accent suffix gtk_light gtk_dark icon_light icon_dark shell_light shell_dark

  scheme="$(gsettings get org.gnome.desktop.interface color-scheme || echo "'default'")"
  scheme="${scheme//\'}"
  accent="$(get_accent)"
  suffix="$(accent_to_suffix "$accent")"

  gtk_light="Yaru${suffix}"
  gtk_dark="Yaru${suffix}-dark"

  icon_light="Yaru${suffix}"
  icon_dark="Yaru${suffix}-dark"

  # Shell has NO colored variants: keep it on base Yaru/Yaru-dark
  shell_light="Yaru"
  shell_dark="Yaru-dark"

  # Robust fallbacks (never Adwaita)
  theme_exists "$gtk_light" || gtk_light="Yaru"
  theme_exists "$gtk_dark"  || gtk_dark="Yaru-dark"
  icon_exists "$icon_light" || icon_light="Yaru"
  icon_exists "$icon_dark"  || icon_dark="Yaru-dark"
  theme_exists "$shell_light" || shell_light="Yaru"
  theme_exists "$shell_dark"  || shell_dark="Yaru-dark"

  if [[ "$scheme" == "prefer-dark" ]]; then
    gsettings set org.gnome.desktop.interface gtk-theme "$gtk_dark" || true
    gsettings set org.gnome.desktop.interface icon-theme "$icon_dark" || true
    gsettings set org.gnome.shell.extensions.user-theme name "$shell_dark" || true
  else
    gsettings set org.gnome.desktop.interface gtk-theme "$gtk_light" || true
    gsettings set org.gnome.desktop.interface icon-theme "$icon_light" || true
    gsettings set org.gnome.shell.extensions.user-theme name "$shell_light" || true
  fi

  # Keep cursor on Yaru
  gsettings set org.gnome.desktop.interface cursor-theme 'Yaru' || true

  # Enforce dock style each time
  set_dock_black_80pct
}

# 1) Apply immediately
apply_theme

# 2) Monitor live: light/dark + accent color
{
  gsettings monitor org.gnome.desktop.interface color-scheme &
  gsettings monitor org.gnome.desktop.interface accent-color &
  wait -n
} | while read -r _; do
  apply_theme
done
