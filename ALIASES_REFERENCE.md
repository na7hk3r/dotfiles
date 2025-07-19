# 🚀 Guía de Aliases y Utilidades para Warp Terminal

Este documento describe todos los aliases, funciones y utilidades disponibles en tu configuración de terminal optimizada para Warp.

## 📋 Índice
- [Variables de Entorno](#variables-de-entorno)
- [Funciones Básicas](#funciones-básicas)
- [Aliases Básicos](#aliases-básicos)
- [Navegación y Exploración](#navegación-y-exploración)
- [Búsqueda y Filtrado](#búsqueda-y-filtrado)
- [Git Workflow](#git-workflow)
- [Utilidades del Sistema](#utilidades-del-sistema)
- [Red y Conectividad](#red-y-conectividad)
- [Productividad](#productividad)
- [Monitoreo y Análisis](#monitoreo-y-análisis)
- [Warp Terminal Específicos](#warp-terminal-específicos)
- [Funciones Avanzadas](#funciones-avanzadas)

---

## 🌍 Variables de Entorno

| Variable | Descripción |
|----------|-------------|
| `$OBS` / `$env:OBS` | Ruta al ejecutable de Obsidian |
| `$NTKR` / `$env:NTKR` | URL de tu repositorio GitHub personal |

---

## ⚡ Funciones Básicas

### 🔧 Utilidades del Sistema
| Función | Descripción |
|---------|-------------|
| `clone <repo>` | Clona un repositorio desde tu perfil de GitHub |
| `adios` | Apaga el sistema con mensaje personalizado (5 min delay) |
| `taluego` | Reinicia el sistema con mensaje personalizado (10 seg delay) |
| `edit_dir` / `Edit-Dir` | Abre el directorio actual en Neovim |

---

## 📁 Aliases Básicos

### 🎯 Obsidian
| Alias | Descripción |
|-------|-------------|
| `obs` | Abre Obsidian |
| `obs_dir` | Navega al directorio de Obsidian (73lab) |

### 📂 Navegación Básica
| Alias | Descripción |
|-------|-------------|
| `l` / `ls` | Lista archivos con opciones personalizadas |
| `..` | Sube un directorio |
| `...` | Sube dos directorios |
| `....` | Sube tres directorios |
| `dt` | Va al Desktop |
| `dw` | Va a Downloads |

### 🔍 Git Básico
| Alias | Descripción |
|-------|-------------|
| `add` | `git add .` - Agrega todos los cambios |
| `commit <msg>` | `git commit -m` - Commit rápido |
| `pull` | `git pull` - Actualiza repositorio local |
| `push` | `git push origin main` - Push a main |
| `log` | Muestra últimos 10 commits en una línea |
| `stat` | `git status` - Estado del repositorio |

---

## 🗂️ Navegación y Exploración

| Alias | Descripción |
|-------|-------------|
| `tree` | Muestra estructura de directorios con color (3 niveles) |
| `ll` | Lista detallada con archivos ocultos |
| `la` | Lista todos los archivos incluyendo ocultos |
| `lt` | Lista ordenada por tiempo de modificación |
| `lsize` | Lista ordenada por tamaño |
| `finder <name>` | Busca archivos por nombre |
| `where <cmd>` | Encuentra ubicación de comandos |

---

## 🔍 Búsqueda y Filtrado

| Alias | Descripción |
|-------|-------------|
| `search` | Busca recursivamente dentro de archivos |
| `fgrep <pattern>` | Búsqueda literal (sin regex) |
| `egrep <pattern>` | Búsqueda con regex extendida |
| `searchcode <pattern>` | Busca en archivos de código (.py, .js, .ts) |
| `findlarge` | Encuentra archivos mayores a 100MB |
| `findrecent` | Archivos modificados en la última semana |

---

## 🔄 Git Workflow

### 🚀 Aliases Git Avanzados
| Alias | Descripción |
|-------|-------------|
| `gst` | `git status -sb` - Status compacto |
| `gco <branch>` | `git checkout` - Cambia de branch |
| `gcb <branch>` | `git checkout -b` - Crea y cambia de branch |
| `gd` | `git diff` - Muestra diferencias |
| `gds` | `git diff --staged` - Diferencias en staged |
| `gl` | Log gráfico con todas las branches |
| `gfetch` | `git fetch --all --prune` - Fetch completo |
| `gclean` | `git clean -fd` - Limpia archivos no tracked |
| `gbranch` | `git branch -a` - Muestra todas las branches |

### 🗃️ Git Stash
| Alias | Descripción |
|-------|-------------|
| `discard` | `git reset --hard` - Descarta todos los cambios |
| `stash` | `git stash` - Guarda cambios temporalmente |
| `stash_pop` | `git stash pop` - Aplica y elimina último stash |
| `stash_list` | `git stash list` - Lista todos los stash |
| `stash_apply` | `git stash apply` - Aplica último stash sin eliminar |
| `undopush` | Deshace el último push (¡usar con cuidado!) |

---

## 💻 Utilidades del Sistema

| Alias | Descripción |
|-------|-------------|
| `ports` | Muestra puertos abiertos |
| `processes` | Muestra primeros 20 procesos activos |
| `memory` | Información detallada de memoria RAM |
| `cpu` | Información del procesador y uso |
| `temp` | Temperatura del sistema |
| `diskspace` | Espacio en disco de todas las unidades |
| `sysinfo` | Información básica del sistema operativo |

---

## 🌐 Red y Conectividad

| Alias | Descripción |
|-------|-------------|
| `myip` | Muestra tu IP pública |
| `localip` | Muestra tu IP local |
| `speedtest` | Prueba de velocidad de internet |
| `ping8` | Ping a 8.8.8.8 para probar conectividad |
| `flushdns` | Limpia la caché DNS |

---

## ⚡ Productividad

### 🛠️ Shortcuts Útiles
| Alias | Descripción |
|-------|-------------|
| `c` / `cls` | Limpia la terminal |
| `reload` | Recarga la configuración (.bashrc o perfil PS) |
| `path` | Muestra las rutas del PATH línea por línea |
| `hist` | Muestra últimos 20 comandos |
| `h10` | Guarda últimos 15 comandos en archivo y los muestra |

### 📁 Operaciones de Archivos
| Alias | Descripción |
|-------|-------------|
| `mkdir <path>` | Crea directorios recursivamente |
| `cp <src> <dest>` | Copia con confirmación |
| `mv <src> <dest>` | Mueve con confirmación |
| `rm <path>` | Elimina con confirmación |
| `aver` | Abre explorador en directorio actual |

### 🔧 Configuración
| Alias | Descripción |
|-------|-------------|
| `dotfiles` | Muestra contenido del archivo de configuración |
| `edit-dotfiles` | Edita archivo de configuración en Neovim |
| `update-bash` / `update-powershell` | Recarga configuración |
| `clean-cache` | Ejecuta limpiador de disco de Windows |

---

## 📊 Monitoreo y Análisis

| Alias | Descripción |
|-------|-------------|
| `diskusage` | Uso de disco por directorio (ordenado) |
| `bigfiles` | Top 10 archivos más grandes |
| `size <path>` | Muestra tamaño de directorio |
| `meminfo` | Información de memoria física total |

---

## 🎨 Warp Terminal Específicos

| Alias | Descripción |
|-------|-------------|
| `warphelp` | Muestra shortcuts específicos de Warp |
| `blocks` | Marca un nuevo bloque de comando con timestamp |
| `section` | Imprime una línea separadora |

### 🔥 Shortcuts de Warp
- **Ctrl+D**: Nuevo bloque de comando
- **Ctrl+Shift+R**: Comando AI de Warp
- **Ctrl+`**: Toggle terminal

---

## 🔧 Funciones Avanzadas

### 📁 Utilidades de Directorio
| Función | Uso | Descripción |
|---------|-----|-------------|
| `mkcd <path>` | `mkcd nueva-carpeta` | Crea directorio y navega a él |

### 💾 Backup y Archivos
| Función | Uso | Descripción |
|---------|-----|-------------|
| `backup <file>` | `backup config.json` | Crea backup con timestamp |
| `extract <file>` | `extract archivo.zip` | Extractor universal de archivos |

### 🌤️ Información Externa
| Función | Uso | Descripción |
|---------|-----|-------------|
| `weather <city>` | `weather Madrid` | Clima de cualquier ciudad |

### 📦 Desarrollo
| Alias | Descripción |
|-------|-------------|
| `nrun` | `npm install && npm run dev` - Setup y desarrollo rápido |
| `alamierda <path>` | Elimina archivos/directorios de forma agresiva (¡cuidado!) |

---

## 🚀 Ejemplos de Uso

### 🔄 Workflow Git Completo
```bash
# Clonar tu repositorio
clone mi-proyecto

# Crear nueva branch
gcb feature/nueva-funcionalidad

# Ver estado
gst

# Agregar cambios y commit
add
commit "Agregar nueva funcionalidad"

# Push a nueva branch
git push origin feature/nueva-funcionalidad
```

### 🔍 Búsqueda y Análisis
```bash
# Buscar archivos grandes
findlarge

# Buscar código específico
searchcode "function"

# Ver uso de disco
diskusage

# Archivos modificados recientemente
findrecent
```

### 🌐 Monitoreo de Sistema
```bash
# Check completo del sistema
memory
cpu
diskspace
myip
```

---

## ⚠️ Notas Importantes

1. **Aliases peligrosos**: `alamierda`, `undopush`, `discard` - usar con precaución
2. **Dependencias**: Algunas funciones requieren herramientas externas (tree, 7z, etc.)
3. **Windows**: Los comandos están optimizados para Windows/PowerShell
4. **Warp**: Algunos aliases aprovechan características específicas de Warp Terminal

---

## 🔄 Actualización

Para actualizar la configuración:
```bash
# En el repositorio dotfiles
git pull
reload
```

---

*Última actualización: 2025-07-19*
*Configuración optimizada para Warp Terminal en Windows*

## 🆕 Cambios Recientes

### ✨ Nuevos Aliases Agregados (19/07/2025):
- `Search-Files <pattern>`: Función PowerShell mejorada para búsqueda
- Mejoras en funciones de memoria y CPU con información más detallada
- Funciones de conectividad mejoradas con manejo de errores
- Optimizaciones en funciones de análisis de disco

### 🔧 Funciones Mejoradas:
- `memory`: Ahora muestra información más detallada en GB
- `cpu`: Información mejorada del procesador
- `myip`/`localip`: Manejo mejorado de errores de conectividad
- `speedtest`: Manejo de errores más robusto
- `diskusage`: Mejor formato de salida ordenada
- `extract`: Soporte mejorado para múltiples formatos
- `weather`: Manejo de timeout y errores mejorado
