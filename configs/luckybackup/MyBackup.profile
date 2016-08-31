***************************** WARNING *****************************
Do NOT edit this file directly, unless you REALLY know what you are doing !!


[profile_global]
appName=luckyBackup
appVersion=0.48
TotalTasks=12

[email]
emailCommand=
emailArguments=
emailSubject=luckyBackup report
emailNever=1
emailError=0
emailSchedule=0
emailTLS=0
emailFrom=
emailTo=
emailSMTP=
emailBody=Profile:      %p
emailBody=Date:         %d
emailBody=Time:         %i
emailBody=Errors found: %e

[Task] - 0
Name=Test
TypeDirContents=0
TypeDirName=1
TypeSync=0
Source=/mnt/hd2008/test
Destination=/mnt/hd2010/IMP Backup/
LastExecutionTime=20160831102054
LastExecutionErrors=0
Args=-h
Args=--progress
Args=--stats
Args=-r
Args=-t
Args=--modify-window=1
Args=-l
Args=-D
Args=--update
Args=--delete-after
Args=--delete-excluded
Args=--exclude=**/lost+found*/
Args=--exclude=**/*Trash*/
Args=--exclude=**/*trash*/
Args=--exclude=**/.gvfs/
Args=--protect-args
Args=-e ssh -i /home/sahil/Dropbox/keys/ssh_keys/localsystems/workstation/id_rsa
Args=--backup
Args=--backup-dir=test/.luckybackup-snaphots/20160831102006/
Args=--filter=protect .luckybackup-snaphots/
Args=--log-file=/home/sahil/.luckyBackup/snaps/MyBackup-Test-20160831102054.changes.log
Args=--log-file-format=[changed_data]%i[LB]%n
Args=/mnt/hd2008/test
Args=sahil@sahil-workstation:/mnt/hd2010/IMP Backup/
ConnectRestore=
KeepSnapshots=4
SnapshotsListItem=20150302011302
SnapshotsListItem=20150303010046
SnapshotsListItem=20160831102006
SnapshotsListItem=20160831102054
Exclude=1
ExcludeFromFile=0
ExcludeFile=
ExcludeTemp=0
ExcludeCache=0
ExcludeBackup=0
ExcludeMount=0
ExcludeLostFound=1
ExcludeSystem=0
ExcludeTrash=1
ExcludeGVFS=1
Include=0
IncludeFromFile=0
IncludeModeNormal=1
IncludeFile=
Remote=1
RemoteModule=0
RemoteDestination=1
RemoteSource=0
RemoteSSH=1
RemoteHost=sahil-workstation
RemoteUser=sahil
RemotePassword=
RemoteSSHPassword=/home/sahil/Dropbox/keys/ssh_keys/localsystems/workstation/id_rsa
RemoteSSHPasswordStr=
RemoteSSHOptions=
RemoteSSHPort=0
OptionsUpdate=1
OptionsDelete=1
OptionsRecurse=1
OptionsOwnership=1
OptionsSymlinks=1
OptionsPermissions=1
OptionsDevices=1
OptionsCVS=0
OptionsHardLinks=0
OptionsFATntfs=1
OptionsSuper=0
OptionsNumericIDs=0
OptionsRestorent=0
OptionsVss=0
LuckyBackupDir=/home/sahil/.luckyBackup/
VshadowDir=/usr/bin
RsyncCommand=rsync
SshCommand=ssh
DosdevCommand=/usr/bin/dosdev.exe
CygpathCommand=/usr/bin/cygpath.exe
TempPath=/tmp
ByPassWarning=0
CloneWarning=1
RepeatOnFail=0
IncludeState=0
[Task_end] - 0

