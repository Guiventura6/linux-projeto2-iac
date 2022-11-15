#!/bin/bash

# Atencao: Rodar script com o usuario root

echo "#############################################"
echo "##   Iniciando criacao da infraestrutura   ##"
echo "#############################################"

echo -e "Atualizando servidor..."
apt-get update
apt-get upgrade -y
echo -e "Concluido!\n"

echo -e "Instalando pacotes..."
apt-get install apache2 -y
apt-get install unzip -y
echo -e "Concluido!\n"

echo -e "Baixando e configurando aplicacao..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
echo -e "Concluido!\n"

echo -e "Script finalizado!!!\n"
