#!/bin/bash
#Adb over wifi
#Had to remove android-tools-adb and install only adb (apt install adb) for below to work
Connect Android phone and host machine to same WiFi network
Connect Android phone to host machine using USB cable (to start with)
Execute adb tcpip 5555 from a command prompt
Find the IP address of your Android phone by going to Settings->WiFi->Settings (cog wheel in top right)
Disconnect USB cable and run adb connect <ip>:5555

adb tcpip 5555 #Connected to USB                                                                                                                                                                           [sahil@sahil-Lenovo-Flex-2-14 13:00:44]
adb connect 10.0.0.41:5555  #After disconnecting USB
adb reverse tcp:4050 tcp:4050; adb reverse tcp:4052 tcp:4052; adb reverse tcp:4053 tcp:4053;
#To run adb command on specific device:
adb -s 10.0.0.41:5555 shell ip -f inet addr show wlan0

#Tar:
tar -czfv whereToCompress.tar.gz whatToCompress/
tar -xzfv whatToUncompress.tar.gz whereToUncompress/
#c compress, x uncompress, z gzip, j bz2

#Quick SCP
tar -czv -f- folderName/ | ssh user@hostname 'cd whereIwantToUnzip && tar -xzv -f-'

#SCP through proxy
scp  -o "ProxyCommand ssh -p 2222 gw.sportscafe.in nc %h %p" api-prod10.web.int.sg.aws.sportscafe.in:/home/sahil/api-log.tar.gz .
scp  -o "ProxyCommand ssh -p 2222 gw-prod01.gmetri.com nc %h %p" tools-prod03.int.aws.mum.gmetri.com:/home/sahil/html.tar.gz .
scp  -o "ProxyCommand ssh -p 2222 gw-prod01.gmetri.com nc %h %p" ./html.tar.gz tools-prod04.int.aws.mum.gmetri.com:/home/sahil/

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

#Tunnelling local 3128 port to the tinyproxy on sahilahuja.net at port 8888:
ssh -p 443 -L 3128:localhost:8888 -N sahilahuja.net

#Dynamic port forwarding (Easy VPN)
ssh -fNn -D 5555 bastion
curl --socks5-hostname localhost:5555 -I rubygems #This runs the command on the server bastion

#X11 forwarding
ssh -XCYP hostname

#Run a remote command
ssh my-server.com -- hostname

#Agent forwardings
ssh -A my-server.com #Will forward my private key in the session. Remote needs to be trustable, or private key can be compromized.

#Using NX via SOCKS (ssh) proxy
#Run following on command line. (Runs in background mode)
ssh -D 8123 -f -C -q -N vpnuser@vpnhost.com
# -C compression
# -f background mode
# -q quite mode
# -N do not execute remote commands, just forward ports
# -D bind specified port
#ssh to vpnhost.com and list all machines using arp -a
#Open NX and create new connection with HOST, passing of final machine ip with following proxy configuration:
#Manual proxy configuration. Host: localhost, Port: 8123

#https://www.chromium.org/developers/design-documents/network-stack/socks-proxy
chromium \
--proxy-server="socks5://localhost:8123" \
--host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE localhost"

#Open
#To check ports bound in local system
netstat -plntu
lsof -i :port
lsof -P -i -n #List of apps using internet

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
netstat -plan | grep -w LISTEN
tcpdump
sar
nc -zv host.example.com 20-30 #netcat port scanning
dig
nslookup 172.18.0.2 #Reverse lookup

#https://www.cyberciti.biz/tips/linux-investigate-sockets-network-connections.html
ss -t -a #Display all TCP Sockets
ss -x -a #Display all UNIX Sockets

#Check network speed
iperf -s #to start service on one server
iperf -c <ip addr/ hostname> #to ping and test speed from the client to the server

#Use output of previous command in next command
tar -czfv whereToCompress.tar.gz whatToCompress/

sudo fuser -k 80/tcp #  just kill whatever pid is using port 80 tcp
#zcat -> unzip and cat
screen
^a^c -> to open a new tab
^d -> kill
^aShiftK
^a2 -> tab number
^aShift -> number

#To create a new user:
#user add -G sudo -d /new/hom/dir -s /bin/bash
#useradd -s /bin/bash [username]
adduser [username] --disable-password #Adds with template (creates home directory, sets default shell)
deluser [username] #Removes user

#Add user to sudoers groups
sudo groupadd -f admin 
sudo usermod -a -G sudo,admin,docker [username]
echo "%admin ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers.d/admin > /dev/null

#Adding github keys:
cd ~; mkdir .ssh; touch .ssh/authorized_keys;
curl https://github.com/sahil87.keys >> .ssh/authorized_keys

#Piping command to a remote system
cat .ssh/id_rsa.pub | ssh sheena@192.168.0.11 'cat >> .ssh/authorized_keys'

#A cool command list: https://www.commandlinefu.com/commands/browse/sort-by-votes
sudo !! #Run last command as root
mount | column -t #Awesome formatting for the mount command
curl ifconfig.me #Your external ip address
echo "ls -l" | at midnight #At is a cron shortcut
sshfs name@server:/path/to/folder /path/to/mount/point #Remote folder mount through sshfs
mount -t tmpfs tmpfs /mnt -o size=1024m #Mount a superfast tempoary partition on RAM
ssh -t reachable_host ssh unreachable_host #SSH Connection through a host in the middle
ssh user@host cat /path/to/remotefile | diff /path/to/localfile - #Diff a remote file
echo "You can simulate on-screen typing just like in the movies" | pv -qL 10
ssh-copy-id username@hostname #Copy your SSH public key on a remote machine for passwordless login - the easy way
fuser -k filename #Kills a process that is locking a file.
cat /etc/issue #Display which distro is installed

#Simple network listener
#Server: to listen to the connection
netcat -l -p [port]
#Client:
netcat [server-ip-address] [port]

#Understand the route to an ip address:
traceroute 8.8.8.8
