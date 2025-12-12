#!/bin/bash

# Install MATE Desktop Environment

set -e

echo "Installing MATE desktop environment..."

# Install MATE and essential packages
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y \
    mate-desktop-environment \
    mate-terminal \
    firefox \
    dbus-x11 \
    fonts-liberation \
    fonts-dejavu

echo "✅ MATE installed successfully"
