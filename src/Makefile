#
#  File        : Makefile
#                ( Makefile for GNU 'make' utility )
#
#  Description : Makefile for compiling :
#
#                 . the G'MIC interpreter, as a library ('make lib').
#                 . the G'MIC command line tool ('make gmic').
#                 . the G'MIC plug-in for GIMP ('make gimp').
#
#                ( http://gmic.sourceforge.net )
#
#  Copyright   : David Tschumperle
#                ( http://www.greyc.ensicaen.fr/~dtschump/ )
#
#  License     : CeCILL v2.0
#                ( http://www.cecill.info/licences/Licence_CeCILL_V2-en.html )
#
#  This software is governed by the CeCILL  license under French law and
#  abiding by the rules of distribution of free software.  You can  use,
#  modify and/ or redistribute the software under the terms of the CeCILL
#  license as circulated by CEA, CNRS and INRIA at the following URL
#  "http://www.cecill.info".
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
#  knowledge of the CeCILL license and that you accept its terms.
#

#---------------------------------
# Set correct variables and paths
#---------------------------------
OS := $(shell uname)
CC = g++
BINDIR=/usr/bin
PLUGINDIR=`gimptool-2.0 --gimpplugindir`/plug-ins
ifeq ($(OS),Darwin)
LIBDIR = /opt/local
else
LIBDIR = /usr
endif

#---------------------------------------------------
# Set compilation flags allowing to customize G'MIC
#---------------------------------------------------

# Flags that are mandatory to compile 'gmic'.
MANDATORY_CFLAGS = -Dgmic_build -I$(LIBDIR)/include
MANDATORY_LDFLAGS = -L$(LIBDIR)/lib

# Flags to enable image display, using X11.
X11_CFLAGS = -Dcimg_display=1 -Dcimg_use_xrandr -I/usr/X11R6/include
X11_LDFLAGS = -L/usr/X11R6/lib -lX11 -lXrandr -lpthread

# Flags to enable fast display, using XShm.
XSHM_CFLAGS = -Dcimg_use_xshm
XSHM_LDFLAGS = -L/usr/X11R6/lib -lXext

# Flags to enable image display, using GDI32.
GDI32_CFLAGS = -Dcimg_display=2
GDI32_LDFLAGS = -lgdi32

# Flags to enable native support for PNG image files, using the PNG library.
PNG_CFLAGS = -Dcimg_use_png
PNG_LDFLAGS = -lpng -lz

# Flags to enable native support for JPEG image files, using the JPEG library.
JPEG_CFLAGS = -Dcimg_use_jpeg
JPEG_LDFLAGS = -ljpeg

# Flags to enable native support for TIFF image files, using the TIFF library.
TIFF_CFLAGS = -Dcimg_use_tiff
TIFF_LDFLAGS = -ltiff

# Flags to enable native support for various video files, using the FFMPEG library.
FFMPEG_CFLAGS = -Dcimg_use_ffmpeg -I/usr/include/libavcodec -I/usr/include/libavformat -I/usr/include/libswscale -I/usr/include/ffmpeg
FFMPEG_LDFLAGS = -lavcodec -lavformat -lswscale

# Flags to enable native support for compressed .cimgz files, using the Zlib library.
ZLIB_CFLAGS = -Dcimg_use_zlib
ZLIB_LDFLAGS = -lz

# Flags to enable native support of most classical image file formats, using the GraphicsMagick++ library.
MAGICK_CFLAGS = -Dcimg_use_magick -I$(LIBDIR)/include/GraphicsMagick
ifeq ($(OS),Darwin)
MAGICK_LDFLAGS = -L$(LIBDIR)/lib -lGraphicsMagick++ -lGraphicsMagick -llcms -ltiff -lfreetype -ljpeg -lpng -lbz2 -lxml2 -lz -lm -lpthread -lltdl
else
MAGICK_LDFLAGS = -lGraphicsMagick++
endif

# Flags to enable native support of EXR file format, using the OpenEXR library/
EXR_CFLAGS = -Dcimg_use_openexr -I$(LIBDIR)/include/OpenEXR
EXR_LDFLAGS = -lIlmImf

# Flags to enable the use of the FFTW3 library.
FFTW_CFLAGS = -Dcimg_use_fftw3
FFTW_LDFLAGS = -lfftw3

# Flags to enable the use of the BOARD library.
BOARD_CFLAGS = -Dcimg_use_board
BOARD_LDFLAGS = -lboard

