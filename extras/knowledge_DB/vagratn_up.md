# Base de Conocimiento



## Problemas Crear una VM

- [ ] **Problemas Crear una VM - (Permisos Para Renombrar)**
    > Tras ejecutar "vagrant up" sale un error diciendo que ya existe una VM con dicho nombre.</br>
    > Tambien que NO puede Renombrar un directorio "c:\user\ **EL_USUARIO_DE_USTEDES**"</br>
    > Por si fuera poco, llego a generar una VM en virtualbox a la cual no le pudo cambiar el nombre.
   <details>
     <summary>&emsp; <Mostrar/Ocultar> - Screen del Error</summary>
   <div>
   <table>
      <tr>
         <td><img src=".img/vagrant_up_Error_01.png" width="100%" align="center"></td>
      </tr>
      <tr>
         <td><img src=".img/vagrant_up_Error_02_01.png" width="50%" align="center"></td>
      </tr>
   </table>
   </div>
   </details>

   Solucion:
   - Paso1 - Eliminamos todo Rastro de la maquina virtual y metadata de vagrant
```sh
#- Verificamos si en VirtualBox existe una VM con dicho Nombre.
#- Eliminamos la VM con el comando o Manualmente desde VirtualBox:
vagrant destroy -f 
#- Eliminar carpeta de metadata de vagrant
rm -rf .vagrant
```
   - Paso2 - Modificamos en la configuracion de VirtualBox el path por defecto donde se alojan las VM
<div style="margin-left: 40px;">
   <details>
     <summary>&emsp; <Mostrar/Ocultar> - Screen cambiar preferencias</summary>
   <div>
   <table>
      <tr>
         <td><img src=".img/Preferencias_01.png" width="50%" align="center"></td>
      </tr>
      <tr>
         <td><img src=".img/Preferencias_02.png" width="90%" align="center"></td>
      </tr>
   </table>
   </div>
   </details>
</div>

> NOTA: La mayoria de los Errores al levantar VM se soluciona de esta forma.




