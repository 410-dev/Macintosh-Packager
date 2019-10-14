# Macintosh Packager
Macintosh Packager - DPKG Alternative

Notice (2019-10-09): I'm currently developing version 8.0, which will be one of the biggest upgrade since the first release. So I'm expecting that it would take a long time to finish 8.0, so there will be several beta releases before the stable release of 8.0. To access beta, you need two packages installed: mpkg beta access preference setups & mpkg8's upgrading utility.



You may click [here](https://github.com/HTTP410GONE/Macintosh-Packages/raw/master/mpkg-beta.mpack) to download beta access preference setups, or you may type (mpkg8):

``sudo net mpkg-beta``


To install the mpkg8 upgrading tool to mpkg7, type the following:

``sudo net mpkg8upgrader; sudo m8u --upgrade=upgrader; sudo mpkg --upgrade``


One line command is: 

``sudo net mpkg-beta; sudo net mpkg8upgrader; sudo m8u --upgrade=upgrader; sudo mpkg --upgrade``

## How to install
Paste these commands to Terminal.

FOR macOS: 
```curl -Ls https://raw.githubusercontent.com/HTTP410GONE/MacintoshPackager/master/net-live -o ~/netlive; chmod +x ~/netlive; sudo ~/netlive; sudo /usr/local/bin/mpkg --upgrade```

~~FOR Linux: ~~
~~```curl -Ls https://raw.githubusercontent.com/HTTP410GONE/MacintoshPackager/master/net-linux-live -o ~/netlive; chmod +x ~/netlive; sudo ~/netlive```~~
Linux is no longer supported. Final release of Linux Support is 5.3 Duo.



macOS Live Installer will no loger install the latest version directly (Live installer will not be updated). The command will automatically run upgrading tool.


## MPACK repo
[GitHub](https://github.com/HTTP410GONE/Macintosh-Packages)


## How to install unsupported packages
If the package you are trying to install is .mp (legacy and old, but installable with modern mpkg), then just change the extension to .mpack.

If the package you are trying to install conflicts with the OS architecture, then DO NOT INSTALL IT. Architecture limitation is there to protect your computer from installing wrong package, and the limiting feature is optional for developer, but when developer limited the certain architecture, then If you think the package supports different architecture but limited to install, contact to the developer.

## Sample Output after installation

>     Password:
>     NETINSTALL-LIVE
>     VERSION: 1.6
>     LAST UPDATE: MAY.29.2019 KST 00:10:20
>     This will install:
>     mpkg 5.1 Duo
>     net 1.1
>     Checking architecture...
>     Downloading files...
>     Running Macintosh Packager-live...
>     Last Update: May 5, 2019 KST 15:38:20
>     BASE: MPKG 1.2
>     MPKG 4.3 SEMI-COMPATIBILITY LAYER INCLUDED
>     Locking mpkg...
>     Unpacking...
>     Installing Macintosh Packager...
>     Selecting mpkg 5.1duo to install...
>     Removing Finder Elements...
>     Installing...
>     Running postinst...
>     Installing controls...
>     Writing connected files to database...
>     Analysis written to database.
>     Finished installing: Macintosh Packager 5.1duo
>     Cleaning up...
>     Running Macintosh Packager-live...
>     Last Update: May 5, 2019 KST 15:38:20
>     BASE: MPKG 1.2
>     MPKG 4.3 SEMI-COMPATIBILITY LAYER INCLUDED
>     mkdir: /usr/local/mpkglib: File exists
>     Locking mpkg...
>     Unpacking...
>     Installing Net Install...
>     Selecting com.zeone.netinstall 1.1 to install...
>     Removing Finder Elements...
>     Installing...
>     Installing controls...
>     Writing connected files to database...
>     Analysis written to database.
>     Finished installing: Net Install 1.1
>     Cleaning up...
>     Done.

