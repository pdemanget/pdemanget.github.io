
RPM
===
rpm -qa | grep jdk

yum --showduplicates list
dnf search docker

dnf --showduplicate --release=30 list docker


SSH
===
ssh -L 1443:localhost:443 host


https://developer-inside.sso.infra.ftgroup/apis/gamin-shipmenttracking-api/

Services
=========
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux_atomic_host/7/html/managing_containers/running_containers_as_systemd_services_with_podman
cat /etc/systemd/system/redis-container.service

[Unit]
Description=Redis container

[Service]
Restart=always
ExecStart=/usr/bin/podman start -a redis_server
ExecStop=/usr/bin/podman stop -t 2 redis_server

[Install]
WantedBy=local.target


systemctl enable redis-container.service
systemctl start redis-container.service
systemctl status redis-container.service


Podman
======
Remplace docker sous redhat

https://www.redhat.com/sysadmin/podman-windows-wsl2

https://github.com/containers/podman-compose
