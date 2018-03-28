#!/bin/bash
for dominio in `cat dominios.txt`
do
ip=$(ping -c 1 $dominio | gawk -F'[()]' '/PING/{print $2}')
`echo $dominio >> resultado.txt`
`curl ipinfo.io/$ip >> resultado.txt`
done


