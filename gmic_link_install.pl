#!/usr/bin/perl -w

#########################################################################################
#
# Script d'installation des liens si necessaire pour G'MIC
#    
#    Le script base son analyse sur la production de la ligne de commande:
#    	$ ldd /usr/bin/gmic | grep libGraphicsMagick
#		libGraphicsMagick++.so.1 => /usr/lib/libGraphicsMagick++.so.1 (0xb7d19000)
#		libGraphicsMagick.so.1 => /usr/lib/libGraphicsMagick.so.1 (0xb75d7000)
#
#    L'algo est le suivant:
#    Si le lien n'existe pas (ex: libGraphicsMagick++.so.1)
#        Si le lien initial existe (ex: libGraphicsMagick++.so)
#            Link libGraphicsMagick++.so, libGraphicsMagick++.so.1
#        SiNon
#            Analyse de la table pour une creation de lien
#        FinSi
#    FinSI
#
#########################################################################################
#
#     Script cree par:
#        -b52         http://www.xcfa.tuxfamily.org/
#        -xxxxxx      ...............................
#        -xxxxxx      ...............................
#
#########################################################################################
#
# Licence GPL 2
#
# GNU General Public License
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# OLD ADRESS:
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
# NEW ADRESS:
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
#
#########################################################################################


my $VERSION = '0.0.1';
my $PACKAGE = 'gmic_link_install.pl';


use constant {
	LINK_SRC	=> 0,	# Nom du PacKage DEBIAN 32 bits		my $LePaquet
	LINK_DEST	=> 1,	# Nom du PacKage RPM 64 bits		my $LePaquet
};

my @tableau = (

# LENNY
[ "/usr/lib/libGraphicsMagick++.so.1",	"/usr/lib/libGraphicsMagick++.so.1.0.3"	],
[ "/usr/lib/libGraphicsMagick.so.1",	"/usr/lib/libGraphicsMagick.so.1.0.11"	],
# JAUNTY
[ "/usr/lib/libGraphicsMagick++.so.1",	"/usr/lib/libGraphicsMagick++.so.1.0.3"	],
[ "/usr/lib/libGraphicsMagick.so.1",	"/usr/lib/libGraphicsMagick.so.1.0.11"	],
# KARMIC
[ "/usr/lib/libGraphicsMagick++.so.1",	"/usr/lib/libGraphicsMagick++.so.3"	],
[ "/usr/lib/libGraphicsMagick.so.3",	"/usr/lib/libGraphicsMagick.so.3.0.5"	],
# SQUEEZE
[ "/usr/lib/libGraphicsMagick++.so.1",	"/usr/lib/libGraphicsMagick.so"		],
[ "",					""					]
);


my $i;
my $i1;
my @string_line = "";
my @string_tabulation = "";
my @string_link = "";
my @string_link_one = "";
my $le_fichier = "";
my $line_command = "";
my $succes_link;


#########################################################################################
# RAFFRAICHIR LA CONSOLE
#########################################################################################
system('clear');


#########################################################################################
# DETECTION SI MODE ADMINISTRATEUR
#########################################################################################
my $ModeAdministrateur = ($> != 0) ? "FALSE" : "TRUE";


#########################################################################################
# PRESENTAION DE LA BESTIOLLE
#########################################################################################
print " ______________________________________________________________________
|                                                                      |
|          $PACKAGE                    $VERSION               |
|______________________________________________________________________|
|                                                                      |
|  SCRIPT D\'INSTALLATION DE LIENS, SI NECESSAIRE, POUR G'MIC           |
|                                                                      |
|     Script cree par:                                                 |
|     -b52         http://www.xcfa.tuxfamily.org/                      |
|     -xxxxxx      ...............................                     |
|     -xxxxxx      ...............................                     |
|     Licence GPL 2                                                    |
|______________________________________________________________________|
|                                                                      |","\n";

#########################################################################################
# ROOT ?
#########################################################################################

if ($ModeAdministrateur =~ "TRUE") {
	print "|      VOUS ETES ADMINISTRATEUR : ET L'INSTALLATION S'EFFECTUERA       |\n";
	print "|      Pour une simulation, connectez vous en simple utilisateur       |\n";

} else {
	print "|   VOUS N'ETES PAS ADMINISTRATEUR : UNE SIMULATION SERA EFFECTUEE     |\n";
	print "|   Pour une installation, connectez vous en administrateur            |\n";
}
print "|______________________________________________________________________|\n\n";


