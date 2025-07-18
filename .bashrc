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

# ==============================
# ALIASES AVANZADOS PARA WARP
# ==============================

# Navegación y exploración mejorada
alias tree='tree -C -L 3'                    # Mostrar estructura de directorios con color
alias ll='ls -la'                             # Lista detallada con archivos ocultos
alias la='ls -A'                              # Lista todos los archivos
alias lt='ls -lt'                             # Lista ordenada por tiempo de modificación
alias lsize='ls -lhS'                         # Lista ordenada por tamaño
alias finder='find . -name'                   # Buscar archivos por nombre
alias where='which'                           # Encontrar ubicación de comandos

# Búsqueda y filtrado
alias fgrep='grep -F'                         # Búsqueda literal (sin regex)
alias egrep='grep -E'                         # Búsqueda con regex extendida
alias searchcode='grep -r --include="*.py" --include="*.js" --include="*.ts"'
alias findlarge='find . -type f -size +100M'  # Encontrar archivos grandes
alias findrecent='find . -type f -mtime -7'   # Archivos modificados última semana

# Git workflow mejorado
alias gst='git status -sb'                    # Status compacto
alias gco='git checkout'                      # Cambiar branch
alias gcb='git checkout -b'                   # Crear y cambiar branch
alias gd='git diff'                           # Ver diferencias
alias gds='git diff --staged'                 # Ver diferencias staged
alias gl='git log --oneline --graph --all'   # Log gráfico
alias gfetch='git fetch --all --prune'       # Fetch completo
alias gclean='git clean -fd'                  # Limpiar archivos no tracked
alias gbranch='git branch -a'                 # Ver todas las branches

# Utilidades del sistema
alias ports='netstat -tuln'                   # Ver puertos abiertos
alias processes='ps aux | head -20'           # Procesos activos
alias memory='wmic OS get TotalVisibleMemorySize,FreePhysicalMemory /format:table'
alias cpu='wmic cpu get loadpercentage /value' # Uso de CPU
alias temp='wmic /namespace:\\root\wmi PATH MSAcpi_ThermalZoneTemperature get CurrentTemperature'

# Red y conectividad
alias myip='curl -s https://ipinfo.io/ip'     # IP pública
alias localip='ipconfig | findstr IPv4'       # IP local
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python'
alias ping8='ping 8.8.8.8'                   # Test conectividad
alias flushdns='ipconfig /flushdns'           # Limpiar DNS

# Shortcuts útiles
alias c='clear'                               # Limpiar terminal
alias cls='clear'                             # Alternativa a clear
alias reload='source ~/.bashrc'               # Recargar configuración
alias path='echo $PATH | tr ":" "\n"'        # Mostrar PATH línea por línea
alias hist='history | tail -20'              # Últimos 20 comandos
alias mkdir='mkdir -p'                        # Crear directorios recursivamente
alias cp='cp -i'                              # Copiar con confirmación
alias mv='mv -i'                              # Mover con confirmación
alias rm='rm -i'                              # Eliminar con confirmación

# Monitoreo y análisis
alias diskusage='du -sh * | sort -hr'         # Uso de disco por directorio
alias bigfiles='find . -type f -exec du -sh {} + | sort -hr | head -10'
alias meminfo='wmic computersystem get TotalPhysicalMemory'
alias sysinfo='systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type"'

# Warp-specific enhancements
alias warphelp='echo "Warp shortcuts: Ctrl+D (new block), Ctrl+Shift+R (AI command), Ctrl+\` (toggle terminal)"'
alias blocks='echo "=== NEW COMMAND BLOCK ===" && date'
alias section='echo "================================"'

# ==============================
# FUNCIONES AVANZADAS
# ==============================

# Función para crear y entrar en directorio
function mkcd() {
    mkdir -p "$1" && cd "$1"
}

# Función para backup rápido
function backup() {
    cp "$1" "$1.bak.$(date +%Y%m%d_%H%M%S)"
}

# Función para extraer archivos (universal)
function extract() {
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2)   tar xjf "$1"     ;;
            *.tar.gz)    tar xzf "$1"     ;;
            *.bz2)       bunzip2 "$1"     ;;
            *.rar)       unrar x "$1"     ;;
            *.gz)        gunzip "$1"      ;;
            *.tar)       tar xf "$1"      ;;
            *.tbz2)      tar xjf "$1"     ;;
            *.tgz)       tar xzf "$1"     ;;
            *.zip)       unzip "$1"       ;;
            *.Z)         uncompress "$1"  ;;
            *.7z)        7z x "$1"        ;;
            *)           echo "'$1' no se puede extraer" ;;
        esac
    else
        echo "'$1' no es un archivo válido"
    fi
}

# Función para weather
function weather() {
    curl -s "wttr.in/$1"
}
