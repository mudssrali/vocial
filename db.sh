#!/usr/bin/env bash

docker run -p 5432:5432 -d \
    --name vocial-db \
    -e POSTGRES_DB=vocial_dev \
    -e POSTGRES_PASSWORD=postgres \
    -e POSTGRES_USER=postgres \
    -v /docker/vocial/db:/var/lib/postgresql/data \
    postgres:10.5