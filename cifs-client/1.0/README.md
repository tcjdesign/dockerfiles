#cifs-client - v1.0

A CIFS client for mounting SMB shares

Usage: docker run --detach=true --privileged=true --cap-add=SYS_ADMIN --env=SERVER=[SERVER] --env=SHARE=[SHARE] --env=USERNAME=[USERNAME] --env=PASSWORD=[PASSWORD] jonasbonno/cifs-client:1.0

