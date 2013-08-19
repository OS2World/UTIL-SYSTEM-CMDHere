/* REXX */

/*

 * cmdhere. This file was created for Gary L. Robinson 

 * by Project Smarts on 17 Sep 1995. 

 */

/*  REXX - cmdhere install script                        */
/*  Installs cmdhere's DLL                               */

Parse source . . __rexx_name;
__rexx_dir = Filespec('D',__rexx_name)||Filespec('P',__rexx_name)

Call RxFuncAdd 'SysLoadFuncs', 'REXXUTIL', 'SysLoadFuncs';
Call SysLoadFuncs;           

     /* Get system DLL directory path */
     system_dll='E:\';

     rc = SysDestroyObject('<CMDHERE_TEST>'); 
     rc=SysDeregisterObjectClass('cmdherefolder');     /* Deregister cmdhere class */

     rc = SysDestroyObject('<CMDHERE_TESTROOT>'); 
     rc=SysDeregisterObjectClass('cmdhroot');     /* Deregister cmdhere class */

     Address CMD '@ERASE 'system_dll'cmdhere.dll 2>NUL';    /* Erase old DLL */
     Address CMD '@ERASE 'system_dll'cmdhres.dll 2>NUL';    /* Erase old DLL */
     Address CMD '@ERASE 'system_dll'cmdhere.ico 2>NUL';    /* Erase old DLL */
Exit;
