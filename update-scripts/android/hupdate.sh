#
# This script for the Android command line downloads a hosts file to replace 
# the native hosts file from Github to block:
#
#  - advertisment
#  - tracking websites
#  - unsolicited Android OS downloads
#
# Note 1: Your Android devcie needs to be rooted to be able to make the system
# partition writable
#
# Note 2: Most if not all Android distributions and busybox do not come
# with curl. Therefore curl needs to be installed before using this script.
# The curl binary can be obtained directly from their project website at
# http://curl.haxx.se/. Download the ZIP file and copy 'curl' and 'openssl'
# to /system/bin. Then do a 'chmod 755' on both files to give them exec rights.
#
# Things to do:
#
# At the moment the '-k' option is used with curl to skip certificate checking.
# Find out how to install certificates (also contained in the curl zip file) to
# perform proper SSL certificate checking.
#

mount -o rw,remount /system
cd /etc
mv hosts.blocked hosts.blocked.bak
curl -k https://raw.githubusercontent.com/martinsauter/Mobile-Block-Hosts-List/master/hosts.blocked >hosts.blocked
cp hosts.blocked hosts
mount -o ro,remount /system
