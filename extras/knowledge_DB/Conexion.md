# Base de Conocimiento


## Problemas de Conexion a las VM

- [ ] ** Problemas para conectarme a la VM**

    > Los comandos "vagrant ssh" o .</br>
    > ssh -i private_key vagrant@192.168.56.5 .</br>
    > En VM basadas en RedHat 8 o superior .</br>
   <details>
     <summary>&emsp; <Mostrar/Ocultar> - Screen del Error</summary>
   <div>
   <table>
      <tr>
         <td><img src=".img/ssh_Error_gssapi.png" width="90%" align="center"></td>
      </tr>
   </table>
   </div>
   </details>
   
   Solucion:
   -  Hay un Bug detectado en la version de vagrant 2.4.1 [Issue](https://github.com/hashicorp/vagrant/issues/13309)
   > NOTAS:
   > Conciste en que se esta copiando o generando mal el certificado ssh privado. Al trabajar contra Box basadas en RedHat >= 8 (y derivados).
   > </br>  Por tal motivo Tira error al quererse logear.
   > </br>  ~~Aparentemente con agregar el siguiente parametro  en el "vagrantfile"~~
   > </br>   config.ssh.insert_key = false
   > </br>  No se generaria una key privada y no se copiaria a la vm..
   > </br>  de esta forma, si bien no se podria ingresar con el comando ssh
   > </br>  Si se podria ingresar usando "vagrant ssh"






