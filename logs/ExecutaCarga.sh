#!/bin/bash
DIRETORIO="/mnt/dados/treinamento/designer-tools/data-integration"
cd $DIRETORIO
./kitchen.sh -rep=reposucos -job=jobPrincipal -dir= -level=Basic -log="/mnt/dados/treinamento/logs/jobLog.log"
