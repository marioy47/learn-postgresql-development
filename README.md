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
- `npm run omdb`: Uses the [`omdb-postgres`](https://github.com/credativ/omdb-postgresql) repo to import the `omdb` database into postgres.
  - Running this command will take a **long time** since the OMDB database is about **2G** in size

The `npm run omdb` command can be executed in parts in case you want to debug issues. Refer to the [`pacakge.json`](package.json) file _scripts_ for more info.

## PgAdmin4

You can connect to PgAdmin4 on <https://localhost:5050> to manage the PostgreSQL databases with the following creadentials:

User: `admin@example.co`
Password: `password`

And register a new _Server_ by right clicking on the left sidebar and usgin the following connection paramters:

- Name: `Docker Container` (this can be whaterver you want actually)
- Host: `postgres`
- Port: `5432` (the default port)
- User: `postgres`
- Password: `password`

> You can cange all this values by creating an [`.env`](.env.example) file
