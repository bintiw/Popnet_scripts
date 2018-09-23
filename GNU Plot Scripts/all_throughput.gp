reset
load 'all_style.gp'

#set title "Multicast Desitnation Set (7-10) with 0,4,8 Hardware Trojans"

set xlabel "Injection Rate {/Times-Italic (packet/node/cycle)} "
set xrange [0.002:0.08]
#set xtics 0.005

set ylabel "Throughput {/Times-Italic (flits/node/cycle)}"
set yrange [0:0.6]
set ytics 0.1


set key right bottom
set out "ht_throughput710.eps"

plot \
"all_throughput" u 1:2 t 'H-0' w lp ls 2, \
"all_throughput" u 1:3 t 'M-0' w lp ls 3, \
"all_throughput" u 1:4 t 'H-4' w lp ls 4, \
"all_throughput" u 1:5 t 'M-4' w lp ls 5, \
"all_throughput" u 1:6 t 'H-8' w lp ls 6, \
"all_throughput" u 1:7 t 'M-8' w lp ls 7
