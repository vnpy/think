# Microsoft Developer Studio Generated NMAKE File, Based on dbfinsert.dsp
!IF "$(CFG)" == ""
CFG=dbfinsert - Win32 Debug
!MESSAGE No configuration specified. Defaulting to dbfinsert - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "dbfinsert - Win32 Release" && "$(CFG)" != "dbfinsert - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "dbfinsert.mak" CFG="dbfinsert - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "dbfinsert - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "dbfinsert - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "dbfinsert - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\dbfinsert.exe" ".\dbfinsert"


CLEAN :
	-@erase "$(INTDIR)\dbfinsert.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\dbfinsert.exe"
	-@erase "dbfinsert"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /ML /W3 /GX /O2 /I "../../../include" /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /D "__THINK_UNIX2WINDOWS__" /Fp"$(INTDIR)\dbfinsert.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dbfinsert.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=think_dbf.lib think.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\dbfinsert.pdb" /machine:I386 /out:"$(OUTDIR)\dbfinsert.exe" /libpath:"../../../lib" 
LINK32_OBJS= \
	"$(INTDIR)\dbfinsert.obj"

"$(OUTDIR)\dbfinsert.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetName=dbfinsert
InputPath=.\Release\dbfinsert.exe
SOURCE="$(InputPath)"

".\dbfinsert" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat 
	@echo off 
	copy /Y Release\dbfinsert.exe ..\..\..\bin\dbfinsert.exe
<< 
	

!ELSEIF  "$(CFG)" == "dbfinsert - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\dbfinsert.exe" ".\dbfinsert"


CLEAN :
	-@erase "$(INTDIR)\dbfinsert.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\dbfinsert.exe"
	-@erase "$(OUTDIR)\dbfinsert.ilk"
	-@erase "$(OUTDIR)\dbfinsert.pdb"
	-@erase "dbfinsert"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MLd /W3 /Gm /GX /ZI /Od /I "../../../include" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /D "__THINK_UNIX2WINDOWS__" /Fp"$(INTDIR)\dbfinsert.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\dbfinsert.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=think_dbf.lib think.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:yes /pdb:"$(OUTDIR)\dbfinsert.pdb" /debug /machine:I386 /out:"$(OUTDIR)\dbfinsert.exe" /pdbtype:sept /libpath:"../../../lib" 
LINK32_OBJS= \
	"$(INTDIR)\dbfinsert.obj"

"$(OUTDIR)\dbfinsert.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetName=dbfinsert
InputPath=.\Debug\dbfinsert.exe
SOURCE="$(InputPath)"

".\dbfinsert" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat 
	@echo off 
	copy /Y Debug\dbfinsert.exe ..\..\..\bin\dbfinsert.exe
<< 
	

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("dbfinsert.dep")
!INCLUDE "dbfinsert.dep"
!ELSE 
!MESSAGE Warning: cannot find "dbfinsert.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "dbfinsert - Win32 Release" || "$(CFG)" == "dbfinsert - Win32 Debug"
SOURCE=..\dbfinsert.c

"$(INTDIR)\dbfinsert.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)



!ENDIF 

