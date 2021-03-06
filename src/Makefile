#
#  File        : Makefile
#                ( Makefile for GNU 'make' utility )
#
#  Description : Makefile for compiling :
#
#                 . the G'MIC command line tool (type 'make cli').
#                 . the G'MIC library, with the C++ API (type 'make lib').
#                 . the G'MIC library, with the C API (type 'make libc' or 'make libcstatic').
#                 . the G'MIC plug-in for GIMP, recommended Qt-based version (type 'make gimp').
#                 . the G'MIC plug-in for Krita (type 'make krita').
#                 . To compile all of them, just type 'make', or 'make all').
#
#                ( https://gmic.eu )
#
#  Copyright   : David Tschumperle
#                ( https://tschumperle.users.greyc.fr/ )
#
#  Licenses    : This file is 'dual-licensed', you have to choose one
#      	          of the two licenses below to apply.
#
#                CeCILL-C
#                The CeCILL-C license is close to the GNU LGPL.
#                ( http://cecill.info/licences/Licence_CeCILL-C_V1-en.html )
#
#            or  CeCILL v2.1
#                The CeCILL license is compatible with the GNU GPL.
#                ( http://cecill.info/licences/Licence_CeCILL_V2.1-en.html )
#
#  This software is governed either by the CeCILL or the CeCILL-C license
#  under French law and abiding by the rules of distribution of free software.
#  You can  use, modify and or redistribute the software under the terms of
#  the CeCILL or CeCILL-C licenses as circulated by CEA, CNRS and INRIA
#  at the following URL: "http://cecill.info".
#
#  As a counterpart to the access to the source code and  rights to copy,
#  modify and redistribute granted by the license, users are provided only
#  with a limited warranty  and the software's author,  the holder of the
#  economic rights,  and the successive licensors  have only  limited
#  liability.
#
#  In this respect, the user's attention is drawn to the risks associated
#  with loading,  using,  modifying and/or developing or reproducing the
#  software by the user in light of its specific status of free software,
#  that may mean  that it is complicated to manipulate,  and  that  also
#  therefore means  that it is reserved for developers  and  experienced
#  professionals having in-depth computer knowledge. Users are therefore
#  encouraged to load and test the software's suitability as regards their
#  requirements in conditions enabling the security of their systems and/or
#  data to be ensured and,  more generally, to use and operate it in the
#  same conditions as regards security.
#
#  The fact that you are presently reading this means that you have had
#  knowledge of the CeCILL and CeCILL-C licenses and that you accept its terms.
#

#---------------------------
# Set OS-specific variables.
#---------------------------

# Try to auto-detect target OS.
OS = $(shell uname)
USR = /usr
LIB = lib
BIN = bin
INCLUDE = include
SO = .so
PIC = -fPIC
EXE =
WGET = wget --no-check-certificate --quiet -O
PLUGINDIR = $(shell gimptool-2.0 --gimpplugindir)/plug-ins
VERSION = $(shell grep 'gmic_version\ ' gmic.h | tail -c4 | head -c3)
VERSION1 = $(shell grep 'gmic_version\ ' gmic.h | tail -c4 | head -c1)
VERSION2 = $(shell grep 'gmic_version\ ' gmic.h | tail -c3 | head -c1)
VERSION3 = $(shell grep 'gmic_version\ ' gmic.h | tail -c2 | head -c1)
SVERSION=$(VERSION1).$(VERSION2).$(VERSION3)
SRC_PATH=$(shell pwd)

# Check that versions of files 'CImg.h' and 'gmic.h' match.
ifneq (,$(wildcard CImg.h))
CIMG_VERSION = $(shell grep 'cimg_version\ ' CImg.h | tail -c4 | head -c3)
else
CIMG_VERSION = $(VERSION)
endif

ifneq ($(VERSION),$(CIMG_VERSION))
REMOVE_CIMG_H := $(shell rm -f CImg.h)
endif

ifeq ($(OS),Linux)
OS = Unix
endif

ifeq ($(OS),GNU/kFreeBSD)
OS = Unix
endif

ifeq ($(OS),GNU)
OS = Unix
endif

ifeq ($(OS),FreeBSD)
OS = Unix
USR = /usr/local
endif

ifeq ($(OS),DragonFly)
OS = Unix
USR = /usr/local
endif

ifeq ($(OS),NetBSD)
OS = Unix
endif

ifneq (, $(findstring MINGW, $(OS)))
OS = Windows
USR = /mingw64
endif

ifeq ($(OS),Darwin)
ifeq (,$(wildcard /opt/local))
USR = /usr/local
PLUGINDIR = $(HOME)/Library/Application\ Support/Gimp/plug-ins
else
USR = /opt/local
endif
WGET = curl -k -L --silent -o
endif

ifeq ($(OS),Windows)
EXE = .exe
SO = .dll
PIC =
endif

ifeq ($(shell echo $(notdir $(CXX)) | head -c3),g++)
IS_GCC = 1
endif
ifeq ($(shell echo $(notdir $(CXX)) | head -c7),clang++)
IS_CLANG = 1
endif
ifeq ($(shell echo $(notdir $(CXX)) | head -c4),icpc)
IS_ICPC = 1
endif

ifdef NOSTRIP
STRIP = echo skip strip
else
STRIP = strip
endif

ifndef QMAKE
QMAKE = qmake
endif

#--------------------------------------------------------
# Define compilation flags to se for each enable feature.
#--------------------------------------------------------

# Flags set to describe a 'prerelease' version.
NO_PRERELEASE = $(shell date +%y%m%d)
NO_PRERELEASE_CFLAGS = -Dgmic_prerelease="\\\"$(PRERELEASE)\\\""

