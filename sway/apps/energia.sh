#!/bin/bash

# Exibe as opções para o usuário
echo "Olá! O que você deseja fazer:"
echo "1) Desligar"
echo "2) Reiniciar"

# Lê a escolha do usuário
read -p "Escolha uma opção (1 ou 2): " opcao

# Verifica a escolha do usuário e executa o comando correspondente
if [ "$opcao" -eq 1 ]; then
    echo "Desligando o sistema..."
    systemctl poweroff
elif [ "$opcao" -eq 2 ]; then
    echo "Reiniciando o sistema..."
    systemctl reboot
else
    echo "Opção inválida!"
fi
