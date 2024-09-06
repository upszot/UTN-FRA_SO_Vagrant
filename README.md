# UTN-FRA_SO_Vagrant

- [**Que es Vagrant?**](https://www.youtube.com/watch?v=Ud7cmVCNACE)
>Vagrant es una aplicación libre desarrollada en ruby que nos permite crear y personalizar entornos de desarrollo livianos, reproducibles y portables. Vagrant nos permite automatizar la creación y gestión de máquinas virtuales. Las máquinas virtuales creadas por vagrant se pueden ejecutar con distintos gestores de máquinas virtuales
> Oficialmente (VirtualBox, VMWare, KVM,…), pero existen desarrollos para utilizar multiples provider (google , aws, Openstak, vcenter, OpenShift) [Available-Vagrant-Plugins](https://github.com/hashicorp/vagrant/wiki/Available-Vagrant-Plugins#providers) en nuestros ejemplo vamos a usar máquinas virtuales en VirtualBox.
>
>El objetivo principal de vagrant es aproximar los entornos de desarrollo y producción, de esta manera el desarrollador tiene a su disposición una manera  muy sencilla de desplegar una infraestructura similar a la que se va a tener en entornos de producción. A los administradores de sistemas les facilita la creación de infraestrucutras de prueba y desarrollo.
>
>Para más información tienes a tu disposición toda la documentación en su página oficial: http://www.vagrantup.com/


## Se requiere tener previamente instalado en el equipo Host los siguientes programas
  - Virtualbox 
    - [VirtualBox Instalable](https://www.virtualbox.org/wiki/Downloads)
  - Vagrant
    - [Vagrant Instalable](https://developer.hashicorp.com/vagrant/downloads?product_intent=vagrant)
    - Verifique que la version de vagrant sea compatible con su version de VirtualBox [Vagrant VirtualBox provider](https://developer.hashicorp.com/vagrant/docs/providers/virtualbox)
  - Otros Programas Opcionales:
    - `Git Bash`: Terminal donde podra ejecutar comandos (Recomendable para "vagrant ssh")
    - `MobaXterm`: Terminal donde podra ejecutar comandos ("vagrant ssh" Provoca un fallo, pero sirve para un ssh normal)
    - `Putty`: Conectarse a otros equipos por protocolo ssh (terminal)
    - `winscp`: Copiar archivos entre equipos con GUI 
  - Puede buscar imagenes de una Vagrant Box en [Vagrant Cloud Boxes](https://app.vagrantup.com/boxes/search)

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

# Apagar la vm sin eliminarla (una forma de mantener persistencia de datos)
vagrant halt
```


## Contenido

| Directorio | Detail |
| :--: | -- |
| **VagrantFiles** 		| Ejemplos de vagrantfile para levantar distintos equipos |
| (En desarrollo) **Make_VagrantBox**	| Playbook de Ansible para generar un vagrantbox en base a una vm |

## Documentacion:
- [ ] Vagrant
   - [Doc. Vagrantfile](https://developer.hashicorp.com/vagrant/docs/vagrantfile)
     - [multi-machine](https://developer.hashicorp.com/vagrant/docs/multi-machine)
- [ ] VirtualBox
   - [Manual de VBoxManage command-line](https://www.virtualbox.org/manual/ch08.html#vboxmanage-intro)

## Base de Conocimiento de Errores que les puedan surgir.
- [Creacion VM (vagrant up)](extras/knowledge_DB/vagratn_up.md)
- [Conectar contra la vm (vagrant ssh o ssh vagrant@ip)](extras/knowledge_DB/Conexion.md)

> La idea es que tengan al alcance posibles errores que les pueda surgir y como solucionarlos.
> En caso de que su Problema no se solucione por alguno de estos metodos.
> Habra que buscar la solucion por internet, o generar una issue en vagrant... 
> De encontrar la solucion, les pido me la pasen asi entre todos hacemos crecer este apartado.


## Info Extra

- [Video - Creacion Vagrant Boxes](https://www.youtube.com/watch?v=TUfciJ7tynY)
- [Documentacion Creacion de VagrantBox](https://developer.hashicorp.com/vagrant/vagrant-cloud/boxes/create) y [boxes_base](https://developer.hashicorp.com/vagrant/docs/boxes/base)

- [Lista de reproduccion](https://www.youtube.com/playlist?list=PLTd5ehIj0goPCodyeh2ThX37Ceh-2torY)  de Videos sobre Vagrant 
  - [Que es vagrant?](https://www.youtube.com/watch?v=Ud7cmVCNACE)
  - [Instalacion Vagrant (a mano...Sin Chocolatey)](https://www.youtube.com/watch?v=8hrNt46EVSo&list=PLTd5ehIj0goPCodyeh2ThX37Ceh-2torY&index=3)
  - [Que es una box y como la obtenemos](https://www.youtube.com/watch?v=MAlRVnWaVus&list=PLTd5ehIj0goPCodyeh2ThX37Ceh-2torY&index=3&pp=iAQB)
  - [Iniciar / Detener vm](https://www.youtube.com/watch?v=7zu6lQDdC_k&list=PLTd5ehIj0goPCodyeh2ThX37Ceh-2torY&index=4&pp=iAQB)
  - [Aprovisionamiento con bash script](https://www.youtube.com/watch?v=aLYMcwsIcwk&list=PLTd5ehIj0goPCodyeh2ThX37Ceh-2torY&index=5&pp=iAQB)
  - [Spoiler alert!!! -> Aprovisionamiento con Ansible](https://www.youtube.com/watch?v=LWKL2E2NMB8&list=PLTd5ehIj0goPCodyeh2ThX37Ceh-2torY&index=6&pp=iAQB)

- [vagrantfile hyper-v](https://learn.microsoft.com/en-us/virtualization/community/team-blog/2017/20170706-vagrant-and-hyper-v-tips-and-tricks)
- [Vagrantfile windows](https://dev.to/sannae/setting-up-windows-virtual-test-environments-with-vagrant-4k1b)
- [Agregar Ansible como provisioner](https://briantsaunders.github.io/posts/2021/02/working-with-the-ansible-local-provisioner-for-vagrant-boxes/)

### Cosas curiosas que uno encuentra por ahi...
- [Entorno de desarrollo Vagrant + laravel](https://medium.com/@joaquin.villagra/homestead-el-entorno-de-desarrollo-ideal-para-laravel-36844d38dc55)

