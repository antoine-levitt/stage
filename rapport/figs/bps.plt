set terminal postscript eps color
set output 'bps.eps'
set size 1.0, .8
set xlabel "y"
set ylabel "Pressure"
set xrange [2.35:2.65]
set yrange [-5725:-5675]
plot "bps/4.dat" using 1:7 with linespoints lw 4 title "1e-4",\
     "bps/6.dat" using 1:7 with linespoints lw 4 title "1e-6",\
"bps/8.dat" using 1:7 with linespoints lw 4 title "1e-8"
!epstopdf --outfile=bps.pdf bps.eps
