# set the compiler
FC = gfortran

# set compiler flags
FFLAGS =

# here you could link any libraries, e.g. FFTW3 (must be uncommented).
#OPT = -I/usr/include -L/usr/lib -fftw3
OPT =

# name of the python module which we can include later
MODNAME = fort_example

# f2py command to compile and wrap the module.
# (the flag -DF2PY_REPORT_ON_ARRAY_COPY=1 is just for reporting if an
# array was copied at some point)
default:
	f2py --fcompiler=$(FC) --f90flags=$(FFLAGS) \
	$(OPT) -DF2PY_REPORT_ON_ARRAY_COPY=1 \
	-c -m $(MODNAME) f2py_example.f90

clean:
	rm -v  *.pyc *.pyo *.pyf *.so *.mod *.o
