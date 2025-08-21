#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y tmux 

# Use a COPR Example:
#
dnf5 -y copr enable solopasha/hyprland
dnf5 -y copr enable scottames/ghostty
dnf5 -y copr enable errornointernet/walker
dnf5 -y copr enable errornointernet/packages
dnf5 -y copr enable markupstart/SwayOSD

# dnf5 -y install package
dnf5 -y install hyprland
dnf5 -y install hyprland-devel
dnf5 -y install xdg-desktop-portal-hyprland
dnf5 -y install hyprpolkitagent
dnf5 -y install wofi
dnf5 -y install waybar
dnf5 -y install ghostty
dnf5 -y install wlogout
dnf5 -y install swaync
dnf5 -y install walker
dnf5 -y install gtk4-layer-shell
dnf5 -y install alacritty
dnf5 -y install swaybg
dnf5 -y install swayosd
dnf5 -y install mako

dnf5 -y copr disable solopasha/hyprland
dnf5 -y copr disable scottames/ghostty
dnf5 -y copr disable errornointernet/walker
dnf5 -y copr disable errornointernet/packages
dnf5 -y copr disable markupstart/SwayOSD
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
