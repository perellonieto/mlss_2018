#!/bin/bash

# Add the following line to your crontab
#00 * * * * /bin/bash /home/maikel/Dropbox/aplicaciones/ShareLaTeX/mlss_2018/make_backup.sh

TIME=`date +%y-%m-%d_%H%M`                      # This Command will read the date.
FILENAME=mlss_2018_$TIME.tar.gz    # The filename including the date.
SRCDIR=/home/maikel/Dropbox/aplicaciones/ShareLaTeX/mlss_2018 # Source backup folder.
DESDIR=/media/disk2/backups                             # Destination of backup file.
tar -cpzf $DESDIR/$FILENAME $SRCDIR
