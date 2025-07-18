# ==============================
# VARIABLES DE ENTORNO
# ==============================

# Variable OBS para abrir Obsidian
export OBS="C:/Users/elmat/AppData/Local/Obsidian/Obsidian.exe"

# URL de GitHub personal
export NTKR="https://github.com/na7hk3r"

# ==============================
# INICIADORES
# ==============================

# Iniciar Oh-my-posh con el tema especificado
eval "$(oh-my-posh init bash --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/space.omp.json)"

# Opciones buenas por si pinta cambiaso
#eval "$(oh-my-posh init bash --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/amro.omp.json)"

# ==============================
# FUNCIONES
# ==============================

# Clona desde mi perfil 
function clone() {
    if [ -z "$1" ]; then
        echo "Por favor, especifica el nombre del repositorio."
    else
        git clone "$NTKR/$1"
    fi
}

# Apaga el sistema con un mensaje personalizado
function adios() {
    echo "Hasta luego, Mathi. Te quiero u' monton!"
    shutdown -s -t 300
}

# Reinicia el sistema luego de 10 segundos, con mensaje
function taluego() {
	echo "Ya vengo Mathi. Reiniciando..."
	shutdown -r -t 10
}


# Abre el directorio actual en Neovim
function edit_dir() {
    nvim .
}

# ==============================
# ALIAS
# ==============================

# Alias para abrir Obsidian
alias obs='$OBS'
alias obs_dir='cd ~/OneDrive/Documentos/73lab'

# Superpower 'ls' con opciones personalizadas
alias ls='ls --color --group-directories-first --sort=extension -A'
alias l='ls' # por si hay typo

# Navegación más fácil
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias dt='cd ~/Desktop'
alias dw='cd ~/Downloads'
alias search='grep -rnw .'     # Buscar recursivamente dentro de los archivos

# Git aliases
alias add='git add .'                   # Git add, todo.
alias commit='git commit -m'            # Commits, más rápido
alias pull='git pull'                   # Actualizar el repositorio local
alias push='git push origin main'       # Git push a MAIN
alias log='git log -10 --oneline'       # Mostrar log de commits, breve y limpio
alias stat='git status'                 # Mostrar el status del repo
alias discard='git reset --hard'        # Descartar los cambios, sin commit
alias stash='git stash'			# Almacena temporalmente cambios de una rama en local
alias stash_pop='git stash pop'		# Actualiza los cambios temporales, luego de cambiar de rama
alias stash_list='git stash list'	# Ver la lista de cambios stashed
alias stash_apply='git stash apply'	# Carga los cambios

# Cambiar al stash seleccionado, ejemplo git stash stash@{1}

# Undo git push /reverse (deshacer el último push)
alias undopush='git push -f origin HEAD^:main'

# Alias útiles del sistema
alias diskspace="df -P -kHl"                # Mostrar espacio en disco
alias dotfiles='cat ~/.bashrc'              # Consultar el archivo .bashrc
alias edit-dotfiles='nvim ~/.bashrc'         # Editar el archivo .bashrc
alias update-bash='source ~/.bashrc'        # Recargar el archivo .bashrc

# Ejecuta el limpiador de disco
alias clean-cache='cleanmgr /sageset:1 && cleanmgr /sagerun:1'

# Buscar recursivamente en archivos en el directorio actual
alias search='grep -rnw . -e'           # Search "ejemplo"

# Comando para borrar directorios y archivos (usar con precaución)
alias alamierda='rm -rf'

# Abrir el explorador en la ubicación actual
alias aver='explorer .'

# Saber el tamaño de un directorio, agregar nombre dir inmediatamente.
alias size='du -sh'

# Guardar los últimos 15 comandos en un archivo y mostrarlo
alias h10='history 15 > ~/Desktop/hist.txt && sleep 2 && cat ~/Desktop/hist.txt'

# NPM alias para instalar dependencias y ejecutar en modo desarrollo
alias nrun="npm i && npm run dev"
