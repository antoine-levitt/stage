set terminal postscript eps color
set output 'lambdas-mm1.eps'
set size 1.0, .8
set xlabel "y"
set ylabel "Pressure"
set xrange [2.35:2.65]
set yrange [-5725:-5675]
plot "lambdas-mm1/4.dat" using 1:7 with linespoints lw 4 title "1e-4",\
     "lambdas-mm1/6.dat" using 1:7 with linespoints lw 4 title "1e-6",\
"lambdas-mm1/8.dat" using 1:7 with linespoints lw 4 title "1e-8"
!epstopdf --outfile=lambdas-mm1.pdf lambdas-mm1.eps
