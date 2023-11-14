I use nginx on my server and VPS. I use it as a reverse proxy. It negates the need to publically open ports for each service, and allows the connections to be made with HTTPS.

It is running as a system service of my server, and a docker container on my VPS. I prefer to run it as a system service, because it shows a clear separation between the reverse proxy and the services that is manages. It also means that any restart or interruption of docker doesn't impact the reverse proxy, and a relevant page can be returned during any downtime.

### Server
Nginx is set up as a system service. All of the files are stored under /etc/nginx. proxy_params stores a list of recommended proxy parameters that can be included in site files. nginx.conf is the base nginx configuration file where all other configuration files can be included from. sites-enabled and sites-available are two folders. Most of the time they are identical. Configuration files for each site are stored in sites-available, and a softlink is made to sites-enabled if the site is currently meant to be used.

### VPS
Nginx is set up as a docker container. Only one file is passed to the container (default.conf). This is used as the base nginx configuration file, and for simplicity I have included all configurations in the file.