# Groups of flags for building different configurations
STD_UNIX_CFLAGS = $(MANDATORY_CFLAGS) $(X11_CFLAGS) $(XSHM_CFLAGS) $(PNG_CFLAGS) \
                  $(JPEG_CFLAGS) $(TIFF_CFLAGS) $(ZLIB_CFLAGS) \
	  	  $(MAGICK_CFLAGS) $(EXR_CFLAGS) $(FFTW_CFLAGS) $(FFMPEG_CFLAGS)
STD_UNIX_LDFLAGS = $(MANDATORY_LDFLAGS) $(X11_LDFLAGS) $(XSHM_LDFLAGS) \
		   $(PNG_LDFLAGS) $(JPEG_LDFLAGS) $(TIFF_LDFLAGS) \
		   $(ZLIB_LDFLAGS) $(MAGICK_LDFLAGS) $(EXR_LDFLAGS) $(FFTW_LDFLAGS) $(FFMPEG_LDFLAGS)

CUST_UNIX_CFLAGS = $(MANDATORY_CFLAGS) $(X11_CFLAGS) $(XSHM_CFLAGS) $(PNG_CFLAGS) \
                   $(JPEG_CFLAGS) $(TIFF_CFLAGS) $(ZLIB_CFLAGS) \
	           $(MAGICK_CFLAGS) $(FFTW_CFLAGS) $(EXR_CFLAGS) $(FFMPEG_CFLAGS) $(BOARD_CFLAGS)
CUST_UNIX_LDFLAGS = $(MANDATORY_LDFLAGS) $(X11_LDFLAGS) $(XSHM_LDFLAGS) $(PNG_LDFLAGS) \
                    $(JPEG_LDFLAGS) $(TIFF_LDFLAGS) $(ZLIB_LDFLAGS) \
	    	    $(MAGICK_LDFLAGS) $(FFTW_LDFLAGS) $(EXR_LDFLAGS) $(FFMPEG_LDFLAGS) $(BOARD_LDFLAGS)

MIN_UNIX_CFLAGS = $(MANDATORY_CFLAGS) $(X11_CFLAGS) $(XSHM_CFLAGS) $(PNG_CFLAGS) \
                  $(JPEG_CFLAGS) $(TIFF_CFLAGS) $(ZLIB_CFLAGS) \
	          $(FFTW_CFLAGS) $(FFMPEG_CFLAGS)
MIN_UNIX_LDFLAGS = $(MANDATORY_LDFLAGS) $(X11_LDFLAGS) $(XSHM_LDFLAGS) $(PNG_LDFLAGS) \
		   $(JPEG_LDFLAGS) $(TIFF_LDFLAGS) $(ZLIB_LDFLAGS) \
		   $(FFTW_LDFLAGS) $(FFMPEG_LDFLAGS)

STD_MACOSX_CFLAGS= $(MANDATORY_CFLAGS) $(X11_CFLAGS) $(ZLIB_CFLAGS) $(PNG_CFLAGS) \
                   $(JPEG_CFLAGS) $(TIFF_CFLAGS) \
		   $(MAGICK_CFLAGS) $(EXR_CFLAGS) $(FFTW_CFLAGS)
STD_MACOSX_LDFLAGS = $(X11_LDFLAGS) $(ZLIB_LDFLAGS) $(MANDATORY_LDFLAGS) \
		     $(PNG_LDFLAGS) $(JPEG_LDFLAGS) $(TIFF_LDFLAGS) \
		     $(MAGICK_LDFLAGS) $(EXR_LDFLAGS) $(FFTW_LDFLAGS)

STD_WINDOWS_CFLAGS= $(MANDATORY_CFLAGS) $(GDI32_CFLAGS) $(ZLIB_CFLAGS) $(PNG_CFLAGS) $(JPEG_CFLAGS) $(FFTW_CFLAGS)
STD_WINDOWS_LDFLAGS = $(MANDATORY_LDFLAGS) $(GDI32_LDFLAGS) $(ZLIB_LDFLAGS) $(PNG_LDFLAGS) $(JPEG_LDFLAGS) $(FFTW_LDFLAGS)

STD_GIMP_CFLAGS = -Dgmic_build -Dcimg_display=0 $(FFTW_CFLAGS) $(PNG_CFLAGS) $(ZLIB_CFLAGS)
STD_GIMP_LDFLAGS = -lpthread $(FFTW_LDFLAGS) $(PNG_LDFLAGS) $(ZLIB_LDFLAGS)

