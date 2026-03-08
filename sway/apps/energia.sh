#!/bin/bash

# Cria a lista de opções
opcoes="⏻  Desligar\n  Reiniciar\n󰒲  Suspender\n󰗽  Sair do Sway"

# Mostra as opções no Wofi e guarda a escolha
escolha=$(echo -e "$opcoes" | wofi --show dmenu --prompt "Energia:" --width 250 --height 230)

# Executa o comando baseado na escolha
case "$escolha" in
    "⏻  Desligar") systemctl poweroff ;;
    "  Reiniciar") systemctl reboot ;;
    "󰒲  Suspender") systemctl suspend ;;
    "󰗽  Sair do Sway") swaymsg exit ;;
esac
