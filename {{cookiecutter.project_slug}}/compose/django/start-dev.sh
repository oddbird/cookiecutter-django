#!/bin/sh
python src/manage.py migrate
python src/manage.py runserver_plus 0.0.0.0:8000
