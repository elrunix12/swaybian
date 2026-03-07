#!/bin/bash

STATE_FILE="$HOME/.config/sway/current_workspace"
MAX_WORKSPACES=10
DIRECTION=$1

# Lê o número atual do workspace (padrão: 1)
if [[ -f "$STATE_FILE" ]]; then
  current=$(cat "$STATE_FILE")
else
  current=1
fi

# Calcula o novo workspace com base na direção
if [[ "$DIRECTION" == "next" ]]; then
  new=$((current + 1))
  if [[ $new -gt $MAX_WORKSPACES ]]; then
    new=1
  fi
elif [[ "$DIRECTION" == "prev" ]]; then
  new=$((current - 1))
  if [[ $new -lt 1 ]]; then
    new=$MAX_WORKSPACES
  fi
else
  exit 1
fi

# Atualiza o número atual
echo "$new" > "$STATE_FILE"

# Alterna para o workspace (mesmo que vazio)
swaymsg workspace number "$new"
