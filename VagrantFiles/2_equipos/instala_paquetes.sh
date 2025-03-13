#!/bin/bash


echo " Evita interacción del usuario durante la instalación de paquetes"
export DEBIAN_FRONTEND=noninteractive

echo "  Actualiza la lista de paquetes disponibles desde los repositorios"
sudo apt-get update > /dev/null

echo " Instalo: tree ansible ca-certificates curl"
sudo apt-get install -y tree ansible ca-certificates curl < /dev/null >  /dev/null



#----- INSTALACION DE DOCKER SEGUN DOCUMENTACION OFICIAL -----#
# https://docs.docker.com/engine/install/ubuntu/

echo " Remuevo cualquier paquete de docker que este instalado en el equipo."
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove -y $pkg; done


echo " Add Docker's official GPG key:"
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo " Add the repository to Apt sources:"
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "  Actualiza la lista de paquetes disponibles desde los repositorios"
sudo apt-get update > /dev/null

echo " Instalo todos los paquetes de docker"
sudo apt-get install -y  docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo " Añado el grupo docker al usuario"
sudo usermod -a -G docker vagrant

echo " Seteo en enable y starteo el servicio de docker"
sudo systemctl enable --now docker

#-------------------------------------------------------------#

