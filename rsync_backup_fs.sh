#!/usr/bin/env bash

## rsync_backup_fs.sh
## Backup "/usr/ /var/ /etc/ /home/ /root /svr" to preautorized external drive.

## ONLY RUN THIS FROM YOUR HOME DIRECTORY!

## Samsung Protable SSD T7 500GB (jamalrs@NUC11PHi7) = 49e88dce-cb38-4656-9dbc-b03c7cea74df
ssd_t7_uuid='49e88dce-cb38-4656-9dbc-b03c7cea74df'

## Samsung EVO Plus 128GB (jamalrs@NUC11PHi7) = 8ac90c4a-1789-4199-acbf-17672eecc483
evo_plus_uuid='8ac90c4a-1789-4199-acbf-17672eecc483'

cur_uuid=$evo_plus_uuid

if [ -d "/run/media/jamalrs/$cur_uuid/" ]; then
    rsync --exclude '/home/jamalrs/.local/share/Steam/' \
        --exclude '/home/jamalrs/.steam/' \
	--exclude '/home/jamalrs/.vms/' \
	--exclude '/home/jamalrs/.minecraft/' \
	--exclude '/home/jamalrs/.paradoxlauncher/' \
	--exclude '/home/jamalrs/Android/' \
	--exclude '/home/jamalrs/.wine/' \
	--exclude '/home/jamalrs/.local/share/Trash/' \
	--exclude '/home/jamalrs/.backups/' \
	--exclude '/run/' \
	--exclude '/proc/' \
	--exclude '/dev/' \
	--exclude '/mnt/' \
	--exclude '/sys/' \
	--exclude '/tmp/' \
	--exclude '/dev/' \
	--exclude '/bin/' \
	--exclude '/lib/' \
	--exclude '/lib64/' \
	--exclude '/sbin/' \
	-avr / /run/media/jamalrs/$cur_uuid/backups/current/ \
	&& sync \
	echo 'Done.'
	exit 0

else
    echo "No preauthorized external drives connected."
    echo "Quiting without backing up..."
    exit 1

fi
exit 1
