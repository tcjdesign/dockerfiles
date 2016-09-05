#!/bin/bash

# Updates the fstab
if [[ ! $SERVER ]] || [[ ! $SHARE ]]; then
	echo "Warning: Server and share informations are missing!"
else
	if [[ ! $USERNAME ]]; then
		echo "Information: mounting share as guest."
		echo "//$SERVER/$SHARE /mnt/samba cifs guest,iocharset=utf8,sec=ntlm  0  0" >> /etc/fstab
		mount -a
		# Check if mount returncode is 32 and timeout is 124. Loop while not thoes returncodes. 
		while [[ $? != 32 ]] || [[ $? != 124 ]]
		do
			timeout 10 ls /mnt/samba
			sleep 50 & wait $!
		done
	else
		echo "//$SERVER/$SHARE /mnt/samba cifs username=$USERNAME,password=$PASSWORD,iocharset=utf8,sec=ntlm  0  0" >> /etc/fstab
		mount -a
		# Check if mount returncode is 32 and timeout is 124. Loop while not thoes returncodes.
		while [[ $? != 32 ]] || [[ $? != 124 ]]
		do
			timeout 10 ls /mnt/samba
			sleep 50 & wait $!
		done
	fi
fi

# Error: Restaring
echo "Error: Not able to mount share!"
echo "Restarting container in 10 sec!"
sleep 10
exit
