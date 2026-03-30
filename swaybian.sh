#!/bin/bash

# Instalar pacotes de áudio e vídeo
apt install -y firmware-intel-sound i965-va-driver-shaders

# Instalar pacotes Sway e Wayland
apt install -y sway swayidle swaylock xdg-desktop-portal-wlr wdisplays wofi swappy grim slurp wl-clipboard brightnessctl waybar wob

# Instalar gerenciador de arquivos e gtk
apt install -y --no-install-recommends thunar thunar-archive-plugin thunar-media-tags-plugin gvfs-backends gvfs-fuse gnome-themes-extra libglib2.0-bin  xdg-desktop-portal-gtk thunar-volman
apt install xarchiver

# Instalar navegador
apt install -y firefox-esr-l10n-pt-br

# Instalar pacotes de multimídia
apt install -y mpv imv
apt install --no-install-recommends gthumb

# Instalar pacotes de OCR e idiomas
apt install -y tesseract-ocr-por myspell-pt-br hunspell-pt-br mythes-pt-br hyphen-pt-br

# Instalar outros utilitários
apt install -y systemd-zram-generator network-manager jq git mousepad tree love python3-venv gsimplecal sway-notification-center pandoc citation-style-language-styles

# Instalar pacotes de escritório
apt install -y -t trixie-backports --no-install-recommends libreoffice-writer libreoffice-calc libreoffice-draw libreoffice-impress libreoffice-math libreoffice-l10n-pt-br libreoffice-gtk3

echo "Instalação concluída!"
