Initiation à docker
===================



Install
-------

. be root
    $ sudo groupadd docker
    $ sudo usermod -a -G docker vagrant


Fonctions avancées de docker
============================

Swarm
-----
0. créer le noeud swarm sur le host - prendre le token à coller sur les clients
1. Installer 1 à n vagrant : https://mirrors.dotsrc.org/fedora-buffet/alt/atomic/stable/Fedora-29-updates-20190401.0/AtomicHost/x86_64/images/Fedora-AtomicHost-Vagrant-29-20190401.0.x86_64.vagrant-virtualbox.box
2. Installer docker sur ces vagrant
3. joindre les swarm au noeud principal
		[vagrant@localhost ~]$ docker swarm join --token SWMTKN-1-4t7vytek1gtkgwy5ach3yjtk7wsgmd82v2sjl71c25tib9z043-f3yt149t3hec65c409t45t0ih 10.0.2.2:2377
		This node joined a swarm as a worker.


2.1 Workaround
il faut supprimer l'option "live-restore" des fichiers de conf
cat /etc/docker/daemon.json
{
“live-restore”: false
}
cat /etc/sysconfig/docker
# /etc/sysconfig/docker

# Modify these options if you want to change the way the docker daemon runs
# OPTIONS='--selinux-enabled --log-driver=journald --live-restore'
OPTIONS='--selinux-enabled --log-driver=journald'
if [ -z "${DOCKER_CERT_PATH}" ]; then
    DOCKER_CERT_PATH=/etc/docker
fi

## demo
docker stack ps db 
ssh vagrant@127.0.0.1 -p 2200 
ssh vagrant@127.0.0.1 -p 2222
docker swarm join --token SWMTKN-1-4t7vytek1gtkgwy5ach3yjtk7wsgmd82v2sjl71c25tib9z043-f3yt149t3hec65c409t45t0ih 10.0.2.2:2377


  







