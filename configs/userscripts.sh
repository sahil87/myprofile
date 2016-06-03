#To create a new user:
#user add -G sudo -d /new/hom/dir -s /bin/bash
useradd -s /bin/bash sirajul
adduser sirajul #Adds with template
#Add user to groups
usermod -a -G sudo,docker sirajul