STD_LIB_CFLAGS = -Dcimg_display=0 $(MANDATORY_CFLAGS) $(FFTW_CFLAGS)
STD_LIB_LDFLAGS = $(FFTW_LDFLAGS)

#--------------------------------------
# Define configuration-specific flags
#--------------------------------------

ifeq ($(CC),g++)
MANDATORY_CFLAGS += -Wall -W -I$(LIBDIR)/include
MANDATORY_LDFLAGS = -lm -L$(LIBDIR)/lib
OPT_CFLAGS = -O3 -fno-tree-pre
endif

ifeq ($(CC),icc)
OPT_CFLAGS = -O3 -ipo -no-prec-div
endif

ifeq ($(OS),Darwin)
EXR_LDFLAGS += -lHalf
endif

ifeq ($(OS),MINGW32_NT-5.1)
FFTW_LDFLAGS = -lfftw3-3
STD_GIMP_LDFLAGS += -mwindows
EXE = .exe
endif

#-------------------------
# Define Makefile entries
#-------------------------

# Main entries
all: gmic gimp

gmic:
ifeq ($(OS),Linux)
	@echo "**"
	@echo "** Linux configuration"
	@echo "**"
	$(MAKE) linux
else
ifeq ($(OS),Darwin)
	@echo "**"
	@echo "** MacOSX configuration"
	@echo "**"
	$(MAKE) macosx
else
	@echo "**"
	@echo "** Windows configuration"
	@echo "**"
	$(MAKE) windows
endif
endif

gimp:
	$(MAKE) "CFLAGS+=$(STD_GIMP_CFLAGS) $(OPT_CFLAGS)" "LDFLAGS+=$(STD_GIMP_LDFLAGS)" "STRIP_EXE=1" gmic_gimp

lib:
	$(MAKE) "CFLAGS+=$(STD_LIB_CFLAGS) $(OPT_CFLAGS)" "LDFLAGS+=$(STD_LIB_LDFLAGS)" gmic_lib

# Entries for non-default configurations.
minimal:
	$(MAKE) "CFLAGS+=$(MIN_UNIX_CFLAGS)" "LDFLAGS+=$(MIN_UNIX_LDFLAGS)" gmic_minimal

linux:
	$(MAKE) "CFLAGS+=$(STD_UNIX_CFLAGS) $(OPT_CFLAGS)" "LDFLAGS+=$(STD_UNIX_LDFLAGS)" "STRIP_EXE=1" gmic_gmic

custom:
	$(MAKE) "CFLAGS+=$(CUST_UNIX_CFLAGS) $(OPT_CFLAGS)" "LDFLAGS+=$(CUST_UNIX_LDFLAGS)" "STRIP_EXE=1" gmic_gmic

solaris:
	$(MAKE) "CFLAGS+=$(STD_UNIX_CFLAGS) $(OPT_CFLAGS)" "LDFLAGS+=$(STD_UNIX_LDFLAGS) -R/usr/X11R6/lib -lrt -lnsl -lsocket" "STRIP_EXE=1" gmic_gmic

macosx:
	$(MAKE) "CFLAGS+=$(STD_MACOSX_CFLAGS) $(OPT_CFLAGS)" "LDFLAGS+=$(STD_MACOSX_LDFLAGS)" gmic_gmic

windows:
	$(MAKE) "CFLAGS+=$(STD_WINDOWS_CFLAGS) $(OPT_CFLAGS)" "LDFLAGS+=$(STD_WINDOWS_LDFLAGS)" "STRIP_EXE=1" gmic_gmic

# Rules to build compilation modules.
gmic_lib.o: gmic.cpp gmic_def.h
	$(CC) -o gmic_lib.o -c gmic.cpp -fPIC -Dgmic_minimal -Dgmic_float $(CFLAGS)
gmic_lib: gmic_lib.o
	ar rcs libgmic.a gmic_lib.o
	g++ -shared -Wl,-soname,libgmic.so.1 -o libgmic.so.1.3.2 gmic_lib.o $(LDFLAGS)
	g++ -o gmic_use_lib gmic_use_lib.cpp -L. -lgmic -lfftw3

gmic_gimp.o: gmic.cpp gmic_def.h
	$(CC) -o gmic_gimp.o -c gmic.cpp -Dgmic_gimp -Dgmic_minimal -Dgmic_float $(CFLAGS)
