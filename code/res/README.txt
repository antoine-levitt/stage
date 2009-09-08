Dans tous les dossiers il y a toutes les informations nécessaires pour builder et lancer : il suffit de taper make run. Convention de nommage :
a-b-c, où :
a = GB ou LB : règle le paramètre GB
b = 0 ou 1 : règle le paramètre PRESSION_HAUT_0
c = 0 ou 1 : règle le paramètre CL_U_DIRICHLET
Voir en haut de nvstks_05_05_31.F90 pour plus de détails

base : test de convergence en maillage
bp : stabilisation brezzi pitkaranta
lambdas : stabilisation par clusters, clusters par sommet
MM1 : stabilisation par clusters, clusters par maille
