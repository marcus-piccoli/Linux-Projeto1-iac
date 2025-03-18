#!/bin/bash

echo "Criando usuários do sistema..."

useradd guest10 -c "Usuário Convidade" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest10 -e

useradd guest11 -c "Conv" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest11 -e

useradd guest12 -c "convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest12 -e

echo "Finalizado!!!"
