#nagiosql

Fork of smeretech/docker-debian-nagiosql: https://github.com/smeretech/docker-debian-nagiosql

This container extends the nagios container by adding the configuration frontend, [NagiosQL](http://www.nagiosql.org).

The first time the container is started, NagiosQL must be configure. Simply go to the following URL, "``http://<host_ip>:<host_port>/nagiosql``" and complete the setup wizard. 

* Make sure "Local hostname or IP address" is set to "localhost"
* Set "Administrative Database Password" to "root". It must match the MySQL root password defined in the compose file), and check all the boxes
* Check the box "Drop database if already exists"
* Pick an "Initial NagiosQL Password" and retype it below
* Check the box "Import Nagios sample config"
* Check the box "Create NagiosQL config paths"
* Click next twice

NagiosQL is now configured.

NagiosQL runs on "``http://<host_ip>:<host_port>/nagiosql``"
Nagios runs on "``http://<host_ip>:<host_port>/nagios``"

The login username for Nagios is "nagiosadmin", and password "nagios".
