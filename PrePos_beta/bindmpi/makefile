#------settings-------------------
FORTRAN	= ifort
FFLAGS = /nologo /fpp
#FFLAGS = /nologo /Od /fpp /check:all /traceback

LOADER = ifort
LOADOPTS = /nologo /link

#---------------------------------

#-------- change here-------------


FINCS	=

FDEFS	=

LIBS	=

OBJS	= bindmpi.obj

f77exm = bindmpi.exe

#-------- end of change here --------

.SUFFIXES: .F90

all:	$(f77exm)

$(f77exm): $(OBJS)
	$(LOADER) $(OBJS) $(LOADOPTS) $(LIBS) /out:$@

.f.obj:
	$(FORTRAN) $(FFLAGS) $(FINCS) $(FDEFS) -c $<

.F90.obj:
	$(FORTRAN) $(FFLAGS) $(FINCS) $(FDEFS) -c $<

clean:
	del *.obj *.mod