[Task] - 1
Name=Myfiles
TypeDirContents=0
TypeDirName=1
TypeSync=0
Source=/mnt/hd2008/myfiles-noncloud
Destination=/mnt/hd2010/IMP Backup/
LastExecutionTime=20160831103221
LastExecutionErrors=2
Args=-h
Args=--progress
Args=--stats
Args=-r
Args=-l
Args=-D
Args=--update
Args=--delete-after
Args=--delete-excluded
Args=--exclude=**/lost+found*/
Args=--exclude=**/*Trash*/
Args=--exclude=**/*trash*/
Args=--exclude=.svn
Args=--exclude=.git
Args=--exclude=node_modules
Args=--protect-args
Args=-e ssh -i /home/sahil/Dropbox/keys/ssh_keys/localsystems/workstation/id_rsa
Args=--backup
Args=--backup-dir=myfiles-noncloud/.luckybackup-snaphots/20141128011556/
Args=--filter=protect .luckybackup-snaphots/
Args=--log-file=/home/sahil/.luckyBackup/snaps/MyBackup-Test-20160831102054.changes.log
Args=--log-file-format=[changed_data]%i[LB]%n
Args=/mnt/hd2008/myfiles-noncloud
Args=sahil@sahil-workstation:/mnt/hd2010/IMP Backup/
ConnectRestore=
KeepSnapshots=4
SnapshotsListItem=20141116234124
SnapshotsListItem=20141128011556
SnapshotsListItem=20141226225228
SnapshotsListItem=20160831103221
Exclude=1
ExcludeFromFile=0
ExcludeFile=
ExcludeTemp=0
ExcludeCache=0
ExcludeBackup=0
ExcludeMount=0
ExcludeLostFound=1
ExcludeSystem=0
ExcludeTrash=1
ExcludeGVFS=0
ExcludeListItem=.svn
ExcludeListItem=.git
ExcludeListItem=node_modules
Include=0
IncludeFromFile=0
IncludeModeNormal=1
IncludeFile=
Remote=1
RemoteModule=0
RemoteDestination=1
RemoteSource=0
RemoteSSH=1
RemoteHost=sahil-workstation
RemoteUser=sahil
RemotePassword=
RemoteSSHPassword=/home/sahil/Dropbox/keys/ssh_keys/localsystems/workstation/id_rsa
RemoteSSHPasswordStr=
RemoteSSHOptions=
RemoteSSHPort=0
OptionsUpdate=1
OptionsDelete=1
OptionsRecurse=1
OptionsOwnership=0
OptionsSymlinks=1
OptionsPermissions=0
OptionsDevices=1
OptionsCVS=0
OptionsHardLinks=0
OptionsFATntfs=0
OptionsSuper=0
OptionsNumericIDs=0
OptionsRestorent=0
OptionsVss=0
LuckyBackupDir=/home/sahil/.luckyBackup/
VshadowDir=/usr/bin
RsyncCommand=rsync
SshCommand=ssh
DosdevCommand=/usr/bin/dosdev.exe
CygpathCommand=/usr/bin/cygpath.exe
TempPath=/tmp
ByPassWarning=0
CloneWarning=1
RepeatOnFail=0
IncludeState=1
[Task_end] - 1

