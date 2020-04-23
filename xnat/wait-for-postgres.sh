#!/bin/sh
# wait-for-postgres.sh

set -e

cmd="$@"

until PGPASSWORD=$XNAT_DATASOURCE_PASSWORD psql -U "$XNAT_DATASOURCE_USERNAME" -h xnat-db -c '\q'; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 5
done

>&2 echo "Postgres is up - executing command \"$cmd\""
exec $cmd
