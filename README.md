
# Dotfiles para customizar Bash y configuraciones de Git

<img src="https://www.smcurbelo.com/assets/logo_sword-BoM_bXo2.png" width="15%" height="auto" align="right">

Este repositorio contiene mis dotfiles personales, usados para configurar mi entorno de trabajo. Estas configuraciones mejoran y hacen que el trabajo desde la terminal sea **muuuuucho** más rápido, ¡y divertido!.
Está pensado para Windows, pero puedes tomarlo como referencia para adaptarlo a cualquier S.O. de tu preferencia.

> [!WARNING]\
> El lenguaje aquí utilizado, es __**terrible**__. Como es el caso de el alias para eliminar permanentemente: `alamierda`. Avisado quedas.


## Archivos en este repositorio 🗃️

- `.bashrc`: Mi configuración custom de Git Bash. Incluye alias, variables de entorno y funciones.
- `.gitconfig`: Configuraciones de git customizados. **(OJO 👁️)** en caso de usarlo, deberás cambiar los datos para no hacer commits en mi nombre.
- `nvim/`: Configuración de Neovim con Lazy.nvim como gestor de plugins.
- `powershell/`: Scripts de PowerShell, incluyendo el profile y script de setup.
- `scripts/`: Distintas utilidades que a veces uso. Como mantener activo mi blog (experimental 🔬), o crear arte ASCII. *nota: tiene otros como clonar repo que ya no uso, pero que sirven a modo de ejemplo.

## Setup de Neovim 🚀

El script `powershell/setup.ps1` automatiza la configuración de Neovim en Windows:

```powershell
# Ejecuta el script de setup
.\powershell\setup.ps1
```

**¿Qué hace el script?**
- Crea los directorios necesarios en `~\.local\src` y `AppData\Local\nvim-data`
- Clona los dotfiles de referencia (si no existen)
- Hace backup de tu configuración de nvim existente (si la hay)
- Instala la configuración de Neovim

> [!NOTE]
> Asegúrate de tener [Neovim](https://neovim.io/) y [Git](https://git-scm.com/) instalados antes de ejecutar el script.

## Instalación 🔧

En caso de que quieras usar estas variables en tu entorno, estos son los pasos a seguir:

```bash
# Clona este repo
git clone https://github.com/na7hk3r/dotfiles.git

# Respalda tus archivos existentes (por si acaso)
mv ~/.bashrc ~/.bashrc_backup
mv ~/.gitconfig ~/.gitconfig_backup

# Copia los nuevos!
cp dotfiles/.bashrc ~/
cp dotfiles/.gitconfig ~/
```

## Customización (⚠️)

**Altamente recomendado**, siéntete libre de editar estos archivos para que se ajusten a tus preferencias. ¡Puedes tomarlo como referencia para crear tus propios alias, funciones o variables de entorno que se ajusten mejor a tu vocabulario y método de de trabajo!

Si te interesa esto, y quedaste con ganas de más, recomiendo altamente estos repositorios que sirvieron como guía e inspiración:

| Repo                                                          | Descripcion                                                         |
| ------------------------------------------------------------- | ------------------------------------------------------------------- |
| [dotfiles - paulirish](https://github.com/paulirish/dotfiles) | Un conjunto de dotfiles altamente personalizables.                  |
| [windots - scottmckendry](https://github.com/scottmckendry/Windots) | Configuraciones útiles, con más foco en Windows.              |

(Mucho más completo, espero te ayuden.)

## Contribuciones 🤝

Si deseas contribuir, sentite libre de abrir un issue o hacer un pull request. ¡Toda ayuda es bienvenida!


## Licencia 🪬

Este proyecto, no tiene licencia alguna. Internet es libre. Copia, roba, piratea. ¡Salud! El viejo pana Nathker🏴‍☠️


#### 73lab_

