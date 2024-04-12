# SO_Vagrant


## Se requiere tener previamente instalado en el equipo Host los siguientes programas
 - Virtualbox 
   - [VirtualBox Instalable](https://www.virtualbox.org/wiki/Downloads)
   - [Manual de VBoxManage command-line](https://www.virtualbox.org/manual/ch08.html#vboxmanage-intro)
 - Vagrant
   - [Vagrant Instalable](https://developer.hashicorp.com/vagrant/downloads?product_intent=vagrant)
   - [Vagrant Cloud Boxes](https://app.vagrantup.com/boxes/search)

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

## Info Extra

- [Video - Creacion Vagrant Boxes](https://www.youtube.com/watch?v=TUfciJ7tynY)

- [vagrantfile hyper-v](https://learn.microsoft.com/en-us/virtualization/community/team-blog/2017/20170706-vagrant-and-hyper-v-tips-and-tricks)
- [Vagrantfile windows](https://dev.to/sannae/setting-up-windows-virtual-test-environments-with-vagrant-4k1b)

