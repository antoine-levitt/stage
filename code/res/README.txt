Dans tous les dossiers il y a toutes les informations n�cessaires pour builder et lancer : il suffit de taper make run. Convention de nommage :
a-b-c, o� :
a = GB ou LB : r�gle le param�tre GB
b = 0 ou 1 : r�gle le param�tre PRESSION_HAUT_0
c = 0 ou 1 : r�gle le param�tre CL_U_DIRICHLET
Voir en haut de nvstks_05_05_31.F90 pour plus de d�tails

base : test de convergence en maillage
bp : stabilisation brezzi pitkaranta
lambdas : stabilisation par clusters, clusters par sommet
MM1 : stabilisation par clusters, clusters par maille
