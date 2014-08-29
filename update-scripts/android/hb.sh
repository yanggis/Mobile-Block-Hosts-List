#
# hb.sh --> "hosts-block" for Android
#
# This script copies 'hosts.blocked' to 'hosts'. 
#
# IMPORTANT: Before using this script for the first time, 
#            copy 'hosts' to 'hosts.open' so 'ho.sh' will work
#
# For background information see:
# https://github.com/martinsauter/Mobile-Block-Hosts-List
#

cd /etc
mount -o rw,remount /system
cp hosts.blocked hosts
mount -o ro,remount /system
