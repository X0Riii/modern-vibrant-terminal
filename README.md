# Modern Vibrant Terminal

![Bash](https://img.shields.io/badge/Shell-Bash-green)
![Linux](https://img.shields.io/badge/Platform-Linux-blue)
![Cross-Distro](https://img.shields.io/badge/Cross--Distro-Yes-brightgreen)

A **modern, vibrant, and clean terminal experience** for Linux.  
One script transforms your terminal into a colorful, readable, and professional environment  
with transparent background support and **neofetch** integration.

---

## 🖼️ Preview

### 🔹 Default Terminal View
![Default Preview](assets/preview-1.png)

### 🔹 Colored Commands & Output
![Commands Preview](assets/preview-2.png)

### 🔹 Transparent Background
![Transparent Preview](assets/preview-3.png)

---

## ✨ Features

- Modern vibrant prompt (user / host / path)
- Clear and colorful file & extension highlighting
- Readable command output & errors
- Automatic **neofetch** display
- Transparent background ready
- Cross-distribution compatible
- Safe installation with automatic backup

---

## 📦 Supported Distributions

- Linux Mint (Cinnamon recommended)
- Ubuntu / Debian
- Arch Linux / Manjaro
- Fedora
- openSUSE

---
🎨 Enable Transparency

Transparency depends on your terminal emulator.

For GNOME Terminal / Mint Terminal:

- Open Terminal
- Go to Preferences
- Select your Profile
- Open Colors
- Disable "Use colors from system theme"
- Enable Transparent background
- Recommended value: 10–15%

🔒 Safety & Notes

- Your .bashrc is backed up automatically before any change
- No destructive commands are used
- Works only with bash (default shell)
- neofetch is preserved and enhanced
- Fully reversible using the backup file

🧹 Uninstall (Manual)

To revert changes:

cp ~/.bashrc.backup.* ~/.bashrc
exec bash

📜 License

GNU General Public License v3.0

Made with ❤️ for Linux users who love clean, modern terminals.


## 🚀 Installation

Clone the repository and run the installer:

```bash
git clone https://github.com/YOUR_USERNAME/modern-vibrant-terminal.git
cd modern-vibrant-terminal
chmod +x install.sh
./install.sh
After installation, close all terminal windows and open a new one.

