#!/bin/bash

# prepare any message you want
login_ip="$(echo $SSH_CONNECTION | cut -d " " -f 1)"
login_date="$(date +"%d.%m.%Y %T")"
login_name="$(whoami)"

# For new line I use $'\n' here
message="Новое подключение к серверу [server_name]"$'\n'"Имя пользоватея: $login_name"$'\n'"IP-адрес: $login_ip"$'\n'"Время подключения: $login_date"

#send it to telegram
/usr/bin/telegram-logger/telegram-send.sh "$message"