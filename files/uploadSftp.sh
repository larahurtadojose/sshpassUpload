#!/bin/bash
#
# This script require sshpass and sftp installed and configured first
#
# Author: Juan Lara
#

usr="$1"
pass="$2"
maquina="$3"
componente="$6"

export SSHPASS=$pass
sshpass -e sftp -oBatchMode=no -b - $usr@$maquina << !
cd $4
put $componente
bye
!
