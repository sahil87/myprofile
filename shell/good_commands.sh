#!/bin/bash

#Tar:
tar -czfv whereToCompress.tar.gz whatToCompress/

#Quick SCP
tar -czfv - folderName/ | ssh user@hostname 'cd whereIwantToUnzip && tar -xzfv -'

#zcat -> unzip and cat

screen
^a^c -> to open a new tab
^d -> kill
^aShiftK
^a2 -> tab number
^aShift -> number

lsb_release -a # system information

stat fileName # file information (inode information)
df -i # file system inode info
df -h # file system size info

free -m #Mbs free -g for gbs
free_mem #From anshu's repo

top: ShiftF (gives options to sort)

lsof #List open files

kill -s HUP PID #(sending SIGHUP) -> reloads without restarting

iotop #Top for input/output
iftop #Top for networking
netstat #No of open connections sudo netstat -planet | grep 443
tcpdump
sar
