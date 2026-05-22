# Yaru Themes for Debian Trixie

Corrected Yaru theme packages for **GNOME on Debian Trixie**.

        

> **Important note about Ubuntu 26.04 packages**
>
> The Ubuntu 26.04 `yaru-theme-gnome-shell` and `yaru-theme-gtk` packages do **not** work correctly on Debian Trixie / GNOME.
> For those two packages, this repository still uses the Ubuntu **25.04** versions.
>
> The icon, sound and unity packages can use the Ubuntu **26.04** versions.

        

Debian Trixie currently ships a Yaru theme version that does not match the GNOME version in the distribution.
This causes visual issues in the desktop environment.

This repository provides rebuilt Yaru theme packages that work correctly with the GNOME version used in Debian Trixie.

![Debian Trixie Yaru theme](https://wobbo.org/screenshots/20251020_bug_01.png)

        

## Themes Ubunbu 25.04    ⟶    26.04

* [Ubuntu 25.04 Theme](https://github.com/wobbo/debian-yaru/releases/tag/v1)
* [Ubuntu 26.04 Theme](https://github.com/wobbo/debian-yaru/releases/tag/v2)
* [GUIDE: Install GNOME on Raspberry Pi OS Lite](https://forums.raspberrypi.com/viewtopic.php?t=373028#p2233233)
* [FIX: Yaru theme .deb for Raspberry Pi OS (Debian 13, GNOME 48)](https://forums.raspberrypi.com/viewtopic.php?t=393000#p2344104)
* [LibreOffice Yaru Theme for Raspberry Pi OS Trixie (Debian 13)](https://forums.raspberrypi.com/viewtopic.php?t=393058#p2344404)


![Debian Trixie Yaru theme](https://wobbo.org/screenshots/202026-05-22_Yaru-25_Yaru-26_mini.webp)

        




        

## Included packages Ubunbu 25.04
![Debian Trixie Yaru theme](https://wobbo.org/screenshots/202026-05-22_Yaru-25_mini.webp)
* [gnome-auto-yaru.sh](https://raw.githubusercontent.com/wobbo/debian-yaru/main/gnome-auto-yaru_2025-10-07.sh)
* [gnome-auto-yaru.service](https://raw.githubusercontent.com/wobbo/debian-yaru/main/gnome-auto-yaru_2025-10-07.service)
* GTK [yaru-theme-gtk_25.04.1-0ubuntu1_all.deb](https://github.com/wobbo/debian-yaru/releases/download/v1/yaru-theme-gtk_25.04.1-0ubuntu1_all.deb)
* SHELL [yaru-theme-gnome-shell_25.04.1-0ubuntu1_all.deb](https://github.com/wobbo/debian-yaru/releases/download/v1/yaru-theme-gnome-shell_25.04.1-0ubuntu1_all.deb)
* ICON [yaru-theme-icon_25.04.1-0ubuntu1_all.deb](https://github.com/wobbo/debian-yaru/releases/download/v1/yaru-theme-icon_25.04.1-0ubuntu1_all.deb)
* SOUND [yaru-theme-sound_25.04.1-0ubuntu1_all.deb](https://github.com/wobbo/debian-yaru/releases/download/v1/yaru-theme-sound_25.04.1-0ubuntu1_all.deb)
* UNITY [yaru-theme-unity_25.04.1-0ubuntu1_all.deb](https://github.com/wobbo/debian-yaru/releases/download/v1/yaru-theme-unity_25.04.1-0ubuntu1_all.deb)

        

## Included packages Ubunbu 26.04
![Debian Trixie Yaru theme](https://wobbo.org/screenshots/202026-05-22_Yaru-26_mini.webp)
* [gnome-auto-yaru.sh](https://raw.githubusercontent.com/wobbo/debian-yaru/main/gnome-auto-yaru_2025-10-07.sh)
* [gnome-auto-yaru.service](https://raw.githubusercontent.com/wobbo/debian-yaru/main/gnome-auto-yaru_2025-10-07.service)
* GTK [yaru-theme-gtk_26.04.5-0ubuntu1_all.deb](https://github.com/wobbo/debian-yaru/releases/download/v2/yaru-theme-gtk_26.04.5.1ubuntu_all.deb)
* SHELL [yaru-theme-gnome-shell_26.04.5-0ubuntu1_all.deb](https://github.com/wobbo/debian-yaru/releases/download/v2/yaru-theme-gnome-shell_26.04.5.1ubuntu_all.deb)
* ICON [yaru-theme-icon_26.04.5-0ubuntu1_all.deb](https://github.com/wobbo/debian-yaru/releases/download/v2/yaru-theme-icon_26.04.5.1ubuntu_all.deb)
* SOUND [yaru-theme-sound_26.04.5-0ubuntu1_all.deb](https://github.com/wobbo/debian-yaru/releases/download/v2/yaru-theme-sound_26.04.5.1ubuntu_all.deb)
* UNITY [yaru-theme-unity_26.04.5-0ubuntu1_all.deb](https://github.com/wobbo/debian-yaru/releases/download/v2/yaru-theme-unity_26.04.5.1ubuntu_all.deb)

        

        

## Install (direct download)

Download and install the Yaru theme packages Ubuntu 25.04:

```bash
wget https://github.com/wobbo/debian-yaru/releases/download/v1/yaru-theme-gnome-shell_25.04.1-0ubuntu1_all.deb
wget https://github.com/wobbo/debian-yaru/releases/download/v1/yaru-theme-gtk_25.04.1-0ubuntu1_all.deb
wget https://github.com/wobbo/debian-yaru/releases/download/v1/yaru-theme-icon_25.04.1-0ubuntu1_all.deb
wget https://github.com/wobbo/debian-yaru/releases/download/v1/yaru-theme-sound_25.04.1-0ubuntu1_all.deb
wget https://github.com/wobbo/debian-yaru/releases/download/v1/yaru-theme-unity_25.04.1-0ubuntu1_all.deb

sudo apt install ./yaru-theme-*.deb
```
Download and install the Yaru theme packages Ubuntu 26.04:

> **Note:** the Ubuntu 26.04 `gnome-shell` and `gtk` Yaru packages are currently not working correctly on Debian Trixie / GNOME.
> Therefore this install set still uses the Ubuntu **25.04** packages for:
>
> * `yaru-theme-gnome-shell`
> * `yaru-theme-gtk`
>
> The other Yaru packages use the Ubuntu **26.04** versions.

        

```bash
wget https://github.com/wobbo/debian-yaru/releases/download/v2/yaru-theme-icon_26.04.5.1ubuntu_all.deb
wget https://github.com/wobbo/debian-yaru/releases/download/v2/yaru-theme-sound_26.04.5.1ubuntu_all.deb

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
[https://github.com/wobbo/yaru-themes-debian-trixie](https://github.com/wobbo/debian-yaru/releases/tag/v1)
