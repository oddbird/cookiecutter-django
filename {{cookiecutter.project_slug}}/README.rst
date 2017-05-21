{{cookiecutter.project_name}}
{{ '=' * cookiecutter.project_name|length }}


Set up docker, per
``https://store.docker.com/editions/community/docker-ce-desktop-mac``.

Copy the ``.env`` file::

    mv env.example .env

You can also edit ``.env``, if you have any values that you know should
be different.

Build::

    docker-compose build
   
Do the database thing::

    docker-compose run django python src/manage.py migrate

Run::

    docker-compose up
