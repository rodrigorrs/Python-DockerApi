# Python-DockerApi
Uma forma simples de rodar uma API python em um Container Docker do zero no Centos8.

# Todos os arquivos disponibilizados devem ser copiados e executados dentro do mesmo diretorio.

0 - Certifiquese que a porta do Servidor está aberta para a API.
- firewall-cmd --zone=public --add-port=8000/tcp --permanent


1 - Instale o Docker Engenir
- dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
- dnf install docker-ce --nobest -y
- systemctl start docker
- systemctl enable docker
- docker --version

2 - Faça login no Docker.io e Baixe a Imagem Python com a ultima versão.
- docker login docker.io
(usuario)
(senha)
- docker pull python:latest


3 - Dentro do mesmo diretorio do dockerfile execute os seguintes comentados de build. / lembrando que todos os arquivos disponibilizados devem estar tudo no mesmo diretório.

- docker build -t pythonapi:1.0.0 .

4 - Execute a imagem.

- docker run -it -p 8000:8000 pythonapi:latest

5 - Acesse a url browser para testar.
IP-PORTA
ex(192.168.56.128:8000)
resultado - {"canal": "LinuxTips", "msg": "Vaiiiiiiiiii"}
