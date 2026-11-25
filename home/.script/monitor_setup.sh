#!/bin/bash

# Aplica o perfil do autorandr antes de detectar as saídas
# (quando chamado pelo hook postswitch, o perfil já foi aplicado)
if [ -z "$AUTORANDR_CURRENT_PROFILE" ]; then
    autorandr --change
fi

# Detecta saídas conectadas (nomes dos monitores)
monitores=($(xrandr --query | grep " connected" | awk '{ print $1 }'))

# Verifica se há pelo menos dois monitores
if [ ${#monitores[@]} -ge 2 ]; then
    echo "Dois ou mais monitores detectados: ${monitores[@]}"
    
    # Caminho das imagens
    img_monitor1="$HOME/Pictures/wallpapers/wallpaper1"
    img_monitor2="$HOME/Pictures/wallpapers/wallpaper2"
    
    # Define o wallpaper para cada monitor
    feh --no-fehbg --bg-fill "$img_monitor2" "$img_monitor1"
else
    echo "Menos de dois monitores detectados. Usando wallpaper único."
    
    # Apenas um wallpaper para o único monitor
    img_unico="$HOME/Pictures/wallpapers/wallpaper2"
    feh --no-fehbg --bg-fill "$img_unico"
fi

