#!/bin/bash

docker run -it -p 127.0.0.1:9001:4000 \
       --user="$(id -u):$(id -g)" \
       -v $(pwd):/home/docker \
       felix11h/docker-mmistakes:latest \
       /bin/bash -c \
       'cd /home/docker && export LC_ALL="en_US.UTF-8" && \
        bundle exec jekyll serve --host=0.0.0.0'


# docker run --rm --volume="$PWD":/srv/jekyll \
#        -it -p 4000:4000 \
#        -e JEKYLL_ENV=dev jekyll/jekyll:pages jekyll s \
#        --force_polling --config _config.dev.yml
