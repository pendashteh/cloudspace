#!/bin/bash

# Start VNC Desktop

set -e

# Kill any existing VNC sessions
vncserver -kill :1 2>/dev/null || true

# Start VNC server with specified resolution
echo "Starting VNC server..."
vncserver :1 -geometry 1600x900 -depth 24

echo ""
echo "✅ VNC server started on display :1"
echo "📡 Connect on port 5901"
echo "🔑 Default password: vncpassword"
echo ""
echo "To stop: vncserver -kill :1"
