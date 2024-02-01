FROM postgres:latest

ENV POSTGRES_DB=postgres
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=password

EXPOSE 5432

# Optionally, provide a custom configuration file
# COPY ./path/to/postgresql.conf /etc/postgresql/postgresql.conf

# Copy the initialization SQL script to the container
COPY init.sql /docker-entrypoint-initdb.d/

CMD ["postgres"]