[Task] - 2
Name=Photos
TypeDirContents=0
TypeDirName=1
TypeSync=0
Source=/mnt/hd2008/mypics
Destination=/mnt/hd2010/IMP Backup/
LastExecutionTime=20150302012955
LastExecutionErrors=0
Args=-h
Args=--progress
Args=--stats
Args=-r
Args=-l
Args=-D
Args=--update
Args=--delete-after
Args=--delete-excluded
Args=--exclude=**/lost+found*/
Args=--exclude=**/*Trash*/
Args=--exclude=**/*trash*/
Args=--protect-args
Args=-e ssh
Args=--backup
Args=--backup-dir=mypics/.luckybackup-snaphots/20150302012752/
Args=--filter=protect .luckybackup-snaphots/
Args=--log-file=/home/sahil/.luckyBackup/snaps/changes.log
Args=--log-file-format=[changed_data]%i[LB]%n
Args=/mnt/hd2008/mypics
Args=sahil@sahilBackup:/mnt/hd2010/IMP Backup/
ConnectRestore=
KeepSnapshots=4
SnapshotsListItem=20141128011839
SnapshotsListItem=20141226225507
SnapshotsListItem=20150302012752
SnapshotsListItem=20150302012955
Exclude=1
ExcludeFromFile=0
ExcludeFile=
ExcludeTemp=0
ExcludeCache=0
ExcludeBackup=0
ExcludeMount=0
ExcludeLostFound=1
ExcludeSystem=0
ExcludeTrash=1
ExcludeGVFS=0
Include=0
IncludeFromFile=0
IncludeModeNormal=1
IncludeFile=
Remote=1
RemoteModule=0
RemoteDestination=1
RemoteSource=0
RemoteSSH=1
RemoteHost=sahilBackup
RemoteUser=sahil
RemotePassword=
RemoteSSHPassword=
RemoteSSHPasswordStr=
RemoteSSHOptions=
RemoteSSHPort=0
OptionsUpdate=1
OptionsDelete=1
OptionsRecurse=1
OptionsOwnership=0
OptionsSymlinks=1
OptionsPermissions=0
OptionsDevices=1
OptionsCVS=0
OptionsHardLinks=0
OptionsFATntfs=0
OptionsSuper=0
OptionsNumericIDs=0
OptionsRestorent=0
OptionsVss=0
LuckyBackupDir=
VshadowDir=
RsyncCommand=
SshCommand=
DosdevCommand=
CygpathCommand=
TempPath=
ByPassWarning=0
CloneWarning=1
RepeatOnFail=0
IncludeState=0
[Task_end] - 2

[Task] - 3
Name=Software Backup
TypeDirContents=0
TypeDirName=1
TypeSync=0
Source=/mnt/hd2008/softwarebackup
Destination=/mnt/hd2010/IMP Backup/
LastExecutionTime=20141226225700
LastExecutionErrors=0
Args=-h
Args=--progress
Args=--stats
Args=-r
Args=-l
Args=-D
Args=--update
Args=--delete-after
Args=--delete-excluded
Args=--exclude=**/lost+found*/
Args=--exclude=**/*Trash*/
Args=--exclude=**/*trash*/
Args=--protect-args
Args=-e ssh
Args=--backup
Args=--backup-dir=softwarebackup/.luckybackup-snaphots/20141128011931/
Args=--filter=protect .luckybackup-snaphots/
Args=--log-file=/home/sahil/.luckyBackup/snaps/changes.log
Args=--log-file-format=[changed_data]%i[LB]%n
Args=/mnt/hd2008/softwarebackup
Args=sahil@sahilBackup:/mnt/hd2010/IMP Backup/
ConnectRestore=
KeepSnapshots=4
SnapshotsListItem=20141101040725
SnapshotsListItem=20141116234535
SnapshotsListItem=20141128011931
SnapshotsListItem=20141226225700
Exclude=1
ExcludeFromFile=0
ExcludeFile=
ExcludeTemp=0
ExcludeCache=0
ExcludeBackup=0
ExcludeMount=0
ExcludeLostFound=1
ExcludeSystem=0
ExcludeTrash=1
ExcludeGVFS=0
Include=0
IncludeFromFile=0
IncludeModeNormal=1
IncludeFile=
Remote=1
RemoteModule=0
RemoteDestination=1
RemoteSource=0
RemoteSSH=1
RemoteHost=sahilBackup
RemoteUser=sahil
RemotePassword=
RemoteSSHPassword=
RemoteSSHPasswordStr=
RemoteSSHOptions=
RemoteSSHPort=0
OptionsUpdate=1
OptionsDelete=1
OptionsRecurse=1
OptionsOwnership=0
OptionsSymlinks=1
OptionsPermissions=0
OptionsDevices=1
OptionsCVS=0
OptionsHardLinks=0
OptionsFATntfs=0
OptionsSuper=0
OptionsNumericIDs=0
OptionsRestorent=0
OptionsVss=0
LuckyBackupDir=
VshadowDir=
RsyncCommand=
SshCommand=
DosdevCommand=
CygpathCommand=
TempPath=
ByPassWarning=0
CloneWarning=1
RepeatOnFail=0
IncludeState=0
[Task_end] - 3

