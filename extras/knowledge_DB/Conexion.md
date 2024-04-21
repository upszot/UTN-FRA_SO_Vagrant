# Base de Conocimiento

> La idea es que tengan al alcance posibles errores que les pueda surgir y como solucionarlos.
> En caso de que su Problema no se solucione por alguno de estos metodos.
> Habra que buscar la solucion por internet, o generar una issue en vagrant... 
> De encontrar la solucion, les pido me la pasen asi entre todos hacemos crecer este apartado.

## Problemas al levantar una VM

- vagrant up -> No me crea la VM

> - Descripcion: 
>   Al ejecutar vagrant up.. tira errores. y no me crea la VM
>
> - Solucion:
>


## Problemas para conectarme a la VM
- vagrant ssh 
- ssh -i private_key vagrant@192.168.56.5
   <div>
   <table>
      <tr>
         <td><img src="ssh_Error_gssapi.png" width="90%" align="center"></td>
      </tr>
   </table>
   </div>
> Hay un Bug detectado en la version de vagrant 2.4.1 [Issue](https://github.com/hashicorp/vagrant/issues/13309)
> que conciste en que se esta copiando o generando mal el certificado ssh privado. Al trabajar contra Box basadas en RedHat >= 8 (y derivados).
> </br>  Por tal motivo Tira error al quererse logear.
> </br>  ~~Aparentemente con agregar el siguiente parametro  en el "vagrantfile"~~
> </br>   config.ssh.insert_key = false
> </br>  No se generaria una key privada y no se copiaria a la vm..
> </br>  de esta forma, si bien no se podria ingresar con el comando ssh
> </br>  Si se podria ingresar usando "vagrant ssh"