#########################################################################################
# RECUPERATION LIGNE DE COMMANDE
#########################################################################################
my $tabldd=`ldd /usr/bin/gmic | grep libGraphicsMagick`;
print "[ LECTURE ]\n";
print "ldd /usr/bin/gmic | grep libGraphicsMagick\n";
print "$tabldd\n";


#########################################################################################
# POUR TOUTES LES LIGNES
#########################################################################################
@string_line = split(/\n+/, $tabldd);
for ($i = 0; $i <= $#string_line; $i ++) {
	
	print "[ ANALYSE ]: $string_line[ $i ]\n";
	
	#########################################################################################
	# SPLIT DES TABULATIONS
	#########################################################################################
	@string_tabulation = split(/\t+/, $string_line[ $i ]);
	for ($i1 = 0; $i1 <= $#string_tabulation; $i1++) {
	
		#########################################################################################
		# SPLIT DES MOTS
		#########################################################################################
		@string_link = split(/ +/, $string_tabulation[ 1 ]);
		
		$le_fichier = "/usr/lib/";
		$le_fichier .= $string_link[ 0 ];
		
		$line_command = "ls -l ";
		$line_command .= $le_fichier;
		
		print "$line_command\n";
		system($line_command);
		print "LE LIEN ",$le_fichier;
		if ( -l $le_fichier) {
			print " EST PRESENT\n\n";
		}
		else {
			print " EST ABSENT\n";
			
			$string_link_one = substr($le_fichier, 0, index($le_fichier, '.')) . ".so";
			print "LE LIEN INITIAL $string_link_one";
			if ( -l $string_link_one) {
				print " EST PRESENT\n";

				#########################################################################################
				# LINK
				#########################################################################################
				# Attend comme paramètre:
				# 1. le fichier déjà existant depuis lequel une nouvelle représentation doit être créée
				#    si nécessaire avec le nom de chemin et répertoires,
				# 2. la nouvelle représentation à créer du fichier, si nécessaire avec le nom de chemin.
				# Retour
				#    1 = OK
				#    0 = BAD
				print "CREATION SUR LIEN D'ORIGINE:\n";
				print "LINK ($string_link_one, $le_fichier);\n";
				print ";\n";
				if ($ModeAdministrateur =~ "TRUE") {
					$succes_link = link($string_link_one, $le_fichier);
					$succes_link ? print "SUCCES" : print "ECHEC";
				}
				print "\n\n";
			}
			else {
				print " EST ABSENT\n";
				
				#########################################################################################
				# TESTER LES DATAS DU TABLEAU
				#########################################################################################
				for ($i=0; $i<@tableau; $i++) {
					if ($tableau [ $i ] [ LINK_SRC ] =~ "") {
						if ( ! -l $tableau [ $i ] [ LINK_SRC ]) {
							# print "SRC  ",$tableau [ $i ] [ LINK_SRC ],"\n";
							if ( -f $tableau [ $i ] [ LINK_DEST ]) {
								# print "DEST ",$tableau [ $i ] [ LINK_DEST ],"\n";
								#########################################################################################
								# LINK
								#########################################################################################
								# Attend comme paramètre:
								# 1. le fichier déjà existant depuis lequel une nouvelle représentation doit être créée
								#    si nécessaire avec le nom de chemin et répertoires,
								# 2. la nouvelle représentation à créer du fichier, si nécessaire avec le nom de chemin.
								# Retour
								#    1 = OK
								#    0 = BAD
								print "CREATION DE LIEN DEPUIS UN TABLEAU:\n";
								print "LINK (",$tableau [ $i ] [ LINK_DEST ],", ", $tableau [ $i ] [ LINK_SRC ],");\n";
								if ($ModeAdministrateur =~ "TRUE") {
									$succes_link = link($tableau [ $i ] [ LINK_DEST ], $tableau [ $i ] [ LINK_SRC ]);
									$succes_link ? print "SUCCES" : print "ECHEC";
									print "\n";
								}
								print ";\n";
								last;
							}
						}
					}
				}
			}
		}
		
		@string_link_one = "";
		@string_tabulation = "";
		@string_link = "";
	}
}

print "\n\n";

exit 0;

