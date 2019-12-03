#!/bin/bash
DBDIR="/home/ubuntu/data/loopchain"
MYIP=`curl http://169.254.169.254/latest/meta-data/public-ipv4`
ASISNAME=`ls -t ${DBDIR}/.storage| head -1`
TOBENAME="db_${MYIP}:7100_icon_dex"
if [ "$ASISNAME" == "$TOBENAME" ];then
echo "Match"
else
        if [ ! -d "$DBDIR/.storage" ];then
        mkdir -p $DBDIR/.storage/$TOBENAME
        else
        mv ${DBDIR}/.storage/${ASISNAME} ${DBDIR}/.storage/${TOBENAME}
        fi
fi

