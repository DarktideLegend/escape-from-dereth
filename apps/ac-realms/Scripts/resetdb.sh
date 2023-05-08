#!/usr/bin/env bash

rm -rf db-data-latest/ && docker compose -p ac-realms-latest down -v && docker compose -p ac-realms-latest up ace-db
