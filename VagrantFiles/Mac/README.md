# Virtualization on MacBook 

Dependiendo del modelo de Mac que tengas podras utilizar o no Virtualbox para gestionar las maquinas virtuales.
Una alternativa a Virtualbox es usar QEMU.

- Para poder instalar cualquier programa en MacOS mediante consola, necesitamos instalar el gestor de paquetes [Homebrew](https://brew.sh/).
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- Instalar QEMU con Homebrew:
```sh
brew install qemu
```

- Instalar [Vagrant con Homebrew](https://developer.hashicorp.com/vagrant/install#darwin): 
```sh
brew tap hashicorp/tap
brew install hashicorp/tap/hashicorp-vagrant
```


## Referencias
- [Vagrant](https://www.vagrantup.com/docs/installation)
- [Virtualization on MacBook M1/M2 (ARM64)](https://joachim8675309.medium.com/vagrant-with-macbook-mx-arm64-0f590fd7e48a)




