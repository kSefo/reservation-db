#!/usr/bin/env bash

mysql -u user -ppassword! reservation-db < "/docker-entrypoint-initdb.d/01-create-tables.sql"
