#!/bin/sh
# syntaxe : save-res.sh composante xlabel ylabel nom_fichier_source nomeps [range]
# ordre :
# h : x v u psi t p
# v 0 ou 1 : y tp
# v 0.5 : y v u psi tp tbulk p


#page 12, courbe 1 : entr�e de zone chauff�e, temp�rature
./save-res.sh 5 x T profil_h_e.dat H_E_T 0:0.2

#page 14, courbe 1 : entr�e de zone chauff�e, vitesse verticale
./save-res.sh 2 x V profil_h_e.dat H_E_V
#page 14, courbe 2 : sortie de zone chauff�e, vitesse verticale
./save-res.sh 2 x V profil_h_s.dat H_S_V

#page 16           : verticale m�diane, vitesse verticale
./save-res.sh 2 y V profil_v_0.5.dat V_MED_V
#page 17           : verticale m�diane, vitesse horizontale
./save-res.sh 3 y U profil_v_0.5.dat V_MED_U

#page 18, courbe 1 : entr�e de zone chauff�e, vitesse horizontale
./save-res.sh 3 x U profil_h_e.dat H_E_U
#page 18, courbe 2 : sortie de zone chauff�e, vitesse horizontale
./save-res.sh 3 x U profil_h_s.dat H_S_U

#page 19           : verticale m�diane, temp�rature
./save-res.sh 5 y T profil_v_0.5.dat V_MED_T
#page 20           : verticale adiabatique, temp�rature
./save-res.sh 2 y T profil_v_1.dat V_1_T
#page 21           : verticale m�diane, temp�rature de m�lange
./save-res.sh 6 y Tbulk profil_v_0.5.dat V_MED_TBULK

#page 23           : verticale m�diane, pression
./save-res.sh 7 y P profil_v_0.5.dat V_MED_P

#page 24, courbe 1 : entr�e de zone chauff�e, vitesse horizontale
./save-res.sh 6 x P profil_h_e.dat H_E_P
#page 24, courbe 2 : sortie de zone chauff�e, vitesse horizontale
./save-res.sh 6 x P profil_h_s.dat H_S_P
