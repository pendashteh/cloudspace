#!/bin/bash

# Install LXDE Desktop Environment

set -e

echo "Installing LXDE desktop environment..."

# Install LXDE and essential packages
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y \
    lxde \
    lxterminal \
    firefox \
    dbus-x11 \
    fonts-liberation \
    fonts-dejavu

echo "✅ LXDE installed successfully"
