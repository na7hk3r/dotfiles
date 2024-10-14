echo '
	Ingresa nombre de usuario:
'
read nombre
echo '
	Ingresa nombre repositorio:
'
read clon
echo '
	Hecho, ahi voy
'
git clone https://github.com/$nombre/$clon
clear
echo '
	Listo, te dejo ahí.
	Script por Nathker
	Happy coding!
'
cd $clon
code .
exit