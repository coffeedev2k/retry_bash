#!/bin/bash

count_of_try_backup=5




number_of_try_backup=0
until [ "$number_of_try_backup" -ge "$count_of_try_backup" ]
do
#   number_of_try_backup=$((number_of_try_backup+1))

   cp -r /tmo/q /root/ && break  # substitute your command here

   number_of_try_backup=$((number_of_try_backup+1))
   sleep 2
done


if [ "$number_of_try_backup" -ge "$count_of_try_backup" ]                # Функционально идентично вышеприведенному блоку кода.
#   if [ -z "$1"                эта конструкция должна работать, но...
#+  Bash выдает сообщение об отсутствующей закрывающей скобке.
then
  echo "бекап неуспешен после $number_of_try_backup попыток"
else
  echo  "бекап успешен с $((number_of_try_backup+1)) попытки"
