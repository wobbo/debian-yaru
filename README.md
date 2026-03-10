# Yaru Themes for Debian Trixie

Corrected Yaru theme packages for **GNOME on Debian Trixie**.

Debian Trixie currently ships a Yaru theme version that does not match the GNOME version in the distribution.
This causes visual issues in the desktop environment.

This repository provides rebuilt Yaru theme packages that work correctly with the GNOME version used in Debian Trixie.

## Problem description

More information about the issue can be found here:

https://forums.raspberrypi.com/viewtopic.php?t=373028

## Included packages

* yaru-theme-gtk
* yaru-theme-gnome-shell
* yaru-theme-icon
* yaru-theme-sound
* yaru-theme-unity

## Installation

Download the packages and install them with:

```bash
sudo apt install ./yaru-theme-*.deb
```

or

```bash
sudo dpkg -i yaru-theme-*.deb
```

## Tested on

Debian Trixie
GNOME desktop

## Credits

Original Yaru theme:
https://github.com/ubuntu/yaru

Packaging fix for Debian Trixie:
https://github.com/wobbo/yaru-themes-debian-trixie
