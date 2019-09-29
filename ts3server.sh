#!/bin/sh
echo "Utilizzo: ./ts3server.sh nome 10011 30033 9987"
read -p "Premi Invio per continuare" </dev/tty

nome=$1
query=$2
filetransfer=$3
voice=$4

docker run -d \
        -p $voice:$voice/udp \
        -p $query:$query \
        -p $filetransfer:$filetransfer \
        -v $nome:/var/ts3server \
        -e TS3SERVER_LICENSE=accept \
        -e TS3SERVER_QUERY_PORT=$query \
        -e TS3SERVER_FILETRANSFER_PORT=$filetransfer \
        -e TS3SERVER_DEFAULT_VOICE_PORT=$voice \
       #-e TS3SERVER_SERVERADMIN_PASSWORD=YOURPASSWORDHERE \
        --name $nome \
        teamspeak
