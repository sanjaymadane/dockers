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

ENV AUTH=yes \
  JOURNALING=yes \
  MONGODB_USER=admin \
  MONGODB_PASS=password \
  MONGODB_DATABASE=admin

RUN npm config set python /usr/bin/python2

RUN npm install pm2 -g

COPY run_arm.sh set_mongodb_password.sh /
EXPOSE 27017 28017
ENTRYPOINT ["/run_arm.sh"]
CMD ["mongod"]
