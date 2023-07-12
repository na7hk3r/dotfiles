from PIL import Image

# Abre la imagen
imagen = Image.open('logo.jpg')

# Cambia el tamaño de la imagen para ajustarla al tamaño deseado en ASCII
ancho, alto = imagen.size
ancho_ascii = 80
alto_ascii = int(alto * ancho_ascii / ancho)
imagen = imagen.resize((ancho_ascii, alto_ascii))

# Convertir imagen a escala de grises
imagen = imagen.convert('L')

# Obtener los caracteres ASCII
caracteres = '@%#*+=-:. '

# Generar el dibujo ASCII
dibujo_ascii = ''
for y in range(alto_ascii):
    for x in range(ancho_ascii):
        pixel = imagen.getpixel((x, y))
        indice = int(pixel / 255 * (len(caracteres) - 1))
        dibujo_ascii += caracteres[indice]
    dibujo_ascii += '\n'

# Imprimir el dibujo ASCII
print(dibujo_ascii)

# Crear y escribir el archivo de texto
with open('dibujo_ascii.txt', 'w') as archivo:
    archivo.write(dibujo_ascii)

print("El archivo 'dibujo_ascii.txt' ha sido creado exitosamente.")