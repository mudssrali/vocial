#!/usr/bin/env bash

while ! pg_isready -q -h $DB_HOST -p $DB_PORT -U $DB_USER
do
  echo "$(date) - waiting for database to start"
  sleep 2
done

if [[ -z `psql -Atqc "\\list $DB_NAME"` ]]; then
  echo "Database $DB_NAME does not exist. Creating..."
  createdb -E UTF8 $DB_NAME -l en_US.UTF-8 -T template0
  mix ecto.migrate
  echo "Database $DB_NAME created."
fi

exec mix phx.server