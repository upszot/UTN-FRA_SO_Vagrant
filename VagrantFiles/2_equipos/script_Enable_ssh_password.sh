#!/bin/bash

# Configuración a buscar y reemplazar
SEARCH_PATTERN="^\s*#\?\s*PasswordAuthentication\s*no"
REPLACE_PATTERN="PasswordAuthentication yes"

# Buscar y reemplazar en /etc/ssh/sshd_config
sudo sed -i "s|$SEARCH_PATTERN|$REPLACE_PATTERN|g" /etc/ssh/sshd_config
#sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config

# Buscar y reemplazar en todos los archivos dentro de /etc/ssh/sshd_config.d/
if compgen -G "/etc/ssh/sshd_config.d/*.conf" > /dev/null; then
    for file in /etc/ssh/sshd_config.d/*.conf; do
        sudo sed -i "s|$SEARCH_PATTERN|$REPLACE_PATTERN|g" "$file"
    done
fi

# Reiniciar el servicio SSH para aplicar los cambios
sudo systemctl restart sshd
