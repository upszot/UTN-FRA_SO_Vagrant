# SO_Vagrant


## Se requiere tener previamente instalado en el equipo Host los siguientes programas
 - Virtualbox 
   - https://www.virtualbox.org/wiki/Downloads
 - Vagrant
   - https://developer.hashicorp.com/vagrant/downloads?product_intent=vagrant

 Opcionales
 - Putty / xshell
 - openssh


## Modo de uso

Algunos ejemplos del uso del comando vagrant a nivel global 
> Encontraran toda la documentacion de vagrant en su web oficial 
> https://developer.hashicorp.com/vagrant/docs 


```sh
# Usage: vagrant [options] <command> [<args>]

#Help / listado de comandos
vagrant -h

# Se puede consultar la ayuda por cada uno de los comandos
vagrant box -h
vagrant box list -h

# Listar plugins instalados
vagrant plugin list

# Listo todos los vagrantbox que tengo bajados en la pc
vagrant box list

#vagrant box remove <name>  -> Ejemplo quitar la box de rhel7
vagrant box remove generic/rhel7
```


| Posicionado dentro de la carpeta donde se encuentra el archivo de "vagrantfile" con la configuracion de la maquina virtual que se desea interactuar |
| :-- |

```sh
# Crear y dejar en running la/s VM definidas en el vagrantfile
vagrant up
# Apagar y Eliminar sin pedir confirmacion
vagrant destroy -f
```


## Contenido

| Directorio | Detail |
| :--: | -- |
| **Make_VagrantBox**	| Playbook de Ansible para generar un vagrantbox en base a una vm |
| **VagrantFiles** 		| Ejemplos de vagrantfile para levantar distintos equipos |


