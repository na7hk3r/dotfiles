md repo_root
cd repo_root
md fonts img css
COPY nul > C:\Users\elmat\Desktop\repo_root\index.html
COPY nul > C:\Users\elmat\Desktop\repo_root\style.css
COPY nul > C:\Users\elmat\Desktop\repo_root\main.js
MOVE style.css .\css
git init
cls
echo 'Boilerplate creado por Nathker! Happy coding'
code .
exit
