#!/bin/bash

# CloudSpace Desktop Setup Script
# Automated installation of desktop environment and VNC server

set -e

echo "🖥️  CloudSpace Desktop Setup"
echo "============================"
echo ""

# Color codes
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Default values
DEFAULT_DE="xfce"
DEFAULT_VNC_PASSWORD="vncpassword"

echo -e "${BLUE}This script will install:${NC}"
echo "  • Desktop environment"
echo "  • VNC server"
echo "  • Basic GUI applications"
echo ""

# Ask for desktop environment
echo -e "${YELLOW}Choose your desktop environment:${NC}"
echo "  1) XFCE (Recommended - lightweight, feature-rich)"
echo "  2) LXDE (Ultra-lightweight, minimal resources)"
echo "  3) MATE (Traditional desktop experience)"
echo ""
read -p "Enter choice [1-3] (default: 1): " de_choice

case $de_choice in
    2) DESKTOP="lxde" ;;
    3) DESKTOP="mate" ;;
    *) DESKTOP="xfce" ;;
esac

echo ""
echo -e "${BLUE}Installing $DESKTOP desktop environment...${NC}"

# Update package list
sudo apt-get update

# Install desktop environment
case $DESKTOP in
    xfce)
        bash scripts/install-xfce.sh
        ;;
    lxde)
        bash scripts/install-lxde.sh
        ;;
    mate)
        bash scripts/install-mate.sh
        ;;
esac

# Setup VNC
bash scripts/setup-vnc.sh

echo ""
echo -e "${GREEN}✅ Installation complete!${NC}"
echo ""
echo -e "${BLUE}📡 Starting VNC server...${NC}"
bash scripts/start-desktop.sh

echo ""
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}🎉 CloudSpace Desktop is ready!${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${YELLOW}To connect:${NC}"
echo "  1. Go to the 'PORTS' tab in VS Code"
echo "  2. Find port 5901 (VNC)"
echo "  3. Click 'Open in Browser' or use a VNC client"
echo "  4. Password: vncpassword"
echo ""
echo -e "${YELLOW}⚠️  Security:${NC}"
echo "  Change your VNC password: vncpasswd"
echo ""
echo -e "${BLUE}Useful commands:${NC}"
echo "  Stop desktop:  vncserver -kill :1"
echo "  Start desktop: bash scripts/start-desktop.sh"
echo "  Change resolution: vncserver -geometry 1920x1080 :1"
echo ""
