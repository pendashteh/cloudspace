
```bash
#!/bin/bash

# Install XFCE Desktop Environment

set -e

echo "Installing XFCE desktop environment..."

# Install XFCE and essential packages
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y \
    xfce4 \
    xfce4-goodies \
    xfce4-terminal \
    firefox \
    dbus-x11 \
    fonts-liberation \
    fonts-dejavu

echo "✅ XFCE installed successfully"
```
