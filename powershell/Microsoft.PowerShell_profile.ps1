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

# ==============================
# ALIASES AVANZADOS PARA WARP
# ==============================

# Navegación y exploración mejorada
function tree { tree /F /A }
function ll { Get-ChildItem -Force | Format-Table -AutoSize }
function la { Get-ChildItem -Force }
function lt { Get-ChildItem | Sort-Object LastWriteTime -Descending }
function lsize { Get-ChildItem | Sort-Object Length -Descending }
function finder { 
    param([string]$Name)
    Get-ChildItem -Recurse -Name "*$Name*" 
}
function where { param([string]$Command) Get-Command $Command }

# Búsqueda y filtrado
function fgrep { 
    param([string]$Pattern, [string]$Path = ".")
    Select-String -Pattern $Pattern -Path "$Path\*" -SimpleMatch
}
function egrep { 
    param([string]$Pattern, [string]$Path = ".")
    Select-String -Pattern $Pattern -Path "$Path\*"
}
function searchcode {
    param([string]$Pattern)
    Get-ChildItem -Recurse -Include "*.py", "*.js", "*.ts" | Select-String $Pattern
}
function findlarge { Get-ChildItem -Recurse | Where-Object {$_.Length -gt 100MB} }
function findrecent { Get-ChildItem -Recurse | Where-Object {$_.LastWriteTime -gt (Get-Date).AddDays(-7)} }

# Git workflow mejorado
function gst { git status -sb }
function gco { 
    param([string]$Branch)
    git checkout $Branch 
}
function gcb { 
    param([string]$Branch)
    git checkout -b $Branch 
}
function gd { git diff }
function gds { git diff --staged }
function gl { git log --oneline --graph --all }
function gfetch { git fetch --all --prune }
function gclean { git clean -fd }
function gbranch { git branch -a }

# Utilidades del sistema
function ports { Get-NetTCPConnection | Format-Table LocalAddress, LocalPort, State }
function processes { Get-Process | Select-Object -First 20 | Format-Table }
function memory { 
    $mem = Get-CimInstance -ClassName Win32_OperatingSystem
    [PSCustomObject]@{
        "Total Memory (GB)" = [math]::Round($mem.TotalVisibleMemorySize/1MB, 2)
        "Free Memory (GB)" = [math]::Round($mem.FreePhysicalMemory/1MB, 2)
        "Used Memory (GB)" = [math]::Round(($mem.TotalVisibleMemorySize - $mem.FreePhysicalMemory)/1MB, 2)
    } | Format-Table
}
function cpu { Get-CimInstance -ClassName Win32_Processor | Select-Object Name, LoadPercentage }
function temp { Get-CimInstance -Namespace "root/wmi" -ClassName MSAcpi_ThermalZoneTemperature }

# Red y conectividad
function myip { 
    try { 
        Invoke-RestMethod -Uri "https://ipinfo.io/ip" -TimeoutSec 5
    } catch { 
        Write-Host "Error obteniendo IP pública" -ForegroundColor Red 
    }
}
function localip { Get-NetIPAddress | Where-Object {$_.AddressFamily -eq "IPv4" -and $_.IPAddress -ne "127.0.0.1"} }
function speedtest { 
    try {
        Invoke-RestMethod -Uri "https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py" | python
    } catch {
        Write-Host "Speedtest no disponible" -ForegroundColor Red
    }
}
function ping8 { ping 8.8.8.8 }
function flushdns { ipconfig /flushdns }

# Shortcuts útiles
function c { Clear-Host }
function cls { Clear-Host }
function reload { . $PROFILE }
function path { $env:PATH -split ';' }
function hist { Get-History -Count 20 }
function mkdir { 
    param([string]$Path)
    New-Item -ItemType Directory -Path $Path -Force
}
function cp { 
    param([string]$Source, [string]$Destination)
    Copy-Item $Source $Destination -Confirm
}
function mv { 
    param([string]$Source, [string]$Destination)
    Move-Item $Source $Destination -Confirm
}
function rm { 
    param([string]$Path)
    Remove-Item $Path -Confirm
}

# Monitoreo y análisis
function diskusage { 
    Get-ChildItem | ForEach-Object {
        $size = (Get-ChildItem $_.FullName -Recurse | Measure-Object -Property Length -Sum).Sum
        [PSCustomObject]@{
            Name = $_.Name
            "Size(MB)" = [math]::Round($size / 1MB, 2)
        }
    } | Sort-Object "Size(MB)" -Descending
}
function bigfiles { 
    Get-ChildItem -Recurse | Sort-Object Length -Descending | Select-Object -First 10 FullName, @{Name="Size(MB)"; Expression={[math]::Round($_.Length/1MB, 2)}}
}
function meminfo { 
    Get-CimInstance -ClassName Win32_ComputerSystem | Select-Object TotalPhysicalMemory
}
function sysinfo { 
    Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object Caption, Version, OSArchitecture
}

# Warp-specific enhancements
function warphelp { 
    Write-Host "Warp shortcuts: Ctrl+D (new block), Ctrl+Shift+R (AI command), Ctrl+`` (toggle terminal)" -ForegroundColor Cyan
}
function blocks { 
    Write-Host "=== NEW COMMAND BLOCK ===" -ForegroundColor Yellow
    Get-Date
}
function section { Write-Host "================================" -ForegroundColor Green }

# ==============================
# FUNCIONES AVANZADAS
# ==============================

# Función para crear y entrar en directorio
function mkcd {
    param([string]$Path)
    New-Item -ItemType Directory -Path $Path -Force | Out-Null
    Set-Location $Path
}

# Función para backup rápido
function backup {
    param([string]$FilePath)
    $timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
    Copy-Item $FilePath "$FilePath.bak.$timestamp"
    Write-Host "Backup creado: $FilePath.bak.$timestamp" -ForegroundColor Green
}

# Función para extraer archivos (universal)
function extract {
    param([string]$FilePath)
    if (Test-Path $FilePath) {
        $extension = [System.IO.Path]::GetExtension($FilePath).ToLower()
        switch ($extension) {
            ".zip" { Expand-Archive $FilePath -DestinationPath . }
            ".7z" { & "C:\Program Files\7-Zip\7z.exe" x $FilePath }
            ".rar" { & "C:\Program Files\WinRAR\unrar.exe" x $FilePath }
            ".tar" { tar -xf $FilePath }
            ".gz" { tar -xzf $FilePath }
            default { Write-Host "Formato no soportado: $extension" -ForegroundColor Red }
        }
    } else {
        Write-Host "Archivo no encontrado: $FilePath" -ForegroundColor Red
    }
}

# Función para weather
function weather {
    param([string]$City = "")
    try {
        Invoke-RestMethod -Uri "wttr.in/$City" -TimeoutSec 10
    } catch {
        Write-Host "Error obteniendo información del clima" -ForegroundColor Red
    }
}
