FROM phusion/baseimage:focal-1.0.0

# Atualizar repositórios e garantir que todos os pacotes essenciais estão na versão mais recente
RUN apt-get update && apt-get upgrade -y

# Definir zona de tempo
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Instalar dependências essenciais
RUN apt-get update && apt-get install -y ca-certificates curl apt-transport-https sudo wget bc gnupg python-is-python3 python3-venv

# Definir variável de ambiente JAVA_HOME
ENV JAVA_HOME=/usr/lib/jvm/zulu11

# Definindo o diretório de trabalho no contêiner
WORKDIR /root

# Copiando os arquivos .tar.gz da pasta libs para o contêiner

# RUN wget https://github.com/aakashnand/trino-ranger-demo/releases/download/trino-ranger-demo-v1.0/ranger-2.1.0-admin.tar.gz \
#     && tar xvf ranger-2.1.0-admin.tar.gz

COPY libs/ranger-2.1.0-admin.tar.gz /root/
COPY libs/ranger-3.0.0-SNAPSHOT-trino-plugin-405-406.tar.gz /root/

# Extraindo os arquivos .tar.gz

# RUN wget https://github.com/aakashnand/trino-ranger-demo/releases/download/trino-ranger-demo-v1.0/ranger-3.0.0-SNAPSHOT-trino-plugin-405-406.tar.gz \
#     && tar xvf ranger-3.0.0-SNAPSHOT-trino-plugin-405-406.tar.gz

RUN tar xvf ranger-2.1.0-admin.tar.gz \
    && tar xvf ranger-3.0.0-SNAPSHOT-trino-plugin-405-406.tar.gz

# Expor portas, se necessário
EXPOSE 8080

# Comando para rodar o container
CMD ["/bin/bash"]