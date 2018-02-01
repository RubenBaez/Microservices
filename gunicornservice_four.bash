#!/bin/bash

NAME="cuarto"
DIR=/home/ruben/Documentos/MICROSERVICIOS/MicroservicioConHerramientas
SOCKFILE=/home/ruben/Entornos/Flask/bin/gunicorn
NAMEAPP=fourthService
USER=ruben
GROUP=users
NUM_WORKERS=1
SOURCE=0.0.0.0
PORT=6000
echo "Starting $NAME as `ruben`"

cd $DIR
source /home/ruben/Entornos/Flask/bin/activate

exec gunicorn ${NAMEAPP}:app \
    --bind ${SOURCE}:${PORT} \
    --name $NAME \
    --workers $NUM_WORKERS