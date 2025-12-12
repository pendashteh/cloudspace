# 🖥️ CloudSpace Desktop

**Transform your GitHub Codespace into a full Linux desktop environment with VNC access in minutes.**

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Ubuntu](https://img.shields.io/badge/Ubuntu-22.04-orange.svg)

## 🎯 What is this?

CloudSpace Desktop lets you run a complete Linux desktop environment inside GitHub Codespaces with VNC remote access. Perfect for:

- 🧪 Testing GUI applications in the cloud
- 🌐 Running browsers for web development and testing
- 🎨 Using desktop-based design tools
- 🤖 Browser automation with Selenium/Playwright in real browsers
- 📊 Running data visualization tools
- 🎓 Learning Linux desktop environments in a safe sandbox

## ⚡ Quick Start (One Command)

Open this repository in GitHub Codespaces, then run:

```bash
bash setup.sh
```

That's it! Follow the on-screen instructions to connect via VNC.

## 🎨 Desktop Environment Options

Choose your preferred desktop environment:

- **XFCE** (Default) - Lightweight, fast, perfect for Codespaces
- **LXDE** - Ultra-lightweight, minimal resource usage
- **MATE** - Traditional desktop experience

```bash
# Install specific desktop environment
bash scripts/install-xfce.sh   # Recommended
bash scripts/install-lxde.sh
bash scripts/install-mate.sh
```

## 📡 Connecting via VNC

### Option 1: VS Code Extension (Easiest)
1. Install the "VNC Viewer" extension in VS Code
2. Open the Ports tab
3. Click on the VNC port (5901) to connect

### Option 2: VNC Client
1. Forward port 5901 in the Ports tab
2. Get the forwarded URL
3. Use any VNC client (TigerVNC, RealVNC, etc.)
4. Connect to: `localhost:5901`
5. Password: `vncpassword` (default, change in setup)

### Option 3: SSH Tunnel (Most Secure)
```bash
ssh -L 5901:localhost:5901 codespace-name
```

## 🔐 Security Best Practices

⚠️ **Important**: The default VNC password is `vncpassword`. Change it immediately:

```bash
vncpasswd
```

See [docs/SECURITY.md](docs/SECURITY.md) for comprehensive security guidelines.

## 📚 Documentation

- [Manual Setup Guide](docs/MANUAL_SETUP.md) - Step-by-step instructions
- [Desktop Environments](docs/DESKTOP_ENVIRONMENTS.md) - Detailed DE comparison
- [Security Guide](docs/SECURITY.md) - Hardening your VNC setup
- [Troubleshooting](docs/TROUBLESHOOTING.md) - Common issues and fixes

## 🛠️ Advanced Usage

### Custom Resolution
```bash
vncserver -geometry 1920x1080 :1
```

### Start/Stop Desktop
```bash
bash scripts/start-desktop.sh   # Start
vncserver -kill :1              # Stop
```

### Install Additional Software
```bash
sudo apt update
sudo apt install firefox chromium-browser gimp
```

## 🚀 Use Cases

### Web Development
Test your websites in real browsers with devtools, test responsive designs, debug browser-specific issues.

### GUI Application Development
Develop and test Electron apps, build desktop applications, run GUI frameworks.

### Automation & Testing
Run Selenium with real browsers, test Playwright scripts, automated UI testing.

### Learning & Experimentation
Safe Linux desktop environment, learn system administration, experiment without consequences.

## 💾 What Gets Installed?

- Desktop environment (XFCE/LXDE/MATE)
- TigerVNC server
- Basic utilities (text editor, file manager, terminal)
- Firefox browser
- Essential fonts and themes

Total size: ~500MB-800MB depending on DE choice

## 🤝 Contributing

Contributions welcome! Feel free to:
- Add support for more desktop environments
- Improve security configurations
- Add useful pre-installed applications
- Enhance documentation

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details.

## ⚠️ Resource Considerations

GitHub Codespaces have resource limits. This setup is optimized for:
- 2-core machines: XFCE or LXDE recommended
- 4-core machines: Any DE works well
- 8-core machines: Full-featured desktop experience

## 🙋 Support

- Check [Troubleshooting Guide](docs/TROUBLESHOOTING.md)
- Open an issue for bugs or questions
- Discussions for ideas and help

---

**Made with ☁️ for the cloud-native developer**
