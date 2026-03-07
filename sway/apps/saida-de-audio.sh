#!/bin/bash

# Listar as saídas de áudio disponíveis
echo "Saídas de áudio disponíveis:"
pactl list short sinks | awk '{print NR-1 ": " $2}'

# Solicitar ao usuário que escolha uma saída
read -p "Escolha o número da saída de áudio que deseja usar: " sink_number

# Obter o ID do sink correspondente ao número escolhido
sink_id=$(pactl list short sinks | awk "NR==$((sink_number+1)) {print \$2}")

# Verificar se o ID do sink foi encontrado
if [ -z "$sink_id" ]; then
    echo "Número inválido. Saindo."
    exit 1
fi

# Definir a saída de áudio padrão
pactl set-default-sink "$sink_id"

# Confirmar a mudança
echo "Saída de áudio alterada para: $sink_id"
