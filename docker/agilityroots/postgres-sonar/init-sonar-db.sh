#!/bin/bash
set -e

export PGPASSWORD="$POSTGRES_PASSWORD"
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE ROLE sonar PASSWORD 'son1r@qub5' INHERIT LOGIN;
    CREATE SCHEMA sonar AUTHORIZATION sonar;
EOSQL