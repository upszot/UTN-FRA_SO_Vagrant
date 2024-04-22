#!/bin/bash

# Configuración a buscar y reemplazar
SEARCH_PATTERN="#?\s*PasswordAuthentication\s+no"
REPLACE_PATTERN="PasswordAuthentication yes"

# Buscar y reemplazar en /etc/ssh/sshd_config
sudo sed -i 's/'"$SEARCH_PATTERN"'/'"$REPLACE_PATTERN"'/g' /etc/ssh/sshd_config

# Buscar y reemplazar en todos los archivos dentro de /etc/ssh/sshd_config.d/
for file in /etc/ssh/sshd_config.d/*.conf; do
    sudo sed -i 's/'"$SEARCH_PATTERN"'/'"$REPLACE_PATTERN"'/g' "$file"
done

# Reiniciar el servicio SSH para aplicar los cambios
sudo systemctl restart sshd
