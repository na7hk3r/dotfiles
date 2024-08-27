# Auto commit

# Permitir la ejecución de scripts temporalmente durante este proceso
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process -Force

# Obtener el día de la semana actual (0 = Domingo, 6 = Sábado)
$dayOfWeek = (Get-Date).DayOfWeek

# Verificar si es de lunes a viernes
if ($dayOfWeek -ge 1 -and $dayOfWeek -le 5) {

# ASCII Art and message
$asciiArt = @"
77777777777777777777 333333333333333   
7::::::::::::::::::73:::::::::::::::33 
7::::::::::::::::::73::::::33333::::::3
777777777777:::::::73333333     3:::::3
           7::::::7             3:::::3
          7::::::7              3:::::3
         7::::::7       33333333:::::3 
        7::::::7        3:::::::::::3  
       7::::::7         33333333:::::3 
      7::::::7                  3:::::3
     7::::::7                   3:::::3
    7::::::7                    3:::::3
   7::::::7         3333333     3:::::3
  7::::::7          3::::::33333::::::3
 7::::::7           3:::::::::::::::33 
77777777             333333333333333 
"@

$message = "Hola Mathi, estamos haciendo los commit diarios :)`nSegui siendo genial!`nBy: Mathi ElDelScript"

# Mostrar ASCII art y mensaje
Clear-Host
Write-Host $asciiArt -ForegroundColor Cyan
Write-Host $message -ForegroundColor Yellow

# Ruta del repositorio
$repoPath = "C:\Users\elmat\Desktop\blog-2"
$commitMsg = "Auto commit $(Get-Date)"

Set-Location $repoPath

$fileName = "README.md"

# Crear el archivo si no existe
if (-Not (Test-Path $fileName)) {
    New-Item -ItemType File -Path $fileName
}

    # Crear tres commits modificando el archivo .md
for ($i = 1; $i -le 3; $i++) {
    "This is auto commit $i on $(Get-Date)" | Out-File -FilePath $fileName -Append
    git add $fileName
    git commit -m "$commitMsg - $i"
}

# Realizar el push y cerrar la ventana después
Start-Process git -ArgumentList "push origin main" -NoNewWindow -Wait

} else {
Clear-Host
$weekendMessage = 
@"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Hoy es fin de semana.
¡No se realizará commit hoy!
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"@
Write-Host $weekendMessage -ForegroundColor Red
}
