
# Dotfiles para customizar Bash y configuraciones de Git

<img src="https://www.smcurbelo.com/assets/logo_sword-BoM_bXo2.png" width="15%" height="auto" align="right">

Este repositorio contiene mis dotfiles personales, usados para configurar mi entorno de trabajo. Estas configuraciones mejoran y hacen que el trabajo desde la terminal sea muuuuucho más rápido, ¡y divertido!.
Está pensado para Windows, pero puedes tomarlo como referencia para adaptarlo a cualquier S.O. de tu preferencia.

> [!WARNING]\ 
> El lenguaje aquí utilizado, es terrible. Como es el caso de el alias para eliminar permanentemente: `alamierda`. 

## Archivos en este repositorio

- `.bashrc`: Mi configuración custom de Git Bash. Incluye alias, variables de entorno y funciones.
- `.gitconfig`: Configuraciones de git customizados. **(OJO 👁️)** en caso de usarlo, deberás cambiar los datos para no hacer commits en mi nombre.

## Instalación

En caso de que quieras usar estas variables en tu entorno, estos son los pasos a seguir:

```bash
# Clona este repo
git clone https://github.com/na7hk3r/mis-scripts.git

# Respalda tus archivos existentes (por si acaso)
mv ~/.bashrc ~/.bashrc_backup
mv ~/.gitconfig ~/.gitconfig_backup

# Copia los nuevos!
cp mis-scripts/.bashrc ~/
cp mis-scripts/.gitconfig ~/
```

## Customización (!)

**Altamente recomendado**, siéntete libre de editar estos archivos para que se ajusten a tus preferencias. ¡Puedes tomarlo como referencia para crear tus propios alias, funciones o variables de entorno que se ajusten mejor a tu vocabulario y método de de trabajo!

Si te interesa esto, y quedaste con ganas de más, recomiendo altamente estos repositorios que sirvieron como guía e inspiración:

[dotfiles - paulirish](https://github.com/paulirish/dotfiles)

[windots - scottmckendry](https://github.com/scottmckendry/Windots)

(Mucho más completo, espero te ayuden.)


## Licencia

Este proyecto, no tiene licencia alguna. Internet es libre. Copia, roba, piratea. Salud! El viejo pana Nathker🏴‍☠️