[Task] - 4
Name=Music
TypeDirContents=0
TypeDirName=1
TypeSync=0
Source=/mnt/hd2008/music
Destination=/mnt/hd2010/IMP Backup/
LastExecutionTime=20141226225915
LastExecutionErrors=0
Args=-h
Args=--progress
Args=--stats
Args=-r
Args=-l
Args=-D
Args=--update
Args=--delete-after
Args=--delete-excluded
Args=--exclude=**/lost+found*/
Args=--exclude=**/*Trash*/
Args=--exclude=**/*trash*/
Args=--protect-args
Args=-e ssh
Args=--backup
Args=--backup-dir=music/.luckybackup-snaphots/20141128012204/
Args=--filter=protect .luckybackup-snaphots/
Args=--log-file=/home/sahil/.luckyBackup/snaps/changes.log
Args=--log-file-format=[changed_data]%i[LB]%n
Args=/mnt/hd2008/music
Args=sahil@sahilBackup:/mnt/hd2010/IMP Backup/
ConnectRestore=
KeepSnapshots=4
SnapshotsListItem=20141101040810
SnapshotsListItem=20141116234800
SnapshotsListItem=20141128012204
SnapshotsListItem=20141226225915
Exclude=1
ExcludeFromFile=0
ExcludeFile=
ExcludeTemp=0
ExcludeCache=0
ExcludeBackup=0
ExcludeMount=0
ExcludeLostFound=1
ExcludeSystem=0
ExcludeTrash=1
ExcludeGVFS=0
Include=0
IncludeFromFile=0
IncludeModeNormal=1
IncludeFile=
Remote=1
RemoteModule=0
RemoteDestination=1
RemoteSource=0
RemoteSSH=1
RemoteHost=sahilBackup
RemoteUser=sahil
RemotePassword=
RemoteSSHPassword=
RemoteSSHPasswordStr=
RemoteSSHOptions=
RemoteSSHPort=0
OptionsUpdate=1
OptionsDelete=1
OptionsRecurse=1
OptionsOwnership=0
OptionsSymlinks=1
OptionsPermissions=0
OptionsDevices=1
OptionsCVS=0
OptionsHardLinks=0
OptionsFATntfs=0
OptionsSuper=0
OptionsNumericIDs=0
OptionsRestorent=0
OptionsVss=0
LuckyBackupDir=
VshadowDir=
RsyncCommand=
SshCommand=
DosdevCommand=
CygpathCommand=
TempPath=
ByPassWarning=0
CloneWarning=1
RepeatOnFail=0
IncludeState=0
[Task_end] - 4

