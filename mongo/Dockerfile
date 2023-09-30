FROM mongo:6.0

ENV MONGO_HOST=localhost
ENV MONGO_PORT=27017
ENV MONGO_USER=myuser
ENV MONGO_PASSWORD=mypassword
ENV BACKUP_PERIODICITY=daily
ENV BACKUP_FOLDER=/backup
ENV BACKUP_SCRIPT=/default-config/backup.sh
ENV ENTRYPOINT_SCRIPT=/default-config/entrypoint.sh
ENV MONGOD_CONF=/default-config/mongod.conf
ENV BASE_PATH=.

WORKDIR $BASE_PATH

RUN apt-get update && apt-get install -y cron netcat

# Setup backup
WORKDIR $BACKUP_FOLDER
COPY . /backup/    
COPY $BACKUP_SCRIPT /backup/backup.sh

RUN chmod +x /backup/backup.sh

EXPOSE $MONGO_PORT

WORKDIR $BASE_PATH

COPY $MONGOD_CONF /etc/mongod.conf
COPY $ENTRYPOINT_SCRIPT $BASE_PATH/entrypoint.sh

RUN chmod +x $BASE_PATH/entrypoint.sh

ENTRYPOINT ["$BASE_PATH/entrypoint.sh"]
