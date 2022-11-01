# PostgreSQL learning environment

This was created to follow the PostgreSQL Front End Masters course.

It includes the following Containers:

- [PostgreSQL](https://hub.docker.com/_/postgres) (customized)
- [PgAdmin4](https://hub.docker.com/r/dpage/pgadmin4)

The customized Docker image for PostgreSQL includes `git`, `wget` and `bzip2` which are needed to import the [OMDB](https://www.omdb.org) database.

## NPM Commands

All commands needed where created as scripts in [`package.json`](package.json)

- `npm run psql`: Gets the `pgsql` command on the PostgreSQL image
- `npm run bash`: Executes `bash` on the PostgreSQL image
- `npm run omdb`: Pulls the [`omdb-postgres`](https://github.com/credativ/omdb-postgresql) repo and imports the `omdb` database into postgres.
  - Running this command will take a long time since the OMDB database is about 2G big

There are additional commands that allows you to execute only certain steps of the omdb import

## PgAdmin4

You can connect to PgAdmin4 on <https://localhost:5050> to manage the PostgreSQL databases. **But** you need to change some **connection** parammeters:

- Host: `postgres`
- Port: `5432` (the default port)
- User: `postgres`
- Password: `password`

> You can cange all this values by creating an `.env` file
