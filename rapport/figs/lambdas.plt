set terminal postscript eps color
set output 'lambdas.eps'
set size 1.0, .8
set xlabel "y"
set ylabel "Pressure"
set xrange [2.35:2.65]
plot     "lambdas/4.dat" using 1:7 with linespoints title "1e-4",\
"lambdas/6.dat" using 1:7 with linespoints title "1e-6",\
"lambdas/8.dat" using 1:7 with linespoints title "1e-8"
!epstopdf --outfile=lambdas.pdf lambdas.eps
