FROM nodered/node-red:latest

COPY settings.js /data/
USER root
RUN chown -R node-red:root /data
USER node-red
RUN npm install --no-fund --no-update-notifier --save node-red-contrib-storage-mongodb
ENTRYPOINT npm start --  --userDir /data
