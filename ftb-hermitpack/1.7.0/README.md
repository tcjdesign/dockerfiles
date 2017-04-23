# ftb-hermitpack - v1.7.0
Feed The Beast HermitPack modpack
made by Feed The Beast at https://feed-the-beast.com

Modpack for Minecraft
Play along with the Hermitcraft members on their various YouTube and Twitch series with this customized pack.
Fastcraft is enabled in this pack by default.

<img src="http://media-elerium.cursecdn.com/avatars/thumbnails/52/294/340/340/636113638663242082.png" width="340" height="340">

NOTE: In compliance with Mojang "End User License Agreement", you will need to agree to the EULA in order to run your own Minecraft server. By using this container you acknowledge the EULA! If you do not agree, then you are not permitted to use this container!
https://account.mojang.com/documents/minecraft_eula

The worldname must be the default "world". 
Settings will reset when upgrading.
Access the console to op and whitelist.

Running ftb-hermitpack data container:
docker run --name [name of your data container] jonasbonno/ftb-ftb-hermitpack:1.7.0 echo 'Data-only container'

Running ftb-hermitpack server:
docker run --tty=true --interactive=true --detach=true --name=[name of your container] --volumes-from [name of your data container] --publish=[port on your host]:25565 jonasbonno/ftb-hermitpack:1.7.0

To access the console:
</br>docker attach [name of container] bash
</br>Run your commands
</br>To exit: Hold CTRL + press P & press Q

The first time the server starts it creates the server.properties file with default settings and spawns "world". 
Not recommended to change these settings be hand.

When upgrading:
To upgrade delete ftb-hermitpack server and start new ftb-hermitpack server with --volumes-from [name of your data container].
Settings will reset when upgrading.
Access the console to op and whitelist.
