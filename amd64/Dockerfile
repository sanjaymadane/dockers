FROM qnapnas/qiot-mongodb_amd64:3.2

RUN apt-get update \
  && apt-get install -y wget \
  && wget -qO- https://deb.nodesource.com/setup_6.x | bash - \
  && apt-get install -y --no-install-recommends \
     build-essential \
     libicu-dev \
     nodejs \
     node-gyp \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get clean
