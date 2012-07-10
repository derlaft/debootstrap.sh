#!/bin/bash

source ./preinst.sh
source ./confinst.sh
cp ./postinst.sh $TARGET/
env LANG=C env HOME=/root chroot $TARGET /bin/bash /postinst.sh
rm $TARGET/postinst.sh
