# cmdhere.mak
# Created by IBM WorkFrame/2 MakeMake at 5:14:59 on 24 Aug 1997
#
# The actions included in this make file are:
#  Compile::SOM Compiler
#  Compile::C++ Compiler
#  Link::Linker

.SUFFIXES:

.SUFFIXES: \
    .IDL .c .obj 

.IDL.c:
    @echo " Compile::SOM Compiler "
    sc.exe -p -S65536 -C65536 -mnoint %s

{F:\cmdhere\WPSDLL}.IDL.c:
    @echo " Compile::SOM Compiler "
    sc.exe -p -S65536 -C65536 -mnoint %s

.c.obj:
    @echo " Compile::C++ Compiler "
    icc.exe /Ss /Gm /Ge- /Ms /C %s

{F:\cmdhere\WPSDLL}.c.obj:
    @echo " Compile::C++ Compiler "
    icc.exe /Ss /Gm /Ge- /Ms /C %s

all: \
    .\cmdhere.dll

.\cmdhere.dll: \
    .\CMDHERE.obj \
    {$(LIB)}somtk.lib \
    {$(LIB)}cmdhere.def \
    cmdhere.mak
    @echo " Link::Linker "
    icc.exe @<<
     /B" /st:655360 /noe"
     /Fecmdhere.dll 
     somtk.lib 
     cmdhere.def
     .\CMDHERE.obj
<<

.\CMDHERE.c: \
    F:\cmdhere\WPSDLL\CMDHERE.IDL \
    cmdhere.mak

.\CMDHERE.obj: \
    .\CMDHERE.c \
    cmdhere.mak
