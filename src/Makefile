#
#  File        : Makefile
#                ( Makefile for GNU 'make' utility )
#
#  Description : Makefile for compiling G'MIC
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
CC = g++
BINDIR=/usr/bin
PLUGINDIR=`gimptool-2.0 --gimpplugindir`/plug-ins

#---------------------------------------------------
# Set compilation flags allowing to customize G'MIC
#---------------------------------------------------

# Flags that are mandatory to compile 'gmic'.
MANDATORY_CFLAGS = -Dgmic_build
ifeq ($(CC),g++)
MANDATORY_CFLAGS += -Wall -W
MANDATORY_LDFLAGS = -lm
endif

# Flags to enable image display, using X11.
X11_CFLAGS = -Dcimg_display=1 -Dcimg_use_xshm -Dcimg_use_xrandr -I/usr/X11R6/include
X11_LDFLAGS = -L/usr/X11R6/lib -lX11 -lXext -lXrandr -lpthread

# Flags to enable image display, using Carbon.
CARBON_CFLAGS = -Dcimg_display=3 -framework Carbon
CARBON_LDFLAGS = -framework Carbon

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
FFMPEG_CFLAGS = -I/usr/local/include/libavcodec -I/usr/local/include/libavformat -I/usr/local/include/libswscale -Dcimg_use_ffmpeg
FFMPEG_LDFLAGS = -L/usr/local/lib -lavcodec -lavformat -lswscale

# Flags to enable native support for compressed .cimgz files, using the Zlib library.
ZLIB_CFLAGS = -Dcimg_use_zlib
ZLIB_LDFLAGS = -lz

# Flags to enable native support of most classical image file formats, using the Magick++ library.
MAGICK_CFLAGS = -Dcimg_use_magick -I/usr/include/GraphicsMagick
MAGICK_LDFLAGS = -lGraphicsMagick++ -lMagick++

# Flags to enable native support of EXR file format, using the OpenEXR library/
EXR_CFLAGS = -Dcimg_use_openexr -I/usr/include/OpenEXR
EXR_LDFLAGS = -lIlmImf

# Flags to enable the use of the FFTW3 library.
FFTW_CFLAGS = -Dcimg_use_fftw3
FFTW_LDFLAGS = -lfftw3

# Flags to enable the use of the BOARD library.
BOARD_CFLAGS = -Dcimg_use_board
BOARD_LDFLAGS = -lboard

# Flags to enable code optimization by the compiler.
ifeq ($(CC),icc)
OPT_CFLAGS = -O3 -ipo -no-prec-div
else
OPT_CFLAGS = -O3 -fno-tree-pre
#OPT_CFLAGS = -fno-tree-pre -g -Dcimg_verbosity=3
endif

# Groups of flags for building different configurations
STD_UNIX_CFLAGS = $(MANDATORY_CFLAGS) $(X11_CFLAGS) $(PNG_CFLAGS) \
                 $(JPEG_CFLAGS) $(TIFF_CFLAGS) $(ZLIB_CFLAGS) \
		 $(MAGICK_CFLAGS) $(EXR_CFLAGS) $(FFTW_CFLAGS)
STD_UNIX_LDFLAGS = $(MANDATORY_LDFLAGS) $(X11_LDFLAGS) \
		   $(PNG_LDFLAGS) $(JPEG_LDFLAGS) $(TIFF_LDFLAGS) \
		   $(ZLIB_LDFLAGS) $(MAGICK_LDFLAGS) $(EXR_LDFLAGS) $(FFTW_LDFLAGS)

CUST_UNIX_CFLAGS = $(MANDATORY_CFLAGS) $(X11_CFLAGS) $(PNG_CFLAGS) \
                  $(JPEG_CFLAGS) $(TIFF_CFLAGS) $(ZLIB_CFLAGS) \
	          $(MAGICK_CFLAGS) $(FFTW_CFLAGS) $(EXR_CFLAGS) $(FFMPEG_CFLAGS) $(BOARD_CFLAGS)
CUST_UNIX_LDFLAGS = $(MANDATORY_LDFLAGS) $(X11_LDFLAGS) $(PNG_LDFLAGS) \
                    $(JPEG_LDFLAGS) $(TIFF_LDFLAGS) $(ZLIB_LDFLAGS) \
	    	    $(MAGICK_LDFLAGS) $(FFTW_LDFLAGS) $(EXR_LDFLAGS) $(FFMPEG_LDFLAGS) $(BOARD_LDFLAGS)

MIN_UNIX_CFLAGS = $(MANDATORY_CFLAGS) $(X11_CFLAGS) $(PNG_CFLAGS) \
                 $(JPEG_CFLAGS) $(TIFF_CFLAGS) $(ZLIB_CFLAGS) \
	         $(FFTW_CFLAGS) #$(FFMPEG_CFLAGS)
MIN_UNIX_LDFLAGS = $(MANDATORY_LDFLAGS) $(X11_LDFLAGS) $(PNG_LDFLAGS) \
		   $(JPEG_LDFLAGS) $(TIFF_LDFLAGS) $(ZLIB_LDFLAGS) \
		   $(FFTW_LDFLAGS) #$(FFMPEG_LDFLAGS)

STD_MACOSX_CFLAGS= $(MANDATORY_CFLAGS) $(CARBON_CFLAGS) $(PNG_CFLAGS) \
                   $(JPEG_CFLAGS) $(TIFF_CFLAGS) $(ZLIB_CFLAGS) \
		   $(MAGICK_CFLAGS) $(FFTW_CFLAGS)
