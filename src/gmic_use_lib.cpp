/*
 #
 #  File        : gmic_use_lib.cpp
 #                ( C++ source file )
 #
 #  Description : Show how to call G'MIC API from a C++ source code.
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
 #  data to be ensured and, more generally, to use and operate it in the
 #  same conditions as regards security.
 #
 #  The fact that you are presently reading this means that you have had
 #  knowledge of the CeCILL license and that you accept its terms.
 #
*/

/*
    Note : To compile this example, using g++, use :

    g++ -o gmic_use_lib gmic_use_lib.cpp -lgmic -lfftw3
*/

#include <cmath>
#include "gmic.h"

int main() {

  // First step : Create a list of input images.
  //--------------------------------------------
  std::fprintf(stderr,"\n- 1st step : Create input list of images.\n");

  gmic_list<float> image_list;
  image_list.assign(5);
  for (unsigned int i = 0; i<image_list.size; ++i) {
    gmic_image<float>& img = image_list.data[i];
    img.assign(256,256,1,3);

    std::fprintf(stderr,"    Input image %u =  %ux%ux%ux%u, buffer : %p\n",i,
                 image_list.data[i].width,
                 image_list.data[i].height,
                 image_list.data[i].depth,
                 image_list.data[i].spectrum,
                 image_list.data[i].data);

    // Fill each image buffer with sinus values (with different frequencies).
    float *ptr = img.data;
    for (unsigned int c = 0; c<img.spectrum; ++c)
      for (unsigned int y = 0; y<img.height; ++y)
        for (unsigned int x = 0; x<img.width; ++x)
          *(ptr++) = std::cos(x/(1.+i))*std::sin(y/(1.+i+c));
  }

  // Second step : Call G'MIC API to process input images.
  //------------------------------------------------------
  std::fprintf(stderr,"\n- 2st step : Call G'MIC commands.\n");

  try {

    // Here you can call any G'MIC command you want !
    gmic("-+ -n 0,255",image_list); // do a simple averaging + renormalization.

  } catch (gmic_exception &e) {
    std::fprintf(stderr,"\n- Error encountered when calling G'MIC : '%s'\n",e.message());
    return 0;
  }

  // Third step : retrieve modified image data.
  //-------------------------------------------
  std::fprintf(stderr,"\n- 3st step : Returned %d output images.\n",image_list.size);
  for (unsigned int i = 0; i<image_list.size; ++i) {
    std::fprintf(stderr,"   Output image %u = %ux%ux%ux%u, buffer : %p\n",i,
                 image_list.data[i].width,
                 image_list.data[i].height,
                 image_list.data[i].depth,
                 image_list.data[i].spectrum,
                 image_list.data[i].data);
  }

  // That's it !
  //-------------
  std::fprintf(stderr,"\n- That's it !\n");
  return 0;
}
