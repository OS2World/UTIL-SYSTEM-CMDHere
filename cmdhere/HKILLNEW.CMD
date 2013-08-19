/* REXX */

/*

 * cmdherefolder. This file was created for Gary L. Robinson 

 * by Project Smarts on 17 Sep 1995. 

 */

/*  REXX - cmdherefolder install script                        */
/*  Installs cmdhere's DLL                               */

Parse source . . __rexx_name;
__rexx_dir = Filespec('D',__rexx_name)||Filespec('P',__rexx_name)

Call RxFuncAdd 'SysLoadFuncs', 'REXXUTIL', 'SysLoadFuncs';
Call SysLoadFuncs;           

     /* Get system DLL directory path */
     system_dll='H:';

     rc = SysDestroyObject('<CMDHERE_TEST>'); 
     If rc <> 1                 /* If there were errors */
        Then Do;
          Say  "cmdherefolder: could not delete object on the Desktop, rc="rc".";
          End;
     rc=SysDeregisterObjectClass('cmdherefolder');     /* Deregister cmdherefolder class */
     If rc <> 1                 /* If there were errors */
        Then Do;
          Say  "cmdherefolder: could not deregister object, rc="rc".";
          End;

     Address CMD '@ERASE 'system_dll'\cmdhere.dll 2>NUL';    /* Erase old DLL */
     Address CMD '@ERASE 'system_dll'\cmdhres.dll 2>NUL';    /* Erase old DLL */
     Address CMD '@ERASE 'system_dll'\cmdhere.ico 2>NUL';    /* Erase old DLL */
Exit;
