# 10 Apples

**Goals**



**Mandatory Part**




**Commands to Run**



**How I got there**
Created hercules user on my Debian VM with the password apples42! and then looged in using su - hercules

tried to add to su with sudo ls -la /root

Then generated the ssh/rsa keys on my client computer in the hercules_key directory.

Then using the ssh-copy-id command to copy my public key to my server/VM.

ssh-keygen generated a key in the directory
ssh-copy-id <place to send it> copys the

**Resources**
https://linuxconfig.org/passwordless-ssh

https://www.linode.com/docs/security/authentication/use-public-key-authentication-with-ssh/

https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-on-debian-9

https://www.linuxquestions.org/questions/debian-26/ssh-server-setup-419117/

su - uncomment the PORT 22

command to make key:
sh howdoyoulikethemapples.sh hercules localhost 1313 -k

command to login
sh howdoyoulikethemapples.sh hercules localhost 1313
