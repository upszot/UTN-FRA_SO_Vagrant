# Vagrantfile

## Agregado de discos a una vm

- Instalar plugin vagrant-disksize
```sh
vagrant plugin install vagrant-disksize
```

- Habilitar las feature experimental (agregar variable de entorno)
```sh
# Linux
export VAGRANT_EXPERIMENTAL="1"

# Windows (cmd)
setx VAGRANT_EXPERIMENTAL 1

# Windows (PowerShell)
$env:VAGRANT_EXPERIMENTAL = 1
```



### Agregar en el archivo Vagrantfile la siguiente linea
```sh
config.vm.disk :disk, size: "5GB", name: "extra_storage"
```

### Bibliografia
http://man.hubwiz.com/docset/Vagrant.docset/Contents/Resources/Documents/www.vagrantup.com/docs/disks/usage.html