STD_MACOSX_LDFLAGS = $(MANDATORY_LDFLAGS) $(CARBON_LDFLAGS) $(PNG_LDFLAGS) \
		     $(JPEG_LDFLAGS) $(TIFF_LDFLAGS) $(ZLIB_LDFLAGS) \
		     $(MAGICK_LDFLAGS) $(FFTW_LDFLAGS)

STD_GIMP_CFLAGS = -Dcimg_display=0 $(MANDATORY_CFLAGS) $(FFTW_CFLAGS) $(PNG_CFLAGS)
STD_GIMP_LDFLAGS = -lpthread $(FFTW_LDFLAGS) $(PNG_LDFLAGS)

STD_LIB_CFLAGS = -Dcimg_display=0 $(MANDATORY_CFLAGS) $(FFTW_CFLAGS)
STD_LIB_LDFLAGS = $(FFTW_LDFLAGS)

#-------------------------
# Define Makefile entries
#-------------------------

all: linux gimp

gmic_lib.o: gmic.cpp gmic_def.h
	$(CC) -o gmic_lib.o -c gmic.cpp -Dgmic_minimal $(CFLAGS)
gmic_lib: gmic_lib.o
	ar rcs libgmic.a gmic_lib.o
	g++ -shared -Wl,-soname,libgmic.so.1 -o libgmic.so.1.3.2 gmic_lib.o $(LDFLAGS)

gmic_gimp.o: gmic.cpp gmic_def.h
	$(CC) -o gmic_gimp.o -c gmic.cpp -Dgmic_gimp -Dgmic_minimal $(CFLAGS)
gmic_gimp : gmic_gimp.o gmic_gimp.cpp
	$(CC) -o gmic_gimp gmic_gimp.cpp gmic_gimp.o `gimptool-2.0 --cflags` `gimptool-2.0 --libs` $(CFLAGS) $(LDFLAGS)
ifeq ($(STRIP_EXE),1)
	strip gmic_gimp
endif
gmic_minimal: gmic.cpp
	$(CC) -o gmic gmic.cpp -Dgmic_minimal -Dgmic_main -Dcimg_debug=3 -Dcimg_use_vt100 -g $(CFLAGS) $(LDFLAGS)
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
gmic: gmic.cpp gmic_bool.o gmic_uchar.o gmic_char.o gmic_ushort.o gmic_short.o gmic_uint.o gmic_int.o gmic_float.o gmic_double.o gmic_def.h
	$(CC) -o gmic gmic.cpp -Dgmic_separate_compilation -Dgmic_main $(CFLAGS) gmic_bool.o gmic_uchar.o gmic_char.o gmic_ushort.o gmic_short.o gmic_uint.o gmic_int.o gmic_float.o gmic_double.o $(LDFLAGS)
ifeq ($(MACOSX_APP),1)
	mkdir -p gmic.app/Contents/MacOS
	mv ${*} gmic.app/Contents/MacOS
endif
ifeq ($(STRIP_EXE),1)
	strip gmic
endif

def:
	cd ../../CImg/examples && make gmic_def

# Compile the command line tool version 'gmic' of G'MIC.
linux:
	make "CFLAGS+=$(STD_UNIX_CFLAGS) $(OPT_CFLAGS)" "LDFLAGS+=$(STD_UNIX_LDFLAGS)" "STRIP_EXE=1" gmic

custom:
	make "CFLAGS+=$(CUST_UNIX_CFLAGS) $(OPT_CFLAGS)" "LDFLAGS+=$(CUST_UNIX_LDFLAGS)" "STRIP_EXE=1" gmic

minimal:
	make "CFLAGS+=$(MIN_UNIX_CFLAGS)" "LDFLAGS+=$(MIN_UNIX_LDFLAGS)" gmic_minimal

solaris:
	make "CFLAGS+=$(STD_UNIX_CFLAGS) $(OPT_CFLAGS)" "LDFLAGS+=$(STD_UNIX_LDFLAGS) -R/usr/X11R6/lib -lrt -lnsl -lsocket" "STRIP_EXE=1" gmic

macosx:
	make "CFLAGS+=$(STD_MACOSX_CFLAGS) $(OPT_CFLAGS)" "LDFLAGS+=$(STD_MACOSX_LDFLAGS)" "MACOSX_APP=1" gmic

gimp:
	make "CFLAGS+=$(STD_GIMP_CFLAGS) $(OPT_CFLAGS)" "LDFLAGS+=$(STD_GIMP_LDFLAGS)" "STRIP_EXE=1" gmic_gimp

lib:
	make "CFLAGS+=$(STD_LIB_CFLAGS) $(OPT_CFLAGS)" "LDFLAGS+=$(STD_LIB_LDFLAGS)" gmic_lib

# Install
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

# Uninstall
uninstall:
	rm -f $(DESTDIR)$(BINDIR)/gmic
	rm -rf $(DESTDIR)/usr/share/doc/gmic/
	rm -f $(DESTDIR)/usr/share/man/man1/gmic.1.gz
	rm -f $(DESTDIR)/usr/share/man/fr/man1/gmic.1.gz

# Clean
distclean: clean

clean:
	rm -rf gmic*.o gmic gmic_gimp *~

# End of Makefile
