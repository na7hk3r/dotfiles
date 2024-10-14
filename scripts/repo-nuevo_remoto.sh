mkdir dir_raiz
cd dir_raiz
mkdir img css
touch index.html main.js style.css
mv style.css css
git init
clear
echo '


	Ingrese nombre de repo remoto:
'
read remote
git remote add origin https://github.com/na7hk3r/$remote
clear
echo '
	Iniciado en:
'
git remote -v
echo '
	Subiendo...
'
git add .
clear
echo '
	Ingresa commit:
'
read mensaje
git commit -m "$mensaje"
git push origin main
clear
echo '
	Hecho, entrando...
'
code .
exit