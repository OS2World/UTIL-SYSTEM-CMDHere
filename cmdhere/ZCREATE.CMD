/* REXX */

/*

 * cmdherefolder. This file was created for Gary L. Robinson 

 * by Project Smarts on 23 Nov 1996. 

 */

/*  REXX - cmdherefolder install script                        */
/*  Installs cmdherefolder's DLL                               */

Parse source . . __rexx_name;
__rexx_dir = Filespec('D',__rexx_name)||Filespec('P',__rexx_name)

Call RxFuncAdd 'SysLoadFuncs', 'REXXUTIL', 'SysLoadFuncs';
Call SysLoadFuncs;           

     system_dll='H:\testme\tmsub';
     base='f:\cmdhere\'
     baseA='f:\cmdhere\wpsdll\'
     

     rc=SysDeregisterObjectClass('cmdherefolder');    
     Address CMD '@ERASE 'system_dll'\cmdhere.dll 2>NUL';    
     Address CMD '@ERASE 'system_dll'\cmdhres.dll 2>NUL';    

     Address CMD '@COPY 'baseA'cmdhere.dll 'system_dll; 
     Address CMD '@COPY 'base'cmdhres.dll 'system_dll; 
     Address CMD '@COPY 'base'cmdhere.ico 'system_dll;  

     If rc <> 0                 /* If cmdherefolder class did not deregister OK */
        Then Do;
          Say  "cmdherefolder: Could not replace the cmdhere DLL, rc="rc".";
          Say  "cmdherefolder: Delete the object and the DLL from \OS2\DLL directory.";
          Exit;
          End;

     /* Everything OK so far.  Register cmdherefolder class */
     rc=SysRegisterObjectClass('cmdherefolder',system_dll||'\CMDHERE.DLL');

     If rc <> 1                 /* If cmdherefolder class did not register OK */
        Then Do;
          Say  "cmdherefolder: could not register cmdherefolder class, rc="rc".";
          Exit;
          End;    

     /* Now create object on Desktop */
     rc=SysCreateObject('cmdherefolder', 'cmdtest', '<WP_DESKTOP>', ,
                        'ICONFILE='__rexx_dir'CMDHERE.ICO;OBJECTID=<CMDHERE_TEST>;',,
                        'fail');

     If rc <> 1                 /* If there were create errors */
        Then Do;
          Say  "cmdherefolder: could not create object on the Desktop, rc="rc".";
          End;
Exit;