# Minimal set of flags mandatory to compile G'MIC.
MANDATORY_CFLAGS = -Dgmic_build -Dcimg_date=\\\"\\\" -Dcimg_time=\\\"\\\" -Dcimg_use_zlib $(shell pkg-config --cflags zlib || echo -I$(USR)/$(INCLUDE)) $(PRERELEASE_CFLAGS) $(EXTRA_CFLAGS)
MANDATORY_LIBS = $(shell pkg-config --libs zlib || echo -lz) $(EXTRA_LIBS)

ifndef NO_SRIPDLIB
MANDATORY_CFLAGS += -std=c++11 -pedantic
endif
MANDATORY_LIBS += -L$(USR)/$(LIB)
ifdef IS_GCC
MANDATORY_CFLAGS += -Wall -Wextra -Wfatal-errors -Werror=unknown-pragmas -Werror=unused-label
MANDATORY_LIBS += -lm
GCC_VER_GTEQ5 = $(shell expr `$(CXX) -dumpversion | cut -f1 -d.` \>= 5)
ifeq ($(GCC_VER_GTEQ5),1)
MANDATORY_CFLAGS += -Wshadow
endif
endif
ifeq ($(OS),Unix)
MANDATORY_CFLAGS += -Dcimg_use_vt100
endif
ifeq ($(OS),Darwin)
ifndef NO_STDLIB
MANDATORY_CFLAGS += -stdlib=libc++
endif
endif
ifeq ($(OS),Windows)
MANDATORY_LIBS += -Wl,--stack,16777216
endif

# Enable optimizations.
OPT_CFLAGS = -Ofast
ifdef IS_GCC
OPT_CFLAGS = -Ofast -mtune=generic -flto # -fno-finite-math-only
OPT_LIBS = -flto
endif
ifdef icpc
OPT_CFLAGS = -fast
endif

# Enable multi-threading support.
PARALLEL_CFLAGS = -Dgmic_is_parallel
ifneq ($(OS),Windows)
PARALLEL_LIBS = -lpthread
endif

# Enable parallelization in CImg, using OpenMP.
# (http://www.openmp.org/)
OPENMP_CFLAGS = -fopenmp -Dcimg_use_openmp
OPENMP_LIBS = -lgomp

# Enable software debugging.
# (Use address sanitizer and thus slows down the code)
ifeq ($(OS),Windows)
DEBUG_CFLAGS = -pedantic -Dcimg_verbosity=3 -Dcimg_strict_warnings -g
else
DEBUG_CFLAGS = -pedantic -Dcimg_verbosity=3 -Dcimg_strict_warnings -g -fsanitize=address # -fsanitize=thread # -fsanitize=undefined # Removed '-ansi' as it (silently) disables c++11.
endif

# Enable extra checking of image buffer pointers.
# (Useful for debug, also slows down the code)
ifneq ($(OS),Darwin)
CHECKIMAGE_CFLAGS = # -Dgmic_check_image
endif

# Enable cancellation points in CImg methods.
ABORT_CFLAGS = -Dcimg_use_abort

# Enable image display, using X11 (Unix).
# (Keep /usr/ dirname here since X11 is located in /usr/ on Mac too)
ifneq ($(OS),Darwin)
X11_CFLAGS = -Dcimg_display=1 $(shell pkg-config --cflags x11 || echo -I/usr/X11R6/include) #-Dcimg_use_xrandr
X11_LIBS = $(shell pkg-config --libs x11 || echo -L/usr/X11R6/lib -lX11) -lpthread # $(shell pkg-config --libs xrandr || echo -lXrandr)
else
ifeq (,$(wildcard /usr/X11))
X11_CFLAGS = -Dcimg_display=0 #-Dcimg_use_xrandr
X11_LIBS = -lpthread # $(shell pkg-config --libs xrandr || echo -lXrandr)
else
X11_CFLAGS = -Dcimg_display=1 $(shell pkg-config --cflags x11 || echo -I/usr/X11/include) #-Dcimg_use_xrandr
X11_LIBS = -L/usr/X11/lib -lX11 -lpthread # $(shell pkg-config --libs xrandr || echo -lXrandr)
endif
endif

# Enable faster X11 display, using XShm extension.
# (ftp://www.x.org/pub/X11R7.7/doc/man/man3/XShm.3.xhtml)
XSHM_CFLAGS = -Dcimg_use_xshm $(shell pkg-config --cflags xcb-shm)
XSHM_LIBS = $(shell pkg-config --libs xcb-shm || echo -L$(USR)/X11R6/lib) -lXext

# Enable image display, using GDI32 (Windows).
GDI32_CFLAGS = -Dcimg_display=2
GDI32_LIBS = -lgdi32

# Enable native support of PNG image files, using the PNG library.
# (http://www.libpng.org/pub/png/libpng.html)
ifneq ($(OS),Darwin)
PNG_CFLAGS = -Dcimg_use_png $(shell pkg-config --cflags libpng)
PNG_LIBS = $(shell pkg-config --libs libpng || echo -lpng -lz)
else
ifeq (,$(wildcard /tmp/skl))
PNG_CFLAGS = -Dcimg_use_png $(shell pkg-config --cflags libpng)
PNG_LIBS = $(shell pkg-config --libs libpng || echo -lpng -lz)
else
PNG_CFLAGS = -Dcimg_use_png
PNG_LIBS = -lpng -lz
endif
endif

# Enable native support of JPEG image files, using the JPEG library.
# (http://libjpeg.sourceforge.net/)
JPEG_CFLAGS = -Dcimg_use_jpeg
JPEG_LIBS = -ljpeg

