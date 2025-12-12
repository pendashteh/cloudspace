#!/bin/bash

# Setup VNC Server

set -e

echo "Installing VNC server..."

# Install TigerVNC server
sudo apt-get install -y tigervnc-standalone-server tigervnc-common

# Create VNC directory
mkdir -p ~/.vnc

# Set VNC password
echo "Setting up VNC password..."
echo -e "vncpassword\nvncpassword\nn" | vncpasswd

# Create xstartup file
cat > ~/.vnc/xstartup << 'EOF'
#!/bin/bash
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
export XKL_XMODMAP_DISABLE=1

# Detect which desktop environment is installed
if command -v startxfce4 &> /dev/null; then
    exec startxfce4
elif command -v startlxde &> /dev/null; then
    exec startlxde
elif command -v mate-session &> /dev/null; then
    exec mate-session
else
    exec /bin/bash
fi
EOF

chmod +x ~/.vnc/xstartup

echo "✅ VNC server configured"
