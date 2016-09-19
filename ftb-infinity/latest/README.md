# ftb-infinity - latest
Feed The Beast Infinity Evolved modpack
made by Feed The Beast at https://feed-the-beast.com

Modpack for Minecraft 1.7.10.
Infinity Evolved is the general all-purpose pack from the FTB team that is designed for solo play as well as small and medium population servers. The pack for all people.
Fastcraft is enabled in this pack by default.

<img src="http://media-elerium.cursecdn.com/avatars/27/883/635818079923323584.png" width="338" height="338">

NOTE: In compliance with Mojang "End User License Agreement", you will need to agree to the EULA in order to run your own Minecraft server. By using this container you acknowledge the EULA! If you do not agree, then you are not permitted to use this container!
https://account.mojang.com/documents/minecraft_eula

This Dockerfile will always download latest build of Feed The Beast Infinity Evolved when building.
The releases on hub.docker.com are build when a new stable release is available fro Feed The Beast.

The worldname must be the default "world". 
Settings will reset when upgrading.
Access the console to op and whitelist.

Running ftb-infinity data container:
docker run --name [name of your data container] jonasbonno/ftb-infinity echo 'Data-only container'

Running ftb-infinity server:
docker run --tty=true --interactive=true --detach=true --name=[name of your container] --volumes-from [name of your data container] --publish=[port on your host]:25565 jonasbonno/ftb-infinity

Upgrading from v2.5.0 or older:
1 - Shutdown Minecraft container
2 - docker run --rm --volumes-from [name of your old data container] alpine mv /opt/minecraft/[name of your world] /minecraft/world
3 - docker run --rm --volumes-from [name of your old data container] -v $(pwd):/backup alpine tar zcpf /backup/[name of your backup file].tgz /minecraft/world
4 - Create a new 2.6.0 or newer Minecraft container + data container
5 - Start new Minecraft container
6 - Shutdown new Minecraft container when idle
7 - docker run --rm --volumes-from [name of your new data container] alpine rm -rf /minecraft/world/*
8 - docker run --rm --volumes-from [name of your new data container] -v $(pwd):/backup alpine tar zxpvf /backup/[name of your backup file].tgz
9 - docker run --rm --volumes-from [name of your new data container] alpine chown -R 1000:1000 /minecraft
10 - docker run --rm --volumes-from [name of your new data container] alpine chmod -R 755 /minecraft

When upgrading sometime items have been remove and therefor you have to confirm removal.
To do so run "docker attach [name of your container]" and type "/fml confirm" when prompted to confirm or cancel.
Exit with Hold CTRL + press P & press Q.

To access the console:
</br>docker attach [name of container] bash
</br>Run your commands
</br>To exit: Hold CTRL + press P & press Q

The first time the server starts it creates the server.properties file with default settings and spawns "world". 
Not recommended to change these settings be hand.

When upgrading:
To upgrade delete ftb-infinity server and start new ftb-infinity server with --volumes-from [name of your data container].
Settings will reset when upgrading.
Access the console to op and whitelist.
