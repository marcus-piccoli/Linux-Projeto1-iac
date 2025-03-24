#!/bin/bash

echo "Versão 2 do projetos"

echo "Criando diretórios!!!"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários!!!"

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "Criando usuários!!!"

useradd carlos -m -s /bin/bash -p $(openssl passwd -6 Senha123)
useradd maria -m -s /bin/bash -p $(openssl passwd -6 Senha123)
useradd joao -m -s /bin/bash -p $(openssl passwd -6 Senha123)

useradd debora -m -s /bin/bash -p $(openssl passwd -6 Senha123)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 Senha123)
useradd roberto -m -s /bin/bash -p $(openssl passwd -6 Senha123)

useradd josefina -m -s /bin/bash -p $(openssl passwd -6 Senha123)
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 Senha123)
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 Senha123)

echo "Adicionando usuários aos grupos!!!"

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

echo "Permissões dos diretórios!!!"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Especificando permissões!!!"

chmod 770 /adm
chmod 770 /sec
chmod 770 /ven
chmod 777 /publico

echo "Finalizado!!!"
