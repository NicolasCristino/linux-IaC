#!/bin/bash

echo "Criando diretórios.."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários.."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários.."

useradd carlos -m -G GRP_ADM
useradd maria -m -G GRP_ADM
useradd joao -m -G GRP_ADM

useradd roberto -m -G GRP_VEN
useradd sebastiao -m -G GRP_VEN
useradd debora -m -G GRP_VEN

useradd josefina -m -G GRP_SEC
useradd amanda -m -G GRP_SEC
useradd rogerio -m -G GRP_SEC

echo "Permissões dos diretórios .."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Procedimento Finalizado"
