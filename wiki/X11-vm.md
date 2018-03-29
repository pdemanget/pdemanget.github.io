USing X11 port connection from a VM with the server X of the host
=================================================================

Export disploy from VM or container
====================================
example with my IP, on a tinyCore image:

    export DISPLAY=10.205.8.196:0.0
    xterm&
    
The xterm is displayed on the X server, and all application launched in the terminal will be on th same server, we can minimize the window (if from a VM) or exic the bash (if launched from docker) 



XServer on linux
=================
The client X server should not be launched with th -nolisten tcp configuration
Check configuration for your distribution.




Using a X Server on windows
===========================
Xming or VcXsrv
I have choosen : https://sourceforge.net/projects/vcxsrv/
After the installation you'll have a "X" icon in the notification area.


Using docker
============


Sources
=======
https://linux.developpez.com/formation_debian/export-display.html


https://github.com/sameersbn/docker-browser-box