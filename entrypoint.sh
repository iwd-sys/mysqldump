#!/bin/bash

DB_USER=${DB_USER:-${MYSQL_ENV_DB_USER}}
DB_PASS=${DB_PASS:-${MYSQL_ENV_DB_PASS}}
DB_NAME=${DB_NAME:-${MYSQL_ENV_DB_NAME}}


if [[ ${DB_NAME} == "" ]]; then
	echo "You forgot DB_NAME env variable"
	exit 1
fi
if [[ ${DB_USER} == "" ]]; then
	echo "You forgot DB_USER env variable"
	exit 1
fi
if [[ ${DB_PASS} == "" ]]; then
	echo "You forgot DB_PASS env variable"
	exit 1
fi

mysqldump --user="${DB_USER}" --password="${DB_PASS}" --host="mysql" "$@" "${DB_NAME}"
