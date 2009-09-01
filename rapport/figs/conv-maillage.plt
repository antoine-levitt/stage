set terminal postscript eps color
set output 'conv-maillage.eps'
set size 1.0, .8
set xlabel "y"
set ylabel "Temperature"
set xrange [7.5:9.75]
plot "conv-maillage/15k" using 1:5 with linespoints title "15k",\
     "conv-maillage/30k" using 1:5 with linespoints title "30k",\
"conv-maillage/60k" using 1:5 with linespoints title "60k",\
"conv-maillage/120k" using 1:5 with linespoints title "120k",\
"conv-maillage/240k" using 1:5 with linespoints title "240k"
!epstopdf --outfile=conv-maillage.pdf conv-maillage.eps
