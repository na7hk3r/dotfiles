# ==============================
# VARIABLES DE ENTORNO
# ==============================

# Variable OBS para abrir Obsidian
$env:OBS = "C:\Users\elmat\AppData\Local\Obsidian\Obsidian.exe"

# URL de GitHub personal
$env:NTKR = "https://github.com/na7hk3r"

# ==============================
# INICIADORES
# ==============================

# Iniciar Oh-my-posh con el tema especificado
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/space.omp.json' | Invoke-Expression

# Opciones buenas por si pinta cambiaso
#oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/amro.omp.json' | Invoke-Expression

# ==============================
# FUNCIONES
# ==============================

# Clona desde mi perfil 
function Clone {
    param([string]$RepoName)
    if ([string]::IsNullOrEmpty($RepoName)) {
        Write-Host "Por favor, especifica el nombre del repositorio." -ForegroundColor Red
    } else {
        git clone "$env:NTKR/$RepoName"
    }
}

# Apaga el sistema con un mensaje personalizado
function Adios {
    Write-Host "Hasta luego, Mathi. Te quiero u' monton!" -ForegroundColor Green
    shutdown /s /t 300
}

# Reinicia el sistema luego de 10 segundos, con mensaje
function Taluego {
    Write-Host "Ya vengo Mathi. Reiniciando..." -ForegroundColor Yellow
    shutdown /r /t 10
}

# Abre el directorio actual en Neovim
function Edit-Dir {
    nvim .
}

# ==============================
# ALIAS
# ==============================

# Alias para abrir Obsidian
function obs { & $env:OBS }
function obs_dir { Set-Location "~/OneDrive/Documentos/73lab" }

# Superpower 'ls' con opciones personalizadas (usando Get-ChildItem en PowerShell)
function ls { Get-ChildItem -Force | Sort-Object Extension, Name }
function l { ls } # por si hay typo

# Navegación más fácil
function .. { Set-Location .. }
function ... { Set-Location ../.. }
function .... { Set-Location ../../.. }
function dt { Set-Location ~/Desktop }
function dw { Set-Location ~/Downloads }
function search { 
    param([string]$Pattern)
    Get-ChildItem -Recurse | Select-String $Pattern
}

# Git aliases
function add { git add . }
function commit { 
    param([string]$Message)
    git commit -m $Message 
}
function pull { git pull }
function push { git push origin main }
function log { git log -10 --oneline }
function stat { git status }
function discard { git reset --hard }
function stash { git stash }
function stash_pop { git stash pop }
function stash_list { git stash list }
function stash_apply { git stash apply }

# Undo git push /reverse (deshacer el último push)
function undopush { git push -f origin HEAD^:main }

# Alias útiles del sistema
function diskspace { Get-PSDrive -PSProvider FileSystem | Format-Table Name, Used, Free, Root }
function dotfiles { Get-Content $PROFILE }
function edit-dotfiles { nvim $PROFILE }
function update-powershell { . $PROFILE }

# Ejecuta el limpiador de disco
function clean-cache { cleanmgr /sageset:1; cleanmgr /sagerun:1 }

# Buscar recursivamente en archivos en el directorio actual
function Search-Files {
    param([string]$Pattern)
    Get-ChildItem -Recurse | Select-String $Pattern
}

# Comando para borrar directorios y archivos (usar con precaución)
function alamierda {
    param([string]$Path)
    Remove-Item -Recurse -Force $Path
}

# Abrir el explorador en la ubicación actual
function aver { explorer . }

# Saber el tamaño de un directorio
function size {
    param([string]$Path = ".")
    Get-ChildItem $Path -Recurse | Measure-Object -Property Length -Sum | Select-Object @{Name="Size(MB)"; Expression={[math]::Round($_.Sum / 1MB, 2)}}
}

# Guardar los últimos 15 comandos en un archivo y mostrarlo
function h10 {
    Get-History -Count 15 | Out-File ~/Desktop/hist.txt
    Start-Sleep 2
    Get-Content ~/Desktop/hist.txt
}

# NPM alias para instalar dependencias y ejecutar en modo desarrollo
function nrun { npm i; npm run dev }

# ==============================
# CONFIGURACIÓN ADICIONAL
# ==============================

# Configurar el comportamiento de PowerShell para ser más similar a bash
$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'

Write-Host "¡PowerShell profile cargado! Equivalente a tu .bashrc" -ForegroundColor Cyan
