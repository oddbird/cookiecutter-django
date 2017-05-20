Oddbirds Webapp Cookie Cutter
=============================

Set up docker::

    # Install Virtualbox
    # install docker (brew install docker)
    docker-machine up
    eval $(docker-machine env)

Cookie cutter project::

    cookiecutter gh:oddbird/cookiecutter-django
    # Answer prompts
    cd <new-project>

Copy env::

    mv env.example .env
    # edit .env

Make sure you can access docker machine ports::

    docker-machine ip  # to get your docker vm's IP
    # include that IP in your ``DJANGO_ALLOWED_HOSTS`` in .env

Build::

    docker-compose build
   
Do the database thing::

    docker-compose run django python src/manage.py migrate

Run::

    docker-compose up
