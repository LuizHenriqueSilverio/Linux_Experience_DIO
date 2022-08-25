#!/bin/bash

echo "Criando diretorios..."

mkdir /publico /adm /ven /sec
chmod 777 /publico
chmod 770 /adm /ven /sec

echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chown root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Criando usuarios..."

############GRP_ADM############

useradd carlos -c "Carlos Alberto" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM

useradd maria -c "Maria Da Silva" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM

useradd joao -c "Joao da Lapa" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM

############GRP_VEN############

useradd debora -c "Debora Maria" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN

useradd sebastiana -c "Sebastiana Marques" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN

useradd roberto -c "Roberto Carlos" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN

############GRP_SEC#############

useradd josefina -c "Josefina Marques" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC

useradd amanda -c "Amanda Cristina" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC

useradd rogerio -c "Rogerio da Lapa" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC

################################


echo "Configuração Finalizada!!!"