# Enable native support of TIFF image files, using the TIFF library.
# (http://www.libtiff.org/)
TIFF_CFLAGS = -Dcimg_use_tiff $(shell pkg-config --cflags libtiff-4)
TIFF_LIBS = $(shell pkg-config --libs libtiff-4 || echo -ltiff)

# Enable native support of MINC2 image files, using the MINC2 library.
# ( http://en.wikibooks.org/wiki/MINC/Reference/MINC2.0_Users_Guide )
MINC2_CFLAGS = -Dcimg_use_minc2 -I${HOME}/local/include
MINC2_LIBS = -lminc_io -lvolume_io2 -lminc2 -lnetcdf -lhdf5 -lz -L${HOME}/local/lib

# Enable native support for downloading files from the network.
# ( http://curl.haxx.se/libcurl/ )
CURL_CFLAGS = -Dcimg_use_curl $(shell pkg-config --cflags libcurl)
CURL_LIBS = $(shell pkg-config --libs libcurl || echo -lcurl)

# Enable native support of webcams and video streaming, using the OpenCV library.
# (https://opencv.org/)
OPENCV_CFLAGS = -Dcimg_use_opencv $(shell pkg-config opencv --cflags || echo -I/usr/include/opencv) -I/usr/include/opencv
OPENCV_LIBS = $(shell pkg-config opencv --libs || echo -lopencv_core -lopencv_highgui)

# Enable support of most classical image file formats, using the GraphicsMagick++ library.
# (http://www.graphicsmagick.org/Magick++/)
MAGICK_CFLAGS = -Dcimg_use_magick $(shell pkg-config --cflags GraphicsMagick++ || echo -I$(USR)/$(INCLUDE)/GraphicsMagick)
MAGICK_LIBS = $(shell pkg-config --libs GraphicsMagick++ || echo -lGraphicsMagick++)

# Enable native support of EXR image files, using the OpenEXR library.
# (http://www.openexr.com/)
OPENEXR_CFLAGS = -Dcimg_use_openexr -I$(USR)/$(INCLUDE)/OpenEXR
OPENEXR_LIBS = -lIlmImf -lHalf

# Enable Fast Fourier Transforms, using the FFTW3 library.
# (http://www.fftw.org/)
FFTW_CFLAGS = -Dcimg_use_fftw3 $(shell pkg-config --cflags fftw3)
FFTW_LIBS = $(shell pkg-config --libs fftw3 || echo -lfftw3)
ifneq ($(OS),Windows)
FFTW_LIBS += -lfftw3_threads
endif

# Enable native support of the BOARD library.
# (https://github.com/c-koi/libboard)
BOARD_CFLAGS = -Dcimg_use_board
BOARD_LIBS = -lboard

#-------------------------------
# Define main Makefile entries.
#-------------------------------

# Multi-targets
#--------------
all:
	@echo "**"
ifeq ($(OS),Unix)
	@echo "** Start building G'MIC with default Unix configuration."
else
ifeq ($(OS),Darwin)
	@echo "** Start building G'MIC with default MacOSX configuration."
else
	@echo "** Start building G'MIC with default Windows configuration."
endif
endif
	@echo "**"
	$(MAKE) cli lib gimp krita gmic_qt libc zart

native:
	$(MAKE) "CFLAGS+=$(GMIC_CLI_CFLAGS) -Ofast -march=native" "LIBS+=$(GMIC_CLI_LIBS)" cli

# CLI (standard)
#---------------
GMIC_CLI_CFLAGS = $(MANDATORY_CFLAGS) $(ABORT_CFLAGS) $(PARALLEL_CFLAGS) $(EIGEN_CFLAGS) $(FFTW_CFLAGS) $(CURL_CFLAGS) $(PNG_CFLAGS) $(JPEG_CFLAGS) $(TIFF_CFLAGS)
GMIC_CLI_LIBS = $(MANDATORY_LIBS) $(PARALLEL_LIBS) $(EIGEN_LIBS) $(FFTW_LIBS) $(CURL_LIBS) $(PNG_LIBS) $(JPEG_LIBS) $(TIFF_LIBS)
ifeq ($(OS),Unix) # Unix.
GMIC_CLI_CFLAGS += $(OPENMP_CFLAGS) $(X11_CFLAGS) $(OPENEXR_CFLAGS) $(OPENCV_CFLAGS) # $(XSHM_CFLAGS) # $(MAGICK_CFLAGS)
GMIC_CLI_LIBS += $(OPENMP_LIBS) $(X11_LIBS) $(OPENEXR_LIBS) $(OPENCV_LIBS) # $(XSHM_LIBS) # $(MAGICK_LIBS)
else
ifeq ($(OS),Darwin) # MacOSX.
GMIC_CLI_CFLAGS += $(X11_CFLAGS) $(OPENEXR_CFLAGS) $(OPENCV_CFLAGS)
GMIC_CLI_LIBS += $(X11_LIBS) $(OPENEXR_LIBS) $(OPENCV_LIBS) $(OPT_LIBS)
else # Windows.
GMIC_CLI_CFLAGS += $(OPENMP_CFLAGS) $(GDI32_CFLAGS) $(OPENCV_CFLAGS)
GMIC_CLI_LIBS += $(OPENMP_LIBS) $(GDI32_LIBS) $(OPENCV_LIBS)
endif
endif

cli:
	$(MAKE) "CFLAGS+=$(GMIC_CLI_CFLAGS) $(OPT_CFLAGS)" "LIBS+=$(GMIC_CLI_LIBS) $(OPT_LIBS)" _cli
	$(STRIP) gmic$(EXE)

debug:
	$(MAKE) "CFLAGS+=$(GMIC_CLI_CFLAGS) $(DEBUG_CFLAGS)" "LIBS+=$(GMIC_CLI_LIBS)" _cli

