#            _                 _       _
#           | |               | |     | |
#   __ _  __| | __ _ _ __ ___ | | ____| | ___  __ _ _ __    ___ ___  _ __ ___
#  / _` |/ _` |/ _` | '_ ` _ \| |/ / _` |/ _ \/ _` | '_ \  / __/ _ \| '_ ` _ \
# | (_| | (_| | (_| | | | | | |   < (_| |  __/ (_| | | | || (_| (_) | | | | | |
#  \__,_|\__,_|\__,_|_| |_| |_|_|\_\__,_|\___|\__,_|_| |_(_)___\___/|_| |_| |_|
#

FROM library/node:8
WORKDIR /www

COPY package*.json ./
RUN npm install --only=production

COPY config /www/config
COPY workspace /www/workspace
COPY server.js /www

CMD ["npm", "start"]
