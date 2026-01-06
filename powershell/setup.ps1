# ===============================
# Neovim + Dotfiles Setup (Windows)
# ===============================

$ErrorActionPreference = "Stop"

Write-Host "==> Starting Windows Neovim setup"

# PATHS
$HOME_DIR = $env:USERPROFILE
$DOTFILES_DIR = "$HOME_DIR\.local\src\dotfiles"
$NVIM_CONFIG = "$HOME_DIR\AppData\Local\nvim"
$NVIM_BACKUP = "$HOME_DIR\AppData\Local\nvim.backup"
$LAZY_DIR = "$HOME_DIR\AppData\Local\nvim-data\lazy\lazy.nvim"

# -------------------------------
# BASE DIRECTORIES
# -------------------------------
Write-Host "==> Creating base directories"
New-Item -ItemType Directory -Force -Path "$HOME_DIR\.local\src" | Out-Null
New-Item -ItemType Directory -Force -Path "$HOME_DIR\AppData\Local\nvim-data\lazy" | Out-Null

# -------------------------------
# DOTFILES (HTTPS)
# -------------------------------
if (!(Test-Path $DOTFILES_DIR)) {
  Write-Host "==> Cloning dotfiles (HTTPS)"
  git clone https://github.com/xero/dotfiles.git $DOTFILES_DIR
} else {
  Write-Host "==> Dotfiles already exist"
}

# -------------------------------
# NVIM BACKUP
# -------------------------------
if (Test-Path $NVIM_CONFIG) {
  if (!(Test-Path $NVIM_BACKUP)) {
    Write-Host "==> Backing up existing nvim config"
    Move-Item $NVIM_CONFIG $NVIM_BACKUP
  } else {
    Write-Host "==> Backup already exists, skipping"
  }
}

# -------------------------------
# COPY NVIM CONFIG (SI EXISTE)
# -------------------------------
$DOTFILES_NVIM = "$DOTFILES_DIR\neovim"

if (Test-Path $DOTFILES_NVIM) {
  Write-Host "==> Installing Neovim config"
  New-Item -ItemType Directory -Force -Path $NVIM_CONFIG | Out-Null
  Copy-Item "$DOTFILES_NVIM\*" $NVIM_CONFIG -Recurse -Force
}
