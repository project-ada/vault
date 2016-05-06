FROM phusion/baseimage:0.9.18

RUN apt-get -y update # skip cache
RUN apt-get -y install wget unzip

RUN mkdir -p /apps/vault /etc/service/vault

ADD run /etc/service/vault/run

# install spark
RUN wget -O /apps/vault.zip https://releases.hashicorp.com/vault/0.5.2/vault_0.5.2_linux_amd64.zip
RUN unzip /apps/vault.zip -d /apps/vault/
RUN rm -rf /apps/vault.zip