[Task] - 5
Name=Movies
TypeDirContents=0
TypeDirName=1
TypeSync=0
Source=/mnt/hd2013/movies
Destination=/mnt/hd2014/IMP Media Backup/
LastExecutionTime=20141226230006
LastExecutionErrors=0
Args=-h
Args=--progress
Args=--stats
Args=-r
Args=-l
Args=-D
Args=--update
Args=--delete-after
Args=--delete-excluded
Args=--exclude=**/lost+found*/
Args=--exclude=**/*Trash*/
Args=--exclude=**/*trash*/
Args=--protect-args
Args=-e ssh
Args=--backup
Args=--backup-dir=movies/.luckybackup-snaphots/20141128012515/
Args=--filter=protect .luckybackup-snaphots/
Args=--log-file=/home/sahil/.luckyBackup/snaps/changes.log
Args=--log-file-format=[changed_data]%i[LB]%n
Args=/mnt/hd2013/movies
Args=sahil@sahilBackup:/mnt/hd2014/IMP Media Backup/
ConnectRestore=
KeepSnapshots=2
SnapshotsListItem=20141128012515
SnapshotsListItem=20141226230006
Exclude=1
ExcludeFromFile=0
ExcludeFile=
ExcludeTemp=0
ExcludeCache=0
ExcludeBackup=0
ExcludeMount=0
ExcludeLostFound=1
ExcludeSystem=0
ExcludeTrash=1
ExcludeGVFS=0
Include=0
IncludeFromFile=0
IncludeModeNormal=1
IncludeFile=
Remote=1
RemoteModule=0
RemoteDestination=1
RemoteSource=0
RemoteSSH=1
RemoteHost=sahilBackup
RemoteUser=sahil
RemotePassword=
RemoteSSHPassword=
RemoteSSHPasswordStr=
RemoteSSHOptions=
RemoteSSHPort=0
OptionsUpdate=1
OptionsDelete=1
OptionsRecurse=1
OptionsOwnership=0
OptionsSymlinks=1
OptionsPermissions=0
OptionsDevices=1
OptionsCVS=0
OptionsHardLinks=0
OptionsFATntfs=0
OptionsSuper=0
OptionsNumericIDs=0
OptionsRestorent=0
OptionsVss=0
LuckyBackupDir=
VshadowDir=
RsyncCommand=
SshCommand=
DosdevCommand=
CygpathCommand=
TempPath=
ByPassWarning=0
CloneWarning=1
RepeatOnFail=0
IncludeState=0
[Task_end] - 5

[Task] - 6
Name=Serials
TypeDirContents=0
TypeDirName=1
TypeSync=0
Source=/mnt/hd2013/serials
Destination=/mnt/hd2014/IMP Media Backup/
LastExecutionTime=20141227035855
LastExecutionErrors=0
Args=-h
Args=--progress
Args=--stats
Args=-r
Args=-l
Args=-D
Args=--update
Args=--delete-after
Args=--delete-excluded
Args=--exclude=**/lost+found*/
Args=--exclude=**/*Trash*/
Args=--exclude=**/*trash*/
Args=--protect-args
Args=-e ssh
Args=--backup
Args=--backup-dir=serials/.luckybackup-snaphots/20141128012527/
Args=--filter=protect .luckybackup-snaphots/
Args=--log-file=/home/sahil/.luckyBackup/snaps/changes.log
Args=--log-file-format=[changed_data]%i[LB]%n
Args=/mnt/hd2013/serials
Args=sahil@sahilBackup:/mnt/hd2014/IMP Media Backup/
ConnectRestore=
KeepSnapshots=4
SnapshotsListItem=20141101040837
SnapshotsListItem=20141117001018
SnapshotsListItem=20141128012527
SnapshotsListItem=20141227035855
Exclude=1
ExcludeFromFile=0
ExcludeFile=
ExcludeTemp=0
ExcludeCache=0
ExcludeBackup=0
ExcludeMount=0
ExcludeLostFound=1
ExcludeSystem=0
ExcludeTrash=1
ExcludeGVFS=0
Include=0
IncludeFromFile=0
IncludeModeNormal=1
IncludeFile=
Remote=1
RemoteModule=0
RemoteDestination=1
RemoteSource=0
RemoteSSH=1
RemoteHost=sahilBackup
RemoteUser=sahil
RemotePassword=
RemoteSSHPassword=
RemoteSSHPasswordStr=
RemoteSSHOptions=
RemoteSSHPort=0
OptionsUpdate=1
OptionsDelete=1
OptionsRecurse=1
OptionsOwnership=0
OptionsSymlinks=1
OptionsPermissions=0
OptionsDevices=1
OptionsCVS=0
OptionsHardLinks=0
OptionsFATntfs=0
OptionsSuper=0
OptionsNumericIDs=0
OptionsRestorent=0
OptionsVss=0
LuckyBackupDir=
VshadowDir=
RsyncCommand=
SshCommand=
DosdevCommand=
CygpathCommand=
TempPath=
ByPassWarning=0
CloneWarning=1
RepeatOnFail=0
IncludeState=0
[Task_end] - 6