_cli: gmic_cli.o gmic.cpp gmic.h gmic_stdlib.h CImg.h
	$(CXX) -o gmic gmic_cli.cpp gmic_cli.o $(CFLAGS) $(LIBS)

gmic_cli.o: gmic.cpp gmic.h gmic_stdlib.h CImg.h
	$(CXX) -o gmic_cli.o -c gmic.cpp $(CFLAGS)

# CLI (static)
#-------------
GMIC_STATIC_CLI_PATH = $(USR)/$(LIB)/x86_64-linux-gnu
GMIC_STATIC_CLI_EXTRA =
GMIC_STATIC_CLI_CFLAGS = $(MANDATORY_CFLAGS) $(ABORT_CFLAGS) $(PARALLEL_CFLAGS) $(EIGEN_CFLAGS) $(ZLIB_CFLAGS) $(FFTW_CFLAGS) $(PNG_CFLAGS) $(JPEG_CFLAGS) -Dcimg_display=0
GMIC_STATIC_CLI_LIBS = $(PARALLEL_LIBS) $(EIGEN_LIBS) \
	               $(GMIC_STATIC_CLI_PATH)/libpng.a \
	               $(GMIC_STATIC_CLI_PATH)/libjpeg.a \
                       $(GMIC_STATIC_CLI_PATH)/libz.a \
                       $(GMIC_STATIC_CLI_PATH)/libfftw3.a $(GMIC_STATIC_CLI_PATH)/libfftw3_threads.a \
	               $(GMIC_STATIC_CLI_EXTRA)

static:
	$(MAKE) "CFLAGS+=$(GMIC_STATIC_CLI_CFLAGS) $(OPT_CFLAGS)" "LIBS+=$(GMIC_STATIC_CLI_LIBS) $(OPT_LIBS)" _cli
	$(STRIP) gmic$(EXE)

# Libgmic
#--------
GMIC_LIB_CFLAGS = $(MANDATORY_CFLAGS) $(ABORT_CFLAGS) $(PARALLEL_CFLAGS) $(EIGEN_CFLAGS) $(FFTW_CFLAGS) $(CURL_CFLAGS) $(PNG_CFLAGS) $(JPEG_CFLAGS) $(TIFF_CFLAGS)
GMIC_LIB_LIBS = $(MANDATORY_LIBS) $(PARALLEL_LIBS) $(EIGEN_LIBS) $(FFTW_LIBS) $(CURL_LIBS) $(PNG_LIBS) $(JPEG_LIBS) $(TIFF_LIBS)
ifeq ($(OS),Unix) # Unix.
GMIC_LIB_CFLAGS += $(OPENMP_CFLAGS) $(X11_CFLAGS)
GMIC_LIB_LIBS += $(OPENMP_LIBS) $(X11_LIBS)
else
ifeq ($(OS),Darwin) # MacOSX.
GMIC_LIB_CFLAGS += $(X11_CFLAGS)
GMIC_LIB_LIBS += $(X11_LIBS) $(OPT_LIBS)
else # Windows.
GMIC_LIB_CFLAGS += $(OPENMP_CFLAGS) $(GDI32_CFLAGS)
GMIC_LIB_LIBS += $(OPENMP_LIBS) $(GDI32_LIBS)
endif
endif

lib:
	$(MAKE) "CFLAGS+=$(GMIC_LIB_CFLAGS) $(OPT_CFLAGS)" "LIBS+=$(GMIC_LIB_LIBS) $(OPT_LIBS)" _lib

_lib: libgmic.o use_libgmic.cpp
	ar rcs libgmic.a libgmic.o
ifeq ($(OS),Darwin)
	$(CXX) -shared -std=c++11 -pedantic -o libgmic.so libgmic.o $(LIBS)
else
	$(CXX) -shared -std=c++11 -pedantic -Wl,-soname,libgmic.so.$(VERSION1) -o libgmic.so libgmic.o $(LIBS)
	$(CXX) -o use_libgmic use_libgmic.cpp -std=c++11 -pedantic -L. -lgmic $(LIBS)
endif

libgmic.o: gmic.cpp gmic.h gmic_stdlib.h CImg.h
	$(CXX) -o libgmic.o -c gmic.cpp $(PIC) $(CFLAGS)

# LibCgmic (standard)
#--------------------
GMIC_LIBC_CFLAGS = $(MANDATORY_CFLAGS) $(ABORT_CFLAGS) $(PARALLEL_CFLAGS) $(EIGEN_CFLAGS) $(FFTW_CFLAGS) $(CURL_CFLAGS) $(PNG_CFLAGS) $(JPEG_CFLAGS) $(TIFF_CFLAGS)
GMIC_LIBC_LIBS = $(MANDATORY_LIBS) $(PARALLEL_LIBS) $(EIGEN_LIBS) $(FFTW_LIBS) $(CURL_LIBS) $(PNG_LIBS) $(JPEG_LIBS) $(TIFF_LIBS)
ifeq ($(OS),Unix) # Unix.
GMIC_LIBC_CFLAGS += $(OPENMP_CFLAGS) $(X11_CFLAGS)
GMIC_LIBC_LIBS += $(OPENMP_LIBS) $(X11_LIBS)
else
ifeq ($(OS),Darwin) # MacOSX.
GMIC_LIBC_CFLAGS += $(X11_CFLAGS)
GMIC_LIBC_LIBS += $(X11_LIBS) $(OPT_LIBS)
else # Windows.
GMIC_LIBC_CFLAGS += $(OPENMP_CFLAGS) $(GDI32_CFLAGS)
GMIC_LIBC_LIBS += $(OPENMP_LIBS) $(GDI32_LIBS)
endif
endif

