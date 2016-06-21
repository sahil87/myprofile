#!/bin/bash

#Tar:
tar -czfv whereToCompress.tar.gz whatToCompress/
tar -xzfv whatToUncompress.tar.gz whereToUncompress/
#c compress, x uncompress, z gzip, j bz2

#Quick SCP
tar -czfv - folderName/ | ssh user@hostname 'cd whereIwantToUnzip && tar -xzfv -'

#http://blog.trackets.com/2014/05/17/ssh-tunnel-local-and-remote-port-forwarding-explained-with-examples.html
#Reverse ssh tunnel to use a port remotely (4000) to forward all request to localhost:4280
#So you can run server locally and server it via a public server
ssh -R 4000:localhost:4280 react-stage01.web.int.sg.aws.sportscafe.in
ssh -nNT react-stage01.web.int.sg.aws.sportscafe.in -R 4000:localhost:4280 #To create only tunnel not an interactive shell
#In order to bind port to 0.0.0.0 and not 127.0.0.1 need to add "GatewayPorts yes" to /etc/ssh/sshd_config

#Remote port forwarding/"Inbound tunneling"
#Expose local services to remote clients over your outgoing cunnection
#To share WIP web app without deploying
local="localhost:4567"
remote="*:8080" # "*" for all interfaces (default=loopback only)
ssh -R ${remote}:${local} sshtalk.in

#"Local" port forwarding/"Outbound tunneling"
#Use remote service through local ports
ssh -L ${local}:${remote} sshtalk.in

#Dynamic port forwarding (Easy VPN)
ssh -fNn -D 5555 bastion
curl --socks5-hostname localhost:5555 -I rubygems #This runs the command on the server bastion

#X11 forwarding
ssh -XCYP hostname

#Run a remote command
ssh my-server.com -- hotsname

#Agent forwardings
ssh -A my-server.com #Will forward my private key in the session. Remote needs to be trustable, or private key can be compromized.

#To check ports bound in local system
netstat -tunlp
lsof -i :port

lsb_release -a # system information

stat fileName # file information (inode information)
df -i # file system inode info
df -h # file system size info

free -m #Mbs free -g for gbs
free_mem #From anshu's repo

top: ShiftF #(gives options to sort)

lsof #List open files

kill -s HUP PID #(sending SIGHUP) -> reloads without restarting

iotop #Top for input/output
iftop #Top for networking
netstat #No of open connections sudo netstat -planet | grep 443
tcpdump
sar

#Use output of previous command in next command
tar -czfv whereToCompress.tar.gz whatToCompress/

#zcat -> unzip and cat
screen
^a^c -> to open a new tab
^d -> kill
^aShiftK
^a2 -> tab number
^aShift -> number

#Command to add user, create home directory, set default shell
adduser [username]
