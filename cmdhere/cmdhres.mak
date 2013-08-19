# cmdhres.mak
# Created by IBM WorkFrame/2 MakeMake at 5:12:11 on 13 Jan 1997
#
# The actions included in this make file are:
#  Compile::C++ Compiler
#  Link::Linker
#  Bind::Resource Bind
#  Compile::Resource Compiler

.SUFFIXES: .C .RC .obj .res 

.all: \
    .\cmdhres.dll

.C.obj:
    @echo " Compile::C++ Compiler "
    icc.exe /Ti /Ge- /C %s

{F:\cmdhere}.C.obj:
    @echo " Compile::C++ Compiler "
    icc.exe /Ti /Ge- /C %s

.RC.res:
    @echo " Compile::Resource Compiler "
    rc.exe -r %s %|dpfF.RES

{F:\cmdhere}.RC.res:
    @echo " Compile::Resource Compiler "
    rc.exe -r %s %|dpfF.RES

.\cmdhres.dll: \
    .\MYOBJRES.obj \
    .\MYOBJRES.res \
    {$(LIB)}cmdhres.def
    @echo " Link::Linker "
    @echo " Bind::Resource Bind "
    icc.exe @<<
     /B" /de"
     /Fecmdhres.dll 
     cmdhres.def
     .\MYOBJRES.obj
<<
    rc.exe .\MYOBJRES.res cmdhres.dll

.\MYOBJRES.obj: \
    F:\cmdhere\MYOBJRES.C

.\MYOBJRES.res: \
    F:\cmdhere\MYOBJRES.RC \
    {F:\cmdhere;$(INCLUDE)}myobjres.dlg \
    {F:\cmdhere;$(INCLUDE)}cmdhere.ih