libc:
	$(MAKE) "CFLAGS+=$(GMIC_LIBC_CFLAGS) $(OPT_CFLAGS)" "LIBS+=$(GMIC_LIBC_LIBS) $(OPT_LIBS)" _libc

_libc: libcgmic_files libgmic.o libcgmic.o
	ar rcs libcgmic.a libcgmic.o
ifeq ($(OS),Darwin)
	$(CXX) -shared -o libcgmic.so libcgmic.o libgmic.o $(LIBS)
else
ifeq ($(OS),Windows)
	$(CXX) -shared -Wl,-soname,libcgmic.so.$(VERSION1) -o libcgmic$(SO) libcgmic.o libgmic.o -Wl,--output-def,libcgmic.def,--out-implib,libcgmic.a $(LIBS)
else
	$(CXX) -shared -Wl,-soname,libcgmic.so.$(VERSION1) -o libcgmic$(SO) libcgmic.o libgmic.o $(LIBS)
endif
endif
	$(CC) -std=c99 -o use_libcgmic use_libcgmic.c -L. -lcgmic

libcgmic.o: gmic.cpp gmic.h gmic_stdlib.h CImg.h
	$(CXX) -o libcgmic.o -c gmic_libc.cpp $(PIC) $(CFLAGS)

libcgmic_files:
	@echo "> Retrieve G'MIC libcgmic files..."
	@if [ ! -f gmic_libc.cpp ]; then \
	  if [ -d ../../gmic-community/libcgmic ]; then \
	    ln -fs ../../gmic-community/libcgmic/gmic_libc.cpp .; \
	    ln -fs ../../gmic-community/libcgmic/gmic_libc.h .; \
	    ln -fs ../../gmic-community/libcgmic/use_libcgmic.c .; \
	  else \
            $(WGET) gmic_libc.cpp https://raw.githubusercontent.com/dtschump/gmic-community/master/libcgmic/gmic_libc.cpp; \
            $(WGET) gmic_libc.h https://raw.githubusercontent.com/dtschump/gmic-community/master/libcgmic/gmic_libc.h; \
            $(WGET) use_libcgmic.c https://raw.githubusercontent.com/dtschump/gmic-community/master/libcgmic/use_libcgmic.c; \
            touch gmic_libc.cpp gmic_libc.h use_libcgmic.c; \
	  fi; \
	fi
	@echo " done!"

# LibCgmic (static)
#------------------
GMIC_LIBC_STATIC_CFLAGS = $(MANDATORY_CFLAGS) $(ABORT_CFLAGS) $(PARALLEL_CFLAGS) $(EIGEN_CFLAGS) $(FFTW_CFLAGS) $(PNG_CFLAGS) $(JPEG_CFLAGS) # $(CURL_CFLAGS) $(TIFF_CFLAGS)
ifeq ($(OS),Window)
GMIC_LIBC_STATIC_LIBS = -Bstatic -lpthread
endif
GMIC_LIBC_STATIC_LIBS += $(MANDATORY_LIBS) $(PARALLEL_LIBS) $(EIGEN_LIBS) $(FFTW_LIBS) $(PNG_LIBS) $(JPEG_LIBS) # $(CURL_LIBS) $(TIFF_LIBS)
ifeq ($(OS),Unix) # Unix.
GMIC_LIBC_STATIC_CFLAGS += $(OPENMP_CFLAGS) $(X11_CFLAGS)
GMIC_LIBC_STATIC_LIBS += $(OPENMP_LIBS) $(X11_LIBS)
else
ifeq ($(OS),Darwin) # MacOSX.
GMIC_LIBC_STATIC_CFLAGS += $(X11_CFLAGS)
GMIC_LIBC_STATIC_LIBS += $(X11_LIBS) $(OPT_LIBS)
else # Windows.
GMIC_LIBC_STATIC_CFLAGS += $(OPENMP_CFLAGS) $(GDI32_CFLAGS)
GMIC_LIBC_STATIC_LIBS += $(OPENMP_LIBS) $(GDI32_LIBS)
endif
endif

libcstatic:
	rm -f libgmic.o
	$(MAKE) "CFLAGS+=$(GMIC_LIBC_STATIC_CFLAGS) $(OPT_CFLAGS)" "LIBS+=$(GMIC_LIBC_STATIC_LIBS) $(OPT_LIBS)" _libcstatic

_libcstatic: libcgmic_files libgmic.o libcgmicstatic.o
	ar rcs libcgmicstatic.a libcgmicstatic.o
ifeq ($(OS),Darwin)
	$(CXX) -shared -static -o libcgmicstatic.so libcgmicstatic.o libgmic.o $(PIC) $(CFLAGS) $(LIBS)
else
ifeq ($(OS),Windows)
	$(CXX) -shared -static -Wl,-soname,libcgmicstatic.so.$(VERSION1) -o libcgmicstatic$(SO) libcgmicstatic.o libgmic.o $(PIC) -Wl,--output-def,libcgmicstatic.def,--out-implib,libcgmicstatic.a $(CFLAGS) $(LIBS)
else
	$(CXX) -shared -Wl,-soname,libcgmicstatic.so.$(VERSION1) -o libcgmicstatic$(SO) libcgmicstatic.o libgmic.o $(PIC) $(CFLAGS) $(LIBS)
endif
endif
	$(CC) -std=c99 -o use_libcgmic_static use_libcgmic.c -L. -lcgmicstatic

libcgmicstatic.o: gmic.cpp gmic.h gmic_stdlib.h CImg.h
	$(CXX) -o libcgmicstatic.o -c gmic_libc.cpp $(PIC) $(CFLAGS)

# All interfaces, sharing the same dynamic library
#--------------------------------------------------
allshared:
	$(MAKE) "CFLAGS+=$(GMIC_CLI_CFLAGS) $(OPT_CFLAGS)" "LIBS+=$(GMIC_CLI_LIBS) $(OPT_LIBS)" _allshared

