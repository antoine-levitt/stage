set terminal postscript eps color
set output 'conv-maillage.eps'
set size 1.0, .8
set xlabel "y"
set ylabel "Temperature"
set xrange [7.5:9.75]
plot "conv-maillage/15k" using 1:5 with lines lw 4 title "15k",\
     "conv-maillage/30k" using 1:5 with lines lw 4 title "30k",\
"conv-maillage/60k" using 1:5 with lines lw 4 title "60k",\
"conv-maillage/120k" using 1:5 with lines lw 4 title "120k",\
"conv-maillage/240k" using 1:5 with lines lw 4 title "240k"
!epstopdf --outfile=conv-maillage.pdf conv-maillage.eps
