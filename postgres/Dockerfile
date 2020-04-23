FROM postgres:9.4-alpine

# Security measures, see http://support.divio.com/en/articles/3719228-database-is-uninitialized-and-superuser-password-is-not-specified
ENV POSTGRES_PASSWORD=xnat

COPY XNAT.sql /docker-entrypoint-initdb.d/