gmic_gimp : gmic_gimp.o gmic_gimp.cpp
	$(CC) -o gmic_gimp gmic_gimp.cpp gmic_gimp.o $(CFLAGS) $(LDFLAGS) `gimptool-2.0$(EXE) --cflags` `gimptool-2.0$(EXE) --libs`
	strip gmic_gimp$(EXE)

gmic_minimal: gmic.cpp
	$(CC) -o gmic gmic.cpp -Dgmic_minimal -Dgmic_float -Dgmic_main -Dcimg_debug=3 -Dcimg_use_vt100 -g $(CFLAGS) $(LDFLAGS)
gmic_bool.o: gmic.cpp
	$(CC) -o gmic_bool.o -c gmic.cpp -Dgmic_separate_compilation -Dgmic_bool $(CFLAGS)
gmic_uchar.o: gmic.cpp
	$(CC) -o gmic_uchar.o -c gmic.cpp -Dgmic_separate_compilation -Dgmic_uchar $(CFLAGS)
gmic_char.o: gmic.cpp
	$(CC) -o gmic_char.o -c gmic.cpp -Dgmic_separate_compilation -Dgmic_char $(CFLAGS)
gmic_ushort.o: gmic.cpp
	$(CC) -o gmic_ushort.o -c gmic.cpp -Dgmic_separate_compilation -Dgmic_ushort $(CFLAGS)
gmic_short.o: gmic.cpp
	$(CC) -o gmic_short.o -c gmic.cpp -Dgmic_separate_compilation -Dgmic_short $(CFLAGS)
gmic_uint.o: gmic.cpp
	$(CC) -o gmic_uint.o -c gmic.cpp -Dgmic_separate_compilation -Dgmic_uint $(CFLAGS)
gmic_int.o: gmic.cpp
	$(CC) -o gmic_int.o -c gmic.cpp -Dgmic_separate_compilation -Dgmic_int $(CFLAGS)
gmic_float.o: gmic.cpp
	$(CC) -o gmic_float.o -c gmic.cpp -Dgmic_separate_compilation -Dgmic_float $(CFLAGS)
gmic_double.o: gmic.cpp
	$(CC) -o gmic_double.o -c gmic.cpp -Dgmic_separate_compilation -Dgmic_double $(CFLAGS)
gmic_gmic: gmic.cpp gmic_bool.o gmic_uchar.o gmic_char.o gmic_ushort.o gmic_short.o gmic_uint.o gmic_int.o gmic_float.o gmic_double.o gmic_def.h
	$(CC) -o gmic gmic.cpp -Dgmic_separate_compilation -Dgmic_main $(CFLAGS) gmic_bool.o gmic_uchar.o gmic_char.o gmic_ushort.o gmic_short.o gmic_uint.o gmic_int.o gmic_float.o gmic_double.o $(LDFLAGS)
	strip gmic$(EXE)

def:
	cd ../../CImg/examples && $(MAKE) gmic_def

# Install/uninstall/clean.
install:
	mkdir -p $(DESTDIR)$(PLUGINDIR)/
	cp -f gmic_gimp $(DESTDIR)$(PLUGINDIR)/
	mkdir -p $(DESTDIR)$(BINDIR)/
	cp -f gmic $(DESTDIR)$(BINDIR)/
	mkdir -p $(DESTDIR)/usr/share/man/man1/
	mkdir -p $(DESTDIR)/usr/share/man/fr/man1/
	cp -f ../man/gmic.1.gz $(DESTDIR)/usr/share/man/man1/gmic.1.gz
	cp -f ../man/gmic.1.gz $(DESTDIR)/usr/share/man/fr/man1/gmic.1.gz
	mkdir -p $(DESTDIR)/usr/share/doc/gmic/html/img/
	for pixmap in ../html/*.*; do \
	  if test -f $$pixmap; then \
	    cp -f  $$pixmap  $(DESTDIR)/usr/share/doc/gmic/html/; \
	  fi \
	done
	for pixmap in ../html/img/*.*; do \
	  if test -f $$pixmap; then \
	    cp -f  $$pixmap  $(DESTDIR)/usr/share/doc/gmic/html/img/; \
	  fi \
	done

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/gmic
	rm -rf $(DESTDIR)/usr/share/doc/gmic/
	rm -f $(DESTDIR)/usr/share/man/man1/gmic.1.gz
	rm -f $(DESTDIR)/usr/share/man/fr/man1/gmic.1.gz

distclean: clean

clean:
	rm -rf gmic*.o gmic gmic_gimp libgmic* *~

# End of Makefile
