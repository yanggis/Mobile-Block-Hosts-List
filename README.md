The purpose of this repository is to host a Unix 'hosts' file for Android based devices and others to block a number of domains for the following reasons:

1. Within a short time the three news websites I visit daily on my mobile have started to push ads into my face with full screen pop-ups or keep showing me the same stupid ad over and over again. Sorry, that's it, you've pushed me over the edge and I had to resort to countermeasures. Adblock Plus is available as well for Android but unless there is no alternative I don't want a proxy in the system.

2. Block Android OS updates so an Android device can be used offering Internet access to other devices over the cellular network via Wi-Fi tethering without those devices being able to download large OS update files. Also, blocking these domains is useful when traveling and using slow hotel Wi-Fi hotspots. Note that the list of domains from which OS updates are downloaded is far from complete. 

If you'd like other domains to be included to block ads or OS updates send a pull request or an email with the domains.

The hosts.blocked file can be downloaded as follows:

wget https://raw.githubusercontent.com/martinsauter/Mobile-Block-Hosts-List/master/hosts.blocked

Alternatively, a script file can be used to automate the process. Currently, script files for the following platforms are availble in the 'update-scripts' folder:

 * 'hupdate.sh' for rooted Android devices


