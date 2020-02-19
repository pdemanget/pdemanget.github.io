

Docker/WSL
==========
disclaimer: doesn't work anymore
from
https://medium.com/faun/docker-running-seamlessly-in-windows-subsystem-linux-6ef8412377aa
need workarounds:
sudo nohup docker daemon -H tcp://0.0.0.0:2375 -H unix:///var/run/docker.sock &
 apt list -a docker-ce
 