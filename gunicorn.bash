#!/bin/bash

NAME="microservicio"
DIR=/home/ruben/Documentos/MICROSERVICIOS/MicroservicioConHerramientas
SOCKFILE=/home/ruben/Entornos/Flask/bin/gunicorn
NAMEAPP=app
USER=ruben
GROUP=users
NUM_WORKERS=1
SOURCE=0.0.0.0
PORT=8000
echo "Starting $NAME as `ruben`"

#Activar el virtualenv
cd $DIR
source /home/ruben/Entornos/Flask/bin/activate

#se necesita mas que un milagro para que se ejectue esta wea
exec gunicorn ${NAMEAPP}:app \
	--bind ${SOURCE}:${PORT} \
	--name $NAME \
	--workers $NUM_WORKERS
