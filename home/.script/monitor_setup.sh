#!/bin/bash

# Detecta saídas conectadas (nomes dos monitores)
monitores=($(xrandr --query | grep " connected" | awk '{ print $1 }'))

# Função para iniciar a polybar em um monitor
start_polybar() {
    monitor=$1
    echo "Iniciando Polybar em $monitor..."
    MONITOR=$monitor polybar --reload bar1 &
}

killall -q polybar

# Verifica se há pelo menos dois monitores
if [ ${#monitores[@]} -ge 2 ]; then
    echo "Dois ou mais monitores detectados: ${monitores[@]}"
    
    # Caminho das imagens
    img_monitor1="$HOME/Pictures/wallpapers/wallpaper1"
    img_monitor2="$HOME/Pictures/wallpapers/wallpaper2"
    
    # Define o wallpaper para cada monitor
    feh --no-fehbg --bg-fill "$img_monitor2" "$img_monitor1"
		# Reinicia polybar para cada monitor
    for m in "${monitores[@]}"; do
        start_polybar "$m"
    done
else
    echo "Menos de dois monitores detectados. Usando wallpaper único."
    
    # Apenas um wallpaper para o único monitor
    img_unico="$HOME/Pictures/wallpapers/wallpaper2"
    feh --no-fehbg --bg-fill "$img_unico"
		start_polybar "${monitores[0]}"

fi

