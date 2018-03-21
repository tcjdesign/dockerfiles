#!/bin/bash

docker run \
--tty=true \
--detach=true \
--restart=always \
--name=postfix \
--publish=25:25 \
--volume=/DIR/ON/HOST/master.cf:/etc/postfix/master.cf \
--volume=/DIR/ON/HOST/main.cf:/etc/postfix/main.cf \
--volume=/DIR/ON/HOST/mynetworks:/etc/postfix/mynetworks \
--volume=/DIR/ON/HOST/relaydomains:/etc/postfix/relaydomains \
--volume=/DIR/ON/HOST/senderaccess:/etc/postfix/senderaccess \
--volume=/DIR/ON/HOST/senderdeprelay:/etc/postfix/senderdeprelay \
--volume=/DIR/ON/HOST/transport:/etc/postfix/transport \
jonasbonno/postfix:1.0
