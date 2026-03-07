#!/bin/bash

# Verifica o status do Wi-Fi
wifi_status=$(nmcli radio wifi)

if [ "$wifi_status" == "enabled" ]; then
    # Se o Wi-Fi estiver ativado, pergunta se deseja desativá-lo
    read -p "O Wi-Fi está ativado. Deseja desativá-lo? (s/n): " resposta
    if [[ "$resposta" == "s" || "$resposta" == "S" ]]; then
        nmcli radio wifi off
        echo "Wi-Fi desativado."
    else
        echo "Wi-Fi permanece ativado."
    fi
else
    # Se o Wi-Fi estiver desativado, pergunta se deseja ativá-lo
    read -p "O Wi-Fi está desativado. Deseja ativá-lo? (s/n): " resposta
    if [[ "$resposta" == "s" || "$resposta" == "S" ]]; then
        nmcli radio wifi on
        echo "Wi-Fi ativado."
    else
        echo "Wi-Fi permanece desativado."
    fi
fi
