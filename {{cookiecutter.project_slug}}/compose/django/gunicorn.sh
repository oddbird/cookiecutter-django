#!/bin/sh
python /app/src/manage.py collectstatic --noinput
/usr/local/bin/gunicorn src.{{cookiecutter.project_slug}}.wsgi -w 4 -b 0.0.0.0:5000 --chdir=/app
