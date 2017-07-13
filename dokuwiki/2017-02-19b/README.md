# DokuWiki - v2017-02-19b
DokuWiki is a simple to use and highly versatile Open Source wiki software that doesn't require a database. 
It is loved by users for its clean and readable syntax. 
The ease of maintenance, backup and integration makes it an administrator's favorite. 
Built in access controls and authentication connectors make DokuWiki especially useful in the enterprise context 
and the large number of plugins contributed by its vibrant community allow for a broad range of use cases beyond a traditional wiki. 

<img src="https://www.dokuwiki.org/_media/wiki:dokuwiki-128.png" width="128" height="128">

This Dockerfile will always download latest stable build of DokuWiki when building.
The releases on hub.docker.com are build when a new stable release is available from DokuWiki.

Please note that the container needs to be restarted after first run, due to permissions changed in the /var/tmp/nginx/fastcgi folder!

Running dokuwiki data container:
docker run --name [name of your data container] jonasbonno/dokuwiki echo 'true'

Running dokuwiki server:
docker run --tty=true --interactive=true --detach=true --name=[name of your container] --volumes-from [name of your data container] --publish=[port on your host]:80 jonasbonno/dokuwiki

Upgrading is done by removing the dokuwiki server container and keeping the old dokuwiki data container.
Create a new dokuwiki server with latest version and attach volumes from the data container.
After upgrading or restoring the container the Access Control List Management may not be able to show subpages.
Change Interface language to another language and back again to fix this weird issue.

To access the console:
</br>docker attach [name of container] bash
</br>Run your commands
</br>To exit: Hold CTRL + press P & press Q