[Task] - 7
Name=Videos
TypeDirContents=0
TypeDirName=1
TypeSync=0
Source=/mnt/hd2013/videos
Destination=/mnt/hd2014/IMP Media Backup/
LastExecutionTime=20141227035901
LastExecutionErrors=0
Args=-h
Args=--progress
Args=--stats
Args=-r
Args=-l
Args=-D
Args=--update
Args=--delete-after
Args=--delete-excluded
Args=--exclude=**/lost+found*/
Args=--exclude=**/*Trash*/
Args=--exclude=**/*trash*/
Args=--protect-args
Args=-e ssh
Args=--backup
Args=--backup-dir=videos/.luckybackup-snaphots/20141128012538/
Args=--filter=protect .luckybackup-snaphots/
Args=--log-file=/home/sahil/.luckyBackup/snaps/changes.log
Args=--log-file-format=[changed_data]%i[LB]%n
Args=/mnt/hd2013/videos
Args=sahil@sahilBackup:/mnt/hd2014/IMP Media Backup/
ConnectRestore=
KeepSnapshots=4
SnapshotsListItem=20141101040839
SnapshotsListItem=20141117001355
SnapshotsListItem=20141128012538
SnapshotsListItem=20141227035901
Exclude=1
ExcludeFromFile=0
ExcludeFile=
ExcludeTemp=0
ExcludeCache=0
ExcludeBackup=0
ExcludeMount=0
ExcludeLostFound=1
ExcludeSystem=0
ExcludeTrash=1
ExcludeGVFS=0
Include=0
IncludeFromFile=0
IncludeModeNormal=1
IncludeFile=
Remote=1
RemoteModule=0
RemoteDestination=1
RemoteSource=0
RemoteSSH=1
RemoteHost=sahilBackup
RemoteUser=sahil
RemotePassword=
RemoteSSHPassword=
RemoteSSHPasswordStr=
RemoteSSHOptions=
RemoteSSHPort=0
OptionsUpdate=1
OptionsDelete=1
OptionsRecurse=1
OptionsOwnership=0
OptionsSymlinks=1
OptionsPermissions=0
OptionsDevices=1
OptionsCVS=0
OptionsHardLinks=0
OptionsFATntfs=0
OptionsSuper=0
OptionsNumericIDs=0
OptionsRestorent=0
OptionsVss=0
LuckyBackupDir=
VshadowDir=
RsyncCommand=
SshCommand=
DosdevCommand=
CygpathCommand=
TempPath=
ByPassWarning=0
CloneWarning=1
RepeatOnFail=0
IncludeState=0
[Task_end] - 7

