# Variable OBS para abrir Obsidian, se abre con $ delante.
export OBS="C:/Users/elmat/AppData/Local/Obsidian/Obsidian.exe"
export NTKR="https://github.com/na7hk3r"


# Iniciador Oh-my-posh
eval "$(oh-my-posh init bash --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/amro.omp.json)"


# ////    Alias:   ////

# superpower ls
alias ls='ls --color --group-directories-first --sort=extension -A'
alias l='ls' #por si los typo

# Easier navigation:
alias ..='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'
alias dt='cd ~/Desktop'

# git
alias add='git add .'
alias push='git push origin main'
alias clone='git clone'

# undo git push /reverse
alias undopush='git push -f origin HEAD^:main'

# otros aliases
alias diskspace="df -P -kHl"
alias dotfiles='cat ~/.bashrc'
alias alamierda='rm -rf'

# ver el tamanio de un archivo
alias fs="stat -f \"%z bytes\""

# npm util
# alias nrun="npm i && npm run dev && start http://localhost:5173"

function nrun() {
    npm i
    npm run dev &  
    sleep 5       
    url=$(lsof -i -P -n | grep LISTEN | grep 'node' | grep 'localhost' | awk '{print $9}' | head -1)
    if [ -n "$url" ]; then
        start "http://$url"  # Usa 'start' en Windows para abrir el navegador
    else
        echo "No se pudo encontrar el puerto. ¿Está el servidor corriendo?"
    fi
}


# Funcion para apagar
function adios() {
	echo "Hasta mañana, crack Loveyou"
	shutdown -s -t 300

}
