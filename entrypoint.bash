#!/usr/bin/env bash

python shop/manage.py migrate

# exec to proper forward SIGTERM to the process by
# replacing the shell with the process being opened
# https://unix.stackexchange.com/a/196053
cd shop
exec gunicorn shop.wsgi --bind 0.0.0.0:8000
