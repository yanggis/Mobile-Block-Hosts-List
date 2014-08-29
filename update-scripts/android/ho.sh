#
# ho.sh --> "hosts-open" for Android
#
# This script copies 'hosts.open' to 'hosts'. 
#
# IMPORTANT: 'hosts.open' should contain the contents
#            of the original 'hosts' file (usually just
#            forwards 'localhost' to 127.0.0.1
#
# For background information see:
# https://github.com/martinsauter/Mobile-Block-Hosts-List
#

cd /etc
mount -o rw,remount /system
cp hosts.open hosts
mount -o ro,remount /system
