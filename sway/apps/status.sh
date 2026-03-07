#!/bin/bash

while true; do
    # Hora atual formatada
    hora=$(date "+%H:%M")

    # Data formatada
    data=$(date "+%d %B %Y %A")

    # Percentual da bateria de forma mais eficiente
    bateria=$(< /sys/class/power_supply/BAT0/capacity)

    #Volume
#    volume=$(pactl get-sink-volume 0 | awk '{print $5}')

    #Brilho
#    brilho=$(cat /sys/class/backlight/intel_backlight/brightness)

    # Exibindo os valores
    echo "Bateria $bateria% | Hora $hora | Data $data"

    # Aguardar 2 segundo antes de executar novamente
    sleep 5
done
