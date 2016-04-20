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



