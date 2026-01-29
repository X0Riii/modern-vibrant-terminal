#!/bin/bash

########################################################
# Modern Vibrant Terminal - Cross Distro
# Author: Abderrahim KOUBBI
########################################################

set -e

OK=()
FAIL=()

log_ok()   { OK+=("$1"); }
log_fail() { FAIL+=("$1"); }

echo "=========================================="
echo " Modern Vibrant Terminal Installer"
echo "=========================================="

# -------- Detect package manager ----------
if command -v apt >/dev/null; then
  PM="apt"
elif command -v pacman >/dev/null; then
  PM="pacman"
elif command -v dnf >/dev/null; then
  PM="dnf"
elif command -v zypper >/dev/null; then
  PM="zypper"
else
  echo "❌ Unsupported package manager"
  exit 1
fi

log_ok "Package manager detected: $PM"

# -------- Install dependencies ----------
install_pkg () {
  case "$PM" in
    apt) sudo apt install -y "$1" ;;
    pacman) sudo pacman -S --noconfirm "$1" ;;
    dnf) sudo dnf install -y "$1" ;;
    zypper) sudo zypper install -y "$1" ;;
  esac
}

REQ_PKGS=(neofetch lolcat)

for pkg in "${REQ_PKGS[@]}"; do
  if ! command -v "$pkg" >/dev/null 2>&1; then
    install_pkg "$pkg" && log_ok "Installed $pkg" || log_fail "Failed $pkg"
  else
    log_ok "$pkg already installed"
  fi
done

# -------- Backup bashrc ----------
cp ~/.bashrc ~/.bashrc.backup.modern.$(date +%F-%H%M%S)
log_ok "Backup .bashrc created"

# -------- Dircolors ----------
cat > ~/.dircolors << 'EOF'
DIR 38;5;39
EXEC 38;5;46
LINK 38;5;51
ARCHIVE 38;5;203
IMAGE 38;5;213
VIDEO 38;5;141
AUDIO 38;5;80
TEXT 38;5;228
.sh 38;5;46
.py 38;5;220
.js 38;5;75
.zip 38;5;203
.tar 38;5;203
.gz 38;5;203
.pdf 38;5;214
EOF

log_ok "Dircolors applied"

# -------- Apply bash config ----------
cat << 'EOF' >> ~/.bashrc

# ==================================================
# Modern Vibrant Terminal (Cross Distro)
# ==================================================

# Prompt
export PS1="\[\e[38;5;46m\]\u@\h\[\e[0m\] \[\e[38;5;39m\]\w\[\e[0m\] \[\e[38;5;141m\]❯\[\e[0m\] "

# Enable colors
eval "$(dircolors ~/.dircolors)"

# Aliases
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -lah --color=auto'
alias la='ls -A --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias df='df -h'
alias du='du -h'

# Pager
export LESS='-R'
export PAGER=less

# History
HISTCONTROL=ignoredups:erasedups
shopt -s histappend
shopt -s autocd

# Neofetch
command -v neofetch >/dev/null && neofetch | lolcat
EOF

log_ok "Terminal style applied"

# -------- Report ----------
echo
echo "=========================================="
echo " INSTALL REPORT"
echo "=========================================="

for i in "${OK[@]}"; do echo " ✔ $i"; done
for i in "${FAIL[@]}"; do echo " ✖ $i"; done

echo
echo "Done!"
echo "Close terminal and open a new one."
echo "Enable transparency from terminal settings (10–15%)."
