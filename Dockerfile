
ARG POSTGRES_VERSION
FROM postgres:${POSTGRES_VERSION}

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends git wget bzip2 sudo vim \
    && rm -rf /var/lib/apt/lists/*

ARG OMDB_DIR
RUN mkdir -p $OMDB_DIR \
    && chown -R postgres:postgres ${OMDB_DIR} \
    && sudo -H -u postgres GIT_SSL_NO_VERIFY=1 git clone https://github.com/credativ/omdb-postgresql.git ${OMDB_DIR}
