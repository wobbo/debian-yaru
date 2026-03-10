# Yaru Themes for Debian Trixie

Corrected Yaru theme packages for **GNOME on Debian Trixie**.

Debian Trixie currently ships a Yaru theme version that does not match the GNOME version in the distribution.
This causes visual issues in the desktop environment.

This repository provides rebuilt Yaru theme packages that work correctly with the GNOME version used in Debian Trixie.

## Problem description

More information about the issue can be found here:

* [GUIDE: Install GNOME on Raspberry Pi OS Lite](https://forums.raspberrypi.com/viewtopic.php?t=373028#p2233233)
* [FIX: Yaru theme .deb for Raspberry Pi OS (Debian 13, GNOME 48)](https://forums.raspberrypi.com/viewtopic.php?t=393000#p2344104)

## Included packages

* [yaru-theme-gtk](https://github.com/wobbo/yaru-themes-debian-trixie/releases/download/v1/yaru-theme-gtk_25.04.1-0ubuntu1_all.deb)
* [yaru-theme-gnome-shell](https://github.com/wobbo/yaru-themes-debian-trixie/releases/download/v1/yaru-theme-gnome-shell_25.04.1-0ubuntu1_all.deb)
* [yaru-theme-icon](https://github.com/wobbo/yaru-themes-debian-trixie/releases/download/v1/yaru-theme-icon_25.04.1-0ubuntu1_all.deb)
* [yaru-theme-sound](https://github.com/wobbo/yaru-themes-debian-trixie/releases/download/v1/yaru-theme-sound_25.04.1-0ubuntu1_all.deb)
* [yaru-theme-unity](https://github.com/wobbo/yaru-themes-debian-trixie/releases/download/v1/yaru-theme-unity_25.04.1-0ubuntu1_all.deb)

## Install (direct download)

Download and install the Yaru theme packages:

```bash
wget https://github.com/wobbo/yaru-themes-debian-trixie/releases/download/v1/yaru-theme-gnome-shell_25.04.1-0ubuntu1_all.deb
wget https://github.com/wobbo/yaru-themes-debian-trixie/releases/download/v1/yaru-theme-gtk_25.04.1-0ubuntu1_all.deb
wget https://github.com/wobbo/yaru-themes-debian-trixie/releases/download/v1/yaru-theme-icon_25.04.1-0ubuntu1_all.deb
wget https://github.com/wobbo/yaru-themes-debian-trixie/releases/download/v1/yaru-theme-sound_25.04.1-0ubuntu1_all.deb
wget https://github.com/wobbo/yaru-themes-debian-trixie/releases/download/v1/yaru-theme-unity_25.04.1-0ubuntu1_all.deb

sudo apt install ./yaru-theme-*.deb
```

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
