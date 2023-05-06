#!/usr/bin/env bash

rm -rf db-data-latest/ && docker compose down -v && docker compose up ace-db
