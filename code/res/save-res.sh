#!/bin/bash
cat > gnuplot_commands <<EOF
set terminal postscript eps color
set size 1.0, .8
EOF
echo "gen de la courbe : ($2,$3), fichier \"$5.eps\", source \"$4\""
echo "set output \"courbes-eps/$5.eps\"" >> gnuplot_commands
echo "set xlabel \"$2\"" >> gnuplot_commands
echo "set ylabel \"$3\"" >> gnuplot_commands
if test $6 ; then
    echo "avec range $6"
    echo "set xrange [$6]" >> gnuplot_commands
fi
echo -n 'plot '>> gnuplot_commands
for i in $(find . -type d -maxdepth 1 -not -name . -name 'LB*-0' -or -name 'GB*-0' | sort -k 2 -g -t '-') ; do
#    echo -n "\"$i/profil_v_0.5.dat\"  using 1:$1 title \"$i\" with lines lw 6," >> gnuplot_commands
    echo -n "\"$i/$4\"  using 1:$1 title \"$i\" with lines lw 6," >> gnuplot_commands
done
sed -i 's/,$//' gnuplot_commands
echo "" >> gnuplot_commands
# echo "replot" >> gnuplot_commands
# echo "pause -1" >> gnuplot_commands
gnuplot gnuplot_commands
