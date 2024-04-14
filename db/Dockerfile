FROM postgres:15

RUN apt-get update && apt-get install -y wget git \
    && wget -qO- https://download.red-gate.com/maven/release/com/redgate/flyway/flyway-commandline/10.11.0/flyway-commandline-10.11.0-linux-x64.tar.gz | tar -xvz \
    && ln -s $(pwd)/flyway-10.11.0/flyway /usr/local/bin

WORKDIR /app

RUN git clone https://github.com/kyohei-norita/palettea-db.git

WORKDIR palettea-db