_allshared: libgmic_shared.o
	ar rcs libgmic_shared.a libgmic_shared.o
	$(CXX) -shared -Wl,-soname,libgmic_shared.so.$(VERSION1) -o libgmic_shared.so libgmic_shared.o $(LIBS)
	$(CXX) -o use_libgmic use_libgmic.cpp -L. -lgmic_shared $(LIBS)

	$(CXX) -o gmic gmic_cli.cpp $(CFLAGS) -lgmic_shared $(LIBS)
	$(STRIP) gmic$(EXE)

libgmic_shared.o: CImg.h gmic_stdlib.h
	$(CXX) -o libgmic_shared.o -c gmic.cpp $(PIC) $(CFLAGS)

# G'MIC Online
#-------------
GMICOL_LIB_PATH = /usr/lib/x86_64-linux-gnu/
GMICOL_CFLAGS = $(MANDATORY_CFLAGS) $(PARALLEL_CFLAGS) $(EIGEN_CFLAGS) $(FFTW_CFLAGS) $(PNG_CFLAGS) $(JPEG_CFLAGS) $(ZLIB_CFLAGS) -Dcimg_display=0 # $(OPENMP_CFLAGS)
GMICOL_LIBS = $(MANDATORY_LIBS) $(PARALLEL_LIBS) $(EIGEN_LIBS) $(PNG_LIBS) $(JPEG_LIBS) $(ZLIB_LIBS) $(GMICOL_LIB_PATH)/libfftw3.a $(GMICOL_LIB_PATH)/libfftw3_threads.a # $(OPENMP_LIBS)

gmicol:
	$(MAKE) "CFLAGS+=$(GMICOL_CFLAGS) $(OPT_CFLAGS)" "LIBS+=$(GMICOL_LIBS) $(OPT_LIBS)" _cli
	$(STRIP) gmic$(EXE)

# G'MIC-Qt
#---------
gimp: gmic_qt_files CImg.h gmic_stdlib.h
	cd ../gmic-qt && $(QMAKE) CONFIG+=release GMIC_PATH=$(SRC_PATH) PRERELEASE=$(PRERELEASE) HOST=gimp gmic_qt.pro && $(MAKE)
	@echo "Executable 'gmic_gimp_qt' has been successfully compiled in '../gmic-qt/'."

krita: gmic_qt_files CImg.h gmic_stdlib.h
	cd ../gmic-qt && $(QMAKE) CONFIG+=release GMIC_PATH=$(SRC_PATH) PRERELEASE=$(PRERELEASE) HOST=krita gmic_qt.pro && $(MAKE)
	@echo "Executable 'gmic_krita_qt' has been successfully compiled in '../gmic-qt/'."

gmic_qt: gmic_qt_files CImg.h gmic_stdlib.h
	cd ../gmic-qt && $(QMAKE) CONFIG+=release GMIC_PATH=$(SRC_PATH) PRERELEASE=$(PRERELEASE) HOST=none gmic_qt.pro && $(MAKE)
	@echo "Executable 'gmic_qt' has been successfully compiled in '../gmic-qt/'."

gmic_qt_files:
	@if [ ! -d ../gmic-qt ]; then \
	  if [ ! -d ../../gmic-qt ]; then \
	    echo "**"; \
	    echo "** Warning: folder 'gmic-qt' was not found !"; \
	    echo "** It is mandatory to compile the G'MIC plug-in for GIMP and Krita ('gmic_gimp_qt' and 'gmic_krita_qt'),"; \
	    echo "** as well as the standalone Qt-based interface 'gmic_qt'."; \
            echo "** Trying to retrieve it, with: $$ cd ../../ && git clone https://github.com/c-koi/gmic-qt.git"; \
	    echo "**"; \
	    if cd ../../ && git clone https://github.com/c-koi/gmic-qt.git; then \
	      echo "**"; \
              echo "** Success !"; \
	      echo "**"; \
	    else \
	      echo "**"; \
              echo "** Fatal error: Failed to retrieve folder 'gmic-qt', compilation will probably ends shortly !"; \
	      echo "**"; \
	    fi; \
	  fi; \
	  if [ -d ../../gmic-qt ]; then ln -fs ../gmic-qt ..; fi \
	fi

# ZArt
#-----
zart: zart_files CImg.h gmic_stdlib.h
ifeq ($(OS),Darwin)
	cd ../zart && $(QMAKE) CONFIG+=release GMIC_PATH=$(SRC_PATH) zart.pro && $(MAKE) && $(STRIP) zart.app/Contents/MacOS/zart
else
	cd ../zart && $(QMAKE) CONFIG+=release GMIC_PATH=$(SRC_PATH) zart.pro && $(MAKE) && $(STRIP) zart
endif
	@echo "Executable 'zart' has been successfully compiled in '../zart/'."

zart_files:
	@if [ ! -d ../zart ]; then \
	  if [ ! -d ../../zart ]; then \
	    echo "**"; \
	    echo "** Warning: folder 'zart' was not found !"; \
	    echo "** It is mandatory to compile 'zart'."; \
            echo "** Trying to retrieve it, with: $$ cd ../../ && git clone https://github.com/c-koi/zart.git"; \
	    echo "**"; \
	    if cd ../../ && git clone https://github.com/c-koi/zart.git; then \
	      echo "**"; \
              echo "** Success !"; \
	      echo "**"; \
	    else \
              echo "**"; \
              echo "** Fatal error: Failed to retrieve folder 'zart', compilation will probably ends shortly !"; \
              echo "**"; \
	    fi; \
	  fi; \
	  if [ -d ../../zart ]; then ln -fs ../zart ..; fi \
	fi

