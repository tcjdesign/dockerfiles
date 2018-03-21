#!/bin/bash

docker run \
--tty=true \
--detach=true \
--restart=always \
--name=postfix-out-post \
--publish=25:25 \
--volume=/DIR/ON/HOST/relaydomains:/etc/postfix/relaydomains \
--volume=/DIR/ON/HOST/senderaccess:/etc/postfix/senderaccess \
--volume=/DIR/ON/HOST/senderdeprelay:/etc/postfix/senderdeprelay \
--volume=/DIR/ON/HOST/transport:/etc/postfix/transport \
jonasbonno/postfix:1.0

