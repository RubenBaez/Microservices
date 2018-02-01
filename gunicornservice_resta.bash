#!/bin/bash

NAME="resta"
DIR=/home/ruben/Documentos/MICROSERVICIOS/MicroservicioConHerramientas
SOCKFILE=/home/ruben/Entornos/Flask/bin/gunicorn
NAMEAPP=restaService
USER=ruben
GROUP=users
NUM_WORKERS=1
SOURCE=0.0.0.0
PORT=6002
echo "Starting $NAME as `ruben`"

cd $DIR
source /home/ruben/Entornos/Flask/bin/activate

exec gunicorn ${NAMEAPP}:app \
    --bind ${SOURCE}:${PORT} \
    --name $NAME \
    --workers $NUM_WORKERS