CmdHere ver. 1.12  
********************
Copyright 1997 by Gary L. Robinson
2012 - Open Source under the GNU GPL V2 License.
*************************************************


*******************************************
WHAT IS CMDHERE?  
*******************************************
CmdHere is a small WPS program (no executable
files) that adds a simple cascading menu item to 
ALL the existing popup menu's for folders - 
including the Desktop.  This menu item allows 
the user to select and open an OS/2 or DOS 
command line session IN THE VERY PATH that 
the folder represents.

This saves time and aggravation to users who 
resent having to open a comand line session and
then have to use command line navigational
skills to get to where they want to go.

CmdHere also has separate menu selections
for windowed or full screen sessions.

CmdHere is small, fast, simple, and has almost
NO overhead and no drag on the system resources.  
All the functionality of CmdHere is included in another
program I sell - Desktop Wizard (current ver. is
1.41 - dw1410.zip).  However, Desktop Wizard
has many features, is somewhat complicated,
takes more memory, and (as all complicated
WPS programs) may have incompatabilities with
some other WPS programs.  You might want to
check out Desktop Wizard ($30), though, if 
you prefer a lot of WPS features wrapped up in 
a single package.



*******************************************
REQUIREMENTS  
*******************************************
CmdHere requires OS/2 Warp 3.x or OS/2 Warp 4.x.
NOT SUPPORTED ON WARP 4 WITH FIX PACK #2 or #3
FIX PACK #2 or #3 break the DOS session support
in CmdHere.  DO NOT USE CMDHERE WITH WARP 4
+ FIX PACK #2 or #3


*******************************************
What's NEW!  (BUGS!)
*******************************************
CmdHere ver. 1.01 contains a small but important
bug fix to the Install program CMDHINST.EXE.  The
small bug in ver. 1.00 may not be noticed unless 
you have a real long LIBPATH= line in your
config.sys but it is there.  This error would cause
CMDHINST.EXE to mangle your config.sys when
trying to update it (though it did save a backup) 
if the line was to long.  This version fixes that.

CmdHere ver. 1.04 contains another important
bug fix.  CmdHere would NOT install on some machines
because the buffer to hold strings while checking
the path and entries in the config.sys was not
large enough.  This has been corrected.

CmdHere ver. 1.12 
Do not use CmdHere with Warp 4 and fix pack #2 or #3.
These 2 fix packs are BUGGY and break CmdHere DOS
session support.  CmdHere still works fine with Warp
4 base product and with fix pack #1 and with Warp
3.x up to fix pack #26.  It has not been tested with
any of the fix packs after #26.

This version adds only one small feature - Hold down
on the F11 Key when you select a OS/2 or DOS session
and it will always default to a plain default CMD.EXE
or COMMAND.COM session.  Whether you have substituted
a different command processor in the settings or not.

Also, the installation has been upgraded to be slightly
more effecient and friendly.




*******************************************
INSTALLATION
*******************************************
Run the installation CMDHINST.EXE by double clicking
on the icon (!) and typing in a path where you want
the CmdHere files to be copied and registered to.

If you have already unzipped CmdHere into a directory
on you hard drive you can install it into that same
directory.  Just type that path into the appropriate
entry field.

Then press the Install button.

If the path doesn't exist you will be prompted to 
let the installation program create it for you.  It
then copies the 3 files : CMDHERE.DLL, CMDHRES.DLL,
and CMDHINST.EXE to the desired directory.  

The installation program also registers the DLL's
with the system, creates 2 new object classes 
(cmdherefolder and cmdhroot), adds an entry
to the OS2.INI file, add the install path to your
config.sys (it creates a back up of your original
config.sys - config.chr) and prompts you to reboot.

After you reboot CmdHere will also create a
CMDHERE.INI file in the directory you installed it
in.  You can now right click on any folder and
see the CmdHere menu item on the popup menu.

CMDHINST.EXE is really not needed in the directory
you installed the program into but you may want
to leave it there because the installation program
is ALSO the un-installation program.

Uninstalling CmdHere is simple, too.  Run CMDHINST.EXE
and select Uninstall.  Press Yes when prompted.  The
uninstall deregisters the 2 object classes, takes the
entry out of your OS2.INI file, takes the LIBPATH=
entry out of your config.sys for CmdHere, and 
prompts you to reboot.  After rebooting you, the
user, can then delete the files.



*******************************************
USING CMDHERE & SETTINGS
*******************************************
If you right click on any folder you should see the
CmdHere menu item on the folder's popup menu.
If you select CmdHere it will start an OS/2 windowed
command line session in the actual path that is
represented by the folder that the menu belongs to.
This is the default selection for CmdHere.

If you, instead, select the small arrow to the right
side of the CmdHere menu item it will open a sub
menu that allows you to select either an OS/2
windowed, an OS/2 full screen, a DOS windowed,
or a DOS full screen command line session.

One noteworthy item is that if you open a DOS
session with CmdHere on a folder that represents
a path that has a HPFS name (not a standard DOS
path name) the session will open in the root 
drive directory.  DOS (not even OS/2's emulated 
DOS) can see path names that don't adhere to 
DOS's rules.

The cascading menu for CmdHere also has 2 other
selections.  The About ... selection will display an
About CmdHere dialog that will have the version
number, build number, and contact information 
for the author.

There is also a Settings ... menu item selection.
The Settings page will not be used very much by
the majority of CmdHere users.  CmdHere works
"right out of the box" for most users and nothing
is required to be done on the settings page unless
you use a replacement command processor for 
OS/2 and/or DOS or you have acquired the 
registration code.

However, if you are using a different Command
Processor other than the CMD.EXE that is supplied
with OS/2 or a different DOS Command Processor
other than command.com (also supplied by OS/2)
then you may want to use the settings page to
point CmdHere to the proper file and to set
any command line arguments needed.

Entry fields :

1.  "cmd processor OS/2"
    If desired, type in fully qualified name for your
    OS/2 command processor.  eg., C:\4OS2\4OS2.EXE

2. "arguments"
   Refer to the documentation for your command
   processor to see if you need any arguments.

3.  "cmd processor DOS"
    If desired, type in fully qualified name for your
    DOS command processor.  eg., C:\4DOS\4DOS.COM

4. "arguments"
   Refer to the documentation for your command
   processor to see if you need any arguments.
   eg., 4DOS often requires you type in the path
   to 4DOS as an argument : C\4DOS

5. "Registration code"
   When you register you will receive a registration
   code.  Type it in here and keep it there to get
   rid of the shareware bug screen.  Be sure to
   save a copy of the code in case you reinstall
   CmdHere later on or reinstall OS/2.

NEW HIDDEN FEATURE : F11 Key
   Hold down on the F11 Key when you select a 
   OS/2 or DOS session and it will always default 
   to a plain default CMD.EXE or COMMAND.COM 
   session.  Whether you have substituted a different 
   command processor in the settings or not.






*******************************************
AUTHOR
*******************************************

Gary L. Robinson
P.O. Box 359
Christiansburg, OH  45389
U.S.A.

Internet -----> grobin@iname.com.com
OR
Internet -----> grobin@coax.net
Web Page ---> http://www.coax.net/people/grobin


         