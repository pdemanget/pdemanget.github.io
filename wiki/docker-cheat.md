Images
======
docker images : display images
docker pull alpine: get image
docker rmi: remove images
docker build . -t image_name : create image from Dockerfile
docker commit 12345678904b5 mysnapshot: create image from container
docker save -o <save image to path> <image name>: save image as tar file
docker load -i <image path> : load tar image file

Registry
========
docker tag rhel-httpd registry-host:5000/myadmin/rhel-httpd
docker push registry-host:5000/myadmin/rhel-httpd

Dockerfile
----------
FROM
ENV
ADD : to add tars or files
COPY: preferred to add for files.
RUN : execute during image creation 
ENTRYPOINT: container main command.
CMD : Argument of the entrypoint, command line for default entrypoint (shell)

Containers
==========
docker container prune: remove all unused containers
docker ps -a :display all containers
docker export adoring_kowalevski > contents.tar : export container filesystem
docker inspect --format '{{join .Args " , "}}' container

Execute
-------
docker run --rm hello-world : run and forget
docker run --name hw hello-world [--network= ]: run with a name if not already exists
docker start -ai hw : restart the existing container

docker exec -it <container_id_or_name> /bin/bash : Execute Shell in an existing container
docker run --entrypoint=bash -it temporary_image : Execute shell as an entrypoint
docker.exe run --rm -it ubuntu /bin/bash : runs an ubuntu bash in a new container


Network
=======


Volume
======

Swarm
=====
Startup:
    $ docker swarm init
    $ docker service create --name registry --publish published=5000,target=5000 registry:2
docker stack deploy -c stack.yml postgres
docker stack ps postgres
docker stack rm postgres


Stack
=====
docker stack deploy -c stack.yml foo
docker stack ps foo
docker stack rm foo
docker stack services foo
docker service logs


Service
=======


System
======
docker system df : disk usage

Problems
========
non TTY... use winpty (Windows) : don't use git bash, use windows CMD
docker ps fail: - start docker service, check user rights on docker fifo:/var/run/docker.sock.

Urls
====
https://hub.docker.com/
https://docs.docker.com/