# Get header files
#------------------
gmic_stdlib.h: gmic_stdlib.gmic
	@echo "> Retrieve G'MIC Standard Library..."
	@if [ ! -f ./gmic_stdlib.h ]; then \
	  $(WGET) gmic_stdlib.h https://gmic.eu/gmic_stdlib$(VERSION).h; \
	  touch gmic_stdlib.h; \
	fi
	@echo " done!"

CImg.h:
	@echo "> Retrieve CImg Library..."
	@if [ -f ../../CImg/CImg.h ]; then \
          if [ ! -f ./CImg.h ]; then ln -s ../../CImg/CImg.h .; fi; \
        elif [ ! -e ./CImg.h ]; then \
          $(WGET) CImg.h https://github.com/dtschump/CImg/raw/master/CImg.h; \
          touch CImg.h; \
        fi
	@echo " done!"

do_gmic_stdlib.h:
	@echo "/*\n\
 #\n\
 #  File        : gmic_stdlib.h (v.$(SVERSION))\n\
 #                ( C++ header file )\n\
 #\n\
 #  Description : Raw data arrays encoding the G'MIC standard library\n\
 #                into a compressed form.\n\
 #                This file has been automatically generated by the Makefile entry\n\
 #                'do_gmic_stdlib.h:', from the G'MIC source file 'gmic_stdlib.gmic'.\n\
 #                ( https://gmic.eu )\n\
 #\n\
 #  Copyright   : David Tschumperle\n\
 #                ( https://tschumperle.users.greyc.fr/ )\n\
 #\n\
 #  Licenses    : This file is 'dual-licensed', you have to choose one\n\
 #      	   of the two licenses below to apply.\n\
 #\n\
 #                CeCILL-C\n\
 #                The CeCILL-C license is close to the GNU LGPL.\n\
 #                ( http://cecill.info/licences/Licence_CeCILL-C_V1-en.html )\n\
 #\n\
 #            or  CeCILL v2.1\n\
 #                The CeCILL license is compatible with the GNU GPL.\n\
 #                ( http://cecill.info/licences/Licence_CeCILL_V2.1-en.html )\n\
 #\n\
 #  This software is governed either by the CeCILL or the CeCILL-C license\n\
 #  under French law and abiding by the rules of distribution of free software.\n\
 #  You can  use, modify and or redistribute the software under the terms of\n\
 #  the CeCILL or CeCILL-C licenses as circulated by CEA, CNRS and INRIA\n\
 #  at the following URL: \"http://cecill.info\".\n\
 #\n\
 #  As a counterpart to the access to the source code and  rights to copy,\n\
 #  modify and redistribute granted by the license, users are provided only\n\
 #  with a limited warranty  and the software's author,  the holder of the\n\
 #  economic rights,  and the successive licensors  have only  limited\n\
 #  liability.\n\
 #\n\
 #  In this respect, the user's attention is drawn to the risks associated\n\
 #  with loading,  using,  modifying and/or developing or reproducing the\n\
 #  software by the user in light of its specific status of free software,\n\
 #  that may mean  that it is complicated to manipulate,  and  that  also\n\
 #  therefore means  that it is reserved for developers  and  experienced\n\
 #  professionals having in-depth computer knowledge. Users are therefore\n\
 #  encouraged to load and test the software's suitability as regards their\n\
 #  requirements in conditions enabling the security of their systems and/or\n\
 #  data to be ensured and,  more generally, to use and operate it in the\n\
 #  same conditions as regards security.\n\
 #\n\
 #  The fact that you are presently reading this means that you have had\n\
 #  knowledge of the CeCILL and CeCILL-C licenses and that you accept its terms.\n\
 #\n\
*/\n" > gmic_stdlib.h
	@\gmic gmic_stdlib.gmic raw:gmic_stdlib.gmic,char compress_gmic 1 a y serialize char,1,0 o -.h,uchar | sed 's/unsigned char/const unsigned char/' | sed 's/unnamed/gmic_stdlib/' >> gmic_stdlib.h
	@echo "\nconst unsigned long size_data_gmic_stdlib = (unsigned long)sizeof(data_gmic_stdlib);" >> gmic_stdlib.h
	@\gmic v - _update_server_upload gmic_stdlib.h
	@cp -f gmic_stdlib.h /tmp/gmic_stdlib$(VERSION).h
	@\gmic v - _update_server_upload /tmp/gmic_stdlib$(VERSION).h
	@\gmic v - _update_server_upload gmic_stdlib.h

# Bash completion script
#-----------------------
bashcompletion:
	@mkdir -p ../resources
	@\gmic v - gmic_stdlib.gmic raw:gmic_stdlib.gmic,uchar nm gmic document_gmic bash 2> ../resources/gmic_bashcompletion.sh
	@echo "Bash completion script 'gmic_bashcompletion.sh' has been successfully generated in '../resources/'."

# Man pages
#----------
man:
	@mkdir -p ../man
	@\gmic v - gmic_stdlib.gmic raw:gmic_stdlib.gmic,uchar __help man 2> ../man/gmic.1
	@gzip -f ../man/gmic.1
	@echo "Man file 'gmic.1.gz' has been successfully generated in '../man/'."