[Task] - 8
Name=Downloads
TypeDirContents=0
TypeDirName=1
TypeSync=0
Source=/mnt/hd2013/downloads
Destination=/mnt/hd2014/IMP Media Backup/
LastExecutionTime=20141128012541
LastExecutionErrors=0
Args=-h
Args=--progress
Args=--stats
Args=-r
Args=-l
Args=-D
Args=--update
Args=--delete-after
Args=--delete-excluded
Args=--exclude=**/lost+found*/
Args=--exclude=**/*Trash*/
Args=--exclude=**/*trash*/
Args=--exclude=incomplete
Args=--protect-args
Args=-e ssh
Args=--backup
Args=--backup-dir=downloads/.luckybackup-snaphots/20141117001407/
Args=--filter=protect .luckybackup-snaphots/
Args=--log-file=/home/sahil/.luckyBackup/snaps/changes.log
Args=--log-file-format=[changed_data]%i[LB]%n
Args=/mnt/hd2013/downloads
Args=sahil@sahilBackup:/mnt/hd2014/IMP Media Backup/
ConnectRestore=
KeepSnapshots=2
SnapshotsListItem=20141117001407
SnapshotsListItem=20141128012541
Exclude=1
ExcludeFromFile=0
ExcludeFile=
ExcludeTemp=0
ExcludeCache=0
ExcludeBackup=0
ExcludeMount=0
ExcludeLostFound=1
ExcludeSystem=0
ExcludeTrash=1
ExcludeGVFS=0
ExcludeListItem=incomplete
Include=0
IncludeFromFile=0
IncludeModeNormal=1
IncludeFile=
Remote=1
RemoteModule=0
RemoteDestination=1
RemoteSource=0
RemoteSSH=1
RemoteHost=sahilBackup
RemoteUser=sahil
RemotePassword=
RemoteSSHPassword=
RemoteSSHPasswordStr=
RemoteSSHOptions=
RemoteSSHPort=0
OptionsUpdate=1
OptionsDelete=1
OptionsRecurse=1
OptionsOwnership=0
OptionsSymlinks=1
OptionsPermissions=0
OptionsDevices=1
OptionsCVS=0
OptionsHardLinks=0
OptionsFATntfs=0
OptionsSuper=0
OptionsNumericIDs=0
OptionsRestorent=0
OptionsVss=0
LuckyBackupDir=
VshadowDir=
RsyncCommand=
SshCommand=
DosdevCommand=
CygpathCommand=
TempPath=
ByPassWarning=0
CloneWarning=1
RepeatOnFail=0
IncludeState=0
[Task_end] - 8

[Task] - 9
Name=b
TypeDirContents=0
TypeDirName=1
TypeSync=0
Source=/mnt/hd2013/b
Destination=/mnt/hd2014/IMP Media Backup/
LastExecutionTime=20141128023631
LastExecutionErrors=0
Args=-h
Args=--progress
Args=--stats
Args=-r
Args=-l
Args=-D
Args=--update
Args=--delete-after
Args=--delete-excluded
Args=--exclude=**/lost+found*/
Args=--exclude=**/*Trash*/
Args=--exclude=**/*trash*/
Args=--exclude=.fuse_hidden*
Args=--protect-args
Args=-e ssh
Args=--filter=protect .luckybackup-snaphots/
Args=/mnt/hd2013/b
Args=sahil@sahilBackup:/mnt/hd2014/IMP Media Backup/
ConnectRestore=
KeepSnapshots=1
SnapshotsListItem=20141128023631
Exclude=1
ExcludeFromFile=0
ExcludeFile=
ExcludeTemp=0
ExcludeCache=0
ExcludeBackup=0
ExcludeMount=0
ExcludeLostFound=1
ExcludeSystem=0
ExcludeTrash=1
ExcludeGVFS=0
ExcludeListItem=.fuse_hidden*
Include=0
IncludeFromFile=0
IncludeModeNormal=1
IncludeFile=
Remote=1
RemoteModule=0
RemoteDestination=1
RemoteSource=0
RemoteSSH=1
RemoteHost=sahilBackup
RemoteUser=sahil
RemotePassword=
RemoteSSHPassword=
RemoteSSHPasswordStr=
RemoteSSHOptions=
RemoteSSHPort=0
OptionsUpdate=1
OptionsDelete=1
OptionsRecurse=1
OptionsOwnership=0
OptionsSymlinks=1
OptionsPermissions=0
OptionsDevices=1
OptionsCVS=0
OptionsHardLinks=0
OptionsFATntfs=0
OptionsSuper=0
OptionsNumericIDs=0
OptionsRestorent=0
OptionsVss=0
LuckyBackupDir=
VshadowDir=
RsyncCommand=
SshCommand=
DosdevCommand=
CygpathCommand=
TempPath=
ByPassWarning=0
CloneWarning=1
RepeatOnFail=0
IncludeState=0
[Task_end] - 9

