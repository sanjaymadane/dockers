FROM yyolk/rpi-archlinuxarm:20160530

RUN pacman -Syy \
  && pacman --noconfirm -S \
    gcc \
    icu \
    make \
    mongodb \
    nodejs \
    npm \
    pwgen \
    python2 \
  && rm -rf /var/cache/pacman

VOLUME /data/db

ENV AUTH=no \
  JOURNALING=yes \
  MONGODB_USER=admin \
  MONGODB_PASS=password \
  MONGODB_DATABASE=admin \
  STORAGE_ENGINE=mmapv1

RUN npm config set python /usr/bin/python2

RUN npm install -g pm2