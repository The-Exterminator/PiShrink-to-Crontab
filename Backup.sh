#!/bin/bash

get_codename() {
        local VERSION_CODENAME
        VERSION_CODENAME=$(bash -c '. /etc/os-release; echo $VERSION_CODENAME' | sed 's/.*/\u&/')
        echo "$VERSION_CODENAME"
}

directory_check() {
	echo "Checking for "$BACKUP_PATH" and creating if missing"
	[ ! -d "$BACKUP_PATH" ] && mkdir -p "$BACKUP_PATH"
}

stopServices() {
        echo "Stopping Services before backup"
#    service smbd stop
}

startServices() {
        echo "Starting the stopped Services"
#    service smbd start
}

# Settings
BACKUP_PATH="/media/Backup/$(get_codename)/${HOSTNAME}"
BACKUP_ANTAL="3"
BACKUP_DATO=$(date +%d-%m-%Y)
ARCHITECTURE=$(getconf LONG_BIT)
HOSTNAME=$(hostname -s)
VERSION_CODENAME=$(get_codename)

stopServices

echo "Starting Backup"
directory_check
if [ -b "/dev/mmcblk0" ]; then
echo "${HOSTNAME} is Backup from SD-Card"
 dd if=/dev/mmcblk0 | pv | dd of=${BACKUP_PATH}/${HOSTNAME}${ARCHITECTURE}bits-${BACKUP_DATO}.img bs=1MB
 else
echo "${HOSTNAME} is Backup from USB"
 dd if=/dev/sda | pv | dd of=${BACKUP_PATH}/${HOSTNAME}${ARCHITECTURE}bits-${BACKUP_DATO}.img bs=1MB
fi
echo

# PiShrink
echo "Starting PiShrink"
if [ -b "/dev/mmcblk0" ]; then
 SDpishrink.sh ${BACKUP_PATH}/${HOSTNAME}${ARCHITECTURE}bits-${BACKUP_DATO}.img
 else
 USBpishrink.sh ${BACKUP_PATH}/${HOSTNAME}${ARCHITECTURE}bits-${BACKUP_DATO}.img
fi
echo

# Delete if there are more than ${BACKUP_ANTAL}
echo " Delete if there are more than $BACKUP_ANTAL"
 pushd ${BACKUP_PATH}; ls -tr ${BACKUP_PATH}/${HOSTNAME}${ARCHITECTURE}bits* | head -n -${BACKUP_ANTAL} | xargs rm; popd
echo

startServices