[Task] - 10
Name=Take Backup In External Media
TypeDirContents=0
TypeDirName=1
TypeSync=0
Source=/home/sahil/Pictures/photos/mypics/Arranged
Destination=/run/media/sahil/2010-Extrnl-ext4/photos/
LastExecutionTime=
LastExecutionErrors=-1
Args=-h
Args=--progress
Args=--stats
Args=-r
Args=-tgo
Args=-p
Args=--update
Args=--delete-after
Args=--filter=protect .luckybackup-snaphots/
Args=/home/sahil/Pictures/photos/mypics/Arranged
Args=/run/media/sahil/2010-Extrnl-ext4/photos/
ConnectRestore=
KeepSnapshots=1
Exclude=0
ExcludeFromFile=0
ExcludeFile=
ExcludeTemp=0
ExcludeCache=0
ExcludeBackup=0
ExcludeMount=0
ExcludeLostFound=0
ExcludeSystem=0
ExcludeTrash=0
ExcludeGVFS=0
Include=0
IncludeFromFile=0
IncludeModeNormal=1
IncludeFile=
Remote=0
RemoteModule=0
RemoteDestination=1
RemoteSource=0
RemoteSSH=0
RemoteHost=
RemoteUser=
RemotePassword=
RemoteSSHPassword=
RemoteSSHPasswordStr=
RemoteSSHOptions=
RemoteSSHPort=0
OptionsUpdate=1
OptionsDelete=1
OptionsRecurse=1
OptionsOwnership=1
OptionsSymlinks=0
OptionsPermissions=1
OptionsDevices=0
OptionsCVS=0
OptionsHardLinks=0
OptionsFATntfs=0
OptionsSuper=0
OptionsNumericIDs=0
OptionsRestorent=0
OptionsVss=0
LuckyBackupDir=
VshadowDir=
RsyncCommand=
SshCommand=
DosdevCommand=
CygpathCommand=
TempPath=
ByPassWarning=0
CloneWarning=1
RepeatOnFail=0
IncludeState=0
[Task_end] - 10

[Task] - 11
Name=Xbox backup
TypeDirContents=0
TypeDirName=0
TypeSync=1
Source=/media/sahil/2438-3916/
Destination=/media/sahil/02D2-BCDF/
LastExecutionTime=20140716001311
LastExecutionErrors=0
Args=-h
Args=--progress
Args=--stats
Args=-r
Args=-tgo
Args=-p
Args=-l
Args=-D
Args=--update
Args=--exclude=Xbox360
Args=--filter=protect .luckybackup-snaphots/
Args=/media/sahil/2438-3916/
Args=/media/sahil/02D2-BCDF/
ConnectRestore=
KeepSnapshots=1
SnapshotsListItem=20140716001311
Exclude=1
ExcludeFromFile=0
ExcludeFile=
ExcludeTemp=0
ExcludeCache=0
ExcludeBackup=0
ExcludeMount=0
ExcludeLostFound=0
ExcludeSystem=0
ExcludeTrash=0
ExcludeGVFS=0
ExcludeListItem=Xbox360
Include=0
IncludeFromFile=0
IncludeModeNormal=1
IncludeFile=
Remote=0
RemoteModule=0
RemoteDestination=1
RemoteSource=0
RemoteSSH=0
RemoteHost=
RemoteUser=
RemotePassword=
RemoteSSHPassword=
RemoteSSHPasswordStr=
RemoteSSHOptions=
RemoteSSHPort=0
OptionsUpdate=1
OptionsDelete=0
OptionsRecurse=1
OptionsOwnership=1
OptionsSymlinks=1
OptionsPermissions=1
OptionsDevices=1
OptionsCVS=0
OptionsHardLinks=0
OptionsFATntfs=0
OptionsSuper=0
OptionsNumericIDs=0
OptionsRestorent=0
OptionsVss=0
LuckyBackupDir=
VshadowDir=
RsyncCommand=
SshCommand=
DosdevCommand=
CygpathCommand=
TempPath=
ByPassWarning=0
CloneWarning=1
RepeatOnFail=0
IncludeState=0
[Task_end] - 11


[profile end]
