#!/bin/bash
# https://technologyconversations.com/2017/06/16/automating-jenkins-docker-setup/
docker service create --name jenkins \
	-p 4080:8080 \
	-p 40000:50000 \
	--label com.df.notify=true \
	--label com.df.distribute=true \
	--label com.df.servicePath=/blue \
	--label com.df.port=8080 \
	--reserve-memory 1500m \
	jenkinsci/blueocean


#         --mount "type=bind,source=/c/srv/jenkins,target=/var/jenkins_home"\