# Install / uninstall / clean.
#-----------------------------
install:
	mkdir -p $(DESTDIR)$(PLUGINDIR)/
	cp -f ../resources/gmic_cluts.gmz $(DESTDIR)$(PLUGINDIR)/
	mkdir -p $(DESTDIR)$(USR)/$(BIN)/
	cp -f gmic $(DESTDIR)$(USR)/$(BIN)/
	mkdir -p $(DESTDIR)$(USR)/$(INCLUDE)/
	cp -f gmic.h $(DESTDIR)$(USR)/$(INCLUDE)/
	@if [ -f gmic_libc.h ]; then cp -f gmic_libc.h $(DESTDIR)$(USR)/$(INCLUDE)/; fi
	@if [ -f ../zart/zart ]; then cp -f ../zart/zart $(DESTDIR)$(USR)/$(BIN)/; fi
	@if [ -f ../gmic-qt/gmic_qt ]; then cp -f ../gmic-qt/gmic_qt $(DESTDIR)$(USR)/$(BIN)/; fi
	@if [ -f ../gmic-qt/gmic_gimp_qt ]; then cp -f ../gmic-qt/gmic_gimp_qt $(DESTDIR)$(PLUGINDIR)/; fi
	@if [ -f ../gmic-qt/gmic_krita_qt ]; then cp -f ../gmic-qt/gmic_krita_qt $(DESTDIR)$(USR)/$(BIN)/; fi

ifneq ($(OS),Darwin)
	mkdir -p $(DESTDIR)$(USR)/share
	mkdir -p $(DESTDIR)$(USR)/$(LIB)
	cp -f libgmic.so $(DESTDIR)$(USR)/$(LIB)/libgmic.so.$(VERSION)
	ln -fs libgmic.so.$(VERSION) $(DESTDIR)$(USR)/$(LIB)/libgmic.so.$(VERSION1)
	ln -fs libgmic.so.$(VERSION1) $(DESTDIR)$(USR)/$(LIB)/libgmic.so
	@if [ -f libcgmic.so ]; then \
	  cp -f gmic_libc.h $(DESTDIR)$(USR)/$(INCLUDE)/; \
	  cp -f libcgmic.so $(DESTDIR)$(USR)/$(LIB)/libcgmic.so.$(VERSION); \
          ln -fs libcgmic.so.$(VERSION) $(DESTDIR)$(USR)/$(LIB)/libcgmic.so.$(VERSION1) ; \
          ln -fs libcgmic.so.$(VERSION1) $(DESTDIR)$(USR)/$(LIB)/libcgmic.so; \
        fi
endif
	mkdir -p $(DESTDIR)$(USR)/share/man/
	mkdir -p $(DESTDIR)$(USR)/share/man/man1/
	mkdir -p $(DESTDIR)$(USR)/share/man/fr/man1/
	@if [ -f ../man/gmic.1.gz ]; then \
	  cp -f ../man/gmic.1.gz $(DESTDIR)$(USR)/share/man/man1/gmic.1.gz; \
	  cp -f ../man/gmic.1.gz $(DESTDIR)$(USR)/share/man/fr/man1/gmic.1.gz; \
	fi
	@if [ -f ../resources/gmic_bashcompletion.sh ]; then \
	  if [ -d /usr/share/bash-completion/completions ]; then \
	    mkdir -p $(DESTDIR)/usr/share/bash-completion/completions/; \
            cp -f ../resources/gmic_bashcompletion.sh $(DESTDIR)/usr/share/bash-completion/completions/gmic; \
	  fi; \
	  if [ -d /opt/local/etc/bash_completion.d/ ]; then \
            mkdir -p $(DESTDIR)/opt/local/etc/bash_completion.d/; \
            cp -f ../resources/gmic_bashcompletion.sh $(DESTDIR)/opt/local/etc/bash_completion.d/gmic; \
          fi; \
        fi

uninstall:
	rm -f $(DESTDIR)$(PLUGINDIR)/gmic_gimp_qt
	rm -f $(DESTDIR)$(PLUGINDIR)/gmic_krita_qt
	rm -f $(DESTDIR)$(USR)/$(BIN)/gmic
	rm -f $(DESTDIR)$(USR)/$(BIN)/zart
	rm -f $(DESTDIR)$(USR)/$(BIN)/gmic_qt
	rm -f $(DESTDIR)$(USR)/$(INCLUDE)/gmic.h
	rm -f $(DESTDIR)$(USR)/$(LIB)/libgmic.so.$(VERSION)
	rm -f $(DESTDIR)$(USR)/$(LIB)/libgmic.so.$(VERSION1)
	rm -f $(DESTDIR)$(USR)/$(LIB)/libgmic.so
	rm -f $(DESTDIR)$(USR)/$(LIB)/libcgmic.so.$(VERSION)
	rm -f $(DESTDIR)$(USR)/$(LIB)/libcgmic.so.$(VERSION1)
	rm -f $(DESTDIR)$(USR)/$(LIB)/libcgmic$(SO)
	rm -rf $(DESTDIR)$(USR)/share/doc/gmic/
	rm -f $(DESTDIR)$(USR)/share/man/man1/gmic.1.gz
	rm -f $(DESTDIR)$(USR)/share/man/fr/man1/gmic.1.gz

distclean: clean

clean:
	rm -rf gmic$(EXE) use_libgmic$(EXE) use_libcgmic$(EXE) use_libcgmic_static$(EXE) gmic*.o libgmic* libcgmic* *~
	@if [ -f ../zart/Makefile ]; then cd ../zart && $(MAKE) clean; fi
	@if [ -h ../zart ]; then rm -f ../zart; fi
	@if [ -f ../gmic-qt/Makefile ]; then cd ../gmic-qt && $(MAKE) clean; fi
	@if [ -h ../gmic-qt ]; then rm -f ../gmic-qt; fi
	@if [ -h gmic_libc.h ]; then rm -f gmic_libc.h; fi
	@if [ -h gmic_libc.cpp ]; then rm -f gmic_libc.cpp; fi
	@if [ -h use_libcgmic.c ]; then rm -f use_libcgmic.c; fi

# End of Makefile.
