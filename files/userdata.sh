#!/bin/bash

# Atualiza o cache de pacotes
sudo yum update -y

# Instala o Nginx
sudo amazon-linux-extras install nginx1.12 -y

# Inicia o Nginx
sudo systemctl start nginx

# Habilita o Nginx para iniciar automaticamente na inicialização
sudo systemctl enable nginx