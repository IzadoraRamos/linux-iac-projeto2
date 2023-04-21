#!/bin/bash

echo "atualizando o servidor ....." 
apt-get update 
apt-get upgrade -y

echo "o servidor esta atualizado!"
echo "instalando o servidor web ...."
apt-get install apache2 -y
apt-get install unzip -y

echo "o servidor web foi instalado corretamente !"

echo"estou baixando os arquivos para a pagina web ..."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main 
cp -R ./* /var/www/html

echo "seu site esta pronto !"
echo "FIM!"
 
