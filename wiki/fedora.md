
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


shell
=====
find /path/to/base/dir -type d -exec chmod 755 {} +


Podman
======
Remplace docker sous redhat

https://www.redhat.com/sysadmin/podman-windows-wsl2

https://github.com/containers/podman-compose

SELinux .ssh
============
Autoriser la connection SSH par publickey

    chcon -R unconfined_u:object_r:ssh_home_t:s0 .ssh

authorise récursivement sur .ssh le context user:role:type:niveau unconfined_u:object_r:ssh_home_t:s0


Autres commandes

    getenforce
    sudo setenforce 0
    sudo less /var/log/audit/audit.log

    system-config-selinux
    /etc/selinux/config
pour voir
    ps -ef -Z
    ls -alZ /var/www/html/selinux/
    semanage login -l
    semanage boolean -l

pour modifier    
    chcon -R unconfined_u:object_r:ssh_home_t:s0 .ssh

    matchpathcon
    restorecon -R -v /srv/web 
    semanage


    sesearch


https://www.linuxquestions.org/questions/linux-security-4/selinux-preventing-ssh-login-with-~-ssh-authorized_keys-4175469538/
https://doc.fedora-fr.org/wiki/SELinux
https://fedoraproject.org/wiki/SELinux


scontext=system_u:system_r:container_t:s0:c7,c157 
tcontext=system_u:system_r:container_runtime_t:s0 
tclass=unix_stream_socket permissive=1

CRON
====
Seconds 	Minutes 	Hours 	Day Of Month 	Month 	Day Of Week 	Year
0 * 8-19 * * MON-FRI
0 * 8-19 ? * MON-FRI
