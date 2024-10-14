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
# eval "$(oh-my-posh init bash --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/amro.omp.json)"

# ==============================
# FUNCIONES
# ==============================

function clone() {
    git clone "$NTKR/$1"
}

# Apaga el sistema con un mensaje personalizado
function adios() {
    echo "Hasta luego, Mathi. Te quiero u' monton!"
    shutdown -s -t 300
}

# ==============================
# ALIAS
# ==============================

# Alias para abrir Obsidian
alias obs='$OBS'

# Superpower 'ls' con opciones personalizadas
alias ls='ls --color --group-directories-first --sort=extension -A'
alias l='ls' # por si hay typo

# Navegación más fácil
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias dt='cd ~/Desktop'
alias dw='cd ~/Downloads'

# Git aliases
alias add='git add .'
alias push='git push origin main'

# Undo git push /reverse (deshacer el último push)
alias undopush='git push -f origin HEAD^:main'

# Alias útiles del sistema
alias diskspace="df -P -kHl"                # Mostrar espacio en disco
alias dotfiles='cat ~/.bashrc'              # Consultar el archivo .bashrc
alias edit-dotfiles='vim ~/.bashrc'         # Editar el archivo .bashrc
alias update-bash='source ~/.bashrc'        # Recargar el archivo .bashrc

# Comando para borrar directorios y archivos (usar con precaución)
alias alamierda='rm -rfi'

# Abrir el explorador en la ubicación actual
alias aver='explorer .'

# Guardar los últimos 15 comandos en un archivo y mostrarlo
alias h10='history 15 > ~/Desktop/hist.txt && sleep 2 && cat ~/Desktop/hist.txt'

# Ver el tamaño de un archivo en bytes
alias fs="stat -f \"%z bytes\""

# NPM alias para instalar dependencias y ejecutar en modo desarrollo
alias nrun="npm i && npm run dev"
