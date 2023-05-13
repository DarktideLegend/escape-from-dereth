#!/usr/bin/env bash

rm -rf db-data/ && docker compose -p ac-realms down -v && docker compose -p ac-realms up ace-db
