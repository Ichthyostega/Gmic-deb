/*
 #
 #  File        : gmic_bashcompletion.cpp
 #                ( C++ source file )
 #
 #  Description : GREYC's Magic Image Converter - G'MIC bash completion generator
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
*/
#define cimg_display 0
#include "CImg.h"
using namespace cimg_library;

// Start main procedure.
//----------------------
int main(int argc, char **argv) {

  /*-------------------------------

    Parse reference documentation
    (from standard input)

    ------------------------------*/

  // Go directly to the command reference section.
  char line[65536] = { 0 };
  while (std::fscanf(stdin," %[^\n]",line)==1 &&
         std::strncmp(line,"** Global options :",19)) {}

  // Begin options and arguments parsing.
  CImgList<char> commands, arguments;
  bool is_possible_argument = false;
  while (std::fscanf(stdin," %[^\n]",line)==1 &&
         std::strncmp(line,"Examples of use",15)) {
    if (line[0]=='-' && (line[1]!='-' || line[2]!='-')) { // New command found.
      char *sep = std::strchr(line,' ');
      if (sep) {
        *sep = 0;
        CImg<char>::string(line).move_to(commands);
        for (++sep; *sep==' '; ++sep) {}
        char *sep2 = std::strstr(sep,"(*)");
        if (sep2) *sep2 = 0;
        cimg::strpare(sep,' ',false,true);
        cimg::strpare(sep,'|',false,false);
        if (*sep) CImg<char>::string(sep).move_to(arguments); // Command has argument.
        else arguments.insert(1);
        is_possible_argument = true;
      }
    } else if (is_possible_argument) { // String is a possible argument ?
      if (*line>='A' && *line<='Z') is_possible_argument = false;
      else { // New argument to previous command found.
        if (arguments.back()) arguments.back().back() = '\n';
        cimg::strpare(line,'|',false,false);
        arguments.back().append(CImg<char>::string(line));
      }
    }
  }

  // Add ghost argument for single-argument commands.
  cimglist_for(arguments,l) if (arguments[l] && !std::strchr(arguments[l].data(),'\n')) {
    arguments[l].back() = '\n';
    arguments[l].append(CImg<char>::string(">"));
  }

  // Copy arguments for equivalent functions.
  cimglist_for(commands,l) if (arguments[l] && !std::strncmp(arguments[l].data(),"eq. to '",8)) {
    char *com = arguments[l].data() + 8, *sep = std::strchr(com,'\'');
    if (sep) {
      *sep = 0;
      cimglist_for(commands,n) if (!std::strcmp(commands[n].data(),com) && n!=l) {
        arguments[l] = arguments[n];
        break;
      }
    }
  }

  // Convert arguments and commands string to bash-compliant strings.
  cimglist_for(arguments,l) if (arguments[l]) {
    char *res = line;
    for (const char *src = arguments[l].data(); *src; ++src) {
      const char c = *src;
      switch (c) {
      case ' ': break;
      case '\'' : case '\"' : *(res++) = '\\'; *(res++) = c; break;
      case '\n' : *(res++) = ' '; break;
      default : *(res++) = c;
      }
    }
    *res = 0;
    CImg<char>::string(line).move_to(arguments[l]);
  }

  /*-------------------------------------------

    Generate bash completion file
    (to standard output)

    ------------------------------------------*/

  // Generate file header.
  std::fprintf(stdout,
               "#\n"
               "#  Bash completion rules for 'gmic'.\n"
               "#\n"
               "# This file has been generated automatically.\n"
               "# Do not edit !\n"
               "#\n# This file should be copied/renamed in '/etc/bash_completion.d/gmic'.\n"
               "#\n\n"
               "_gmic()\n"
               "{\n"
               "\tlocal cur prev opts coms\n"
               "\tCOMPREPLY=()\n"
               "\tcur=\"${COMP_WORDS[COMP_CWORD]}\"\n"
               "\tprev=\"${COMP_WORDS[COMP_CWORD-1]}\"\n");

  // Define commands that forbid double-dash invokation.
  const unsigned int nb_singledash = 60;
  const char *singledash[] = {
    "-b3d", "-background3d", "-break", "-check", "-command", "-camera", "-circle3d", "-cone3d",
    "-continue", "-cylinder3d", "-db3d", "-done", "-do", "-debug", "-double3d", "-else",
    "-elif", "-end", "-endlocal", "-endl", "-exec", "-f3d", "-focale3d", "-if",
    "-l3d", "-light3d", "-line3d", "-m", "-m3d", "-md3d", "-mode3d", "-moded3d",
    "-onfail", "-progress", "-pose3d", "-point3d", "-plane3d", "-quadrangle3d", "-q", "-quit",
    "-repeat", "-return", "-rotation3d", "-status", "-skip", "-srand", "-sphere3d", "-sl3d",
    "-specl3d", "-specs3d", "-ss3d", "-type", "-torus3d", "-triangle3d", "-u", "-uncommand",
    "-v", "-verbose", "-while", "-x" };

  // Write valid options and list of available commands.
  std::fprintf(stdout,"\topts=\"");
  cimglist_for(commands,l) {
    bool is_singledash = false;
    for (unsigned int i = 0; i<nb_singledash; ++i) if (!std::strcmp(singledash[i],commands[l])) { is_singledash = true; break; }
    if (is_singledash)
      std::fprintf(stdout,"%s%s",commands[l].data(),l==commands.width()-1?"\"\n\n":" ");
    else
      std::fprintf(stdout,"%s -%s%s",commands[l].data(),commands[l].data(),l==commands.width()-1?"\"\n\n":" ");
  }
  std::fprintf(stdout,"\tcoms=\"");
  cimglist_for(commands,l)
    std::fprintf(stdout,"%s%s",commands[l].data()+1,l==commands.width()-1?"\"\n\n":" ");

  // Write valid arguments.
  std::fprintf(stdout,"\tcase \"${prev}\" in\n");
  cimglist_for(commands,l) if (arguments[l]) {

    bool is_singledash = false;
    for (unsigned int i = 0; i<nb_singledash; ++i) if (!std::strcmp(singledash[i],commands[l])) { is_singledash = true; break; }
    if (is_singledash)
      std::fprintf(stdout,"\t\t\"%s\")\n",commands[l].data());
    else
      std::fprintf(stdout,"\t\t\"%s\" | \"-%s\")\n",commands[l].data(),commands[l].data());
    if (!std::strcmp("-output",commands[l].data()) ||
        !std::strcmp("-o",commands[l].data()) ||
        !std::strcmp("-input",commands[l].data()) ||
        !std::strcmp("-i",commands[l].data()) ||
        !std::strcmp("-command",commands[l].data()) ||
        !std::strcmp("-m",commands[l].data()))
      std::fprintf(stdout,"\t\t_filedir\n");
    else if (!std::strcmp("-help",commands[l].data()) ||
             !std::strcmp("-h",commands[l].data()))
      std::fprintf(stdout,"\t\tCOMPREPLY=( $(compgen -W \"$coms\" -- \"$cur\" ) )\n");
    else
      std::fprintf(stdout,"\t\tCOMPREPLY=( $(compgen -W \"%s\") )\n",
                   arguments[l].data());
    std::fprintf(stdout,
                 "\t\treturn 0\n"
                 "\t\t;;\n");
  }
  std::fprintf(stdout,"\tesac\n\n");

  // Generate file footer.
  std::fprintf(stdout,
               "\tif [[ \"$cur\" == -* ]] ; then\n"
               "\t\tCOMPREPLY=( $(compgen -W \"$opts\" -- \"$cur\") )\n"
               "\telse\n"
               "\t\t_filedir\n"
               "\tfi\n\n"
               "}\n\n"
               "complete -F _gmic -o filenames gmic\n");
  return 0;
}
