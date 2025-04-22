#!/bin/bash

# Habilita la opción para agregar nuevos comandos al final del historial de comandos.
shopt -s histappend
# guardar comandos con múltiples líneas como una sola entrada.
shopt -s cmdhist

# 3. Verificar y crear el archivo de historial si no existe, y establecer permisos.
if [ ! -f ~/.bash_history ]; then
  touch ~/.bash_history
  chmod 600 ~/.bash_history
fi
sudo chattr +a ~/.bash_history

# Agrega configuración al final del archivo .bashrc
cat << EOF >> ~/.bashrc


###########################################################
# Configuración del historial de comandos   
###########################################################
# HISTSIZE: Máximo comandos en memoria (-1 = ilimitado).
export HISTSIZE=-1
# HISTFILESIZE: Máximo líneas en ~/.bash_history (-1 = ilimitado).
export HISTFILESIZE=-1
# PROMPT_COMMAND: Actualiza el historial al ejecutar cada comando.
export PROMPT_COMMAND="history -a; history -c; history -r; \$PROMPT_COMMAND"
EOF

# Recarga el archivo .bashrc para aplicar los cambios.
. ~/.bashrc
# Forzar una escritura inmediata del historial de la sesión actual al archivo.
history -a

echo
exit 0

