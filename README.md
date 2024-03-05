# docker-postgres

A docker image to initialize and launch the latest version of PostgreSQL

## Prerequisites

- [Docker](https://docs.docker.com/engine/install/) installed on your machine
- Basic knowledge of [Docker](https://docs.docker.com/get-started/overview/)
- Basic knowledge of [Postgres](https://www.postgresql.org/docs/)

## Getting Started

To get started with `docker-postgres`, follow these steps:

1. Make sure you have Docker installed on your machine. If not, you can install it by following the instructions [here](https://docs.docker.com/engine/install/).

2. Clone the `docker-postgres` repository to your local machine:

    ```bash
    git clone https://github.com/devinobrien-css/docker-postgres.git
    ```

3. Navigate to the cloned repository:

    ```bash
    cd docker-postgres
    ```

4. Follow one of the following:

### Quick Launch (Mac only)

    1. Execute the bash script included in this repo:

        ```bash
        bash build.sh
        ```

    2. Connect to the PostgreSQL database using your preferred client (e.g., `psql`, `pgAdmin`, etc.):
        - Host: `localhost`
        - Port: `5432`
        - Username: `postgres`
        - Password: ********

        You can now start using PostgreSQL in your development environment!

    3. (optional) A destroy script has been included for your convenience

        ```bash
        bash destroy.sh
        ```

        > this script will remove all prior instantiated docker assets

### Self Service (cross-platform)

    1. Build the Docker image:

        ```bash
        docker build -t docker-postgres .
        ```

    2. Launch the PostgreSQL container:

        ```bash
        docker run -d -p 5432:5432 --name postgres-container docker-postgres
        ```

    3. Verify that the container is running:

        ```bash
        docker ps
        ```

        You should see the `postgres-container` listed in the output.

    4. Connect to the PostgreSQL database using your preferred client (e.g., `psql`, `pgAdmin`, etc.):

        - Host: `localhost`
        - Port: `5432`
        - Username: `postgres`
        - Password: ********

        You can now start using PostgreSQL in your development environment!

>For more information and advanced usage, refer to the [official PostgreSQL documentation](https://www.postgresql.org/docs/).

## Helpful Commands

### List All Containers

```bash
docker ps
```

### Stop a Container

```bash
docker stop <container-credential>
```

### Kill a Container

```bash
docker kill <container-credential>
```

### Verify a Stopped Container

```bash
docker ps -a
```

### Remove a Stopped Container

```bash
docker rm
```
